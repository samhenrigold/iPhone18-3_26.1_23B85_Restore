uint64_t sub_219143FFC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_21914459C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2191440D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_219144118()
{
  result = qword_27CC16948;
  if (!qword_27CC16948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16948);
  }

  return result;
}

void sub_21914418C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_17Tm_2()
{

  return swift_deallocObject();
}

uint64_t sub_219144298()
{
  __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  v1 = off_282A6EDF8[0];
  v2 = type metadata accessor for MagazineCategoryConfigService(0);
  return v1(v2);
}

uint64_t sub_219144364(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2191443C4()
{
  v1 = *(v0 + 24);
  v2 = off_282A4D758;
  type metadata accessor for TagService();
  return v2(v1);
}

uint64_t sub_219144454(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_21914418C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2191444D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_219144534(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21914459C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2191445EC(uint64_t a1)
{
  if (!qword_27CC16980)
  {
    sub_219144660(255, &qword_27CC16910, MEMORY[0x277D834F8]);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC16980);
    }
  }
}

void sub_219144660(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0], MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2191446D8()
{
  result = qword_27CC16990;
  if (!qword_27CC16990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16990);
  }

  return result;
}

double _s7NewsUI222IssueLinkActionHandlerC6handle6action7trackery0A8Articles0dE0O_12AppAnalytics7TrackerCtF_0(uint64_t a1, uint64_t a2)
{
  v185 = a1;
  sub_2186E5554(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v3 - 8);
  v164 = &v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v169 = &v161 - v6;
  v167 = sub_219BDD534();
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v165 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_219BDD4B4();
  v8 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v10 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_219BDE294();
  v177 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v171 = &v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v174 = &v161 - v13;
  sub_2186E5554(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v175 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v162 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v163 = (&v161 - v17);
  MEMORY[0x28223BE20](v18);
  v168 = &v161 - v19;
  MEMORY[0x28223BE20](v20);
  v170 = &v161 - v21;
  MEMORY[0x28223BE20](v22);
  v173 = &v161 - v23;
  v176 = v24;
  MEMORY[0x28223BE20](v25);
  v181 = &v161 - v26;
  v172 = type metadata accessor for WebLinkViewControllerType(0);
  MEMORY[0x28223BE20](v172);
  v180 = &v161 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_219BDD434();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (&v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v182 = sub_219BDB954();
  v183 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v179 = &v161 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v161 - v34;
  v36 = sub_219BDD0A4();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = (&v161 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    *v40 = 1802398060;
    v40[1] = 0xE400000000000000;
    (*(v37 + 104))(v40, *MEMORY[0x277CEAE40], v36, v38);
    sub_219BDD204();
    (*(v37 + 8))(v40, v36);
  }

  v29[2](v31, v185, v28, v38);
  v41 = (v29[11])(v31, v28);
  if (v41 == *MEMORY[0x277D2F978])
  {
    goto LABEL_4;
  }

  if (v41 == *MEMORY[0x277D2F968])
  {
    (v29[12])(v31, v28);
    sub_218DB63C8(0);
    v45 = v183;
    v46 = v179;
    v47 = v182;
    (*(v183 + 32))(v179, v31, v182);
    v48 = *(v45 + 16);
    v49 = v180;
    v48(v180, v46, v47);
    swift_storeEnumTagMultiPayload();
    v50 = *(v184 + 16);
    v51 = swift_allocBox();
    sub_218DB6434(v49, v52);
    v186 = v51;
    v53 = v51 | 0xB000000000000000;
    v54 = sub_219BDFA44();
    v55 = v181;
    (*(*(v54 - 8) + 56))(v181, 1, 1, v54);
    v199 = 0;
    v197 = 0u;
    v198 = 0u;
    v196 = 0;
    v194 = 0u;
    v195 = 0u;
    v193 = v50;
    sub_2187B14CC(&v194, &v188, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (!*(&v189 + 1))
    {
      sub_2187448D0(&v188, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v57 = qword_280ED32D8;
      v56 = qword_280ED32E0;
      v58 = qword_280ED32E8;

      sub_2188202A8(v56);
      goto LABEL_24;
    }

    sub_21875F93C(&v188, &v190);
    if (qword_280ED32D0 == -1)
    {
LABEL_8:
      v57 = qword_280ED32D8;
      v56 = qword_280ED32E0;
      v58 = qword_280ED32E8;

      sub_2188202A8(v56);
      __swift_destroy_boxed_opaque_existential_1(&v190);
LABEL_24:
      v187 = v53;
      v189 = 0u;
      v188 = 0u;
      v97 = v173;
      sub_2189B4E2C(v55, v173);
      sub_2187B14CC(&v197, &v190, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v98 = (*(v175 + 80) + 24) & ~*(v175 + 80);
      v99 = (v176 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
      v100 = (v99 + 47) & 0xFFFFFFFFFFFFFFF8;
      v101 = swift_allocObject();
      *(v101 + 16) = 0;
      sub_218DB61E8(v97, v101 + v98, &qword_280EE8610, MEMORY[0x277D2DED0]);
      v102 = v101 + v99;
      v103 = v191;
      *v102 = v190;
      *(v102 + 16) = v103;
      *(v102 + 32) = v192;
      v104 = (v101 + v100);
      v105 = (v101 + ((v100 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v104 = 0;
      v104[1] = 0;
      *v105 = v57;
      v105[1] = v56;
      v105[2] = v58;

      sub_2188202A8(v56);
      sub_2186CF94C(0);
      sub_219146D64(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
      sub_219BEB464();

      sub_2187FABEC(v56, v58);
      sub_2187448D0(&v194, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_2187448D0(&v197, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_218DB6258(v181, &qword_280EE8610, MEMORY[0x277D2DED0]);
      sub_218DB6700(v180);
      (*(v183 + 8))(v179, v47);
LABEL_25:
      sub_2187448D0(&v188, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F84F8);

      return result;
    }

LABEL_50:
    swift_once();
    goto LABEL_8;
  }

  if (v41 == *MEMORY[0x277D2F960])
  {
    v181 = a2;
    (v29[12])(v31, v28);
    v55 = *v31;
    v185 = v31[1];
    sub_218DB635C(0);
    (*(v177 + 32))(v174, v31 + *(v59 + 48), v178);
    v180 = OBJC_IVAR____TtC7NewsUI222IssueLinkActionHandler_issue;
    v53 = v184 + OBJC_IVAR____TtC7NewsUI222IssueLinkActionHandler_issue;
    v60 = sub_219BDD754();
    v61 = 0;
    v62 = *(v60 + 16);
    v47 = (v8 + 8);
    while (1)
    {
      if (v62 == v61)
      {

        v112 = *(v183 + 56);
        v113 = v169;
        v114 = v182;
        v112(v169, 1, 1, v182);
        v115 = v165;
        sub_219BDD514();
        v116 = v184;
        *&v197 = *(v184 + 16);
        sub_2187B2C48(0);
        v118 = v117;
        v186 = swift_allocBox();
        v120 = v119;
        v121 = *(v118 + 48);
        sub_2187B2DA0(0);
        v123 = *(v122 + 48);
        v112(v113, 1, 1, v114);

        sub_219BDD894();
        sub_218DB6258(v113, &unk_280EE9D00, MEMORY[0x277CC9260]);
        *(v120 + v123) = MEMORY[0x277D84F90];
        *(v120 + v121) = &unk_282A25DD8;
        *&v194 = v186 | 2;
        v124 = swift_allocObject();
        *(v124 + 16) = v181;
        *(v124 + 24) = v116;
        sub_2186CF94C(0);
        sub_219146D64(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);

        sub_219BEB4A4();

        sub_218932F9C(v194);

        (*(v166 + 8))(v115, v167);
        goto LABEL_29;
      }

      if (v61 >= *(v60 + 16))
      {
        break;
      }

      (*(v8 + 16))(v10, v60 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v61, v186);
      v64 = sub_219BDD4A4();
      v53 = v65;
      if (v64 == v55 && v65 == v185)
      {

        (*v47)(v10, v186);
LABEL_17:

        v66 = v184;
        v67 = sub_219BDD744();
        *&v197 = *(v66 + 16);
        v68 = swift_allocObject();
        LOBYTE(v190) = 0;
        *(v68 + 16) = 0;
        *(v68 + 24) = 0;
        *(v68 + 40) = 0;
        *(v68 + 48) = 0;
        *(v68 + 32) = v67;
        *(v68 + 56) = 0;
        *(v68 + 63) = 0;
        *(v68 + 61) = 0;
        *(v68 + 57) = 0;
        *(v68 + 64) = MEMORY[0x277D84F90];
        v69 = v185;
        *(v68 + 88) = v55;
        *(v68 + 96) = v69;
        *(v68 + 104) = &unk_282A25DB0;
        *&v194 = v68 | 0x5000000000000006;
        v70 = swift_allocObject();
        *(v70 + 16) = v181;
        *(v70 + 24) = v66;
        sub_2186CF94C(0);
        sub_219146D64(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);

        v71 = v67;

        sub_219BEB4A4();

        sub_218932F9C(v194);

LABEL_29:
        (*(v177 + 8))(v174, v178);
        return result;
      }

      ++v61;
      v63 = sub_219BF78F4();

      (*v47)(v10, v186);
      if (v63)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  if (v41 == *MEMORY[0x277D2F970])
  {
    v181 = a2;
    (v29[12])(v31, v28);
    sub_218DB62B4(0);
    v73 = v177;
    v74 = v171;
    v75 = v178;
    (*(v177 + 32))(v171, v31 + *(v72 + 64), v178);
    sub_219BDEA94();
    (*(v183 + 56))(v169, 1, 1, v182);
    v76 = MEMORY[0x277D84F90];
    sub_2187B3078(MEMORY[0x277D84F90]);
    v77 = sub_219BDEA44();
    v78 = *(v184 + 16);
    sub_2187B2C48(0);
    v80 = v79;
    v81 = swift_allocBox();
    v83 = v82;
    v84 = *(v80 + 48);
    sub_2187B2DA0(0);
    v86 = *(v85 + 48);
    sub_2187B3004(0);
    v88 = *(v87 + 48);
    *v83 = v77;
    (*(v73 + 16))(v83 + v88, v74, v75);
    sub_219BDD944();
    swift_storeEnumTagMultiPayload();
    *(v83 + v86) = v76;
    *(v83 + v84) = v76;
    v186 = v81;
    v89 = v81 | 2;
    v90 = sub_219BDFA44();
    v91 = v170;
    (*(*(v90 - 8) + 56))(v170, 1, 1, v90);
    v199 = 0;
    v197 = 0u;
    v198 = 0u;
    v196 = 0;
    v194 = 0u;
    v195 = 0u;
    v193 = v78;
    sub_2187B14CC(&v194, &v188, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (*(&v189 + 1))
    {
      sub_21875F93C(&v188, &v190);
      *&v188 = v81 | 2;

      v92 = sub_2194DA78C(&v190);
      v94 = v93;
      v96 = v95;
      __swift_destroy_boxed_opaque_existential_1(&v190);
    }

    else
    {

      sub_2187448D0(&v188, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v92 = qword_280ED32D8;
      v94 = qword_280ED32E0;
      v96 = qword_280ED32E8;

      sub_2188202A8(v94);
    }

    v139 = v181;
    v187 = v89;
    v185 = v77;
    if (v181)
    {
      v140 = sub_219BDD274();
      v141 = v139;
    }

    else
    {
      v141 = 0;
      v140 = 0;
      *&v189 = 0;
      *(&v188 + 1) = 0;
    }

    *&v188 = v141;
    *(&v189 + 1) = v140;
    v142 = v168;
    sub_2189B4E2C(v91, v168);
    sub_2187B14CC(&v197, &v190, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v143 = (*(v175 + 80) + 24) & ~*(v175 + 80);
    v144 = (v176 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
    v145 = (v144 + 47) & 0xFFFFFFFFFFFFFFF8;
    v146 = swift_allocObject();
    *(v146 + 16) = v139;
    sub_218DB61E8(v142, v146 + v143, &qword_280EE8610, MEMORY[0x277D2DED0]);
    v147 = v146 + v144;
    v148 = v191;
    *v147 = v190;
    *(v147 + 16) = v148;
    *(v147 + 32) = v192;
    v149 = (v146 + v145);
    v150 = (v146 + ((v145 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v149 = 0;
    v149[1] = 0;
    *v150 = v92;
    v150[1] = v94;
    v150[2] = v96;
    swift_retain_n();

    sub_2188202A8(v94);
    sub_2186CF94C(0);
    sub_219146D64(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
    sub_219BEB464();

    sub_2187FABEC(v94, v96);

    sub_2187448D0(&v194, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187448D0(&v197, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218DB6258(v170, &qword_280EE8610, MEMORY[0x277D2DED0]);
    (*(v177 + 8))(v171, v178);
    goto LABEL_25;
  }

  if (v41 == *MEMORY[0x277D2F958])
  {
    (v29[12])(v31, v28);
    v106 = a2;
    v107 = *v31;
    v108 = v31[1];
    v109 = v184;
    *&v197 = *(v184 + 16);
    v110 = swift_allocObject();
    *(v110 + 16) = v107;
    *(v110 + 24) = v108;
    *(v110 + 32) = MEMORY[0x277D84F90];
    *(v110 + 56) = 0x4000000000000000;
    *&v194 = v110 | 0x5000000000000000;
    v111 = swift_allocObject();
    *(v111 + 16) = v106;
    *(v111 + 24) = v109;
    sub_2186CF94C(0);
    sub_219146D64(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);

    sub_219BEB4A4();

    sub_218932F9C(v194);

    return result;
  }

  if (v41 != *MEMORY[0x277D2F950])
  {
    if (v41 == *MEMORY[0x277D2F948] || v41 == *MEMORY[0x277D2F940])
    {
LABEL_4:
      (v29[12])(v31, v28);
      v42 = v183;
      v43 = v182;
      (*(v183 + 32))(v35, v31, v182);
      __swift_project_boxed_opaque_existential_1((v184 + OBJC_IVAR____TtC7NewsUI222IssueLinkActionHandler_urlHandler), *(v184 + OBJC_IVAR____TtC7NewsUI222IssueLinkActionHandler_urlHandler + 24));
      sub_219BE6DC4();
      (*(v42 + 8))(v35, v43);
      return result;
    }

    sub_219BF7514();
    __break(1u);
    goto LABEL_45;
  }

  (v29[12])(v31, v28);
  v125 = *v31;
  v126 = v31[1];
  sub_218DB60E0(0);
  v128 = v164;
  sub_218DB61E8(v31 + *(v127 + 48), v164, &unk_280EE9D00, MEMORY[0x277CC9260]);
  v29 = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
  v129 = OBJC_IVAR___TSFeedViewContext_sourceURL;
  swift_beginAccess();
  sub_218DB6168(v128, v29 + v129);
  swift_endAccess();
  v130 = *(v184 + 16);
  v131 = swift_allocObject();
  *(v131 + 16) = v125;
  *(v131 + 24) = v126;
  v132 = MEMORY[0x277D84F90];
  *(v131 + 32) = v29;
  *(v131 + 40) = v132;
  *(v131 + 48) = 1;
  *(v131 + 56) = 0u;
  *(v131 + 72) = 0u;
  *(v131 + 88) = 0;
  *(v131 + 96) = -1;
  a2 = v131 | 0x2000000000000006;
  v133 = sub_219BDFA44();
  v40 = v163;
  (*(*(v133 - 8) + 56))(v163, 1, 1, v133);
  v199 = 0;
  v197 = 0u;
  v198 = 0u;
  v196 = 0;
  v194 = 0u;
  v195 = 0u;
  v193 = v130;
  sub_2187B14CC(&v194, &v188, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  v186 = v29;
  if (!*(&v189 + 1))
  {
LABEL_45:
    v151 = v29;
    sub_2187448D0(&v188, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v137 = qword_280ED32D8;
    v136 = qword_280ED32E0;
    v138 = qword_280ED32E8;

    sub_2188202A8(v136);
    goto LABEL_48;
  }

  sub_21875F93C(&v188, &v190);
  v134 = qword_280ED32D0;
  v135 = v29;
  if (v134 != -1)
  {
    swift_once();
  }

  v137 = qword_280ED32D8;
  v136 = qword_280ED32E0;
  v138 = qword_280ED32E8;

  sub_2188202A8(v136);
  __swift_destroy_boxed_opaque_existential_1(&v190);
LABEL_48:
  v187 = a2;
  v189 = 0u;
  v188 = 0u;
  v152 = v162;
  sub_2189B4E2C(v40, v162);
  sub_2187B14CC(&v197, &v190, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v153 = (*(v175 + 80) + 24) & ~*(v175 + 80);
  v154 = (v176 + v153 + 7) & 0xFFFFFFFFFFFFFFF8;
  v155 = (v154 + 47) & 0xFFFFFFFFFFFFFFF8;
  v156 = swift_allocObject();
  *(v156 + 16) = 0;
  sub_218DB61E8(v152, v156 + v153, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v157 = v156 + v154;
  v158 = v191;
  *v157 = v190;
  *(v157 + 16) = v158;
  *(v157 + 32) = v192;
  v159 = (v156 + v155);
  v160 = (v156 + ((v155 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v159 = 0;
  v159[1] = 0;
  *v160 = v137;
  v160[1] = v136;
  v160[2] = v138;

  sub_2188202A8(v136);
  sub_2186CF94C(0);
  sub_219146D64(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  sub_219BEB464();

  sub_2187FABEC(v136, v138);

  sub_2187448D0(&v194, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(&v197, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218DB6258(v163, &qword_280EE8610, MEMORY[0x277D2DED0]);
  sub_218DB6258(v164, &unk_280EE9D00, MEMORY[0x277CC9260]);
  sub_2187448D0(&v188, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F84F8);

  return result;
}

double sub_21914699C(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (!a2)
  {
  }

  sub_219BDD274();

  sub_219BE1B94();

  return result;
}

uint64_t IssueLinkActionHandler.deinit()
{

  v1 = OBJC_IVAR____TtC7NewsUI222IssueLinkActionHandler_issue;
  v2 = sub_219BDEE34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI222IssueLinkActionHandler_urlHandler));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t IssueLinkActionHandler.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC7NewsUI222IssueLinkActionHandler_issue;
  v2 = sub_219BDEE34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI222IssueLinkActionHandler_urlHandler));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IssueLinkActionHandler(uint64_t a1)
{
  result = qword_27CC169C0;
  if (!qword_27CC169C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219146C98(uint64_t a1)
{
  result = sub_219BDEE34();
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

uint64_t sub_219146D64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_219146F2C()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_blueprintViewController];
  [v0 addChildViewController_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  result = [v2 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  result = [v2 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = [v1 view];
  if (result)
  {
    v7 = result;
    [result bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v6 setFrame_];
    sub_219BE8664();
    v16 = sub_219BE7BC4();

    sub_218807578(0);
    sub_218713968(&qword_280E90610, 255, sub_218807578, MEMORY[0x277D33560]);
    sub_219BF6C74();

    sub_219BE8664();
    v17 = sub_219BE7BC4();

    [v1 setContentScrollView:v17 forEdge:15];

    sub_219BF2394();
    v18 = sub_219BF2364();
    MEMORY[0x21CEC9110]();

    v19 = sub_219BF53D4();

    [v1 setTitle_];

    v20 = sub_219BF65B4();
    v21 = [v1 title];
    [v20 setTitle_];

    v22 = [v1 traitCollection];
    sub_2191495D4();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_218713968(&qword_27CC16A10, v23, type metadata accessor for SharedWithYouFeedViewController, &unk_219C60678);
    sub_218713968(&qword_27CC16A18, v24, type metadata accessor for SharedWithYouFeedViewController, &unk_219C607FC);

    sub_219BEEA54();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2191472F8()
{
  v0 = sub_219BEDA44();
  MEMORY[0x28223BE20](v0);
  sub_219BEDA34();
  sub_218713968(&qword_280E92580, 255, MEMORY[0x277D31D00], MEMORY[0x277D31CF8]);
  return sub_219BF1C54();
}

void sub_2191473EC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_blueprintViewController);

    sub_219BE8664();
    v4 = sub_219BE7BC4();

    [v4 reloadData];
  }
}

void sub_2191475C4(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_219BE7C14();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22.receiver = v2;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, sel_viewWillAppear_, a1 & 1, v7);
  v10 = [v2 view];
  if (v10)
  {
    v11 = v10;
    v12 = sub_219BF6C14();

    if (v12)
    {

      sub_219BE8664();
      v13 = sub_219BE7BC4();

      sub_219BF6C34();
    }

    swift_getObjectType();
    sub_219BE7544();
    sub_219BE5CC4();
    v21[1] = sub_219BE5CA4();
    v14 = [v2 title];
    if (v14)
    {
      v21[0] = v9;
      v15 = v6;
      v16 = v5;
      v17 = v14;
      v18 = sub_219BF5414();
      v20 = v19;

      v5 = v16;
      v6 = v15;
      v9 = v21[0];
    }

    else
    {
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    *v9 = v18;
    v9[1] = v20;
    (*(v6 + 104))(v9, *MEMORY[0x277D6DCB0], v5);
    sub_219BE7C24();
    sub_218713968(&qword_280EE4E50, 255, MEMORY[0x277D6DCC8], MEMORY[0x277D6DCB8]);
    sub_219BE7514();
    (*(v6 + 8))(v9, v5);

    sub_2191478A4([*&v2[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_userInfo] markSharedWithYouAsViewed]);
  }

  else
  {
    __break(1u);
  }
}

double sub_2191478A4(uint64_t a1)
{
  sub_219BEAE34();
  sub_219BEE674();
  v6 = 0;
  v7 = sub_219BEE664();
  v4 = 0u;
  v5 = 0u;
  sub_219BE6A74();

  sub_2191497B4(&v4, sub_219149814);

  sub_219BEAE44();
  v1 = sub_219BEE664();
  v6 = 0;
  v7 = v1;
  v4 = 0u;
  v5 = 0u;
  sub_219BE6A74();

  sub_2191497B4(&v4, sub_219149814);

  sub_219BEAE54();
  v2 = sub_219BEE664();
  v6 = 0;
  v7 = v2;
  v4 = 0u;
  v5 = 0u;
  sub_219BE6A74();

  sub_2191497B4(&v4, sub_219149814);

  return result;
}

id sub_219147A60(char a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, a1 & 1);
  result = [v1 view];
  if (result)
  {
    v4 = result;
    v5 = [result window];

    if (v5)
    {
      v6 = [v5 windowScene];

      if (v6)
      {
        v7 = [v1 title];
        [v6 setTitle_];
      }
    }

    return sub_219BE7884();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219147D6C()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  *v7 = sub_219BF1554();
  v7[1] = v8;
  v9 = sub_219BE5AA4();
  v10 = MEMORY[0x277D6D2E8];
  v7[5] = v9;
  v7[6] = v10;
  __swift_allocate_boxed_opaque_existential_1(v7 + 2);
  sub_219BE5A94();
  v7[7] = sub_219BF1534();
  v7[8] = v11;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219147F90()
{
  v19 = sub_219BEB384();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BEB394();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_219BE8644();
  sub_2189DA200(0);
  v10 = &v6[*(v9 + 48)];
  v11 = *(v9 + 64);
  sub_219BE66B4();
  v12 = sub_219BE6C74();
  v13 = MEMORY[0x277D6D7C0];
  v10[3] = v12;
  v10[4] = v13;
  __swift_allocate_boxed_opaque_existential_1(v10);
  sub_219BE6C64();
  v14 = *MEMORY[0x277D6D9C8];
  v15 = sub_219BE73A4();
  (*(*(v15 - 8) + 104))(&v6[v11], v14, v15);
  (*(v4 + 104))(v6, *MEMORY[0x277D6EC90], v3);
  v16 = v19;
  (*(v0 + 104))(v2, *MEMORY[0x277D6ECA8], v19);
  sub_219BE6BD4();

  (*(v0 + 8))(v2, v16);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2191482A4()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8644();
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC88], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219148480()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  if (qword_280E92A48 != -1)
  {
    swift_once();
  }

  v8 = sub_219BF01B4();
  v9 = __swift_project_value_buffer(v8, qword_280F61940);
  v7[3] = v8;
  v7[4] = sub_218713968(&qword_280E91000, 255, MEMORY[0x277D32BC8], MEMORY[0x277D32BC0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v13 = sub_219BF54E4();
  v15 = v14;

  v7[5] = v13;
  v7[6] = v15;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC80], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECB0], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_2191487D8(uint64_t a1)
{
  sub_219BE8664();
  v1 = sub_219BE7BC4();

  [v1 reloadData];
}

uint64_t sub_219148844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [v4 tabBarSplitViewFocusable];
  if (v7)
  {
    [v7 toggleSplitViewFocusTo_];
    swift_unknownObjectRelease();
  }

  v8 = *&v4[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_eventHandler];
  __swift_project_boxed_opaque_existential_1(v8 + 11, v8[14]);
  sub_2191FE9CC();
  v9 = v8[5];
  ObjectType = swift_getObjectType();
  return (*(v9 + 56))(a2, 0, a4, ObjectType, v9);
}

void sub_219148900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a3, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v9, v5);
LABEL_3:
    v11 = *(*(v3 + OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v11 + 40))(ObjectType, v11);
    return;
  }

  if (v10 == *MEMORY[0x277D6E928])
  {
    v13 = *(*(v3 + OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_eventHandler) + 40);
    v14 = swift_getObjectType();
    (*(v13 + 32))(v14, v13);
  }

  else
  {
    if (v10 == *MEMORY[0x277D6E948])
    {
      goto LABEL_3;
    }

    if (v10 != *MEMORY[0x277D6E978])
    {
      if (v10 == *MEMORY[0x277D6E930])
      {
        goto LABEL_3;
      }

      if (v10 != *MEMORY[0x277D6E958])
      {
        if (v10 == *MEMORY[0x277D6E970])
        {
          sub_219BE8664();
          v15 = sub_219BE7BC4();

          v16 = [v15 collectionViewLayout];

          [v16 invalidateLayout];
          sub_219BE8664();
          v17 = sub_219BE7BC4();

          [v17 reloadData];
        }

        else
        {
          (*(v6 + 8))(v9, v5);
        }
      }
    }
  }
}

void sub_219148B9C(uint64_t a1, char a2)
{
  v3 = sub_219BEB384();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEB394();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    sub_219BE8644();
    if (qword_280E92A48 != -1)
    {
      swift_once();
    }

    v11 = sub_219BF01B4();
    v12 = __swift_project_value_buffer(v11, qword_280F61940);
    v10[3] = v11;
    v10[4] = sub_218713968(&qword_280E91000, 255, MEMORY[0x277D32BC8], MEMORY[0x277D32BC0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v12, v11);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v16 = sub_219BF54E4();
    v18 = v17;

    v10[5] = v16;
    v10[6] = v18;
    (*(v8 + 104))(v10, *MEMORY[0x277D6EC80], v7);
    (*(v4 + 104))(v6, *MEMORY[0x277D6ECB0], v3);
    sub_219BE6BD4();

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_219148EF8()
{
  sub_218985EAC(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C40500(0);
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_218EA89D8(0);
    v12 = &v7[*(v13 + 48)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218EA8964(0);
    v10 = *(v9 + 48);
    v11 = sub_219BF1584();
    (*(*(v11 - 8) + 8))(&v7[v10], v11);
    v12 = v7;
LABEL_5:
    sub_2191497B4(v12, type metadata accessor for SharedWithYouFeedGapLocation);
    return 0;
  }

  (*(v2 + 32))(v4, v7, v1);
  sub_219BF07D4();
  swift_unknownObjectRetain();

  sub_219BE5F84();
  v15 = sub_219BF4FC4();
  swift_unknownObjectRelease();

  (*(v2 + 8))(v4, v1);
  return v15;
}

double sub_219149200(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE8F74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1((*(v2 + OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_eventHandler) + 88), *(*(v2 + OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_eventHandler) + 112));
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_219BDD154();

  return result;
}

uint64_t sub_21914938C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 48))(a2, ObjectType, v4);
}

uint64_t sub_219149564(uint64_t a1)
{
  v3 = *(sub_219BE8F74() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2191FDEB4(a1, v4);
}

void sub_2191495D4()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_styler], v12);
  v3 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    v6 = *(*__swift_project_boxed_opaque_existential_1((*v3 + 16), *(*v3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    [v5 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v12);
    v7 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    sub_219BE8664();
    v8 = sub_219BE7BC4();

    [v8 setBackgroundColor_];
    [v8 setAlwaysBounceVertical_];
    [v8 setContentInset_];

    v9 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    v10 = [v1 navigationItem];
    v11 = *(*__swift_project_boxed_opaque_existential_1((*v9 + 16), *(*v9 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    sub_219BEDA04();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2191497B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219149814(uint64_t a1)
{
  if (!qword_280EE5AD0)
  {
    sub_2186CFDE4(255, &qword_280EE5AE0, MEMORY[0x277D6D540]);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5AD0);
    }
  }
}

uint64_t sub_219149884(uint64_t a1, uint64_t a2)
{
  sub_21875D3C8(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_219BE20E4();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_21914FA30(v8, Strong);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

void sub_2191499E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        sub_21914FA30(a1, v5);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_219149A90(uint64_t a1)
{
  swift_getObjectType();
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  v1 = qword_280F616F8;
  v2 = sub_219BF6214();
  sub_219BE5314("Audio feed starting prewarming", 30, 2, &dword_2186C1000, v1, v2, MEMORY[0x277D84F90]);
  v3 = CACurrentMediaTime();
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v5 = sub_219BF5054();
  MEMORY[0x28223BE20](v5);
  sub_219BE3204();
  sub_2187D9028();
  v6 = sub_219BF66A4();
  sub_219BE95D4();
  sub_219BE2F84();

  v7 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v3;
  sub_219BE2F94();

  v8 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v3;
  sub_219BE2FE4();
}

uint64_t sub_219149D6C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory), *(a2 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory + 24));
  v4 = off_282A42D88[0];
  type metadata accessor for AudioFeedBlueprintModifierFactory();
  v4(v2, v3);
  sub_218CF947C(0);
  sub_21915037C(&unk_280EE5660, sub_218CF947C, MEMORY[0x277D6D890]);
  v5 = sub_219BE6E84();

  return v5;
}

uint64_t sub_219149E7C(double a1, uint64_t a2, uint64_t a3)
{
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v4 = MEMORY[0x277D83A80];
  *(v3 + 56) = MEMORY[0x277D839F8];
  *(v3 + 64) = v4;
  *(v3 + 32) = v5;
  sub_219BF6214();
  sub_219BE5314("Audio feed successfully loaded duration %fms", v8);

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219149FE8(uint64_t a1, uint64_t a2, double a3)
{
  v4 = sub_219BF1584();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v36 = &v35 - v8;
  sub_21914F974(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  v12 = qword_280F616F8;
  v13 = sub_219BF61F4();
  sub_2186F20D4(0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v15 = MEMORY[0x277D83A80];
  *(v14 + 56) = MEMORY[0x277D839F8];
  *(v14 + 64) = v15;
  *(v14 + 32) = v16;
  v39 = 0;
  v40 = 0xE000000000000000;
  v38 = a1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v17 = v39;
  v18 = v40;
  *(v14 + 96) = MEMORY[0x277D837D0];
  *(v14 + 104) = sub_2186FC3BC();
  *(v14 + 72) = v17;
  *(v14 + 80) = v18;
  sub_219BE5314("Error while prewarming audio feed with visible duration %fms, error=%{public}@", 78, 2, &dword_2186C1000, v12, v13, v14);

  v19 = off_282A76950[0];
  v20 = type metadata accessor for AudioFeedDataManager();
  v19(v20);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      if (qword_27CC082B8 != -1)
      {
        swift_once();
      }

      v22 = __swift_project_value_buffer(v4, qword_27CCD87C0);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v24 = Strong;
        v25 = v36;
        (*(v5 + 16))(v36, v22, v4);
        v26 = (*(v5 + 80) + 24) & ~*(v5 + 80);
        v27 = swift_allocObject();
        *(v27 + 16) = v24;
        (*(v5 + 32))(v27 + v26, v25, v4);
        swift_unknownObjectRetain();
        sub_219BE3494();

        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v28 = *(v5 + 32);
    v29 = v37;
    v28(v37, v11, v4);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = swift_unknownObjectWeakLoadStrong();
      if (v30)
      {
        v31 = v30;
        v32 = v36;
        (*(v5 + 16))(v36, v29, v4);
        v33 = (*(v5 + 80) + 24) & ~*(v5 + 80);
        v34 = swift_allocObject();
        *(v34 + 16) = v31;
        v28((v34 + v33), v32, v4);
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return (*(v5 + 8))(v29, v4);
  }

  return result;
}

uint64_t sub_21914A4BC(uint64_t a1, void *a2)
{
  v64 = a1;
  ObjectType = swift_getObjectType();
  v62 = type metadata accessor for AudioFeedExpandRequest(0);
  MEMORY[0x28223BE20](v62);
  v73 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v69);
  v6 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for AudioFeedGapLocation(0);
  v66 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = v8;
  v68 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v70 = &v57 - v10;
  sub_218729DE0(0, &unk_280EE5CA0, sub_218AB7640, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v57 - v12;
  sub_218AB7640(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v65 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v17;
  MEMORY[0x28223BE20](v18);
  v74 = &v57 - v19;
  sub_21914F880(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v21 = v20;
  v75 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v57 - v22;
  v72 = v2;
  sub_219BE6EC4();
  v77 = *&v76[0];
  sub_21898746C(0);
  sub_21915037C(&unk_280EE54C0, sub_21898746C, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();
  v24 = v21;

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE1D74();
  sub_219BEB1C4();
  v25 = v16;

  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_21914FEDC(v13, &unk_280EE5CA0, sub_218AB7640);
    v26 = a2[3];
    v27 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v26);
    MEMORY[0x21CEC0B20](0, v26, v27);
    return (*(v75 + 8))(v23, v24);
  }

  else
  {
    v60 = v23;
    v61 = v24;
    v29 = *(v16 + 32);
    v30 = v74;
    v29(v74, v13, v15);
    sub_219BE5FC4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v58 = v15;
      v31 = *v6;
      v32 = v6[1];
      sub_2186F151C(0);
      v34 = *(v33 + 48);
      v69 = type metadata accessor for AudioFeedGapLocation;
      v35 = v6 + v34;
      v36 = v70;
      sub_2191503C4(v35, v70, type metadata accessor for AudioFeedGapLocation);
      v59 = v29;
      v37 = v62;
      v38 = v73;
      v39 = sub_219150184(v36, v73 + *(v62 + 20));
      *v38 = v31;
      v38[1] = v32;
      v40 = v38 + *(v37 + 24);
      v41 = v64;
      *(v40 + 4) = *(v64 + 32);
      v42 = v41[1];
      *v40 = *v41;
      *(v40 + 1) = v42;
      MEMORY[0x28223BE20](v39);
      *(&v57 - 2) = v72;
      *(&v57 - 1) = v38;
      v44 = *v43;
      sub_219BE3204();
      sub_2187D9028();
      v45 = sub_219BF66A4();
      sub_218718690(a2, v76);
      v46 = swift_allocObject();
      sub_2186CB1F0(v76, v46 + 16);
      v64 = sub_219BE2F94();

      v47 = sub_219BF66A4();
      sub_218718690(a2, v76);
      v48 = v65;
      v49 = v58;
      (*(v16 + 16))(v65, v30, v58);
      v50 = v70;
      v51 = v68;
      sub_219150184(v70, v68);
      v52 = (*(v16 + 80) + 56) & ~*(v16 + 80);
      v53 = (v63 + *(v66 + 80) + v52) & ~*(v66 + 80);
      v54 = swift_allocObject();
      sub_2186CB1F0(v76, v54 + 16);
      v59(v54 + v52, v48, v49);
      sub_2191503C4(v51, v54 + v53, v69);
      sub_219BE2FE4();

      sub_21914F9D0(v50, type metadata accessor for AudioFeedGapLocation);
      (*(v25 + 8))(v74, v49);
      (*(v75 + 8))(v60, v61);
      return sub_21914F9D0(v73, type metadata accessor for AudioFeedExpandRequest);
    }

    else
    {
      sub_21914F9D0(v6, type metadata accessor for AudioFeedModel);
      v55 = a2[3];
      v56 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v55);
      MEMORY[0x21CEC0B20](0, v55, v56);
      (*(v25 + 8))(v30, v15);
      return (*(v75 + 8))(v60, v61);
    }
  }
}

double sub_21914AD1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory), *(a2 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory + 24));
  v7 = off_282A42D90[0];
  type metadata accessor for AudioFeedBlueprintModifierFactory();
  v12 = v7(v3, v4, v5, v6);
  sub_218718690(a3, v11);
  v8 = swift_allocObject();
  sub_2186CB1F0(v11, v8 + 16);
  sub_218CF947C(0);
  sub_21915037C(&unk_280EE5660, sub_218CF947C, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

double sub_21914AE88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for AudioFeedFailedData(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_219BE81D4())
  {
    v13 = a3[3];
    v14 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v13);
    MEMORY[0x21CEC0B20](0, v13, v14);
  }

  else
  {
    v30 = a4;
    v31 = a5;
    v32 = a2;
    if (qword_280E8D7D8 != -1)
    {
      swift_once();
    }

    v29 = qword_280F616F8;
    v28 = sub_219BF61F4();
    sub_2186F20D4(0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_219C09EC0;
    *&v33[0] = 0;
    *(&v33[0] + 1) = 0xE000000000000000;
    sub_2186CFDE4(0, &unk_280EE3DF0, MEMORY[0x277D6E8E8]);
    sub_219BF7484();
    v17 = v33[0];
    v18 = MEMORY[0x277D837D0];
    *(v16 + 56) = MEMORY[0x277D837D0];
    v19 = sub_2186FC3BC();
    *(v16 + 64) = v19;
    *(v16 + 32) = v17;
    *&v33[0] = 0;
    *(&v33[0] + 1) = 0xE000000000000000;
    v34 = a1;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    sub_219BF7484();
    v20 = v33[0];
    *(v16 + 96) = v18;
    *(v16 + 104) = v19;
    *(v16 + 72) = v20;
    sub_219BE5314("Error while trying to expand audio feed, request=%{public}@, error=%{public}@", 77, 2, &dword_2186C1000, v29, v28, v16);

    __swift_project_boxed_opaque_existential_1((v32 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory), *(v32 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory + 24));
    sub_218AB7640(0);
    v21 = sub_219BE5F84();
    v23 = v22;
    sub_219150184(v31, v12 + *(v10 + 20));
    *v12 = v21;
    v12[1] = v23;
    v24 = off_282A42DB8;
    type metadata accessor for AudioFeedBlueprintModifierFactory();
    v25 = v24(v12);
    sub_21914F9D0(v12, type metadata accessor for AudioFeedFailedData);
    v34 = v25;
    sub_218718690(a3, v33);
    v26 = swift_allocObject();
    sub_2186CB1F0(v33, v26 + 16);
    sub_218CF947C(0);
    sub_21915037C(&unk_280EE5660, sub_218CF947C, MEMORY[0x277D6D890]);
    sub_219BE6EF4();
  }

  return result;
}

double sub_21914B200(uint64_t a1)
{
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  v1 = qword_280F616F8;
  v2 = sub_219BF61F4();
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_219BE5314("Error while trying to perform refresh on audio feed, error=%{public}@", 69, 2, &dword_2186C1000, v1, v2, v3);

  return result;
}

double sub_21914B32C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  ObjectType = swift_getObjectType();
  v41 = *a1;
  v40 = *(a1 + 24);
  v39 = *(a1 + 8);
  v38 = sub_219BDBD64();
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21914F880(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v11 = sub_219BE61B4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v44 = v3;
  sub_219BE6EC4();
  sub_219BE6F74();

  (*(v12 + 104))(v14, *MEMORY[0x277D6D520], v11);
  sub_21915037C(&qword_280EE5AF0, MEMORY[0x277D6D528], MEMORY[0x277D6D530]);
  LOBYTE(a1) = sub_219BF53A4();
  v18 = *(v12 + 8);
  v18(v14, v11);
  v18(v17, v11);
  if ((a1 & 1) == 0)
  {
    sub_219BE6EC4();
    v50 = v51;
    sub_21898746C(0);
    sub_21915037C(&unk_280EE54C0, sub_21898746C, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();

    v20 = sub_2191CDB2C();
    (*(v8 + 8))(v10, v7);
    if ((~v20 & 0xF000000000000007) != 0)
    {
      v21 = v42;

      v22 = v36;
      sub_219BDBD54();
      v23 = sub_219BDBD44();
      v25 = v24;
      v26 = (*(v37 + 8))(v22, v38);
      *&v46 = v23;
      *(&v46 + 1) = v25;
      *&v47 = v21;
      *(&v47 + 1) = v41;
      v48 = v39;
      v49 = v40;
      v52 = v46;
      v53 = v47;
      v54 = v39;
      v55 = v40;
      MEMORY[0x28223BE20](v26);
      *(&v35 - 4) = v44;
      *(&v35 - 3) = v20;
      *(&v35 - 2) = &v52;
      v28 = v27;
      sub_219BE3204();
      sub_2187D9028();
      v29 = sub_219BF66A4();
      *(swift_allocObject() + 16) = v21;
      sub_219BE95D4();

      sub_219BE2F84();

      v30 = sub_219BE2E54();
      sub_218739B30(0, &qword_280E8B4E0, MEMORY[0x277D83D88]);
      sub_219BE2F94();

      v31 = swift_allocObject();
      v32 = v53;
      v31[1] = v52;
      v31[2] = v32;
      v33 = v55;
      v31[3] = v54;
      v31[4] = v33;
      sub_219150010(&v46, v45);
      v34 = sub_219BE2E54();
      sub_219BE2FD4();

      sub_21915006C(&v46);
      return sub_218ED1AFC(v20);
    }
  }

  return result;
}

uint64_t sub_21914B950(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory), *(a2 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory + 24));
  v6 = off_282A42DA8[0];
  type metadata accessor for AudioFeedBlueprintModifierFactory();
  v6(a3, v4, v5);
  sub_218CF947C(0);
  sub_21915037C(&unk_280EE5660, sub_218CF947C, MEMORY[0x277D6D890]);
  v7 = sub_219BE6E84();

  return v7;
}

void sub_21914BA68(BOOL *a1@<X8>)
{
  sub_21914F880(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v8 - v5;
  sub_219BE6EC4();
  v8[0] = v8[1];
  sub_21898746C(0);
  sub_21915037C(&unk_280EE54C0, sub_21898746C, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v7 = sub_2191CDB2C();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 0xF000000000000007) != 0xF000000000000007)
  {
    type metadata accessor for AudioFeedServiceConfig(0);
    sub_21915037C(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig, &unk_219C207D8);
    sub_219BEE7D4();
    sub_218ED1AFC(v7);
    sub_219BEE2F4();
  }

  *a1 = (v7 & 0xF000000000000007) == 0xF000000000000007;
}

double sub_21914BC6C(uint64_t a1, _OWORD *a2)
{
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  v7 = qword_280F616F8;
  v2 = sub_219BF61F4();
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09EC0;
  sub_219BF7484();
  v4 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  v5 = sub_2186FC3BC();
  *(v3 + 64) = v5;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  *&v8 = 0;
  *(&v8 + 1) = 0xE000000000000000;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  *(v3 + 72) = v8;
  sub_219BE5314("Error while trying to perform targeted refresh on audio feed, request=%{public}@, error=%{public}@", 98, 2, &dword_2186C1000, v7, v2, v3);

  return result;
}

void sub_21914BDF8(uint64_t a1)
{
  swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      *(swift_allocObject() + 16) = v3;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    Strong = swift_unknownObjectRelease();
  }

  MEMORY[0x28223BE20](Strong);
  sub_219BE3204();
  sub_2187D9028();
  v4 = sub_219BF66A4();
  sub_219BE95D4();
  sub_219BE2F84();

  *(swift_allocObject() + 16) = v1;
  v5 = v1;
  v6 = sub_219BE2E54();
  sub_219BE2F94();

  v7 = sub_219BE2E54();
  sub_219BE3034();
}

uint64_t sub_21914C01C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory), *(a2 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory + 24));
  v4 = off_282A42D98[0];
  type metadata accessor for AudioFeedBlueprintModifierFactory();
  v4(v2, v3);
  sub_218CF947C(0);
  sub_21915037C(&unk_280EE5660, sub_218CF947C, MEMORY[0x277D6D890]);
  v5 = sub_219BE6E84();

  return v5;
}

uint64_t sub_21914C12C(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BE95D4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  result = (*(v4 + 88))(v7, v3);
  if (result != *MEMORY[0x277D6E6A0])
  {
    if (result == *MEMORY[0x277D6E6A8])
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v9 = result;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v10 = off_282A82188;
          type metadata accessor for AudioFeedViewController();
          v10(v9, &off_282A59080, 0);
          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      return (*(v4 + 8))(v7, v3);
    }
  }

  return result;
}

uint64_t sub_21914C2D8(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_21914C398(uint64_t a1)
{
  sub_219BE6EC4();
  v2 = sub_218982930();

  if ((v2 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v4 = sub_219BE6084();
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory), *(v1 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory + 24));
  v5 = off_282A42DA0[0];
  type metadata accessor for AudioFeedBlueprintModifierFactory();
  v5(v4);

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = HIBYTE(v2) & 1;
  sub_218CF947C(0);
  sub_21915037C(&unk_280EE5660, sub_218CF947C, MEMORY[0x277D6D890]);

  sub_219BE6EF4();

  return result;
}

void sub_21914C5D8(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a3)
    {
      v5 = Strong;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          *(swift_allocObject() + 16) = v6;
          swift_unknownObjectRetain();
          sub_219BE3494();
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_21914C6C8(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  sub_218729DE0(0, &qword_280E905C0, MEMORY[0x277D33610], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v41 - v4;
  v5 = sub_219BF1DA4();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v41 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEDAE4();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAE28(0);
  v46 = v9;
  v44 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF0F34();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB7640(0);
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {

        sub_2186F151C(0);
        v26 = type metadata accessor for AudioFeedGapLocation;
        v27 = &v23[*(v25 + 48)];
        return sub_21914F9D0(v27, v26);
      }

      sub_2186FB36C(0);
      v38 = *(v37 + 48);
      v39 = sub_219BF1584();
      (*(*(v39 - 8) + 8))(&v23[v38], v39);
      v28 = type metadata accessor for AudioFeedGapLocation;
LABEL_13:
      v26 = v28;
      v27 = v23;
      return sub_21914F9D0(v27, v26);
    }

LABEL_8:
    v28 = type metadata accessor for AudioFeedModel;
    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
    (*(v18 + 32))(v20, v23, v17);
    sub_219BF07D4();
    v29 = sub_219BF0F14();
    (*(v13 + 8))(v15, v12);
    sub_21914CD14(v29, v43);
    swift_unknownObjectRelease();
    return (*(v18 + 8))(v20, v17);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_21914D4C4(a1);
    goto LABEL_8;
  }

  v31 = v44;
  v32 = v46;
  (*(v44 + 32))(v11, v23, v46);
  v33 = v42;
  sub_219BF07D4();
  v34 = v45;
  sub_219BEDAD4();
  v36 = v47;
  v35 = v48;
  if ((*(v47 + 48))(v34, 1, v48) == 1)
  {
    (*(v49 + 8))(v33, v50);
    (*(v31 + 8))(v11, v32);
    return sub_21914FEDC(v34, &qword_280E905C0, MEMORY[0x277D33610]);
  }

  else
  {
    v40 = v41;
    (*(v36 + 32))(v41, v34, v35);
    sub_219BF1D94();
    (*(v36 + 8))(v40, v35);
    (*(v49 + 8))(v33, v50);
    return (*(v31 + 8))(v11, v32);
  }
}

uint64_t sub_21914CD14(void *a1, uint64_t a2)
{
  v47 = a2;
  sub_218729DE0(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v44 - v4;
  v57 = sub_219BDE294();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDEE04();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v51 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for AudioFeedRouteModel(0);
  MEMORY[0x28223BE20](v50);
  v58 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for AudioFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v44);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_219BF1324();
  v11 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF1C74();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BF2A04();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729DE0(0, &unk_280E90430, sub_218731D50, MEMORY[0x277D33910]);
  v48 = *(v22 - 8);
  v49 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v46 = &v44 - v24;
  v62 = a1;
  (*(v19 + 104))(v21, *MEMORY[0x277D33A68], v18, v23);
  (*(v15 + 104))(v17, *MEMORY[0x277D33570], v14);
  sub_21914F880(0, &qword_280EE57D0, MEMORY[0x277D6D710]);
  swift_unknownObjectRetain();
  sub_219BE6934();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v26 = MEMORY[0x277D33298];
    goto LABEL_5;
  }

  v26 = MEMORY[0x277D33290];
  if (EnumCaseMultiPayload - 2 < 2)
  {
LABEL_5:
    sub_21914F9D0(v10, type metadata accessor for AudioFeedSectionDescriptor);
  }

  (*(v11 + 104))(v13, *v26, v45);
  sub_218731D50();
  v59 = 0u;
  v60 = 0u;
  v27 = v46;
  sub_219BF2564();
  swift_unknownObjectRetain();
  v28 = v51;
  sub_219BDEDE4();
  v30 = v48;
  v29 = v49;
  v31 = v54;
  (*(v48 + 16))(v54, v27, v49);
  v32 = v55;
  v33 = v57;
  (*(v55 + 104))(v31, *MEMORY[0x277D2FF00], v57);
  v34 = sub_219BDB954();
  v35 = v56;
  (*(*(v34 - 8) + 56))(v56, 1, 1, v34);
  v36 = v58;
  sub_219BDD904();
  sub_21914FEDC(v35, &unk_280EE9D00, MEMORY[0x277CC9260]);
  (*(v32 + 8))(v31, v33);
  (*(v52 + 8))(v28, v53);
  swift_storeEnumTagMultiPayload();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = Strong;
    v39 = [a1 identifier];
    v40 = sub_219BF5414();
    v42 = v41;

    __swift_project_boxed_opaque_existential_1((v38 + 48), *(v38 + 72));
    *&v59 = v40;
    *(&v59 + 1) = v42;
    v60 = 0uLL;
    v61 = 0;
    sub_2196D4AD0(v36, &v59);
    sub_21914F9D0(v36, type metadata accessor for AudioFeedRouteModel);
    (*(v30 + 8))(v27, v29);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_21914F9D0(v36, type metadata accessor for AudioFeedRouteModel);
    return (*(v30 + 8))(v27, v29);
  }
}

uint64_t sub_21914D4C4(uint64_t a1)
{
  sub_218729DE0(0, &qword_27CC15358, type metadata accessor for AudioFeedRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v15[-1] - v2);
  v4 = type metadata accessor for AudioFeedRouteModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21914D700(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_21914FEDC(v3, &qword_27CC15358, type metadata accessor for AudioFeedRouteModel);
  }

  sub_2191503C4(v3, v7, type metadata accessor for AudioFeedRouteModel);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_21914F9D0(v7, type metadata accessor for AudioFeedRouteModel);
  }

  v10 = Strong;
  sub_218AB7640(0);
  v11 = sub_219BE5F84();
  v13 = v12;
  __swift_project_boxed_opaque_existential_1((v10 + 48), *(v10 + 72));
  v15[0] = v11;
  v15[1] = v13;
  v15[2] = 0;
  v15[3] = 0;
  v16 = 0;
  sub_2196D4AD0(v7, v15);
  sub_21914F9D0(v7, type metadata accessor for AudioFeedRouteModel);

  return swift_unknownObjectRelease();
}

uint64_t sub_21914D700@<X0>(uint64_t *a1@<X8>)
{
  v42 = a1;
  v1 = sub_219BF0F34();
  v40 = *(v1 - 8);
  v41 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v5 = v4;
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF04A4();
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018(0);
  v12 = v11;
  v37 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB7640(0);
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {

        sub_2186F151C(0);
        v25 = type metadata accessor for AudioFeedGapLocation;
        v26 = &v17[*(v24 + 48)];
LABEL_13:
        sub_21914F9D0(v26, v25);
        v32 = type metadata accessor for AudioFeedRouteModel(0);
        v22 = *(*(v32 - 8) + 56);
        v23 = v42;
        v31 = 1;
        return v22(v23, v31, 1, v32);
      }

      sub_2186FB36C(0);
      v34 = *(v33 + 48);
      v35 = sub_219BF1584();
      (*(*(v35 - 8) + 8))(&v17[v34], v35);
      v27 = type metadata accessor for AudioFeedGapLocation;
LABEL_12:
      v25 = v27;
      v26 = v17;
      goto LABEL_13;
    }

LABEL_8:
    v27 = type metadata accessor for AudioFeedModel;
    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    v28 = v39;
    (*(v39 + 32))(v7, v17, v5);
    sub_219BF07D4();
    v29 = sub_219BF0F14();
    (*(v40 + 8))(v3, v41);
    (*(v28 + 8))(v7, v5);
    v30 = v42;
    *v42 = v29;
    v21 = type metadata accessor for AudioFeedRouteModel(0);
    swift_storeEnumTagMultiPayload();
    v22 = *(*(v21 - 8) + 56);
    v23 = v30;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_8;
  }

  v19 = v37;
  (*(v37 + 32))(v14, v17, v12);
  sub_219BF07D4();
  sub_219BF0404();
  (*(v38 + 8))(v10, v8);
  v20 = v42;
  sub_219BDD644();
  (*(v19 + 8))(v14, v12);
  v21 = type metadata accessor for AudioFeedRouteModel(0);
  swift_storeEnumTagMultiPayload();
  v22 = *(*(v21 - 8) + 56);
  v23 = v20;
LABEL_10:
  v31 = 0;
  v32 = v21;
  return v22(v23, v31, 1, v32);
}

uint64_t sub_21914DC20()
{
  sub_218CFB62C(0);
  MEMORY[0x28223BE20](v0 - 8);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BF1324();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BF1C74();
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF2A04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218739B30(0, &qword_280E90410, MEMORY[0x277D33910]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v20 - v16;
  (*(v9 + 104))(v11, *MEMORY[0x277D33A68], v8, v15);
  v18 = v22;
  (*(v5 + 104))(v7, *MEMORY[0x277D33570], v21);
  (*(v2 + 104))(v4, *MEMORY[0x277D33298], v23);
  v24 = 0u;
  v25 = 0u;
  sub_219BF2564();
  swift_getObjectType();
  sub_219BEABD4();
  (*(v14 + 16))(v18, v17, v13);
  (*(v14 + 56))(v18, 0, 1, v13);
  sub_219BE7094();

  sub_21914F9D0(v18, sub_218CFB62C);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_21914E00C()
{
  v0 = sub_219BE61B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  sub_219BE6F74();

  v4 = (*(v1 + 88))(v3, v0);
  v5 = *MEMORY[0x277D6D518];
  result = (*(v1 + 8))(v3, v0);
  if (v4 == v5)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = result;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = off_282A82178[0];
        type metadata accessor for AudioFeedViewController();
        v8(v7, &off_282A59080, &unk_282A25908);
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_21914E2C8(uint64_t a1)
{
  swift_getObjectType();
  sub_219BE3204();
  sub_2187D9028();
  v1 = sub_219BF66A4();
  sub_219BE95D4();
  sub_219BE2F84();

  v2 = sub_219BE2E54();
  sub_218739B30(0, &qword_280E8B4E0, MEMORY[0x277D83D88]);
  sub_219BE2F94();

  v3 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_21914E438@<X0>(uint64_t *a1@<X8>)
{
  v26 = a1;
  v1 = sub_219BF0F34();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF04A4();
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF0614();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF13A4();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4(0);
  sub_219BE5FC4();
  sub_219BF1394();
  sub_21914F9D0(v14, MEMORY[0x277D33320]);
  v15 = (*(v9 + 88))(v11, v8);
  if (v15 == *MEMORY[0x277D32DB8] || v15 == *MEMORY[0x277D32D10] || v15 == *MEMORY[0x277D32E00])
  {
    goto LABEL_9;
  }

  if (v15 != *MEMORY[0x277D32E10])
  {
    if (v15 != *MEMORY[0x277D32E18] && v15 != *MEMORY[0x277D32DD8] && v15 != *MEMORY[0x277D32CF8])
    {
      if (v15 == *MEMORY[0x277D32DC0])
      {
        (*(v9 + 96))(v11, v8);
        v23 = v25;
        (*(v25 + 32))(v7, v11, v5);
        sub_219BF0404();
        v21 = v26;
        sub_219BDD644();
        (*(v23 + 8))(v7, v5);
        v22 = type metadata accessor for AudioFeedRouteModel(0);
        goto LABEL_13;
      }

      if (v15 != *MEMORY[0x277D32CF0] && v15 != *MEMORY[0x277D32E08] && v15 != *MEMORY[0x277D32DB0] && v15 != *MEMORY[0x277D32DE0] && v15 != *MEMORY[0x277D32D38] && v15 != *MEMORY[0x277D32DE8] && v15 != *MEMORY[0x277D32D18])
      {
        if (v15 != *MEMORY[0x277D32DD0])
        {
          v24 = type metadata accessor for AudioFeedRouteModel(0);
          (*(*(v24 - 8) + 56))(v26, 1, 1, v24);
          return (*(v9 + 8))(v11, v8);
        }

LABEL_10:
        v18 = type metadata accessor for AudioFeedRouteModel(0);
        return (*(*(v18 - 8) + 56))(v26, 1, 1, v18);
      }
    }

LABEL_9:
    (*(v9 + 8))(v11, v8);
    goto LABEL_10;
  }

  (*(v9 + 96))(v11, v8);
  (*(v2 + 32))(v4, v11, v1);
  v20 = sub_219BF0F14();
  (*(v2 + 8))(v4, v1);
  v21 = v26;
  *v26 = v20;
  v22 = type metadata accessor for AudioFeedRouteModel(0);
LABEL_13:
  swift_storeEnumTagMultiPayload();
  return (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
}

uint64_t sub_21914E9A4(uint64_t a1)
{
  sub_218729DE0(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = (&v15 - v4);
  if ([*(a1 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_featureAvailability) useOfflineMode] && (sub_21914F974(0), (sub_219BF1B14() & 1) != 0))
  {

    sub_219BE20E4();

    v6 = type metadata accessor for AudioFeedTrack(0);
    if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
    {
      sub_21914FEDC(v5, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      v7 = 0;
    }

    else
    {
      v9 = [*v5 identifier];
      v10 = sub_219BF5414();
      v12 = v11;

      sub_21914F9D0(v5, type metadata accessor for AudioFeedTrack);
      v13 = [*(a1 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_offlineArticleManager) listenableArticleIDs];
      v14 = sub_219BF5D44();

      v7 = sub_2188537B8(v10, v12, v14);
    }
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_21914EBD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v30 = a1;
  v3 = sub_219BF0644();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v31 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v29 - v7;
  sub_21914F880(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - v12;
  sub_219BE6EC4();
  v32 = v34;
  sub_21898746C(0);
  sub_21915037C(&unk_280EE54C0, sub_21898746C, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v14 = sub_2191CDB2C();
  (*(v11 + 8))(v13, v10);
  if ((~v14 & 0xF000000000000007) != 0)
  {
    v15 = type metadata accessor for AudioFeedServiceConfig(0);
    v29[0] = sub_21915037C(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig, &unk_219C207D8);
    v29[1] = v15;
    sub_219BEE844();
    v34 = *__swift_project_boxed_opaque_existential_1((v30 + OBJC_IVAR____TtC7NewsUI220AudioFeedDataManager_offlineFeatures), *(v30 + OBJC_IVAR____TtC7NewsUI220AudioFeedDataManager_offlineFeatures + 24));
    v16 = off_282A442B8;
    type metadata accessor for OfflineFeatures();
    if (v16(5) == 6)
    {
      v17 = sub_219BF1AE4();
      v18 = v31;
      if (v17)
      {
        v19 = MEMORY[0x277D32EF8];
      }

      else
      {
        v19 = MEMORY[0x277D32EF0];
      }

      (*(v4 + 104))(v31, *v19, v3);
    }

    else
    {
      v18 = v31;
      (*(v4 + 104))(v31, *MEMORY[0x277D32EF0], v3);
    }

    sub_21915037C(&qword_280E90ED0, MEMORY[0x277D32F00], MEMORY[0x277D32F18]);
    sub_219BF5874();
    sub_219BF5874();
    if (v34 == v32 && v35 == v33)
    {
      v20 = *(v4 + 8);
      v20(v18, v3);
      v20(v8, v3);
    }

    else
    {
      v21 = sub_219BF78F4();
      v22 = v18;
      v23 = v21;
      v24 = *(v4 + 8);
      v24(v22, v3);
      v24(v8, v3);

      if ((v23 & 1) == 0)
      {
        sub_219BEE844();
        sub_218ED1AFC(v14);
        v25 = MEMORY[0x277D331E0];
        goto LABEL_15;
      }
    }

    sub_219BEE844();
    sub_218ED1AFC(v14);
  }

  else
  {
    (*(v4 + 104))(a2, *MEMORY[0x277D32EF0], v3);
  }

  v25 = MEMORY[0x277D331F8];
LABEL_15:
  v26 = *v25;
  v27 = sub_219BF11C4();
  return (*(*(v27 - 8) + 104))(a2, v26, v27);
}

double sub_21914F0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory), *(v5 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_modifierFactory + 24));
  v8 = off_282A42DB0[0];
  type metadata accessor for AudioFeedBlueprintModifierFactory();
  v8(a3, a4);
  sub_218CF947C(0);
  sub_21915037C(&unk_280EE5660, sub_218CF947C, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

uint64_t sub_21914F1E4()
{
  v1 = sub_219BF0644();
  v23 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  sub_21914F880(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  sub_219BE6EC4();
  v24 = v25;
  sub_21898746C(0);
  sub_21915037C(&unk_280EE54C0, sub_21898746C, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v12 = sub_2191CDB2C();
  (*(v9 + 8))(v11, v8);
  if ((~v12 & 0xF000000000000007) != 0)
  {
    v25 = *__swift_project_boxed_opaque_existential_1((*(v0 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_dataManager) + OBJC_IVAR____TtC7NewsUI220AudioFeedDataManager_offlineFeatures), *(*(v0 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_dataManager) + OBJC_IVAR____TtC7NewsUI220AudioFeedDataManager_offlineFeatures + 24));
    v14 = off_282A442B8;
    type metadata accessor for OfflineFeatures();
    if (v14(5) == 6)
    {
      v15 = sub_219BF1AE4();
      v16 = v23;
      if (v15)
      {
        v17 = MEMORY[0x277D32EF8];
      }

      else
      {
        v17 = MEMORY[0x277D32EF0];
      }

      (*(v23 + 104))(v6, *v17, v1);
    }

    else
    {
      v16 = v23;
      (*(v23 + 104))(v6, *MEMORY[0x277D32EF0], v1);
    }

    type metadata accessor for AudioFeedServiceConfig(0);
    sub_21915037C(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig, &unk_219C207D8);
    sub_219BEE844();
    sub_21915037C(&unk_280E90EE0, MEMORY[0x277D32F00], MEMORY[0x277D32F10]);
    v18 = sub_219BF53A4();
    v19 = sub_218ED1AFC(v12);
    v20 = *(v16 + 8);
    v20(v3, v1, v19);
    (v20)(v6, v1);
    v13 = v18 ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

char *sub_21914F5B4()
{
  swift_getObjectType();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_219BE86E4();
      v3 = objc_allocWithZone(sub_219BE9274());
      v4 = sub_219BE9254();
      result = [v2 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v5 = result;
      [result bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v14[0] = v4;
      v14[1] = v7;
      v14[2] = v9;
      v14[3] = v11;
      v14[4] = v13;
      sub_21914E2C8(v14);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21914F714(const char *a1)
{
  result = sub_21914F1E4();
  if (result)
  {
    if (qword_280E8D7D8 != -1)
    {
      swift_once();
    }

    v3 = qword_280F616F8;
    v4 = sub_219BF6214();
    sub_219BE5314(a1, 80, 2, &dword_2186C1000, v3, v4, MEMORY[0x277D84F90]);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = result;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = off_282A82180[0];
        v7 = type metadata accessor for AudioFeedViewController();
        v6(v5, &off_282A59080, v7, &off_282A82148);
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_21914F880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for AudioFeedModel(255);
    v8[2] = sub_21915037C(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor, &unk_219C23DFC);
    v8[3] = sub_21915037C(&qword_280EDCBF0, type metadata accessor for AudioFeedModel, &unk_219C86D80);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21914F974(uint64_t a1)
{
  if (!qword_280E90790)
  {
    sub_2186F17B0();
    v1 = sub_219BF1B54();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90790);
    }
  }
}

uint64_t sub_21914F9D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21914FA30(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_21875D3C8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729DE0(0, &qword_280E91758, MEMORY[0x277D324B8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v35 - v11;
  v13 = a2 + OBJC_IVAR____TtC7NewsUI223AudioFeedViewController_mastheadViewProviderDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 8);
    v15 = swift_getObjectType();
    v16 = sub_21915037C(&qword_280EC5D20, type metadata accessor for AudioFeedViewController, &unk_219C9C958);
    (*(v14 + 16))(a2, v16, a1, v15, v14);
    swift_unknownObjectRelease();
  }

  v17 = sub_21915037C(&qword_280EC5D20, type metadata accessor for AudioFeedViewController, &unk_219C9C958);
  v18 = MEMORY[0x21CEBCBD0](ObjectType, v17);
  if (v18)
  {
    v19 = v18;
    swift_getObjectType();
    sub_219BE9114();
  }

  if (sub_219BED0C4())
  {
    v20 = sub_2196D74D4();
    (*(v7 + 16))(v9, a1, v6);
    v21 = (*(v7 + 88))(v9, v6);
    if (v21 == *MEMORY[0x277D30130])
    {
      (*(v7 + 96))(v9, v6);
      sub_218A6E5D0(0);
      v23 = *(v22 + 64);
      v24 = MEMORY[0x277D324A8];
    }

    else
    {
      if (v21 != *MEMORY[0x277D30128])
      {
        v30 = *MEMORY[0x277D30138];
        v31 = *MEMORY[0x277D324A0];
        v32 = v21;
        v33 = sub_219BEEF64();
        v34 = *(v33 - 8);
        (*(v34 + 104))(v12, v31, v33);
        (*(v34 + 56))(v12, 0, 1, v33);
        if (v32 != v30)
        {
          (*(v7 + 8))(v9, v6);
        }

        goto LABEL_11;
      }

      (*(v7 + 96))(v9, v6);
      sub_218A6E554(0);
      v23 = *(v25 + 64);
      v24 = MEMORY[0x277D32498];
    }

    v26 = *v24;
    v27 = sub_219BEEF64();
    v28 = *(v27 - 8);
    (*(v28 + 104))(v12, v26, v27);
    (*(v28 + 56))(v12, 0, 1, v27);
    v29 = sub_219BDD9E4();
    (*(*(v29 - 8) + 8))(&v9[v23], v29);
    sub_21914F9D0(v9, type metadata accessor for AudioFeedTrack);
LABEL_11:
    sub_219BE8E34();
  }
}

uint64_t sub_21914FEDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218729DE0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219150120()
{
  sub_219BF1584();

  return sub_2196D9354();
}

uint64_t sub_219150184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedGapLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_21915023C(uint64_t a1, uint64_t a2)
{
  sub_218AB7640(0);
  v6 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(type metadata accessor for AudioFeedGapLocation(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_21914AE88(a1, a2, (v2 + 16), v2 + v6, v9);
}

uint64_t sub_21915037C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2191503C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219150494(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x72 && *(a1 + 8))
  {
    return (*a1 + 114);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x71)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2191504E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x71)
  {
    *result = a2 - 114;
    if (a3 >= 0x72)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x72)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_219150544(uint64_t a1)
{
  v2 = type metadata accessor for CuratedMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v2 - 8);
  v165 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECF58(0);
  v164 = v4;
  v163 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v162 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for NewspaperMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v161);
  v160 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC(0);
  v159 = v7;
  v158 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v157 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v9 - 8);
  v156 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F05748(0);
  v155 = v11;
  v154 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v153 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TrendingMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v13 - 8);
  v152 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EFE8(0);
  v151 = v15;
  v150 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v149 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TopicMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v17 - 8);
  v148 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E60B0(0);
  v147 = v19;
  v146 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v145 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v21 - 8);
  v144 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A40C(0);
  v143 = v23;
  v142 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v141 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PaywallMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v25 - 8);
  v140 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B87670(0);
  v139 = v27;
  v138 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v137 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for NewIssueMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v29 - 8);
  v136 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30(0);
  v135 = v31;
  v134 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v133 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v33 - 8);
  v132 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8773C(0);
  v131 = v35;
  v130 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v129 = &v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E91FC8, sub_21915A520, sub_21915A574, &type metadata for InlineCategoriesMagazineFeedGroupConfigData);
  v128 = v37;
  v127 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v126 = &v118 - v38;
  v125 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v125);
  v124 = &v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EC3A4(0);
  v123 = v40;
  v122 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v121 = &v118 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v120);
  v43 = &v118 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80(0);
  v45 = v44;
  v119 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v118 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v48);
  v50 = &v118 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594(0);
  v52 = v51;
  v118 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v54 = &v118 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E92180, sub_21915A644, sub_21915A698, &type metadata for CategoriesMagazineFeedGroupConfigData);
  v56 = v55;
  v57 = *(v55 - 8);
  MEMORY[0x28223BE20](a1);
  v60 = &v118 - v59;
  switch(v58 >> 60)
  {
    case 1uLL:
      v96 = swift_projectBox();
      v97 = v118;
      (*(v118 + 16))(v54, v96, v52);
      sub_219BEDD14();
      (*(v97 + 8))(v54, v52);
      v62 = v50[*(v48 + 24)];
      v86 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData;
      v87 = v50;
      goto LABEL_18;
    case 2uLL:
      v84 = swift_projectBox();
      v85 = v119;
      (*(v119 + 16))(v47, v84, v45);
      sub_219BEDD14();
      (*(v85 + 8))(v47, v45);
      v62 = v43[*(v120 + 24)];
      v86 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData;
      v87 = v43;
      goto LABEL_18;
    case 3uLL:
      v88 = swift_projectBox();
      v89 = v122;
      v90 = v121;
      v91 = v123;
      (*(v122 + 16))(v121, v88, v123);
      v70 = v124;
      sub_219BEDD14();
      (*(v89 + 8))(v90, v91);
      v62 = v70[*(v125 + 24)];
      v71 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 4uLL:
      v72 = swift_projectBox();
      v73 = v127;
      v74 = v126;
      v75 = v128;
      (*(v127 + 16))(v126, v72, v128);
      sub_219BEDD14();
      (*(v73 + 8))(v74, v75);
      v171 = v168;
      *v172 = *v169;
      *&v172[10] = *&v169[10];
      v170[0] = v166;
      v170[1] = v167;
      sub_21915A74C(v170);
      return v172[24];
    case 5uLL:
      v98 = swift_projectBox();
      v99 = v130;
      v100 = v129;
      v101 = v131;
      (*(v130 + 16))(v129, v98, v131);
      v70 = v132;
      sub_219BEDD14();
      (*(v99 + 8))(v100, v101);
      v62 = v70[24];
      v71 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 6uLL:
      v106 = swift_projectBox();
      v107 = v134;
      v108 = v133;
      v109 = v135;
      (*(v134 + 16))(v133, v106, v135);
      v70 = v136;
      sub_219BEDD14();
      (*(v107 + 8))(v108, v109);
      v62 = v70[1];
      v71 = type metadata accessor for NewIssueMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 7uLL:
      v92 = swift_projectBox();
      v93 = v138;
      v94 = v137;
      v95 = v139;
      (*(v138 + 16))(v137, v92, v139);
      v70 = v140;
      sub_219BEDD14();
      (*(v93 + 8))(v94, v95);
      v62 = v70[1];
      v71 = type metadata accessor for PaywallMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 8uLL:
      v114 = swift_projectBox();
      v115 = v142;
      v116 = v141;
      v117 = v143;
      (*(v142 + 16))(v141, v114, v143);
      v70 = v144;
      sub_219BEDD14();
      (*(v115 + 8))(v116, v117);
      v62 = v70[56];
      v71 = type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 9uLL:
      v80 = swift_projectBox();
      v81 = v146;
      v82 = v145;
      v83 = v147;
      (*(v146 + 16))(v145, v80, v147);
      v70 = v148;
      sub_219BEDD14();
      (*(v81 + 8))(v82, v83);
      v62 = v70[1];
      v71 = type metadata accessor for TopicMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xAuLL:
      v110 = swift_projectBox();
      v111 = v150;
      v112 = v149;
      v113 = v151;
      (*(v150 + 16))(v149, v110, v151);
      v70 = v152;
      sub_219BEDD14();
      (*(v111 + 8))(v112, v113);
      v62 = v70[1];
      v71 = type metadata accessor for TrendingMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xBuLL:
      v66 = swift_projectBox();
      v67 = v154;
      v68 = v153;
      v69 = v155;
      (*(v154 + 16))(v153, v66, v155);
      v70 = v156;
      sub_219BEDD14();
      (*(v67 + 8))(v68, v69);
      v62 = v70[1];
      v71 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xCuLL:
      v76 = swift_projectBox();
      v77 = v158;
      v78 = v157;
      v79 = v159;
      (*(v158 + 16))(v157, v76, v159);
      v70 = v160;
      sub_219BEDD14();
      (*(v77 + 8))(v78, v79);
      v62 = v70[*(v161 + 36)];
      v71 = type metadata accessor for NewspaperMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xDuLL:
      v102 = swift_projectBox();
      v103 = v163;
      v104 = v162;
      v105 = v164;
      (*(v163 + 16))(v162, v102, v164);
      v70 = v165;
      sub_219BEDD14();
      (*(v103 + 8))(v104, v105);
      v62 = v70[1];
      v71 = type metadata accessor for CuratedMagazineFeedGroupConfigData;
LABEL_17:
      v86 = v71;
      v87 = v70;
LABEL_18:
      sub_21915A6EC(v87, v86);
      return v62;
    case 0xEuLL:
      v63 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v64 = sub_219150544(v63);

      return v64 & 1;
    default:
      v61 = swift_projectBox();
      (*(v57 + 16))(v60, v61, v56);
      sub_219BEDD14();
      (*(v57 + 8))(v60, v56);

      return v171;
  }
}

uint64_t sub_219151874(uint64_t a1)
{
  v2 = type metadata accessor for CuratedMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v2 - 8);
  v163 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECF58(0);
  v162 = v4;
  v161 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v160 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for NewspaperMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v159);
  v158 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC(0);
  v157 = v7;
  v156 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v155 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v9 - 8);
  v154 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F05748(0);
  v153 = v11;
  v152 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v151 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TrendingMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v13 - 8);
  v150 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EFE8(0);
  v149 = v15;
  v148 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v147 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TopicMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v17 - 8);
  v146 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E60B0(0);
  v145 = v19;
  v144 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v143 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v21 - 8);
  v142 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A40C(0);
  v141 = v23;
  v140 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v139 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PaywallMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v25 - 8);
  v138 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B87670(0);
  v137 = v27;
  v136 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v135 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for NewIssueMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v29 - 8);
  v134 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30(0);
  v133 = v31;
  v132 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v131 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v33 - 8);
  v130 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8773C(0);
  v129 = v35;
  v128 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v127 = &v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v37 - 8);
  v126 = &v118 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EC3A4(0);
  v125 = v39;
  v124 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v123 = &v118 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v41 - 8);
  v122 = &v118 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80(0);
  v121 = v43;
  v120 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v45 = &v118 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v46 - 8);
  v48 = &v118 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594(0);
  v50 = v49;
  v119 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v52 = &v118 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E91FC8, sub_21915A520, sub_21915A574, &type metadata for InlineCategoriesMagazineFeedGroupConfigData);
  v54 = v53;
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v57 = &v118 - v56;
  sub_21915A5C8(0, &qword_280E92180, sub_21915A644, sub_21915A698, &type metadata for CategoriesMagazineFeedGroupConfigData);
  v59 = v58;
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](a1);
  v63 = &v118 - v62;
  switch(v61 >> 60)
  {
    case 1uLL:
      v93 = swift_projectBox();
      v94 = v119;
      (*(v119 + 16))(v52, v93, v50);
      sub_219BEDD14();
      (*(v94 + 8))(v52, v50);
      v65 = *v48;
      v95 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData;
      v96 = v48;
      goto LABEL_18;
    case 2uLL:
      v82 = swift_projectBox();
      v83 = v120;
      v84 = v121;
      (*(v120 + 16))(v45, v82, v121);
      v71 = v122;
      sub_219BEDD14();
      (*(v83 + 8))(v45, v84);
      v65 = *v71;
      v72 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 3uLL:
      v85 = swift_projectBox();
      v86 = v124;
      v87 = v123;
      v88 = v125;
      (*(v124 + 16))(v123, v85, v125);
      v71 = v126;
      sub_219BEDD14();
      (*(v86 + 8))(v87, v88);
      v65 = *v71;
      v72 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 4uLL:
      v73 = swift_projectBox();
      (*(v55 + 16))(v57, v73, v54);
      sub_219BEDD14();
      (*(v55 + 8))(v57, v54);
      v168[2] = v166;
      *v169 = *v167;
      *&v169[10] = *&v167[10];
      v168[0] = v164;
      v168[1] = v165;
      sub_21915A74C(v168);
      return LOBYTE(v168[0]);
    case 5uLL:
      v97 = swift_projectBox();
      v98 = v128;
      v99 = v127;
      v100 = v129;
      (*(v128 + 16))(v127, v97, v129);
      v71 = v130;
      sub_219BEDD14();
      (*(v98 + 8))(v99, v100);
      v65 = *v71;
      v72 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 6uLL:
      v105 = swift_projectBox();
      v106 = v132;
      v107 = v131;
      v108 = v133;
      (*(v132 + 16))(v131, v105, v133);
      v71 = v134;
      sub_219BEDD14();
      (*(v106 + 8))(v107, v108);
      v65 = *v71;
      v72 = type metadata accessor for NewIssueMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 7uLL:
      v89 = swift_projectBox();
      v90 = v136;
      v91 = v135;
      v92 = v137;
      (*(v136 + 16))(v135, v89, v137);
      v71 = v138;
      sub_219BEDD14();
      (*(v90 + 8))(v91, v92);
      v65 = *v71;
      v72 = type metadata accessor for PaywallMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 8uLL:
      v113 = swift_projectBox();
      v114 = v140;
      v115 = v139;
      v116 = v141;
      (*(v140 + 16))(v139, v113, v141);
      v71 = v142;
      sub_219BEDD14();
      (*(v114 + 8))(v115, v116);
      v65 = *v71;
      v72 = type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 9uLL:
      v78 = swift_projectBox();
      v79 = v144;
      v80 = v143;
      v81 = v145;
      (*(v144 + 16))(v143, v78, v145);
      v71 = v146;
      sub_219BEDD14();
      (*(v79 + 8))(v80, v81);
      v65 = *v71;
      v72 = type metadata accessor for TopicMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xAuLL:
      v109 = swift_projectBox();
      v110 = v148;
      v111 = v147;
      v112 = v149;
      (*(v148 + 16))(v147, v109, v149);
      v71 = v150;
      sub_219BEDD14();
      (*(v110 + 8))(v111, v112);
      v65 = *v71;
      v72 = type metadata accessor for TrendingMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xBuLL:
      v67 = swift_projectBox();
      v68 = v152;
      v69 = v151;
      v70 = v153;
      (*(v152 + 16))(v151, v67, v153);
      v71 = v154;
      sub_219BEDD14();
      (*(v68 + 8))(v69, v70);
      v65 = *v71;
      v72 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xCuLL:
      v74 = swift_projectBox();
      v75 = v156;
      v76 = v155;
      v77 = v157;
      (*(v156 + 16))(v155, v74, v157);
      v71 = v158;
      sub_219BEDD14();
      (*(v75 + 8))(v76, v77);
      v65 = v71[*(v159 + 56)];
      v72 = type metadata accessor for NewspaperMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xDuLL:
      v101 = swift_projectBox();
      v102 = v161;
      v103 = v160;
      v104 = v162;
      (*(v161 + 16))(v160, v101, v162);
      v71 = v163;
      sub_219BEDD14();
      (*(v102 + 8))(v103, v104);
      v65 = *v71;
      v72 = type metadata accessor for CuratedMagazineFeedGroupConfigData;
LABEL_17:
      v95 = v72;
      v96 = v71;
LABEL_18:
      sub_21915A6EC(v96, v95);
      break;
    case 0xEuLL:
      v66 = *((v61 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v65 = sub_219151874(v66);

      break;
    default:
      v64 = swift_projectBox();
      (*(v60 + 16))(v63, v64, v59);
      sub_219BEDD14();
      (*(v60 + 8))(v63, v59);
      v65 = LOBYTE(v168[0]);

      break;
  }

  return v65;
}

char *sub_219152B54(unint64_t a1)
{
  v105 = type metadata accessor for CuratedMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v105);
  v106 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECF58(0);
  v112 = *(v3 - 8);
  v113 = v3;
  MEMORY[0x28223BE20](v3);
  v111 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v104);
  v114 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EC3A4(0);
  v109 = *(v6 - 8);
  v110 = v6;
  MEMORY[0x28223BE20](v6);
  v108 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80(0);
  v12 = v11;
  v107 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF1934();
  v115 = *(v15 - 8);
  v116 = v15;
  MEMORY[0x28223BE20](v15);
  v103 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v102 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v102 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v102 - v24;
  v26 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594(0);
  MEMORY[0x28223BE20](v29);
  v34 = &v102 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1 >> 60;
  v36 = MEMORY[0x277D84F90];
  if (v35 <= 3)
  {
    v111 = v8;
    v112 = v14;
    v52 = v114;
    v113 = v12;
    if (v35 <= 1)
    {
      if (!v35)
      {
        return v36;
      }

      v53 = v30;
      v54 = v32;
      v55 = v34;
      v56 = swift_projectBox();
      v113 = v54;
      (*(v54 + 16))(v55, v56, v53);
      v114 = v53;
      v112 = v55;
      sub_219BEDD14();
      v58 = v115;
      v57 = v116;
      (*(v115 + 16))(v25, &v28[*(v26 + 20)], v116);
      sub_21915A6EC(v28, type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData);
      sub_219BF1724();
      (*(v58 + 8))(v25, v57);
      v59 = sub_219BF5AB4();

      if (v59 >> 62)
      {
        v60 = sub_219BF7214();
        if (v60)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v60)
        {
LABEL_19:
          v117 = v36;
          result = sub_21870B65C(0, v60 & ~(v60 >> 63), 0);
          if ((v60 & 0x8000000000000000) == 0)
          {
            v61 = 0;
            v36 = v117;
            do
            {
              if ((v59 & 0xC000000000000001) != 0)
              {
                MEMORY[0x21CECE0F0](v61, v59);
              }

              else
              {
              }

              v62 = sub_219BF16A4();
              v64 = v63;

              v117 = v36;
              v66 = *(v36 + 16);
              v65 = *(v36 + 24);
              if (v66 >= v65 >> 1)
              {
                sub_21870B65C((v65 > 1), v66 + 1, 1);
                v36 = v117;
              }

              ++v61;
              *(v36 + 16) = v66 + 1;
              v67 = v36 + 16 * v66;
              *(v67 + 32) = v62;
              *(v67 + 40) = v64;
            }

            while (v60 != v61);
            (*(v113 + 8))(v112, v114);
            goto LABEL_52;
          }

          __break(1u);
          goto LABEL_63;
        }
      }

      (*(v113 + 8))(v112, v114);
      return v36;
    }

    if (v35 == 2)
    {
      v68 = swift_projectBox();
      v69 = v107;
      v71 = v112;
      v70 = v113;
      (*(v107 + 16))(v112, v68, v113);
      sub_219BEDD14();
      v73 = v115;
      v72 = v116;
      (*(v115 + 16))(v22, &v10[*(v111 + 5)], v116);
      sub_21915A6EC(v10, type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData);
      sub_219BF1724();
      (*(v73 + 8))(v22, v72);
      v74 = sub_219BF5AB4();

      if (v74 >> 62)
      {
        v75 = sub_219BF7214();
        if (v75)
        {
LABEL_31:
          v117 = v36;
          result = sub_21870B65C(0, v75 & ~(v75 >> 63), 0);
          if ((v75 & 0x8000000000000000) == 0)
          {
            v76 = 0;
            v36 = v117;
            do
            {
              if ((v74 & 0xC000000000000001) != 0)
              {
                MEMORY[0x21CECE0F0](v76, v74);
              }

              else
              {
              }

              v77 = sub_219BF16A4();
              v79 = v78;

              v117 = v36;
              v81 = *(v36 + 16);
              v80 = *(v36 + 24);
              if (v81 >= v80 >> 1)
              {
                sub_21870B65C((v80 > 1), v81 + 1, 1);
                v36 = v117;
              }

              ++v76;
              *(v36 + 16) = v81 + 1;
              v82 = v36 + 16 * v81;
              *(v82 + 32) = v77;
              *(v82 + 40) = v79;
            }

            while (v75 != v76);
            (*(v107 + 8))(v112, v113);
            goto LABEL_52;
          }

LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }
      }

      else
      {
        v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v75)
        {
          goto LABEL_31;
        }
      }

      (*(v69 + 8))(v71, v70);
      return v36;
    }

    v83 = swift_projectBox();
    v85 = v108;
    v84 = v109;
    v86 = v110;
    (*(v109 + 16))(v108, v83, v110);
    v87 = v52;
    sub_219BEDD14();
    v88 = v115;
    v89 = &v52[*(v104 + 20)];
    v90 = v116;
    (*(v115 + 16))(v19, v89, v116);
    sub_21915A6EC(v87, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData);
    sub_219BF1724();
    (*(v88 + 8))(v19, v90);
    v91 = sub_219BF5AB4();

    if (v91 >> 62)
    {
      v92 = sub_219BF7214();
      if (v92)
      {
LABEL_42:
        v117 = v36;
        result = sub_21870B65C(0, v92 & ~(v92 >> 63), 0);
        if ((v92 & 0x8000000000000000) == 0)
        {
          v93 = 0;
          v36 = v117;
          do
          {
            if ((v91 & 0xC000000000000001) != 0)
            {
              MEMORY[0x21CECE0F0](v93, v91);
            }

            else
            {
            }

            v94 = sub_219BF16A4();
            v96 = v95;

            v117 = v36;
            v98 = *(v36 + 16);
            v97 = *(v36 + 24);
            if (v98 >= v97 >> 1)
            {
              sub_21870B65C((v97 > 1), v98 + 1, 1);
              v36 = v117;
            }

            ++v93;
            *(v36 + 16) = v98 + 1;
            v99 = v36 + 16 * v98;
            *(v99 + 32) = v94;
            *(v99 + 40) = v96;
          }

          while (v92 != v93);
          (*(v109 + 8))(v108, v110);
          goto LABEL_52;
        }

        goto LABEL_64;
      }
    }

    else
    {
      v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v92)
      {
        goto LABEL_42;
      }
    }

    (*(v84 + 8))(v85, v86);
    return v36;
  }

  if ((v35 - 4) < 9)
  {
    return v36;
  }

  if (v35 != 13)
  {
    v100 = *((v31 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

    v101 = sub_219152B54(v100);

    return v101;
  }

  v37 = swift_projectBox();
  (*(v112 + 2))(v111, v37, v113);
  v38 = v106;
  sub_219BEDD14();
  v40 = v115;
  v39 = v116;
  v41 = v103;
  (*(v115 + 16))(v103, v38 + *(v105 + 32), v116);
  sub_21915A6EC(v38, type metadata accessor for CuratedMagazineFeedGroupConfigData);
  sub_219BF1724();
  (*(v40 + 8))(v41, v39);
  v42 = sub_219BF5AB4();

  if (!(v42 >> 62))
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
      goto LABEL_6;
    }

LABEL_60:

    (*(v112 + 1))(v111, v113);
    return v36;
  }

  v43 = sub_219BF7214();
  if (!v43)
  {
    goto LABEL_60;
  }

LABEL_6:
  v117 = v36;
  result = sub_21870B65C(0, v43 & ~(v43 >> 63), 0);
  if ((v43 & 0x8000000000000000) == 0)
  {
    v45 = 0;
    v36 = v117;
    do
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v45, v42);
      }

      else
      {
      }

      v46 = sub_219BF16A4();
      v48 = v47;

      v117 = v36;
      v50 = *(v36 + 16);
      v49 = *(v36 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_21870B65C((v49 > 1), v50 + 1, 1);
        v36 = v117;
      }

      ++v45;
      *(v36 + 16) = v50 + 1;
      v51 = v36 + 16 * v50;
      *(v51 + 32) = v46;
      *(v51 + 40) = v48;
    }

    while (v43 != v45);
    (*(v112 + 1))(v111, v113);
LABEL_52:

    return v36;
  }

LABEL_65:
  __break(1u);
  return result;
}

char *sub_21915379C(unint64_t a1)
{
  v80 = type metadata accessor for CuratedMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v80);
  v81 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECF58(0);
  v84 = *(v3 - 8);
  v85 = v3;
  MEMORY[0x28223BE20](v3);
  v83 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EC3A4(0);
  v9 = v8;
  v82 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF1934();
  v86 = *(v12 - 8);
  v87 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v79 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v79 - v19;
  v21 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80(0);
  MEMORY[0x28223BE20](v24);
  v27 = a1;
  v29 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1 >> 60;
  v31 = MEMORY[0x277D84F90];
  if (v30 > 3)
  {
    if ((v30 - 4) < 9)
    {
      return v31;
    }

    if (v30 != 13)
    {
      v77 = *((v27 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v78 = sub_21915379C(v77);

      return v78;
    }

    v48 = swift_projectBox();
    (*(v84 + 2))(v83, v48, v85);
    v49 = v81;
    sub_219BEDD14();
    v51 = v86;
    v50 = v87;
    (*(v86 + 16))(v14, v49 + *(v80 + 32), v87);
    sub_21915A6EC(v49, type metadata accessor for CuratedMagazineFeedGroupConfigData);
    sub_219BF1724();
    (*(v51 + 8))(v14, v50);
    v52 = sub_219BF5A94();

    if (v52 >> 62)
    {
      v53 = sub_219BF7214();
      if (v53)
      {
LABEL_21:
        v88 = v31;
        result = sub_21870B65C(0, v53 & ~(v53 >> 63), 0);
        if ((v53 & 0x8000000000000000) == 0)
        {
          v54 = 0;
          v31 = v88;
          do
          {
            if ((v52 & 0xC000000000000001) != 0)
            {
              MEMORY[0x21CECE0F0](v54, v52);
            }

            else
            {
            }

            v55 = sub_219BF1374();
            v57 = v56;

            v88 = v31;
            v59 = *(v31 + 16);
            v58 = *(v31 + 24);
            if (v59 >= v58 >> 1)
            {
              sub_21870B65C((v58 > 1), v59 + 1, 1);
              v31 = v88;
            }

            ++v54;
            *(v31 + 16) = v59 + 1;
            v60 = v31 + 16 * v59;
            *(v60 + 32) = v55;
            *(v60 + 40) = v57;
          }

          while (v53 != v54);
LABEL_17:
          (*(v84 + 1))(v83, v85);
LABEL_42:

          return v31;
        }

        goto LABEL_51;
      }
    }

    else
    {
      v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53)
      {
        goto LABEL_21;
      }
    }

LABEL_48:

    (*(v84 + 1))(v83, v85);
    return v31;
  }

  v84 = v11;
  v85 = v9;
  if (v30 < 2)
  {
    return v31;
  }

  if (v30 != 2)
  {
    v61 = swift_projectBox();
    v62 = v82;
    v64 = v84;
    v63 = v85;
    (*(v82 + 16))(v84, v61, v85);
    sub_219BEDD14();
    v65 = *(v5 + 20);
    v67 = v86;
    v66 = v87;
    (*(v86 + 16))(v17, &v7[v65], v87);
    sub_21915A6EC(v7, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData);
    sub_219BF1724();
    (*(v67 + 8))(v17, v66);
    v68 = sub_219BF5A94();

    if (v68 >> 62)
    {
      v69 = sub_219BF7214();
      if (v69)
      {
LABEL_32:
        v88 = v31;
        result = sub_21870B65C(0, v69 & ~(v69 >> 63), 0);
        if ((v69 & 0x8000000000000000) == 0)
        {
          v70 = 0;
          v31 = v88;
          do
          {
            if ((v68 & 0xC000000000000001) != 0)
            {
              MEMORY[0x21CECE0F0](v70, v68);
            }

            else
            {
            }

            v71 = sub_219BF1374();
            v73 = v72;

            v88 = v31;
            v75 = *(v31 + 16);
            v74 = *(v31 + 24);
            if (v75 >= v74 >> 1)
            {
              sub_21870B65C((v74 > 1), v75 + 1, 1);
              v31 = v88;
            }

            ++v70;
            *(v31 + 16) = v75 + 1;
            v76 = v31 + 16 * v75;
            *(v76 + 32) = v71;
            *(v76 + 40) = v73;
          }

          while (v69 != v70);
          (*(v82 + 8))(v84, v85);
          goto LABEL_42;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v69)
      {
        goto LABEL_32;
      }
    }

    (*(v62 + 8))(v64, v63);
    return v31;
  }

  v33 = v25;
  v34 = v26;
  v35 = v29;
  v36 = swift_projectBox();
  v84 = v34;
  (*(v34 + 2))(v35, v36, v33);
  v85 = v33;
  v83 = v35;
  sub_219BEDD14();
  v38 = v86;
  v37 = v87;
  (*(v86 + 16))(v20, &v23[*(v21 + 20)], v87);
  sub_21915A6EC(v23, type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData);
  sub_219BF1724();
  (*(v38 + 8))(v20, v37);
  v39 = sub_219BF5A94();

  if (v39 >> 62)
  {
    v40 = sub_219BF7214();
    if (!v40)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v40)
    {
      goto LABEL_48;
    }
  }

  v88 = v31;
  result = sub_21870B65C(0, v40 & ~(v40 >> 63), 0);
  if ((v40 & 0x8000000000000000) == 0)
  {
    v41 = 0;
    v31 = v88;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v41, v39);
      }

      else
      {
      }

      v42 = sub_219BF1374();
      v44 = v43;

      v88 = v31;
      v46 = *(v31 + 16);
      v45 = *(v31 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_21870B65C((v45 > 1), v46 + 1, 1);
        v31 = v88;
      }

      ++v41;
      *(v31 + 16) = v46 + 1;
      v47 = v31 + 16 * v46;
      *(v47 + 32) = v42;
      *(v47 + 40) = v44;
    }

    while (v40 != v41);
    goto LABEL_17;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_21915410C(unint64_t a1, __n128 a2)
{
  v3 = a1 >> 60;
  if ((a1 >> 60) <= 7)
  {
    if (v3 > 2)
    {
      if ((v3 - 4) >= 4)
      {
        v4 = &unk_282A24508;

        return sub_2194B37A8(v4);
      }
    }

    else if (v3)
    {
      if (v3 == 1)
      {
        v4 = &unk_282A244B8;
      }

      else
      {
        v4 = &unk_282A244E0;
      }

      return sub_2194B37A8(v4);
    }

    return MEMORY[0x277D84FA0];
  }

  if (v3 <= 10)
  {
    if (v3 == 8)
    {
      v4 = &unk_282A24530;
    }

    else if (v3 == 9)
    {
      v4 = &unk_282A24558;
    }

    else
    {
      v4 = &unk_282A24580;
    }

    return sub_2194B37A8(v4);
  }

  if (v3 <= 12)
  {
    if (v3 == 11)
    {
      v4 = &unk_282A245A8;

      return sub_2194B37A8(v4);
    }

    return MEMORY[0x277D84FA0];
  }

  if (v3 == 13)
  {
    v4 = &unk_282A245D0;

    return sub_2194B37A8(v4);
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

  v8 = sub_21915410C(v6, v7);

  return v8;
}

void sub_219154278(BOOL *a2@<X8>)
{
  v3 = sub_219BF7614();

  *a2 = v3 != 0;
}

void sub_2191542CC(BOOL *a3@<X8>)
{
  v4 = sub_219BF7614();

  *a3 = v4 != 0;
}

uint64_t sub_219154324(uint64_t a1)
{
  v2 = sub_21915C044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219154360(uint64_t a1)
{
  v2 = sub_21915C044();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21915439C(uint64_t a1)
{
  v93 = a1;
  sub_2186ECF58(0);
  v91 = *(v1 - 8);
  v92 = v1;
  MEMORY[0x28223BE20](v1);
  v90 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC(0);
  v88 = *(v3 - 8);
  v89 = v3;
  MEMORY[0x28223BE20](v3);
  v87 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F05748(0);
  v85 = *(v5 - 8);
  v86 = v5;
  MEMORY[0x28223BE20](v5);
  v84 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EFE8(0);
  v82 = *(v7 - 8);
  v83 = v7;
  MEMORY[0x28223BE20](v7);
  v81 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E60B0(0);
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x28223BE20](v9);
  v78 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A40C(0);
  v76 = *(v11 - 8);
  v77 = v11;
  MEMORY[0x28223BE20](v11);
  v75 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B87670(0);
  v73 = *(v13 - 8);
  v74 = v13;
  MEMORY[0x28223BE20](v13);
  v72 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30(0);
  v71 = v15;
  v70 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v69 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8773C(0);
  v68 = v17;
  v67 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v66 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EC3A4(0);
  v65 = v19;
  v64 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v63 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80(0);
  v60 = v21;
  v62 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594(0);
  v25 = v24;
  v61 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E91FC8, sub_21915A520, sub_21915A574, &type metadata for InlineCategoriesMagazineFeedGroupConfigData);
  v29 = v28;
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v32 = &v59 - v31;
  sub_21915A5C8(0, &qword_280E92180, sub_21915A644, sub_21915A698, &type metadata for CategoriesMagazineFeedGroupConfigData);
  v34 = v33;
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v37 = &v59 - v36;
  switch(v38 >> 60)
  {
    case 1uLL:
      v52 = swift_projectBox();
      v53 = v61;
      (*(v61 + 16))(v27, v52, v25);
      sub_219BEDD64();
      (*(v53 + 8))(v27, v25);
      return;
    case 2uLL:
      v47 = swift_projectBox();
      v48 = v62;
      v49 = v60;
      (*(v62 + 16))(v23, v47, v60);
      sub_219BEDD64();
      (*(v48 + 8))(v23, v49);
      return;
    case 3uLL:
      v50 = swift_projectBox();
      v42 = v64;
      v41 = v63;
      v43 = v65;
      (*(v64 + 16))(v63, v50, v65);
      goto LABEL_17;
    case 4uLL:
      v44 = swift_projectBox();
      (*(v30 + 16))(v32, v44, v29);
      sub_219BEDD64();
      (*(v30 + 8))(v32, v29);
      return;
    case 5uLL:
      v54 = swift_projectBox();
      v42 = v67;
      v41 = v66;
      v43 = v68;
      (*(v67 + 16))(v66, v54, v68);
      goto LABEL_17;
    case 6uLL:
      v56 = swift_projectBox();
      v42 = v70;
      v41 = v69;
      v43 = v71;
      (*(v70 + 16))(v69, v56, v71);
      goto LABEL_17;
    case 7uLL:
      v51 = swift_projectBox();
      v42 = v73;
      v43 = v74;
      v41 = v72;
      (*(v73 + 16))(v72, v51, v74);
      goto LABEL_17;
    case 8uLL:
      v58 = swift_projectBox();
      v41 = v75;
      v42 = v76;
      v43 = v77;
      (*(v76 + 16))(v75, v58, v77);
      goto LABEL_17;
    case 9uLL:
      v46 = swift_projectBox();
      v41 = v78;
      v42 = v79;
      v43 = v80;
      (*(v79 + 16))(v78, v46, v80);
      goto LABEL_17;
    case 0xAuLL:
      v57 = swift_projectBox();
      v41 = v81;
      v42 = v82;
      v43 = v83;
      (*(v82 + 16))(v81, v57, v83);
      goto LABEL_17;
    case 0xBuLL:
      v40 = swift_projectBox();
      v41 = v84;
      v42 = v85;
      v43 = v86;
      (*(v85 + 16))(v84, v40, v86);
      goto LABEL_17;
    case 0xCuLL:
      v45 = swift_projectBox();
      v41 = v87;
      v42 = v88;
      v43 = v89;
      (*(v88 + 16))(v87, v45, v89);
      goto LABEL_17;
    case 0xDuLL:
      v55 = swift_projectBox();
      v41 = v90;
      v42 = v91;
      v43 = v92;
      (*(v91 + 16))(v90, v55, v92);
LABEL_17:
      sub_219BEDD64();
      (*(v42 + 8))(v41, v43);
      break;
    case 0xEuLL:

      sub_21915439C(v93);

      break;
    default:
      v39 = swift_projectBox();
      (*(v35 + 16))(v37, v39, v34);
      sub_219BEDD64();
      (*(v35 + 8))(v37, v34);
      break;
  }
}

uint64_t sub_219154EDC(uint64_t a1)
{
  sub_2186ECF58(0);
  v96 = *(v2 - 8);
  v97 = v2;
  MEMORY[0x28223BE20](v2);
  v95 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC(0);
  v93 = *(v4 - 8);
  v94 = v4;
  MEMORY[0x28223BE20](v4);
  v92 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F05748(0);
  v90 = *(v6 - 8);
  v91 = v6;
  MEMORY[0x28223BE20](v6);
  v89 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EFE8(0);
  v87 = *(v8 - 8);
  v88 = v8;
  MEMORY[0x28223BE20](v8);
  v86 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E60B0(0);
  v84 = *(v10 - 8);
  v85 = v10;
  MEMORY[0x28223BE20](v10);
  v83 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B87670(0);
  v81 = *(v12 - 8);
  v82 = v12;
  MEMORY[0x28223BE20](v12);
  v80 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A40C(0);
  v78 = *(v14 - 8);
  v79 = v14;
  MEMORY[0x28223BE20](v14);
  v77 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30(0);
  v76 = v16;
  v75 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v74 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8773C(0);
  v73 = v18;
  v72 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v71 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EC3A4(0);
  v70 = v20;
  v69 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v66 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80(0);
  v23 = v22;
  v68 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594(0);
  v27 = v26;
  v67 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E91FC8, sub_21915A520, sub_21915A574, &type metadata for InlineCategoriesMagazineFeedGroupConfigData);
  v31 = v30;
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v34 = &v65 - v33;
  sub_21915A5C8(0, &qword_280E92180, sub_21915A644, sub_21915A698, &type metadata for CategoriesMagazineFeedGroupConfigData);
  v36 = v35;
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v65 - v39;
  switch(v38 >> 60)
  {
    case 1uLL:
      v61 = swift_projectBox();
      v62 = v67;
      (*(v67 + 16))(v29, v61, v27);
      v43 = sub_219BEDCA4();
      (*(v62 + 8))(v29, v27);
      return v43;
    case 2uLL:
      v54 = swift_projectBox();
      v55 = v68;
      (*(v68 + 16))(v25, v54, v23);
      v43 = sub_219BEDCA4();
      (*(v55 + 8))(v25, v23);
      return v43;
    case 3uLL:
      v56 = swift_projectBox();
      v49 = v69;
      v57 = *(v69 + 16);
      v48 = v66;
      v58 = v66;
      v59 = &v98;
      goto LABEL_15;
    case 4uLL:
      v51 = swift_projectBox();
      (*(v32 + 16))(v34, v51, v31);
      v43 = sub_219BEDCA4();
      (*(v32 + 8))(v34, v31);
      return v43;
    case 5uLL:
      v56 = swift_projectBox();
      v49 = v72;
      v57 = *(v72 + 16);
      v48 = v71;
      v58 = v71;
      v59 = &v99;
      goto LABEL_15;
    case 6uLL:
      v56 = swift_projectBox();
      v49 = v75;
      v57 = *(v75 + 16);
      v48 = v74;
      v58 = v74;
      v59 = &v100;
LABEL_15:
      v50 = *(v59 - 32);
      goto LABEL_18;
    case 7uLL:
      v60 = swift_projectBox();
      v48 = v80;
      v49 = v81;
      v50 = v82;
      (*(v81 + 16))(v80, v60, v82);
      goto LABEL_19;
    case 8uLL:
      v56 = swift_projectBox();
      v48 = v77;
      v49 = v78;
      v57 = *(v78 + 16);
      v58 = v77;
      v50 = v79;
LABEL_18:
      v57(v58, v56, v50);
      goto LABEL_19;
    case 9uLL:
      v53 = swift_projectBox();
      v48 = v83;
      v49 = v84;
      v50 = v85;
      (*(v84 + 16))(v83, v53, v85);
      goto LABEL_19;
    case 0xAuLL:
      v64 = swift_projectBox();
      v48 = v86;
      v49 = v87;
      v50 = v88;
      (*(v87 + 16))(v86, v64, v88);
      goto LABEL_19;
    case 0xBuLL:
      v47 = swift_projectBox();
      v48 = v89;
      v49 = v90;
      v50 = v91;
      (*(v90 + 16))(v89, v47, v91);
      goto LABEL_19;
    case 0xCuLL:
      v52 = swift_projectBox();
      v48 = v92;
      v49 = v93;
      v50 = v94;
      (*(v93 + 16))(v92, v52, v94);
      goto LABEL_19;
    case 0xDuLL:
      v63 = swift_projectBox();
      v48 = v95;
      v49 = v96;
      v50 = v97;
      (*(v96 + 16))(v95, v63, v97);
LABEL_19:
      v43 = sub_219BEDCA4();
      (*(v49 + 8))(v48, v50);
      return v43;
    case 0xEuLL:
      v44 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v45 = sub_219154EDC(v44);

      return v45;
    default:
      v41 = swift_projectBox();
      (*(v37 + 16))(v40, v41, v36);
      v42 = sub_219BEDCA4();
      (*(v37 + 8))(v40, v36);
      return v42;
  }
}

uint64_t sub_2191559E0(uint64_t a1)
{
  sub_2186ECF58(0);
  v93 = *(v2 - 8);
  v94 = v2;
  MEMORY[0x28223BE20](v2);
  v92 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC(0);
  v90 = *(v4 - 8);
  v91 = v4;
  MEMORY[0x28223BE20](v4);
  v89 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F05748(0);
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x28223BE20](v6);
  v86 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EFE8(0);
  v84 = *(v8 - 8);
  v85 = v8;
  MEMORY[0x28223BE20](v8);
  v83 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E60B0(0);
  v81 = *(v10 - 8);
  v82 = v10;
  MEMORY[0x28223BE20](v10);
  v80 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A40C(0);
  v78 = *(v12 - 8);
  v79 = v12;
  MEMORY[0x28223BE20](v12);
  v77 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B87670(0);
  v75 = *(v14 - 8);
  v76 = v14;
  MEMORY[0x28223BE20](v14);
  v74 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30(0);
  v73 = v16;
  v72 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v71 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8773C(0);
  v70 = v18;
  v69 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v68 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E91FC8, sub_21915A520, sub_21915A574, &type metadata for InlineCategoriesMagazineFeedGroupConfigData);
  v67 = v20;
  v66 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v65 = &v62 - v21;
  sub_2186EC3A4(0);
  v23 = v22;
  v64 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80(0);
  v27 = v26;
  v63 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594(0);
  v31 = v30;
  v62 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v62 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E92180, sub_21915A644, sub_21915A698, &type metadata for CategoriesMagazineFeedGroupConfigData);
  v35 = v34;
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](a1);
  v38 = &v62 - v37;
  v40 = 0;
  switch(v39 >> 60)
  {
    case 1uLL:
      v51 = swift_projectBox();
      v52 = v62;
      (*(v62 + 16))(v33, v51, v31);
      v40 = sub_219BEDD54();
      (*(v52 + 8))(v33, v31);
      return v40;
    case 2uLL:
      v53 = swift_projectBox();
      v54 = v63;
      (*(v63 + 16))(v29, v53, v27);
      v40 = sub_219BEDD54();
      (*(v54 + 8))(v29, v27);
      return v40;
    case 3uLL:
      v47 = swift_projectBox();
      v48 = v64;
      (*(v64 + 16))(v25, v47, v23);
      v40 = sub_219BEDD54();
      (*(v48 + 8))(v25, v23);
      return v40;
    case 4uLL:
      v56 = swift_projectBox();
      v44 = v66;
      v43 = v65;
      v45 = v67;
      (*(v66 + 16))(v65, v56, v67);
      goto LABEL_16;
    case 5uLL:
      v58 = swift_projectBox();
      v44 = v69;
      v43 = v68;
      v45 = v70;
      (*(v69 + 16))(v68, v58, v70);
      goto LABEL_16;
    case 6uLL:
      v55 = swift_projectBox();
      v44 = v72;
      v43 = v71;
      v45 = v73;
      (*(v72 + 16))(v71, v55, v73);
      goto LABEL_16;
    case 7uLL:
      v60 = swift_projectBox();
      v43 = v74;
      v44 = v75;
      v45 = v76;
      (*(v75 + 16))(v74, v60, v76);
      goto LABEL_16;
    case 8uLL:
      v50 = swift_projectBox();
      v43 = v77;
      v44 = v78;
      v45 = v79;
      (*(v78 + 16))(v77, v50, v79);
      goto LABEL_16;
    case 9uLL:
      v59 = swift_projectBox();
      v43 = v80;
      v44 = v81;
      v45 = v82;
      (*(v81 + 16))(v80, v59, v82);
      goto LABEL_16;
    case 0xAuLL:
      v46 = swift_projectBox();
      v43 = v83;
      v44 = v84;
      v45 = v85;
      (*(v84 + 16))(v83, v46, v85);
      goto LABEL_16;
    case 0xBuLL:
      v49 = swift_projectBox();
      v43 = v86;
      v44 = v87;
      v45 = v88;
      (*(v87 + 16))(v86, v49, v88);
      goto LABEL_16;
    case 0xCuLL:
      v57 = swift_projectBox();
      v43 = v89;
      v44 = v90;
      v45 = v91;
      (*(v90 + 16))(v89, v57, v91);
      goto LABEL_16;
    case 0xDuLL:
      v42 = swift_projectBox();
      v43 = v92;
      v44 = v93;
      v45 = v94;
      (*(v93 + 16))(v92, v42, v94);
LABEL_16:
      v40 = sub_219BEDD54();
      (*(v44 + 8))(v43, v45);
      break;
    case 0xEuLL:
      return v40;
    default:
      v41 = swift_projectBox();
      (*(v36 + 16))(v38, v41, v35);
      v40 = sub_219BEDD54();
      (*(v36 + 8))(v38, v35);
      break;
  }

  return v40;
}

uint64_t sub_2191564A4(uint64_t a1)
{
  v2 = type metadata accessor for CuratedMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v2 - 8);
  v165 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECF58(0);
  v164 = v4;
  v163 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v162 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for NewspaperMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v161);
  v160 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC(0);
  v159 = v7;
  v158 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v157 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v9 - 8);
  v156 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F05748(0);
  v155 = v11;
  v154 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v153 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TrendingMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v13 - 8);
  v152 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EFE8(0);
  v151 = v15;
  v150 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v149 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TopicMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v17 - 8);
  v148 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E60B0(0);
  v147 = v19;
  v146 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v145 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v21 - 8);
  v144 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A40C(0);
  v143 = v23;
  v142 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v141 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PaywallMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v25 - 8);
  v140 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B87670(0);
  v139 = v27;
  v138 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v137 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for NewIssueMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v29 - 8);
  v136 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30(0);
  v135 = v31;
  v134 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v133 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v33 - 8);
  v132 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8773C(0);
  v131 = v35;
  v130 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v129 = &v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E91FC8, sub_21915A520, sub_21915A574, &type metadata for InlineCategoriesMagazineFeedGroupConfigData);
  v128 = v37;
  v127 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v126 = &v118 - v38;
  v125 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v125);
  v124 = &v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EC3A4(0);
  v123 = v40;
  v122 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v121 = &v118 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v120);
  v43 = &v118 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80(0);
  v45 = v44;
  v119 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v118 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v48);
  v50 = &v118 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594(0);
  v52 = v51;
  v118 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v54 = &v118 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E92180, sub_21915A644, sub_21915A698, &type metadata for CategoriesMagazineFeedGroupConfigData);
  v56 = v55;
  v57 = *(v55 - 8);
  MEMORY[0x28223BE20](a1);
  v60 = &v118 - v59;
  switch(v58 >> 60)
  {
    case 1uLL:
      v96 = swift_projectBox();
      v97 = v118;
      (*(v118 + 16))(v54, v96, v52);
      sub_219BEDD14();
      (*(v97 + 8))(v54, v52);
      v62 = v50[*(v48 + 32)];
      v86 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData;
      v87 = v50;
      goto LABEL_18;
    case 2uLL:
      v84 = swift_projectBox();
      v85 = v119;
      (*(v119 + 16))(v47, v84, v45);
      sub_219BEDD14();
      (*(v85 + 8))(v47, v45);
      v62 = v43[*(v120 + 32)];
      v86 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData;
      v87 = v43;
      goto LABEL_18;
    case 3uLL:
      v88 = swift_projectBox();
      v89 = v122;
      v90 = v121;
      v91 = v123;
      (*(v122 + 16))(v121, v88, v123);
      v70 = v124;
      sub_219BEDD14();
      (*(v89 + 8))(v90, v91);
      v62 = v70[*(v125 + 32)];
      v71 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 4uLL:
      v72 = swift_projectBox();
      v73 = v127;
      v74 = v126;
      v75 = v128;
      (*(v127 + 16))(v126, v72, v128);
      sub_219BEDD14();
      (*(v73 + 8))(v74, v75);
      v171 = v168;
      *v172 = *v169;
      *&v172[10] = *&v169[10];
      v170[0] = v166;
      v170[1] = v167;
      sub_21915A74C(v170);
      return v172[25];
    case 5uLL:
      v98 = swift_projectBox();
      v99 = v130;
      v100 = v129;
      v101 = v131;
      (*(v130 + 16))(v129, v98, v131);
      v70 = v132;
      sub_219BEDD14();
      (*(v99 + 8))(v100, v101);
      v62 = v70[25];
      v71 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 6uLL:
      v106 = swift_projectBox();
      v107 = v134;
      v108 = v133;
      v109 = v135;
      (*(v134 + 16))(v133, v106, v135);
      v70 = v136;
      sub_219BEDD14();
      (*(v107 + 8))(v108, v109);
      v62 = v70[2];
      v71 = type metadata accessor for NewIssueMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 7uLL:
      v92 = swift_projectBox();
      v93 = v138;
      v94 = v137;
      v95 = v139;
      (*(v138 + 16))(v137, v92, v139);
      v70 = v140;
      sub_219BEDD14();
      (*(v93 + 8))(v94, v95);
      v62 = v70[2];
      v71 = type metadata accessor for PaywallMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 8uLL:
      v114 = swift_projectBox();
      v115 = v142;
      v116 = v141;
      v117 = v143;
      (*(v142 + 16))(v141, v114, v143);
      v70 = v144;
      sub_219BEDD14();
      (*(v115 + 8))(v116, v117);
      v62 = v70[57];
      v71 = type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 9uLL:
      v80 = swift_projectBox();
      v81 = v146;
      v82 = v145;
      v83 = v147;
      (*(v146 + 16))(v145, v80, v147);
      v70 = v148;
      sub_219BEDD14();
      (*(v81 + 8))(v82, v83);
      v62 = v70[2];
      v71 = type metadata accessor for TopicMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xAuLL:
      v110 = swift_projectBox();
      v111 = v150;
      v112 = v149;
      v113 = v151;
      (*(v150 + 16))(v149, v110, v151);
      v70 = v152;
      sub_219BEDD14();
      (*(v111 + 8))(v112, v113);
      v62 = v70[2];
      v71 = type metadata accessor for TrendingMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xBuLL:
      v66 = swift_projectBox();
      v67 = v154;
      v68 = v153;
      v69 = v155;
      (*(v154 + 16))(v153, v66, v155);
      v70 = v156;
      sub_219BEDD14();
      (*(v67 + 8))(v68, v69);
      v62 = v70[2];
      v71 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xCuLL:
      v76 = swift_projectBox();
      v77 = v158;
      v78 = v157;
      v79 = v159;
      (*(v158 + 16))(v157, v76, v159);
      v70 = v160;
      sub_219BEDD14();
      (*(v77 + 8))(v78, v79);
      v62 = v70[*(v161 + 40)];
      v71 = type metadata accessor for NewspaperMagazineFeedGroupConfigData;
      goto LABEL_17;
    case 0xDuLL:
      v102 = swift_projectBox();
      v103 = v163;
      v104 = v162;
      v105 = v164;
      (*(v163 + 16))(v162, v102, v164);
      v70 = v165;
      sub_219BEDD14();
      (*(v103 + 8))(v104, v105);
      v62 = v70[2];
      v71 = type metadata accessor for CuratedMagazineFeedGroupConfigData;
LABEL_17:
      v86 = v71;
      v87 = v70;
LABEL_18:
      sub_21915A6EC(v87, v86);
      return v62;
    case 0xEuLL:
      v63 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v64 = sub_2191564A4(v63);

      return v64 & 1;
    default:
      v61 = swift_projectBox();
      (*(v57 + 16))(v60, v61, v56);
      sub_219BEDD14();
      (*(v57 + 8))(v60, v56);

      return BYTE1(v171);
  }
}

