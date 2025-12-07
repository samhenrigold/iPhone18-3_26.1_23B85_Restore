unint64_t sub_22C5C13AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C3A5908(&qword_27D9BEC28, &unk_22C9204C0);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v10);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C36EC5C();
  v12 = sub_22C90069C();
  sub_22C369824();
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  if (!a2)
  {
    goto LABEL_9;
  }

  sub_22C5CA640();
  sub_22C90064C();
  sub_22C36D0A8(v3, 1, v12);
  if (v27)
  {
    v14 = &qword_27D9BB190;
    v15 = qword_22C90DD90;
    v16 = v3;
LABEL_8:
    sub_22C36DD28(v16, v14, v15);
    a2 = 0;
LABEL_9:
    v30 = 1;
    return a2 | (v30 << 32);
  }

  v17 = sub_22C36CA88();
  v18(v17);
  sub_22C90065C();
  v20 = v19;
  v21 = sub_22C90A1DC();
  v23 = v22;

  sub_22C605A84(v21, v23, a3);

  v24 = sub_22C36D384();
  v25(v24);
  type metadata accessor for PlanOverridesService.EventReference(0);
  v26 = sub_22C37BB14();
  sub_22C36D3E0(v26);
  if (v27)
  {
    v14 = &qword_27D9BEC28;
    v15 = &unk_22C9204C0;
    v16 = v9;
    goto LABEL_8;
  }

  a2 = *&v9[*(v20 + 20)];
  sub_22C3872A0();
  sub_22C5C8874(v9, v29);
  v30 = 0;
  return a2 | (v30 << 32);
}

void sub_22C5C15DC()
{
  sub_22C36BA7C();
  v38 = v1;
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9BEC28, &unk_22C9204C0);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22C37B6BC();
  v37 = type metadata accessor for PlanOverridesService.EventReference(v6);
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  v36 = v8;
  sub_22C36BA0C();
  v9 = sub_22C90069C();
  sub_22C369824();
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = *(v3 + 16);
  if (v14)
  {
    sub_22C36BA94();
    v16 = v3 + v15;
    v34 = *(v17 + 56);
    v35 = v18;
    v33 = (v17 - 8);
    v19 = MEMORY[0x277D84F90];
    do
    {
      v20 = sub_22C3726C4();
      v35(v20);
      sub_22C90065C();
      sub_22C90A1DC();

      if (*(v38 + 16) && (v21 = sub_22C371510(), sub_22C36E2BC(v21, v22), (v23 & 1) != 0))
      {
        sub_22C3831E0();
        sub_22C5CA0B8(v24, v0);
        v25 = 0;
      }

      else
      {
        v25 = 1;
      }

      sub_22C36C640(v0, v25, 1, v37);

      (*v33)(v13, v9);
      sub_22C36D3E0(v0);
      if (v26)
      {
        sub_22C36DD28(v0, &qword_27D9BEC28, &unk_22C9204C0);
      }

      else
      {
        sub_22C386250();
        sub_22C5C8974(v0, v36);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C36D270();
          sub_22C593A1C();
          v19 = v31;
        }

        v29 = *(v19 + 16);
        v28 = *(v19 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_22C369AB0(v28);
          sub_22C593A1C();
          v19 = v32;
        }

        *(v19 + 16) = v29 + 1;
        sub_22C37054C();
        sub_22C386250();
        sub_22C5C8974(v36, v30);
      }

      v16 += v34;
      --v14;
    }

    while (v14);
  }

  sub_22C36CC48();
}

void sub_22C5C18D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v27;
  a20 = v28;
  v120 = v29;
  v132 = v30;
  v135 = v31;
  v129 = sub_22C908EAC();
  sub_22C369824();
  v121 = v32;
  MEMORY[0x28223BE20](v33);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v35);
  sub_22C36BA64();
  sub_22C3698F8(v36);
  v37 = sub_22C90926C();
  v38 = sub_22C36A7A4(v37, &v126);
  v113 = v39;
  MEMORY[0x28223BE20](v38);
  sub_22C3698A8();
  sub_22C36D234(v40);
  v41 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v41);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v42);
  sub_22C36D5B4();
  sub_22C3698F8(v43);
  v44 = sub_22C90399C();
  v45 = sub_22C36A7A4(v44, &v128);
  v115 = v46;
  MEMORY[0x28223BE20](v45);
  sub_22C3698A8();
  sub_22C3698F8(v47);
  v48 = sub_22C90931C();
  v49 = sub_22C36A7A4(v48, v127);
  v114 = v50;
  MEMORY[0x28223BE20](v49);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v51);
  sub_22C36BA64();
  sub_22C3698F8(v52);
  v53 = sub_22C90355C();
  v54 = sub_22C36A7A4(v53, &v136);
  v117 = v55;
  MEMORY[0x28223BE20](v54);
  sub_22C3698A8();
  sub_22C36D234(v56);
  v57 = sub_22C3A5908(&qword_27D9BEC18, &unk_22C9204A0);
  sub_22C369914(v57);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v58);
  sub_22C36D5B4();
  sub_22C3698F8(v59);
  v60 = sub_22C9081CC();
  v61 = sub_22C36A7A4(v60, &v137);
  v116 = v62;
  MEMORY[0x28223BE20](v61);
  sub_22C3698A8();
  sub_22C3698F8(v63);
  v64 = sub_22C90880C();
  v65 = sub_22C36A7A4(v64, &a11);
  v119 = v66;
  MEMORY[0x28223BE20](v65);
  sub_22C3698A8();
  sub_22C36D234(v67);
  v68 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  sub_22C369914(v68);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v69);
  sub_22C36D5B4();
  sub_22C3698F8(v70);
  v71 = sub_22C9079FC();
  v72 = sub_22C36A7A4(v71, &a15);
  v118 = v73;
  MEMORY[0x28223BE20](v72);
  sub_22C3698A8();
  sub_22C3698F8(v74);
  sub_22C90902C();
  sub_22C369824();
  v127[3] = v76;
  v128 = v75;
  MEMORY[0x28223BE20](v75);
  sub_22C3698A8();
  v127[0] = v77;
  sub_22C36BA0C();
  sub_22C90077C();
  sub_22C369824();
  v127[1] = v79;
  v127[2] = v78;
  MEMORY[0x28223BE20](v78);
  sub_22C3698A8();
  v126 = v80;
  sub_22C36BA0C();
  v123 = sub_22C908D3C();
  sub_22C369824();
  v122 = v81;
  MEMORY[0x28223BE20](v82);
  sub_22C3698A8();
  sub_22C3698F8(v83);
  v130 = sub_22C908F4C();
  sub_22C369824();
  v125 = v84;
  MEMORY[0x28223BE20](v85);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v86);
  sub_22C36BA64();
  v124 = v87;
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369824();
  v133 = v89;
  v134 = v88;
  MEMORY[0x28223BE20](v88);
  sub_22C3698E4();
  v131 = v90;
  sub_22C369930();
  MEMORY[0x28223BE20](v91);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v92);
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v93);
  sub_22C51E3BC();
  v95 = MEMORY[0x28223BE20](v94);
  v97 = &v106 - v96;
  MEMORY[0x28223BE20](v95);
  sub_22C37A1A4();
  MEMORY[0x28223BE20](v98);
  sub_22C3705C8();
  MEMORY[0x28223BE20](v99);
  sub_22C373000();
  v100 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v101 = sub_22C369914(v100);
  MEMORY[0x28223BE20](v101);
  sub_22C369ABC();
  sub_22C5CA690();
  MEMORY[0x28223BE20](v102);
  sub_22C387B64();
  sub_22C908FFC();
  sub_22C908FEC();
  v112 = v25;
  v111 = v97;
  v107 = v23;
  v108 = v22;
  v109 = v20;
  v110 = v26;
  v106 = v21;
  sub_22C90900C();

  sub_22C36BECC();
  sub_22C36C640(v103, v104, v105, v129);
  sub_22C36DD28(v24, &qword_27D9BC1E8, &qword_22C9123B0);

  sub_22C36BA00();
  sub_22C36CC48();
}

uint64_t sub_22C5C30A0(uint64_t a1)
{
  sub_22C908E7C();
  sub_22C90924C();
  v1 = sub_22C90A42C();

  return v1 & 1;
}

