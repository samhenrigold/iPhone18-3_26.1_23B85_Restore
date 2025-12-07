double sub_2198B2C38(uint64_t a1)
{
  v2 = v1;
  sub_219BE12E4();
  sub_218707A80(&qword_280EE8090, MEMORY[0x277D2F130], MEMORY[0x277D2F128]);
  sub_219BDD1D4();
  sub_219BE14A4();
  sub_218707A80(&qword_280EE8010, MEMORY[0x277D2F280], MEMORY[0x277D2F278]);
  sub_219BDD1D4();
  sub_219BE16D4();
  sub_218707A80(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
  sub_219BDD1D4();
  v3 = sub_219BDD224();
  sub_219BE1524();
  sub_218707A80(&qword_280EE7FE0, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
  sub_219BDD1D4();
  *(v2 + 40) = v3;

  return result;
}

void sub_2198B2E44(uint64_t a1, double a2)
{
  v5 = type metadata accessor for AudioFeedTrack(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  *&v8 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  if (([*a1 respondsToSelector_] & 1) == 0)
  {
    return;
  }

  v35 = v11;
  v12 = [v10 narrativeTrackSample];
  if (!v12)
  {
    v23 = v35;

    return;
  }

  v13 = v12;
  sub_2197883C8();
  v14 = sub_219BF6DD4();

  if ((v14 & 1) == 0)
  {
    return;
  }

  v15 = *(v5 + 40);
  v16 = *(a1 + v15);
  if (v16)
  {
    [*(a1 + v15) duration];
    v18 = v17;
    [v35 embeddedUpsellStartTime];
    if (v18 + v19 > a2)
    {
      goto LABEL_15;
    }

    [v16 duration];
    v21 = v20;
    [v35 embeddedUpsellStartTime];
    if (v21 + v22 <= 0.0)
    {
      goto LABEL_15;
    }

LABEL_13:
    v26 = *(v2 + 112);
    if (*(v26 + 73))
    {
      return;
    }

    sub_2187361B0(a1, &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioFeedTrack);
    v27 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v10;
    *(v28 + 24) = v2;
    sub_21872D24C(v9, v28 + v27, type metadata accessor for AudioFeedTrack);

    swift_unknownObjectRetain();

    sub_219BDD154();

    *(v26 + 73) = 1;
    goto LABEL_19;
  }

  [v35 embeddedUpsellEndTime];
  if (v24 <= a2)
  {
    [v35 embeddedUpsellEndTime];
    if (v25 > 0.0)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  [v35 embeddedUpsellStartTime];
  if (v29 <= a2)
  {
    [v35 embeddedUpsellStartTime];
    if (v30 > 0.0)
    {
      v31 = *(v2 + 112);
      if ((*(v31 + 72) & 1) == 0)
      {
        sub_2187361B0(a1, &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioFeedTrack);
        v32 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v33 = swift_allocObject();
        *(v33 + 16) = v10;
        *(v33 + 24) = v2;
        sub_21872D24C(v9, v33 + v32, type metadata accessor for AudioFeedTrack);
        swift_unknownObjectRetain();

        sub_219BDD154();

        *(v31 + 72) = 1;
LABEL_19:
      }
    }
  }
}

uint64_t sub_2198B31E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v122 = a8;
  v144 = a7;
  v143 = a6;
  v147 = a5;
  v148 = a4;
  v159 = a3;
  v161 = a1;
  v126 = sub_219BDBD34();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v124 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_219BDF864();
  v119 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v121 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D83D88];
  sub_218729EFC(0, &qword_280EE8648, MEMORY[0x277D2DDE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v116 = &v102 - v15;
  v115 = sub_219BDF884();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v149 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_219BE03D4();
  v118 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v117 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729EFC(0, &unk_27CC20570, MEMORY[0x277D2F048], v13);
  MEMORY[0x28223BE20](v18 - 8);
  v106 = &v102 - v19;
  v142 = sub_219BE11E4();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v113 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_219BE0774();
  v140 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v145 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_219BDF354();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_219BEFBD4();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v131 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_219BDF1A4();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BE1714();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_219BE09E4();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_219BDF104();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729EFC(0, &qword_280EE8330, MEMORY[0x277D2E738], v13);
  MEMORY[0x28223BE20](v28 - 8);
  v130 = &v102 - v29;
  v129 = sub_219BE0724();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v105 = &v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_219BDF0E4();
  v153 = *(v151 - 1);
  MEMORY[0x28223BE20](v151);
  v150 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_219BE1794();
  ObjectType = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v102 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21978811C();
  sub_218729EFC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v158 = v35;
  v36 = sub_219BDCD44();
  v37 = *(v36 - 8);
  v157 = *(v37 + 72);
  v38 = *(v37 + 80);
  v39 = (v38 + 32) & ~v38;
  v40 = swift_allocObject();
  v160 = xmmword_219C09BA0;
  *(v40 + 16) = xmmword_219C09BA0;
  v41 = *MEMORY[0x277CEAD18];
  v42 = *(v37 + 104);
  v42(v40 + v39, v41, v36);
  v155 = "opAudioSessionManager";
  sub_218707A80(&unk_27CC20580, MEMORY[0x277D2F900], MEMORY[0x277D2F8F8]);
  sub_219BDCCC4();

  (*(ObjectType + 8))(v34, v32);
  v43 = v42;
  ObjectType = swift_getObjectType();
  v44 = v150;
  sub_219BF67F4();
  v156 = v38;
  v45 = swift_allocObject();
  *(v45 + 16) = v160;
  v154 = v36;
  v42(v45 + v39, v41, v36);
  sub_218707A80(&qword_280EE88B0, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
  v46 = v151;
  sub_219BDCCC4();

  (*(v153 + 8))(v44, v46);
  v47 = v130;
  v48 = v128;
  v49 = v129;
  sub_219BF6824();
  v50 = v47;
  v51 = (*(v48 + 48))(v47, 1, v49);
  v151 = v42;
  v152 = v37 + 104;
  v150 = v39;
  LODWORD(v153) = v41;
  if (v51 == 1)
  {
    sub_2198B9AD4(v47, &qword_280EE8330, MEMORY[0x277D2E738]);
  }

  else
  {
    v52 = v43;
    v53 = v105;
    (*(v48 + 32))(v105, v50, v49);
    v54 = swift_allocObject();
    *(v54 + 16) = v160;
    v52(v54 + v39, v41, v154);
    sub_218707A80(&unk_27CC0DC50, MEMORY[0x277D2E738], MEMORY[0x277D2E730]);
    sub_219BDCCC4();

    (*(v48 + 8))(v53, v49);
  }

  if ([v159 sourceChannel])
  {
    v130 = *(v148 + 56);
    v55 = v107;
    sub_219BE01F4();
    v56 = v150;
    v57 = swift_allocObject();
    *(v57 + 16) = v160;
    v58 = v153;
    v59 = v151;
    (v151)(&v56[v57], v153, v154);
    sub_218707A80(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v60 = v109;
    sub_219BDCCC4();

    (*(v108 + 8))(v55, v60);
    v61 = v110;
    sub_219BE01E4();
    v62 = swift_allocObject();
    *(v62 + 16) = v160;
    v59(&v56[v62], v58, v154);
    sub_218707A80(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v63 = v112;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v111 + 8))(v61, v63);
  }

  v64 = [v159 respondsToSelector_];
  v65 = v150;
  if (v64)
  {
    v66 = [v159 parentIssue];
    if (v66)
    {
      v67 = v102;
      v68 = v66;
      sub_21934C4BC();
      v69 = swift_allocObject();
      *(v69 + 16) = v160;
      (v151)(&v65[v69], v153, v154);
      sub_218707A80(&unk_280EE7F60, MEMORY[0x277D2F890], MEMORY[0x277D2F888]);
      v70 = v104;
      sub_219BDCCC4();

      (*(v103 + 8))(v67, v70);
    }
  }

  v71 = v132;
  v72 = v131;
  v73 = v133;
  (*(v132 + 104))(v131, *MEMORY[0x277D328F8], v133);
  v74 = v134;
  sub_219BE02C4();
  (*(v71 + 8))(v72, v73);
  v75 = swift_allocObject();
  *(v75 + 16) = v160;
  v76 = v154;
  v77 = v151;
  (v151)(&v65[v75], v153, v154);
  sub_218707A80(&unk_280EE8850, MEMORY[0x277D2D950], MEMORY[0x277D2D948]);
  v78 = v136;
  sub_219BDCCC4();

  (*(v135 + 8))(v74, v78);
  v79 = v137;
  sub_2198B4A18();
  v80 = swift_allocObject();
  *(v80 + 16) = v160;
  v77(&v65[v80], v153, v76);
  sub_218707A80(&unk_27CC20590, MEMORY[0x277D2DA20], MEMORY[0x277D2DA18]);
  v81 = v139;
  sub_219BDCCC4();

  (*(v138 + 8))(v79, v81);
  v82 = v140;
  v83 = *(v140 + 104);
  v84 = v145;
  v85 = v146;
  v83(v145, *MEMORY[0x277D2E7B0], v146);
  sub_218707A80(&qword_27CC205A0, MEMORY[0x277D2E7D0], MEMORY[0x277D2E7D8]);
  v86 = v143;
  v87 = v84;
  LOBYTE(v84) = sub_219BF53A4();
  (*(v82 + 8))(v87, v85);
  if (v84)
  {
    sub_218707A80(&qword_27CC205A8, MEMORY[0x277D2F048], MEMORY[0x277D2F040]);
    v88 = v106;
    v89 = v142;
    sub_219BDCCB4();
    v90 = v141;
    v91 = (*(v141 + 48))(v88, 1, v89);
    result = sub_2198B9AD4(v88, &unk_27CC20570, MEMORY[0x277D2F048]);
    v93 = v144;
    if (v91 != 1)
    {
      goto LABEL_14;
    }

    v83(v145, *MEMORY[0x277D2E7B8], v146);
    v94 = v113;
    sub_219BE11D4();
    sub_219BDCCC4();
  }

  else
  {
    (*(v82 + 16))(v87, v86, v85);
    v94 = v113;
    sub_219BE11D4();
    sub_218707A80(&qword_27CC205A8, MEMORY[0x277D2F048], MEMORY[0x277D2F040]);
    v89 = v142;
    sub_219BDCCC4();
    v93 = v144;
    v90 = v141;
  }

  result = (*(v90 + 8))(v94, v89);
LABEL_14:
  v95 = *(v93 + 56);
  if ((*&v95 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v95 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v95 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v96 = *(v93 + 64);
  if ((*&v96 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v96 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v96 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  (*(v114 + 16))(v149, v122, v115);
  if ((a9 & 0x100000000) != 0)
  {
    sub_2198B4BE0();
  }

  sub_21872D5E0(a10, v116, &qword_280EE8648, MEMORY[0x277D2DDE0]);
  (*(v119 + 16))(v121, a11, v123);

  v97 = v117;
  sub_219BE03B4();
  v98 = v150;
  v99 = swift_allocObject();
  *(v99 + 16) = v160;
  (v151)(&v98[v99], v153, v154);
  sub_218707A80(&unk_27CC205B0, MEMORY[0x277D2E500], MEMORY[0x277D2E4F8]);
  v100 = v120;
  sub_219BDCCC4();

  (*(v118 + 8))(v97, v100);
  sub_219BE0C34();
  v101 = v124;
  sub_219BDBD24();
  sub_218707A80(&qword_27CC205C0, MEMORY[0x277D2EBF0], MEMORY[0x277D2EBE8]);
  sub_219BDCC34();
  return (*(v125 + 8))(v101, v126);
}

uint64_t sub_2198B4A18()
{
  v1 = v0;
  v2 = sub_219BDD9E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21883F194(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187361B0(v1, v8, sub_21883F194);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_218A6E5D0(0);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218A6E554(0);
LABEL_5:
    (*(v3 + 32))(v5, &v8[*(v10 + 64)], v2);
    sub_219BDD9D4();
    sub_219BDF344();
    (*(v3 + 8))(v5, v2);
    return sub_218745DCC(v8, type metadata accessor for AudioFeedTrack);
  }

  return sub_219BDF344();
}

uint64_t sub_2198B4BE0()
{
  sub_21883F194(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187361B0(v0, v3, sub_21883F194);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v5 = 0.0;
    if (EnumCaseMultiPayload != 1)
    {
      return v5;
    }

    sub_218A6E554(0);
  }

  else
  {
    sub_218A6E5D0(0);
  }

  v5 = *&v3[*(v6 + 48)];
  v7 = *(v6 + 64);
  v8 = sub_219BDD9E4();
  (*(*(v8 - 8) + 8))(&v3[v7], v8);
  result = sub_218745DCC(v3, type metadata accessor for AudioFeedTrack);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v5 <= -2147483650.0)
    {
      __break(1u);
    }

    else if (v5 < 2147483650.0)
    {
      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2198B4D54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v129 = a8;
  v156 = a7;
  v155 = a6;
  v159 = a5;
  v160 = a4;
  v164 = a3;
  v170 = a1;
  v135 = sub_219BDF864();
  v132 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v134 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D83D88];
  sub_218729EFC(0, &qword_280EE8648, MEMORY[0x277D2DDE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v128 = &v113 - v14;
  v127 = sub_219BDF884();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v161 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_219BE03D4();
  v131 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v130 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729EFC(0, &unk_27CC20570, MEMORY[0x277D2F048], v12);
  MEMORY[0x28223BE20](v17 - 8);
  v118 = &v113 - v18;
  v154 = sub_219BE11E4();
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v125 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_219BE0774();
  v152 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v157 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_219BDF354();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v149 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_219BEFBD4();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_219BDF1A4();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v146 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_219BE1714();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_219BE09E4();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_219BDF104();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v119 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729EFC(0, &qword_280EE8330, MEMORY[0x277D2E738], v12);
  MEMORY[0x28223BE20](v27 - 8);
  v142 = &v113 - v28;
  v141 = sub_219BE0724();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v117 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_219BDF0E4();
  v139 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v137 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BE1794();
  v167 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21978811C();
  sub_218729EFC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v171 = v34;
  v35 = sub_219BDCD44();
  v169 = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 72);
  v38 = *(v36 + 80);
  v39 = (v38 + 32) & ~v38;
  v40 = swift_allocObject();
  v173 = xmmword_219C09BA0;
  *(v40 + 16) = xmmword_219C09BA0;
  v41 = *MEMORY[0x277CEAD18];
  v165 = *(v36 + 104);
  v165(v40 + v39, v41, v35);
  sub_218707A80(&unk_27CC20580, MEMORY[0x277D2F900], MEMORY[0x277D2F8F8]);
  sub_219BDCCC4();

  (*(v167 + 8))(v33, v31);
  v42 = v38;
  ObjectType = swift_getObjectType();
  v43 = v137;
  sub_219BF67F4();
  v163 = v37;
  v44 = v36 + 104;
  v45 = v169;
  v46 = swift_allocObject();
  *(v46 + 16) = v173;
  v162 = v39;
  LODWORD(v167) = v41;
  v47 = v165;
  v168 = v44;
  v165(v46 + v39, v41, v45);
  sub_218707A80(&qword_280EE88B0, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
  v172 = "opAudioSessionManager";
  v48 = v138;
  sub_219BDCCC4();
  v49 = v140;

  (*(v139 + 8))(v43, v48);
  v50 = v142;
  v51 = v141;
  sub_219BF6824();
  v52 = (*(v49 + 48))(v50, 1, v51);
  v166 = v42;
  if (v52 == 1)
  {
    sub_2198B9AD4(v50, &qword_280EE8330, MEMORY[0x277D2E738]);
    v53 = v162;
  }

  else
  {
    v54 = v117;
    (*(v49 + 32))(v117, v50, v51);
    v55 = v162;
    v56 = swift_allocObject();
    *(v56 + 16) = v173;
    v47(v56 + v55, v167, v45);
    sub_218707A80(&unk_27CC0DC50, MEMORY[0x277D2E738], MEMORY[0x277D2E730]);
    sub_219BDCCC4();

    (*(v49 + 8))(v54, v51);
    v53 = v55;
  }

  v57 = v164;
  v58 = [v164 sourceChannel];
  if (v58)
  {
    v142 = *(v160 + 56);
    v59 = v119;
    v141 = v58;
    sub_219BE01F4();
    v60 = swift_allocObject();
    *(v60 + 16) = v173;
    v61 = v169;
    v62 = v165;
    v165(v60 + v53, v167, v169);
    sub_218707A80(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v63 = v121;
    sub_219BDCCC4();

    (*(v120 + 8))(v59, v63);
    v64 = v122;
    sub_219BE01E4();
    v65 = swift_allocObject();
    *(v65 + 16) = v173;
    v62(v65 + v53, v167, v61);
    v57 = v164;
    sub_218707A80(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v66 = v124;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v123 + 8))(v64, v66);
  }

  if ([v57 respondsToSelector_])
  {
    v67 = [v57 parentIssue];
    if (v67)
    {
      v68 = v114;
      v69 = v67;
      sub_21934C4BC();
      v70 = swift_allocObject();
      *(v70 + 16) = v173;
      v165(v70 + v53, v167, v169);
      sub_218707A80(&unk_280EE7F60, MEMORY[0x277D2F890], MEMORY[0x277D2F888]);
      v71 = v116;
      sub_219BDCCC4();

      (*(v115 + 8))(v68, v71);
    }
  }

  v72 = v144;
  v73 = v143;
  v74 = v145;
  (*(v144 + 104))(v143, *MEMORY[0x277D328F8], v145);
  v75 = v146;
  sub_219BE02C4();
  (*(v72 + 8))(v73, v74);
  v76 = v53;
  v77 = v167;
  v78 = swift_allocObject();
  *(v78 + 16) = v173;
  v79 = v78 + v53;
  v80 = v165;
  v165(v79, v77, v169);
  sub_218707A80(&unk_280EE8850, MEMORY[0x277D2D950], MEMORY[0x277D2D948]);
  v81 = v148;
  sub_219BDCCC4();

  (*(v147 + 8))(v75, v81);
  v82 = v149;
  sub_2198B4A18();
  v83 = swift_allocObject();
  *(v83 + 16) = v173;
  v84 = v77;
  v85 = v80;
  v86 = v169;
  v80(v83 + v76, v84, v169);
  sub_218707A80(&unk_27CC20590, MEMORY[0x277D2DA20], MEMORY[0x277D2DA18]);
  v87 = v151;
  sub_219BDCCC4();

  (*(v150 + 8))(v82, v87);
  v88 = v152;
  if (qword_27CC08848 != -1)
  {
    swift_once();
  }

  v89 = sub_219BDD2D4();
  __swift_project_value_buffer(v89, qword_27CC20530);
  v90 = swift_allocObject();
  *(v90 + 16) = v173;
  v91 = v90 + v76;
  v92 = v167;
  v85(v91, v167, v86);
  sub_218707A80(&unk_280EE8ED0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEC8]);
  sub_219BDCCC4();

  v93 = *MEMORY[0x277D2E7B0];
  v94 = v88;
  v95 = *(v88 + 104);
  v96 = v157;
  v97 = v158;
  v164 = v95;
  (v95)(v157, v93, v158);
  sub_218707A80(&qword_27CC205A0, MEMORY[0x277D2E7D0], MEMORY[0x277D2E7D8]);
  v98 = v155;
  v99 = sub_219BF53A4();
  (*(v94 + 8))(v96, v97);
  if (v99)
  {
    sub_218707A80(&qword_27CC205A8, MEMORY[0x277D2F048], MEMORY[0x277D2F040]);
    v100 = v118;
    v101 = v154;
    sub_219BDCCB4();
    v102 = v153;
    v103 = (*(v153 + 48))(v100, 1, v101);
    result = sub_2198B9AD4(v100, &unk_27CC20570, MEMORY[0x277D2F048]);
    v105 = v156;
    if (v103 != 1)
    {
      goto LABEL_16;
    }

    (v164)(v157, *MEMORY[0x277D2E7B8], v158);
    v106 = v125;
    sub_219BE11D4();
    sub_219BDCCC4();
  }

  else
  {
    (*(v94 + 16))(v96, v98, v97);
    v106 = v125;
    sub_219BE11D4();
    sub_218707A80(&qword_27CC205A8, MEMORY[0x277D2F048], MEMORY[0x277D2F040]);
    v101 = v154;
    sub_219BDCCC4();
    v105 = v156;
    v102 = v153;
  }

  result = (*(v102 + 8))(v106, v101);
LABEL_16:
  v107 = *(v105 + 56);
  if ((*&v107 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v107 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v107 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v108 = *(v105 + 64);
  if ((*&v108 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v108 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v108 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  (*(v126 + 16))(v161, v129, v127);
  if ((a9 & 0x100000000) != 0)
  {
    sub_2198B4BE0();
  }

  sub_21872D5E0(a10, v128, &qword_280EE8648, MEMORY[0x277D2DDE0]);
  (*(v132 + 16))(v134, a11, v135);

  v109 = v130;
  sub_219BE03B4();
  v110 = v162;
  v111 = swift_allocObject();
  *(v111 + 16) = v173;
  v165(v111 + v110, v92, v169);
  sub_218707A80(&unk_27CC205B0, MEMORY[0x277D2E500], MEMORY[0x277D2E4F8]);
  v112 = v133;
  sub_219BDCCC4();

  (*(v131 + 8))(v109, v112);
  sub_219BDFBE4();
  sub_218707A80(&qword_280EE85C8, MEMORY[0x277D2DF90], MEMORY[0x277D2DF78]);
  memset(v174, 0, sizeof(v174));
  sub_219BDCCE4();
  return sub_218745DCC(v174, sub_21880702C);
}

void sub_2198B6674(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v110 = a8;
  v109 = a7;
  v126 = a6;
  v127 = a4;
  v128 = a5;
  v137 = a3;
  v139 = a1;
  v108 = sub_219BDF864();
  v105 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_218729EFC(0, &qword_280EE8648, MEMORY[0x277D2DDE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v102 = &v88 - v11;
  v100 = sub_219BDF884();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v101 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_219BE03D4();
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v103 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_219BDF354();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_219BEFBD4();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_219BDF1A4();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_219BE1714();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_219BE09E4();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_219BDF104();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729EFC(0, &qword_280EE8330, MEMORY[0x277D2E738], v9);
  MEMORY[0x28223BE20](v20 - 8);
  v112 = &v88 - v21;
  v116 = sub_219BE0724();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v92 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_219BDF0E4();
  v114 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_219BE1794();
  v135 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21978811C();
  sub_218729EFC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v138 = v26;
  v27 = sub_219BDCD44();
  v136 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 72);
  v30 = *(v28 + 80);
  v31 = swift_allocObject();
  v140 = xmmword_219C09BA0;
  *(v31 + 16) = xmmword_219C09BA0;
  v32 = *MEMORY[0x277CEAD18];
  v33 = *(v28 + 104);
  v33(v31 + ((v30 + 32) & ~v30), v32, v27);
  v131 = "opAudioSessionManager";
  sub_218707A80(&unk_27CC20580, MEMORY[0x277D2F900], MEMORY[0x277D2F8F8]);
  v34 = v132;
  sub_219BDCCC4();
  v35 = v28 + 104;
  v36 = (v30 + 32) & ~v30;
  v37 = v32;
  v38 = v30;

  (*(v135 + 8))(v25, v34);
  swift_getObjectType();
  v39 = v111;
  sub_219BF67F4();
  v129 = v29;
  v135 = v38;
  v40 = v112;
  v41 = swift_allocObject();
  *(v41 + 16) = v140;
  v132 = v36;
  v133 = v33;
  v134 = v37;
  v33(v41 + v36, v37, v136);
  sub_218707A80(&qword_280EE88B0, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
  v42 = v113;
  v43 = v115;
  sub_219BDCCC4();

  (*(v114 + 8))(v39, v42);
  v44 = v116;
  sub_219BF6824();
  v45 = v43[6](v40, 1, v44);
  v130 = v35;
  if (v45 == 1)
  {
    sub_2198B9AD4(v40, &qword_280EE8330, MEMORY[0x277D2E738]);
    v46 = v136;
  }

  else
  {
    v47 = v92;
    v43[4](v92, v40, v44);
    v48 = v132;
    v49 = swift_allocObject();
    *(v49 + 16) = v140;
    v46 = v136;
    v133(v49 + v48, v134, v136);
    sub_218707A80(&unk_27CC0DC50, MEMORY[0x277D2E738], MEMORY[0x277D2E730]);
    sub_219BDCCC4();

    (v43[1])(v47, v44);
  }

  v50 = [v137 sourceChannel];
  if (v50)
  {
    v116 = *(v127 + 56);
    v51 = v93;
    v115 = v50;
    sub_219BE01F4();
    v52 = v132;
    v53 = swift_allocObject();
    *(v53 + 16) = v140;
    v133(v53 + v52, v134, v46);
    sub_218707A80(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v54 = v95;
    sub_219BDCCC4();
    v55 = v134;

    (*(v94 + 8))(v51, v54);
    v56 = v96;
    sub_219BE01E4();
    v57 = swift_allocObject();
    *(v57 + 16) = v140;
    v133(v57 + v52, v55, v136);
    v46 = v136;
    sub_218707A80(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v58 = v98;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v97 + 8))(v56, v58);
  }

  if ([v137 respondsToSelector_])
  {
    v59 = [v137 parentIssue];
    if (v59)
    {
      v60 = v89;
      v61 = v59;
      sub_21934C4BC();
      v62 = v132;
      v63 = swift_allocObject();
      *(v63 + 16) = v140;
      v133(v63 + v62, v134, v46);
      sub_218707A80(&unk_280EE7F60, MEMORY[0x277D2F890], MEMORY[0x277D2F888]);
      v64 = v91;
      sub_219BDCCC4();

      (*(v90 + 8))(v60, v64);
    }
  }

  v65 = v118;
  v66 = v117;
  v67 = v119;
  (*(v118 + 104))(v117, *MEMORY[0x277D329E0], v119);
  v68 = v120;
  sub_219BE02C4();
  (*(v65 + 8))(v66, v67);
  v69 = v134;
  v70 = v132;
  v71 = swift_allocObject();
  *(v71 + 16) = v140;
  v72 = v133;
  v133(v71 + v70, v69, v46);
  sub_218707A80(&unk_280EE8850, MEMORY[0x277D2D950], MEMORY[0x277D2D948]);
  v73 = v122;
  sub_219BDCCC4();

  (*(v121 + 8))(v68, v73);
  v74 = v123;
  sub_2198B4A18();
  v75 = swift_allocObject();
  *(v75 + 16) = v140;
  v76 = v75 + v70;
  v77 = v136;
  v72(v76, v69, v136);
  sub_218707A80(&unk_27CC20590, MEMORY[0x277D2DA20], MEMORY[0x277D2DA18]);
  v78 = v125;
  sub_219BDCCC4();

  (*(v124 + 8))(v74, v78);
  if (qword_27CC08848 != -1)
  {
    swift_once();
  }

  v79 = sub_219BDD2D4();
  __swift_project_value_buffer(v79, qword_27CC20530);
  v80 = v132;
  v81 = swift_allocObject();
  *(v81 + 16) = v140;
  v133(v81 + v80, v134, v77);
  sub_218707A80(&unk_280EE8ED0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEC8]);
  sub_219BDCCC4();

  v82 = *(v126 + 56);
  if ((*&v82 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v82 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v82 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v83 = *(v126 + 64);
  if ((*&v83 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v83 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v83 < 9.22337204e18)
  {
    v137 = v82;
    v127 = v83;
    (*(v99 + 104))(v101, *MEMORY[0x277D2DE10], v100);
    LODWORD(v128) = sub_2198B4BE0();
    sub_21872D5E0(v109, v102, &qword_280EE8648, MEMORY[0x277D2DDE0]);
    (*(v105 + 16))(v107, v110, v108);

    v84 = v132;
    v85 = v103;
    sub_219BE03B4();
    v86 = swift_allocObject();
    *(v86 + 16) = v140;
    v133(v86 + v84, v134, v136);
    sub_218707A80(&unk_27CC205B0, MEMORY[0x277D2E500], MEMORY[0x277D2E4F8]);
    v87 = v106;
    sub_219BDCCC4();

    (*(v104 + 8))(v85, v87);
    sub_219BE1114();
    sub_218707A80(&unk_27CC205C8, MEMORY[0x277D2EF48], MEMORY[0x277D2EF40]);
    memset(v141, 0, sizeof(v141));
    sub_219BDCCE4();
    sub_218745DCC(v141, sub_21880702C);
    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_2198B7B80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v40 = a3;
  v58 = a1;
  v5 = sub_219BE0904();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v46 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = &v38 - v8;
  v9 = sub_219BE09E4();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v43 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_219BDF104();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDF0E4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_219BF67F4();
  sub_218729EFC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v17 = v16;
  v51 = sub_219BDCD44();
  v18 = *(v51 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v52 = *(v18 + 72);
  v57 = v17;
  v20 = swift_allocObject();
  v54 = xmmword_219C09BA0;
  *(v20 + 16) = xmmword_219C09BA0;
  v21 = *(v18 + 104);
  v55 = *MEMORY[0x277CEAD18];
  v53 = v21;
  v21(v20 + v19);
  sub_218707A80(&qword_280EE88B0, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
  v56 = "opAudioSessionManager";
  sub_219BDCCC4();

  (*(v13 + 8))(v15, v12);
  v22 = [a2 sourceChannel];
  if (v22)
  {
    v40 = *(v40 + 56);
    v23 = v39;
    v38 = v22;
    sub_219BE01F4();
    v24 = swift_allocObject();
    *(v24 + 16) = v54;
    v25 = v51;
    v53(v24 + v19, v55, v51);
    sub_218707A80(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v26 = v42;
    sub_219BDCCC4();

    (*(v41 + 8))(v23, v26);
    v27 = v43;
    sub_219BE01E4();
    v28 = swift_allocObject();
    *(v28 + 16) = v54;
    v53(v28 + v19, v55, v25);
    sub_218707A80(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v29 = v45;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v44 + 8))(v27, v29);
  }

  v30 = *(v50 + *(type metadata accessor for AudioFeedTrack(0) + 40));
  if (v30)
  {
    v31 = [v30 identifier];
    sub_219BF5414();

    v32 = v46;
    sub_219BE08F4();
    v34 = v47;
    v33 = v48;
    v35 = v49;
    (*(v48 + 32))(v47, v32, v49);
    v36 = swift_allocObject();
    *(v36 + 16) = v54;
    v53(v36 + v19, v55, v51);
    sub_218707A80(&qword_27CC20558, MEMORY[0x277D2E8F8], MEMORY[0x277D2E8F0]);
    sub_219BDCCC4();

    (*(v33 + 8))(v34, v35);
  }

  sub_219BE0C44();
  sub_218707A80(&unk_27CC20560, MEMORY[0x277D2EC00], MEMORY[0x277D2EBF8]);
  memset(v59, 0, 32);
  sub_219BDCCE4();
  return sub_218745DCC(v59, sub_21880702C);
}

uint64_t sub_2198B8360(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v40 = a3;
  v58 = a1;
  v5 = sub_219BE0904();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v46 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = &v38 - v8;
  v9 = sub_219BE09E4();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v43 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_219BDF104();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDF0E4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_219BF67F4();
  sub_218729EFC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v17 = v16;
  v51 = sub_219BDCD44();
  v18 = *(v51 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v52 = *(v18 + 72);
  v57 = v17;
  v20 = swift_allocObject();
  v54 = xmmword_219C09BA0;
  *(v20 + 16) = xmmword_219C09BA0;
  v21 = *(v18 + 104);
  v55 = *MEMORY[0x277CEAD18];
  v53 = v21;
  v21(v20 + v19);
  sub_218707A80(&qword_280EE88B0, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
  v56 = "opAudioSessionManager";
  sub_219BDCCC4();

  (*(v13 + 8))(v15, v12);
  v22 = [a2 sourceChannel];
  if (v22)
  {
    v40 = *(v40 + 56);
    v23 = v39;
    v38 = v22;
    sub_219BE01F4();
    v24 = swift_allocObject();
    *(v24 + 16) = v54;
    v25 = v51;
    v53(v24 + v19, v55, v51);
    sub_218707A80(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v26 = v42;
    sub_219BDCCC4();

    (*(v41 + 8))(v23, v26);
    v27 = v43;
    sub_219BE01E4();
    v28 = swift_allocObject();
    *(v28 + 16) = v54;
    v53(v28 + v19, v55, v25);
    sub_218707A80(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v29 = v45;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v44 + 8))(v27, v29);
  }

  v30 = *(v50 + *(type metadata accessor for AudioFeedTrack(0) + 40));
  if (v30)
  {
    v31 = [v30 identifier];
    sub_219BF5414();

    v32 = v46;
    sub_219BE08F4();
    v34 = v47;
    v33 = v48;
    v35 = v49;
    (*(v48 + 32))(v47, v32, v49);
    v36 = swift_allocObject();
    *(v36 + 16) = v54;
    v53(v36 + v19, v55, v51);
    sub_218707A80(&qword_27CC20558, MEMORY[0x277D2E8F8], MEMORY[0x277D2E8F0]);
    sub_219BDCCC4();

    (*(v33 + 8))(v34, v35);
  }

  sub_219BE0F34();
  sub_218707A80(&unk_27CC20548, MEMORY[0x277D2EDF8], MEMORY[0x277D2EDF0]);
  memset(v59, 0, 32);
  sub_219BDCCE4();
  return sub_218745DCC(v59, sub_21880702C);
}

uint64_t sub_2198B8B40()
{
  v0 = sub_219BDBD34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = sub_219BDD2D4();
  __swift_allocate_value_buffer(v10, qword_27CC20530);
  __swift_project_value_buffer(v10, qword_27CC20530);
  sub_219BDBD24();
  v11 = *(v1 + 16);
  v11(v6, v9, v0);
  v11(v3, v9, v0);
  sub_219BDD2B4();
  return (*(v1 + 8))(v9, v0);
}

uint64_t sub_2198B8D18(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AudioFeedTrack(0) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_2198B8DA0(uint64_t a1, uint64_t a2)
{
  sub_218729EFC(0, &qword_280EE8648, MEMORY[0x277D2DDE0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_24Tm_2()
{
  v1 = type metadata accessor for AudioFeedTrack(0);
  v68 = *(*(v1 - 1) + 80);
  v2 = (v68 + 16) & ~v68;
  v3 = (((*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_21883F194(0);
  v67 = *(*(v4 - 8) + 80);
  v5 = (v3 + v67 + 8) & ~v67;
  v6 = *(*(v4 - 8) + 64);
  v7 = sub_219BE0774();
  v65 = *(v7 - 8);
  v66 = v7;
  v56 = v5;
  v60 = (v5 + v6 + *(v65 + 80)) & ~*(v65 + 80);
  v8 = (*(v65 + 64) + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = sub_219BDF884();
  v59 = *(v62 - 8);
  v57 = (v8 + *(v59 + 80) + 8) & ~*(v59 + 80);
  v9 = *(v59 + 64) + v57;
  sub_218729EFC(0, &qword_280EE8648, MEMORY[0x277D2DDE0], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 80);
  v63 = *(*(v10 - 8) + 64);
  v64 = sub_219BDF864();
  v61 = *(v64 - 8);
  v58 = *(v61 + 80);
  v12 = v0 + v2;
  swift_unknownObjectRelease();

  v13 = v0 + v2 + v1[8];

  if (*(v13 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v13 + 32));
  }

  v14 = type metadata accessor for AudioFeedTrack.Configurables(0);
  v15 = v14[7];
  v16 = sub_219BDBD34();
  v52 = *(v16 - 8);
  v54 = *(v52 + 48);
  if (!v54(v13 + v15, 1, v16))
  {
    (*(v52 + 8))(v13 + v15, v16);
  }

  if (*(v13 + v14[8] + 8) != 1)
  {
  }

  v17 = v11;
  v18 = ((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + v11;
  v19 = v14[9];
  v20 = sub_219BE7434();
  v53 = *(v20 - 8);
  v69 = v20;
  v55 = *(v53 + 48);
  if (!v55(v13 + v19, 1))
  {
    (*(v53 + 8))(v13 + v19, v69);
  }

  v21 = v18 + 5;

  v22 = v12 + v1[12];
  sub_219BDD6E4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    sub_218C16270(0);
    v25 = *(v24 + 48);
    v26 = sub_219BDE3B4();
    (*(*(v26 - 8) + 8))(v22 + v25, v26);
  }

  v27 = v21 & ~v17;
  swift_unknownObjectRelease();

  v28 = v0 + v56;
  v29 = swift_getEnumCaseMultiPayload();
  if (v29 == 1)
  {
    swift_unknownObjectRelease();

    v39 = v28 + v1[8];

    if (*(v39 + 56))
    {
      __swift_destroy_boxed_opaque_existential_1((v39 + 32));
    }

    v40 = v14[7];
    if (!v54(v39 + v40, 1, v16))
    {
      (*(v52 + 8))(v39 + v40, v16);
    }

    if (*(v39 + v14[8] + 8) != 1)
    {
    }

    v41 = v14[9];
    if (!(v55)(v39 + v41, 1, v69))
    {
      (*(v53 + 8))(v39 + v41, v69);
    }

    v42 = v28 + v1[12];
    v43 = swift_getEnumCaseMultiPayload();

    if (v43 == 1)
    {
      sub_218C16270(0);
      v45 = *(v44 + 48);
      v46 = sub_219BDE3B4();
      (*(*(v46 - 8) + 8))(v42 + v45, v46);
    }

    sub_218A6E554(0);
  }

  else
  {
    if (v29)
    {
      goto LABEL_36;
    }

    swift_unknownObjectRelease();

    v30 = v28 + v1[8];

    if (*(v30 + 56))
    {
      __swift_destroy_boxed_opaque_existential_1((v30 + 32));
    }

    v31 = v14[7];
    if (!v54(v30 + v31, 1, v16))
    {
      (*(v52 + 8))(v30 + v31, v16);
    }

    if (*(v30 + v14[8] + 8) != 1)
    {
    }

    v32 = v14[9];
    if (!(v55)(v30 + v32, 1, v69))
    {
      (*(v53 + 8))(v30 + v32, v69);
    }

    v33 = v28 + v1[12];
    v34 = swift_getEnumCaseMultiPayload();

    if (v34 == 1)
    {
      sub_218C16270(0);
      v36 = *(v35 + 48);
      v37 = sub_219BDE3B4();
      (*(*(v37 - 8) + 8))(v33 + v36, v37);
    }

    sub_218A6E5D0(0);
  }

  v47 = *(v38 + 64);
  v48 = sub_219BDD9E4();
  (*(*(v48 - 8) + 8))(v28 + v47, v48);
LABEL_36:
  (*(v65 + 8))(v0 + v60, v66);

  (*(v59 + 8))(v0 + v57, v62);
  v49 = sub_219BDF874();
  v50 = *(v49 - 8);
  if (!(*(v50 + 48))(v0 + v27, 1, v49))
  {
    (*(v50 + 8))(v0 + v27, v49);
  }

  (*(v61 + 8))(v0 + ((v27 + v63 + v58) & ~v58), v64);

  return swift_deallocObject();
}

uint64_t sub_2198B97E8(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, void, void, unint64_t, unint64_t, void, unint64_t, unint64_t, unint64_t, unint64_t))
{
  v3 = *(type metadata accessor for AudioFeedTrack(0) - 8);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = (*(v3 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_21883F194(0);
  v7 = (v5 + *(*(v6 - 8) + 80) + 8) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = *(sub_219BE0774() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_219BDF884() - 8);
  v13 = (v11 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  sub_218729EFC(0, &qword_280EE8648, MEMORY[0x277D2DDE0], MEMORY[0x277D83D88]);
  v16 = (v14 + *(*(v15 - 8) + 80) + 5) & ~*(*(v15 - 8) + 80);
  v17 = *(*(v15 - 8) + 64);
  v18 = *(sub_219BDF864() - 8);
  return a2(a1, v2 + v20, *(v2 + v4), *(v2 + v5), v2 + v7, v2 + v10, *(v2 + v11), v2 + v13, *(v2 + v14) | (*(v2 + v14 + 4) << 32), v2 + v16, v2 + ((v16 + v17 + *(v18 + 80)) & ~*(v18 + 80)));
}

uint64_t sub_2198B9AD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218729EFC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_2198B9B48(id *a1)
{
  v3 = *(sub_219BE0774() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDF864() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_219BDF874() - 8);
  v10 = *(v1 + 16);
  v11 = (v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80)));

  return sub_2198AC2B8(a1, v10, v1 + v4, v1 + v7, v11);
}

uint64_t objectdestroy_50Tm_0()
{
  v1 = type metadata accessor for AudioFeedTrack(0);
  v57 = *(*(v1 - 1) + 80);
  v2 = (v57 + 16) & ~v57;
  v3 = (((*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_21883F194(0);
  v56 = *(*(v4 - 8) + 80);
  v51 = (v3 + v56 + 8) & ~v56;
  v5 = *(*(v4 - 8) + 64) + v51;
  sub_218729EFC(0, &qword_280EE8648, MEMORY[0x277D2DDE0], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 80);
  v54 = *(*(v6 - 8) + 64);
  v55 = sub_219BDF864();
  v53 = *(v55 - 8);
  v52 = *(v53 + 80);
  v8 = v0 + v2;
  swift_unknownObjectRelease();

  v9 = v0 + v2 + v1[8];

  if (*(v9 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v9 + 32));
  }

  v10 = type metadata accessor for AudioFeedTrack.Configurables(0);
  v11 = v10[7];
  v12 = sub_219BDBD34();
  v47 = *(v12 - 8);
  v49 = *(v47 + 48);
  if (!v49(v9 + v11, 1, v12))
  {
    (*(v47 + 8))(v9 + v11, v12);
  }

  if (*(v9 + v10[8] + 8) != 1)
  {
  }

  v58 = v7;
  v13 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + v7;
  v14 = v10[9];
  v15 = sub_219BE7434();
  v48 = *(v15 - 8);
  v50 = *(v48 + 48);
  if (!v50(v9 + v14, 1, v15))
  {
    (*(v48 + 8))(v9 + v14, v15);
  }

  v16 = v13 + 8;

  v17 = v8 + v1[12];
  sub_219BDD6E4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    sub_218C16270(0);
    v20 = *(v19 + 48);
    v21 = sub_219BDE3B4();
    (*(*(v21 - 8) + 8))(v17 + v20, v21);
  }

  v22 = v16 & ~v58;
  swift_unknownObjectRelease();

  v23 = v0 + v51;
  v24 = swift_getEnumCaseMultiPayload();
  if (v24 == 1)
  {
    swift_unknownObjectRelease();

    v34 = v23 + v1[8];

    if (*(v34 + 56))
    {
      __swift_destroy_boxed_opaque_existential_1((v34 + 32));
    }

    v35 = v10[7];
    if (!v49(v34 + v35, 1, v12))
    {
      (*(v47 + 8))(v34 + v35, v12);
    }

    if (*(v34 + v10[8] + 8) != 1)
    {
    }

    v36 = v10[9];
    if (!v50(v34 + v36, 1, v15))
    {
      (*(v48 + 8))(v34 + v36, v15);
    }

    v37 = v23 + v1[12];
    v38 = swift_getEnumCaseMultiPayload();

    if (v38 == 1)
    {
      sub_218C16270(0);
      v40 = *(v39 + 48);
      v41 = sub_219BDE3B4();
      (*(*(v41 - 8) + 8))(v37 + v40, v41);
    }

    sub_218A6E554(0);
  }

  else
  {
    if (v24)
    {
      goto LABEL_36;
    }

    swift_unknownObjectRelease();

    v25 = v23 + v1[8];

    if (*(v25 + 56))
    {
      __swift_destroy_boxed_opaque_existential_1((v25 + 32));
    }

    v26 = v10[7];
    if (!v49(v25 + v26, 1, v12))
    {
      (*(v47 + 8))(v25 + v26, v12);
    }

    if (*(v25 + v10[8] + 8) != 1)
    {
    }

    v27 = v10[9];
    if (!v50(v25 + v27, 1, v15))
    {
      (*(v48 + 8))(v25 + v27, v15);
    }

    v28 = v23 + v1[12];
    v29 = swift_getEnumCaseMultiPayload();

    if (v29 == 1)
    {
      sub_218C16270(0);
      v31 = *(v30 + 48);
      v32 = sub_219BDE3B4();
      (*(*(v32 - 8) + 8))(v28 + v31, v32);
    }

    sub_218A6E5D0(0);
  }

  v42 = *(v33 + 64);
  v43 = sub_219BDD9E4();
  (*(*(v43 - 8) + 8))(v23 + v42, v43);
LABEL_36:

  v44 = sub_219BDF874();
  v45 = *(v44 - 8);
  if (!(*(v45 + 48))(v0 + v22, 1, v44))
  {
    (*(v45 + 8))(v0 + v22, v44);
  }

  (*(v53 + 8))(v0 + ((v22 + v54 + v52) & ~v52), v55);

  return swift_deallocObject();
}

void sub_2198BA4E8(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioFeedTrack(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_21883F194(0);
  v8 = (v6 + *(*(v7 - 8) + 80) + 8) & ~*(*(v7 - 8) + 80);
  v9 = (*(*(v7 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218729EFC(0, &qword_280EE8648, MEMORY[0x277D2DDE0], MEMORY[0x277D83D88]);
  v11 = (v9 + *(*(v10 - 8) + 80) + 8) & ~*(*(v10 - 8) + 80);
  v12 = *(*(v10 - 8) + 64);
  v13 = *(sub_219BDF864() - 8);
  v14 = *(v1 + v5);
  v15 = *(v1 + v6);
  v16 = *(v1 + v9);
  v17 = v1 + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80));

  sub_2198B6674(a1, v1 + v4, v14, v15, v1 + v8, v16, v1 + v11, v17);
}

void sub_2198BA6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a3;
  v25 = a4;
  v22 = a1;
  v23 = a2;
  v8 = type metadata accessor for TagFeedAsyncConfig(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v26 = a5;
  v27 = a6;
  v21 = a6;
  sub_219BE3204();
  v11 = sub_219BE1C44();
  sub_2198BCA60(a6, &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TagFeedAsyncConfig);
  v12 = *(v9 + 80);
  v13 = swift_allocObject();
  sub_2198BCAC8(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + ((v12 + 16) & ~v12), type metadata accessor for TagFeedAsyncConfig);
  sub_2198BC978(0);
  type metadata accessor for TagFeedViewerViewControllerFactory();
  sub_219BE2F84();

  v14 = sub_219BE1C44();
  sub_2198BCA60(v21, &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TagFeedAsyncConfig);
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  sub_2198BCAC8(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + ((v12 + 24) & ~v12), type metadata accessor for TagFeedAsyncConfig);
  sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);

  sub_219BE2F74();

  v16 = swift_allocObject();
  *(v16 + 16) = v22;
  *(v16 + 24) = v23;

  v17 = sub_219BE2E54();
  sub_219BE2F74();

  v18 = swift_allocObject();
  *(v18 + 16) = v24;
  *(v18 + 24) = v25;

  v19 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_2198BAA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedAsyncConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21870F240(0, &unk_280EE6FB8, &type metadata for NewsActivity2.Feed, MEMORY[0x277D6CF30]);
  sub_2198BCA60(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TagFeedAsyncConfig);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  sub_2198BCAC8(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for TagFeedAsyncConfig);

  return sub_219BE2F54();
}

uint64_t sub_2198BABB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2198BABDC, 0, 0);
}

uint64_t sub_2198BABDC()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  v3 = *v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_219677964;
  v5 = v0[2];

  return sub_2198BAC8C(v5, v3, v2);
}

uint64_t sub_2198BAC8C(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = v3;
  *(v4 + 72) = a2;
  *(v4 + 24) = a1;
  return MEMORY[0x2822009F8](sub_2198BACB4, 0, 0);
}

uint64_t sub_2198BACB4()
{
  swift_getObjectType();
  *(v0 + 48) = sub_219BF6A64();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_2198BAD70;

  return MEMORY[0x2821D23D8](v0 + 16);
}

uint64_t sub_2198BAD70()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2198BB0B0;
  }

  else
  {

    v2 = sub_2198BAE8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2198BAE8C()
{
  if (!*(v0 + 72))
  {
    v2 = [*(v0 + 16) puzzlesConfig];
    v3 = [v2 puzzleHubTagID];

    if (!v3)
    {
      goto LABEL_10;
    }

LABEL_9:
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = sub_219BF5414();
    v8 = v7;

    v9 = v4;
    swift_unknownObjectRelease();
    *v5 = v6;
    *(v5 + 8) = v8;
    v10 = MEMORY[0x277D84F90];
    *(v5 + 16) = v9;
    *(v5 + 24) = v10;
    *(v5 + 32) = 1;
    v11 = *(v0 + 8);
    goto LABEL_11;
  }

  if (*(v0 + 72) == 1)
  {
    v1 = [*(v0 + 16) mySportsTagID];
    if (!v1)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v1 = [*(v0 + 16) foodHubTagID];
  if (v1)
  {
LABEL_8:
    v3 = v1;
    goto LABEL_9;
  }

LABEL_10:
  v12 = sub_219BF61F4();
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v13 = sub_219BF6F44();
  sub_219BE5314("Unable to load Sports feed due to missing tag ID", 48, 2, &dword_2186C1000, v13, v12, MEMORY[0x277D84F90]);

  v14 = sub_219BE7DB4();
  sub_2198BCB30();
  swift_allocError();
  (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D6DD50], v14);
  swift_willThrow();
  swift_unknownObjectRelease();
  v11 = *(v0 + 8);
LABEL_11:

  return v11();
}

uint64_t sub_2198BB0B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2198BB114(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v23 = *a1;
  v6 = v23;
  v24 = v5;
  v25 = v7;
  v26 = v8;
  v27 = v9;
  sub_21870F240(0, &unk_280EE6FB8, &type metadata for NewsActivity2.Feed, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_21908FD7C(v23, v5, v7, v8, v9);
  sub_219BE3014();
  v10 = a2[12];
  v11 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v10);
  if (v9)
  {
  }

  else
  {
    v12 = [v23 identifier];
    v6 = sub_219BF5414();
    v5 = v13;
  }

  v14 = *(a3 + 8);
  v15 = *(a3 + 48);
  v16 = *(a3 + 56);
  v17 = *(a3 + 64);
  v18 = *(a3 + 72);
  v23 = *(a3 + 40);
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v19 = *(v11 + 8);
  v20 = sub_218F20858(v23, v15, v16, v17, v18);
  v19(v6, v5, v14, &v23, v10, v11, v20);

  sub_218DFAEC4(v23, v24, v25, v26, v27);
  v21 = sub_219BE31C4();

  return v21;
}

void sub_2198BB2BC(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v19 = a3;
  sub_2198BC978(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeedAvailability(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198BCA60(a1, v8, sub_2198BC978);
  v12 = *v8;
  v13 = *(v8 + 1);
  v14 = *(v8 + 2);
  v15 = *(v8 + 3);
  v16 = *(v6 + 56);
  LOBYTE(v6) = v8[32];
  sub_2198BCAC8(&v8[v16], v11, type metadata accessor for FeedAvailability);
  v20[0] = v12;
  v20[1] = v13;
  v20[2] = v14;
  v20[3] = v15;
  v21 = v6;
  v17 = v22;
  v18 = sub_2198BB45C(v20, v11, *(a2 + 24), *(a2 + 32));
  sub_218C8CDE4(v11, type metadata accessor for FeedAvailability);
  sub_21896FBB0(v12, v13, v14, v15, v6);
  if (!v17)
  {
    *v19 = v18;
  }
}

uint64_t sub_2198BB45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v86 = a4;
  sub_2186FE720(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeedAvailability(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 32);
  sub_2198BCA60(a2, v11, type metadata accessor for FeedAvailability);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v45 = *v11;
        v46 = *(v11 + 8);
        v47 = sub_219BF61F4();
        sub_2186F20D4(0);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_219C09BA0;
        *(v48 + 56) = MEMORY[0x277D837D0];
        *(v48 + 64) = sub_2186FC3BC();
        *(v48 + 32) = v45;
        *(v48 + 40) = v46;
        sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
        v49 = sub_219BF6F44();
        sub_219BE5314("Attempting to route to puzzle not allowed in current storefront, identifier=%{public}@", 86, 2, &dword_2186C1000, v49, v47, v48);

        v50 = sub_219BE7DB4();
        sub_2198BCB30();
        swift_allocError();
        v52 = v51;
        v51[3] = &type metadata for AlertContentRegionUnavailable;
        v51[4] = sub_2189F7F2C();
LABEL_24:
        (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D6DD60], v50);
        goto LABEL_25;
      }

      v67 = *v11;
      v68 = *(v11 + 8);
      v69 = sub_219BF61F4();
      sub_2186F20D4(0);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_219C09BA0;
      *(v70 + 56) = MEMORY[0x277D837D0];
      *(v70 + 64) = sub_2186FC3BC();
      *(v70 + 32) = v67;
      *(v70 + 40) = v68;
      sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
      v62 = sub_219BF6F44();
      sub_219BE5314("Attempting to route to puzzle type not allowed, identifier=%{public}@", 69, 2, &dword_2186C1000, v62, v69, v70);
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v17 = *v11;
        v18 = sub_219BF61F4();
        sub_2186F20D4(0);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_219C09BA0;
        v20 = [v17 identifier];
        v21 = sub_219BF5414();
        v23 = v22;

        *(v19 + 56) = MEMORY[0x277D837D0];
        *(v19 + 64) = sub_2186FC3BC();
        *(v19 + 32) = v21;
        *(v19 + 40) = v23;
        sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
        v24 = sub_219BF6F44();
        sub_219BE5314("Attempting to route to sports event feed that was deprecated, identifier=%{public}@", 83, 2, &dword_2186C1000, v24, v18, v19);

        v25 = sub_219BE7DB4();
        sub_2198BCB30();
        swift_allocError();
        v27 = v26;
        v26[3] = &type metadata for AlertSportsEventUnavailable;
        v28 = sub_2198BCBDC();
LABEL_5:
        v27[4] = v28;
        *v27 = v17;
        (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D6DD60], v25);
LABEL_25:
        swift_willThrow();
        return v11;
      }

      v63 = *v11;
      v64 = *(v11 + 8);
      v65 = sub_219BF61F4();
      sub_2186F20D4(0);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_219C09BA0;
      *(v66 + 56) = MEMORY[0x277D837D0];
      *(v66 + 64) = sub_2186FC3BC();
      *(v66 + 32) = v63;
      *(v66 + 40) = v64;
      sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
      v62 = sub_219BF6F44();
      sub_219BE5314("Attempting to route to feed that was not found, identifier=%{public}@", 69, 2, &dword_2186C1000, v62, v65, v66);
    }

LABEL_23:

    v50 = sub_219BE7DB4();
    sub_2198BCB30();
    swift_allocError();
    v52 = v71;
    v71[3] = &type metadata for AlertFeedUnavailable;
    v71[4] = sub_2198BCB88();
    *v52 = 0;
    goto LABEL_24;
  }

  v82 = v12;
  v83 = v14;
  v84 = v15;
  v29 = v13;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = *v11;
      v11 = *(v11 + 8);
      v30 = sub_219BF61F4();
      sub_2186F20D4(0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_219C09EC0;
      v32 = [v17 description];
      v33 = sub_219BF5414();
      v35 = v34;

      v36 = MEMORY[0x277D837D0];
      *(v31 + 56) = MEMORY[0x277D837D0];
      v37 = sub_2186FC3BC();
      *(v31 + 64) = v37;
      *(v31 + 32) = v33;
      *(v31 + 40) = v35;
      v89 = 0;
      v90 = 0xE000000000000000;
      LOBYTE(v87) = v11;
      sub_219BF7484();
      v38 = v89;
      v39 = v90;
      *(v31 + 96) = v36;
      *(v31 + 104) = v37;
      *(v31 + 72) = v38;
      *(v31 + 80) = v39;
      sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
      v40 = sub_219BF6F44();
      sub_219BE5314("Attempting to route to feed that is not available, feedDescriptor=%{public}@, reason=%{public}@", 95, 2, &dword_2186C1000, v40, v30, v31);

      if (v11 > 1)
      {
        v73 = sub_219BE7DB4();
        sub_2198BCB30();
        swift_allocError();
        v75 = v74;
        if (v11 == 2)
        {
          v76 = [objc_msgSend(v17 backingTag)];
          swift_unknownObjectRelease();
          v75[3] = &type metadata for AlertFeedAccessDenied;
          v75[4] = sub_218BF7A98();
          *v75 = v76;
        }

        else
        {
          v74[3] = &type metadata for AlertContentUnavailable;
          v74[4] = sub_2189F7CD8();
        }

        (*(*(v73 - 8) + 104))(v75, *MEMORY[0x277D6DD60], v73);
      }

      else
      {
        if (!v11)
        {
          if (!v84)
          {
            if ([swift_unknownObjectRetain() isMySports])
            {
              v41 = sub_219BF61F4();
              v42 = sub_219BF6F44();
              sub_219BE5314("Unable to load Sports feed due to not being available", 53, 2, &dword_2186C1000, v42, v41, MEMORY[0x277D84F90]);

              v43 = sub_219BE7DB4();
              sub_2198BCB30();
              swift_allocError();
              (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D6DD50], v43);
              swift_willThrow();

              swift_unknownObjectRelease();
              return v11;
            }

            swift_unknownObjectRelease();
          }

          v25 = sub_219BE7DB4();
          sub_2198BCB30();
          swift_allocError();
          v27 = v80;
          v80[3] = &type metadata for AlertFeedUnavailable;
          v28 = sub_2198BCB88();
          goto LABEL_5;
        }

        v78 = sub_219BE7DB4();
        sub_2198BCB30();
        swift_allocError();
        (*(*(v78 - 8) + 104))(v79, *MEMORY[0x277D6DD50], v78);
      }

      swift_willThrow();

      return v11;
    }

    v58 = *v11;
    v59 = *(v11 + 8);
    v60 = sub_219BF61F4();
    sub_2186F20D4(0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_219C09BA0;
    *(v61 + 56) = MEMORY[0x277D837D0];
    *(v61 + 64) = sub_2186FC3BC();
    *(v61 + 32) = v58;
    *(v61 + 40) = v59;
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v62 = sub_219BF6F44();
    sub_219BE5314("Attempting to route to feed that was deprecated, identifier=%{public}@", 70, 2, &dword_2186C1000, v62, v60, v61);
    goto LABEL_23;
  }

  v82 = *v11;
  sub_218BFB73C(0);
  sub_2198BCAC8(v11 + *(v53 + 48), v8, sub_2186FE720);
  __swift_project_boxed_opaque_existential_1((v85 + 24), *(v85 + 48));
  sub_2186CFDE4(0, qword_280EC2F40, &protocol descriptor for TagFeedViewerModuleType);
  sub_219BE1E34();
  if (v88)
  {
    sub_21875F93C(&v87, &v89);
    v54 = v91;
    v55 = v92;
    __swift_project_boxed_opaque_existential_1(&v89, v91);
    if (!v84 || (v29 = v83, v84 == 1))
    {
      v56 = v29;
      v57 = v82;
      v11 = sub_219B7B924(v82, v56, v8, v54, v55);

      if (sub_219BED0C4())
      {
        sub_218C8CDE4(v8, sub_2186FE720);
      }

      else
      {
        sub_219BE9D54();
        [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];

        v77 = sub_219BE9CE4();

        sub_218C8CDE4(v8, sub_2186FE720);
        v11 = v77;
      }

      __swift_destroy_boxed_opaque_existential_1(&v89);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

void sub_2198BBFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  type metadata accessor for FeedAvailability(0);
  sub_219BE3204();
  v15 = sub_219BE1C44();
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  v17 = *(a6 + 16);
  *(v16 + 24) = *a6;
  *(v16 + 40) = v17;
  *(v16 + 56) = *(a6 + 32);
  *(v16 + 64) = a9;
  *(v16 + 72) = a10;

  sub_2198BCEA4(a6, v23);
  sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);

  sub_219BE2F74();

  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;

  v19 = sub_219BE2E54();
  sub_219BE2F74();

  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;

  v21 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_2198BC1C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[12];
  v8 = a1[13];
  __swift_project_boxed_opaque_existential_1(a1 + 9, v7);
  v9 = *a2;
  if (*(a2 + 32))
  {
    v10 = *(a2 + 8);
  }

  else
  {
    v11 = [*a2 identifier];
    v9 = sub_219BF5414();
    v10 = v12;
  }

  v13 = *(a4 + 16);
  v16[0] = *a4;
  v16[1] = v13;
  v17 = *(a4 + 32);
  v14 = (*(v8 + 8))(v9, v10, a3, v16, v7, v8);

  return v14;
}

void sub_2198BC2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_219BE3204();
  v15 = sub_219BE1C44();
  v16 = swift_allocObject();
  *(v16 + 16) = a7;
  v17 = *(a8 + 16);
  *(v16 + 24) = *a8;
  *(v16 + 40) = v17;
  *(v16 + 56) = *(a8 + 32);
  sub_218C1CF68(a8, v26);
  sub_2198BC978(0);
  type metadata accessor for TagFeedViewerViewControllerFactory();
  sub_219BE2F84();

  v18 = sub_219BE1C44();
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a9;
  v19[4] = a10;
  sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);

  sub_219BE2F74();

  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;

  v21 = sub_219BE2E54();
  sub_219BE2F74();

  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;

  v23 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_2198BC558(uint64_t a1, void *a2, uint64_t a3, __int128 *a4)
{
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *&v19 = *a1;
  v7 = v19;
  *(&v19 + 1) = v6;
  *&v20 = v8;
  *(&v20 + 1) = v9;
  v21 = v10;
  sub_21870F240(0, &unk_280EE6FB8, &type metadata for NewsActivity2.Feed, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_21908FD7C(v19, v6, v8, v9, v10);
  sub_219BE3014();
  v11 = a2[12];
  v12 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v11);
  if (v10)
  {
  }

  else
  {
    v13 = [v19 identifier];
    v7 = sub_219BF5414();
    v6 = v14;
  }

  v15 = a4[1];
  v19 = *a4;
  v20 = v15;
  v21 = *(a4 + 32);
  (*(v12 + 8))(v7, v6, a3, &v19, v11, v12);

  v16 = sub_219BE31C4();

  return v16;
}

void sub_2198BC6EC(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v21 = a4;
  v22 = a3;
  sub_2198BC978(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedAvailability(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198BCA60(a1, v9, sub_2198BC978);
  v14 = *v9;
  v13 = *(v9 + 1);
  v15 = *(v9 + 2);
  v16 = *(v9 + 3);
  v17 = *(v7 + 56);
  LOBYTE(v7) = v9[32];
  sub_2198BCAC8(&v9[v17], v12, type metadata accessor for FeedAvailability);
  v23[0] = v14;
  v23[1] = v13;
  v23[2] = v15;
  v23[3] = v16;
  v24 = v7;
  v18 = v25;
  v19 = sub_2198BB45C(v23, v12, a2, v22);
  sub_218C8CDE4(v12, type metadata accessor for FeedAvailability);
  sub_21896FBB0(v14, v13, v15, v16, v7);
  if (!v18)
  {
    *v21 = v19;
  }
}

uint64_t sub_2198BC890()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

void sub_2198BC978(uint64_t a1)
{
  if (!qword_280EE0298[0])
  {
    type metadata accessor for FeedAvailability(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_280EE0298);
    }
  }
}

uint64_t sub_2198BCA60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2198BCAC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2198BCB30()
{
  result = qword_27CC0D7F0;
  if (!qword_27CC0D7F0)
  {
    sub_219BE7DB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D7F0);
  }

  return result;
}

unint64_t sub_2198BCB88()
{
  result = qword_27CC205D8;
  if (!qword_27CC205D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC205D8);
  }

  return result;
}

unint64_t sub_2198BCBDC()
{
  result = qword_27CC205E8;
  if (!qword_27CC205E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC205E8);
  }

  return result;
}

uint64_t objectdestroy_3Tm_15()
{
  v1 = type metadata accessor for TagFeedAsyncConfig(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = (v0 + v2);

  v4 = *(v0 + v2 + 72);
  if (v4 != 255)
  {
    sub_21896FC30(v3[5], v3[6], v3[7], v3[8], v4);
  }

  v5 = *(v1 + 36);
  v6 = sub_219BE5434();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_2198BCD44(uint64_t a1)
{
  v4 = *(type metadata accessor for TagFeedAsyncConfig(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_2198BABB8(a1, v6, v1 + v5);
}

uint64_t sub_2198BCE48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  v7 = *(v2 + 40);
  v9[0] = *(v2 + 24);
  v9[1] = v7;
  v10 = *(v2 + 56);
  result = sub_2198BB45C(v9, a1, v5, v6);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2198BD03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  sub_2198BF65C(0);
  v5[17] = v6;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  sub_218C3F934(0);
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  sub_2198BF6E4(0);
  v5[23] = swift_task_alloc();
  v8 = sub_219BE8944();
  v5[24] = v8;
  v5[25] = *(v8 - 8);
  v5[26] = swift_task_alloc();
  v9 = sub_219BE8164();
  v5[27] = v9;
  v5[28] = *(v9 - 8);
  v5[29] = swift_task_alloc();
  sub_219BEF6B4();
  v5[30] = swift_task_alloc();
  v10 = sub_219BEF594();
  v5[31] = v10;
  v5[32] = *(v10 - 8);
  v5[33] = swift_task_alloc();
  sub_219BEF5B4();
  v5[34] = swift_task_alloc();
  sub_219BEF604();
  v5[35] = swift_task_alloc();
  sub_219BEF644();
  v5[36] = swift_task_alloc();
  sub_219BEF664();
  v5[37] = swift_task_alloc();
  v11 = sub_219BEF694();
  v5[38] = v11;
  v5[39] = *(v11 - 8);
  v5[40] = swift_task_alloc();
  sub_2198BF9C8(0, &qword_280E91358, MEMORY[0x277D326A8]);
  v5[41] = swift_task_alloc();
  sub_2198BF9C8(0, &qword_280E91368, MEMORY[0x277D32698]);
  v5[42] = swift_task_alloc();
  v12 = sub_219BEF6C4();
  v5[43] = v12;
  v5[44] = *(v12 - 8);
  v5[45] = swift_task_alloc();
  sub_219BDCAF4();
  v5[46] = swift_task_alloc();
  v13 = sub_219BDCAE4();
  v5[47] = v13;
  v5[48] = *(v13 - 8);
  v5[49] = swift_task_alloc();
  v14 = sub_219BDCAB4();
  v5[50] = v14;
  v5[51] = *(v14 - 8);
  v5[52] = swift_task_alloc();
  sub_2198BF9C8(0, &unk_280E90C60, MEMORY[0x277D32FE0]);
  v5[53] = swift_task_alloc();
  v15 = sub_219BF0634();
  v5[54] = v15;
  v5[55] = *(v15 - 8);
  v5[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2198BD62C, 0, 0);
}

void *sub_2198BD62C()
{
  v1 = v0[53];
  v41 = v0[54];
  v42 = v0[55];
  v3 = v0[51];
  v2 = v0[52];
  v39 = v0[56];
  v4 = v0[50];
  v63 = v0[49];
  v50 = v0[48];
  v51 = v0[47];
  v43 = v0[44];
  v44 = v0[43];
  v33 = v0[42];
  v34 = v0[41];
  v5 = v0[39];
  v35 = v0[40];
  v36 = v0[38];
  v40 = v0[45];
  v37 = v0[33];
  v6 = v0[32];
  v38 = v0[31];
  v45 = v0[28];
  v47 = v0[27];
  v49 = v0[29];
  v54 = v0[25];
  v56 = v0[24];
  v57 = v0[26];
  v61 = v0[23];
  v7 = v0[14];
  v59 = v0[13];
  (*(v42 + 104))();
  v8 = sub_219BF0BD4();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  (*(v3 + 104))(v2, *MEMORY[0x277D6D178], v4);
  sub_219BE8004();
  sub_219BF6B74();
  sub_219BE8004();
  sub_219BE8044();
  sub_219BE7FD4();
  sub_219BE8064();
  sub_219BE8034();
  sub_219BE7FF4();
  sub_219BE8024();
  sub_219BE8084();
  sub_219BE8014();
  sub_219BEE674();
  sub_219BEE664();
  sub_219BEE654();

  sub_219BDCAC4();
  v9 = sub_219BEF624();
  (*(*(v9 - 8) + 56))(v33, 1, 1, v9);
  v10 = sub_219BEF684();
  (*(*(v10 - 8) + 56))(v34, 1, 1, v10);
  (*(v5 + 104))(v35, *MEMORY[0x277D326B0], v36);
  sub_219BEF654();
  sub_219BEF5F4();
  sub_219BEF5F4();
  (*(v6 + 104))(v37, *MEMORY[0x277D32680], v38);
  sub_219BEF5A4();
  sub_219BEF6A4();

  sub_219BEF5C4();
  v53 = sub_219BEE0E4();
  (*(v43 + 8))(v40, v44);
  (*(v50 + 8))(v63, v51);
  (*(v3 + 8))(v2, v4);
  sub_218864ED8(v1, &unk_280E90C60, MEMORY[0x277D32FE0]);
  (*(v42 + 8))(v39, v41);
  (*(v45 + 16))(v49, v7, v47);
  (*(v54 + 104))(v57, *MEMORY[0x277D6E080], v56);
  sub_218C8AAD8(0);
  (*(*(v11 - 8) + 16))(v61, v59, v11);
  sub_218713AD0(&qword_27CC10500, sub_218C8AAD8, MEMORY[0x277D6EC70]);
  v12 = sub_219BF5E44();
  if (v12)
  {
    v13 = v12;
    v65 = MEMORY[0x277D84F90];
    sub_218C38260(0, v12 & ~(v12 >> 63), 0);
    v14 = v65;
    result = sub_219BF5DF4();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v16 = v0;
      v17 = 0;
      v52 = v0 + 2;
      v18 = v0[6];
      v64 = v16[17];
      v46 = v16[21];
      v48 = v13;
      while (!__OFADD__(v17, 1))
      {
        v19 = v16[19];
        v20 = *(v64 + 48);
        v16[7] = v18;
        result = sub_219BF5DF4();
        if (v18 < v16[8])
        {
          goto LABEL_16;
        }

        result = sub_219BF5E84();
        if (v18 >= v16[9])
        {
          goto LABEL_17;
        }

        v55 = v17 + 1;
        v60 = v16[22];
        v62 = v14;
        v21 = v16[18];
        v58 = v16[16];
        v22 = sub_219BF5EC4();
        v24 = v23;
        sub_2198BF778(0, &qword_27CC17660, MEMORY[0x277D6D710]);
        v26 = v25;
        v27 = *(v25 - 8);
        (*(v27 + 16))(v19 + v20, v24, v25);
        v22(v52, 0);
        *v21 = v17;
        (*(v27 + 32))(&v21[*(v64 + 48)], v19 + v20, v26);
        sub_2198BE1EC(v58, v53, v60);
        sub_2198BF86C(v16[18], sub_2198BF65C);
        v14 = v62;
        v29 = *(v62 + 16);
        v28 = *(v62 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_218C38260((v28 > 1), v29 + 1, 1);
          v14 = v62;
        }

        v30 = v16[22];
        v31 = v16[20];
        *(v14 + 16) = v29 + 1;
        (*(v46 + 32))(v14 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v29, v30, v31);
        v16[11] = v18;
        result = sub_219BF5E54();
        v18 = v16[10];
        ++v17;
        if (v55 == v48)
        {
          sub_2198BF86C(v16[23], sub_2198BF6E4);
          v0 = v16;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_2198BF86C(v0[23], sub_2198BF6E4);
LABEL_12:
    type metadata accessor for SharedWithYouFeedLayoutModel(0);
    sub_2190B6C7C();
    sub_218713AD0(&qword_27CC15C80, type metadata accessor for SharedWithYouFeedLayoutModel, &unk_219C93B48);
    sub_219BE6564();
    sub_219BEE0C4();

    v32 = v0[1];

    return v32();
  }

  return result;
}

uint64_t sub_2198BE1EC@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v126 = a3;
  v119 = a2;
  v103 = a4;
  v133 = type metadata accessor for SharedWithYouFeedLayoutModel(0);
  MEMORY[0x28223BE20](v133);
  v131 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_219BEF974();
  v140 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v129 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3FA40(0);
  v128 = v6;
  v132 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v99 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v100 = &v98 - v9;
  v10 = sub_219BE9FA4();
  v11 = *(v10 - 8);
  v124 = v10;
  v125 = v11;
  MEMORY[0x28223BE20](v10);
  v121 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v102 = &v98 - v14;
  sub_2198BF9C8(0, &qword_280EE9048, MEMORY[0x277D6D1A0]);
  MEMORY[0x28223BE20](v15 - 8);
  v116 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v114 = &v98 - v18;
  MEMORY[0x28223BE20](v19);
  v113 = &v98 - v20;
  MEMORY[0x28223BE20](v21);
  v112 = &v98 - v22;
  v118 = sub_219BDCB14();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v115 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BEE074();
  v120 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v108 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v101 = &v98 - v27;
  MEMORY[0x28223BE20](v28);
  v122 = &v98 - v29;
  v107 = sub_219BED8D4();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198BF9C8(0, &qword_280E91548, MEMORY[0x277D325F8]);
  MEMORY[0x28223BE20](v31 - 8);
  v110 = &v98 - v32;
  sub_2198BF9C8(0, &qword_280E924F8, MEMORY[0x277D31DD0]);
  MEMORY[0x28223BE20](v33 - 8);
  v109 = &v98 - v34;
  v111 = sub_219BF1904();
  v104 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v36 = &v98 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198BF9C8(0, &qword_280E91990, MEMORY[0x277D32218]);
  MEMORY[0x28223BE20](v37 - 8);
  v123 = &v98 - v38;
  v39 = type metadata accessor for ArticleListSharedWithYouFeedGroup(0);
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v98 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for SharedWithYouFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v98 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198BF778(0, &qword_27CC17660, MEMORY[0x277D6D710]);
  sub_219BE6934();
  if ((*(v40 + 48))(v45, 1, v39) == 1)
  {
    v46 = v24;
    v138 = 0;
    v139 = 0;
    v137 = 1;
    v48 = v124;
    v47 = v125;
    v49 = v121;
    (*(v125 + 104))(v121, *MEMORY[0x277D6E9B0], v124);
    sub_2198BF8CC();
    v134 = 0u;
    v135 = 0u;
    v136 = 0;
    v50 = v108;
    v51 = v127;
    sub_219BEE0A4();
    if (v51)
    {
      sub_218864ED8(&v134, &qword_280E91020, sub_2189BD704);
      return (*(v47 + 8))(v49, v48);
    }

    else
    {
      sub_218864ED8(&v134, &qword_280E91020, sub_2189BD704);
      v67 = sub_219BEE004();
      (*(v120 + 8))(v50, v46);
      v68 = *(v67 + 16);
      if (v68)
      {
        v119 = 0;
        *&v134 = MEMORY[0x277D84F90];
        sub_218C383A0(0, v68, 0);
        v69 = v134;
        v70 = *(v140 + 16);
        v71 = v67 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
        v126 = *(v140 + 72);
        v127 = v70;
        v140 += 16;
        v125 = v140 - 8;
        v123 = v67;
        v124 = v132 + 32;
        v72 = v99;
        do
        {
          v73 = v129;
          v74 = v130;
          v75 = v127;
          v127(v129, v71, v130);
          v75(v131, v73, v74);
          sub_218713AD0(&qword_27CC0F770, type metadata accessor for SharedWithYouFeedLayoutModel, &unk_219C93B10);
          sub_219BE75D4();
          (*v125)(v73, v74);
          *&v134 = v69;
          v77 = *(v69 + 16);
          v76 = *(v69 + 24);
          if (v77 >= v76 >> 1)
          {
            sub_218C383A0((v76 > 1), v77 + 1, 1);
            v69 = v134;
          }

          *(v69 + 16) = v77 + 1;
          (*(v132 + 32))(v69 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v77, v72, v128);
          v71 += v126;
          --v68;
        }

        while (v68);
      }

      sub_2190B6C7C();
      sub_218713AD0(&qword_27CC15C80, type metadata accessor for SharedWithYouFeedLayoutModel, &unk_219C93B48);
      return sub_219BE81A4();
    }
  }

  else
  {
    v99 = v24;
    sub_218AC3514(v45, v42);
    v53 = *(v39 + 20);
    v54 = sub_219BEEA64();
    (*(*(v54 - 8) + 56))(v123, 1, 1, v54);
    v121 = v53;
    sub_219BED874();
    v55 = sub_219BEDB64();
    v56 = v109;
    (*(*(v55 - 8) + 56))(v109, 1, 1, v55);
    (*(v106 + 16))(v105, &v42[v53], v107);
    v57 = v110;
    sub_219BEF4D4();
    v58 = sub_219BEF4E4();
    (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
    sub_218713AD0(&qword_27CC20608, type metadata accessor for SharedWithYouFeedSectionDescriptor, &unk_219C19064);
    sub_218713AD0(&qword_27CC15D78, type metadata accessor for SharedWithYouFeedModel, &unk_219C72798);
    v108 = sub_219BE69F4();
    sub_218864ED8(v57, &qword_280E91548, MEMORY[0x277D325F8]);
    sub_218864ED8(v56, &qword_280E924F8, MEMORY[0x277D31DD0]);
    v59 = *(v104 + 8);
    v60 = v111;
    v59(v36, v111);
    sub_219BED874();
    v61 = sub_219BF44B4();
    v59(v36, v60);
    *(&v135 + 1) = sub_219BF3594();
    v136 = MEMORY[0x277D33EB8];
    *&v134 = v61;
    v62 = sub_219BDCB24();
    v63 = *(*(v62 - 8) + 56);
    v63(v112, 1, 1, v62);
    v63(v113, 1, 1, v62);
    v63(v114, 1, 1, v62);
    v63(v116, 1, 1, v62);

    v64 = v115;
    sub_219BDCB04();
    v65 = v122;
    v66 = v127;
    sub_219BEE0B4();
    if (v66)
    {

      (*(v117 + 8))(v64, v118);
      sub_218864ED8(v123, &qword_280E91990, MEMORY[0x277D32218]);
      sub_2198BF86C(v42, type metadata accessor for ArticleListSharedWithYouFeedGroup);
      return sub_218864ED8(&v134, &qword_280E91020, sub_2189BD704);
    }

    else
    {
      v78 = MEMORY[0x277D84F90];
      v116 = v61;
      v119 = 0;
      v121 = v42;
      (*(v117 + 8))(v64, v118);

      sub_218864ED8(&v134, &qword_280E91020, sub_2189BD704);
      v79 = v101;
      v80 = v99;
      (*(v120 + 16))(v101, v65, v99);
      *&v134 = sub_219B6F624(v79);
      *(&v134 + 1) = v81;
      *&v135 = v82;
      v83 = *MEMORY[0x277D6E980];
      v84 = sub_219BE9F84();
      v85 = v102;
      (*(*(v84 - 8) + 104))(v102, v83, v84);
      (*(v125 + 104))(v85, *MEMORY[0x277D6E988], v124);
      v86 = sub_219BEE004();
      v87 = *(v86 + 16);
      if (v87)
      {
        v137 = v78;
        sub_218C383A0(0, v87, 0);
        v88 = v137;
        v127 = *(v140 + 16);
        v89 = (*(v140 + 80) + 32) & ~*(v140 + 80);
        v118 = v86;
        v90 = v86 + v89;
        v91 = *(v140 + 72);
        v140 += 16;
        v125 = v140 - 8;
        v126 = v91;
        v124 = v132 + 32;
        v92 = v100;
        do
        {
          v93 = v129;
          v94 = v130;
          v95 = v127;
          v127(v129, v90, v130);
          v95(v131, v93, v94);
          sub_218713AD0(&qword_27CC0F770, type metadata accessor for SharedWithYouFeedLayoutModel, &unk_219C93B10);
          sub_219BE75D4();
          (*v125)(v93, v94);
          v137 = v88;
          v97 = *(v88 + 16);
          v96 = *(v88 + 24);
          if (v97 >= v96 >> 1)
          {
            sub_218C383A0((v96 > 1), v97 + 1, 1);
            v88 = v137;
          }

          *(v88 + 16) = v97 + 1;
          (*(v132 + 32))(v88 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v97, v92, v128);
          v90 += v126;
          --v87;
        }

        while (v87);

        v80 = v99;
        v65 = v122;
      }

      else
      {
      }

      sub_2190B6C7C();
      sub_218713AD0(&qword_27CC15C80, type metadata accessor for SharedWithYouFeedLayoutModel, &unk_219C93B48);
      sub_219BE81A4();

      (*(v120 + 8))(v65, v80);
      sub_218864ED8(v123, &qword_280E91990, MEMORY[0x277D32218]);
      return sub_2198BF86C(v121, type metadata accessor for ArticleListSharedWithYouFeedGroup);
    }
  }
}

uint64_t sub_2198BF598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return sub_2198BD03C(a1, a2, a3, a4);
}

void sub_2198BF65C(uint64_t a1)
{
  if (!qword_27CC205F0)
  {
    sub_2198BF778(255, &qword_27CC17660, MEMORY[0x277D6D710]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC205F0);
    }
  }
}

void sub_2198BF6E4(uint64_t a1)
{
  if (!qword_27CC205F8)
  {
    sub_218C8AAD8(255);
    sub_218713AD0(&qword_27CC13FB8, sub_218C8AAD8, MEMORY[0x277D6EC68]);
    v1 = sub_219BF7544();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC205F8);
    }
  }
}

void sub_2198BF778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SharedWithYouFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for SharedWithYouFeedModel(255);
    v8[2] = sub_218713AD0(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor, &unk_219C1903C);
    v8[3] = sub_218713AD0(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel, &unk_219C72588);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2198BF86C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2198BF8CC()
{
  result = qword_27CC20600;
  if (!qword_27CC20600)
  {
    sub_2198BF778(255, &qword_27CC17660, MEMORY[0x277D6D710]);
    sub_218713AD0(&qword_27CC20608, type metadata accessor for SharedWithYouFeedSectionDescriptor, &unk_219C19064);
    sub_218713AD0(&qword_27CC15D78, type metadata accessor for SharedWithYouFeedModel, &unk_219C72798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20600);
  }

  return result;
}

void sub_2198BF9C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

Swift::Void __swiftcall AMSUIToastAppearance.styleAccessoryButton(color:font:)(UIColor color, UIFont font)
{
  [v2 setAccessoryButtonColor_];

  [v2 setAccessoryButtonFont_];
}

Swift::Void __swiftcall AMSUIToastAppearance.styleMessageLabel(color:font:)(UIColor color, UIFont font)
{
  [v2 setMessageTextColor_];

  [v2 setMessageFont_];
}

Swift::Void __swiftcall AMSUIToastAppearance.styleTitleLabel(color:font:)(UIColor color, UIFont font)
{
  [v2 setTitleTextColor_];

  [v2 setTitleFont_];
}

id sub_2198BFB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SportsModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SportsManagementDetailLayoutModel(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952EB8(0);
  sub_219BE75E4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v12 = *(v10 + 152);
    v13 = *(v10 + 184);
    v52 = *(v10 + 168);
    v53 = v13;
    v54 = *(v10 + 25);
    v14 = *(v10 + 88);
    v15 = *(v10 + 120);
    v48 = *(v10 + 104);
    v49 = v15;
    v50 = *(v10 + 136);
    v51 = v12;
    v16 = *(v10 + 24);
    v17 = *(v10 + 56);
    v44 = *(v10 + 40);
    v45 = v17;
    v46 = *(v10 + 72);
    v47 = v14;
    v18 = *(v10 + 8);
    v43 = v16;
    v42 = v18;
    sub_218C94EE0(0);
    v19 = sub_219BF5FA4();
    __swift_project_boxed_opaque_existential_1(v4 + 6, v4[9]);
    v20 = sub_219BE6134();
    sub_218E13964(v11, &v42, v20);

    v21 = v4[4];
    v22 = *(&v52 + 1);
    v24 = v53;
    v23 = v54;
    v25 = v19;
    [v25 setSeparatorInset_];
    [v25 setBackgroundColor_];
    [v25 setAccessoryType_];
    [v25 setSelectionStyle_];
    sub_218C95D44(v25);
  }

  else
  {
    sub_218C95678(0);
    v27 = &v10[*(v26 + 48)];
    v28 = *(v27 + 11);
    v52 = *(v27 + 10);
    v53 = v28;
    v54 = *(v27 + 24);
    v29 = *(v27 + 7);
    v48 = *(v27 + 6);
    v49 = v29;
    v30 = *(v27 + 9);
    v50 = *(v27 + 8);
    v51 = v30;
    v31 = *(v27 + 5);
    v46 = *(v27 + 4);
    v47 = v31;
    v32 = *(v27 + 2);
    v45 = *(v27 + 3);
    v44 = v32;
    v33 = *v27;
    v43 = *(v27 + 1);
    v42 = v33;
    sub_218A3A4F8(v10, v7);
    sub_218C94EE0(0);
    v34 = sub_219BF5FA4();
    __swift_project_boxed_opaque_existential_1(v4 + 6, v4[9]);
    v35 = *&v7[*(v5 + 24)];
    v36 = sub_219BE6134();
    sub_218E13964(v35, &v42, v36);

    v37 = v4[4];
    v38 = *(&v52 + 1);
    v40 = v53;
    v39 = v54;
    v25 = v34;
    [v25 setSeparatorInset_];
    [v25 setBackgroundColor_];
    [v25 setAccessoryType_];
    [v25 setSelectionStyle_];
    sub_218C9599C(v25, v7);

    sub_218C956E4(v7);
  }

  return v25;
}

id sub_2198BFFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_2198BFB18(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_2198C0008(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2198C0074()
{
  v1 = sub_219BE1EF4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198C034C(0, &unk_280EE6850, sub_21872F37C, MEMORY[0x277D6CF88]);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2198C034C(0, &unk_280E8C0C8, MEMORY[0x277D6CA88], MEMORY[0x277D84560]);
  sub_219BE1CA4();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  v11 = *(v0 + 16);
  v7 = qword_280EE7C40;
  swift_unknownObjectRetain();
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v1, qword_280EE7C48);
  (*(v2 + 16))(v4, v8, v1);
  sub_21872F37C();
  sub_219BE3364();
  sub_219BE1C94();
  v11 = v6;
  sub_2198C034C(0, &qword_280EE6AA8, sub_2189F8FC8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_2198C034C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_2198C03D4@<D0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X8>)
{
  *&v6 = COERCE_DOUBLE(sub_219BDCAF4());
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 24);
  v102 = *(a1 + 16);
  v12 = *(a1 + 120);
  v11 = *(a1 + 128);
  *&v13 = COERCE_DOUBLE(sub_219BF0CD4());
  v14 = *(v7 + 104);
  LODWORD(x) = *MEMORY[0x277D6D198];
  y = *&v14;
  v14(v9);
  v105 = *&v13;
  sub_219BF0CC4();
  v16 = v15;
  v17 = *(v7 + 8);
  v106 = *&v6;
  width = *&v17;
  v17(v9, v6);
  sub_219BE8004();
  v19 = v18;
  sub_219BE7FF4();
  v21 = v19 - v20;
  sub_219BE7FF4();
  sub_219BF6034();
  v23 = v21 - v22 - v16;
  v103 = type metadata accessor for ChannelCategoryLayoutOptions(0);
  v24 = *(v103 + 20);
  v104 = a2;
  v25 = *(*&a2 + v24);
  v26 = 0.0;
  v27 = 0.0;
  if (v11 != 0.0 && (v12 != 0.0 || v11 != -2.68156159e154))
  {
    if (sub_219BF78F4())
    {
      v27 = 0.0;
    }

    else
    {
      v27 = v16 + v25;
    }
  }

  v94 = v25;
  v95 = v12;
  v28 = v102;
  if (!v10)
  {
    v28 = 0.0;
  }

  height = v28;
  *&v29 = -2.68156159e154;
  if (v10)
  {
    v29 = v10;
  }

  v97 = *&v29;
  sub_21899E550(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v31 = *MEMORY[0x277D740C0];
  v102 = v11;
  *(inited + 32) = v31;
  v32 = objc_opt_self();
  v33 = v31;

  v34 = [v32 labelColor];
  v35 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  *(inited + 40) = v34;
  v36 = *MEMORY[0x277D740A8];
  *(inited + 64) = v35;
  *(inited + 72) = v36;
  v37 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v38 = v36;
  v39 = sub_219BF6BD4();
  v40 = v106;
  (*&y)(v9, LODWORD(x), *&v106);
  v41 = sub_219BF0CB4();

  (*&width)(v9, COERCE_CGFLOAT(*&v40));
  *(inited + 104) = v37;
  *(inited + 80) = v41;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  v42 = v102;
  swift_arrayDestroy();
  v43 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v44 = sub_219BF53D4();

  type metadata accessor for Key(0);
  sub_21899E604();
  v45 = sub_219BF5204();

  v46 = [v43 initWithString:v44 attributes:v45];

  [v46 boundingRectWithSize:3 options:0 context:{v23 - v25, 1.79769313e308}];
  v47 = v103;
  v48 = v104;
  v49 = *(*&v104 + *(v103 + 24));
  v107.origin.x = v27;
  v107.origin.y = v49;
  v108 = CGRectIntegral(v107);
  x = v108.origin.x;
  y = v108.origin.y;
  width = v108.size.width;
  height = v108.size.height;
  v109.size.height = v49 + CGRectGetMaxY(v108);
  v109.origin.x = 0.0;
  v109.origin.y = 0.0;
  v109.size.width = v21;
  v110 = CGRectIntegral(v109);
  v50 = v110.origin.x;
  v106 = v110.origin.y;
  v105 = v110.size.width;
  v51 = v110.size.height;
  if (v42 == 0.0 || v95 == 0.0 && v42 == -2.68156159e154)
  {
    v52 = 0.0;
    v53 = 0.0;
    v54 = 0.0;
  }

  else
  {
    v87 = sub_219BF78F4();
    v52 = 0.0;
    v53 = 0.0;
    v54 = 0.0;
    if ((v87 & 1) == 0)
    {
      v114.origin.x = v50;
      v114.origin.y = v106;
      v114.size.width = v105;
      v114.size.height = v51;
      v115.origin.y = CGRectGetMaxY(v114) * 0.5 - v16 * 0.5;
      v115.origin.x = 0.0;
      v115.size.width = v16;
      v115.size.height = v16;
      *(&v52 - 1) = CGRectIntegral(v115);
      v26 = v88;
      v54 = v89;
    }
  }

  v102 = v21;
  if (*(*&v48 + *(v47 + 28)))
  {
    v55 = v52;
    v56 = v53;
    sub_219BE7FF4();
    v58 = v94 * 0.5 + v57;
  }

  else
  {
    v59 = v26;
    v55 = v52;
    v56 = v53;
    v60 = v54;
    MinX = CGRectGetMinX(*(&v52 - 1));
    sub_219BE7FF4();
    v58 = MinX - v62;
  }

  v97 = v58;
  v92 = v26;
  v111.origin.x = v26;
  v111.origin.y = v55;
  v111.size.width = v56;
  v111.size.height = v54;
  v63 = CGRectGetMinX(v111);
  v95 = v55;
  v91 = v63;
  v93 = v50;
  v112.origin.x = v50;
  v94 = v54;
  v64 = v106;
  v112.origin.y = v106;
  v65 = v105;
  v112.size.width = v105;
  v96 = v51;
  v112.size.height = v51;
  v66 = CGRectGetHeight(v112) + -0.5;
  v113.origin.x = v26;
  v113.origin.y = v55;
  v113.size.width = v56;
  v113.size.height = v54;
  v67 = v102 - CGRectGetMinX(v113);
  v68 = *(*&v48 + *(v47 + 32)) == 0;
  v69 = v91;
  if (*(*&v48 + *(v47 + 32)))
  {
    v69 = 0.0;
  }

  v104 = v69;
  v70 = v64;
  if (v68)
  {
    v71 = v66;
  }

  else
  {
    v71 = 0.0;
  }

  if (!v68)
  {
    v67 = 0.0;
  }

  v103 = *&v67;
  v72 = 0.5;
  if (!v68)
  {
    v72 = 0.0;
  }

  v102 = v72;
  sub_219BF6014();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;

  *a3 = v93;
  *(a3 + 8) = v70;
  v81 = v96;
  *(a3 + 16) = v65;
  *(a3 + 24) = v81;
  v82 = v95;
  *(a3 + 32) = v92;
  *(a3 + 40) = v82;
  v83 = v94;
  *(a3 + 48) = v56;
  *(a3 + 56) = v83;
  v84 = y;
  *(a3 + 64) = x;
  *(a3 + 72) = v84;
  v85 = height;
  *(a3 + 80) = width;
  *(a3 + 88) = v85;
  *(a3 + 96) = v104;
  *(a3 + 104) = v71;
  result = v102;
  *(a3 + 112) = v103;
  *(a3 + 120) = result;
  *(a3 + 128) = v74;
  *(a3 + 136) = v76;
  *(a3 + 144) = v78;
  *(a3 + 152) = v80;
  return result;
}

double sub_2198C0B5C@<D0>(double *a1@<X0>, double a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_219BDCAF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = COERCE_DOUBLE(sub_219BF0CD4());
  LODWORD(x) = *MEMORY[0x277D6D198];
  y = *(v7 + 104);
  (*&y)(v9);
  sub_219BF0CC4();
  v11 = v10;
  v81 = *(v7 + 8);
  (*&v81)(v9, v6);
  sub_219BE8004();
  v13 = v12;
  sub_219BE7FF4();
  v15 = v13 - v14;
  v74 = a2;
  sub_219BE7FF4();
  sub_219BF6034();
  v17 = v15 - v16 - v11;
  v79 = type metadata accessor for ChannelCategoryLayoutOptions(0);
  v18 = *(*&a2 + *(v79 + 20));
  v19 = a1[1];
  width = *a1;
  height = v19;
  sub_21899E550(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v21 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 labelColor];
  v25 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  *(inited + 40) = v24;
  v26 = *MEMORY[0x277D740A8];
  *(inited + 64) = v25;
  *(inited + 72) = v26;
  v27 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v28 = v26;
  v29 = sub_219BF6BD4();
  (*&y)(v9, LODWORD(x), v6);
  v30 = sub_219BF0CB4();

  (*&v81)(v9, v6);
  v31 = v74;
  *(inited + 104) = v27;
  *(inited + 80) = v30;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  swift_arrayDestroy();
  v32 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v33 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v34 = sub_219BF5204();
  v35 = v79;

  v36 = [v32 initWithString:v33 attributes:v34];

  [v36 boundingRectWithSize:3 options:0 context:{v17 - v18, 1.79769313e308}];
  v37 = *(*&v31 + v35[6]);
  v82.origin.x = v11 + v18;
  v82.origin.y = v37;
  v83 = CGRectIntegral(v82);
  x = v83.origin.x;
  y = v83.origin.y;
  width = v83.size.width;
  height = v83.size.height;
  v84.size.height = v37 + CGRectGetMaxY(v83);
  v84.origin.x = 0.0;
  v84.origin.y = 0.0;
  v73 = v15;
  v84.size.width = v15;
  v85 = CGRectIntegral(v84);
  v81 = v85.origin.x;
  v80 = v85.origin.y;
  v38 = v85.size.width;
  v39 = v85.size.height;
  v86.origin.y = CGRectGetMaxY(v85) * 0.5 - v11 * 0.5;
  v86.origin.x = 0.0;
  v86.size.width = v11;
  v86.size.height = v11;
  v87 = CGRectIntegral(v86);
  v40 = v87.origin.x;
  v41 = v87.origin.y;
  v42 = v87.size.width;
  v43 = v87.size.height;
  if (*(*&v31 + v35[7]) == 1)
  {
    sub_219BE7FF4();
    v45 = v18 * 0.5 + v44;
  }

  else
  {
    MinX = CGRectGetMinX(v87);
    sub_219BE7FF4();
    v45 = MinX - v47;
  }

  v72 = v45;
  v88.origin.x = v40;
  v88.origin.y = v41;
  v88.size.width = v42;
  v88.size.height = v43;
  v48 = CGRectGetMinX(v88);
  v71 = v40;
  v49 = v48;
  v89.origin.x = v81;
  v89.origin.y = v80;
  v89.size.width = v38;
  v89.size.height = v39;
  v50 = CGRectGetHeight(v89) + -0.5;
  v90.origin.x = v40;
  v90.origin.y = v41;
  v90.size.width = v42;
  v90.size.height = v43;
  v51 = v73 - CGRectGetMinX(v90);
  v52 = *(*&v31 + v35[8]) == 0;
  if (*(*&v31 + v35[8]))
  {
    v53 = 0.0;
  }

  else
  {
    v53 = v49;
  }

  v79 = *&v53;
  if (v52)
  {
    v54 = v50;
  }

  else
  {
    v54 = 0.0;
  }

  v74 = v54;
  if (!v52)
  {
    v51 = 0.0;
  }

  v73 = v51;
  v55 = 0.5;
  if (!v52)
  {
    v55 = 0.0;
  }

  v70 = v55;
  sub_219BF6014();
  v72 = v56;
  v58 = v57;
  v60 = v59;
  v62 = v61;

  v63 = v80;
  *a3 = v81;
  *(a3 + 8) = v63;
  *(a3 + 16) = v38;
  *(a3 + 24) = v39;
  *(a3 + 32) = v71;
  *(a3 + 40) = v41;
  *(a3 + 48) = v42;
  *(a3 + 56) = v43;
  v64 = y;
  *(a3 + 64) = x;
  *(a3 + 72) = v64;
  v65 = height;
  *(a3 + 80) = width;
  *(a3 + 88) = v65;
  v66 = v74;
  *(a3 + 96) = v79;
  *(a3 + 104) = v66;
  v67 = v70;
  *(a3 + 112) = v73;
  *(a3 + 120) = v67;
  result = v72;
  *(a3 + 128) = v72;
  *(a3 + 136) = v58;
  *(a3 + 144) = v60;
  *(a3 + 152) = v62;
  return result;
}

double (*sub_2198C11A0())(uint64_t a1)
{
  v1 = *(v0 + 64);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v2 = sub_2198C1B28;
    *(v0 + 64) = sub_2198C1B28;
    *(v0 + 72) = v3;

    sub_2198C1AC8(v4, v5);
  }

  sub_2198C1AD8(v1);
  return v2;
}

double (*sub_2198C1250())(uint64_t a1)
{
  v1 = *(v0 + 80);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v2 = sub_2198C1AA4;
    *(v0 + 80) = sub_2198C1AA4;
    *(v0 + 88) = v3;

    sub_2198C1AC8(v4, v5);
  }

  sub_2198C1AD8(v1);
  return v2;
}

double sub_2198C1300(uint64_t a1, uint64_t a2, char a3, char a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_2198C13D8();
    [v9 setPersonalizedAds_];

    *(v8 + 56) = a4;
    sub_219BDC484();
    type metadata accessor for OnboardingPersonalizedAdsStep();
    sub_2198C1AE8(&qword_27CC20610, &unk_219CB0120);
    sub_219BDCA54();

    sub_2198C1804();
  }

  return result;
}

id sub_2198C13D8()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 96);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D23658]) init];
    v4 = *(v0 + 96);
    *(v0 + 96) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_2198C1444()
{
  v1 = v0;
  sub_219BDC484();
  sub_2198C1AE8(&unk_280EAF968, &unk_219CB00E0);
  sub_219BDC7D4();

  if (v22)
  {
    return 1;
  }

  v3 = sub_2198C13D8();
  v4 = [v3 acknowledgedVersionForPersonalizedAds];

  if (v4 >= [*(v1 + 96) latestVersionForPersonalizedAdsConsent])
  {
    if (qword_280EE6088 != -1)
    {
      swift_once();
    }

    v12 = sub_219BE5434();
    __swift_project_value_buffer(v12, qword_280F627C0);

    v13 = sub_219BE5414();
    v14 = sub_219BF6214();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134349056;
      v16 = sub_2198C13D8();
      v17 = [v16 acknowledgedVersionForPersonalizedAds];

      *(v15 + 4) = v17;

      _os_log_impl(&dword_2186C1000, v13, v14, "Not showing due to version: %{public}ld", v15, 0xCu);
      MEMORY[0x21CECF960](v15, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v5 = [objc_opt_self() sharedAccount];
  v6 = [v5 isContentStoreFrontSupported];

  if (!v6)
  {
    if (qword_280EE6088 != -1)
    {
      swift_once();
    }

    v18 = sub_219BE5434();
    __swift_project_value_buffer(v18, qword_280F627C0);
    v19 = sub_219BE5414();
    v20 = sub_219BF6214();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2186C1000, v19, v20, "Not showing due to unsupported storefront", v21, 2u);
      MEMORY[0x21CECF960](v21, -1, -1);
    }

    return 0;
  }

  v7 = [*(v1 + 96) shouldPresentPersonalizedAdsOnboarding];
  if (qword_280EE6088 != -1)
  {
    swift_once();
  }

  v8 = sub_219BE5434();
  __swift_project_value_buffer(v8, qword_280F627C0);
  v9 = sub_219BE5414();
  v10 = sub_219BF6214();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v7;
    _os_log_impl(&dword_2186C1000, v9, v10, "Should present personalized ads onboarding: %{BOOL}d", v11, 8u);
    MEMORY[0x21CECF960](v11, -1, -1);
  }

  return v7;
}

double sub_2198C1804()
{
  v1 = v0;
  v2 = sub_2198C13D8();
  v3 = [v2 latestVersionForPersonalizedAdsConsent];

  [*(v1 + 96) setAcknowledgedVersionForPersonalizedAds_];
  if (qword_280EE6088 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F627C0);

  oslog = sub_219BE5414();
  v5 = sub_219BF6214();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    v7 = sub_2198C13D8();
    v8 = [v7 acknowledgedVersionForPersonalizedAds];

    *(v6 + 4) = v8;

    _os_log_impl(&dword_2186C1000, oslog, v5, "Set acknowledgedVersion to %{public}ld", v6, 0xCu);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  else
  {
  }

  return result;
}

uint64_t sub_2198C19A0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_2198C1AC8(*(v0 + 64), *(v0 + 72));
  sub_2198C1AC8(*(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_2198C1AC8(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
    return sub_2187FABEC(result, a2);
  }

  return result;
}

uint64_t sub_2198C1AD8(uint64_t result)
{
  if (result != 1)
  {
    return sub_2188202A8(result);
  }

  return result;
}

uint64_t sub_2198C1AE8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OnboardingPersonalizedAdsStep();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2198C1B74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  sub_2186F64EC(0);
  v85 = v3;
  v82 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v81 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8A90(0);
  MEMORY[0x28223BE20](v5 - 8);
  v79 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3B14(0);
  v76 = v7;
  v75 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v77 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v78 = v58 - v10;
  v80 = type metadata accessor for TrendingMagazineFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v80);
  v87 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8AB0(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v84 = v58 - v16;
  sub_218CE8B24(0);
  MEMORY[0x28223BE20](v17 - 8);
  v74 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = v58 - v20;
  sub_2198C2E6C(0, &qword_280E8CAF8, sub_2198C2DB4, &type metadata for TrendingMagazineFeedGroupKnobs.Keys, MEMORY[0x277D844C8]);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = v58 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198C2DB4();
  v26 = v88;
  sub_219BF7B34();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v70 = v23;
  v72 = 0;
  v73 = v14;
  v88 = a1;
  v28 = v75;
  v29 = v86;
  v30 = v76;
  (*(v75 + 56))(v86, 1, 1, v76);
  LOBYTE(v97) = 5;
  sub_219BF7674();
  v68 = v99;
  v101 = v100;
  LOBYTE(v95) = 6;
  sub_219BF7674();
  v67 = v97;
  v66 = v98;
  LOBYTE(v93) = 8;
  sub_219BF7674();
  v65 = v95;
  v64 = v96;
  LOBYTE(v91) = 7;
  sub_219BF7674();
  v59 = v93;
  v58[1] = v94;
  LOBYTE(v89) = 2;
  sub_219BF7674();
  v63 = v91;
  v62 = v92;
  v103 = 1;
  sub_219BF7674();
  v61 = v89;
  v60 = v90;
  v102 = 3;
  sub_219BF7674();
  v31 = v103;
  v102 = 4;
  sub_2186EC680(&qword_280E91838, sub_2186F64EC, MEMORY[0x277D32328]);
  v71 = v22;
  v69 = v25;
  sub_219BF7674();
  v32 = v74;
  sub_218CE8CA0(v29, v74, sub_218CE8B24);
  v33 = *(v28 + 48);
  v34 = v33(v32, 1, v30);
  v35 = v30;
  v36 = v28;
  if (v34 == 1)
  {
    v37 = v87;
    v38 = v78;
    if (qword_280E91AB8 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v35, qword_280F61818);
    v40 = v77;
    (*(v36 + 16))(v77, v39, v35);
    v41 = v40;
    if (v33(v32, 1, v35) != 1)
    {
      sub_218CE8C40(v32, sub_218CE8B24);
    }
  }

  else
  {
    v41 = v77;
    (*(v28 + 32))(v77, v32, v35);
    v37 = v87;
    v38 = v78;
  }

  v42 = sub_219BEDB04();
  v43 = v79;
  (*(*(v42 - 8) + 56))(v79, 1, 1, v42);
  sub_219BEEA04();
  sub_218CE8C40(v43, sub_218CE8A90);
  (*(v36 + 8))(v41, v35);
  (*(v36 + 32))(v37, v38, v35);
  v44 = 3;
  if (!v62)
  {
    v44 = v63;
  }

  v45 = v80;
  *&v37[*(v80 + 20)] = v44;
  v46 = v45;
  v47 = 9;
  if (!v60)
  {
    v47 = v61;
  }

  *&v37[*(v45 + 24)] = v47;
  v37[*(v45 + 28)] = (v31 == 2) | v31 & 1;
  v48 = v84;
  v49 = v73;
  sub_218CE8CA0(v84, v73, sub_218CE8AB0);
  v50 = v82;
  v51 = *(v82 + 48);
  v52 = v85;
  if (v51(v49, 1, v85) == 1)
  {
    type metadata accessor for MagazineFeedServiceConfig(0);
    sub_2186EC680(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
    v53 = v81;
    sub_219BEEC74();
    sub_218CE8C40(v48, sub_218CE8AB0);
    sub_218CE8C40(v86, sub_218CE8B24);
    (*(v70 + 8))(v69, v71);
    v54 = v51(v49, 1, v52);
    v55 = v88;
    v56 = v83;
    if (v54 != 1)
    {
      sub_218CE8C40(v49, sub_218CE8AB0);
    }
  }

  else
  {
    sub_218CE8C40(v48, sub_218CE8AB0);
    sub_218CE8C40(v86, sub_218CE8B24);
    (*(v70 + 8))(v69, v71);
    v53 = v81;
    (*(v50 + 32))(v81, v49, v52);
    v55 = v88;
    v56 = v83;
  }

  v57 = v87;
  (*(v50 + 32))(&v87[*(v46 + 32)], v53, v52);
  sub_2198C2E08(v57, v56);
  return __swift_destroy_boxed_opaque_existential_1(v55);
}

unint64_t sub_2198C2694(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x73656C7572;
    v6 = 0xD000000000000010;
    if (a1 != 2)
    {
      v6 = 0xD000000000000019;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746C754D6B6E6172;
    v2 = 0x726F635365736162;
    if (a1 != 7)
    {
      v2 = 0x72685465726F6373;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6C6F6F706572;
    if (a1 != 4)
    {
      v3 = 0x727563634F78616DLL;
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

uint64_t sub_2198C27DC(void *a1, __n128 a2)
{
  sub_2198C2E6C(0, &qword_280E8C3A8, sub_2198C2ED4, &type metadata for TrendingMagazineFeedGroupKnobs.CodingKeys, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198C2ED4();
  sub_219BF7B44();
  v15 = 0;
  sub_2186E3B14(0);
  sub_2186EC680(&qword_280E919D0, sub_2186E3B14, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for TrendingMagazineFeedGroupKnobs(0);
    v14 = 1;
    sub_219BF7824();
    v13 = 2;
    sub_219BF7824();
    v12 = 3;
    sub_219BF7804();
    v11 = 4;
    sub_2186F64EC(0);
    sub_2186EC680(&unk_280E91840, sub_2186F64EC, MEMORY[0x277D32320]);
    sub_219BF7834();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2198C2A9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2198C3158(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2198C2AC4(uint64_t a1)
{
  v2 = sub_2198C2DB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2198C2B00(uint64_t a1)
{
  v2 = sub_2198C2DB4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2198C2B3C()
{
  v1 = *v0;
  v2 = 0x73656C7572;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000019;
  if (v1 != 3)
  {
    v4 = 0x6C6F6F706572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_2198C2BDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2198C345C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2198C2C04(uint64_t a1)
{
  v2 = sub_2198C2ED4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2198C2C40(uint64_t a1)
{
  v2 = sub_2198C2ED4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2198C2CB0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MagazineFeedServiceConfig(0);
  sub_2186EC680(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TrendingMagazineFeedGroupKnobs(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]) || *(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  return sub_219BEEC64();
}

unint64_t sub_2198C2DB4()
{
  result = qword_280EAA188;
  if (!qword_280EAA188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAA188);
  }

  return result;
}

uint64_t sub_2198C2E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrendingMagazineFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2198C2E6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_2198C2ED4()
{
  result = qword_280EAA1B0;
  if (!qword_280EAA1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAA1B0);
  }

  return result;
}

unint64_t sub_2198C2F4C()
{
  result = qword_27CC20618;
  if (!qword_27CC20618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20618);
  }

  return result;
}

unint64_t sub_2198C2FA4()
{
  result = qword_27CC20620;
  if (!qword_27CC20620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20620);
  }

  return result;
}

unint64_t sub_2198C2FFC()
{
  result = qword_280EAA1A0;
  if (!qword_280EAA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAA1A0);
  }

  return result;
}

unint64_t sub_2198C3054()
{
  result = qword_280EAA1A8;
  if (!qword_280EAA1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAA1A8);
  }

  return result;
}

unint64_t sub_2198C30AC()
{
  result = qword_280EAA190;
  if (!qword_280EAA190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAA190);
  }

  return result;
}

unint64_t sub_2198C3104()
{
  result = qword_280EAA198;
  if (!qword_280EAA198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAA198);
  }

  return result;
}

uint64_t sub_2198C3158(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000219D3B0F0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x727563634F78616DLL && a2 == 0xED000065636E6572 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746C754D6B6E6172 && a2 == 0xEE007265696C7069 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F635365736162 && a2 == 0xE900000000000065 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x72685465726F6373 && a2 == 0xEE00646C6F687365)
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

uint64_t sub_2198C345C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000219D3B0F0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_2198C3610()
{
  sub_219BDC984();
  swift_allocObject();
  result = sub_219BDC974();
  qword_27CC20628 = result;
  return result;
}

uint64_t sub_2198C3670(void *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC087F0 != -1)
  {
    swift_once();
  }

  v7[1] = 0;
  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC087F8 != -1)
  {
    swift_once();
  }

  sub_219BDBBB4();
  sub_21871DBD4();
  sub_219BDC924();
  return (*(v3 + 8))(v5, v2);
}

uint64_t static Presets.Onboarding.initialInterludeSettings.getter()
{
  if (qword_27CC08850 != -1)
  {
    swift_once();
  }
}

uint64_t type metadata accessor for ArticleListTagFeedGroupConfigData(uint64_t a1)
{
  result = qword_280EA3F48;
  if (!qword_280EA3F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2198C3904@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_219BF1934();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198C3E30(0, &qword_280E8C9D0, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198C3DDC();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v18 = 0;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *(v11 + *(type metadata accessor for ArticleListTagFeedGroupConfigData(0) + 20)) = 1;
    (*(v12 + 32))(v11, v17, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2198C3B68(void *a1, __n128 a2)
{
  v4 = v2;
  sub_2198C3E30(0, &qword_27CC20630, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198C3DDC();
  sub_219BF7B44();
  v12[15] = 0;
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
  sub_219BF7834();
  if (!v3)
  {
    v12[14] = *(v4 + *(type metadata accessor for ArticleListTagFeedGroupConfigData(0) + 20));
    v12[13] = 1;
    sub_218933D28();
    sub_219BF7834();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2198C3D34(uint64_t a1)
{
  v2 = sub_2198C3DDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2198C3D70(uint64_t a1)
{
  v2 = sub_2198C3DDC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2198C3DDC()
{
  result = qword_280EA3F78[0];
  if (!qword_280EA3F78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA3F78);
  }

  return result;
}

void sub_2198C3E30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2198C3DDC();
    v7 = a3(a1, &type metadata for ArticleListTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2198C3EA8()
{
  result = qword_27CC20638;
  if (!qword_27CC20638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20638);
  }

  return result;
}

unint64_t sub_2198C3F00()
{
  result = qword_280EA3F68;
  if (!qword_280EA3F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA3F68);
  }

  return result;
}

unint64_t sub_2198C3F58()
{
  result = qword_280EA3F70;
  if (!qword_280EA3F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA3F70);
  }

  return result;
}

double sub_2198C3FD8(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v51 = a1;
  sub_218747EAC(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v53 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v4;
  MEMORY[0x28223BE20](v5);
  v57 = &v49 - v6;
  v7 = sub_219BDE294();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277CC9260];
  sub_218747EAC(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v49 - v13;
  v15 = sub_219BDEE04();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v2 + 16);
  sub_2187B2C48(0);
  v20 = v19;
  v56 = swift_allocBox();
  v22 = v21;
  v49 = *(v20 + 48);
  sub_2187B2DA0(0);
  v24 = *(v23 + 48);
  swift_unknownObjectRetain();
  sub_219BDEDE4();
  v25 = sub_219BDB954();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  (*(v8 + 104))(v10, *MEMORY[0x277D2FF08], v7);
  sub_219BDD904();
  (*(v8 + 8))(v10, v7);
  sub_2187BC574(v14, &unk_280EE9D00, v11);
  (*(v16 + 8))(v18, v15);
  v26 = MEMORY[0x277D84F90];
  *(v22 + v24) = MEMORY[0x277D84F90];
  *(v22 + v49) = v26;
  if (v52)
  {
    v27 = sub_219BE82D4();
  }

  else
  {
    v27 = 0;
  }

  v28 = v56 | 2;
  v29 = sub_219BDFA44();
  v30 = v57;
  (*(*(v29 - 8) + 56))(v57, 1, 1, v29);
  v68 = 0;
  memset(v67, 0, sizeof(v67));
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  v64 = v50;
  sub_2187B14CC(v65, &v59, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v61)
  {
    sub_21875F93C(&v59, v62);
    *&v59 = v28;
    v31 = sub_2194DA78C(v62);
    v33 = v32;
    v52 = v34;
    __swift_destroy_boxed_opaque_existential_1(v62);
  }

  else
  {
    sub_218744BD0(&v59, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v31 = qword_280ED32D8;
    v33 = qword_280ED32E0;
    v35 = qword_280ED32E8;

    v52 = v35;
    sub_2188202A8(v33);
  }

  v58 = v28;
  if (v27)
  {
    v36 = sub_219BDD274();
    v37 = v27;
  }

  else
  {
    v37 = 0;
    v36 = 0;
    v60 = 0;
    *(&v59 + 1) = 0;
  }

  *&v59 = v37;
  v61 = v36;
  v38 = v55;
  sub_2189B4E2C(v30, v55);
  sub_2187B14CC(v67, v62, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v39 = (*(v53 + 80) + 24) & ~*(v53 + 80);
  v40 = (v54 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 47) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  *(v42 + 16) = v27;
  sub_2189B4EAC(v38, v42 + v39);
  v43 = v42 + v40;
  v44 = v62[1];
  *v43 = v62[0];
  *(v43 + 16) = v44;
  *(v43 + 32) = v63;
  v45 = (v42 + v41);
  v46 = (v42 + ((v41 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v45 = 0;
  v45[1] = 0;
  *v46 = v31;
  v46[1] = v33;
  v47 = v52;
  v46[2] = v52;
  swift_retain_n();

  sub_2188202A8(v33);
  sub_2186CF94C(0);
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v33, v47);
  sub_218744BD0(v65, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_218744BD0(v67, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_2187BC574(v57, &qword_280EE8610, MEMORY[0x277D2DED0]);
  sub_218744BD0(&v59, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);

  return result;
}

uint64_t sub_2198C48BC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for RecipeBoxFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecipeListRecipeBoxFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187015C4(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RecipeBoxFeedGroupConfig(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198C4BB4(a1, v18, type metadata accessor for RecipeBoxFeedGroupConfig);
  (*(v13 + 32))(v15, v18, v12);
  (*(v13 + 16))(v10, v15, v12);
  sub_2198C4BB4(a2, v7, type metadata accessor for RecipeBoxFeedGroupKnobs);
  sub_218B73554(v7, &v10[v8[5]]);
  sub_218718690(v2 + 16, &v10[v8[6]]);
  v19 = &v10[v8[7]];
  *v19 = 0x694C657069636552;
  *(v19 + 1) = 0xEA00000000007473;
  sub_2198C4C1C(0);
  swift_allocObject();
  sub_218714824(&qword_27CC20648, type metadata accessor for RecipeListRecipeBoxFeedGroupEmitter, &unk_219C11498);
  v20 = sub_219BEDF94();
  (*(v13 + 8))(v15, v12);
  return v20;
}

uint64_t sub_2198C4BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2198C4C1C(uint64_t a1)
{
  if (!qword_27CC20640)
  {
    type metadata accessor for RecipeBoxFeedServiceConfig(255);
    sub_218714824(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig, &unk_219C60268);
    v1 = sub_219BEDFA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC20640);
    }
  }
}

uint64_t sub_2198C4CD4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v5 = sub_219BF5474();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF0BD4();
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x28223BE20](v7);
  v48 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v64 = &v47 - v10;
  v65 = MEMORY[0x277D34570];
  sub_21883ED28(0, &qword_280E8FD90, MEMORY[0x277D34570]);
  MEMORY[0x28223BE20](v11 - 8);
  v63 = &v47 - v12;
  v59 = MEMORY[0x277D34D78];
  sub_21883ED28(0, &qword_280EE64A0, MEMORY[0x277D34D78]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v47 - v14;
  sub_21883EC14(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = (&v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2198C59D4(a1, v19);
  v60 = *v19;
  v20 = *(v17 + 56);

  sub_2198C5A38(v19 + v20, &qword_280EE6200, MEMORY[0x277D35380]);
  v21 = sub_219BE3CC4();
  v61 = v22;
  v62 = v21;
  swift_getObjectType();
  v58 = sub_219BE3F64();
  v80 = a2;
  __swift_project_boxed_opaque_existential_1(a2 + 5, a2[8]);
  v23 = sub_219BE3D64();
  v24 = *(*(v23 - 8) + 56);
  v24(v15, 1, 1, v23);
  v54 = v24;
  v57 = sub_219BE4494();
  v25 = v59;
  sub_2198C5A38(v15, &qword_280EE64A0, v59);
  __swift_project_boxed_opaque_existential_1(v80 + 5, v80[8]);
  v24(v15, 1, 1, v23);
  v26 = sub_219BE44A4();
  v55 = v27;
  v56 = v26;
  v28 = v25;
  sub_2198C5A38(v15, &qword_280EE64A0, v25);
  __swift_project_boxed_opaque_existential_1(v80 + 5, v80[8]);
  v54(v15, 1, 1, v23);
  v29 = v63;
  v30 = v60;
  v31 = v64;
  sub_219BE4454();
  sub_2198C5A38(v15, &qword_280EE64A0, v28);
  sub_219BF0CA4();

  sub_2198C5A38(v29, &qword_280E8FD90, v65);
  swift_getObjectType();
  sub_219BEEFA4();

  if (([v30 respondsToSelector_] & 1) == 0 || (v32 = objc_msgSend(v30, sel_paidBundleConfig), v33 = objc_msgSend(v32, sel_todayMastheadPaywallConfiguration), v32, !v33))
  {
    sub_2198C5A94();
    swift_allocError();
    *v39 = 0;
    goto LABEL_6;
  }

  sub_219BF5414();

  v34 = v51;
  sub_219BF5464();
  v35 = sub_219BF5424();
  v37 = v36;

  (*(v52 + 8))(v34, v53);
  if (v37 >> 60 == 15)
  {
    sub_2198C5A94();
    swift_allocError();
    *v38 = 1;
LABEL_6:
    swift_willThrow();
    swift_unknownObjectRelease();
    return (*(v66 + 8))(v31, v67);
  }

  sub_219BDAFF4();
  swift_allocObject();
  sub_219BDAFE4();
  sub_2198C5AE8();
  v41 = v50;
  sub_219BDAFC4();
  if (v41)
  {
    (*(v66 + 8))(v31, v67);

    sub_218822A58(v35, v37);
    return swift_unknownObjectRelease();
  }

  else
  {

    v72 = v77;
    v73 = v78;
    v74 = v79;
    v70 = v75;
    v71 = v76;
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v42 = qword_280F616D8;
    v43 = sub_219BF6214();
    sub_219BE5314("Today feed masthead paywall resolving from configuration", 56, 2, &dword_2186C1000, v42, v43, MEMORY[0x277D84F90]);
    v69[2] = v72;
    v69[3] = v73;
    v69[4] = v74;
    v69[0] = v70;
    v69[1] = v71;
    v45 = v66;
    v44 = v67;
    v46 = v48;
    (*(v66 + 16))(v48, v31, v67);
    sub_219257BB8(&v70, &v68);
    sub_219256024(v69, v46, v49);
    sub_218822A58(v35, v37);
    swift_unknownObjectRelease();
    sub_219257BF0(&v70);
    return (*(v45 + 8))(v31, v44);
  }
}

uint64_t sub_2198C5484@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v42 = sub_219BF0BD4();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = v30 - v7;
  sub_21883ED28(0, &qword_280E8FD90, MEMORY[0x277D34570]);
  MEMORY[0x28223BE20](v8 - 8);
  v37 = v30 - v9;
  sub_21883ED28(0, &qword_280EE64A0, MEMORY[0x277D34D78]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v30 - v11;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v13 = qword_280F616D8;
  v14 = sub_219BF61F4();
  sub_2186F20D4(0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C09BA0;
  *&v43[0] = 0;
  *(&v43[0] + 1) = 0xE000000000000000;
  v44 = a1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v16 = v43[0];
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_2186FC3BC();
  *(v15 + 32) = v16;
  sub_219BE5314("Failed to resolve the today feed masthead paywall configuration; use default, error=%{public}@", 94, 2, &dword_2186C1000, v13, v14, v15);

  v17 = sub_219BE3CC4();
  v35 = v18;
  v36 = v17;
  swift_getObjectType();
  v34 = sub_219BE3F64();
  __swift_project_boxed_opaque_existential_1(a2 + 5, a2[8]);
  v19 = sub_219BE3D64();
  v20 = *(v19 - 8);
  v31 = *(v20 + 56);
  v21 = v20 + 56;
  v31(v12, 1, 1, v19);
  v30[1] = v21;
  v33 = sub_219BE4494();
  v22 = MEMORY[0x277D34D78];
  sub_2198C5A38(v12, &qword_280EE64A0, MEMORY[0x277D34D78]);
  __swift_project_boxed_opaque_existential_1(a2 + 5, a2[8]);
  v23 = v31;
  v31(v12, 1, 1, v19);
  v32 = sub_219BE44A4();
  sub_2198C5A38(v12, &qword_280EE64A0, v22);
  __swift_project_boxed_opaque_existential_1(a2 + 5, a2[8]);
  v23(v12, 1, 1, v19);
  v24 = v37;
  sub_219BE4454();
  sub_2198C5A38(v12, &qword_280EE64A0, v22);
  sub_219BF0CA4();

  sub_2198C5A38(v24, &qword_280E8FD90, MEMORY[0x277D34570]);
  swift_getObjectType();
  v25 = v38;
  sub_219BEEFA4();

  memset(v43, 0, 80);
  v27 = v39;
  v26 = v40;
  v28 = v42;
  (*(v40 + 16))(v39, v25, v42);
  sub_219256024(v43, v27, v41);
  return (*(v26 + 8))(v25, v28);
}

uint64_t sub_2198C59D4(uint64_t a1, uint64_t a2)
{
  sub_21883EC14(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2198C5A38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21883ED28(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2198C5A94()
{
  result = qword_27CC20650;
  if (!qword_27CC20650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20650);
  }

  return result;
}

unint64_t sub_2198C5AE8()
{
  result = qword_280E98368;
  if (!qword_280E98368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98368);
  }

  return result;
}

uint64_t sub_2198C5B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BE4864();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

unint64_t sub_2198C5C80()
{
  result = qword_27CC20660;
  if (!qword_27CC20660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20660);
  }

  return result;
}

uint64_t sub_2198C5CD4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MockPPTHeadlineService();
  v3 = swift_allocObject();
  a1[3] = v2;
  result = sub_2186F1BBC(&qword_27CC20670, type metadata accessor for MockPPTHeadlineService, &unk_219C35BD8);
  a1[4] = result;
  *a1 = v3;
  return result;
}

id sub_2198C5D58(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ExtendedLaunchToArticleTestCase();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC7NewsUI231ExtendedLaunchToArticleTestCase_testName];
  *v5 = 0xD000000000000017;
  *(v5 + 1) = 0x8000000219CD85C0;
  *&v4[OBJC_IVAR____TtC7NewsUI231ExtendedLaunchToArticleTestCase_timeoutInSeconds] = 0x403E000000000000;
  *&v4[OBJC_IVAR____TtC7NewsUI231ExtendedLaunchToArticleTestCase_aggregate] = 1;
  *&v4[OBJC_IVAR____TtC7NewsUI231ExtendedLaunchToArticleTestCase_articleLoadingStateMachine] = a2;
  v7.receiver = v4;
  v7.super_class = v3;

  return objc_msgSendSuper2(&v7, sel_init);
}

void *sub_2198C5E10(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC99B0, &protocol descriptor for SportsSyncManagerType, 1);
  result = sub_219BE1E34();
  if (!v10[3])
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB6AF0, &protocol descriptor for SportsOnboardingManagerType, 1);
  result = sub_219BE1E34();
  if (!v9[3])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90620, MEMORY[0x277D33550], 1);
  result = sub_219BE1E34();
  if (!v8[3])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40, 0x277D31330);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    v4 = type metadata accessor for MySportsTestSuite();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC7NewsUI217MySportsTestSuite_sportTagIDs] = &unk_282A2AB68;
    sub_218718690(v10, &v5[OBJC_IVAR____TtC7NewsUI217MySportsTestSuite_sportsSyncManager]);
    sub_218718690(v9, &v5[OBJC_IVAR____TtC7NewsUI217MySportsTestSuite_sportsOnboardingManager]);
    sub_218718690(v8, &v5[OBJC_IVAR____TtC7NewsUI217MySportsTestSuite_tagService]);
    *&v5[OBJC_IVAR____TtC7NewsUI217MySportsTestSuite_subscriptionController] = v3;
    v7.receiver = v5;
    v7.super_class = v4;
    v6 = objc_msgSendSuper2(&v7, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v8);
    __swift_destroy_boxed_opaque_existential_1(v9);
    __swift_destroy_boxed_opaque_existential_1(v10);
    return v6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2198C604C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  sub_2189AE9B4(0);
  v108 = v3;
  v105 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v104 = v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v101 = v5;
  v100 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v102 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs(0);
  MEMORY[0x28223BE20](v103);
  v8 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF700(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v109 = v81 - v13;
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v14 - 8);
  v99 = v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v110 = v81 - v17;
  sub_2198C7C00(0, &qword_280E8C8A8, MEMORY[0x277D844C8]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = v81 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198C7BAC();
  v23 = v111;
  sub_219BF7B34();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v82 = v11;
  v86 = 0;
  v111 = v20;
  v87 = v8;
  v88 = a1;
  LOBYTE(v124) = 0;
  sub_2186DFB48(&qword_280E91A28, sub_2189AE994, MEMORY[0x277D321B0]);
  v25 = v101;
  sub_219BF7674();
  LOBYTE(v124) = 1;
  sub_2186DFB48(&qword_280E91868, sub_2189AE9B4, MEMORY[0x277D32328]);
  sub_219BF7674();
  sub_2186ECA28();
  v27 = v26;
  LOBYTE(v123) = 2;
  v28 = MEMORY[0x277D32620];
  sub_2186DFB48(&qword_280E913D8, sub_2186ECA28, MEMORY[0x277D32620]);
  sub_219BF7674();
  v98 = v124;
  sub_2186F95C4();
  v30 = v29;
  LOBYTE(v122) = 3;
  sub_2186DFB48(&qword_280E913F8, sub_2186F95C4, v28);
  sub_219BF7674();
  v89 = v123;
  LOBYTE(v121) = 4;
  sub_219BF7674();
  v97 = v122;
  LOBYTE(v120) = 5;
  v81[2] = v30;
  sub_219BF7674();
  v96 = v121;
  LOBYTE(v119) = 6;
  v81[1] = v27;
  sub_219BF7674();
  v84 = v120;
  sub_218D398D0(0);
  v32 = v31;
  LOBYTE(v118) = 7;
  sub_2186DFB48(&qword_280E91410, sub_218D398D0, v28);
  v81[0] = v32;
  sub_219BF7674();
  v107 = v119;
  sub_2186F9548();
  LOBYTE(v117) = 8;
  sub_2186DFB48(&qword_280E913B8, sub_2186F9548, v28);
  sub_219BF7674();
  v95 = v118;
  LOBYTE(v116) = 9;
  sub_219BF7674();
  v91 = v117;
  LOBYTE(v115) = 10;
  sub_219BF7674();
  v94 = v116;
  LOBYTE(v114) = 9;
  sub_219BF7674();
  v90 = v115;
  LOBYTE(v113) = 12;
  sub_219BF7674();
  v92 = v114;
  LOBYTE(v112) = 13;
  sub_219BF7674();
  v93 = v113;
  v33 = v99;
  sub_2189AF794(v110, v99, sub_2189AF720);
  v34 = v100;
  v35 = *(v100 + 48);
  v36 = v35(v33, 1, v25);
  v83 = v19;
  v37 = v22;
  v38 = v25;
  v85 = v37;
  if (v36 == 1)
  {
    v39 = v82;
    if (qword_280E91AC8 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v25, qword_280F61830);
    v41 = v102;
    (*(v34 + 16))(v102, v40, v25);
    v42 = v35(v33, 1, v25);
    v43 = v87;
    if (v42 != 1)
    {
      sub_2189AF7FC(v33, sub_2189AF720);
    }
  }

  else
  {
    v41 = v102;
    (*(v34 + 32))(v102, v33, v25);
    v43 = v87;
    v39 = v82;
  }

  (*(v34 + 32))(v43, v41, v38);
  v44 = v109;
  sub_2189AF794(v109, v39, sub_2189AF700);
  v45 = v105;
  v46 = *(v105 + 48);
  v47 = v39;
  v48 = v39;
  v49 = v108;
  if (v46(v47, 1, v108) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DFB48(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v50 = v104;
    v44 = v109;
    sub_219BEEC74();
    v51 = v46(v48, 1, v49);
    v52 = v111;
    if (v51 != 1)
    {
      sub_2189AF7FC(v48, sub_2189AF700);
    }
  }

  else
  {
    v50 = v104;
    (*(v45 + 32))(v104, v48, v49);
    v52 = v111;
  }

  v53 = v103;
  (*(v45 + 32))(v43 + *(v103 + 20), v50, v49);
  if (v98)
  {
    v54 = v98;
  }

  else
  {
    sub_219BF5CF4();
    *&v112 = v55 * 12.0;
    swift_allocObject();
    v54 = sub_219BEF534();
    v52 = v111;
  }

  v56 = v89;
  *(v43 + v53[6]) = v54;
  if (v56)
  {

    v57 = v56;
  }

  else
  {
    LOBYTE(v112) = 1;
    swift_allocObject();

    v57 = sub_219BEF534();
    v52 = v111;
  }

  *(v43 + v53[7]) = v57;
  v58 = v97;
  if (v97)
  {

    v59 = v58;
  }

  else
  {
    LOBYTE(v112) = 0;
    swift_allocObject();

    v59 = sub_219BEF534();
    v52 = v111;
  }

  *(v43 + v53[8]) = v59;
  v60 = v96;
  if (v96)
  {

    v61 = v60;
  }

  else
  {
    LOBYTE(v112) = 0;
    swift_allocObject();

    v61 = sub_219BEF534();
    v52 = v111;
  }

  *(v43 + v53[9]) = v61;
  v62 = v84;
  v63 = v107;
  if (v84)
  {

    v64 = v62;
  }

  else
  {

    sub_219BF5D04();
    v112 = v65;
    swift_allocObject();
    v64 = sub_219BEF534();
    v52 = v111;
  }

  *(v43 + v53[10]) = v64;
  if (v63)
  {

    v66 = v63;
  }

  else
  {
    sub_2186F0704(0, &qword_280E8BAF0, MEMORY[0x277D84560]);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_219C09EC0;
    v68 = qword_280EB0610;

    if (v68 != -1)
    {
      swift_once();
    }

    v69 = byte_280F61A98 | 0x80;
    *(v67 + 32) = qword_280F61A90;
    *(v67 + 40) = v69;
    *(v67 + 48) = 5;
    *(v67 + 56) = 0;
    v112 = v67;
    swift_allocObject();
    v66 = sub_219BEF534();
    v44 = v109;
    v52 = v111;
  }

  *(v43 + v53[11]) = v66;
  v70 = v95;
  if (v95)
  {

    v71 = v70;
  }

  else
  {
    v112 = 1;
    swift_allocObject();

    v71 = sub_219BEF534();
    v52 = v111;
  }

  *(v43 + v53[12]) = v71;
  v72 = v91;
  if (v91)
  {

    v73 = v72;
  }

  else
  {
    v112 = 1;
    swift_allocObject();

    v73 = sub_219BEF534();
    v52 = v111;
  }

  *(v43 + v53[13]) = v73;
  v74 = v94;
  if (v94)
  {

    v75 = v74;
  }

  else
  {
    v112 = 1;
    swift_allocObject();

    v75 = sub_219BEF534();
    v52 = v111;
  }

  *(v43 + v53[14]) = v75;
  v76 = v90;
  if (v90)
  {

    v77 = v76;
  }

  else
  {
    v112 = 3;
    swift_allocObject();

    v77 = sub_219BEF534();
    v52 = v111;
  }

  *(v43 + v53[15]) = v77;
  if (v92)
  {

    v78 = v92;
  }

  else
  {
    *&v112 = 0.0;
    swift_allocObject();

    v78 = sub_219BEF534();
    v52 = v111;
  }

  *(v43 + v53[16]) = v78;
  if (v93)
  {

    sub_2189AF7FC(v44, sub_2189AF700);
    sub_2189AF7FC(v110, sub_2189AF720);
    (*(v52 + 8))(v85, v83);
    v79 = v93;
  }

  else
  {
    v112 = 4;
    swift_allocObject();
    v80 = v52;
    v79 = sub_219BEF534();

    sub_2189AF7FC(v44, sub_2189AF700);
    sub_2189AF7FC(v110, sub_2189AF720);
    (*(v80 + 8))(v85, v83);
  }

  *(v43 + v53[17]) = v79;
  sub_218F65350(v43, v106);
  return __swift_destroy_boxed_opaque_existential_1(v88);
}

unint64_t sub_2198C7120(char a1)
{
  result = 0x73656C7572;
  switch(a1)
  {
    case 1:
      result = 0x6C6F6F706572;
      break;
    case 2:
      result = 0x6E69576863746566;
      break;
    case 3:
      result = 0x456F54706D616C63;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
    case 11:
      result = 0xD00000000000001DLL;
      break;
    case 12:
    case 13:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2198C72AC(void *a1, __n128 a2)
{
  v4 = v2;
  sub_2198C7C00(0, &qword_280E8C278, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198C7BAC();
  sub_219BF7B44();
  LOBYTE(v17) = 0;
  sub_2189AE994(0);
  sub_2186DFB48(&qword_280E91A30, sub_2189AE994, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v3)
  {
    v11 = type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs(0);
    LOBYTE(v17) = 1;
    sub_2189AE9B4(0);
    sub_2186DFB48(&unk_280E91870, sub_2189AE9B4, MEMORY[0x277D32320]);
    sub_219BF7834();
    v17 = *(v4 + v11[6]);
    v16 = 2;
    sub_2186ECA28();
    sub_2186DFB48(&qword_280E913E0, sub_2186ECA28, MEMORY[0x277D32610]);
    sub_219BF7834();
    v17 = *(v4 + v11[7]);
    v16 = 3;
    sub_2186F95C4();
    v13 = v12;
    v15[1] = sub_2186DFB48(&qword_280E91400, sub_2186F95C4, MEMORY[0x277D32610]);
    v15[2] = v13;
    sub_219BF7834();
    v17 = *(v4 + v11[8]);
    v16 = 4;
    sub_219BF7834();
    v17 = *(v4 + v11[9]);
    v16 = 5;
    sub_219BF7834();
    v17 = *(v4 + v11[10]);
    v16 = 6;
    sub_219BF7834();
    v17 = *(v4 + v11[11]);
    v16 = 7;
    sub_218D398D0(0);
    sub_2186DFB48(&qword_280E91418, sub_218D398D0, MEMORY[0x277D32610]);
    sub_219BF7834();
    v17 = *(v4 + v11[12]);
    v16 = 8;
    sub_2186F9548();
    sub_2186DFB48(&qword_280E913C0, sub_2186F9548, MEMORY[0x277D32610]);
    sub_219BF7834();
    v17 = *(v4 + v11[13]);
    v16 = 9;
    sub_219BF7834();
    v17 = *(v4 + v11[14]);
    v16 = 10;
    sub_219BF7834();
    v17 = *(v4 + v11[15]);
    v16 = 11;
    sub_219BF7834();
    v17 = *(v4 + v11[16]);
    v16 = 12;
    sub_219BF7834();
    v17 = *(v4 + v11[17]);
    v16 = 13;
    sub_219BF7834();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2198C78A4(uint64_t a1)
{
  v2 = sub_2198C7BAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2198C78E0(uint64_t a1)
{
  v2 = sub_2198C7BAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2198C7950(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2186DFB48(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
  if (sub_219BEE9F4() & 1) != 0 && (type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs(0), (sub_219BEEC64()) && (sub_2186ECA28(), (sub_219BEF504()) && (sub_2186F95C4(), (sub_219BEF504()) && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_218D398D0(0), (sub_219BEF504()) && (sub_2186F9548(), (sub_219BEF504()) && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504() & 1) != 0 && (sub_219BEF504())
  {
    return sub_219BEF504() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs(uint64_t a1)
{
  result = qword_280E9CE08;
  if (!qword_280E9CE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2198C7BAC()
{
  result = qword_280E9CE38[0];
  if (!qword_280E9CE38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9CE38);
  }

  return result;
}

void sub_2198C7C00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2198C7BAC();
    v7 = a3(a1, &type metadata for NewspaperTodayFeedGroupSubtypeKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2198C7C78()
{
  result = qword_27CC20680;
  if (!qword_27CC20680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20680);
  }

  return result;
}

unint64_t sub_2198C7CD0()
{
  result = qword_280E9CE28;
  if (!qword_280E9CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9CE28);
  }

  return result;
}

unint64_t sub_2198C7D28()
{
  result = qword_280E9CE30;
  if (!qword_280E9CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9CE30);
  }

  return result;
}

uint64_t sub_2198C7D7C(uint64_t a1)
{
  v3 = type metadata accessor for SearchFilterItem(0);
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v27 = v1;
  v35 = MEMORY[0x277D84F90];
  sub_21870B65C(0, v5, 0);
  v6 = v35;
  v7 = a1 + 56;
  result = sub_219BF7174();
  v9 = result;
  v10 = 0;
  v28 = a1 + 64;
  v29 = v5;
  v30 = a1 + 56;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v13 = *(a1 + 36);
    v33 = v10;
    v34 = v13;
    v14 = v31;
    sub_2198C8F8C(*(a1 + 48) + *(v32 + 72) * v9, v31, type metadata accessor for SearchFilterItem);
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    sub_21892DEAC(v15, v16);
    result = sub_2198C8ED0(v14, type metadata accessor for SearchFilterItem);
    v35 = v6;
    v18 = *(v6 + 16);
    v17 = *(v6 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_21870B65C((v17 > 1), v18 + 1, 1);
      v6 = v35;
    }

    *(v6 + 16) = v18 + 1;
    v19 = v6 + 16 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v7 = v30;
    v20 = *(v30 + 8 * v12);
    if ((v20 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v9 & 0x3F));
    if (v21)
    {
      v11 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v12 << 6;
      v23 = v12 + 1;
      v24 = (v28 + 8 * v12);
      while (v23 < (v11 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_2187BC250(v9, v34, 0);
          v11 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_2187BC250(v9, v34, 0);
    }

LABEL_4:
    v10 = v33 + 1;
    v9 = v11;
    if (v33 + 1 == v29)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2198C8064(uint64_t a1, uint64_t *a2)
{
  v3[22] = a1;
  v3[23] = v2;
  v5 = type metadata accessor for SearchResultsGroup(0);
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  type metadata accessor for SearchResults(0);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[27] = v6;
  v3[28] = v7;

  return MEMORY[0x2822009F8](sub_2198C8158, 0, 0);
}

uint64_t sub_2198C8158()
{
  v27 = v0;
  sub_218718690(*(v0 + 184) + 32, v0 + 16);
  v1 = *(v0 + 40);
  *(v0 + 232) = v1;
  *(v0 + 248) = __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 256) = Strong;
  if (Strong)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 264) = v3;
    if (v3)
    {
      sub_219BF5BD4();
      *(v0 + 272) = sub_219BF5BC4();
      v5 = sub_219BF5B44();

      return MEMORY[0x2822009F8](sub_2198C8414, v5, v4);
    }

    swift_unknownObjectRelease();
  }

  v6 = *(v0 + 224);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = -1;
  v11 = -1 << *(*(v0 + 224) + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & v7;
  v13 = (63 - v11) >> 6;
  v14 = swift_bridgeObjectRetain_n();
  v15 = 0;
  v16 = MEMORY[0x277D84FA0];
  if (v12)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      return MEMORY[0x2821D23D8](v14);
    }

    if (v17 >= v13)
    {
      break;
    }

    v12 = *(v8 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      do
      {
LABEL_15:
        v12 &= v12 - 1;

        sub_219479BA4(v18, v16);
        v16 = v14;
      }

      while (v12);
      continue;
    }
  }

  v19 = *(v0 + 240);
  v20 = *(v0 + 232);

  v21 = sub_2198C7D7C(v16);

  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  v24[2] = v21;
  v25 = xmmword_219CB0B00;
  v26 = 0;
  *(v0 + 296) = (*(v19 + 8))(v24, v20, v19);

  v22 = swift_task_alloc();
  *(v0 + 304) = v22;
  *v22 = v0;
  v22[1] = sub_2198C86B0;
  v14 = *(v0 + 216);

  return MEMORY[0x2821D23D8](v14);
}

uint64_t sub_2198C8414()
{
  v1 = v0[33];

  v2 = sub_2198C8DF4(v1);
  v4 = v3;
  swift_unknownObjectRelease();
  v0[35] = v2;
  v0[36] = v4;

  return MEMORY[0x2822009F8](sub_2198C84A0, 0, 0);
}

uint64_t sub_2198C84A0()
{
  v26 = v0;
  swift_unknownObjectRelease();
  v1 = v0[28];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v6 = v0[35];
  v5 = v0[36];
  v7 = -1;
  v8 = -1 << *(v0[28] + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v2;
  v10 = (63 - v8) >> 6;
  v11 = swift_bridgeObjectRetain_n();
  v12 = 0;
  v13 = MEMORY[0x277D84FA0];
  if (v9)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return MEMORY[0x2821D23D8](v11);
    }

    if (v14 >= v10)
    {
      break;
    }

    v9 = *(v3 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      do
      {
LABEL_9:
        v9 &= v9 - 1;

        sub_219479BA4(v15, v13);
        v13 = v11;
      }

      while (v9);
      continue;
    }
  }

  v16 = v0[30];
  v17 = v0[29];

  v18 = sub_2198C7D7C(v13);

  if (v5)
  {
    v19 = v6;
  }

  else
  {
    v19 = 0;
  }

  v20 = 0xE000000000000000;
  if (v5)
  {
    v20 = v5;
  }

  v23[0] = v19;
  v23[1] = v20;
  v23[2] = v18;
  v24 = xmmword_219CB0B00;
  v25 = 0;
  v0[37] = (*(v16 + 8))(v23, v17, v16);

  v21 = swift_task_alloc();
  v0[38] = v21;
  *v21 = v0;
  v21[1] = sub_2198C86B0;
  v11 = v0[27];

  return MEMORY[0x2821D23D8](v11);
}

uint64_t sub_2198C86B0()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_2198C8B74;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_2198C87D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2198C87D4()
{
  v1 = *(v0 + 312);
  sub_219BF5C34();
  v2 = *(v0 + 216);
  if (v1)
  {
    sub_2198C8ED0(v2, type metadata accessor for SearchResults);
    if (qword_27CC085D0 != -1)
    {
      swift_once();
    }

    v3 = sub_219BE5434();
    __swift_project_value_buffer(v3, qword_27CCD8AF8);
    v4 = v1;
    v5 = sub_219BE5414();
    v6 = sub_219BF61F4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_2186C1000, v5, v6, "Failed to fetch search results, error:%@", v7, 0xCu);
      sub_2198C8F30(v8, &qword_280E8D9F0, sub_2189666A0);
      MEMORY[0x21CECF960](v8, -1, -1);
      MEMORY[0x21CECF960](v7, -1, -1);
    }

    else
    {
    }

    v11 = 0;
  }

  else
  {
    v12 = *(v2 + 16);
    v13 = *(v12 + 16);
    if (v13)
    {
      v11 = 0;
      v14 = *(v0 + 200);
      v15 = *(v0 + 208);
      v16 = v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v17 = *(v14 + 72);
      do
      {
        sub_2198C8F8C(v16, *(v0 + 208), type metadata accessor for SearchResultsGroup);
        if (swift_getEnumCaseMultiPayload() == 5)
        {

          v18 = *(v15 + 8);
          v19 = *(v15 + 24);
          *(v0 + 88) = *(v15 + 40);
          *(v0 + 72) = v19;
          *(v0 + 56) = v18;
          sub_218C93D70(v0 + 56, v0 + 136);
          if (*(v0 + 160))
          {
            sub_2186CB1F0((v0 + 136), v0 + 96);
            v20 = *(v0 + 120);
            v21 = *(v0 + 128);
            __swift_project_boxed_opaque_existential_1((v0 + 96), v20);
            v11 = (*(v21 + 8))(v20, v21);
            sub_2198C8F30(v0 + 56, &qword_280EC6990, sub_218B16F50);
            __swift_destroy_boxed_opaque_existential_1((v0 + 96));
          }

          else
          {
            sub_2198C8F30(v0 + 56, &qword_280EC6990, sub_218B16F50);
            sub_2198C8F30(v0 + 136, &qword_280EC6990, sub_218B16F50);
          }
        }

        else
        {
          sub_2198C8ED0(*(v0 + 208), type metadata accessor for SearchResultsGroup);
        }

        v16 += v17;
        --v13;
      }

      while (v13);
      v2 = *(v0 + 216);
    }

    else
    {
      v11 = 0;
    }

    sub_2198C8ED0(v2, type metadata accessor for SearchResults);
  }

  **(v0 + 176) = v11;

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2198C8B74()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 312);
  if (qword_27CC085D0 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_27CCD8AF8);
  v3 = v1;
  v4 = sub_219BE5414();
  v5 = sub_219BF61F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2186C1000, v4, v5, "Failed to fetch search results, error:%@", v6, 0xCu);
    sub_2198C8F30(v7, &qword_280E8D9F0, sub_2189666A0);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  else
  {
  }

  **(v0 + 176) = 0;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2198C8D4C(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187608D4;

  return sub_2198C8064(a1, a2);
}

uint64_t sub_2198C8DF4(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;
        v4 = [Strong text];

        if (v4)
        {
          v5 = sub_219BF5414();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          return v5;
        }
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t sub_2198C8ED0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2198C8F30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218738278(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2198C8F8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_2198C8FF4()
{
  v1 = OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler____lazy_storage___paidBundleViaOfferConfig;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler____lazy_storage___paidBundleViaOfferConfig);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = [*(v0 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_appConfigurationManager) possiblyUnfetchedAppConfiguration];
    if ([v4 respondsToSelector_])
    {
      v3 = [v4 paidBundleViaOfferConfig];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v3 = 0;
    }

    v5 = *(v0 + v1);
    *(v0 + v1) = v3;
    v6 = v3;
    sub_2190AAF44(v5);
  }

  sub_2190AB1E0(v2);
  return v3;
}

void sub_2198C90C4()
{
  v1 = v0;
  sub_218731BD0(0, &qword_280EE9B70, MEMORY[0x277D2D700]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27[-v3 - 8];
  if (qword_280EE5FC0 != -1)
  {
    swift_once();
  }

  v5 = sub_219BE5434();
  __swift_project_value_buffer(v5, qword_280F62658);
  v6 = sub_219BE5414();
  v7 = sub_219BF6214();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2186C1000, v6, v7, "Checking whether to badge the app icon...", v8, 2u);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  if ([*(v1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_userInfo) marketingNotificationsEnabled])
  {
    v9 = (v1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_paidBundleViaOfferHandler);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_paidBundleViaOfferHandler), *(v1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_paidBundleViaOfferHandler + 24));
    if (sub_219BE45C4())
    {
      *(v1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_sessionBadgeState) = 1;
      v10 = *MEMORY[0x277D2D6E8];
      v11 = sub_219BDC334();
      v12 = *(v11 - 8);
      (*(v12 + 104))(v4, v10, v11);
      (*(v12 + 56))(v4, 0, 1, v11);
      v13 = OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_sessionBadgeSource;
      swift_beginAccess();
      sub_21883C6B0(v4, v1 + v13);
      swift_endAccess();
      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      sub_219BE45D4();
      v14 = *(v1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_notificationService + 24);
      v15 = *(v1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_notificationService + 32);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_notificationService), v14);
      (*(v15 + 136))(1, v14, v15);
      v16 = sub_219BE5414();
      v17 = sub_219BF6214();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_2186C1000, v16, v17, "enableIconBadgeIfNeeded: Setting badge count to 1", v18, 2u);
        MEMORY[0x21CECF960](v18, -1, -1);
      }

      v19 = (v1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_tracker);
      v20 = *(v1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_tracker + 24);
      v21 = v19[4];
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v27[0] = 1;
      (*(v21 + 8))(v27, v20, v21);
      return;
    }

    v26 = sub_219BE5414();
    v22 = sub_219BF6214();
    if (os_log_type_enabled(v26, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "App Icon cannot be badged. Exiting.";
      goto LABEL_14;
    }
  }

  else
  {
    v26 = sub_219BE5414();
    v22 = sub_219BF6214();
    if (os_log_type_enabled(v26, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Marketing notifications are disabled. Exiting.";
LABEL_14:
      _os_log_impl(&dword_2186C1000, v26, v22, v24, v23, 2u);
      MEMORY[0x21CECF960](v23, -1, -1);
    }
  }

  v25 = v26;
}

void sub_2198C9530()
{
  v1 = v0;
  if (qword_280EE5FC0 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62658);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2186C1000, v3, v4, "Checking whether to send a local notification...", v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_featureAvailability), *(v1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_featureAvailability + 24));
  if ((sub_219BE4794() & 1) == 0)
  {
    v27 = sub_219BE5414();
    v21 = sub_219BF6214();
    if (!os_log_type_enabled(v27, v21))
    {
      goto LABEL_21;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Local notification feature is disabled. Exiting.";
LABEL_20:
    _os_log_impl(&dword_2186C1000, v27, v21, v23, v22, 2u);
    MEMORY[0x21CECF960](v22, -1, -1);
    goto LABEL_21;
  }

  if (![*(v1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_userInfo) marketingNotificationsEnabled])
  {
    v27 = sub_219BE5414();
    v21 = sub_219BF6214();
    if (!os_log_type_enabled(v27, v21))
    {
      goto LABEL_21;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Marketing notifications are disabled. Exiting.";
    goto LABEL_20;
  }

  v6 = (v1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_paidBundleViaOfferHandler);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_paidBundleViaOfferHandler), *(v1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_paidBundleViaOfferHandler + 24));
  if ((sub_219BE45F4() & 1) == 0)
  {
    v27 = sub_219BE5414();
    v21 = sub_219BF6214();
    if (!os_log_type_enabled(v27, v21))
    {
      goto LABEL_21;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Local notification cannot be sent. Exiting.";
    goto LABEL_20;
  }

  v7 = sub_2198C8FF4();
  if (!v7)
  {
    v27 = sub_219BE5414();
    v21 = sub_219BF6214();
    if (!os_log_type_enabled(v27, v21))
    {
      goto LABEL_21;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "No via offer configuration found. Exiting.";
    goto LABEL_20;
  }

  v27 = v7;
  v8 = sub_2198CBA24(v27);
  if (v8)
  {
    v9 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_219BE4604();
    v10 = (v1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_notificationService);
    v11 = *(v1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_notificationService + 24);
    v12 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v12 + 56))(v9, v11, v12, [v27 localNotificationDelay]);

    v13 = v9;
    v14 = sub_219BE5414();
    v15 = sub_219BF6214();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136315138;
      v18 = *&v13[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier];
      v19 = *&v13[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier + 8];

      v20 = sub_2186D1058(v18, v19, &v28);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2186C1000, v14, v15, "Scheduled notification [%s].", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x21CECF960](v17, -1, -1);
      MEMORY[0x21CECF960](v16, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v24 = sub_219BE5414();
    v25 = sub_219BF6214();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2186C1000, v24, v25, "Could not make notification from config. Exiting", v26, 2u);
      MEMORY[0x21CECF960](v26, -1, -1);
    }
  }

LABEL_21:
}

void sub_2198C9C74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_218731BD0(0, &qword_280EE9B70, MEMORY[0x277D2D700]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31[-v11 - 8];
  if (*(*a1 + OBJC_IVAR___TSNotificationSettings_authorizationStatus) == 2)
  {
    *(a2 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_sessionBadgeState) = 1;
    *v12 = a3;
    *(v12 + 1) = a4;
    v13 = *MEMORY[0x277D2D6F0];
    v14 = sub_219BDC334();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v12, v13, v14);
    (*(v15 + 56))(v12, 0, 1, v14);
    v16 = OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_sessionBadgeSource;
    swift_beginAccess();

    sub_21883C6B0(v12, a2 + v16);
    swift_endAccess();
    v17 = *(a2 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_tracker + 24);
    v18 = *(a2 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_tracker + 32);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_tracker), v17);
    v31[0] = 2;
    (*(v18 + 8))(v31, v17, v18);
    v19 = (a5 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_notificationService);
    v20 = *(a5 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_notificationService + 24);
    v21 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v21 + 136))(1, v20, v21);
    if (qword_280EE5FC0 != -1)
    {
      swift_once();
    }

    v22 = sub_219BE5434();
    __swift_project_value_buffer(v22, qword_280F62658);
    v23 = sub_219BE5414();
    v24 = sub_219BF6214();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2186C1000, v23, v24, "Badge push enablement request recevied. Setting badge count to 1", v25, 2u);
      MEMORY[0x21CECF960](v25, -1, -1);
    }

    sub_2198CA004();
  }

  else
  {
    if (qword_280EE5FC0 != -1)
    {
      swift_once();
    }

    v26 = sub_219BE5434();
    __swift_project_value_buffer(v26, qword_280F62658);
    v27 = sub_219BE5414();
    v28 = sub_219BF6214();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2186C1000, v27, v28, "User has not authorized notifications. Skipping.", v29, 2u);
      MEMORY[0x21CECF960](v29, -1, -1);
    }
  }
}

uint64_t sub_2198CA004()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_218731BD0(0, &qword_280EE9B70, MEMORY[0x277D2D700]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33[-v4];
  v6 = sub_219BDC334();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v33[-v11];
  v13 = *(v1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_sessionBadgeState);
  v14 = OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_sessionBadgeSource;
  swift_beginAccess();
  sub_2198CC574(v1 + v14, v5);
  v15 = *(v7 + 48);
  if (v15(v5, 1, v6) == 1)
  {
    (*(v7 + 104))(v12, *MEMORY[0x277D2D6F8], v6);
    if (v15(v5, 1, v6) != 1)
    {
      sub_2187BC9C0(v5, &qword_280EE9B70, MEMORY[0x277D2D700]);
    }
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
  }

  if (qword_280EE5FC0 != -1)
  {
    swift_once();
  }

  v16 = sub_219BE5434();
  __swift_project_value_buffer(v16, qword_280F62658);
  v17 = *(v7 + 16);
  v37 = v12;
  v17(v9, v12, v6);
  v18 = sub_219BE5414();
  v19 = sub_219BF6214();
  LODWORD(v20) = v13 & 1;
  if (os_log_type_enabled(v18, v19))
  {
    v21 = swift_slowAlloc();
    v36 = v1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v35 = ObjectType;
    v24 = v23;
    v38 = v23;
    *v22 = 67109378;
    *(v22 + 4) = v20;
    *(v22 + 8) = 2080;
    v34 = v13 & 1;
    v25 = sub_219BDC324();
    v27 = v26;
    v28 = v9;
    v29 = *(v7 + 8);
    v29(v28, v6);
    v20 = sub_2186D1058(v25, v27, &v38);

    *(v22 + 10) = v20;
    LOBYTE(v20) = v34;
    _os_log_impl(&dword_2186C1000, v18, v19, "Saving badge status: %{BOOL}d source: %s", v22, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x21CECF960](v24, -1, -1);
    MEMORY[0x21CECF960](v22, -1, -1);

    v30 = v29;
  }

  else
  {

    v30 = *(v7 + 8);
    v30(v9, v6);
  }

  sub_219BDC364();
  LOBYTE(v38) = v20;
  sub_21883E6A8(&qword_280EB7AC0, &unk_219CB0CF8);
  sub_219BDCA54();

  sub_219BDC374();
  v31 = v37;
  sub_219BDCA54();

  return (v30)(v31, v6);
}

uint64_t sub_2198CA468(uint64_t a1)
{
  sub_218731BD0(0, &qword_280EE9B70, MEMORY[0x277D2D700]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  *(a1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_sessionBadgeState) = 0;
  v5 = *MEMORY[0x277D2D6F8];
  v6 = sub_219BDC334();
  v7 = *(v6 - 8);
  (*(v7 + 104))(v4, v5, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  v8 = OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_sessionBadgeSource;
  swift_beginAccess();
  sub_21883C6B0(v4, a1 + v8);
  swift_endAccess();
  v9 = *(a1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_notificationService + 24);
  v10 = *(a1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_notificationService + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_notificationService), v9);
  (*(v10 + 136))(0, v9, v10);
  if (qword_280EE5FC0 != -1)
  {
    swift_once();
  }

  v11 = sub_219BE5434();
  __swift_project_value_buffer(v11, qword_280F62658);
  v12 = sub_219BE5414();
  v13 = sub_219BF6214();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2186C1000, v12, v13, "Badge push disablement request received. Setting badge count to 0", v14, 2u);
    MEMORY[0x21CECF960](v14, -1, -1);
  }

  return sub_2198CA004();
}

uint64_t sub_2198CA728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[0] = a3;
  v13[1] = a2;
  v3 = sub_219BE3D64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE4124();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v4 + 104))(v6, *MEMORY[0x277D34D68], v3);

  sub_219BE4114();
  v11 = sub_219BE3F84();
  (*(v8 + 8))(v10, v7);
  return v11;
}

void sub_2198CA900(uint64_t a1, uint64_t a2)
{
  v99 = a1;
  v3 = sub_219BE3D64();
  v96 = *(v3 - 8);
  v97 = v3;
  MEMORY[0x28223BE20](v3);
  v95 = &v73[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_219BE4414();
  v93 = *(v5 - 8);
  v94 = v5;
  MEMORY[0x28223BE20](v5);
  v92 = &v73[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218731BD0(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v7 - 8);
  v91 = &v73[-v8];
  sub_218731BD0(0, &qword_280EE6350, MEMORY[0x277D35078]);
  MEMORY[0x28223BE20](v9 - 8);
  v88 = &v73[-v10];
  v11 = sub_219BE40A4();
  v83 = *(v11 - 8);
  v84 = v11;
  MEMORY[0x28223BE20](v11);
  v86 = &v73[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_219BE4574();
  v81 = *(v13 - 8);
  v82 = v13;
  MEMORY[0x28223BE20](v13);
  v85 = &v73[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_219BE3EE4();
  v89 = *(v15 - 8);
  v90 = v15;
  MEMORY[0x28223BE20](v15);
  v87 = &v73[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_219BE4864();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v80 = &v73[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v73[-v21];
  sub_218731BD0(0, &qword_280EE6370, MEMORY[0x277D35050]);
  v79 = v23;
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v26 = &v73[-v25];
  v27 = sub_219BDBD34();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v73[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v98 = a2;

  sub_219BE2E84();

  sub_219BDBC64();
  v32 = v31;
  (*(v28 + 8))(v30, v27);
  if (v32 <= -60.0)
  {
    sub_219BE47F4();
    v37 = sub_219BE4304();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v26, 1, v37) == 1)
    {
      sub_2187BC9C0(v26, &qword_280EE6370, MEMORY[0x277D35050]);
      v39 = 1;
    }

    else
    {
      v40 = sub_219BE42E4();
      v41 = v26;
      v39 = v40;
      (*(v38 + 8))(v41, v37);
    }

    if (sub_219BE47A4() & 1) != 0 || ((v39 ^ 1))
    {
      v77 = v39 ^ 1;
      v78 = v39;
      if (qword_280EE5FC0 != -1)
      {
        swift_once();
      }

      v46 = sub_219BE5434();
      __swift_project_value_buffer(v46, qword_280F62658);
      v47 = *(v18 + 16);
      v48 = v99;
      v47(v22, v99, v17);
      v49 = v80;
      v47(v80, v48, v17);
      v50 = sub_219BE5414();
      v51 = sub_219BF6214();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v100 = v76;
        *v52 = 67109634;
        v75 = v50;
        v53 = sub_219BE47A4() & 1;
        v74 = v51;
        v54 = *(v18 + 8);
        v54(v22, v17);
        *(v52 + 4) = v53;
        *(v52 + 8) = 1024;
        *(v52 + 10) = v77 & 1;
        *(v52 + 14) = 2080;
        sub_219BE47F4();
        v55 = sub_219BF5484();
        v57 = v56;
        v54(v49, v17);
        v58 = sub_2186D1058(v55, v57, &v100);

        *(v52 + 16) = v58;
        v59 = v75;
        _os_log_impl(&dword_2186C1000, v75, v74, "Attempting to present upsell. isPaidBundleViaOffer=%{BOOL}d, isConfigurableOffer=%{BOOL}d, offerConfig=%s", v52, 0x18u);
        v60 = v76;
        __swift_destroy_boxed_opaque_existential_1(v76);
        MEMORY[0x21CECF960](v60, -1, -1);
        MEMORY[0x21CECF960](v52, -1, -1);
      }

      else
      {
        v61 = *(v18 + 8);
        v61(v22, v17);

        v61(v49, v17);
      }

      v62 = sub_219BE47E4();
      if (v63)
      {
        v64 = v62;
      }

      else
      {
        v64 = 0;
      }

      v80 = v64;
      v65 = 0xE000000000000000;
      if (v63)
      {
        v65 = v63;
      }

      v79 = v65;
      sub_219BF5414();
      (*(v81 + 104))(v85, *MEMORY[0x277D35178], v82);
      (*(v83 + 104))(v86, *MEMORY[0x277D34F30], v84);
      v66 = sub_219BE4394();
      (*(*(v66 - 8) + 56))(v88, 1, 1, v66);
      v67 = sub_219BDB954();
      (*(*(v67 - 8) + 56))(v91, 1, 1, v67);
      (*(v93 + 104))(v92, *MEMORY[0x277D350C0], v94);
      v68 = v87;
      sub_219BE3E64();
      __swift_project_boxed_opaque_existential_1((v98 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_router), *(v98 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_router + 24));
      v69 = sub_219BE4814();
      v71 = v95;
      v70 = v96;
      v72 = v97;
      (*(v96 + 104))(v95, *MEMORY[0x277D34D68], v97);
      sub_219BE43A4();

      (*(v70 + 8))(v71, v72);
      (*(v89 + 8))(v68, v90);
    }

    else
    {
      if (qword_280EE5FC0 != -1)
      {
        swift_once();
      }

      v42 = sub_219BE5434();
      __swift_project_value_buffer(v42, qword_280F62658);
      v43 = sub_219BE5414();
      v44 = sub_219BF6214();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_2186C1000, v43, v44, "Attempting to route to default landing page...", v45, 2u);
        MEMORY[0x21CECF960](v45, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1((v98 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_router), *(v98 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_router + 24));
      sub_21883E6A8(&qword_27CC20758, "aJXh");
      sub_219BE43B4();
    }
  }

  else
  {
    if (qword_280EE5FC0 != -1)
    {
      swift_once();
    }

    v33 = sub_219BE5434();
    __swift_project_value_buffer(v33, qword_280F62658);
    v34 = sub_219BE5414();
    v35 = sub_219BF6214();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2186C1000, v34, v35, "Cannot show Upsell Sheet despite badge since a sheet was shown < 1 min ago.", v36, 2u);
      MEMORY[0x21CECF960](v36, -1, -1);
    }
  }
}

void sub_2198CB5B0(void *a1)
{
  if (qword_280EE5FC0 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62658);
  v3 = sub_219BF61F4();
  v4 = a1;
  oslog = sub_219BE5414();

  if (os_log_type_enabled(oslog, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_219BF7A04();
    v9 = sub_2186D1058(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2186C1000, oslog, v3, "Error refreshing offer: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2198CB748(void *a1, uint64_t a2)
{
  if (*(*a1 + OBJC_IVAR___TSNotificationSettings_authorizationStatus) != 2)
  {
    if (qword_280EE5FC0 != -1)
    {
      swift_once();
    }

    v2 = sub_219BE5434();
    __swift_project_value_buffer(v2, qword_280F62658);
    v3 = sub_219BE5414();
    v4 = sub_219BF6214();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "User has not authorized notifications. Skipping PaidBundleViaOfferHandler notifications.";
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_featureAvailability), *(a2 + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_featureAvailability + 24));
  if ((sub_219BE4744() & 1) == 0)
  {
    if (qword_280EE5FC0 != -1)
    {
      swift_once();
    }

    v7 = sub_219BE5434();
    __swift_project_value_buffer(v7, qword_280F62658);
    v3 = sub_219BE5414();
    v4 = sub_219BF6214();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "User is not eligible. Skipping PaidBundleViaOfferHandler notifications.";
LABEL_12:
    _os_log_impl(&dword_2186C1000, v3, v4, v6, v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
LABEL_13:

    return sub_2198CA004();
  }

  sub_2198C90C4();
  sub_2198C9530();
  return sub_2198CA004();
}

void sub_2198CB924()
{
  swift_getObjectType();
  type metadata accessor for NotificationSettings();
  sub_219BE3204();
  sub_2187D9028();
  v0 = sub_219BF66A4();
  sub_219BE2F94();
}

id sub_2198CBA24(void *a1)
{
  v2 = type metadata accessor for UserNotification.DeliveryStatus(0);
  MEMORY[0x28223BE20](v2 - 8);
  v86 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218731BD0(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v75 - v8;
  v10 = sub_219BDB954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v87 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE5FC0 != -1)
  {
    swift_once();
  }

  v13 = sub_219BE5434();
  __swift_project_value_buffer(v13, qword_280F62658);
  v14 = sub_219BE5414();
  v15 = sub_219BF61F4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2186C1000, v14, v15, "Attempting to create local notification from config", v16, 2u);
    MEMORY[0x21CECF960](v16, -1, -1);
  }

  v17 = [a1 localNotificationTitle];
  if (!v17)
  {
    v25 = sub_219BE5414();
    v26 = sub_219BF61F4();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_22;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Missing localNotificationTitle. Exiting.";
LABEL_20:
    _os_log_impl(&dword_2186C1000, v25, v26, v28, v27, 2u);
LABEL_21:
    MEMORY[0x21CECF960](v27, -1, -1);
    goto LABEL_22;
  }

  v18 = v17;
  v19 = sub_219BF5414();
  v21 = v20;

  v22 = [a1 localNotificationSubtitle];
  if (v22)
  {
    v23 = v22;
    v85 = sub_219BF5414();
    v88 = v24;
  }

  else
  {
    v85 = 0;
    v88 = 0xE000000000000000;
  }

  v29 = [a1 localNotificationBody];
  if (!v29)
  {

    v25 = sub_219BE5414();
    v26 = sub_219BF61F4();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_22;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Missing localNotificationBody. Exiting.";
    goto LABEL_20;
  }

  v83 = v6;
  v84 = v19;
  v30 = v29;
  v82 = sub_219BF5414();
  v32 = v31;

  v33 = [a1 localNotificationURL];
  if (!v33)
  {

    v25 = sub_219BE5414();
    v26 = sub_219BF61F4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "Missing localNotificationURL. Exiting.";
      goto LABEL_20;
    }

LABEL_22:

    return 0;
  }

  v34 = v33;
  v80 = v32;
  v81 = v21;
  v35 = sub_219BF5414();
  v37 = v36;

  sub_219BDB914();
  v38 = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_2187BC9C0(v9, &unk_280EE9D00, MEMORY[0x277CC9260]);

    v25 = sub_219BE5414();
    v39 = sub_219BF61F4();

    if (!os_log_type_enabled(v25, v39))
    {

      goto LABEL_22;
    }

    v40 = v35;
    v27 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v90[0] = v41;
    *v27 = 136315138;
    v42 = sub_2186D1058(v40, v37, v90);

    *(v27 + 4) = v42;
    _os_log_impl(&dword_2186C1000, v25, v39, "Invalid url [%s]. Exiting.", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x21CECF960](v41, -1, -1);
    goto LABEL_21;
  }

  v44 = *(v11 + 32);
  v45 = v87;
  v44(v87, v9, v10);
  v78 = sub_219BF5414();
  v77 = v46;
  sub_2187ACC2C(0);
  v48 = *(v47 + 48);
  v76 = v35;
  v49 = v83;
  v50 = &v83[v48];
  (*(v38 + 16))(v83, v45, v10);
  *v50 = sub_219BF5414();
  v50[1] = v51;
  swift_storeEnumTagMultiPayload();
  v79 = 0x8000000219D3B440;
  sub_2198A6B6C(0, &qword_280E8B5C8, &unk_280E8D750, MEMORY[0x277D84030], MEMORY[0x277D84F70] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  v90[0] = 1937204590;
  v90[1] = 0xE400000000000000;
  v53 = MEMORY[0x277D837D0];
  sub_219BF72A4();
  sub_2198A6B6C(0, &qword_280E8B700, &qword_280E8F760, v53, v53);
  v54 = v38;
  v55 = swift_initStackObject();
  *(v55 + 16) = xmmword_219C09EC0;
  *(v55 + 32) = 7107189;
  v56 = v76;
  *(v55 + 40) = 0xE300000000000000;
  *(v55 + 48) = v56;
  *(v55 + 56) = v37;
  *(v55 + 64) = 25705;
  *(v55 + 72) = 0xE200000000000000;
  *(v55 + 80) = sub_219BF5414();
  *(v55 + 88) = v57;
  v58 = sub_2194B0E30(v55);
  swift_setDeallocating();
  sub_218831BDC(0, &qword_280E8F760, v53, v53);
  swift_arrayDestroy();
  sub_2194B6618();
  *(inited + 96) = v59;
  *(inited + 72) = v58;
  v60 = sub_2194B141C(inited);
  swift_setDeallocating();
  sub_2198CC434(inited + 32);
  sub_218C1A090();
  v62 = v86;
  (*(*(v61 - 8) + 56))(v86, 1, 2, v61);
  v63 = type metadata accessor for UserNotification(0);
  v64 = objc_allocWithZone(v63);
  v65 = &v64[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier];
  v66 = v77;
  *v65 = v78;
  v65[1] = v66;
  sub_2198CC4AC(v49, &v64[OBJC_IVAR____TtC7NewsUI216UserNotification_kind], type metadata accessor for UserNotification.Kind);
  v67 = &v64[OBJC_IVAR____TtC7NewsUI216UserNotification_title];
  v68 = v81;
  *v67 = v84;
  v67[1] = v68;
  v69 = &v64[OBJC_IVAR____TtC7NewsUI216UserNotification_subtitle];
  v70 = v88;
  *v69 = v85;
  v69[1] = v70;
  v71 = &v64[OBJC_IVAR____TtC7NewsUI216UserNotification_message];
  v72 = v80;
  *v71 = v82;
  v71[1] = v72;
  v73 = &v64[OBJC_IVAR____TtC7NewsUI216UserNotification_threadIdentifier];
  *v73 = 0xD000000000000031;
  *(v73 + 1) = v79;
  *&v64[OBJC_IVAR____TtC7NewsUI216UserNotification_payload] = v60;
  sub_2198CC4AC(v62, &v64[OBJC_IVAR____TtC7NewsUI216UserNotification_deliveryStatus], type metadata accessor for UserNotification.DeliveryStatus);
  v89.receiver = v64;
  v89.super_class = v63;
  v74 = objc_msgSendSuper2(&v89, sel_init);

  sub_2198CC514(v62, type metadata accessor for UserNotification.DeliveryStatus);
  sub_2198CC514(v49, type metadata accessor for UserNotification.Kind);
  (*(v54 + 8))(v87, v10);
  return v74;
}

uint64_t sub_2198CC434(uint64_t a1)
{
  sub_218831BDC(0, &unk_280E8D750, MEMORY[0x277D84030], MEMORY[0x277D84F70] + 8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2198CC4AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2198CC514(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2198CC574(uint64_t a1, uint64_t a2)
{
  sub_218731BD0(0, &qword_280EE9B70, MEMORY[0x277D2D700]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_2198CC614(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = [a1 badgeIdentifier];
  v5 = sub_219BF5414();
  v7 = v6;

  if (qword_280EE5FC0 != -1)
  {
    swift_once();
  }

  v8 = sub_219BE5434();
  __swift_project_value_buffer(v8, qword_280F62658);

  v9 = sub_219BE5414();
  v10 = sub_219BF6214();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_2186D1058(v5, v7, v28);
    _os_log_impl(&dword_2186C1000, v9, v10, "Received AMS badge request with id: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21CECF960](v12, -1, -1);
    MEMORY[0x21CECF960](v11, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_featureAvailability], *&v2[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_featureAvailability + 24]);
  if (sub_219BE4784())
  {
    v28[0] = sub_219BF5494();
    v28[1] = v13;
    sub_219BF5494();
    sub_218B9E340();
    sub_218B9E394();
    v14 = sub_219BF5314();

    if ((v14 & 1) == 0)
    {

      v15 = sub_219BE5414();
      v16 = sub_219BF6214();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        v18 = "Not an app icon id News supports. Skipping.";
        goto LABEL_17;
      }

LABEL_18:

      return result;
    }

    if (NFStoreDemoMode())
    {

      v15 = sub_219BE5414();
      v16 = sub_219BF6214();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        v18 = "Skipping badge because device is in store demo mode.";
LABEL_17:
        _os_log_impl(&dword_2186C1000, v15, v16, v18, v17, 2u);
        MEMORY[0x21CECF960](v17, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    v22 = [a1 enabled];
    if (v22)
    {
      MEMORY[0x28223BE20](v22);
      type metadata accessor for NotificationSettings();
      sub_219BE3204();
      sub_2187D9028();
      v23 = sub_219BF66A4();
      v24 = swift_allocObject();
      v24[2] = v5;
      v24[3] = v7;
      v24[4] = v2;
      v25 = v2;
      sub_219BE2F94();
    }

    else
    {

      *(swift_allocObject() + 16) = v2;
      v26 = v2;
      sub_219BE3494();
    }
  }

  else
  {

    v27 = sub_219BE5414();
    v19 = sub_219BF6214();
    if (os_log_type_enabled(v27, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2186C1000, v27, v19, "Icon badge via Mercury feature is disabled. Exiting.", v20, 2u);
      MEMORY[0x21CECF960](v20, -1, -1);
    }
  }

  return result;
}

uint64_t sub_2198CCB28()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_notificationService);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 24))(v2, v3);
}

uint64_t FCFeedGroupType.groupType()@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 0x2D)
  {
    v3 = MEMORY[0x277D2F818];
  }

  else
  {
    v3 = qword_2782433D8[a1];
  }

  v4 = *v3;
  v5 = sub_219BE16E4();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

uint64_t sub_2198CCC6C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v24[1] = a1;
  v5 = sub_219BE7224();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_219BEB674();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = a2[1];
  v25 = a2[2];
  v26 = v13;
  v28[0] = v13;
  v28[1] = v14;
  v28[2] = v25;
  sub_219092084(v16, v12, v15);
  if (v14 >> 61)
  {
    v18 = MEMORY[0x277D6D948];
  }

  else
  {
    *v8 = sub_219BE82C4();
    v8[1] = v17;
    v18 = MEMORY[0x277D6D950];
  }

  (*(v6 + 104))(v8, *v18, v5);
  v19 = sub_219BE5934();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_2186C709C(0, &qword_280EE65A0, MEMORY[0x277D317A0], 0);
  sub_219BE1E34();
  if (!v28[0])
  {
    return 0;
  }

  swift_getObjectType();
  if ((sub_219BE3944() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    sub_2186C709C(0, qword_280EDB7B8, &protocol descriptor for TipsModuleType, 1);
    sub_219BE1E34();
    if (!v29)
    {
      swift_unknownObjectRelease();
      sub_2198CCFA4(v28);
      return 0;
    }

    __swift_project_boxed_opaque_existential_1(v28, v29);
    v27[0] = v26;
    v27[1] = v14;
    v27[2] = v25;
    sub_218DFAEEC(v27);
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1(v28);
    if (v21)
    {
      sub_2187C5110(0);
      v22 = sub_219BEA784();
      v22(v21);
      swift_unknownObjectRelease();

      return v21;
    }
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_2198CCFA4(uint64_t a1)
{
  sub_2198CD000(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2198CD000(uint64_t a1)
{
  if (!qword_27CC20760)
  {
    sub_2186C709C(255, qword_280EDB7B8, &protocol descriptor for TipsModuleType, 1);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC20760);
    }
  }
}

uint64_t sub_2198CD06C(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2198CD0F0(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2198CD174(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 24))(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2198CD22C()
{
  v1 = [*(v0 + 72) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  v2 = MEMORY[0x277D84F70];
  if (!*(&v11 + 1))
  {
    sub_218745E2C(&v12, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_218739AE0);
    goto LABEL_9;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    v4 = 0;
    goto LABEL_10;
  }

  v3 = v9;
  v4 = [v9 integerValue];
  if (v4 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v1, ~v4))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    sub_218745E2C(&v12, &qword_280E8B4F0, v2 + 8, MEMORY[0x277D83D88], sub_218739AE0);
    goto LABEL_17;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v7 = -32;
    return (v7 ^ v4) & 1;
  }

  v5 = v9;
  v6 = [v5 integerValue];

  v7 = v6 - 32;
  return (v7 ^ v4) & 1;
}

Swift::Void __swiftcall AudioAppIntentHandler.handleAudioPlayback(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  sub_218EEA0A4(0);
  sub_219BE3204();
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v4 = sub_219BF66A4();
  sub_2187A77E0(v1, v11);
  v5 = swift_allocObject();
  v6 = v11[3];
  v5[3] = v11[2];
  v5[4] = v6;
  v5[5] = v11[4];
  v7 = v11[1];
  v5[1] = v11[0];
  v5[2] = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2198CDC74;
  *(v8 + 24) = v5;
  sub_219BE2F74();

  v9 = swift_allocObject();
  *(v9 + 16) = countAndFlagsBits;
  *(v9 + 24) = object;

  v10 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_2198CD60C(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BF2834();
  sub_218AFD1EC();
  v3 = sub_219BE2E54();
  v4 = sub_219BE2E34();

  return v4;
}

uint64_t sub_2198CD6E0(uint64_t a1, uint64_t a2)
{
  v24[1] = a2;
  sub_21874EA3C(0, &unk_280E90420, sub_218932F68, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v25 = v24 - v4;
  v24[0] = sub_219BF1324();
  v5 = *(v24[0] - 8);
  MEMORY[0x28223BE20](v24[0]);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF1C74();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF2A04();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932F68(0);
  v26 = *(v16 - 8);
  v27 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  (*(v13 + 104))(v15, *MEMORY[0x277D33A78], v12, v17);
  (*(v9 + 104))(v11, *MEMORY[0x277D33570], v8);
  (*(v5 + 104))(v7, *MEMORY[0x277D33280], v24[0]);
  v28 = 0u;
  v29 = 0u;
  sub_218731D50();
  swift_unknownObjectRetain();
  sub_219BF2564();
  if (sub_2198CD22C())
  {
    sub_219BEACD4();
  }

  else
  {
    sub_219BEAC54();
  }

  swift_getObjectType();
  v20 = v25;
  v21 = v26;
  v22 = v27;
  (*(v26 + 16))(v25, v19, v27);
  (*(v21 + 56))(v20, 0, 1, v22);
  sub_219BE7094();

  sub_218745E2C(v20, &unk_280E90420, sub_218932F68, MEMORY[0x277D83D88], sub_21874EA3C);
  return (*(v21 + 8))(v19, v22);
}

void sub_2198CDC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BF61F4();
  sub_2186F20D4(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_2186FC3BC();
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);

  v7 = sub_219BF6F44();
  sub_219BE5314("Error retrieving headlines for AppIntent with articleID %{public}@", 66, 2, &dword_2186C1000, v7, v5, v6);
}

Swift::Void __swiftcall AudioAppIntentHandler.pause()()
{
  v1 = sub_219BED174();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BED1D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v9 = sub_219BF66A4();
  sub_2187A77E0(v0, v15);
  v10 = swift_allocObject();
  v11 = v15[3];
  v10[3] = v15[2];
  v10[4] = v11;
  v10[5] = v15[4];
  v12 = v15[1];
  v10[1] = v15[0];
  v10[2] = v12;
  aBlock[4] = sub_2198CE524;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_180;
  v13 = _Block_copy(aBlock);

  sub_219BED1A4();
  *&v15[0] = MEMORY[0x277D84F90];
  sub_218A72744();
  sub_21874EA3C(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v8, v4, v13);
  _Block_release(v13);

  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_2198CE03C(uint64_t a1)
{
  v24 = a1;
  sub_218CFB62C(0);
  MEMORY[0x28223BE20](v1 - 8);
  v22 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BF1324();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BF1C74();
  v6 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF2A04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218739AE0(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v21 - v17;
  (*(v10 + 104))(v12, *MEMORY[0x277D33A78], v9, v16);
  v19 = v22;
  (*(v6 + 104))(v8, *MEMORY[0x277D33570], v21);
  v25 = 0u;
  v26 = 0u;
  (*(v3 + 104))(v5, *MEMORY[0x277D33290], v23);
  sub_219BF2564();
  swift_getObjectType();
  sub_219BEAC94();
  (*(v15 + 16))(v19, v18, v14);
  (*(v15 + 56))(v19, 0, 1, v14);
  sub_219BE7094();

  sub_218EEDC0C(v19);
  return (*(v15 + 8))(v18, v14);
}

uint64_t type metadata accessor for ChannelHeadlineServiceResult(uint64_t a1)
{
  result = qword_280EB50F8;
  if (!qword_280EB50F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2198CE5B0(uint64_t a1)
{
  sub_2187E7248(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ChannelSectionsGroupModel(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ChannelHeroResult();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2198CE64C@<X0>(uint64_t a1@<X8>)
{
  v140 = a1;
  v131 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v131);
  v124 = (v101 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218950B84(0);
  v130 = v3;
  v125 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v123 = v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198D3740(0, &qword_280EE6510, MEMORY[0x277D318F8]);
  MEMORY[0x28223BE20](v5 - 8);
  v119 = v101 - v6;
  v122 = sub_219BE35B4();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v118 = v101 - v9;
  sub_2198D3740(0, &unk_280EE6610, MEMORY[0x277D31680]);
  MEMORY[0x28223BE20](v10 - 8);
  v114 = v101 - v11;
  v129 = sub_219BE3794();
  v117 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v115 = v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v116 = v101 - v14;
  v112 = sub_219BF2CB4();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v108 = (v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = sub_219BF2634();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v107 = v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B061E4(0);
  MEMORY[0x28223BE20](v17 - 8);
  v106 = v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928(0);
  v138 = *(v19 - 8);
  v139 = v19;
  MEMORY[0x28223BE20](v19);
  v128 = v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BE3514();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198D3740(0, &qword_280EE65C0, MEMORY[0x277D31758]);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = v101 - v26;
  v28 = sub_219BE38C4();
  v141 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v113 = v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v132 = v101 - v31;
  MEMORY[0x28223BE20](v32);
  v136 = v101 - v33;
  v137 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 304), *(v1 + 328));
  v34 = *MEMORY[0x277D314B0];
  v35 = (v22 + 104);
  v133 = *(v22 + 104);
  v133(v24, v34, v21);
  v36 = v28;
  sub_219BE3AC4();
  v37 = v141;
  v40 = *(v22 + 8);
  v39 = v22 + 8;
  v38 = v40;
  v134 = v24;
  v135 = v21;
  v40(v24, v21);
  if ((*(v37 + 48))(v27, 1, v36) == 1)
  {
    sub_2198CF748(v27, &qword_280EE65C0, MEMORY[0x277D31758], v41);
    return (*(v138 + 56))(v140, 1, 1, v139);
  }

  v42 = v136;
  (*(v37 + 32))(v136, v27, v36);
  v127 = v36;
  v126 = v38;
  __swift_project_boxed_opaque_existential_1((v137 + 304), *(v137 + 328));
  v43 = v37;
  v44 = v134;
  v104 = v34;
  v45 = v34;
  v46 = v135;
  v47 = v133;
  v133(v134, v45, v135);
  v48 = sub_219BE3A14();
  v50 = v49;
  v105 = v39;
  v126(v44, v46);
  v51 = v42;
  if (!v50)
  {
    (*(v43 + 8))(v42, v127);
    return (*(v138 + 56))(v140, 1, 1, v139);
  }

  v52 = v50;
  v103 = v48;
  v53 = v132;
  v54 = v127;
  v102 = *(v43 + 16);
  v102(v132, v51, v127);
  v55 = (*(v43 + 88))(v53, v54);
  v56 = v137;
  if (v55 != *MEMORY[0x277D31720])
  {
    v79 = v43;
    if (v55 == *MEMORY[0x277D31728])
    {

      (*(v43 + 8))(v132, v54);
    }

    else if (v55 == *MEMORY[0x277D31738] || v55 == *MEMORY[0x277D31740] || v55 == *MEMORY[0x277D31730])
    {
    }

    else
    {
      if (v55 == *MEMORY[0x277D31750])
      {
        goto LABEL_5;
      }

      v96 = *MEMORY[0x277D31748];
      v97 = v79;
      v98 = v55;

      v99 = v98 == v96;
      v79 = v97;
      if (!v99)
      {
        (*(v138 + 56))(v140, 1, 1, v139);
        v100 = *(v97 + 8);
        v100(v132, v54);
        return (v100)(v136, v54);
      }
    }

    (*(v138 + 56))(v140, 1, 1, v139);
    return (*(v79 + 8))(v136, v54);
  }

LABEL_5:
  v101[1] = v43 + 16;
  v142 = 0x656D656761676E65;
  v143 = 0xEA0000000000746ELL;
  v144 = 0;
  v145 = 0xE000000000000000;
  v146 = 0u;
  v147 = 0u;
  v148 = 0;
  v149 = 10;
  v57 = sub_2186D59B4(&unk_280EE5C80, sub_218950B84, MEMORY[0x277D6D408]);
  v58 = sub_2186D59B4(&unk_280EE5C90, sub_218950B84, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v130, v57, v58);
  sub_2187490E4();
  v101[0] = sub_2186D59B4(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
  sub_219BE6924();
  v59 = v56;
  __swift_project_boxed_opaque_existential_1((v56 + 344), *(v56 + 368));
  v60 = v108;
  *v108 = v103;
  v60[1] = v52;
  v61 = v111;
  v62 = v35;
  v63 = v47;
  v64 = v112;
  (*(v111 + 104))(v60, *MEMORY[0x277D33B80], v112);
  v106 = v52;

  v132 = v62;
  v65 = v107;
  sub_219BF4794();
  (*(v61 + 8))(v60, v64);
  LODWORD(v112) = sub_219BF2614();
  (*(v109 + 8))(v65, v110);
  __swift_project_boxed_opaque_existential_1((v59 + 304), *(v59 + 328));
  v67 = v134;
  v66 = v135;
  v68 = v104;
  v69 = v63;
  v63(v134, v104, v135);
  v70 = v114;
  sub_219BE3AD4();
  v126(v67, v66);
  v71 = v117;
  v72 = *(v117 + 48);
  v73 = v129;
  if (v72(v70, 1, v129) == 1)
  {
    v74 = v116;
    (*(v71 + 104))(v116, *MEMORY[0x277D31670], v73);
    v75 = v72(v70, 1, v73);
    v77 = v71;
    if (v75 != 1)
    {
      sub_2198CF748(v70, &unk_280EE6610, MEMORY[0x277D31680], v76);
    }
  }

  else
  {
    v74 = v116;
    (*(v71 + 32))(v116, v70, v73);
    v77 = v71;
  }

  __swift_project_boxed_opaque_existential_1((v137 + 304), *(v137 + 328));
  v81 = v134;
  v80 = v135;
  v69(v134, v68, v135);
  sub_219BE3AE4();
  v126(v81, v80);
  v69(v81, v68, v80);
  v102(v113, v136, v127);
  v82 = v129;
  (*(v77 + 16))(v115, v74, v129);
  v83 = sub_219BE3C04();
  (*(*(v83 - 8) + 56))(v119, 1, 1, v83);
  v84 = v118;
  sub_219BE3544();
  v85 = *(v121 + 32);
  v86 = v120;
  v87 = v84;
  v88 = v122;
  v85(v120, v87, v122);
  type metadata accessor for FollowingEngagementModel(0);
  v89 = swift_allocObject();
  v90 = (v89 + OBJC_IVAR____TtC7NewsUI224FollowingEngagementModel_title);
  (*(v77 + 8))(v74, v82);
  *v90 = 0;
  v90[1] = 0xE000000000000000;
  v85((v89 + OBJC_IVAR____TtC7NewsUI224FollowingEngagementModel_banner), v86, v88);
  *(v89 + OBJC_IVAR____TtC7NewsUI224FollowingEngagementModel_allowsUserInteraction) = v112 & 1;
  *v124 = v89;
  swift_storeEnumTagMultiPayload();

  v91 = v123;
  sub_219BE5FB4();
  v92 = v139;
  v93 = v128;
  sub_219BE6994();

  (*(v125 + 8))(v91, v130);
  v94 = v138;
  v95 = v140;
  (*(v138 + 32))(v140, v93, v92);
  (*(v94 + 56))(v95, 0, 1, v92);
  return (*(v141 + 8))(v136, v127);
}

uint64_t sub_2198CF748(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), __n128 a4)
{
  sub_2198D3740(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2198CF7A4@<X0>(uint64_t a1@<X8>)
{
  v58 = type metadata accessor for FollowingAudioModel(0);
  MEMORY[0x28223BE20](v58);
  v59 = (&v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for FollowingPuzzleHubModel(0);
  MEMORY[0x28223BE20](v56);
  v57 = (&v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = type metadata accessor for FollowingMySportsModel(0);
  MEMORY[0x28223BE20](v65);
  v67 = (&v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B061E4(0);
  MEMORY[0x28223BE20](v13 - 8);
  sub_2197EC0B0(v73);
  v75 = 1;
  v14 = sub_2186D59B4(&unk_280EE5C80, sub_218950B84, MEMORY[0x277D6D408]);
  v15 = sub_2186D59B4(&unk_280EE5C90, sub_218950B84, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v9, v14, v15);
  sub_2187490E4();
  v16 = sub_2186D59B4(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
  sub_219BE6924();
  *(v7 + 1) = 0;
  *v7 = 0;
  *(v7 + 2) = 0;
  swift_storeEnumTagMultiPayload();
  v71 = v16;
  sub_219BE5FB4();
  sub_218950928(0);
  sub_219BE6994();
  v17 = *(v10 + 8);
  v17(v12, v9);
  v68 = *v69;
  if ([v68 appleMagazineContent])
  {
    __swift_project_boxed_opaque_existential_1((v69 + 128), *(v69 + 152));
    *v7 = sub_218BB4E48();
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = 0;
    v7[32] = 1;
    swift_storeEnumTagMultiPayload();
    sub_219BE5FB4();
    sub_219BE6994();
    v17(v12, v9);
  }

  v66 = v7 + 8;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v63 = objc_opt_self();
  v64 = ObjCClassFromMetadata;
  v19 = [v63 bundleForClass_];
  v20 = sub_219BDB5E4();
  v70 = a1;
  v21 = v20;
  v23 = v22;

  v24 = v67;
  *v67 = v21;
  v24[1] = v23;
  v24[3] = 0;
  v24[4] = 0;
  v24[2] = 0;
  v25 = v65;
  v26 = *(v65 + 28);
  v27 = sub_219BDB954();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v62 = v27;
  v61 = v29;
  v60 = v28 + 56;
  (v29)(v24 + v26, 1, 1);
  *(v24 + v25[8]) = 1;
  v30 = v24 + v25[9];
  v30[2] = 96;
  *v30 = 0;
  v31 = v24 + v25[10];
  *v31 = 0;
  *(v31 + 1) = 0;
  *(v31 + 8) = 256;
  sub_2198D361C(v24, v7, type metadata accessor for FollowingMySportsModel);
  swift_storeEnumTagMultiPayload();
  sub_219BE5FB4();
  sub_219BE6994();
  v17(v12, v9);
  v32 = v17;
  if ([v68 puzzlesEnabled])
  {
    __swift_project_boxed_opaque_existential_1((v69 + 168), *(v69 + 192));

    sub_219BE20E4();

    v65 = *&v73[0];
    v33 = [v63 bundleForClass_];
    v34 = sub_219BDB5E4();
    v35 = v9;
    v37 = v36;

    v38 = v57;
    *v57 = v34;
    v38[1] = v37;
    v9 = v35;
    v38[3] = 0;
    v38[4] = 0;
    v38[2] = 0;
    v39 = v56;
    v61(v38 + *(v56 + 28), 1, 1, v62);
    *(v38 + v39[8]) = 1;
    *(v38 + v39[9]) = 10;
    *(v38 + v39[10]) = v65;
    sub_2198D361C(v38, v7, type metadata accessor for FollowingPuzzleHubModel);
    swift_storeEnumTagMultiPayload();
    sub_219BE5FB4();
    sub_219BE6994();
    v32(v12, v35);
    sub_218745E8C(v38, type metadata accessor for FollowingPuzzleHubModel);
  }

  v40 = v68;
  if ([v68 useFood])
  {
    sub_218CFA08C(v73);
    v41 = v73[1];
    *v7 = v73[0];
    *(v7 + 1) = v41;
    *(v7 + 2) = v74[0];
    *(v7 + 46) = *(v74 + 14);
    swift_storeEnumTagMultiPayload();
    sub_2189CEE20(v73, v72);
    sub_219BE5FB4();
    sub_219BE6994();
    sub_2189CEE7C(v73);
    v32(v12, v9);
  }

  if ([v40 narrativeAudio])
  {
    v42 = [v63 bundleForClass_];
    v43 = sub_219BDB5E4();
    v65 = v5;
    v44 = v9;
    v46 = v45;

    v47 = v59;
    *v59 = v43;
    v47[1] = v46;
    v9 = v44;
    v47[3] = 0;
    v47[4] = 0;
    v47[2] = 0;
    v48 = v58;
    v61(v47 + *(v58 + 28), 1, 1, v62);
    *(v47 + v48[8]) = 1;
    v49 = v47 + v48[9];
    v49[2] = 96;
    *v49 = 0;
    v50 = v47 + v48[10];
    *v50 = 0;
    *(v50 + 1) = 0;
    *(v50 + 8) = 256;
    sub_2198D361C(v47, v7, type metadata accessor for FollowingAudioModel);
    swift_storeEnumTagMultiPayload();
    sub_219BE5FB4();
    sub_219BE6994();
    v32(v12, v44);
    v51 = v47;
    v40 = v68;
    sub_218745E8C(v51, type metadata accessor for FollowingAudioModel);
  }

  v52 = [v40 useFood];
  v53 = v66;
  if (v52)
  {
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    v7[24] = 1;
    swift_storeEnumTagMultiPayload();
    sub_219BE5FB4();
    sub_219BE6994();
    v32(v12, v9);
  }

  if ([v40 interstellarEnabled])
  {
    __swift_project_boxed_opaque_existential_1((v69 + 88), *(v69 + 112));
    *v7 = sub_219809D54();
    *(v53 + 1) = 0;
    *(v53 + 2) = 0;
    *v53 = 0;
    *(v7 + 8) = 23068672;
    swift_storeEnumTagMultiPayload();
    sub_219BE5FB4();
    sub_219BE6994();

    v32(v12, v9);
  }

  __swift_project_boxed_opaque_existential_1((v69 + 88), *(v69 + 112));
  sub_219809AF8();
  *v7 = v54;
  *(v53 + 1) = 0;
  *(v53 + 2) = 0;
  *v53 = 0;
  v7[32] = 1;
  swift_storeEnumTagMultiPayload();
  sub_219BE5FB4();
  sub_219BE6994();
  v32(v12, v9);
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v7[24] = 1;
  swift_storeEnumTagMultiPayload();
  sub_219BE5FB4();
  sub_219BE6994();
  v32(v12, v9);
  return sub_218745E8C(v67, type metadata accessor for FollowingMySportsModel);
}

double sub_2198D0420@<D0>(uint64_t a1@<X8>)
{
  sub_218B061E4(0);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2189B7988();
  v4 = v3;
  if (v3 >> 62)
  {
    v5 = sub_219BF7214();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      sub_2197EBBA8(v14);
      v15 = 2;
      v6 = sub_218FA347C(v4);

      sub_218950B84(0);
      v8 = v7;
      v9 = sub_2186D59B4(&unk_280EE5C80, sub_218950B84, MEMORY[0x277D6D408]);
      v10 = sub_2186D59B4(&unk_280EE5C90, sub_218950B84, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v6, v8, v9, v10);
      type metadata accessor for FollowingModel(0);
      sub_2187490E4();
      sub_2186D59B4(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
      sub_219BE6924();
      sub_218950928(0);
      (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
      return result;
    }
  }

  sub_218950928(v5);
  (*(*(v13 - 8) + 56))(a1, 1, 1, v13);

  return result;
}

double sub_2198D068C@<D0>(uint64_t a1@<X8>)
{
  sub_218B061E4(0);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v5 = *v1;
  if (![*v1 useFeedDifferentiationMode] || objc_msgSend(v5, sel_useFeedDifferentiationMode) && (v6 = objc_msgSend(*(v1 + 264), sel_cachedSubscription), v7 = objc_msgSend(v6, sel_isSubscribed), v6, v7))
  {
    v8 = __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
    v9 = v1;
    v10 = sub_218C54F50(v8);
    MEMORY[0x28223BE20](v10);
    v22[-2] = v9;
    v11 = sub_218F8BBF8(sub_2198D3684, &v22[-4], v10);

    if (*(v11 + 16))
    {
      sub_2197EC19C(v22);
      v23 = 3;
      sub_218950B84(0);
      v13 = v12;
      v14 = sub_2186D59B4(&unk_280EE5C80, sub_218950B84, MEMORY[0x277D6D408]);
      v15 = sub_2186D59B4(&unk_280EE5C90, sub_218950B84, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v13, v14, v15);
      type metadata accessor for FollowingModel(0);
      sub_2187490E4();
      sub_2186D59B4(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
      sub_219BE6924();
      sub_218950928(0);
      v17 = v16;
      sub_219BE6984();

      (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
    }

    else
    {
      sub_218950928(0);
      (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
    }
  }

  else
  {
    sub_218950928(0);
    v20 = *(*(v19 - 8) + 56);

    v20(a1, 1, 1, v19);
  }

  return result;
}

uint64_t sub_2198D09F4@<X0>(uint64_t a1@<X8>, unint64_t a2@<X0>)
{
  sub_218B061E4(0);
  MEMORY[0x28223BE20](v5 - 8);
  if (sub_219BF2FA4() == 1)
  {
    MEMORY[0x28223BE20](1);
    v18[-2] = v2;

    v6 = sub_2195EB2C4(sub_2198D36A0, &v18[-4], a2);
    MEMORY[0x28223BE20](v6);
    v18[-2] = v2;
    sub_218860300(sub_2198D37A4, &v18[-4], v6);
    v8 = v7;

    sub_2197EC2D0(v18);
    v19 = 6;
    sub_218950B84(0);
    v10 = v9;
    v11 = sub_2186D59B4(&unk_280EE5C80, sub_218950B84, MEMORY[0x277D6D408]);
    v12 = sub_2186D59B4(&unk_280EE5C90, sub_218950B84, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v10, v11, v12);
    type metadata accessor for FollowingModel(0);
    sub_2187490E4();
    sub_2186D59B4(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
    sub_219BE6924();
    sub_218BDFF40(v8);

    sub_218950928(0);
    v14 = v13;
    sub_219BE6984();

    return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
  }

  else
  {
    sub_218950928(0);
    v17 = *(*(v16 - 8) + 56);

    return v17(a1, 1, 1, v16);
  }
}

double sub_2198D0D0C@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218B061E4(0);
  *&v6 = MEMORY[0x28223BE20](v5 - 8).n128_u64[0];
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*v2 puzzlesEnabled])
  {
    v29[0] = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
LABEL_22:
      v9 = sub_219BF7214();
      if (v9)
      {
LABEL_4:
        v26[1] = v8;
        v27 = v2;
        v28 = a2;
        v10 = 0;
        v8 = (a1 & 0xFFFFFFFFFFFFFF8);
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            a2 = MEMORY[0x21CECE0F0](v10, a1);
            v11 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
LABEL_15:
              __break(1u);
              goto LABEL_16;
            }
          }

          else
          {
            if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_22;
            }

            a2 = *(a1 + 8 * v10 + 32);

            v11 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              goto LABEL_15;
            }
          }

          v12 = [*(a2 + 16) asPuzzleType];
          if (v12 && (v2 = v12, swift_getObjectType(), v13 = sub_219BF68F4(), swift_unknownObjectRelease(), (v13 & 1) != 0))
          {
            v2 = v29;
            sub_219BF73D4();
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
          }

          else
          {
          }

          ++v10;
        }

        while (v11 != v9);
        v17 = v29[0];
        v2 = v27;
        a2 = v28;
        if ((v29[0] & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_4;
      }
    }

    v17 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_24:
      if ((v17 & 0x4000000000000000) == 0)
      {
        if (!*(v17 + 16))
        {
LABEL_28:
          sub_218950928(0);
          (*(*(v25 - 8) + 56))(a2, 1, 1, v25);

          return result;
        }

LABEL_26:
        sub_2197EC3FC(v29);
        v30 = 4;
        sub_218950B84(0);
        v19 = v18;
        v20 = sub_2186D59B4(&unk_280EE5C80, sub_218950B84, MEMORY[0x277D6D408]);
        v21 = sub_2186D59B4(&unk_280EE5C90, sub_218950B84, MEMORY[0x277D6D3F8]);
        MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v19, v20, v21);
        type metadata accessor for FollowingModel(0);
        sub_2187490E4();
        sub_2186D59B4(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
        v22 = sub_219BE6924();
        MEMORY[0x28223BE20](v22);
        v26[-2] = v2;
        sub_2189451EC(sub_2198D36C0, &v26[-4], v17);

        sub_218950928(0);
        v24 = v23;
        sub_219BE6984();

        (*(*(v24 - 8) + 56))(a2, 0, 1, v24);
        return result;
      }
    }

LABEL_27:
    if (!sub_219BF7214())
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

LABEL_16:
  sub_218950928(0);
  v15 = *(*(v14 - 8) + 56);

  v15(a2, 1, 1, v14);
  return result;
}

double sub_2198D1190@<D0>(uint64_t a1@<X8>, unint64_t a2@<X0>)
{
  sub_218B061E4(0);
  MEMORY[0x28223BE20](v5 - 8);
  v21 = v2;

  v6 = sub_2195EB2C4(sub_2198D36E0, &v20, a2);
  v19 = v2;
  sub_218860300(sub_2198D3700, v18, v6);
  v8 = v7;

  if (v8 >> 62)
  {
    v9 = sub_219BF7214();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      sub_2197EC528(v22);
      v23 = 5;
      sub_218950B84(0);
      v11 = v10;
      v12 = sub_2186D59B4(&unk_280EE5C80, sub_218950B84, MEMORY[0x277D6D408]);
      v13 = sub_2186D59B4(&unk_280EE5C90, sub_218950B84, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v11, v12, v13);
      type metadata accessor for FollowingModel(0);
      sub_2187490E4();
      sub_2186D59B4(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
      sub_219BE6924();
      sub_218BDFF40(v8);

      sub_218950928(0);
      v15 = v14;
      sub_219BE6984();

      (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
      return result;
    }
  }

  sub_218950928(v9);
  (*(*(v17 - 8) + 56))(a1, 1, 1, v17);

  return result;
}

double sub_2198D1458(unint64_t a1)
{
  sub_218B061E4(0);
  MEMORY[0x28223BE20](v3 - 8);
  v15 = v1;

  v4 = sub_2195EB2C4(sub_2198D3720, &v14, a1);
  v13 = v1;
  sub_218860300(sub_2198D37A4, v12, v4);
  v6 = v5;

  sub_2197EC65C(v16);
  v16[80] = 7;
  sub_218950B84(0);
  v8 = v7;
  v9 = sub_2186D59B4(&unk_280EE5C80, sub_218950B84, MEMORY[0x277D6D408]);
  v10 = sub_2186D59B4(&unk_280EE5C90, sub_218950B84, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v8, v9, v10);
  type metadata accessor for FollowingModel(0);
  sub_2187490E4();
  sub_2186D59B4(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
  sub_219BE6924();
  sub_218BDFF40(v6);

  sub_218950928(0);
  sub_219BE6984();

  return result;
}

uint64_t sub_2198D1674@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v123 = a2;
  v129 = a3;
  v6 = sub_219BF1444();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v120 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198D3740(0, &qword_280E908A0, MEMORY[0x277D333A0]);
  MEMORY[0x28223BE20](v9 - 8);
  v122 = &v117 - v10;
  v128 = sub_219BF1454();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v121 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v124 = &v117 - v13;
  sub_218748D40(0);
  v130 = v14;
  v126 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v125 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v136);
  v17 = (&v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218950B84(0);
  v137 = v18;
  v133 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B061E4(0);
  MEMORY[0x28223BE20](v21 - 8);
  sub_218950928(0);
  v134 = v22;
  v131 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v135 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v3 + 43, v3[46]);
  v132 = sub_219BF4784();
  v24 = v3[29];
  v25 = v3[30];
  __swift_project_boxed_opaque_existential_1(v4 + 26, v4[29]);
  v26 = (*(v25 + 24))(v24, v25);
  v27 = a1 >> 62;
  if (v26)
  {
    goto LABEL_4;
  }

  if (v27)
  {
    if (sub_219BF7214())
    {
      goto LABEL_4;
    }

LABEL_53:
    v114 = *(v131 + 56);
    v115 = v129;
    v116 = v134;

    return v114(v115, 1, 1, v116);
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_53;
  }

LABEL_4:
  v117 = v7;
  v119 = v6;
  sub_2197EC7A0(v147);
  v143 = v147[2];
  v144 = v147[3];
  v145 = v147[4];
  v142 = v147[1];
  v141 = v147[0];
  v146 = 9;
  v28 = sub_2186D59B4(&unk_280EE5C80, sub_218950B84, MEMORY[0x277D6D408]);
  v29 = sub_2186D59B4(&unk_280EE5C90, sub_218950B84, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v137, v28, v29);
  sub_2187490E4();
  v30 = sub_2186D59B4(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
  sub_219BE6924();
  v31 = v3[29];
  v32 = v3[30];
  __swift_project_boxed_opaque_existential_1(v3 + 26, v31);
  v33 = v20;
  v34 = v17;
  if ((*(v32 + 24))(v31, v32))
  {
    *v17 = sub_218CD4CEC(v132 & 1);
    swift_storeEnumTagMultiPayload();
    sub_219BE5FB4();
    sub_219BE6994();
    (*(v133 + 8))(v33, v137);
  }

  if (v27)
  {
    v35 = sub_219BF7214();
  }

  else
  {
    v35 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  if (v35)
  {
    v37 = v132 & 1;
    v38 = sub_218BDEB88(2, v132 & 1, a1);
    v39 = type metadata accessor for FollowingTagModel();
    v40 = sub_2186D59B4(&unk_280ED6630, type metadata accessor for FollowingTagModel, &protocol conformance descriptor for FollowingTagModel);
    v41 = sub_2186D59B4(&qword_280ED6640, type metadata accessor for FollowingTagModel, &protocol conformance descriptor for FollowingTagModel);
    v118 = v4;
    v42 = v125;
    MEMORY[0x21CEB9170](v38, v39, v40, v41);
    sub_218748BF4(0);
    v44 = *(v43 + 48);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v46 = [objc_opt_self() bundleForClass_];
    v47 = sub_219BDB5E4();
    v49 = v48;

    type metadata accessor for FollowingButtonModel();
    v50 = swift_allocObject();
    *(v50 + 16) = 0x64656B696C736964;
    *(v50 + 24) = 0xE800000000000000;
    *(v50 + 32) = v47;
    *(v50 + 40) = v49;
    v36 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    *(v50 + 48) = v37;
    *v17 = v50;
    v51 = v126;
    v52 = v34 + v44;
    v53 = v130;
    (*(v126 + 16))(v52, v42, v130);
    swift_storeEnumTagMultiPayload();
    sub_219BE5FB4();
    sub_219BE6994();
    (*(v133 + 8))(v33, v137);
    v54 = v42;
    v4 = v118;
    (*(v51 + 8))(v54, v53);
  }

  v130 = v30;
  v55 = v4[33];
  v56 = [v55 cachedSubscription];
  v57 = [v56 isSubscribed];

  if (!v57)
  {
LABEL_26:
    v89 = [v55 cachedSubscription];
    if (objc_getAssociatedObject(v89, v89 + 1))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v140 = 0u;
      v139 = 0u;
    }

    v142 = v140;
    v141 = v139;
    if (*(&v140 + 1))
    {
      sub_21870AD58();
      if (swift_dynamicCast())
      {
        v90 = v138;
        v91 = [v138 integerValue];
        if (v91 == -1)
        {

          goto LABEL_46;
        }

        v92 = v91;
LABEL_35:
        if (objc_getAssociatedObject(v89, ~v92))
        {
          sub_219BF70B4();
          swift_unknownObjectRelease();
        }

        else
        {
          v140 = 0u;
          v139 = 0u;
        }

        v142 = v140;
        v141 = v139;
        if (*(&v140 + 1))
        {
          sub_21870AD58();
          if (swift_dynamicCast())
          {
            v93 = v138;
            v94 = [v93 integerValue];

            if (((v94 ^ v92) & 1) == 0)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          }
        }

        else
        {
          sub_218745E8C(&v141, sub_21880702C);
        }

        if ((v92 & 1) == 0)
        {
LABEL_47:
          if (([v4[32] hasPurchaseTypeAppStore] & 1) == 0)
          {
            v132 &= 1u;
            v105 = v133;
            v103 = v134;
            v104 = v135;
            goto LABEL_50;
          }

LABEL_48:
          type metadata accessor for Localized();
          v97 = swift_getObjCClassFromMetadata();
          v98 = [objc_opt_self() bundleForClass_];
          v99 = sub_219BDB5E4();
          v101 = v100;

          type metadata accessor for FollowingButtonModel();
          v102 = swift_allocObject();
          *(v102 + 16) = 0xD000000000000013;
          *(v102 + 24) = 0x8000000219CE4590;
          *(v102 + 32) = v99;
          *(v102 + 40) = v101;
          v132 &= 1u;
          *(v102 + 48) = v132;
          *v34 = v102;
          swift_storeEnumTagMultiPayload();
          sub_219BE5FB4();
          v103 = v134;
          v104 = v135;
          sub_219BE6994();
          v105 = v133;
          (*(v133 + 8))(v33, v137);
LABEL_50:
          type metadata accessor for Localized();
          v106 = swift_getObjCClassFromMetadata();
          v107 = [objc_opt_self() bundleForClass_];
          v108 = sub_219BDB5E4();
          v110 = v109;

          type metadata accessor for FollowingButtonModel();
          v111 = swift_allocObject();
          *(v111 + 16) = 0x6573776F7262;
          *(v111 + 24) = 0xE600000000000000;
          *(v111 + 32) = v108;
          *(v111 + 40) = v110;
          *(v111 + 48) = v132;
          *v34 = v111;
          swift_storeEnumTagMultiPayload();
          sub_219BE5FB4();
          sub_219BE6994();
          (*(v105 + 8))(v33, v137);
          v112 = v129;
          (*(v131 + 32))(v129, v104, v103);
          return (*(v131 + 56))(v112, 0, 1, v103);
        }

LABEL_46:
        v95 = [v55 cachedSubscription];
        v96 = [v95 isPurchaser];

        if (v96)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }
    }

    else
    {
      sub_218745E8C(&v141, sub_21880702C);
    }

    v90 = 0;
    v92 = 0;
    goto LABEL_35;
  }

  v58 = v122;
  sub_218A2D7EC(v123, v122);
  v59 = v127;
  v60 = v128;
  if ((*(v127 + 48))(v58, 1, v128) == 1)
  {
    sub_2198CF748(v58, &qword_280E908A0, MEMORY[0x277D333A0], v61);
    goto LABEL_26;
  }

  (*(v59 + 32))(v124, v58, v60);
  v62 = v121;
  (*(v59 + 16))();
  v63 = (*(v59 + 88))(v62, v60);
  if (v63 == *MEMORY[0x277D33390])
  {
    (*(v59 + 96))(v62, v60);
    v64 = *v62;
    v65 = [v4[10] appConfiguration];
    if ([v65 respondsToSelector_])
    {
      v66 = [v65 paidBundleConfig];
      swift_unknownObjectRelease();
      v67 = [v66 isFamilySharingSetupEnabled];

      if (v64 & v67)
      {
        type metadata accessor for Localized();
        v68 = swift_getObjCClassFromMetadata();
        v69 = [objc_opt_self() bundleForClass_];
        v70 = sub_219BDB5E4();
        v72 = v71;

        type metadata accessor for FollowingButtonModel();
        v73 = swift_allocObject();
        *(v73 + 16) = 0xD000000000000012;
        *(v73 + 24) = 0x8000000219D3B660;
        goto LABEL_23;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v84 = [v55 cachedSubscription];
    v85 = [v84 isPurchaser];

    if (!v85)
    {
LABEL_24:
      (*(v127 + 8))(v124, v128);
      goto LABEL_26;
    }

    type metadata accessor for Localized();
    v86 = swift_getObjCClassFromMetadata();
    v87 = [objc_opt_self() v36[346]];
    v70 = sub_219BDB5E4();
    v72 = v88;

    type metadata accessor for FollowingButtonModel();
    v73 = swift_allocObject();
    strcpy((v73 + 16), "manageFamily");
    *(v73 + 29) = 0;
    *(v73 + 30) = -5120;
LABEL_23:
    *(v73 + 32) = v70;
    *(v73 + 40) = v72;
    *(v73 + 48) = v132 & 1;
    *v34 = v73;
    swift_storeEnumTagMultiPayload();
    sub_219BE5FB4();
    sub_219BE6994();
    (*(v133 + 8))(v33, v137);
    goto LABEL_24;
  }

  if (v63 == *MEMORY[0x277D33398])
  {
    (*(v59 + 96))(v62, v60);
    v74 = v117;
    v75 = v62;
    v76 = v120;
    (*(v117 + 32))(v120, v75, v119);
    v77 = v59;
    if (sub_219BF1434())
    {
      type metadata accessor for Localized();
      v78 = swift_getObjCClassFromMetadata();
      v79 = [objc_opt_self() v36[346]];
      v80 = sub_219BDB5E4();
      v82 = v81;

      type metadata accessor for FollowingButtonModel();
      v83 = swift_allocObject();
      strcpy((v83 + 16), "manageFamily");
      *(v83 + 29) = 0;
      *(v83 + 30) = -5120;
      *(v83 + 32) = v80;
      *(v83 + 40) = v82;
      *(v83 + 48) = v132 & 1;
      *v34 = v83;
      swift_storeEnumTagMultiPayload();
      sub_219BE5FB4();
      sub_219BE6994();
      (*(v133 + 8))(v33, v137);
      (*(v74 + 8))(v76, v119);
      (*(v77 + 8))(v124, v128);
    }

    else
    {
      (*(v74 + 8))(v76, v119);
      (*(v59 + 8))(v124, v60);
    }

    goto LABEL_26;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_2198D2BE8@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = sub_219BF2CB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_219BF2634();
  v25 = *(v9 - 8);
  v26 = v9;
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*a1 identifier];
  v14 = sub_219BF5414();
  v16 = v15;

  v17 = sub_218E969B8(v14, v16, 0);

  if (v17)
  {
    __swift_project_boxed_opaque_existential_1(a2 + 43, a2[46]);
    *v8 = v17[2];
    (*(v6 + 104))(v8, *MEMORY[0x277D33B98], v5);
    swift_unknownObjectRetain();
    sub_219BF4794();
    (*(v6 + 8))(v8, v5);
    v18 = sub_219BF2614();
    (*(v25 + 8))(v12, v26);
    type metadata accessor for FollowingTagModel();
    v19 = swift_allocObject();
    *(v19 + 16) = 3;
    *(v19 + 24) = v17;
    *(v19 + 32) = v18 & 1;

    v20 = v27;
    sub_218BDF9D0();

    sub_218950B84(0);
    return (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  }

  else
  {
    sub_218950B84(0);
    return (*(*(v23 - 8) + 56))(v27, 1, 1, v23);
  }
}

uint64_t sub_2198D2EDC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = [objc_opt_self() isTagAllowedForNewsVersion_];
  if (result)
  {
    v5 = *(a2 + 288);
    v6 = [*(v3 + 16) identifier];
    if (!v6)
    {
      sub_219BF5414();
      v6 = sub_219BF53D4();
    }

    v7 = [*(v5 + OBJC_IVAR____TtC7NewsUI219SubscriptionService_subscriptionController) isChannelPermanentForTagID_];

    if (v7 & 1) != 0 || ([*(v3 + 16) isLocal] & 1) != 0 || (objc_msgSend(*(v3 + 16), sel_isPuzzleType))
    {
      return 0;
    }

    if (![*(v3 + 16) isPuzzleHub] || (result = objc_msgSend(*a2, sel_puzzlesEnabled), result))
    {
      if (![*(v3 + 16) isFoodHub] || (objc_msgSend(*a2, sel_useFood) & 1) == 0)
      {
        if (sub_219BF2FA4() != 1 || ![*(v3 + 16) asSports])
        {
          return 1;
        }

        swift_unknownObjectRelease();
      }

      return 0;
    }
  }

  return result;
}