void sub_2191577D4(uint64_t a1@<X8>)
{
  v160 = a1;
  v158 = type metadata accessor for CuratedMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v158);
  v159 = &v114 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECF58(0);
  v156 = *(v2 - 8);
  v157 = v2;
  MEMORY[0x28223BE20](v2);
  v154 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for NewspaperMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v153);
  v155 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC(0);
  v151 = *(v5 - 8);
  v152 = v5;
  MEMORY[0x28223BE20](v5);
  v149 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v148);
  v150 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F05748(0);
  v146 = *(v8 - 8);
  v147 = v8;
  MEMORY[0x28223BE20](v8);
  v144 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for TrendingMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v143);
  v145 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EFE8(0);
  v141 = *(v11 - 8);
  v142 = v11;
  MEMORY[0x28223BE20](v11);
  v139 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for TopicMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v138);
  v140 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E60B0(0);
  v137 = v14;
  v136 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v134 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v133);
  v135 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A40C(0);
  v132 = v17;
  v131 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v129 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for NewIssueMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v128);
  v130 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30(0);
  v127 = v20;
  v126 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v124 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v123);
  v125 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8773C(0);
  v122 = v23;
  v121 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v119 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v118);
  v120 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EC3A4(0);
  v117 = v26;
  v116 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v29);
  v31 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80(0);
  v33 = v32;
  v115 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v114 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v36);
  v38 = &v114 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594(0);
  v40 = v39;
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v43 = &v114 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(v44 >> 60)
  {
    case 1uLL:
      v76 = swift_projectBox();
      (*(v41 + 16))(v43, v76, v40);
      sub_219BEDD14();
      (*(v41 + 8))(v43, v40);
      v77 = *(v36 + 28);
      v78 = sub_219BEF554();
      (*(*(v78 - 8) + 16))(v160, &v38[v77], v78);
      v62 = type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData;
      v63 = v38;
      goto LABEL_20;
    case 2uLL:
      v58 = swift_projectBox();
      v59 = v115;
      (*(v115 + 16))(v35, v58, v33);
      sub_219BEDD14();
      (*(v59 + 8))(v35, v33);
      v60 = *(v29 + 28);
      v61 = sub_219BEF554();
      (*(*(v61 - 8) + 16))(v160, &v31[v60], v61);
      v62 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData;
      v63 = v31;
      goto LABEL_20;
    case 3uLL:
      v85 = swift_projectBox();
      v86 = v116;
      v87 = v117;
      (*(v116 + 16))(v28, v85, v117);
      v54 = v120;
      sub_219BEDD14();
      (*(v86 + 8))(v28, v87);
      v88 = *(v118 + 28);
      v89 = sub_219BEF554();
      (*(*(v89 - 8) + 16))(v160, &v54[v88], v89);
      v57 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData;
      goto LABEL_19;
    case 5uLL:
      v96 = swift_projectBox();
      v97 = v121;
      v98 = v119;
      v99 = v122;
      (*(v121 + 16))(v119, v96, v122);
      v54 = v125;
      sub_219BEDD14();
      (*(v97 + 8))(v98, v99);
      v100 = *(v123 + 32);
      v101 = sub_219BEF554();
      (*(*(v101 - 8) + 16))(v160, &v54[v100], v101);
      v57 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData;
      goto LABEL_19;
    case 6uLL:
      v79 = swift_projectBox();
      v80 = v126;
      v81 = v124;
      v82 = v127;
      (*(v126 + 16))(v124, v79, v127);
      v54 = v130;
      sub_219BEDD14();
      (*(v80 + 8))(v81, v82);
      v83 = *(v128 + 28);
      v84 = sub_219BEF554();
      (*(*(v84 - 8) + 16))(v160, &v54[v83], v84);
      v57 = type metadata accessor for NewIssueMagazineFeedGroupConfigData;
      goto LABEL_19;
    case 8uLL:
      v108 = swift_projectBox();
      v109 = v131;
      v110 = v129;
      v111 = v132;
      (*(v131 + 16))(v129, v108, v132);
      v54 = v135;
      sub_219BEDD14();
      (*(v109 + 8))(v110, v111);
      v112 = *(v133 + 40);
      v113 = sub_219BEF554();
      (*(*(v113 - 8) + 16))(v160, &v54[v112], v113);
      v57 = type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData;
      goto LABEL_19;
    case 9uLL:
      v70 = swift_projectBox();
      v71 = v136;
      v72 = v134;
      v73 = v137;
      (*(v136 + 16))(v134, v70, v137);
      v54 = v140;
      sub_219BEDD14();
      (*(v71 + 8))(v72, v73);
      v74 = *(v138 + 28);
      v75 = sub_219BEF554();
      (*(*(v75 - 8) + 16))(v160, &v54[v74], v75);
      v57 = type metadata accessor for TopicMagazineFeedGroupConfigData;
      goto LABEL_19;
    case 0xAuLL:
      v102 = swift_projectBox();
      v104 = v141;
      v103 = v142;
      v105 = v139;
      (*(v141 + 16))(v139, v102, v142);
      v54 = v145;
      sub_219BEDD14();
      (*(v104 + 8))(v105, v103);
      v106 = *(v143 + 28);
      v107 = sub_219BEF554();
      (*(*(v107 - 8) + 16))(v160, &v54[v106], v107);
      v57 = type metadata accessor for TrendingMagazineFeedGroupConfigData;
      goto LABEL_19;
    case 0xBuLL:
      v50 = swift_projectBox();
      v52 = v146;
      v51 = v147;
      v53 = v144;
      (*(v146 + 16))(v144, v50, v147);
      v54 = v150;
      sub_219BEDD14();
      (*(v52 + 8))(v53, v51);
      v55 = *(v148 + 28);
      v56 = sub_219BEF554();
      (*(*(v56 - 8) + 16))(v160, &v54[v55], v56);
      v57 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData;
      goto LABEL_19;
    case 0xCuLL:
      v64 = swift_projectBox();
      v66 = v151;
      v65 = v152;
      v67 = v149;
      (*(v151 + 16))(v149, v64, v152);
      v54 = v155;
      sub_219BEDD14();
      (*(v66 + 8))(v67, v65);
      v68 = *(v153 + 44);
      v69 = sub_219BEF554();
      (*(*(v69 - 8) + 16))(v160, &v54[v68], v69);
      v57 = type metadata accessor for NewspaperMagazineFeedGroupConfigData;
      goto LABEL_19;
    case 0xDuLL:
      v90 = swift_projectBox();
      v92 = v156;
      v91 = v157;
      v93 = v154;
      (*(v156 + 16))(v154, v90, v157);
      v54 = v159;
      sub_219BEDD14();
      (*(v92 + 8))(v93, v91);
      v94 = *(v158 + 28);
      v95 = sub_219BEF554();
      (*(*(v95 - 8) + 16))(v160, &v54[v94], v95);
      v57 = type metadata accessor for CuratedMagazineFeedGroupConfigData;
LABEL_19:
      v62 = v57;
      v63 = v54;
LABEL_20:
      sub_21915A6EC(v63, v62);
      break;
    case 0xEuLL:

      sub_2191577D4(v160);

      break;
    default:
      v45 = *MEMORY[0x277D32640];
      v46 = sub_219BEF554();
      v47 = *(*(v46 - 8) + 104);
      v48 = v46;
      v49 = v160;

      v47(v49, v45, v48);
      break;
  }
}