void sub_22C5C3118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C36BA7C();
  a19 = v22;
  a20 = v23;
  v451[0] = v24;
  v467 = v25;
  v460[0] = v26;
  v438 = v27;
  v29 = v28;
  v451[2] = a21;
  v30 = sub_22C90700C();
  v31 = sub_22C369914(v30);
  MEMORY[0x28223BE20](v31);
  sub_22C3698A8();
  sub_22C3698F8(v32);
  v33 = sub_22C90654C();
  v34 = sub_22C36A7A4(v33, v451);
  v437 = v35;
  MEMORY[0x28223BE20](v34);
  sub_22C3698A8();
  sub_22C36D234(v36);
  v37 = sub_22C3A5908(&qword_27D9BD2B8, &qword_22C9204B0);
  sub_22C369914(v37);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v38);
  sub_22C36D5B4();
  sub_22C3698F8(v39);
  v40 = sub_22C9084CC();
  v41 = sub_22C36A7A4(v40, v458);
  v43 = v42;
  MEMORY[0x28223BE20](v41);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v44);
  sub_22C36BA64();
  sub_22C36D234(v45);
  v46 = sub_22C3A5908(&qword_27D9BEC18, &unk_22C9204A0);
  sub_22C369914(v46);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v47);
  sub_22C36D5B4();
  sub_22C3698F8(v48);
  v49 = sub_22C9081CC();
  v50 = sub_22C36A7A4(v49, v460);
  v52 = v51;
  MEMORY[0x28223BE20](v50);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v53);
  sub_22C36BA64();
  sub_22C3698F8(v54);
  v55 = sub_22C90880C();
  v56 = sub_22C36A7A4(v55, v473);
  v489 = v57;
  MEMORY[0x28223BE20](v56);
  sub_22C3698A8();
  sub_22C36D234(v58);
  v59 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  v60 = sub_22C369914(v59);
  MEMORY[0x28223BE20](v60);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v61);
  sub_22C36BA64();
  sub_22C3698F8(v62);
  v63 = sub_22C9079FC();
  sub_22C369824();
  v487 = v64;
  MEMORY[0x28223BE20](v65);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v66);
  sub_22C36BA64();
  sub_22C36D234(v67);
  v68 = sub_22C3A5908(&qword_27D9BEC20, &qword_22C9204B8);
  sub_22C369914(v68);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v69);
  sub_22C36D5B4();
  v71 = sub_22C3698F8(v70);
  v452 = type metadata accessor for ContextRule(v71);
  sub_22C36985C();
  MEMORY[0x28223BE20](v72);
  sub_22C3698A8();
  sub_22C36D234(v73);
  v74 = sub_22C3A5908(&qword_27D9BEC28, &unk_22C9204C0);
  v75 = sub_22C369914(v74);
  MEMORY[0x28223BE20](v75);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v76);
  sub_22C36BA64();
  sub_22C36D234(v77);
  v78 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v78);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v79);
  sub_22C36D5B4();
  sub_22C3698F8(v80);
  v81 = sub_22C90069C();
  v82 = sub_22C36A7A4(v81, &a12);
  v84 = v83;
  MEMORY[0x28223BE20](v82);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v85);
  sub_22C36BA64();
  sub_22C3698F8(v86);
  v484 = sub_22C9063DC();
  sub_22C369824();
  v88 = v87;
  MEMORY[0x28223BE20](v89);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v90);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v91);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v92);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v93);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v94);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v95);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v96);
  sub_22C36BA64();
  v480 = v97;
  sub_22C36BA0C();
  v98 = sub_22C901FAC();
  sub_22C369824();
  v100 = v99;
  MEMORY[0x28223BE20](v101);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v102);
  sub_22C36BA58();
  v479 = v103;
  sub_22C369930();
  MEMORY[0x28223BE20](v104);
  sub_22C36BA58();
  v478 = v105;
  sub_22C369930();
  MEMORY[0x28223BE20](v106);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v107);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v108);
  sub_22C36BA58();
  v491 = v109;
  sub_22C369930();
  MEMORY[0x28223BE20](v110);
  sub_22C36BA64();
  v476 = v111;
  v112 = sub_22C3A5908(&qword_27D9BAA00, &qword_22C911F60);
  v113 = sub_22C369914(v112);
  MEMORY[0x28223BE20](v113);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v114);
  sub_22C36BA64();
  sub_22C36D234(v115);
  v116 = v29 + 64;
  sub_22C5CAA40();
  v119 = v118 & v117;
  v461 = (v120 + 63) >> 6;
  v490 = (v100 + 16);
  v488 = (v100 + 32);
  v486 = (v100 + 8);
  v483 = (v88 + 8);
  v457 = v84 + 32;
  v456 = v84 + 16;
  v465 = (v84 + 8);
  v431 = v52 + 32;
  v430 = v52 + 16;
  v429 = v52 + 8;
  v427 = v43 + 32;
  v426 = v43 + 16;
  v425 = v43 + 8;
  v482 = v100;
  v460[1] = v100 + 40;
  swift_bridgeObjectRetain_n();
  v121 = 0;
  *&v122 = 136315138;
  v468 = v122;
  v469 = v29;
  v123 = v29;
  v453 = v63;
  v477 = v98;
  v472 = v29 + 64;
  while (1)
  {
    v487 = v123;
    if (!v119)
    {
      break;
    }

    v124 = v121;
    v125 = v476;
LABEL_9:
    v127 = __clz(__rbit64(v119));
    v119 &= v119 - 1;
    v128 = v127 | (v124 << 6);
    v129 = (*(v469 + 48) + 16 * v128);
    v130 = *v129;
    v116 = v129[1];
    (*(v482 + 16))(v125, *(v469 + 56) + *(v482 + 72) * v128, v98);
    v131 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
    v132 = v475;
    *v475 = v130;
    v132[1] = v116;
    v126 = v132;
    sub_22C5CA664();
    v133();
    sub_22C36BECC();
    sub_22C36C640(v134, v135, v136, v131);

LABEL_10:
    v137 = v474;
    sub_22C4E7208(v126, v474, &qword_27D9BAA00, &qword_22C911F60);
    sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
    v138 = sub_22C3869F0();
    sub_22C36D0A8(v138, 1, v116);
    if (v247)
    {
      sub_22C37EFC0();

      (*v490)(v436, v438, v98);
      sub_22C37FE04(&v452);

      sub_22C37A078();
      sub_22C906A9C();
      (*(v437 + 104))(v137, *MEMORY[0x277D1DA78]);
      sub_22C36D818();
      sub_22C9070BC();
      LOBYTE(v492[0]) = 1;
      sub_22C37B090();
      sub_22C37EF10();
      sub_22C90708C();
      sub_22C36CC48();
      return;
    }

    v139 = v137[1];
    v489 = *v137;
    v140 = v137 + *(v116 + 48);
    v481 = *v488;
    v481(v491, v140, v98);
    v141 = v480;
    sub_22C903FBC();
    v142 = v473[0];
    v143 = sub_22C36BAFC();
    v485 = v144;
    (v144)(v143);
    v145 = sub_22C9063CC();
    v146 = sub_22C90AACC();
    if (os_log_type_enabled(v145, v146))
    {
      sub_22C36BED8();
      v147 = v142;
      v142 = swift_slowAlloc();
      sub_22C370220();
      v148 = swift_slowAlloc();
      *v142 = sub_22C37AC60(v148).n128_u32[0];
      sub_22C901F7C();
      v471 = v119;
      v149 = v139;
      v150 = *v486;
      (*v486)(v147, v477);
      v151 = sub_22C5CAA58();
      sub_22C36F9F4(v151, v152, v153);
      sub_22C36A024();
      v98 = v477;

      *(v142 + 4) = v147;
      _os_log_impl(&dword_22C366000, v145, v146, "Found parameter in call() with statementID: %s", v142, 0xCu);
      sub_22C36FF94(v148);
      v154 = v150;
      v139 = v149;
      v119 = v471;
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v155 = *v483;
      (*v483)(v480, v484);
    }

    else
    {

      v154 = *v486;
      (*v486)(v142, v98);
      v155 = *v483;
      (*v483)(v141, v484);
    }

    sub_22C901F7C();
    v157 = v473[1];
    if (!v156)
    {
      goto LABEL_18;
    }

    v158 = v156;
    sub_22C36D818();
    v471 = v159;
    sub_22C90064C();
    v160 = sub_22C36CCF8();
    v161 = v470;
    sub_22C36D0A8(v160, v162, v470);
    if (v247)
    {

      sub_22C36DD28(v142, &qword_27D9BB190, qword_22C90DD90);
LABEL_18:
      v163 = v478;
      sub_22C5C5EA0();
      v485(v479, v163, v98);
      v164 = v487;
      swift_isUniquelyReferenced_nonNull_native();
      *&v492[0] = v164;
      v165 = sub_22C36E2BC(v489, v139);
      if (__OFADD__(*(v164 + 16), (v166 & 1) == 0))
      {
        goto LABEL_79;
      }

      v167 = v165;
      v168 = v166;
      sub_22C3A5908(&qword_27D9BEC30, &qword_22C9226B0);
      if (sub_22C90B15C())
      {
        v169 = sub_22C36E2BC(v489, v139);
        if ((v168 & 1) != (v170 & 1))
        {
          goto LABEL_81;
        }

        v167 = v169;
      }

      v171 = v139;
      v123 = *&v492[0];
      if (v168)
      {
        (*(v482 + 40))(*(*&v492[0] + 56) + *(v482 + 72) * v167, v479, v98);
      }

      else
      {
        sub_22C36ED48(*&v492[0] + 8 * (v167 >> 6));
        v172 = (*(v123 + 48) + 16 * v167);
        *v172 = v489;
        v172[1] = v171;
        sub_22C5CA6D4();
        v173();
        v174 = *(v123 + 16);
        v175 = __OFADD__(v174, 1);
        v176 = v174 + 1;
        if (v175)
        {
          goto LABEL_80;
        }

        *(v123 + 16) = v176;
      }

      v154(v478, v98);
      v154(v491, v98);
LABEL_76:
      v116 = v472;
    }

    else
    {
      v485 = v158;
      v462 = v139;
      sub_22C36BA4C();
      v177 = sub_22C382D34();
      v178(v177);
      sub_22C374490();
      sub_22C903FBC();
      sub_22C37025C();
      sub_22C44178C();
      v179();
      v180 = v157;
      v181 = sub_22C9063CC();
      v182 = sub_22C90AACC();
      v183 = os_log_type_enabled(v181, v182);
      v464 = v154;
      if (v183)
      {
        sub_22C36BED8();
        swift_slowAlloc();
        sub_22C3735E4();
        v454 = swift_slowAlloc();
        *v161 = sub_22C37AC60(v454).n128_u32[0];
        sub_22C3887BC();
        sub_22C5C87F4(&qword_27D9BEC38, v184, MEMORY[0x277CC9628]);
        v185 = v155;
        v186 = sub_22C90B47C();
        v188 = v187;
        v463 = *v465;
        v463(v180, v161);
        v189 = v186;
        v155 = v185;
        v190 = sub_22C36F9F4(v189, v188, v492);

        *(v161 + 4) = v190;
        sub_22C5CA61C(&dword_22C366000, v181, v182, "Found eventId in statement reference: %s");
        _os_log_impl(v191, v192, v193, v194, v195, v196);
        v197 = sub_22C37FE04(&v479);
        sub_22C36FF94(v197);
        v154 = v464;
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        v198 = sub_22C36D66C();
        MEMORY[0x2318B9880](v198);
      }

      else
      {

        v203 = sub_22C380120();
        v463 = v204;
        (v204)(v203);
      }

      v155(v98, v484);
      sub_22C90065C();
      sub_22C90A1DC();

      v98 = v477;
      v123 = v487;
      if (*(v460[0] + 16) && (v205 = sub_22C37BD98(), v207 = sub_22C36E2BC(v205, v206), (v208 & 1) != 0))
      {
        v209 = v207;
        v210 = type metadata accessor for PlanOverridesService.EventReference(0);
        sub_22C36985C();
        sub_22C3831E0();
        sub_22C5CAC28();
        sub_22C5CA0B8(v211, v212);
      }

      else
      {
        v210 = type metadata accessor for PlanOverridesService.EventReference(0);
        v209 = v466;
        sub_22C36CCF8();
      }

      sub_22C3827B4();
      sub_22C36C640(v213, v214, v215, v216);

      v217 = v459;
      sub_22C4E719C(v209, v459, &qword_27D9BEC28, &unk_22C9204C0);
      type metadata accessor for PlanOverridesService.EventReference(0);
      sub_22C36D3E0(v217);
      if (!v247)
      {

        v224 = *(v217 + *(v210 + 20));
        sub_22C3872A0();
        sub_22C5C8874(v217, v225);
        sub_22C37A078();
        sub_22C903FBC();
        v226 = sub_22C9063CC();
        sub_22C90AACC();
        v227 = sub_22C37E2D0();
        if (os_log_type_enabled(v227, v228))
        {
          sub_22C37080C();
          v230 = swift_slowAlloc();
          *v230 = 67109120;
          *(v230 + 4) = v224;
          _os_log_impl(&dword_22C366000, v226, v217, "Replacing new event index with: %u", v230, 8u);
          sub_22C369B50();
          MEMORY[0x2318B9880]();
        }

        v155(v458[1], v484);
        sub_22C5CAB1C(v224);
        sub_22C36BA00();
        sub_22C5CA6D4();
        v231();
        swift_isUniquelyReferenced_nonNull_native();
        *&v492[0] = v123;
        sub_22C5CA8DC();
        sub_22C62C9F4(v232, v233, v234, v235, v236, v237, v238, v239, v424, v425, v426, v427, v428, v429);

        v123 = *&v492[0];
        goto LABEL_54;
      }

      sub_22C5CA6E4();
      sub_22C36DD28(v218, v219, v220);
      sub_22C36D818();
      v221 = v485;
      sub_22C5C75F4();
      v222 = sub_22C36CCF8();
      sub_22C36D0A8(v222, v223, v452);
      v455 = v155;
      if (v247)
      {
        sub_22C36DD28(&unk_22C9204C0, &qword_27D9BEC20, &qword_22C9204B8);
        goto LABEL_46;
      }

      sub_22C37A168();
      sub_22C5C8974(&unk_22C9204C0, v450);
      sub_22C37205C();
      sub_22C90878C();
      v240 = sub_22C9087DC();
      v241 = sub_22C37025C();
      v242(v241);
      *&v492[0] = v240;
      sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
      sub_22C369E24();
      sub_22C3D32C8(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420, v243);
      sub_22C5CACB0();
      sub_22C907EEC();

      sub_22C5CA8DC();
      sub_22C36D0A8(v244, v245, v246);
      if (v247)
      {
        sub_22C36AC94();
        sub_22C5C8874(v450, v248);
        sub_22C36DD28(v449, &qword_27D9BD798, &unk_22C919070);
        v221 = v485;
LABEL_46:
        sub_22C5C79F8();
        if (v250)
        {
          v253 = v250;
          v442 = v251;
          v445 = v249;
          v454 = v252;
          sub_22C36D2E8();
          sub_22C90878C();
          v254 = sub_22C9087DC();
          v255 = sub_22C5CA450();
          v256(v255);
          *&v492[0] = v254;
          v257 = sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
          sub_22C369E24();
          sub_22C3D32C8(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420, v258);
          sub_22C5CACB0();
          sub_22C370208();
          sub_22C907EEC();

          v259 = sub_22C36FD7C();
          v260 = v453;
          sub_22C36D0A8(v259, v261, v453);
          if (!v247)
          {
            sub_22C36BA4C();
            v315 = sub_22C37BA1C();
            v316(v315, v154, v260);
            sub_22C36D818();
            sub_22C5C6490(v445, v253, v442, v454, &qword_27D9BA9F0, v317, v318, v319, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435);

            v320 = sub_22C36CCF8();
            sub_22C36D0A8(v320, v321, v439);
            if (v322)
            {
              sub_22C5CADFC();
              sub_22C36DD28(v254, &qword_27D9BD2B8, &qword_22C9204B0);
              sub_22C37205C();
              sub_22C903FBC();
              v323 = v485;

              v324 = sub_22C9063CC();
              sub_22C90AACC();
              sub_22C5CACE4();

              v325 = sub_22C5CA91C();
              if (os_log_type_enabled(v325, v326))
              {
                sub_22C36BED8();
                v327 = swift_slowAlloc();
                sub_22C370220();
                v328 = swift_slowAlloc();
                v329 = sub_22C5CA4D4(v328);
                v331 = sub_22C36F9F4(v329, v323, v330);

                *(v327 + 4) = v331;
                sub_22C5CAA1C(&dword_22C366000, v324, v254, "Unable to find retrieve DynamicEnumerationEntity statement: %s is not found in dynamicEnumerationEntities");
                _os_log_impl(v332, v333, v334, v335, v336, v337);
                sub_22C36FF94(v257);
                v338 = sub_22C36D66C();
                MEMORY[0x2318B9880](v338);
                v339 = sub_22C37F88C();
                MEMORY[0x2318B9880](v339);
              }

              else
              {
              }

              sub_22C5CA460();
              v404();
              sub_22C5CA440();
              v405 = sub_22C5CA990();
              v406(v405);
              v279 = v466;
              v280 = &qword_27D9BEC28;
            }

            else
            {

              sub_22C36BA4C();
              v358 = sub_22C382D34();
              v359(v358);
              sub_22C36D2E8();
              sub_22C903FBC();
              sub_22C36BA4C();
              v360 = sub_22C36BA00();
              v361(v360);
              v362 = sub_22C9063CC();
              v363 = sub_22C90AACC();
              sub_22C5CAB64(v363);
              sub_22C37A078();
              v485 = (v365 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
              if (v364)
              {
                sub_22C36BED8();
                v444 = swift_slowAlloc();
                sub_22C370220();
                v454 = swift_slowAlloc();
                *v444 = sub_22C37AC60(v454).n128_u32[0];
                v447 = v363;
                v363 = v257;
                sub_22C9068FC();
                sub_22C5CA3DC();
                sub_22C5C87F4(&qword_27D9BAA48, v366, MEMORY[0x277D1C368]);
                v98 = v477;
                sub_22C90B47C();
                sub_22C5CA4C0();
                v367();
                sub_22C37BD98();
                sub_22C5CA818(v368);
                v369();
                v370 = sub_22C372164();
                v373 = sub_22C36F9F4(v370, v371, v372);

                *(v444 + 4) = v373;
                _os_log_impl(&dword_22C366000, v362, v447, "Replacing new event statement with: %s", v444, 0xCu);
                sub_22C36FF94(v454);
                v374 = sub_22C37F88C();
                MEMORY[0x2318B9880](v374);
                sub_22C5CAA88();
                sub_22C369B50();
                MEMORY[0x2318B9880]();

                sub_22C5CA460();
                v375();
              }

              else
              {

                sub_22C37BD98();
                sub_22C5CA818(v407);
                v408();
                sub_22C5CA460();
                v409();
                v98 = v477;
                sub_22C5CAA88();
              }

              sub_22C9068FC();
              sub_22C38B1DC(&v476);
              sub_22C5CA6D4();
              v410();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              sub_22C5CA868(isUniquelyReferenced_nonNull_native, v412, v413, v414, v415, v416, v417, v418, v424, v425, v426, v427, v428, v429);

              v123 = *&v492[0];
              v419 = sub_22C371530();
              v471(v419);
              sub_22C5CA440();
              v420(v441, v363);
              v279 = sub_22C38A190();
            }

LABEL_75:
            sub_22C36DD28(v279, v280, &unk_22C9204C0);
            v421 = sub_22C3707E8();
            v422(v421);
            sub_22C5CA4C0();
            v423();
            goto LABEL_76;
          }

          sub_22C5CADFC();
          sub_22C36DD28(v154, &qword_27D9BD798, &unk_22C919070);
          v154 = v464;
          v221 = v485;
        }

        else
        {
          sub_22C5CADFC();
        }

        sub_22C37BA44();
        sub_22C903FBC();

        v262 = v221;
        v263 = sub_22C9063CC();
        v264 = sub_22C90AACC();

        if (!os_log_type_enabled(v263, v264))
        {

          sub_22C5CA460();
          v281();
LABEL_54:
          v282 = sub_22C38A190();
          sub_22C36DD28(v282, v283, &unk_22C9204C0);
          v284 = sub_22C3707E8();
          v285(v284);
          v154(v491, v98);
          goto LABEL_76;
        }

        sub_22C36BED8();
        v265 = v263;
        v266 = swift_slowAlloc();
        sub_22C370220();
        v267 = swift_slowAlloc();
        v268 = sub_22C5CA4D4(v267);
        v270 = sub_22C36F9F4(v268, v262, v269);

        *(v266 + 4) = v270;
        sub_22C5CAA1C(&dword_22C366000, v265, v264, "Unable to replace statement reference: %s is an unknown type");
        _os_log_impl(v271, v272, v273, v274, v275, v276);
        sub_22C36FF94(&qword_27D9BEC28);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        v277 = sub_22C37F88C();
        MEMORY[0x2318B9880](v277);

        sub_22C5CA460();
        v278();
        v279 = v466;
        v280 = &qword_27D9BEC28;
        goto LABEL_75;
      }

      sub_22C36BA4C();
      v286 = sub_22C37BA1C();
      v287(v286, v449, v240);
      v288 = (v450 + *(v452 + 24));
      v289 = v288[1];
      v492[0] = *v288;
      v492[1] = v289;
      sub_22C36D818();
      sub_22C5C6C44();
      v290 = sub_22C36CCF8();
      sub_22C36D0A8(v290, v291, v440);
      if (!v292)
      {

        sub_22C36BA4C();
        v340 = sub_22C382D34();
        v341(v340);
        sub_22C370208();
        sub_22C903FBC();
        sub_22C36BA4C();
        v342 = sub_22C36BA00();
        v343(v342);
        v344 = sub_22C9063CC();
        v345 = sub_22C90AACC();
        sub_22C5CAB64(v345);
        sub_22C37A078();
        v485 = (v347 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        if (v346)
        {
          sub_22C36BED8();
          v446 = swift_slowAlloc();
          sub_22C370220();
          v454 = swift_slowAlloc();
          *v446 = sub_22C37AC60(v454).n128_u32[0];
          sub_22C9068FC();
          sub_22C5CA3DC();
          sub_22C5C87F4(&qword_27D9BAA48, v348, MEMORY[0x277D1C368]);
          v443 = v345;
          v98 = v477;
          sub_22C90B47C();
          sub_22C5CA4C0();
          v349();
          sub_22C37BD98();
          sub_22C5CA818(v350);
          v351();
          v352 = sub_22C372164();
          v355 = sub_22C36F9F4(v352, v353, v354);

          *(v446 + 4) = v355;
          _os_log_impl(&dword_22C366000, v344, v443, "Replacing new event statement with: %s", v446, 0xCu);
          sub_22C36FF94(v454);
          v356 = sub_22C37F88C();
          MEMORY[0x2318B9880](v356);
          sub_22C5CAA88();
          sub_22C369B50();
          MEMORY[0x2318B9880]();

          sub_22C5CA460();
          v357();
        }

        else
        {

          sub_22C37BD98();
          sub_22C5CA818(v384);
          v385();
          sub_22C5CA460();
          v386();
          v98 = v477;
          sub_22C5CAA88();
        }

        sub_22C9068FC();
        sub_22C38B1DC(&v476);
        sub_22C5CA6D4();
        v387();
        v388 = swift_isUniquelyReferenced_nonNull_native();
        sub_22C5CA868(v388, v389, v390, v391, v392, v393, v394, v395, v424, v425, v426, v427, v428, v429);

        v123 = *&v492[0];
        v396 = sub_22C371530();
        v471(v396);
        sub_22C5CA440();
        v397(v448, v154);
        v398 = sub_22C38A190();
        sub_22C36DD28(v398, v399, &unk_22C9204C0);
        v400 = sub_22C3707E8();
        v401(v400);
        sub_22C5CA4C0();
        v402();
        sub_22C36AC94();
        sub_22C5C8874(v450, v403);
        goto LABEL_76;
      }

      sub_22C5CADFC();
      sub_22C36DD28(v240, &qword_27D9BEC18, &unk_22C9204A0);
      sub_22C37205C();
      sub_22C903FBC();
      v293 = v485;

      v294 = sub_22C9063CC();
      sub_22C90AACC();
      sub_22C5CACE4();

      v295 = sub_22C5CA91C();
      if (os_log_type_enabled(v295, v296))
      {
        sub_22C36BED8();
        v297 = swift_slowAlloc();
        sub_22C370220();
        v298 = swift_slowAlloc();
        v299 = sub_22C5CA4D4(v298);
        v301 = sub_22C36F9F4(v299, v293, v300);

        *(v297 + 4) = v301;
        sub_22C5CAA1C(&dword_22C366000, v294, v240, "Unable to find retrieve context statement: %s is not found in context");
        _os_log_impl(v302, v303, v304, v305, v306, v307);
        sub_22C36FF94(&qword_27D9BEC28);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        v308 = sub_22C37F88C();
        MEMORY[0x2318B9880](v308);

        sub_22C5CA460();
        v309();
        sub_22C5CA440();
        v310 = sub_22C5CA990();
        v311(v310);
        sub_22C36DD28(v466, &qword_27D9BEC28, &unk_22C9204C0);
        v312 = sub_22C3707E8();
        v313(v312);
        sub_22C5CA4C0();
        v314();
      }

      else
      {

        sub_22C5CA460();
        v376();
        sub_22C5CA440();
        v377 = sub_22C5CA990();
        v378(v377);
        v379 = sub_22C38A190();
        sub_22C36DD28(v379, v380, &unk_22C9204C0);
        v381 = sub_22C3707E8();
        v382(v381);
        v154(v491, v98);
      }

      v116 = v472;
      sub_22C36AC94();
      sub_22C5C8874(v450, v383);
    }
  }

  v125 = v476;
  v126 = v475;
  while (1)
  {
    v124 = v121 + 1;
    if (__OFADD__(v121, 1))
    {
      break;
    }

    if (v124 >= v461)
    {
      sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
      sub_22C36A748();
      sub_22C36C640(v199, v200, v201, v202);
      v119 = 0;
      goto LABEL_10;
    }

    v119 = *(v116 + 8 * v124);
    ++v121;
    if (v119)
    {
      v121 = v124;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  sub_22C90B54C();
  __break(1u);
}

void sub_22C5C51D8()
{
  sub_22C36BA7C();
  v143 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  sub_22C369914(v13);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  sub_22C5CA768();
  v15 = sub_22C90952C();
  sub_22C369824();
  v141 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22C3698E4();
  v140 = v18;
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  sub_22C5CA690();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA64();
  v142 = v21;
  v22 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
  sub_22C369914(v22);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  v25 = &v134 - v24;
  v26 = v10 == v6 && v8 == v4;
  if (v26)
  {
    goto LABEL_28;
  }

  sub_22C371530();
  if (sub_22C90B4FC())
  {
    goto LABEL_28;
  }

  v145 = v10;
  v146 = v8;
  strcpy(v144, "^[$]{[^ ]*}$");
  HIBYTE(v144[6]) = 0;
  v144[7] = -5120;
  sub_22C90077C();
  sub_22C36A748();
  sub_22C36C640(v27, v28, v29, v30);
  sub_22C3858B4();
  sub_22C3870A4();
  sub_22C90AD6C();
  v32 = v31;
  sub_22C36DD28(v25, &qword_27D9BD820, &unk_22C9195C0);
  if (v32)
  {
    goto LABEL_28;
  }

  v135 = v6;
  v136 = v4;
  v137 = v0;
  v138 = v15;
  v139 = v12;

  v33 = sub_22C862F28(2uLL, v10, v8);
  v37 = sub_22C46BD44(1, v33, v34, v35, v36);
  v39 = v38;
  v41 = v40;
  v42 = v37 >> 16;
  v44 = v43 >> 16;
  v45 = (v143 + 48);
  v46 = *(v143 + 16) + 1;
  do
  {
    if (!--v46)
    {
      goto LABEL_27;
    }

    v47 = *(v45 - 2);
    v48 = *(v45 - 1);
    v49 = *v45;
    if ((v48 & 0x2000000000000000) != 0)
    {
      v50 = HIBYTE(v48) & 0xF;
    }

    else
    {
      v50 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v47 == v39 && v48 == v41 && v42 == 0 && v50 == v44)
    {
      break;
    }

    v45 += 3;
  }

  while ((sub_22C90B46C() & 1) == 0);

  if (*(v49 + 16) != 1)
  {
LABEL_27:

    goto LABEL_28;
  }

  sub_22C58B54C(v49, v1);

  v54 = sub_22C5CA7F4();
  v55 = v138;
  sub_22C36D0A8(v54, v56, v138);
  v57 = v139;
  if (v26)
  {
    sub_22C36DD28(v1, &qword_27D9BB0C0, &qword_22C90D960);
    goto LABEL_28;
  }

  v63 = v141;
  v62 = v142;
  v64 = sub_22C441720();
  v65(v64);
  v66 = (v63 + 16);
  v67 = *(v63 + 16);
  v68 = v137;
  v69 = sub_22C3720DC();
  v67(v69);
  v70 = sub_22C371510();
  if (v71(v70) != *MEMORY[0x277D72D50])
  {
    v80 = sub_22C5CAA28();
    v66(v80);
    goto LABEL_36;
  }

  v72 = v140;
  v73 = sub_22C5CAA58();
  v67(v73);
  (*(v63 + 96))(v72, v55);
  sub_22C9094EC();
  sub_22C3869F0();
  swift_projectBox();
  sub_22C36BBA8();
  v75 = (*(v74 + 88))();
  if (v75 == *MEMORY[0x277D72CB0])
  {
    sub_22C90A1BC();
    v76 = sub_22C90A6CC();
    v77 = v62;
    v78 = *(v63 + 8);
    v78(v77, v55);
    if (v76 == 2)
    {

      v79 = sub_22C371510();
      (v78)(v79);
      goto LABEL_28;
    }

    *v57 = v76 & 1;
    v98 = *MEMORY[0x277D1DED8];
    v99 = sub_22C906F2C();
    sub_22C36985C();
    (*(v100 + 104))(v57, v98, v99);
    sub_22C36BECC();
    sub_22C36C640(v101, v102, v103, v99);

    v104 = v68;
LABEL_118:
    v78(v104, v55);
    goto LABEL_30;
  }

  v86 = v136;
  if (v75 != *MEMORY[0x277D72CA0])
  {
    if (v75 == *MEMORY[0x277D72CD0] || v75 == *MEMORY[0x277D72CE8])
    {

      v106 = *(v63 + 8);
      v107 = sub_22C371510();
      v106(v107);

      v108 = sub_22C5C5B50(v135, v86);
      v110 = v109;
      (v106)(v62, v55);
      if ((v110 & 1) == 0)
      {
        *v57 = v108;
        v111 = *MEMORY[0x277D1DEF0];
        v112 = sub_22C906F2C();
        sub_22C36985C();
        (*(v113 + 104))(v57, v111, v112);
        sub_22C36BECC();
        v61 = v112;
        goto LABEL_29;
      }

LABEL_28:
      sub_22C906F2C();
      sub_22C36A748();
LABEL_29:
      sub_22C36C640(v58, v59, v60, v61);
LABEL_30:
      sub_22C36CC48();
      return;
    }

    v114 = sub_22C5CAA28();
    v66(v114);

LABEL_36:
    sub_22C906F2C();
    sub_22C36A748();
    sub_22C36C640(v81, v82, v83, v84);
    v85 = sub_22C371510();
    v66(v85);
    goto LABEL_30;
  }

  v87 = HIBYTE(v136) & 0xF;
  v88 = v135;
  v89 = v135 & 0xFFFFFFFFFFFFLL;
  if ((v136 & 0x2000000000000000) != 0)
  {
    v90 = HIBYTE(v136) & 0xF;
  }

  else
  {
    v90 = v135 & 0xFFFFFFFFFFFFLL;
  }

  if (!v90)
  {
    v132 = v62;
    v78 = *(v63 + 8);
    v78(v132, v55);
    goto LABEL_116;
  }

  if ((v136 & 0x1000000000000000) != 0)
  {
    LOBYTE(v144[0]) = 0;

    v93 = sub_22C5C96C4(v88, v86, 10);
    v125 = v133;
LABEL_115:
    v78 = *(v63 + 8);
    v78(v142, v55);

    if ((v125 & 1) == 0)
    {
      *v57 = v93;
      v126 = *MEMORY[0x277D1DED0];
      v127 = sub_22C906F2C();
      sub_22C36985C();
      (*(v128 + 104))(v57, v126, v127);
      sub_22C36BECC();
      sub_22C36C640(v129, v130, v131, v127);

      v104 = v137;
      goto LABEL_118;
    }

LABEL_116:

    v78(v137, v55);
    goto LABEL_28;
  }

  if ((v136 & 0x2000000000000000) == 0)
  {
    if ((v135 & 0x1000000000000000) != 0)
    {
      v91 = ((v136 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v91 = sub_22C90AFCC();
    }

    v92 = *v91;
    if (v92 == 43)
    {
      if (v89 >= 1)
      {
        if (v89 != 1)
        {
          v93 = 0;
          if (v91)
          {
            while (1)
            {
              sub_22C36CD1C();
              if (!v26 & v94)
              {
                goto LABEL_113;
              }

              sub_22C37EC64();
              if (!v26)
              {
                goto LABEL_113;
              }

              v93 = v118 + v117;
              if (__OFADD__(v118, v117))
              {
                goto LABEL_113;
              }

              sub_22C5CAA10();
              if (v26)
              {
                goto LABEL_114;
              }
            }
          }

          goto LABEL_104;
        }

        goto LABEL_113;
      }

      goto LABEL_124;
    }

    if (v92 != 45)
    {
      if (v89)
      {
        v93 = 0;
        if (v91)
        {
          while (1)
          {
            v121 = *v91 - 48;
            if (v121 > 9)
            {
              goto LABEL_113;
            }

            v122 = 10 * v93;
            if ((v93 * 10) >> 64 != (10 * v93) >> 63)
            {
              goto LABEL_113;
            }

            v93 = v122 + v121;
            if (__OFADD__(v122, v121))
            {
              goto LABEL_113;
            }

            ++v91;
            if (!--v89)
            {
              goto LABEL_104;
            }
          }
        }

        goto LABEL_104;
      }

LABEL_113:
      v93 = 0;
      v97 = 1;
      goto LABEL_114;
    }

    if (v89 >= 1)
    {
      if (v89 != 1)
      {
        v93 = 0;
        if (v91)
        {
          while (1)
          {
            sub_22C36CD1C();
            if (!v26 & v94)
            {
              goto LABEL_113;
            }

            sub_22C37EC64();
            if (!v26)
            {
              goto LABEL_113;
            }

            v93 = v96 - v95;
            if (__OFSUB__(v96, v95))
            {
              goto LABEL_113;
            }

            sub_22C5CAA10();
            if (v26)
            {
              goto LABEL_114;
            }
          }
        }

LABEL_104:
        v97 = 0;
LABEL_114:
        LOBYTE(v144[0]) = v97;
        v125 = v97;

        goto LABEL_115;
      }

      goto LABEL_113;
    }

    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v145 = v135;
  v146 = v136 & 0xFFFFFFFFFFFFFFLL;
  if (v135 != 43)
  {
    if (v135 != 45)
    {
      if (v87)
      {
        while (1)
        {
          sub_22C36CD1C();
          if (!v26 & v94)
          {
            break;
          }

          sub_22C37EC64();
          if (!v26)
          {
            break;
          }

          v93 = v124 + v123;
          if (__OFADD__(v124, v123))
          {
            break;
          }

          sub_22C5CAA10();
          if (v26)
          {
            goto LABEL_114;
          }
        }
      }

      goto LABEL_113;
    }

    if (v87)
    {
      if (v87 != 1)
      {
        sub_22C5CACF0();
        while (1)
        {
          sub_22C36CD1C();
          if (!v26 & v94)
          {
            break;
          }

          sub_22C37EC64();
          if (!v26)
          {
            break;
          }

          v93 = v116 - v115;
          if (__OFSUB__(v116, v115))
          {
            break;
          }

          sub_22C5CAA10();
          if (v26)
          {
            goto LABEL_114;
          }
        }
      }

      goto LABEL_113;
    }

    goto LABEL_123;
  }

  if (v87)
  {
    if (v87 != 1)
    {
      sub_22C5CACF0();
      while (1)
      {
        sub_22C36CD1C();
        if (!v26 & v94)
        {
          break;
        }

        sub_22C37EC64();
        if (!v26)
        {
          break;
        }

        v93 = v120 + v119;
        if (__OFADD__(v120, v119))
        {
          break;
        }

        sub_22C5CAA10();
        if (v26)
        {
          goto LABEL_114;
        }
      }
    }

    goto LABEL_113;
  }

LABEL_125:
  __break(1u);
}

uint64_t sub_22C5C5B50(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_22C5C9F84(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C5C5BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 + 64;
  sub_22C5CAA40();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v10 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_5:
      sub_22C5CACBC();

      v12 = sub_22C36CA88();
      MEMORY[0x2318B7850](v12);

      MEMORY[0x2318B7850](125, 0xE100000000000000);
      sub_22C3858B4();
      sub_22C3870A4();
      sub_22C90AD4C();
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return sub_22C37170C();
    }

    ++v10;
    if (*(v3 + 8 * v11))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void sub_22C5C5D50()
{
  v0 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  sub_22C369914(v0);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v1);
  sub_22C37BDA4();
  v2 = sub_22C901FAC();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C9087AC();
  sub_22C90882C();

  v6 = *(v4 + 16);
  v7 = sub_22C3720DC();
  v6(v7);
  v8 = sub_22C370018();
  v6(v8);
  sub_22C36BECC();
  sub_22C36C640(v9, v10, v11, v2);
  sub_22C602850();
}

void sub_22C5C5EA0()
{
  sub_22C36BA7C();
  v52 = v5;
  v7 = v6;
  v56 = v8;
  sub_22C9063DC();
  sub_22C369824();
  v54 = v10;
  v55 = v9;
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v11);
  sub_22C36CAC0();
  v12 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  sub_22C369914(v12);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C37B6BC();
  v14 = sub_22C901FAC();
  sub_22C369824();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v18);
  sub_22C49CA04();
  MEMORY[0x28223BE20](v19);
  sub_22C51E3BC();
  MEMORY[0x28223BE20](v20);
  sub_22C387B64();
  sub_22C605578(v7, v52);
  sub_22C36D0A8(v1, 1, v14);
  if (v21)
  {
    sub_22C36DD28(v1, &qword_27D9BC030, &unk_22C911CC0);
    sub_22C903FBC();
    v22 = *(v16 + 16);
    v22(v4, v7, v14);
    v23 = sub_22C9063CC();
    v24 = sub_22C90AADC();
    if (sub_22C36FBB4(v24))
    {
      sub_22C37080C();
      v25 = swift_slowAlloc();
      *v25 = 67109120;
      v26 = sub_22C901F9C();
      v27 = sub_22C37F8AC();
      v28(v27);
      *(v25 + 4) = v26;
      _os_log_impl(&dword_22C366000, v23, v24, "Unable to update the statement id ref: %u, programStatement might be malformed", v25, 8u);
      v29 = v56;
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    else
    {
      v44 = sub_22C37F8AC();
      v45(v44);
      v29 = v56;
    }

    v46 = sub_22C5CA7C4();
    v47(v46);
    v22(v29, v7, v14);
  }

  else
  {
    v30 = sub_22C37F370();
    v53 = v31;
    (v31)(v30);
    sub_22C903FBC();
    v32 = *(v16 + 16);
    v32(v0, v7, v14);
    v33 = sub_22C372158();
    (v32)(v33);
    v34 = sub_22C9063CC();
    v35 = sub_22C90AACC();
    if (sub_22C5CAB64(v35))
    {
      v37 = swift_slowAlloc();
      *v37 = 67109376;
      v51 = v35;
      v38 = sub_22C901F9C();
      v39 = *(v16 + 8);
      v40 = sub_22C37BD98();
      v39(v40);
      *(v37 + 4) = v38;
      *(v37 + 8) = 1024;
      v41 = sub_22C901F9C();
      v42 = sub_22C38A024();
      v39(v42);
      *(v37 + 10) = v41;
      _os_log_impl(&dword_22C366000, v34, v51, "Replacing statement ID ref %u with %u", v37, 0xEu);
      v43 = sub_22C3816C4();
      MEMORY[0x2318B9880](v43);
    }

    else
    {
      v48 = *(v16 + 8);
      v49 = sub_22C38A024();
      v48(v49);
      v50 = sub_22C37BD98();
      v48(v50);
    }

    (*(v54 + 8))(v2, v55);
    v53(v56, v3, v14);
  }

  sub_22C36CC48();
}

uint64_t sub_22C5C6304()
{
  sub_22C90046C();
  sub_22C369824();
  MEMORY[0x28223BE20](v0);
  sub_22C369ABC();
  sub_22C381AEC();
  MEMORY[0x28223BE20](v1);
  sub_22C5CA6F0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_22C8C4FE8(0xD000000000000015, 0x800000022C932A40, 0, 0xE000000000000000, v3);

  if (v4)
  {
    sub_22C9003DC();

    sub_22C5CA7E8();
    v5 = sub_22C37170C();
    v6(v5);
    sub_22C9003EC();
    v7 = sub_22C36BBCC();
    v8(v7);
  }

  return sub_22C37335C();
}

void sub_22C5C6490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v22;
  a20 = v23;
  v99 = v24;
  v100 = v25;
  v95 = v26;
  sub_22C3A5908(&qword_27D9BD2B8, &qword_22C9204B0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v27);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA64();
  sub_22C3698F8(v29);
  v30 = sub_22C9063DC();
  v31 = sub_22C36A7A4(v30, &a16);
  MEMORY[0x28223BE20](v31);
  sub_22C3698A8();
  sub_22C3698F8(v32);
  v98 = sub_22C90952C();
  sub_22C369824();
  MEMORY[0x28223BE20](v33);
  sub_22C3698A8();
  sub_22C3698F8(v34);
  v35 = sub_22C9093BC();
  sub_22C369824();
  MEMORY[0x28223BE20](v36);
  sub_22C369838();
  sub_22C37BDA4();
  v107 = sub_22C903E2C();
  sub_22C369824();
  v103 = v37;
  MEMORY[0x28223BE20](v38);
  sub_22C369838();
  v41 = v40 - v39;
  v106 = sub_22C90919C();
  sub_22C369824();
  v97 = v42;
  MEMORY[0x28223BE20](v43);
  sub_22C369838();
  sub_22C37B6BC();
  v44 = sub_22C9084CC();
  sub_22C369824();
  v46 = v45;
  MEMORY[0x28223BE20](v47);
  sub_22C369838();
  sub_22C5CA768();
  v48 = sub_22C90799C();
  v49 = 0;
  v108 = *(v48 + 16);
  v104 = (v103 + 8);
  v102 = *MEMORY[0x277D72A38];
  v101 = v35;
  v105 = v44;
  while (1)
  {
    if (v108 == v49)
    {

      v76 = 1;
      v77 = v95;
      goto LABEL_22;
    }

    if (v49 >= *(v48 + 16))
    {
      __break(1u);
      return;
    }

    sub_22C36BA94();
    (*(v46 + 16))(v21, v48 + v50 + *(v46 + 72) * v49, v44);
    sub_22C9084AC();
    sub_22C903E0C();
    (*v104)(v41, v107);
    v51 = sub_22C5CA5C8();
    if (v52(v51, v35) != v102)
    {
      v64 = sub_22C5CA5C8();
      v65(v64, v35);
      goto LABEL_18;
    }

    v53 = sub_22C5CA5C8();
    v54(v53, v35);
    v55 = swift_projectBox();
    (*(v97 + 16))(v20, v55, v106);

    sub_22C90908C();
    v56 = sub_22C90A1BC();
    v58 = v57;

    v59 = sub_22C90A1BC();
    v61 = v60;
    if (v56 == v59 && v58 == v60)
    {
    }

    else
    {
      sub_22C38674C();
      v63 = sub_22C90B4FC();

      if ((v63 & 1) == 0)
      {
        (*(v97 + 8))(v20, v106);
        v35 = v101;
        goto LABEL_18;
      }
    }

    sub_22C370208();
    sub_22C9090AC();
    v66 = sub_22C9094BC();
    v68 = v67;
    sub_22C36BA4C();
    v69(v61, v98);
    if (v66 == v99 && v68 == v100)
    {
      break;
    }

    sub_22C38674C();
    v71 = sub_22C90B4FC();

    v72 = sub_22C5CAC40();
    v73(v72);
    v35 = v101;
    if (v71)
    {
      goto LABEL_21;
    }

LABEL_18:
    v74 = sub_22C385558();
    v44 = v105;
    v75(v74, v105);
    ++v49;
  }

  v78 = sub_22C5CAC40();
  v79(v78);
LABEL_21:

  v77 = v95;
  v80 = sub_22C36FC08();
  v44 = v105;
  v81(v80);
  v76 = 0;
LABEL_22:
  sub_22C36C640(v77, v76, 1, v44);
  sub_22C386758();
  sub_22C903FBC();
  sub_22C4E719C(v77, v96, &qword_27D9BD2B8, &qword_22C9204B0);
  v82 = sub_22C9063CC();
  v83 = sub_22C90AACC();
  if (sub_22C36FBB4(v83))
  {
    sub_22C36BED8();
    v84 = swift_slowAlloc();
    sub_22C370220();
    v109 = swift_slowAlloc();
    *v84 = 136315138;
    sub_22C4E719C(v96, v94, &qword_27D9BD2B8, &qword_22C9204B0);
    sub_22C90A1AC();
    sub_22C5CAC34();
    v85 = sub_22C388EF4();
    sub_22C36DD28(v85, v86, &qword_22C9204B0);
    v87 = sub_22C36FC2C();
    v90 = sub_22C36F9F4(v87, v88, v89);

    *(v84 + 4) = v90;
    _os_log_impl(&dword_22C366000, v82, v83, "Found DynamicEnumerationEntity %s in QueryDecorationResults", v84, 0xCu);
    sub_22C36FF94(v109);
    v91 = sub_22C37F88C();
    MEMORY[0x2318B9880](v91);
    v92 = sub_22C37B310();
    MEMORY[0x2318B9880](v92);
  }

  else
  {

    sub_22C36DD28(v96, &qword_27D9BD2B8, &qword_22C9204B0);
  }

  sub_22C36FB04();
  v93(v21);
  sub_22C36CC48();
}

void sub_22C5C6C44()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_22C90355C();
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C36EC5C();
  sub_22C9063DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C37BDA4();
  v9 = sub_22C3A5908(&qword_27D9BEC18, &unk_22C9204A0);
  sub_22C369914(v9);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C5CA768();
  v11 = sub_22C9079EC();
  v12 = v2[1];
  v36[1] = *v2;
  v36[2] = v12;
  v37 = v4;
  sub_22C6B08C8(sub_22C5C969C, v36, v11);

  v13 = sub_22C9081CC();
  v14 = sub_22C5CA7F4();
  sub_22C36D0A8(v14, v15, v13);
  if (v16)
  {
    sub_22C36DD28(v0, &qword_27D9BEC18, &unk_22C9204A0);
    sub_22C903FBC();
    v17 = sub_22C36FC2C();
    v18(v17);
    v19 = sub_22C9063CC();
    v20 = sub_22C90AACC();
    if (os_log_type_enabled(v19, v20))
    {
      sub_22C36BED8();
      v21 = swift_slowAlloc();
      sub_22C370220();
      v35 = swift_slowAlloc();
      v38 = v35;
      *v21 = 136315138;
      v22 = sub_22C90354C();
      v23 = sub_22C371510();
      v24(v23);
      v25 = sub_22C37B9B0();
      sub_22C36F9F4(v25, v26, v27);
      sub_22C387194();

      *(v21 + 4) = v22;
      _os_log_impl(&dword_22C366000, v19, v20, "Unable to find %s in QueryDecorationResults", v21, 0xCu);
      sub_22C36FF94(v35);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    else
    {

      v31 = sub_22C371510();
      v32(v31);
    }

    v33 = sub_22C5CA720();
    v34(v33);
    v30 = 1;
  }

  else
  {
    sub_22C36BBA8();
    v28 = sub_22C441720();
    v29(v28);
    v30 = 0;
  }

  sub_22C36C640(v6, v30, 1, v13);
  sub_22C36CC48();
}

uint64_t sub_22C5C6F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a6;
  v55 = a4;
  v56 = a5;
  v54 = a2;
  v65 = sub_22C90355C();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_22C90952C();
  v58 = *(v60 - 8);
  v11 = MEMORY[0x28223BE20](v60);
  v59 = (&v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v57 = &v49 - v13;
  v14 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v49 - v15;
  v17 = sub_22C90399C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v49 - v22;
  v24 = sub_22C90919C();
  v25 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    goto LABEL_15;
  }

  v51 = v28;
  v52 = v26;
  v53 = v25;
  v50 = a3;
  v61 = a1;
  v62 = v6;
  sub_22C9081AC();
  sub_22C90391C();
  v29 = *(v18 + 8);
  v29(v23, v17);
  v30 = sub_22C9093BC();
  if (sub_22C370B74(v16, 1, v30) != 1)
  {
    v31 = *(v30 - 8);
    if ((*(v31 + 88))(v16, v30) != *MEMORY[0x277D72A38])
    {
      (*(v31 + 8))(v16, v30);
      goto LABEL_15;
    }

    v49 = v29;
    (*(v31 + 96))(v16, v30);
    v32 = swift_projectBox();
    (*(v52 + 16))(v51, v32, v53);

    v33 = v57;
    sub_22C9090AC();
    v34 = v59;
    TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v59);
    v35 = v58;
    v36 = v33;
    v37 = v34;
    v38 = v60;
    v57 = *(v58 + 8);
    (v57)(v36, v60);
    if ((*(v35 + 88))(v37, v38) != *MEMORY[0x277D72D28])
    {
      (*(v52 + 8))(v51, v53);
      (v57)(v37, v38);
      goto LABEL_15;
    }

    (*(v35 + 96))(v37, v38);
    v39 = *v37;
    v40 = *(*v37 + 24);
    v60 = *(*v37 + 16);
    v42 = *(v39 + 32);
    v41 = *(v39 + 40);

    sub_22C9081AC();
    sub_22C90394C();
    v49(v21, v17);
    v43 = sub_22C3D394C(v10, v63);
    (*(v64 + 8))(v10, v65);
    if (v43)
    {
      if (v42 == v55 && v41 == v56)
      {
      }

      else
      {
        v45 = sub_22C90B4FC();

        v46 = 0;
        if ((v45 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      if (v60 == v54 && v40 == v50)
      {
        v46 = 1;
      }

      else
      {
        v46 = sub_22C90B4FC();
      }

      goto LABEL_25;
    }

    v46 = 0;
LABEL_25:

    (*(v52 + 8))(v51, v53);
    return v46 & 1;
  }

  sub_22C36DD28(v16, &qword_27D9BB908, &qword_22C910960);
LABEL_15:
  sub_22C9081AC();
  sub_22C90394C();
  (*(v18 + 8))(v21, v17);
  v46 = sub_22C3D394C(v10, v63);
  (*(v64 + 8))(v10, v65);
  return v46 & 1;
}

void sub_22C5C75F4()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v61 = v8;
  sub_22C9063DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  v60 = type metadata accessor for ContextRule(0);
  sub_22C369824();
  MEMORY[0x28223BE20](v11);
  sub_22C369ABC();
  sub_22C49CA04();
  MEMORY[0x28223BE20](v12);
  sub_22C3705C8();
  MEMORY[0x28223BE20](v13);
  sub_22C387B64();
  v14 = 0;
  v15 = *(v3 + 16);
  while (v15 != v14)
  {
    sub_22C36BA94();
    sub_22C3814E4();
    sub_22C5CA0B8(v16, v0);
    v17 = *v0 == v7 && v0[1] == v5;
    if (v17 || (sub_22C90B4FC() & 1) != 0)
    {
      sub_22C37A168();
      v19 = sub_22C36EC6C();
      sub_22C5C8974(v19, v20);
      sub_22C903FBC();
      sub_22C3814E4();
      v21 = sub_22C3726C4();
      sub_22C5CA0B8(v21, v22);

      v23 = sub_22C9063CC();
      v24 = sub_22C90AACC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = sub_22C383050();
        sub_22C37A180();
        *v25 = 136315394;
        v26 = sub_22C371510();
        *(v25 + 4) = sub_22C36F9F4(v26, v27, v28);
        *(v25 + 12) = 2080;
        v29 = v60;
        v30 = sub_22C90354C();
        sub_22C36AC94();
        sub_22C5C8874(v1, v31);
        v32 = sub_22C372FA4();
        sub_22C36F9F4(v32, v33, v34);
        sub_22C38B194();

        *(v25 + 14) = v30;
        _os_log_impl(&dword_22C366000, v23, v24, "Found %s in contextRule, returning %s)", v25, 0x16u);
        swift_arrayDestroy();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();

        v35 = sub_22C5CA720();
        v36(v35);
      }

      else
      {

        sub_22C36AC94();
        sub_22C5C8874(v1, v55);
        v56 = sub_22C5CA720();
        v57(v56);
        v29 = v60;
      }

      v54 = v61;
      sub_22C37A168();
      v58 = sub_22C379ED8();
      sub_22C5C8974(v58, v59);
      v53 = 0;
      goto LABEL_16;
    }

    sub_22C36AC94();
    sub_22C5C8874(v0, v18);
    ++v14;
  }

  sub_22C903FBC();

  v37 = sub_22C9063CC();
  v38 = sub_22C90AACC();

  if (os_log_type_enabled(v37, v38))
  {
    sub_22C36BED8();
    v39 = swift_slowAlloc();
    sub_22C370220();
    v62 = swift_slowAlloc();
    *v39 = 136315138;
    v40 = sub_22C371510();
    *(v39 + 4) = sub_22C36F9F4(v40, v41, v42);
    sub_22C5CAA1C(&dword_22C366000, v37, v38, "Unable to find %s in ContextRules");
    _os_log_impl(v43, v44, v45, v46, v47, v48);
    sub_22C36FF94(v62);
    v49 = sub_22C36D66C();
    MEMORY[0x2318B9880](v49);
    v50 = sub_22C37F88C();
    MEMORY[0x2318B9880](v50);
  }

  v51 = sub_22C5CA7C4();
  v52(v51);
  v53 = 1;
  v29 = v60;
  v54 = v61;
LABEL_16:
  sub_22C36C640(v54, v53, 1, v29);
  sub_22C36CC48();
}

void sub_22C5C79F8()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  sub_22C388C54();
  sub_22C9063DC();
  sub_22C369824();
  v37 = v6;
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v7);
  sub_22C36BA64();
  v9 = v8;
  v10 = *(v2 + 16) + 1;
  v11 = v2 + 72;
  while (--v10)
  {
    if (*(v11 - 40) != v0 || *(v11 - 32) != v4)
    {
      v11 += 48;
      if ((sub_22C90B4FC() & 1) == 0)
      {
        continue;
      }
    }

    sub_22C903FBC();

    v13 = sub_22C9063CC();
    v14 = sub_22C90AACC();

    if (os_log_type_enabled(v13, v14))
    {
      v36 = v14;
      v15 = sub_22C383050();
      v39 = sub_22C37A180();
      *v15 = 136315394;
      *(v15 + 4) = sub_22C36F9F4(v0, v4, &v39);
      *(v15 + 12) = 2080;

      v16 = sub_22C37335C();
      v19 = sub_22C36F9F4(v16, v17, v18);

      *(v15 + 14) = v19;
      _os_log_impl(&dword_22C366000, v13, v36, "Found %s in DynamicEnumerationEntityRule, returning %s)", v15, 0x16u);
      swift_arrayDestroy();
      v20 = sub_22C37B310();
      MEMORY[0x2318B9880](v20);
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v37 + 8))(v9, v38);
    }

    else
    {

      v34 = sub_22C5CA7C4();
      v35(v34, v38);
    }

    goto LABEL_15;
  }

  sub_22C903FBC();

  v21 = sub_22C9063CC();
  sub_22C90AACC();

  v22 = sub_22C5CA91C();
  if (os_log_type_enabled(v22, v23))
  {
    sub_22C36BED8();
    v24 = swift_slowAlloc();
    sub_22C370220();
    v25 = swift_slowAlloc();
    v39 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_22C36F9F4(v0, v4, &v39);
    sub_22C37F89C();
    _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
    sub_22C36FF94(v25);
    v31 = sub_22C37F88C();
    MEMORY[0x2318B9880](v31);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v32 = sub_22C5CA720();
  v33(v32);
LABEL_15:
  sub_22C37335C();
  sub_22C36CC48();
}

