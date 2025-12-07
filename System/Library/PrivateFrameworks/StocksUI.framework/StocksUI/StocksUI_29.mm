uint64_t sub_2207C4220(uint64_t a1, uint64_t a2)
{
  sub_2207C4310(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2207C42B4(uint64_t a1)
{
  v2 = type metadata accessor for StockEarningsModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2207C4310(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2207C4374(uint64_t a1, unsigned __int8 *a2)
{
  v179 = a2;
  v180 = a1;
  v173 = sub_220884E9C();
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173, v2);
  v156 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_220447B54(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v170 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v171 = (&v148 - v10);
  sub_220447B54(0, &qword_27CF5A2F0, sub_2206230B4, v4);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v155 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v168 = &v148 - v16;
  v166 = sub_22089022C();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166, v17);
  v167 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_22089041C();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163, v19);
  v164 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_2208906CC();
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160, v21);
  v161 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206230B4(0);
  v169 = v23;
  v175 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v24);
  v176 = &v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2208876BC();
  MEMORY[0x28223BE20](v26 - 8, v27);
  v29 = &v148 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_22088D1DC();
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154, v30);
  v151 = (&v148 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32, v33);
  v152 = &v148 - v34;
  sub_220447B54(0, &qword_281298480, MEMORY[0x277D686D0], v4);
  v148 = *(v35 - 8);
  v36 = *(v148 + 64);
  MEMORY[0x28223BE20](v35 - 8, v37);
  v149 = &v148 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v157 = &v148 - v40;
  v41 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v148 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v46);
  v150 = &v148 - v47;
  v48 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v48, v49);
  v51 = (&v148 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v52, v53);
  v55 = &v148 - v54;
  MEMORY[0x28223BE20](v56, v57);
  v59 = (&v148 - v58);
  MEMORY[0x28223BE20](v60, v61);
  v177 = &v148 - v62;
  MEMORY[0x28223BE20](v63, v64);
  v174 = &v148 - v65;
  v66 = type metadata accessor for ForYouFeedRouteModel(0);
  MEMORY[0x28223BE20](v66, v67);
  v158 = &v148 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69, v70);
  v72 = &v148 - v71;
  LODWORD(v179) = *v179;
  sub_2207C7784(v180, &v148 - v71, type metadata accessor for ForYouFeedRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v89 = MEMORY[0x277CC9260];
      v90 = v171;
      sub_2207C7684(v72, v171, &qword_2812994E0, MEMORY[0x277CC9260]);
      v91 = v170;
      sub_2207C7704(v90, v170, &qword_2812994E0, v89);
      v92 = v172;
      v93 = v173;
      if ((*(v172 + 48))(v91, 1, v173) == 1)
      {
        v94 = MEMORY[0x277CC9260];
        sub_2207C7B54(v90, &qword_2812994E0, MEMORY[0x277CC9260]);
        v95 = v91;
        v96 = v94;
      }

      else
      {
        v111 = v156;
        (*(v92 + 32))(v156, v91, v93);
        v112 = [objc_opt_self() sharedApplication];
        v113 = sub_220884E3C();
        sub_2205CE854(MEMORY[0x277D84F90]);
        type metadata accessor for OpenExternalURLOptionsKey(0);
        sub_220448A78(&qword_27CF57590, type metadata accessor for OpenExternalURLOptionsKey, &unk_2208990A8);
        v114 = sub_22089125C();

        [v112 openURL:v113 options:v114 completionHandler:0];

        (*(v92 + 8))(v111, v93);
        v96 = MEMORY[0x277CC9260];
        v95 = v90;
      }

      return sub_2207C7B54(v95, &qword_2812994E0, v96);
    }

    v83 = v177;
    sub_2207C7BC4(v72, v177, type metadata accessor for StocksActivity.Article);
    sub_2207C7784(v83, v59, type metadata accessor for StocksActivity.Article);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v84 = *v59;
      v85 = v175;
    }

    else
    {
      sub_2204481D8(0);
      v98 = *(v97 + 64);
      sub_2207C7BC4(v59, v29, MEMORY[0x277D2FB40]);
      v84 = sub_22088768C();
      sub_2207C7884(v29, MEMORY[0x277D2FB40]);
      sub_2207C7824(v59 + v98, &qword_281285B20, &qword_281285B30, &protocol descriptor for ArticleScienceDataProviderType, sub_220448010);
      v85 = v175;
      if (!v84)
      {
        v126 = v177;
        v127 = v158;
        sub_2207C7784(v177, v158, type metadata accessor for StocksActivity.Article);
        swift_storeEnumTagMultiPayload();
        v188[0] = v179;
        sub_2207C4374(v127, v188);
        sub_2207C7884(v127, type metadata accessor for ForYouFeedRouteModel);
        v142 = v126;
        return sub_2207C7884(v142, type metadata accessor for StocksActivity.Article);
      }
    }

    v180 = v84;
    *&v186[0] = v84;
    (*(v159 + 104))(v161, *MEMORY[0x277D33A68], v160);
    (*(v162 + 104))(v164, *MEMORY[0x277D33570], v163);
    (*(v165 + 104))(v167, *MEMORY[0x277D33270], v166);
    memset(v188, 0, sizeof(v188));
    sub_22044826C();
    swift_unknownObjectRetain();
    v99 = v176;
    sub_2208905CC();
    v100 = v178[12];
    ObjectType = swift_getObjectType();
    sub_22088E3DC();
    v102 = v168;
    v103 = v169;
    v172 = *(v85 + 16);
    (v172)(v168, v99, v169);
    v171 = *(v85 + 56);
    (v171)(v102, 0, 1, v103);
    v173 = ObjectType;
    v174 = v100;
    LOBYTE(v100) = sub_22088B7DC();

    sub_2207C7B54(v102, &qword_27CF5A2F0, sub_2206230B4);
    if ((v100 & 1) == 0)
    {
      v55 = v177;
      v116 = v158;
      sub_2207C7784(v177, v158, type metadata accessor for StocksActivity.Article);
      swift_storeEnumTagMultiPayload();
      v188[0] = v179;
      sub_2207C4374(v116, v188);
      swift_unknownObjectRelease();
      sub_2207C7884(v116, type metadata accessor for ForYouFeedRouteModel);
      (*(v85 + 8))(v176, v103);
      goto LABEL_27;
    }

    sub_22088E3DC();
    v104 = v155;
    v105 = v176;
    (v172)(v155, v176, v103);
    (v171)(v104, 0, 1, v103);
    sub_22088B81C();
    swift_unknownObjectRelease();

    sub_2207C7B54(v104, &qword_27CF5A2F0, sub_2206230B4);
    (*(v175 + 8))(v105, v103);
    v142 = v177;
    return sub_2207C7884(v142, type metadata accessor for StocksActivity.Article);
  }

  if (EnumCaseMultiPayload)
  {
    sub_2207C7BC4(v72, v55, type metadata accessor for StocksActivity.Article);
    sub_2207C7784(v55, v51, type metadata accessor for StocksActivity.Article);
    v86 = swift_getEnumCaseMultiPayload();
    if (v86 == 1)
    {
      v88 = *v51;
    }

    else
    {
      sub_2204481D8(0);
      v107 = *(v106 + 64);
      sub_2207C7BC4(v51, v29, MEMORY[0x277D2FB40]);
      v88 = sub_22088768C();
      sub_2207C7884(v29, MEMORY[0x277D2FB40]);
      v86 = sub_2207C7824(v51 + v107, &qword_281285B20, &qword_281285B30, &protocol descriptor for ArticleScienceDataProviderType, sub_220448010);
      if (!v88)
      {
        v128 = v158;
        sub_2207C7784(v55, v158, type metadata accessor for StocksActivity.Article);
        swift_storeEnumTagMultiPayload();
        v188[0] = v179;
        sub_2207C4374(v128, v188);
        sub_2207C7884(v128, type metadata accessor for ForYouFeedRouteModel);
        goto LABEL_27;
      }
    }

    MEMORY[0x28223BE20](v86, v87);
    v108 = v178;
    *(&v148 - 2) = v178;
    *(&v148 - 1) = v55;
    sub_220888FBC();
    v109 = swift_allocObject();
    *(v109 + 16) = v88;
    *(v109 + 24) = v108;
    swift_unknownObjectRetain();

    v110 = sub_220888D9C();
    sub_220888E4C();
    swift_unknownObjectRelease();

LABEL_27:
    v142 = v55;
    return sub_2207C7884(v142, type metadata accessor for StocksActivity.Article);
  }

  v74 = v174;
  sub_2207C7BC4(v72, v174, type metadata accessor for StocksActivity.Article);
  v75 = v179;
  if (v179)
  {
    v76 = v178;
    __swift_project_boxed_opaque_existential_1(v178 + 35, v178[38]);
    v77 = sub_22088B89C();
    if (v77)
    {
      v78 = v77;
      sub_2207C7784(v74, v44, type metadata accessor for StocksActivity.Article);
      swift_storeEnumTagMultiPayload();
      __swift_project_boxed_opaque_existential_1(v76 + 35, v76[38]);
      v79 = v78;
      v80 = sub_22088B8AC();
      v81 = v80;
      if (v75 == 1)
      {

        v82 = v151;
        *v151 = v81;
        v143 = MEMORY[0x277D6E588];
      }

      else
      {
        if (v75 == 2)
        {

          v82 = v151;
          *v151 = 0;
          v82[1] = v81;
        }

        else
        {
          v144 = v151;
          *v151 = v78;
          v144[1] = v80;
          v82 = v144;
        }

        v143 = MEMORY[0x277D6E590];
      }

      v145 = v154;
      v146 = v153;
      v147 = v152;
      (*(v153 + 104))(v82, *v143, v154);
      (*(v146 + 32))(v147, v82, v145);
      sub_22088B01C();

      (*(v146 + 8))(v147, v145);
      sub_2207C7884(v44, type metadata accessor for StocksActivity);
    }

    v142 = v74;
    return sub_2207C7884(v142, type metadata accessor for StocksActivity.Article);
  }

  v117 = v178;
  v118 = v178[10];
  v119 = v150;
  sub_2207C7784(v74, v150, type metadata accessor for StocksActivity.Article);
  swift_storeEnumTagMultiPayload();
  v120 = v117[18];
  v121 = sub_22088969C();
  v122 = v157;
  (*(*(v121 - 8) + 56))(v157, 1, 1, v121);
  sub_22046DA2C((v117 + 19), v188);
  v187 = 0;
  memset(v186, 0, sizeof(v186));
  v185 = v118;
  sub_2205A0924(v186, &v181, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
  if (v182)
  {
    sub_220458198(&v181, v183);
    v123 = sub_220597454(v183);
    v180 = v124;
    v179 = v125;
    __swift_destroy_boxed_opaque_existential_1(v183);
  }

  else
  {
    sub_2207C7824(&v181, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v123 = qword_2812908F8;
    v129 = qword_281290900;
    v130 = qword_281290908;

    v180 = v129;
    v179 = v130;
    sub_2204A80F4(v129, v130);
  }

  v131 = v119;
  v182 = sub_22088731C();
  *&v181 = v120;
  v132 = MEMORY[0x277D686D0];
  v133 = v149;
  sub_2207C7704(v122, v149, &qword_281298480, MEMORY[0x277D686D0]);
  sub_2205A0924(v188, v183, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
  v134 = (*(v148 + 80) + 24) & ~*(v148 + 80);
  v135 = (v36 + v134 + 7) & 0xFFFFFFFFFFFFFFF8;
  v136 = swift_allocObject();
  *(v136 + 16) = v120;
  sub_2207C7684(v133, v136 + v134, &qword_281298480, v132);
  v137 = v136 + v135;
  v138 = v183[1];
  *v137 = v183[0];
  *(v137 + 16) = v138;
  *(v137 + 32) = v184;
  v139 = (v136 + ((v135 + 47) & 0xFFFFFFFFFFFFFFF8));
  v140 = v180;
  *v139 = v123;
  v139[1] = v140;
  v141 = v179;
  v139[2] = v179;
  swift_retain_n();

  sub_2204A80F4(v140, v141);
  sub_2204549FC(0);
  sub_220448A78(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
  sub_22088E92C();

  sub_2204DA45C(v140, v141);
  sub_2207C7824(v186, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2207C7824(v188, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_2207C7B54(v157, &qword_281298480, MEMORY[0x277D686D0]);
  sub_2207C7884(v131, type metadata accessor for StocksActivity);
  sub_2207C7884(v174, type metadata accessor for StocksActivity.Article);
  return sub_2207C7824(&v181, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
}

uint64_t sub_2207C5CA8(uint64_t a1, uint64_t a2)
{
  sub_220447B54(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v38 = *(v4 - 8);
  v5 = *(v38 + 8);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v7 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v37 - v10;
  v12 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 80);
  sub_2207C7784(a2, v15, type metadata accessor for StocksActivity.Article);
  swift_storeEnumTagMultiPayload();
  v17 = *(a1 + 144);
  v18 = sub_22088969C();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  sub_22046DA2C(a1 + 152, v47);
  sub_22046DA2C(a1 + 40, v46);
  v48 = v16;
  sub_2205A0924(v46, &v42, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
  v37 = v15;
  if (v43)
  {
    sub_220458198(&v42, v44);
    v19 = sub_220597454(v44);
    v40 = v20;
    v39 = v21;
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    sub_2207C7824(&v42, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v19 = qword_2812908F8;
    v22 = qword_281290900;
    v23 = qword_281290908;

    v40 = v22;
    v39 = v23;
    sub_2204A80F4(v22, v23);
  }

  v43 = sub_22088731C();
  *&v42 = v17;
  v24 = MEMORY[0x277D686D0];
  sub_2207C7704(v11, v7, &qword_281298480, MEMORY[0x277D686D0]);
  sub_2205A0924(v47, v44, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
  v25 = (v38[80] + 24) & ~v38[80];
  v26 = (v5 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = v11;
  v27 = swift_allocObject();
  *(v27 + 16) = v17;
  sub_2207C7684(v7, v27 + v25, &qword_281298480, v24);
  v28 = v27 + v26;
  v29 = v44[1];
  *v28 = v44[0];
  *(v28 + 16) = v29;
  *(v28 + 32) = v45;
  v30 = (v27 + ((v26 + 47) & 0xFFFFFFFFFFFFFFF8));
  v31 = v40;
  *v30 = v19;
  v30[1] = v31;
  v32 = v39;
  v30[2] = v39;
  swift_retain_n();

  sub_2204A80F4(v31, v32);
  sub_2204549FC(0);
  sub_220448A78(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
  v33 = v37;
  v34 = v41;
  sub_22088E92C();

  if (v34)
  {
    sub_2207C7824(&v42, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
    sub_2205A0AE4(0, &qword_281298600, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    v35 = sub_220888EBC();

    sub_2204DA45C(v31, v32);
    sub_2207C7824(v46, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_2207C7824(v47, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_2207C7B54(v38, &qword_281298480, MEMORY[0x277D686D0]);
    sub_2207C7884(v33, type metadata accessor for StocksActivity);
    return v35;
  }

  else
  {
    sub_2207C7824(v46, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_2207C7824(v47, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_2207C7B54(v38, &qword_281298480, MEMORY[0x277D686D0]);
    sub_2207C7884(v33, type metadata accessor for StocksActivity);
    sub_2207C7824(&v42, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
    sub_2204DA45C(v31, v32);
  }

  return v19;
}

uint64_t sub_2207C6398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  sub_220447B54(0, &qword_27CF5A2F0, sub_2206230B4, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v37 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v42 = &v37 - v9;
  v10 = sub_22089022C();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22089041C();
  v13 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2208906CC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206230B4(0);
  v23 = v22;
  v46 = *(v22 - 8);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a2;
  (*(v18 + 104))(v21, *MEMORY[0x277D33A68], v17, v25);
  (*(v13 + 104))(v16, *MEMORY[0x277D33570], v38);
  (*(v40 + 104))(v39, *MEMORY[0x277D33270], v41);
  v47 = 0u;
  v48 = 0u;
  sub_22044826C();
  swift_unknownObjectRetain();
  sub_2208905CC();
  swift_getObjectType();
  sub_22088E3DC();
  v28 = v46;
  v29 = v42;
  v40 = *(v46 + 16);
  v41 = v27;
  (v40)(v42, v27, v23);
  v30 = *(v28 + 56);
  v43 = v23;
  v39 = v30;
  (v30)(v29, 0, 1, v23);
  v31 = v29;
  LOBYTE(v29) = sub_22088B7DC();

  sub_2207C7B54(v31, &qword_27CF5A2F0, v44);
  if (v29)
  {
    sub_22088E3DC();
    v32 = v37;
    v33 = v41;
    v34 = v43;
    (v40)(v37, v41, v43);
    (v39)(v32, 0, 1, v34);
    v35 = v45;
    sub_22088B81C();
    if (v35)
    {
    }

    sub_2207C7B54(v32, &qword_27CF5A2F0, sub_2206230B4);
  }

  else
  {
    v34 = v43;
    v33 = v41;
  }

  return (*(v46 + 8))(v33, v34);
}

uint64_t sub_2207C6894(uint64_t a1)
{
  v3 = type metadata accessor for ForYouFeedRouteModel(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220447B54(0, qword_281295190, type metadata accessor for StocksActivity, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v27 - v13;
  v15 = type metadata accessor for StocksActivity(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207C7784(a1, v6, type metadata accessor for ForYouFeedRouteModel);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_2207C7884(v6, type metadata accessor for ForYouFeedRouteModel);
    v20 = 1;
  }

  else
  {
    sub_2207C7BC4(v6, v10, type metadata accessor for StocksActivity.Article);
    sub_2207C7BC4(v10, v14, type metadata accessor for StocksActivity.Article);
    swift_storeEnumTagMultiPayload();
    v20 = 0;
  }

  (*(v16 + 56))(v14, v20, 1, v15);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_2207C7B54(v14, qword_281295190, type metadata accessor for StocksActivity);
    return 0;
  }

  else
  {
    sub_2207C7BC4(v14, v19, type metadata accessor for StocksActivity);
    v22 = *(v1 + 80);
    v23 = *(v1 + 144);
    sub_22046DA2C(v1 + 152, v31);
    v30[4] = v22;
    v30[3] = sub_22088731C();
    v30[0] = v23;
    sub_2205A0924(v31, v28, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v25 = v28[1];
    *(v24 + 24) = v28[0];
    *(v24 + 40) = v25;
    *(v24 + 56) = v29;
    sub_2204549FC(0);
    sub_220448A78(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
    swift_retain_n();
    v26 = sub_22088E91C();

    sub_2207C7824(v31, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_2207C7884(v19, type metadata accessor for StocksActivity);
    sub_2207C7824(v30, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
    return v26;
  }
}

uint64_t sub_2207C6D50(uint64_t a1)
{
  v3 = type metadata accessor for StockListSelectionModel(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v51 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220447B54(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v54 = *(v6 - 8);
  v7 = *(v54 + 8);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v55 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v45 - v11;
  v13 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v1 + 80);
  sub_2205DE35C(0);
  v19 = *(v18 + 48);
  v20 = sub_22088685C();
  v48 = *(v20 - 8);
  v21 = *(v48 + 16);
  v50 = a1;
  v49 = v20;
  v47 = v48 + 16;
  v46 = v21;
  (v21)(v16, a1);
  *&v16[v19] = 0;
  type metadata accessor for StocksActivity.StockFeed(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v22 = *(v1 + 144);
  v23 = sub_22088969C();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v56 = v1;
  sub_22046DA2C(v1 + 152, v64);
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  v61 = v17;
  sub_2205A0924(v62, &v57, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
  if (v58)
  {
    sub_220458198(&v57, v59);
    v24 = sub_220597454(v59);
    v53 = v25;
    v52 = v26;
    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  else
  {
    sub_2207C7824(&v57, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v24 = qword_2812908F8;
    v27 = qword_281290900;
    v28 = qword_281290908;

    v53 = v27;
    v52 = v28;
    sub_2204A80F4(v27, v28);
  }

  v58 = sub_22088731C();
  *&v57 = v22;
  v29 = MEMORY[0x277D686D0];
  v30 = v55;
  sub_2207C7704(v12, v55, &qword_281298480, MEMORY[0x277D686D0]);
  sub_2205A0924(v64, v59, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
  v31 = v54[80];
  v54 = v12;
  v32 = (v31 + 24) & ~v31;
  v33 = (v7 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = v22;
  sub_2207C7684(v30, v34 + v32, &qword_281298480, v29);
  v35 = v34 + v33;
  v36 = v59[1];
  *v35 = v59[0];
  *(v35 + 16) = v36;
  *(v35 + 32) = v60;
  v37 = (v34 + ((v33 + 47) & 0xFFFFFFFFFFFFFFF8));
  v38 = v53;
  *v37 = v24;
  v37[1] = v38;
  v39 = v52;
  v37[2] = v52;
  swift_retain_n();

  sub_2204A80F4(v38, v39);
  sub_2204549FC(0);
  sub_220448A78(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
  sub_22088E92C();

  sub_2204DA45C(v38, v39);
  sub_2207C7824(v62, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2207C7824(v64, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_2207C7B54(v54, &qword_281298480, MEMORY[0x277D686D0]);
  sub_2207C7884(v16, type metadata accessor for StocksActivity);
  sub_2207C7824(&v57, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v41 = *(result + 40);
    ObjectType = swift_getObjectType();
    v43 = v51;
    v44 = v49;
    v46(v51, v50, v49);
    (*(v48 + 56))(v43, 0, 2, v44);
    (*(v41 + 96))(v43, ObjectType, v41);
    sub_2207C7884(v43, type metadata accessor for StockListSelectionModel);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2207C75D4()
{
  MEMORY[0x223D8B910](v0 + 16);
  sub_22054B9F8(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  __swift_destroy_boxed_opaque_existential_1((v0 + 192));
  __swift_destroy_boxed_opaque_existential_1((v0 + 232));

  __swift_destroy_boxed_opaque_existential_1((v0 + 280));
  return v0;
}

uint64_t sub_2207C764C()
{
  sub_2207C75D4();

  return swift_deallocClassInstance();
}

uint64_t sub_2207C7684(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220447B54(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2207C7704(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220447B54(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2207C7784(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207C7824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2207C7884(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_14()
{
  sub_220447B54(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2207C7A70()
{
  sub_220447B54(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);

  return sub_220598700();
}

uint64_t sub_2207C7B54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220447B54(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2207C7BC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207C7C60(uint64_t a1)
{
  v2 = sub_2207C8228();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2207C7C9C(uint64_t a1)
{
  v2 = sub_2207C8228();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2207C7D00(void *a1)
{
  sub_2207C81CC(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2207C8228();
  sub_220892A5C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2207C7E0C@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v31 = sub_22088FCCC();
  v2 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207C8164(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v29 - v12;
  v14 = sub_22088FB9C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22088519C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088518C();
  v24 = sub_22088517C();
  v29 = v25;
  v30 = v24;
  (*(v20 + 8))(v23, v19);
  (*(v15 + 104))(v18, *MEMORY[0x277D32628], v14);
  v26 = sub_220888F5C();
  v27 = *(*(v26 - 8) + 56);
  v27(v13, 1, 1, v26);
  v27(v9, 1, 1, v26);
  (*(v2 + 104))(v5, *MEMORY[0x277D32750], v31);
  sub_2205DF6BC();
  sub_2205DF710();
  return sub_22088F4AC(0x63616C507377656ELL, 0xEB00000000647261, v30, v29, 0, 0, 0, v18, v13, v9, MEMORY[0x277D84FA0], MEMORY[0x277D84FA0], MEMORY[0x277D84FA0], MEMORY[0x277D84FA0], v5);
}

void sub_2207C8164(uint64_t a1)
{
  if (!qword_2812985C8)
  {
    sub_220888F5C();
    v1 = sub_22089230C();
    if (!v2)
    {
      atomic_store(v1, &qword_2812985C8);
    }
  }
}

void sub_2207C81CC(uint64_t a1)
{
  if (!qword_27CF59CD0)
  {
    sub_2207C8228();
    v1 = sub_22089284C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF59CD0);
    }
  }
}

unint64_t sub_2207C8228()
{
  result = qword_27CF59CD8;
  if (!qword_27CF59CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59CD8);
  }

  return result;
}

unint64_t sub_2207C8290()
{
  result = qword_27CF59CE0;
  if (!qword_27CF59CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59CE0);
  }

  return result;
}

unint64_t sub_2207C82E8()
{
  result = qword_27CF59CE8;
  if (!qword_27CF59CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59CE8);
  }

  return result;
}

double (*sub_2207C833C())(uint64_t a1)
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = v1;
  if (v1 == 1)
  {
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    v3 = sub_2207C8E14;
    *(v0 + 64) = sub_2207C8E14;
    *(v0 + 72) = v4;

    sub_2207C8DB4(v5, v6);
  }

  sub_2207C8DC4(v1, v2);
  return v3;
}

double (*sub_2207C83EC())(uint64_t a1)
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = v1;
  if (v1 == 1)
  {
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    v3 = sub_2207C8D90;
    *(v0 + 80) = sub_2207C8D90;
    *(v0 + 88) = v4;

    sub_2207C8DB4(v5, v6);
  }

  sub_2207C8DC4(v1, v2);
  return v3;
}

double sub_2207C849C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_2207C8574();
    [v9 setPersonalizedAds_];

    *(v8 + 57) = a4;
    sub_220886ADC();
    type metadata accessor for OnboardingPersonalizedAdsStep();
    sub_2207C8DD4(&qword_27CF59CF0, &unk_2208B5960);
    sub_220886C6C();

    sub_2207C8AF0();
  }

  return result;
}

id sub_2207C8574()
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

uint64_t sub_2207C85E0()
{
  v1 = v0;
  sub_220886ADC();
  sub_2207C8DD4(&unk_2812864C8, &unk_2208B5920);
  sub_220886B3C();

  if (v28 == 1)
  {
    if (qword_2812980E0 != -1)
    {
      swift_once();
    }

    v2 = sub_22088A84C();
    __swift_project_value_buffer(v2, qword_2812980E8);
    v3 = sub_22088A82C();
    v4 = sub_220891AFC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22043F000, v3, v4, "Force showing due to showPersonalizedAdsOnNextLaunch being set", v5, 2u);
      MEMORY[0x223D8B7F0](v5, -1, -1);
    }

    return 1;
  }

  v7 = sub_2207C8574();
  v8 = [v7 acknowledgedVersionForPersonalizedAds];

  if (v8 >= [*(v1 + 96) latestVersionForPersonalizedAdsConsent])
  {
    if (qword_2812980E0 != -1)
    {
      swift_once();
    }

    v16 = sub_22088A84C();
    __swift_project_value_buffer(v16, qword_2812980E8);

    v17 = sub_22088A82C();
    v18 = sub_220891AFC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134349056;
      v20 = sub_2207C8574();
      v21 = [v20 acknowledgedVersionForPersonalizedAds];

      *(v19 + 4) = v21;

      _os_log_impl(&dword_22043F000, v17, v18, "Not showing due to version: %{public}ld", v19, 0xCu);
      MEMORY[0x223D8B7F0](v19, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v9 = [objc_opt_self() sharedAccount];
  v10 = [v9 isContentStoreFrontSupported];

  if (!v10)
  {
    if (qword_2812980E0 != -1)
    {
      swift_once();
    }

    v22 = sub_22088A84C();
    __swift_project_value_buffer(v22, qword_2812980E8);
    v12 = sub_22088A82C();
    v13 = sub_220891AFC();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_23;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Not showing due to unsupported storefront";
    goto LABEL_22;
  }

  if (*(v1 + 56))
  {
    if (qword_2812980E0 != -1)
    {
      swift_once();
    }

    v11 = sub_22088A84C();
    __swift_project_value_buffer(v11, qword_2812980E8);
    v12 = sub_22088A82C();
    v13 = sub_220891AFC();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_23;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Not showing due non-apple news source";
LABEL_22:
    _os_log_impl(&dword_22043F000, v12, v13, v15, v14, 2u);
    MEMORY[0x223D8B7F0](v14, -1, -1);
LABEL_23:

    return 0;
  }

  v23 = [*(v1 + 96) shouldPresentPersonalizedAdsOnboarding];
  if (qword_2812980E0 != -1)
  {
    swift_once();
  }

  v24 = sub_22088A84C();
  __swift_project_value_buffer(v24, qword_2812980E8);
  v25 = sub_22088A82C();
  v26 = sub_220891AFC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 67109120;
    *(v27 + 4) = v23;
    _os_log_impl(&dword_22043F000, v25, v26, "Should present personalized ads onboarding: %{BOOL}d", v27, 8u);
    MEMORY[0x223D8B7F0](v27, -1, -1);
  }

  return v23;
}

double sub_2207C8AF0()
{
  v1 = v0;
  v2 = sub_2207C8574();
  v3 = [v2 latestVersionForPersonalizedAdsConsent];

  [*(v1 + 96) setAcknowledgedVersionForPersonalizedAds_];
  if (qword_2812980E0 != -1)
  {
    swift_once();
  }

  v4 = sub_22088A84C();
  __swift_project_value_buffer(v4, qword_2812980E8);

  oslog = sub_22088A82C();
  v5 = sub_220891AFC();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    v7 = sub_2207C8574();
    v8 = [v7 acknowledgedVersionForPersonalizedAds];

    *(v6 + 4) = v8;

    _os_log_impl(&dword_22043F000, oslog, v5, "Set acknowledgedVersion to %{public}ld", v6, 0xCu);
    MEMORY[0x223D8B7F0](v6, -1, -1);
  }

  else
  {
  }

  return result;
}

uint64_t sub_2207C8C8C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_2207C8DB4(*(v0 + 64), *(v0 + 72));
  sub_2207C8DB4(*(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

double sub_2207C8DB4(uint64_t a1, uint64_t a2)
{
  if (a1 != 1)
  {
    return sub_2204DA45C(a1, a2);
  }

  return result;
}

uint64_t sub_2207C8DC4(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
    return sub_2204A80F4(result, a2);
  }

  return result;
}

uint64_t sub_2207C8DD4(unint64_t *a1, uint64_t a2)
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

void *sub_2207C8E38(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[5];
  v50 = v1[6];
  v51 = v3;
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v47 = v4;
  v53 = *(v4 - 8);
  v6 = *(v53 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v48 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v52 = &v42 - v48;
  (*(*(v50 + 8) + 8))(a1, v4, v8);
  v10 = v1[10];
  v49 = v1[11];
  v9 = v49;
  v11 = __swift_project_boxed_opaque_existential_1(v1 + 7, v10);
  v46 = *(v10 - 8);
  v12 = *(v46 + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v44 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = *(*(v9 + 8) + 8);
  v16 = a1;
  v15(a1, v10, v14);
  v17 = v1[15];
  v43 = v1[16];
  v18 = v43;
  v19 = __swift_project_boxed_opaque_existential_1(v1 + 12, v17);
  v20 = *(v17 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v42 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = &v42 - v42;
  v25 = (*(*(v18 + 8) + 8))(v16, v17, v23);
  v27 = MEMORY[0x28223BE20](v25, v26);
  v28 = v47;
  v29 = &v42 - v48;
  v30 = (*(v53 + 16))(&v42 - v48, v52, v47, v27);
  v32 = MEMORY[0x28223BE20](v30, v31);
  v33 = v46;
  v34 = &v42 - v45;
  v35 = v44;
  v36 = (*(v46 + 16))(&v42 - v45, v44, v10, v32);
  v38 = MEMORY[0x28223BE20](v36, v37);
  v39 = &v42 - v42;
  (*(v20 + 16))(&v42 - v42, v24, v17, v38);
  v40 = sub_22049BBB4(v29, v34, v39, v51, v28, v17, v10, v50, v43, v49);
  (*(v20 + 8))(v24, v17);
  (*(v33 + 8))(v35, v10);
  (*(v53 + 8))(v52, v28);
  return v40;
}

id sub_2207C9204(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_22059B834(0);
  *&v11 = MEMORY[0x28223BE20](v9 - 8, v10).n128_u64[0];
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a4 userInterfaceIdiom] == 5)
  {
    v14 = 0;
  }

  else
  {
    [a4 horizontalSizeClass];
    v14 = 1;
  }

  __swift_project_boxed_opaque_existential_1((v4 + 96), *(v4 + 120));
  sub_22056064C(a2, a3, v14);
  v15 = sub_22089226C();
  (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  sub_22089228C();
  return [a1 setPreferredBehavioralStyle_];
}

void *sub_2207C9340@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_2207C8E38(a1);
  *a2 = result;
  return result;
}

unint64_t sub_2207C9390(uint64_t a1)
{
  result = sub_2207C93B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2207C93B8()
{
  result = qword_281289E60;
  if (!qword_281289E60)
  {
    type metadata accessor for BrandingTitleViewRenderer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281289E60);
  }

  return result;
}

unint64_t sub_2207C9410(__n128 a1)
{
  result = qword_281293EC0;
  if (!qword_281293EC0)
  {
    type metadata accessor for StockFeedGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281293EC0);
  }

  return result;
}

uint64_t sub_2207C9468(uint64_t a1, uint64_t a2)
{
  v38 = sub_22088698C();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NewsStockFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StockFeedGroup(0);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207C9B58(a1, v16, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2207C9BD8(v16, v11);
    v17 = *(v11 + 2);

    sub_2207C9C3C(v11, type metadata accessor for NewsStockFeedGroup);
    v18 = *(v17 + 16);
    if (!v18)
    {
LABEL_3:

      v19 = MEMORY[0x277D84F90];
      goto LABEL_12;
    }
  }

  else
  {
    sub_2207C9C3C(v16, type metadata accessor for StockFeedGroup);
    v17 = MEMORY[0x277D84F90];
    v18 = *(MEMORY[0x277D84F90] + 16);
    if (!v18)
    {
      goto LABEL_3;
    }
  }

  v35[1] = v17;
  v35[2] = a2;
  v21 = *(v4 + 16);
  v20 = v4 + 16;
  v22 = v17 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
  v36 = *(v20 + 56);
  v37 = v21;
  v23 = (v20 - 8);
  v19 = MEMORY[0x277D84F90];
  do
  {
    v24 = v38;
    v37(v7, v22, v38);
    v25 = sub_2208868EC();
    v27 = v26;
    (*v23)(v7, v24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_22045E924(0, *(v19 + 2) + 1, 1, v19);
    }

    v29 = *(v19 + 2);
    v28 = *(v19 + 3);
    if (v29 >= v28 >> 1)
    {
      v19 = sub_22045E924((v28 > 1), v29 + 1, 1, v19);
    }

    *(v19 + 2) = v29 + 1;
    v30 = &v19[16 * v29];
    *(v30 + 4) = v25;
    *(v30 + 5) = v27;
    v22 += v36;
    --v18;
  }

  while (v18);

LABEL_12:
  v31 = sub_22084A950(v19);

  *(swift_allocObject() + 16) = v31;
  v32 = sub_220888D9C();
  v33 = sub_220888E4C();

  return v33;
}

void sub_2207C97C8(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v36 = a3;
  v5 = sub_22088698C();
  MEMORY[0x28223BE20](v5, v6);
  v44 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v9);
  v46 = &v33 - v12;
  v35 = *a1;
  v13 = *(a1 + 1);
  v34 = a1[16];
  v41 = *(v13 + 16);
  if (v41)
  {
    v14 = 0;
    v15 = a2 + 56;
    v37 = (v10 + 8);
    v38 = v10 + 16;
    v43 = (v10 + 32);
    v16 = MEMORY[0x277D84F90];
    v42 = v5;
    v39 = v13;
    v40 = v10;
    while (v14 < *(v13 + 16))
    {
      v45 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v17 = *(v10 + 72);
      (*(v10 + 16))(v46, v13 + v45 + v17 * v14, v5, v11);
      v18 = sub_2208868EC();
      v20 = v19;
      if (*(a2 + 16) && (v21 = v18, sub_2208929EC(), sub_22089146C(), v22 = sub_220892A2C(), v23 = -1 << *(a2 + 32), v24 = v22 & ~v23, ((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = (*(a2 + 48) + 16 * v24);
          v27 = *v26 == v21 && v26[1] == v20;
          if (v27 || (sub_2208928BC() & 1) != 0)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v5 = v42;
        (*v37)(v46, v42);
      }

      else
      {
LABEL_15:

        v28 = *v43;
        v5 = v42;
        (*v43)(v44, v46, v42);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22070BF14(0, *(v16 + 16) + 1, 1);
          v5 = v42;
          v16 = v47;
        }

        v31 = *(v16 + 16);
        v30 = *(v16 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_22070BF14((v30 > 1), v31 + 1, 1);
          v5 = v42;
          v16 = v47;
        }

        *(v16 + 16) = v31 + 1;
        v28((v16 + v45 + v31 * v17), v44, v5);
      }

      ++v14;
      v10 = v40;
      v13 = v39;
      if (v14 == v41)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
LABEL_21:
    v32 = v36;
    *v36 = v35;
    *(v32 + 1) = v16;
    v32[16] = v34;
  }
}

uint64_t sub_2207C9B28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2207C9468(a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2207C9B58(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for StockFeedGroup(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207C9BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsStockFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2207C9C3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2207C9C9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2207C9CE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2207C9D6C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_22089136C();
  }

  sub_22048D2F4();
  result = sub_2208922EC();
  qword_2812948A8 = result;
  return result;
}

uint64_t sub_2207C9E40()
{
  v0 = sub_22088A84C();
  __swift_allocate_value_buffer(v0, qword_27CF6D150);
  __swift_project_value_buffer(v0, qword_27CF6D150);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_22089136C();
  }

  return sub_22088A83C();
}

uint64_t type metadata accessor for ManageWatchlistsMoveWatchlistBlueprintModifier(uint64_t a1)
{
  result = qword_27CF59CF8;
  if (!qword_27CF59CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2207C9FA4(uint64_t a1)
{
  sub_220886A4C();
  if (v1 <= 0x3F)
  {
    sub_2207CAAC0(319, &qword_27CF588B0, MEMORY[0x277D6E3E0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2207CA05C(void (*a1)(char *), void (*a2)(uint64_t *), uint64_t a3)
{
  v61 = a3;
  v62 = a2;
  sub_2207CAA00(0, &qword_27CF57A30, MEMORY[0x277D6DF88]);
  v63 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (v47 - v7);
  v58 = sub_22088CFEC();
  v51 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v9);
  v50 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207CAA00(0, &qword_27CF56C48, MEMORY[0x277D6EC60]);
  v12 = v11;
  v56 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v55 = v47 - v14;
  v15 = MEMORY[0x277D6D3F0];
  sub_2207CAB5C(0, &qword_27CF57A38, &qword_27CF56B20, MEMORY[0x277D6D3F0], sub_2207CAAC0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v47 - v18;
  sub_2207CAAC0(0, &qword_27CF56B20, v15);
  v59 = *(v20 - 8);
  v60 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v53 = v47 - v22;
  v23 = MEMORY[0x277D6D710];
  sub_2207CAB5C(0, &qword_27CF57A40, &qword_27CF56B28, MEMORY[0x277D6D710], sub_2207CAA00);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = v47 - v26;
  sub_2207CAA00(0, &qword_27CF56B28, v23);
  v29 = v28;
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v31);
  v52 = v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v36 = v47 - v35;
  v57 = v12;
  v49 = a1;
  sub_22088E83C();
  if ((*(v30 + 48))(v27, 1, v29) == 1)
  {
    sub_2207CAC0C(v27, &qword_27CF57A40, &qword_27CF56B28, MEMORY[0x277D6D710], sub_2207CAA00);
    sub_2207CABB8();
    *v8 = swift_allocError();
    v37 = v63;
    (*(v5 + 104))(v8, *MEMORY[0x277D6DF68], v63);
    v62(v8);
    return (*(v5 + 8))(v8, v37);
  }

  else
  {
    v39 = v8;
    v48 = v5;
    (*(v30 + 32))(v36, v27, v29);
    type metadata accessor for ManageWatchlistsMoveWatchlistBlueprintModifier(0);
    sub_2208869BC();
    sub_22088B3AC();

    if ((*(v59 + 48))(v19, 1, v60) == 1)
    {
      sub_2207CAC0C(v19, &qword_27CF57A38, &qword_27CF56B20, MEMORY[0x277D6D3F0], sub_2207CAAC0);
      sub_2207CABB8();
      *v8 = swift_allocError();
      v40 = v48;
      v41 = v63;
      (*(v48 + 104))(v39, *MEMORY[0x277D6DF68], v63);
      v62(v39);
      (*(v40 + 8))(v39, v41);
      return (*(v30 + 8))(v36, v29);
    }

    else
    {
      (*(v59 + 32))(v53, v19, v60);
      (*(v30 + 16))();
      sub_22088B2EC();
      (*(v56 + 16))(v55, v49, v57);
      sub_22088E75C();
      LODWORD(v54) = *MEMORY[0x277D6E440];
      v43 = v50;
      v42 = v51;
      v49 = *(v51 + 104);
      v44 = v58;
      v49(v50);
      v47[1] = sub_22088CECC();
      v51 = *(v42 + 8);
      (v51)(v43, v44);
      type metadata accessor for ManageWatchlistsModel(0);
      sub_22055DF30();
      sub_2207CA970(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel, &unk_2208AEFB8);
      sub_22088C66C();
      v62(v39);
      (*(v48 + 8))(v39, v63);
      v45 = v58;
      (v49)(v43, v54, v58);
      sub_22088CFFC();

      (v51)(v43, v45);
      (*(v56 + 8))(v55, v57);
      v46 = *(v30 + 8);
      v46(v52, v29);
      (*(v59 + 8))(v53, v60);
      return (v46)(v36, v29);
    }
  }
}

uint64_t sub_2207CA970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2207CAA00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ManageWatchlistsSectionDescriptor;
    v8[1] = type metadata accessor for ManageWatchlistsModel(255);
    v8[2] = sub_22055DF30();
    v8[3] = sub_2207CA970(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel, &unk_2208AEFB8);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2207CAAC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ManageWatchlistsModel(255);
    v7 = sub_2207CA970(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel, &unk_2208AEFB8);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2207CAB5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_22089230C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2207CABB8()
{
  result = qword_27CF59D10;
  if (!qword_27CF59D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59D10);
  }

  return result;
}

uint64_t sub_2207CAC0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_2207CAB5C(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_2207CAC7C()
{
  result = qword_27CF59D18;
  if (!qword_27CF59D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59D18);
  }

  return result;
}

double sub_2207CACD0()
{
  v0 = [objc_opt_self() configurationWithPointSize:4 weight:64.0];
  xmmword_27CF6D170 = xmmword_2208B5D90;
  unk_27CF6D180 = xmmword_2208B5DA0;
  result = 32.0;
  xmmword_27CF6D190 = xmmword_2208B5DB0;
  unk_27CF6D1A0 = xmmword_2208B5DC0;
  *&xmmword_27CF6D1B0 = 0x4034000000000000;
  *(&xmmword_27CF6D1B0 + 1) = v0;
  return result;
}

double sub_2207CAD48()
{
  v0 = [objc_opt_self() configurationWithPointSize:4 weight:40.0];
  xmmword_27CF6D1C0 = xmmword_2208B5DD0;
  *algn_27CF6D1D0 = xmmword_2208B5DE0;
  result = 29.0;
  xmmword_27CF6D1E0 = xmmword_2208B5DF0;
  unk_27CF6D1F0 = xmmword_2208B5E00;
  *&xmmword_27CF6D200 = 0x4030000000000000;
  *(&xmmword_27CF6D200 + 1) = v0;
  return result;
}

void *sub_2207CADC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = objc_opt_self();
  sub_22088738C();
  v7 = [v6 systemFontOfSize_weight_];
  v8 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  if (*(sub_22088522C() + 16))
  {

    sub_220650D50();
    sub_220650DA4();
    v9 = sub_2208912BC();

    if (v9)
    {
      [v7 capHeight];
      v11 = v10;
      [v7 descender];
      v13 = v11 - v12;
      v14 = *(v5 + 64);
      [v7 pointSize];
      v16 = round(v13 + v14 * v15);
      [v8 setMinimumLineHeight_];
      [v8 setMaximumLineHeight_];
    }
  }

  else
  {
  }

  [v8 setAlignment_];
  LODWORD(v17) = 0.5;
  [v8 setHyphenationFactor_];
  [v8 setLineBreakStrategy_];
  sub_2207D35DC(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089B140;
  v55 = v8;
  v19 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v20 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v21 = MEMORY[0x277D740C0];
  *(inited + 40) = v7;
  v22 = *v21;
  *(inited + 64) = v20;
  *(inited + 72) = v22;
  v24 = *(v5 + 40);
  v23 = *(v5 + 48);
  __swift_project_boxed_opaque_existential_1((v5 + 16), v24);
  v51 = v5;
  v25 = *(v23 + 16);
  v26 = *(v25 + 40);
  v27 = v19;
  v57 = v7;
  v52 = v22;
  v28 = v26(v24, v25);
  v29 = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v28;
  v30 = *MEMORY[0x277D74118];
  *(inited + 104) = v29;
  *(inited + 112) = v30;
  *(inited + 144) = sub_22044D56C(0, &qword_28127E648, 0x277D74240);
  *(inited + 120) = v55;
  v54 = v30;
  v56 = v55;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v31 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v32 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2207D31FC(&qword_28127E6A8, type metadata accessor for Key, &unk_220899024);
  v33 = sub_22089125C();

  v34 = [v31 initWithString:v32 attributes:v33];

  sub_22059B6A4();
  sub_22089238C();
  if ((v35 & 1) == 0)
  {
    v36 = MEMORY[0x277D83D00];
    sub_2207D37E4(0, &qword_27CF59D60, MEMORY[0x277D83760], MEMORY[0x277D83768], MEMORY[0x277D83D00]);
    sub_2207D378C(&qword_27CF59D68, &qword_27CF59D60, v36, MEMORY[0x277D83D30]);

    v37 = sub_2208922CC();
    v39 = v38;
    v41 = v51[5];
    v40 = v51[6];
    __swift_project_boxed_opaque_existential_1(v51 + 2, v41);
    v42 = (*(*(v40 + 16) + 128))(v41);
    [v34 addAttribute:v52 value:v42 range:{v37, v39}];
  }

  v53 = v34;
  v43 = MEMORY[0x277D83638];
  sub_2207D37E4(0, &qword_27CF59D50, MEMORY[0x277D83760], MEMORY[0x277D83768], MEMORY[0x277D83638]);
  sub_2207D378C(&qword_27CF59D58, &qword_27CF59D50, v43, MEMORY[0x277D83660]);
  sub_2208923AC();
  v44 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  if (*(sub_22088522C() + 16))
  {

    sub_220650D50();
    sub_220650DA4();
    v45 = sub_2208912BC();

    if (v45)
    {
      [v57 lineHeight];
      [v44 setMinimumLineHeight_];
      [v57 lineHeight];
      [v44 setMaximumLineHeight_];
    }
  }

  else
  {
  }

  [v44 setAlignment_];
  [v56 hyphenationFactor];
  [v44 setHyphenationFactor_];
  [v44 setLineBreakStrategy_];
  v46 = MEMORY[0x277D83D00];
  sub_2207D37E4(0, &qword_27CF59D60, MEMORY[0x277D83760], MEMORY[0x277D83768], MEMORY[0x277D83D00]);
  sub_2207D378C(&qword_27CF59D68, &qword_27CF59D60, v46, MEMORY[0x277D83D30]);

  v47 = v44;
  v48 = sub_2208922CC();
  [v53 addAttribute:v54 value:v47 range:{v48, v49}];

  return v53;
}

id sub_2207CB5A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  v5 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v6 = sub_220891F2C();
  [v6 lineHeight];
  v8 = v7;

  [v4 setMinimumLineHeight_];
  v9 = sub_220891F2C();
  [v9 lineHeight];
  v11 = v10;

  [v4 setMaximumLineHeight_];
  [v4 setLineBreakStrategy_];
  sub_2207D35DC(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089B140;
  v13 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v14 = v13;
  v15 = sub_220891F2C();
  v16 = MEMORY[0x277D740C0];
  *(inited + 40) = v15;
  v17 = *v16;
  *(inited + 64) = v5;
  *(inited + 72) = v17;
  v19 = v3[5];
  v18 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v19);
  v20 = *(v18 + 16);
  v21 = *(v20 + 40);
  v22 = v17;
  v23 = v21(v19, v20);
  v24 = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v23;
  v25 = *MEMORY[0x277D74118];
  *(inited + 104) = v24;
  *(inited + 112) = v25;
  *(inited + 144) = sub_22044D56C(0, &qword_28127E648, 0x277D74240);
  *(inited + 120) = v4;
  v26 = v25;
  v27 = v4;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v28 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v29 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2207D31FC(&qword_28127E6A8, type metadata accessor for Key, &unk_220899024);
  v30 = sub_22089125C();

  v31 = [v28 initWithString:v29 attributes:v30];

  return v31;
}

id sub_2207CB8FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  v5 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v6 = sub_220891F2C();
  [v6 lineHeight];
  v8 = v7;

  [v4 setMinimumLineHeight_];
  v9 = sub_220891F2C();
  [v9 lineHeight];
  v11 = v10;

  [v4 setMaximumLineHeight_];
  [v4 setLineBreakStrategy_];
  sub_2207D35DC(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  v13 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_22089B140;
  v14 = *v13;
  *(inited + 32) = v14;
  v15 = v14;
  sub_22088738C();
  v16 = sub_220891F2C();
  v17 = MEMORY[0x277D740C0];
  *(inited + 40) = v16;
  v18 = *v17;
  *(inited + 64) = v5;
  *(inited + 72) = v18;
  v20 = v3[5];
  v19 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v20);
  v21 = *(v19 + 16);
  v22 = *(v21 + 40);
  v23 = v18;
  v24 = v22(v20, v21);
  v25 = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v24;
  v26 = *MEMORY[0x277D74118];
  *(inited + 104) = v25;
  *(inited + 112) = v26;
  *(inited + 144) = sub_22044D56C(0, &qword_28127E648, 0x277D74240);
  *(inited + 120) = v4;
  v27 = v26;
  v28 = v4;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v29 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v30 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2207D31FC(&qword_28127E6A8, type metadata accessor for Key, &unk_220899024);
  v31 = sub_22089125C();

  v32 = [v29 initWithString:v30 attributes:v31];

  return v32;
}

id sub_2207CBC6C(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5)
  {
    v5 = objc_opt_self();
    [v5 defaultFontSize];
    v6 = [v5 boldSystemFontOfSize_];
  }

  else
  {
    sub_22088F0DC();
    sub_22044D56C(0, &qword_28127E570, 0x277D74300);
    v6 = sub_220891F2C();
  }

  v7 = v6;
  sub_2204A5EAC(MEMORY[0x277D84F90]);
  v8 = [v2 currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 != 5)
  {
    v10 = *MEMORY[0x277D740C0];
    v11 = [objc_opt_self() whiteColor];
    v23 = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
    *&v22 = v11;
    sub_2204A62A4(&v22, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2207CF54C(v21, v10, isUniquelyReferenced_nonNull_native);
  }

  v13 = *MEMORY[0x277D740A8];
  v23 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  *&v22 = v7;
  sub_2204A62A4(&v22, v21);
  v14 = v7;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_2207CF54C(v21, v13, v15);
  v16 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v17 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2207D31FC(&qword_28127E6A8, type metadata accessor for Key, &unk_220899024);
  v18 = sub_22089125C();

  v19 = [v16 initWithString:v17 attributes:v18];

  return v19;
}

uint64_t sub_2207CBF78(void *a1)
{
  v82 = sub_220884C1C();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v2);
  v80 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207CD370(0);
  v78 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v77 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v79 = &v76 - v9;
  MEMORY[0x28223BE20](v10, v11);
  v83 = &v76 - v12;
  v13 = sub_220884C2C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v76 - v20;
  v88 = sub_220884C6C();
  v85 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v22);
  v76 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = MEMORY[0x28223BE20](v24, v25).n128_u64[0];
  v89 = &v76 - v27;
  v28 = [a1 string];
  v29 = sub_22089136C();
  v31 = v30;

  v92[0] = 46;
  v92[1] = 0xE100000000000000;
  v91 = v92;
  sub_2207D2FEC(sub_2206A6A50, v90, v29, v31);
  v33 = v32;
  v86 = v29;
  v87 = v31;
  sub_22089149C();
  if ((v33 & 1) == 0)
  {
    sub_2208914AC();
    sub_22089154C();
  }

  v34 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v35 = a1;
  sub_220884C8C();
  sub_220884C3C();
  (*(v14 + 16))(v17, v21, v13);
  sub_2207D31FC(&qword_27CF59D30, MEMORY[0x277CC8C08], MEMORY[0x277CC8C10]);
  v92[0] = sub_2208915FC();
  sub_2207D1130(v92);
  (*(v14 + 8))(v21, v13);
  v36 = v92[0];
  v37 = *(v92[0] + 16);
  v38 = v88;
  v39 = v85;
  if (v37)
  {
    v40 = v81;
    v41 = v80;
    v42 = v82;
    (*(v81 + 16))(v80, v92[0] + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * (v37 - 1), v82);
    v43 = v79;
    sub_220884C0C();
    (*(v40 + 8))(v41, v42);
    v44 = v43;
    v45 = v83;
    sub_2204DD218(v44, v83, sub_2207CD370);
    v46 = *(v36 + 16);

    v47 = v84;
    if (v46 < 2)
    {
      v53 = v34;
    }

    else
    {
      v48 = *MEMORY[0x277D740C0];
      v50 = *(v84 + 5);
      v49 = *(v84 + 6);
      __swift_project_boxed_opaque_existential_1(v84 + 2, v50);
      v51 = (*(*(v49 + 16) + 128))(v50);
      sub_2207D38D8(v45, v77, sub_2207CD370);
      (*(v39 + 16))(v76, v89, v38);
      sub_2207D31FC(&qword_27CF59D38, sub_2207CD370, MEMORY[0x277D83D30]);
      sub_2207D31FC(&qword_27CF59D40, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
      v52 = sub_2208922BC();
      v53 = v34;
      [v34 addAttribute:v48 value:v51 range:{v52, v54}];
    }

    sub_2207D3244(v45);
  }

  else
  {
    v53 = v34;

    v47 = v84;
  }

  v55 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v55 setAlignment_];
  v56 = v47[14];
  v57 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v58 = objc_opt_self();
  v59 = *MEMORY[0x277D74418];
  v60 = [v58 systemFontOfSize:v56 weight:*MEMORY[0x277D74418]];
  v61 = [v57 scaledFontForFont:v60 maximumPointSize:18.0];

  [v61 pointSize];
  v63 = v62;

  sub_2207D35DC(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v65 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v66 = v65;
  v67 = [v58 systemFontOfSize:v63 weight:v59];
  v68 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  *(inited + 40) = v67;
  v69 = *MEMORY[0x277D74118];
  *(inited + 64) = v68;
  *(inited + 72) = v69;
  *(inited + 104) = sub_22044D56C(0, &qword_28127E648, 0x277D74240);
  *(inited + 80) = v55;
  v70 = v69;
  v71 = v55;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_2207D31FC(&qword_28127E6A8, type metadata accessor for Key, &unk_220899024);
  v72 = sub_22089125C();

  v73 = sub_22089149C();

  [v53 addAttributes:v72 range:{0, v73}];

  sub_22044D56C(0, &qword_28127E7B0, 0x277CCA898);
  v74 = sub_220891D5C();

  (*(v39 + 8))(v89, v88);
  return v74;
}

void sub_2207CC91C(void *a1, char a2)
{
  [a1 setContentMode_];
  if (a2)
  {
    if (qword_27CF55888 != -1)
    {
      swift_once();
    }

    v5 = &qword_27CF6CEB8;
  }

  else
  {
    if (qword_27CF55880 != -1)
    {
      swift_once();
    }

    v5 = &qword_27CF6CEB0;
  }

  v6 = [*v5 imageWithConfiguration_];
  [a1 setImage_];
}

void sub_2207CCA20(void *a1, char a2)
{
  v3 = v2;
  [a1 setContentMode_];
  if (qword_27CF55890 != -1)
  {
    swift_once();
  }

  v6 = [qword_27CF6CEC0 imageWithConfiguration_];
  v17 = v6;
  if (a2 == 2)
  {
    [a1 setImage_];
  }

  else
  {
    v8 = v2[5];
    v7 = v2[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    (*(*(v7 + 16) + 24))(&v18, v8);
    if (a2)
    {
      v10 = v3[5];
      v9 = v3[6];
      __swift_project_boxed_opaque_existential_1(v3 + 2, v10);
      v11 = (*(*(v9 + 16) + 128))(v10);
    }

    else
    {
      v12 = v18;
      v13 = objc_opt_self();
      if (v12 == 1)
      {
        v14 = [v13 whiteColor];
      }

      else
      {
        v14 = [v13 blackColor];
      }

      v11 = v14;
    }

    v15 = v11;
    v16 = sub_22089204C();

    [a1 setImage_];
  }
}

void sub_2207CCBFC(void *a1)
{
  v3 = sub_22088EAEC();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = sub_22088EB0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 5)
  {
    v12 = [a1 layer];
    [v12 setCornerRadius_];

    v13 = [a1 layer];
  }

  else
  {
    v14 = sub_22088F0DC();
    v15 = v1[5];
    v16 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v15);
    v17 = (*(*(v16 + 16) + 128))(v15);
    [a1 setBackgroundColor_];

    v18 = [a1 layer];
    v19 = v18;
    if (v14)
    {
      [a1 frame];
      [v19 setCornerRadius_];

      v20 = [a1 layer];
      [v20 setCornerCurve_];

      sub_22088EADC();
      sub_22088EB1C();
      v21 = [a1 tintColor];
      v24[3] = v5;
      v24[4] = MEMORY[0x277D74E20];
      __swift_allocate_boxed_opaque_existential_1(v24);
      sub_22088EAFC();

      (*(v6 + 8))(v9, v5);
      sub_220891FAC();
      return;
    }

    [v18 setCornerRadius_];

    v13 = [a1 layer];
  }

  v23 = v13;
  [v23 setCornerCurve_];
  v22 = v23;
}

void sub_2207CCF58(void *a1, char a2)
{
  if (a2)
  {
    v3 = v2[5];
    v4 = v2[6];
    v5 = a1;
    __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
    (*(*(v4 + 16) + 24))(&v9, v3);
    if (v9)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v7 = [objc_opt_self() effectWithStyle_];
    a1 = v5;
  }

  else
  {
    v7 = 0;
  }

  [a1 setEffect_];
}

uint64_t sub_2207CD028()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2207CD08C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2207CD0D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2207CD1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a3;
  v6 = *v3;
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v16 = *(v6 + 72);
  v17 = *(v6 + 104);
  v25[2] = *(v6 + 88);
  v25[3] = v17;
  v25[4] = *(v6 + 120);
  v25[0] = *(v6 + 56);
  v25[1] = v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  (*(v10 + 16))(&v22 - v14, &v22 - v14, v7, v19);
  v20 = sub_2207D30F0(&v22 - v14, v25, a2, v7, v8);
  sub_2207D3838(v25, v24);
  result = (*(v10 + 8))(&v22 - v14, v7);
  *v23 = v20;
  return result;
}

void sub_2207CD370(uint64_t a1)
{
  if (!qword_27CF59D20)
  {
    sub_220884C5C();
    sub_2207D31FC(&qword_27CF59D28, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
    v1 = sub_2208919DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF59D20);
    }
  }
}

void sub_2207CD404(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22088543C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2205CF4A4(0);
  v41 = v4;
  v11 = sub_2208926CC();
  v12 = v11;
  if (*(v10 + 16))
  {
    v45 = v9;
    v37 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v19 = v11 + 64;
    v40 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v44 = *(v6 + 72);
      v26 = v25 + v44 * v24;
      if (v41)
      {
        (*v42)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v38)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      sub_2207D31FC(&unk_2812993F8, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
      v27 = sub_22089129C();
      v28 = -1 << *(v12 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v19 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v42)((*(v12 + 48) + v44 * v20), v45, v5);
      *(*(v12 + 56) + 8 * v20) = v43;
      ++*(v12 + 16);
      v6 = v39;
      v10 = v40;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v10 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v14, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v35;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_2207CD7D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2207D34E0(0, &qword_28127E318, &type metadata for QuoteDetailViewLayoutAttributes.LayoutComponent);
  v36 = v4;
  v6 = sub_2208926CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 48 * v20;
      v37 = *(v22 + 16);
      v38 = *v22;
      v23 = *(v22 + 32);
      v24 = *(v22 + 40);
      if ((v36 & 1) == 0)
      {
        v25 = v23;
      }

      sub_2208929EC();
      MEMORY[0x223D8ABA0](v21);
      v26 = sub_220892A2C();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 48 * v15;
      *v16 = v38;
      *(v16 + 16) = v37;
      *(v16 + 32) = v23;
      *(v16 + 40) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_2207CDA84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2207D34E0(0, &qword_28127E310, &type metadata for QuoteDetailViewLayoutAttributesFactory.SizedComponent);
  v34 = v4;
  v6 = sub_2208926CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 24 * v20;
      v35 = *v22;
      v23 = *(v22 + 16);
      if ((v34 & 1) == 0)
      {
        v24 = v23;
      }

      sub_2208929EC();
      MEMORY[0x223D8ABA0](v21);
      v25 = sub_220892A2C();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v35;
      *(v16 + 16) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_2207CDD34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2204A5EE0(0);
  v35 = v4;
  v6 = sub_2208926CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_2204A62A4(v22, v36);
      }

      else
      {
        sub_2204A7FA8(v22, v36);
        v23 = v21;
      }

      sub_22089136C();
      sub_2208929EC();
      sub_22089146C();
      v24 = sub_220892A2C();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      sub_2204A62A4(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_2207CDFF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2207D3640(0, &qword_28127E308, type metadata accessor for QuoteDetailViewLabelAccessibilityElement, sub_2205CF5B4, &type metadata for QuoteDetailViewComponent);
  v32 = v4;
  v6 = sub_2208926CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
        v22 = v21;
      }

      sub_2208929EC();
      MEMORY[0x223D8ABA0](v20);
      v23 = sub_220892A2C();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_2207CE2B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2207D3640(0, &qword_28127E2F8, type metadata accessor for TickerAnimation, sub_2207D36C0, &type metadata for TickerCardContainerControllerAnimationCoordinator.Step);
  v31 = v4;
  v6 = sub_2208926CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_2208929EC();
      MEMORY[0x223D8ABA0](v20);
      v22 = sub_220892A2C();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_2207CE56C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2207D3714(0);
  v36 = v4;
  v6 = sub_2208926CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_2208929EC();
      sub_22089146C();
      v26 = sub_220892A2C();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_2207CE804(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v47 = sub_22088685C();
  v5 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v6);
  v46 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_2204DD1B4(0, &qword_28127E2F0, MEMORY[0x277D69810]);
  v44 = v4;
  v9 = sub_2208926CC();
  v10 = v9;
  if (*(v8 + 16))
  {
    v40 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v41 = (v5 + 16);
    v42 = v8;
    v43 = v5;
    v45 = (v5 + 32);
    v17 = v9 + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v27 = *v25;
      v26 = v25[1];
      v28 = *(v43 + 72);
      v29 = v24 + v28 * v23;
      if (v44)
      {
        (*v45)(v46, v29, v47);
      }

      else
      {
        (*v41)(v46, v29, v47);
      }

      sub_2208929EC();
      sub_22089146C();
      v30 = sub_220892A2C();
      v31 = -1 << *(v10 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v27;
      v19[1] = v26;
      (*v45)((*(v10 + 56) + v28 * v18), v46, v47);
      ++*(v10 + 16);
      v8 = v42;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_2207CEB98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2207D3940(0);
  v32 = v4;
  v6 = sub_2208926CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
        v22 = v21;
      }

      sub_2208929EC();
      MEMORY[0x223D8ABA0](v20);
      v23 = sub_220892A2C();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_2207CEE18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2207D3544(0);
  v31 = v4;
  v6 = sub_2208926CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_2208929EC();
      sub_220892A0C();
      v22 = sub_220892A2C();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_2207CF09C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22088543C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2205CDF20(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2207CFDD4();
      goto LABEL_7;
    }

    sub_2207CD404(v18, a3 & 1);
    v22 = sub_2205CDF20(a2);
    if ((v19 & 1) == (v23 & 1))
    {
      v15 = v22;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_2207CFCB4(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_22089291C();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;
}

void sub_2207CF268(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2205CDFF4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2207CD7D0(v14, a3 & 1);
      v9 = sub_2205CDFF4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_22089291C();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_2207D0040();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = a2;
    v23 = (v19[7] + 48 * v9);
    v24 = a1[1];
    *v23 = *a1;
    v23[1] = v24;
    v23[2] = a1[2];
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 48 * v9;
  v21 = *(v20 + 32);
  v22 = a1[1];
  *v20 = *a1;
  *(v20 + 16) = v22;
  *(v20 + 32) = a1[2];
}

void sub_2207CF3D8(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2205CDFF4(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      sub_2207CDA84(v18, a3 & 1);
      v13 = sub_2205CDFF4(a2);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        sub_22089291C();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_2207D01B8();
      v13 = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(v13 >> 6) + 8] |= 1 << v13;
    *(v23[6] + v13) = a2;
    v26 = v23[7] + 24 * v13;
    *v26 = a4;
    *(v26 + 8) = a5;
    *(v26 + 16) = a1;
    v27 = v23[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v17)
    {
      v23[2] = v28;
      return;
    }

    goto LABEL_15;
  }

  v24 = v23[7] + 24 * v13;
  v25 = *(v24 + 16);
  *v24 = a4;
  *(v24 + 8) = a5;
  *(v24 + 16) = a1;
}

_OWORD *sub_2207CF54C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2205CFDDC(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_2207D0330();
      v8 = v16;
      goto LABEL_8;
    }

    sub_2207CDD34(v13, a3 & 1);
    v8 = sub_2205CFDDC(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_22089291C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return sub_2204A62A4(a1, v19);
  }

  else
  {
    sub_2207CFD6C(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t sub_2207CF68C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2205CDFF4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_2207D0640();
    result = v17;
    goto LABEL_8;
  }

  sub_2207CDFF8(v14, a3 & 1);
  result = sub_2205CDFF4(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_22089291C();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

void sub_2207CF7D4(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  v9 = sub_2205CE1C8(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2207CE2B0(v14, a3 & 1);
      v9 = sub_2205CE1C8(v8);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_22089291C();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_2207D07C8();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = v8;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void sub_2207CF920(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2204AF97C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2207CE56C(v16, a4 & 1);
      v11 = sub_2204AF97C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_22089291C();
        __break(1u);
_objc_release_x1:
        MEMORY[0x2821F96F8]();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_2207D0950();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_2207CFA98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2204AF97C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for CuratedForYouFeedGroupKnobs(0);
      sub_2207D3870(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for CuratedForYouFeedGroupKnobs);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_2207D0ED8(type metadata accessor for CuratedForYouFeedGroupKnobs, &qword_28127E2D8, type metadata accessor for CuratedForYouFeedGroupKnobs, type metadata accessor for CuratedForYouFeedGroupKnobs);
    goto LABEL_7;
  }

  sub_2204DCE70(v15, a4 & 1, type metadata accessor for CuratedForYouFeedGroupKnobs, &qword_28127E2D8, type metadata accessor for CuratedForYouFeedGroupKnobs, type metadata accessor for CuratedForYouFeedGroupKnobs);
  v21 = sub_2204AF97C(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_22089291C();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_2204DCC10(v12, a2, a3, a1, v18, type metadata accessor for CuratedForYouFeedGroupKnobs, type metadata accessor for CuratedForYouFeedGroupKnobs);
}

uint64_t sub_2207CFCB4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22088543C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_2207CFD6C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_2204A62A4(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void sub_2207CFDD4()
{
  v1 = v0;
  v32 = sub_22088543C();
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v2);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205CF4A4(0);
  v4 = *v0;
  v5 = sub_2208926BC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = (v4 + 64);
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, v28, 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;

        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_21;
      }

      v18 = *(v28 + v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }
}

void sub_2207D0040()
{
  v1 = v0;
  sub_2207D34E0(0, &qword_28127E318, &type metadata for QuoteDetailViewLayoutAttributes.LayoutComponent);
  v2 = *v0;
  v3 = sub_2208926BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(v2 + 56) + 48 * v17;
        v19 = *(v18 + 32);
        v20 = *(v18 + 40);
        v21 = *v18;
        v22 = *(v18 + 16);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v23 = *(v4 + 56) + 48 * v17;
        *v23 = v21;
        *(v23 + 16) = v22;
        *(v23 + 32) = v19;
        *(v23 + 40) = v20;
        v24 = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_2207D01B8()
{
  v1 = v0;
  sub_2207D34E0(0, &qword_28127E310, &type metadata for QuoteDetailViewLayoutAttributesFactory.SizedComponent);
  v2 = *v0;
  v3 = sub_2208926BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *v18;
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v20;
        *(v21 + 16) = v19;
        v22 = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_2207D0330()
{
  v1 = v0;
  sub_2204A5EE0(0);
  v2 = *v0;
  v3 = sub_2208926BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_2204A7FA8(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_2204A62A4(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_2207D04EC()
{
  v1 = v0;
  sub_2204C101C(0);
  v2 = *v0;
  v3 = sub_2208926BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        v20 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_2207D0640()
{
  v1 = v0;
  sub_2207D3640(0, &qword_28127E308, type metadata accessor for QuoteDetailViewLabelAccessibilityElement, sub_2205CF5B4, &type metadata for QuoteDetailViewComponent);
  v2 = *v0;
  v3 = sub_2208926BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        v19 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_2207D07C8()
{
  v1 = v0;
  sub_2207D3640(0, &qword_28127E2F8, type metadata accessor for TickerAnimation, sub_2207D36C0, &type metadata for TickerCardContainerControllerAnimationCoordinator.Step);
  v2 = *v0;
  v3 = sub_2208926BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_2207D0950()
{
  v1 = v0;
  sub_2207D3714(0);
  v2 = *v0;
  v3 = sub_2208926BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_2207D0AB0()
{
  v1 = v0;
  v36 = sub_22088685C();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v2);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204DD1B4(0, &qword_28127E2F0, MEMORY[0x277D69810]);
  v4 = *v0;
  v5 = sub_2208926BC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_2207D0D40()
{
  v1 = v0;
  sub_2207D3940(0);
  v2 = *v0;
  v3 = sub_2208926BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        v19 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_2207D0ED8(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v42 = a4;
  v7 = v4;
  v8 = a1(0);
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v40 = &v39 - v10;
  sub_2204DD1B4(0, a2, a3);
  v11 = *v4;
  v12 = sub_2208926BC();
  v13 = v12;
  if (*(v11 + 16))
  {
    v39 = v7;
    v14 = (v12 + 64);
    v15 = v11 + 64;
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 64 + 8 * v16)
    {
      memmove(v14, (v11 + 64), 8 * v16);
    }

    v18 = 0;
    v19 = *(v11 + 16);
    v43 = v13;
    *(v13 + 16) = v19;
    v20 = 1 << *(v11 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v11 + 64);
    v23 = (v20 + 63) >> 6;
    if (v22)
    {
      do
      {
        v24 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
LABEL_17:
        v27 = v24 | (v18 << 6);
        v28 = 16 * v27;
        v29 = *(v11 + 56);
        v30 = (*(v11 + 48) + 16 * v27);
        v31 = v11;
        v32 = *v30;
        v33 = v30[1];
        v34 = v40;
        v35 = *(v41 + 72) * v27;
        v36 = v42;
        sub_2207D38D8(v29 + v35, v40, v42);
        v37 = v43;
        v38 = (*(v43 + 48) + v28);
        *v38 = v32;
        v38[1] = v33;
        v11 = v31;
        sub_2204DD218(v34, *(v37 + 56) + v35, v36);

        v22 = v44;
      }

      while (v44);
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v39;
        v13 = v43;
        goto LABEL_21;
      }

      v26 = *(v15 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v44 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v13;
  }
}

void sub_2207D1130(uint64_t *a1)
{
  v2 = *(sub_220884C1C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2207D31AC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_2207D11D8(v5);
  *a1 = v3;
}

void sub_2207D11D8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22089286C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_220884C1C();
        v6 = sub_22089178C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_220884C1C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2207D1778(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2207D1304(0, v2, 1, a1);
  }
}

void sub_2207D1304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v73 = sub_220884C5C();
  v8 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v9);
  v72 = &v52[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v12);
  v71 = &v52[-v13];
  sub_2207CD370(0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v70 = &v52[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17, v18);
  v69 = &v52[-v19];
  v20 = sub_220884C1C();
  MEMORY[0x28223BE20](v20, v21);
  v62 = &v52[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23, v24);
  v76 = &v52[-v25];
  v29 = MEMORY[0x28223BE20](v26, v27);
  v75 = &v52[-v30];
  v54 = a2;
  if (a3 != a2)
  {
    v31 = *a4;
    v33 = *(v28 + 16);
    v32 = v28 + 16;
    v34 = *(v32 + 56);
    v65 = (v8 + 16);
    v66 = v33;
    v63 = (v32 - 8);
    v64 = (v8 + 8);
    v67 = v32;
    v35 = v31 + v34 * (a3 - 1);
    v59 = -v34;
    v60 = (v32 + 16);
    v36 = a1 - a3;
    v61 = v31;
    v53 = v34;
    v37 = v31 + v34 * a3;
    v68 = v20;
LABEL_5:
    v57 = v35;
    v58 = a3;
    v55 = v37;
    v56 = v36;
    v74 = v36;
    while (1)
    {
      v38 = v66;
      v66(v29);
      (v38)(v76, v35, v20);
      v39 = v69;
      sub_220884C0C();
      v40 = *v65;
      v41 = v71;
      v42 = v73;
      (*v65)(v71, v39, v73);
      sub_2207D3244(v39);
      v43 = v70;
      sub_220884C0C();
      v44 = v72;
      v40(v72, v43, v42);
      v45 = v43;
      v20 = v68;
      sub_2207D3244(v45);
      v46 = sub_220884C4C();
      v47 = *v64;
      (*v64)(v44, v42);
      v47(v41, v42);
      v48 = *v63;
      (*v63)(v76, v20);
      v48(v75, v20);
      if ((v46 & 1) == 0)
      {
LABEL_4:
        a3 = v58 + 1;
        v35 = v57 + v53;
        v36 = v56 - 1;
        v37 = v55 + v53;
        if (v58 + 1 == v54)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v61)
      {
        break;
      }

      v49 = *v60;
      v50 = v62;
      (*v60)(v62, v37, v20);
      swift_arrayInitWithTakeFrontToBack();
      v49(v35, v50, v20);
      v35 += v59;
      v37 += v59;
      if (__CFADD__(v74++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_2207D1778(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v147 = a4;
  v175 = sub_220884C5C();
  v6 = *(v175 - 8);
  MEMORY[0x28223BE20](v175, v7);
  v174 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v173 = &v146 - v11;
  sub_2207CD370(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v172 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v171 = &v146 - v17;
  v18 = sub_220884C1C();
  v158 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v150 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v163 = &v146 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v178 = &v146 - v26;
  v29 = MEMORY[0x28223BE20](v27, v28);
  v177 = &v146 - v30;
  v31 = *(a3 + 8);
  if (v31 < 1)
  {
    v33 = MEMORY[0x277D84F90];
LABEL_96:
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v159;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v33 = sub_2207D2DE0(v33);
    }

    v179 = v33;
    v142 = *(v33 + 2);
    if (v142 >= 2)
    {
      while (*a3)
      {
        v143 = *&v33[16 * v142];
        v144 = *&v33[16 * v142 + 24];
        sub_2207D2508(*a3 + v158[9] * v143, *a3 + v158[9] * *&v33[16 * v142 + 16], *a3 + v158[9] * v144, v64);
        if (v32)
        {
          goto LABEL_106;
        }

        if (v144 < v143)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_2207D2DE0(v33);
        }

        if (v142 - 2 >= *(v33 + 2))
        {
          goto LABEL_122;
        }

        v145 = &v33[16 * v142];
        *v145 = v143;
        *(v145 + 1) = v144;
        v179 = v33;
        sub_2207D2D54(v142 - 1);
        v33 = v179;
        v142 = *(v179 + 2);
        if (v142 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v32 = 0;
  v168 = (v6 + 16);
  v169 = v158 + 2;
  v166 = (v158 + 1);
  v167 = (v6 + 8);
  v165 = (v158 + 4);
  v33 = MEMORY[0x277D84F90];
  v151 = a3;
  v170 = v18;
  v148 = a1;
  while (1)
  {
    a3 = v32;
    v34 = v32 + 1;
    v157 = v32;
    if (v32 + 1 >= v31)
    {
      v50 = v32 + 1;
      v64 = v147;
    }

    else
    {
      v160 = v31;
      v35 = *v151;
      v162 = v158[9];
      v36 = v162;
      v37 = v35;
      v176 = v35;
      v38 = v158[2];
      v39 = &v35[v162 * v34];
      v38(v29);
      v155 = v38;
      (v38)(v178, &v37[v36 * a3], v18);
      v40 = v171;
      sub_220884C0C();
      v41 = *v168;
      v42 = v173;
      v43 = v175;
      (*v168)(v173, v40, v175);
      sub_2207D3244(v40);
      v44 = v172;
      sub_220884C0C();
      v45 = v174;
      v154 = v41;
      v41(v174, v44, v43);
      v46 = v44;
      v18 = v170;
      sub_2207D3244(v46);
      LODWORD(v161) = sub_220884C4C();
      v47 = *v167;
      (*v167)(v45, v43);
      a3 = v157;
      v153 = v47;
      (v47)(v42, v43);
      v48 = v158[1];
      v48(v178, v18);
      v152 = v48;
      v48(v177, v18);
      v49 = (a3 + 2);
      v32 = &v176[v162 * (a3 + 2)];
      v156 = v33;
      while (1)
      {
        v50 = v160;
        if (v160 == v49)
        {
          break;
        }

        v51 = v155;
        v164 = v49;
        v155();
        v52 = v178;
        v176 = v39;
        (v51)(v178, v39, v18);
        v53 = v171;
        sub_220884C0C();
        v54 = v173;
        v55 = v175;
        v56 = v154;
        (v154)(v173, v53, v175);
        sub_2207D3244(v53);
        v57 = v172;
        sub_220884C0C();
        v58 = v174;
        v56(v174, v57, v55);
        sub_2207D3244(v57);
        v59 = sub_220884C4C() & 1;
        v60 = v153;
        (v153)(v58, v55);
        v61 = v54;
        v18 = v170;
        v62 = v55;
        v33 = v156;
        v60(v61, v62);
        a3 = v157;
        v63 = v152;
        v152(v52, v18);
        v63(v177, v18);
        v49 = (v164 + 1);
        v32 += v162;
        v39 = &v176[v162];
        if ((v161 & 1) != v59)
        {
          v50 = v164;
          break;
        }
      }

      a1 = v148;
      v64 = v147;
      if (v161)
      {
        if (v50 < a3)
        {
          goto LABEL_125;
        }

        if (a3 < v50)
        {
          v65 = v50;
          v66 = v162 * (v50 - 1);
          v67 = v50 * v162;
          v160 = v50;
          v32 = a3;
          v68 = a3 * v162;
          v69 = v151;
          do
          {
            if (v32 != --v65)
            {
              v70 = *v69;
              if (!v70)
              {
                goto LABEL_131;
              }

              v176 = *v165;
              (v176)(v150, v70 + v68, v18);
              if (v68 < v66 || v70 + v68 >= (v70 + v67))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v68 != v66)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v176)(v70 + v66, v150, v18);
              v69 = v151;
            }

            ++v32;
            v66 -= v162;
            v67 -= v162;
            v68 += v162;
          }

          while (v32 < v65);
          a1 = v148;
          v64 = v147;
          a3 = v157;
          v50 = v160;
        }
      }
    }

    v71 = v151[1];
    if (v50 < v71)
    {
      if (__OFSUB__(v50, a3))
      {
        goto LABEL_124;
      }

      if (v50 - a3 < v64)
      {
        if (__OFADD__(a3, v64))
        {
          goto LABEL_126;
        }

        if ((a3 + v64) >= v71)
        {
          v32 = v151[1];
        }

        else
        {
          v32 = a3 + v64;
        }

        if (v32 < a3)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v50 != v32)
        {
          break;
        }
      }
    }

    v32 = v50;
    if (v50 < a3)
    {
      goto LABEL_123;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_220587F84(0, *(v33 + 2) + 1, 1, v33);
    }

    v64 = *(v33 + 2);
    v72 = *(v33 + 3);
    v73 = v64 + 1;
    if (v64 >= v72 >> 1)
    {
      v33 = sub_220587F84((v72 > 1), v64 + 1, 1, v33);
    }

    *(v33 + 2) = v73;
    v74 = &v33[16 * v64];
    *(v74 + 4) = a3;
    *(v74 + 5) = v32;
    if (!*a1)
    {
      goto LABEL_133;
    }

    a3 = v151;
    if (v64)
    {
      v75 = *a1;
      while (1)
      {
        v76 = v73 - 1;
        if (v73 >= 4)
        {
          break;
        }

        if (v73 == 3)
        {
          v77 = *(v33 + 4);
          v78 = *(v33 + 5);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_53:
          if (v80)
          {
            goto LABEL_112;
          }

          v93 = &v33[16 * v73];
          v95 = *v93;
          v94 = *(v93 + 1);
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_115;
          }

          v99 = &v33[16 * v76 + 32];
          v101 = *v99;
          v100 = *(v99 + 1);
          v87 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v87)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v97, v102))
          {
            goto LABEL_119;
          }

          if (v97 + v102 >= v79)
          {
            if (v79 < v102)
            {
              v76 = v73 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v103 = &v33[16 * v73];
        v105 = *v103;
        v104 = *(v103 + 1);
        v87 = __OFSUB__(v104, v105);
        v97 = v104 - v105;
        v98 = v87;
LABEL_67:
        if (v98)
        {
          goto LABEL_114;
        }

        v106 = &v33[16 * v76];
        v108 = *(v106 + 4);
        v107 = *(v106 + 5);
        v87 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v87)
        {
          goto LABEL_117;
        }

        if (v109 < v97)
        {
          goto LABEL_3;
        }

LABEL_74:
        v64 = v76 - 1;
        if (v76 - 1 >= v73)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v114 = *&v33[16 * v64 + 32];
        v115 = v76;
        v116 = *&v33[16 * v76 + 40];
        v117 = v159;
        sub_2207D2508(*a3 + v158[9] * v114, *a3 + v158[9] * *&v33[16 * v76 + 32], *a3 + v158[9] * v116, v75);
        v159 = v117;
        if (v117)
        {
          goto LABEL_106;
        }

        if (v116 < v114)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_2207D2DE0(v33);
        }

        if (v64 >= *(v33 + 2))
        {
          goto LABEL_109;
        }

        v118 = &v33[16 * v64];
        *(v118 + 4) = v114;
        *(v118 + 5) = v116;
        v179 = v33;
        sub_2207D2D54(v115);
        v33 = v179;
        v73 = *(v179 + 2);
        if (v73 <= 1)
        {
          goto LABEL_3;
        }
      }

      v81 = &v33[16 * v73 + 32];
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_110;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_111;
      }

      v88 = &v33[16 * v73];
      v90 = *v88;
      v89 = *(v88 + 1);
      v87 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v87)
      {
        goto LABEL_113;
      }

      v87 = __OFADD__(v79, v91);
      v92 = v79 + v91;
      if (v87)
      {
        goto LABEL_116;
      }

      if (v92 >= v84)
      {
        v110 = &v33[16 * v76 + 32];
        v112 = *v110;
        v111 = *(v110 + 1);
        v87 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v87)
        {
          goto LABEL_120;
        }

        if (v79 < v113)
        {
          v76 = v73 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v31 = *(a3 + 8);
    a1 = v148;
    if (v32 >= v31)
    {
      goto LABEL_96;
    }
  }

  v156 = v33;
  v119 = *v151;
  v120 = v158[9];
  v164 = v158[2];
  v121 = &v119[v120 * (v50 - 1)];
  v161 = -v120;
  v162 = v119;
  v122 = (a3 - v50);
  v149 = v120;
  v123 = &v119[v50 * v120];
  v152 = v32;
LABEL_86:
  v160 = v50;
  v153 = v123;
  v154 = v122;
  v124 = v122;
  v155 = v121;
  v125 = v121;
  while (1)
  {
    v176 = v124;
    v126 = v164;
    v164();
    (v126)(v178, v125, v18);
    v127 = v171;
    sub_220884C0C();
    v128 = *v168;
    v129 = v173;
    v130 = v175;
    (*v168)(v173, v127, v175);
    sub_2207D3244(v127);
    v131 = v172;
    sub_220884C0C();
    v132 = v174;
    v128(v174, v131, v130);
    sub_2207D3244(v131);
    v133 = sub_220884C4C();
    v134 = *v167;
    v135 = v132;
    v18 = v170;
    (*v167)(v135, v130);
    v134(v129, v130);
    v64 = v166;
    v136 = *v166;
    (*v166)(v178, v18);
    v136(v177, v18);
    if ((v133 & 1) == 0)
    {
LABEL_85:
      v50 = v160 + 1;
      v121 = (v155 + v149);
      v122 = v154 - 1;
      v123 = &v153[v149];
      v32 = v152;
      if ((v160 + 1) != v152)
      {
        goto LABEL_86;
      }

      a1 = v148;
      v33 = v156;
      a3 = v157;
      if (v152 < v157)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    v137 = v176;
    if (!v162)
    {
      break;
    }

    v64 = v165;
    v138 = *v165;
    v139 = v163;
    (*v165)(v163, v123, v18);
    swift_arrayInitWithTakeFrontToBack();
    v138(v125, v139, v18);
    v125 = (v125 + v161);
    v123 += v161;
    v140 = __CFADD__(v137, 1);
    v124 = v137 + 1;
    if (v140)
    {
      goto LABEL_85;
    }
  }

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
}

void sub_2207D2508(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v92 = a4;
  v86 = sub_220884C5C();
  v7 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v8);
  v85 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v84 = v71 - v12;
  sub_2207CD370(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v83 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v82 = v71 - v18;
  v91 = sub_220884C1C();
  v19 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v20);
  v81 = v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v90 = v71 - v24;
  v26 = *(v25 + 72);
  if (!v26)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v26 == -1)
  {
    goto LABEL_60;
  }

  v27 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v26 == -1)
  {
    goto LABEL_61;
  }

  v28 = (a2 - a1) / v26;
  v95 = a1;
  v94 = v92;
  if (v28 >= v27 / v26)
  {
    v30 = v27 / v26 * v26;
    if (v92 < a2 || a2 + v30 <= v92)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v92 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = v92 + v30;
    if (v30 >= 1)
    {
      v49 = -v26;
      v75 = (v7 + 16);
      v76 = (v19 + 16);
      v74 = (v7 + 8);
      v73 = (v19 + 8);
      v50 = v48;
      v88 = a1;
      v77 = -v26;
      v51 = v75;
      do
      {
        v71[0] = v48;
        v52 = a2;
        v53 = a2 + v49;
        v89 = v53;
        v78 = v52;
        while (1)
        {
          if (v52 <= a1)
          {
            v95 = v52;
            v93 = v71[0];
            goto LABEL_58;
          }

          v72 = v48;
          v87 = a3 + v49;
          v55 = v50 + v49;
          v79 = a3;
          v80 = v50;
          v56 = *v76;
          v57 = v53;
          v58 = v91;
          (*v76)();
          v59 = v81;
          (v56)(v81, v57, v58);
          v60 = v82;
          sub_220884C0C();
          v61 = *v51;
          v62 = v84;
          v63 = v86;
          (*v51)(v84, v60, v86);
          sub_2207D3244(v60);
          v64 = v83;
          sub_220884C0C();
          v65 = v85;
          v61(v85, v64, v63);
          sub_2207D3244(v64);
          v66 = sub_220884C4C();
          v67 = *v74;
          (*v74)(v65, v63);
          v67(v62, v63);
          v68 = *v73;
          v69 = v91;
          (*v73)(v59, v91);
          v68(v90, v69);
          if (v66)
          {
            break;
          }

          v48 = v55;
          a3 = v87;
          v70 = v55;
          if (v79 < v80 || v87 >= v80)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v88;
            v49 = v77;
          }

          else
          {
            a1 = v88;
            v49 = v77;
            if (v79 != v80)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = v48;
          v54 = v70 > v92;
          v53 = v89;
          v52 = v78;
          if (!v54)
          {
            a2 = v78;
            goto LABEL_57;
          }
        }

        v50 = v80;
        a3 = v87;
        if (v79 < v78 || v87 >= v78)
        {
          a2 = v89;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v88;
          v48 = v72;
          v49 = v77;
        }

        else
        {
          a1 = v88;
          a2 = v89;
          v48 = v72;
          v49 = v77;
          if (v79 != v78)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v89;
          }
        }
      }

      while (v50 > v92);
    }

LABEL_57:
    v95 = a2;
    v93 = v48;
  }

  else
  {
    v29 = v28 * v26;
    if (v92 < a1 || a1 + v29 <= v92)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v92 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v80 = v92 + v29;
    v93 = v92 + v29;
    v87 = a3;
    if (v29 >= 1 && a2 < a3)
    {
      v32 = *(v19 + 16);
      v76 = (v7 + 16);
      v77 = v32;
      v78 = v26;
      v79 = v19 + 16;
      v74 = (v19 + 8);
      v75 = (v7 + 8);
      v33 = v91;
      do
      {
        v88 = a1;
        v89 = a2;
        v34 = v77;
        (v77)();
        v35 = v81;
        v34(v81, v92, v33);
        v36 = v82;
        sub_220884C0C();
        v37 = *v76;
        v38 = v84;
        v39 = v86;
        (*v76)(v84, v36, v86);
        sub_2207D3244(v36);
        v40 = v83;
        sub_220884C0C();
        v41 = v85;
        (v37)(v85, v40, v39);
        sub_2207D3244(v40);
        v42 = sub_220884C4C();
        v43 = *v75;
        (*v75)(v41, v39);
        (v43)(v38, v39);
        v44 = *v74;
        (*v74)(v35, v33);
        v44(v90, v33);
        if (v42)
        {
          v45 = v78;
          v46 = v88;
          a2 = v89 + v78;
          if (v88 < v89 || v88 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v88 != v89)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v46 = v88;
          a2 = v89;
          v45 = v78;
          v47 = v92 + v78;
          if (v88 < v92 || v88 >= v47)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v88 != v92)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v94 = v47;
          v92 = v47;
        }

        a1 = v46 + v45;
        v95 = a1;
      }

      while (v92 < v80 && a2 < v87);
    }
  }

LABEL_58:
  sub_2207D2E0C(&v95, &v94, &v93, MEMORY[0x277CC8BF0]);
}

uint64_t sub_2207D2D54(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2207D2DE0(v3);
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

uint64_t sub_2207D2E0C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2207D2EF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2207D32A0(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_2207D2FEC(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_2208914BC();
    v13[0] = sub_22089157C();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_2207D30F0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v9 = swift_allocObject();
  sub_220457328(&v13, v9 + 16);
  v10 = *a2;
  *(v9 + 72) = a2[1];
  v11 = a2[3];
  *(v9 + 88) = a2[2];
  *(v9 + 104) = v11;
  *(v9 + 120) = a2[4];
  *(v9 + 56) = v10;
  return v9;
}

uint64_t sub_2207D31FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2207D3244(uint64_t a1)
{
  sub_2207CD370(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2207D32A0(uint64_t a1)
{
  if (!qword_27CF56DE8)
  {
    sub_2207D37E4(255, &qword_27CF56DF0, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    v1 = sub_22089288C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF56DE8);
    }
  }
}

uint64_t sub_2207D3324(void *a1)
{
  v2 = [a1 textContainer];
  [v2 setMaximumNumberOfLines_];

  v3 = [a1 textContainer];
  [v3 setLineBreakMode_];

  v4 = [a1 textContainer];
  [v4 setLineFragmentPadding_];

  [a1 setTextContainerInset_];
  [a1 setEditable_];
  [a1 setSelectable_];
  [a1 setScrollEnabled_];
  [a1 setShowsVerticalScrollIndicator_];
  [a1 setShowsHorizontalScrollIndicator_];
  v5 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];

  result = sub_22088F0DC();
  if (result)
  {
    v7 = [a1 effectiveUserInterfaceLayoutDirection] == 1;

    return [a1 setTextAlignment_];
  }

  return result;
}

void sub_2207D34E0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_2205CF5B4();
    v4 = sub_2208926EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2207D3544(uint64_t a1)
{
  if (!qword_27CF59D48)
  {
    sub_2207D35DC(255, &qword_28127EB50, MEMORY[0x277D69810], MEMORY[0x277D83940]);
    v1 = sub_2208926EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF59D48);
    }
  }
}

void sub_2207D35DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2207D3640(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    v7 = sub_2208926EC();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2207D36C0()
{
  result = qword_28127F210;
  if (!qword_28127F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127F210);
  }

  return result;
}

void sub_2207D3714(uint64_t a1)
{
  if (!qword_28127E2C8)
  {
    sub_22044D56C(255, &qword_28127E860, 0x277CCA968);
    v1 = sub_2208926EC();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E2C8);
    }
  }
}

uint64_t sub_2207D378C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2207D37E4(255, a2, MEMORY[0x277D83760], MEMORY[0x277D83768], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2207D37E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2207D3870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207D38D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2207D3940(uint64_t a1)
{
  if (!qword_28127E300)
  {
    sub_22044D56C(255, &qword_28127E518, 0x277D756B8);
    sub_2205CF5B4();
    v1 = sub_2208926EC();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E300);
    }
  }
}

uint64_t sub_2207D39BC(void *a1)
{
  v3 = sub_22089226C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22089215C();
  v46[1] = v9;
  v46[2] = v8;
  v46[3] = v11;
  v46[4] = v10;
  (*(v4 + 16))(v7, v1, v3);
  sub_2208921FC();
  sub_22089215C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_22089215C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  result = (*(v4 + 8))(v7, v3);
  if (v13 == v21 && v15 == v23 && v17 == v25 && v19 == v27)
  {
    sub_2207D3C24(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22089C660;
    v33 = *MEMORY[0x277D76808];
    *(inited + 32) = *MEMORY[0x277D76808];
    v34 = *MEMORY[0x277D76800];
    v35 = *MEMORY[0x277D767F8];
    *(inited + 40) = *MEMORY[0x277D76800];
    *(inited + 48) = v35;
    v36 = *MEMORY[0x277D767F0];
    v37 = *MEMORY[0x277D767E8];
    *(inited + 56) = *MEMORY[0x277D767F0];
    *(inited + 64) = v37;
    v38 = v33;
    v39 = v34;
    v40 = v35;
    v41 = v36;
    v42 = v37;
    v43 = [a1 preferredContentSizeCategory];
    v44 = sub_2206D10D4(v43, inited);
    LOBYTE(v35) = v45;

    swift_setDeallocating();
    type metadata accessor for UIContentSizeCategory(0);
    result = swift_arrayDestroy();
    if ((v35 & 1) == 0 && __OFADD__(v44, 1))
    {
      __break(1u);
    }
  }

  return result;
}

void sub_2207D3C24(uint64_t a1)
{
  if (!qword_27CF59D70)
  {
    type metadata accessor for UIContentSizeCategory(255);
    v1 = sub_22089288C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF59D70);
    }
  }
}

uint64_t sub_2207D3CA0()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204643A4(0, &unk_27CF58368, MEMORY[0x277D839F8], MEMORY[0x277D6D0F8]);
  v6[2] = 0x3FF0000000000000;
  v6[3] = 0x3FF0000000000000;
  v6[1] = 0x7FEFFFFFFFFFFFFFLL;
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  result = sub_220886C3C();
  qword_27CF59D78 = result;
  return result;
}

uint64_t FCFeedGroupType.groupType()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 - 18) > 8)
  {
    v3 = MEMORY[0x277D69008];
  }

  else
  {
    v3 = qword_27844A7C0[a1 - 18];
  }

  v4 = *v3;
  v5 = sub_22088A0EC();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

uint64_t sub_2207D3EC8()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D210);
  __swift_project_value_buffer(v0, qword_27CF6D210);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2207D4074()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D228);
  __swift_project_value_buffer(v0, qword_27CF6D228);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2207D4220()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D240);
  __swift_project_value_buffer(v0, qword_27CF6D240);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2207D43D0()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D258);
  __swift_project_value_buffer(v0, qword_27CF6D258);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2207D4608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2207D4A10(0, &qword_281298698, sub_2205C41F4, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888F2C();
}

void sub_2207D46A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v30[3] = a8;
  v30[4] = a5;
  v31 = a1;
  v30[1] = a11;
  v30[2] = a10;
  v12 = sub_22088846C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22088516C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088515C();
  (*(v13 + 104))(v16, *MEMORY[0x277D6CAB8], v12);
  sub_220885ADC();
  (*(v13 + 8))(v16, v12);
  (*(v18 + 8))(v21, v17);
  v22 = swift_allocObject();
  v23 = v31;
  *(v22 + 16) = v31;
  *(v22 + 24) = a2;

  v24 = sub_220888D9C();
  sub_220888E4C();

  v25 = sub_220888D9C();
  sub_220888F1C();

  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = a2;

  v27 = sub_220888D9C();
  sub_220888F0C();

  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  *(v28 + 24) = a2;

  v29 = sub_220888D9C();
  sub_220888E9C();
}

void sub_2207D4A10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2207D4A74(uint64_t a1, void (*a2)(char *))
{
  sub_2205C41F4(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088665C();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  a2(v7);
  return sub_22074503C(v7);
}

uint64_t sub_2207D4BA8(uint64_t a1, void (*a2)(char *))
{
  sub_2205C41F4(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088665C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  a2(v6);
  return sub_22074503C(v6);
}

uint64_t sub_2207D4C94(uint64_t a1, void (*a2)(char *))
{
  sub_2205C41F4(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088665C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  a2(v6);
  return sub_22074503C(v6);
}

uint64_t getEnumTagSinglePayload for AppReviewRequestState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppReviewRequestState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_2207D4DC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a3;
  sub_2207D53F8(0, &qword_27CF59D90, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2207D53A4();
  sub_220892A5C();
  v16 = 0;
  sub_22089282C();
  if (!v4)
  {
    v15 = 1;
    sub_22089282C();
    v14 = 2;
    sub_22089282C();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_2207D4F5C()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_2207D4FB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2207D50A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2207D4FDC(uint64_t a1)
{
  v2 = sub_2207D53A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2207D5018(uint64_t a1)
{
  v2 = sub_2207D53A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2207D5054@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2207D51C4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_2207D50A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x80000002208D6450 == a2;
  if (v4 || (sub_2208928BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002208D6470 == a2 || (sub_2208928BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002208D6490 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2208928BC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2207D51C4(void *a1)
{
  sub_2207D53F8(0, &qword_27CF59D80, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2207D53A4();
  sub_220892A4C();
  if (!v1)
  {
    v11[15] = 0;
    v9 = sub_22089278C();
    v11[14] = 1;
    sub_22089278C();
    v11[13] = 2;
    sub_22089278C();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_2207D53A4()
{
  result = qword_27CF59D88;
  if (!qword_27CF59D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59D88);
  }

  return result;
}

void sub_2207D53F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2207D53A4();
    v7 = a3(a1, &type metadata for AppReviewRequestState.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2207D5470()
{
  result = qword_27CF59D98;
  if (!qword_27CF59D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59D98);
  }

  return result;
}

unint64_t sub_2207D54C8()
{
  result = qword_27CF59DA0;
  if (!qword_27CF59DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59DA0);
  }

  return result;
}

unint64_t sub_2207D5520()
{
  result = qword_27CF59DA8;
  if (!qword_27CF59DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59DA8);
  }

  return result;
}

uint64_t sub_2207D5574()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[15] = 0;
  sub_22045E8CC();
  swift_allocObject();
  result = sub_220886C5C();
  qword_281298E98 = result;
  return result;
}

uint64_t static Settings.Radars.radar50783266.getter()
{
  if (qword_281298E90 != -1)
  {
    swift_once();
  }
}

id sub_2207D5794(uint64_t a1, uint64_t a2)
{
  sub_2204A5DF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v4 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 systemFontOfSize_];
  v8 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v9 = MEMORY[0x277D740C0];
  *(inited + 40) = v7;
  v10 = *v9;
  *(inited + 64) = v8;
  *(inited + 72) = v10;
  v11 = v2[5];
  v12 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v11);
  v13 = *(v12 + 16);
  v14 = *(v13 + 280);
  v15 = v10;
  v16 = v14(v11, v13);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v16;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v18 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v19 = sub_22089125C();

  v20 = [v17 initWithString:v18 attributes:v19];

  return v20;
}

uint64_t sub_2207D59A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

uint64_t sub_2207D5B2C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = 56;
  if (a1)
  {
    v3 = 96;
  }

  return sub_22046DA2C(*v2 + v3, a2);
}

uint64_t sub_2207D5B60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(v3 + 48);
  __swift_project_boxed_opaque_existential_1((v3 + 16), v4);
  return sub_220823838(v4, v5, a1);
}

uint64_t sub_2207D5BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_2207D5D1C(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

void *sub_2207D5D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v17 - v12;
  (*(v6 + 32))(&v17 - v12, v11);
  v14 = swift_allocObject();
  (*(v6 + 16))(v8, v13, a3);
  v15 = sub_2207D5E68(v8, v14, a3, a4);
  (*(v6 + 8))(v13, a3);
  return v15;
}

void *sub_2207D5E68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20[3] = a3;
  v20[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  sub_22046DA2C(v20, (a2 + 2));
  sub_22046DA2C(v20, &v26);
  if (qword_27CF55BC0 != -1)
  {
    swift_once();
  }

  v23 = xmmword_27CF6D190;
  v24 = unk_27CF6D1A0;
  v25 = xmmword_27CF6D1B0;
  v21 = xmmword_27CF6D170;
  v22 = unk_27CF6D180;
  v8 = type metadata accessor for WelcomeViewStyler();
  v9 = swift_allocObject();
  sub_220457328(&v26, v9 + 16);
  v10 = v21;
  *(v9 + 72) = v22;
  v11 = v24;
  *(v9 + 88) = v23;
  *(v9 + 104) = v11;
  *(v9 + 120) = v25;
  *(v9 + 56) = v10;
  a2[10] = v8;
  a2[11] = &off_283422E30;
  a2[7] = v9;
  sub_22046DA2C(v20, v16);
  sub_2207D3838(&v21, &v26);
  if (qword_27CF55BC8 != -1)
  {
    swift_once();
  }

  v28 = xmmword_27CF6D1E0;
  v29 = unk_27CF6D1F0;
  v30 = xmmword_27CF6D200;
  v26 = xmmword_27CF6D1C0;
  v27 = *algn_27CF6D1D0;
  v12 = swift_allocObject();
  sub_220457328(v16, v12 + 16);
  v13 = v26;
  *(v12 + 72) = v27;
  v14 = v29;
  *(v12 + 88) = v28;
  *(v12 + 104) = v14;
  *(v12 + 120) = v30;
  *(v12 + 56) = v13;
  v18 = v8;
  v19 = &off_283422E30;
  *&v17 = v12;
  sub_2207D3838(&v26, v16);
  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_220457328(&v17, (a2 + 12));
  return a2;
}

uint64_t type metadata accessor for StockFeedGroup(uint64_t a1)
{
  result = qword_281293E90;
  if (!qword_281293E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2207D61E0()
{
  result = qword_281290638;
  if (!qword_281290638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281290638);
  }

  return result;
}

unint64_t sub_2207D6238()
{
  result = qword_281290658[0];
  if (!qword_281290658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281290658);
  }

  return result;
}

unint64_t sub_2207D6290()
{
  result = qword_281290650;
  if (!qword_281290650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281290650);
  }

  return result;
}

uint64_t sub_2207D62E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NewsPlacardStockFeedGroup(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NewsStockFeedGroup(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for StockFeedGroup(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207D81A8(v2, v15, type metadata accessor for StockFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2207D8140(v15, v11, type metadata accessor for NewsStockFeedGroup);
      sub_220459628(0);
      v18 = *(v17 + 64);
      v19 = v11[1];
      *a1 = *v11;
      *(a1 + 8) = v19;
      *(a1 + 16) = *(v11 + *(v8 + 28));
      sub_2207D81A8(v11 + *(v8 + 32), a1 + v18, sub_2204595F4);

      sub_2207D8210(v11, type metadata accessor for NewsStockFeedGroup);
    }

    else
    {
      v20 = sub_22088F23C();
      (*(*(v20 - 8) + 32))(a1, v15, v20);
    }

    type metadata accessor for StockFeedSectionDescriptor(0);
  }

  else
  {
    sub_2207D8140(v15, v7, type metadata accessor for NewsPlacardStockFeedGroup);
    sub_2207D8210(v7, type metadata accessor for NewsPlacardStockFeedGroup);
    type metadata accessor for StockFeedSectionDescriptor(0);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2207D65A4()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NewsPlacardStockFeedGroup(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NewsStockFeedGroup(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for StockFeedGroup(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207D81A8(v1, v18, type metadata accessor for StockFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2207D8140(v18, v14, type metadata accessor for NewsStockFeedGroup);
      v20 = *v14;

      sub_2207D8210(v14, type metadata accessor for NewsStockFeedGroup);
    }

    else
    {
      (*(v3 + 32))(v6, v18, v2);
      v20 = sub_22088F1EC();
      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    sub_2207D8140(v18, v10, type metadata accessor for NewsPlacardStockFeedGroup);
    sub_2205DF654(0);
    v20 = sub_22088F46C();
    sub_2207D8210(v10, type metadata accessor for NewsPlacardStockFeedGroup);
  }

  return v20;
}

uint64_t sub_2207D6854@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_22088F23C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204595F4(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22088FB9C();
  v31 = *(v12 - 8);
  v32 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NewsStockFeedGroup(0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StockFeedGroup(0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207D81A8(v2, v23, type metadata accessor for StockFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v27 = type metadata accessor for StockFeedGroup;
    v28 = v23;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2207D8140(v23, v19, type metadata accessor for NewsStockFeedGroup);
    sub_2207D81A8(&v19[*(v16 + 32)], v11, sub_2204595F4);
    v25 = sub_22088F39C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v11, 1, v25) == 1)
    {
      sub_2207D8210(v19, type metadata accessor for NewsStockFeedGroup);
      v27 = sub_2204595F4;
      v28 = v11;
LABEL_6:
      sub_2207D8210(v28, v27);
      return (*(v31 + 104))(v33, *MEMORY[0x277D32628], v32);
    }

    sub_22088F2FC();
    sub_2207D8210(v19, type metadata accessor for NewsStockFeedGroup);
    (*(v26 + 8))(v11, v25);
    return (*(v31 + 32))(v33, v15, v32);
  }

  else
  {
    (*(v4 + 32))(v7, v23, v3);
    sub_22088F1FC();
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2207D6C5C()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204595F4(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NewsStockFeedGroup(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StockFeedGroup(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207D81A8(v1, v18, type metadata accessor for StockFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v22 = type metadata accessor for StockFeedGroup;
    v23 = v18;
    return sub_2207D8210(v23, v22);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2207D8140(v18, v14, type metadata accessor for NewsStockFeedGroup);
    sub_2207D81A8(&v14[*(v11 + 32)], v10, sub_2204595F4);
    v20 = sub_22088F39C();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v10, 1, v20) == 1)
    {
      sub_2207D8210(v14, type metadata accessor for NewsStockFeedGroup);
      v22 = sub_2204595F4;
      v23 = v10;
      return sub_2207D8210(v23, v22);
    }

    sub_22088F30C();
    sub_2207D8210(v14, type metadata accessor for NewsStockFeedGroup);
    return (*(v21 + 8))(v10, v20);
  }

  else
  {
    (*(v3 + 32))(v6, v18, v2);
    sub_22088F20C();
    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_2207D6FB8()
{
  v1 = v0;
  v2 = type metadata accessor for NewsStockFeedGroup(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StockFeedGroup(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207D81A8(v1, v9, type metadata accessor for StockFeedGroup);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2207D8140(v9, v5, type metadata accessor for NewsStockFeedGroup);
    if (v5[*(v2 + 28)])
    {
      v10 = MEMORY[0x277D84F90];
    }

    else
    {
      v10 = sub_2208916FC();
    }

    sub_2207D8210(v5, type metadata accessor for NewsStockFeedGroup);
    return v10;
  }

  else
  {
    sub_2207D8210(v9, type metadata accessor for StockFeedGroup);
    return MEMORY[0x277D84F90];
  }
}

unint64_t sub_2207D7148()
{
  v1 = v0;
  v2 = type metadata accessor for NewsStockFeedGroup(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StockFeedGroup(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207D81A8(v1, v9, type metadata accessor for StockFeedGroup);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2207D8140(v9, v5, type metadata accessor for NewsStockFeedGroup);
    if (v5[*(v2 + 28)])
    {
      v10 = sub_2205CEB84(MEMORY[0x277D84F90]);
    }

    else
    {
      v10 = sub_22089170C();
    }

    v11 = v10;
    v12 = type metadata accessor for NewsStockFeedGroup;
    v13 = v5;
  }

  else
  {
    v11 = sub_2205CEB84(MEMORY[0x277D84F90]);
    v12 = type metadata accessor for StockFeedGroup;
    v13 = v9;
  }

  sub_2207D8210(v13, v12);
  return v11;
}

uint64_t sub_2207D72E0()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NewsPlacardStockFeedGroup(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NewsStockFeedGroup(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StockFeedGroup(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207D81A8(v1, v18, type metadata accessor for StockFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2207D8140(v18, v14, type metadata accessor for NewsStockFeedGroup);
      v20 = sub_22088681C();
      sub_2207D8210(v14, type metadata accessor for NewsStockFeedGroup);
    }

    else
    {
      (*(v3 + 32))(v6, v18, v2);
      v20 = sub_22088F1CC();
      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    sub_2207D8140(v18, v10, type metadata accessor for NewsPlacardStockFeedGroup);
    sub_2205DF654(0);
    v20 = sub_22088F46C();
    sub_2207D8210(v10, type metadata accessor for NewsPlacardStockFeedGroup);
  }

  return v20;
}

double sub_2207D75A8()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204595F4(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NewsStockFeedGroup(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NewsPlacardStockFeedGroup(0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for StockFeedGroup(0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207D81A8(v1, v21, type metadata accessor for StockFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2207D8140(v21, v13, type metadata accessor for NewsStockFeedGroup);
      sub_2207D81A8(&v13[*(v10 + 32)], v9, sub_2204595F4);
      v23 = sub_22088F39C();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v9, 1, v23) == 1)
      {
        sub_2207D8210(v13, type metadata accessor for NewsStockFeedGroup);
        sub_2207D8210(v9, sub_2204595F4);
        return 0.0;
      }

      else
      {
        sub_22088F31C();
        v25 = v29;
        sub_2207D8210(v13, type metadata accessor for NewsStockFeedGroup);
        (*(v24 + 8))(v9, v23);
      }
    }

    else
    {
      v27 = v32;
      (*(v32 + 32))(v5, v21, v2);
      sub_2207D8270(&qword_27CF59DD8, MEMORY[0x277D31BA8], MEMORY[0x277D31B98]);
      sub_2208901DC();
      v25 = v28;
      (*(v27 + 8))(v5, v2);
    }
  }

  else
  {
    sub_2207D8140(v21, v17, type metadata accessor for NewsPlacardStockFeedGroup);
    sub_2207D8270(&qword_27CF57760, type metadata accessor for NewsPlacardStockFeedGroup, &unk_22089FF48);
    sub_2208901DC();
    v25 = v26;
    sub_2207D8210(v17, type metadata accessor for NewsPlacardStockFeedGroup);
  }

  return v25;
}

uint64_t sub_2207D7A00@<X0>(uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  MEMORY[0x28223BE20](v4, a2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207D81A8(v8, v7, type metadata accessor for StockFeedGroup);
  v9 = 0x20001u >> (8 * swift_getEnumCaseMultiPayload());
  result = sub_2207D8210(v7, type metadata accessor for StockFeedGroup);
  *a3 = v9;
  return result;
}

uint64_t sub_2207D7AD8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D320E0];
  v3 = sub_22088F6BC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2207D7BA8(uint64_t a1)
{
  v2 = sub_2207D8270(&qword_281293EC0, type metadata accessor for StockFeedGroup, &unk_2208B6238);

  return MEMORY[0x282191918](a1, v2);
}

uint64_t sub_2207D7C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2207D8270(&qword_281293ED0, type metadata accessor for StockFeedGroup, &unk_2208B6318);

  return MEMORY[0x282191948](a1, a2, a3, v6);
}

uint64_t sub_2207D7CAC(uint64_t a1)
{
  v2 = sub_2207D8270(&qword_281293ED0, type metadata accessor for StockFeedGroup, &unk_2208B6318);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_2207D7D18(uint64_t a1)
{
  v2 = v1;
  v3 = sub_22088F23C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207D81A8(v2, v11, type metadata accessor for StockFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2207D8210(v11, type metadata accessor for StockFeedGroup);
      return 1937204558;
    }

    else
    {
      (*(v4 + 32))(v7, v11, v3);
      v14 = sub_22088F22C();
      (*(v4 + 8))(v7, v3);
      return v14;
    }
  }

  else
  {
    sub_2207D8210(v11, type metadata accessor for StockFeedGroup);
    return 0x616C50207377654ELL;
  }
}

uint64_t sub_2207D7EF8(uint64_t a1)
{
  sub_2207D8270(&qword_281293EB0, type metadata accessor for StockFeedGroup, &unk_2208B62C0);

  return sub_22088882C();
}

uint64_t sub_2207D803C()
{
  v2 = sub_22088519C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088518C();
  sub_22088517C();
  (*(v3 + 8))(v6, v2);
  sub_22088F1DC();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2207D8140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207D81A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207D8210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2207D8270(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2207D82B8(uint64_t a1)
{
  result = type metadata accessor for NewsPlacardStockFeedGroup(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NewsStockFeedGroup(319);
    if (v3 <= 0x3F)
    {
      result = sub_22088F23C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2207D83D4()
{
  result = qword_28128FE60;
  if (!qword_28128FE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128FE60);
  }

  return result;
}

unint64_t sub_2207D842C()
{
  result = qword_28128FE88;
  if (!qword_28128FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128FE88);
  }

  return result;
}

unint64_t sub_2207D8484()
{
  result = qword_28128FE80;
  if (!qword_28128FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128FE80);
  }

  return result;
}

uint64_t sub_2207D84DC@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_22088F23C();
  v32 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CuratedForYouFeedGroup(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204595F4(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088FB9C();
  v31 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StockForYouFeedGroup(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ForYouFeedGroup(0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052AB18(v33, v24, type metadata accessor for ForYouFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220523140(v24, v8, type metadata accessor for CuratedForYouFeedGroup);
      sub_22088F2FC();
      return sub_22052B278(v8, type metadata accessor for CuratedForYouFeedGroup);
    }

    else
    {
      v30 = v32;
      (*(v32 + 32))(v4, v24, v1);
      sub_22088F1FC();
      return (*(v30 + 8))(v4, v1);
    }
  }

  else
  {
    v27 = v31;
    sub_220523140(v24, v20, type metadata accessor for StockForYouFeedGroup);
    sub_22052AB18(&v20[*(v17 + 28)], v12, sub_2204595F4);
    v28 = sub_22088F39C();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v12, 1, v28) == 1)
    {
      sub_22052B278(v20, type metadata accessor for StockForYouFeedGroup);
      sub_22052B278(v12, sub_2204595F4);
      return (*(v27 + 104))(v34, *MEMORY[0x277D32628], v13);
    }

    else
    {
      sub_22088F2FC();
      sub_22052B278(v20, type metadata accessor for StockForYouFeedGroup);
      (*(v29 + 8))(v12, v28);
      return (*(v27 + 32))(v34, v16, v13);
    }
  }
}

double sub_2207D8960()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CuratedForYouFeedGroup(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204595F4(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StockForYouFeedGroup(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ForYouFeedGroup(0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052AB18(v1, v22, type metadata accessor for ForYouFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220523140(v22, v10, type metadata accessor for CuratedForYouFeedGroup);
      sub_22088F30C();
      v25 = v24;
      sub_22052B278(v10, type metadata accessor for CuratedForYouFeedGroup);
    }

    else
    {
      (*(v3 + 32))(v6, v22, v2);
      sub_22088F20C();
      v25 = v28;
      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    sub_220523140(v22, v18, type metadata accessor for StockForYouFeedGroup);
    sub_22052AB18(&v18[*(v15 + 28)], v14, sub_2204595F4);
    v26 = sub_22088F39C();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v14, 1, v26) == 1)
    {
      sub_22052B278(v18, type metadata accessor for StockForYouFeedGroup);
      sub_22052B278(v14, sub_2204595F4);
      return 1.0;
    }

    else
    {
      sub_22088F30C();
      v25 = v29;
      sub_22052B278(v18, type metadata accessor for StockForYouFeedGroup);
      (*(v27 + 8))(v14, v26);
    }
  }

  return v25;
}

unint64_t sub_2207D8D30()
{
  v1 = v0;
  v2 = type metadata accessor for CuratedForYouFeedGroup(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StockForYouFeedGroup(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ForYouFeedGroup(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052AB18(v1, v13, type metadata accessor for ForYouFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220523140(v13, v5, type metadata accessor for CuratedForYouFeedGroup);
      v15 = sub_22088F34C();
      v16 = type metadata accessor for CuratedForYouFeedGroup;
      v17 = v5;
    }

    else
    {
      v15 = sub_2205CEB84(MEMORY[0x277D84F90]);
      v16 = type metadata accessor for ForYouFeedGroup;
      v17 = v13;
    }
  }

  else
  {
    sub_220523140(v13, v9, type metadata accessor for StockForYouFeedGroup);
    if (v9[*(v6 + 24)])
    {
      v18 = sub_2205CEB84(MEMORY[0x277D84F90]);
    }

    else
    {
      v18 = sub_22089170C();
    }

    v15 = v18;
    v16 = type metadata accessor for StockForYouFeedGroup;
    v17 = v9;
  }

  sub_22052B278(v17, v16);
  return v15;
}

uint64_t sub_2207D8F54()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CuratedForYouFeedGroup(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ForYouFeedGroup(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052AB18(v1, v14, type metadata accessor for ForYouFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220523140(v14, v10, type metadata accessor for CuratedForYouFeedGroup);
      v18[0] = 0x2064657461727543;
      v18[1] = 0xE900000000000028;
      MEMORY[0x223D89680](*&v10[*(v7 + 20)], *&v10[*(v7 + 20) + 8]);
      MEMORY[0x223D89680](41, 0xE100000000000000);
      v16 = v18[0];
      sub_22052B278(v10, type metadata accessor for CuratedForYouFeedGroup);
    }

    else
    {
      (*(v3 + 32))(v6, v14, v2);
      v16 = sub_22088F22C();
      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    sub_22052B278(v14, type metadata accessor for ForYouFeedGroup);
    return 0x6B636F7453;
  }

  return v16;
}

uint64_t sub_2207D91D8()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CuratedForYouFeedGroup(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StockForYouFeedGroup(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ForYouFeedGroup(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052AB18(v1, v18, type metadata accessor for ForYouFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220523140(v18, v10, type metadata accessor for CuratedForYouFeedGroup);
      v20 = sub_22088F2DC();
      sub_22052B278(v10, type metadata accessor for CuratedForYouFeedGroup);
    }

    else
    {
      (*(v3 + 32))(v6, v18, v2);
      v20 = sub_22088F1CC();
      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    sub_220523140(v18, v14, type metadata accessor for StockForYouFeedGroup);
    v20 = sub_22088681C();
    sub_22052B278(v14, type metadata accessor for StockForYouFeedGroup);
  }

  return v20;
}

double sub_2207D9484()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CuratedForYouFeedGroup(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204595F4(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StockForYouFeedGroup(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ForYouFeedGroup(0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052AB18(v1, v22, type metadata accessor for ForYouFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220523140(v22, v10, type metadata accessor for CuratedForYouFeedGroup);
      sub_22088F31C();
      v25 = v24;
      sub_22052B278(v10, type metadata accessor for CuratedForYouFeedGroup);
    }

    else
    {
      (*(v3 + 32))(v6, v22, v2);
      sub_22052A350(&qword_27CF59DD8, MEMORY[0x277D31BA8], MEMORY[0x277D31B98]);
      sub_2208901DC();
      v25 = v28;
      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    sub_220523140(v22, v18, type metadata accessor for StockForYouFeedGroup);
    sub_22052AB18(&v18[*(v15 + 28)], v14, sub_2204595F4);
    v26 = sub_22088F39C();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v14, 1, v26) == 1)
    {
      sub_22052B278(v18, type metadata accessor for StockForYouFeedGroup);
      sub_22052B278(v14, sub_2204595F4);
      return 0.0;
    }

    else
    {
      sub_22088F31C();
      v25 = v29;
      sub_22052B278(v18, type metadata accessor for StockForYouFeedGroup);
      (*(v27 + 8))(v14, v26);
    }
  }

  return v25;
}

uint64_t sub_2207D98E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22052A350(qword_281293450, type metadata accessor for ForYouFeedGroup, &unk_2208B6530);

  return MEMORY[0x282191948](a1, a2, a3, v6);
}

uint64_t sub_2207D996C(uint64_t a1)
{
  v2 = sub_22052A350(qword_281293450, type metadata accessor for ForYouFeedGroup, &unk_2208B6530);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_2207D99E0(uint64_t a1)
{
  sub_22052A350(&unk_281293428, type metadata accessor for ForYouFeedGroup, &unk_2208B64D8);

  return sub_22088882C();
}

uint64_t sub_2207D9B24()
{
  v2 = sub_22088519C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088518C();
  sub_22088517C();
  (*(v3 + 8))(v6, v2);
  sub_22088F1DC();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2207D9C28(uint64_t a1)
{
  result = type metadata accessor for StockForYouFeedGroup(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CuratedForYouFeedGroup(319);
    if (v3 <= 0x3F)
    {
      result = sub_22088F23C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

double sub_2207D9CB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  sub_22088C31C();
  v6 = v5;
  sub_22088C31C();
  v8 = v7;
  sub_22088C20C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_22088C1FC();
  v18 = v17;
  v19 = sub_22088C2AC();
  v20 = sub_22088C32C();
  (*(*(v20 - 8) + 8))(a1, v20);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
  *(a2 + 40) = v16;
  *(a2 + 48) = v18;
  *(a2 + 56) = v19;
  __asm { FMOV            V0.2D, #5.0 }

  *(a2 + 64) = _Q0;
  *(a2 + 80) = xmmword_2208B6670;
  result = 0.0;
  *(a2 + 96) = xmmword_2208B6680;
  *(a2 + 112) = 0;
  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2207D9DC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2207D9E10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2207D9E7C(void *a1, void *a2)
{
  if (!a2)
  {
    return;
  }

  v5 = *(v2 + 56);
  if (!v5)
  {
    v9 = a2;
LABEL_8:
    v10 = [a2 bottomEdgeEffect];
    v11 = [objc_opt_self() hardStyle];
    [v10 setStyle_];

    if (*(v2 + 56))
    {
      [a1 removeInteraction_];
      v12 = *(v2 + 56);
      *(v2 + 56) = 0;
    }

    v13 = [objc_allocWithZone(MEMORY[0x277D76220]) initWithScrollView:a2 edge:4 style:0];
    [a1 addInteraction_];

    v8 = *(v2 + 56);
    *(v2 + 56) = v13;
    goto LABEL_11;
  }

  v14 = a2;
  v6 = [v5 _scrollView];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;

  if (v7 != v14)
  {
    goto LABEL_8;
  }

  v8 = v14;
LABEL_11:
}

unint64_t sub_2207DA028(uint64_t a1)
{
  result = sub_2207DA050();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2207DA050()
{
  result = qword_28128BD80;
  if (!qword_28128BD80)
  {
    type metadata accessor for CardToolbarViewRenderer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128BD80);
  }

  return result;
}

id sub_2207DA0A4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_22046DA2C(v2 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_priceDataManager, v7);
  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_22044DD10(&qword_28128DFE8, type metadata accessor for ForYouFeedDataManager, &unk_2208B6868);
  sub_22088631C();
  __swift_destroy_boxed_opaque_existential_1(v7);
  sub_22046DA2C(v2 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_watchlistManager, v7);
  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_22044DD10(&qword_28128DFE0, type metadata accessor for ForYouFeedDataManager, &unk_2208B6838);
  v4 = v2;
  sub_220885FDC();

  __swift_destroy_boxed_opaque_existential_1(v7);
  v6.receiver = v4;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

double sub_2207DA304()
{
  sub_2207DBE54(0);
  v21 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207DBF24(0);
  v7 = *(v6 - 8);
  v22 = v6;
  v23 = v7;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207DBFB8(0);
  v12 = *(v11 - 8);
  v24 = v11;
  v25 = v12;
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_priceDataManager), *(v0 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_priceDataManager + 24));
  sub_22044DD10(&qword_28128DFE8, type metadata accessor for ForYouFeedDataManager, &unk_2208B6868);
  sub_22088630C();
  v16 = (v0 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_watchlistManager);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_22044DD10(&qword_28128DFE0, type metadata accessor for ForYouFeedDataManager, &unk_2208B6838);
  sub_220885FAC();
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v26 = sub_220885F4C();
  swift_getKeyPath();
  sub_22046A99C(0);
  sub_22044DD10(&qword_281296DB0, sub_22046A99C, MEMORY[0x277CBCE48]);
  sub_22088EB9C();

  sub_22044DD10(&qword_281296E50, sub_2207DBE54, MEMORY[0x277CBCB20]);
  sub_2207DC04C();
  v17 = v21;
  sub_22088EBCC();
  (*(v2 + 8))(v5, v17);
  sub_22044DD10(&qword_281296E30, sub_2207DBF24, MEMORY[0x277CBCBE0]);
  v18 = v22;
  sub_22088EBBC();
  (*(v23 + 8))(v10, v18);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22044DD10(&qword_281296DE0, sub_2207DBFB8, MEMORY[0x277CBCC18]);
  v19 = v24;
  sub_22088EBDC();

  (*(v25 + 8))(v15, v19);
  swift_beginAccess();
  sub_22088EB6C();
  swift_endAccess();

  return result;
}

void sub_2207DA7C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      swift_getObjectType();
      v6 = *(v5 + 24);
      v7 = v3;
      v6();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_2207DA890(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v2 = CACurrentMediaTime();
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  v3 = qword_281293920;
  v4 = sub_220891AFC();
  v5 = sub_22088A7EC("ForYouFeed start refreshing feed", 32, 2, &dword_22043F000, v3, v4, MEMORY[0x277D84F90]);
  MEMORY[0x28223BE20](v5, v6);
  type metadata accessor for ForYouFeedServiceConfig(0);
  sub_220888FBC();
  sub_2207DBD58(0);
  sub_220888E5C();

  v7 = sub_220888D9C();
  sub_220888E4C();

  *(swift_allocObject() + 16) = v2;
  v8 = sub_220888D9C();
  sub_220888E5C();

  *(swift_allocObject() + 16) = v2;
  v9 = sub_220888D9C();
  v10 = sub_220888E9C();

  return v10;
}

uint64_t sub_2207DAAF4(uint64_t a1, uint64_t a2)
{
  sub_2207DBCC4(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_feedService), *(a2 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_feedService + 24));
  type metadata accessor for ForYouFeedServiceConfig(0);
  sub_22044DD10(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig, &unk_2208BDD90);
  sub_22089012C();
  v9 = off_283415E28;
  type metadata accessor for ForYouFeedServiceProxy();
  v10 = v9();
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_2207DAC94(uint64_t *a1, uint64_t a2, double a3)
{
  sub_22044DA5C(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v21 - v7;
  v9 = *a1;
  sub_22088515C();
  v10 = sub_22088516C();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  v11 = OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_lastRefreshDate;
  swift_beginAccess();
  sub_22062162C(v8, a2 + v11);
  swift_endAccess();
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  v12 = qword_281293920;
  sub_22048D7F8(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_220899920;
  sub_22089187C();
  v14 = MEMORY[0x277D83A80];
  *(v13 + 56) = MEMORY[0x277D839F8];
  *(v13 + 64) = v14;
  *(v13 + 32) = v15;
  v22 = v9;
  sub_2207DBD58(0);
  sub_22044DD10(&qword_281296AA8, sub_2207DBD58, MEMORY[0x277D32588]);
  v16 = sub_22088882C();
  v18 = v17;
  *(v13 + 96) = MEMORY[0x277D837D0];
  *(v13 + 104) = sub_22048D860();
  *(v13 + 72) = v16;
  *(v13 + 80) = v18;
  v19 = sub_220891AFC();
  sub_22088A7EC("ForYouFeed successfully refreshed the top of the feed, time=%fms, forYouFetch=%@", 80, 2, &dword_22043F000, v12, v19, v13);

  v22 = v9;
  sub_22052DCC8(0, &qword_281298650, &type metadata for ForYouFeedRefreshData, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_220888ECC();
}

void sub_2207DAF44(uint64_t a1, double a2)
{
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  v2 = qword_281293920;
  v3 = sub_220891ADC();
  sub_22048D7F8(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_220899920;
  sub_22089187C();
  v5 = MEMORY[0x277D83A80];
  *(v4 + 56) = MEMORY[0x277D839F8];
  *(v4 + 64) = v5;
  *(v4 + 32) = v6;
  sub_2204446D4(0, &qword_28127DE30, MEMORY[0x277D84948]);
  sub_22089264C();
  *(v4 + 96) = MEMORY[0x277D837D0];
  *(v4 + 104) = sub_22048D860();
  *(v4 + 72) = 0;
  *(v4 + 80) = 0xE000000000000000;
  sub_22088A7EC("ForYouFeed failed to refreshing the top of the feed, time=%fms, error=%{public}@", 80, 2, &dword_22043F000, v2, v3, v4);
}

uint64_t sub_2207DB09C(uint64_t a1, uint64_t a2)
{
  sub_2207DBCC4(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *v11 = v12;
    (*(v6 + 104))(v11, *MEMORY[0x277D33090], v5);
    sub_22044DA5C(0, &qword_281298670, sub_2207DBCC4, MEMORY[0x277D6CF30]);
    swift_allocObject();

    return sub_220888ECC();
  }

  else
  {
    MEMORY[0x28223BE20](v8, v9);
    *(&v16 - 2) = a1;
    type metadata accessor for ForYouFeedServiceConfig(0);
    sub_220888FBC();
    v14 = sub_220888D9C();
    v15 = sub_220888E4C();

    return v15;
  }
}

uint64_t sub_2207DB28C(uint64_t a1)
{
  type metadata accessor for ForYouFeedServiceConfig(0);
  sub_22044DD10(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig, &unk_2208BDD90);
  return sub_22089012C();
}

uint64_t sub_2207DB314(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_feedService), *(a2 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_feedService + 24));
  v2 = off_283415E28;
  type metadata accessor for ForYouFeedServiceProxy();
  return v2();
}

void sub_2207DB398(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  v6 = qword_281293920;
  sub_22048D7F8(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22089B140;
  sub_22089187C();
  v8 = MEMORY[0x277D83A80];
  *(v7 + 56) = MEMORY[0x277D839F8];
  *(v7 + 64) = v8;
  *(v7 + 32) = v9;
  v10 = MEMORY[0x277D837D0];
  *(v7 + 96) = MEMORY[0x277D837D0];
  v11 = sub_22048D860();
  *(v7 + 104) = v11;
  *(v7 + 72) = a2;
  *(v7 + 80) = a3;
  sub_2204446D4(0, &qword_28127DE30, MEMORY[0x277D84948]);

  sub_22089264C();
  *(v7 + 136) = v10;
  *(v7 + 144) = v11;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0xE000000000000000;
  v12 = sub_220891AFC();
  sub_22088A7EC("ForYouFeed failed expanded gap, time=%fms, identifier=%@, error=%{public}@", 74, 2, &dword_22043F000, v6, v12, v7);
}

uint64_t sub_2207DB514()
{
  v0 = sub_220885ACC();
  v31 = *(v0 - 8);
  v32 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044DA5C(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v31 - v6;
  v8 = sub_22088516C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v31 - v15;
  v17 = sub_22088FB1C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298EA8 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == *MEMORY[0x277D325C0])
  {
    v23 = OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_lastRefreshDate;
    v24 = v33;
    swift_beginAccess();
    sub_2207C4220(v24 + v23, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_22047EC24(v7, &qword_281299480, MEMORY[0x277CC9578]);
      return 0;
    }

    (*(v9 + 32))(v16, v7, v8);
    sub_22088515C();
    sub_22088507C();
    v27 = v26;
    v28 = *(v9 + 8);
    v28(v12, v8);
    __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_appConfigurationManager), *(v24 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_appConfigurationManager + 24));
    sub_22088641C();
    sub_220885A4C();
    v30 = v29;
    (*(v31 + 8))(v3, v32);
    v28(v16, v8);
    return v30 < v27;
  }

  else
  {
    if (v22 == *MEMORY[0x277D325C8])
    {
      return 0;
    }

    if (v22 == *MEMORY[0x277D325B8])
    {
      return 1;
    }

    else
    {
      result = sub_2208928AC();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2207DB990(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v2, &off_283423328, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2207DBA30(char *a1)
{
  v2 = &a1[OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 16);
    v5 = a1;
    v4();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2207DBAF0()
{
  v1 = v0;
  v2 = MEMORY[0x277D694F8];
  sub_22044DA5C(0, &qword_2812992C8, MEMORY[0x277D694F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v13 - v5;
  sub_22088577C();
  v7 = sub_220885DFC();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  result = sub_22047EC24(v6, &qword_2812992C8, v2);
  if (v8 != 1)
  {
    v10 = v1 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      (*(v11 + 24))(v1, &off_283423328, ObjectType, v11);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2207DBC58(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821CEF98](a1, ObjectType);
}

void sub_2207DBCC4(uint64_t a1)
{
  if (!qword_281296918)
  {
    type metadata accessor for ForYouFeedServiceConfig(255);
    sub_22044DD10(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig, &unk_2208BDD90);
    v1 = sub_22089013C();
    if (!v2)
    {
      atomic_store(v1, &qword_281296918);
    }
  }
}

void sub_2207DBD58(uint64_t a1)
{
  if (!qword_281296A98)
  {
    type metadata accessor for ForYouFeedServiceConfig(255);
    sub_22044DD10(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig, &unk_2208BDD90);
    v1 = sub_22088FAFC();
    if (!v2)
    {
      atomic_store(v1, &qword_281296A98);
    }
  }
}

double sub_2207DBDEC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *a1;
  *a2 = *(v2 + 16);
  a2[1] = v3;
  a2[2] = v4;

  return result;
}

void sub_2207DBE54(uint64_t a1)
{
  if (!qword_281296E48)
  {
    sub_22046A99C(255);
    sub_22052DCC8(255, &qword_28127E9C0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_22044DD10(&qword_281296DB0, sub_22046A99C, MEMORY[0x277CBCE48]);
    v1 = sub_22088EB2C();
    if (!v2)
    {
      atomic_store(v1, &qword_281296E48);
    }
  }
}

void sub_2207DBF24(uint64_t a1)
{
  if (!qword_281296E28)
  {
    sub_2207DBE54(255);
    sub_22044DD10(&qword_281296E50, sub_2207DBE54, MEMORY[0x277CBCB20]);
    v1 = sub_22088EB3C();
    if (!v2)
    {
      atomic_store(v1, &qword_281296E28);
    }
  }
}

void sub_2207DBFB8(uint64_t a1)
{
  if (!qword_281296DD8)
  {
    sub_2207DBF24(255);
    sub_22044DD10(&qword_281296E30, sub_2207DBF24, MEMORY[0x277CBCBE0]);
    v1 = sub_22088EB4C();
    if (!v2)
    {
      atomic_store(v1, &qword_281296DD8);
    }
  }
}

unint64_t sub_2207DC04C()
{
  result = qword_28127E9A8;
  if (!qword_28127E9A8)
  {
    sub_22052DCC8(255, &qword_28127E9C0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127E9A8);
  }

  return result;
}

NSAttributedString __swiftcall NSAttributedString.appendingAccessibilityDWCPriceChangeArrow(pointingUpward:withFont:withColor:)(Swift::Bool pointingUpward, UIFont withFont, UIColor withColor)
{
  ShouldDifferentiateWithoutColor = UIAccessibilityShouldDifferentiateWithoutColor();
  v6 = v18;
  if (ShouldDifferentiateWithoutColor)
  {
    [v18 mutableCopy];
    sub_2208923BC();
    swift_unknownObjectRelease();
    sub_2207DC400();
    if (swift_dynamicCast())
    {
      v7 = [objc_opt_self() configurationWithFont:withFont.super.isa scale:1];
      v8 = sub_22089132C();

      v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

      if (v9)
      {
        v10 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
        v11 = [v9 imageWithTintColor:withColor.super.isa renderingMode:1];
        [v10 setImage_];

        v12 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v13 = sub_22089132C();
        v14 = [v12 initWithString_];

        [v19 appendAttributedString_];
        v15 = [objc_opt_self() attributedStringWithAttachment_];
        [v19 appendAttributedString_];

        return v19;
      }

      else
      {
        v17 = v18;

        return v17;
      }
    }

    v6 = v18;
  }

  return v6;
}

unint64_t sub_2207DC400()
{
  result = qword_27CF59E80;
  if (!qword_27CF59E80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF59E80);
  }

  return result;
}

uint64_t sub_2207DC44C(uint64_t a1, char a2, char a3)
{
  v7 = sub_2208852DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 1)
  {
    return 0;
  }

  v12 = *(v3 + 16);
  sub_22088528C();
  v13 = sub_22088523C();
  (*(v8 + 8))(v11, v7);
  v14 = [v12 formattedCount:a1 withLocale:v13 longform:a2 & 1 compactDisplay:a3 & 1];

  if (!v14)
  {
    return 0;
  }

  v15 = sub_22089136C();

  return v15;
}

uint64_t sub_2207DC59C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2207DC5F8(unsigned __int8 a1)
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_2207DC6E4(uint64_t a1, unsigned __int8 a2)
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_2207DC7EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2204480D0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2207DC85C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}