void sub_219158A70(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v99 = a3;
  v101 = a2;
  v102 = a4;
  sub_2186ECF58(0);
  v100 = v5;
  v98 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v97 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC(0);
  v95 = *(v7 - 8);
  v96 = v7;
  MEMORY[0x28223BE20](v7);
  v94 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F05748(0);
  v92 = *(v9 - 8);
  v93 = v9;
  MEMORY[0x28223BE20](v9);
  v91 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EFE8(0);
  v89 = *(v11 - 8);
  v90 = v11;
  MEMORY[0x28223BE20](v11);
  v88 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E60B0(0);
  v86 = *(v13 - 8);
  v87 = v13;
  MEMORY[0x28223BE20](v13);
  v85 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A40C(0);
  v83 = *(v15 - 8);
  v84 = v15;
  MEMORY[0x28223BE20](v15);
  v82 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B87670(0);
  v81 = v17;
  v80 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v79 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30(0);
  v78 = v19;
  v77 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v76 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8773C(0);
  v75 = v21;
  v74 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v73 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E91FC8, sub_21915A520, sub_21915A574, &type metadata for InlineCategoriesMagazineFeedGroupConfigData);
  v72 = v23;
  v71 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v68 - v24;
  sub_2186EC3A4(0);
  v27 = v26;
  v70 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80(0);
  v31 = v30;
  v69 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594(0);
  v35 = v34;
  v68 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v68 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E92180, sub_21915A644, sub_21915A698, &type metadata for CategoriesMagazineFeedGroupConfigData);
  v39 = v38;
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](a1);
  v43 = &v68 - v42;
  switch(v41 >> 60)
  {
    case 1uLL:
      v64 = swift_projectBox();
      v65 = v68;
      (*(v68 + 16))(v37, v64, v35);
      v101(v35);
      (*(v65 + 8))(v37, v35);
      return;
    case 2uLL:
      v56 = swift_projectBox();
      v57 = v69;
      (*(v69 + 16))(v33, v56, v31);
      v101(v31);
      (*(v57 + 8))(v33, v31);
      return;
    case 3uLL:
      v58 = swift_projectBox();
      v59 = v70;
      (*(v70 + 16))(v29, v58, v27);
      v101(v27);
      (*(v59 + 8))(v29, v27);
      return;
    case 4uLL:
      v50 = swift_projectBox();
      v51 = v71;
      v49 = v72;
      (*(v71 + 16))(v25, v50, v72);
      v101(v49);
      v52 = *(v51 + 8);
      v53 = v25;
      goto LABEL_22;
    case 5uLL:
      v60 = swift_projectBox();
      v48 = v74;
      v61 = *(v74 + 16);
      v47 = v73;
      v62 = v73;
      v63 = &v103;
      goto LABEL_17;
    case 6uLL:
      v60 = swift_projectBox();
      v48 = v77;
      v61 = *(v77 + 16);
      v47 = v76;
      v62 = v76;
      v63 = &v104;
      goto LABEL_17;
    case 7uLL:
      v60 = swift_projectBox();
      v48 = v80;
      v61 = *(v80 + 16);
      v47 = v79;
      v62 = v79;
      v63 = &v105;
LABEL_17:
      v49 = *(v63 - 32);
      goto LABEL_20;
    case 8uLL:
      v60 = swift_projectBox();
      v47 = v82;
      v48 = v83;
      v61 = *(v83 + 16);
      v62 = v82;
      v49 = v84;
LABEL_20:
      v61(v62, v60, v49);
      goto LABEL_21;
    case 9uLL:
      v55 = swift_projectBox();
      v47 = v85;
      v48 = v86;
      v49 = v87;
      (*(v86 + 16))(v85, v55, v87);
      goto LABEL_21;
    case 0xAuLL:
      v67 = swift_projectBox();
      v47 = v88;
      v48 = v89;
      v49 = v90;
      (*(v89 + 16))(v88, v67, v90);
      goto LABEL_21;
    case 0xBuLL:
      v46 = swift_projectBox();
      v47 = v91;
      v48 = v92;
      v49 = v93;
      (*(v92 + 16))(v91, v46, v93);
      goto LABEL_21;
    case 0xCuLL:
      v54 = swift_projectBox();
      v47 = v94;
      v48 = v95;
      v49 = v96;
      (*(v95 + 16))(v94, v54, v96);
      goto LABEL_21;
    case 0xDuLL:
      v66 = swift_projectBox();
      v47 = v97;
      v48 = v98;
      v49 = v100;
      (*(v98 + 16))(v97, v66, v100);
LABEL_21:
      v101(v49);
      v52 = *(v48 + 8);
      v53 = v47;
LABEL_22:
      v52(v53, v49);
      break;
    case 0xEuLL:
      v45 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v99(v45);

      break;
    default:
      v44 = swift_projectBox();
      (*(v40 + 16))(v43, v44, v39);
      v101(v39);
      (*(v40 + 8))(v43, v39);
      break;
  }
}