void sub_22C5C7D5C()
{
  sub_22C36BA7C();
  sub_22C388C54();
  v34 = sub_22C9063DC();
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  sub_22C5CA690();
  MEMORY[0x28223BE20](v4);
  sub_22C5CA6F0();
  sub_22C90000C();
  sub_22C369824();
  v36 = v5;
  v37 = v6;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = sub_22C90A17C();
  v11 = sub_22C369914(v10);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  sub_22C5CA768();
  v12 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  sub_22C37F370();
  v13 = sub_22C90A0EC();
  v14 = [v12 fileExistsAtPath_];

  if (!v14)
  {
    v15 = v12;
    sub_22C903FBC();

    v16 = sub_22C9063CC();
    v17 = sub_22C90AACC();

    if (os_log_type_enabled(v16, v17))
    {
      sub_22C36BED8();
      v18 = swift_slowAlloc();
      sub_22C370220();
      v38 = swift_slowAlloc();
      *v18 = 136315138;
      v19 = sub_22C37F370();
      *(v18 + 4) = sub_22C36F9F4(v19, v20, v21);
      _os_log_impl(&dword_22C366000, v16, v17, "Planner overrides version file does not exist: %s", v18, 0xCu);
      sub_22C36FF94(v38);
      v22 = sub_22C3816C4();
      MEMORY[0x2318B9880](v22);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v2 + 8))(v0, v34);
LABEL_6:
    sub_22C37170C();
    sub_22C36CC48();
    return;
  }

  sub_22C90A15C();
  sub_22C37F370();
  sub_22C90A0CC();
  sub_22C8FFFFC();
  sub_22C3858B4();
  v23 = sub_22C90ACFC();
  v35 = *(v37 + 8);
  v35(v9, v36);

  v24 = *(v23 + 16);
  if (!v24)
  {

LABEL_22:

    goto LABEL_6;
  }

  v33 = v12;
  v25 = 0;
  v26 = v23 + 40;
  while (1)
  {
    if (v25 >= *(v23 + 16))
    {
      __break(1u);
      goto LABEL_26;
    }

    sub_22C8FFFEC();
    sub_22C374C34();
    v27 = sub_22C90AD3C();
    v29 = v28;
    v35(v9, v36);

    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      v31 = sub_22C90AD0C();

      if (v31[2] == 2)
      {
        v32 = v31[4] == 0x6E6F6973726576 && v31[5] == 0xE700000000000000;
        if (v32 || (sub_22C90B4FC() & 1) != 0)
        {
          break;
        }
      }
    }

    ++v25;
    v26 += 16;
    if (v24 == v25)
    {

      goto LABEL_22;
    }
  }

  if (v31[2] >= 2uLL)
  {

    sub_22C8FFFDC();
    sub_22C90AD3C();

    v35(v9, v36);

    goto LABEL_6;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_22C5C82B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C382AF4;

  return sub_22C5ADF1C();
}

uint64_t sub_22C5C8350()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C5C83F8;

  return sub_22C5AF29C();
}

uint64_t sub_22C5C83F8()
{
  sub_22C369980();
  v3 = v2;
  sub_22C369A3C();
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_22C5C8528(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  sub_22C90051C();

  sub_22C5CA6E4();
  v2();
  v4 = sub_22C36D264();

  return sub_22C38B120(v4, v5);
}

id sub_22C5C85A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22C90A0EC();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_22C90030C();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_22C5C86BC()
{
  result = qword_27D9BEB58;
  if (!qword_27D9BEB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB58);
  }

  return result;
}

uint64_t sub_22C5C8710()
{
  sub_22C36D5EC();
  sub_22C370250();
  v3 = sub_22C9087BC();
  sub_22C369914(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  v8 = sub_22C374D1C(v7);
  *v8 = v9;
  v8[1] = sub_22C46BC08;

  return sub_22C5B04FC(v2, v0, v6, v1 + v5);
}

uint64_t sub_22C5C87F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C5C8874(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_22C5C88CC()
{
  result = qword_27D9BEB88;
  if (!qword_27D9BEB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB88);
  }

  return result;
}

unint64_t sub_22C5C8920()
{
  result = qword_27D9BEBA0;
  if (!qword_27D9BEBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEBA0);
  }

  return result;
}

uint64_t sub_22C5C8974(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

unint64_t sub_22C5C89CC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_22C5C89E8@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      v6 = sub_22C908A0C();
      return (*(*(v6 - 8) + 16))(a3, a2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, v6);
    }
  }

  __break(1u);
  return result;
}

void *sub_22C5C8A88@<X0>(void *(*a1)(void *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X8>)
{
  if (a3)
  {
    v6 = sub_22C908A0C();
    return sub_22C36C640(a4, 1, 1, v6);
  }

  else
  {
    v9 = a2;
    result = a1(a4, &v9);
    if (v4)
    {
      __break(1u);
    }

    else
    {
      v8 = sub_22C908A0C();
      return sub_22C36C640(a4, 0, 1, v8);
    }
  }

  return result;
}

unint64_t sub_22C5C8B28(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x2318B98A0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x2318B98A0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22C5C8BB4(uint64_t a1)
{
  result = sub_22C5C87F4(&qword_281433C08, type metadata accessor for PlanOverridesService, &protocol conformance descriptor for PlanOverridesService);
  *(a1 + 8) = result;
  return result;
}

void sub_22C5C8C14(uint64_t a1)
{
  sub_22C908AEC();
  if (v1 <= 0x3F)
  {
    sub_22C5C92FC(319, &qword_281435830, MEMORY[0x277CC9788]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of PlanOverridesService.setup(sessionState:)()
{
  sub_22C36FB38();
  v1 = v0;
  sub_22C36C89C();
  v7 = (*(v2 + 312) + **(v2 + 312));
  v3 = swift_task_alloc();
  v4 = sub_22C374D1C(v3);
  *v4 = v5;
  v4[1] = sub_22C46BC08;

  return v7(v1);
}

uint64_t dispatch thunk of PlanOverridesService.handle(_:plannerServiceContext:)()
{
  sub_22C36D5EC();
  sub_22C370250();
  sub_22C36C89C();
  v7 = (*(v2 + 320) + **(v2 + 320));
  v3 = swift_task_alloc();
  v4 = sub_22C374D1C(v3);
  *v4 = v5;
  v4[1] = sub_22C5C8FA8;

  return v7(v1, v0);
}

uint64_t sub_22C5C8FA8()
{
  sub_22C369980();
  v2 = v1;
  sub_22C369A3C();
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t dispatch thunk of PlanOverridesService.planOverrideEventFromTranscript(sessionState:)()
{
  sub_22C36D5EC();
  sub_22C370250();
  sub_22C36C89C();
  v7 = (*(v2 + 344) + **(v2 + 344));
  v3 = swift_task_alloc();
  v4 = sub_22C374D1C(v3);
  *v4 = v5;
  v4[1] = sub_22C382AF4;

  return v7(v1, v0);
}

void sub_22C5C9274(uint64_t a1)
{
  sub_22C5C92FC(319, &qword_27D9BBB88, MEMORY[0x277D1E890]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22C5C92FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22C90AC6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *sub_22C5C9360(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22C5C940C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_22C5C943C()
{
  result = qword_27D9BEBE0;
  if (!qword_27D9BEBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEBE0);
  }

  return result;
}

unint64_t sub_22C5C9494()
{
  result = qword_27D9BEBE8;
  if (!qword_27D9BEBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEBE8);
  }

  return result;
}

unint64_t sub_22C5C94EC()
{
  result = qword_27D9BEBF0;
  if (!qword_27D9BEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEBF0);
  }

  return result;
}

unint64_t sub_22C5C9544()
{
  result = qword_27D9BEBF8;
  if (!qword_27D9BEBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEBF8);
  }

  return result;
}

unint64_t sub_22C5C959C()
{
  result = qword_27D9BEC00;
  if (!qword_27D9BEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEC00);
  }

  return result;
}

unint64_t sub_22C5C95F4()
{
  result = qword_27D9BEC08;
  if (!qword_27D9BEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEC08);
  }

  return result;
}

unint64_t sub_22C5C9648()
{
  result = qword_27D9BEC10;
  if (!qword_27D9BEC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEC10);
  }

  return result;
}

unsigned __int8 *sub_22C5C96C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = sub_22C90A49C();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22C8A48C8(result, v5);
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22C90AFCC();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          sub_22C37751C();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  sub_22C5CA9F8();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        sub_22C37751C();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                sub_22C5CA9F8();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        sub_22C388D18();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              sub_22C5CA9F8();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        sub_22C388D18();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              sub_22C5CA9F8();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      sub_22C388D18();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            sub_22C5CA9F8();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }
        }

        else
        {
          v66 = -48;
        }

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

_BYTE *sub_22C5C9BDC@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t sub_22C5C9C48(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = a1 == a5 && a2 == a6;
  if (v8 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_22C90B46C() & 1;
  }
}

uint64_t sub_22C5C9CB0()
{
  sub_22C370250();
  v3 = *(v2 + 16);
  do
  {
    v4 = v3;
    if (!v3)
    {
      break;
    }

    --v3;
    v5 = sub_22C908A0C();
    sub_22C3699B8(v5);
  }

  while ((v0(v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v7 + 72) * v3) & 1) == 0);
  return v4;
}

void sub_22C5C9D58()
{
  sub_22C36BA7C();
  v1 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  sub_22C369914(v1);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v2);
  v4 = v29 - v3;
  v6 = *v0;
  v5 = v0[1];
  v7 = v0[3];
  v31 = v0[2];
  v32 = v5;
  v29[1] = v0[4];
  v30 = v7;
  v8 = sub_22C57D74C();
  v10 = v9;
  v11 = v6 + 56;
  v29[0] = v6 + 64;
  if (v12)
  {
    __break(1u);
LABEL_20:
    sub_22C372158();
    sub_22C36CC48();
  }

  else
  {
    while (1)
    {
      v13 = *(v6 + 36);
      if (v13 != v10)
      {
        break;
      }

      v14 = 1 << *(v6 + 32);
      if (v8 == v14)
      {
        goto LABEL_20;
      }

      if (v8 < 0 || v8 >= v14)
      {
        goto LABEL_22;
      }

      v15 = v8 >> 6;
      if ((*(v11 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      v33 = *(*(v6 + 48) + 8 * v8);

      v32(&v33);

      v16 = v30(v4);
      sub_22C36DD28(v4, &qword_27D9BB628, &unk_22C920580);
      if (v16)
      {
        goto LABEL_20;
      }

      v17 = 1 << *(v6 + 32);
      if (v8 >= v17)
      {
        goto LABEL_24;
      }

      v18 = *(v11 + 8 * v15);
      if ((v18 & (1 << v8)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v6 + 36) != v13)
      {
        goto LABEL_26;
      }

      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v15 << 6;
        v21 = v15 + 1;
        v22 = (v29[0] + 8 * v15);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            v25 = sub_22C372158();
            sub_22C3A5038(v25, v26, 0);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_18;
          }
        }

        v27 = sub_22C372158();
        sub_22C3A5038(v27, v28, 0);
      }

LABEL_18:
      v10 = *(v6 + 36);
      v8 = v17;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

BOOL sub_22C5C9F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_22C90AF1C();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

uint64_t sub_22C5CA0B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C5CA16C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22C5CA184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlanOverridesService.EventReference(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_22C5CA1E8(id result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2;

    return a3;
  }

  return result;
}

uint64_t sub_22C5CA290(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C5CA328(uint64_t a1)
{
  result = sub_22C90069C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22C5CA470()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2080;
  v4 = v0[73];
  v5 = v0[74];

  return sub_22C36F9F4(v4, v5, v0 + 47);
}

uint64_t sub_22C5CA498()
{
  v2 = *(v0 - 240);

  return sub_22C5C8874(v2, type metadata accessor for PlanPostProcessor);
}

uint64_t sub_22C5CA4D4(uint64_t a1)
{
  *(v2 - 128) = a1;
  *v1 = *(v2 - 352);
  return *(v2 - 304);
}

uint64_t sub_22C5CA5A8()
{

  return swift_arrayDestroy();
}

uint64_t sub_22C5CA5D4(uint64_t a1)
{

  return sub_22C90B47C();
}

uint64_t sub_22C5CA600()
{

  return swift_slowAlloc();
}

unint64_t sub_22C5CA774()
{
  v3 = *(v0 + 352);

  return sub_22C36F9F4(v3, v1, (v0 + 376));
}

uint64_t sub_22C5CA790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_22C90889C();
}

uint64_t sub_22C5CA868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v16 - 128) = v14;
  v18 = *(v16 - 152);
  v19 = *(v16 - 408);

  return sub_22C62C9F4(v15, v18, v19, a1, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_22C5CA8A4(uint64_t a1)
{

  return sub_22C9070CC();
}

uint64_t sub_22C5CA8C0(uint64_t a1)
{

  return sub_22C9070CC();
}

uint64_t sub_22C5CA9A0()
{

  return sub_22C90735C();
}

uint64_t sub_22C5CA9E0()
{
  result = v0;
  *(v1 - 536) = *(*(v1 - 152) + 8);
  return result;
}

uint64_t sub_22C5CAA94()
{
}

uint64_t sub_22C5CAAAC(uint64_t a1)
{

  return sub_22C9070CC();
}

void sub_22C5CAAC8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_22C5CAAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22C90708C();
}

unint64_t sub_22C5CAB00()
{
  v3 = *(v1 - 168);

  return sub_22C36F9F4(v3, v0, (v1 - 120));
}

uint64_t sub_22C5CAB1C(uint64_t a1)
{

  return sub_22C901F8C();
}

BOOL sub_22C5CAB34()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t sub_22C5CAB4C()
{

  return sub_22C472384(v0 + 584, v0 + 376);
}

BOOL sub_22C5CAB64(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C5CAB7C()
{

  return sub_22C472384(v0 + 296, v0 + 88);
}

uint64_t sub_22C5CAB94()
{

  return sub_22C4723E0(v0 + 584);
}

uint64_t sub_22C5CAD04(uint64_t a1, uint64_t a2)
{
  sub_22C36C640(*(v2 + 16), a2, 1, *(v2 + 56));
}

uint64_t sub_22C5CAD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C90B6CC();
}

void sub_22C5CAD7C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x12u);
}

