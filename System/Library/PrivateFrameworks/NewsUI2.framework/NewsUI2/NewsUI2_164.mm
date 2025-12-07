uint64_t sub_219928960()
{
  sub_218774F78(v0 + 16);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  sub_218745F4C(v0 + 144, &unk_280EE89A0, &unk_280EE89B0, MEMORY[0x277D302D8], sub_2186C6F70);

  return swift_deallocClassInstance();
}

void sub_219928A18(uint64_t a1)
{
  if (!qword_27CC20FF0)
  {
    sub_219BF0614();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC20FF0);
    }
  }
}

void sub_219928A80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_219928AD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_219928A80(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v152 = *(v6 - 8);
  v7 = *(v152 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v8);
  v145 = &v140 - v9;
  MEMORY[0x28223BE20](v10);
  v144 = &v140 - v11;
  MEMORY[0x28223BE20](v12);
  v147 = &v140 - v13;
  MEMORY[0x28223BE20](v14);
  v146 = &v140 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v140 - v17;
  v19 = sub_219BF3484();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (&v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(a2 + 8);
  v148 = *a2;
  v153 = v24;
  v25 = *(a2 + 24);
  v149 = *(a2 + 16);
  v150 = v25;
  LODWORD(v151) = *(a2 + 32);
  (*(v20 + 16))(v23, a1, v19, v21);
  v26 = (*(v20 + 88))(v23, v19);
  if (v26 == *MEMORY[0x277D33DF0])
  {
    (*(v20 + 96))(v23, v19);
    v27 = *v23;
    v28 = *(v27 + 2);

    v29 = sub_219BF4024();
    if (v29)
    {
      v30 = v29;
      v144 = v28;
      v147 = v27;
      v141 = *(v3 + 40);
      v31 = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
      v32 = swift_allocObject();
      v143 = v30;
      v33 = [v30 identifier];
      v34 = sub_219BF5414();
      v36 = v35;

      *(v32 + 16) = v34;
      *(v32 + 24) = v36;
      *(v32 + 32) = v31;
      *(v32 + 40) = 0;
      *(v32 + 48) = 1;
      *(v32 + 56) = 8;
      v37 = v148;
      v38 = v153;
      *(v32 + 64) = v148;
      *(v32 + 72) = v38;
      v39 = v149;
      v40 = v150;
      *(v32 + 80) = v149;
      *(v32 + 88) = v40;
      v41 = v151;
      *(v32 + 96) = v151;
      v142 = v32;
      v42 = v32 | 0x2000000000000006;
      v145 = *(v3 + 32);
      v43 = sub_219BDFA44();
      (*(*(v43 - 8) + 56))(v18, 1, 1, v43);
      v166 = 0;
      v164 = 0u;
      v165 = 0u;
      v163 = 0;
      v161 = 0u;
      v162 = 0u;
      v168 = v141;
      sub_2187B14CC(&v161, &v156, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (v157)
      {
        sub_21875F93C(&v156, &v158);
        sub_218F20858(v37, v38, v39, v40, v41);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v45 = qword_280ED32D8;
        v44 = qword_280ED32E0;
        v46 = qword_280ED32E8;

        v153 = v46;
        sub_2188202A8(v44);
        __swift_destroy_boxed_opaque_existential_1(&v158);
      }

      else
      {
        sub_218F20858(v37, v38, v39, v40, v41);
        sub_218745F4C(&v156, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v45 = qword_280ED32D8;
        v44 = qword_280ED32E0;
        v90 = qword_280ED32E8;

        v153 = v90;
        sub_2188202A8(v44);
      }

      v155 = v42;
      v157 = sub_219BDD274();
      v91 = v145;
      *&v156 = v145;
      v92 = v146;
      sub_21992A3F4(v18, v146, &qword_280EE8610, MEMORY[0x277D2DED0]);
      sub_2187B14CC(&v164, &v158, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v93 = (*(v152 + 80) + 24) & ~*(v152 + 80);
      v94 = v18;
      v95 = (v7 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v152 = v94;
      v96 = (v95 + 47) & 0xFFFFFFFFFFFFFFF8;
      v97 = swift_allocObject();
      *(v97 + 16) = v91;
      sub_2189B4EAC(v92, v97 + v93);
      v98 = v97 + v95;
      v99 = v159;
      *v98 = v158;
      *(v98 + 16) = v99;
      *(v98 + 32) = v160;
      v100 = (v97 + v96);
      v101 = (v97 + ((v96 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v100 = 0;
      v100[1] = 0;
      *v101 = v45;
      v101[1] = v44;
      v102 = v153;
      v101[2] = v153;
      swift_retain_n();

      sub_2188202A8(v44);
      sub_2186CF94C(0);
      sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
      v103 = v154;
      sub_219BEB464();

      if (v103)
      {
        sub_218745F4C(&v156, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
        sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
        swift_allocObject();
        sub_219BE2FF4();

        swift_unknownObjectRelease();

        sub_2187FABEC(v44, v102);
        sub_218745F4C(&v161, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        sub_218745F4C(&v164, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
        sub_21992A460(v152, &qword_280EE8610, MEMORY[0x277D2DED0]);
      }

      else
      {
        swift_unknownObjectRelease();

        sub_2187FABEC(v44, v102);
        sub_218745F4C(&v161, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        sub_218745F4C(&v164, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
        sub_21992A460(v152, &qword_280EE8610, MEMORY[0x277D2DED0]);
        sub_218745F4C(&v156, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
      }

      goto LABEL_47;
    }

LABEL_19:

    return result;
  }

  if (v26 == *MEMORY[0x277D33E08])
  {
    (*(v20 + 96))(v23, v19);
    v47 = *v23;
    v48 = *(v47 + 16);

    v49 = sub_219BF46D4();
    v50 = v153;
    if (!v49)
    {
      goto LABEL_19;
    }

    v51 = v49;
    v143 = v48;
    v146 = v47;
    v140 = *(v3 + 40);
    v52 = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
    v53 = swift_allocObject();
    v142 = v51;
    v54 = [v51 identifier];
    v55 = sub_219BF5414();
    v57 = v56;

    *(v53 + 16) = v55;
    *(v53 + 24) = v57;
    *(v53 + 32) = v52;
    *(v53 + 40) = 0;
    *(v53 + 48) = 1;
    *(v53 + 56) = 4;
    v58 = v148;
    *(v53 + 64) = v148;
    *(v53 + 72) = v50;
    v59 = v149;
    v60 = v50;
    v61 = v150;
    *(v53 + 80) = v149;
    *(v53 + 88) = v61;
    v62 = v151;
    *(v53 + 96) = v151;
    v141 = v53 | 0x2000000000000006;
    v145 = *(v3 + 32);
    v63 = sub_219BDFA44();
    v64 = v147;
    (*(*(v63 - 8) + 56))(v147, 1, 1, v63);
    v166 = 0;
    v164 = 0u;
    v165 = 0u;
    v163 = 0;
    v161 = 0u;
    v162 = 0u;
    v168 = v140;
    sub_2187B14CC(&v161, &v156, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (v157)
    {
      sub_21875F93C(&v156, &v158);
      sub_218F20858(v58, v60, v59, v61, v62);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v66 = qword_280ED32D8;
      v65 = qword_280ED32E0;
      v67 = qword_280ED32E8;

      v153 = v65;
      v151 = v67;
      sub_2188202A8(v65);
      __swift_destroy_boxed_opaque_existential_1(&v158);
    }

    else
    {
      sub_218F20858(v58, v60, v59, v61, v62);
      sub_218745F4C(&v156, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v66 = qword_280ED32D8;
      v106 = qword_280ED32E0;
      v107 = qword_280ED32E8;

      v153 = v106;
      v151 = v107;
      sub_2188202A8(v106);
    }

    v155 = v141;
    v157 = sub_219BDD274();
    v108 = v145;
    *&v156 = v145;
    v109 = v144;
    sub_21992A3F4(v64, v144, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2187B14CC(&v164, &v158, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v110 = (*(v152 + 80) + 24) & ~*(v152 + 80);
    v111 = (v7 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
    v112 = (v111 + 47) & 0xFFFFFFFFFFFFFFF8;
    v113 = swift_allocObject();
    *(v113 + 16) = v108;
    sub_2189B4EAC(v109, v113 + v110);
    v114 = v113 + v111;
    v115 = v159;
    *v114 = v158;
    *(v114 + 16) = v115;
    *(v114 + 32) = v160;
    v116 = (v113 + v112);
    v117 = (v113 + ((v112 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v116 = 0;
    v116[1] = 0;
    v118 = v153;
    *v117 = v66;
    v117[1] = v118;
    v119 = v151;
    v117[2] = v151;
    swift_retain_n();

    sub_2188202A8(v118);
    sub_2186CF94C(0);
    sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
    v120 = v154;
    sub_219BEB464();
    if (v120)
    {

      sub_218745F4C(&v156, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
      sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
      swift_allocObject();
      sub_219BE2FF4();

      swift_unknownObjectRelease();

      sub_2187FABEC(v118, v119);
      sub_218745F4C(&v161, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_218745F4C(&v164, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      v121 = MEMORY[0x277D2DED0];
      v122 = &v168;
LABEL_44:
      sub_21992A460(*(v122 - 32), &qword_280EE8610, v121);
LABEL_47:

      return result;
    }

    swift_unknownObjectRelease();

    sub_2187FABEC(v118, v119);
    sub_218745F4C(&v161, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218745F4C(&v164, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v123 = MEMORY[0x277D2DED0];
    v124 = &v168;
    goto LABEL_46;
  }

  if (v26 == *MEMORY[0x277D33DF8])
  {
    v147 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 96))(v23, v19);
    v68 = *v23;
    v69 = *(v68 + 16);

    v70 = sub_219BF4BE4();
    if (!v70)
    {
      goto LABEL_19;
    }

    v71 = v70;
    v143 = v69;
    v146 = v68;
    v72 = v3;
    v140 = *(v3 + 40);
    v73 = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
    v74 = swift_allocObject();
    v142 = v71;
    v75 = [v71 identifier];
    v76 = sub_219BF5414();
    v78 = v77;

    *(v74 + 16) = v76;
    *(v74 + 24) = v78;
    *(v74 + 32) = v73;
    *(v74 + 40) = 0;
    *(v74 + 48) = 1;
    v79 = v148;
    *(v74 + 56) = 7;
    *(v74 + 64) = v79;
    v80 = v153;
    v81 = v149;
    *(v74 + 72) = v153;
    *(v74 + 80) = v81;
    v82 = v150;
    *(v74 + 88) = v150;
    v83 = v151;
    *(v74 + 96) = v151;
    v141 = v74 | 0x2000000000000006;
    v144 = *(v72 + 32);
    v84 = sub_219BDFA44();
    v85 = v145;
    (*(*(v84 - 8) + 56))(v145, 1, 1, v84);
    v166 = 0;
    v164 = 0u;
    v165 = 0u;
    v163 = 0;
    v161 = 0u;
    v162 = 0u;
    v168 = v140;
    sub_2187B14CC(&v161, &v156, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (v157)
    {
      sub_21875F93C(&v156, &v158);
      sub_218F20858(v79, v80, v81, v82, v83);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v87 = qword_280ED32D8;
      v86 = qword_280ED32E0;
      v88 = qword_280ED32E8;

      v153 = v86;
      v151 = v88;
      sub_2188202A8(v86);
      __swift_destroy_boxed_opaque_existential_1(&v158);
    }

    else
    {
      sub_218F20858(v79, v80, v81, v82, v83);
      sub_218745F4C(&v156, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v87 = qword_280ED32D8;
      v125 = qword_280ED32E0;
      v126 = qword_280ED32E8;

      v153 = v125;
      v151 = v126;
      sub_2188202A8(v125);
    }

    v127 = v147;
    v155 = v141;
    v157 = sub_219BDD274();
    v128 = v144;
    *&v156 = v144;
    sub_21992A3F4(v85, v127, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2187B14CC(&v164, &v158, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v129 = (*(v152 + 80) + 24) & ~*(v152 + 80);
    v130 = (v7 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
    v131 = (v130 + 47) & 0xFFFFFFFFFFFFFFF8;
    v132 = swift_allocObject();
    *(v132 + 16) = v128;
    sub_2189B4EAC(v127, v132 + v129);
    v133 = v132 + v130;
    v134 = v159;
    *v133 = v158;
    *(v133 + 16) = v134;
    *(v133 + 32) = v160;
    v135 = (v132 + v131);
    v136 = (v132 + ((v131 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v135 = 0;
    v135[1] = 0;
    v137 = v153;
    *v136 = v87;
    v136[1] = v137;
    v138 = v151;
    v136[2] = v151;
    swift_retain_n();

    sub_2188202A8(v137);
    sub_2186CF94C(0);
    sub_21992A4BC(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
    v139 = v154;
    sub_219BEB464();
    if (v139)
    {

      sub_218745F4C(&v156, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
      sub_2187B2EC4(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
      swift_allocObject();
      sub_219BE2FF4();

      swift_unknownObjectRelease();

      sub_2187FABEC(v137, v138);
      sub_218745F4C(&v161, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_218745F4C(&v164, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      v121 = MEMORY[0x277D2DED0];
      v122 = &v167;
      goto LABEL_44;
    }

    swift_unknownObjectRelease();

    sub_2187FABEC(v137, v138);
    sub_218745F4C(&v161, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218745F4C(&v164, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v123 = MEMORY[0x277D2DED0];
    v124 = &v167;
LABEL_46:
    sub_21992A460(*(v124 - 32), &qword_280EE8610, v123);
    sub_218745F4C(&v156, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);

    goto LABEL_47;
  }

  if (v26 != *MEMORY[0x277D33E00] && v26 != *MEMORY[0x277D33E18] && v26 != *MEMORY[0x277D33DE8] && v26 != *MEMORY[0x277D33E10])
  {
    v104 = sub_219BF3CB4();
    sub_21992A4BC(&qword_27CC20FE8, MEMORY[0x277D34168], MEMORY[0x277D34170]);
    swift_allocError();
    (*(*(v104 - 8) + 104))(v105, *MEMORY[0x277D34160], v104);
    swift_willThrow();
  }

  (*(v20 + 8))(v23, v19);
  return result;
}

uint64_t sub_21992A3F4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_219928A80(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21992A460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219928A80(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21992A4BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21992A504(void *a1)
{
  sub_219928A80(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_21992A5E8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_219BEE544();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v2[9] = *(v4 + 64);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for FeedAvailability(0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21992A6F8, 0, 0);
}

uint64_t sub_21992A6F8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if ([*(Strong + 56) useFood])
    {
      v0[16] = *(v2 + 64);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v4 = swift_task_alloc();
      v0[17] = v4;
      *v4 = v0;
      v4[1] = sub_21992A8C4;

      return MEMORY[0x282193DF0](0, ObjectType);
    }

    sub_21992B19C();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
  }

  else
  {
    sub_21992B19C();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_21992A8C4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_219909CFC;
  }

  else
  {
    swift_unknownObjectRelease();
    v4 = sub_21992A9E0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21992A9E0()
{
  v16 = v0;
  v1 = [*(v0 + 144) recipeCatalogTagID];
  if (v1)
  {
    v2 = *(v0 + 120);
    v3 = v1;
    v4 = sub_219BF5414();
    v6 = v5;

    v7 = v2[12];
    v8 = v2[13];
    __swift_project_boxed_opaque_existential_1(v2 + 9, v7);
    memset(v14, 0, sizeof(v14));
    v15 = -1;
    *(v0 + 160) = (*(v8 + 8))(v4, v6, 13, v14, v7, v8);

    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_21992ABD0;
    v10 = *(v0 + 112);

    return MEMORY[0x2821D23D8](v10);
  }

  else
  {
    sub_21992B19C();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_21992ABD0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_219909D94;
  }

  else
  {

    v2 = sub_21992ACEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21992ACEC()
{
  sub_218C8CC10(v0[14], v0[13]);
  if (swift_getEnumCaseMultiPayload())
  {
    v1 = v0[14];
    sub_2190BB958(v0[13], type metadata accessor for FeedAvailability);
    sub_21992B19C();
    swift_allocError();
    *v2 = 3;
    swift_willThrow();
    swift_unknownObjectRelease();

    sub_2190BB958(v1, type metadata accessor for FeedAvailability);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[13];
    v0[23] = *v5;
    sub_218BFB73C(0);
    sub_218BFB694(v5 + *(v6 + 48));
    swift_getKeyPath();
    swift_unknownObjectRetain();
    sub_219BEE534();
    sub_219BF5BD4();
    v0[24] = sub_219BF5BC4();
    v8 = sub_219BF5B44();

    return MEMORY[0x2822009F8](sub_21992AEE0, v8, v7);
  }
}

uint64_t sub_21992AEE0()
{
  v1 = v0[23];
  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_2186DB6BC(0);
  (*(v6 + 16))(v4, v3, v7);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v6 + 32))(v9 + v8, v4, v7);
  *(v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
  v10 = v1;

  v11 = sub_219BE1E04();
  v0[25] = v11;

  if (v11)
  {
    v12 = sub_219909A1C;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_21992B05C()
{
  sub_21881ADAC(0, &qword_27CC20CF0, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D6CF30]);
  swift_allocObject();
  swift_weakInit();
  return sub_219BE2F54();
}

uint64_t sub_21992B100(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187608D4;

  return sub_21992A5E8(a1, v1);
}

unint64_t sub_21992B19C()
{
  result = qword_27CC20FF8;
  if (!qword_27CC20FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20FF8);
  }

  return result;
}

unint64_t sub_21992B204()
{
  result = qword_27CC21008;
  if (!qword_27CC21008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21008);
  }

  return result;
}

BOOL sub_21992B258(void *a1)
{
  v1 = [a1 activityType];
  v2 = sub_219BF5414();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  NewsActivityType2.init(rawValue:)(v5);
  return v7 != 37;
}

uint64_t sub_21992B2C8(void *a1)
{
  v1 = [a1 activityType];
  v2 = sub_219BF5414();
  v4 = v3;

  if (v2 == sub_219BF5414() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_219BF78F4();
  }

  return v7 & 1;
}

void *sub_21992B36C(void *a1)
{
  v2 = v1;
  sub_21896FA3C(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v86 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v86 - v11;
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = v86 - v15;
  v17 = [a1 userInfo];
  if (v17)
  {
    v94 = v5;
    v92 = v12;
    v93 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = v17;
    v19 = sub_219BF5214();

    v20 = [a1 activityType];
    v21 = sub_219BF5414();
    v23 = v22;

    [a1 _executionContext];
    v24 = [a1 interaction];
    sub_218D16ED0(v21, v23, v19, v24, &v103);

    v33 = v103;
    v34 = NewsActivity2.activityTraits.getter();
    v91 = v33;
    v89 = 0;
    v90 = v1;
    v88 = v9;
    if (v34)
    {
      v87 = v16;
      v35 = *(v34 + 2);
      v86[1] = v34;
      v36 = v34 + 32;
      do
      {
        if (!v35)
        {

          v33 = v91;
          v2 = v90;
          v9 = v88;
          goto LABEL_11;
        }

        if (!*v36)
        {
          v64 = v19;

          goto LABEL_23;
        }

        v37 = sub_219BF78F4();

        ++v36;
        --v35;
      }

      while ((v37 & 1) == 0);
      v64 = v19;
LABEL_23:

      v88 = OBJC_IVAR____TtC7NewsUI223NewsUserActivityHandler_navigator;
      v65 = v91;
      *&v103 = v91;
      v66 = v90;
      v67 = sub_21992C284(&v103, v64);

      v68 = sub_219BDFA44();
      (*(*(v68 - 8) + 56))(v87, 1, 1, v68);
      v105 = 0;
      v103 = 0u;
      v104 = 0u;
      sub_218718690(v66 + OBJC_IVAR____TtC7NewsUI223NewsUserActivityHandler_resolver, v102);
      sub_2187B1814(v102, &v96, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (v98)
      {
        sub_21875F93C(&v96, &v99);
        *&v96 = v65;
        v32 = sub_2194DA78C(&v99);
        v70 = v69;
        v93 = v71;
        __swift_destroy_boxed_opaque_existential_1(&v99);
      }

      else
      {
        sub_2187B1D30(&v96, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v32 = qword_280ED32D8;
        v70 = qword_280ED32E0;
        v72 = qword_280ED32E8;

        v93 = v72;
        sub_2188202A8(v70);
      }

      v95 = v65;
      if (v67)
      {
        v73 = sub_219BDD274();
        v74 = v67;
      }

      else
      {
        v74 = 0;
        v73 = 0;
        *(&v96 + 1) = 0;
        v97 = 0;
      }

      v75 = v87;
      *&v96 = v74;
      v98 = v73;
      v76 = v92;
      sub_2189B4E2C(v87, v92);
      sub_2187B1814(&v103, &v99, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v77 = (*(v94 + 80) + 24) & ~*(v94 + 80);
      v78 = (v6 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
      v79 = swift_allocObject();
      *(v79 + 16) = v67;
      sub_2189B4EAC(v76, v79 + v77);
      v80 = v79 + v78;
      v81 = v100;
      *v80 = v99;
      *(v80 + 16) = v81;
      *(v80 + 32) = v101;
      v82 = (v79 + ((v78 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v82 = v32;
      v82[1] = v70;
      v83 = v93;
      v82[2] = v93;
      swift_retain_n();

      sub_2188202A8(v70);
      sub_218702160(0);
      sub_21992C5DC(&qword_280EE5D90, sub_218702160, MEMORY[0x277D6D358]);
      v84 = v89;
      sub_219BEB474();
      if (!v84)
      {

        sub_2187B1D30(v102, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        sub_2187B1D30(&v103, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_218A42D80(v75);
        sub_218806FD0(&v96);
        sub_218932F9C(v91);
        sub_2187FABEC(v70, v83);
        return v32;
      }

      sub_218806FD0(&v96);
      sub_21870F240(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
      swift_allocObject();
      v62 = sub_219BE2FF4();
      sub_218932F9C(v91);

      sub_2187FABEC(v70, v83);
      sub_2187B1D30(v102, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_2187B1D30(&v103, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v63 = v75;
      goto LABEL_33;
    }

LABEL_11:
    v87 = OBJC_IVAR____TtC7NewsUI223NewsUserActivityHandler_navigator;
    *&v103 = v33;
    v38 = sub_21992C284(&v103, v19);

    v39 = sub_219BDFA44();
    (*(*(v39 - 8) + 56))(v9, 1, 1, v39);
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    sub_218718690(v2 + OBJC_IVAR____TtC7NewsUI223NewsUserActivityHandler_resolver, v102);
    sub_2187B1814(v102, &v96, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (v98)
    {
      v40 = v9;
      sub_21875F93C(&v96, &v99);
      *&v96 = v33;
      v32 = sub_2194DA78C(&v99);
      v42 = v41;
      v92 = v43;
      __swift_destroy_boxed_opaque_existential_1(&v99);
      v44 = v94;
    }

    else
    {
      v40 = v9;
      sub_2187B1D30(&v96, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      v44 = v94;
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v32 = qword_280ED32D8;
      v42 = qword_280ED32E0;
      v45 = qword_280ED32E8;

      v92 = v45;
      sub_2188202A8(v42);
    }

    v95 = v33;
    v46 = v42;
    if (v38)
    {
      v47 = sub_219BDD274();
      v48 = v38;
    }

    else
    {
      v48 = 0;
      v47 = 0;
      *(&v96 + 1) = 0;
      v97 = 0;
    }

    *&v96 = v48;
    v98 = v47;
    v49 = v40;
    v50 = v93;
    sub_2189B4E2C(v49, v93);
    sub_2187B1814(&v103, &v99, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v51 = (*(v44 + 80) + 24) & ~*(v44 + 80);
    v52 = (v6 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 47) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    *(v54 + 16) = v38;
    sub_2189B4EAC(v50, v54 + v51);
    v55 = v54 + v52;
    v56 = v100;
    *v55 = v99;
    *(v55 + 16) = v56;
    *(v55 + 32) = v101;
    v57 = (v54 + v53);
    v58 = (v54 + ((v53 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v57 = 0;
    v57[1] = 0;
    *v58 = v32;
    v58[1] = v46;
    v59 = v46;
    v60 = v92;
    v58[2] = v92;
    swift_retain_n();

    sub_2188202A8(v46);
    sub_218702160(0);
    sub_21992C5DC(&qword_280EE5D90, sub_218702160, MEMORY[0x277D6D358]);
    v61 = v89;
    sub_219BEB464();
    if (v61)
    {

      sub_218806FD0(&v96);
      sub_21870F240(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
      swift_allocObject();
      v62 = sub_219BE2FF4();
      sub_218932F9C(v91);

      sub_2187FABEC(v59, v60);
      sub_2187B1D30(v102, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_2187B1D30(&v103, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v63 = v88;
LABEL_33:
      sub_218A42D80(v63);
      return v62;
    }

    sub_2187B1D30(v102, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2187B1D30(&v103, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_218A42D80(v88);
    sub_218806FD0(&v96);
    sub_218932F9C(v91);
    sub_2187FABEC(v46, v60);
  }

  else
  {
    v25 = sub_219BF61F4();
    sub_2188096E0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_219C09BA0;
    v27 = [a1 activityType];
    v28 = sub_219BF5414();
    v30 = v29;

    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = sub_2186FC3BC();
    *(v26 + 32) = v28;
    *(v26 + 40) = v30;
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v31 = sub_219BF6F44();
    sub_219BE5314("NSUserActivity with type '%@' was missing the userInfo dictionary!", 66, 2, &dword_2186C1000, v31, v25, v26);

    LOBYTE(v103) = 0;
    sub_21870F240(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  return v32;
}

uint64_t sub_21992C284(unint64_t *a1, uint64_t a2)
{
  v4 = sub_219BE0364();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_2186C6148(0, &qword_280E8E650, 0x277CC1EF0);
  v16 = sub_219BF6284();
  v17 = v9;
  sub_219BF72A4();
  if (!*(a2 + 16) || (v10 = sub_21931EECC(v18), (v11 & 1) == 0))
  {
    sub_218B6B67C(v18);
    return 0;
  }

  sub_2186D1230(*(a2 + 56) + 32 * v10, v19);
  sub_218B6B67C(v18);
  if ((swift_dynamicCast() & 1) == 0 || v16 != 1)
  {
    return 0;
  }

  v12 = 0;
  v13 = (v8 >> 58) & 0x3C | (v8 >> 1) & 3;
  if (v13 <= 0x1E && ((1 << v13) & 0x40F0011E) != 0)
  {
    v12 = sub_219BDD144();
    sub_219BE0354();
    sub_21992C5DC(&qword_280EE8430, MEMORY[0x277D2E4C0], MEMORY[0x277D2E4B8]);
    sub_219BDD1F4();
    (*(v5 + 8))(v7, v4);
  }

  return v12;
}

uint64_t sub_21992C4D8()
{

  v1 = OBJC_IVAR____TtC7NewsUI223NewsUserActivityHandler_navigator;
  sub_218702160(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI223NewsUserActivityHandler_resolver));

  return swift_deallocClassInstance();
}

uint64_t sub_21992C5DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21992C650(void *a1)
{
  sub_21992D1FC(0, &qword_27CC21030, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21992D140();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF77F4();
  if (!v1)
  {
    _s12HeadlineDataVMa(0);
    v9[14] = 1;
    sub_219BDB954();
    sub_2188390BC(&unk_280EE9D40, MEMORY[0x277CC9268]);
    sub_219BF77E4();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_21992C804(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21992D1FC(0, &qword_27CC21020, MEMORY[0x277D844C8]);
  v17 = *(v7 - 8);
  v18 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = _s12HeadlineDataVMa(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21992D140();
  sub_219BF7B34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = v17;
    v20 = 0;
    *v12 = sub_219BF76F4();
    v12[1] = v14;
    sub_219BDB954();
    v19 = 1;
    sub_2188390BC(&unk_280EE9D10, MEMORY[0x277CC9280]);
    sub_219BF76E4();
    (*(v13 + 8))(v9, v18);
    sub_218AB007C(v6, v12 + *(v10 + 20));
    sub_21992D194(v12, v16, _s12HeadlineDataVMa);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_21992D01C(v12, _s12HeadlineDataVMa);
  }
}

uint64_t sub_21992CAFC()
{
  if (*v0)
  {
    return 0x656469727265766FLL;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_21992CB44(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656469727265766FLL && a2 == 0xEB000000004C5255)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_21992CC2C(uint64_t a1)
{
  v2 = sub_21992D140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21992CC68(uint64_t a1)
{
  v2 = sub_21992D140();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_21992CCDC(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193D01B8(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeadlineModel(0);
  if ((sub_21912DF5C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v15 = *(_s8HeadlineVMa(0) + 20);
  v16 = *(v12 + 48);
  sub_21992D194(a1 + v15, v14, sub_21873F65C);
  sub_21992D194(a2 + v15, &v14[v16], sub_21873F65C);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_21992D01C(v14, sub_21873F65C);
      return 1;
    }

    goto LABEL_7;
  }

  sub_21992D194(v14, v10, sub_21873F65C);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_21992D01C(v14, sub_2193D01B8);
    return 0;
  }

  (*(v5 + 32))(v7, &v14[v16], v4);
  sub_2188390BC(&qword_280EE9D20, MEMORY[0x277CC9278]);
  v19 = sub_219BF53A4();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  sub_21992D01C(v14, sub_21873F65C);
  return (v19 & 1) != 0;
}

uint64_t sub_21992D01C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21992D0C4(uint64_t a1)
{
  sub_21873F65C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_21992D140()
{
  result = qword_27CC21028;
  if (!qword_27CC21028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21028);
  }

  return result;
}

uint64_t sub_21992D194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21992D1FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21992D140();
    v7 = a3(a1, &_s12HeadlineDataV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

BOOL sub_21992D260(void *a1, void *a2)
{
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193D01B8(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == *a2 || (v15 = sub_219BF78F4(), result = 0, (v15 & 1) != 0))
  {
    v17 = *(_s12HeadlineDataVMa(0) + 20);
    v18 = *(v12 + 48);
    sub_21992D194(a1 + v17, v14, sub_21873F65C);
    sub_21992D194(a2 + v17, &v14[v18], sub_21873F65C);
    v19 = *(v5 + 48);
    if (v19(v14, 1, v4) == 1)
    {
      if (v19(&v14[v18], 1, v4) == 1)
      {
        sub_21992D01C(v14, sub_21873F65C);
        return 1;
      }
    }

    else
    {
      sub_21992D194(v14, v10, sub_21873F65C);
      if (v19(&v14[v18], 1, v4) != 1)
      {
        (*(v5 + 32))(v7, &v14[v18], v4);
        sub_2188390BC(&qword_280EE9D20, MEMORY[0x277CC9278]);
        v20 = sub_219BF53A4();
        v21 = *(v5 + 8);
        v21(v7, v4);
        v21(v10, v4);
        sub_21992D01C(v14, sub_21873F65C);
        return (v20 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_21992D01C(v14, sub_2193D01B8);
    return 0;
  }

  return result;
}

unint64_t sub_21992D5C0()
{
  result = qword_27CC21038;
  if (!qword_27CC21038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21038);
  }

  return result;
}

unint64_t sub_21992D618()
{
  result = qword_27CC21040;
  if (!qword_27CC21040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21040);
  }

  return result;
}

unint64_t sub_21992D670()
{
  result = qword_27CC21048;
  if (!qword_27CC21048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21048);
  }

  return result;
}

uint64_t _s7URLDataVMa(uint64_t a1)
{
  result = qword_27CC21050;
  if (!qword_27CC21050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21992D738@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BDB954();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21992DD28(0, &qword_27CC21060, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = _s7URLDataVMa(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21992DC70();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_2188390BC(&unk_280EE9D10, MEMORY[0x277CC9280]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_21992DCC4(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_21992D9E0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_21992DA68(uint64_t a1)
{
  v2 = sub_21992DC70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21992DAA4(uint64_t a1)
{
  v2 = sub_21992DC70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21992DAF8(void *a1, __n128 a2)
{
  sub_21992DD28(0, &qword_27CC21070, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21992DC70();
  sub_219BF7B44();
  sub_219BDB954();
  sub_2188390BC(&unk_280EE9D40, MEMORY[0x277CC9268]);
  sub_219BF7834();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_21992DC70()
{
  result = qword_27CC21068;
  if (!qword_27CC21068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21068);
  }

  return result;
}

uint64_t sub_21992DCC4(uint64_t a1, uint64_t a2)
{
  v4 = _s7URLDataVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21992DD28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21992DC70();
    v7 = a3(a1, &_s7URLDataV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21992DDA0()
{
  result = qword_27CC21078;
  if (!qword_27CC21078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21078);
  }

  return result;
}

unint64_t sub_21992DDF8()
{
  result = qword_27CC21080;
  if (!qword_27CC21080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21080);
  }

  return result;
}

unint64_t sub_21992DE50()
{
  result = qword_27CC21088;
  if (!qword_27CC21088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21088);
  }

  return result;
}

uint64_t sub_21992DECC(void *a1)
{
  sub_21992ECE4(0, &qword_27CC210B0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21992EC28();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF77F4();
  if (!v1)
  {
    _s9IssueDataVMa(0);
    v9[14] = 1;
    sub_219BDB954();
    sub_2188390BC(&unk_280EE9D40, MEMORY[0x277CC9268]);
    sub_219BF77E4();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_21992E080(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21992ECE4(0, &qword_27CC210A0, MEMORY[0x277D844C8]);
  v17 = *(v7 - 8);
  v18 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = _s9IssueDataVMa(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21992EC28();
  sub_219BF7B34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = v17;
    v20 = 0;
    *v12 = sub_219BF76F4();
    v12[1] = v14;
    sub_219BDB954();
    v19 = 1;
    sub_2188390BC(&unk_280EE9D10, MEMORY[0x277CC9280]);
    sub_219BF76E4();
    (*(v13 + 8))(v9, v18);
    sub_218AB007C(v6, v12 + *(v10 + 20));
    sub_21992EC7C(v12, v16, _s9IssueDataVMa);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_21992EB74(v12, _s9IssueDataVMa);
  }
}

uint64_t sub_21992E378(uint64_t a1)
{
  v2 = sub_21992EC28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21992E3B4(uint64_t a1)
{
  v2 = sub_21992EC28();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_21992E428(void *a1, void *a2)
{
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193D01B8(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == *a2 || (v15 = sub_219BF78F4(), result = 0, (v15 & 1) != 0))
  {
    v17 = *(_s9IssueDataVMa(0) + 20);
    v18 = *(v12 + 48);
    sub_21992EC7C(a1 + v17, v14, sub_21873F65C);
    sub_21992EC7C(a2 + v17, &v14[v18], sub_21873F65C);
    v19 = *(v5 + 48);
    if (v19(v14, 1, v4) == 1)
    {
      if (v19(&v14[v18], 1, v4) == 1)
      {
        sub_21992EB74(v14, sub_21873F65C);
        return 1;
      }
    }

    else
    {
      sub_21992EC7C(v14, v10, sub_21873F65C);
      if (v19(&v14[v18], 1, v4) != 1)
      {
        (*(v5 + 32))(v7, &v14[v18], v4);
        sub_2188390BC(&qword_280EE9D20, MEMORY[0x277CC9278]);
        v20 = sub_219BF53A4();
        v21 = *(v5 + 8);
        v21(v7, v4);
        v21(v10, v4);
        sub_21992EB74(v14, sub_21873F65C);
        return (v20 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_21992EB74(v14, sub_2193D01B8);
    return 0;
  }

  return result;
}

BOOL sub_21992E774(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_219BDB954();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v30 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193D01B8(0);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 8);
  v11 = *(a1 + 10);
  v41 = *(a1 + 11);
  v42 = v11;
  v12 = *(a1 + 24);
  v13 = *(a2 + 8);
  v14 = *(a2 + 10);
  LODWORD(v9) = *(a2 + 11);
  v39 = *(a1 + 12);
  v40 = v9;
  LODWORD(v9) = *(a2 + 12);
  v37 = v12;
  v38 = v9;
  v36 = *(a2 + 24);
  sub_2189666A0();
  v15 = sub_219BF6DD4();
  result = 0;
  if ((v15 & 1) != 0 && ((v10 ^ v13) & 1) == 0)
  {
    v17 = sub_219BF6DD4();
    result = 0;
    if ((v17 & 1) != 0 && ((v42 ^ v14) & 1) == 0 && ((v41 ^ v40) & 1) == 0 && ((v39 ^ v38) & 1) == 0 && ((v37 ^ v36) & 1) == 0)
    {
      v18 = *(_s5IssueVMa(0) + 20);
      v19 = *(v32 + 48);
      v20 = a1 + v18;
      v21 = v33;
      sub_21992EC7C(v20, v33, sub_21873F65C);
      sub_21992EC7C(a2 + v18, v21 + v19, sub_21873F65C);
      v23 = v34;
      v22 = v35;
      v24 = *(v34 + 48);
      if (v24(v21, 1, v35) == 1)
      {
        if (v24(v21 + v19, 1, v22) == 1)
        {
          sub_21992EB74(v21, sub_21873F65C);
          return 1;
        }
      }

      else
      {
        v25 = v31;
        sub_21992EC7C(v21, v31, sub_21873F65C);
        if (v24(v21 + v19, 1, v22) != 1)
        {
          v26 = v21 + v19;
          v27 = v30;
          (*(v23 + 32))(v30, v26, v22);
          sub_2188390BC(&qword_280EE9D20, MEMORY[0x277CC9278]);
          v28 = sub_219BF53A4();
          v29 = *(v23 + 8);
          v29(v27, v22);
          v29(v25, v22);
          sub_21992EB74(v21, sub_21873F65C);
          return (v28 & 1) != 0;
        }

        (*(v23 + 8))(v25, v22);
      }

      sub_21992EB74(v21, sub_2193D01B8);
      return 0;
    }
  }

  return result;
}

uint64_t sub_21992EB74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21992EC28()
{
  result = qword_27CC210A8;
  if (!qword_27CC210A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC210A8);
  }

  return result;
}

uint64_t sub_21992EC7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21992ECE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21992EC28();
    v7 = a3(a1, &_s9IssueDataV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21992ED5C()
{
  result = qword_27CC210B8;
  if (!qword_27CC210B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC210B8);
  }

  return result;
}

unint64_t sub_21992EDB4()
{
  result = qword_27CC210C0;
  if (!qword_27CC210C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC210C0);
  }

  return result;
}

unint64_t sub_21992EE0C()
{
  result = qword_27CC210C8;
  if (!qword_27CC210C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC210C8);
  }

  return result;
}

uint64_t sub_21992EE60@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v25 = _s10PuzzleDataVMa(0);
  MEMORY[0x28223BE20](v25);
  v26 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s14PuzzleFeedDataVMa(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s9IssueDataVMa(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s7TagDataVMa(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s12HeadlineDataVMa(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s5ModelOMa(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21992F354(v27, v17, _s5ModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_2199314D8(v17, v14, _s12HeadlineDataVMa);
      sub_21992F354(&v14[*(v12 + 20)], v28, sub_21873F65C);
      v19 = _s12HeadlineDataVMa;
      v20 = v14;
      return sub_2199313D0(v20, v19);
    }

    if (EnumCaseMultiPayload != 1)
    {
      sub_2199314D8(v17, v8, _s9IssueDataVMa);
      sub_21992F354(&v8[*(v6 + 20)], v28, sub_21873F65C);
      v19 = _s9IssueDataVMa;
      v20 = v8;
      return sub_2199313D0(v20, v19);
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload != 3)
    {
      sub_2199314D8(v17, v5, _s14PuzzleFeedDataVMa);
      sub_21992F354(&v5[*(v3 + 20)], v28, sub_21873F65C);
      v19 = _s14PuzzleFeedDataVMa;
      v20 = v5;
      return sub_2199313D0(v20, v19);
    }

LABEL_7:
    sub_2199314D8(v17, v11, _s7TagDataVMa);
    sub_21992F354(&v11[*(v9 + 20)], v28, sub_21873F65C);
    v19 = _s7TagDataVMa;
    v20 = v11;
    return sub_2199313D0(v20, v19);
  }

  if (EnumCaseMultiPayload == 5)
  {
    v21 = v17;
    v17 = v26;
    sub_2199314D8(v21, v26, _s10PuzzleDataVMa);
    sub_21992F354(&v17[*(v25 + 20)], v28, sub_21873F65C);
    v22 = _s10PuzzleDataVMa;
  }

  else
  {
    v23 = sub_219BDB954();
    (*(*(v23 - 8) + 56))(v28, 1, 1, v23);
    v22 = _s5ModelOMa;
  }

  v19 = v22;
  v20 = v17;
  return sub_2199313D0(v20, v19);
}

uint64_t _s5ModelOMa(uint64_t a1)
{
  result = qword_27CC210D0;
  if (!qword_27CC210D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21992F354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21992F3BC(uint64_t a1)
{
  result = _s12HeadlineDataVMa(319);
  if (v2 <= 0x3F)
  {
    result = _s7TagDataVMa(319);
    if (v3 <= 0x3F)
    {
      result = _s9IssueDataVMa(319);
      if (v4 <= 0x3F)
      {
        result = _s14PuzzleFeedDataVMa(319);
        if (v5 <= 0x3F)
        {
          result = _s10PuzzleDataVMa(319);
          if (v6 <= 0x3F)
          {
            result = _s7URLDataVMa(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_21992F484@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v41 = _s7URLDataVMa(0);
  MEMORY[0x28223BE20](v41);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = _s10PuzzleDataVMa(0);
  MEMORY[0x28223BE20](v40);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = _s14PuzzleFeedDataVMa(0);
  MEMORY[0x28223BE20](v38);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = _s9IssueDataVMa(0);
  MEMORY[0x28223BE20](v35);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = _s7TagDataVMa(0);
  MEMORY[0x28223BE20](v43);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v32 = &v32 - v9;
  v10 = _s12HeadlineDataVMa(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219931540(0, &qword_27CC210E8, MEMORY[0x277D844C8]);
  v14 = v13;
  v42 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v17 = _s5ModelOMa(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_219931430();
  v21 = v45;
  sub_219BF7B34();
  if (!v21)
  {
    v45 = v19;
    v22 = v44;
    v54 = 0;
    sub_219931484();
    sub_219BF7734();
    v23 = v16;
    if (v55 <= 2u)
    {
      if (v55)
      {
        if (v55 == 1)
        {
          v48 = 1;
          sub_2199315F8(&qword_27CC21118, _s7TagDataVMa, &unk_219CB6484);
          v26 = v32;
          sub_219BF7734();
          (*(v42 + 8))(v16, v14);
          v25 = v45;
          sub_2199314D8(v26, v45, _s7TagDataVMa);
        }

        else
        {
          v49 = 1;
          sub_2199315F8(&qword_27CC21120, _s9IssueDataVMa, &unk_219CB5C58);
          v28 = v36;
          sub_219BF7734();
          (*(v42 + 8))(v23, v14);
          v25 = v45;
          sub_2199314D8(v28, v45, _s9IssueDataVMa);
        }
      }

      else
      {
        v47 = 1;
        sub_2199315F8(&qword_27CC21128, _s12HeadlineDataVMa, &unk_219CB58FC);
        sub_219BF7734();
        (*(v42 + 8))(v16, v14);
        v25 = v45;
        sub_2199314D8(v12, v45, _s12HeadlineDataVMa);
      }
    }

    else if (v55 > 4u)
    {
      if (v55 == 5)
      {
        v52 = 1;
        sub_2199315F8(&qword_27CC21108, _s10PuzzleDataVMa, &unk_219CB628C);
        v27 = v34;
        sub_219BF7734();
        (*(v42 + 8))(v16, v14);
        v25 = v45;
        sub_2199314D8(v27, v45, _s10PuzzleDataVMa);
      }

      else
      {
        v53 = 1;
        sub_2199315F8(&qword_27CC21100, _s7URLDataVMa, &unk_219CB5A90);
        v30 = v37;
        sub_219BF7734();
        (*(v42 + 8))(v16, v14);
        v25 = v45;
        sub_2199314D8(v30, v45, _s7URLDataVMa);
      }
    }

    else if (v55 == 3)
    {
      v50 = 1;
      sub_2199315F8(&qword_27CC21118, _s7TagDataVMa, &unk_219CB6484);
      v24 = v33;
      sub_219BF7734();
      (*(v42 + 8))(v23, v14);
      v25 = v45;
      sub_2199314D8(v24, v45, _s7TagDataVMa);
    }

    else
    {
      v51 = 1;
      sub_2199315F8(&qword_27CC21110, _s14PuzzleFeedDataVMa, &unk_219CB60C0);
      v29 = v39;
      sub_219BF7734();
      (*(v42 + 8))(v16, v14);
      v25 = v45;
      sub_2199314D8(v29, v45, _s14PuzzleFeedDataVMa);
    }

    swift_storeEnumTagMultiPayload();
    sub_2199314D8(v25, v22, _s5ModelOMa);
  }

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_21992FD94(void *a1)
{
  v41 = _s7URLDataVMa(0);
  MEMORY[0x28223BE20](v41);
  v46 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = _s10PuzzleDataVMa(0);
  MEMORY[0x28223BE20](v40);
  v45 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = _s14PuzzleFeedDataVMa(0);
  MEMORY[0x28223BE20](v39);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = _s9IssueDataVMa(0);
  MEMORY[0x28223BE20](v49);
  v48 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = _s7TagDataVMa(0);
  MEMORY[0x28223BE20](v42);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = &v38 - v8;
  v9 = _s12HeadlineDataVMa(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s5ModelOMa(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219931540(0, &qword_27CC21130, MEMORY[0x277D84538]);
  v50 = v15;
  v53 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219931430();
  sub_219BF7B44();
  sub_21992F354(v51, v14, _s5ModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      v19 = v50;
      v20 = v17;
      if (EnumCaseMultiPayload == 5)
      {
        v21 = v45;
        sub_2199314D8(v14, v45, _s10PuzzleDataVMa);
        v54 = 1280;
        sub_2199315A4();
        v30 = v52;
        sub_219BF7834();
        if (!v30)
        {
          HIBYTE(v54) = 1;
          sub_2199315F8(&qword_27CC21150, _s10PuzzleDataVMa, &unk_219CB6264);
          sub_219BF7834();
        }

        v23 = _s10PuzzleDataVMa;
      }

      else
      {
        v21 = v46;
        sub_2199314D8(v14, v46, _s7URLDataVMa);
        v54 = 1536;
        sub_2199315A4();
        v37 = v52;
        sub_219BF7834();
        if (!v37)
        {
          HIBYTE(v54) = 1;
          sub_2199315F8(&qword_27CC21140, _s7URLDataVMa, &unk_219CB5A68);
          sub_219BF7834();
        }

        v23 = _s7URLDataVMa;
      }
    }

    else
    {
      v19 = v50;
      v20 = v17;
      if (EnumCaseMultiPayload == 3)
      {
        v21 = v43;
        sub_2199314D8(v14, v43, _s7TagDataVMa);
        v54 = 768;
        sub_2199315A4();
        v22 = v52;
        sub_219BF7834();
        if (!v22)
        {
          HIBYTE(v54) = 1;
          sub_2199315F8(&qword_27CC21148, _s7TagDataVMa, &unk_219CB645C);
          sub_219BF7834();
        }

        v23 = _s7TagDataVMa;
      }

      else
      {
        v21 = v44;
        sub_2199314D8(v14, v44, _s14PuzzleFeedDataVMa);
        v54 = 1024;
        sub_2199315A4();
        v36 = v52;
        sub_219BF7834();
        if (!v36)
        {
          HIBYTE(v54) = 1;
          sub_2199315F8(&qword_27CC21158, _s14PuzzleFeedDataVMa, &unk_219CB6098);
          sub_219BF7834();
        }

        v23 = _s14PuzzleFeedDataVMa;
      }
    }

    v32 = v23;
    v33 = v21;
LABEL_30:
    sub_2199313D0(v33, v32);
    return (*(v53 + 8))(v20, v19);
  }

  v24 = v48;
  if (!EnumCaseMultiPayload)
  {
    sub_2199314D8(v14, v11, _s12HeadlineDataVMa);
    v54 = 0;
    sub_2199315A4();
    v19 = v50;
    v20 = v17;
    v31 = v52;
    sub_219BF7834();
    if (!v31)
    {
      HIBYTE(v54) = 1;
      sub_2199315F8(&qword_27CC21168, _s12HeadlineDataVMa, &unk_219CB58D4);
      sub_219BF7834();
    }

    v32 = _s12HeadlineDataVMa;
    v33 = v11;
    goto LABEL_30;
  }

  v26 = v50;
  if (EnumCaseMultiPayload == 1)
  {
    v25 = v47;
    sub_2199314D8(v14, v47, _s7TagDataVMa);
    v54 = 256;
    sub_2199315A4();
    v27 = v52;
    sub_219BF7834();
    if (!v27)
    {
      HIBYTE(v54) = 1;
      sub_2199315F8(&qword_27CC21148, _s7TagDataVMa, &unk_219CB645C);
      sub_219BF7834();
    }

    v28 = _s7TagDataVMa;
    v29 = v25;
  }

  else
  {
    sub_2199314D8(v14, v48, _s9IssueDataVMa);
    v54 = 512;
    sub_2199315A4();
    v34 = v52;
    sub_219BF7834();
    if (!v34)
    {
      HIBYTE(v54) = 1;
      sub_2199315F8(&qword_27CC21160, _s9IssueDataVMa, &unk_219CB5C30);
      sub_219BF7834();
    }

    v28 = _s9IssueDataVMa;
    v29 = v24;
  }

  sub_2199313D0(v29, v28);
  return (*(v53 + 8))(v17, v26);
}

uint64_t sub_219930754(uint64_t a1)
{
  v2 = sub_219931430();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219930790(uint64_t a1)
{
  v2 = sub_219931430();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2199307E4(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

unint64_t sub_2199308EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_219931814(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21993091C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656E696C64616568;
  v5 = 0xE600000000000000;
  v6 = 0x656C7A7A7570;
  if (v2 != 5)
  {
    v6 = 7107189;
    v5 = 0xE300000000000000;
  }

  v7 = 0xEA0000000000746ELL;
  v8 = 0x65764574726F7073;
  if (v2 != 3)
  {
    v8 = 0x6546656C7A7A7570;
    v7 = 0xEA00000000006465;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 6775156;
  if (v2 != 1)
  {
    v10 = 0x6575737369;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_219930ACC(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v67 = a2;
  v2 = _s7URLDataVMa(0);
  MEMORY[0x28223BE20](v2 - 8);
  v60 = (&v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = _s10PuzzleDataVMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = _s14PuzzleFeedDataVMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = _s9IssueDataVMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v65 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s7TagDataVMa(0);
  MEMORY[0x28223BE20](v10 - 8);
  v57 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (&v56 - v13);
  v15 = _s12HeadlineDataVMa(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s5ModelOMa(0);
  MEMORY[0x28223BE20](v18);
  v64 = (&v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v63 = (&v56 - v21);
  MEMORY[0x28223BE20](v22);
  v62 = (&v56 - v23);
  MEMORY[0x28223BE20](v24);
  v61 = (&v56 - v25);
  MEMORY[0x28223BE20](v26);
  v28 = (&v56 - v27);
  MEMORY[0x28223BE20](v29);
  v31 = (&v56 - v30);
  MEMORY[0x28223BE20](v32);
  v34 = &v56 - v33;
  sub_21993136C(0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v56 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v38 + 56);
  sub_21992F354(v66, v37, _s5ModelOMa);
  sub_21992F354(v67, &v37[v39], _s5ModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v41 = v63;
        sub_21992F354(v37, v63, _s5ModelOMa);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v42 = v59;
          sub_2199314D8(&v37[v39], v59, _s10PuzzleDataVMa);
          v43 = sub_219932434(v41, v42);
          v44 = _s10PuzzleDataVMa;
          goto LABEL_21;
        }

        v54 = _s10PuzzleDataVMa;
      }

      else
      {
        v41 = v64;
        sub_21992F354(v37, v64, _s5ModelOMa);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v42 = v60;
          sub_2199314D8(&v37[v39], v60, _s7URLDataVMa);
          v43 = sub_219BDB8A4();
          v44 = _s7URLDataVMa;
          goto LABEL_21;
        }

        v54 = _s7URLDataVMa;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v41 = v61;
      sub_21992F354(v37, v61, _s5ModelOMa);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v42 = v57;
        sub_2199314D8(&v37[v39], v57, _s7TagDataVMa);
        v43 = sub_219933568(v41, v42);
        v44 = _s7TagDataVMa;
LABEL_21:
        v47 = v37;
        v48 = v44;
        sub_2199313D0(v42, v44);
        v49 = v41;
        goto LABEL_22;
      }

      v54 = _s7TagDataVMa;
    }

    else
    {
      v41 = v62;
      sub_21992F354(v37, v62, _s5ModelOMa);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v42 = v58;
        sub_2199314D8(&v37[v39], v58, _s14PuzzleFeedDataVMa);
        v43 = sub_219931888(v41, v42);
        v44 = _s14PuzzleFeedDataVMa;
        goto LABEL_21;
      }

      v54 = _s14PuzzleFeedDataVMa;
    }

    v50 = v54;
    v51 = v41;
LABEL_30:
    sub_2199313D0(v51, v50);
    v43 = 0;
    v53 = sub_21993136C;
    goto LABEL_31;
  }

  v45 = v65;
  if (!EnumCaseMultiPayload)
  {
    sub_21992F354(v37, v34, _s5ModelOMa);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2199314D8(&v37[v39], v17, _s12HeadlineDataVMa);
      v43 = sub_21992C64C();
      v47 = v37;
      v48 = _s12HeadlineDataVMa;
      sub_2199313D0(v17, _s12HeadlineDataVMa);
      v49 = v34;
      goto LABEL_22;
    }

    v50 = _s12HeadlineDataVMa;
    v51 = v34;
    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_21992F354(v37, v31, _s5ModelOMa);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v50 = _s7TagDataVMa;
      v51 = v31;
      goto LABEL_30;
    }

    v46 = v14;
    sub_2199314D8(&v37[v39], v14, _s7TagDataVMa);
    v43 = sub_219933568(v31, v14);
    v47 = v37;
    v48 = _s7TagDataVMa;
    sub_2199313D0(v46, _s7TagDataVMa);
    v49 = v31;
  }

  else
  {
    sub_21992F354(v37, v28, _s5ModelOMa);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v50 = _s9IssueDataVMa;
      v51 = v28;
      goto LABEL_30;
    }

    sub_2199314D8(&v37[v39], v45, _s9IssueDataVMa);
    v43 = sub_21992E428(v28, v45);
    v47 = v37;
    v48 = _s9IssueDataVMa;
    sub_2199313D0(v45, _s9IssueDataVMa);
    v49 = v28;
  }

LABEL_22:
  v52 = v48;
  v37 = v47;
  sub_2199313D0(v49, v52);
  v53 = _s5ModelOMa;
LABEL_31:
  sub_2199313D0(v37, v53);
  return v43 & 1;
}

void sub_21993136C(uint64_t a1)
{
  if (!qword_27CC210E0)
  {
    _s5ModelOMa(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC210E0);
    }
  }
}

uint64_t sub_2199313D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219931430()
{
  result = qword_27CC210F0;
  if (!qword_27CC210F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC210F0);
  }

  return result;
}

unint64_t sub_219931484()
{
  result = qword_27CC210F8;
  if (!qword_27CC210F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC210F8);
  }

  return result;
}

uint64_t sub_2199314D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_219931540(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219931430();
    v7 = a3(a1, &_s5ModelO10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2199315A4()
{
  result = qword_27CC21138;
  if (!qword_27CC21138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21138);
  }

  return result;
}

uint64_t sub_2199315F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_219931664()
{
  result = qword_27CC21170;
  if (!qword_27CC21170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21170);
  }

  return result;
}

unint64_t sub_2199316BC()
{
  result = qword_27CC21178;
  if (!qword_27CC21178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21178);
  }

  return result;
}

unint64_t sub_219931714()
{
  result = qword_27CC21180;
  if (!qword_27CC21180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21180);
  }

  return result;
}

unint64_t sub_21993176C()
{
  result = qword_27CC21188;
  if (!qword_27CC21188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21188);
  }

  return result;
}

unint64_t sub_2199317C0()
{
  result = qword_27CC21190;
  if (!qword_27CC21190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21190);
  }

  return result;
}

unint64_t sub_219931814(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21993188C(void *a1)
{
  sub_219931E7C(0, &unk_27CC211C8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219931E28();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF77F4();
  if (!v1)
  {
    _s14PuzzleFeedDataVMa(0);
    v9[14] = 1;
    sub_219BDB954();
    sub_2188390BC(&unk_280EE9D40, MEMORY[0x277CC9268]);
    sub_219BF77E4();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_219931A40(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219931E7C(0, &qword_27CC211B0, MEMORY[0x277D844C8]);
  v17 = *(v7 - 8);
  v18 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = _s14PuzzleFeedDataVMa(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219931E28();
  sub_219BF7B34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = v17;
    v20 = 0;
    *v12 = sub_219BF76F4();
    v12[1] = v14;
    sub_219BDB954();
    v19 = 1;
    sub_2188390BC(&unk_280EE9D10, MEMORY[0x277CC9280]);
    sub_219BF76E4();
    (*(v13 + 8))(v9, v18);
    sub_218AB007C(v6, v12 + *(v10 + 20));
    sub_21993222C(v12, v16, _s14PuzzleFeedDataVMa);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_219932294(v12, _s14PuzzleFeedDataVMa);
  }
}

uint64_t sub_219931D38(uint64_t a1)
{
  v2 = sub_219931E28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219931D74(uint64_t a1)
{
  v2 = sub_219931E28();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219931E28()
{
  result = qword_27CC211B8;
  if (!qword_27CC211B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC211B8);
  }

  return result;
}

void sub_219931E7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219931E28();
    v7 = a3(a1, &_s14PuzzleFeedDataV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

BOOL sub_219931EE0(void *a1, void *a2)
{
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193D01B8(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == *a2 || (v15 = sub_219BF78F4(), result = 0, (v15 & 1) != 0))
  {
    v17 = *(_s14PuzzleFeedDataVMa(0) + 20);
    v18 = *(v12 + 48);
    sub_21993222C(a1 + v17, v14, sub_21873F65C);
    sub_21993222C(a2 + v17, &v14[v18], sub_21873F65C);
    v19 = *(v5 + 48);
    if (v19(v14, 1, v4) == 1)
    {
      if (v19(&v14[v18], 1, v4) == 1)
      {
        sub_219932294(v14, sub_21873F65C);
        return 1;
      }
    }

    else
    {
      sub_21993222C(v14, v10, sub_21873F65C);
      if (v19(&v14[v18], 1, v4) != 1)
      {
        (*(v5 + 32))(v7, &v14[v18], v4);
        sub_2188390BC(&qword_280EE9D20, MEMORY[0x277CC9278]);
        v20 = sub_219BF53A4();
        v21 = *(v5 + 8);
        v21(v7, v4);
        v21(v10, v4);
        sub_219932294(v14, sub_21873F65C);
        return (v20 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_219932294(v14, sub_2193D01B8);
    return 0;
  }

  return result;
}

uint64_t sub_21993222C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219932294(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219932308()
{
  result = qword_27CC211D8;
  if (!qword_27CC211D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC211D8);
  }

  return result;
}

unint64_t sub_219932360()
{
  result = qword_27CC211E0;
  if (!qword_27CC211E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC211E0);
  }

  return result;
}

unint64_t sub_2199323B8()
{
  result = qword_27CC211E8;
  if (!qword_27CC211E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC211E8);
  }

  return result;
}

uint64_t sub_219932438(void *a1)
{
  sub_219932A28(0, &unk_27CC21228, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199329D4();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF77F4();
  if (!v1)
  {
    _s10PuzzleDataVMa(0);
    v9[14] = 1;
    sub_219BDB954();
    sub_2188390BC(&unk_280EE9D40, MEMORY[0x277CC9268]);
    sub_219BF77E4();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_2199325EC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219932A28(0, &qword_27CC21210, MEMORY[0x277D844C8]);
  v17 = *(v7 - 8);
  v18 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = _s10PuzzleDataVMa(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199329D4();
  sub_219BF7B34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = v17;
    v20 = 0;
    *v12 = sub_219BF76F4();
    v12[1] = v14;
    sub_219BDB954();
    v19 = 1;
    sub_2188390BC(&unk_280EE9D10, MEMORY[0x277CC9280]);
    sub_219BF76E4();
    (*(v13 + 8))(v9, v18);
    sub_218AB007C(v6, v12 + *(v10 + 20));
    sub_219932DD8(v12, v16, _s10PuzzleDataVMa);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_219932E40(v12, _s10PuzzleDataVMa);
  }
}

uint64_t sub_2199328E4(uint64_t a1)
{
  v2 = sub_2199329D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219932920(uint64_t a1)
{
  v2 = sub_2199329D4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2199329D4()
{
  result = qword_27CC21218;
  if (!qword_27CC21218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21218);
  }

  return result;
}

void sub_219932A28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2199329D4();
    v7 = a3(a1, &_s10PuzzleDataV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

BOOL sub_219932A8C(void *a1, void *a2)
{
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193D01B8(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == *a2 || (v15 = sub_219BF78F4(), result = 0, (v15 & 1) != 0))
  {
    v17 = *(_s10PuzzleDataVMa(0) + 20);
    v18 = *(v12 + 48);
    sub_219932DD8(a1 + v17, v14, sub_21873F65C);
    sub_219932DD8(a2 + v17, &v14[v18], sub_21873F65C);
    v19 = *(v5 + 48);
    if (v19(v14, 1, v4) == 1)
    {
      if (v19(&v14[v18], 1, v4) == 1)
      {
        sub_219932E40(v14, sub_21873F65C);
        return 1;
      }
    }

    else
    {
      sub_219932DD8(v14, v10, sub_21873F65C);
      if (v19(&v14[v18], 1, v4) != 1)
      {
        (*(v5 + 32))(v7, &v14[v18], v4);
        sub_2188390BC(&qword_280EE9D20, MEMORY[0x277CC9278]);
        v20 = sub_219BF53A4();
        v21 = *(v5 + 8);
        v21(v7, v4);
        v21(v10, v4);
        sub_219932E40(v14, sub_21873F65C);
        return (v20 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_219932E40(v14, sub_2193D01B8);
    return 0;
  }

  return result;
}

uint64_t sub_219932DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219932E40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219932EB4()
{
  result = qword_27CC21238;
  if (!qword_27CC21238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21238);
  }

  return result;
}

unint64_t sub_219932F0C()
{
  result = qword_27CC21240;
  if (!qword_27CC21240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21240);
  }

  return result;
}

unint64_t sub_219932F64()
{
  result = qword_27CC21248;
  if (!qword_27CC21248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21248);
  }

  return result;
}

uint64_t sub_21993300C(void *a1)
{
  sub_219933CF8(0, &qword_27CC21270, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219933C3C();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF77F4();
  if (!v1)
  {
    _s7TagDataVMa(0);
    v9[14] = 1;
    sub_219BDB954();
    sub_2188390BC(&unk_280EE9D40, MEMORY[0x277CC9268]);
    sub_219BF77E4();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_2199331C0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219933CF8(0, &qword_27CC21260, MEMORY[0x277D844C8]);
  v17 = *(v7 - 8);
  v18 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = _s7TagDataVMa(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219933C3C();
  sub_219BF7B34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = v17;
    v20 = 0;
    *v12 = sub_219BF76F4();
    v12[1] = v14;
    sub_219BDB954();
    v19 = 1;
    sub_2188390BC(&unk_280EE9D10, MEMORY[0x277CC9280]);
    sub_219BF76E4();
    (*(v13 + 8))(v9, v18);
    sub_218AB007C(v6, v12 + *(v10 + 20));
    sub_219933C90(v12, v16, _s7TagDataVMa);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_218D37C24(v12, _s7TagDataVMa);
  }
}

uint64_t sub_2199334B8(uint64_t a1)
{
  v2 = sub_219933C3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2199334F4(uint64_t a1)
{
  v2 = sub_219933C3C();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_219933568(void *a1, void *a2)
{
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193D01B8(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == *a2 || (v15 = sub_219BF78F4(), result = 0, (v15 & 1) != 0))
  {
    v17 = *(_s7TagDataVMa(0) + 20);
    v18 = *(v12 + 48);
    sub_219933C90(a1 + v17, v14, sub_21873F65C);
    sub_219933C90(a2 + v17, &v14[v18], sub_21873F65C);
    v19 = *(v5 + 48);
    if (v19(v14, 1, v4) == 1)
    {
      if (v19(&v14[v18], 1, v4) == 1)
      {
        sub_218D37C24(v14, sub_21873F65C);
        return 1;
      }
    }

    else
    {
      sub_219933C90(v14, v10, sub_21873F65C);
      if (v19(&v14[v18], 1, v4) != 1)
      {
        (*(v5 + 32))(v7, &v14[v18], v4);
        sub_2188390BC(&qword_280EE9D20, MEMORY[0x277CC9278]);
        v20 = sub_219BF53A4();
        v21 = *(v5 + 8);
        v21(v7, v4);
        v21(v10, v4);
        sub_218D37C24(v14, sub_21873F65C);
        return (v20 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_218D37C24(v14, sub_2193D01B8);
    return 0;
  }

  return result;
}

BOOL sub_2199338B4(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193D01B8(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TagModel();
  if ((static TagModel.== infix(_:_:)(*a1, *a2, v15) & 1) == 0)
  {
    return 0;
  }

  v16 = *(_s3TagVMa(0) + 20);
  v17 = *(v12 + 48);
  sub_219933C90(a1 + v16, v14, sub_21873F65C);
  sub_219933C90(a2 + v16, &v14[v17], sub_21873F65C);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v17], 1, v4) == 1)
    {
      sub_218D37C24(v14, sub_21873F65C);
      return 1;
    }

    goto LABEL_7;
  }

  sub_219933C90(v14, v10, sub_21873F65C);
  if (v18(&v14[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_218D37C24(v14, sub_2193D01B8);
    return 0;
  }

  (*(v5 + 32))(v7, &v14[v17], v4);
  sub_2188390BC(&qword_280EE9D20, MEMORY[0x277CC9278]);
  v20 = sub_219BF53A4();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  sub_218D37C24(v14, sub_21873F65C);
  return (v20 & 1) != 0;
}

unint64_t sub_219933C3C()
{
  result = qword_27CC21268;
  if (!qword_27CC21268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21268);
  }

  return result;
}

uint64_t sub_219933C90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_219933CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219933C3C();
    v7 = a3(a1, &_s7TagDataV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219933D70()
{
  result = qword_27CC21278;
  if (!qword_27CC21278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21278);
  }

  return result;
}

unint64_t sub_219933DC8()
{
  result = qword_27CC21280;
  if (!qword_27CC21280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21280);
  }

  return result;
}

unint64_t sub_219933E20()
{
  result = qword_27CC21288;
  if (!qword_27CC21288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21288);
  }

  return result;
}

uint64_t sub_219933E74@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v28 = _s10PuzzleFeedVMa(0);
  MEMORY[0x28223BE20](v28);
  v29 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = _s6PuzzleVMa(0);
  MEMORY[0x28223BE20](v26);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s11SportsEventVMa(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s5IssueVMa(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s3TagVMa(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s8HeadlineVMa(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s13ResolvedModelOMa(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199343D0(v30, v17, _s13ResolvedModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v21 = v17;
        v17 = v29;
        sub_219934438(v21, v29, _s10PuzzleFeedVMa);
        sub_2199343D0(&v17[*(v28 + 20)], v31, sub_21873F65C);
        v22 = _s10PuzzleFeedVMa;
      }

      else
      {
        v24 = sub_219BDB954();
        (*(*(v24 - 8) + 56))(v31, 1, 1, v24);
        v22 = _s13ResolvedModelOMa;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_219934438(v17, v5, _s11SportsEventVMa);
        sub_2199343D0(&v5[*(v3 + 20)], v31, sub_21873F65C);
        v19 = _s11SportsEventVMa;
        v20 = v5;
        return sub_219935058(v20, v19);
      }

      v23 = v17;
      v17 = v27;
      sub_219934438(v23, v27, _s6PuzzleVMa);
      sub_2199343D0(&v17[*(v26 + 24)], v31, sub_21873F65C);
      v22 = _s6PuzzleVMa;
    }

    v19 = v22;
    v20 = v17;
    return sub_219935058(v20, v19);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_219934438(v17, v11, _s3TagVMa);
      sub_2199343D0(&v11[*(v9 + 20)], v31, sub_21873F65C);
      v19 = _s3TagVMa;
      v20 = v11;
    }

    else
    {
      sub_219934438(v17, v8, _s5IssueVMa);
      sub_2199343D0(&v8[*(v6 + 20)], v31, sub_21873F65C);
      v19 = _s5IssueVMa;
      v20 = v8;
    }
  }

  else
  {
    sub_219934438(v17, v14, _s8HeadlineVMa);
    sub_2199343D0(&v14[*(v12 + 20)], v31, sub_21873F65C);
    v19 = _s8HeadlineVMa;
    v20 = v14;
  }

  return sub_219935058(v20, v19);
}

uint64_t sub_2199343D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219934438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2199344A0(uint64_t a1, uint64_t a2)
{
  v97 = a1;
  v98 = a2;
  v2 = sub_219BDB954();
  v91 = *(v2 - 8);
  v92 = v2;
  MEMORY[0x28223BE20](v2);
  v87 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s10PuzzleFeedVMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v90 = (&v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = _s6PuzzleVMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v89 = (&v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = _s11SportsEventVMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v88 = (&v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = _s5IssueVMa(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = _s3TagVMa(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = _s8HeadlineVMa(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = _s13ResolvedModelOMa(0);
  MEMORY[0x28223BE20](v19);
  v93 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v96 = (&v87 - v22);
  MEMORY[0x28223BE20](v23);
  v95 = (&v87 - v24);
  MEMORY[0x28223BE20](v25);
  v94 = (&v87 - v26);
  MEMORY[0x28223BE20](v27);
  v29 = (&v87 - v28);
  MEMORY[0x28223BE20](v30);
  v32 = (&v87 - v31);
  MEMORY[0x28223BE20](v33);
  v35 = (&v87 - v34);
  sub_219934FF4(0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v87 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v39 + 56);
  sub_2199343D0(v97, v38, _s13ResolvedModelOMa);
  sub_2199343D0(v98, &v38[v40], _s13ResolvedModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_2199343D0(v38, v32, _s13ResolvedModelOMa);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_219935058(v32, _s3TagVMa);
          goto LABEL_36;
        }

        sub_219934438(&v38[v40], v15, _s3TagVMa);
        LOBYTE(v40) = sub_2199338B4(v32, v15);
        sub_219935058(v15, _s3TagVMa);
        v54 = v32;
        v55 = _s3TagVMa;
LABEL_39:
        sub_219935058(v54, v55);
        goto LABEL_44;
      }

      sub_2199343D0(v38, v29, _s13ResolvedModelOMa);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_219935058(v29, _s5IssueVMa);
        goto LABEL_36;
      }

      sub_219934438(&v38[v40], v12, _s5IssueVMa);
      LOBYTE(v40) = sub_21992E774(v29, v12);
      v67 = _s5IssueVMa;
      sub_219935058(v12, _s5IssueVMa);
      v54 = v29;
    }

    else
    {
      sub_2199343D0(v38, v35, _s13ResolvedModelOMa);
      if (swift_getEnumCaseMultiPayload())
      {
        v66 = _s8HeadlineVMa;
        goto LABEL_34;
      }

      sub_219934438(&v38[v40], v18, _s8HeadlineVMa);
      LOBYTE(v40) = sub_21992CCDC(v35, v18);
      v67 = _s8HeadlineVMa;
      sub_219935058(v18, _s8HeadlineVMa);
      v54 = v35;
    }

    v55 = v67;
    goto LABEL_39;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      v76 = v93;
      sub_2199343D0(v38, v93, _s13ResolvedModelOMa);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v78 = v91;
        v77 = v92;
        v79 = v87;
        (*(v91 + 32))(v87, &v38[v40], v92);
        LOBYTE(v40) = sub_219BDB8A4();
        v80 = *(v78 + 8);
        v80(v79, v77);
        v80(v76, v77);
        goto LABEL_44;
      }

      (*(v91 + 8))(v76, v92);
      goto LABEL_36;
    }

    v35 = v96;
    sub_2199343D0(v38, v96, _s13ResolvedModelOMa);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v56 = v90;
      sub_219934438(&v38[v40], v90, _s10PuzzleFeedVMa);
      v57 = [*v35 identifier];
      v58 = sub_219BF5414();
      v60 = v59;

      v61 = [*v56 identifier];
      v62 = sub_219BF5414();
      v64 = v63;

      if (v58 == v62 && v60 == v64)
      {

        v65 = _s10PuzzleFeedVMa;
LABEL_25:
        v52 = v65;
        sub_219935058(v56, v65);
        v53 = v35;
LABEL_26:
        sub_219935058(v53, v52);
        LOBYTE(v40) = 1;
LABEL_44:
        v81 = _s13ResolvedModelOMa;
        goto LABEL_45;
      }

      v83 = sub_219BF78F4();

      v84 = _s10PuzzleFeedVMa;
LABEL_43:
      v85 = v84;
      sub_219935058(v56, v84);
      sub_219935058(v35, v85);
      LODWORD(v40) = v83 << 31 >> 31;
      goto LABEL_44;
    }

    v66 = _s10PuzzleFeedVMa;
LABEL_34:
    sub_219935058(v35, v66);
    goto LABEL_36;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v35 = v95;
    sub_2199343D0(v38, v95, _s13ResolvedModelOMa);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v56 = v89;
      sub_219934438(&v38[v40], v89, _s6PuzzleVMa);
      v68 = [*v35 identifier];
      v69 = sub_219BF5414();
      v71 = v70;

      v72 = [*v56 identifier];
      v73 = sub_219BF5414();
      v75 = v74;

      if (v69 == v73 && v71 == v75)
      {

        v65 = _s6PuzzleVMa;
        goto LABEL_25;
      }

      v83 = sub_219BF78F4();

      v84 = _s6PuzzleVMa;
      goto LABEL_43;
    }

    v66 = _s6PuzzleVMa;
    goto LABEL_34;
  }

  v42 = v94;
  sub_2199343D0(v38, v94, _s13ResolvedModelOMa);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v43 = v88;
    sub_219934438(&v38[v40], v88, _s11SportsEventVMa);
    v44 = [*v42 identifier];
    v45 = sub_219BF5414();
    v47 = v46;

    v48 = [*v43 identifier];
    v49 = sub_219BF5414();
    v51 = v50;

    if (v45 != v49 || v47 != v51)
    {
      v82 = sub_219BF78F4();

      sub_219935058(v43, _s11SportsEventVMa);
      sub_219935058(v42, _s11SportsEventVMa);
      LODWORD(v40) = v82 << 31 >> 31;
      goto LABEL_44;
    }

    v52 = _s11SportsEventVMa;
    sub_219935058(v43, _s11SportsEventVMa);
    v53 = v42;
    goto LABEL_26;
  }

  sub_219935058(v42, _s11SportsEventVMa);
LABEL_36:
  LOBYTE(v40) = 0;
  v81 = sub_219934FF4;
LABEL_45:
  sub_219935058(v38, v81);
  return v40 & 1;
}

void sub_219934FF4(uint64_t a1)
{
  if (!qword_27CC21290)
  {
    _s13ResolvedModelOMa(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC21290);
    }
  }
}

uint64_t sub_219935058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2199350CC()
{
  result = qword_27CC21298;
  if (!qword_27CC21298)
  {
    sub_219935124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21298);
  }

  return result;
}

void sub_219935124()
{
  if (!qword_27CC212A0)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC212A0);
    }
  }
}

uint64_t sub_219935174()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_2199351CC(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

void sub_219935220(BOOL *a2@<X8>)
{
  v3 = sub_219BF7614();

  *a2 = v3 != 0;
}

unint64_t sub_219935338()
{
  result = qword_27CC212A8;
  if (!qword_27CC212A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC212A8);
  }

  return result;
}

uint64_t sub_21993538C@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_219BF5474();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E5DAC(0, &qword_27CC0BE20, type metadata accessor for CuratedShortcut);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  sub_219BF5464();
  v11 = sub_219BF5424();
  v13 = v12;

  (*(v5 + 8))(v7, v4);
  sub_21993634C();
  v23[3] = v14;
  v23[0] = v11;
  v23[1] = v13;
  sub_219936E2C(v23, v10);
  __swift_destroy_boxed_opaque_existential_1(v23);
  v15 = type metadata accessor for CuratedShortcut(0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_2187BCA7C(v10, &qword_27CC0BE20, type metadata accessor for CuratedShortcut);
    if (qword_280EE5F18 != -1)
    {
      swift_once();
    }

    v17 = sub_219BE5434();
    __swift_project_value_buffer(v17, qword_280F62538);
    v18 = sub_219BE5414();
    v19 = sub_219BF61F4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2186C1000, v18, v19, "Unable to create a shortcut from raw string data value", v20, 2u);
      MEMORY[0x21CECF960](v20, -1, -1);
    }

    v21 = 1;
  }

  else
  {
    sub_2199379E4(v10, a3, type metadata accessor for CuratedShortcut);
    v21 = 0;
  }

  return (*(v16 + 56))(a3, v21, 1, v15);
}

uint64_t sub_21993568C@<X0>(void *a1@<X8>)
{
  v109 = a1;
  v1 = _s7URLDataVMa(0);
  MEMORY[0x28223BE20](v1 - 8);
  v102 = &v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = _s14PuzzleFeedDataVMa(0);
  MEMORY[0x28223BE20](v101);
  v104 = (&v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = _s10PuzzleDataVMa(0);
  MEMORY[0x28223BE20](v99);
  v103 = (&v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = _s7TagDataVMa(0);
  MEMORY[0x28223BE20](v105);
  v100 = (&v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v108 = (&v92 - v7);
  v107 = _s9IssueDataVMa(0);
  MEMORY[0x28223BE20](v107);
  v106 = (&v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186E5DAC(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v9 - 8);
  v98 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v97 = &v92 - v12;
  MEMORY[0x28223BE20](v13);
  v96 = &v92 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v92 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v92 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v92 - v22;
  v112 = sub_219BDB954();
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v95 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v94 = &v92 - v26;
  MEMORY[0x28223BE20](v27);
  v93 = &v92 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v92 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v92 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v92 - v36;
  v38 = _s12HeadlineDataVMa(0);
  MEMORY[0x28223BE20](v38);
  v40 = (&v92 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = _s5ModelOMa(0);
  MEMORY[0x28223BE20](v41);
  v43 = &v92 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for CuratedShortcut(0);
  sub_219937A4C(v111 + *(v44 + 20), v43, _s5ModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v53 = v107;
    if (EnumCaseMultiPayload)
    {
      v54 = v112;
      v55 = v110;
      if (EnumCaseMultiPayload == 1)
      {
        v56 = v108;
        sub_2199379E4(v43, v108, _s7TagDataVMa);
        sub_2188383F8(v56 + *(v105 + 20), v17);
        if ((*(v55 + 48))(v17, 1, v54) == 1)
        {
          sub_2187BCA7C(v17, &unk_280EE9D00, MEMORY[0x277CC9260]);
          v58 = *v56;
          v57 = v56[1];

          sub_219937AB4(v56, _s7TagDataVMa);
          v59 = v109;
          *v109 = v58;
          v59[1] = v57;
          type metadata accessor for CuratedShortcut.Identifier(0);
          return swift_storeEnumTagMultiPayload();
        }

        sub_219937AB4(v56, _s7TagDataVMa);
        v85 = *(v55 + 32);
        v85(v31, v17, v54);
        v85(v109, v31, v54);
      }

      else
      {
        v74 = v106;
        sub_2199379E4(v43, v106, _s9IssueDataVMa);
        sub_2188383F8(v74 + *(v53 + 20), v20);
        if ((*(v55 + 48))(v20, 1, v54) == 1)
        {
          sub_2187BCA7C(v20, &unk_280EE9D00, MEMORY[0x277CC9260]);
          v76 = *v74;
          v75 = v74[1];

          sub_219937AB4(v74, _s9IssueDataVMa);
          v77 = v109;
          *v109 = v76;
          v77[1] = v75;
          type metadata accessor for CuratedShortcut.Identifier(0);
          return swift_storeEnumTagMultiPayload();
        }

        sub_219937AB4(v74, _s9IssueDataVMa);
        v86 = *(v55 + 32);
        v86(v34, v20, v54);
        v86(v109, v34, v54);
      }
    }

    else
    {
      sub_2199379E4(v43, v40, _s12HeadlineDataVMa);
      v67 = v23;
      sub_2188383F8(v40 + *(v38 + 20), v23);
      v68 = v110;
      v69 = v23;
      v70 = v112;
      if ((*(v110 + 48))(v69, 1, v112) == 1)
      {
        sub_2187BCA7C(v67, &unk_280EE9D00, MEMORY[0x277CC9260]);
        v72 = *v40;
        v71 = v40[1];

        sub_219937AB4(v40, _s12HeadlineDataVMa);
        v73 = v109;
        *v109 = v72;
        v73[1] = v71;
        type metadata accessor for CuratedShortcut.Identifier(0);
        return swift_storeEnumTagMultiPayload();
      }

      sub_219937AB4(v40, _s12HeadlineDataVMa);
      v84 = *(v68 + 32);
      v84(v37, v67, v70);
      v84(v109, v37, v70);
    }

LABEL_27:
    type metadata accessor for CuratedShortcut.Identifier(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload > 4)
  {
    v60 = v112;
    v61 = v110;
    if (EnumCaseMultiPayload != 5)
    {
      v83 = v102;
      sub_2199379E4(v43, v102, _s7URLDataVMa);
      (*(v61 + 32))(v109, v83, v60);
      type metadata accessor for CuratedShortcut.Identifier(0);
      return swift_storeEnumTagMultiPayload();
    }

    v62 = v103;
    sub_2199379E4(v43, v103, _s10PuzzleDataVMa);
    v63 = v96;
    sub_2188383F8(v62 + *(v99 + 20), v96);
    if ((*(v61 + 48))(v63, 1, v60) == 1)
    {
      sub_2187BCA7C(v63, &unk_280EE9D00, MEMORY[0x277CC9260]);
      v65 = *v62;
      v64 = v62[1];

      sub_219937AB4(v62, _s10PuzzleDataVMa);
      v66 = v109;
      *v109 = v65;
      v66[1] = v64;
      type metadata accessor for CuratedShortcut.Identifier(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_219937AB4(v62, _s10PuzzleDataVMa);
    v89 = *(v61 + 32);
    v90 = v93;
    v89(v93, v63, v60);
    v89(v109, v90, v60);
    goto LABEL_27;
  }

  v46 = v112;
  v47 = v110;
  if (EnumCaseMultiPayload != 3)
  {
    v78 = v104;
    sub_2199379E4(v43, v104, _s14PuzzleFeedDataVMa);
    v79 = v97;
    sub_2188383F8(v78 + *(v101 + 20), v97);
    if ((*(v47 + 48))(v79, 1, v46) == 1)
    {
      sub_2187BCA7C(v79, &unk_280EE9D00, MEMORY[0x277CC9260]);
      v81 = *v78;
      v80 = v78[1];

      sub_219937AB4(v78, _s14PuzzleFeedDataVMa);
      v82 = v109;
      *v109 = v81;
      v82[1] = v80;
      type metadata accessor for CuratedShortcut.Identifier(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_219937AB4(v78, _s14PuzzleFeedDataVMa);
    v87 = *(v47 + 32);
    v88 = v94;
    v87(v94, v79, v46);
    goto LABEL_26;
  }

  v48 = v100;
  sub_2199379E4(v43, v100, _s7TagDataVMa);
  v49 = v98;
  sub_2188383F8(v48 + *(v105 + 20), v98);
  if ((*(v47 + 48))(v49, 1, v46) != 1)
  {
    sub_219937AB4(v48, _s7TagDataVMa);
    v87 = *(v47 + 32);
    v88 = v95;
    v87(v95, v49, v46);
LABEL_26:
    v87(v109, v88, v46);
    goto LABEL_27;
  }

  sub_2187BCA7C(v49, &unk_280EE9D00, MEMORY[0x277CC9260]);
  v51 = *v48;
  v50 = v48[1];

  sub_219937AB4(v48, _s7TagDataVMa);
  v52 = v109;
  *v109 = v51;
  v52[1] = v50;
  type metadata accessor for CuratedShortcut.Identifier(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_21993634C()
{
  if (!qword_280EE9CC8)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE9CC8);
    }
  }
}

uint64_t sub_21993639C()
{
  v1 = v0;
  v2 = sub_219BDB954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CuratedShortcut.Identifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219937A4C(v1, v8, type metadata accessor for CuratedShortcut.Identifier);
  if (swift_getEnumCaseMultiPayload() <= 5)
  {
    return *v8;
  }

  (*(v3 + 32))(v5, v8, v2);
  v10 = sub_219BDB804();
  (*(v3 + 8))(v5, v2);
  return v10;
}

void sub_219936540(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  sub_2186E5DAC(0, &qword_280EE68E0, MEMORY[0x277D6CF38]);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v55 = &v44 - v6;
  v7 = sub_219BE3184();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = &v44 - v10;
  v58 = _s5ModelOMa(0);
  MEMORY[0x28223BE20](v58);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219937B14(0, &qword_27CC212E0, MEMORY[0x277D844C8]);
  v14 = v13;
  v59 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  v17 = type metadata accessor for CuratedShortcut(0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219937948();
  v20 = v60;
  sub_219BF7B34();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v50 = v17;
    v21 = a1;
    v60 = v19;
    LOBYTE(v62) = 0;
    v22 = v16;
    v23 = sub_219BF76F4();
    v24 = v60;
    *v60 = v23;
    v24[1] = v25;
    v49 = v25;
    LOBYTE(v62) = 1;
    sub_21993799C(&qword_27CC212F0, _s5ModelOMa, &unk_219CB5DEC);
    sub_219BF7734();
    v26 = v50;
    sub_2199379E4(v12, v24 + v50[5], _s5ModelOMa);
    sub_2199378F0();
    v61 = 2;
    sub_219937B78(&qword_27CC212F8, MEMORY[0x277D849D8], MEMORY[0x277D83B70]);
    v27 = v14;
    v58 = 0;
    sub_219BF76E4();
    v28 = v62;
    v29 = MEMORY[0x277D84FA0];
    if (!v62)
    {
      v28 = MEMORY[0x277D84FA0];
    }

    *(v24 + v26[6]) = v28;
    v61 = 3;
    sub_219BF76E4();
    v30 = v62;
    if (!v62)
    {
      v30 = v29;
    }

    *(v24 + v26[7]) = v30;
    LOBYTE(v62) = 4;
    sub_21993799C(&qword_280EE68E8, MEMORY[0x277D6CF38], MEMORY[0x277D6CF50]);
    v31 = v55;
    v32 = v57;
    sub_219BF76E4();
    v47 = v22;
    v48 = v27;
    v33 = v56;
    v34 = *(v56 + 48);
    v46 = v56 + 48;
    v35 = v34(v31, 1, v32);
    v45 = v34;
    if (v35 == 1)
    {
      v36 = v53;
      sub_219BE3174();
      if (v34(v31, 1, v32) != 1)
      {
        sub_2187BCA7C(v31, &qword_280EE68E0, MEMORY[0x277D6CF38]);
      }
    }

    else
    {
      v36 = v53;
      (*(v33 + 32))(v53, v31, v32);
    }

    v37 = *(v33 + 32);
    v37(v60 + v50[8], v36, v32);
    LOBYTE(v62) = 5;
    v38 = v54;
    sub_219BF76E4();
    v39 = v45;
    if (v45(v38, 1, v32) == 1)
    {
      v40 = v51;
      sub_219BE3164();
      (*(v59 + 8))(v47, v48);
      v41 = v39(v38, 1, v32);
      v42 = v52;
      if (v41 != 1)
      {
        sub_2187BCA7C(v38, &qword_280EE68E0, MEMORY[0x277D6CF38]);
      }
    }

    else
    {
      (*(v59 + 8))(v47, v48);
      v40 = v51;
      v37(v51, v38, v32);
      v42 = v52;
    }

    v43 = v60;
    v37(v60 + v50[9], v40, v32);
    sub_219937A4C(v43, v42, type metadata accessor for CuratedShortcut);
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_219937AB4(v43, type metadata accessor for CuratedShortcut);
  }
}

uint64_t sub_219936E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2186E5DAC(0, &qword_27CC0BE20, type metadata accessor for CuratedShortcut);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  sub_2186D1230(a1, v16);
  if (swift_dynamicCast())
  {
    v11 = v15[2];
    v10 = v15[3];
    sub_219BDAFF4();
    swift_allocObject();
    sub_219BDAFE4();
    v12 = type metadata accessor for CuratedShortcut(0);
    sub_21993799C(&qword_27CC20930, type metadata accessor for CuratedShortcut, &unk_219CB67D4);
    sub_219BDAFC4();
    sub_2186C6190(v11, v10);

    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
    sub_2199376D8(v6, v9);
    return sub_2199376D8(v9, a2);
  }

  else
  {
    v13 = type metadata accessor for CuratedShortcut(0);
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

uint64_t sub_2199371F8(void *a1, __n128 a2)
{
  v4 = v2;
  sub_219937B14(0, &qword_27CC21300, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219937948();
  sub_219BF7B44();
  LOBYTE(v15) = 0;
  sub_219BF77F4();
  if (!v3)
  {
    v11 = type metadata accessor for CuratedShortcut(0);
    LOBYTE(v15) = 1;
    _s5ModelOMa(0);
    sub_21993799C(&qword_27CC21308, _s5ModelOMa, &unk_219CB5DC4);
    sub_219BF7834();
    v15 = *(v4 + *(v11 + 24));
    v14 = 2;
    sub_2199378F0();
    sub_219937B78(&qword_27CC21310, MEMORY[0x277D849B0], MEMORY[0x277D83B50]);
    sub_219BF7834();
    v15 = *(v4 + *(v11 + 28));
    v14 = 3;
    sub_219BF7834();
    LOBYTE(v15) = 4;
    sub_219BE3184();
    sub_21993799C(&qword_280EE68F8, MEMORY[0x277D6CF38], MEMORY[0x277D6CF40]);
    sub_219BF7834();
    LOBYTE(v15) = 5;
    sub_219BF7834();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_219937528()
{
  v1 = *v0;
  v2 = 0x79726F6765746163;
  v3 = 0xD000000000000014;
  v4 = 0x567377654E6E696DLL;
  if (v1 != 4)
  {
    v4 = 0x567377654E78616DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C65646F6DLL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_219937604@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_219937DCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21993762C(uint64_t a1)
{
  v2 = sub_219937948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219937668(uint64_t a1)
{
  v2 = sub_219937948();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2199376D8(uint64_t a1, uint64_t a2)
{
  sub_2186E5DAC(0, &qword_27CC0BE20, type metadata accessor for CuratedShortcut);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219937758(uint64_t a1)
{
  sub_2186EAF08();
  if (v1 <= 0x3F)
  {
    sub_2199377D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2199377D4()
{
  if (!qword_27CC212C0)
  {
    v0 = sub_219BDB954();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC212C0);
    }
  }
}

void sub_219937844(uint64_t a1)
{
  _s5ModelOMa(319);
  if (v1 <= 0x3F)
  {
    sub_2199378F0();
    if (v2 <= 0x3F)
    {
      sub_219BE3184();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2199378F0()
{
  if (!qword_27CC212D8)
  {
    v0 = sub_219BF5DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC212D8);
    }
  }
}

unint64_t sub_219937948()
{
  result = qword_27CC212E8;
  if (!qword_27CC212E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC212E8);
  }

  return result;
}

uint64_t sub_21993799C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2199379E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219937A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219937AB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219937B14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219937948();
    v7 = a3(a1, &type metadata for CuratedShortcut.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219937B78(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2199378F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219937BD8(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for CuratedShortcut(0);
  if ((sub_219930750() & 1) == 0 || (sub_21947B910(*(a1 + *(v5 + 24)), *(a2 + *(v5 + 24))) & 1) == 0 || (sub_21947B910(*(a1 + *(v5 + 28)), *(a2 + *(v5 + 28))) & 1) == 0 || (sub_219BE3154() & 1) == 0)
  {
    return 0;
  }

  return sub_219BE3154();
}

unint64_t sub_219937CC8()
{
  result = qword_27CC21318;
  if (!qword_27CC21318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21318);
  }

  return result;
}

unint64_t sub_219937D20()
{
  result = qword_27CC21320;
  if (!qword_27CC21320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21320);
  }

  return result;
}

unint64_t sub_219937D78()
{
  result = qword_27CC21328;
  if (!qword_27CC21328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21328);
  }

  return result;
}

uint64_t sub_219937DCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xEA00000000006449;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219D3ECE0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219D3ED00 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x567377654E6E696DLL && a2 == 0xEE006E6F69737265 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x567377654E78616DLL && a2 == 0xEE006E6F69737265)
  {

    return 5;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_21993800C(void *a1, void *a2, uint64_t a3)
{
  if (!_s7NewsUI216ShortcutCategoryV2eeoiySbAC_ACtFZ_0(a1, a2) || (sub_2199343CC(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_219BF78F4();
}

uint64_t sub_2199380A8()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocClassInstance();
}

BOOL sub_21993811C()
{
  v1 = *v0;
  result = 1;
  if ([*(v1 + 32) useOfflineMode])
  {
    __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
    if (sub_219BEED44())
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_219938188()
{
  sub_21896FA3C(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v23 - v6;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = sub_219BDFA44();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v28 = v9;
  sub_2187B14CC(v29, &v24, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v25)
  {
    sub_21875F93C(&v24, v26);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v12 = qword_280ED32D8;
    v11 = qword_280ED32E0;
    v13 = qword_280ED32E8;

    sub_2188202A8(v11);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_2187448D0(&v24, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v12 = qword_280ED32D8;
    v11 = qword_280ED32E0;
    v13 = qword_280ED32E8;

    sub_2188202A8(v11);
  }

  v23[2] = 0xF000000000000050;
  v25 = sub_219BDD274();
  *&v24 = v8;
  sub_2189B4E2C(v7, v4);
  sub_2187B14CC(v31, v26, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v14 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v15 = (v3 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v23[0] = v7;
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  sub_2189B4EAC(v4, v17 + v14);
  v18 = v17 + v15;
  v19 = v26[1];
  *v18 = v26[0];
  *(v18 + 16) = v19;
  *(v18 + 32) = v27;
  v20 = (v17 + v16);
  v21 = (v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v20 = 0;
  v20[1] = 0;
  *v21 = v12;
  v21[1] = v11;
  v21[2] = v13;
  swift_retain_n();

  sub_2188202A8(v11);
  sub_2186CF94C(0);
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v11, v13);
  sub_2187448D0(v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v31, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v23[0]);
  return sub_2187448D0(&v24, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
}

uint64_t sub_219938704@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21993873C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, void))
{
  v7 = v6;
  v377 = a6;
  v378 = a5;
  v379 = a4;
  v335 = a3;
  v380 = a2;
  v360 = a1;
  v338 = sub_219BE4B84();
  v337 = *(v338 - 8);
  MEMORY[0x28223BE20](v338);
  v334 = &v325 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v333 = v8;
  MEMORY[0x28223BE20](v9);
  v336 = &v325 - v10;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v11 - 8);
  v331 = &v325 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = sub_219BDE294();
  v330 = *(v332 - 8);
  MEMORY[0x28223BE20](v332);
  v328 = &v325 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v329 = sub_219BDEE04();
  v327 = *(v329 - 8);
  MEMORY[0x28223BE20](v329);
  v326 = &v325 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v342 = sub_219BE4B14();
  v341 = *(v342 - 8);
  MEMORY[0x28223BE20](v342);
  v340 = &v325 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = sub_219BF1414();
  v339 = *(v362 - 8);
  MEMORY[0x28223BE20](v362);
  v361 = &v325 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B24A8C(0);
  MEMORY[0x28223BE20](v17 - 8);
  v363 = &v325 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v350 = sub_219BE4B54();
  v349 = *(v350 - 8);
  MEMORY[0x28223BE20](v350);
  v348 = &v325 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v358 = sub_219BE4C84();
  v357 = *(v358 - 8);
  MEMORY[0x28223BE20](v358);
  v356 = &v325 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v376 = sub_219BE89F4();
  v359 = *(v376 - 8);
  MEMORY[0x28223BE20](v376);
  v375 = &v325 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21993BD30(0);
  MEMORY[0x28223BE20](v22 - 8);
  v373 = &v325 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v370 = &v325 - v25;
  v346 = sub_219BED214();
  v345 = *(v346 - 8);
  MEMORY[0x28223BE20](v346);
  v343 = &v325 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v344 = &v325 - v28;
  v368 = sub_219BE4AD4();
  v367 = *(v368 - 8);
  MEMORY[0x28223BE20](v368);
  v366 = &v325 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BE4C24();
  v31 = *(v30 - 8);
  v388 = v30;
  v389 = v31;
  MEMORY[0x28223BE20](v30);
  v386 = &v325 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v387 = v32;
  MEMORY[0x28223BE20](v33);
  v385 = &v325 - v34;
  v351 = sub_219BE4A94();
  v355 = *(v351 - 8);
  MEMORY[0x28223BE20](v351);
  v354 = &v325 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v353 = sub_219BE49F4();
  v352 = *(v353 - 8);
  MEMORY[0x28223BE20](v353);
  v37 = &v325 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v365 = sub_219BE4A04();
  v364 = *(v365 - 8);
  MEMORY[0x28223BE20](v365);
  v347 = &v325 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = &v325 - v40;
  v372 = sub_219BE4C44();
  v371 = *(v372 - 8);
  MEMORY[0x28223BE20](v372);
  v369 = &v325 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_219BE49D4();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = &v325 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v47 = qword_280F61728;
  v48 = sub_219BF6214();
  sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v382 = v49;
  v50 = swift_allocObject();
  v383 = xmmword_219C09BA0;
  *(v50 + 16) = xmmword_219C09BA0;
  v390 = 0;
  v391 = 0xE000000000000000;
  sub_219BF7484();
  v374 = v7;
  v51 = v390;
  v52 = v391;
  *(v50 + 56) = MEMORY[0x277D837D0];
  v384 = sub_2186FC3BC();
  *(v50 + 64) = v384;
  *(v50 + 32) = v51;
  *(v50 + 40) = v52;
  v53 = v374;
  v381 = v47;
  sub_219BE5314("Running task %{public}@", 23, 2, &dword_2186C1000, v47, v48, v50);

  (*(v44 + 16))(v46, v53, v43);
  v54 = (*(v44 + 88))(v46, v43);
  if (v54 == *MEMORY[0x277D348B8])
  {
    (*(v44 + 96))(v46, v43);
    v55 = v371;
    v56 = v369;
    v57 = v372;
    (*(v371 + 32))(v369, v46, v372);
    sub_219BE4C34();
    v58 = v364;
    v59 = v365;
    v60 = (*(v364 + 88))(v41, v365);
    if (v60 == *MEMORY[0x277D348C8])
    {
      (*(v58 + 96))(v41, v59);
      v61 = v352;
      v62 = v353;
      (*(v352 + 32))(v37, v41, v353);
      v63 = sub_219BF6214();
      v64 = swift_allocObject();
      *(v64 + 16) = v383;
      v390 = 0;
      v391 = 0xE000000000000000;
      sub_219BF7484();
      v65 = v390;
      v66 = v391;
      v67 = v384;
      *(v64 + 56) = MEMORY[0x277D837D0];
      *(v64 + 64) = v67;
      *(v64 + 32) = v65;
      *(v64 + 40) = v66;
      sub_219BE5314("Found screens scroll task with screens %{public}@", 49, 2, &dword_2186C1000, v381, v63, v64);

      v68 = sub_219BE49E4();
      v69 = sub_21993BD64(v360, v380, v68, 1);
      (*(v61 + 8))(v37, v62);
LABEL_61:
      (*(v55 + 8))(v56, v57);
      return v69;
    }

    if (v60 == *MEMORY[0x277D348D0])
    {
      (*(v58 + 96))(v41, v59);
      v94 = v351;
      (*(v355 + 32))(v354, v41, v351);
      v95 = sub_219BF6214();
      v96 = swift_allocObject();
      *(v96 + 16) = v383;
      v390 = 0;
      v391 = 0xE000000000000000;
      sub_219BF7484();
      v97 = v390;
      v98 = v391;
      v99 = v384;
      *(v96 + 56) = MEMORY[0x277D837D0];
      *(v96 + 64) = v99;
      *(v96 + 32) = v97;
      *(v96 + 40) = v98;
      sub_219BE5314("Found headlines scroll task with headlines %{public}@", 53, 2, &dword_2186C1000, v381, v95, v96);

      v100 = sub_219BE4A84();
      v101 = sub_219BE4A74();
      if (v101)
      {
        v102 = *(v101 + 16);
        if (v102)
        {
          v379 = v100;
          v390 = MEMORY[0x277D84F90];
          v103 = v101;
          sub_218C35FF8(0, v102, 0);
          v104 = v390;
          v384 = *(v389 + 2);
          v105 = v389[80];
          v378 = v103;
          v106 = v103 + ((v105 + 32) & ~v105);
          v382 = *(v389 + 9);
          *&v383 = v105;
          v381 = (v105 + 16) & ~v105;
          v107 = (v389 + 32);
          v389 += 16;
          v108 = (v389 - 8);
          do
          {
            v109 = v384;
            v110 = v385;
            v111 = v388;
            v384(v385, v106, v388);
            v112 = v386;
            v109(v386, v110, v111);
            v113 = v381;
            v114 = swift_allocObject();
            (*v107)(v114 + v113, v112, v111);
            v115 = swift_allocObject();
            *(v115 + 16) = sub_2199408B8;
            *(v115 + 24) = v114;
            (*v108)(v110, v111);
            v390 = v104;
            v117 = *(v104 + 16);
            v116 = *(v104 + 24);
            if (v117 >= v116 >> 1)
            {
              sub_218C35FF8((v116 > 1), v117 + 1, 1);
              v104 = v390;
            }

            *(v104 + 16) = v117 + 1;
            v118 = v104 + 16 * v117;
            *(v118 + 32) = sub_2199408BC;
            *(v118 + 40) = v115;
            v106 += v382;
            --v102;
          }

          while (v102);

          v57 = v372;
          v55 = v371;
          v56 = v369;
          v94 = v351;
          v100 = v379;
        }

        else
        {

          v104 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v104 = 0;
      }

      v69 = sub_21993C1AC(v360, v380, v100, v104);

      (*(v355 + 8))(v354, v94);
      goto LABEL_61;
    }

    v144 = v58;
    LODWORD(v389) = sub_219BF61F4();
    v145 = swift_allocObject();
    *(v145 + 16) = v383;
    v390 = 0;
    v391 = 0xE000000000000000;
    v146 = v347;
    sub_219BE4C34();
    sub_219BF7484();
    v147 = *(v144 + 8);
    v147(v146, v59);
    v148 = v390;
    v149 = v391;
    v150 = v384;
    *(v145 + 56) = MEMORY[0x277D837D0];
    *(v145 + 64) = v150;
    *(v145 + 32) = v148;
    *(v145 + 40) = v149;
    sub_219BE5314("Encountered an unknown scroll task %{public}@", 45, 2, &dword_2186C1000, v381, v389, v145);

    sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v69 = sub_219BE3014();
    (*(v55 + 8))(v56, v57);
    v147(v41, v59);
  }

  else if (v54 == *MEMORY[0x277D34898])
  {
    (*(v44 + 96))(v46, v43);
    (*(v367 + 32))(v366, v46, v368);
    v70 = sub_219BF6214();
    v71 = swift_allocObject();
    *(v71 + 16) = v383;
    v390 = 0;
    v391 = 0xE000000000000000;
    sub_219BF7484();
    v72 = v390;
    v73 = v391;
    v74 = v384;
    *(v71 + 56) = MEMORY[0x277D837D0];
    *(v71 + 64) = v74;
    *(v71 + 32) = v72;
    *(v71 + 40) = v73;
    sub_219BE5314("Found like task %{public}@", 26, 2, &dword_2186C1000, v381, v70, v71);

    v75 = sub_219BE4A84();
    v76 = sub_219BE4A74();
    if (v76)
    {
      v77 = *(v76 + 16);
      if (v77)
      {
        v369 = v75;
        v390 = MEMORY[0x277D84F90];
        v78 = v76;
        sub_218C35FF8(0, v77, 0);
        v79 = v390;
        v374 = *(v389 + 2);
        v80 = v389[80];
        v365 = v78;
        v81 = v78 + ((v80 + 32) & ~v80);
        v372 = *(v389 + 9);
        v373 = v80;
        v371 = (v80 + 16) & ~v80;
        v82 = (v389 + 32);
        v389 += 16;
        v83 = (v389 - 8);
        do
        {
          v84 = v385;
          v85 = v388;
          v86 = v374;
          (v374)(v385, v81, v388);
          v87 = v386;
          v86(v386, v84, v85);
          v88 = v371;
          v89 = swift_allocObject();
          (*v82)(v89 + v88, v87, v85);
          v90 = swift_allocObject();
          *(v90 + 16) = sub_2199408B8;
          *(v90 + 24) = v89;
          (*v83)(v84, v85);
          v390 = v79;
          v92 = *(v79 + 16);
          v91 = *(v79 + 24);
          if (v92 >= v91 >> 1)
          {
            sub_218C35FF8((v91 > 1), v92 + 1, 1);
            v79 = v390;
          }

          *(v79 + 16) = v92 + 1;
          v93 = v79 + 16 * v92;
          *(v93 + 32) = sub_2199408BC;
          *(v93 + 40) = v90;
          v81 += v372;
          --v77;
        }

        while (v77);

        v75 = v369;
      }

      else
      {

        v79 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v79 = 0;
    }

    v199 = v370;
    v389 = v79;
    if (v75 < 1)
    {
      v214 = sub_219BF61F4();
      v215 = swift_allocObject();
      *(v215 + 16) = v383;
      v390 = v75;
      v216 = sub_219BF7894();
      v217 = v384;
      *(v215 + 56) = MEMORY[0x277D837D0];
      *(v215 + 64) = v217;
      *(v215 + 32) = v216;
      *(v215 + 40) = v218;
      sub_219BE5314("Found invalid number of headlines to like specified %{public}@", 62, 2, &dword_2186C1000, v381, v214, v215);

      sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v69 = sub_219BE3014();
    }

    else
    {
      LODWORD(v388) = *MEMORY[0x277D6E0D8];
      v387 = (v359 + 104);
      do
      {
        sub_21917A9E4(v79);
        v201 = v200;
        v202 = sub_219BF6214();
        v203 = swift_allocObject();
        *(v203 + 16) = v383;
        v390 = 0;
        v391 = 0xE000000000000000;
        v394 = v201;
        sub_218731D50();
        sub_219BF7484();
        v204 = v390;
        v205 = v391;
        v206 = v384;
        *(v203 + 56) = MEMORY[0x277D837D0];
        *(v203 + 64) = v206;
        *(v203 + 32) = v204;
        *(v203 + 40) = v205;
        sub_219BE5314("Liking headline %{public}@", 26, 2, &dword_2186C1000, v381, v202, v203);

        swift_getObjectType();
        sub_219BEAD24();
        swift_unknownObjectRetain();
        sub_219BF2B14();
        v207 = sub_219BF2B34();
        (*(*(v207 - 8) + 56))(v199, 0, 1, v207);
        (*v387)(v375, v388, v376);
        v392 = sub_219BDD274();
        v393 = sub_2187A56B8(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
        v390 = v377;
        v208 = objc_allocWithZone(MEMORY[0x277D75D18]);

        [v208 init];
        sub_219BE8314();
        v395 = 0u;
        v396 = 0u;
        v397 = 0;
        swift_allocObject();
        v199 = v370;
        sub_219BE82F4();
        sub_219BE7044();
        sub_2187BCAD8(v199, sub_21993BD30);

        swift_unknownObjectRelease();
        --v75;
        v79 = v389;
      }

      while (v75);
      v209 = v343;
      sub_219BED1F4();
      v210 = v344;
      sub_219BED244();
      v211 = *(v345 + 8);
      v212 = v346;
      v211(v209, v346);
      sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
      v213 = sub_219BF66A4();
      v69 = sub_219BE2E04();

      v211(v210, v212);
    }

    (*(v367 + 8))(v366, v368);
  }

  else if (v54 == *MEMORY[0x277D348C0])
  {
    (*(v44 + 96))(v46, v43);
    (*(v357 + 32))(v356, v46, v358);
    v119 = sub_219BF6214();
    v120 = swift_allocObject();
    *(v120 + 16) = v383;
    v390 = 0;
    v391 = 0xE000000000000000;
    sub_219BF7484();
    v121 = v390;
    v122 = v391;
    v123 = v384;
    *(v120 + 56) = MEMORY[0x277D837D0];
    *(v120 + 64) = v123;
    *(v120 + 32) = v121;
    *(v120 + 40) = v122;
    sub_219BE5314("Found dislike task %{public}@", 29, 2, &dword_2186C1000, v381, v119, v120);

    v124 = sub_219BE4A84();
    v125 = sub_219BE4A74();
    if (v125)
    {
      v126 = *(v125 + 16);
      if (v126)
      {
        v369 = v124;
        v390 = MEMORY[0x277D84F90];
        v127 = v125;
        sub_218C35FF8(0, v126, 0);
        v128 = v390;
        v374 = *(v389 + 2);
        v129 = v389[80];
        v368 = v127;
        v130 = v127 + ((v129 + 32) & ~v129);
        v371 = *(v389 + 9);
        v372 = v129;
        v370 = ((v129 + 16) & ~v129);
        v131 = (v389 + 32);
        v389 += 16;
        v132 = (v389 - 8);
        do
        {
          v133 = v385;
          v134 = v388;
          v135 = v128;
          v136 = v374;
          (v374)(v385, v130, v388);
          v137 = v386;
          v136(v386, v133, v134);
          v138 = v370;
          v139 = swift_allocObject();
          (*v131)(&v138[v139], v137, v134);
          v140 = swift_allocObject();
          *(v140 + 16) = sub_2199408B8;
          *(v140 + 24) = v139;
          v128 = v135;
          (*v132)(v133, v134);
          v390 = v135;
          v142 = *(v135 + 16);
          v141 = *(v135 + 24);
          if (v142 >= v141 >> 1)
          {
            sub_218C35FF8((v141 > 1), v142 + 1, 1);
            v128 = v390;
          }

          *(v128 + 16) = v142 + 1;
          v143 = v128 + 16 * v142;
          *(v143 + 32) = sub_2199408BC;
          *(v143 + 40) = v140;
          v130 += v371;
          --v126;
        }

        while (v126);

        v124 = v369;
      }

      else
      {

        v128 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v128 = 0;
    }

    v246 = v373;
    v389 = v128;
    if (v124 < 1)
    {
      v261 = sub_219BF61F4();
      v262 = swift_allocObject();
      *(v262 + 16) = v383;
      v390 = v124;
      v263 = sub_219BF7894();
      v264 = v384;
      *(v262 + 56) = MEMORY[0x277D837D0];
      *(v262 + 64) = v264;
      *(v262 + 32) = v263;
      *(v262 + 40) = v265;
      sub_219BE5314("Found invalid number of headlines to dislike specified %{public}@", 65, 2, &dword_2186C1000, v381, v261, v262);

      sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v69 = sub_219BE3014();
    }

    else
    {
      LODWORD(v388) = *MEMORY[0x277D6E0D8];
      v387 = (v359 + 104);
      do
      {
        sub_21917A9E4(v128);
        v248 = v247;
        v249 = sub_219BF6214();
        v250 = swift_allocObject();
        *(v250 + 16) = v383;
        v390 = 0;
        v391 = 0xE000000000000000;
        v394 = v248;
        sub_218731D50();
        sub_219BF7484();
        v251 = v390;
        v252 = v391;
        v253 = v384;
        *(v250 + 56) = MEMORY[0x277D837D0];
        *(v250 + 64) = v253;
        *(v250 + 32) = v251;
        *(v250 + 40) = v252;
        sub_219BE5314("Disliking headline %{public}@", 29, 2, &dword_2186C1000, v381, v249, v250);

        swift_getObjectType();
        sub_219BEAD34();
        swift_unknownObjectRetain();
        sub_219BF2B14();
        v254 = sub_219BF2B34();
        (*(*(v254 - 8) + 56))(v246, 0, 1, v254);
        (*v387)(v375, v388, v376);
        v392 = sub_219BDD274();
        v393 = sub_2187A56B8(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
        v390 = v377;
        v255 = objc_allocWithZone(MEMORY[0x277D75D18]);

        [v255 init];
        sub_219BE8314();
        v395 = 0u;
        v396 = 0u;
        v397 = 0;
        swift_allocObject();
        v246 = v373;
        sub_219BE82F4();
        sub_219BE7044();
        sub_2187BCAD8(v246, sub_21993BD30);

        swift_unknownObjectRelease();
        --v124;
        v128 = v389;
      }

      while (v124);
      v256 = v343;
      sub_219BED1F4();
      v257 = v344;
      sub_219BED244();
      v258 = *(v345 + 8);
      v259 = v346;
      v258(v256, v346);
      sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
      v260 = sub_219BF66A4();
      v69 = sub_219BE2E04();

      v258(v257, v259);
    }

    (*(v357 + 8))(v356, v358);
  }

  else if (v54 == *MEMORY[0x277D348A8])
  {
    (*(v44 + 96))(v46, v43);
    (*(v349 + 32))(v348, v46, v350);
    v151 = sub_219BF6214();
    v152 = swift_allocObject();
    *(v152 + 16) = v383;
    v390 = 0;
    v391 = 0xE000000000000000;
    sub_219BF7484();
    v153 = v390;
    v154 = v391;
    v155 = v384;
    *(v152 + 56) = MEMORY[0x277D837D0];
    *(v152 + 64) = v155;
    *(v152 + 32) = v153;
    *(v152 + 40) = v154;
    sub_219BE5314("Found save task %{public}@", 26, 2, &dword_2186C1000, v381, v151, v152);

    v156 = sub_219BE4A84();
    v157 = sub_219BE4A74();
    if (v157)
    {
      v158 = *(v157 + 16);
      if (v158)
      {
        v370 = v156;
        v390 = MEMORY[0x277D84F90];
        v159 = v157;
        sub_218C35FF8(0, v158, 0);
        v160 = v390;
        v374 = *(v389 + 2);
        v161 = v389[80];
        v369 = v159;
        v162 = &v159[(v161 + 32) & ~v161];
        v372 = *(v389 + 9);
        v373 = v161;
        v371 = (v161 + 16) & ~v161;
        v163 = (v389 + 32);
        v389 += 16;
        v164 = (v389 - 8);
        do
        {
          v165 = v385;
          v166 = v388;
          v167 = v160;
          v168 = v374;
          (v374)(v385, v162, v388);
          v169 = v386;
          v168(v386, v165, v166);
          v170 = v371;
          v171 = swift_allocObject();
          (*v163)(v171 + v170, v169, v166);
          v172 = swift_allocObject();
          *(v172 + 16) = sub_2199408B8;
          *(v172 + 24) = v171;
          v160 = v167;
          (*v164)(v165, v166);
          v390 = v167;
          v174 = *(v167 + 16);
          v173 = *(v167 + 24);
          if (v174 >= v173 >> 1)
          {
            sub_218C35FF8((v173 > 1), v174 + 1, 1);
            v160 = v390;
          }

          *(v160 + 16) = v174 + 1;
          v175 = v160 + 16 * v174;
          *(v175 + 32) = sub_2199408BC;
          *(v175 + 40) = v172;
          v162 += v372;
          --v158;
        }

        while (v158);

        v156 = v370;
      }

      else
      {

        v160 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v160 = 0;
    }

    v271 = v363;
    v389 = v160;
    if (v156 < 1)
    {
      v288 = sub_219BF61F4();
      v289 = swift_allocObject();
      *(v289 + 16) = v383;
      v390 = v156;
      v290 = sub_219BF7894();
      v291 = v384;
      *(v289 + 56) = MEMORY[0x277D837D0];
      *(v289 + 64) = v291;
      *(v289 + 32) = v290;
      *(v289 + 40) = v292;
      sub_219BE5314("Found invalid number of headlines to save specified %{public}@", 62, 2, &dword_2186C1000, v381, v288, v289);

      sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v69 = sub_219BE3014();
    }

    else
    {
      LODWORD(v388) = *MEMORY[0x277D33370];
      v387 = (v339 + 104);
      LODWORD(v386) = *MEMORY[0x277D6E0D8];
      v385 = (v359 + 104);
      do
      {
        sub_21917A9E4(v160);
        v273 = v272;
        v274 = v156;
        v275 = sub_219BF6214();
        v276 = swift_allocObject();
        *(v276 + 16) = v383;
        v390 = 0;
        v391 = 0xE000000000000000;
        v394 = v273;
        sub_218731D50();
        sub_219BF7484();
        v277 = v390;
        v278 = v391;
        v279 = v384;
        *(v276 + 56) = MEMORY[0x277D837D0];
        *(v276 + 64) = v279;
        *(v276 + 32) = v277;
        *(v276 + 40) = v278;
        sub_219BE5314("Saving headline %{public}@", 26, 2, &dword_2186C1000, v381, v275, v276);

        swift_getObjectType();
        sub_219BEAD94();
        v280 = v361;
        *v361 = v273;
        (*v387)(v280, v388, v362);
        swift_unknownObjectRetain();
        sub_219BF2524();
        sub_218AD7B00(0);
        (*(*(v281 - 8) + 56))(v271, 0, 1, v281);
        (*v385)(v375, v386, v376);
        v392 = sub_219BDD274();
        v393 = sub_2187A56B8(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
        v390 = v377;
        v282 = objc_allocWithZone(MEMORY[0x277D75D18]);

        [v282 init];
        sub_219BE8314();
        v395 = 0u;
        v396 = 0u;
        v397 = 0;
        swift_allocObject();
        v271 = v363;
        sub_219BE82F4();
        sub_219BE7044();
        sub_2187BCAD8(v271, sub_218B24A8C);

        swift_unknownObjectRelease();
        --v156;
        v160 = v389;
      }

      while (v274 != 1);
      v283 = v343;
      sub_219BED1F4();
      v284 = v344;
      sub_219BED244();
      v285 = *(v345 + 8);
      v286 = v346;
      v285(v283, v346);
      sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
      v287 = sub_219BF66A4();
      v69 = sub_219BE2E04();

      v285(v284, v286);
    }

    (*(v349 + 8))(v348, v350);
  }

  else if (v54 == *MEMORY[0x277D348A0])
  {
    (*(v44 + 96))(v46, v43);
    (*(v341 + 32))(v340, v46, v342);
    v176 = sub_219BF6214();
    v177 = swift_allocObject();
    *(v177 + 16) = v383;
    v390 = 0;
    v391 = 0xE000000000000000;
    sub_219BF7484();
    v178 = v390;
    v179 = v391;
    v180 = v384;
    *(v177 + 56) = MEMORY[0x277D837D0];
    *(v177 + 64) = v180;
    *(v177 + 32) = v178;
    *(v177 + 40) = v179;
    sub_219BE5314("Found read interaction %{public}@", 33, 2, &dword_2186C1000, v381, v176, v177);

    v181 = sub_219BE4A74();
    if (v181)
    {
      v182 = *(v181 + 16);
      if (v182)
      {
        v390 = MEMORY[0x277D84F90];
        v183 = v181;
        sub_218C35FF8(0, v182, 0);
        v184 = v390;
        v377 = *(v389 + 2);
        v185 = v389[80];
        v373 = v183;
        v186 = &v183[(v185 + 32) & ~v185];
        v375 = *(v389 + 9);
        v376 = v185;
        v374 = ((v185 + 16) & ~v185);
        v187 = (v389 + 32);
        v389 += 16;
        v188 = (v389 - 8);
        do
        {
          v189 = v385;
          v190 = v388;
          v191 = v377;
          v377(v385, v186, v388);
          v192 = v386;
          v191(v386, v189, v190);
          v193 = v374;
          v194 = swift_allocObject();
          (*v187)(&v193[v194], v192, v190);
          v195 = swift_allocObject();
          *(v195 + 16) = sub_219940084;
          *(v195 + 24) = v194;
          (*v188)(v189, v190);
          v390 = v184;
          v197 = *(v184 + 16);
          v196 = *(v184 + 24);
          if (v197 >= v196 >> 1)
          {
            sub_218C35FF8((v196 > 1), v197 + 1, 1);
            v184 = v390;
          }

          *(v184 + 16) = v197 + 1;
          v198 = v184 + 16 * v197;
          *(v198 + 32) = sub_219940088;
          *(v198 + 40) = v195;
          v186 = &v375[v186];
          --v182;
        }

        while (v182);
      }

      else
      {

        v184 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v184 = 0;
    }

    sub_21917A9E4(v184);
    v294 = v293;

    v295 = sub_219BF6214();
    v296 = swift_allocObject();
    *(v296 + 16) = v383;
    v390 = 0;
    v391 = 0xE000000000000000;
    *&v395 = v294;
    sub_218731D50();
    sub_219BF7484();
    v297 = v390;
    v298 = v391;
    v299 = v384;
    *(v296 + 56) = MEMORY[0x277D837D0];
    *(v296 + 64) = v299;
    *(v296 + 32) = v297;
    *(v296 + 40) = v298;
    v300 = v381;
    sub_219BE5314("Reading headline %{public}@", 27, 2, &dword_2186C1000, v381, v295, v296);

    sub_2187B2C48(0);
    v302 = v301;
    v303 = swift_allocBox();
    v305 = v304;
    v306 = *(v302 + 48);
    sub_2199406E0(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);
    v308 = *(v307 + 48);
    v389 = v294;
    swift_unknownObjectRetain();
    v309 = v326;
    sub_219BDEDE4();
    v310 = v330;
    v311 = v328;
    v312 = v332;
    (*(v330 + 104))(v328, *MEMORY[0x277D2FF08], v332);
    v313 = sub_219BDB954();
    v314 = v331;
    (*(*(v313 - 8) + 56))(v331, 1, 1, v313);
    sub_219BDD904();
    sub_2187BCAD8(v314, sub_21873F65C);
    (*(v310 + 8))(v311, v312);
    (*(v327 + 8))(v309, v329);
    *(v305 + v308) = 0;
    *(v305 + v306) = MEMORY[0x277D84F90];
    v315 = sub_219BF6214();
    v316 = swift_allocObject();
    *(v316 + 16) = v383;
    v390 = 0;
    v391 = 0xE000000000000000;
    *&v395 = v303 | 2;
    sub_219BF7484();
    v317 = v390;
    v318 = v391;
    v319 = v384;
    *(v316 + 56) = MEMORY[0x277D837D0];
    *(v316 + 64) = v319;
    *(v316 + 32) = v317;
    *(v316 + 40) = v318;
    v320 = v315;
    v321 = v340;
    sub_219BE5314("Navigting to activity %{public}@", 32, 2, &dword_2186C1000, v300, v320, v316);

    MEMORY[0x28223BE20](v322);
    *(&v325 - 6) = v335;
    *(&v325 - 5) = v303 | 2;
    v323 = v379;
    *(&v325 - 4) = v321;
    *(&v325 - 3) = v323;
    *(&v325 - 2) = v378;
    sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v69 = sub_219BE30B4();
    swift_unknownObjectRelease();

    (*(v341 + 8))(v321, v342);
  }

  else if (v54 == *MEMORY[0x277D348B0])
  {
    (*(v44 + 96))(v46, v43);
    v219 = v53;
    v220 = v337;
    v221 = *(v337 + 32);
    v388 = v337 + 32;
    v389 = v221;
    v222 = v336;
    v223 = v338;
    (v221)(v336, v46, v338);
    v224 = sub_219BF6214();
    v225 = swift_allocObject();
    *(v225 + 16) = v383;
    v390 = 0;
    v391 = 0xE000000000000000;
    sub_219BF7484();
    v226 = v390;
    v227 = v391;
    v228 = v384;
    *(v225 + 56) = MEMORY[0x277D837D0];
    *(v225 + 64) = v228;
    *(v225 + 32) = v226;
    *(v225 + 40) = v227;
    sub_219BE5314("Found browse interaction %{public}@", 35, 2, &dword_2186C1000, v381, v224, v225);

    v229 = v380;
    v387 = sub_21993EC08(v222, v360, v380, v219);
    v386 = sub_219BE1C44();
    v230 = v220;
    v231 = *(v220 + 16);
    v232 = v334;
    v233 = v223;
    v231(v334, v222, v223);
    v234 = (*(v230 + 80) + 16) & ~*(v230 + 80);
    v235 = (v333 + v234 + 7) & 0xFFFFFFFFFFFFFFF8;
    v236 = (v235 + 15) & 0xFFFFFFFFFFFFFFF8;
    v237 = (v236 + 15) & 0xFFFFFFFFFFFFFFF8;
    v238 = (v237 + 15) & 0xFFFFFFFFFFFFFFF8;
    v239 = swift_allocObject();
    (v389)(v239 + v234, v232, v233);
    v240 = v360;
    *(v239 + v235) = v360;
    *(v239 + v236) = v229;
    *(v239 + v237) = v335;
    v241 = (v239 + v238);
    v242 = v378;
    *v241 = v379;
    v241[1] = v242;
    *(v239 + ((v238 + 23) & 0xFFFFFFFFFFFFFFF8)) = v377;
    v243 = swift_allocObject();
    *(v243 + 16) = sub_21993FD14;
    *(v243 + 24) = v239;
    v244 = (v240 & 0x7FFFFFFFFFFFFFFFLL);

    swift_unknownObjectRetain();

    v245 = v386;
    v69 = sub_219BE2F64();

    (*(v337 + 8))(v336, v338);
  }

  else
  {
    v266 = sub_219BF61F4();
    v267 = swift_allocObject();
    *(v267 + 16) = v383;
    v390 = 0;
    v391 = 0xE000000000000000;
    sub_219BF7484();
    v268 = v390;
    v269 = v391;
    v270 = v384;
    *(v267 + 56) = MEMORY[0x277D837D0];
    *(v267 + 64) = v270;
    *(v267 + 32) = v268;
    *(v267 + 40) = v269;
    sub_219BE5314("Encountered an unknown task %{public}@", 38, 2, &dword_2186C1000, v381, v266, v267);

    sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v69 = sub_219BE3014();
    (*(v44 + 8))(v46, v43);
  }

  return v69;
}

id sub_21993BD64(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3 < 1)
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v15 = qword_280F61728;
    v16 = sub_219BF61F4();
    sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_219C09BA0;
    v18 = sub_219BF7894();
    v20 = v19;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_2186FC3BC();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    sub_219BE5314("Found invalid number of screens specified %{public}@", 52, 2, &dword_2186C1000, v15, v16, v17);

    sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    if (a4)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      v10 = swift_allocObject();
      result = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
      *(v10 + 16) = result;
      if (!result)
      {
        __break(1u);
        return result;
      }

      v12 = result;
      v13 = swift_allocObject();
      v13[2] = a2;
      v13[3] = v9;
      v13[4] = v8;
      v13[5] = v10;
      v14 = objc_allocWithZone(MEMORY[0x277D82BB8]);
      v27 = v12;

      v26 = [v14 init];
      swift_beginAccess();

      sub_219BE2754();

      v21 = swift_allocObject();
      *(v21 + 16) = sub_21994014C;
      *(v21 + 24) = v13;
      sub_2186C6148(0, &qword_280E8DA00, 0x277D82BB8);

      sub_219BE2704();
    }

    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v22 = qword_280F61728;
    v23 = sub_219BF6214();
    sub_219BE5314("Running scroll screens task", 27, 2, &dword_2186C1000, v22, v23, MEMORY[0x277D84F90]);
    sub_21993D420(a3, v8, a1);
    v25 = v24;

    return v25;
  }
}

id sub_21993C1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 1)
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v14 = qword_280F61728;
    v15 = sub_219BF61F4();
    sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_219C09BA0;
    v17 = sub_219BF7894();
    v19 = v18;
    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 64) = sub_2186FC3BC();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_219BE5314("Found invalid number of headlines specified %{public}@", 54, 2, &dword_2186C1000, v14, v15, v16);

    sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    v8 = swift_allocObject();
    result = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
    *(v8 + 16) = result;
    if (result)
    {
      v10 = result;
      v11 = swift_allocObject();
      v11[2] = a2;
      v11[3] = a4;
      v11[4] = v7;
      v11[5] = a3;
      v11[6] = v8;
      v12 = objc_allocWithZone(MEMORY[0x277D82BB8]);

      v13 = v10;

      v25 = [v12 init];
      swift_beginAccess();

      sub_219BE2754();

      v20 = swift_allocObject();
      *(v20 + 16) = sub_21994048C;
      *(v20 + 24) = v11;
      sub_2186C6148(0, &qword_280E8DA00, 0x277D82BB8);

      sub_219BE2704();

      if (qword_280E8D830 != -1)
      {
        swift_once();
      }

      v21 = qword_280F61728;
      v22 = sub_219BF6214();
      sub_219BE5314("Starting headline scroll", 24, 2, &dword_2186C1000, v21, v22, MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v23);
      sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v24 = sub_219BE30B4();

      return v24;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_21993C670(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  sub_21917A5AC(a1);
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);

  v13 = v11 + 40;
  v14 = -1;
  while (v14 - v12 != -1)
  {
    if (++v14 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    v15 = v13 + 16;
    v16 = *(v13 - 8);
    v37 = v10;

    v16(&v36, &v37);

    v13 = v15;
    if ((v36 & 1) == 0)
    {

      if (qword_280E8D830 == -1)
      {
LABEL_9:
        v17 = qword_280F61728;
        v18 = sub_219BF6214();
        sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_219C09BA0;
        v37 = 0;
        v38 = 0xE000000000000000;
        v36 = v10;
        sub_218731D50();
        sub_219BF7484();
        v20 = v37;
        v21 = v38;
        *(v19 + 56) = MEMORY[0x277D837D0];
        *(v19 + 64) = sub_2186FC3BC();
        *(v19 + 32) = v20;
        *(v19 + 40) = v21;
        sub_219BE5314("Observed headline not passing condition %{public}@", 50, 2, &dword_2186C1000, v17, v18, v19);

        return;
      }

LABEL_20:
      swift_once();
      goto LABEL_9;
    }
  }

  swift_beginAccess();
  v22 = *(a4 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(a4 + 16) = v24;
  if (qword_280E8D830 == -1)
  {
    goto LABEL_12;
  }

LABEL_18:
  swift_once();
LABEL_12:
  v10 = qword_280F61728;
  v25 = sub_219BF6214();
  sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_219C09EC0;
  swift_beginAccess();
  v27 = sub_219BF7894();
  v29 = v28;
  v30 = MEMORY[0x277D837D0];
  *(v26 + 56) = MEMORY[0x277D837D0];
  v31 = sub_2186FC3BC();
  *(v26 + 64) = v31;
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  swift_beginAccess();
  if (__OFSUB__(a5, *(a4 + 16)))
  {
    __break(1u);
    goto LABEL_20;
  }

  v32 = sub_219BF7894();
  *(v26 + 96) = v30;
  *(v26 + 104) = v31;
  *(v26 + 72) = v32;
  *(v26 + 80) = v33;
  sub_219BE5314("Observed headlines %{public}@, %{public}@ headlines remaining", 61, 2, &dword_2186C1000, v10, v25, v26);

  swift_beginAccess();
  if (*(a4 + 16) == a5)
  {
    v34 = sub_219BF6214();
    sub_219BE5314("Observed headlines, going to stop observing impressions", 55, 2, &dword_2186C1000, v10, v34, MEMORY[0x277D84F90]);
    swift_beginAccess();
    v35 = *(a6 + 16);
    *(a6 + 16) = 0;
  }
}

void sub_21993CA74(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = a7;
  v14 = sub_219BE49D4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  swift_beginAccess();
  if (*(a5 + 16) >= a6)
  {

    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v35 = qword_280F61728;
    v36 = sub_219BF6214();
    v37 = sub_219BE5314("Found enough headlines, finished", 32, 2, &dword_2186C1000, v35, v36, MEMORY[0x277D84F90]);
    a1(v37);
  }

  else
  {
    v40 = a6;
    v41 = v14;
    v19 = a8;
    v39 = a9;
    v20 = qword_280E8D830;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = qword_280F61728;
    v22 = sub_219BF6214();
    v23 = MEMORY[0x277D84F90];
    sub_219BE5314("Scrolling one screen", 20, 2, &dword_2186C1000, v21, v22, MEMORY[0x277D84F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = 2;
    v25 = sub_219BF6214();
    sub_219BE5314("Running scroll screens task", 27, 2, &dword_2186C1000, v21, v25, v23);
    sub_21993D420(2, v24, v19);

    v26 = sub_219BE1C44();
    v38 = sub_219BE2F74();

    v27 = v41;
    (*(v15 + 16))(&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v42, v41);
    v28 = (*(v15 + 80) + 48) & ~*(v15 + 80);
    v29 = (v16 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    v31 = v40;
    *(v30 + 2) = a5;
    *(v30 + 3) = v31;
    *(v30 + 4) = sub_218A2DB54;
    *(v30 + 5) = v18;
    (*(v15 + 32))(&v30[v28], v17, v27);
    *&v30[v29] = v19;
    *&v30[(v29 + 15) & 0xFFFFFFFFFFFFFFF8] = v39;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_2199404B4;
    *(v32 + 24) = v30;
    v33 = (v19 & 0x7FFFFFFFFFFFFFFFLL);

    v34 = sub_219BE2E54();
    sub_219BE2F74();
  }
}

void sub_21993CE64(uint64_t a1, uint64_t a2, void (*a3)(double), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v11 = qword_280F61728;
  v12 = sub_219BF6214();
  sub_219BE5314("Done scrolling screen", 21, 2, &dword_2186C1000, v11, v12, MEMORY[0x277D84F90]);
  swift_beginAccess();
  v13 = *(a1 + 16);
  v14 = sub_219BF6214();
  if (v13 >= a2)
  {
    v28 = sub_219BE5314("Found enough headlines, not scrolling any more", 46, 2, &dword_2186C1000, v11, v14, MEMORY[0x277D84F90]);
    a3(v28);
  }

  else
  {
    v29 = a3;
    sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_219C09EC0;
    swift_beginAccess();
    v16 = sub_219BF7894();
    v18 = v17;
    v19 = MEMORY[0x277D837D0];
    *(v15 + 56) = MEMORY[0x277D837D0];
    v20 = sub_2186FC3BC();
    *(v15 + 64) = v20;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    swift_beginAccess();
    if (__OFSUB__(a2, *(a1 + 16)))
    {
      __break(1u);
    }

    else
    {
      v21 = sub_219BF7894();
      *(v15 + 96) = v19;
      *(v15 + 104) = v20;
      *(v15 + 72) = v21;
      *(v15 + 80) = v22;
      sub_219BE5314("So far have observed %{public}@ headlines, need %{public}@ more", 63, 2, &dword_2186C1000, v11, v14, v15);

      v23 = sub_219BF6214();
      sub_219BE5314("Starting headline scroll", 24, 2, &dword_2186C1000, v11, v23, MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v24);
      sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      sub_219BE30B4();
      v25 = sub_219BE1C44();
      v26 = swift_allocObject();
      *(v26 + 16) = v29;
      *(v26 + 24) = a4;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_218BBF788;
      *(v27 + 24) = v26;

      sub_219BE2F74();
    }
  }
}

void sub_21993D224(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21917A5AC(a1);
  swift_beginAccess();
  v8 = *(a3 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v10;
    if (qword_280E8D830 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v11 = qword_280F61728;
  v12 = sub_219BF6214();
  sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C09BA0;
  swift_beginAccess();
  v14 = sub_219BF7894();
  v16 = v15;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_2186FC3BC();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  sub_219BE5314("Observed %{public}@ total headlines", 35, 2, &dword_2186C1000, v11, v12, v13);

  swift_beginAccess();
  if (!*(a4 + 16))
  {
    v17 = sub_219BF6214();
    sub_219BE5314("Observed enough screens, going to stop observing impressions", 60, 2, &dword_2186C1000, v11, v17, MEMORY[0x277D84F90]);
    swift_beginAccess();
    v18 = *(a5 + 16);
    *(a5 + 16) = 0;
  }
}

void sub_21993D420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v5 = qword_280F61728;
  v6 = sub_219BF6214();
  sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  swift_beginAccess();
  v8 = *(a2 + 16);
  v9 = __OFSUB__(a1, v8);
  v10 = a1 - v8;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v15 = v10;
    v11 = sub_219BF7894();
    v13 = v12;
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_2186FC3BC();
    *(v7 + 32) = v11;
    *(v7 + 40) = v13;
    sub_219BE5314("Waiting on screen %{public}@", 28, 2, &dword_2186C1000, v5, v6, v7, v15);

    MEMORY[0x28223BE20](v14);
    sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE30B4();
  }
}

uint64_t sub_21993D614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a6;
  v36 = a7;
  v32 = a5;
  v9 = sub_219BED174();
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BED1D4();
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BED214();
  v34 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v30 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);

  v31 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v33 = *(v16 + 8);
  v33(v18, v15);
  v23 = swift_allocObject();
  v24 = v35;
  v25 = v36;
  v23[2] = v32;
  v23[3] = v24;
  v23[4] = v25;
  v23[5] = sub_2187A913C;
  v23[6] = v22;
  aBlock[4] = sub_21994047C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_187;
  v26 = _Block_copy(aBlock);
  v27 = (v25 & 0x7FFFFFFFFFFFFFFFLL);

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2187A56B8(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_21879DD98(0);
  sub_2187A56B8(&qword_280E8EFA0, sub_21879DD98, MEMORY[0x277D83970]);
  sub_219BF7164();
  v28 = v31;
  MEMORY[0x21CECD420](v21, v14, v11, v26);
  _Block_release(v26);

  (*(v39 + 8))(v11, v9);
  (*(v37 + 8))(v14, v38);
  return (v33)(v21, v34);
}

void sub_21993DA40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(double), uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a1 + 16);
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(a1 + 16) = v12;
  if (v12 >= 1)
  {
    if (qword_280E8D830 == -1)
    {
LABEL_4:
      v13 = qword_280F61728;
      v14 = sub_219BF6214();
      sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_219C09BA0;
      swift_beginAccess();
      if (!__OFSUB__(a2, *(a1 + 16)))
      {
        v41 = a2;
        v16 = sub_219BF7894();
        v18 = v17;
        *(v15 + 56) = MEMORY[0x277D837D0];
        *(v15 + 64) = sub_2186FC3BC();
        *(v15 + 32) = v16;
        *(v15 + 40) = v18;
        sub_219BE5314("Going to screen %{public}@", 26, 2, &dword_2186C1000, v13, v14, v15);

        sub_219BE8664();
        v19 = sub_219BE7BC4();

        sub_219BE8664();
        v20 = sub_219BE7BC4();

        [v20 contentOffset];
        v22 = v21;

        sub_219BE8664();
        v23 = sub_219BE7BC4();

        [v23 contentOffset];
        v25 = v24;

        sub_219BE8664();
        v26 = sub_219BE7BC4();

        [v26 frame];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        v42.origin.x = v28;
        v42.origin.y = v30;
        v42.size.width = v32;
        v42.size.height = v34;
        [v19 setContentOffset_];

        sub_21993D420(v41, a1, a3);
        v35 = sub_219BE1C44();
        v36 = swift_allocObject();
        *(v36 + 16) = a4;
        *(v36 + 24) = a5;
        v37 = swift_allocObject();
        *(v37 + 16) = sub_218BBF788;
        *(v37 + 24) = v36;

        sub_219BE2F74();

        return;
      }

      __break(1u);
      goto LABEL_11;
    }

LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  if (qword_280E8D830 != -1)
  {
LABEL_11:
    swift_once();
  }

  v38 = qword_280F61728;
  v39 = sub_219BF6214();
  v40 = sub_219BE5314("Done scrolling screens", 22, 2, &dword_2186C1000, v38, v39, MEMORY[0x277D84F90]);
  a4(v40);
}

double sub_21993DE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = a5;
  v45 = a8;
  v41 = a6;
  v42 = a4;
  v40 = a2;
  v43 = a9;
  v13 = sub_219BE9414();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x28223BE20](v13);
  v46 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE4B14();
  v39 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  (*(v16 + 16))(v18, a7, v15);
  v21 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v41;
  *(v23 + 2) = v20;
  *(v23 + 3) = v24;
  v38[1] = a3;
  *(v23 + 4) = a3;
  *(v23 + 5) = v42;
  (*(v16 + 32))(&v23[v21], v18, v39);
  v25 = &v23[v22];
  v26 = v43;
  *v25 = v45;
  v25[1] = v26;
  v27 = &v23[(v22 + 23) & 0xFFFFFFFFFFFFFFF8];
  *v27 = sub_218A2DB54;
  v27[1] = v19;

  sub_2189EB264(v24);

  swift_unknownObjectRetain();
  sub_219BE6454();

  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v28 = qword_280F61728;
  v29 = sub_219BF6214();
  sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_219C09BA0;
  v50 = 0;
  v51 = 0xE000000000000000;
  v31 = v24;
  v49 = v24;
  sub_219BF7484();
  v32 = v50;
  v33 = v51;
  *(v30 + 56) = MEMORY[0x277D837D0];
  *(v30 + 64) = sub_2186FC3BC();
  *(v30 + 32) = v32;
  *(v30 + 40) = v33;
  sub_219BE5314("Attempting to navigate to activity %{public}@", 45, 2, &dword_2186C1000, v28, v29, v30);

  v50 = v31;
  v35 = v46;
  v34 = v47;
  v36 = v48;
  (*(v47 + 104))(v46, *MEMORY[0x277D6E598], v48);
  sub_219BE6474();
  (*(v34 + 8))(v35, v36);

  return result;
}

void sub_21993E294(uint64_t *a1, uint64_t a2, unint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v52 = a8;
  v53 = a7;
  v51 = a6;
  v58 = a4;
  v59 = a5;
  v13 = sub_219BED174();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v57 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BED1D4();
  v56 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BED214();
  v54 = *(v19 - 8);
  v55 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  v25 = *a1;
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    v48 = v16;
    v49 = v14;
    v50 = v13;
    swift_beginAccess();
    *(a2 + 16) = 1;
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v26 = qword_280F61728;
    v27 = sub_219BF6214();
    sub_2186E5E00(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_219C09BA0;
    aBlock = 0;
    v61 = 0xE000000000000000;
    v66 = a3;
    sub_219BF7484();
    v29 = aBlock;
    v30 = v61;
    *(v28 + 56) = MEMORY[0x277D837D0];
    *(v28 + 64) = sub_2186FC3BC();
    *(v28 + 32) = v29;
    *(v28 + 40) = v30;
    sub_219BE5314("Successfully navigated to activity %{public}@", 45, 2, &dword_2186C1000, v26, v27, v28);

    aBlock = v25;
    v31 = NewsActivity2.identifier.getter();
    v33 = v32;
    v66 = a3;
    if (v31 == NewsActivity2.identifier.getter() && v33 == v34)
    {

LABEL_8:
      sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
      v47 = sub_219BF66A4();
      sub_219BED1F4();
      sub_219BE4B04();
      sub_219BED244();
      v36 = v55;
      v54 = *(v54 + 8);
      (v54)(v21, v55);
      v37 = swift_allocObject();
      v38 = v52;
      v37[2] = v53;
      v37[3] = v38;
      v37[4] = a9;
      v37[5] = a10;
      v39 = v59;
      v37[6] = v58;
      v37[7] = v39;
      v64 = sub_219940644;
      v65 = v37;
      aBlock = MEMORY[0x277D85DD0];
      v61 = 1107296256;
      v62 = sub_218793E0C;
      v63 = &block_descriptor_124;
      v40 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      sub_219BED1A4();
      aBlock = MEMORY[0x277D84F90];
      sub_2187A56B8(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_21879DD98(0);
      sub_2187A56B8(&qword_280E8EFA0, sub_21879DD98, MEMORY[0x277D83970]);
      v41 = v57;
      v42 = v50;
      sub_219BF7164();
      v43 = v47;
      MEMORY[0x21CECD420](v24, v18, v41, v40);
      _Block_release(v40);

      (*(v49 + 8))(v41, v42);
      (*(v56 + 8))(v18, v48);
      (v54)(v24, v36);
      return;
    }

    v35 = sub_219BF78F4();

    if (v35)
    {
      goto LABEL_8;
    }

    type metadata accessor for PersonalizationScriptTestCase.Errors(0);
    sub_2187A56B8(&qword_27CC16BE0, type metadata accessor for PersonalizationScriptTestCase.Errors, &unk_219CA0C70);
    v44 = swift_allocError();
    *v45 = a3;
    swift_storeEnumTagMultiPayload();
    sub_2189EB264(a3);
    v58(v44);
  }
}

void sub_21993E93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v21 = a5;
  v19 = a3;
  v5 = sub_219BED214();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v12 = qword_280F61728;
  v13 = sub_219BF6214();
  sub_219BE5314("Finished reading going back", 27, 2, &dword_2186C1000, v12, v13, MEMORY[0x277D84F90]);
  swift_getObjectType();
  sub_219BEAF54();
  sub_219BEA9A4();
  sub_219BE70A4();

  sub_219BED1F4();
  sub_219BED244();
  v14 = *(v6 + 8);
  v14(v8, v5);
  sub_219BE2E14();
  v14(v11, v5);
  v15 = swift_allocObject();
  v16 = v20;
  *(v15 + 16) = v19;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_218807D28;
  *(v17 + 24) = v15;

  v18 = sub_219BE2E54();
  sub_219BE2F74();
}

id sub_21993EC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219BE4B84();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a1, v9);
  type metadata accessor for BrowsePresentationRequirements();
  swift_allocObject();
  v13 = sub_218EDBE24(v11);
  v14 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  *(v14 + 16) = result;
  if (result)
  {
    v16 = result;
    v29 = a4;
    v17 = swift_allocObject();
    v17[2] = v13;
    v17[3] = a3;
    v17[4] = v14;
    v18 = objc_allocWithZone(MEMORY[0x277D82BB8]);
    v19 = v16;

    v30 = a3;

    v20 = [v18 init];
    swift_beginAccess();

    sub_219BE2754();

    v21 = swift_allocObject();
    *(v21 + 16) = sub_2199407DC;
    *(v21 + 24) = v17;
    sub_2186C6148(0, &qword_280E8DA00, 0x277D82BB8);

    sub_219BE2704();

    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v22 = qword_280F61728;
    v23 = sub_219BF6214();
    sub_219BE5314("Starting headline scroll", 24, 2, &dword_2186C1000, v22, v23, MEMORY[0x277D84F90]);
    MEMORY[0x28223BE20](v24);
    v26 = v29;
    v25 = v30;
    *(&v28 - 4) = v13;
    *(&v28 - 3) = v26;
    *(&v28 - 2) = a2;
    *(&v28 - 1) = v25;
    sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v27 = sub_219BE30B4();

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21993EFE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_218EDC3E8(a1);
  sub_21917A5AC(a1);
  if (!*(*(a2 + 16) + 16))
  {
    swift_beginAccess();
    v7 = *(a4 + 16);
    *(a4 + 16) = 0;
  }
}

void sub_21993F06C(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_219BE49D4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  if (*(*(a5 + 16) + 16))
  {
    v41 = v14;
    v42 = v18;
    v43 = a8;
    v44 = a5;
    v19 = qword_280E8D830;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = qword_280F61728;
    v21 = sub_219BF6214();
    v22 = MEMORY[0x277D84F90];
    sub_219BE5314("Scrolling one screen", 20, 2, &dword_2186C1000, v20, v21, MEMORY[0x277D84F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = 2;
    v24 = sub_219BF6214();
    sub_219BE5314("Running scroll screens task", 27, 2, &dword_2186C1000, v20, v24, v22);
    sub_21993D420(2, v23, a7);

    v25 = sub_219BE1C44();
    v40[1] = sub_219BE2F74();

    v26 = a6;
    v27 = v41;
    (*(v15 + 16))(v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v41);
    v28 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v29 = (v16 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    *(v31 + 16) = v44;
    (*(v15 + 32))(v31 + v28, v17, v27);
    *(v31 + v29) = a7;
    v32 = v42;
    *(v31 + v30) = v43;
    v33 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_218A2DB54;
    v33[1] = v32;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_2199407F4;
    *(v34 + 24) = v31;
    v35 = (a7 & 0x7FFFFFFFFFFFFFFFLL);

    v36 = sub_219BE2E54();
    sub_219BE2F74();
  }

  else
  {

    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v37 = qword_280F61728;
    v38 = sub_219BF6214();
    v39 = sub_219BE5314("Found all presented headlines, finished", 39, 2, &dword_2186C1000, v37, v38, MEMORY[0x277D84F90]);
    a1(v39);
  }
}

double sub_21993F450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v8 = qword_280F61728;
  v9 = sub_219BF6214();
  v10 = MEMORY[0x277D84F90];
  sub_219BE5314("Done scrolling screen", 21, 2, &dword_2186C1000, v8, v9, MEMORY[0x277D84F90]);
  v11 = sub_219BF6214();
  sub_219BE5314("Starting headline scroll", 24, 2, &dword_2186C1000, v8, v11, v10);
  MEMORY[0x28223BE20](v12);
  sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE30B4();
  v13 = sub_219BE1C44();
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_218BBF788;
  *(v15 + 24) = v14;

  sub_219BE2F74();

  return result;
}

uint64_t sub_21993F664(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(void, void, void))
{
  v50 = a7;
  v51 = a8;
  v49 = a6;
  v48 = sub_219BE49D4();
  v14 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219940658(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BE4B94();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;

  v52 = a5;
  sub_218F98F90(v19);
  sub_2199406E0(0, &qword_27CC21340, MEMORY[0x277D34968], sub_21994075C);
  if ((*(*(v25 - 8) + 48))(v19, 1, v25) == 1)
  {

    v26 = sub_2187BCAD8(v19, sub_219940658);
    return a1(v26);
  }

  else
  {
    v42 = a11;
    v43 = v24;
    v46 = v20;
    v47 = v21;
    v28 = *(v21 + 32);
    v45 = v23;
    v28(v23, v19, v20);
    sub_21952B978(v16);

    v30 = v49;
    v29 = v50;
    v31 = v51;
    v32 = v42;
    v44 = sub_21993873C(v49, v50, v51, a9, a10, v42);
    (*(v14 + 8))(v16, v48);
    v33 = swift_allocObject();
    v33[2] = v52;
    v33[3] = v30;
    v33[4] = v29;
    v33[5] = v31;
    v33[6] = a9;
    v33[7] = a10;
    v33[8] = v32;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_219940790;
    *(v34 + 24) = v33;
    v35 = (v30 & 0x7FFFFFFFFFFFFFFFLL);

    swift_unknownObjectRetain();

    v36 = sub_219BE2E54();
    sub_219BE2F64();

    v37 = swift_allocObject();
    v38 = v43;
    *(v37 + 16) = sub_218A2DB54;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_218BBF788;
    *(v39 + 24) = v37;
    v40 = sub_219BE2E54();
    sub_219BE2F74();

    return (*(v47 + 8))(v45, v46);
  }
}

uint64_t sub_21993FAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_21993FB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_219BE4B84();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v21[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v18 + 16))(v17, a1, v15);
  type metadata accessor for BrowseNonPresentationRequirements();
  swift_allocObject();
  v22 = sub_218F98A6C(v17);
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  sub_21870F3D4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v19 = sub_219BE30B4();

  return v19;
}

uint64_t sub_21993FD14()
{
  v1 = *(sub_219BE4B84() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + v6);
  v11 = *(v0 + v6 + 8);
  v12 = *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_21993FB8C(v0 + v2, v7, v8, v9, v10, v11, v12);
}

double sub_21993FDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2187E2B98(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_219940194(a2, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2187E2B98);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_219940330(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, sub_2187E2B98);
  v12 = (v11 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a3;
  v12[1] = a4;

  sub_219BE3494();

  return result;
}

double sub_21993FF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_218CF6310(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_219940194(a2, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), sub_218CF6310);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_219940330(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, sub_218CF6310);
  v12 = (v11 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a3;
  v12[1] = a4;

  sub_219BE3494();

  return result;
}

uint64_t objectdestroy_5Tm_2()
{
  v1 = sub_219BE4C24();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_219940114@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_219940194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_59Tm_0(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = *(a1(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = a2(0);
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_219940330(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2199403C4(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a2(v2 + v4, v6, v7);
}

void sub_2199404B4()
{
  v1 = *(sub_219BE49D4() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0 + v3);
  v9 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_21993CE64(v4, v5, v6, v7, v0 + v2, v8, v9);
}

void sub_21994058C(uint64_t *a1)
{
  v3 = *(sub_219BE4B14() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_21993E294(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_219940658(uint64_t a1)
{
  if (!qword_27CC21338)
  {
    sub_2199406E0(255, &qword_27CC21340, MEMORY[0x277D34968], sub_21994075C);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC21338);
    }
  }
}

void sub_2199406E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

double sub_2199407F4()
{
  v1 = *(sub_219BE49D4() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + 16);
  v7 = *(v0 + v4);
  v8 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_21993F450(v6, v0 + v2, v5, v7, v9, v10);
}

void sub_2199408C4(char *a2@<X8>)
{
  v3 = sub_219BF7614();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

uint64_t sub_2199409D4()
{
  v0 = sub_219BDBD34();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_219BDB184();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD24();
  sub_219BDB154();
  type metadata accessor for TagFeedConfigData(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0xE000000000000000;
  *(v5 + 32) = 0;
  result = (*(v2 + 32))(v5 + OBJC_IVAR____TtC7NewsUI217TagFeedConfigData_fetchInterval, v4, v1);
  qword_27CCD8EF8 = v5;
  return result;
}

char **sub_219940B20(void *a1)
{
  v32 = *v1;
  v33 = v2;
  v4 = sub_219BDBD34();
  MEMORY[0x28223BE20](v4 - 8);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F9358C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDB184();
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219941990(0, &qword_27CC21350, MEMORY[0x277D844C8]);
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199418E8();
  v15 = v33;
  sub_219BF7B34();
  if (v15)
  {
    swift_deallocPartialClassInstance();
    v19 = a1;
  }

  else
  {
    v33 = v11;
    v37 = 0;
    v16 = v30;
    v1[2] = sub_219BF76F4();
    v1[3] = v17;
    v35 = 1;
    sub_21994193C();
    sub_219BF76E4();
    *(v1 + 32) = v36 & 1;
    v34 = 2;
    sub_219941A48(&unk_280EE9DD8, MEMORY[0x277CC88D0]);
    v27 = v8;
    v18 = v31;
    sub_219BF76E4();
    v32 = v14;
    v21 = v29;
    v22 = *(v29 + 48);
    v23 = v22(v27, 1, v9);
    v26 = a1;
    if (v23 == 1)
    {
      sub_219BDBD24();
      v24 = v33;
      sub_219BDB154();
      (*(v16 + 8))(v32, v31);
      v25 = v27;
      if (v22(v27, 1, v9) != 1)
      {
        sub_218BACB50(v25);
      }
    }

    else
    {
      (*(v16 + 8))(v32, v18);
      v24 = v33;
      (*(v21 + 32))(v33, v27, v9);
    }

    (*(v21 + 32))(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedConfigData_fetchInterval, v24, v9);
    v19 = v26;
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v1;
}

uint64_t sub_219940FDC(void *a1, __n128 a2)
{
  v4 = v2;
  sub_219941990(0, &qword_27CC21368, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199418E8();
  sub_219BF7B44();
  v12[15] = 0;
  sub_219BF77F4();
  if (!v3)
  {
    v12[14] = *(v4 + 32);
    v12[13] = 1;
    sub_2199419F4();
    sub_219BF7834();
    v12[12] = 2;
    sub_219BDB184();
    sub_219941A48(&qword_280EE9DE8, MEMORY[0x277CC88B0]);
    sub_219BF7834();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2199411CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656372756F73;
  if (v2 != 1)
  {
    v4 = 0x746E496863746566;
    v3 = 0xED00006C61767265;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x444964726F636572;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656372756F73;
  if (*a2 != 1)
  {
    v8 = 0x746E496863746566;
    v7 = 0xED00006C61767265;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x444964726F636572;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_2199412E0()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_21994138C(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_219941424(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_2199414CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_219941BF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2199414FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656372756F73;
  if (v2 != 1)
  {
    v5 = 0x746E496863746566;
    v4 = 0xED00006C61767265;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x444964726F636572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_219941564()
{
  v1 = 0x656372756F73;
  if (*v0 != 1)
  {
    v1 = 0x746E496863746566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444964726F636572;
  }
}

unint64_t sub_2199415C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219941BF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2199415F0(uint64_t a1)
{
  v2 = sub_2199418E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21994162C(uint64_t a1)
{
  v2 = sub_2199418E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219941668()
{

  v1 = OBJC_IVAR____TtC7NewsUI217TagFeedConfigData_fetchInterval;
  v2 = sub_219BDB184();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TagFeedConfigData(uint64_t a1)
{
  result = qword_280ED4ED8;
  if (!qword_280ED4ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219941760(uint64_t a1)
{
  result = sub_219BDB184();
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

unint64_t sub_219941818()
{
  result = qword_27CC21348;
  if (!qword_27CC21348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21348);
  }

  return result;
}

char **sub_21994186C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_219940B20(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_2199418E8()
{
  result = qword_27CC21358;
  if (!qword_27CC21358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21358);
  }

  return result;
}

unint64_t sub_21994193C()
{
  result = qword_27CC21360;
  if (!qword_27CC21360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21360);
  }

  return result;
}

void sub_219941990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2199418E8();
    v7 = a3(a1, &type metadata for TagFeedConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2199419F4()
{
  result = qword_27CC21370;
  if (!qword_27CC21370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21370);
  }

  return result;
}

uint64_t sub_219941A48(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_219BDB184();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_219941A8C()
{
  result = qword_27CC21378;
  if (!qword_27CC21378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21378);
  }

  return result;
}

unint64_t sub_219941AF4()
{
  result = qword_27CC21380;
  if (!qword_27CC21380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21380);
  }

  return result;
}

unint64_t sub_219941B4C()
{
  result = qword_27CC21388;
  if (!qword_27CC21388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21388);
  }

  return result;
}

unint64_t sub_219941BA4()
{
  result = qword_27CC21390;
  if (!qword_27CC21390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21390);
  }

  return result;
}

unint64_t sub_219941BF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_219941C54(char *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v71 = a3;
  v73 = a2;
  sub_218C6994C(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v72 = v5;
  v70 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v69 = (&v56 - v6);
  v62 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v62);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6994C(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v10 = v9;
  v66 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v63 = &v56 - v11;
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84(0);
  v16 = v15;
  v68 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v65 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v67 = &v56 - v19;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6994C(0, &qword_280EE5750, MEMORY[0x277D6D710]);
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v64 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v56 - v28;
  v30 = a1;
  sub_219BEB354();
  if ((*(v25 + 48))(v22, 1, v24) == 1)
  {
    v31 = sub_218A2D984;
    v32 = v22;
LABEL_5:
    sub_218C69A30(v32, v31);
    sub_2199424F8();
    v34 = swift_allocError();
    v36 = v69;
    v35 = v70;
    *v69 = v34;
    v37 = v72;
    (*(v35 + 104))(v36, *MEMORY[0x277D6DF68], v72);
    v73(v36);
    return (*(v35 + 8))(v36, v37);
  }

  (*(v25 + 32))(v29, v22, v24);
  sub_219BEB1C4();
  v33 = v68;
  if ((*(v68 + 48))(v14, 1, v16) == 1)
  {
    (*(v25 + 8))(v29, v24);
    v31 = sub_218A7BA30;
    v32 = v14;
    goto LABEL_5;
  }

  v39 = *(v33 + 32);
  v60 = v16;
  v39(v67, v14, v16);
  (*(v25 + 16))(v64, v29, v24);
  v40 = *(v66 + 16);
  v41 = v63;
  v58 = v66 + 16;
  v59 = v30;
  v57 = v40;
  v40(v63, v30, v10);
  *v8 = v61;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 8) = 23068672;
  swift_storeEnumTagMultiPayload();
  sub_218C698F4();
  sub_219BE5FB4();
  v42 = v10;
  sub_219BE69E4();
  sub_219BEB234();
  sub_218A7BAF8();
  sub_2187490E4();
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v74, v74[3]);
  v43 = v29;
  if (sub_219BE6E54())
  {
    v44 = MEMORY[0x277D6DF80];
    v45 = v69;
  }

  else
  {
    sub_218A7BB4C(0);
    v47 = *(v46 + 48);
    v48 = *(v46 + 64);
    v45 = v69;
    v57(v69, v41, v42);
    sub_218718690(v74, v45 + v47);
    v49 = *MEMORY[0x277D6D868];
    v50 = sub_219BE6DF4();
    (*(*(v50 - 8) + 104))(v45 + v48, v49, v50);
    v44 = MEMORY[0x277D6DF78];
  }

  v51 = v70;
  v52 = v72;
  (*(v70 + 104))(v45, *v44, v72);
  v73(v45);
  (*(v51 + 8))(v45, v52);
  v53 = *(v68 + 8);
  v54 = v60;
  v53(v65, v60);
  (*(v66 + 8))(v41, v42);
  v55 = *(v25 + 8);
  v55(v64, v24);
  v53(v67, v54);
  v55(v43, v24);
  return __swift_destroy_boxed_opaque_existential_1(v74);
}

uint64_t sub_219942464(uint64_t a1)
{
  v2 = sub_218B12884();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2199424A4()
{
  result = qword_280E95AD8;
  if (!qword_280E95AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E95AD8);
  }

  return result;
}

unint64_t sub_2199424F8()
{
  result = qword_27CC21398;
  if (!qword_27CC21398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21398);
  }

  return result;
}

unint64_t sub_219942560()
{
  result = qword_27CC213A0;
  if (!qword_27CC213A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC213A0);
  }

  return result;
}

void sub_2199425B4(uint64_t a1)
{
  v27 = *(a1 + 16);
  if (!v27)
  {
    return;
  }

  v2 = type metadata accessor for SportsHighlights(0);
  v3 = 0;
  v25 = a1 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));
  v26 = v2;
  v4 = MEMORY[0x277D84F90];
  v24 = *(*(v2 - 8) + 72);
  while (1)
  {
    v5 = *(v25 + v24 * v3 + *(v26 + 20));
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_219BF7214();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v4 >> 62;
    if (v4 >> 62)
    {
      v23 = sub_219BF7214();
      v10 = v23 + v7;
      if (__OFADD__(v23, v7))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v8)
      {
        v11 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_219BF7214();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    v4 = sub_219BF7364();
    v11 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v7)
    {
      goto LABEL_35;
    }

    v28 = v3;
    v30 = v4;
    v15 = v11 + 8 * v12 + 32;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_37;
      }

      sub_2187E7248(0);
      sub_219949BE0(&qword_280E8EBE0, sub_2187E7248, MEMORY[0x277D83988]);
      for (i = 0; i != v14; ++i)
      {
        v17 = sub_218A352D0(v29, i, v5);
        v19 = *v18;
        swift_unknownObjectRetain();
        (v17)(v29, 0);
        *(v15 + 8 * i) = v19;
      }
    }

    else
    {
      sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
      swift_arrayInitWithCopy();
    }

    v3 = v28;
    v4 = v30;
    if (v7 >= 1)
    {
      v20 = *(v11 + 16);
      v21 = __OFADD__(v20, v7);
      v22 = v20 + v7;
      if (v21)
      {
        goto LABEL_36;
      }

      *(v11 + 16) = v22;
    }

LABEL_4:
    if (++v3 == v27)
    {
      return;
    }
  }

  v14 = sub_219BF7214();
  if (v14)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v7 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_2199428EC(uint64_t a1)
{
  v1 = sub_219BF1934();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MySportsTodayFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 18;
  sub_2189AE994(0);
  v23 = sub_219BEE964();
  sub_2186E4EF4(0, &unk_280E8B8C0, sub_218D907D4, MEMORY[0x277D84560]);
  sub_218D907D4(0);
  v22 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09EC0;
  v13 = (v12 + v11);
  sub_21994D634(0, &qword_280E923B8, type metadata accessor for MySportsTodayFeedGroupConfigData, sub_219949B78, sub_219949BAC);
  sub_219BEDD14();
  (*(v2 + 16))(v4, v7, v1);
  sub_21994D5D4(v7, type metadata accessor for MySportsTodayFeedGroupConfigData);
  v14 = sub_219BF1784();
  v16 = v15;
  (*(v2 + 8))(v4, v1);
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v16;
  sub_2197C9C7C(0, &qword_280E91230, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D328E0]);
  swift_allocObject();
  *v13 = sub_219BEFB94();
  v18 = *MEMORY[0x277D32308];
  v19 = *(v9 + 104);
  v20 = v22;
  v19(v13, v18, v22);
  swift_allocObject();
  *(v13 + v10) = sub_219BEFB94();
  v19((v13 + v10), v18, v20);
  v24 = v23;
  sub_2191EE478(v12);
  return v24;
}

uint64_t sub_219942D04(uint64_t a1, uint64_t a2)
{
  v3[207] = v2;
  v3[201] = a2;
  v3[195] = a1;
  sub_2186E4EF4(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v3[213] = swift_task_alloc();
  sub_219BEF554();
  v3[219] = swift_task_alloc();
  v3[225] = swift_task_alloc();
  v4 = sub_219BED8D4();
  v3[231] = v4;
  v3[237] = *(v4 - 8);
  v3[238] = swift_task_alloc();
  v5 = sub_219BF1214();
  v3[239] = v5;
  v3[240] = *(v5 - 8);
  v3[241] = swift_task_alloc();
  v3[242] = type metadata accessor for MySportsTodayFeedGroupConfigData(0);
  v3[243] = swift_task_alloc();
  v3[244] = swift_task_alloc();
  v6 = sub_219BF1934();
  v3[245] = v6;
  v7 = *(v6 - 8);
  v3[246] = v7;
  v3[247] = *(v7 + 64);
  v3[248] = swift_task_alloc();
  v3[249] = swift_task_alloc();
  v3[250] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219942F74, 0, 0);
}

uint64_t sub_219942F74()
{
  v1 = v0[246];
  v2 = v0[245];
  v3 = v0[244];
  v4 = v0[243];
  v21 = v0[241];
  v5 = v0[240];
  v19 = v0[242];
  v20 = v0[239];
  v18 = v0[249];
  v0[251] = OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_config;
  sub_21994D634(0, &qword_280E923B8, type metadata accessor for MySportsTodayFeedGroupConfigData, sub_219949B78, sub_219949BAC);
  v0[252] = v6;
  sub_219BEDD14();
  v7 = *(v1 + 16);
  v0[253] = v7;
  v0[254] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v18, v3, v2);
  sub_21994D5D4(v3, type metadata accessor for MySportsTodayFeedGroupConfigData);
  sub_219BEF174();
  sub_219BEDD14();
  (*(v5 + 16))(v21, v4 + *(v19 + 28), v20);
  sub_21994D5D4(v4, type metadata accessor for MySportsTodayFeedGroupConfigData);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v8 = v0[249];
  v9 = v0[246];
  v10 = v0[245];
  v11 = v0[241];
  v12 = v0[240];
  v13 = v0[239];
  sub_219BF1774();

  (*(v12 + 8))(v11, v13);
  v14 = *(v9 + 8);
  v0[255] = v14;
  v0[256] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v8, v10);
  sub_219BEF164();
  v15 = v0[207];
  v0[257] = v0[177];
  __swift_project_boxed_opaque_existential_1((v15 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsFavoritesService), *(v15 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsFavoritesService + 24));
  v0[258] = sub_2191ABC74(1);
  v16 = swift_task_alloc();
  v0[259] = v16;
  *v16 = v0;
  v16[1] = sub_219943340;

  return MEMORY[0x2821D23D8](v0 + 175);
}

uint64_t sub_219943340()
{
  *(*v1 + 2080) = v0;

  if (v0)
  {
    v2 = sub_21994481C;
  }

  else
  {
    v2 = sub_219943474;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219943474()
{
  v1 = *(v0 + 1400);
  *(v0 + 2088) = v1;
  v2 = *(v0 + 1408);
  *(v0 + 2096) = v2;
  if (v1 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_5;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v3 = *(v0 + 1984);
    v4 = *(v0 + 1968);
    v5 = *(v0 + 1960);
    v6 = *(v0 + 1656);
    v7 = *(v0 + 1608);
    (*(v0 + 2024))(v3, *(v0 + 2000), v5);
    v8 = (*(v4 + 80) + 48) & ~*(v4 + 80);
    v9 = swift_allocObject();
    *(v0 + 2104) = v9;
    *(v9 + 2) = v6;
    *(v9 + 3) = v7;
    *(v9 + 4) = v1;
    *(v9 + 5) = v2;
    (*(v4 + 32))(&v9[v8], v3, v5);

    v10 = MEMORY[0x277D83940];
    sub_2186E4EF4(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
    swift_asyncLet_begin();
    v11 = swift_allocObject();
    *(v0 + 2112) = v11;
    *(v11 + 16) = v6;
    *(v11 + 24) = v7;

    sub_2186E4EF4(0, &unk_27CC213B0, MEMORY[0x277D34B80], v10);
    swift_asyncLet_begin();
    v12 = swift_task_alloc();
    *(v0 + 2120) = v12;
    *v12 = v0;
    v12[1] = sub_2199438A8;
    v13 = *(v0 + 2056);
    v14 = *(v0 + 2000);

    return sub_219946F38(v2, v13, v14);
  }

  if (v2 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_5;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

  v16 = *(v0 + 2040);
  v17 = *(v0 + 2000);
  v18 = *(v0 + 1960);

  v19 = sub_219BEEDD4();
  sub_219949BE0(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D323F0], v19);
  swift_willThrow();

  v16(v17, v18);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2199438A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v4;
  v7 = *v4;
  v6[266] = a1;
  v6[267] = a2;
  v6[268] = a3;
  v6[269] = v3;

  if (v3)
  {

    return MEMORY[0x2822009F8](sub_219944938, 0, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v6[270] = v8;
    *v8 = v7;
    v8[1] = sub_219943A4C;
    v9 = v6[262];
    v10 = v6[257];
    v11 = v6[250];
    v12 = v6[201];

    return sub_21994AFEC(v12, v10, v9, a2, v11);
  }
}

uint64_t sub_219943A4C(uint64_t a1)
{
  *(*v1 + 2168) = a1;

  return MEMORY[0x2822009F8](sub_219943B4C, 0, 0);
}

uint64_t sub_219943B4C()
{
  sub_2199425B4(v0[271]);
  v2 = v1;
  v0[272] = v1;
  v3 = swift_task_alloc();
  v0[273] = v3;
  *v3 = v0;
  v3[1] = sub_219943C18;
  v4 = v0[267];
  v5 = v0[266];
  v6 = v0[262];
  v7 = v0[257];
  v8 = v0[250];
  v9 = v0[201];

  return sub_21994BD1C(v9, v7, v6, v5, v4, v2, v8);
}

uint64_t sub_219943C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[274] = a1;
  v5[275] = a2;
  v5[276] = a3;
  v5[277] = v3;

  if (v3)
  {
    v6 = sub_219943EB0;
  }

  else
  {

    v6 = sub_219943D58;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_219943D58()
{
  v1 = v0[277];
  v2 = sub_2199476E0(v0[201], v0[274], v0[275], v0[276], v0[266], v0[267], v0[268]);
  v0[278] = v1;
  v0[279] = v2;
  v0[280] = v3;
  if (v1)
  {
    sub_2187A9CC4(v0[274], v0[275]);

    return MEMORY[0x282200920](v0 + 82, v0 + 189, sub_219944B3C, v0 + 190, v4);
  }

  else
  {

    return MEMORY[0x282200928](v0 + 2, v0 + 183, sub_219944100, v0 + 202);
  }
}

uint64_t sub_219943EB0()
{

  return MEMORY[0x282200920](v0 + 656, v0 + 1512, sub_219943F74, v0 + 1424, v1);
}

uint64_t sub_219943FCC()
{
  v1 = v0[255];
  v2 = v0[250];
  v3 = v0[245];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_219944100()
{
  *(v0 + 2248) = *(v0 + 1464);

  return MEMORY[0x282200928](v0 + 656, v0 + 1512, sub_219944170, v0 + 1664);
}

uint64_t sub_219944170()
{
  v1 = v0[189];
  v0[282] = v1;

  v2 = swift_task_alloc();
  v0[283] = v2;
  *v2 = v0;
  v2[1] = sub_21994423C;
  v3 = v0[281];
  v4 = v0[280];
  v5 = v0[279];
  v6 = v0[271];
  v7 = v0[250];
  v8 = v0[201];

  return sub_219947E04(v8, v7, v5, v4, v3, v6, v1);
}

uint64_t sub_21994423C(uint64_t a1)
{
  v3 = *v2;
  v3[167] = v2;
  v3[168] = a1;
  v3[169] = v1;
  v3[284] = v1;

  if (v1)
  {
    v4 = sub_219944CC8;
  }

  else
  {

    v4 = sub_2199443A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2199443A4()
{
  v8 = v0[274];
  v6 = v0[275];
  if (v8)
  {
  }

  v4 = v0[238];
  v1 = v0[237];
  v7 = v0[231];
  v5 = v0[195];
  sub_219BEDCB4();
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for MySportsTodayFeedGroupKnobs(0);
  sub_2197C9C7C(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  sub_219BEEC84();
  sub_219BED834();
  sub_2187A9CC4(v8, v6);

  (*(v1 + 32))(v5, v4, v7);
  type metadata accessor for TodayFeedGroup(0);
  swift_storeEnumTagMultiPayload();
  sub_2197C9C7C(0, &qword_280E91700, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D324E8]);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x282200920](v0 + 82, v0 + 189, sub_21994468C, v0 + 226, v2);
}

uint64_t sub_2199446E4()
{
  v1 = v0[255];
  v2 = v0[250];
  v3 = v0[245];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21994481C()
{
  v1 = v0[255];
  v2 = v0[250];
  v3 = v0[245];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_219944938()
{

  return MEMORY[0x282200920](v0 + 656, v0 + 1512, sub_2199449B0, v0 + 1296, v1);
}

uint64_t sub_219944A08()
{
  v1 = v0[255];
  v2 = v0[250];
  v3 = v0[245];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_219944B94()
{
  v1 = v0[255];
  v2 = v0[250];
  v3 = v0[245];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_219944CC8()
{
  v1 = *(v0 + 2200);
  v2 = *(v0 + 2192);

  sub_2187A9CC4(v2, v1);

  return MEMORY[0x282200920](v0 + 656, v0 + 1512, sub_219944D9C, v0 + 1712, v3);
}

uint64_t sub_219944DF4()
{
  v1 = v0[255];
  v2 = v0[250];
  v3 = v0[245];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_219944F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_2193CEC5C;

  return sub_219944FE0(a3, a4, a6);
}

uint64_t sub_219944FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  v5 = sub_219BDBD34();
  v4[34] = v5;
  v4[35] = *(v5 - 8);
  v4[36] = swift_task_alloc();
  v6 = sub_219BF4264();
  v4[37] = v6;
  v4[38] = *(v6 - 8);
  v4[39] = swift_task_alloc();
  type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind(0);
  v4[40] = swift_task_alloc();
  sub_219BF4CF4();
  v4[41] = swift_task_alloc();
  sub_2186E4EF4(0, &unk_280E8FE40, MEMORY[0x277D34408], MEMORY[0x277D83D88]);
  v4[42] = swift_task_alloc();
  v4[43] = type metadata accessor for SportsConfiguringDataVisualizationRequest(0);
  v4[44] = swift_task_alloc();
  v7 = sub_219BF0BD4();
  v4[45] = v7;
  v4[46] = *(v7 - 8);
  v4[47] = swift_task_alloc();
  v8 = sub_219BF0644();
  v4[48] = v8;
  v4[49] = *(v8 - 8);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2199452A8, 0, 0);
}

uint64_t sub_2199452A8()
{
  v1 = v0;
  v4 = v0 + 50;
  v3 = v0[50];
  v2 = v4[1];
  v5 = v1[48];
  v6 = v1[49];
  sub_219BEF154();
  (*(v6 + 104))(v3, *MEMORY[0x277D32EF8], v5);
  sub_219949BE0(&unk_280E90EE0, MEMORY[0x277D32F00], MEMORY[0x277D32F10]);
  v7 = sub_219BF53A4();
  v8 = *(v6 + 8);
  v8(v3, v5);
  v8(v2, v5);
  if ((v7 & 1) == 0)
  {
    v15 = v1[46];
    v14 = v1[47];
    v16 = v1[45];
    v1[52] = OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_knobs;
    v1[53] = type metadata accessor for MySportsTodayFeedGroupKnobs(0);
    sub_219BEF134();
    sub_219BEF524();
    v17 = *(v15 + 8);
    v1[54] = v17;
    v1[55] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v14, v16);
    v60 = v1[26];
    v1[56] = v60;
    sub_219BEF134();
    sub_219BEF524();
    v61 = v17;
    v17(v14, v16);
    v18 = v1[27];
    v1[57] = v18;
    sub_219BF1724();
    v19 = sub_219BF5AA4();

    if (v19 >> 62)
    {
      v20 = sub_219BF7214();
      if (v20)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
LABEL_9:
        v64 = MEMORY[0x277D84F90];
        v21 = sub_21870B65C(0, v20 & ~(v20 >> 63), 0);
        if (v20 < 0)
        {
          __break(1u);
          return MEMORY[0x2821D23D8](v21);
        }

        v62 = v18;
        v58 = v1;
        v22 = 0;
        v23 = v64;
        v24 = v19;
        v25 = v19 & 0xC000000000000001;
        v26 = v19;
        do
        {
          if (v25)
          {
            MEMORY[0x21CECE0F0](v22, v24);
          }

          else
          {
          }

          v27 = sub_219BF3ED4();
          v29 = v28;

          v31 = *(v64 + 16);
          v30 = *(v64 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_21870B65C((v30 > 1), v31 + 1, 1);
          }

          ++v22;
          *(v64 + 16) = v31 + 1;
          v32 = v64 + 16 * v31;
          *(v32 + 32) = v27;
          *(v32 + 40) = v29;
          v24 = v26;
        }

        while (v20 != v22);

        v1 = v58;
        v18 = v62;
LABEL_20:
        v1[58] = sub_218845F78(v23);

        if (qword_280E8D7A0 != -1)
        {
          swift_once();
        }

        v33 = v1[47];
        v34 = v1[42];
        v57 = v1[44];
        v59 = v1[43];
        v55 = v1[45];
        v56 = v1[40];
        v63 = v1[33];
        v35 = qword_280F616D8;
        v1[59] = qword_280F616D8;
        sub_2186F20D4(0);
        v1[60] = v36;
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_219C0B8C0;
        v38 = MEMORY[0x277D83B88];
        v39 = MEMORY[0x277D83C10];
        *(v37 + 56) = MEMORY[0x277D83B88];
        *(v37 + 64) = v39;
        *(v37 + 32) = v60;
        *(v37 + 96) = v38;
        *(v37 + 104) = v39;
        *(v37 + 72) = v18;
        v40 = MEMORY[0x277D837D0];
        v41 = sub_219BF5D54();
        v43 = v42;
        *(v37 + 136) = v40;
        v44 = sub_2186FC3BC();
        v1[61] = v44;
        *(v37 + 144) = v44;
        *(v37 + 112) = v41;
        *(v37 + 120) = v43;
        v45 = sub_219BF6214();
        sub_219BE5314("My Sports will fetch scores with min=%ld and max=%ld, curated scores=%{public}@", 79, 2, &dword_2186C1000, v35, v45, v37);

        sub_219BEF134();
        sub_219BEF524();
        v61(v33, v55);
        sub_219BF4CE4();
        sub_219BF4CA4();
        v46 = *MEMORY[0x277D34400];
        v47 = sub_219BF43B4();
        v48 = *(v47 - 8);
        (*(v48 + 104))(v34, v46, v47);
        (*(v48 + 56))(v34, 0, 1, v47);
        v49 = sub_219BF4F64();
        (*(*(v49 - 8) + 56))(v56, 6, 6, v49);
        sub_218F6B224(v34, v57);
        sub_21994D504(v56, v57 + v59[5], type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind);
        v50 = (v57 + v59[6]);
        *v50 = 0;
        v50[1] = 0;
        sub_21994D5D4(v56, type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind);
        sub_21994D6C0(v34, &unk_280E8FE40, MEMORY[0x277D34408]);
        v51 = (v57 + v59[7]);
        *v51 = 0x7374726F7053796DLL;
        v51[1] = 0xE800000000000000;
        v52 = *(v63 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsConfiguringDataService + 8);
        ObjectType = swift_getObjectType();
        v1[62] = (*(v52 + 8))(v57, ObjectType, v52);
        v54 = swift_task_alloc();
        v1[63] = v54;
        *v54 = v1;
        v54[1] = sub_219945A9C;
        v21 = v1[39];

        return MEMORY[0x2821D23D8](v21);
      }
    }

    v23 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v9 = qword_280F616D8;
  v10 = sub_219BF6214();
  sub_219BE5314("My Sports will omit scores because building feed for offline mode", 65, 2, &dword_2186C1000, v9, v10, MEMORY[0x277D84F90]);

  v11 = v1[1];
  v12 = MEMORY[0x277D84F90];

  return v11(v12);
}

uint64_t sub_219945A9C()
{
  *(*v1 + 512) = v0;

  if (v0)
  {

    v2 = sub_219946148;
  }

  else
  {
    v2 = sub_219945BCC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

char *sub_219945BCC(uint64_t a1)
{
  v59 = *(v1 + 464);
  v57 = *(v1 + 472);
  v58 = *(v1 + 456);
  v55 = *(v1 + 432);
  v2 = *(v1 + 376);
  v54 = *(v1 + 360);
  v56 = *(v1 + 248);
  v53 = sub_219BF4234();
  sub_219BEF134();
  v3 = sub_219BEF264();
  v4 = sub_219BEF264();
  sub_219BEF524();
  v5 = *(v1 + 232);
  v6 = sub_219BF0BC4();
  v7 = MEMORY[0x277D84FA0];
  sub_2194796A0(MEMORY[0x277D84FA0], v6);
  v9 = v8;
  sub_219BEF524();
  v55(v2, v54);
  v10 = *(v1 + 521);
  *(v1 + 104) = v57;
  *(v1 + 112) = 0x7374726F7053796DLL;
  *(v1 + 120) = 0xE800000000000000;
  *(v1 + 128) = v58;
  *(v1 + 136) = v59;
  *(v1 + 144) = v3;
  *(v1 + 152) = v4;
  *(v1 + 160) = v5;
  *(v1 + 168) = v9;
  *(v1 + 176) = v10;
  v11 = *(v1 + 152);
  *(v1 + 80) = *(v1 + 168);
  v12 = *(v1 + 120);
  v13 = *(v1 + 136);
  *(v1 + 64) = v11;
  *(v1 + 48) = v13;
  *(v1 + 16) = *(v1 + 104);
  *(v1 + 184) = v7;
  *(v1 + 96) = v7;
  *(v1 + 32) = v12;
  if (v56 >> 62)
  {
    v14 = sub_219BF7214();
  }

  else
  {
    v14 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = *(v1 + 472);
  if (v14)
  {
    v60 = MEMORY[0x277D84F90];
    v16 = v15;
    result = sub_21870B65C(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    v18 = v60;
    if ((v56 & 0xC000000000000001) != 0)
    {
      v19 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v19, *(v1 + 248));
        v20 = [swift_unknownObjectRetain() identifier];
        v21 = sub_219BF5414();
        v23 = v22;

        swift_unknownObjectRelease_n();
        v25 = *(v60 + 16);
        v24 = *(v60 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_21870B65C((v24 > 1), v25 + 1, 1);
        }

        ++v19;
        *(v60 + 16) = v25 + 1;
        v26 = v60 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v23;
      }

      while (v14 != v19);
    }

    else
    {
      v45 = *(v1 + 248) + 32;
      do
      {
        v46 = [swift_unknownObjectRetain_n() identifier];
        v47 = sub_219BF5414();
        v49 = v48;

        swift_unknownObjectRelease_n();
        v51 = *(v60 + 16);
        v50 = *(v60 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_21870B65C((v50 > 1), v51 + 1, 1);
        }

        *(v60 + 16) = v51 + 1;
        v52 = v60 + 16 * v51;
        *(v52 + 32) = v47;
        *(v52 + 40) = v49;
        v45 += 8;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v27 = v15;
    v18 = MEMORY[0x277D84F90];
  }

  v28 = *(v1 + 280);
  v29 = *(v1 + 288);
  v30 = *(v1 + 272);
  v31 = sub_218845F78(v18);

  sub_219BDBD24();
  sub_219AC4E80(v53, v1 + 16, v31, v29);
  v33 = v32;

  (*(v28 + 8))(v29, v30);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_219C09EC0;
  if (v53 >> 62)
  {
    v35 = sub_219BF7214();
  }

  else
  {
    v35 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = MEMORY[0x277D83B88];
  v37 = MEMORY[0x277D83C10];
  *(v34 + 56) = MEMORY[0x277D83B88];
  *(v34 + 64) = v37;
  *(v34 + 32) = v35;
  if (v33 >> 62)
  {
    v38 = sub_219BF7214();
  }

  else
  {
    v38 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = *(v1 + 448);
  *(v34 + 96) = v36;
  *(v34 + 104) = v37;
  *(v34 + 72) = v38;
  sub_219BF6214();
  sub_219BE5314("My sports fetched recent %ld scores and sorted to %ld", v53, v54);

  v40 = *(v1 + 352);
  v42 = *(v1 + 304);
  v41 = *(v1 + 312);
  v43 = *(v1 + 296);
  if (v38 < v39)
  {

    v33 = MEMORY[0x277D84F90];
  }

  sub_218F6B454(v1 + 104);
  (*(v42 + 8))(v41, v43);
  sub_21994D5D4(v40, type metadata accessor for SportsConfiguringDataVisualizationRequest);

  v44 = *(v1 + 8);

  return v44(v33);
}

uint64_t sub_219946148(uint64_t a1)
{
  v2 = v1[64];
  v3 = v1[61];
  v4 = v1[59];
  v5 = v1[44];
  v6 = sub_219BF61F4();
  v7 = swift_allocObject();
  v1[24] = 0;
  *(v7 + 16) = xmmword_219C09BA0;
  v1[25] = 0xE000000000000000;
  v1[28] = v2;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v8 = v1[24];
  v9 = v1[25];
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = v3;
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  sub_219BE5314("My Sports failed to fetch recent scores, error=%{public}@", 57, 2, &dword_2186C1000, v4, v6, v7);

  sub_21994D5D4(v5, type metadata accessor for SportsConfiguringDataVisualizationRequest);

  v10 = v1[1];
  v11 = MEMORY[0x277D84F90];

  return v10(v11);
}

uint64_t sub_219946310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_219515964;

  return sub_2199463B0(a3);
}

uint64_t sub_2199463B0(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_219BE4F14();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_219BF0BD4();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  sub_2186E4EF4(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v2[17] = swift_task_alloc();
  v5 = sub_219BDBD34();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21994659C, 0, 0);
}

uint64_t sub_21994659C()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = (v0[10] + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsOnboardingManager);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 16))(v5, v6);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21994D6C0(v0[17], &qword_280EE9C40, MEMORY[0x277CC9578]);
LABEL_10:
    v28 = v0[15];
    v27 = v0[16];
    v29 = v0[14];
    type metadata accessor for MySportsTodayFeedGroupKnobs(0);
    sub_219BEF134();
    sub_219BEF524();
    v30 = *(v28 + 8);
    v30(v27, v29);
    v31 = v0[4];
    v0[23] = v31;
    sub_219BEF134();
    sub_219BEF524();
    v30(v27, v29);
    v32 = v0[5];
    v0[24] = v32;
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v33 = v0[10];
    v0[25] = qword_280F616D8;
    sub_2186F20D4(0);
    v0[26] = v34;
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_219C09EC0;
    v36 = MEMORY[0x277D83B88];
    v37 = MEMORY[0x277D83C10];
    *(v35 + 56) = MEMORY[0x277D83B88];
    *(v35 + 64) = v37;
    *(v35 + 32) = v31;
    *(v35 + 96) = v36;
    *(v35 + 104) = v37;
    *(v35 + 72) = v32;
    sub_219BF6214();
    sub_219BE5314("My Sports fetching recommendations with min=%ld and max=%ld", v41, v42);

    __swift_project_boxed_opaque_existential_1((v33 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_recommendationManager), *(v33 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_recommendationManager + 24));
    v38 = off_282A790C0[0];
    type metadata accessor for SportsRecommendationManager();
    v0[27] = v38();
    v39 = swift_task_alloc();
    v0[28] = v39;
    *v39 = v0;
    v39[1] = sub_219946AF0;
    v40 = v0[13];

    return MEMORY[0x2821D23D8](v40);
  }

  v8 = v0[19];
  v7 = v0[20];
  v10 = v0[15];
  v9 = v0[16];
  v42 = v0[14];
  v43 = v0[18];
  (*(v8 + 32))(v0[22], v0[17]);
  type metadata accessor for MySportsTodayFeedGroupKnobs(0);
  sub_219BEF134();
  sub_219BEF524();
  (*(v10 + 8))(v9, v42);
  sub_219BDBBF4();
  sub_219BDBD24();
  v11 = sub_219BDBC24();
  v12 = *(v8 + 8);
  v12(v7, v43);
  if ((v11 & 1) == 0)
  {
    v25 = v0[22];
    v26 = v0[18];
    v12(v0[21], v26);
    v12(v25, v26);
    goto LABEL_10;
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v14 = v0[21];
  v13 = v0[22];
  v15 = v0[18];
  v16 = qword_280F616D8;
  sub_2186F20D4(0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_219C09BA0;
  v18 = sub_219BDBBA4();
  v20 = v19;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = sub_2186FC3BC();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  v21 = sub_219BF6214();
  sub_219BE5314("My Sports ignoring recommendations, onboarded completed date threshold not reached=%{public}@", 93, 2, &dword_2186C1000, v16, v21, v17);

  v12(v14, v15);
  v12(v13, v15);

  v22 = v0[1];
  v23 = MEMORY[0x277D84F90];

  return v22(v23);
}

uint64_t sub_219946AF0()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_219946DAC;
  }

  else
  {

    v2 = sub_219946C0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219946C0C(__n128 a1)
{
  v2 = v1[23];
  sub_219BEF0B4();
  swift_unknownObjectRetain();

  swift_getObjectType();
  sub_219BF6974();
  swift_unknownObjectRelease();
  v3 = sub_219BE4F04();

  if (*(v3 + 16) >= v2)
  {
    (*(v1[12] + 8))(v1[13], v1[11]);
  }

  else
  {
    v4 = v1[25];
    v6 = v1[12];
    v5 = v1[13];
    v7 = v1[11];

    v8 = sub_219BF6214();
    v3 = MEMORY[0x277D84F90];
    v9 = sub_219BE5314("My Sports recommendations did not meet minimum item threshold", 61, 2, &dword_2186C1000, v4, v8, MEMORY[0x277D84F90]);
    (*(v6 + 8))(v5, v7, v9);
  }

  v10 = v1[1];

  return v10(v3);
}

uint64_t sub_219946DAC()
{
  v1 = v0[29];
  v2 = v0[25];

  v3 = sub_219BF61F4();
  v4 = swift_allocObject();
  v0[2] = 0;
  *(v4 + 16) = xmmword_219C09BA0;
  v0[3] = 0xE000000000000000;
  v0[6] = v1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v5 = v0[2];
  v6 = v0[3];
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_219BE5314("My Sports failed to fetch recommendations, error=%{public}@", 59, 2, &dword_2186C1000, v2, v3, v4);

  v7 = v0[1];
  v8 = MEMORY[0x277D84F90];

  return v7(v8);
}

uint64_t sub_219946F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = type metadata accessor for MySportsTodayFeedGroupConfigData(0);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for SportsSectionCurationRequest(0);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219947000, 0, 0);
}

uint64_t sub_219947000()
{
  v1 = v0;
  v4 = v0 + 9;
  v3 = v0[9];
  v2 = v4[1];
  v5 = v1[6];
  v6 = *(v5 + 16);
  sub_21994D634(0, &qword_280E923B8, type metadata accessor for MySportsTodayFeedGroupConfigData, sub_219949B78, sub_219949BAC);
  swift_unknownObjectRetain();
  sub_219BEDD14();
  v7 = (v2 + *(v3 + 20));
  v8 = *v7;
  v9 = v7[1];

  sub_21994D5D4(v2, type metadata accessor for MySportsTodayFeedGroupConfigData);
  v10 = *(v5 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);

  sub_219BF1724();
  v11 = sub_219BF5AB4();

  if (v11 >> 62)
  {
    v12 = sub_219BF7214();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = v8;
  v43 = v6;
  v41 = v9;
  if (v12)
  {
    v44 = MEMORY[0x277D84F90];
    v13 = sub_21870B65C(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return MEMORY[0x2821D23D8](v13);
    }

    v40 = v10;
    v14 = 0;
    v15 = v44;
    v16 = v11;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v14, v16);
      }

      else
      {
      }

      v17 = sub_219BF16A4();
      v19 = v18;

      v21 = *(v44 + 16);
      v20 = *(v44 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_21870B65C((v20 > 1), v21 + 1, 1);
      }

      ++v14;
      *(v44 + 16) = v21 + 1;
      v22 = v44 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v16 = v11;
    }

    while (v12 != v14);

    v10 = v40;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v23 = sub_2194B1FF0(v15, v10);

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v25 = v1[11];
  v24 = v1[12];
  v26 = v1[5];
  v27 = qword_280F616D8;
  v28 = MEMORY[0x277D30BC8];
  v1[13] = qword_280F616D8;
  v29 = *v28;
  v30 = *(v25 + 40);
  v31 = *MEMORY[0x277D32958];
  v32 = sub_219BEFBD4();
  (*(*(v32 - 8) + 104))(v24 + v30, v31, v32);
  v33 = v27;
  v34 = v29;
  sub_219A09690(v26, v35);
  *v24 = v26;
  v24[1] = v43;
  v24[2] = v42;
  v24[3] = v41;
  v24[4] = v23;
  v24[5] = v33;
  v24[6] = v34;
  *(v24 + *(v25 + 44)) = v36;

  v37 = sub_219BF6214();
  sub_219BE5314("My sports will fetch curations...", 33, 2, &dword_2186C1000, v33, v37, MEMORY[0x277D84F90]);
  v1[14] = sub_21924C6E8(v24);
  v38 = swift_task_alloc();
  v1[15] = v38;
  *v38 = v1;
  v38[1] = sub_219947410;
  v13 = (v1 + 2);

  return MEMORY[0x2821D23D8](v13);
}

uint64_t sub_219947410()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_219947610;
  }

  else
  {

    v2 = sub_21994752C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21994752C(uint64_t a1)
{
  v2 = v1[12];
  v3 = v1[13];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = sub_219BF6214();
  sub_219BE5314("My sports will fetch curations...done", 37, 2, &dword_2186C1000, v3, v7, MEMORY[0x277D84F90]);
  sub_21994D5D4(v2, type metadata accessor for SportsSectionCurationRequest);

  v8 = v1[1];

  return v8(v4, v5, v6);
}

uint64_t sub_219947610()
{
  v1 = v0[13];
  v2 = v0[12];

  v3 = sub_219BF6214();
  sub_219BE5314("My sports will fetch curations...done", 37, 2, &dword_2186C1000, v1, v3, MEMORY[0x277D84F90]);
  sub_21994D5D4(v2, type metadata accessor for SportsSectionCurationRequest);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2199476E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a7;
  v47 = a4;
  v70 = a3;
  v48 = a2;
  v34[1] = a1;
  v10 = sub_219BF0BD4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v7;
  type metadata accessor for MySportsTodayFeedGroupKnobs(0);
  v39 = a5;

  v40 = a6;

  sub_219BEF134();
  sub_219BEF524();
  v14 = *(v11 + 8);
  v14(v13, v10);
  v46 = v49;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v36 = qword_280F616D8;
  sub_218E59C4C(v48);

  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v44 = v49;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v35 = v49;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v43 = v49;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v42 = v49;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v41 = v49;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v15 = v49;
  v16 = v35;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v17 = v49;
  v18 = sub_219BF6214();
  v19 = v36;
  sub_219BE5314("My sports will create heroes and sections...", 44, 2, &dword_2186C1000, v36, v18, MEMORY[0x277D84F90]);
  v65[0] = v44;
  v65[1] = v16;
  v65[2] = v43;
  v65[3] = v42;
  v65[4] = v41;
  v65[5] = v15;
  v37 = v15;
  v65[6] = v17;
  v65[7] = v48;
  v20 = v47;
  v65[8] = v70;
  v65[9] = v47;
  v21 = v39;
  v22 = v40;
  v65[10] = v39;
  v65[11] = v40;
  v23 = v45;
  v65[12] = v45;
  v66 = v46;
  *&v67[3] = *&v69[3];
  *v67 = *v69;
  v68 = v19;
  sub_2197C99D8(v65, &v49);
  v24 = v38;
  v38 = sub_21924D498(v65);
  v26 = v25;
  if (v24)
  {
    v49 = v44;
    v50 = v16;
    v51 = v43;
    v52 = v42;
    v53 = v41;
    v54 = v37;
    v55 = v17;
    v56 = v48;
    v57 = v70;
    v58 = v20;
    v59 = v21;
    v60 = v22;
    v61 = v23;
    v62 = v46;
    *v63 = *v69;
    *&v63[3] = *&v69[3];
    v64 = v19;
    sub_2197C9A34(&v49);
    v27 = v65;
  }

  else
  {
    sub_2197C9A34(v65);
    sub_2186F20D4(0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_219C09BA0;
    v29 = sub_219458290(v38, v26);
    v31 = v30;
    *(v28 + 56) = MEMORY[0x277D837D0];
    *(v28 + 64) = sub_2186FC3BC();
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    v32 = sub_219BF6214();
    sub_219BE5314("My sports will create heroes and sections...done, result=%{public}@", 67, 2, &dword_2186C1000, v19, v32, v28);

    v49 = v44;
    v50 = v16;
    v51 = v43;
    v52 = v42;
    v53 = v41;
    v54 = v37;
    v55 = v17;
    v56 = v48;
    v57 = v70;
    v58 = v47;
    v59 = v39;
    v60 = v40;
    v61 = v23;
    v62 = v46;
    *v63 = *v69;
    *&v63[3] = *&v69[3];
    v64 = v19;
    v27 = &v49;
  }

  sub_2197C9A34(v27);
  return v38;
}