uint64_t sub_219159680(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v103 = a3;
  v106 = a2;
  sub_2186ECF58(0);
  v104 = *(v4 - 8);
  v105 = v4;
  MEMORY[0x28223BE20](v4);
  v102 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC(0);
  v100 = *(v6 - 8);
  v101 = v6;
  MEMORY[0x28223BE20](v6);
  v99 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F05748(0);
  v97 = *(v8 - 8);
  v98 = v8;
  MEMORY[0x28223BE20](v8);
  v96 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EFE8(0);
  v94 = *(v10 - 8);
  v95 = v10;
  MEMORY[0x28223BE20](v10);
  v93 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E60B0(0);
  v91 = *(v12 - 8);
  v92 = v12;
  MEMORY[0x28223BE20](v12);
  v90 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A40C(0);
  v88 = *(v14 - 8);
  v89 = v14;
  MEMORY[0x28223BE20](v14);
  v87 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B87670(0);
  v86 = v16;
  v85 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v84 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30(0);
  v83 = v18;
  v82 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v81 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8773C(0);
  v80 = v20;
  v79 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v78 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E91FC8, sub_21915A520, sub_21915A574, &type metadata for InlineCategoriesMagazineFeedGroupConfigData);
  v77 = v22;
  v76 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v72 - v23;
  sub_2186EC3A4(0);
  v26 = v25;
  v75 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80(0);
  v30 = v29;
  v74 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594(0);
  v34 = v33;
  v73 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E92180, sub_21915A644, sub_21915A698, &type metadata for CategoriesMagazineFeedGroupConfigData);
  v38 = v37;
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](a1);
  v42 = &v72 - v41;
  switch(v40 >> 60)
  {
    case 1uLL:
      v64 = swift_projectBox();
      v65 = v73;
      (*(v73 + 16))(v36, v64, v34);
      v46 = v106(v34);
      v55 = *(v65 + 8);
      v56 = v36;
      goto LABEL_20;
    case 2uLL:
      v59 = swift_projectBox();
      v60 = v74;
      (*(v74 + 16))(v32, v59, v30);
      v46 = v106(v30);
      (*(v60 + 8))(v32, v30);
      return v46;
    case 3uLL:
      v61 = swift_projectBox();
      v62 = v75;
      (*(v75 + 16))(v28, v61, v26);
      v46 = v106(v26);
      (*(v62 + 8))(v28, v26);
      return v46;
    case 4uLL:
      v53 = swift_projectBox();
      v54 = v76;
      v34 = v77;
      (*(v76 + 16))(v24, v53, v77);
      v46 = v106(v34);
      v55 = *(v54 + 8);
      v56 = v24;
      goto LABEL_20;
    case 5uLL:
      v66 = swift_projectBox();
      v52 = v79;
      v67 = *(v79 + 16);
      v51 = v78;
      v68 = v78;
      v69 = &v107;
      goto LABEL_15;
    case 6uLL:
      v66 = swift_projectBox();
      v52 = v82;
      v67 = *(v82 + 16);
      v51 = v81;
      v68 = v81;
      v69 = &v108;
LABEL_15:
      v34 = *(v69 - 32);
      goto LABEL_18;
    case 7uLL:
      v63 = swift_projectBox();
      v52 = v85;
      v51 = v84;
      v34 = v86;
      (*(v85 + 16))(v84, v63, v86);
      goto LABEL_19;
    case 8uLL:
      v66 = swift_projectBox();
      v51 = v87;
      v52 = v88;
      v67 = *(v88 + 16);
      v68 = v87;
      v34 = v89;
LABEL_18:
      v67(v68, v66, v34);
      goto LABEL_19;
    case 9uLL:
      v58 = swift_projectBox();
      v51 = v90;
      v52 = v91;
      v34 = v92;
      (*(v91 + 16))(v90, v58, v92);
      goto LABEL_19;
    case 0xAuLL:
      v71 = swift_projectBox();
      v51 = v93;
      v52 = v94;
      v34 = v95;
      (*(v94 + 16))(v93, v71, v95);
      goto LABEL_19;
    case 0xBuLL:
      v50 = swift_projectBox();
      v51 = v96;
      v52 = v97;
      v34 = v98;
      (*(v97 + 16))(v96, v50, v98);
      goto LABEL_19;
    case 0xCuLL:
      v57 = swift_projectBox();
      v51 = v99;
      v52 = v100;
      v34 = v101;
      (*(v100 + 16))(v99, v57, v101);
      goto LABEL_19;
    case 0xDuLL:
      v70 = swift_projectBox();
      v52 = v104;
      v34 = v105;
      v51 = v102;
      (*(v104 + 16))(v102, v70, v105);
LABEL_19:
      v46 = v106(v34);
      v55 = *(v52 + 8);
      v56 = v51;
LABEL_20:
      v55(v56, v34);
      return v46;
    case 0xEuLL:
      v47 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v48 = v103(v47);

      return v48;
    default:
      v43 = swift_projectBox();
      (*(v39 + 16))(v42, v43, v38);
      v44 = v106(v38);
      v45 = v38;
      v46 = v44;
      (*(v39 + 8))(v42, v45);
      return v46;
  }
}