void sub_22C5CAD9C()
{

  sub_22C3B6EDC();
}

uint64_t sub_22C5CADBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22C90708C();
}

uint64_t sub_22C5CADDC()
{

  return sub_22C4E719C(v2 + v4, v3, v0, v1);
}

uint64_t sub_22C5CADFC()
{
}

BOOL sub_22C5CAE14()
{

  return os_log_type_enabled(v0, v1);
}

BOOL sub_22C5CAE2C()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22C5CAE44()
{
}

uint64_t sub_22C5CAE5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_22C9063DC();
  sub_22C369824();
  v40 = v5;
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = sub_22C90046C();
  sub_22C369824();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22C369ABC();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_22C9003BC();
  v19 = [objc_opt_self() defaultManager];
  sub_22C9003EC();
  v20 = sub_22C90A0EC();

  v21 = [v19 fileExistsAtPath_];

  if (!v21)
  {
    goto LABEL_9;
  }

  sub_22C5CD2D0();
  sub_22C3729F0();
  v22 = sub_22C5CBA00(v15);
  if (!v22)
  {
    goto LABEL_9;
  }

  v23 = v22;
  sub_22C9003BC();
  v24 = sub_22C5CBA00(v15);
  if (!v24)
  {
LABEL_8:

LABEL_9:
    v32 = *(v11 + 8);
    v32(a1, v9);
    result = (v32)(v18, v9);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return result;
  }

  v39 = v24;
  sub_22C3729F0();
  v25 = sub_22C5CBA00(v15);
  if (!v25)
  {

    v23 = v39;
    goto LABEL_8;
  }

  v26 = v25;
  v27 = v23;
  sub_22C903FBC();
  v28 = v27;
  v29 = sub_22C9063CC();
  v38 = sub_22C90AACC();
  if (os_log_type_enabled(v29, v38))
  {
    sub_22C36BED8();
    v30 = swift_slowAlloc();
    v37 = v26;
    v31 = v30;
    *v30 = 134217984;
    v36 = [v28 count];

    *(v31 + 1) = v36;
    _os_log_impl(&dword_22C366000, v29, v38, "Plan overrides tries loaded with override count: %ld", v31, 0xCu);
    v26 = v37;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {

    v29 = v28;
  }

  v34 = *(v11 + 8);
  v34(a1, v9);
  (*(v40 + 8))(v8, v41);
  result = (v34)(v18, v9);
  v35 = v39;
  *a2 = v23;
  a2[1] = v35;
  a2[2] = v26;
  return result;
}

uint64_t sub_22C5CB200(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C9063DC();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v60 = v8 - v7;
  v9 = *v2;
  v10 = *(v2 + 8);
  v11 = *(v2 + 16);
  v68[0] = MEMORY[0x277D84F90];
  sub_22C90A1BC();
  v12 = sub_22C90A0EC();

  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v10;
  v13[4] = v11;
  v13[5] = v68;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22C5CD228;
  *(v14 + 24) = v13;
  v66 = sub_22C5CD234;
  v67 = v14;
  sub_22C378004();
  v63 = 1107296256;
  v64 = sub_22C5C8528;
  v65 = &unk_283FBD790;
  v15 = _Block_copy(&aBlock);
  v16 = v9;
  v17 = v10;
  v18 = v11;

  [v16 lookupKey:v12 resultBlock:v15];

  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    if (*(v68[0] + 16))
    {
      v59 = v16;
      v20 = v60;
      sub_22C903FBC();
      v21 = sub_22C9063CC();
      v22 = sub_22C90AACC();
      if (os_log_type_enabled(v21, v22))
      {
        v57 = v22;
        sub_22C36BED8();
        v23 = swift_slowAlloc();
        sub_22C370220();
        v56 = swift_slowAlloc();
        aBlock = v56;
        v58 = v23;
        *v23 = 136315138;
        swift_beginAccess();
        v24 = v68[0];
        v25 = *(v68[0] + 16);
        v26 = MEMORY[0x277D84F90];
        if (v25)
        {
          v52 = v21;
          v53 = v18;
          v54 = v5;
          v55 = v3;
          v61 = MEMORY[0x277D84F90];

          sub_22C3B5E2C(0, v25, 0, v27, v28, v29, v30);
          v26 = v61;
          v31 = (v24 + 40);
          do
          {
            v33 = *(v31 - 1);
            v32 = *v31;
            v34 = *(v61 + 16);
            v35 = *(v61 + 24);

            if (v34 >= v35 >> 1)
            {
              sub_22C3B5E2C(v35 > 1, v34 + 1, 1, v36, v37, v38, v39);
            }

            *(v61 + 16) = v34 + 1;
            v40 = v61 + 16 * v34;
            *(v40 + 32) = v33;
            *(v40 + 40) = v32;
            v31 += 26;
            --v25;
          }

          while (v25);

          v5 = v54;
          v3 = v55;
          v20 = v60;
          v18 = v53;
          v21 = v52;
        }

        v41 = MEMORY[0x2318B7AD0](v26, MEMORY[0x277D837D0]);
        v43 = v42;

        v44 = sub_22C36F9F4(v41, v43, &aBlock);

        *(v58 + 1) = v44;
        _os_log_impl(&dword_22C366000, v21, v57, "Found exact match of utterance to overrides: %s", v58, 0xCu);
        sub_22C36FF94(v56);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      (*(v5 + 8))(v20, v3);
      v16 = v59;
    }

    v45 = swift_allocObject();
    v45[2] = v16;
    v45[3] = v17;
    v45[4] = v18;
    v45[5] = v68;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_22C5CD29C;
    *(v46 + 24) = v45;
    v66 = sub_22C5CD2A8;
    v67 = v46;
    sub_22C378004();
    v63 = 1107296256;
    v64 = sub_22C5CD1D0;
    v65 = &unk_283FBD808;
    v47 = _Block_copy(&aBlock);
    v48 = v16;
    v49 = v17;
    v50 = v18;

    [v49 enumerateAllRowsWithBlock_];
    _Block_release(v47);
    LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

    if ((v47 & 1) == 0)
    {
      swift_beginAccess();
      v51 = v68[0];

      return v51;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C5CB74C@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = sub_22C9063DC();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = *a1;
  v32 = *a1;
  v13 = sub_22C5CBA9C(&v32);
  if (v2)
  {
  }

  v17 = v14;
  v18 = v15;
  v30 = v13;
  v19 = v17;
  v31 = v18;
  sub_22C903FBC();

  v20 = sub_22C9063CC();
  v21 = sub_22C90AACC();
  if (os_log_type_enabled(v20, v21))
  {
    sub_22C36BED8();
    v27 = v19;
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    v29 = v5;
    v23 = v7;
    v24 = a2;
    v25 = *(v12 + 16);

    *(v22 + 4) = v25;
    a2 = v24;
    v7 = v23;
    v5 = v29;

    sub_22C5CD33C(&dword_22C366000, v20, v21, "Plan overrides tries created based on override count: %ld", v27);
    v19 = v28;
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v26 = v30;
  }

  else
  {

    v26 = v30;
    swift_bridgeObjectRelease_n();
  }

  result = (*(v7 + 8))(v11, v5);
  *a2 = v26;
  a2[1] = v19;
  a2[2] = v31;
  return result;
}

uint64_t sub_22C5CB970(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C5CB9B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_22C5CBA00(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_22C9003AC();
  v4 = [v2 initWithURL_];

  v5 = sub_22C90046C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

char *sub_22C5CBA9C(uint64_t *a1)
{
  v88 = sub_22C90A17C();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v87 = v6 - v5;
  v106 = sub_22C9063DC();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  v12 = v10 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v98 = &v84 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v85 = &v84 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v84 - v18;
  v20 = *a1;
  v84 = [objc_allocWithZone(MarisaTrieStore) init];
  v89 = [objc_allocWithZone(MarisaTrieStore) init];
  v97 = [objc_allocWithZone(MarisaTrieStore) init];
  v112[28] = MEMORY[0x277D84FA0];
  sub_22C8FFF5C();
  swift_allocObject();
  result = sub_22C8FFF4C();
  v100 = result;
  v94 = *(v20 + 16);
  if (!v94)
  {
    goto LABEL_38;
  }

  v23 = 0;
  v93 = v20 + 32;
  v105 = (v8 + 8);
  v86 = (v3 + 8);
  *&v22 = 136315138;
  v102 = v22;
  v104 = v19;
  v101 = v12;
  v92 = v20;
  while (2)
  {
    if (v23 >= *(v20 + 16))
    {
LABEL_40:
      __break(1u);
      return result;
    }

    v24 = *(v93 + 8 * v23);
    v96 = v23 + 1;
    v108 = *(v24 + 16);

    v25 = 0;
    v26 = 32;
    v107 = v24;
    while (v108 != v25)
    {
      if (v25 >= *(v24 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      memcpy(v111, (v24 + v26), sizeof(v111));
      v109 = v26;
      memmove(v112, (v24 + v26), 0xD0uLL);
      v27 = sub_22C90A1DC();
      v29 = v28;
      sub_22C472384(v111, v110);

      sub_22C6A4514(v110, v27, v29, v30, v31, v32, v33, v34, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, *(&v102 + 1), v103, v104);
      v36 = v35;

      if (v36)
      {
        v110[0] = v112[13];
        v110[1] = v112[14];
        v110[2] = v112[15];

        v37 = sub_22C5CC41C(v110);

        if (v37)
        {
          memcpy(v110, v112, sizeof(v110));
          sub_22C5A1AC0();
          v38 = v103;
          v39 = sub_22C8FFF3C();
          if (v38)
          {
            v103 = 0;

            v41 = v98;
            sub_22C903FBC();
            sub_22C472384(v112, v110);
            v42 = sub_22C9063CC();
            v43 = sub_22C90AADC();
            sub_22C4723E0(v112);
            if (os_log_type_enabled(v42, v43))
            {
              sub_22C36BED8();
              v44 = swift_slowAlloc();
              sub_22C370220();
              v45 = swift_slowAlloc();
              sub_22C36BFA0(v45);
              sub_22C4723E0(v112);
              v46 = sub_22C3887D4();

              *(v44 + 4) = v46;
              sub_22C5CD33C(&dword_22C366000, v42, v43, "Unable to convert statement to Data, ignoring statement: (%s)", v84);
              sub_22C36FF94(v45);
              sub_22C369B50();
              MEMORY[0x2318B9880]();
              sub_22C369B50();
              MEMORY[0x2318B9880]();
            }

            else
            {
              sub_22C4723E0(v112);
            }

            sub_22C5CD330();
            v60 = v41;
            goto LABEL_25;
          }

          v61 = v39;
          v103 = 0;
          v99 = v40;
          if (v25 || (v65 = v112[3]) == 0)
          {
            sub_22C4723E0(v112);
          }

          else
          {
            v95 = v112[2];
            v66 = v112[4];

            sub_22C4723E0(v112);
            if (v66)
            {
              sub_22C472340(v95, v65);
              v67 = sub_22C90A0EC();
              [v89 addRow_];
            }

            else
            {
              v68 = v95;
              v90 = sub_22C90A1BC();
              v91 = v69;
              sub_22C472340(v68, v65);
              v70 = v87;
              sub_22C90A15C();
              v71 = sub_22C90A12C();
              v73 = v72;
              (*v86)(v70, v88);
              if (v73 >> 60 == 15)
              {

                v74 = v85;
                sub_22C903FBC();

                v75 = sub_22C9063CC();
                v76 = sub_22C90AADC();

                if (os_log_type_enabled(v75, v76))
                {
                  sub_22C36BED8();
                  v77 = swift_slowAlloc();
                  sub_22C370220();
                  v78 = swift_slowAlloc();
                  v110[0] = v78;
                  *v77 = v102;
                  *(v77 + 4) = sub_22C36F9F4(v27, v29, v110);
                  _os_log_impl(&dword_22C366000, v75, v76, "Unable to encode override statement id: %s", v77, 0xCu);
                  sub_22C36FF94(v78);
                  sub_22C369B50();
                  MEMORY[0x2318B9880]();
                  sub_22C369B50();
                  MEMORY[0x2318B9880]();

                  sub_22C5CD330();
                  v80 = v85;
                }

                else
                {

                  sub_22C5CD330();
                  v80 = v74;
                }

                v79(v80, v106);
              }

              else
              {
                v81 = sub_22C90A0EC();

                v82 = sub_22C90050C();
                [v84 addKey:v81 payload:v82];

                sub_22C3C8114(v71, v73);
              }
            }
          }

          v62 = sub_22C90A0EC();

          v63 = v99;
          v64 = sub_22C90050C();
          [v97 addKey:v62 payload:v64];

          result = sub_22C38B120(v61, v63);
        }

        else
        {

          v52 = v101;
          sub_22C903FBC();
          sub_22C472384(v112, v110);
          v53 = sub_22C9063CC();
          v54 = sub_22C90AADC();
          sub_22C4723E0(v112);
          if (os_log_type_enabled(v53, v54))
          {
            sub_22C36BED8();
            v55 = swift_slowAlloc();
            sub_22C370220();
            v56 = swift_slowAlloc();
            sub_22C36BFA0(v56);
            sub_22C4723E0(v112);
            v57 = sub_22C3887D4();

            *(v55 + 4) = v57;
            sub_22C5CD33C(&dword_22C366000, v53, v54, "Override has invalid plan value, ignoring statement: %s", v84);
            sub_22C36FF94(v56);
            v52 = v101;
            sub_22C369B50();
            MEMORY[0x2318B9880]();
            sub_22C369B50();
            MEMORY[0x2318B9880]();
          }

          else
          {
            sub_22C4723E0(v112);
          }

          sub_22C5CD330();
          v60 = v52;
LABEL_25:
          result = v59(v60, v106);
        }

        v19 = v104;
        v24 = v107;
        v58 = v109;
        goto LABEL_27;
      }

      sub_22C903FBC();
      sub_22C472384(v112, v110);
      v47 = sub_22C9063CC();
      v48 = sub_22C90AADC();
      sub_22C4723E0(v112);
      if (os_log_type_enabled(v47, v48))
      {
        sub_22C36BED8();
        v49 = swift_slowAlloc();
        sub_22C370220();
        v50 = swift_slowAlloc();
        sub_22C36BFA0(v50);
        sub_22C4723E0(v112);
        v51 = sub_22C3887D4();

        *(v49 + 4) = v51;
        sub_22C5CD33C(&dword_22C366000, v47, v48, "Unable to insert duplicated override statement id: %s", v84);
        sub_22C36FF94(v50);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        v19 = v104;
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      else
      {
        sub_22C4723E0(v112);
      }

      result = (*v105)(v19, v106);
      v58 = v109;
      v24 = v107;
LABEL_27:
      v26 = v58 + 208;
      ++v25;
    }

    v23 = v96;
    v20 = v92;
    if (v96 != v94)
    {
      continue;
    }

    break;
  }

LABEL_38:

  v83 = v84;
  [v84 buildKeyset];
  [v89 buildKeyset];
  [v97 buildKeyset];

  return v83;
}

uint64_t sub_22C5CC41C(uint64_t a1)
{
  v2 = sub_22C901FAC();
  sub_22C369824();
  v73 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v5);
  v7 = &v66[-v6];
  v8 = sub_22C9070DC();
  sub_22C369824();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22C369ABC();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v66[-v16];
  sub_22C9063DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v18);
  sub_22C369ABC();
  v21 = v19 - v20;
  v23 = MEMORY[0x28223BE20](v22);
  result = MEMORY[0x28223BE20](v23);
  v28 = &v66[-v27];
  if (*(a1 + 8))
  {
    v29 = v26;
    v30 = result;
    sub_22C903FBC();
    v31 = sub_22C9063CC();
    v32 = sub_22C90AADC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22C366000, v31, v32, "Plan Text is deprecated. No longer supported!", v33, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v29 + 8))(v28, v30);
  }

  else
  {
    v70 = v14;
    v71 = v25;
    v76 = v2;
    v77 = v7;
    v34 = v8;
    v35 = *(a1 + 16);
    if (v35)
    {
      v68 = v26;
      v69 = result;
      v36 = 0;
      v78[1] = MEMORY[0x277D84FA0];
      v37 = *(v35 + 16);
      v74 = (v10 + 16);
      v75 = v37;
      v72 = (v10 + 8);
      ++v73;
      v38 = v34;
      for (i = v17; ; result = (*v72)(i, v38))
      {
        v40 = v77;
        if (v75 == v36)
        {

          return 1;
        }

        if (v36 >= *(v35 + 16))
        {
          __break(1u);
          return result;
        }

        v41 = *(v10 + 16);
        v41(i, v35 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v36, v38);
        sub_22C9068FC();
        sub_22C6A54FC();
        v42 = v40;
        v44 = v43;
        v45 = *v73;
        (*v73)(v42, v76);
        if ((v44 & 1) == 0)
        {
          break;
        }

        ++v36;
      }

      v51 = v71;
      sub_22C903FBC();
      v52 = v70;
      v41(v70, i, v38);
      v53 = sub_22C9063CC();
      v54 = sub_22C90AADC();
      if (os_log_type_enabled(v53, v54))
      {
        sub_22C36BED8();
        v55 = swift_slowAlloc();
        v74 = v55;
        sub_22C370220();
        v75 = swift_slowAlloc();
        v78[0] = v75;
        *v55 = 136315138;
        v56 = v77;
        sub_22C9068FC();
        sub_22C5117E8();
        v67 = v54;
        v57 = v52;
        v58 = v76;
        v59 = sub_22C90B47C();
        v61 = v60;
        v45(v56, v58);
        v62 = *v72;
        (*v72)(v57, v38);
        v63 = sub_22C36F9F4(v59, v61, v78);

        v64 = v74;
        *(v74 + 1) = v63;
        _os_log_impl(&dword_22C366000, v53, v67, "Duplicate program statement index found in plan: %s", v64, 0xCu);
        sub_22C36FF94(v75);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();

        (*(v68 + 8))(v51, v69);
        v62(i, v38);
      }

      else
      {

        v65 = *v72;
        (*v72)(v52, v38);
        (*(v68 + 8))(v51, v69);
        v65(i, v38);
      }
    }

    else
    {
      v46 = v26;
      v47 = result;
      sub_22C903FBC();
      v48 = sub_22C9063CC();
      v49 = sub_22C90AADC();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_22C366000, v48, v49, "Could not find programStatements in planValue", v50, 2u);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      (*(v46 + 8))(v21, v47);
    }
  }

  return 0;
}

uint64_t sub_22C5CCA3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_22C9063DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C8FFECC();
  swift_allocObject();
  sub_22C8FFEBC();
  sub_22C5AA660();
  sub_22C8FFEAC();

  memcpy(v7, v9, sizeof(v7));
  nullsub_1();
  memcpy(v8, a4, 0xD0uLL);
  memcpy(a4, v7, 0xD0uLL);
  return sub_22C3770B0(v8, &qword_27D9BEC80, &unk_22C920630);
}

void *sub_22C5CCD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7)
{
  v9 = sub_22C90A17C();
  MEMORY[0x28223BE20](v9 - 8);
  sub_22C90A15C();
  result = sub_22C90A13C();
  if (v11)
  {
    v12 = result;
    v13 = v11;
    sub_22C5CA130(v23);
    memcpy(v22, v23, sizeof(v22));
    sub_22C90A1DC();
    v14 = sub_22C90A0EC();

    v15 = swift_allocObject();
    v15[2] = v22;
    v15[3] = v12;
    v15[4] = v13;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_22C5CA3AC;
    *(v16 + 24) = v15;
    v21[4] = sub_22C5CD32C;
    v21[5] = v16;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 1107296256;
    v21[2] = sub_22C5C8528;
    v21[3] = &unk_283FBD8F8;
    v17 = _Block_copy(v21);

    [a6 lookupKey:v14 resultBlock:v17];

    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      memcpy(v24, v22, sizeof(v24));
      result = sub_22C4DDD30(v24);
      if (result != 1)
      {
        sub_22C3D0FB0();
        v19 = *(*a7 + 16);
        sub_22C3D1174(v19);
        v20 = *a7;
        *(v20 + 16) = v19 + 1;
        return memcpy((v20 + 208 * v19 + 32), v24, 0xD0uLL);
      }
    }
  }

  return result;
}

uint64_t sub_22C5CCFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7)
{
  sub_22C5CA130(__src);
  memcpy(v18, __src, sizeof(v18));
  sub_22C90A1DC();
  v11 = sub_22C90A0EC();

  v12 = swift_allocObject();
  v12[2] = v18;
  v12[3] = a1;
  v12[4] = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_22C5CA138;
  *(v13 + 24) = v12;
  aBlock[4] = sub_22C5CD32C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22C5C8528;
  aBlock[3] = &unk_283FBD880;
  v14 = _Block_copy(aBlock);

  [a6 lookupKey:v11 resultBlock:v14];

  _Block_release(v14);
  LOBYTE(a6) = swift_isEscapingClosureAtFileLocation();

  if (a6)
  {
    __break(1u);
  }

  else
  {
    memcpy(aBlock, v18, sizeof(aBlock));
    result = sub_22C4DDD30(aBlock);
    if (result != 1)
    {
      swift_beginAccess();
      sub_22C3D0FB0();
      v16 = *(*a7 + 16);
      sub_22C3D1174(v16);
      v17 = *a7;
      *(v17 + 16) = v16 + 1;
      memcpy((v17 + 208 * v16 + 32), aBlock, 0xD0uLL);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_22C5CD1D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_22C90A11C();
  v2(v3);
}

uint64_t sub_22C5CD23C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22C5CD254()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_22C5CD2D0()
{
  result = qword_28142F9B0;
  if (!qword_28142F9B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28142F9B0);
  }

  return result;
}

void sub_22C5CD33C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t PlannerHTTPClient.Options.init(n:topP:temperature:lengthPenalty:frequencyPenalty:randomSeed:maxTokens:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a6;
  *(a4 + 24) = a7;
  *(a4 + 32) = a8;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t PlannerHTTPClient.__allocating_init(with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PlannerHTTPClient.init(with:)(a1);
  return v2;
}

uint64_t PlannerHTTPClient.CompletionRequest.init(model:prompt:options:user:disableLogging:baseURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = *a5;
  v17 = a5[5];
  v18 = a5[6];
  v19 = *(type metadata accessor for PlannerHTTPClient.CompletionRequest(0) + 36);
  v20 = sub_22C90046C();
  v22 = *(a5 + 3);
  v23 = *(a5 + 1);
  sub_22C36C640(a9 + v19, 1, 1, v20);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v16;
  *(a9 + 56) = v22;
  *(a9 + 40) = v23;
  *(a9 + 72) = v17;
  *(a9 + 80) = v18;
  *(a9 + 88) = a6;
  *(a9 + 96) = a7;
  *(a9 + 104) = a8;

  return sub_22C3F94FC(a10, a9 + v19);
}

uint64_t PlannerHTTPClient.submit<A>(request:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 88) = a6;
  *(v7 + 96) = v6;
  *(v7 + 496) = a4;
  *(v7 + 72) = a3;
  *(v7 + 80) = a5;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  v8 = sub_22C90A17C();
  sub_22C369914(v8);
  *(v7 + 104) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v7 + 112) = AssociatedTypeWitness;
  sub_22C3699B8(AssociatedTypeWitness);
  *(v7 + 120) = v10;
  *(v7 + 128) = sub_22C36D0D4();
  *(v7 + 136) = swift_task_alloc();
  v11 = sub_22C90637C();
  *(v7 + 144) = v11;
  sub_22C3699B8(v11);
  *(v7 + 152) = v12;
  *(v7 + 160) = swift_task_alloc();
  v13 = sub_22C90634C();
  *(v7 + 168) = v13;
  sub_22C3699B8(v13);
  *(v7 + 176) = v14;
  *(v7 + 184) = sub_22C36D0D4();
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  v15 = sub_22C90636C();
  *(v7 + 208) = v15;
  sub_22C3699B8(v15);
  *(v7 + 216) = v16;
  *(v7 + 224) = sub_22C36D0D4();
  *(v7 + 232) = swift_task_alloc();
  *(v7 + 240) = swift_task_alloc();
  v17 = sub_22C90046C();
  *(v7 + 248) = v17;
  sub_22C3699B8(v17);
  *(v7 + 256) = v18;
  *(v7 + 264) = swift_task_alloc();
  v19 = sub_22C9063DC();
  *(v7 + 272) = v19;
  sub_22C3699B8(v19);
  *(v7 + 280) = v20;
  *(v7 + 288) = sub_22C36D0D4();
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = swift_task_alloc();
  *(v7 + 312) = swift_task_alloc();
  *(v7 + 320) = swift_task_alloc();
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  *(v7 + 344) = swift_task_alloc();
  v21 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v21);
  *(v7 + 352) = sub_22C36D0D4();
  *(v7 + 360) = swift_task_alloc();
  v22 = sub_22C8FFE7C();
  *(v7 + 368) = v22;
  sub_22C3699B8(v22);
  *(v7 + 376) = v23;
  *(v7 + 384) = sub_22C36D0D4();
  *(v7 + 392) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C5CD848, 0, 0);
}

uint64_t sub_22C5CD848()
{
  v66 = v0;
  v60 = *(v0 + 392);
  v1 = *(v0 + 360);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 496);
  v6 = *(v0 + 64);
  (*(v2 + 64))(v3, v2);
  v8 = v7;
  (*(v2 + 72))(v3, v2);
  sub_22C5CF458(v8, v6, v4, v5 & 1, v1, v3, *(v2 + 16), v60);
  v10 = *(v0 + 384);
  v9 = *(v0 + 392);
  v11 = *(v0 + 368);
  v12 = *(v0 + 376);
  sub_22C36DD28(*(v0 + 360), &qword_27D9BB138, &qword_22C90DB70);

  sub_22C90403C();
  (*(v12 + 16))(v10, v9, v11);
  v13 = sub_22C9063CC();
  v14 = sub_22C90AABC();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 384);
  if (v15)
  {
    v17 = *(v0 + 352);
    v18 = *(v0 + 248);
    v19 = sub_22C36FB44();
    v62 = sub_22C370060();
    v65 = v62;
    *v19 = 136315138;
    sub_22C8FFE4C();
    result = sub_22C370B74(v17, 1, v18);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v21 = *(v0 + 376);
    v56 = *(v0 + 368);
    v57 = *(v0 + 384);
    v58 = *(v0 + 280);
    v59 = *(v0 + 272);
    v61 = *(v0 + 344);
    v23 = *(v0 + 256);
    v22 = *(v0 + 264);
    v24 = *(v0 + 248);
    (*(v23 + 32))(v22, *(v0 + 352), v24);
    sub_22C36ACBC();
    sub_22C5D2E68(v25, v26, MEMORY[0x277CC9290]);
    v27 = sub_22C90B47C();
    v29 = v28;
    (*(v23 + 8))(v22, v24);
    v30 = *(v21 + 8);
    v30(v57, v56);
    v31 = sub_22C36F9F4(v27, v29, &v65);

    *(v19 + 4) = v31;
    _os_log_impl(&dword_22C366000, v13, v14, "Request URL is : %s", v19, 0xCu);
    sub_22C36FF94(v62);
    sub_22C3699EC();
    sub_22C36D69C();

    v32 = *(v58 + 8);
    v32(v61, v59);
  }

  else
  {
    v33 = *(v0 + 368);
    v34 = *(v0 + 376);
    v35 = *(v0 + 280);

    v30 = *(v34 + 8);
    v30(v16, v33);
    v32 = *(v35 + 8);
    v36 = sub_22C36ECB4();
    (v32)(v36);
  }

  *(v0 + 400) = v32;
  *(v0 + 408) = v30;
  v37 = *(v0 + 232);
  v38 = *(v0 + 208);
  v39 = *(v0 + 216);
  sub_22C90369C();
  sub_22C90369C();
  sub_22C90635C();
  sub_22C90631C();
  v40 = *(v39 + 8);
  *(v0 + 416) = v40;
  *(v0 + 424) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v40(v37, v38);
  v41 = sub_22C90635C();
  v42 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v43 = sub_22C36D240();
    *v43 = 0;
    v44 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v41, v42, v44, "PlannerHTTPAPISession.data", "", v43, 2u);
    sub_22C36D69C();
  }

  v63 = *(v0 + 240);
  v46 = *(v0 + 200);
  v45 = *(v0 + 208);
  v47 = *(v0 + 192);
  v48 = *(v0 + 168);
  v49 = *(v0 + 176);
  v50 = *(v0 + 96);

  (*(v49 + 16))(v47, v46, v48);
  sub_22C9063AC();
  swift_allocObject();
  *(v0 + 432) = sub_22C90639C();
  v51 = *(v49 + 8);
  *(v0 + 440) = v51;
  *(v0 + 448) = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v51(v46, v48);
  v40(v63, v45);
  v52 = *(v50 + 24);
  ObjectType = swift_getObjectType();
  v64 = (*(v52 + 8) + **(v52 + 8));
  v54 = swift_task_alloc();
  *(v0 + 456) = v54;
  *v54 = v0;
  v54[1] = sub_22C5CDED4;
  v55 = *(v0 + 392);

  return v64(v55, ObjectType, v52);
}

uint64_t sub_22C5CDED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v9;
  v10[58] = a1;
  v10[59] = a2;
  v10[60] = a3;
  v10[61] = v8;

  if (v8)
  {
    v11 = sub_22C5CF090;
  }

  else
  {
    v11 = sub_22C5CDFEC;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_22C5CDFEC(uint64_t a1)
{
  v198 = v1;
  sub_22C90369C();
  v2 = sub_22C90635C();
  sub_22C90638C();
  v3 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    v4 = sub_22C36ECB4();
    if (v5(v4) == *MEMORY[0x277D85B00])
    {
      v6 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v1 + 152) + 8))(*(v1 + 160), *(v1 + 144));
      v6 = "";
    }

    v7 = sub_22C36D240();
    *v7 = 0;
    v8 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v2, v3, v8, "PlannerHTTPAPISession.data", v6, v7, 2u);
    sub_22C3699EC();
  }

  v9 = *(v1 + 440);
  v10 = v2;
  v11 = *(v1 + 416);
  v12 = *(v1 + 224);
  v13 = *(v1 + 208);
  v14 = *(v1 + 184);
  v15 = *(v1 + 168);

  v9(v14, v15);
  v11(v12, v13);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = *(v1 + 480);
    sub_22C90403C();
    v19 = v18;
    v20 = sub_22C9063CC();
    v21 = sub_22C90AACC();
    if (sub_22C37026C(v21))
    {
      v22 = *(v1 + 480);
      v23 = sub_22C36FB44();
      *v23 = 134217984;
      *(v23 + 4) = sub_22C386118();

      sub_22C372114();
      _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
      sub_22C36D69C();
    }

    else
    {

      v20 = *(v1 + 480);
    }

    v29 = *(v1 + 400);
    v30 = *(v1 + 336);
    v31 = *(v1 + 272);

    v29(v30, v31);
    v32 = sub_22C386118();
    switch(v32)
    {
      case 302:
        goto LABEL_13;
      case 429:
        sub_22C90403C();
        v55 = sub_22C9063CC();
        v56 = sub_22C90AADC();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = sub_22C36D240();
          *v57 = 0;
          _os_log_impl(&dword_22C366000, v55, v56, "Rate limited!", v57, 2u);
          sub_22C3699EC();
        }

        v58 = *(v1 + 472);
        v59 = *(v1 + 480);
        v60 = *(v1 + 464);
        v61 = *(v1 + 400);
        v185 = *(v1 + 392);
        log = *(v1 + 408);
        v181 = *(v1 + 368);
        v62 = *(v1 + 320);
        v63 = *(v1 + 272);

        v61(v62, v63);
        v64 = sub_22C3F9618();
        sub_22C36FBE4(&type metadata for PlannerHTTPClientError, v64);
        *v65 = xmmword_22C911490;
        swift_willThrow();
        sub_22C38B120(v60, v58);

        goto LABEL_20;
      case 401:
LABEL_13:
        sub_22C90403C();
        v33 = sub_22C9063CC();
        v34 = sub_22C90AACC();
        if (sub_22C37026C(v34))
        {
          *sub_22C36D240() = 0;
          sub_22C372114();
          _os_log_impl(v35, v36, v37, v38, v39, 2u);
          sub_22C36D69C();
        }

        v41 = *(v1 + 472);
        v40 = *(v1 + 480);
        v42 = *(v1 + 464);
        v43 = *(v1 + 400);
        v185 = *(v1 + 392);
        log = *(v1 + 408);
        v181 = *(v1 + 368);
        v44 = *(v1 + 328);
        v45 = *(v1 + 272);

        v43(v44, v45);
        sub_22C3767A4();
        sub_22C90AF5C();

        sub_22C3819C0();
        v194 = 0xD000000000000017;
        v195 = v46;
        *(v1 + 48) = [v17 statusCode];
        v47 = sub_22C90B47C();
        MEMORY[0x2318B7850](v47);

        v48 = sub_22C3F9618();
        v49 = sub_22C36FBE4(&type metadata for PlannerHTTPClientError, v48);
        sub_22C37998C(v49, v50, v51, v52);
        v53 = v42;
        v54 = v41;
LABEL_16:
        sub_22C38B120(v53, v54);

LABEL_20:
        v67 = v181;
        v66 = v185;
LABEL_36:
        (log)(v66, v67);
        goto LABEL_37;
    }

    if (v32 >= 300)
    {
      sub_22C5CF7D8(&v194);
      v120 = v196;
      v121 = *(v1 + 480);
      if (v196)
      {
        logc = v195;
        sub_22C90403C();
        v122 = v121;

        v123 = sub_22C9063CC();
        v124 = sub_22C90AADC();

        v125 = os_log_type_enabled(v123, v124);
        v126 = *(v1 + 480);
        v127 = *(v1 + 400);
        v183 = *(v1 + 312);
        v128 = *(v1 + 272);
        if (v125)
        {
          v129 = swift_slowAlloc();
          v179 = v127;
          v130 = sub_22C370060();
          v197[0] = v130;
          *v129 = 134218242;
          *(v129 + 4) = [v17 0x1FAA064F8];

          *(v129 + 12) = 2080;
          sub_22C3767A4();
          sub_22C90AF5C();

          sub_22C38A9B4();
          *(v1 + 40) = v131;
          v132 = sub_22C90B47C();
          MEMORY[0x2318B7850](v132);

          v133 = sub_22C3872B8();
          MEMORY[0x2318B7850](v133, 0xE90000000000003ALL);
          MEMORY[0x2318B7850](logc, v120);
          v134 = sub_22C36F9F4(v194, v195, v197);

          *(v129 + 14) = v134;
          _os_log_impl(&dword_22C366000, v123, v124, "Unhandled HTTP status: %ld error response: %s", v129, 0x16u);
          sub_22C36FF94(v130);
          v135 = &off_278729000;
          sub_22C3699EC();
          sub_22C3699EC();

          v179(v183, v128);
        }

        else
        {

          v127(v183, v128);
          v135 = 0x1FAA06000;
        }

        v146 = *(v1 + 480);
        v147 = *(v1 + 464);
        v174 = *(v1 + 472);
        v180 = *(v1 + 392);
        v184 = *(v1 + 408);
        v178 = *(v1 + 368);
        v194 = 0;
        v195 = 0xE000000000000000;
        sub_22C90AF5C();

        sub_22C3819C0();
        v197[0] = 0xD000000000000017;
        v197[1] = v148;
        *(v1 + 24) = [v17 v135[396]];
        v149 = sub_22C90B47C();
        MEMORY[0x2318B7850](v149);

        MEMORY[0x2318B7850](0xD000000000000011, 0x800000022C9303B0);
        v194 = 0;
        v195 = 0xE000000000000000;
        sub_22C90AF5C();

        sub_22C38A9B4();
        *(v1 + 32) = v150;
        v151 = sub_22C90B47C();
        MEMORY[0x2318B7850](v151);

        v152 = sub_22C3872B8();
        MEMORY[0x2318B7850](v152, 0xE90000000000003ALL);
        MEMORY[0x2318B7850](logc, v120);

        MEMORY[0x2318B7850](v194, v195);

        v153 = sub_22C3F9618();
        v154 = sub_22C36FBE4(&type metadata for PlannerHTTPClientError, v153);
        sub_22C37998C(v154, v155, v156, v157);
        sub_22C38B120(v147, v174);

        v184(v180, v178);
        goto LABEL_37;
      }

      sub_22C90403C();
      v136 = v121;
      v137 = sub_22C9063CC();
      v138 = sub_22C90AADC();
      if (sub_22C37026C(v138))
      {
        v139 = *(v1 + 480);
        v140 = sub_22C36FB44();
        *v140 = 134217984;
        *(v140 + 4) = sub_22C386118();

        sub_22C372114();
        _os_log_impl(v141, v142, v143, v144, v145, 0xCu);
        sub_22C36D69C();
        v40 = *(v1 + 480);
      }

      else
      {

        v40 = *(v1 + 480);
        v137 = v40;
      }

      v158 = *(v1 + 464);
      v177 = *(v1 + 472);
      v159 = *(v1 + 400);
      v185 = *(v1 + 392);
      log = *(v1 + 408);
      v181 = *(v1 + 368);
      v160 = *(v1 + 304);
      v161 = *(v1 + 272);

      v159(v160, v161);
      sub_22C3767A4();
      sub_22C90AF5C();

      sub_22C3819C0();
      v194 = 0xD000000000000022;
      v195 = v162;
      *(v1 + 16) = sub_22C386118();
      v163 = sub_22C90B47C();
      MEMORY[0x2318B7850](v163);

      v164 = sub_22C3F9618();
      v165 = sub_22C36FBE4(&type metadata for PlannerHTTPClientError, v164);
      sub_22C37998C(v165, v166, v167, v168);
      v53 = v158;
      v54 = v177;
      goto LABEL_16;
    }
  }

  v68 = *(v1 + 488);
  swift_getAssociatedConformanceWitness();
  sub_22C8FFEAC();
  if (v68)
  {
    v69 = v68;
    sub_22C90A15C();
    v70 = sub_22C90A13C();
    v72 = v71;
    sub_22C3819C0();
    if (v73)
    {
      v75 = v73;
    }

    else
    {
      v75 = v74;
    }

    sub_22C90403C();

    v76 = v68;
    v77 = sub_22C9063CC();
    v78 = sub_22C90AADC();

    v79 = os_log_type_enabled(v77, v78);
    v80 = *(v1 + 400);
    v81 = *(v1 + 288);
    v192 = *(v1 + 272);
    if (v79)
    {
      loga = *(v1 + 400);
      if (v72)
      {
        v82 = v70;
      }

      else
      {
        v82 = 0xD000000000000016;
      }

      v83 = swift_slowAlloc();
      v186 = v81;
      v84 = swift_slowAlloc();
      v85 = sub_22C370060();
      v194 = v85;
      *v83 = 136315394;
      v86 = sub_22C36F9F4(v82, v75, &v194);

      *(v83 + 4) = v86;
      *(v83 + 12) = 2112;
      v87 = v69;
      v88 = _swift_stdlib_bridgeErrorToNSError();
      *(v83 + 14) = v88;
      *v84 = v88;
      _os_log_impl(&dword_22C366000, v77, v78, "Error decoding Ajax server response: %s. %@", v83, 0x16u);
      sub_22C36DD28(v84, &qword_27D9BB158, qword_22C910FD0);
      sub_22C3699EC();
      sub_22C36FF94(v85);
      sub_22C3699EC();
      sub_22C3699EC();

      (loga)(v186, v192);
    }

    else
    {

      v80(v81, v192);
    }

    v110 = *(v1 + 472);
    v111 = *(v1 + 480);
    v112 = *(v1 + 464);
    log = *(v1 + 408);
    v113 = *(v1 + 392);
    v114 = *(v1 + 368);
    v115 = sub_22C3F9618();
    sub_22C36FBE4(&type metadata for PlannerHTTPClientError, v115);
    *v116 = xmmword_22C9114A0;
    swift_willThrow();
    sub_22C38B120(v112, v110);

    v66 = v113;
    v67 = v114;
    goto LABEL_36;
  }

  v89 = *(v1 + 136);
  v90 = *(v1 + 112);
  v91 = *(v1 + 120);
  v92 = *(v1 + 56);
  sub_22C90403C();
  v93 = *(v91 + 16);
  v93(v89, v92, v90);
  v94 = sub_22C9063CC();
  v173 = sub_22C90AACC();
  logb = v94;
  v95 = os_log_type_enabled(v94, v173);
  v193 = *(v1 + 480);
  v175 = *(v1 + 464);
  v176 = *(v1 + 472);
  v97 = *(v1 + 400);
  v96 = *(v1 + 408);
  v98 = *(v1 + 368);
  v182 = *(v1 + 272);
  v187 = *(v1 + 296);
  v99 = *(v1 + 136);
  if (v95)
  {
    v172 = *(v1 + 408);
    v171 = *(v1 + 400);
    v101 = *(v1 + 120);
    v100 = *(v1 + 128);
    v102 = *(v1 + 112);
    v170 = *(v1 + 392);
    v103 = sub_22C36FB44();
    v169 = v98;
    v104 = sub_22C370060();
    v194 = v104;
    *v103 = 136315138;
    v93(v100, v99, v102);
    v105 = *(v101 + 8);
    v105(v99, v102);
    swift_getAssociatedConformanceWitness();
    v106 = sub_22C90B47C();
    v108 = v107;
    v105(v100, v102);
    v109 = sub_22C36F9F4(v106, v108, &v194);

    *(v103 + 4) = v109;
    _os_log_impl(&dword_22C366000, logb, v173, "Received response from Ajax server: %s", v103, 0xCu);
    sub_22C36FF94(v104);
    sub_22C3699EC();
    sub_22C3699EC();
    sub_22C38B120(v175, v176);

    v171(v187, v182);
    v172(v170, v169);
  }

  else
  {
    (*(*(v1 + 120) + 8))(*(v1 + 136), *(v1 + 112));
    sub_22C38B120(v175, v176);

    v97(v187, v182);
    v119 = sub_22C36BAFC();
    v96(v119);
  }

LABEL_37:

  sub_22C369A24();

  return v117();
}

uint64_t sub_22C5CF090()
{
  v1 = v0[51];
  v2 = v0[49];
  v3 = v0[46];

  v1(v2, v3);
  sub_22C36BFC0();

  sub_22C369A24();

  return v4();
}

uint64_t PlannerHTTPClient.init(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22C8FFE8C();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = sub_22C8FFF1C();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v17 = v16 - v15;
  v18 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime17PlannerHTTPClient_encoder;
  sub_22C8FFF5C();
  swift_allocObject();
  v19 = sub_22C8FFF4C();
  (*(v13 + 104))(v17, *MEMORY[0x277CC8748], v11);
  sub_22C8FFF2C();
  *(v2 + v18) = v19;
  v20 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime17PlannerHTTPClient_decoder;
  sub_22C8FFECC();
  swift_allocObject();
  v21 = sub_22C8FFEBC();
  (*(v6 + 104))(v10, *MEMORY[0x277CC86A8], v4);
  sub_22C8FFE9C();
  *(v2 + v20) = v21;
  *(v2 + 16) = [objc_opt_self() sharedSession];
  *(v2 + 24) = &off_283FBD938;
  v22 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime17PlannerHTTPClient_url;
  sub_22C90046C();
  sub_22C36985C();
  (*(v23 + 32))(v2 + v22, a1);
  return v2;
}

uint64_t sub_22C5CF458@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v28 = a7;
  v29 = a8;
  v25 = a5;
  v24[1] = a4;
  v24[2] = a2;
  v26 = a3;
  v12 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v24 - v13;
  v15 = sub_22C90046C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v17);
  v19 = v24 - v18;
  sub_22C3F966C(a6, v14);
  v20 = sub_22C370B74(v14, 1, v15);
  v27 = v9;
  if (v20 == 1)
  {
    (*(v16 + 16))(v19, v9 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime17PlannerHTTPClient_url, v15);
    if (sub_22C370B74(v14, 1, v15) != 1)
    {
      sub_22C36DD28(v14, &qword_27D9BB138, &qword_22C90DB70);
    }
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
  }

  sub_22C9003BC();
  sub_22C8FFE3C();
  sub_22C8FFE5C();
  v32 = 0x3D6B63616361;
  v33 = 0xE600000000000000;
  swift_getKeyPath();
  sub_22C901F3C();

  MEMORY[0x2318B7850](v30, v31);

  sub_22C8FFE5C();

  if (v25)
  {
    sub_22C8FFE1C();
  }

  sub_22C8FFE2C();
  sub_22C8FFE0C();
  v21 = v34;
  sub_22C8FFF3C();
  if (v21)
  {
    v22 = sub_22C8FFE7C();
    (*(*(v22 - 8) + 8))(a9, v22);
  }

  else
  {
    sub_22C8FFE6C();
  }

  return (*(v16 + 8))(v19, v15);
}

double sub_22C5CF7D8@<D0>(uint64_t a3@<X8>)
{
  sub_22C9063DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C5D43B0();
  sub_22C8FFEAC();
  result = *&v6;
  *a3 = v6;
  *(a3 + 16) = v7;
  return result;
}

uint64_t PlannerHTTPClient.ErrorResponse.description.getter()
{
  sub_22C90AF5C();

  v0 = sub_22C90B47C();
  MEMORY[0x2318B7850](v0);

  v1 = sub_22C3872B8();
  MEMORY[0x2318B7850](v1, 0xE90000000000003ALL);
  v2 = sub_22C36BAFC();
  MEMORY[0x2318B7850](v2);
  return 0x3A65646F63;
}