uint64_t sub_21915A1D0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_21915A7A0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21915A258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21915C098();

  return MEMORY[0x282190458](a1, a2, a3, v6);
}

unint64_t sub_21915A2B0()
{
  result = qword_280EC4880;
  if (!qword_280EC4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4880);
  }

  return result;
}

unint64_t sub_21915A308()
{
  result = qword_280EC4890;
  if (!qword_280EC4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4890);
  }

  return result;
}

unint64_t sub_21915A360()
{
  result = qword_280EC4888;
  if (!qword_280EC4888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4888);
  }

  return result;
}

unint64_t sub_21915A3B8()
{
  result = qword_280EC4898;
  if (!qword_280EC4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4898);
  }

  return result;
}

void sub_21915A40C(uint64_t a1)
{
  if (!qword_280E91FA0)
  {
    type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData(255);
    sub_21915A4D8(&unk_280E93D10, type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData, &unk_219C6C3D8);
    sub_21915A4D8(&qword_280E93D20, type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData, &unk_219C6C3B0);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91FA0);
    }
  }
}

uint64_t sub_21915A4D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21915A520()
{
  result = qword_280E94610;
  if (!qword_280E94610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94610);
  }

  return result;
}

unint64_t sub_21915A574()
{
  result = qword_280E94618;
  if (!qword_280E94618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94618);
  }

  return result;
}