uint64_t sub_22C5CFA18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C901DFC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C5CFAC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 110 && a2 == 0xE100000000000000;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1349545844 && a2 == 0xE400000000000000;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
      if (v7 || (sub_22C90B4FC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65506874676E656CLL && a2 == 0xED000079746C616ELL;
        if (v8 || (sub_22C90B4FC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x800000022C932B60 == a2;
          if (v9 || (sub_22C90B4FC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465;
            if (v10 || (sub_22C90B4FC() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6E656B6F5478616DLL && a2 == 0xE900000000000073)
            {

              return 6;
            }

            else
            {
              v12 = sub_22C90B4FC();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22C5CFD14(char a1)
{
  result = 110;
  switch(a1)
  {
    case 1:
      result = 1349545844;
      break;
    case 2:
      result = 0x74617265706D6574;
      break;
    case 3:
      result = 0x65506874676E656CLL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x65536D6F646E6172;
      break;
    case 6:
      result = 0x6E656B6F5478616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C5CFE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5CFAC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5CFE34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C5CFD0C();
  *a1 = result;
  return result;
}

uint64_t sub_22C5CFE5C(uint64_t a1)
{
  v2 = sub_22C5D2DC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5CFE98(uint64_t a1)
{
  v2 = sub_22C5D2DC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlannerHTTPClient.Options.encode(to:)(void *a1)
{
  sub_22C3A5908(&qword_27D9BECC8, &qword_22C920668);
  sub_22C369824();
  v5 = v4;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C3717BC();
  v7 = a1[3];
  v8 = a1;
  v10 = v9;
  sub_22C374168(v8, v7);
  sub_22C5D2DC0();
  sub_22C37239C();
  sub_22C90B6CC();
  sub_22C37A15C();
  sub_22C90B40C();
  if (!v1)
  {
    sub_22C374D28();
    sub_22C37A15C();
    sub_22C90B3EC();
    sub_22C375A0C();
    sub_22C37A15C();
    sub_22C90B3EC();
    sub_22C37A15C();
    sub_22C90B3EC();
    sub_22C37A15C();
    sub_22C90B3EC();
    sub_22C37A15C();
    sub_22C90B42C();
    sub_22C37A15C();
    sub_22C90B42C();
  }

  return (*(v5 + 8))(v2, v10);
}

uint64_t PlannerHTTPClient.Options.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  MEMORY[0x2318B8B10](*v0);
  if (v1 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v1;
  }

  MEMORY[0x2318B8B30](*&v7);
  if (v2 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v2;
  }

  MEMORY[0x2318B8B30](*&v8);
  if (v3 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v3;
  }

  MEMORY[0x2318B8B30](*&v9);
  if (v4 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v4;
  }

  MEMORY[0x2318B8B30](*&v10);
  MEMORY[0x2318B8B30](v5);
  return MEMORY[0x2318B8B30](v6);
}

uint64_t PlannerHTTPClient.Options.hashValue.getter()
{
  sub_22C90B62C();
  PlannerHTTPClient.Options.hash(into:)();
  return sub_22C90B66C();
}

uint64_t PlannerHTTPClient.Options.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22C3A5908(&qword_27D9BECD8, &qword_22C920670);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C36A040();
  sub_22C5D2DC0();
  sub_22C90B6BC();
  if (!v2)
  {
    sub_22C5D4408();
    v6 = sub_22C90B31C();
    sub_22C374D28();
    sub_22C5D4408();
    sub_22C90B2FC();
    v8 = v7;
    sub_22C375A0C();
    sub_22C5D4408();
    sub_22C90B2FC();
    v10 = v9;
    sub_22C5D4408();
    sub_22C90B2FC();
    v12 = v11;
    sub_22C5D4408();
    sub_22C90B2FC();
    v14 = v13;
    sub_22C5D4408();
    v16 = sub_22C90B33C();
    sub_22C5D4408();
    v17 = sub_22C90B33C();
    v18 = sub_22C38BBA0();
    v19(v18);
    *a2 = v6;
    a2[1] = v8;
    a2[2] = v10;
    a2[3] = v12;
    a2[4] = v14;
    a2[5] = v16;
    a2[6] = v17;
  }

  return sub_22C36FF94(a1);
}

uint64_t sub_22C5D0444(uint64_t a1)
{
  sub_22C90B62C();
  PlannerHTTPClient.Options.hash(into:)();
  return sub_22C90B66C();
}

uint64_t static PlannerHTTPClient.ErrorResponse.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a1[2];
  v6 = a2[1];
  v7 = a2[2];
  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  else
  {
    return sub_22C37FE58(v4, v5, v6, v7);
  }
}

uint64_t sub_22C5D04E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C5D05B0(char a1)
{
  if (a1)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 1701080931;
  }
}

uint64_t sub_22C5D05E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5D04E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5D0610(uint64_t a1)
{
  v2 = sub_22C5D2E14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5D064C(uint64_t a1)
{
  v2 = sub_22C5D2E14();

  return MEMORY[0x2821FE720](a1, v2);
}

void PlannerHTTPClient.ErrorResponse.encode(to:)()
{
  sub_22C370030();
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9BECE0, &qword_22C920678);
  sub_22C369824();
  v6 = v5;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C3717BC();
  sub_22C374168(v3, v3[3]);
  sub_22C5D2E14();
  sub_22C37239C();
  sub_22C90B6CC();
  sub_22C37A15C();
  sub_22C90B40C();
  if (!v0)
  {
    sub_22C37A15C();
    sub_22C90B3CC();
  }

  (*(v6 + 8))(v1, v4);
  sub_22C36FB20();
}

uint64_t PlannerHTTPClient.ErrorResponse.hash(into:)()
{
  MEMORY[0x2318B8B10](*v0);
  sub_22C36BAFC();

  return sub_22C909FFC();
}

uint64_t PlannerHTTPClient.ErrorResponse.hashValue.getter()
{
  v1 = *v0;
  sub_22C37B5C8();
  MEMORY[0x2318B8B10](v1);
  sub_22C909FFC();
  return sub_22C90B66C();
}

void PlannerHTTPClient.ErrorResponse.init(from:)()
{
  sub_22C370030();
  v2 = v1;
  v4 = v3;
  sub_22C3A5908(&qword_27D9BECF0, &qword_22C920680);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C383814();
  sub_22C36A040();
  v6 = sub_22C5D2E14();
  sub_22C5D444C(&type metadata for PlannerHTTPClient.ErrorResponse.CodingKeys, v7, v6);
  if (!v0)
  {
    sub_22C3827C0();
    v8 = sub_22C90B31C();
    sub_22C374D28();
    sub_22C3827C0();
    v9 = sub_22C90B2DC();
    v11 = v10;
    v12 = sub_22C370818();
    v13(v12);
    *v4 = v8;
    v4[1] = v9;
    v4[2] = v11;
  }

  sub_22C36FF94(v2);
  sub_22C36FB20();
}

uint64_t sub_22C5D09E0(uint64_t a1)
{
  sub_22C90B62C();
  PlannerHTTPClient.ErrorResponse.hash(into:)();
  return sub_22C90B66C();
}

uint64_t PlannerHTTPClient.CompletionRequest.baseURL.getter@<X0>(uint64_t a1@<X8>)
{
  sub_22C5D4470();

  return sub_22C3F966C(v1 + v3, a1);
}

uint64_t PlannerHTTPClient.CompletionRequest.baseURL.setter(uint64_t a1)
{
  sub_22C5D4470();

  return sub_22C3F94FC(a1, v1 + v3);
}

BOOL static PlannerHTTPClient.CompletionRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_22C90046C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v12);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C3717BC();
  v14 = sub_22C3A5908(&qword_27D9BECF8, &qword_22C920688);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v18 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v18 && (sub_22C90B4FC() & 1) == 0)
  {
    return 0;
  }

  v19 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v19 && (sub_22C90B4FC() & 1) == 0)
  {
    return 0;
  }

  v37 = *(a1 + 32);
  v20 = *(a1 + 56);
  v38 = *(a1 + 40);
  v39 = v20;
  v40 = *(a1 + 72);
  v33 = *(a2 + 32);
  v34 = *(a2 + 40);
  v35 = *(a2 + 56);
  v36 = *(a2 + 72);
  if (!static PlannerHTTPClient.Options.== infix(_:_:)(&v37, &v33))
  {
    return 0;
  }

  v21 = *(a1 + 96);
  v22 = *(a2 + 96);
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = *(a1 + 88) == *(a2 + 88) && v21 == v22;
    if (!v23 && (sub_22C90B4FC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (*(a1 + 104) != *(a2 + 104))
  {
    return 0;
  }

  v24 = *(type metadata accessor for PlannerHTTPClient.CompletionRequest(0) + 36);
  v25 = *(v14 + 48);
  sub_22C3F966C(a1 + v24, v17);
  sub_22C3F966C(a2 + v24, &v17[v25]);
  sub_22C36D3E0(v17);
  if (v18)
  {
    sub_22C36D3E0(&v17[v25]);
    if (v18)
    {
      sub_22C36DD28(v17, &qword_27D9BB138, &qword_22C90DB70);
      return 1;
    }

    goto LABEL_30;
  }

  sub_22C3F966C(v17, v2);
  sub_22C36D3E0(&v17[v25]);
  if (v26)
  {
    (*(v7 + 8))(v2, v5);
LABEL_30:
    sub_22C36DD28(v17, &qword_27D9BECF8, &qword_22C920688);
    return 0;
  }

  (*(v7 + 32))(v11, &v17[v25], v5);
  sub_22C36ACBC();
  sub_22C5D2E68(v28, v29, MEMORY[0x277CC9278]);
  v30 = sub_22C90A0BC();
  v31 = *(v7 + 8);
  v32 = sub_22C36BA00();
  v31(v32);
  (v31)(v2, v5);
  sub_22C36DD28(v17, &qword_27D9BB138, &qword_22C90DB70);
  return (v30 & 1) != 0;
}

uint64_t sub_22C5D0E4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
      if (v7 || (sub_22C90B4FC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1919251317 && a2 == 0xE400000000000000;
        if (v8 || (sub_22C90B4FC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4C656C6261736964 && a2 == 0xEE00676E6967676FLL;
          if (v9 || (sub_22C90B4FC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x4C525565736162 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_22C90B4FC();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22C5D103C(char a1)
{
  result = 0x6C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x74706D6F7270;
      break;
    case 2:
      result = 0x736E6F6974706FLL;
      break;
    case 3:
      result = 1919251317;
      break;
    case 4:
      result = 0x4C656C6261736964;
      break;
    case 5:
      result = 0x4C525565736162;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C5D10F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5D0E4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5D111C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C5D1034();
  *a1 = result;
  return result;
}

uint64_t sub_22C5D1144(uint64_t a1)
{
  v2 = sub_22C5D2EB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5D1180(uint64_t a1)
{
  v2 = sub_22C5D2EB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlannerHTTPClient.CompletionRequest.encode(to:)(void *a1)
{
  v4 = sub_22C3A5908(&qword_27D9BED08, &qword_22C920690);
  sub_22C369824();
  v6 = v5;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C3717BC();
  sub_22C374168(a1, a1[3]);
  sub_22C5D2EB0();
  sub_22C37239C();
  sub_22C90B6CC();
  sub_22C5D4438();
  sub_22C90B3CC();
  if (!v1)
  {
    sub_22C5D4438();
    sub_22C90B3CC();
    sub_22C5D2F04();
    sub_22C90B41C();
    sub_22C5D4438();
    sub_22C90B37C();
    sub_22C90B3DC();
    type metadata accessor for PlannerHTTPClient.CompletionRequest(0);
    sub_22C90046C();
    sub_22C36ACBC();
    sub_22C5D2E68(v8, v9, MEMORY[0x277CC9268]);
    sub_22C90B3AC();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t PlannerHTTPClient.CompletionRequest.hash(into:)(uint64_t a1)
{
  v3 = sub_22C90046C();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v10);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C383814();
  sub_22C909FFC();
  sub_22C909FFC();
  PlannerHTTPClient.Options.hash(into:)();
  if (*(v1 + 96))
  {
    sub_22C90B64C();
    sub_22C909FFC();
  }

  else
  {
    sub_22C90B64C();
  }

  sub_22C90B64C();
  sub_22C5D4470();
  sub_22C3F966C(v1 + v12, v2);
  if (sub_22C370B74(v2, 1, v3) == 1)
  {
    return sub_22C90B64C();
  }

  (*(v5 + 32))(v9, v2, v3);
  sub_22C90B64C();
  sub_22C36ACBC();
  sub_22C5D2E68(v14, v15, MEMORY[0x277CC9270]);
  sub_22C909F8C();
  return (*(v5 + 8))(v9, v3);
}

uint64_t PlannerHTTPClient.CompletionRequest.hashValue.getter()
{
  sub_22C37B5C8();
  PlannerHTTPClient.CompletionRequest.hash(into:)(v1);
  return sub_22C90B66C();
}

void PlannerHTTPClient.CompletionRequest.init(from:)()
{
  sub_22C370030();
  v2 = v1;
  v30[0] = v3;
  v4 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v7 = v30 - v6;
  sub_22C3A5908(&qword_27D9BED30, &qword_22C920698);
  sub_22C369824();
  v30[1] = v9;
  v31 = v8;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C3717BC();
  v11 = type metadata accessor for PlannerHTTPClient.CompletionRequest(0);
  v12 = sub_22C369914(v11);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v15 = v14 - v13;
  v17 = *(v16 + 44);
  v18 = sub_22C90046C();
  v33 = v17;
  sub_22C36C640(v15 + v17, 1, 1, v18);
  v32 = v2;
  v19 = sub_22C36ECB4();
  sub_22C374168(v19, v20);
  sub_22C5D2EB0();
  sub_22C37239C();
  sub_22C90B6BC();
  if (v0)
  {
    sub_22C36FF94(v32);

    sub_22C36DD28(v15 + v33, &qword_27D9BB138, &qword_22C90DB70);
  }

  else
  {
    LOBYTE(v34) = 0;
    sub_22C37A15C();
    *v15 = sub_22C90B2DC();
    *(v15 + 8) = v21;
    LOBYTE(v34) = 1;
    *(v15 + 16) = sub_22C90B2DC();
    *(v15 + 24) = v22;
    sub_22C5D2F58();
    sub_22C37B320();
    sub_22C90B32C();
    *(v15 + 32) = v34;
    v23 = v36;
    *(v15 + 40) = v35;
    *(v15 + 56) = v23;
    *(v15 + 72) = v37;
    LOBYTE(v34) = 3;
    sub_22C37B320();
    *(v15 + 88) = sub_22C90B26C();
    *(v15 + 96) = v24;
    LOBYTE(v34) = 4;
    sub_22C37B320();
    *(v15 + 104) = sub_22C90B2EC() & 1;
    LOBYTE(v34) = 5;
    sub_22C36ACBC();
    sub_22C5D2E68(v25, v26, MEMORY[0x277CC9280]);
    v27 = v31;
    sub_22C37B320();
    sub_22C90B2BC();
    v28 = sub_22C37F8B8();
    v29(v28, v27);
    sub_22C3F94FC(v7, v15 + v33);
    sub_22C5D2FAC(v15, v30[0]);
    sub_22C36FF94(v32);
    sub_22C5D3010(v15);
  }

  sub_22C36FB20();
}

uint64_t sub_22C5D1A94(uint64_t a1)
{
  sub_22C90B62C();
  PlannerHTTPClient.CompletionRequest.hash(into:)(v2);
  return sub_22C90B66C();
}

uint64_t PlannerHTTPClient.CompletionResponse.model.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PlannerHTTPClient.CompletionResponse.completions.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t PlannerHTTPClient.CompletionResponse.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  sub_22C90AF5C();

  MEMORY[0x2318B7850](v1, v2);
  MEMORY[0x2318B7850](0x3A6C65646F6D20, 0xE700000000000000);
  v4 = sub_22C36ECB4();
  MEMORY[0x2318B7850](v4);
  MEMORY[0x2318B7850](0x74656C706D6F6320, 0xED00003A736E6F69);
  v5 = MEMORY[0x2318B7AD0](v3, &type metadata for Completion);
  MEMORY[0x2318B7850](v5);

  return 3826793;
}

void static PlannerHTTPClient.CompletionResponse.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_22C90B4FC() & 1) != 0)
  {
    v7 = v2 == v4 && v3 == v5;
    if (v7 || (sub_22C90B4FC() & 1) != 0)
    {
      sub_22C36BA00();

      sub_22C46CDD8();
    }
  }
}

uint64_t sub_22C5D1D58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6974656C706D6F63 && a2 == 0xEB00000000736E6FLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C90B4FC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C5D1E60(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x6C65646F6DLL;
  }

  return 0x6974656C706D6F63;
}

uint64_t sub_22C5D1EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_22C90B62C();
  a4(v8, v6);
  return sub_22C90B66C();
}

uint64_t sub_22C5D1F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5D1D58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5D1F2C(uint64_t a1)
{
  v2 = sub_22C5D306C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5D1F68(uint64_t a1)
{
  v2 = sub_22C5D306C();

  return MEMORY[0x2821FE720](a1, v2);
}

void PlannerHTTPClient.CompletionResponse.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22C370030();
  v26 = v25;
  v27 = sub_22C3A5908(&qword_27D9BED48, &qword_22C9206A0);
  sub_22C369824();
  v29 = v28;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v30);
  sub_22C3717BC();
  sub_22C374168(v26, v26[3]);
  sub_22C5D306C();
  sub_22C37239C();
  sub_22C90B6CC();
  sub_22C90B3CC();
  if (!v23)
  {
    sub_22C37A15C();
    sub_22C90B3CC();
    sub_22C375A0C();
    sub_22C3A5908(&qword_27D9BED58, &qword_22C9206A8);
    sub_22C5D3114(&qword_27D9BED60, sub_22C5D30C0, MEMORY[0x277D83948]);
    sub_22C37A15C();
    sub_22C90B41C();
  }

  (*(v29 + 8))(v24, v27);
  sub_22C36FB20();
}

void PlannerHTTPClient.CompletionResponse.hash(into:)(uint64_t a1)
{
  sub_22C909FFC();
  sub_22C36BAFC();
  sub_22C909FFC();
  sub_22C36BA00();

  sub_22C4710DC();
}

uint64_t PlannerHTTPClient.CompletionResponse.hashValue.getter()
{
  sub_22C37B5C8();
  sub_22C909FFC();
  sub_22C909FFC();
  sub_22C4710DC();
  return sub_22C90B66C();
}

void PlannerHTTPClient.CompletionResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_22C370030();
  v21 = v20;
  v23 = v22;
  sub_22C3A5908(&qword_27D9BED70, &qword_22C9206B0);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v24);
  sub_22C36A040();
  sub_22C5D306C();
  sub_22C90B6BC();
  if (v19)
  {
    sub_22C36FF94(v21);
  }

  else
  {
    v25 = sub_22C90B2DC();
    v32 = v26;
    sub_22C374D28();
    v30 = sub_22C90B2DC();
    v31 = v27;
    sub_22C3A5908(&qword_27D9BED58, &qword_22C9206A8);
    sub_22C375A0C();
    sub_22C5D3114(&qword_27D9BED78, sub_22C5D318C, MEMORY[0x277D83978]);
    sub_22C90B32C();
    v28 = sub_22C38BBA0();
    v29(v28);
    *v23 = v25;
    v23[1] = v32;
    v23[2] = v30;
    v23[3] = v31;
    v23[4] = v33;

    sub_22C36FF94(v21);
  }

  sub_22C36FB20();
}

uint64_t sub_22C5D24F4(uint64_t a1)
{
  v2 = *(v1 + 16);
  *&v4[72] = *v1;
  v5 = v2;
  v6 = *(v1 + 24);
  sub_22C90B62C();
  PlannerHTTPClient.CompletionResponse.hash(into:)(v4);
  return sub_22C90B66C();
}

uint64_t PlannerHTTPClient.deinit()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime17PlannerHTTPClient_url;
  sub_22C90046C();
  sub_22C36985C();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t PlannerHTTPClient.__deallocating_deinit()
{
  PlannerHTTPClient.deinit();

  return swift_deallocClassInstance();
}

uint64_t Completion.text.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static Completion.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v4 == *a2 && v5 == v6)
  {
    return 1;
  }

  else
  {
    return sub_22C37FE58(v4, v5, *a2, v6);
  }
}

uint64_t sub_22C5D26DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C5D2768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5D26DC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C5D2794(uint64_t a1)
{
  v2 = sub_22C5D31E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5D27D0(uint64_t a1)
{
  v2 = sub_22C5D31E0();

  return MEMORY[0x2821FE720](a1, v2);
}

void Completion.encode(to:)()
{
  sub_22C370030();
  v2 = v1;
  v3 = sub_22C3A5908(&qword_27D9BED88, &qword_22C9206B8);
  sub_22C369824();
  v5 = v4;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C383814();
  sub_22C374168(v2, v2[3]);
  sub_22C5D31E0();
  sub_22C90B6CC();
  sub_22C90B3CC();
  (*(v5 + 8))(v0, v3);
  sub_22C36FB20();
}

uint64_t Completion.hashValue.getter()
{
  sub_22C37B5C8();
  sub_22C909FFC();
  return sub_22C90B66C();
}

void Completion.init(from:)()
{
  sub_22C370030();
  v2 = v1;
  v4 = v3;
  sub_22C3A5908(&qword_27D9BED98, &qword_22C9206C0);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C383814();
  sub_22C36A040();
  v6 = sub_22C5D31E0();
  sub_22C5D444C(&type metadata for Completion.CodingKeys, v7, v6);
  if (!v0)
  {
    sub_22C3827C0();
    v8 = sub_22C90B2DC();
    v10 = v9;
    v11 = sub_22C370818();
    v12(v11);
    *v4 = v8;
    v4[1] = v10;
  }

  sub_22C36FF94(v2);
  sub_22C36FB20();
}

unint64_t sub_22C5D2AB8(uint64_t a1, unint64_t a2)
{
  if (a2 < 4)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C5D2AC4(uint64_t a1)
{
  v2 = sub_22C5D435C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C5D2B00(uint64_t a1)
{
  v2 = sub_22C5D435C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C5D2B60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C5D4404;

  return sub_22C5D2C0C(a1);
}

uint64_t sub_22C5D2C0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C5D2CA8;

  return MEMORY[0x28211ECF8](a1, 0);
}

uint64_t sub_22C5D2CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *v9;

  v16 = *(v18 + 8);
  if (!v8)
  {
    v13 = a1;
    v14 = a2;
    v15 = a3;
  }

  return v16(v13, v14, v15);
}

unint64_t sub_22C5D2DC0()
{
  result = qword_27D9BECD0;
  if (!qword_27D9BECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BECD0);
  }

  return result;
}

unint64_t sub_22C5D2E14()
{
  result = qword_27D9BECE8;
  if (!qword_27D9BECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BECE8);
  }

  return result;
}

uint64_t sub_22C5D2E68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22C5D2EB0()
{
  result = qword_27D9BED10;
  if (!qword_27D9BED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BED10);
  }

  return result;
}

unint64_t sub_22C5D2F04()
{
  result = qword_27D9BED18;
  if (!qword_27D9BED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BED18);
  }

  return result;
}

unint64_t sub_22C5D2F58()
{
  result = qword_27D9BED38;
  if (!qword_27D9BED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BED38);
  }

  return result;
}

uint64_t sub_22C5D2FAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlannerHTTPClient.CompletionRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C5D3010(uint64_t a1)
{
  v2 = type metadata accessor for PlannerHTTPClient.CompletionRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C5D306C()
{
  result = qword_27D9BED50;
  if (!qword_27D9BED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BED50);
  }

  return result;
}

unint64_t sub_22C5D30C0()
{
  result = qword_27D9BED68;
  if (!qword_27D9BED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BED68);
  }

  return result;
}

uint64_t sub_22C5D3114(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(&qword_27D9BED58, &qword_22C9206A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C5D318C()
{
  result = qword_27D9BED80;
  if (!qword_27D9BED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BED80);
  }

  return result;
}

unint64_t sub_22C5D31E0()
{
  result = qword_27D9BED90;
  if (!qword_27D9BED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BED90);
  }

  return result;
}

unint64_t sub_22C5D3238()
{
  result = qword_27D9BEDA0;
  if (!qword_27D9BEDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEDA0);
  }

  return result;
}

unint64_t sub_22C5D3290()
{
  result = qword_27D9BEDA8;
  if (!qword_27D9BEDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEDA8);
  }

  return result;
}

unint64_t sub_22C5D32F4()
{
  result = qword_27D9BEDB0;
  if (!qword_27D9BEDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEDB0);
  }

  return result;
}

unint64_t sub_22C5D3350()
{
  result = qword_27D9BEDB8;
  if (!qword_27D9BEDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEDB8);
  }

  return result;
}

uint64_t sub_22C5D33A4(uint64_t a1)
{
  *(a1 + 8) = sub_22C5D2E68(&qword_27D9BEDC0, type metadata accessor for PlannerHTTPClient.CompletionRequest, &protocol conformance descriptor for PlannerHTTPClient.CompletionRequest);
  result = sub_22C5D2E68(&qword_27D9BBCE0, type metadata accessor for PlannerHTTPClient.CompletionRequest, &protocol conformance descriptor for PlannerHTTPClient.CompletionRequest);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_22C5D3474()
{
  result = qword_27D9BEDD0;
  if (!qword_27D9BEDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEDD0);
  }

  return result;
}

unint64_t sub_22C5D34CC()
{
  result = qword_27D9BEDD8;
  if (!qword_27D9BEDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEDD8);
  }

  return result;
}

uint64_t sub_22C5D3548(uint64_t a1)
{
  result = sub_22C90046C();
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

uint64_t sub_22C5D3620(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C5D3640(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

uint64_t sub_22C5D3688(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C5D36C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22C5D3740(uint64_t a1)
{
  sub_22C436620();
  if (v1 <= 0x3F)
  {
    sub_22C5D37EC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C5D37EC(uint64_t a1)
{
  if (!qword_281435840)
  {
    sub_22C90046C();
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_281435840);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Completion.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlannerHTTPClient.CompletionResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlannerHTTPClient.CompletionRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlannerHTTPClient.ErrorResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlannerHTTPClient.Options.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PlannerHTTPClient.Options.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C5D3D58(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22C5D3D70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C5D3DC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_22C5D3E38()
{
  result = qword_27D9BEE00;
  if (!qword_27D9BEE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE00);
  }

  return result;
}

unint64_t sub_22C5D3E90()
{
  result = qword_27D9BEE08;
  if (!qword_27D9BEE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE08);
  }

  return result;
}

unint64_t sub_22C5D3EE8()
{
  result = qword_27D9BEE10;
  if (!qword_27D9BEE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE10);
  }

  return result;
}

unint64_t sub_22C5D3F40()
{
  result = qword_27D9BEE18;
  if (!qword_27D9BEE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE18);
  }

  return result;
}

unint64_t sub_22C5D3F98()
{
  result = qword_27D9BEE20;
  if (!qword_27D9BEE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE20);
  }

  return result;
}

unint64_t sub_22C5D3FF0()
{
  result = qword_27D9BEE28;
  if (!qword_27D9BEE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE28);
  }

  return result;
}

unint64_t sub_22C5D4048()
{
  result = qword_27D9BEE30;
  if (!qword_27D9BEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE30);
  }

  return result;
}

unint64_t sub_22C5D40A0()
{
  result = qword_27D9BEE38;
  if (!qword_27D9BEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE38);
  }

  return result;
}

unint64_t sub_22C5D40F8()
{
  result = qword_27D9BEE40;
  if (!qword_27D9BEE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE40);
  }

  return result;
}

unint64_t sub_22C5D4150()
{
  result = qword_27D9BEE48;
  if (!qword_27D9BEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE48);
  }

  return result;
}

unint64_t sub_22C5D41A8()
{
  result = qword_27D9BEE50;
  if (!qword_27D9BEE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE50);
  }

  return result;
}

unint64_t sub_22C5D4200()
{
  result = qword_27D9BEE58;
  if (!qword_27D9BEE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE58);
  }

  return result;
}

unint64_t sub_22C5D4258()
{
  result = qword_27D9BEE60;
  if (!qword_27D9BEE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE60);
  }

  return result;
}

unint64_t sub_22C5D42B0()
{
  result = qword_27D9BEE68;
  if (!qword_27D9BEE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE68);
  }

  return result;
}

unint64_t sub_22C5D4308()
{
  result = qword_27D9BEE70;
  if (!qword_27D9BEE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE70);
  }

  return result;
}

unint64_t sub_22C5D435C()
{
  result = qword_27D9BEE78;
  if (!qword_27D9BEE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE78);
  }

  return result;
}

unint64_t sub_22C5D43B0()
{
  result = qword_27D9BEE80;
  if (!qword_27D9BEE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE80);
  }

  return result;
}

uint64_t sub_22C5D444C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C90B6BC();
}