void sub_21915A5C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_219BEDD94();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21915A644()
{
  result = qword_280E99DA8;
  if (!qword_280E99DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99DA8);
  }

  return result;
}

unint64_t sub_21915A698()
{
  result = qword_280E99DB0;
  if (!qword_280E99DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99DB0);
  }

  return result;
}

uint64_t sub_21915A6EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21915A7A0(void *a1)
{
  sub_2186ECF58(0);
  v138 = v2;
  v124 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v135 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC(0);
  v123 = v4;
  v122 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v134 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F05748(0);
  v121 = v6;
  v120 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v133 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EFE8(0);
  v119 = v8;
  v118 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v132 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E60B0(0);
  v117 = v10;
  v116 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v131 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A40C(0);
  v115 = v12;
  v114 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v130 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B87670(0);
  v113 = v14;
  v112 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v129 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30(0);
  v111 = v16;
  v110 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v128 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8773C(0);
  v106 = v18;
  v109 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v137 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EC3A4(0);
  v108 = v20;
  v107 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v126 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D77C80(0);
  v105 = v22;
  v104 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v127 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594(0);
  v103 = v24;
  v102 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v125 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21915A5C8(0, &qword_280E91FC8, sub_21915A520, sub_21915A574, &type metadata for InlineCategoriesMagazineFeedGroupConfigData);
  v136 = v26;
  v101 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v97 - v27;
  sub_21915A5C8(0, &qword_280E92180, sub_21915A644, sub_21915A698, &type metadata for CategoriesMagazineFeedGroupConfigData);
  v30 = v29;
  v100 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v97 - v31;
  sub_21915BFE8(0);
  v34 = v33;
  v139 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_21915C044();
  v38 = v140;
  sub_219BF7B34();
  v39 = a1;
  if (v38)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v99 = v32;
    v98 = v30;
    v40 = v28;
    v41 = v136;
    v42 = v137;
    v43 = v138;
    v140 = v39;
    sub_218CD679C();
    sub_219BF7734();
    v97 = v36;
    switch(v141)
    {
      case 1:
        sub_218718690(v140, &v141);
        sub_21915A520();
        sub_21915A574();
        sub_219BEDD24();
        (*(v139 + 8))(v36, v34);
        v73 = swift_allocBox();
        (*(v101 + 32))(v74, v40, v41);
        v37 = v73 | 0x4000000000000000;
        v44 = v140;
        break;
      case 2:
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData(0);
        sub_21915A4D8(&unk_280E94FE0, type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData, &unk_219CC8874);
        sub_21915A4D8(&qword_280E94FF0, type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData, &unk_219CC884C);
        v64 = v125;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v91 = v103;
        v92 = swift_allocBox();
        (*(v102 + 32))(v93, v64, v91);
        v37 = v92 | 0x1000000000000000;
        break;
      case 3:
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData(0);
        sub_21915A4D8(&qword_280E964B0, type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData, &unk_219C65F84);
        sub_21915A4D8(&qword_280E964B8, type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData, &unk_219C65F5C);
        v65 = v127;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v66 = v105;
        v67 = swift_allocBox();
        (*(v104 + 32))(v68, v65, v66);
        v37 = v67 | 0x2000000000000000;
        break;
      case 4:
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData(0);
        sub_21915A4D8(&unk_280E93670, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData, &unk_219C30FE8);
        sub_21915A4D8(&qword_280E93680, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData, &unk_219C30FC0);
        v53 = v126;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v54 = v108;
        v55 = swift_allocBox();
        (*(v107 + 32))(v56, v53, v54);
        v37 = v55 | 0x3000000000000000;
        break;
      case 5:
        v75 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for MyMagazinesMagazineFeedGroupConfigData(0);
        sub_21915A4D8(&qword_280E98338, type metadata accessor for MyMagazinesMagazineFeedGroupConfigData, &unk_219C568A0);
        sub_21915A4D8(&qword_280E98340, type metadata accessor for MyMagazinesMagazineFeedGroupConfigData, &unk_219C56878);
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v76 = v106;
        v77 = swift_allocBox();
        (*(v109 + 32))(v78, v42, v76);
        v37 = v77 | 0x5000000000000000;
        v44 = v75;
        break;
      case 6:
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for NewIssueMagazineFeedGroupConfigData(0);
        sub_21915A4D8(&unk_280E9CEE0, type metadata accessor for NewIssueMagazineFeedGroupConfigData, &unk_219C842AC);
        sub_21915A4D8(&qword_280E9CEF0, type metadata accessor for NewIssueMagazineFeedGroupConfigData, &unk_219C84284);
        v82 = v128;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v83 = v111;
        v84 = swift_allocBox();
        (*(v110 + 32))(v85, v82, v83);
        v37 = v84 | 0x6000000000000000;
        break;
      case 7:
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for PaywallMagazineFeedGroupConfigData(0);
        sub_21915A4D8(&unk_280E9F9B0, type metadata accessor for PaywallMagazineFeedGroupConfigData, &unk_219C4A94C);
        sub_21915A4D8(&qword_280E9F9C0, type metadata accessor for PaywallMagazineFeedGroupConfigData, &unk_219C4A924);
        v69 = v129;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v70 = v113;
        v71 = swift_allocBox();
        (*(v112 + 32))(v72, v69, v70);
        v37 = v71 | 0x7000000000000000;
        break;
      case 8:
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData(0);
        sub_21915A4D8(&unk_280E93D10, type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData, &unk_219C6C3D8);
        sub_21915A4D8(&qword_280E93D20, type metadata accessor for RecommendedIssuesMagazineFeedGroupConfigData, &unk_219C6C3B0);
        v89 = v130;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v94 = v115;
        v95 = swift_allocBox();
        (*(v114 + 32))(v96, v89, v94);
        v37 = v95 | 0x8000000000000000;
        break;
      case 9:
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for TopicMagazineFeedGroupConfigData(0);
        sub_21915A4D8(&unk_280EA4340, type metadata accessor for TopicMagazineFeedGroupConfigData, &unk_219C362BC);
        sub_21915A4D8(&qword_280EA4350, type metadata accessor for TopicMagazineFeedGroupConfigData, &unk_219C36294);
        v61 = v131;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v62 = v117;
        v50 = swift_allocBox();
        (*(v116 + 32))(v63, v61, v62);
        v52 = 0x9000000000000000;
        goto LABEL_16;
      case 10:
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for TrendingMagazineFeedGroupConfigData(0);
        sub_21915A4D8(&unk_280E9BFB0, type metadata accessor for TrendingMagazineFeedGroupConfigData, &unk_219C564DC);
        sub_21915A4D8(&qword_280E9BFC0, type metadata accessor for TrendingMagazineFeedGroupConfigData, &unk_219C564B4);
        v86 = v132;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v87 = v119;
        v50 = swift_allocBox();
        (*(v118 + 32))(v88, v86, v87);
        v52 = 0xA000000000000000;
        goto LABEL_16;
      case 11:
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for BestOfBundleMagazineFeedGroupConfigData(0);
        sub_21915A4D8(&unk_280E97770, type metadata accessor for BestOfBundleMagazineFeedGroupConfigData, &unk_219C69F00);
        sub_21915A4D8(&qword_280E97780, type metadata accessor for BestOfBundleMagazineFeedGroupConfigData, &unk_219C69ED8);
        v48 = v133;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v49 = v121;
        v50 = swift_allocBox();
        (*(v120 + 32))(v51, v48, v49);
        v52 = 0xB000000000000000;
        goto LABEL_16;
      case 12:
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for NewspaperMagazineFeedGroupConfigData(0);
        sub_21915A4D8(&unk_280E9AE60, type metadata accessor for NewspaperMagazineFeedGroupConfigData, &unk_219C3F618);
        sub_21915A4D8(&qword_280E9AE70, type metadata accessor for NewspaperMagazineFeedGroupConfigData, &unk_219C3F5F0);
        v57 = v134;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v58 = v123;
        v59 = swift_allocBox();
        (*(v122 + 32))(v60, v57, v58);
        v37 = v59 | 0xC000000000000000;
        break;
      case 13:
        v79 = v43;
        v44 = v140;
        sub_218718690(v140, &v141);
        type metadata accessor for CuratedMagazineFeedGroupConfigData(0);
        sub_21915A4D8(&unk_280EA0BC0, type metadata accessor for CuratedMagazineFeedGroupConfigData, &unk_219C6CCAC);
        sub_21915A4D8(&qword_280EA0BD0, type metadata accessor for CuratedMagazineFeedGroupConfigData, &unk_219C6CC84);
        v80 = v135;
        sub_219BEDD24();
        (*(v139 + 8))(v97, v34);
        v50 = swift_allocBox();
        (*(v124 + 32))(v81, v80, v79);
        v52 = 0xD000000000000000;
LABEL_16:
        v37 = v50 | v52;
        break;
      default:
        v44 = v140;
        sub_218718690(v140, &v141);
        sub_21915A644();
        sub_21915A698();
        v45 = v99;
        sub_219BEDD24();
        (*(v139 + 8))(v36, v34);
        v46 = v98;
        v37 = swift_allocBox();
        (*(v100 + 32))(v47, v45, v46);
        break;
    }

    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  return v37;
}

void sub_21915BFE8(uint64_t a1)
{
  if (!qword_280E8CDF0)
  {
    sub_21915C044();
    v1 = sub_219BF7774();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8CDF0);
    }
  }
}

unint64_t sub_21915C044()
{
  result = qword_280EC48A8;
  if (!qword_280EC48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC48A8);
  }

  return result;
}

unint64_t sub_21915C098()
{
  result = qword_280EC48A0;
  if (!qword_280EC48A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC48A0);
  }

  return result;
}

unint64_t sub_21915C100()
{
  result = qword_27CC16A70;
  if (!qword_27CC16A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16A70);
  }

  return result;
}

unint64_t sub_21915C158()
{
  result = qword_280EC48B0;
  if (!qword_280EC48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC48B0);
  }

  return result;
}

unint64_t sub_21915C1B0()
{
  result = qword_280EC48B8[0];
  if (!qword_280EC48B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC48B8);
  }

  return result;
}

unint64_t sub_21915C218()
{
  result = qword_27CC16A78;
  if (!qword_27CC16A78)
  {
    sub_21915C270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16A78);
  }

  return result;
}

void sub_21915C270()
{
  if (!qword_27CC16A80)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC16A80);
    }
  }
}

void sub_21915C2C0(BOOL *a2@<X8>)
{
  v3 = sub_219BF7614();

  *a2 = v3 != 0;
}

unint64_t sub_21915C3D8()
{
  result = qword_280ECE808;
  if (!qword_280ECE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECE808);
  }

  return result;
}

uint64_t type metadata accessor for MagazineSectionConfig(uint64_t a1)
{
  result = qword_280ECA858;
  if (!qword_280ECA858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21915C4A0(uint64_t a1)
{
  sub_2186E57E0(319, &unk_280EE9D00, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_2186E57E0(319, &qword_280EE68E0, MEMORY[0x277D6CF38]);
    if (v2 <= 0x3F)
    {
      sub_21915C590(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21915C590(uint64_t a1)
{
  if (!qword_280E8E9F0)
  {
    sub_219BF0FB4();
    sub_21915DB1C(&qword_280E909C8, MEMORY[0x277D330A8], MEMORY[0x277D330B8]);
    v1 = sub_219BF5DA4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8E9F0);
    }
  }
}

uint64_t sub_21915C624@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_219BDBD64();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x28223BE20](v3);
  v65 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for MagazineSectionConfig(0);
  MEMORY[0x28223BE20](v69);
  v68 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186E57E0(0, &qword_280EE68E0, MEMORY[0x277D6CF38]);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v72 = &v51 - v9;
  sub_2186E57E0(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  sub_21915D9D4(0, &qword_280E8CE80, MEMORY[0x277D844C8]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v51 - v22;
  v24 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_21915D85C();
  v25 = v73;
  sub_219BF7B34();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(v74);
  }

  v62 = v12;
  v63 = v18;
  v64 = v15;
  v73 = v21;
  LOBYTE(v77) = 0;
  v60 = sub_219BF76F4();
  v61 = v26;
  LOBYTE(v77) = 1;
  sub_219BF7674();
  v27 = v81;
  v59 = v80;
  sub_219BDB954();
  LOBYTE(v77) = 2;
  sub_21915DB1C(&unk_280EE9D10, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_219BF7674();
  LOBYTE(v77) = 3;
  sub_219BF7674();
  LOBYTE(v77) = 4;
  sub_219BF7674();
  LOBYTE(v82) = 5;
  sub_21915D8B0();
  sub_219BF7734();
  v57 = v27;
  v30 = v77;
  v29 = v78;
  v58 = v79;
  sub_219BE3184();
  LOBYTE(v82) = 6;
  sub_21915DB1C(&qword_280EE68E8, MEMORY[0x277D6CF38], MEMORY[0x277D6CF50]);
  sub_219BF76E4();
  v55 = v30;
  v56 = v29;
  LOBYTE(v82) = 7;
  sub_219BF76E4();
  sub_21915C590(0);
  LOBYTE(v76) = 8;
  sub_21915DA8C(&qword_280E8E9E8, &unk_280E909B8, MEMORY[0x277D330C8], MEMORY[0x277D83B70]);
  sub_219BF76E4();
  v31 = v82;
  v75 = 9;
  sub_219BF76E4();
  v54 = 0;
  v51 = v23;
  v52 = v76;
  v32 = v68;
  v33 = v61;
  *v68 = v60;
  v32[1] = v33;
  v34 = v57;
  v53 = v31;
  if (v57)
  {
    v35 = v69;
    v36 = v62;
    v37 = v59;
  }

  else
  {
    v38 = v65;
    sub_219BDBD54();
    v37 = sub_219BDBD44();
    v34 = v39;
    (*(v66 + 8))(v38, v67);
    v35 = v69;
    v36 = v62;
  }

  v32[2] = v37;
  v32[3] = v34;
  v40 = MEMORY[0x277CC9260];
  sub_21915D904(v63, v32 + v35[6], &unk_280EE9D00, MEMORY[0x277CC9260]);
  sub_21915D904(v64, v32 + v35[7], &unk_280EE9D00, v40);
  sub_21915D904(v36, v32 + v35[8], &unk_280EE9D00, v40);
  v41 = v32 + v35[9];
  v42 = v56;
  *v41 = v55;
  *(v41 + 1) = v42;
  v41[16] = v58;
  v43 = MEMORY[0x277D6CF38];
  v44 = v32 + v35[10];
  v45 = v36;
  v46 = v35;
  v47 = v72;
  sub_21915D904(v72, v44, &qword_280EE68E0, MEMORY[0x277D6CF38]);
  v48 = v71;
  sub_21915D904(v71, v32 + v46[11], &qword_280EE68E0, v43);
  v49 = v53;
  if (!v53)
  {
    v49 = MEMORY[0x277D84FA0];
  }

  *(v32 + v46[12]) = v49;
  sub_2187BC6FC(v48, &qword_280EE68E0, v43);
  sub_2187BC6FC(v47, &qword_280EE68E0, v43);
  sub_2187BC6FC(v45, &unk_280EE9D00, v40);
  sub_2187BC6FC(v64, &unk_280EE9D00, v40);
  sub_2187BC6FC(v63, &unk_280EE9D00, v40);
  (*(v73 + 8))(v51, v20);
  v50 = v52;
  if (!v52)
  {
    v50 = MEMORY[0x277D84FA0];
  }

  *(v32 + v46[13]) = v50;
  sub_21915D970(v32, v70);
  return __swift_destroy_boxed_opaque_existential_1(v74);
}

unint64_t sub_21915D1F4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x567377654E78616DLL;
    if (a1 != 7)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0x6E6F6974636573;
    if (a1 != 5)
    {
      v6 = 0x567377654E6E696DLL;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x656C746974;
    v2 = 0x316C72556E6F6369;
    v3 = 0x326C72556E6F6369;
    if (a1 != 3)
    {
      v3 = 0x336C72556E6F6369;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x696669746E656469;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21915D35C(void *a1)
{
  v3 = v1;
  sub_21915D9D4(0, &qword_27CC16A88, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21915D85C();
  sub_219BF7B44();
  LOBYTE(v16) = 0;
  sub_219BF77F4();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_219BF77F4();
    v11 = type metadata accessor for MagazineSectionConfig(0);
    LOBYTE(v16) = 2;
    sub_219BDB954();
    sub_21915DB1C(&unk_280EE9D40, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_219BF77E4();
    LOBYTE(v16) = 3;
    sub_219BF77E4();
    LOBYTE(v16) = 4;
    sub_219BF77E4();
    v12 = v3 + v11[9];
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v16 = *v12;
    v17 = v13;
    v18 = v14;
    v19 = 5;
    sub_218AB7B18(v16, v13, v14);
    sub_21915DA38();
    sub_219BF7834();
    sub_21896755C(v16, v17, v18);
    LOBYTE(v16) = 6;
    sub_219BE3184();
    sub_21915DB1C(&qword_280EE68F8, MEMORY[0x277D6CF38], MEMORY[0x277D6CF40]);
    sub_219BF77E4();
    LOBYTE(v16) = 7;
    sub_219BF77E4();
    v16 = *(v3 + v11[12]);
    v19 = 8;
    sub_21915C590(0);
    sub_21915DA8C(&qword_27CC16A98, &qword_280E909D0, MEMORY[0x277D330B0], MEMORY[0x277D83B50]);
    sub_219BF7834();
    v16 = *(v3 + v11[13]);
    v19 = 9;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21915D78C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21915DC7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21915D7B4(uint64_t a1)
{
  v2 = sub_21915D85C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21915D7F0(uint64_t a1)
{
  v2 = sub_21915D85C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21915D85C()
{
  result = qword_280ECA880;
  if (!qword_280ECA880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA880);
  }

  return result;
}

unint64_t sub_21915D8B0()
{
  result = qword_280EBDE70;
  if (!qword_280EBDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBDE70);
  }

  return result;
}

uint64_t sub_21915D904(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186E57E0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21915D970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineSectionConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21915D9D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21915D85C();
    v7 = a3(a1, &type metadata for MagazineSectionConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21915DA38()
{
  result = qword_27CC16A90;
  if (!qword_27CC16A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16A90);
  }

  return result;
}

uint64_t sub_21915DA8C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_21915C590(255);
    sub_21915DB1C(a2, MEMORY[0x277D330A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21915DB1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21915DB78()
{
  result = qword_27CC16AA0;
  if (!qword_27CC16AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16AA0);
  }

  return result;
}

unint64_t sub_21915DBD0()
{
  result = qword_280ECA870;
  if (!qword_280ECA870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA870);
  }

  return result;
}

unint64_t sub_21915DC28()
{
  result = qword_280ECA878;
  if (!qword_280ECA878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA878);
  }

  return result;
}

uint64_t sub_21915DC7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x316C72556E6F6369 && a2 == 0xE900000000000078 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x326C72556E6F6369 && a2 == 0xE900000000000078 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x336C72556E6F6369 && a2 == 0xE900000000000078 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6974636573 && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x567377654E6E696DLL && a2 == 0xEE006E6F69737265 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x567377654E78616DLL && a2 == 0xEE006E6F69737265 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219D0D970 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219D0D990 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t type metadata accessor for ForYouTagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EC4DB8;
  if (!qword_280EC4DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21915E058(uint64_t a1)
{
  sub_2189AD5C8(319);
  if (v1 <= 0x3F)
  {
    sub_2186EDD58(319, &qword_280E913C8, sub_2186ECA28);
    if (v2 <= 0x3F)
    {
      sub_2186F9548();
      if (v3 <= 0x3F)
      {
        sub_2186F95C4();
        if (v4 <= 0x3F)
        {
          sub_2186EDD58(319, &qword_280E912E0, MEMORY[0x277D32720]);
          if (v5 <= 0x3F)
          {
            sub_2186ECA28();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21915E180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v35 = a8;
  v36 = a3;
  v37 = a7;
  v34 = a6;
  v33 = a2;
  sub_2186EDD58(0, &qword_280E91A70, sub_2189AD5C8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - v15;
  sub_2189AD5C8(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  sub_21915F77C(a1, v16, &qword_280E91A70, sub_2189AD5C8);
  v22 = *(v19 + 48);
  if (v22(v16, 1, v18) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    sub_21877CA20(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    sub_219BEE974();
    if (v22(v16, 1, v18) != 1)
    {
      sub_21915F7E8(v16, &qword_280E91A70, sub_2189AD5C8);
    }
  }

  else
  {
    (*(v19 + 32))(v21, v16, v18);
  }

  (*(v19 + 32))(a9, v21, v18);
  v23 = type metadata accessor for ForYouTagFeedGroupKnobs(0);
  *(a9 + v23[5]) = v33;
  v24 = v35;
  if (v36)
  {
    v25 = v36;
  }

  else
  {
    v39 = 1;
    sub_2186F9548();
    swift_allocObject();
    v25 = sub_219BEF534();
  }

  v26 = v37;
  *(a9 + v23[6]) = v25;
  if (a4)
  {

    v27 = a4;
  }

  else
  {
    v39 = 5;
    sub_2186F9548();
    swift_allocObject();

    v27 = sub_219BEF534();
  }

  *(a9 + v23[7]) = v27;
  if (a5)
  {

    v28 = a5;
  }

  else
  {
    LOBYTE(v39) = 0;
    sub_2186F95C4();
    swift_allocObject();

    v28 = sub_219BEF534();
  }

  v29 = a10;
  *(a9 + v23[8]) = v28;
  *(a9 + v23[9]) = (v34 == 2) | v34 & 1;
  sub_21915F77C(v26, a9 + v23[10], &qword_280E912E0, MEMORY[0x277D32720]);

  if (!v24)
  {
    sub_219BF5CE4();
    v39 = v30;
    sub_2186ECA28();
    swift_allocObject();
    v24 = sub_219BEF534();
  }

  *(a9 + v23[11]) = v24;
  if (!a10)
  {
    v39 = 30;
    sub_2186F9548();
    swift_allocObject();
    v29 = sub_219BEF534();
  }

  sub_21915F7E8(v26, &qword_280E912E0, MEMORY[0x277D32720]);
  result = sub_21915F7E8(v38, &qword_280E91A70, sub_2189AD5C8);
  *(a9 + v23[12]) = v29;
  return result;
}

uint64_t sub_21915E660@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  sub_2189AD5C8(0);
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x28223BE20](v3);
  v68 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ForYouTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v5);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDD58(0, &qword_280E912E0, MEMORY[0x277D32720]);
  MEMORY[0x28223BE20](v8 - 8);
  v71 = v52 - v9;
  sub_2186EDD58(0, &qword_280E91A70, sub_2189AD5C8);
  MEMORY[0x28223BE20](v10 - 8);
  v72 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v70 = v52 - v13;
  sub_21915F8FC(0, &qword_280E8CDF8, MEMORY[0x277D844C8]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = v52 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21915F844();
  v19 = v73;
  sub_219BF7B34();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v63 = 0;
  v64 = v5;
  v73 = v16;
  v65 = v7;
  v58 = a1;
  LOBYTE(v81) = 0;
  sub_21877CA20(&qword_280E91A88, sub_2189AD5C8, MEMORY[0x277D321B0]);
  v21 = v70;
  v22 = v67;
  sub_219BF7674();
  sub_2186ECA28();
  v24 = v23;
  LOBYTE(v80) = 1;
  v25 = MEMORY[0x277D32620];
  v57 = sub_21877CA20(&qword_280E913D8, sub_2186ECA28, MEMORY[0x277D32620]);
  sub_219BF7674();
  v53 = v81;
  sub_2186F9548();
  LOBYTE(v79) = 2;
  sub_21877CA20(&qword_280E913B8, sub_2186F9548, v25);
  sub_219BF7674();
  v61 = v80;
  LOBYTE(v78) = 3;
  sub_219BF7674();
  v60 = v79;
  sub_2186F95C4();
  v27 = v26;
  LOBYTE(v76) = 4;
  sub_21877CA20(&qword_280E913F8, sub_2186F95C4, v25);
  v52[1] = v27;
  sub_219BF7674();
  v59 = v78;
  LOBYTE(v76) = 5;
  sub_219BF7674();
  v55 = v77;
  sub_219BEF814();
  LOBYTE(v76) = 6;
  sub_21877CA20(&qword_280E912E8, MEMORY[0x277D32720], MEMORY[0x277D32738]);
  sub_219BF7674();
  LOBYTE(v75) = 7;
  v52[2] = v24;
  sub_219BF7674();
  v54 = v76;
  LOBYTE(v74) = 8;
  v57 = v15;
  sub_219BF7674();
  v56 = v75;
  v28 = v72;
  sub_21915F77C(v21, v72, &qword_280E91A70, sub_2189AD5C8);
  v29 = v66;
  v30 = *(v66 + 48);
  v31 = v30(v28, 1, v22);
  v32 = v22;
  v62 = v18;
  if (v31 == 1)
  {
    v33 = v29;
    type metadata accessor for TagFeedServiceConfig(0);
    sub_21877CA20(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    v34 = v68;
    sub_219BEE974();
    v35 = v30(v72, 1, v22);
    v36 = v73;
    if (v35 != 1)
    {
      sub_21915F7E8(v72, &qword_280E91A70, sub_2189AD5C8);
    }
  }

  else
  {
    v33 = v29;
    v37 = *(v29 + 32);
    v34 = v68;
    v37(v68, v72, v22);
    v36 = v73;
  }

  v38 = v65;
  (*(v33 + 32))(v65, v34, v32);
  v39 = v64;
  *(v38 + v64[5]) = v53;
  v40 = v71;
  v41 = v59;
  if (v61)
  {
    v42 = v61;
  }

  else
  {
    v74 = 1;
    swift_allocObject();
    v42 = sub_219BEF534();
    v36 = v73;
  }

  v43 = v60;
  *(v38 + v39[6]) = v42;
  v44 = v56;
  if (v43)
  {

    v45 = v43;
  }

  else
  {
    v74 = 5;
    swift_allocObject();

    v45 = sub_219BEF534();
    v36 = v73;
  }

  *(v38 + v39[7]) = v45;
  if (v41)
  {

    v46 = v41;
  }

  else
  {
    LOBYTE(v74) = 0;
    swift_allocObject();

    v46 = sub_219BEF534();
    v36 = v73;
  }

  *(v38 + v39[8]) = v46;
  *(v38 + v39[9]) = (v55 == 2) | v55 & 1;
  sub_21915F77C(v40, v38 + v39[10], &qword_280E912E0, MEMORY[0x277D32720]);
  v47 = v54;
  if (v54)
  {
  }

  else
  {

    sub_219BF5CE4();
    v74 = v48;
    swift_allocObject();
    v49 = sub_219BEF534();
    v36 = v73;
    v47 = v49;
  }

  *(v38 + v39[11]) = v47;
  if (v44)
  {

    sub_21915F7E8(v40, &qword_280E912E0, MEMORY[0x277D32720]);
    sub_21915F7E8(v70, &qword_280E91A70, sub_2189AD5C8);
    (*(v36 + 8))(v62, v57);
  }

  else
  {
    v74 = 30;
    swift_allocObject();
    v50 = v36;
    v51 = sub_219BEF534();

    v44 = v51;

    sub_21915F7E8(v40, &qword_280E912E0, MEMORY[0x277D32720]);
    sub_21915F7E8(v70, &qword_280E91A70, sub_2189AD5C8);
    (*(v50 + 8))(v62, v57);
  }

  *(v38 + v39[12]) = v44;
  sub_21915F898(v38, v69);
  return __swift_destroy_boxed_opaque_existential_1(v58);
}

unint64_t sub_21915F0F4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x73656C7572;
    if (a1)
    {
      v5 = 0x65674178616DLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v1 = 0x6972657473756C63;
    v2 = 0xD000000000000019;
    if (a1 != 7)
    {
      v2 = 0xD000000000000018;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001FLL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000017;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_21915F228(void *a1)
{
  v3 = v1;
  sub_21915F8FC(0, &qword_27CC16AA8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21915F844();
  sub_219BF7B44();
  LOBYTE(v20) = 0;
  sub_2189AD5C8(0);
  sub_21877CA20(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for ForYouTagFeedGroupKnobs(0);
    v20 = *(v3 + v10[5]);
    v19 = 1;
    sub_2186ECA28();
    v12 = v11;
    v13 = sub_21877CA20(&qword_280E913E0, sub_2186ECA28, MEMORY[0x277D32610]);
    sub_219BF77E4();
    v18[3] = v13;
    v18[4] = v12;
    v20 = *(v3 + v10[6]);
    v19 = 2;
    sub_2186F9548();
    v15 = v14;
    v16 = sub_21877CA20(&qword_280E913C0, sub_2186F9548, MEMORY[0x277D32610]);
    sub_219BF7834();
    v20 = *(v3 + v10[7]);
    v19 = 3;
    sub_219BF7834();
    v18[1] = v16;
    v18[2] = v15;
    v20 = *(v3 + v10[8]);
    v19 = 4;
    sub_2186F95C4();
    sub_21877CA20(&qword_280E91400, sub_2186F95C4, MEMORY[0x277D32610]);
    sub_219BF7834();
    LOBYTE(v20) = 5;
    sub_219BF7804();
    LOBYTE(v20) = 6;
    sub_219BEF814();
    sub_21877CA20(&qword_280E912F0, MEMORY[0x277D32720], MEMORY[0x277D32728]);
    sub_219BF77E4();
    v20 = *(v3 + v10[11]);
    v19 = 7;
    sub_219BF7834();
    v20 = *(v3 + v10[12]);
    v19 = 8;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21915F6A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21915FFA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21915F6D0(uint64_t a1)
{
  v2 = sub_21915F844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21915F70C(uint64_t a1)
{
  v2 = sub_21915F844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21915F77C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186EDD58(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21915F7E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186EDD58(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_21915F844()
{
  result = qword_280EC4DE0[0];
  if (!qword_280EC4DE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC4DE0);
  }

  return result;
}

uint64_t sub_21915F898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouTagFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21915F8FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21915F844();
    v7 = a3(a1, &type metadata for ForYouTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21915F960(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BEF814();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDD58(0, &qword_280E912E0, MEMORY[0x277D32720]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  sub_218CC85CC(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TagFeedServiceConfig(0);
  sub_21877CA20(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    goto LABEL_20;
  }

  v32 = type metadata accessor for ForYouTagFeedGroupKnobs(0);
  v15 = *(v32 + 20);
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16)
  {
    v34 = v16;
    if (!v17)
    {
      goto LABEL_20;
    }

    v31 = v5;
    v33 = v17;
    sub_2186ECA28();
    sub_21877CA20(&qword_27CC0DD70, sub_2186ECA28, MEMORY[0x277D32618]);

    v18 = sub_219BF53A4();

    if ((v18 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v31 = v5;
    if (v17)
    {
LABEL_20:
      v27 = 0;
      return v27 & 1;
    }
  }

  sub_2186F9548();
  v19 = v32;
  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_20;
  }

  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_2186F95C4();
  if ((sub_219BEF504() & 1) == 0 || *(a1 + *(v19 + 36)) != *(a2 + *(v19 + 36)))
  {
    goto LABEL_20;
  }

  v20 = *(v19 + 40);
  v21 = *(v12 + 48);
  v22 = MEMORY[0x277D32720];
  sub_21915F77C(a1 + v20, v14, &qword_280E912E0, MEMORY[0x277D32720]);
  v30 = v21;
  sub_21915F77C(a2 + v20, &v14[v21], &qword_280E912E0, v22);
  v23 = *(v31 + 48);
  if (v23(v14, 1, v4) == 1)
  {
    if (v23(&v14[v30], 1, v4) == 1)
    {
      sub_21915F7E8(v14, &qword_280E912E0, MEMORY[0x277D32720]);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  sub_21915F77C(v14, v10, &qword_280E912E0, MEMORY[0x277D32720]);
  if (v23(&v14[v30], 1, v4) == 1)
  {
    (*(v31 + 8))(v10, v4);
LABEL_16:
    sub_218D0BBC4(v14);
    goto LABEL_20;
  }

  v24 = v31;
  (*(v31 + 32))(v7, &v14[v30], v4);
  sub_21877CA20(&qword_27CC10CD8, MEMORY[0x277D32720], MEMORY[0x277D32730]);
  v25 = sub_219BF53A4();
  v26 = *(v24 + 8);
  v26(v7, v4);
  v26(v10, v4);
  sub_21915F7E8(v14, &qword_280E912E0, MEMORY[0x277D32720]);
  if ((v25 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_18:
  sub_2186ECA28();
  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_20;
  }

  v27 = sub_219BEF504();
  return v27 & 1;
}

unint64_t sub_21915FE9C()
{
  result = qword_27CC16AB0;
  if (!qword_27CC16AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16AB0);
  }

  return result;
}

unint64_t sub_21915FEF4()
{
  result = qword_280EC4DD0;
  if (!qword_280EC4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4DD0);
  }

  return result;
}

unint64_t sub_21915FF4C()
{
  result = qword_280EC4DD8;
  if (!qword_280EC4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4DD8);
  }

  return result;
}

uint64_t sub_21915FFA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65674178616DLL && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000219CEBCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CF5000 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6972657473756C63 && a2 == 0xEF73626F6E4B676ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000219D0D9B0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000219D0D9D0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_219160290()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219160358()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

id sub_2191605C0()
{
  v0 = sub_219BF4164();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000208, 0x8000000219D0DBF0);
  MEMORY[0x21CECC330](0xD000000000000012, 0x8000000219D0DBA0);
  MEMORY[0x21CECC330](0xD0000000000000CALL, 0x8000000219D0DE00);
  (*(v1 + 104))(v3, *MEMORY[0x277D342F0], v0);
  v4 = sub_219BF4154();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x21CECC330](v4, v6);

  MEMORY[0x21CECC330](0xD000000000000186, 0x8000000219D0DED0);
  v7 = objc_allocWithZone(MEMORY[0x277CE3838]);
  v8 = sub_219BF53D4();

  v9 = [v7 initWithSource:v8 injectionTime:0 forMainFrameOnly:1];

  return v9;
}

unint64_t sub_2191607F0()
{
  result = qword_27CC16B20;
  if (!qword_27CC16B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16B20);
  }

  return result;
}

uint64_t sub_219160854()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_280F61CC0);
  __swift_project_value_buffer(v0, qword_280F61CC0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_219160A04()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD87C0);
  __swift_project_value_buffer(v0, qword_27CCD87C0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_219160BB8()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD87D8);
  __swift_project_value_buffer(v0, qword_27CCD87D8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_219160D6C()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD87F0);
  __swift_project_value_buffer(v0, qword_27CCD87F0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_219160F18()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8808);
  __swift_project_value_buffer(v0, qword_27CCD8808);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_21916117C(uint64_t a1, uint64_t a2)
{
  sub_2186EED10(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2191611E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186EED10(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_2191612AC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_2186EED10(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219161F50(v3, v12);
  (*(v7 + 32))(v9, v12, v6);
  a3(v6);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21916145C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_2186EED10(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219161F50(v3, v12);
  (*(v7 + 32))(v9, v12, v6);
  v13 = a3(v6);
  (*(v7 + 8))(v9, v6);
  return v13;
}

uint64_t sub_2191615A4()
{
  sub_2186EED10(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219161F50(v0, v8);
  (*(v3 + 32))(v5, v8, v2);
  v9 = sub_219BEDCA4();
  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t sub_2191616EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2186EEE24(&qword_280EC82E8, type metadata accessor for HistoryFeedGroupConfig, &unk_219C614F8);

  return MEMORY[0x282190458](a1, a2, a3, v6);
}

uint64_t sub_219161890@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_2186EED10(0);
  v5 = v4;
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219161E4C(0);
  v9 = v8;
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219161EA8();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v21;
    v16 = v5;
    v17 = v7;
    sub_219161EFC();
    sub_219BF7734();
    sub_218718690(a1, v20);
    type metadata accessor for ArticleListHistoryFeedGroupConfigData(0);
    sub_2186EEE24(&qword_280E99FC0, type metadata accessor for ArticleListHistoryFeedGroupConfigData, &unk_219C9A4F0);
    sub_2186EEE24(&qword_280E99FC8, type metadata accessor for ArticleListHistoryFeedGroupConfigData, &unk_219C9A4C8);
    v13 = v17;
    sub_219BEDD24();
    (*(v12 + 8))(v11, v9);
    (*(v18 + 32))(v19, v13, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_219161B50(BOOL *a3@<X8>)
{
  v4 = sub_219BF7614();

  *a3 = v4 != 0;
}

uint64_t sub_219161BA8(uint64_t a1)
{
  v2 = sub_219161EA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219161BE4(uint64_t a1)
{
  v2 = sub_219161EA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219161CF4(uint64_t a1)
{
  v2 = v1;
  sub_2186EED10(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219161F50(v2, v10);
  (*(v5 + 32))(v7, v10, v4);
  sub_219BEDD64();
  return (*(v5 + 8))(v7, v4);
}

void sub_219161E4C(uint64_t a1)
{
  if (!qword_280E8CE60)
  {
    sub_219161EA8();
    v1 = sub_219BF7774();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8CE60);
    }
  }
}

unint64_t sub_219161EA8()
{
  result = qword_280EC8310[0];
  if (!qword_280EC8310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC8310);
  }

  return result;
}

unint64_t sub_219161EFC()
{
  result = qword_280EC82F0;
  if (!qword_280EC82F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC82F0);
  }

  return result;
}

uint64_t sub_219161F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryFeedGroupConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_219161FD8()
{
  result = qword_27CC16B28;
  if (!qword_27CC16B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16B28);
  }

  return result;
}

unint64_t sub_219162030()
{
  result = qword_27CC16B30;
  if (!qword_27CC16B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16B30);
  }

  return result;
}

unint64_t sub_219162088()
{
  result = qword_280EC8300;
  if (!qword_280EC8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC8300);
  }

  return result;
}

unint64_t sub_2191620E0()
{
  result = qword_280EC8308;
  if (!qword_280EC8308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC8308);
  }

  return result;
}

unint64_t sub_219162134()
{
  result = qword_280EC82F8;
  if (!qword_280EC82F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC82F8);
  }

  return result;
}

uint64_t sub_219162188@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219162998(0, &qword_280E8CCA8, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for MissedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2191628E0();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_2191629FC(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_219162934(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219162434(uint64_t a1)
{
  v2 = sub_2191628E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219162470(uint64_t a1)
{
  v2 = sub_2191628E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2191624EC(void *a1)
{
  sub_219162998(0, &qword_280E8C490, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2191628E0();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_2191629FC(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21916274C(uint64_t a1)
{
  result = sub_2191629FC(&qword_280EB7EE8, type metadata accessor for MissedStoriesTodayFeedGroup, &unk_219C619A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2191627A4(uint64_t a1)
{
  v2 = sub_2191629FC(&qword_280EB7F18, type metadata accessor for MissedStoriesTodayFeedGroup, &unk_219C6188C);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219162834(void *a1)
{
  a1[1] = sub_2191629FC(&qword_280EB7F18, type metadata accessor for MissedStoriesTodayFeedGroup, &unk_219C6188C);
  a1[2] = sub_2191629FC(&qword_280EB7EF0, type metadata accessor for MissedStoriesTodayFeedGroup, &unk_219C61980);
  result = sub_2191629FC(&qword_280EB7F00, type metadata accessor for MissedStoriesTodayFeedGroup, &unk_219C61958);
  a1[3] = result;
  return result;
}

unint64_t sub_2191628E0()
{
  result = qword_280EB7F30[0];
  if (!qword_280EB7F30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB7F30);
  }

  return result;
}

uint64_t sub_219162934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MissedStoriesTodayFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219162998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2191628E0();
    v7 = a3(a1, &type metadata for MissedStoriesTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2191629FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_219162A58()
{
  result = qword_27CC16B38;
  if (!qword_27CC16B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16B38);
  }

  return result;
}

unint64_t sub_219162AB0()
{
  result = qword_280EB7F20;
  if (!qword_280EB7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB7F20);
  }

  return result;
}

unint64_t sub_219162B08()
{
  result = qword_280EB7F28;
  if (!qword_280EB7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB7F28);
  }

  return result;
}

uint64_t sub_219162B5C()
{
  swift_getKeyPath();
  sub_219162E54();
  sub_219BDC204();

  return *(v0 + 48);
}

double sub_219162BCC(unsigned __int8 a1)
{
  if (*(v1 + 48) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_219162E54();
    sub_219BDC1F4();
  }

  return result;
}

uint64_t sub_219162CAC()
{

  v1 = OBJC_IVAR____TtC7NewsUI231RecipeFilterTagCapsuleViewModel___observationRegistrar;
  v2 = sub_219BDC244();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecipeFilterTagCapsuleViewModel(uint64_t a1)
{
  result = qword_27CC16B48;
  if (!qword_27CC16B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219162DAC(uint64_t a1)
{
  result = sub_219BDC244();
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

unint64_t sub_219162E54()
{
  result = qword_27CC0B238;
  if (!qword_27CC0B238)
  {
    type metadata accessor for RecipeFilterTagCapsuleViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B238);
  }

  return result;
}

uint64_t sub_219162EBC()
{
  v1 = [*(v0 + 24) appConfiguration];
  if (([v1 respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(v1, sel_audioHistoryFeedConfigurationResourceId)) != 0)
  {
    v3 = v2;
    sub_219BF5414();

    MEMORY[0x28223BE20](v4);
    sub_2186E9518();
    sub_219BE3204();

    v5 = sub_219BE2E54();
    type metadata accessor for AudioHistoryFeedConfigFetchResult(0);
    sub_219BE2F84();

    v6 = sub_219BE2E54();
    v7 = sub_219BE2FD4();
    swift_unknownObjectRelease();

    return v7;
  }

  else
  {
    sub_219163B74();
    swift_allocError();
    *v9 = 0;
    sub_219163CB0(0, &qword_280EE6CC0, type metadata accessor for AudioHistoryFeedConfigFetchResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v10 = sub_219BE2FF4();
    swift_unknownObjectRelease();
    return v10;
  }
}

uint64_t sub_2191630FC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_219163CB0(0, &qword_280EE7E80, MEMORY[0x277D6CA50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v13 - v5);
  __swift_project_boxed_opaque_existential_1(a1 + 4, a1[7]);
  sub_219BF5CE4();
  *v6 = v7;
  v8 = *MEMORY[0x277D6CA48];
  v9 = sub_219BE1B34();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v6, v8, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  v11 = sub_219BF2944();
  sub_21897DAD8(v6);
  return v11;
}

char *sub_219163298(void **a1, unint64_t a2)
{
  v36 = a2;
  v34 = type metadata accessor for AudioHistoryFeedConfigFetchResult(0);
  MEMORY[0x28223BE20](v34);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = type metadata accessor for AudioHistoryFeedContentConfig(0);
  MEMORY[0x28223BE20](v8);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v31 - v16;
  v18 = *a1;
  v19 = [v18 fileURL];
  if (v19)
  {
    v20 = v19;
    sub_219BDB8B4();

    (*(v11 + 32))(v17, v13, v10);
    v21 = sub_219BDB974();
    if (!v2)
    {
      v32 = v7;
      v24 = v22;
      v25 = v21;
      sub_219163AB8();
      v33 = v25;
      v36 = v24;
      sub_219BE1974();
      v27 = v37;
      v28 = v32;
      sub_219163BE8(v37, v32, type metadata accessor for AudioHistoryFeedContentConfig);
      v29 = v35;
      *(v28 + *(v34 + 20)) = v18;
      sub_219163BE8(v28, v29, type metadata accessor for AudioHistoryFeedConfigFetchResult);
      sub_219163CB0(0, &qword_280EE6CC0, type metadata accessor for AudioHistoryFeedConfigFetchResult, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v30 = v18;
      v7 = sub_219BE3014();
      sub_2186C6190(v33, v36);
      sub_219163C50(v28, type metadata accessor for AudioHistoryFeedConfigFetchResult);
      sub_219163C50(v27, type metadata accessor for AudioHistoryFeedContentConfig);
    }

    (*(v11 + 8))(v17, v10);
  }

  else
  {
    sub_219163B74();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
  }

  return v7;
}

double sub_219163678(uint64_t a1)
{
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  v1 = qword_280F616F8;
  v2 = sub_219BF61F4();
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_219BE5314("Failed to fetch audio history feed service config. Error=%{public}@)", 68, 2, &dword_2186C1000, v1, v2, v3);

  return result;
}

void *sub_2191637A4@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AudioHistoryFeedContentConfig(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219163AB8();
  result = sub_219BE1974();
  if (!v2)
  {
    sub_219163B10(v6, a2);
    result = type metadata accessor for AudioHistoryFeedConfigFetchResult(0);
    *(a2 + *(result + 5)) = 0;
  }

  return result;
}

uint64_t sub_2191638B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BDB954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_219BDAF64();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 16))(v6, a1, v3, v9);
  sub_219BDAF44();
  v16 = v11;
  sub_219BE3204();
  v12 = sub_219BE2E54();
  type metadata accessor for AudioHistoryFeedConfigFetchResult(0);
  v13 = sub_219BE2F94();

  (*(v8 + 8))(v11, v7);
  return v13;
}

unint64_t sub_219163AB8()
{
  result = qword_280EB1490;
  if (!qword_280EB1490)
  {
    type metadata accessor for AudioHistoryFeedContentConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB1490);
  }

  return result;
}

uint64_t sub_219163B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHistoryFeedContentConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_219163B74()
{
  result = qword_27CC16B58;
  if (!qword_27CC16B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16B58);
  }

  return result;
}

uint64_t sub_219163BE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219163C50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219163CB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_219163D28()
{
  result = qword_27CC16B68;
  if (!qword_27CC16B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16B68);
  }

  return result;
}

void *sub_219163D7C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_219163E5C();
  result = sub_219BE1E34();
  if (v9)
  {
    sub_2186CB1F0(&v8, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v6 = sub_218EC0600(v3, v4);
    if (v6)
    {
      sub_2187C5110(0);
      v7 = sub_219BEA784();
      v7(v6);
    }

    __swift_destroy_boxed_opaque_existential_1(v10);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_219163E5C()
{
  result = qword_280ECE1C0;
  if (!qword_280ECE1C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280ECE1C0);
  }

  return result;
}

uint64_t sub_219163EC0()
{

  return swift_deallocClassInstance();
}

char *sub_219163F08(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a4;
  v6 = sub_219BF1904();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup(0);
  MEMORY[0x28223BE20](AudioFeedGroup);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AudioFeedGroup(0);
  MEMORY[0x28223BE20](v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21909E61C(a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21916443C(v15, v12);
    sub_219BED874();
    v16 = sub_219BF18D4();
    (*(v7 + 8))(v9, v6);
    a2 = sub_219164158(v16, a2);

    sub_2191644A0(v12, type metadata accessor for UpNextAudioFeedGroup);
  }

  else
  {
    sub_2191644A0(v15, type metadata accessor for AudioFeedGroup);
  }

  return a2;
}

char *sub_219164158(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
LABEL_15:
    v23 = sub_218845F78(v5);

    *(swift_allocObject() + 16) = v23;

    v24 = sub_219BE2E54();
    sub_218786310(&qword_280E8EBF0, sub_2187E7248, MEMORY[0x277D83970]);
    sub_219BE30F4();

    return a2;
  }

  v25 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v25;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v7, a1);
        v8 = [swift_unknownObjectRetain() identifier];
        v9 = sub_219BF5414();
        v11 = v10;
        swift_unknownObjectRelease_n();

        v13 = *(v25 + 16);
        v12 = *(v25 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_21870B65C((v12 > 1), v13 + 1, 1);
        }

        ++v7;
        *(v25 + 16) = v13 + 1;
        v14 = v25 + 16 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v11;
      }

      while (v4 != v7);
    }

    else
    {
      v15 = a1 + 32;
      do
      {
        v16 = [swift_unknownObjectRetain_n() identifier];
        v17 = sub_219BF5414();
        v19 = v18;
        swift_unknownObjectRelease_n();

        v21 = *(v25 + 16);
        v20 = *(v25 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_21870B65C((v20 > 1), v21 + 1, 1);
        }

        *(v25 + 16) = v21 + 1;
        v22 = v25 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        v15 += 8;
        --v4;
      }

      while (v4);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

char *sub_219164408@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_219163F08(a1, *v2, *(v2 + 8), *(v2 + 16));
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_21916443C(uint64_t a1, uint64_t a2)
{
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup(0);
  (*(*(AudioFeedGroup - 8) + 32))(a2, a1, AudioFeedGroup);
  return a2;
}

uint64_t sub_2191644A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219164514()
{
  result = qword_27CC16B70;
  if (!qword_27CC16B70)
  {
    sub_21916456C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16B70);
  }

  return result;
}

void sub_21916456C()
{
  if (!qword_27CC16B78)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC16B78);
    }
  }
}

void sub_2191645BC(BOOL *a2@<X8>)
{
  v3 = sub_219BF7614();

  *a2 = v3 != 0;
}

unint64_t sub_2191646D4()
{
  result = qword_280EBF7C8;
  if (!qword_280EBF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBF7C8);
  }

  return result;
}

void *sub_219164728(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v71 = a6;
  v75 = a5;
  v70 = a4;
  v69 = a3;
  v74 = a1;
  v88 = *MEMORY[0x277D85DE8];
  v9 = v7;
  v72 = *v7;
  sub_21916B604(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v73 = v10;
  v68 = *(v10 - 8);
  v66 = *(v68 + 64);
  MEMORY[0x28223BE20](v10);
  v67 = &v61 - v11;
  v12 = sub_219BDD944();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NewsActivity2.Article(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21916B970(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88]);
  v64 = *(v19 - 8);
  v20 = *(v64 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v65 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v61 - v22;
  v24 = a2[1];
  v83 = *a2;
  v84 = v24;
  v25 = a2[3];
  v85 = a2[2];
  v86 = v25;
  v87 = *(a2 + 8);
  v26 = *(&v83 + 1);
  v27 = v83;
  v28 = HIBYTE(v85) >> 6;
  if (v28)
  {
    if (v28 == 1)
    {
    }

    else
    {
      v77 = v83;
      v78 = v84;
      *&v79 = v85;
      BYTE8(v79) = BYTE8(v85) & 1;
      v27 = sub_219BD47C0();
      v26 = v31;
    }
  }

  else
  {
    v77 = v83;
    v78 = v84;
    *&v79 = v85;
    BYTE8(v79) = BYTE8(v85) & 1;
    v29 = [sub_219BD4870() identifier];
    v27 = sub_219BF5414();
    v26 = v30;
  }

  sub_218AB06A4(v75, v23);
  if ((*(v16 + 48))(v23, 1, v15) == 1)
  {
    sub_2187454CC(v23, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88], sub_21916B970);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    sub_218B1B33C(v23, v18, type metadata accessor for NewsActivity2.Article);
    sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

    sub_218B1B3A4(v18, v14, MEMORY[0x277D2FB40]);
    v32 = sub_219BDD8C4();
    v33 = v34;
    sub_21916B2E8(v14, MEMORY[0x277D2FB40]);
    sub_21916B2E8(v23, type metadata accessor for NewsActivity2.Article);
  }

  v35 = v27;
  v36 = v74;
  v37 = v9;
  v38 = sub_219166CE8(v35, v26, v74, v32, v33);

  if (v38)
  {
    *&v77 = 0;
    sub_21916B264(0);
    swift_allocObject();
    return sub_219BE3014();
  }

  sub_219BEA7A4();
  v82 = v77;
  sub_218B1ACC0(&v82);
  sub_218932F9C(v82);
  __swift_project_boxed_opaque_existential_1(v9 + 2, v9[5]);
  sub_2186C6148(0, &unk_280E8E608, 0x277D30DA8);
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v40 = result;
  if (((HIBYTE(v85) << 48) & 0xC0000000000000) == 0x40000000000000)
  {
    goto LABEL_18;
  }

  v77 = v83;
  v78 = v84;
  *&v79 = v85;
  BYTE8(v79) = BYTE8(v85) & 1;
  v41 = sub_219BD4870();
  if (![v40 canSynchronouslyCheckAccessToItem_])
  {

LABEL_18:
    MEMORY[0x28223BE20](result);
    *(&v61 - 2) = v9;
    *(&v61 - 1) = &v83;
    sub_219BDED54();
    sub_219BE3204();
    v43 = sub_219BE1C44();
    sub_2186C6148(0, &unk_280E8E2D8, 0x277D30DA0);
    v63 = sub_219BE2F84();

    v61 = sub_219BE1C44();
    v62 = v40;
    v44 = v68;
    v45 = v67;
    v46 = v73;
    (*(v68 + 16))(v67, v36, v73);
    v47 = v65;
    sub_218AB06A4(v75, v65);
    v48 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v49 = (v66 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = (v49 + 79) & 0xFFFFFFFFFFFFFFF8;
    v51 = *(v64 + 80);
    v75 = v37;
    v52 = (v51 + v50 + 16) & ~v51;
    v53 = (v20 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    (*(v44 + 32))(v54 + v48, v45, v46);
    v55 = v54 + v49;
    v56 = v84;
    v57 = v86;
    *(v55 + 32) = v85;
    *(v55 + 48) = v57;
    *(v55 + 64) = v87;
    *v55 = v83;
    *(v55 + 16) = v56;
    v58 = (v54 + v50);
    v59 = v70;
    *v58 = v69;
    v58[1] = v59;
    sub_21916A024(v47, v54 + v52);
    *(v54 + v53) = v71;
    sub_219092568(&v83, &v77);
    sub_218962DB8(0, &qword_280E8E478, &qword_280E8E480, 0x277D75D28, MEMORY[0x277D83D88]);

    v60 = v61;
    v42 = sub_219BE2F84();

    return v42;
  }

  v82 = 0;
  v76 = 0;
  if (![v40 hasAccessToItem:v41 blockedReason:&v82 error:&v76])
  {

    goto LABEL_18;
  }

  v79 = v85;
  v80 = v86;
  v81 = v87;
  v77 = v83;
  v78 = v84;
  *&v77 = sub_219167ADC(v36, &v77, v69, v70, v75, v71);
  sub_21916B264(0);
  swift_allocObject();
  v42 = sub_219BE3014();

  return v42;
}

void sub_219165148(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

id sub_2191651D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v126 = a4;
  v127 = a5;
  v125 = a3;
  v132 = a1;
  v149 = *MEMORY[0x277D85DE8];
  v8 = sub_219BE7784();
  MEMORY[0x28223BE20](v8 - 8);
  v122 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDD944();
  MEMORY[0x28223BE20](v10 - 8);
  v124 = (&v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for NewsActivity2.Article(0);
  v129 = *(v12 - 8);
  v130 = v12;
  MEMORY[0x28223BE20](v12);
  v123 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21916B970(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v128 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v120 = &v112 - v17;
  MEMORY[0x28223BE20](v18);
  v121 = &v112 - v19;
  sub_21916B604(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v131 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v112 - v23;
  v25 = *(a2 + 32);
  v143 = *(a2 + 16);
  v144 = v25;
  v145 = *(a2 + 48);
  v146 = *(a2 + 64);
  v142 = *a2;
  v27 = *a2;
  v26 = *(a2 + 8);
  v28 = *(v6 + 40);
  v133 = v6;
  __swift_project_boxed_opaque_existential_1((v6 + 16), v28);
  sub_2186C6148(0, &unk_280E8E608, 0x277D30DA8);
  v134 = sub_219BE1DE4();
  if (!v134)
  {
    __break(1u);
  }

  if (((HIBYTE(v144) << 48) & 0xC0000000000000) == 0x40000000000000)
  {
    v29 = v132;
    v30 = v133;
    v31 = v128;
LABEL_4:

    goto LABEL_5;
  }

  v119 = v21;
  v39 = *(&v142 + 1);
  v40 = v142;
  v41 = v143;
  v42 = v144;
  v43 = BYTE8(v144);
  v30 = v133;
  if ((BYTE8(v144) & 1) == 0)
  {
    swift_unknownObjectRetain();

    v76 = v41;
LABEL_22:
    v79 = v41;
    goto LABEL_23;
  }

  v44 = *(v142 + 72);
  v147 = *(v142 + 56);
  v148[0] = v44;
  *(v148 + 9) = *(v142 + 81);
  sub_218718690(v142 + 16, v135);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    __swift_destroy_boxed_opaque_existential_1(v135);
    goto LABEL_22;
  }

  v117 = Strong;
  v118 = v39;
  v46 = v42;
  v47 = *(v30 + 168);
  v115 = v46;
  v116 = v41;
  sub_21896FE24(v40, v39, v41, *(&v41 + 1), v46, 1);
  sub_21916B730(&v147, &v136);
  if (([v47 improvedBlockingBehaviorEnabled] & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v135);
    sub_21916B78C(&v147);

    v42 = v115;
    v79 = v116;
    v39 = v118;
LABEL_23:
    *&v136 = v40;
    *(&v136 + 1) = v39;
    *&v137 = v79;
    *(&v137 + 1) = *(&v41 + 1);
    *&v138 = v42;
    BYTE8(v138) = v43 & 1;
    v80 = sub_219BD4870();
    sub_21896FDCC(v40, v39, v79, *(&v41 + 1), v42, v43 & 1);
    v81 = [v134 canSynchronouslyCheckAccessToItem_];
    v29 = v132;
    v31 = v128;
    if (v81)
    {
      v82 = *(&v142 + 1);
      v83 = v142;
      v84 = HIBYTE(v144) >> 6;
      if (v84)
      {
        if (v84 == 1)
        {
        }

        else
        {
          v136 = v142;
          v137 = v143;
          *&v138 = v144;
          BYTE8(v138) = BYTE8(v144) & 1;
          v83 = sub_219BD47C0();
          v82 = v91;
        }
      }

      else
      {
        v136 = v142;
        v137 = v143;
        *&v138 = v144;
        BYTE8(v138) = BYTE8(v144) & 1;
        v89 = [sub_219BD4870() identifier];
        v83 = sub_219BF5414();
        v82 = v90;
      }

      sub_219BEA7A4();
      v92 = v136;
      v93 = (v92 >> 58) & 0x3C | (v92 >> 1) & 3;
      if ((v93 - 9) >= 0x34)
      {
        v108 = 1 << v93;
        if ((v108 & 0xF9) == 0)
        {
          if ((v108 & 6) != 0)
          {
            sub_2187B2C48(0);
          }

          v109 = swift_projectBox();
          sub_218B1B33C(v109, v121, type metadata accessor for NewsActivity2.Article);
        }
      }

      v95 = v129;
      v94 = v130;
      v96 = v121;
      v119 = v129[7];
      (v119)(v121);
      v97 = sub_218932F9C(v92);
      if ((v95[6])(v96, 1, v94, v97) == 1)
      {
        sub_2187454CC(v96, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88], sub_21916B970);
        v98 = 0;
        v99 = 0;
      }

      else
      {
        v100 = v96;
        v101 = v96;
        v102 = v123;
        sub_218B1B33C(v100, v123, type metadata accessor for NewsActivity2.Article);
        sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

        v103 = v124;
        sub_218B1B3A4(v102, v124, MEMORY[0x277D2FB40]);
        v98 = sub_219BDD8C4();
        v99 = v104;
        sub_21916B2E8(v103, MEMORY[0x277D2FB40]);
        sub_21916B2E8(v101, type metadata accessor for NewsActivity2.Article);
      }

      v105 = sub_219166CE8(v83, v82, v132, v98, v99);

      if (v105)
      {

        return 0;
      }

      v135[0] = 0;
      v141 = 0;
      if ([v134 hasAccessToItem:v80 blockedReason:v135 error:&v141])
      {
        v138 = v144;
        v139 = v145;
        v140 = v146;
        v136 = v142;
        v137 = v143;
        v106 = v120;
        (v119)(v120, 1, 1, v130);
        v107 = sub_219167ADC(v132, &v136, v125, v126, v106, v127);

        sub_2187454CC(v106, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88], sub_21916B970);
        return v107;
      }

      v29 = v132;
      v30 = v133;
    }

    else
    {
    }

    v26 = *(&v142 + 1);
    v27 = v142;
    v85 = HIBYTE(v144) >> 6;
    if (v85)
    {
      if (v85 == 1)
      {
        goto LABEL_4;
      }

      v136 = v142;
      v137 = v143;
      *&v138 = v144;
      BYTE8(v138) = BYTE8(v144) & 1;
      v27 = sub_219BD47C0();
      v26 = v86;
    }

    else
    {
      v136 = v142;
      v137 = v143;
      *&v138 = v144;
      BYTE8(v138) = BYTE8(v144) & 1;
      v87 = [sub_219BD4870() identifier];
      v27 = sub_219BF5414();
      v26 = v88;
    }

LABEL_5:
    sub_219BEA7A4();
    v32 = v136;
    v33 = (v32 >> 58) & 0x3C | (v32 >> 1) & 3;
    if ((v33 - 9) >= 0x34)
    {
      v77 = 1 << v33;
      if ((v77 & 0xF9) == 0)
      {
        if ((v77 & 6) != 0)
        {
          sub_2187B2C48(0);
        }

        v78 = swift_projectBox();
        sub_218B1B33C(v78, v31, type metadata accessor for NewsActivity2.Article);
      }
    }

    v35 = v129;
    v34 = v130;
    (v129[7])(v31);
    v36 = sub_218932F9C(v32);
    if ((v35[6])(v31, 1, v34, v36) == 1)
    {
      sub_2187454CC(v31, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88], sub_21916B970);
      v37 = 0;
      v38 = 0;
    }

    else
    {
      v67 = v123;
      sub_218B1B33C(v31, v123, type metadata accessor for NewsActivity2.Article);
      sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

      v68 = v124;
      sub_218B1B3A4(v67, v124, MEMORY[0x277D2FB40]);
      v37 = sub_219BDD8C4();
      v38 = v69;
      sub_21916B2E8(v68, MEMORY[0x277D2FB40]);
      sub_21916B2E8(v31, type metadata accessor for NewsActivity2.Article);
    }

    v70 = sub_219166CE8(v27, v26, v29, v37, v38);

    if ((v70 & 1) == 0)
    {
      v71 = v127;
      sub_219168ED4(v127, &v142);
      v72 = sub_219BE7DC4();
      MEMORY[0x28223BE20](v72);
      *(&v112 - 6) = v30;
      *(&v112 - 5) = v29;
      v73 = v125;
      *(&v112 - 4) = &v142;
      *(&v112 - 3) = v73;
      v111 = v71;
      sub_219BE7774();
      v110 = &v112 - 8;
      v74 = sub_219BE7D74();

      return v74;
    }

    return 0;
  }

  sub_218718690(v135, &v136);
  sub_219BEA744();
  swift_allocObject();
  v122 = sub_219BEA6C4();
  v113 = swift_allocObject();
  swift_weakInit();
  v48 = v119;
  v49 = *(v119 + 16);
  v128 = (v119 + 16);
  v129 = v49;
  v50 = v131;
  (v49)(v24, v132, v131);
  v51 = (*(v48 + 80) + 24) & ~*(v48 + 80);
  v123 = *(v48 + 80);
  v52 = (v22 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v114 = (v52 + 79) & 0xFFFFFFFFFFFFFFF8;
  v121 = (v52 + 127) & 0xFFFFFFFFFFFFFFF8;
  v130 = *(&v41 + 1);
  v120 = ((v121 + 23) & 0xFFFFFFFFFFFFFFF8);
  v53 = swift_allocObject();
  *(v53 + 16) = v113;
  v124 = *(v48 + 32);
  (v124)(v53 + v51, v24, v50);
  v54 = v53 + v52;
  v55 = v143;
  v56 = v145;
  *(v54 + 32) = v144;
  *(v54 + 48) = v56;
  *(v54 + 64) = v146;
  *v54 = v142;
  *(v54 + 16) = v55;
  v57 = (v53 + v114);
  *(v57 + 25) = *(v148 + 9);
  v58 = v148[0];
  *v57 = v147;
  v57[1] = v58;
  v59 = (v53 + v121);
  v60 = v126;
  *v59 = v125;
  v59[1] = v60;
  *&v120[v53] = v127;
  sub_21916B730(&v147, &v136);

  sub_219092568(&v142, &v136);

  sub_219BEA6F4();

  sub_219BEA714();

  v61 = swift_allocObject();
  swift_weakInit();
  sub_218718690(v135, &v136);
  v62 = v131;
  (v129)(v24, v132, v131);
  v63 = (v123 + 64) & ~v123;
  v64 = swift_allocObject();
  sub_2186CB1F0(&v136, v64 + 16);
  *(v64 + 56) = v61;
  (v124)(v64 + v63, v24, v62);

  sub_219BEA734();

  v65 = v117;
  v66 = sub_219BF6534();
  sub_219BEA6D4();

  sub_21916B78C(&v147);
  __swift_destroy_boxed_opaque_existential_1(v135);
  sub_21896FDCC(v40, v118, v116, v130, v115, 1);
  return 0;
}