uint64_t sub_22C5D448C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v3 = sub_22C3699B8(v2);
  v70 = v4;
  MEMORY[0x28223BE20](v3);
  v75 = &v58 - v5;
  v74 = sub_22C901FAC();
  v6 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  sub_22C3698E4();
  v66 = v7;
  MEMORY[0x28223BE20](v8);
  v60 = &v58 - v9;
  v72 = sub_22C3A5908(&qword_27D9BEEE8, &unk_22C921510);
  sub_22C36985C();
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  v71 = v11;
  v13 = MEMORY[0x28223BE20](v12);
  v69 = &v58 - v14;
  MEMORY[0x28223BE20](v13);
  v68 = &v58 - v15;
  v17 = a1 + 64;
  v16 = *(a1 + 64);
  v73 = MEMORY[0x277D84F98];
  v76 = MEMORY[0x277D84F98];
  v18 = 1 << *(a1 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v16;
  v21 = (v18 + 63) >> 6;
  v59 = v6;
  v22 = (v6 + 32);
  v23 = a1;
  v63 = v22;

  v25 = 0;
  v67 = a1;
  v64 = v21;
  for (i = a1 + 64; v20; v21 = v64)
  {
LABEL_9:
    v27 = __clz(__rbit64(v20)) | (v25 << 6);
    v28 = (*(v23 + 48) + 16 * v27);
    v29 = *v28;
    v30 = v28[1];
    v31 = *(v23 + 56) + *(v70 + 72) * v27;
    v32 = v72;
    v33 = v68;
    sub_22C3DB138(v31, &v68[*(v72 + 48)], &qword_27D9BC030, &unk_22C911CC0);
    *v33 = v29;
    v33[1] = v30;
    v34 = v69;
    sub_22C3DB08C(v33, v69, &qword_27D9BEEE8, &unk_22C921510);
    sub_22C3DB138(v34 + *(v32 + 48), v75, &qword_27D9BC030, &unk_22C911CC0);
    v35 = sub_22C36CCF8();
    if (sub_22C370B74(v35, v36, v74) == 1)
    {

      sub_22C36DD28(v34, &qword_27D9BEEE8, &unk_22C921510);
      v37 = v75;
      v17 = i;
      v23 = v67;
    }

    else
    {
      v62 = v30;
      v38 = *v63;
      v39 = v34;
      v40 = v60;
      v41 = v74;
      (*v63)(v60, v75, v74);
      sub_22C3DB08C(v39, v71, &qword_27D9BEEE8, &unk_22C921510);
      v61 = v38;
      v38(v66, v40, v41);
      v42 = v73[2];
      if (v73[3] <= v42)
      {

        sub_22C88F120(v42 + 1);
      }

      else
      {
      }

      v43 = v76;
      v44 = *v71;
      v45 = v71[1];
      sub_22C90B62C();
      sub_22C909FFC();
      result = sub_22C90B66C();
      v46 = v43 + 64;
      v73 = v43;
      v47 = -1 << *(v43 + 32);
      v48 = result & ~v47;
      v49 = v48 >> 6;
      if (((-1 << v48) & ~*(v43 + 64 + 8 * (v48 >> 6))) == 0)
      {
        v51 = 0;
        v52 = (63 - v47) >> 6;
        while (++v49 != v52 || (v51 & 1) == 0)
        {
          v53 = v49 == v52;
          if (v49 == v52)
          {
            v49 = 0;
          }

          v51 |= v53;
          v54 = *(v46 + 8 * v49);
          if (v54 != -1)
          {
            v50 = __clz(__rbit64(~v54)) + (v49 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_28;
      }

      v50 = __clz(__rbit64((-1 << v48) & ~*(v43 + 64 + 8 * (v48 >> 6)))) | v48 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      v37 = v71 + *(v72 + 48);
      *(v46 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      v56 = v73;
      v55 = v74;
      v57 = (v73[6] + 16 * v50);
      *v57 = v44;
      v57[1] = v45;
      v61((v56[7] + *(v59 + 72) * v50), v66, v55);
      ++v56[2];
      v23 = v67;
      v17 = i;
    }

    v20 &= v20 - 1;
    result = sub_22C36DD28(v37, &qword_27D9BC030, &unk_22C911CC0);
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v21)
    {

      return v73;
    }

    v20 = *(v17 + 8 * v26);
    ++v25;
    if (v20)
    {
      v25 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t PrescribedPlanGenerator.init(prescribedPlan:contextRetrieval:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_22C907BAC();
  sub_22C36985C();
  (*(v6 + 32))(a3, a1);
  v7 = a3 + *(type metadata accessor for PrescribedPlanGenerator(0) + 20);

  return sub_22C36C730(a2, v7);
}

uint64_t type metadata accessor for PrescribedPlanGenerator(uint64_t a1)
{
  result = qword_281432CA8;
  if (!qword_281432CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PrescribedPlanGenerator.handle(_:plannerServiceContext:)()
{
  sub_22C369980();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_22C90880C();
  v1[5] = v4;
  sub_22C3699B8(v4);
  v1[6] = v5;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v6 = sub_22C90069C();
  v1[19] = v6;
  sub_22C3699B8(v6);
  v1[20] = v7;
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C5D4CEC, 0, 0);
}

uint64_t sub_22C5D4CEC()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[3];
  v4 = type metadata accessor for PlannerServiceContext(0);
  sub_22C3DB138(v3 + *(v4 + 20), v1, &qword_27D9BB190, qword_22C90DD90);
  v5 = sub_22C36CCF8();
  if (sub_22C370B74(v5, v6, v2) == 1)
  {
    sub_22C36DD28(v0[18], &qword_27D9BB190, qword_22C90DD90);
    v7 = sub_22C5D55D4();
    sub_22C36FBE4(&type metadata for PrescribedPlanGenerator.Error, v7);
    *v8 = 2;
    swift_willThrow();
    sub_22C5DA010();

    sub_22C36EC40();

    __asm { BRAA            X1, X16 }
  }

  v11 = v0[13];
  v12 = v0[9];
  v13 = v0[5];
  v14 = v0[6];
  (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
  sub_22C90878C();
  v15 = sub_22C9087DC();
  v16 = *(v14 + 8);
  v0[22] = v16;
  v0[23] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v12, v13);
  sub_22C3A5950(v15);

  v0[24] = sub_22C908A0C();
  sub_22C369A54(v11);
  if (v17)
  {
    v18 = v0[19];
    sub_22C36DD28(v0[13], &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C36A748();
    sub_22C36C640(v19, v20, v21, v18);
  }

  else
  {
    sub_22C9088DC();
    sub_22C36BBA8();
    v22 = sub_22C36BBCC();
    v23(v22);
  }

  v24 = v0[17];
  sub_22C59F100(v0[21], v24);
  sub_22C36DD28(v24, &qword_27D9BB190, qword_22C90DD90);
  v25 = swift_task_alloc();
  v0[25] = v25;
  *v25 = v0;
  v25[1] = sub_22C5D4FEC;
  sub_22C36EC40();

  return sub_22C5D5628(v26);
}

uint64_t sub_22C5D4FEC()
{
  sub_22C369980();
  v2 = *v1;
  *(v2 + 208) = v3;
  *(v2 + 216) = v0;

  if (v0)
  {
    v4 = sub_22C5D53D4;
  }

  else
  {
    v4 = sub_22C5D50FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22C5D50FC()
{
  v1 = v0[24];
  sub_22C3A5950(v0[26]);
  v2 = sub_22C36CCF8();
  if (sub_22C370B74(v2, v3, v1) == 1)
  {
    sub_22C36DD28(v0[12], &qword_27D9BA808, &qword_22C90C6E0);
    v4 = 1;
  }

  else
  {
    sub_22C9087FC();
    sub_22C36BBA8();
    v5 = sub_22C36BBCC();
    v6(v5);
    v4 = 0;
  }

  v7 = v0[24];
  v8 = v0[22];
  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[5];
  sub_22C36C640(v0[16], v4, 1, v0[19]);
  sub_22C90878C();
  v12 = sub_22C9087DC();
  v8(v10, v11);
  sub_22C3A5950(v12);

  v13 = sub_22C370B74(v9, 1, v7);
  v14 = v0[11];
  if (v13 == 1)
  {
    v15 = v0[19];
    sub_22C36DD28(v0[11], &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C36A748();
    sub_22C36C640(v16, v17, v18, v15);
  }

  else
  {
    v19 = v0[24];
    sub_22C9088DC();
    sub_22C36BBA8();
    (*(v20 + 8))(v14, v19);
  }

  v21 = v0[20];
  v22 = v0[21];
  v23 = v0[19];
  v24 = v0[16];
  v25 = v0[15];
  sub_22C59F298(v24, v22, v25);
  sub_22C36DD28(v25, &qword_27D9BB190, qword_22C90DD90);
  sub_22C36DD28(v24, &qword_27D9BB190, qword_22C90DD90);
  (*(v21 + 8))(v22, v23);

  v26 = v0[1];
  v27 = v0[26];

  return v26(v27);
}

void sub_22C5D53D4(uint64_t a1)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 80);
  v4 = *(v1 + 56);
  v5 = *(v1 + 40);
  sub_22C90878C();
  v6 = sub_22C9087DC();
  v2(v4, v5);
  sub_22C3A5950(v6);

  sub_22C369A54(v3);
  if (v7)
  {
    v8 = *(v1 + 152);
    sub_22C36DD28(*(v1 + 80), &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C36A748();
    sub_22C36C640(v9, v10, v11, v8);
  }

  else
  {
    sub_22C9088DC();
    sub_22C36BBA8();
    v12 = sub_22C36BBCC();
    v13(v12);
  }

  v14 = *(v1 + 112);
  sub_22C59F714(*(v1 + 216), *(v1 + 168), v14);
  sub_22C36DD28(v14, &qword_27D9BB190, qword_22C90DD90);
  swift_willThrow();
  v15 = sub_22C36BBCC();
  v16(v15);
  sub_22C5DA010();

  sub_22C36EC40();

  __asm { BRAA            X1, X16 }
}

unint64_t sub_22C5D55D4()
{
  result = qword_27D9BEE88;
  if (!qword_27D9BEE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE88);
  }

  return result;
}

uint64_t sub_22C5D5628(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_22C9089DC();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = sub_22C908A0C();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  sub_22C902D3C();
  v2[23] = swift_task_alloc();
  v5 = sub_22C90888C();
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();
  v6 = sub_22C9088CC();
  v2[27] = v6;
  v2[28] = *(v6 - 8);
  v2[29] = swift_task_alloc();
  v7 = sub_22C907B2C();
  v2[30] = v7;
  v2[31] = *(v7 - 8);
  v2[32] = swift_task_alloc();
  v8 = sub_22C907AEC();
  v2[33] = v8;
  v2[34] = *(v8 - 8);
  v2[35] = swift_task_alloc();
  v9 = sub_22C907AAC();
  v2[36] = v9;
  v2[37] = *(v9 - 8);
  v2[38] = swift_task_alloc();
  sub_22C90769C();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v10 = sub_22C907B9C();
  v2[43] = v10;
  v2[44] = *(v10 - 8);
  v2[45] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BD7C8, &unk_22C922F50);
  v2[46] = swift_task_alloc();
  v11 = sub_22C90880C();
  v2[47] = v11;
  v2[48] = *(v11 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BEEA8, &qword_22C9214D0);
  v2[51] = swift_task_alloc();
  v2[52] = sub_22C3A5908(&qword_27D9BEEB0, &unk_22C9214D8);
  v2[53] = swift_task_alloc();
  v12 = sub_22C907A1C();
  v2[54] = v12;
  v2[55] = *(v12 - 8);
  v2[56] = swift_task_alloc();
  v13 = sub_22C9070DC();
  v2[57] = v13;
  v2[58] = *(v13 - 8);
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = *(sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40) - 8);
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v14 = sub_22C907B5C();
  v2[97] = v14;
  v2[98] = *(v14 - 8);
  v2[99] = swift_task_alloc();
  sub_22C90700C();
  v2[100] = swift_task_alloc();
  v15 = sub_22C90654C();
  v2[101] = v15;
  v2[102] = *(v15 - 8);
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();
  v2[107] = swift_task_alloc();
  v16 = sub_22C901FAC();
  v2[108] = v16;
  v2[109] = *(v16 - 8);
  v2[110] = swift_task_alloc();
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v17 = sub_22C907A5C();
  v2[119] = v17;
  v2[120] = *(v17 - 8);
  v2[121] = swift_task_alloc();
  v18 = sub_22C907BAC();
  v2[122] = v18;
  v2[123] = *(v18 - 8);
  v2[124] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C5D6094, 0, 0);
}

uint64_t sub_22C5D6094()
{
  v1 = *(v0 + 976);
  (*(*(v0 + 984) + 16))(*(v0 + 992), *(v0 + 104), v1);
  v2 = sub_22C36BBCC();
  v4 = v3(v2);
  if (v4 == *MEMORY[0x277D1E1D0])
  {
    v5 = *(v0 + 992);
    v6 = *(v0 + 968);
    v7 = *(v0 + 960);
    v8 = *(v0 + 952);
    v566 = *(v0 + 856);
    v9 = *(v0 + 816);
    v569 = *(v0 + 808);
    (*(*(v0 + 984) + 96))(v5, *(v0 + 976));
    (*(v7 + 32))(v6, v5, v8);
    sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
    *(swift_allocObject() + 16) = xmmword_22C90F800;
    sub_22C9087AC();
    sub_22C386A50();

    sub_22C907A4C();
    MEMORY[0x2318B4F00]();
    sub_22C907A3C();
    sub_22C90722C();
    v10 = (*(v9 + 104))(v566, *MEMORY[0x277D1DAD0], v569);
    MEMORY[0x2318B4570](v10);
    MEMORY[0x2318B4580]();
    sub_22C9070BC();
    sub_22C3735F4();
    sub_22C90708C();
    (*(v7 + 8))(v6, v8);
    goto LABEL_28;
  }

  if (v4 == *MEMORY[0x277D1E1F8])
  {
    sub_22C38BBB0();
    v11 = *(v0 + 352);
    v12 = *(v0 + 344);
    v13 = sub_22C37BB30();
    v14(v13);
    v15 = sub_22C36D8E8();
    v16(v15);
    sub_22C9087AC();
    sub_22C90882C();

    *v1 = sub_22C907ACC();
    v1[1] = v17;
    sub_22C906F2C();
    sub_22C36985C();
    v19 = *(v18 + 104);
    v20 = sub_22C36BA00();
    v19(v20);
    v21 = *MEMORY[0x277D1DAA8];
    v22 = sub_22C370828();
    v23 = v12(v22);
    MEMORY[0x2318B4570](v23);
    v24 = MEMORY[0x2318B4580]();
    sub_22C5DA04C(v24);
    sub_22C36ACD4();
    sub_22C5D9F9C(v25, v26, v27);
    sub_22C9087AC();
    sub_22C386A50();

    v29 = MEMORY[0x2318B5040](v28);
    sub_22C375F08(v29);
    v30 = sub_22C3723A8();
    v19(v30);
    v31 = sub_22C37F37C();
    v32 = v12(v31);
    MEMORY[0x2318B4570](v32);
    MEMORY[0x2318B4580]();
    sub_22C9070BC();
    sub_22C5D9EFC();
    sub_22C9065AC();
    if (v33)
    {
      sub_22C3887F0();
      sub_22C375A18(*(v0 + 736));
      sub_22C38C3E4();
      sub_22C90882C();

      *v546 = v21;
      v1[1] = 1;
      v34 = sub_22C386268();
      v35(v34);
      v36 = sub_22C37F8C4();
      v37(v36);

      MEMORY[0x2318B4570](v38);
      MEMORY[0x2318B4580]();
      sub_22C9070BC();
      sub_22C36ACD4();
      sub_22C3831F8(v39, v40, v41);
      sub_22C36BECC();
      sub_22C36C640(v42, v43, v44, v579);
    }

    else
    {
      sub_22C36A748();
      sub_22C36C640(v104, v105, v106, v107);
    }

    v108 = *(v0 + 736);
    v560 = *(v0 + 728);
    v109 = *(v0 + 456);
    sub_22C36ED58(*(v0 + 336));
    v110 = sub_22C3A5908(&qword_27D9BEEB8, &qword_22C9214E8);
    v111 = sub_22C377550(v110);
    v112 = sub_22C372A18(v111, xmmword_22C90D070);
    v11(v112);
    sub_22C36BECC();
    sub_22C36C640(v113, v114, v115, v109);
    v116 = sub_22C5D9FDC();
    v11(v116);
    sub_22C36BECC();
    sub_22C5DA0A8(v117, v118, v119);
    sub_22C3DB138(v108, v120, &qword_27D9BAA18, &qword_22C911C40);
    sub_22C9087AC();
    sub_22C37AC70();

    MEMORY[0x2318B4B50](v121);
    sub_22C5D9F78(0xD000000000000059);
    sub_22C3A5908(&qword_27D9BEEC0, &qword_22C9214F0);
    sub_22C3A5908(&qword_27D9BEEC8, &qword_22C9214F8);
    sub_22C3799A8();
    *(sub_22C374D38() + 16) = xmmword_22C90FB40;
    sub_22C5D9EDC();
    sub_22C9068FC();
    sub_22C36BECC();
    sub_22C5DA028(v122, v123, v124);
    sub_22C36C000();
    sub_22C5DA068(v125);
    sub_22C36BECC();
    sub_22C36C640(v126, v127, v128, v108);
    v129 = sub_22C371A38();
    sub_22C3DB138(v129, v130, &qword_27D9BAA18, &qword_22C911C40);
    v131 = sub_22C3707B4();
    if (sub_22C370B74(v131, v132, v109) == 1)
    {
      sub_22C36DD28(*(v0 + 728), &qword_27D9BAA18, &qword_22C911C40);
    }

    else
    {
      sub_22C9068FC();
      v133 = sub_22C36BBCC();
      v134(v133);
    }

    sub_22C37FE60();
    sub_22C5D9FEC(v135, v136, v137, v138);
    sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
    v139 = sub_22C909F0C();
    sub_22C5D448C(v139);

    sub_22C36BAFC();
    sub_22C906AAC();
    v140 = sub_22C370288();
    v142 = v141(v140);
    MEMORY[0x2318B4570](v142);
    MEMORY[0x2318B4580]();
    sub_22C9070BC();
    sub_22C3735F4();
    sub_22C37A1B8();
    sub_22C36BECC();
    sub_22C36C640(v143, v144, v145, v560);
    sub_22C381AFC();
    do
    {
      v146 = *(v0 + 712);
      sub_22C3872CC();
      sub_22C3827D0();
      v147 = sub_22C5D9FC0();
      if (v147 == 1)
      {
        sub_22C3816D4(v147, *(v0 + 712));
      }

      else
      {
        sub_22C5DA09C();
        v146();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C5D9F54();
        }

        sub_22C36FD88();
        if (v148)
        {
          sub_22C5D9F30();
        }

        v149 = sub_22C36A064();
        (v146)(v149);
      }

      sub_22C3856D0();
    }

    while (!v150);
    v151 = *(v0 + 736);
    v152 = *(v0 + 560);
    v153 = *(v0 + 552);
    v154 = *(v0 + 456);
    v155 = *(v0 + 464);
    v156 = *(v0 + 352);
    v581 = *(v0 + 360);
    v157 = *(v0 + 344);
LABEL_27:
    swift_setDeallocating();
    sub_22C590090();
    sub_22C36DD28(v151, &qword_27D9BAA18, &qword_22C911C40);
    v158 = *(v155 + 8);
    v158(v153, v154);
    v158(v152, v154);
    (*(v156 + 8))(v581, v157);
    goto LABEL_28;
  }

  if (v4 == *MEMORY[0x277D1E1D8])
  {
    v45 = *(v0 + 992);
    v46 = *(v0 + 856);
    v573 = *(v0 + 816);
    v542 = *(v0 + 808);
    v549 = *(v0 + 528);
    v47 = *(v0 + 296);
    v48 = *(v0 + 304);
    v49 = *(v0 + 288);
    (*(*(v0 + 984) + 96))(v45, *(v0 + 976));
    (*(v47 + 32))(v48, v45, v49);
    sub_22C9087AC();
    sub_22C38C3E4();
    sub_22C90882C();

    *v46 = sub_22C907A8C();
    v46[1] = v50;
    v51 = sub_22C906F2C();
    sub_22C36985C();
    v53 = *(v52 + 104);
    v54 = sub_22C36BA00();
    v53(v54);
    v580 = *MEMORY[0x277D1DAA8];
    v55 = *(v573 + 104);
    v56 = v55(v46);
    MEMORY[0x2318B4570](v56);
    MEMORY[0x2318B4580]();
    sub_22C9070BC();
    sub_22C36ACD4();
    sub_22C90708C();
    sub_22C9087AC();
    sub_22C5DA084();

    v58 = MEMORY[0x2318B4F40](v57);
    sub_22C375F08(v58);
    v559 = v53;
    (v53)(v46, *MEMORY[0x277D1DED8], v51);
    v570 = v55;
    v59 = (v55)(v46, v580, v542);
    MEMORY[0x2318B4570](v59);
    MEMORY[0x2318B4580]();
    sub_22C9070BC();
    sub_22C36ACD4();
    sub_22C90708C();
    v60 = sub_22C907A9C();
    if (v61)
    {
      v62 = v60;
      v63 = v61;
      v64 = *(v0 + 856);
      v65 = *(v0 + 808);
      v549 = *(v0 + 456);
      sub_22C9087AC();
      sub_22C5DA084();

      *v64 = v62;
      v46[1] = v63;
      (v559)(v64, *MEMORY[0x277D1DF00], v51);
      (v570)(v64, v580, v65);

      MEMORY[0x2318B4570](v66);
      MEMORY[0x2318B4580]();
      sub_22C9070BC();
      sub_22C36ACD4();
      sub_22C90708C();
      sub_22C36BECC();
      sub_22C36C640(v67, v68, v69, v549);
    }

    else
    {
      sub_22C36A748();
      sub_22C36C640(v222, v223, v224, v225);
    }

    v226 = sub_22C907A7C();
    if (v227)
    {
      v228 = v226;
      v229 = v227;
      v230 = *(v0 + 856);
      v231 = *(v0 + 808);
      sub_22C36ED58(*(v0 + 456));
      sub_22C9087AC();
      sub_22C90882C();

      *v230 = v228;
      v46[1] = v229;
      (v559)(v230, *MEMORY[0x277D1DF00], v51);
      (v570)(v230, v580, v231);

      MEMORY[0x2318B4570](v232);
      MEMORY[0x2318B4580]();
      sub_22C9070BC();
      sub_22C36ACD4();
      sub_22C90708C();
      sub_22C36BECC();
      sub_22C36C640(v233, v234, v235, v549);
    }

    else
    {
      sub_22C36A748();
      sub_22C36C640(v236, v237, v238, v239);
    }

    v240 = *(v0 + 704);
    v550 = *(v0 + 864);
    v541 = *(v0 + 696);
    v241 = *(v0 + 592);
    v242 = *(v0 + 536);
    v243 = *(v0 + 528);
    v244 = *(v0 + 456);
    v245 = *(v0 + 464);
    v554 = *(v0 + 688);
    sub_22C3A5908(&qword_27D9BEEB8, &qword_22C9214E8);
    v246 = *(v241 + 72);
    v247 = (*(v241 + 80) + 32) & ~*(v241 + 80);
    v248 = swift_allocObject();
    *(v248 + 16) = xmmword_22C90F7F0;
    v249 = v248 + v247;
    v250 = *(v245 + 16);
    v250(v249, v242, v244);
    sub_22C36BECC();
    sub_22C36C640(v251, v252, v253, v244);
    v250(v249 + v246, v243, v244);
    sub_22C36BECC();
    sub_22C36C640(v254, v255, v256, v244);
    sub_22C3DB138(v240, v249 + 2 * v246, &qword_27D9BAA18, &qword_22C911C40);
    sub_22C3DB138(v541, v249 + 3 * v246, &qword_27D9BAA18, &qword_22C911C40);
    sub_22C9087AC();
    sub_22C37AC70();

    MEMORY[0x2318B4B50](v257);
    sub_22C90766C();
    sub_22C3A5908(&qword_27D9BEEC0, &qword_22C9214F0);
    v258 = sub_22C3A5908(&qword_27D9BEEC8, &qword_22C9214F8);
    v259 = *(*(v258 - 8) + 72);
    v260 = (*(*(v258 - 8) + 80) + 32) & ~*(*(v258 - 8) + 80);
    v261 = swift_allocObject();
    *(v261 + 16) = xmmword_22C90D070;
    v262 = v261 + v260;
    sub_22C5D9EDC();
    sub_22C9068FC();
    sub_22C36BECC();
    sub_22C36C640(v263, v264, v265, v550);
    v266 = (v262 + v259);
    sub_22C36C000();
    *v266 = v268;
    v266[1] = v267;
    sub_22C9068FC();
    sub_22C36BECC();
    sub_22C36C640(v269, v270, v271, v550);
    v272 = (v262 + 2 * v259);
    v273 = *(v258 + 48);
    *v272 = 0x72656E74726170;
    v272[1] = 0xE700000000000000;
    sub_22C3DB138(v240, v554, &qword_27D9BAA18, &qword_22C911C40);
    v274 = sub_22C3707B4();
    v276 = sub_22C370B74(v274, v275, v244);
    v277 = *(v0 + 688);
    if (v276 == 1)
    {
      sub_22C36DD28(*(v0 + 688), &qword_27D9BAA18, &qword_22C911C40);
      v278 = 1;
    }

    else
    {
      v279 = *(v0 + 456);
      v280 = *(v0 + 464);
      sub_22C9068FC();
      (*(v280 + 8))(v277, v279);
      v278 = 0;
    }

    v281 = *(v0 + 696);
    v282 = *(v0 + 680);
    v283 = *(v0 + 456);
    sub_22C36C640(v272 + v273, v278, 1, *(v0 + 864));
    v284 = (v262 + 3 * v259);
    v285 = *(v258 + 48);
    sub_22C36C000();
    *v284 = v286 + 4;
    v284[1] = v287;
    sub_22C3DB138(v281, v282, &qword_27D9BAA18, &qword_22C911C40);
    if (sub_22C370B74(v282, 1, v283) == 1)
    {
      sub_22C36DD28(*(v0 + 680), &qword_27D9BAA18, &qword_22C911C40);
      v288 = 1;
    }

    else
    {
      sub_22C9068FC();
      v289 = sub_22C36BBCC();
      v290(v289);
      v288 = 0;
    }

    v291 = *(v0 + 840);
    v547 = *(v0 + 808);
    v555 = *(v0 + 456);
    sub_22C36C640(v284 + v285, v288, 1, *(v0 + 864));
    sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
    v292 = sub_22C909F0C();
    sub_22C5D448C(v292);

    sub_22C36BAFC();
    sub_22C906AAC();
    v293 = (v570)(v291, *MEMORY[0x277D1DA78], v547);
    MEMORY[0x2318B4570](v293);
    MEMORY[0x2318B4580]();
    sub_22C9070BC();
    sub_22C36ACD4();
    sub_22C90708C();
    sub_22C36BECC();
    sub_22C36C640(v294, v295, v296, v555);
    do
    {
      v297 = *(v0 + 664);
      sub_22C3872CC();
      sub_22C3827D0();
      v298 = sub_22C5D9FC0();
      if (v298 == 1)
      {
        sub_22C3816D4(v298, *(v0 + 664));
      }

      else
      {
        sub_22C5DA09C();
        v297();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C5D9F54();
        }

        sub_22C36FD88();
        if (v148)
        {
          sub_22C5D9F30();
        }

        v299 = sub_22C36A064();
        (v297)(v299);
      }

      sub_22C3856D0();
    }

    while (!v150);
    v300 = *(v0 + 704);
    v301 = *(v0 + 696);
    v302 = *(v0 + 528);
    v303 = *(v0 + 456);
    v304 = *(v0 + 464);
    v305 = *(v0 + 296);
    v583 = *(v0 + 304);
    v571 = *(v0 + 536);
    v575 = *(v0 + 288);
    swift_setDeallocating();
    sub_22C590090();
    sub_22C36DD28(v301, &qword_27D9BAA18, &qword_22C911C40);
    sub_22C36DD28(v300, &qword_27D9BAA18, &qword_22C911C40);
    v306 = *(v304 + 8);
    v306(v302, v303);
    v306(v571, v303);
    (*(v305 + 8))(v583, v575);
  }

  else
  {
    if (v4 == *MEMORY[0x277D1E1E0])
    {
      sub_22C38BBB0();
      v70 = *(v0 + 272);
      v71 = *(v0 + 264);
      v72 = sub_22C37BB30();
      v73(v72);
      v74 = sub_22C36D8E8();
      v75(v74);
      sub_22C9087AC();
      sub_22C90882C();

      *v1 = sub_22C907ACC();
      v1[1] = v76;
      sub_22C906F2C();
      sub_22C36985C();
      v78 = *(v77 + 104);
      v79 = sub_22C36BA00();
      v78(v79);
      v80 = *MEMORY[0x277D1DAA8];
      v81 = sub_22C370828();
      v82 = v71(v81);
      MEMORY[0x2318B4570](v82);
      v83 = MEMORY[0x2318B4580]();
      sub_22C5DA04C(v83);
      sub_22C36ACD4();
      sub_22C5D9F9C(v84, v85, v86);
      sub_22C9087AC();
      sub_22C386A50();

      v88 = MEMORY[0x2318B4F90](v87);
      sub_22C375F08(v88);
      v89 = sub_22C3723A8();
      v78(v89);
      v90 = sub_22C37F37C();
      v91 = v71(v90);
      MEMORY[0x2318B4570](v91);
      MEMORY[0x2318B4580]();
      sub_22C9070BC();
      sub_22C5D9EFC();
      sub_22C9065AC();
      if (v92)
      {
        sub_22C3887F0();
        sub_22C375A18(*(v0 + 656));
        sub_22C38C3E4();
        sub_22C90882C();

        *v546 = v80;
        v1[1] = 1;
        v93 = sub_22C386268();
        v94(v93);
        v95 = sub_22C37F8C4();
        v96(v95);

        MEMORY[0x2318B4570](v97);
        MEMORY[0x2318B4580]();
        sub_22C9070BC();
        sub_22C36ACD4();
        sub_22C3831F8(v98, v99, v100);
        sub_22C36BECC();
        sub_22C36C640(v101, v102, v103, v579);
      }

      else
      {
        sub_22C36A748();
        sub_22C36C640(v321, v322, v323, v324);
      }

      v325 = *(v0 + 656);
      v561 = *(v0 + 648);
      v326 = *(v0 + 456);
      sub_22C36ED58(*(v0 + 320));
      v327 = sub_22C3A5908(&qword_27D9BEEB8, &qword_22C9214E8);
      v328 = sub_22C377550(v327);
      v329 = sub_22C372A18(v328, xmmword_22C90D070);
      v70(v329);
      sub_22C36BECC();
      sub_22C36C640(v330, v331, v332, v326);
      v333 = sub_22C5D9FDC();
      v70(v333);
      sub_22C36BECC();
      sub_22C5DA0A8(v334, v335, v336);
      sub_22C3DB138(v325, v337, &qword_27D9BAA18, &qword_22C911C40);
      sub_22C9087AC();
      sub_22C37AC70();

      MEMORY[0x2318B4B50](v338);
      sub_22C5D9F78(0xD000000000000053);
      sub_22C3A5908(&qword_27D9BEEC0, &qword_22C9214F0);
      sub_22C3A5908(&qword_27D9BEEC8, &qword_22C9214F8);
      sub_22C3799A8();
      *(sub_22C374D38() + 16) = xmmword_22C90FB40;
      sub_22C5D9EDC();
      sub_22C9068FC();
      sub_22C36BECC();
      sub_22C5DA028(v339, v340, v341);
      sub_22C36C000();
      sub_22C5DA068(v342);
      sub_22C36BECC();
      sub_22C36C640(v343, v344, v345, v325);
      v346 = sub_22C371A38();
      sub_22C3DB138(v346, v347, &qword_27D9BAA18, &qword_22C911C40);
      v348 = sub_22C3707B4();
      if (sub_22C370B74(v348, v349, v326) == 1)
      {
        sub_22C36DD28(*(v0 + 648), &qword_27D9BAA18, &qword_22C911C40);
      }

      else
      {
        sub_22C9068FC();
        v350 = sub_22C36BBCC();
        v351(v350);
      }

      sub_22C37FE60();
      sub_22C5D9FEC(v352, v353, v354, v355);
      sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
      v356 = sub_22C909F0C();
      sub_22C5D448C(v356);

      sub_22C36BAFC();
      sub_22C906AAC();
      v357 = sub_22C370288();
      v359 = v358(v357);
      MEMORY[0x2318B4570](v359);
      MEMORY[0x2318B4580]();
      sub_22C9070BC();
      sub_22C3735F4();
      sub_22C37A1B8();
      sub_22C36BECC();
      sub_22C36C640(v360, v361, v362, v561);
      sub_22C381AFC();
      do
      {
        v363 = *(v0 + 632);
        sub_22C3872CC();
        sub_22C3827D0();
        v364 = sub_22C5D9FC0();
        if (v364 == 1)
        {
          sub_22C3816D4(v364, *(v0 + 632));
        }

        else
        {
          sub_22C5DA09C();
          v363();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C5D9F54();
          }

          sub_22C36FD88();
          if (v148)
          {
            sub_22C5D9F30();
          }

          v365 = sub_22C36A064();
          (v363)(v365);
        }

        sub_22C3856D0();
      }

      while (!v150);
      v151 = *(v0 + 656);
      v153 = *(v0 + 504);
      v152 = *(v0 + 512);
      v154 = *(v0 + 456);
      v155 = *(v0 + 464);
      v156 = *(v0 + 272);
      v581 = *(v0 + 280);
      v157 = *(v0 + 264);
      goto LABEL_27;
    }

    if (v4 == *MEMORY[0x277D1E1E8])
    {
      sub_22C38BBB0();
      v188 = *(v0 + 248);
      v189 = *(v0 + 240);
      v190 = sub_22C37BB30();
      v191(v190);
      v192 = sub_22C36D8E8();
      v193(v192);
      sub_22C9087AC();
      sub_22C90882C();

      *v1 = sub_22C907ACC();
      v1[1] = v194;
      sub_22C906F2C();
      sub_22C36985C();
      v196 = *(v195 + 104);
      v197 = sub_22C36BA00();
      v196(v197);
      v198 = *MEMORY[0x277D1DAA8];
      v199 = sub_22C370828();
      v200 = v189(v199);
      MEMORY[0x2318B4570](v200);
      v201 = MEMORY[0x2318B4580]();
      sub_22C5DA04C(v201);
      sub_22C36ACD4();
      sub_22C5D9F9C(v202, v203, v204);
      sub_22C9087AC();
      sub_22C386A50();

      v206 = MEMORY[0x2318B4FD0](v205);
      sub_22C375F08(v206);
      v207 = sub_22C3723A8();
      v196(v207);
      v208 = sub_22C37F37C();
      v209 = v189(v208);
      MEMORY[0x2318B4570](v209);
      MEMORY[0x2318B4580]();
      sub_22C9070BC();
      sub_22C5D9EFC();
      sub_22C9065AC();
      if (v210)
      {
        sub_22C3887F0();
        sub_22C375A18(*(v0 + 624));
        sub_22C38C3E4();
        sub_22C90882C();

        *v546 = v198;
        v1[1] = 1;
        v211 = sub_22C386268();
        v212(v211);
        v213 = sub_22C37F8C4();
        v214(v213);

        MEMORY[0x2318B4570](v215);
        MEMORY[0x2318B4580]();
        sub_22C9070BC();
        sub_22C36ACD4();
        sub_22C3831F8(v216, v217, v218);
        sub_22C36BECC();
        sub_22C36C640(v219, v220, v221, v579);
      }

      else
      {
        sub_22C36A748();
        sub_22C36C640(v386, v387, v388, v389);
      }

      v390 = *(v0 + 624);
      v562 = *(v0 + 616);
      v391 = *(v0 + 456);
      sub_22C36ED58(*(v0 + 312));
      v392 = sub_22C3A5908(&qword_27D9BEEB8, &qword_22C9214E8);
      v393 = sub_22C377550(v392);
      v394 = sub_22C372A18(v393, xmmword_22C90D070);
      v188(v394);
      sub_22C36BECC();
      sub_22C36C640(v395, v396, v397, v391);
      v398 = sub_22C5D9FDC();
      v188(v398);
      sub_22C36BECC();
      sub_22C5DA0A8(v399, v400, v401);
      sub_22C3DB138(v390, v402, &qword_27D9BAA18, &qword_22C911C40);
      sub_22C9087AC();
      sub_22C37AC70();

      MEMORY[0x2318B4B50](v403);
      sub_22C5D9F78(0xD00000000000005FLL);
      sub_22C3A5908(&qword_27D9BEEC0, &qword_22C9214F0);
      sub_22C3A5908(&qword_27D9BEEC8, &qword_22C9214F8);
      sub_22C3799A8();
      *(sub_22C374D38() + 16) = xmmword_22C90FB40;
      sub_22C5D9EDC();
      sub_22C9068FC();
      sub_22C36BECC();
      sub_22C5DA028(v404, v405, v406);
      sub_22C36C000();
      sub_22C5DA068(v407);
      sub_22C36BECC();
      sub_22C36C640(v408, v409, v410, v390);
      v411 = sub_22C371A38();
      sub_22C3DB138(v411, v412, &qword_27D9BAA18, &qword_22C911C40);
      v413 = sub_22C3707B4();
      if (sub_22C370B74(v413, v414, v391) == 1)
      {
        sub_22C36DD28(*(v0 + 616), &qword_27D9BAA18, &qword_22C911C40);
      }

      else
      {
        sub_22C9068FC();
        v415 = sub_22C36BBCC();
        v416(v415);
      }

      sub_22C37FE60();
      sub_22C5D9FEC(v417, v418, v419, v420);
      sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
      v421 = sub_22C909F0C();
      sub_22C5D448C(v421);

      sub_22C36BAFC();
      sub_22C906AAC();
      v422 = sub_22C370288();
      v424 = v423(v422);
      MEMORY[0x2318B4570](v424);
      MEMORY[0x2318B4580]();
      sub_22C9070BC();
      sub_22C3735F4();
      sub_22C37A1B8();
      sub_22C36BECC();
      sub_22C36C640(v425, v426, v427, v562);
      sub_22C381AFC();
      do
      {
        v428 = *(v0 + 600);
        sub_22C3872CC();
        sub_22C3827D0();
        v429 = sub_22C5D9FC0();
        if (v429 == 1)
        {
          sub_22C3816D4(v429, *(v0 + 600));
        }

        else
        {
          sub_22C5DA09C();
          v428();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C5D9F54();
          }

          sub_22C36FD88();
          if (v148)
          {
            sub_22C5D9F30();
          }

          v430 = sub_22C36A064();
          (v428)(v430);
        }

        sub_22C3856D0();
      }

      while (!v150);
      v151 = *(v0 + 624);
      v153 = *(v0 + 480);
      v152 = *(v0 + 488);
      v154 = *(v0 + 456);
      v155 = *(v0 + 464);
      v156 = *(v0 + 248);
      v581 = *(v0 + 256);
      v157 = *(v0 + 240);
      goto LABEL_27;
    }

    if (v4 == *MEMORY[0x277D1E1F0])
    {
      v307 = *(v0 + 992);
      v308 = *(v0 + 792);
      v309 = *(v0 + 784);
      v310 = *(v0 + 776);
      (*(*(v0 + 984) + 96))(v307, *(v0 + 976));
      (*(v309 + 32))(v308, v307, v310);
      v311 = sub_22C907B3C();
      if (v312)
      {
        v313 = *(v0 + 856);
        v314 = *(v0 + 816);
        v315 = *(v0 + 808);
        sub_22C36A748();
        sub_22C36C640(v316, v317, v318, v319);
        sub_22C9087AC();
        sub_22C90882C();

        sub_22C9068FC();
        v576 = *(v314 + 104);
        v320 = v576(v313, *MEMORY[0x277D1D9F8], v315);
        MEMORY[0x2318B4570](v320);
        MEMORY[0x2318B4580]();
        sub_22C9070BC();
        sub_22C36BAFC();
        sub_22C90708C();
      }

      else
      {
        v431 = v311;
        v432 = *(v0 + 856);
        v433 = *(v0 + 816);
        v434 = *(v0 + 808);
        v584 = *(v0 + 456);
        sub_22C9087AC();
        sub_22C90882C();

        *v432 = v431;
        v435 = *MEMORY[0x277D1DED0];
        sub_22C906F2C();
        sub_22C36985C();
        (*(v436 + 104))(v432, v435);
        v437 = *(v433 + 104);
        v438 = v437(v432, *MEMORY[0x277D1DAA8], v434);
        MEMORY[0x2318B4570](v438);
        MEMORY[0x2318B4580]();
        sub_22C9070BC();
        sub_22C36ACD4();
        sub_22C90708C();
        sub_22C9087AC();
        sub_22C90882C();

        sub_22C9068FC();
        sub_22C9068FC();
        sub_22C906D5C();
        v576 = v437;
        v439 = v437(v432, *MEMORY[0x277D1DA98], v434);
        MEMORY[0x2318B4570](v439);
        MEMORY[0x2318B4580]();
        sub_22C9070BC();
        sub_22C36ACD4();
        sub_22C90708C();
        sub_22C36BECC();
        sub_22C36C640(v440, v441, v442, v584);
      }

      v443 = *(v0 + 760);
      sub_22C3DB138(*(v0 + 768), v443, &qword_27D9BAA18, &qword_22C911C40);
      sub_22C369A54(v443);
      if (v150)
      {
        v455 = *(v0 + 464);
        v453 = (*(v455 + 80) + 32) & ~*(v455 + 80);
      }

      else
      {
        v449 = *(v0 + 576);
        v451 = *(v0 + 456);
        v450 = *(v0 + 464);
        v452 = *(v450 + 32);
        v452(v449, *(v0 + 760), v451);
        sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
        v453 = (*(v450 + 80) + 32) & ~*(v450 + 80);
        v454 = swift_allocObject();
        *(v454 + 16) = xmmword_22C90F800;
        v452(v454 + v453, v449, v451);
        v455 = *(v0 + 464);
      }

      v456 = *(v0 + 936);
      v457 = *(v0 + 856);
      v563 = *(v0 + 776);
      v567 = *(v0 + 792);
      v551 = *(v0 + 784);
      v556 = *(v0 + 768);
      v458 = *(v0 + 584);
      v459 = *(v0 + 456);
      v544 = *(v0 + 808);
      sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
      v460 = swift_allocObject();
      *(v460 + 16) = xmmword_22C90F870;
      (*(v455 + 16))(v460 + v453, v458, v459);
      sub_22C9087AC();
      sub_22C90882C();

      sub_22C9068FC();
      MEMORY[0x2318B3FC0](v456);
      v461 = v576(v457, *MEMORY[0x277D1DA80], v544);
      MEMORY[0x2318B4570](v461);
      MEMORY[0x2318B4580]();
      sub_22C9070BC();
      sub_22C3735F4();
      sub_22C90708C();
      sub_22C3CD204(v460);
      (*(v455 + 8))(v458, v459);
      sub_22C36DD28(v556, &qword_27D9BAA18, &qword_22C911C40);
      (*(v551 + 8))(v567, v563);
    }

    else
    {
      v366 = *(v0 + 992);
      v367 = *(v0 + 984);
      v368 = *(v0 + 976);
      if (v4 != *MEMORY[0x277D1E1C8])
      {
        v444 = sub_22C5D55D4();
        v445 = sub_22C36FBE4(&type metadata for PrescribedPlanGenerator.Error, v444);
        *v446 = 0;
        sub_22C382D44(v445, v446, v447, v448);
        (*(v367 + 8))(v366, v368);
        goto LABEL_30;
      }

      v369 = *(v0 + 440);
      v370 = *(v0 + 448);
      v371 = *(v0 + 432);
      v372 = *(v0 + 400);
      v373 = *(v0 + 384);
      v577 = *(v0 + 376);
      (*(v367 + 96))(v366, v368);
      (*(v369 + 32))(v370, v366, v371);
      sub_22C90878C();
      v374 = sub_22C9087DC();
      v375 = *(v373 + 8);
      v375(v372, v577);
      *(v0 + 88) = v374;
      sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
      sub_22C3D32C8(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420, MEMORY[0x277D1E9D8]);
      sub_22C907E2C();

      v376 = sub_22C3A5908(&qword_27D9BEED0, &unk_22C922F60);
      v377 = sub_22C36CCF8();
      if (sub_22C370B74(v377, v378, v376) == 1)
      {
        sub_22C36DD28(*(v0 + 408), &qword_27D9BEEA8, &qword_22C9214D0);
        v379 = sub_22C5D55D4();
        v380 = sub_22C36FBE4(&type metadata for PrescribedPlanGenerator.Error, v379);
        *v381 = 1;
        sub_22C382D44(v380, v381, v382, v383);
        v384 = sub_22C36BBCC();
        v385(v384);
        goto LABEL_30;
      }

      v463 = *(v0 + 416);
      v462 = *(v0 + 424);
      v465 = *(v0 + 400);
      v464 = *(v0 + 408);
      v585 = *(v0 + 376);
      v467 = *(v0 + 152);
      v466 = *(v0 + 160);
      v468 = *(v376 + 48);
      v469 = *(v463 + 48);
      *v462 = *v464;
      (*(v466 + 32))(v462 + v469, v464 + v468, v467);
      v470 = *v462;
      (*(v466 + 8))(v462 + *(v463 + 48), v467);
      sub_22C90878C();
      v471 = sub_22C9087DC();
      result = (v375)(v465, v585);
      if (v470 < 0)
      {
        __break(1u);
        return result;
      }

      v472 = *(v0 + 368);
      v473 = sub_22C6060C4(0, v470, v471);
      v475 = v474;
      v477 = v476;
      v479 = v478;

      *(v0 + 56) = v473;
      *(v0 + 64) = v475;
      *(v0 + 72) = v477;
      *(v0 + 80) = v479;
      v480 = sub_22C36BBCC();
      sub_22C3A5908(v480, v481);
      sub_22C3D32C8(&qword_27D9BEEE0, &qword_27D9BEED8, &unk_22C921500, MEMORY[0x277D1E9E0]);
      sub_22C907F6C();
      sub_22C902B3C();
      sub_22C369A54(v472);
      if (v150)
      {
        sub_22C36DD28(*(v0 + 368), &qword_27D9BD7C8, &unk_22C922F50);
        v482 = sub_22C5D55D4();
        v483 = sub_22C36FBE4(&type metadata for PrescribedPlanGenerator.Error, v482);
        *v484 = 1;
        sub_22C382D44(v483, v484, v485, v486);
        swift_unknownObjectRelease();
        v487 = sub_22C36BBCC();
        v488(v487);
        goto LABEL_30;
      }

      v489 = *(v0 + 920);
      v490 = *(v0 + 912);
      v491 = *(v0 + 872);
      v492 = *(v0 + 864);
      sub_22C902AFC();
      sub_22C36BBA8();
      v493 = sub_22C36BBCC();
      v494(v493);
      (*(v491 + 32))(v489, v490, v492);
      v495 = sub_22C907A0C();
      if (v496)
      {
        v497 = *(v0 + 920);
        v498 = *(v0 + 872);
        v499 = *(v0 + 864);
        v500 = *(v0 + 856);
        v501 = *(v0 + 816);
        v502 = *(v0 + 808);
        sub_22C36A748();
        sub_22C36C640(v503, v504, v505, v506);
        sub_22C9087AC();
        sub_22C5DA084();

        (*(v498 + 16))(v500, v497, v499);
        v578 = *(v501 + 104);
        v507 = v578(v500, *MEMORY[0x277D1D9F8], v502);
        MEMORY[0x2318B4570](v507);
        MEMORY[0x2318B4580]();
        sub_22C9070BC();
        sub_22C36ACD4();
        sub_22C90708C();
      }

      else
      {
        v508 = v495;
        v557 = *(v0 + 920);
        v564 = *(v0 + 936);
        v509 = *(v0 + 872);
        v510 = *(v0 + 856);
        v511 = *(v0 + 816);
        v512 = *(v0 + 808);
        v552 = *(v0 + 864);
        v572 = *(v0 + 456);
        sub_22C9087AC();
        sub_22C5DA084();

        *v510 = v508;
        v513 = *MEMORY[0x277D1DED0];
        sub_22C906F2C();
        sub_22C36985C();
        (*(v514 + 104))(v510, v513);
        v515 = *(v511 + 104);
        v516 = v515(v510, *MEMORY[0x277D1DAA8], v512);
        MEMORY[0x2318B4570](v516);
        MEMORY[0x2318B4580]();
        sub_22C9070BC();
        sub_22C36ACD4();
        sub_22C90708C();
        sub_22C9087AC();
        sub_22C5DA084();

        (*(v509 + 16))(v564, v557, v552);
        sub_22C9068FC();
        sub_22C906D5C();
        v578 = v515;
        v517 = v515(v510, *MEMORY[0x277D1DA98], v512);
        MEMORY[0x2318B4570](v517);
        MEMORY[0x2318B4580]();
        sub_22C9070BC();
        sub_22C36ACD4();
        sub_22C90708C();
        sub_22C36BECC();
        sub_22C36C640(v518, v519, v520, v572);
      }

      v521 = *(v0 + 744);
      sub_22C3DB138(*(v0 + 752), v521, &qword_27D9BAA18, &qword_22C911C40);
      sub_22C369A54(v521);
      if (v150)
      {
        v528 = *(v0 + 464);
        v526 = (*(v528 + 80) + 32) & ~*(v528 + 80);
      }

      else
      {
        v522 = *(v0 + 576);
        v524 = *(v0 + 456);
        v523 = *(v0 + 464);
        v525 = *(v523 + 32);
        v525(v522, *(v0 + 744), v524);
        sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
        v526 = (*(v523 + 80) + 32) & ~*(v523 + 80);
        v527 = swift_allocObject();
        *(v527 + 16) = xmmword_22C90F800;
        v525(v527 + v526, v522, v524);
        v528 = *(v0 + 464);
      }

      v529 = *(v0 + 936);
      v565 = *(v0 + 864);
      v568 = *(v0 + 920);
      v530 = *(v0 + 856);
      v540 = *(v0 + 808);
      v531 = *(v0 + 568);
      v532 = *(v0 + 456);
      v553 = *(v0 + 872);
      v558 = *(v0 + 448);
      v543 = *(v0 + 440);
      v545 = *(v0 + 752);
      v548 = *(v0 + 432);
      sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
      v533 = swift_allocObject();
      *(v533 + 16) = xmmword_22C90F870;
      (*(v528 + 16))(v533 + v526, v531, v532);
      sub_22C9087AC();
      sub_22C90882C();

      sub_22C9068FC();
      MEMORY[0x2318B3FC0](v529);
      v534 = v578(v530, *MEMORY[0x277D1DA80], v540);
      MEMORY[0x2318B4570](v534);
      MEMORY[0x2318B4580]();
      sub_22C9070BC();
      sub_22C3735F4();
      sub_22C90708C();
      sub_22C3CD204(v533);
      swift_unknownObjectRelease();
      (*(v528 + 8))(v531, v532);
      sub_22C36DD28(v545, &qword_27D9BAA18, &qword_22C911C40);
      (*(v553 + 8))(v568, v565);
      (*(v543 + 8))(v558, v548);
    }
  }

LABEL_28:
  v160 = *(v0 + 384);
  v159 = *(v0 + 392);
  v161 = *(v0 + 144);
  v574 = *(v0 + 376);
  v582 = *(v0 + 152);
  v162 = *(v0 + 136);
  (*(*(v0 + 200) + 104))(*(v0 + 208), *MEMORY[0x277D1E6A8], *(v0 + 192));
  sub_22C9088AC();
  sub_22C90889C();
  sub_22C90878C();
  v163 = sub_22C9087DC();
  (*(v160 + 8))(v159, v574);
  sub_22C3A5950(v163);

  sub_22C3DB138(v161, v162, &qword_27D9BA808, &qword_22C90C6E0);
  if (sub_22C370B74(v162, 1, v582) == 1)
  {
    v164 = *(v0 + 144);
    sub_22C36DD28(*(v0 + 136), &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C90735C();
    v165 = sub_22C3A5F00();
    v166 = sub_22C36FBE4(MEMORY[0x277D1DFB0], v165);
    v167 = *(v0 + 48);
    v168 = *(v0 + 32);
    *v169 = *(v0 + 16);
    *(v169 + 16) = v168;
    *(v169 + 32) = v167;
    sub_22C382D44(v166, v169, v170, v171);
    sub_22C36DD28(v164, &qword_27D9BA808, &qword_22C90C6E0);
    v172 = sub_22C36BBCC();
    v173(v172);
LABEL_30:

    v174 = *(v0 + 8);

    return v174();
  }

  v176 = *(v0 + 224);
  v536 = *(v0 + 232);
  v177 = *(v0 + 216);
  v538 = v177;
  v537 = *(v0 + 176);
  v178 = *(v0 + 160);
  v179 = *(v0 + 168);
  v180 = *(v0 + 152);
  v181 = *(v0 + 128);
  v182 = *(v0 + 136);
  v183 = *(v0 + 120);
  v535 = *(v0 + 112);
  sub_22C36DD28(*(v0 + 144), &qword_27D9BA808, &qword_22C90C6E0);
  v539 = *(v178 + 32);
  v539(v179, v182, v180);
  (*(v176 + 16))(v181, v536, v177);
  (*(v183 + 104))(v181, *MEMORY[0x277D1E6F8], v535);
  sub_22C90893C();
  (*(v183 + 8))(v181, v535);
  v184 = v180;
  (*(v178 + 8))(v179, v180);
  sub_22C3A5908(&qword_27D9BAE10, &unk_22C91DB10);
  v185 = (*(v178 + 80) + 32) & ~*(v178 + 80);
  v186 = swift_allocObject();
  *(v186 + 16) = xmmword_22C90F800;
  v539(v186 + v185, v537, v184);
  (*(v176 + 8))(v536, v538);

  v187 = *(v0 + 8);

  return v187(v186);
}