uint64_t sub_219A6E150(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v92 = a4;
  v100 = a3;
  v103 = a1;
  v81 = sub_219BDBD34();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v6 - 8);
  v91 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDF4A4();
  v93 = *(v8 - 8);
  v94 = v8;
  MEMORY[0x28223BE20](v8);
  v75 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDF1E4();
  v89 = *(v10 - 8);
  v90 = v10;
  MEMORY[0x28223BE20](v10);
  v88 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDFCE4();
  v86 = *(v12 - 8);
  v87 = v12;
  MEMORY[0x28223BE20](v12);
  v85 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE1444();
  v96 = *(v14 - 8);
  v97 = v14;
  MEMORY[0x28223BE20](v14);
  v95 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB7640(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A6BD5C(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v22 = v21;
  v104 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v71 - v23;
  sub_21929BEC4(0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953904(0);
  v29 = v28;
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v105 = v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A6BD5C(0, &qword_280EE50E8, MEMORY[0x277D6DA48]);
  v33 = v32;
  sub_219BE7594();
  v101 = v33;
  v102 = a2;
  sub_219BE7564();
  sub_219BE5F84();
  v34 = *(v18 + 8);
  v84 = v17;
  v35 = v18 + 8;
  v36 = v22;
  v37 = v104;
  v83 = v35;
  v82 = v34;
  v34(v20, v17);
  sub_219BEB244();

  v38 = *(v37 + 1);
  v38(v24, v36);
  if ((*(v30 + 48))(v27, 1, v29) == 1)
  {
    return sub_219A72AE4(v27, sub_21929BEC4);
  }

  v104 = v38;
  v72 = v30;
  v40 = *(v30 + 32);
  v78 = v29;
  v40(v105, v27, v29);
  v41 = [v100 identifier];
  sub_219BF5414();

  v42 = v95;
  sub_219BE1424();
  sub_219A72A38(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v44 = v43;
  v45 = sub_219BDCD44();
  v46 = *(v45 - 8);
  v47 = *(v46 + 80);
  v48 = (v47 + 32) & ~v47;
  v73 = *(v46 + 72);
  v100 = v47;
  v77 = v44;
  v49 = swift_allocObject();
  v98 = xmmword_219C09BA0;
  *(v49 + 16) = xmmword_219C09BA0;
  v50 = *(v46 + 104);
  v99 = *MEMORY[0x277CEAD18];
  v74 = v45;
  v71[1] = v46 + 104;
  v76 = v50;
  v50(v49 + v48);
  sub_219A72A9C(&unk_280EE8030, 255, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
  v71[0] = "NewsUI2/AudioFeedTracker.swift";
  v51 = v97;
  sub_219BDCCC4();

  (*(v96 + 8))(v42, v51);
  sub_219BE7594();
  sub_219BE7564();
  sub_219A72A9C(&qword_280EDCBF8, 255, type metadata accessor for AudioFeedModel, &unk_219C86F68);
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v52 = v85;
  sub_219BDFCD4();
  v82(v20, v84);
  (v104)(v24, v36);
  v104 = v48;
  v53 = swift_allocObject();
  *(v53 + 16) = v98;
  v54 = v74;
  v76(&v104[v53], v99, v74);
  sub_219A72A9C(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v55 = v87;
  sub_219BDCCC4();

  (*(v86 + 8))(v52, v55);
  sub_219BE6944();
  v56 = v88;
  sub_219BDF1C4();
  v57 = v104;
  v58 = swift_allocObject();
  *(v58 + 16) = v98;
  v59 = v54;
  v60 = v76;
  v76(&v57[v58], v99, v59);
  sub_219A72A9C(&unk_280EE8840, 255, MEMORY[0x277D2D970], MEMORY[0x277D2D968]);
  v61 = v90;
  sub_219BDCCC4();

  (*(v89 + 8))(v56, v61);
  v62 = v91;
  sub_219A7238C(v92, v91, sub_218B59134);
  v64 = v93;
  v63 = v94;
  if ((*(v93 + 48))(v62, 1, v94) == 1)
  {
    sub_219A72AE4(v62, sub_218B59134);
  }

  else
  {
    v65 = v75;
    (*(v64 + 32))(v75, v62, v63);
    v66 = swift_allocObject();
    *(v66 + 16) = v98;
    v60(&v57[v66], v99, v74);
    sub_219A72A9C(&unk_280EE8790, 255, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    sub_219BDCCC4();

    (*(v64 + 8))(v65, v63);
  }

  v67 = v81;
  v68 = v80;
  v69 = v79;
  sub_219BDFEC4();
  sub_219BE75A4();
  sub_219A72A9C(&unk_280EE8520, 255, MEMORY[0x277D2E1D0], MEMORY[0x277D2E1C8]);
  sub_219BDCC64();
  v70 = *(v68 + 8);
  v70(v69, v67);
  sub_219BE7574();
  sub_219BDCC74();
  v70(v69, v67);
  return (*(v72 + 8))(v105, v78);
}

uint64_t sub_219A6EE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v83 = a6;
  v91 = a4;
  v92 = a1;
  v105 = a3;
  v86 = sub_219BDBD34();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v7 - 8);
  v82 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_219BDF4A4();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v76 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_219BE0444();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A725DC(0);
  MEMORY[0x28223BE20](v11 - 8);
  v74 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v13 - 8);
  v78 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_219BE16D4();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v75 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21929BEC4(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953904(0);
  v94 = *(v19 - 8);
  v95 = v19;
  MEMORY[0x28223BE20](v19);
  v81 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_219BDFCE4();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BDF674();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = swift_projectBox();
  sub_219BF1DB4();
  sub_219BF1DD4();
  sub_219BDF664();
  sub_219A72A38(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v28 = v27;
  v29 = sub_219BDCD44();
  v30 = *(v29 - 8);
  v31 = *(v30 + 72);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v99 = *(v30 + 80);
  v100 = v31;
  v103 = v28;
  v33 = swift_allocObject();
  v96 = xmmword_219C09BA0;
  *(v33 + 16) = xmmword_219C09BA0;
  v34 = *MEMORY[0x277CEAD18];
  v35 = *(v30 + 104);
  v101 = v32;
  v102 = v30 + 104;
  v98 = v34;
  v104 = v29;
  v97 = v35;
  v35(v33 + v32);
  sub_219A72A9C(&unk_280EE86E0, 255, MEMORY[0x277D2DC98], MEMORY[0x277D2DC90]);
  sub_219BDCCC4();

  (*(v24 + 8))(v26, v23);
  sub_219A6BD5C(0, &qword_280EE50E8, MEMORY[0x277D6DA48]);
  v37 = v36;
  sub_219A72A9C(&qword_280EDCBF8, 255, type metadata accessor for AudioFeedModel, &unk_219C86F68);
  v93 = v37;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_219BDFCD4();
  v39 = v101;
  v40 = swift_allocObject();
  *(v40 + 16) = v96;
  v97(v40 + v39, v98, v104);
  sub_219A72A9C(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v41 = v90;
  sub_219BDCCC4();

  (*(v89 + 8))(v22, v41);
  sub_219A7238C(v91, v18, sub_21929BEC4);
  v42 = v94;
  v43 = v95;
  if ((*(v94 + 48))(v18, 1, v95) != 1)
  {
    v45 = v81;
    (*(v42 + 32))(v81, v18, v43);
    v46 = v77;
    swift_beginAccess();
    v47 = v46;
    v18 = v78;
    sub_219A7238C(v47, v78, sub_218B58D58);
    v48 = v79;
    v49 = v80;
    if ((*(v79 + 48))(v18, 1, v80) == 1)
    {
      (*(v42 + 8))(v45, v43);
      v44 = sub_218B58D58;
      goto LABEL_7;
    }

    (*(v48 + 32))(v75, v18, v49);
    v52 = v101;
    v53 = swift_allocObject();
    *(v53 + 16) = v96;
    v97(v53 + v52, v98, v104);
    sub_219A72A9C(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    v54 = v74;
    sub_219BE7564();
    sub_218AB7640(0);
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    v56 = sub_219BE6A34();
    result = sub_219A72AE4(v54, sub_219A725DC);
    if (v56 >= 0xFFFFFFFF80000000)
    {
      v50 = v88;
      v51 = v87;
      if (v56 <= 0x7FFFFFFF)
      {
        v57 = v48;
        v58 = v71;
        sub_219BE0434();
        v59 = v101;
        v60 = swift_allocObject();
        *(v60 + 16) = v96;
        v97(v60 + v59, v98, v104);
        sub_219A72A9C(&unk_280EE8400, 255, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
        v61 = v49;
        v62 = v73;
        sub_219BDCCC4();

        (*(v72 + 8))(v58, v62);
        (*(v57 + 8))(v75, v61);
        (*(v94 + 8))(v81, v95);
        goto LABEL_11;
      }

LABEL_18:
      __break(1u);
      return result;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v44 = sub_21929BEC4;
LABEL_7:
  sub_219A72AE4(v18, v44);
  v50 = v88;
  v51 = v87;
LABEL_11:
  v63 = v82;
  sub_219A7238C(v83, v82, sub_218B59134);
  if ((*(v51 + 48))(v63, 1, v50) == 1)
  {
    sub_219A72AE4(v63, sub_218B59134);
  }

  else
  {
    v64 = v76;
    (*(v51 + 32))(v76, v63, v50);
    v65 = v101;
    v66 = swift_allocObject();
    *(v66 + 16) = v96;
    v97(v66 + v65, v98, v104);
    sub_219A72A9C(&unk_280EE8790, 255, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    sub_219BDCCC4();

    (*(v51 + 8))(v64, v50);
  }

  sub_219BE0A64();
  v67 = v84;
  sub_219BE75A4();
  sub_219A72A9C(&qword_280EE8230, 255, MEMORY[0x277D2EA20], MEMORY[0x277D2EA18]);
  sub_219BDCC64();
  v68 = *(v85 + 8);
  v69 = v86;
  v68(v67, v86);
  sub_219BE7574();
  sub_219BDCC74();
  return (v68)(v67, v69);
}

uint64_t sub_219A6FD30(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v172 = a8;
  v200 = a7;
  v199 = a5;
  v206 = a4;
  v208 = a3;
  v221 = a1;
  v178 = sub_219BDBD34();
  v177 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v176 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3B80(0);
  MEMORY[0x28223BE20](v10 - 8);
  v173 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_219BDF754();
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v161 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v13 - 8);
  v207 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_219BDF4A4();
  v171 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v160 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_219BDBD64();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_219BDFFB4();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_219BE1714();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_219BE09E4();
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v167 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_219BDF104();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FEC(0);
  MEMORY[0x28223BE20](v21 - 8);
  v170 = &v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_219BE0724();
  v201 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v159 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_219BE1774();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v144 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_219BE0444();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v156 = &v144 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F64(0);
  MEMORY[0x28223BE20](v26 - 8);
  v163 = &v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F98(0);
  MEMORY[0x28223BE20](v28 - 8);
  v196 = &v144 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FCC(0);
  v198 = v30;
  v197 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v179 = &v144 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v32 - 8);
  v193 = &v144 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_219BE16D4();
  v194 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v162 = &v144 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_219BDF8A4();
  v191 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v190 = &v144 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_219BEFBD4();
  v184 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v183 = &v144 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_219BDF1A4();
  v188 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v186 = &v144 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_219BDFCE4();
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v180 = &v144 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_219BE0D44();
  v212 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v202 = &v144 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_219BDF0E4();
  v217 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v42 = &v144 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = swift_projectBox();
  v210 = a2;
  ObjectType = swift_getObjectType();
  sub_219BF67F4();
  sub_219A72A38(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v216 = v43;
  v44 = sub_219BDCD44();
  v45 = *(v44 - 8);
  v46 = *(v45 + 80);
  v47 = (v46 + 32) & ~v46;
  v48 = v47 + *(v45 + 72);
  v49 = swift_allocObject();
  v220 = xmmword_219C09BA0;
  *(v49 + 16) = xmmword_219C09BA0;
  v215 = *MEMORY[0x277CEAD18];
  v50 = *(v45 + 104);
  (v50)(v49 + v47);
  v218 = "NewsUI2/AudioFeedTracker.swift";
  sub_219A72A9C(&qword_280EE88B0, 255, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
  sub_219BDCCC4();

  v217[1](v42, v40);
  v51 = v202;
  sub_219BF6834();
  v214 = v46;
  v219 = v48;
  v52 = v215;
  v53 = swift_allocObject();
  *(v53 + 16) = v220;
  v213 = v44;
  v211 = v45 + 104;
  v217 = v50;
  (v50)(v53 + v47, v52, v44);
  sub_219A72A9C(&qword_280EE8190, 255, MEMORY[0x277D2ECA0], MEMORY[0x277D2EC98]);
  v54 = v205;
  sub_219BDCCC4();

  (*(v212 + 8))(v51, v54);
  sub_218B58D38(0);
  v56 = v55;
  v57 = sub_219A72A9C(&qword_280E908F0, 255, MEMORY[0x277D33320], MEMORY[0x277D33308]);
  v205 = v56;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v202 = v57;
  v59 = v180;
  sub_219BDFCD4();
  v60 = swift_allocObject();
  *(v60 + 16) = v220;
  v61 = v213;
  (v217)(v60 + v47, v52, v213);
  sub_219A72A9C(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v212 = (v46 + 32) & ~v46;
  v62 = v182;
  sub_219BDCCC4();

  (*(v181 + 8))(v59, v62);
  v63 = v184;
  v64 = v183;
  v65 = v185;
  (*(v184 + 104))(v183, *MEMORY[0x277D328F8], v185);
  v66 = v186;
  sub_219BE02C4();
  (*(v63 + 8))(v64, v65);
  v67 = swift_allocObject();
  *(v67 + 16) = v220;
  v68 = v212;
  v69 = v215;
  (v217)(v67 + v212, v215, v61);
  sub_219A72A9C(&unk_280EE8850, 255, MEMORY[0x277D2D950], MEMORY[0x277D2D948]);
  v70 = v189;
  sub_219BDCCC4();

  (*(v188 + 8))(v66, v70);
  v71 = v190;
  sub_219BDF894();
  v72 = swift_allocObject();
  *(v72 + 16) = v220;
  (v217)(v72 + v68, v69, v213);
  sub_219A72A9C(&qword_280EE8640, 255, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
  v73 = v192;
  sub_219BDCCC4();

  v74 = v68;
  (*(v191 + 8))(v71, v73);
  v75 = v187;
  swift_beginAccess();
  v76 = v193;
  sub_219A7238C(v75, v193, sub_218B58D58);
  v77 = v194;
  v78 = v195;
  if ((*(v194 + 48))(v76, 1, v195) == 1)
  {
    sub_219A72AE4(v76, sub_218B58D58);
    v79 = v204;
    v80 = v201;
    v81 = v213;
  }

  else
  {
    v82 = v162;
    (*(v77 + 32))(v162, v76, v78);
    v83 = swift_allocObject();
    *(v83 + 16) = v220;
    v81 = v213;
    (v217)(v83 + v74, v215, v213);
    sub_219A72A9C(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v77 + 8))(v82, v78);
    v79 = v204;
    v80 = v201;
  }

  v84 = v197;
  v85 = v196;
  sub_219A7238C(v200, v196, sub_218B58F98);
  v86 = v198;
  v87 = (*(v84 + 48))(v85, 1, v198);
  v88 = v217;
  v89 = v210;
  if (v87 != 1)
  {
    v90 = v217;
    (*(v84 + 32))(v179, v85, v86);
    v91 = v163;
    sub_219BE7564();
    sub_218B58CA4(0);
    (*(*(v92 - 8) + 56))(v91, 0, 1, v92);
    v93 = sub_219BE6A34();
    result = sub_219A72AE4(v91, sub_218B58F64);
    if (v93 >= 0xFFFFFFFF80000000)
    {
      if (v93 <= 0x7FFFFFFF)
      {
        v94 = v81;
        v95 = v156;
        sub_219BE0434();
        v96 = swift_allocObject();
        *(v96 + 16) = v220;
        (v90)(v96 + v212, v215, v94);
        sub_219A72A9C(&unk_280EE8400, 255, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
        v97 = v89;
        v98 = v80;
        v99 = v86;
        v100 = v158;
        sub_219BDCCC4();

        v101 = v95;
        v81 = v94;
        (*(v157 + 8))(v101, v100);
        v102 = v99;
        v80 = v98;
        v89 = v97;
        v88 = v90;
        (*(v84 + 8))(v179, v102);
        v79 = v204;
        goto LABEL_11;
      }

LABEL_33:
      __break(1u);
      return result;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_219A72AE4(v85, sub_218B58F98);
LABEL_11:
  v103 = [v89 scoreProfile];
  if (v103)
  {
    v104 = v103;
    if ([v103 hasShadowScores])
    {
      [v104 shadowTabiScore];
      [v104 shadowAgedPersonalizationScore];
      v105 = v144;
      sub_219BE1764();
      v106 = swift_allocObject();
      *(v106 + 16) = v220;
      (v88)(v106 + v212, v215, v81);
      sub_219A72A9C(&unk_280EE7F40, 255, MEMORY[0x277D2F8F0], MEMORY[0x277D2F8E8]);
      v107 = v146;
      sub_219BDCCC4();

      v108 = v107;
      v89 = v210;
      (*(v145 + 8))(v105, v108);
    }

    else
    {
    }
  }

  v109 = v170;
  sub_219BF6824();
  if ((*(v80 + 48))(v109, 1, v79) == 1)
  {
    sub_219A72AE4(v109, sub_218B58FEC);
  }

  else
  {
    v110 = v159;
    (*(v80 + 32))(v159, v109, v79);
    v111 = swift_allocObject();
    *(v111 + 16) = v220;
    (v88)(v111 + v212, v215, v81);
    sub_219A72A9C(&unk_27CC0DC50, 255, MEMORY[0x277D2E738], MEMORY[0x277D2E730]);
    sub_219BDCCC4();

    v112 = v110;
    v89 = v210;
    (*(v80 + 8))(v112, v79);
  }

  v113 = v207;
  if ([v89 sourceChannel])
  {
    v114 = v164;
    sub_219BE01F4();
    v115 = swift_allocObject();
    *(v115 + 16) = v220;
    v116 = v215;
    (v217)(v115 + v212, v215, v81);
    sub_219A72A9C(&unk_280EE8890, 255, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v117 = v166;
    sub_219BDCCC4();

    (*(v165 + 8))(v114, v117);
    v118 = v167;
    sub_219BE01E4();
    v88 = v217;
    v119 = swift_allocObject();
    *(v119 + 16) = v220;
    v120 = v116;
    v89 = v210;
    (v88)(v119 + v212, v120, v213);
    sub_219A72A9C(&qword_280EE8270, 255, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v121 = v169;
    sub_219BDCCC4();
    v113 = v207;
    swift_unknownObjectRelease();

    v81 = v213;
    (*(v168 + 8))(v118, v121);
  }

  if ([v89 respondsToSelector_])
  {
    v122 = [v89 parentIssue];
    if (v122)
    {
      v123 = v147;
      v206 = v122;
      sub_21934C4BC();
      v124 = swift_allocObject();
      *(v124 + 16) = v220;
      v125 = v215;
      (v217)(v124 + v212, v215, v213);
      sub_219A72A9C(&unk_280EE7F60, 255, MEMORY[0x277D2F890], MEMORY[0x277D2F888]);
      v126 = v149;
      sub_219BDCCC4();

      (*(v148 + 8))(v123, v126);
      v127 = v150;
      sub_219BDBD54();
      sub_219BDBD44();
      (*(v151 + 8))(v127, v152);
      v128 = v153;
      sub_219BDFFA4();
      v88 = v217;
      v129 = swift_allocObject();
      *(v129 + 16) = v220;
      (v88)(v129 + v212, v125, v213);
      sub_219A72A9C(&unk_280EE84F0, 255, MEMORY[0x277D2E290], MEMORY[0x277D2E288]);
      v130 = v155;
      sub_219BDCCC4();
      v113 = v207;

      v81 = v213;
      (*(v154 + 8))(v128, v130);
    }
  }

  sub_219A7238C(v172, v113, sub_218B59134);
  v131 = v171;
  if ((*(v171 + 48))(v113, 1, v203) == 1)
  {
    v132 = v81;
    sub_219A72AE4(v113, sub_218B59134);
  }

  else
  {
    v133 = v160;
    v134 = v203;
    (*(v131 + 32))(v160, v113, v203);
    v135 = swift_allocObject();
    *(v135 + 16) = v220;
    v132 = v81;
    (v88)(v135 + v212, v215, v81);
    sub_219A72A9C(&unk_280EE8790, 255, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    sub_219BDCCC4();

    (*(v131 + 8))(v133, v134);
  }

  v136 = v173;
  v137 = v174;
  sub_219BF6804();
  v138 = v175;
  if ((*(v137 + 48))(v136, 1, v175) == 1)
  {
    sub_219A72AE4(v136, sub_218BD3B80);
  }

  else
  {
    v139 = v161;
    (*(v137 + 32))(v161, v136, v138);
    v140 = swift_allocObject();
    *(v140 + 16) = v220;
    (v88)(v140 + v212, v215, v132);
    sub_219A72A9C(&unk_280EE86A0, 255, MEMORY[0x277D2DD28], MEMORY[0x277D2DD20]);
    sub_219BDCCC4();

    (*(v137 + 8))(v139, v138);
  }

  sub_219BE0834();
  v141 = v176;
  sub_219BE75A4();
  sub_219A72A9C(&qword_280EE82C0, 255, MEMORY[0x277D2E858], MEMORY[0x277D2E840]);
  sub_219BDCC64();
  v142 = *(v177 + 8);
  v143 = v178;
  v142(v141, v178);
  sub_219BE7574();
  sub_219BDCC74();
  return (v142)(v141, v143);
}

void sub_219A71F6C(uint64_t a1)
{
  v2 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v26 - v6;
  sub_218AB7640(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v26 - v14;
  sub_219A6BD5C(0, &unk_280EE4798, MEMORY[0x277D6E1E0]);
  v26[0] = a1;
  sub_219BE8BA4();
  sub_219BE5FC4();
  v16 = *(v10 + 8);
  v16(v15, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v18 = type metadata accessor for AudioFeedModel;
LABEL_9:
    v20 = v18;
    v21 = v7;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_219A72AE4(v7, type metadata accessor for AudioFeedModel);
    sub_219BE8BA4();
    sub_219BE5FC4();
    v16(v12, v9);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v22 = sub_219BE5B64();
      swift_getObjectType();
      v26[1] = v22;
      sub_219BEB4E4();

      return;
    }

    v20 = type metadata accessor for AudioFeedModel;
    v21 = v4;
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      sub_2186FB36C(0);
      v24 = *(v23 + 48);
      v25 = sub_219BF1584();
      (*(*(v25 - 8) + 8))(&v7[v24], v25);
      v18 = type metadata accessor for AudioFeedGapLocation;
      goto LABEL_9;
    }

    sub_2186F151C(0);
    v20 = type metadata accessor for AudioFeedGapLocation;
    v21 = &v7[*(v19 + 48)];
  }

LABEL_10:
  sub_219A72AE4(v21, v20);
}

uint64_t sub_219A7229C(uint64_t a1)
{
  v3 = *(sub_219BE16D4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_219A6BD5C(0, &qword_280EE45C0, MEMORY[0x277D6E3A0]);
  v7 = v1 + ((v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80));

  return sub_219A69D0C(a1, (v1 + v4), v7);
}

uint64_t sub_219A7238C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219A723F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219A7245C(uint64_t a1)
{
  sub_219A6BD5C(0, &qword_280EE50E8, MEMORY[0x277D6DA48]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_21929BEC4(0);
  v7 = (v5 + *(*(v6 - 8) + 80) + 9) & ~*(*(v6 - 8) + 80);
  v8 = (*(*(v6 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v10 = *(v1 + 16);
  v11 = *(v1 + v5);
  v12 = *(v1 + v5 + 8);
  v13 = *(v1 + v8);
  v14 = v1 + ((v8 + *(*(v9 - 8) + 80) + 8) & ~*(*(v9 - 8) + 80));

  return sub_219A6BE58(a1, v10, v1 + v4, v11, v12, v1 + v7, v13, v14);
}

uint64_t sub_219A72610(uint64_t a1)
{
  sub_219A6BD5C(0, &qword_280EE50E8, MEMORY[0x277D6DA48]);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(*(v6 - 8) + 80) + 8) & ~*(*(v6 - 8) + 80));

  return sub_219A6E150(a1, v1 + v4, v7, v8);
}

uint64_t sub_219A72710(uint64_t a1)
{
  v3 = *(sub_219BF1DF4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_219A6BD5C(0, &qword_280EE50E8, MEMORY[0x277D6DA48]);
  v7 = (v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  sub_21929BEC4(0);
  v10 = (v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  v11 = (*(*(v9 - 8) + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v13 = *(v1 + v11);
  v14 = v1 + ((v11 + *(*(v12 - 8) + 80) + 8) & ~*(*(v12 - 8) + 80));

  return sub_219A6EE98(a1, v1 + v4, v1 + v7, v1 + v10, v13, v14);
}

uint64_t sub_219A728D0(uint64_t a1)
{
  sub_218B58D38(0);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = v4 + *(*(v3 - 8) + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_218B58F98(0);
  v9 = (v7 + *(*(v8 - 8) + 80) + 8) & ~*(*(v8 - 8) + 80);
  v10 = *(*(v8 - 8) + 64);
  sub_218B59134(0);
  v12 = *(v1 + 16);
  v13 = *(v1 + v6);
  v14 = *(v1 + v6 + 8);
  v15 = *(v1 + v7);
  v16 = v1 + ((v9 + v10 + *(*(v11 - 8) + 80)) & ~*(*(v11 - 8) + 80));

  return sub_219A6FD30(a1, v12, v1 + v4, v13, v14, v15, v1 + v9, v16);
}

void sub_219A72A38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219A72A9C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219A72AE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219A72B44()
{
  sub_21896FA3C(0);
  v40 = *(v1 - 8);
  v2 = *(v40 + 8);
  MEMORY[0x28223BE20](v1 - 8);
  v41 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - v4;
  v6 = type metadata accessor for ChannelIssuesModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218953748(0);
  sub_219BE5FC4();
  v9 = *v8;
  v44 = v8;
  v42 = v8[2];
  v10 = v9;
  v11 = *(v0 + 72);
  v12 = swift_allocObject();
  v13 = sub_219BE5F84();
  v55 = 0;
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 32) = v10;
  *(v12 + 56) = 0;
  *(v12 + 63) = 0;
  *(v12 + 61) = 0;
  *(v12 + 57) = 0;
  *(v12 + 64) = MEMORY[0x277D84F90];
  v15 = *(v0 + 64);
  v16 = sub_219BDFA44();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v50 = v11;
  sub_2187B14CC(v51, &v46, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  v43 = v10;
  if (v47)
  {
    sub_21875F93C(&v46, v48);
    v17 = qword_280ED32D0;
    v18 = v10;
    if (v17 != -1)
    {
      swift_once();
    }

    v20 = qword_280ED32D8;
    v19 = qword_280ED32E0;
    v21 = qword_280ED32E8;

    v39 = v19;
    sub_2188202A8(v19);
    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  else
  {
    v22 = v10;
    sub_21874504C(&v46, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v20 = qword_280ED32D8;
    v23 = qword_280ED32E0;
    v21 = qword_280ED32E8;

    v39 = v23;
    sub_2188202A8(v23);
  }

  v45 = v12 | 0x5000000000000000;
  v47 = sub_219BDD274();
  *&v46 = v15;
  v24 = v41;
  sub_2189B4E2C(v5, v41);
  sub_2187B14CC(v53, v48, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v25 = (v40[80] + 24) & ~v40[80];
  v26 = (v2 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 47) & 0xFFFFFFFFFFFFFFF8;
  v40 = v5;
  v28 = swift_allocObject();
  *(v28 + 16) = v15;
  sub_2189B4EAC(v24, v28 + v25);
  v29 = v28 + v26;
  v30 = v48[1];
  *v29 = v48[0];
  *(v29 + 16) = v30;
  *(v29 + 32) = v49;
  v31 = (v28 + v27);
  v32 = (v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v31 = 0;
  v31[1] = 0;
  v33 = v39;
  *v32 = v20;
  v32[1] = v33;
  v32[2] = v21;
  swift_retain_n();

  sub_2188202A8(v33);
  sub_2186CF94C(0);
  sub_2186E44A0(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  sub_219BEB464();

  sub_2187FABEC(v33, v21);
  sub_21874504C(v51, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_21874504C(v53, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v40);
  sub_21874504C(&v46, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  sub_2189C026C(0);
  v35 = *(v34 + 48);
  v36 = sub_219BF0744();
  return (*(*(v36 - 8) + 8))(v44 + v35, v36);
}

uint64_t sub_219A7328C()
{
  sub_21896FA3C(0);
  v30 = *(v1 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  v7 = type metadata accessor for ChannelIssuesModel(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953748(0);
  sub_219BE5FC4();
  v10 = *v9;
  v32 = v9;
  v31 = *(v9 + 2);
  v11 = *(v0 + 72);
  v12 = swift_allocObject();
  v13 = sub_219BE5F84();
  v39 = 0;
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 32) = v10;
  *(v12 + 56) = 0;
  *(v12 + 63) = 0;
  *(v12 + 61) = 0;
  *(v12 + 57) = 0;
  *(v12 + 64) = MEMORY[0x277D84F90];
  v15 = *(v0 + 64);
  v16 = sub_219BDFA44();
  v17 = *(*(v16 - 8) + 56);
  v33 = v6;
  v17(v6, 1, 1, v16);
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36[5] = v11;
  sub_219BDC8D4();
  v18 = v10;
  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  sub_219BDC8C4();

  v36[4] = v12 | 0x5000000000000000;
  v36[3] = sub_219BDD274();
  v36[0] = v15;
  sub_2189B4E2C(v33, v3);
  sub_2187B14CC(v37, v34, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v19 = (*(v30 + 80) + 24) & ~*(v30 + 80);
  v20 = (v2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  sub_2189B4EAC(v3, v21 + v19);
  v22 = v21 + v20;
  v23 = v34[1];
  *v22 = v34[0];
  *(v22 + 16) = v23;
  *(v22 + 32) = v35;
  v24 = (v21 + ((v20 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v24 = 0;
  v24[1] = 0;
  sub_2186CF94C(0);
  sub_2186E44A0(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  swift_retain_n();
  v25 = sub_219BEB454();

  sub_21874504C(v37, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v33);
  sub_21874504C(v36, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  sub_2189C026C(0);
  v27 = *(v26 + 48);
  v28 = sub_219BF0744();
  (*(*(v28 - 8) + 8))(&v32[v27], v28);
  return v25;
}

double sub_219A737F4(__int128 *a1, int a2)
{
  v58 = a2;
  v3 = sub_219BDBD34();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v54 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52[1] = v52 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = v52 - v8;
  sub_219A74800(0, qword_280EA39A8, type metadata accessor for ContinueReadingPromptExposureData);
  MEMORY[0x28223BE20](v10 - 8);
  v60 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v52 - v13;
  v15 = type metadata accessor for ContinueReadingPromptExposureData(0);
  v16 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v53 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v52 - v19;
  v57 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = v52 - v23;
  v25 = a1[5];
  v68 = a1[4];
  v69 = v25;
  v70 = a1[6];
  v71 = *(a1 + 112);
  v26 = a1[1];
  v64 = *a1;
  v65 = v26;
  v27 = a1[2];
  v28 = a1[3];
  v29 = v61;
  v66 = v27;
  v67 = v28;
  v30 = OBJC_IVAR____TtC7NewsUI225ContinueReadingInteractor_exposureData;
  swift_beginAccess();
  v59 = v30;
  v31 = v16;
  sub_219A749A4(v29 + v30, v14, qword_280EA39A8, type metadata accessor for ContinueReadingPromptExposureData);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_219A74AF0(v14, qword_280EA39A8, type metadata accessor for ContinueReadingPromptExposureData);
  }

  else
  {
    sub_219A7479C(v14, v24);
    v52[0] = __swift_project_boxed_opaque_existential_1((v29 + 16), *(v29 + 40));
    sub_219BDBD24();
    sub_219BDD2C4();
    v32 = v55;
    v33 = v56;
    (*(v55 + 16))(v54, v9, v56);
    sub_219BDD2B4();
    (*(v32 + 8))(v9, v33);
    v34 = v15[5];
    v35 = sub_219BE1524();
    (*(*(v35 - 8) + 16))(&v20[v34], &v24[v34], v35);
    sub_219A749A4(&v24[v15[6]], &v20[v15[6]], &unk_280EE88A0, MEMORY[0x277D2D8A8]);
    sub_219A749A4(&v24[v15[7]], &v20[v15[7]], &qword_280EE7F58, MEMORY[0x277D2F890]);
    sub_219A749A4(&v24[v15[8]], &v20[v15[8]], &qword_280EE8028, MEMORY[0x277D2F260]);
    v36 = v15[9];
    v37 = sub_219BDF824();
    (*(*(v37 - 8) + 16))(&v20[v36], &v24[v36], v37);
    v38 = v15[10];
    v39 = sub_219BE06D4();
    (*(*(v39 - 8) + 16))(&v20[v38], &v24[v38], v39);
    v56 = *(*v52[0] + 16);
    v40 = v53;
    sub_219A74854(v20, v53);
    v41 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v42 = v31;
    v43 = v41 + v57;
    v44 = swift_allocObject();
    sub_219A7479C(v40, v44 + v41);
    *(v44 + v43) = v58;
    v31 = v42;
    sub_219BDD154();
    v29 = v61;

    sub_219A74948(v20);
    sub_219A74948(v24);
  }

  v45 = v60;
  (*(v31 + 56))(v60, 1, 1, v15);
  v46 = v59;
  swift_beginAccess();
  sub_218A57F2C(v45, v29 + v46);
  swift_endAccess();
  v47 = swift_allocObject();
  v48 = v69;
  *(v47 + 80) = v68;
  *(v47 + 96) = v48;
  *(v47 + 112) = v70;
  *(v47 + 128) = v71;
  v49 = v65;
  *(v47 + 16) = v64;
  *(v47 + 32) = v49;
  v50 = v67;
  *(v47 + 48) = v66;
  *(v47 + 64) = v50;
  v63 = v47 | 0xC000000000000006;
  sub_2189EB2A8(&v64, &v62);
  sub_219BE7864();
  return sub_218932F9C(v63);
}

void sub_219A73E3C(uint64_t a1)
{
  sub_219A74800(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v42[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v42[-v7];
  v9 = *(a1 + 64);
  LODWORD(a1) = *(a1 + 72);
  if (a1)
  {
    v11 = *(v1 + OBJC_IVAR____TtC7NewsUI225ContinueReadingInteractor_navigator);
    v12 = sub_219BDFA44();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    v54 = 0;
    memset(v53, 0, sizeof(v53));
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    v50 = v11;
    sub_2187B171C(v51, &v46, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    v43 = a1;
    if (*(&v47 + 1))
    {
      sub_21875F93C(&v46, v48);
      *&v46 = v9;
      sub_2189EB264(v9);
      v13 = sub_2194DA78C(v48);
      v15 = v14;
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_1(v48);
    }

    else
    {
      sub_2189EB264(v9);
      sub_2187B1CC0(&v46, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v13 = qword_280ED32D8;
      v15 = qword_280ED32E0;
      v17 = qword_280ED32E8;

      sub_2188202A8(v15);
    }

    v44 = v9;
    v45 = v9;
    v47 = 0u;
    v46 = 0u;
    sub_219A749A4(v8, v5, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2187B171C(v53, v48, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v29 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v30 = (v4 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v30 + 47) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    sub_2189B4EAC(v5, v32 + v29);
    v33 = v32 + v30;
    v34 = v48[1];
    *v33 = v48[0];
    *(v33 + 16) = v34;
    *(v33 + 32) = v49;
    v35 = (v32 + v31);
    v36 = (v32 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v35 = 0;
    v35[1] = 0;
    *v36 = v13;
    v36[1] = v15;
    v36[2] = v17;

    sub_2188202A8(v15);
    sub_2186CF94C(0);
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v15, v17);
    sub_2187B1CC0(v51, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2187B1CC0(v53, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_219A74AF0(v8, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_218806FD0(&v46);
    v37 = v44;
    if (qword_280E8D8F0 != -1)
    {
      swift_once();
    }

    v38 = qword_280F617A8;
    sub_2186E7D5C(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_219C09BA0;
    *&v53[0] = 0;
    *(&v53[0] + 1) = 0xE000000000000000;
    *&v51[0] = v37;
    BYTE8(v51[0]) = 1;
    sub_219BF7484();
    v40 = *(&v53[0] + 1);
    a1 = *&v53[0];
    *(v39 + 56) = MEMORY[0x277D837D0];
    *(v39 + 64) = sub_2186FC3BC();
    *(v39 + 32) = a1;
    *(v39 + 40) = v40;
    v9 = v44;
    v41 = sub_219BF6214();
    sub_219BE5314("Attempting to continue reading with news activity (%{public}@) yielded this result : %{public}@", 95, 2, &dword_2186C1000, v38, v41, v39);
    LOBYTE(a1) = v43;
  }

  else
  {
    v18 = v9;
    v19 = sub_219BE91A4();
    if (qword_280E8D8F0 != -1)
    {
      swift_once();
    }

    v20 = qword_280F617A8;
    sub_2186E7D5C(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_219C09EC0;
    *&v53[0] = 0;
    *(&v53[0] + 1) = 0xE000000000000000;
    *&v51[0] = v9;
    BYTE8(v51[0]) = 0;
    sub_219BF7484();
    v22 = v53[0];
    v23 = MEMORY[0x277D837D0];
    *(v21 + 56) = MEMORY[0x277D837D0];
    v24 = sub_2186FC3BC();
    *(v21 + 64) = v24;
    *(v21 + 32) = v22;
    if (v19)
    {
      v25 = 1702195828;
    }

    else
    {
      v25 = 0x65736C6166;
    }

    if (v19)
    {
      v26 = 0xE400000000000000;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

    *&v53[0] = 0;
    *(&v53[0] + 1) = 0xE000000000000000;
    MEMORY[0x21CECC330](v25, v26);

    v27 = v53[0];
    *(v21 + 96) = v23;
    *(v21 + 104) = v24;
    *(v21 + 72) = v27;
    v28 = sub_219BF6214();
    sub_219BE5314("Attempting to continue reading with user activity (%{public}@) yielded this result : %{public}@", 95, 2, &dword_2186C1000, v20, v28, v21);
  }

  sub_218A57FB4(v9, a1);
}

uint64_t sub_219A745D8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_219A74AF0(v0 + OBJC_IVAR____TtC7NewsUI225ContinueReadingInteractor_exposureData, qword_280EA39A8, type metadata accessor for ContinueReadingPromptExposureData);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContinueReadingInteractor(uint64_t a1)
{
  result = qword_280EBF2B8;
  if (!qword_280EBF2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219A746D4(uint64_t a1)
{
  sub_219A74800(319, qword_280EA39A8, type metadata accessor for ContinueReadingPromptExposureData);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_219A7479C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinueReadingPromptExposureData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219A74800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_219A74854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinueReadingPromptExposureData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A748B8(uint64_t a1)
{
  v3 = *(type metadata accessor for ContinueReadingPromptExposureData(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_218F65878(a1, v4, v5);
}

uint64_t sub_219A74948(uint64_t a1)
{
  v2 = type metadata accessor for ContinueReadingPromptExposureData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219A749A4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_219A74800(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_219A74A10(void *a1)
{
  sub_219A74800(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_219A74AF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219A74800(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219A74B70()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219A74C38()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219A74D00()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219A74DC4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219A74E84(uint64_t a1, uint64_t a2)
{
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD00000000000002ALL, 0x8000000219D48200);
  v3 = sub_218731D50();
  v4 = MEMORY[0x21CECC6D0](a1, v3);
  MEMORY[0x21CECC330](v4);

  v5.n128_f64[0] = MEMORY[0x21CECC330](0xD000000000000016, 0x8000000219D48230);
  sub_219A74F8C(0, v5);

  v6 = sub_219BF5484();
  MEMORY[0x21CECC330](v6);

  MEMORY[0x21CECC330](10506, 0xE200000000000000);
  return 0;
}

void sub_219A74F8C(uint64_t a1, __n128 a2)
{
  if (!qword_280E912C8)
  {
    sub_219BEF864();
    v2 = sub_219BF6FB4();
    if (!v3)
    {
      atomic_store(v2, &qword_280E912C8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_5TeaUI24MastheadViewProviderType_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_219A75008(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_219A75050(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_219A750E4(void *a1)
{
  sub_219A75B44(0, &qword_280E8C358, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A75A30();
  sub_219BF7B44();
  v9[15] = 0;
  sub_2186E3594(0);
  sub_219A75BA8(&unk_280E92000, sub_2186E3594, MEMORY[0x277D31E78]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for FeaturedArticleMagazineFeedGroup(0);
    v9[14] = 1;
    sub_219BED8D4();
    sub_219A75BA8(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219A752F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v26 = sub_219BED8D4();
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3594(0);
  v29 = v6;
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v27 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A75B44(0, &qword_280E8CA58, MEMORY[0x277D844C8]);
  v30 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for FeaturedArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A75A30();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v11;
  v14 = v13;
  v16 = v25;
  v15 = v26;
  v32 = 0;
  sub_219A75BA8(&qword_280E91FF8, sub_2186E3594, MEMORY[0x277D31E80]);
  v17 = v27;
  sub_219BF7734();
  v18 = *(v16 + 32);
  v21 = v14;
  v18(v14, v17, v29);
  v31 = 1;
  sub_219A75BA8(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
  sub_219BF7734();
  (*(v28 + 8))(v10, v30);
  v19 = v21;
  (*(v23 + 32))(v21 + *(v22 + 20), v5, v15);
  sub_219A75A84(v19, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_219A75AE8(v19);
}

uint64_t sub_219A75724(uint64_t a1)
{
  v2 = sub_219A75A30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A75760(uint64_t a1)
{
  v2 = sub_219A75A30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219A757CC(uint64_t a1)
{
  v2 = sub_219A75BA8(&qword_280EA6AE8, type metadata accessor for FeaturedArticleMagazineFeedGroup, &unk_219CC5218);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219A75854(void *a1)
{
  a1[1] = sub_219A75BA8(&qword_280EA6AE8, type metadata accessor for FeaturedArticleMagazineFeedGroup, &unk_219CC5218);
  a1[2] = sub_219A75BA8(&qword_280EA6AC0, type metadata accessor for FeaturedArticleMagazineFeedGroup, &unk_219CC51D4);
  result = sub_219A75BA8(&qword_280EA6AD0, type metadata accessor for FeaturedArticleMagazineFeedGroup, &unk_219CC51AC);
  a1[3] = result;
  return result;
}

uint64_t sub_219A759D8(uint64_t a1)
{
  result = sub_219A75BA8(&qword_280EA6AB8, type metadata accessor for FeaturedArticleMagazineFeedGroup, &unk_219CC51FC);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_219A75A30()
{
  result = qword_280EA6B00;
  if (!qword_280EA6B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6B00);
  }

  return result;
}

uint64_t sub_219A75A84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedArticleMagazineFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A75AE8(uint64_t a1)
{
  v2 = type metadata accessor for FeaturedArticleMagazineFeedGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219A75B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A75A30();
    v7 = a3(a1, &type metadata for FeaturedArticleMagazineFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219A75BA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_219A75C04()
{
  result = qword_27CC22E10;
  if (!qword_27CC22E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22E10);
  }

  return result;
}

unint64_t sub_219A75C5C()
{
  result = qword_280EA6AF0;
  if (!qword_280EA6AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6AF0);
  }

  return result;
}

unint64_t sub_219A75CB4()
{
  result = qword_280EA6AF8;
  if (!qword_280EA6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6AF8);
  }

  return result;
}

id sub_219A75E28()
{
  v1 = v0;
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_blueprintViewController];
  [v1 addChildViewController_];
  result = [v1 view];
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

    v17 = [v16 collectionViewLayout];

    [v17 setTs:1 sortItemsLogicallyForAccessibility:?];
    v18 = [v1 traitCollection];
    sub_219A77218();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_219A77350(&qword_27CC22E38, v19, type metadata accessor for MagazineCatalogViewController, &unk_219CC5430);
    sub_219A77350(&unk_27CC22E40, v20, type metadata accessor for MagazineCatalogViewController, &unk_219CC55EC);

    sub_219BEEA54();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI229MagazineCatalogViewControllerC12Presentation33_B69EE4DE9301148398A4C012500D028ELLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_219A762E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void *sub_219A7633C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_219A76378()
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
  v7[4] = sub_219A77350(&qword_280E91000, 255, MEMORY[0x277D32BC8], MEMORY[0x277D32BC0]);
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

void sub_219A766D0()
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
  (*(v5 + 8))(v7, v4);
  sub_219BE8664();
  v8 = sub_219BE7BC4();

  [v8 tu_reloadSectionIndexTitles];
}

void sub_219A768E0(uint64_t a1)
{
  sub_219BE8664();
  v1 = sub_219BE7BC4();

  [v1 reloadData];
}

void sub_219A76958(uint64_t a1, SEL *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_blueprintViewController);

    sub_219BE8664();
    v6 = sub_219BE7BC4();

    [v6 *a2];
  }
}

double sub_219A769F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a3, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v9, v5);
LABEL_3:
    v12 = *(*(v3 + OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v12 + 40))(ObjectType, v12);
    return result;
  }

  if (v10 == *MEMORY[0x277D6E928])
  {
    v14 = *(v3 + OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_eventHandler);
    v15 = (v3 + OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_presentation);
    v16 = *(v3 + OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_presentation + 8);
    if (v16 >= 2)
    {
      v17 = *v15;
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }

    v19 = *(v14 + 40);
    v20 = swift_getObjectType();
    (*(v19 + 32))(v17, v16, v20, v19);

    v21 = *v15;
    v22 = v15[1];
    *v15 = xmmword_219C14A10;
    return sub_2188398B4(v21, v22);
  }

  else
  {
    if (v10 == *MEMORY[0x277D6E948] || v10 == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (v10 != *MEMORY[0x277D6E958])
    {
      if (v10 == *MEMORY[0x277D6E970])
      {
        goto LABEL_3;
      }

      (*(v6 + 8))(v9, v5);
    }
  }

  return result;
}

void sub_219A76C48(uint64_t a1, char a2)
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
    v10[4] = sub_219A77350(&qword_280E91000, 255, MEMORY[0x277D32BC8], MEMORY[0x277D32BC0]);
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

uint64_t sub_219A770B0@<X0>(uint64_t *a2@<X8>)
{
  sub_219BE8664();
  v3 = sub_219BE7BC4();

  *a2 = v3;
  v4 = *MEMORY[0x277D6DA10];
  v5 = sub_219BE74B4();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

void sub_219A77218()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_self();
    v4 = [v3 clearColor];
    [v2 setBackgroundColor_];

    sub_219BE8664();
    v6 = sub_219BE7BC4();

    v5 = [v3 clearColor];
    [v6 setBackgroundColor_];

    [v6 setAlwaysBounceVertical_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219A77350(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219A77464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218718690(*v3 + 16, &v11);
  v10[0] = 0x6D726177657250;
  v10[1] = 0xE700000000000000;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  sub_219A77978(v10, &v9);
  sub_218D95688(0);
  swift_allocObject();
  sub_219A779D4();

  v7 = sub_219BE6E64();
  sub_219A77A28(v10);
  return v7;
}

uint64_t sub_219A77530(uint64_t a1)
{
  refreshed = type metadata accessor for AudioPlaylistFeedRefreshBlueprintModifier(0);
  MEMORY[0x28223BE20](refreshed);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = *v1;
  sub_219A77868(a1, &v12 - v7, type metadata accessor for AudioPlaylistFeedRefreshResult);
  sub_218718690(v9 + 16, &v8[*(refreshed + 20)]);
  sub_219A77868(v8, v5, type metadata accessor for AudioPlaylistFeedRefreshBlueprintModifier);
  sub_218D95688(0);
  swift_allocObject();
  sub_219A778D0(&qword_27CC0D330, type metadata accessor for AudioPlaylistFeedRefreshBlueprintModifier, &unk_219C15BA4);
  v10 = sub_219BE6E64();
  sub_219A77918(v8, type metadata accessor for AudioPlaylistFeedRefreshBlueprintModifier);
  return v10;
}

uint64_t sub_219A776A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioPlaylistFeedDragAndDropBlueprintModifier(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  sub_218B7E48C(0);
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  v11 = *(v4 + 20);
  v12 = sub_219BDC104();
  (*(*(v12 - 8) + 16))(&v9[v11], a2, v12);
  sub_219A77868(v9, v6, type metadata accessor for AudioPlaylistFeedDragAndDropBlueprintModifier);
  sub_218D95688(0);
  swift_allocObject();
  sub_219A778D0(&qword_27CC0E7D0, type metadata accessor for AudioPlaylistFeedDragAndDropBlueprintModifier, &unk_219C1E248);
  v13 = sub_219BE6E64();
  sub_219A77918(v9, type metadata accessor for AudioPlaylistFeedDragAndDropBlueprintModifier);
  return v13;
}

uint64_t sub_219A77868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219A778D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219A77918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219A779D4()
{
  result = qword_27CC22E80;
  if (!qword_27CC22E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22E80);
  }

  return result;
}

uint64_t sub_219A77AA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_219BF1934();
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A77F44(0, &qword_280E8CB48, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A77EF0();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v14;
    v11 = v15;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    (*(v12 + 32))(v11, v16, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219A77CEC(uint64_t a1)
{
  v2 = sub_219A77EF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A77D28(uint64_t a1)
{
  v2 = sub_219A77EF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219A77D7C(void *a1, __n128 a2)
{
  sub_219A77F44(0, &qword_27CC22E88, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A77EF0();
  sub_219BF7B44();
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
  sub_219BF7834();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_219A77EF0()
{
  result = qword_280EACB18[0];
  if (!qword_280EACB18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EACB18);
  }

  return result;
}

void sub_219A77F44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A77EF0();
    v7 = a3(a1, &type metadata for ForYouAudioFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219A77FBC()
{
  result = qword_27CC22E90;
  if (!qword_27CC22E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22E90);
  }

  return result;
}

unint64_t sub_219A78014()
{
  result = qword_280EACB08;
  if (!qword_280EACB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EACB08);
  }

  return result;
}

unint64_t sub_219A7806C()
{
  result = qword_280EACB10;
  if (!qword_280EACB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EACB10);
  }

  return result;
}

uint64_t sub_219A78138(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

unint64_t sub_219A781E8(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!result || (v6 = a5 >> 1, (a5 >> 1) - a4 >= result))
  {
    v6 = a4 + result;
    if (__OFADD__(a4, result))
    {
      goto LABEL_17;
    }
  }

  if (v6 < a4)
  {
    goto LABEL_13;
  }

  if (v5 < a4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      return a2;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_219A78278(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    a3(0);
    return a2;
  }

  return result;
}

double sub_219A78310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_219A78368();
  }

  return result;
}

void sub_219A78368()
{
  v1 = v0;
  v2 = type metadata accessor for OfflineContentRequest.Source(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DE17C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v132 - v6;
  v154 = sub_219BDBD34();
  v8 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v136 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v149 = &v132 - v11;
  v155 = type metadata accessor for OfflineContentRequest(0);
  v145 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v150 = (&v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v152 = &v132 - v14;
  MEMORY[0x28223BE20](v15);
  v135 = &v132 - v16;
  MEMORY[0x28223BE20](v17);
  v144 = &v132 - v18;
  MEMORY[0x28223BE20](v19);
  v151 = &v132 - v20;
  MEMORY[0x28223BE20](v21);
  v153 = &v132 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v132 - v24;
  __swift_project_boxed_opaque_existential_1(v0 + 4, v0[7]);
  v26 = sub_218720294(&unk_282A24C88);
  if (v26 != 6)
  {
    LOBYTE(v30) = v26;
    if (qword_280E8D908 != -1)
    {
      goto LABEL_85;
    }

    goto LABEL_19;
  }

  v143 = v0[3];
  v27 = [v143 sortedIssueIDs];
  v28 = sub_219BF5924();

  v29 = *(v28 + 16);
  v133 = v1;
  v138 = v4;
  if (!v29)
  {

    v32 = MEMORY[0x277D84F90];
LABEL_27:
    LODWORD(v149) = sub_219A7948C(v1);
    v58 = v32[2];
    if (v58)
    {
      v59 = (*(v145 + 80) + 32) & ~*(v145 + 80);
      v60 = MEMORY[0x277D84F90];
      v148 = v32;
      v61 = v32 + v59;
      v62 = *(v145 + 72);
      v63 = (v8 + 48);
      v64 = MEMORY[0x277D84F90];
      while (1)
      {
        v67 = v153;
        sub_2198F30C8(v61, v153);
        sub_2198F30C8(v67, v151);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

        if (EnumCaseMultiPayload <= 1)
        {
          v69 = &unk_280E8F880;
          v70 = "articleID options source ";
        }

        else if (EnumCaseMultiPayload == 2)
        {
          v69 = &qword_280E8F8B0;
          v70 = "issueID options source ";
        }

        else if (EnumCaseMultiPayload == 3)
        {
          v69 = &unk_280E8F8A0;
          v70 = "puzzleID options source ";
        }

        else
        {
          v69 = &unk_280E8F890;
          v70 = "recipeID options source ";
        }

        sub_218950608(0, v69, v70);
        sub_21885F9FC(v151 + *(v71 + 64), v4, type metadata accessor for OfflineContentRequest.Source);
        if ((*v63)(v4, 1, v154) == 1)
        {
          if (v149)
          {
            sub_2198F30C8(v153, v135);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_2191F6708(0, v60[2] + 1, 1, v60);
            }

            v73 = v60[2];
            v72 = v60[3];
            if (v73 >= v72 >> 1)
            {
              v60 = sub_2191F6708((v72 > 1), v73 + 1, 1, v60);
            }

            sub_219242288(v153, type metadata accessor for OfflineContentRequest);
            v60[2] = v73 + 1;
            sub_21885F9FC(v135, v60 + v59 + v73 * v62, type metadata accessor for OfflineContentRequest);
            v4 = v138;
            goto LABEL_31;
          }

          v65 = type metadata accessor for OfflineContentRequest;
          v66 = v153;
        }

        else
        {
          sub_2198F30C8(v153, v144);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_2191F6708(0, v64[2] + 1, 1, v64);
          }

          v75 = v64[2];
          v74 = v64[3];
          if (v75 >= v74 >> 1)
          {
            v64 = sub_2191F6708((v74 > 1), v75 + 1, 1, v64);
          }

          sub_219242288(v153, type metadata accessor for OfflineContentRequest);
          v64[2] = v75 + 1;
          sub_21885F9FC(v144, v64 + v59 + v75 * v62, type metadata accessor for OfflineContentRequest);
          v65 = type metadata accessor for OfflineContentRequest.Source;
          v4 = v138;
          v66 = v138;
        }

        sub_219242288(v66, v65);
LABEL_31:
        v61 += v62;
        if (!--v58)
        {

          v76 = v60;
          goto LABEL_53;
        }
      }
    }

    v76 = MEMORY[0x277D84F90];
    v64 = MEMORY[0x277D84F90];
LABEL_53:
    swift_getObjectType();
    swift_getKeyPath();
    v77 = sub_219BF6A94();

    v78 = v64[2];
    v79 = __OFSUB__(v77, v78);
    v80 = v77 - v78;
    if (v80 < 0 != v79)
    {
      v81 = 0;
    }

    else
    {
      v81 = v80;
    }

    if (v81 < *(v76 + 16))
    {
      v82 = MEMORY[0x277D83B88];
      if (qword_280E8D908 != -1)
      {
        swift_once();
      }

      sub_2186DE17C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_219C09EC0;
      v84 = *(v76 + 16);
      v85 = MEMORY[0x277D83C10];
      *(v83 + 56) = v82;
      *(v83 + 64) = v85;
      *(v83 + 32) = v84;
      *(v83 + 96) = v82;
      *(v83 + 104) = v85;
      *(v83 + 72) = v81;
      sub_219BF6214();
      sub_219BE5314("IssueListOfflineContentContributor: will cap the number of auto-download requests from %lu to %lu", v132, v133);
    }

    v86 = sub_219A78278(v81, v76, type metadata accessor for OfflineContentRequest);
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v157 = v64;

    sub_2191EF004(v86, v88, v90, v92);
    v93 = v157;
    sub_2186C66AC();
    v153 = sub_219BF6F74();
    sub_2186DE17C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_219C09EC0;
    v157 = *(v93 + 16);
    v95 = v157;
    v96 = sub_219BF7894();
    v98 = v97;
    *(v94 + 56) = MEMORY[0x277D837D0];
    v99 = sub_2186FC3BC();
    v100 = v99;
    *(v94 + 64) = v99;
    *(v94 + 32) = v96;
    *(v94 + 40) = v98;
    v157 = 0;
    v158 = 0xE000000000000000;
    v154 = v93;
    if (!v95)
    {

      v102 = MEMORY[0x277D84F90];
LABEL_77:
      v121 = MEMORY[0x277D837D0];
      v122 = MEMORY[0x21CECC6D0](v102, MEMORY[0x277D837D0]);
      v124 = v123;

      MEMORY[0x21CECC330](v122, v124);

      v125 = v157;
      v126 = v158;
      *(v94 + 96) = v121;
      *(v94 + 104) = v100;
      *(v94 + 72) = v125;
      *(v94 + 80) = v126;
      v127 = sub_219BF6214();
      v128 = v153;
      sub_219BE5314("IssueListOfflineContentContributor: is contributing %{public}@ issues: %{public}@", 81, 2, &dword_2186C1000, v153, v127, v94);

      v157 = v154;
      sub_218950530();
      sub_219BE21B4();

      return;
    }

    v149 = v99;
    v151 = v76;
    v156 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v95, 0);
    v101 = v93 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
    v102 = v156;
    v103 = *(v145 + 72);
    while (1)
    {
      v104 = v152;
      sub_2198F30C8(v101, v152);
      v105 = v150;
      sub_2198F30C8(v104, v150);
      v106 = swift_getEnumCaseMultiPayload();
      v107 = *v105;
      v108 = v105[1];
      if (v106 <= 1)
      {
        if (v106)
        {
          sub_218950608(0, &unk_280E8F880, "articleID options source ");
          v117 = v150 + *(v116 + 64);
          v118 = sub_219BF53D4();

          v119 = NDAudioContentIDFromArticleID();

          v107 = sub_219BF5414();
          v108 = v120;

          v112 = v117;
          goto LABEL_71;
        }

        v109 = &unk_280E8F880;
        v110 = "articleID options source ";
      }

      else if (v106 == 2)
      {
        v109 = &qword_280E8F8B0;
        v110 = "issueID options source ";
      }

      else if (v106 == 3)
      {
        v109 = &unk_280E8F8A0;
        v110 = "puzzleID options source ";
      }

      else
      {
        v109 = &unk_280E8F890;
        v110 = "recipeID options source ";
      }

      sub_218950608(0, v109, v110);
      v112 = v150 + *(v111 + 64);
LABEL_71:
      sub_219242288(v112, type metadata accessor for OfflineContentRequest.Source);
      sub_219242288(v152, type metadata accessor for OfflineContentRequest);
      v156 = v102;
      v114 = *(v102 + 16);
      v113 = *(v102 + 24);
      if (v114 >= v113 >> 1)
      {
        sub_21870B65C((v113 > 1), v114 + 1, 1);
        v102 = v156;
      }

      *(v102 + 16) = v114 + 1;
      v115 = v102 + 16 * v114;
      *(v115 + 32) = v107;
      *(v115 + 40) = v108;
      v101 += v103;
      if (!--v95)
      {

        v100 = v149;
        goto LABEL_77;
      }
    }
  }

  v142 = v7;
  v157 = MEMORY[0x277D84F90];
  v30 = &v157;
  sub_218C340E0(0, v29, 0);
  v31 = 0;
  v137 = (v8 + 32);
  v32 = v157;
  v147 = (v8 + 56);
  v134 = (v8 + 48);
  v132 = v8;
  v139 = (v8 + 8);
  v140 = v29;
  v33 = (v28 + 40);
  v141 = v28;
  v34 = v142;
  while (v31 < *(v28 + 16))
  {
    v148 = v32;
    v35 = *(v33 - 1);
    v36 = *v33;

    v37 = sub_219BF53D4();
    v38 = v143;
    v39 = [v143 sourceForIssueID_];

    v40 = sub_219BF53D4();
    v41 = [v38 dateAddedForIssueID_];

    v146 = v31;
    if (v41)
    {
      v42 = v136;
      sub_219BDBCA4();

      v43 = *v137;
      v44 = v154;
      (*v137)(v34, v42, v154);
      v45 = *v147;
      (*v147)(v34, 0, 1, v44);
      v43(v149, v34, v44);
    }

    else
    {
      v45 = *v147;
      v46 = v142;
      v47 = v154;
      (*v147)(v142, 1, 1, v154);
      sub_219BDBBB4();
      if ((*v134)(v46, 1, v47) != 1)
      {
        sub_2189DD39C(v46);
      }
    }

    sub_218950608(0, &qword_280E8F8B0, "issueID options source ");
    v49 = *(v48 + 64);
    *v25 = v35;
    *(v25 + 1) = v36;
    if (v39 == 2)
    {
      *(v25 + 2) = 31;
      v50 = v146;
LABEL_13:
      v51 = *v139;

      v30 = v154;
      v51(v149, v154);
      v45(&v25[v49], 1, 1, v30);
      goto LABEL_14;
    }

    *(v25 + 2) = 0;
    v50 = v146;
    if (v39 != 1)
    {
      goto LABEL_13;
    }

    v30 = v154;
    (*v137)(&v25[v49], v149, v154);
    v45(&v25[v49], 0, 1, v30);

LABEL_14:
    swift_storeEnumTagMultiPayload();

    v32 = v148;
    v157 = v148;
    v53 = v148[2];
    v52 = v148[3];
    v28 = v141;
    if (v53 >= v52 >> 1)
    {
      v30 = &v157;
      sub_218C340E0((v52 > 1), v53 + 1, 1);
      v32 = v157;
    }

    v31 = v50 + 1;
    v32[2] = v53 + 1;
    sub_21885F9FC(v25, v32 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v53, type metadata accessor for OfflineContentRequest);
    v33 += 2;
    if (v140 == v31)
    {

      v1 = v133;
      v4 = v138;
      v8 = v132;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_85:
  swift_once();
LABEL_19:
  v54 = qword_280F617B8;
  sub_2186DE17C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_219C09BA0;
  if (v30 > 2u)
  {
    if (v30 == 3)
    {
      v57 = 0xD000000000000012;
      v129 = "disabledInSettings";
      goto LABEL_81;
    }

    if (v30 == 4)
    {
      v56 = 0x8000000219CD71D0;
      v57 = 0xD000000000000019;
    }

    else
    {
      v56 = 0x8000000219CD71F0;
      v57 = 0xD000000000000013;
    }
  }

  else if (v30)
  {
    if (v30 == 1)
    {
      v56 = 0xED00006465626972;
      v57 = 0x6373627553746F6ELL;
      goto LABEL_83;
    }

    v57 = 0xD000000000000012;
    v129 = "featureUnavailable";
LABEL_81:
    v56 = (v129 - 32) | 0x8000000000000000;
  }

  else
  {
    v56 = 0xE700000000000000;
    v57 = 0x6E776F6E6B6E75;
  }

LABEL_83:
  *(v55 + 56) = MEMORY[0x277D837D0];
  v130 = v55;
  *(v55 + 64) = sub_2186FC3BC();
  *(v130 + 32) = v57;
  *(v130 + 40) = v56;
  v131 = sub_219BF6214();
  sub_219BE5314("IssueListOfflineContentContributor: will not contribute because issue downloads are disabled, reason=%{public}@", 111, 2, &dword_2186C1000, v54, v131, v130);

  v157 = MEMORY[0x277D84F90];
  sub_218950530();
  sub_219BE21B4();
}

BOOL sub_219A7948C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v1 = off_282A442B8;
  type metadata accessor for OfflineFeatures();
  v2 = v1(15);
  v3 = v2;
  if (v2 != 6)
  {
    v4 = v2;
    if (qword_280E8D908 != -1)
    {
      swift_once();
    }

    v5 = qword_280F617B8;
    sub_2186DE17C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_219C09BA0;
    if (v4 > 2u)
    {
      if (v4 != 3)
      {
        if (v4 == 4)
        {
          v7 = 0x8000000219CD71D0;
          v8 = 0xD000000000000019;
        }

        else
        {
          v7 = 0x8000000219CD71F0;
          v8 = 0xD000000000000013;
        }

        goto LABEL_16;
      }

      v8 = 0xD000000000000012;
      v9 = "disabledInSettings";
    }

    else
    {
      if (!v4)
      {
        v7 = 0xE700000000000000;
        v8 = 0x6E776F6E6B6E75;
        goto LABEL_16;
      }

      if (v4 == 1)
      {
        v7 = 0xED00006465626972;
        v8 = 0x6373627553746F6ELL;
LABEL_16:
        *(v6 + 56) = MEMORY[0x277D837D0];
        v10 = v6;
        *(v6 + 64) = sub_2186FC3BC();
        *(v10 + 32) = v8;
        *(v10 + 40) = v7;
        v11 = sub_219BF6214();
        sub_219BE5314("IssueListOfflineContentContributor: will not contribute auto-downloads because the feature is disabled, reason=%{public}@", 121, 2, &dword_2186C1000, v5, v11, v10);

        return v3 == 6;
      }

      v8 = 0xD000000000000012;
      v9 = "featureUnavailable";
    }

    v7 = (v9 - 32) | 0x8000000000000000;
    goto LABEL_16;
  }

  return v3 == 6;
}

uint64_t type metadata accessor for SavedFeedRefreshResult(uint64_t a1)
{
  result = qword_280EC6D98;
  if (!qword_280EC6D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PuzzleStreakCheckNotificationCoordinator.performBackgroundFetch()(uint64_t a1)
{
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61750;
  v2 = sub_219BF6214();
  sub_219BE5314("PuzzleStreakCheckNotificationCoordinator: woken up by system to perform background tasks.", 89, 2, &dword_2186C1000, v1, v2, MEMORY[0x277D84F90]);
  sub_219A7C274(0, &qword_280EE6BB0, MEMORY[0x277D6CD60], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_219A798BC(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_219BE2874();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(a5 + 184) puzzleNotificationsEnabled])
  {
    sub_21879D924();
    v13 = swift_allocObject();
    v13[2] = a5;
    v13[3] = a1;
    v13[4] = a2;

    sub_219BE2F54();
  }

  else
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    v14 = qword_280F61750;
    v15 = sub_219BF6214();
    v16 = sub_219BE5314("Did not schedule local notifications for puzzle streaks. User has disabled puzzle notifications switch", 102, 2, &dword_2186C1000, v14, v15, MEMORY[0x277D84F90]);
    (*(v9 + 104))(v12, *MEMORY[0x277D6CD50], v8, v16);
    a1(v12);
    (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_219A79AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = sub_219BF15B4();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  sub_219A7C274(0, &qword_27CC1B138, MEMORY[0x277D333D8], MEMORY[0x277D83D88]);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v6 = sub_219BF3464();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_219BF2B94();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v8 = sub_219BE2874();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v9 = sub_219BF2934();
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  v10 = sub_219BF1D54();
  v4[23] = v10;
  v4[24] = *(v10 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219A79DC8, 0, 0);
}

uint64_t sub_219A79DC8()
{
  v1 = *(v0 + 16);
  v3 = v1[5];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  *v4 = v0;
  v4[1] = sub_219A79E84;

  return MEMORY[0x282192A48](v3, v2);
}

uint64_t sub_219A79E84()
{

  return MEMORY[0x2822009F8](sub_219A79F80, 0, 0);
}

uint64_t sub_219A79F80()
{
  v0[27] = *(v0[2] + 176);
  ObjectType = swift_getObjectType();
  v0[28] = ObjectType;
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_219A7A034;

  return MEMORY[0x282193DF0](0, ObjectType);
}

uint64_t sub_219A7A034(uint64_t a1)
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
    *(v4 + 240) = a1;

    return MEMORY[0x2822009F8](sub_219A7A1FC, 0, 0);
  }
}

uint64_t sub_219A7A1FC()
{
  v1 = [*(v0 + 240) puzzlesConfig];
  swift_unknownObjectRelease();
  v2 = [v1 puzzleTypes];

  *(v0 + 248) = sub_219BF5924();
  v3 = swift_task_alloc();
  *(v0 + 256) = v3;
  *v3 = v0;
  v3[1] = sub_219A7A2F4;
  v4 = *(v0 + 224);

  return MEMORY[0x282193DF0](0, v4);
}

uint64_t sub_219A7A2F4(uint64_t a1)
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
    *(v4 + 264) = a1;

    return MEMORY[0x2822009F8](sub_219A7A4C4, 0, 0);
  }
}

uint64_t sub_219A7A4C4()
{
  v1 = [*(v0 + 264) puzzlesConfig];
  swift_unknownObjectRelease();
  v2 = [v1 puzzleHubTagID];

  if (v2)
  {
    v3 = sub_219BF5414();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v0 + 272) = v3;
  *(v0 + 280) = v5;
  v6 = *(v0 + 16);
  v7 = v6[10];
  v8 = v6[11];
  __swift_project_boxed_opaque_existential_1(v6 + 7, v7);
  v9 = swift_task_alloc();
  *(v0 + 288) = v9;
  *v9 = v0;
  v9[1] = sub_219A7A5F4;
  v10 = *(v0 + 248);

  return MEMORY[0x282192240](v10, v7, v8);
}

uint64_t sub_219A7A5F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 296) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_219A7A7E0, 0, 0);
  }
}

uint64_t sub_219A7A7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 296);
  v7 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
    v8 = sub_219BF7214();
    v6 = *(v5 + 296);
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v5 + 304) = v7;
  *(v5 + 312) = v8;
  v9 = *MEMORY[0x277D33A18];
  *(v5 + 376) = v9;
  v10 = MEMORY[0x277D33AF8];
  *(v5 + 380) = *MEMORY[0x277D33DE0];
  *(v5 + 384) = *v10;
  *(v5 + 320) = MEMORY[0x277D84F90];
  if (v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x21CECE0F0](0);
      v9 = *(v5 + 376);
    }

    else
    {
      if (!*(v7 + 16))
      {
        __break(1u);
        return MEMORY[0x282192A38](v8, v6, a3, a4, a5);
      }

      v11 = *(v6 + 32);
      swift_unknownObjectRetain();
    }

    *(v5 + 328) = v11;
    *(v5 + 336) = 1;
    v13 = *(v5 + 168);
    v12 = *(v5 + 176);
    v14 = *(v5 + 160);
    v15 = *(v5 + 16);
    v16 = v15[5];
    v17 = v15[6];
    __swift_project_boxed_opaque_existential_1(v15 + 2, v16);
    (*(v13 + 104))(v12, v9, v14);
    v18 = swift_task_alloc();
    *(v5 + 344) = v18;
    *v18 = v5;
    v18[1] = sub_219A7AAE8;
    v8 = *(v5 + 200);
    v6 = *(v5 + 176);
    a3 = v11;
    a4 = v16;
    a5 = v17;

    return MEMORY[0x282192A38](v8, v6, a3, a4, a5);
  }

  v20 = *(v5 + 272);
  v19 = *(v5 + 280);
  v22 = *(v5 + 144);
  v21 = *(v5 + 152);
  v23 = *(v5 + 136);
  v24 = *(v5 + 24);
  v25 = *(v5 + 16);

  __swift_project_boxed_opaque_existential_1((v25 + 136), *(v25 + 160));
  v26.value._countAndFlagsBits = v20;
  v26.value._object = v19;
  PuzzleStreakLocalNotificationScheduler.scheduleCombinedNotification(for:puzzleHubTagID:)(MEMORY[0x277D84F90], v26);

  (*(v22 + 104))(v21, *MEMORY[0x277D6CD58], v23);
  v24(v21);
  (*(v22 + 8))(v21, v23);

  v27 = *(v5 + 8);

  return v27();
}

uint64_t sub_219A7AAE8()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  (*(v2[21] + 8))(v2[22], v2[20]);
  if (v0)
  {

    v3 = sub_219A7B758;
  }

  else
  {
    v3 = sub_219A7AC58;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_219A7AC58(uint64_t a1)
{
  v2 = *(v1 + 380);
  v4 = *(v1 + 88);
  v3 = *(v1 + 96);
  v5 = *(v1 + 80);
  sub_219BF1D44();
  if ((*(v4 + 88))(v3, v5) != v2)
  {
    v30 = *(v1 + 88);
    v29 = *(v1 + 96);
    v31 = *(v1 + 80);
    (*(*(v1 + 192) + 8))(*(v1 + 200), *(v1 + 184));
    swift_unknownObjectRelease();
    v25 = (*(v30 + 8))(v29, v31);
    goto LABEL_7;
  }

  v6 = *(v1 + 384);
  v7 = *(v1 + 120);
  v8 = *(v1 + 128);
  v9 = *(v1 + 104);
  v10 = *(v1 + 112);
  v11 = *(v1 + 96);
  (*(*(v1 + 88) + 96))(v11, *(v1 + 80));
  (*(v10 + 32))(v8, v11, v9);
  (*(v10 + 16))(v7, v8, v9);
  if ((*(v10 + 88))(v7, v9) != v6)
  {
    v33 = *(v1 + 192);
    v32 = *(v1 + 200);
    v34 = *(v1 + 184);
    v36 = *(v1 + 120);
    v35 = *(v1 + 128);
    v37 = *(v1 + 104);
    v38 = *(v1 + 112);
    swift_unknownObjectRelease();
    v39 = *(v38 + 8);
    v39(v35, v37);
    (*(v33 + 8))(v32, v34);
    v25 = (v39)(v36, v37);
LABEL_7:
    v40 = *(v1 + 336);
    if (v40 == *(v1 + 312))
    {
      v41._rawValue = *(v1 + 320);
      v43 = *(v1 + 272);
      v42 = *(v1 + 280);
      v45 = *(v1 + 144);
      v44 = *(v1 + 152);
      v46 = *(v1 + 136);
      v47 = *(v1 + 24);
      v48 = *(v1 + 16);

      __swift_project_boxed_opaque_existential_1((v48 + 136), *(v48 + 160));
      v49.value._countAndFlagsBits = v43;
      v49.value._object = v42;
      PuzzleStreakLocalNotificationScheduler.scheduleCombinedNotification(for:puzzleHubTagID:)(v41, v49);

      (*(v45 + 104))(v44, *MEMORY[0x277D6CD58], v46);
      v47(v44);
      (*(v45 + 8))(v44, v46);

      v50 = *(v1 + 8);

      return v50();
    }

    v52 = *(v1 + 296);
    if ((v52 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x21CECE0F0](*(v1 + 336));
      v53 = v25;
    }

    else
    {
      if (v40 >= *(*(v1 + 304) + 16))
      {
        goto LABEL_23;
      }

      v53 = *(v52 + 8 * v40 + 32);
      v25 = swift_unknownObjectRetain();
    }

    *(v1 + 328) = v53;
    *(v1 + 336) = v40 + 1;
    if (!__OFADD__(v40, 1))
    {
      v54 = *(v1 + 376);
      v56 = *(v1 + 168);
      v55 = *(v1 + 176);
      v57 = *(v1 + 160);
      v58 = *(v1 + 16);
      v59 = v58[5];
      v60 = v58[6];
      __swift_project_boxed_opaque_existential_1(v58 + 2, v59);
      (*(v56 + 104))(v55, v54, v57);
      v61 = swift_task_alloc();
      *(v1 + 344) = v61;
      *v61 = v1;
      v61[1] = sub_219A7AAE8;
      v25 = *(v1 + 200);
      v52 = *(v1 + 176);
      v26 = v53;
      v27 = v59;
      v28 = v60;

      return MEMORY[0x282192A38](v25, v52, v26, v27, v28);
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return MEMORY[0x282192A38](v25, v52, v26, v27, v28);
  }

  v12 = *(v1 + 120);
  v14 = *(v1 + 64);
  v13 = *(v1 + 72);
  v15 = *(v1 + 40);
  v16 = *(v1 + 48);
  (*(*(v1 + 112) + 96))(v12, *(v1 + 104));
  sub_219A7C2D8(v12, v13);
  sub_219A7C36C(v13, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v18 = *(v1 + 192);
    v17 = *(v1 + 200);
    v19 = *(v1 + 184);
    v20 = *(v1 + 128);
    v21 = *(v1 + 104);
    v22 = *(v1 + 112);
    v24 = *(v1 + 64);
    v23 = *(v1 + 72);
    swift_unknownObjectRelease();
    sub_219A7C400(v23);
    (*(v22 + 8))(v20, v21);
    (*(v18 + 8))(v17, v19);
    v25 = sub_219A7C400(v24);
    goto LABEL_7;
  }

  (*(*(v1 + 48) + 32))(*(v1 + 56), *(v1 + 64), *(v1 + 40));
  v62 = swift_task_alloc();
  *(v1 + 360) = v62;
  *v62 = v1;
  v62[1] = sub_219A7B1D8;
  v63 = *(v1 + 328);
  v64 = *(v1 + 56);

  return sub_219A7B990(v64, v63);
}

uint64_t sub_219A7B1D8(char a1)
{
  v4 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {

    v5 = sub_219A7B83C;
  }

  else
  {
    *(v4 + 388) = a1 & 1;
    v5 = sub_219A7B320;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_219A7B320()
{
  if (*(v0 + 388))
  {
    v48 = sub_219BF1594();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 320);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_2191FBFB8(0, v2[2] + 1, 1, *(v0 + 320));
    }

    v4 = v2[2];
    v3 = v2[3];
    if (v4 >= v3 >> 1)
    {
      v2 = sub_2191FBFB8((v3 > 1), v4 + 1, 1, v2);
    }

    v47 = *(v0 + 328);
    v5 = *(v0 + 192);
    v6 = *(v0 + 200);
    v7 = *(v0 + 184);
    v8 = *(v0 + 128);
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v11 = *(v0 + 72);
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
    sub_219A7C400(v11);
    (*(v9 + 8))(v8, v10);
    v12 = (*(v5 + 8))(v6, v7);
    v2[2] = v4 + 1;
    v16 = &v2[2 * v4];
    v16[4] = v47;
    v16[5] = v48;
  }

  else
  {
    v17 = *(v0 + 192);
    v49 = *(v0 + 200);
    v18 = *(v0 + 184);
    v19 = *(v0 + 128);
    v20 = *(v0 + 104);
    v21 = *(v0 + 112);
    v22 = *(v0 + 72);
    v23 = *(v0 + 48);
    v24 = *(v0 + 56);
    v25 = *(v0 + 40);
    swift_unknownObjectRelease();
    (*(v23 + 8))(v24, v25);
    sub_219A7C400(v22);
    (*(v21 + 8))(v19, v20);
    v12 = (*(v17 + 8))(v49, v18);
    v2 = *(v0 + 320);
  }

  v26 = *(v0 + 336);
  *(v0 + 320) = v2;
  v27 = *(v0 + 296);
  if (v26 != *(v0 + 312))
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CECE0F0](v26);
      v38 = v12;
    }

    else
    {
      if (v26 >= *(*(v0 + 304) + 16))
      {
        goto LABEL_21;
      }

      v38 = *(v27 + 8 * v26 + 32);
      v12 = swift_unknownObjectRetain();
    }

    *(v0 + 328) = v38;
    *(v0 + 336) = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      v39 = *(v0 + 376);
      v41 = *(v0 + 168);
      v40 = *(v0 + 176);
      v42 = *(v0 + 160);
      v43 = *(v0 + 16);
      v44 = v43[5];
      v45 = v43[6];
      __swift_project_boxed_opaque_existential_1(v43 + 2, v44);
      (*(v41 + 104))(v40, v39, v42);
      v46 = swift_task_alloc();
      *(v0 + 344) = v46;
      *v46 = v0;
      v46[1] = sub_219A7AAE8;
      v12 = *(v0 + 200);
      v27 = *(v0 + 176);
      v13 = v38;
      v14 = v44;
      v15 = v45;

      return MEMORY[0x282192A38](v12, v27, v13, v14, v15);
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return MEMORY[0x282192A38](v12, v27, v13, v14, v15);
  }

  v29 = *(v0 + 272);
  v28 = *(v0 + 280);
  v30 = *(v0 + 144);
  v31 = *(v0 + 152);
  v32 = *(v0 + 136);
  v33 = *(v0 + 24);
  v34 = *(v0 + 16);

  __swift_project_boxed_opaque_existential_1((v34 + 136), *(v34 + 160));
  v35.value._countAndFlagsBits = v29;
  v35.value._object = v28;
  PuzzleStreakLocalNotificationScheduler.scheduleCombinedNotification(for:puzzleHubTagID:)(v2, v35);

  (*(v30 + 104))(v31, *MEMORY[0x277D6CD58], v32);
  v33(v31);
  (*(v30 + 8))(v31, v32);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_219A7B758()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219A7B83C()
{
  v1 = v0[24];
  v12 = v0[25];
  v2 = v0[23];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[5];
  swift_unknownObjectRelease();
  (*(v7 + 8))(v8, v9);
  sub_219A7C400(v6);
  (*(v5 + 8))(v3, v4);
  (*(v1 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_219A7B990(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_219A7B9B4, 0, 0);
}

uint64_t sub_219A7B9B4()
{
  v1 = v0[4];
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_219A7BA74;
  v5 = v0[3];

  return MEMORY[0x282192218](v5, v2, v3);
}

uint64_t sub_219A7BA74(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_219A7BBB8, 0, 0);
  }
}

uint64_t sub_219A7BBB8()
{
  v1 = *(v0[6] + 16);
  v0[7] = v1;
  if (v1)
  {
    v0[8] = sub_219BF1594();
    ObjectType = swift_getObjectType();
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_219A7BCBC;

    return MEMORY[0x282193DF0](0, ObjectType);
  }

  else
  {

    v4 = v0[1];

    return v4(0);
  }
}

uint64_t sub_219A7BCBC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 80) = a1;

    return MEMORY[0x2822009F8](sub_219A7BE14, 0, 0);
  }
}

void sub_219A7BE14()
{
  v1 = [*(v0 + 80) puzzlesConfig];
  swift_unknownObjectRelease();
  v2 = [v1 streakLapseNotificationMinimumStreakCount];

  if ((sub_219BF15A4() & 1) != 0 && *(v0 + 64) >= v2)
  {
    v3 = 0;
    v4 = *(v0 + 32);
    v5 = *(v0 + 48) + 40;
    v6 = 1;
    while (1)
    {
      if (v3 >= *(*(v0 + 48) + 16))
      {
        __break(1u);
        return;
      }

      __swift_project_boxed_opaque_existential_1((v4 + 96), *(v4 + 120));

      if (sub_219BF3414())
      {

        break;
      }

      __swift_project_boxed_opaque_existential_1((v4 + 96), *(v4 + 120));
      v7 = sub_219BF3424();

      if (v7)
      {
        v8 = [v7 usedReveal];
        if (v8)
        {
          v9 = v8;
          v10 = [v8 BOOLValue];

          v6 &= v10;
          goto LABEL_6;
        }
      }

      v6 = 0;
LABEL_6:
      ++v3;
      v5 += 16;
      if (v3 == *(v0 + 56))
      {

        v11 = v6 ^ 1;
        goto LABEL_15;
      }
    }
  }

  v11 = 0;
LABEL_15:
  v12 = *(v0 + 8);

  v12(v11 & 1);
}

uint64_t PuzzleStreakCheckNotificationCoordinator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t PuzzleStreakCheckNotificationCoordinator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219A7C0BC(uint64_t a1)
{
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61750;
  v2 = sub_219BF6214();
  sub_219BE5314("PuzzleStreakCheckNotificationCoordinator: woken up by system to perform background tasks.", 89, 2, &dword_2186C1000, v1, v2, MEMORY[0x277D84F90]);
  sub_219A7C274(0, &qword_280EE6BB0, MEMORY[0x277D6CD60], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_219A7C1C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_219A79AC4(a1, v4, v5, v6);
}

void sub_219A7C274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219A7C2D8(uint64_t a1, uint64_t a2)
{
  sub_219A7C274(0, &qword_27CC1B138, MEMORY[0x277D333D8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A7C36C(uint64_t a1, uint64_t a2)
{
  sub_219A7C274(0, &qword_27CC1B138, MEMORY[0x277D333D8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A7C400(uint64_t a1)
{
  sub_219A7C274(0, &qword_27CC1B138, MEMORY[0x277D333D8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219A7C490(uint64_t *a1, void *a2, void *a3, char a4)
{
  v6 = *a1;
  v7 = a2[10];
  v8 = a2[11];
  __swift_project_boxed_opaque_existential_1(a2 + 7, v7);
  v9 = (*(v8 + 8))(v6, nullsub_1, 0, v7, v8);
  [a3 presentViewController:v9 animated:a4 & 1 completion:0];
}

uint64_t sub_219A7C568(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  __swift_project_boxed_opaque_existential_1((*v4 + 16), *(*v4 + 40));
  sub_219BDE774();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_219BDDD04();
  v7 = sub_219BE1C44();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = a3;
  sub_219BE2F94();

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_219A7C700()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if ([*(Strong + OBJC_IVAR____TtC7NewsUI226RecipeBoxSearchStartupTask_featureAvailability) useFood])
    {
      v0[7] = *(v2 + OBJC_IVAR____TtC7NewsUI226RecipeBoxSearchStartupTask_recipeBoxSearchDatabase);
      v3 = (v2 + OBJC_IVAR____TtC7NewsUI226RecipeBoxSearchStartupTask_recipeBox);
      v4 = *(v2 + OBJC_IVAR____TtC7NewsUI226RecipeBoxSearchStartupTask_recipeBox + 24);
      v5 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v4);
      swift_unknownObjectRetain();
      v6 = swift_task_alloc();
      v0[8] = v6;
      *v6 = v0;
      v6[1] = sub_219A7C924;

      return MEMORY[0x28218EA38](v4, v5);
    }

    if (qword_280EE5F38 != -1)
    {
      swift_once();
    }

    v7 = sub_219BE5434();
    __swift_project_value_buffer(v7, qword_280F62568);
    v8 = sub_219BE5414();
    v9 = sub_219BF6214();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2186C1000, v8, v9, "RecipeBoxSearchStartupTask will not run when food feature is disabled", v10, 2u);
      MEMORY[0x21CECF960](v10, -1, -1);
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_219A7C924(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[9] = a1;
  v4[10] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_219A7CC70, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[11] = v6;
    *v6 = v5;
    v6[1] = sub_219A7CAA8;

    return sub_21976AAA0(a1);
  }
}

uint64_t sub_219A7CAA8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {

    swift_unknownObjectRelease();
    v2 = sub_219A7CC0C;
  }

  else
  {
    swift_unknownObjectRelease();

    v2 = sub_21936A5F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219A7CC0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219A7CC70()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void sub_219A7CCDC(void *a1)
{
  if (qword_280EE5F38 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62568);
  v3 = a1;
  oslog = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2186C1000, oslog, v4, "RecipeBoxSearchStartupTask failed to refresh RecipeBoxSearchDatabase with error=%{public}@", v5, 0xCu);
    sub_218962D30(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }
}

uint64_t sub_219A7CE28()
{
  v1 = OBJC_IVAR____TtC7NewsUI226RecipeBoxSearchStartupTask_executionPhase;
  v2 = sub_219BE2C14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI226RecipeBoxSearchStartupTask_recipeBox));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219A7CEFC()
{
  sub_21879D924();
  swift_allocObject();
  swift_weakInit();
  sub_219BE2F54();
  v0 = sub_219BE2E54();
  v1 = sub_219BE2FD4();

  return v1;
}

uint64_t sub_219A7CFAC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187608D4;

  return sub_219A7C6E0(a1, v1);
}

uint64_t sub_219A7D080(void *a1)
{
  sub_219A7D990(0, &qword_280E8C5D0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A7D87C();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BED8D4();
  sub_219A7D9F4(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for CuratedAudioFeedGroup(0);
    v9[14] = 1;
    sub_219BF77F4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219A7D24C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_219BED8D4();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A7D990(0, &qword_27CC22E98, MEMORY[0x277D844C8]);
  v28 = v7;
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for CuratedAudioFeedGroup(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A7D87C();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v12;
  v13 = v25;
  v14 = v26;
  v30 = 0;
  sub_219A7D9F4(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
  v15 = v27;
  sub_219BF7734();
  (*(v14 + 32))(v23, v6, v15);
  v29 = 1;
  v16 = sub_219BF76F4();
  v18 = v17;
  (*(v13 + 8))(v9, v28);
  v20 = v23;
  v19 = v24;
  v21 = &v23[*(v10 + 20)];
  *v21 = v16;
  v21[1] = v18;
  sub_219A7D8D0(v20, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_219A7D934(v20);
}

uint64_t sub_219A7D58C(uint64_t a1)
{
  v2 = sub_219A7D87C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A7D5C8(uint64_t a1)
{
  v2 = sub_219A7D87C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219A7D634(uint64_t a1)
{
  v2 = sub_219A7D9F4(&qword_280ECB830, type metadata accessor for CuratedAudioFeedGroup, &unk_219CC5DAC);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219A7D6A0(void *a1)
{
  a1[1] = sub_219A7D9F4(&qword_280ECB830, type metadata accessor for CuratedAudioFeedGroup, &unk_219CC5DAC);
  a1[2] = sub_219A7D9F4(&qword_280ECB808, type metadata accessor for CuratedAudioFeedGroup, &unk_219CC5D68);
  result = sub_219A7D9F4(&qword_280ECB818, type metadata accessor for CuratedAudioFeedGroup, &unk_219CC5D40);
  a1[3] = result;
  return result;
}

uint64_t sub_219A7D824(uint64_t a1)
{
  result = sub_219A7D9F4(&qword_280ECB800, type metadata accessor for CuratedAudioFeedGroup, &unk_219CC5D90);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_219A7D87C()
{
  result = qword_280ECB848[0];
  if (!qword_280ECB848[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECB848);
  }

  return result;
}

uint64_t sub_219A7D8D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedAudioFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A7D934(uint64_t a1)
{
  v2 = type metadata accessor for CuratedAudioFeedGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219A7D990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A7D87C();
    v7 = a3(a1, &type metadata for CuratedAudioFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219A7D9F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_219A7DA50()
{
  result = qword_27CC22EA0;
  if (!qword_27CC22EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22EA0);
  }

  return result;
}

unint64_t sub_219A7DAA8()
{
  result = qword_280ECB838;
  if (!qword_280ECB838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECB838);
  }

  return result;
}

unint64_t sub_219A7DB00()
{
  result = qword_280ECB840;
  if (!qword_280ECB840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECB840);
  }

  return result;
}

uint64_t sub_219A7DB54(void *a1, uint64_t a2)
{
  sub_219A7E05C(0, &qword_27CC22EB8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A7E008();
  sub_219BF7B44();
  v10[1] = a2;
  sub_218C42690();
  sub_219BF7834();
  return (*(v6 + 8))(v8, v5);
}

void sub_219A7DCC0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000)
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

uint64_t sub_219A7DD44(uint64_t a1)
{
  v2 = sub_219A7E008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A7DD80(uint64_t a1)
{
  v2 = sub_219A7E008();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_219A7DDBC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_219A7DE70(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_219A7DE04()
{
  v1 = sub_21965BADC(*v0);
  MEMORY[0x21CECC330](v1);

  return 0x3D7265746C6966;
}

void *sub_219A7DE70(void *a1)
{
  sub_219A7E05C(0, &qword_27CC22EA8, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A7E008();
  sub_219BF7B34();
  if (!v1)
  {
    sub_218C4263C();
    sub_219BF7734();
    (*(v5 + 8))(v7, v4);
    v8 = v10[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_219A7E008()
{
  result = qword_27CC22EB0;
  if (!qword_27CC22EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22EB0);
  }

  return result;
}

void sub_219A7E05C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A7E008();
    v7 = a3(a1, &type metadata for SportsScoreSortingNotFilter.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219A7E0D4()
{
  result = qword_27CC22EC0;
  if (!qword_27CC22EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22EC0);
  }

  return result;
}

unint64_t sub_219A7E12C()
{
  result = qword_27CC22EC8;
  if (!qword_27CC22EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22EC8);
  }

  return result;
}

unint64_t sub_219A7E184()
{
  result = qword_27CC22ED0;
  if (!qword_27CC22ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22ED0);
  }

  return result;
}

uint64_t sub_219A7E1E8()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_219A7E234(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_219A7E278()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI233BundleSubscriberAdSegmentProvider_subscriptionManager);
  v2 = [v1 cachedSubscription];
  if (objc_getAssociatedObject(v2, v2 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35 = v33;
  v36 = v34;
  if (!*(&v34 + 1))
  {
    sub_218806FD0(&v35);
    goto LABEL_9;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    v5 = 0;
    goto LABEL_10;
  }

  v3 = v31;
  v4 = [v31 integerValue];
  if (v4 == -1)
  {

    goto LABEL_21;
  }

  v5 = v4;
LABEL_10:
  if (objc_getAssociatedObject(v2, ~v5))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35 = v33;
  v36 = v34;
  if (!*(&v34 + 1))
  {
    sub_218806FD0(&v35);
LABEL_18:

    if ((v5 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_21;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v6 = v31;
  v7 = [v6 integerValue];

  if (((v7 ^ v5) & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_21:
  v8 = [v1 cachedSubscription];
  v9 = [v8 bundlePurchaseID];

  if (!v9)
  {
LABEL_33:
    *&v35 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v10 = sub_219BF5414();
  v12 = v11;

  v13 = [v1 cachedSubscription];
  v14 = [v13 isServicesBundleUser];

  if (v14 && (v15 = [v1 cachedSubscription], v16 = objc_msgSend(v15, sel_servicesBundlePurchaseID), v15, v16))
  {
    v17 = sub_219BF5414();
    v19 = v18;

    v20 = 0;
    v32[0] = v12;
    v32[1] = v17;
    v32[2] = v19;
    v21 = MEMORY[0x277D84F90];
LABEL_25:
    v22 = &v32[2 * v20];
    while (++v20 != 3)
    {
      v23 = v22 + 2;
      v24 = *v22;
      v22 += 2;
      if (v24)
      {
        v25 = *(v23 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_218840D24(0, *(v21 + 2) + 1, 1, v21);
        }

        v27 = *(v21 + 2);
        v26 = *(v21 + 3);
        if (v27 >= v26 >> 1)
        {
          v21 = sub_218840D24((v26 > 1), v27 + 1, 1, v21);
        }

        *(v21 + 2) = v27 + 1;
        v28 = &v21[16 * v27];
        *(v28 + 4) = v25;
        *(v28 + 5) = v24;
        goto LABEL_25;
      }
    }

    sub_2186F8778(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    swift_arrayDestroy();
    *&v35 = v21;
  }

  else
  {
    sub_2186F8778(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_219C09BA0;
    *(v29 + 32) = v10;
    *(v29 + 40) = v12;
    *&v35 = v29;
  }

LABEL_36:
  sub_218A15E44(0);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_219A7E758(void *a1)
{
  v1 = a1;

  sub_219BE21B4();
}

uint64_t sub_219A7E7D8(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v34 = a3;
  v35 = a2;
  v33 = sub_219BE6DF4();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191ABA84(0, &qword_27CC0B708, MEMORY[0x277D6DF88]);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  sub_218E49B5C(0);
  MEMORY[0x28223BE20](v10 - 8);
  sub_2191ABA84(0, &qword_27CC0B150, MEMORY[0x277D6EC60]);
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v37 = v4;
  v32 = a1;
  v14 = sub_218F8DE60(sub_219A7F568, v36);
  sub_218953B70(0);
  v16 = v15;
  v17 = sub_218701C74(&qword_27CC12A18, sub_218953B70, MEMORY[0x277D6D720]);
  v18 = sub_218701C74(&qword_27CC12A20, sub_218953B70, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9170](v14, v16, v17, v18);
  type metadata accessor for RecipeBoxSectionDescriptor(0);
  type metadata accessor for RecipeBoxModel(0);
  sub_218701C74(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor, &unk_219C6261C);
  sub_218701C74(&qword_280EDBED0, type metadata accessor for RecipeBoxModel, &unk_219C63468);
  sub_219BEB2D4();
  type metadata accessor for RecipeBoxFeedServiceConfig(0);
  sub_218701C74(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig, &unk_219C60268);
  sub_219BEF3D4();
  sub_219BEEFF4();
  sub_219BEEFE4();
  v19 = sub_219BEEFC4();

  v20 = 0;
  if (v19)
  {
    v20 = sub_219BEDC74();
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v38 = v19;
  v41 = v20;
  v21 = v27;
  sub_219BEB2C4();

  v23 = v30;
  v22 = v31;
  v24 = v33;
  (*(v31 + 104))(v30, *MEMORY[0x277D6D868], v33);
  sub_218701C74(&qword_27CC0B740, type metadata accessor for RecipeBoxSectionDescriptor, &unk_219C625F4);
  sub_219BE85E4();
  (*(v22 + 8))(v23, v24);
  v35(v9);
  (*(v28 + 8))(v9, v29);
  return (*(v26 + 8))(v13, v21);
}

uint64_t sub_219A7ED10@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = sub_219BF0BD4();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecipeBoxFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RecipeListRecipeBoxFeedGroup(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v47 - v15);
  v48 = type metadata accessor for RecipeBoxGapLocation(0);
  MEMORY[0x28223BE20](v48);
  v49 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for RecipeBoxSectionDescriptor(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953B70(0);
  v52 = v21;
  sub_219BE6934();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218A5D838(v20, v16);
      v49 = a2[2];
      v23 = sub_218C57020(v49);
      v24 = v16[1];
      v48 = *v16;
      v25 = *(v11 + 20);
      v26 = sub_219BED8D4();
      (*(*(v26 - 8) + 16))(v13 + v25, v16 + v25, v26);
      v54 = *(v16 + *(v11 + 24));

      sub_2191ED69C(v23);
      v27 = v54;
      *v13 = v48;
      v13[1] = v24;
      *(v13 + *(v11 + 24)) = v27;
      __swift_project_boxed_opaque_existential_1(a2 + 3, a2[6]);
      sub_2189E4DA4(v13, v10);
      type metadata accessor for RecipeBoxFeedServiceConfig(0);
      sub_218701C74(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig, &unk_219C60268);
      sub_219BEF3D4();
      sub_219BEE7A4();

      v28 = v53;
      sub_2199D0AE0(v10, v7, v53);
      (*(v50 + 8))(v7, v51);
      sub_219A7F620(v10, type metadata accessor for RecipeBoxFeedGroup);
      sub_219A7F620(v13, type metadata accessor for RecipeListRecipeBoxFeedGroup);
      v29 = v16;
      v30 = type metadata accessor for RecipeListRecipeBoxFeedGroup;
    }

    else
    {
      type metadata accessor for RecipeBoxFeedServiceConfig(0);
      sub_218701C74(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig, &unk_219C60268);
      v35 = sub_219BEF3D4();
      if (sub_219BEF394())
      {
        v36 = sub_219BEE854();
        v28 = v53;
        if ((v36 & 1) == 0 || v35 < 0 || (sub_219BF09A4(), !v54) || (v37 = *(v54 + 24), , , v38 = *(v37 + 16), , !v38))
        {

          v33 = v52;
          v32 = *(v52 - 8);
          v34 = 1;
          return (*(v32 + 56))(v28, v34, 1, v33);
        }

        v39 = swift_allocObject();
        sub_219A7F584(0, &qword_27CC16F20, MEMORY[0x277D32188]);
        swift_allocObject();

        *(v39 + 16) = sub_219BEE874();
        v40 = v49;
        *v49 = v39;
        v41 = *MEMORY[0x277D33068];
        sub_219A7F584(0, &qword_280E909D8, MEMORY[0x277D33098]);
        (*(*(v42 - 8) + 104))(v40, v41, v42);
        swift_storeEnumTagMultiPayload();
        sub_21912EE84(v40, v28);
      }

      else
      {
        v43 = swift_allocObject();
        sub_219A7F584(0, &qword_27CC16F20, MEMORY[0x277D32188]);
        swift_allocObject();

        *(v43 + 16) = sub_219BEE874();
        v40 = v49;
        *v49 = v43;
        v44 = *MEMORY[0x277D33090];
        sub_219A7F584(0, &qword_280E909D8, MEMORY[0x277D33098]);
        (*(*(v45 - 8) + 104))(v40, v44, v45);
        swift_storeEnumTagMultiPayload();
        v28 = v53;
        sub_21912EE84(v40, v53);
      }

      v30 = type metadata accessor for RecipeBoxGapLocation;
      v29 = v40;
    }

    sub_219A7F620(v29, v30);
    v34 = 0;
    v33 = v52;
    v32 = *(v52 - 8);
  }

  else
  {
    sub_219A7F620(v20, type metadata accessor for RecipeBoxSectionDescriptor);
    v31 = v52;
    v28 = v53;
    v32 = *(v52 - 8);
    (*(v32 + 16))(v53, a1, v52);
    v33 = v31;
    v34 = 0;
  }

  return (*(v32 + 56))(v28, v34, 1, v33);
}

uint64_t sub_219A7F4D4(uint64_t a1)
{
  v2 = sub_21917FE20();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_219A7F514()
{
  result = qword_27CC22EF0;
  if (!qword_27CC22EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22EF0);
  }

  return result;
}

void sub_219A7F584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for RecipeBoxFeedServiceConfig(255);
    v7 = sub_218701C74(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig, &unk_219C60268);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_219A7F620(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219A7F680(unint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = *(a2 + 16);

  if (!v5)
  {
LABEL_17:

    return 0;
  }

  v6 = 0;
  v7 = a1 + 56;
  while (1)
  {
    v8 = (v3 + 32 + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    if (!*(a1 + 16))
    {
      break;
    }

    sub_219BF7AA4();

    sub_219BF5524();
    v11 = sub_219BF7AE4();
    v12 = -1 << *(a1 + 32);
    v2 = v11 & ~v12;
    if (((*(v7 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v2) & 1) == 0)
    {
LABEL_13:

      break;
    }

    v13 = ~v12;
    while (1)
    {
      v14 = (*(a1 + 48) + 16 * v2);
      v15 = *v14 == v10 && v14[1] == v9;
      if (v15 || (sub_219BF78F4() & 1) != 0)
      {
        break;
      }

      v2 = (v2 + 1) & v13;
      if (((*(v7 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v2) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    if (++v6 == v5)
    {
      goto LABEL_17;
    }
  }

  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_29;
  }

  v2 = sub_219BC7A48(v6 + 1, v3);
  v19 = v18 >> 1;
  if (v17 != v18 >> 1)
  {
    v3 = v17;
    v5 = v16;
    a1 = v18;
    if ((v18 & 1) == 0)
    {

LABEL_20:
      sub_218B666EC(v2, v5, v3, a1);
      goto LABEL_26;
    }

    sub_219BF7934();
    swift_unknownObjectRetain_n();

    v20 = swift_dynamicCastClass();
    if (!v20)
    {
      swift_unknownObjectRelease();
      v20 = MEMORY[0x277D84F90];
    }

    v21 = *(v20 + 16);

    if (!__OFSUB__(v19, v3))
    {
      if (v21 == v19 - v3)
      {
        v22 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v22)
        {
          return v10;
        }

LABEL_26:
        swift_unknownObjectRelease();
        return v10;
      }

      goto LABEL_30;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_219A7F8FC(void *a1)
{
  sub_219A8025C(0, &qword_27CC22F20, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A80148();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BED8D4();
  sub_219A802C0(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for SavedStoriesTodayFeedGroup(0);
    v9[14] = 1;
    sub_219BF7824();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219A7FAC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v21 = sub_219BED8D4();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A8025C(0, &qword_27CC22F10, MEMORY[0x277D844C8]);
  v22 = v6;
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for SavedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A80148();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v11;
  v12 = v19;
  v24 = 0;
  sub_219A802C0(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
  v13 = v21;
  sub_219BF7734();
  v14 = v17;
  (*(v12 + 32))(v17, v5, v13);
  v23 = 1;
  v15 = sub_219BF7724();
  (*(v20 + 8))(v8, v22);
  *(v14 + *(v9 + 20)) = v15;
  sub_219A8019C(v14, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_219A80200(v14);
}

uint64_t sub_219A7FE10(uint64_t a1)
{
  v2 = sub_219A80148();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A7FE4C(uint64_t a1)
{
  v2 = sub_219A80148();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219A7FFB8(uint64_t a1)
{
  result = sub_219A802C0(&qword_27CC0B980, type metadata accessor for SavedStoriesTodayFeedGroup, &unk_219CC6818);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_219A80010(uint64_t a1)
{
  v2 = sub_219A802C0(&qword_27CC22F08, type metadata accessor for SavedStoriesTodayFeedGroup, &unk_219CC66FC);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219A8009C(void *a1)
{
  a1[1] = sub_219A802C0(&qword_27CC22F08, type metadata accessor for SavedStoriesTodayFeedGroup, &unk_219CC66FC);
  a1[2] = sub_219A802C0(&qword_27CC0B9C8, type metadata accessor for SavedStoriesTodayFeedGroup, &unk_219CC67F0);
  result = sub_219A802C0(&qword_27CC0BA08, type metadata accessor for SavedStoriesTodayFeedGroup, &unk_219CC67C8);
  a1[3] = result;
  return result;
}

unint64_t sub_219A80148()
{
  result = qword_27CC22F18;
  if (!qword_27CC22F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22F18);
  }

  return result;
}

uint64_t sub_219A8019C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedStoriesTodayFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A80200(uint64_t a1)
{
  v2 = type metadata accessor for SavedStoriesTodayFeedGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219A8025C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A80148();
    v7 = a3(a1, &type metadata for SavedStoriesTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219A802C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_219A8031C()
{
  result = qword_27CC22F28;
  if (!qword_27CC22F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22F28);
  }

  return result;
}

unint64_t sub_219A80374()
{
  result = qword_27CC22F30;
  if (!qword_27CC22F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22F30);
  }

  return result;
}

unint64_t sub_219A803CC()
{
  result = qword_27CC22F38;
  if (!qword_27CC22F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22F38);
  }

  return result;
}

uint64_t sub_219A80420(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_219A80500(char a1)
{
  v3 = *v1;
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

  sub_219BF5054();
  sub_219A80774(a1 & 1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = off_282A32610[0];
    type metadata accessor for SavedFeedDataManager();
    if (v5())
    {
      v6 = 0;
    }

    else
    {
      v6 = sub_219BF1AE4() ^ 1;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = sub_21939713C();
      [v7 setEnabled_];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = *(v3 + 80);
  *(v9 + 24) = *(v3 + 88);
  *(v9 + 32) = v8;
  *(v9 + 40) = a1 & 1;

  if ((a1 & 1) == 0)
  {

    sub_219A8113C();
  }
}

double sub_219A80774(uint64_t a1)
{
  v1 = a1;
  if (qword_280E8D7A8 != -1)
  {
    swift_once();
  }

  v2 = qword_280F616E0;
  v3 = sub_219BF6214();
  sub_219BE5314("Saved feed starting prewarming", 30, 2, &dword_2186C1000, v2, v3, MEMORY[0x277D84F90]);
  v4 = CACurrentMediaTime();
  sub_219BE3204();
  sub_2187D9028();
  v5 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v1 & 1;
  sub_219BE95D4();
  sub_219BE2F84();

  v6 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v4;
  sub_219BE2F94();

  v7 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v4;
  sub_219BE2FE4();

  return result;
}

double sub_219A809F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v28 = a3;
  sub_218953E34(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A86F08(0);
  MEMORY[0x28223BE20](v13);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_219A874E8(a1, v15, sub_219A86F08);
    v17 = sub_219BF1584();
    if ((*(*(v17 - 8) + 48))(v15, 1, v17) == 1)
    {
      v27[0] = a4;
      v27[1] = a1;
      sub_219BE6EC4();
      v32 = v29;
      sub_2189878D4(0);
      sub_219A86654(&qword_280EE5480, sub_2189878D4, MEMORY[0x277D6D8C8]);
      sub_219BE7B94();

      sub_219A86654(&qword_280EE3670, sub_218953E34, MEMORY[0x277D6EC70]);
      sub_219BF5DF4();
      sub_219BF5E84();
      (*(v10 + 8))(v12, v9);
      if (v31 == v30)
      {
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_219A80774(v28 & 1);
        }
      }

      else
      {
        v18 = v27[0];
        v32 = (*(a5 + 64))(v27[0], a5);
        v19 = swift_allocObject();
        swift_beginAccess();
        swift_weakLoadStrong();
        swift_weakInit();

        v20 = swift_allocObject();
        v20[2] = v18;
        v20[3] = a5;
        v20[4] = v19;
        sub_219224DF4(0);
        sub_219A86654(&qword_280EE5650, sub_219224DF4, MEMORY[0x277D6D890]);

        sub_219BE6EF4();
      }
    }

    else
    {
      sub_219A87630(v15, sub_219A86F08);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = off_282A32610[0];
      type metadata accessor for SavedFeedDataManager();
      if (v21())
      {
        v22 = 0;
      }

      else
      {
        v22 = sub_219BF1B14() ^ 1;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v23 = sub_21939713C();
        [v23 setEnabled_];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = Strong;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v26 = off_282A6CD38;
        type metadata accessor for SavedFeedViewController();
        v26(v25);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_219A80F4C(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BE85F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v4 + 16))(v6, a1, v3);
    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D6DFA0])
    {
      (*(v4 + 8))(v6, v3);
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

      else
      {
      }
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

uint64_t sub_219A8113C()
{
  v1 = v0;
  v21 = *v0;
  v2 = sub_219BE3514();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE61B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  sub_219BE6EC4();
  sub_219BE6F74();

  (*(v7 + 104))(v9, *MEMORY[0x277D6D520], v6);
  v13 = sub_219BE61A4();
  v14 = *(v7 + 8);
  v14(v9, v6);
  if ((v13 & 1) == 0)
  {
    return (v14)(v12, v6);
  }

  v15 = *v1;
  v20 = v2;
  v16 = *(v15 + 168);
  sub_218718690(v1 + v16, v22);
  v19 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  swift_getWitnessTable();
  sub_219BE3A24();
  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_218718690(v1 + v16, v22);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v17 = v20;
  (*(v3 + 104))(v5, *MEMORY[0x277D31478], v20);
  sub_219BE3A34();
  (*(v3 + 8))(v5, v17);
  v14(v12, v6);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

double sub_219A8144C()
{
  v1 = *v0;
  sub_218953E34(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v7 = sub_218982830();

  if ((v7 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
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

  sub_219BE6EC4();
  v13[0] = v13[1];
  sub_2189878D4(0);
  sub_219A86654(&qword_280EE5480, sub_2189878D4, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v9 = sub_21937B92C();
  (*(v4 + 8))(v6, v3);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = *(v1 + 80);
  *(v11 + 24) = *(v1 + 88);
  *(v11 + 32) = v10;
  *(v11 + 40) = HIBYTE(v7) & 1;
  *(v11 + 41) = (v9 & 1) == 0;

  sub_219BE6F24();

  return result;
}

double sub_219A81700(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ((a3 & 1) != 0 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      v13 = Strong;
      type metadata accessor for SavedFeedInteractor(0, a5, a6, v12);

      sub_218D2F250(a4 & 1, v13);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_219A817D4()
{
  swift_getObjectType();
  sub_219BEADA4();
  sub_219BE70A4();

  return result;
}

uint64_t sub_219A81860(void *a1)
{
  v61 = a1;
  v58 = *v1;
  v52 = type metadata accessor for SavedFeedExpandRequest(0);
  MEMORY[0x28223BE20](v52);
  v60 = (&v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v59);
  v4 = (&v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SavedFeedGapLocation(0);
  v53 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = v6;
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v56 = &v47 - v8;
  sub_219A865F0(0, &unk_280EE5C30, sub_218A74FF4, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  sub_218A74FF4(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v62 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953E34(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v1;
  sub_219BE6EC4();
  v65 = *&v64[0];
  sub_2189878D4(0);
  sub_219A86654(&qword_280EE5480, sub_2189878D4, MEMORY[0x277D6D8C8]);
  v21 = v17;
  v22 = v61;
  sub_219BE7B94();

  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_219BE1D74();
  sub_219BEB1C4();
  v23 = v13;

  v63 = v14;
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_219A875C0(v11, &unk_280EE5C30, sub_218A74FF4);
    v24 = v22;
    v25 = v20;
    v26 = v24[3];
    v27 = v24[4];
    __swift_project_boxed_opaque_existential_1(v24, v26);
    MEMORY[0x21CEC0B20](0, v26, v27);
    return (*(v18 + 8))(v25, v21);
  }

  else
  {
    v50 = v20;
    v51 = v18;
    (*(v63 + 32))(v62, v11, v13);
    sub_219BE5FC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = *v4;
      v30 = v4[1];
      sub_218E32330(0);
      v32 = *(v31 + 48);
      v49 = type metadata accessor for SavedFeedGapLocation;
      v33 = v56;
      sub_21880BC4C(v4 + v32, v56, type metadata accessor for SavedFeedGapLocation);
      v34 = *(v52 + 5);
      v52 = type metadata accessor for SavedFeedGapLocation;
      v35 = v60;
      v36 = sub_219A874E8(v33, v60 + v34, type metadata accessor for SavedFeedGapLocation);
      v59 = v23;
      *v35 = v29;
      v35[1] = v30;
      MEMORY[0x28223BE20](v36);
      *(&v47 - 2) = v57;
      *(&v47 - 1) = v35;
      sub_219BE3204();
      sub_2187D9028();
      v37 = sub_219BF66A4();
      sub_219BE95D4();
      v38 = v58;
      sub_219BE2F84();

      v39 = sub_219BF66A4();
      sub_218718690(v22, v64);
      v40 = swift_allocObject();
      v48 = v21;
      sub_2186CB1F0(v64, v40 + 16);
      sub_219BE2F94();

      v41 = sub_219BF66A4();
      sub_218718690(v22, v64);
      v42 = v55;
      sub_219A874E8(v33, v55, v52);
      v43 = (*(v53 + 80) + 72) & ~*(v53 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = *(v38 + 80);
      *(v44 + 24) = *(v38 + 88);
      sub_2186CB1F0(v64, v44 + 32);
      sub_21880BC4C(v42, v44 + v43, v49);
      sub_219BE2FE4();

      sub_219A87630(v33, type metadata accessor for SavedFeedGapLocation);
      (*(v63 + 8))(v62, v59);
      (*(v51 + 8))(v50, v48);
      return sub_219A87630(v60, type metadata accessor for SavedFeedExpandRequest);
    }

    else
    {
      sub_219A87630(v4, type metadata accessor for SavedFeedModel);
      v45 = v22[3];
      v46 = v22[4];
      __swift_project_boxed_opaque_existential_1(v22, v45);
      MEMORY[0x21CEC0B20](0, v45, v46);
      (*(v63 + 8))(v62, v23);
      return (*(v51 + 8))(v50, v21);
    }
  }
}

uint64_t sub_219A8205C(void *a1, uint64_t a2)
{
  (*(*(*a2 + 88) + 48))(*a1, a1[1], a1[2], *(*a2 + 80));
  sub_219224DF4(0);
  sub_219A86654(&qword_280EE5650, sub_219224DF4, MEMORY[0x277D6D890]);
  v2 = sub_219BE6E84();

  return v2;
}

uint64_t sub_219A82164(uint64_t a1, uint64_t *a2, void *a3)
{
  v15[1] = a1;
  v4 = *a2;
  sub_218953E34(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v15[3] = v15[5];
  sub_2189878D4(0);
  sub_219A86654(&qword_280EE5480, sub_2189878D4, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v10 = sub_21937B92C();
  (*(v7 + 8))(v9, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    type metadata accessor for SavedFeedInteractor(0, *(v4 + 80), *(v4 + 88), v12);
    sub_218D2F250((v10 & 1) == 0, v13);
    swift_unknownObjectRelease();
  }

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  return sub_219BE9D74();
}

double sub_219A82350(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = *a2;
  v8 = type metadata accessor for SavedFeedFailedData(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_219BE81D4())
  {
    v11 = a3[3];
    v12 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v11);
    MEMORY[0x21CEC0B20](0, v11, v12);
  }

  else
  {
    v27 = a4;
    v28 = v7;
    if (qword_280E8D7A8 != -1)
    {
      swift_once();
    }

    v26 = qword_280F616E0;
    HIDWORD(v25) = sub_219BF61F4();
    sub_2186F20D4(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09EC0;
    *&v29[0] = 0;
    *(&v29[0] + 1) = 0xE000000000000000;
    sub_2186CFDE4(0, &unk_280EE3DF0, MEMORY[0x277D6E8E8]);
    sub_219BF7484();
    v15 = v29[0];
    v16 = MEMORY[0x277D837D0];
    *(v14 + 56) = MEMORY[0x277D837D0];
    v17 = sub_2186FC3BC();
    *(v14 + 64) = v17;
    *(v14 + 32) = v15;
    *&v29[0] = 0;
    *(&v29[0] + 1) = 0xE000000000000000;
    v30 = a1;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    sub_219BF7484();
    v18 = v29[0];
    *(v14 + 96) = v16;
    *(v14 + 104) = v17;
    *(v14 + 72) = v18;
    sub_219BE5314("Error while trying to expand saved feed, request=%{public}@, error=%{public}@", 77, 2, &dword_2186C1000, v26, HIDWORD(v25), v14);

    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v19 = sub_219BE1D74();
    v21 = v20;
    sub_219A874E8(v27, v10 + *(v8 + 20), type metadata accessor for SavedFeedGapLocation);
    *v10 = v19;
    v10[1] = v21;
    v22 = (*(*(v28 + 88) + 72))(v10, *(v28 + 80));
    sub_219A87630(v10, type metadata accessor for SavedFeedFailedData);
    v30 = v22;
    sub_218718690(a3, v29);
    v23 = swift_allocObject();
    sub_2186CB1F0(v29, v23 + 16);
    *(v23 + 56) = a1;
    v24 = a1;
    sub_219224DF4(0);
    sub_219A86654(&qword_280EE5650, sub_219224DF4, MEMORY[0x277D6D890]);
    sub_219BE6EF4();
  }

  return result;
}

void sub_219A826FC(uint64_t a1, char a2, uint64_t a3, __n128 a4)
{
  v21 = a3;
  sub_219A865F0(0, &qword_27CC115F0, type metadata accessor for SavedFeedRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for SavedFeedRouteModel(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDE294();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x277D2FEF8];
  if ((a2 & 1) == 0)
  {
    v18 = MEMORY[0x277D2FF08];
  }

  (*(v14 + 104))(v17, *v18, v13, v15);
  sub_219A82A18(a1, v17, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    (*(v14 + 8))(v17, v13);
    sub_219A875C0(v8, &qword_27CC115F0, type metadata accessor for SavedFeedRouteModel);
  }

  else
  {
    sub_21880BC4C(v8, v12, type metadata accessor for SavedFeedRouteModel);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
      sub_2196CCD54(v12, v21);
      sub_219A87630(v12, type metadata accessor for SavedFeedRouteModel);
      (*(v14 + 8))(v17, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_219A87630(v12, type metadata accessor for SavedFeedRouteModel);
      (*(v14 + 8))(v17, v13);
    }
  }
}

uint64_t sub_219A82A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v59 = a2;
  v62 = a3;
  v57 = *v4;
  v6 = sub_219BDE744();
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x28223BE20](v6);
  v58 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF0634();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v56 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_219A865F0(0, &unk_280EE8AA0, MEMORY[0x277D30260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v51 = &v48 - v12;
  sub_219A865F0(0, &unk_280EE8C40, MEMORY[0x277D30018], v10);
  MEMORY[0x28223BE20](v13 - 8);
  v49 = &v48 - v14;
  sub_218A74FF4(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BDE7A4();
  v52 = *(v20 - 8);
  v53 = v20;
  MEMORY[0x28223BE20](v20);
  v50 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC(0);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v27);
  v29 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v48 = v24;
      v40 = *(v24 + 32);
      v41 = v23;
      v40(v26, v29, v23);
      (*(v17 + 16))(v19, a1, v16);
      sub_219BF07D4();
      swift_unknownObjectRetain();

      v42 = sub_219BDE4D4();
      (*(*(v42 - 8) + 56))(v49, 1, 1, v42);
      v43 = sub_219BDEA34();
      (*(*(v43 - 8) + 56))(v51, 1, 1, v43);
      (*(v54 + 104))(v56, *MEMORY[0x277D32E90], v55);
      sub_219A86654(&unk_280EDBC60, type metadata accessor for SavedFeedModel, &unk_219C73440);
      v44 = v50;
      sub_219BDE794();
      swift_getWitnessTable();
      v45 = v58;
      sub_219BDEB64();
      sub_219BDE734();
      sub_219BDEC64();

      v39 = v62;
      sub_219BDE724();
      (*(v60 + 8))(v45, v61);
      (*(v52 + 8))(v44, v53);
      (*(v48 + 8))(v26, v41);
      v38 = 0;
      goto LABEL_10;
    }

    sub_218A7535C(0);
    v33 = *(v32 + 48);
    v34 = sub_219BF1584();
    (*(*(v34 - 8) + 8))(&v29[v33], v34);
    v31 = type metadata accessor for SavedFeedGapLocation;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {

      sub_218E32330(0);
      v35 = type metadata accessor for SavedFeedGapLocation;
      v36 = &v29[*(v37 + 48)];
      goto LABEL_8;
    }

    v31 = type metadata accessor for SavedFeedModel;
  }

  v35 = v31;
  v36 = v29;
LABEL_8:
  sub_219A87630(v36, v35);
  v38 = 1;
  v39 = v62;
LABEL_10:
  v46 = type metadata accessor for SavedFeedRouteModel(0);
  return (*(*(v46 - 8) + 56))(v39, v38, 1, v46);
}

uint64_t sub_219A83188(uint64_t *a1, void *a2, char a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(a2 + v6[23]) useFood];
  }

  v9 = v6[10];
  v8 = v6[11];
  (*(v8 + 40))(v4, v3, v5, v7, v9, v8);
  sub_219224DF4(0);
  sub_219A86654(&qword_280EE5650, sub_219224DF4, MEMORY[0x277D6D890]);
  sub_219BE6E84();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v8;
  v10[4] = v4;
  v10[5] = v3;
  v10[6] = v5;

  v11 = sub_219BE2E54();
  sub_219BE95D4();
  v12 = sub_219BE2F74();

  return v12;
}

uint64_t sub_219A83358@<X0>(uint64_t a1@<X0>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  type metadata accessor for SavedFeedServiceConfig(0);
  sub_219A86654(&qword_280EC6CF0, type metadata accessor for SavedFeedServiceConfig, &unk_219CAA790);
  if ((sub_219BEF394() & 1) != 0 && (v9 = *(sub_219BEF3E4() + 16), , !v9))
  {
    type metadata accessor for SavedFeedInteractor.Errors(0, a3, a4, v10);
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v11 = sub_219BE95D4();
    return (*(*(v11 - 8) + 16))(a5, a1, v11);
  }
}

void sub_219A834AC(double a1, uint64_t a2, uint64_t a3)
{
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

  if (qword_280E8D7A8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v5 = MEMORY[0x277D83A80];
  *(v4 + 56) = MEMORY[0x277D839F8];
  *(v4 + 64) = v5;
  *(v4 + 32) = v6;
  sub_219BF6214();
  sub_219BE5314("Saved feed successfully loaded duration %fms", v7);
}

void sub_219A8360C(void *a1, double a2)
{
  if (qword_280E8D7A8 != -1)
  {
    swift_once();
  }

  v3 = qword_280F616E0;
  v4 = sub_219BF61F4();
  sub_2186F20D4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v6 = MEMORY[0x277D83A80];
  *(v5 + 56) = MEMORY[0x277D839F8];
  *(v5 + 64) = v6;
  *(v5 + 32) = v7;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v5 + 96) = MEMORY[0x277D837D0];
  *(v5 + 104) = sub_2186FC3BC();
  *(v5 + 72) = 0;
  *(v5 + 80) = 0xE000000000000000;
  sub_219BE5314("Error while prewarming saved feed with visible duration %fms, error=%{public}@", 78, 2, &dword_2186C1000, v3, v4, v5);

  sub_219A83778(a1);
}

void sub_219A83778(void *a1)
{
  v3 = *v1;
  v4 = sub_219BF1584();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v26 - v9;
  sub_219A86F08(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = a1;
  v14 = a1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  type metadata accessor for SavedFeedInteractor.Errors(0, *(v3 + 80), *(v3 + 88), v15);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_219BF1B74();
    if ((*(v5 + 48))(v13, 1, v4) == 1)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        if (qword_27CC07F48 != -1)
        {
          swift_once();
        }

        v16 = __swift_project_value_buffer(v4, qword_27CCD8578);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v18 = Strong;
          (*(v5 + 16))(v10, v16, v4);
          v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
          v20 = swift_allocObject();
          *(v20 + 16) = v18;
          (*(v5 + 32))(v20 + v19, v10, v4);
          swift_unknownObjectRetain();
          sub_219BE3494();

          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v21 = *(v5 + 32);
      v21(v7, v13, v4);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = swift_unknownObjectWeakLoadStrong();
        if (v22)
        {
          v23 = v22;
          (*(v5 + 16))(v10, v7, v4);
          v24 = (*(v5 + 80) + 24) & ~*(v5 + 80);
          v25 = swift_allocObject();
          *(v25 + 16) = v23;
          v21((v25 + v24), v10, v4);
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

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t *sub_219A83B64()
{
  v1 = *v0;
  sub_218774F78((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 168)));
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 176)));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_219A83D04()
{
  sub_219A83B64();

  return swift_deallocClassInstance();
}

void sub_219A83D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a3;
  v27 = a4;
  v28 = a1;
  v29 = a2;
  v30 = *v5;
  v31 = a5;
  refreshed = type metadata accessor for SavedFeedRefreshRequest(0);
  MEMORY[0x28223BE20](refreshed);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218953E34(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (*(v31 + 16))
    {
      v14 = sub_219BF1AE4() ^ 1;
    }

    else
    {
      v14 = 0;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = sub_21939713C();
      [v15 setEnabled_];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_219BE6EC4();
  v32 = v33;
  sub_2189878D4(0);
  sub_219A86654(&qword_280EE5480, sub_2189878D4, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v16 = sub_21937B808();
  (*(v11 + 8))(v13, v10);
  if ((~v16 & 0xF000000000000007) != 0)
  {
    type metadata accessor for SavedFeedServiceConfig(0);
    sub_219A86654(&qword_280EC6CF0, type metadata accessor for SavedFeedServiceConfig, &unk_219CAA790);
    v19 = v26;

    v20 = v27;

    v21 = v31;

    v22 = sub_219BEE7A4();
    *v8 = v19;
    v8[1] = v20;
    v8[2] = v21;
    MEMORY[0x28223BE20](v22);
    v23 = v29;
    *(&v26 - 4) = v28;
    *(&v26 - 3) = v23;
    *(&v26 - 2) = v8;
    type metadata accessor for SavedFeedRefreshResult(0);
    sub_219BE3204();
    sub_2187D9028();
    v24 = sub_219BF66A4();
    v25 = swift_allocObject();
    *(v25 + 16) = v5;
    *(v25 + 24) = v21;

    sub_219BE2F94();
    sub_21885AB78(v16);

    sub_219A87630(v8, type metadata accessor for SavedFeedRefreshRequest);
  }

  else
  {
    if (qword_280E8D7A8 != -1)
    {
      swift_once();
    }

    v17 = qword_280F616E0;
    v18 = sub_219BF61F4();
    sub_219BE5314("Saved feed attempting to refresh with a blueprint that has no cursor", 68, 2, &dword_2186C1000, v17, v18, MEMORY[0x277D84F90]);
  }
}

uint64_t sub_219A841F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  refreshed = type metadata accessor for SavedFeedRefreshRequest(0);
  v6 = *(refreshed - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](refreshed - 8);
  v8 = CACurrentMediaTime();
  if (qword_280E8D7A8 != -1)
  {
    swift_once();
  }

  v9 = qword_280F616E0;
  v10 = sub_219BF6214();
  sub_219BE5314("SavedFeed start refreshing", 26, 2, &dword_2186C1000, v9, v10, MEMORY[0x277D84F90]);
  MEMORY[0x28223BE20](v11);
  v17[-2] = a1;
  v17[-1] = a3;
  sub_219A865F0(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
  sub_219BE3204();
  sub_219A874E8(a3, v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SavedFeedRefreshRequest);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  sub_21880BC4C(v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for SavedFeedRefreshRequest);
  v14 = sub_219BE2E54();
  type metadata accessor for SavedFeedRefreshResult(0);
  v15 = sub_219BE2F64();

  return v15;
}

void sub_219A8446C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  sub_219BDEC34();
  (*(*(v7 + 88) + 56))(a1, *(v7 + 80));
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a3;
  v9[4] = a4;
  sub_219224DF4(0);
  sub_219A86654(&qword_280EE5650, sub_219224DF4, MEMORY[0x277D6D890]);

  sub_219BE6EF4();
}

double sub_219A84624(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = sub_219BE85F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v8 + 16))(v10, a1, v7);
    v12 = (*(v8 + 88))(v10, v7);
    v13 = *MEMORY[0x277D6DF98];
    (*(v8 + 8))(v10, v7);
    if (v12 == v13)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v14 = sub_219BF6564();
          swift_unknownObjectRelease();
        }

        else
        {
          v14 = 1;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 1;
      }

      sub_219A80774(v14 & 1);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v17 = Strong;
        v18 = *(a4 + 16) == 0;
        type metadata accessor for SavedFeedInteractor(0, *(v6 + 80), *(v6 + 88), v16);

        sub_218D2F250(v18, v17);
        swift_unknownObjectRelease();
      }
    }

    sub_219BDEC84();
  }

  return result;
}

void sub_219A848B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54 = *v3;
  v5 = sub_219BE3794();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v49 - v8;
  v9 = sub_219BE38C4();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x28223BE20](v9);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A865F0(0, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v53 = &v49 - v12;
  v13 = sub_219BE35B4();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BEEC14();
  v64 = *(v16 - 8);
  v65 = v16;
  MEMORY[0x28223BE20](v16);
  v63 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BE3514();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v62 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v49 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v49 - v25;
  v60 = a2;
  sub_219BE35A4();
  (*(v19 + 104))(v23, *MEMORY[0x277D31478], v18);
  sub_219A86654(&unk_280EE6680, MEMORY[0x277D31550], MEMORY[0x277D31570]);
  sub_219BF5874();
  sub_219BF5874();
  if (v67 == v66)
  {
    v27 = 1;
  }

  else
  {
    v27 = sub_219BF78F4();
  }

  v28 = *(v19 + 8);
  v28(v23, v18);
  v61 = v28;
  v28(v26, v18);

  if (v27)
  {
    if ([*(v3 + *(*v3 + 184)) useFood])
    {
      v29 = v62;
      v30 = v60;
      sub_219BE35A4();
      sub_219BE34F4();
      v61(v29, v18);
      (*(v51 + 16))(v15, v30, v52);
      v31 = v63;
      sub_219BEEBD4();
      v33 = v64;
      v32 = v65;
      v34 = v53;
      (*(v64 + 16))(v53, v31, v65);
      (*(v33 + 56))(v34, 0, 1, v32);
      v35 = (*(*(v54 + 88) + 88))(v34, *(v54 + 80));
      sub_219A875C0(v34, &qword_280E918A8, MEMORY[0x277D322C0]);
      *&v67 = v35;
      sub_219224DF4(0);
      sub_219A86654(&qword_280EE5650, sub_219224DF4, MEMORY[0x277D6D890]);
      sub_219BE6EF4();
      v36 = v55;
      sub_219BE3574();
      v38 = v56;
      v37 = v57;
      if ((*(v56 + 88))(v36, v57) == *MEMORY[0x277D31720])
      {
        v57 = v35;
        sub_219BE3584();
        v39 = v49;
        v40 = v50;
        (*(v49 + 104))(v58, *MEMORY[0x277D31678], v50);
        sub_219A86654(&qword_280EE6620, MEMORY[0x277D31680], MEMORY[0x277D31690]);
        sub_219BF5874();
        sub_219BF5874();
        if (v67 == v66)
        {
          v41 = *(v39 + 8);
          v41(v58, v40);
          v41(v59, v40);
        }

        else
        {
          v46 = sub_219BF78F4();
          v47 = *(v39 + 8);
          v47(v58, v40);
          v47(v59, v40);

          if ((v46 & 1) == 0)
          {

            goto LABEL_18;
          }
        }

        __swift_project_boxed_opaque_existential_1((v3 + *(*v3 + 176)), *(v3 + *(*v3 + 176) + 24));
        v48 = v62;
        sub_219BE35A4();
        sub_2192265C0(v48);

        v61(v48, v18);
      }

      else
      {

        (*(v38 + 8))(v36, v37);
      }

LABEL_18:
      (*(v64 + 8))(v63, v65);
      return;
    }

    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v42 = sub_219BE5434();
    __swift_project_value_buffer(v42, qword_280F627F0);
    v43 = sub_219BE5414();
    v44 = sub_219BF6214();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2186C1000, v43, v44, "Ignoring topOfSaved engagement banner, food not enabled", v45, 2u);
      MEMORY[0x21CECF960](v45, -1, -1);
    }
  }
}

void sub_219A85200(void *a1, void *a2, uint64_t a3)
{
  v164 = a2;
  v151 = *v3;
  v132 = type metadata accessor for EngagementAction(0);
  MEMORY[0x28223BE20](v132);
  v133 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_219BDB954();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v139 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v143 = &v124 - v9;
  v10 = MEMORY[0x277D83D88];
  sub_219A865F0(0, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v147 = &v124 - v12;
  v136 = sub_219BDBD64();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for EngagementDismissal(0);
  v140 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v142 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v14;
  MEMORY[0x28223BE20](v15);
  v148 = &v124 - v16;
  sub_219A865F0(0, &unk_280EE6610, MEMORY[0x277D31680], v10);
  MEMORY[0x28223BE20](v17 - 8);
  v131 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v144 = &v124 - v20;
  MEMORY[0x28223BE20](v21);
  v155 = &v124 - v22;
  v160 = sub_219BE3794();
  v23 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v25 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v145 = &v124 - v27;
  MEMORY[0x28223BE20](v28);
  v161 = &v124 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v124 - v31;
  v33 = sub_219BE3514();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v137 = &v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v156 = &v124 - v37;
  MEMORY[0x28223BE20](v38);
  v163 = &v124 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v124 - v41;
  if (qword_280EE5F28 != -1)
  {
    swift_once();
  }

  v138 = v25;
  v157 = v3;
  v43 = sub_219BE5434();
  __swift_project_value_buffer(v43, qword_280F62550);
  v152 = *(v34 + 16);
  v153 = v34 + 16;
  v152(v42, a3, v33);
  v44 = sub_219BE5414();
  v45 = sub_219BF6214();
  v46 = os_log_type_enabled(v44, v45);
  v162 = v32;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v159 = a1;
    v165 = a3;
    v166 = v48;
    v49 = v48;
    *v47 = 136315138;
    sub_219A86654(&qword_280EE6670, MEMORY[0x277D31550], MEMORY[0x277D31580]);
    v50 = sub_219BF7894();
    v51 = v23;
    v53 = v52;
    v158 = *(v34 + 8);
    (v158)(v42, v33);
    v54 = sub_2186D1058(v50, v53, &v166);
    v23 = v51;

    *(v47 + 4) = v54;
    _os_log_impl(&dword_2186C1000, v44, v45, "SavedFeedInteractor: didSelectAction for placement %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    v55 = v49;
    a3 = v165;
    a1 = v159;
    MEMORY[0x21CECF960](v55, -1, -1);
    v56 = v47;
    v32 = v162;
    MEMORY[0x21CECF960](v56, -1, -1);

    v58 = v163;
    v57 = v164;
    if (!v164)
    {
      return;
    }
  }

  else
  {

    v158 = *(v34 + 8);
    (v158)(v42, v33);
    v58 = v163;
    v57 = v164;
    if (!v164)
    {
      return;
    }
  }

  (*(v34 + 104))(v58, *MEMORY[0x277D31478], v33);
  sub_219A86654(&unk_280EE6680, MEMORY[0x277D31550], MEMORY[0x277D31570]);
  v164 = v57;
  sub_219BF5874();
  sub_219BF5874();
  if (v166 == v169 && v167 == v170)
  {
    (v158)(v58, v33);
  }

  else
  {
    v59 = sub_219BF78F4();
    (v158)(v58, v33);

    if ((v59 & 1) == 0)
    {

      return;
    }
  }

  v158 = v34;
  v163 = v33;
  v60 = a1[3];
  v61 = a1[4];
  v62 = __swift_project_boxed_opaque_existential_1(a1, v60);
  v63 = v155;
  v127 = v62;
  v129 = v60;
  v128 = v61;
  sub_219BE3AD4();
  v64 = *(v23 + 48);
  v65 = v160;
  v66 = v64(v63, 1, v160);
  v130 = v23 + 48;
  v154 = v23;
  if (v66 == 1)
  {
    v67 = *(v23 + 104);
    (v67)(v32, *MEMORY[0x277D31670], v65);
    v68 = v64(v63, 1, v65);
    v69 = v157;
    if (v68 != 1)
    {
      sub_219A875C0(v63, &unk_280EE6610, MEMORY[0x277D31680]);
    }
  }

  else
  {
    (*(v23 + 32))(v32, v63, v65);
    v67 = *(v23 + 104);
    v69 = v157;
  }

  v157 = v64;
  v70 = *MEMORY[0x277D31678];
  v155 = v67;
  (v67)(v161, v70, v65);
  sub_219A86654(&qword_280EE6620, MEMORY[0x277D31680], MEMORY[0x277D31690]);
  sub_219BF5874();
  sub_219BF5874();
  if (v166 == v169 && v167 == v170)
  {
    v71 = 1;
  }

  else
  {
    v71 = sub_219BF78F4();
  }

  v72 = v154 + 8;
  v73 = v161;
  v161 = *(v154 + 8);
  (v161)(v73, v65);

  v74 = v164;
  if (v71)
  {
    __swift_project_boxed_opaque_existential_1(&v69[*(*v69 + 176)], *&v69[*(*v69 + 176) + 24]);
    sub_219227798(a3);
  }

  if ([v74 style] == 2)
  {
    v126 = v72;
    v152(v156, a3, v163);
    v75 = a1[3];
    v159 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v75);
    v165 = a3;
    v76 = sub_219BE3A14();
    if (v77)
    {
      v78 = v77;
      v125 = v76;
    }

    else
    {
      v79 = v134;
      sub_219BDBD54();
      v125 = sub_219BDBD44();
      v78 = v80;
      (*(v135 + 8))(v79, v136);
    }

    v81 = v145;
    v82 = v144;
    v83 = v157;
    sub_219BE3AD4();
    v65 = v160;
    if ((v83)(v82, 1, v160) == 1)
    {
      (v155)(v81, *MEMORY[0x277D31670], v65);
      if ((v83)(v82, 1, v65) != 1)
      {
        sub_219A875C0(v82, &unk_280EE6610, MEMORY[0x277D31680]);
      }
    }

    else
    {
      (*(v154 + 32))(v81, v82, v65);
    }

    __swift_project_boxed_opaque_existential_1(v159, v159[3]);
    v84 = sub_219BE3AE4();
    v86 = v85;
    v87 = v146;
    v88 = *(v146 + 32);
    v89 = sub_219BE3C04();
    v90 = v148;
    (*(*(v89 - 8) + 56))(&v148[v88], 1, 1, v89);
    (*(v158 + 32))(v90, v156, v163);
    v91 = (v90 + v87[5]);
    *v91 = v125;
    v91[1] = v78;
    (*(v154 + 32))(v90 + v87[6], v81, v65);
    v92 = (v90 + v87[7]);
    *v92 = v84;
    v92[1] = v86;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 88), *(Strong + 112));
      v94 = v142;
      sub_219A874E8(v90, v142, type metadata accessor for EngagementDismissal);
      v95 = (*(v140 + 80) + 16) & ~*(v140 + 80);
      v96 = swift_allocObject();
      sub_21880BC4C(v94, v96 + v95, type metadata accessor for EngagementDismissal);
      sub_219BDD154();
      swift_unknownObjectRelease();
    }

    v97 = sub_219BEEC14();
    v98 = v147;
    (*(*(v97 - 8) + 56))(v147, 1, 1, v97);
    v99 = (*(*(v151 + 88) + 88))(v98, *(v151 + 80));
    sub_219A875C0(v98, &qword_280E918A8, MEMORY[0x277D322C0]);
    v166 = v99;
    sub_219224DF4(0);
    sub_219A86654(&qword_280EE5650, sub_219224DF4, MEMORY[0x277D6D890]);
    sub_219BE6EF4();
    sub_218718690(&v69[*(*v69 + 168)], &v166);
    __swift_project_boxed_opaque_existential_1(&v166, v168);
    a3 = v165;
    sub_219BE3A64();

    sub_219A87630(v90, type metadata accessor for EngagementDismissal);
    __swift_destroy_boxed_opaque_existential_1(&v166);
    a1 = v159;
    v74 = v164;
    v72 = v126;
  }

  if ([v74 style] || (v100 = objc_msgSend(v74, sel_deepLink)) == 0)
  {
    (v161)(v162, v65);
  }

  else
  {
    v101 = v143;
    v102 = v100;
    sub_219BDB8B4();

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v103 = sub_219BE3A14();
    if (v104)
    {
      v105 = a3;
      v106 = v104;
      v164 = v103;
      v152(v137, v105, v163);
      (*(v149 + 16))(v139, v101, v150);
      v107 = v131;
      v165 = v105;
      sub_219BE3AD4();
      v108 = v160;
      v109 = v157;
      v110 = (v157)(v107, 1, v160);
      v126 = v72;
      if (v110 == 1)
      {
        (v155)(v138, *MEMORY[0x277D31670], v108);
        v111 = (v109)(v107, 1, v108);
        v112 = v154;
        if (v111 != 1)
        {
          sub_219A875C0(v107, &unk_280EE6610, MEMORY[0x277D31680]);
        }
      }

      else
      {
        v112 = v154;
        (*(v154 + 32))(v138, v107, v108);
      }

      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v113 = sub_219BE3AE4();
      v115 = v114;
      v116 = v132;
      v117 = *(v132 + 36);
      v118 = sub_219BE3C04();
      v119 = &v133[v117];
      v120 = v133;
      (*(*(v118 - 8) + 56))(v119, 1, 1, v118);
      (*(v158 + 32))(v120, v137, v163);
      v121 = (v120 + v116[5]);
      *v121 = v164;
      v121[1] = v106;
      (*(v149 + 32))(v120 + v116[6], v139, v150);
      (*(v112 + 32))(v120 + v116[7], v138, v108);
      v122 = (v120 + v116[8]);
      *v122 = v113;
      v122[1] = v115;
      v123 = swift_unknownObjectWeakLoadStrong();
      if (v123)
      {
        sub_218D2F32C(v120, v123);
        swift_unknownObjectRelease();
      }

      sub_219A87630(v120, type metadata accessor for EngagementAction);
      (*(v149 + 8))(v143, v150);
      (v161)(v162, v160);
    }

    else
    {

      (*(v149 + 8))(v101, v150);
      (v161)(v162, v160);
    }
  }
}

void sub_219A865F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219A86654(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_219A86714(void *a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for SavedFeedGapLocation(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 72) & ~*(v5 + 80));

  return sub_219A82350(a1, a2, (v2 + 32), v6);
}

uint64_t type metadata accessor for SavedFeedFailedData(uint64_t a1)
{
  result = qword_27CC22F48;
  if (!qword_27CC22F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_219A867E4(uint64_t a1, char a2)
{
  (*(*(*v2 + 88) + 80))(a1, a2 & 1, *(*v2 + 80));
  sub_219224DF4(0);
  sub_219A86654(&qword_280EE5650, sub_219224DF4, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

void sub_219A868DC(uint64_t a1)
{
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  v3 = [v2 indexPathsForVisibleItems];

  sub_219BDC104();
  v4 = sub_219BF5924();

  LOBYTE(v3) = sub_2190890C0(a1, v4);

  if ((v3 & 1) == 0)
  {
    sub_219BE8664();
    v5 = sub_219BE7BC4();

    v6 = sub_219BDC094();
    [v5 scrollToItemAtIndexPath:v6 atScrollPosition:2 animated:0];
  }
}

void sub_219A869FC(uint64_t a1, uint64_t a2, char a3)
{
  v35 = a1;
  v5 = MEMORY[0x277D83D88];
  sub_219A865F0(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_219BDC104();
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v33 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A865F0(0, &unk_280EE5C30, sub_218A74FF4, v5);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  sub_218A74FF4(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953E34(0);
  v20 = v19;
  MEMORY[0x28223BE20](v19);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    v31 = v9;
    v32 = v21;
    v30 = v3;
    sub_219BDEC74();
    sub_219BDEDC4();
    sub_219BEB1C4();

    if ((*(v16 + 48))(v13, 1, v15) == 1)
    {
      (*(v32 + 8))(v23, v20);
      v24 = &unk_280EE5C30;
      v25 = sub_218A74FF4;
      v26 = v13;
LABEL_6:
      sub_219A875C0(v26, v24, v25);
      return;
    }

    (*(v16 + 32))(v18, v13, v15);
    sub_219BEB2F4();
    v27 = v34;
    v28 = v31;
    if ((*(v34 + 48))(v8, 1, v31) == 1)
    {
      (*(v16 + 8))(v18, v15);
      (*(v32 + 8))(v23, v20);
      v24 = &unk_280EE9BB0;
      v25 = MEMORY[0x277CC9AF8];
      v26 = v8;
      goto LABEL_6;
    }

    v29 = v33;
    (*(v27 + 32))(v33, v8, v28);
    if (sub_219BDEC24())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_219A868DC(v29);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      (*(v27 + 8))(v29, v31);
    }

    else
    {
      (*(v27 + 8))(v29, v28);
    }

    (*(v16 + 8))(v18, v15);
    (*(v32 + 8))(v23, v20);
  }
}

void sub_219A86F08(uint64_t a1)
{
  if (!qword_280E90788)
  {
    sub_2186F76CC();
    v1 = sub_219BF1B54();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90788);
    }
  }
}

uint64_t sub_219A86F70()
{
  v0 = off_282A32618;
  type metadata accessor for SavedFeedDataManager();
  return v0();
}

uint64_t sub_219A87040()
{
  sub_219BF1584();

  return sub_2193984E4();
}

void sub_219A8719C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE3774();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE3514();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v13 = sub_219BE5434();
  __swift_project_value_buffer(v13, qword_280F627F0);
  (*(v10 + 16))(v12, a3, v9);
  (*(v6 + 16))(v8, a2, v5);
  v14 = sub_219BE5414();
  v15 = sub_219BF61F4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v16 = 136315394;
    v17 = sub_219BE34B4();
    v27 = v5;
    v19 = v18;
    (*(v10 + 8))(v12, v9);
    v20 = sub_2186D1058(v17, v19, &v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_219BE3764();
    v23 = v22;
    (*(v6 + 8))(v8, v27);
    v24 = sub_2186D1058(v21, v23, &v29);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_2186C1000, v14, v15, "Handle engagement placement=%s, failed with error=%s", v16, 0x16u);
    v25 = v28;
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v25, -1, -1);
    MEMORY[0x21CECF960](v16, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_219A874E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219A87550(uint64_t a1)
{
  v3 = *(type metadata accessor for EngagementDismissal(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_218E34118(a1, v4);
}

uint64_t sub_219A875C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219A865F0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219A87630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219A876E0(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v99 = a3;
  v100 = a4;
  v5 = sub_219BE71C4();
  v94 = *(v5 - 8);
  v95 = v5;
  MEMORY[0x28223BE20](v5);
  v93 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_219BF0DE4();
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v96 = v7;
  v97 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v106 = &v85 - v9;
  v104 = sub_219BEF2A4();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v11 = (&v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v85 - v13;
  v15 = sub_219BEF974();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MagazineCategoriesPickerLayoutModel(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = (&v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218C3FDA4(0);
  sub_219BE75E4();
  sub_218DB6AE4(0);
  v23 = *(v22 + 48);
  v24 = v21[9];
  v123[1] = v21[8];
  v124[0] = v24;
  *(v124 + 9) = *(v21 + 153);
  v25 = v21[5];
  v122[0] = v21[4];
  v122[1] = v25;
  v26 = v21[7];
  v122[2] = v21[6];
  v123[0] = v26;
  v27 = v21[1];
  v120[0] = *v21;
  v120[1] = v27;
  v28 = v21[3];
  v121[0] = v21[2];
  v121[1] = v28;
  v29 = *(v16 + 32);
  v101 = v15;
  v29(v18, v21 + v23, v15);
  v98 = v4;
  swift_getObjectType();
  sub_219BEED04();
  v30 = v120[0];
  sub_218AB7A30(v121, &v109);
  sub_218AB7A30(v122 + 8, v107);
  sub_218AB7A30(v123, &v119);

  v92 = v30 >> 64;
  v99 = v30;
  v31 = v102;
  v32 = v104;
  sub_219BF0D84();
  (*(v31 + 16))(v11, v14, v32);
  if ((*(v31 + 88))(v11, v32) == *MEMORY[0x277D32520])
  {
    v89 = v18;
    v90 = v14;
    v91 = v16;
    (*(v31 + 96))(v11, v32);
    v33 = *v11;
    sub_218BBF39C(0);
    v35 = v34;
    v36 = swift_allocBox();
    v38 = v37;
    v39 = *(v35 + 48);
    sub_219BE71A4();
    v40 = swift_allocObject();
    *(v40 + 16) = 0x3FE999999999999ALL;
    *(v38 + v39) = v40;
    v41 = *(v94 + 104);
    v42 = v38 + v39;
    v43 = v95;
    v41(v42, *MEMORY[0x277D6D918], v95);
    v44 = v93;
    *v93 = v36;
    v41(v44, *MEMORY[0x277D6D930], v43);
    v100 = v33;
    sub_219BE7304();
    v45 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    swift_unownedRetainStrong();
    v46 = swift_unownedRetain();

    sub_21896FC94(v120, &v109);
    v47 = v103;
    v48 = *(v103 + 16);
    v94 = v103 + 16;
    v95 = v48;
    v49 = v97;
    v50 = v105;
    v48(v97, v106, v105);
    v51 = *(v47 + 80);
    v52 = (v51 + 193) & ~v51;
    v96 += 7;
    v53 = (v96 + v52) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    v55 = v115;
    *(v54 + 136) = v116;
    v56 = v118[0];
    *(v54 + 152) = v117;
    *(v54 + 168) = v56;
    *(v54 + 177) = *(v118 + 9);
    v57 = v111;
    *(v54 + 72) = v112;
    v58 = v114;
    *(v54 + 88) = v113;
    *(v54 + 104) = v58;
    *(v54 + 120) = v55;
    v59 = v110;
    *(v54 + 24) = v109;
    *(v54 + 40) = v59;
    *(v54 + 16) = v46;
    *(v54 + 56) = v57;
    v60 = *(v47 + 32);
    v88 = v47 + 32;
    v93 = v60;
    (v60)(v54 + v52, v49, v50);
    *(v54 + v53) = v45;
    v61 = sub_219BE7334();
    v62 = swift_allocObject();
    *(v62 + 16) = sub_219A88424;
    *(v62 + 24) = v54;

    v63 = sub_219BE72F4();
    v64 = swift_allocObject();
    *(v64 + 16) = sub_219A88424;
    *(v64 + 24) = v54;

    v87 = v46[11];
    v86 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v95(v49, v106, v50);
    sub_21896FC94(v120, &v109);
    v65 = (v51 + 24) & ~v51;
    v66 = (v96 + v65) & 0xFFFFFFFFFFFFFFF8;
    v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    *(v68 + 16) = v46;
    (v93)(v68 + v65, v49, v50);
    *(v68 + v66) = v86;
    *(v68 + v67) = v46;
    v69 = (v68 + ((v67 + 15) & 0xFFFFFFFFFFFFFFF8));
    v70 = v100;
    v71 = v118[0];
    v69[8] = v117;
    v69[9] = v71;
    *(v69 + 153) = *(v118 + 9);
    v72 = v114;
    v69[4] = v113;
    v69[5] = v72;
    v73 = v116;
    v69[6] = v115;
    v69[7] = v73;
    v74 = v110;
    *v69 = v109;
    v69[1] = v74;
    v75 = v112;
    v69[2] = v111;
    v69[3] = v75;

    sub_219BE20F4();

    __swift_project_boxed_opaque_existential_1(&v109, *(&v110 + 1));
    v76 = sub_219BE7324();
    sub_219BE1A04();

    __swift_destroy_boxed_opaque_existential_1(&v109);
    v77 = v46[7];
    v97 = v46[8];
    __swift_project_boxed_opaque_existential_1(v46 + 4, v77);
    v78 = sub_219BE7314();
    sub_219BE20E4();
    if (*(&v107[0] + 1))
    {
      v117 = v107[8];
      v118[0] = v108[0];
      *(v118 + 9) = *(v108 + 9);
      v113 = v107[4];
      v114 = v107[5];
      v115 = v107[6];
      v116 = v107[7];
      v109 = v107[0];
      v110 = v107[1];
      v111 = v107[2];
      v112 = v107[3];
      if (__PAIR128__(v92, v99) != v107[0])
      {
        sub_219BF78F4();
      }

      v82 = v103;
      v81 = v104;
      sub_218C113E0(&v109);
    }

    else
    {
      sub_219921D30(v107);
      v82 = v103;
      v81 = v104;
    }

    [v70 isSelected];
    v79 = v70;
    v83 = v106;
    sub_219BF3554();

    (*(v82 + 8))(v83, v105);
    (*(v102 + 8))(v90, v81);
    (*(v91 + 8))(v89, v101);
    sub_218C113E0(v120);
  }

  else
  {
    v79 = sub_219BEF294();
    (*(v103 + 8))(v106, v105);
    v80 = *(v31 + 8);
    v80(v14, v32);
    (*(v16 + 8))(v18, v101);
    sub_218C113E0(v120);
    v80(v11, v32);
  }

  return v79;
}

uint64_t sub_219A88130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unownedRetainStrong();

  sub_21896FC94(a2, v10);
  sub_219BE20C4();

  sub_219921D30(v10);
  swift_unownedRetainStrong();
  sub_218718690(a1 + 32, v10);

  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = sub_219BE7314();

  v8 = swift_unknownObjectUnownedLoadStrong();
  [v8 isSelected];

  sub_219BF3554();
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_219A88254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_unownedRetainStrong();
  sub_218718690(a2 + 32, v16);

  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = sub_219BE7314();

  sub_219BE20E4();
  if (*(&v12[0] + 1))
  {
    v14[8] = v12[8];
    v15[0] = v13[0];
    *(v15 + 9) = *(v13 + 9);
    v14[4] = v12[4];
    v14[5] = v12[5];
    v14[6] = v12[6];
    v14[7] = v12[7];
    v14[0] = v12[0];
    v14[1] = v12[1];
    v14[2] = v12[2];
    v14[3] = v12[3];
    if (*a6 != v12[0])
    {
      sub_219BF78F4();
    }

    sub_218C113E0(v14);
  }

  else
  {
    sub_219921D30(v12);
  }

  v10 = swift_unknownObjectUnownedLoadStrong();
  [v10 isSelected];

  sub_219BF3554();
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_219A883F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_219A876E0(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_219A88424()
{
  v1 = *(sub_219BF0DE4() - 8);
  v2 = (*(v1 + 80) + 193) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_219A88130(v3, v0 + 24, v0 + v2, v4);
}

uint64_t sub_219A884B8(uint64_t a1)
{
  v3 = *(sub_219BF0DE4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);

  return sub_219A88254(a1, v7, v1 + v4, v8, v9, (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_219A88570(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_219A885CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t type metadata accessor for SportsSectionCurationRequest(uint64_t a1)
{
  result = qword_280EB26D8;
  if (!qword_280EB26D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219A886C4(uint64_t a1)
{
  sub_218845868(319);
  if (v1 <= 0x3F)
  {
    sub_2186D6710(319, &qword_280E8E288, &protocolRef_FCCoreConfiguration);
    if (v2 <= 0x3F)
    {
      sub_2186E2394();
      if (v3 <= 0x3F)
      {
        sub_2186C66AC();
        if (v4 <= 0x3F)
        {
          type metadata accessor for FCOperationPurpose(319);
          if (v5 <= 0x3F)
          {
            sub_219BEFBD4();
            if (v6 <= 0x3F)
            {
              sub_2186D0BA8();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_219A887D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_219A88820(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

uint64_t sub_219A8888C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_2187FABEC(v0[7], v0[8]);
  sub_2187FABEC(v0[9], v0[10]);

  return swift_deallocClassInstance();
}

uint64_t sub_219A88914()
{
  v1 = *(*v0 + 56);
  sub_2188202A8(v1);
  return v1;
}

uint64_t sub_219A8894C()
{
  v1 = *(*v0 + 72);
  sub_2188202A8(v1);
  return v1;
}

uint64_t sub_219A88984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v4 = type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Footer(0);
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v36 - v7;
  v42 = sub_219BF00D4();
  v8 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Header(0);
  v39 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v17 = sub_219BE9834();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3E604(0);
  sub_219BE8184();
  v21 = v44;
  v43 = v45;
  sub_219BE95F4();
  v22 = (*(v18 + 88))(v20, v17);
  if (v22 == *MEMORY[0x277D6E758])
  {
    v23 = sub_219BE9604();
    if ((v23 & 0x8000000000000000) == 0)
    {
      if (v23 < *(v21 + 16))
      {
        sub_21972CDB8(v21 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v23, v16, type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Header);
        sub_21972CDB8(v16, v13, type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Header);
        v24 = v42;
        (*(v8 + 32))(v10, v13, v42);
        __swift_project_boxed_opaque_existential_1((v40 + 16), *(v40 + 40));
        v25 = sub_219BF0234();

        (*(v8 + 8))(v10, v24);
        v26 = v16;
        v27 = type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Header;
LABEL_10:
        sub_21972CE20(v26, v27);
        return v25;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v22 == *MEMORY[0x277D6E750])
  {
    v28 = sub_219BE9604();
    v29 = *(v21 + 16);
    v30 = __OFSUB__(v28, v29);
    v31 = v28 - v29;
    if (!v30)
    {
      if ((v31 & 0x8000000000000000) == 0)
      {
        if (v31 < *(v43 + 16))
        {
          v32 = v38;
          sub_21972CDB8(v43 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v31, v38, type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Footer);
          v33 = v37;
          sub_21972CDB8(v32, v37, type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Footer);
          v34 = v42;
          (*(v8 + 32))(v10, v33, v42);
          __swift_project_boxed_opaque_existential_1((v40 + 16), *(v40 + 40));
          v25 = sub_219BF0234();

          (*(v8 + 8))(v10, v34);
          v26 = v32;
          v27 = type metadata accessor for PuzzleContinuePlayingLayoutSectionDescriptor.Footer;
          goto LABEL_10;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_16:
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for TagFeedCurationRequest(uint64_t a1)
{
  result = qword_280EC6898;
  if (!qword_280EC6898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219A88FAC(uint64_t a1)
{
  sub_2187B2E78(319, &qword_280E8F418, &type metadata for TagFeedCurationRequestTag);
  if (v1 <= 0x3F)
  {
    sub_2187B2E78(319, &unk_280E8F408, &type metadata for TagFeedCurationRequestTagIdentifier);
    if (v2 <= 0x3F)
    {
      sub_2186C66AC();
      if (v3 <= 0x3F)
      {
        type metadata accessor for FCOperationPurpose(319);
        if (v4 <= 0x3F)
        {
          sub_2186E2394();
          if (v5 <= 0x3F)
          {
            sub_219BEFBD4();
            if (v6 <= 0x3F)
            {
              sub_219BEF9C4();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_219A890F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a4;
  v7 = sub_219BE9FA4();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = type metadata accessor for ChannelPickerLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v52);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  sub_2189519D8(0);
  sub_219BE6934();
  memcpy(v57, v56, 0x151uLL);
  memcpy(v58, v56, 0x151uLL);
  v14 = sub_21898EAD4(v58) == 1;
  v47 = v10;
  v48 = v13;
  v45 = a3;
  v46 = a2;
  if (v14)
  {
    sub_21892DE88(v58);
    sub_218F9E778(v57);
    sub_219BE6934();
    memcpy(v53, v54, 0x151uLL);
    sub_219A8982C(v53, a3, v13);
    memcpy(v55, v53, 0x151uLL);
    sub_218F9E778(v55);
    sub_218F9E814(v13, v10, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
    sub_218F9E970(0, &qword_27CC14120, MEMORY[0x277D6D2A0], MEMORY[0x277D84560]);
    v15 = sub_219BE5884();
    v16 = a1;
    v17 = *(v15 - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_219C0B8C0;
    v21 = (v20 + v19);
    *v21 = 0;
    v22 = *(v17 + 104);
    v22(v21, *MEMORY[0x277D6D298], v15);
    *(v21 + v18) = 0x4024000000000000;
    v22((v21 + v18), *MEMORY[0x277D6D290], v15);
    v22((v21 + 2 * v18), *MEMORY[0x277D6D288], v15);
    v23 = v51;
    *v51 = v20;
    v24 = *MEMORY[0x277D6E9A0];
    v25 = sub_219BE9F94();
    (*(*(v25 - 8) + 104))(v23, v24, v25);
    v26 = (*(v49 + 104))(v23, *MEMORY[0x277D6E998], v50);
    MEMORY[0x28223BE20](v26);
    v40 = &v45 - 6;
    v27 = v46;
    *(&v45 - 4) = v45;
    *(&v45 - 3) = v16;
    *(&v45 - 2) = v27;
    v43 = sub_219A8B5EC;
  }

  else
  {
    sub_21892DE88(v58);
    sub_218F9E778(v57);
    sub_219BE6934();
    memcpy(v53, v54, 0x151uLL);
    sub_219A8982C(v53, a3, v13);
    memcpy(v55, v53, 0x151uLL);
    sub_218F9E778(v55);
    sub_218F9E814(v13, v10, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
    sub_218F9E970(0, &qword_27CC14120, MEMORY[0x277D6D2A0], MEMORY[0x277D84560]);
    v28 = sub_219BE5884();
    v29 = *(v28 - 8);
    v30 = *(v29 + 72);
    v31 = a1;
    v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_219C0B8C0;
    v34 = (v33 + v32);
    *v34 = 0;
    v35 = *(v29 + 104);
    v35(v33 + v32, *MEMORY[0x277D6D298], v28);
    *(v34 + v30) = 0;
    v35(v33 + v32 + v30, *MEMORY[0x277D6D290], v28);
    v35(v33 + v32 + 2 * v30, *MEMORY[0x277D6D288], v28);
    v36 = v51;
    *v51 = v33;
    v37 = *MEMORY[0x277D6E9A0];
    v38 = sub_219BE9F94();
    (*(*(v38 - 8) + 104))(v36, v37, v38);
    v39 = (*(v49 + 104))(v36, *MEMORY[0x277D6E998], v50);
    MEMORY[0x28223BE20](v39);
    v40 = &v45 - 6;
    v42 = v45;
    v41 = v46;
    *(&v45 - 4) = v31;
    *(&v45 - 3) = v42;
    *(&v45 - 2) = v41;
    v43 = sub_219A8B5C8;
  }

  sub_218949014(v43, v40);
  type metadata accessor for ChannelPickerLayoutModel(0);
  sub_218F9E9D4(&qword_27CC1C0E0, type metadata accessor for ChannelPickerLayoutSectionDescriptor, &unk_219CAAEF0);
  sub_218F9E9D4(&qword_27CC0D178, type metadata accessor for ChannelPickerLayoutModel, &unk_219C15474);
  sub_219BE81A4();
  return sub_218F9E87C(v48, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
}

__n128 sub_219A8982C@<Q0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v5 = type metadata accessor for ChannelPickerHeaderViewLayoutOptions(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v70, a1, 0x151uLL);
  v11 = sub_21898EAD4(v70);
  v12 = sub_21892DE88(v70);
  v13 = *(v12 + 48);
  if (v11 == 1)
  {
    if (!v13)
    {
      memcpy(v69, a1, 0x151uLL);
      v14 = sub_21892DE88(v69);
      v15 = v14[1];
      *&v64 = *v14;
      v16 = 0xE400000000000000;
      v17 = 1684632167;
LABEL_7:
      v65 = v17;
      goto LABEL_8;
    }
  }

  else if (!v13)
  {
    memcpy(v69, a1, 0x151uLL);
    v19 = sub_21892DE88(v69);
    v15 = v19[1];
    *&v64 = *v19;
    v16 = 0xE400000000000000;
    v17 = 1953720684;
    goto LABEL_7;
  }

  v65 = *(v12 + 40);
  memcpy(v69, a1, 0x151uLL);
  v18 = sub_21892DE88(v69);
  v15 = v18[1];
  *&v64 = *v18;
  v16 = v13;
LABEL_8:

  memcpy(v69, a1, 0x151uLL);
  sub_21898EAD4(v69);
  v20 = sub_21892DE88(v69);
  v21 = *(v20 + 24);
  if (!v21)
  {
    goto LABEL_14;
  }

  v22 = *(v20 + 16);
  if (v21 == 0xE000000000000000 && !v22)
  {
    v23 = 0;
    goto LABEL_15;
  }

  if (sub_219BF78F4())
  {
    v23 = 0;
    v22 = 0;
  }

  else
  {
LABEL_14:
    memcpy(v68, a1, sizeof(v68));
    sub_21898EAD4(v68);
    v23 = *(sub_21892DE88(v68) + 16);
  }

LABEL_15:
  v24 = 0xE000000000000000;
  if (v15)
  {
    v24 = v15;
  }

  *v68 = v65;
  *&v68[8] = v16;
  v25 = v64;
  if (!v15)
  {
    v25 = 0;
  }

  *&v68[16] = v25;
  *&v68[24] = v24;
  *&v68[32] = v23;
  *&v68[40] = v22;
  memset(&v68[48], 0, 24);
  __swift_project_boxed_opaque_existential_1((v66 + 176), *(v66 + 200));
  v26 = sub_219BE8164();
  (*(*(v26 - 8) + 16))(v7, a2, v26);

  sub_219BE7FF4();
  *&v7[v5[5]] = 0x4035000000000000;
  *&v7[v5[6]] = 0x4026000000000000;
  *&v7[v5[7]] = v27;
  sub_219067368(COERCE_DOUBLE(v68), v7, v10);
  sub_218F9E87C(v7, type metadata accessor for ChannelPickerHeaderViewLayoutOptions);
  CGRectGetWidth(*&v10[v8[5]]);
  sub_219BE7FF4();
  sub_219BF6B54();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = &v10[v8[6]];
  v37 = &v10[v8[7]];
  v38 = v8[9];
  v39 = &v10[v8[8]];
  LODWORD(v65) = v39[32];
  LODWORD(v66) = v10[v38];
  v40 = type metadata accessor for ChannelPickerLayoutSectionDescriptor(0);
  v41 = v67;
  v42 = v67 + *(v40 + 20);
  v43 = *MEMORY[0x277D6E758];
  v44 = sub_219BE9834();
  v45 = *(*(v44 - 8) + 104);
  v46 = *v37;
  v47 = *(v37 + 1);
  v48 = *v36;
  v59 = *(v36 + 1);
  v60 = v48;
  v49 = *(v39 + 1);
  v63 = *v39;
  v64 = v46;
  v61 = v49;
  v62 = v47;
  v45(v42, v43, v44);
  v50 = (v42 + v8[5]);
  *v50 = v29;
  v50[1] = v31;
  v50[2] = v33;
  v50[3] = v35;
  v51 = (v42 + v8[6]);
  v52 = v59;
  *v51 = v60;
  v51[1] = v52;
  v53 = (v42 + v8[7]);
  v54 = v62;
  *v53 = v64;
  v53[1] = v54;
  v55 = v42 + v8[8];
  v56 = v61;
  *v55 = v63;
  *(v55 + 16) = v56;
  *(v55 + 32) = v65;
  *(v42 + v8[9]) = v66;
  sub_218F9E87C(v10, type metadata accessor for ChannelPickerHeaderViewLayoutAttributes);
  v57 = *&v68[48];
  *(v41 + 32) = *&v68[32];
  *(v41 + 48) = v57;
  *(v41 + 64) = *&v68[64];
  result = *&v68[16];
  *v41 = *v68;
  *(v41 + 16) = result;
  *(v41 + *(v40 + 24)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_219A89CFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v67 = a3;
  v70 = a2;
  v72 = a1;
  v74 = a4;
  v4 = type metadata accessor for ChannelEngagementLayoutOptions(0);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChannelPickerEngagementModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChannelCategoryLayoutOptions(0);
  MEMORY[0x28223BE20](v8);
  v71 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for ChannelPickerLayoutModel(0);
  MEMORY[0x28223BE20](v73);
  v11 = (&v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ChannelCoinLayoutOptions(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ChannelPickerElementModel(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218951C88(0);
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v39 = v17[9];
      v80[8] = v17[8];
      v80[9] = v39;
      v80[10] = v17[10];
      v40 = v17[5];
      v80[4] = v17[4];
      v80[5] = v40;
      v41 = v17[7];
      v80[6] = v17[6];
      v80[7] = v41;
      v42 = v17[1];
      v80[0] = *v17;
      v80[1] = v42;
      v43 = v17[3];
      v80[2] = v17[2];
      v80[3] = v43;
      v44 = sub_219BE8164();
      v45 = v71;
      (*(*(v44 - 8) + 16))(v71, v72, v44);
      *(v45 + v8[5]) = 0x4020000000000000;
      *(v45 + v8[6]) = 0x4031000000000000;
      *(v45 + v8[7]) = 0;
      *(v45 + v8[8]) = 0;
      sub_2198C0B5C(v80, *&v45, v79);
      sub_218BFB180(v80, v11);
      v46 = v79[7];
      v11[17] = v79[6];
      v11[18] = v46;
      v47 = v79[9];
      v11[19] = v79[8];
      v11[20] = v47;
      v48 = v79[3];
      v11[13] = v79[2];
      v11[14] = v48;
      v49 = v79[5];
      v11[15] = v79[4];
      v11[16] = v49;
      v50 = v79[1];
      v11[11] = v79[0];
      v11[12] = v50;
      swift_storeEnumTagMultiPayload();
      sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel, &unk_219C1543C);
      sub_219BE75D4();
      sub_218F9E87C(v45, type metadata accessor for ChannelCategoryLayoutOptions);
      return sub_218980B3C(v80);
    }

    v58 = v17;
    v56 = v68;
    sub_218980AD8(v58, v68, v19);
    v59 = sub_219BE8164();
    v60 = v69;
    (*(*(v59 - 8) + 16))(v69, v72, v59);
    __swift_project_boxed_opaque_existential_1((v67 + 96), *(v67 + 120));
    sub_218AC2AA8(v56, v80);
    sub_218A5A148(0, v61);
    v63 = (v11 + *(v62 + 48));
    sub_218F9E814(v56, v11, type metadata accessor for ChannelPickerEngagementModel);
    v64 = v80[1];
    *v63 = v80[0];
    v63[1] = v64;
    v65 = v80[3];
    v63[2] = v80[2];
    v63[3] = v65;
    swift_storeEnumTagMultiPayload();
    sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel, &unk_219C1543C);
    sub_219BE75D4();
    sub_218F9E87C(v60, type metadata accessor for ChannelEngagementLayoutOptions);
    v57 = type metadata accessor for ChannelPickerEngagementModel;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v20 = v17[4];
      v21 = v17[5];
      v22 = v17[2];
      v77[3] = v17[3];
      v77[4] = v20;
      v78[0] = v21;
      *(v78 + 9) = *(v17 + 89);
      v23 = v17[1];
      v77[0] = *v17;
      v77[1] = v23;
      v77[2] = v22;
      v24 = sub_219BE8164();
      (*(*(v24 - 8) + 16))(v14, v72, v24);
      sub_2189519D8(0);
      sub_219BE6934();
      memcpy(v79, v76, 0x151uLL);
      sub_218F9E778(v79);
      sub_219BE6934();
      memcpy(v80, v75, 0x151uLL);
      sub_218F9E778(v80);
      __asm { FMOV            V0.2D, #24.0 }

      *&v14[v12[8]] = _Q0;
      *&v14[v12[9]] = 0x4020000000000000;
      *&v14[v12[10]] = 0x4031000000000000;
      v14[v12[5]] = 3;
      v14[v12[6]] = 1;
      v14[v12[11]] = 0;
      v14[v12[7]] = 0;
      v76[0] = *(v78 + 8);
      v75[0] = 0x6C61636F6CLL;
      v75[1] = 0xE500000000000000;
      sub_2187F3BD4();
      v30 = sub_219BF7084();
      sub_218EBB0BC(COERCE_DOUBLE(v77), v14, v30 & 1, v76);
      sub_218BFB1DC(v77, v11);
      v31 = v76[13];
      v11[19] = v76[12];
      v11[20] = v31;
      *(v11 + 329) = *(&v76[13] + 9);
      v32 = v76[9];
      v11[15] = v76[8];
      v11[16] = v32;
      v33 = v76[11];
      v11[17] = v76[10];
      v11[18] = v33;
      v34 = v76[5];
      v11[11] = v76[4];
      v11[12] = v34;
      v35 = v76[7];
      v11[13] = v76[6];
      v11[14] = v35;
      v36 = v76[1];
      v11[7] = v76[0];
      v11[8] = v36;
      v37 = v76[3];
      v11[9] = v76[2];
      v11[10] = v37;
      swift_storeEnumTagMultiPayload();
      sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel, &unk_219C1543C);
      sub_219BE75D4();
      sub_218F9E87C(v14, type metadata accessor for ChannelCoinLayoutOptions);
      return sub_218980BE4(v77);
    }

    v51 = v17[7];
    v79[6] = v17[6];
    v79[7] = v51;
    v79[8] = v17[8];
    *(&v79[8] + 9) = *(v17 + 137);
    v52 = v17[3];
    v79[2] = v17[2];
    v79[3] = v52;
    v53 = v17[5];
    v79[4] = v17[4];
    v79[5] = v53;
    v54 = v17[1];
    v79[0] = *v17;
    v79[1] = v54;
    v55 = sub_219BE8164();
    v56 = v71;
    (*(*(v55 - 8) + 16))(v71, v72, v55);
    *(v56 + v8[5]) = 0x4020000000000000;
    *(v56 + v8[6]) = 0x4031000000000000;
    *(v56 + v8[7]) = 0;
    *(v56 + v8[8]) = 0;
    v76[6] = v79[6];
    v76[7] = v79[7];
    v76[8] = v79[8];
    *(&v76[8] + 9) = *(&v79[8] + 9);
    v76[2] = v79[2];
    v76[3] = v79[3];
    v76[4] = v79[4];
    v76[5] = v79[5];
    v76[0] = v79[0];
    v76[1] = v79[1];
    sub_2198C03D4(v76, *&v56, &v80[10]);
    v80[6] = v79[6];
    v80[7] = v79[7];
    v80[8] = v79[8];
    *(&v80[8] + 9) = *(&v79[8] + 9);
    v80[2] = v79[2];
    v80[3] = v79[3];
    v80[4] = v79[4];
    v80[5] = v79[5];
    v80[0] = v79[0];
    v80[1] = v79[1];
    memcpy(v11, v80, 0x140uLL);
    swift_storeEnumTagMultiPayload();
    sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel, &unk_219C1543C);
    sub_219BE75D4();
    v57 = type metadata accessor for ChannelCategoryLayoutOptions;
  }

  return sub_218F9E87C(v56, v57);
}

uint64_t sub_219A8A5C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v105 = a4;
  v117 = a3;
  v127 = a1;
  v120 = a5;
  v6 = type metadata accessor for ChannelEngagementLayoutOptions(0);
  MEMORY[0x28223BE20](v6 - 8);
  v108 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChannelPickerEngagementModel(0);
  MEMORY[0x28223BE20](v8 - 8);
  v106 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for ChannelCategoryLayoutOptions(0);
  MEMORY[0x28223BE20](v111);
  v112 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for ChannelPickerLayoutModel(0);
  MEMORY[0x28223BE20](v119);
  v118 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for ChannelTagLayoutOptions(0);
  MEMORY[0x28223BE20](v104);
  v109 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for ChannelPickerElementModel(0);
  MEMORY[0x28223BE20](v116);
  v115 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951C88(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v102 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F9E8DC(0);
  v113 = v18;
  MEMORY[0x28223BE20](v18);
  v114 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F9E970(0, &qword_27CC0EF78, sub_218951C88, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v20 - 8);
  v110 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v101 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v101 - v26;
  sub_218BFAEC4(0);
  v29 = v28;
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v32 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189519D8(0);
  v103 = v33;
  v107 = a2;
  sub_219BE6974();
  v34 = sub_219BE23E4();
  (*(v30 + 8))(v32, v29);
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = *(v16 + 16);
    v36(v27, v34 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * (v35 - 1), v15);

    v37 = *(v16 + 56);
    v37(v27, 0, 1, v15);
  }

  else
  {

    v37 = *(v16 + 56);
    v37(v27, 1, 1, v15);
    v36 = *(v16 + 16);
  }

  v36(v24, v127, v15);
  v37(v24, 0, 1, v15);
  v38 = v114;
  v39 = *(v113 + 12);
  sub_218F9EA1C(v27, v114);
  sub_218F9EA1C(v24, v38 + v39);
  v40 = *(v16 + 48);
  if (v40(v38, 1, v15) == 1)
  {
    sub_218F9EAB0(v24);
    sub_218F9EAB0(v27);
    if (v40(v38 + v39, 1, v15) == 1)
    {
      sub_218F9EAB0(v38);
      v41 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v113 = v27;
  v42 = v38;
  v43 = v38;
  v44 = v110;
  sub_218F9EA1C(v42, v110);
  if (v40(v43 + v39, 1, v15) == 1)
  {
    sub_218F9EAB0(v24);
    sub_218F9EAB0(v113);
    (*(v16 + 8))(v44, v15);
    v38 = v43;
LABEL_9:
    sub_218F9E87C(v38, sub_218F9E8DC);
    v41 = 0;
    goto LABEL_11;
  }

  v45 = v102;
  (*(v16 + 32))(v102, v43 + v39, v15);
  sub_218F9E9D4(&qword_27CC0EF88, sub_218951C88, MEMORY[0x277D6D408]);
  v41 = sub_219BF53A4();
  v46 = *(v16 + 8);
  v46(v45, v15);
  sub_218F9EAB0(v24);
  sub_218F9EAB0(v113);
  v46(v44, v15);
  sub_218F9EAB0(v43);
LABEL_11:
  v47 = v115;
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v70 = v47[9];
      v126[8] = v47[8];
      v126[9] = v70;
      v126[10] = v47[10];
      v71 = v47[5];
      v126[4] = v47[4];
      v126[5] = v71;
      v72 = v47[7];
      v126[6] = v47[6];
      v126[7] = v72;
      v73 = v47[1];
      v126[0] = *v47;
      v126[1] = v73;
      v74 = v47[3];
      v126[2] = v47[2];
      v126[3] = v74;
      v75 = sub_219BE8164();
      v76 = v112;
      (*(*(v75 - 8) + 16))(v112, v117, v75);
      v77 = v111;
      *(v76 + *(v111 + 20)) = 0x4020000000000000;
      *(v76 + v77[6]) = 0x4031000000000000;
      *(v76 + v77[7]) = 0;
      *(v76 + v77[8]) = v41 & 1;
      sub_2198C0B5C(v126, *&v76, v125);
      v78 = v118;
      sub_218BFB180(v126, v118);
      v79 = v125[7];
      v78[17] = v125[6];
      v78[18] = v79;
      v80 = v125[9];
      v78[19] = v125[8];
      v78[20] = v80;
      v81 = v125[3];
      v78[13] = v125[2];
      v78[14] = v81;
      v82 = v125[5];
      v78[15] = v125[4];
      v78[16] = v82;
      v83 = v125[1];
      v78[11] = v125[0];
      v78[12] = v83;
      swift_storeEnumTagMultiPayload();
      sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel, &unk_219C1543C);
      sub_219BE75D4();
      sub_218F9E87C(v76, type metadata accessor for ChannelCategoryLayoutOptions);
      return sub_218980B3C(v126);
    }

    v93 = v106;
    sub_218980AD8(v47, v106, v49);
    v94 = sub_219BE8164();
    v95 = v108;
    (*(*(v94 - 8) + 16))(v108, v117, v94);
    __swift_project_boxed_opaque_existential_1((v105 + 96), *(v105 + 120));
    sub_218AC2AA8(v93, v126);
    sub_218A5A148(0, v96);
    v98 = &v118[*(v97 + 48)];
    sub_218F9E814(v93, v118, type metadata accessor for ChannelPickerEngagementModel);
    v99 = v126[1];
    *v98 = v126[0];
    *(v98 + 1) = v99;
    v100 = v126[3];
    *(v98 + 2) = v126[2];
    *(v98 + 3) = v100;
    swift_storeEnumTagMultiPayload();
    sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel, &unk_219C1543C);
    sub_219BE75D4();
    sub_218F9E87C(v95, type metadata accessor for ChannelEngagementLayoutOptions);
    v91 = type metadata accessor for ChannelPickerEngagementModel;
    v92 = v93;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v50 = v47[4];
      v51 = v47[5];
      v52 = v47[2];
      v123[3] = v47[3];
      v123[4] = v50;
      v124[0] = v51;
      *(v124 + 9) = *(v47 + 89);
      v53 = v47[1];
      v123[0] = *v47;
      v123[1] = v53;
      v123[2] = v52;
      v54 = sub_219BE8164();
      v55 = v109;
      (*(*(v54 - 8) + 16))(v109, v117, v54);
      sub_219BE6934();
      memcpy(v125, v122, 0x151uLL);
      sub_218F9E778(v125);
      sub_219BE6934();
      memcpy(v126, v121, 0x151uLL);
      sub_218F9E778(v126);
      v56 = v104;
      __asm { FMOV            V0.2D, #24.0 }

      *(v55 + *(v104 + 32)) = _Q0;
      *(v55 + v56[9]) = 0x4020000000000000;
      *(v55 + v56[10]) = 0x4031000000000000;
      *(v55 + v56[5]) = 3;
      *(v55 + v56[6]) = 1;
      *(v55 + v56[7]) = 0;
      *(v55 + v56[11]) = v41 & 1;
      sub_219275728(v123, v55, v122);
      v62 = v118;
      sub_218BFB1DC(v123, v118);
      v63 = v122[11];
      *(v62 + 17) = v122[10];
      *(v62 + 18) = v63;
      *(v62 + 38) = *&v122[12];
      v64 = v122[7];
      *(v62 + 13) = v122[6];
      *(v62 + 14) = v64;
      v65 = v122[9];
      *(v62 + 15) = v122[8];
      *(v62 + 16) = v65;
      v66 = v122[3];
      *(v62 + 9) = v122[2];
      *(v62 + 10) = v66;
      v67 = v122[5];
      *(v62 + 11) = v122[4];
      *(v62 + 12) = v67;
      v68 = v122[1];
      *(v62 + 7) = v122[0];
      *(v62 + 8) = v68;
      swift_storeEnumTagMultiPayload();
      sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel, &unk_219C1543C);
      sub_219BE75D4();
      sub_218F9E87C(v55, type metadata accessor for ChannelTagLayoutOptions);
      return sub_218980BE4(v123);
    }

    v84 = v47[7];
    v125[6] = v47[6];
    v125[7] = v84;
    v125[8] = v47[8];
    *(&v125[8] + 9) = *(v47 + 137);
    v85 = v47[3];
    v125[2] = v47[2];
    v125[3] = v85;
    v86 = v47[5];
    v125[4] = v47[4];
    v125[5] = v86;
    v87 = v47[1];
    v125[0] = *v47;
    v125[1] = v87;
    v88 = sub_219BE8164();
    v89 = *&v112;
    (*(*(v88 - 8) + 16))(v112, v117, v88);
    v90 = v111;
    *(*&v89 + *(v111 + 20)) = 0x4020000000000000;
    *(*&v89 + v90[6]) = 0x4031000000000000;
    *(*&v89 + v90[7]) = 0;
    *(*&v89 + v90[8]) = v41 & 1;
    v122[6] = v125[6];
    v122[7] = v125[7];
    v122[8] = v125[8];
    *(&v122[8] + 9) = *(&v125[8] + 9);
    v122[2] = v125[2];
    v122[3] = v125[3];
    v122[4] = v125[4];
    v122[5] = v125[5];
    v122[0] = v125[0];
    v122[1] = v125[1];
    sub_2198C03D4(v122, v89, &v126[10]);
    v126[6] = v125[6];
    v126[7] = v125[7];
    v126[8] = v125[8];
    *(&v126[8] + 9) = *(&v125[8] + 9);
    v126[2] = v125[2];
    v126[3] = v125[3];
    v126[4] = v125[4];
    v126[5] = v125[5];
    v126[0] = v125[0];
    v126[1] = v125[1];
    memcpy(v118, v126, 0x140uLL);
    swift_storeEnumTagMultiPayload();
    sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel, &unk_219C1543C);
    sub_219BE75D4();
    v91 = type metadata accessor for ChannelCategoryLayoutOptions;
    v92 = *&v89;
  }

  return sub_218F9E87C(v92, v91);
}

uint64_t sub_219A8B35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_219BE8164();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return MEMORY[0x2822009F8](sub_219A8B424, 0, 0);
}

uint64_t sub_219A8B424()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[6] + 16))(v0[7], v2, v0[5]);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_218948C7C(sub_219A8B5A8, v3);

  type metadata accessor for ChannelPickerLayoutSectionDescriptor(0);
  type metadata accessor for ChannelPickerLayoutModel(0);
  sub_218F9E9D4(&unk_27CC0AEF0, type metadata accessor for ChannelPickerLayoutSectionDescriptor, &unk_219CAAEB8);
  sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel, &unk_219C1543C);
  sub_219BE6514();

  v4 = v0[1];

  return v4();
}

uint64_t sub_219A8B614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_219BEBDB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEBC84();
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 8);
  if (!v13)
  {
    return sub_218718690((v2 + 8), a2);
  }

  v26 = v6;
  v27 = v5;
  v28 = v10;
  v29 = a2;
  v14 = v2[11];
  v15 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v14);
  v16 = v13;
  v17 = [v16 identifier];
  v18 = sub_219BF5414();
  v20 = v19;

  sub_2194B98F4(0xAu, v18, v20, v14, v15);

  v21 = v16;
  sub_219BEBC64();
  v22 = [objc_msgSend(v21 backingTag)];
  swift_unknownObjectRelease();
  if (v22)
  {
    swift_unknownObjectRetain();
    sub_219BEBDA4();
    __swift_project_boxed_opaque_existential_1(v30, v31);
    sub_219A8BF64(&qword_27CC1B588, MEMORY[0x277D2D1A0], MEMORY[0x277D2D198]);
    v23 = v27;
    sub_219BEC144();
    swift_unknownObjectRelease();
    (*(v26 + 8))(v8, v23);
  }

  __swift_project_boxed_opaque_existential_1(v30, v31);
  sub_219A8BF64(&qword_280EE34B8, MEMORY[0x277D2D120], MEMORY[0x277D2D118]);
  sub_219BEC144();

  (*(v28 + 8))(v12, v9);
  sub_218718690(v30, v29);
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

void sub_219A8B95C(void *a1, char *a2)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  type metadata accessor for MagazineGridViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  sub_218718690(a1, v12);
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  sub_21875F93C(v12, v6 + 40);
  v7 = v5;
  v8 = sub_219BE1E04();
  swift_unownedRelease();

  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v9 = sub_219BE1D74();
    v10 = (v8 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_viewControllerIdentifier);
    *v10 = v9;
    v10[1] = v11;

    sub_219A8BF64(&qword_27CC1E408, type metadata accessor for MagazineGridViewController, &unk_219C9E430);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219A8BAE8(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v13 = a5;
  v15 = a4;
  v6 = a3;
  v14 = a3;
  v8 = sub_219BE15B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  v16[0] = v6;
  v17 = a4;
  sub_219A8B614(v16, v18);

  sub_2186CFDE4(0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_219BE1BA4();
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CFDE4(0, &qword_27CC15008, &protocol descriptor for MagazineGridModelLoaderType);
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();

  (*(v9 + 104))(v11, *MEMORY[0x277D2F470], v8);
  sub_219BDD0F4();

  (*(v9 + 8))(v11, v8);
  sub_219BDD274();
  sub_219BE1B94();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  LOBYTE(v18[0]) = v14;
  v18[1] = v15;
  return sub_219BE1BA4();
}

void sub_219A8BDA0(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v19[3] = a4;
  v19[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v10 = *a2;
  v11 = *(a2 + 1);
  __swift_project_boxed_opaque_existential_1(a3 + 2, a3[5]);
  type metadata accessor for MagazineGridViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  sub_218718690(v19, v18);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v10;
  *(v12 + 32) = v11;
  sub_21875F93C(v18, v12 + 40);
  v13 = v11;
  v14 = sub_219BE1E04();
  swift_unownedRelease();

  if (v14)
  {
    v15 = sub_219BE1D74();
    v16 = (v14 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_viewControllerIdentifier);
    *v16 = v15;
    v16[1] = v17;

    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219A8BF64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_219A8C030()
{
  result = qword_280ED7F18;
  if (!qword_280ED7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED7F18);
  }

  return result;
}

unint64_t sub_219A8C08C()
{
  result = qword_27CC22F58;
  if (!qword_27CC22F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22F58);
  }

  return result;
}

uint64_t sub_219A8C134()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v9[1] = 0;
  sub_2187DA508();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE98F0 = result;
  return result;
}

uint64_t sub_219A8C31C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for SportsNavigationModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &off_282A74548;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_219A8C3CC()
{
  type metadata accessor for SportsNavigationViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC22F60, &protocol descriptor for SportsNavigationStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC22F68, &protocol descriptor for SportsNavigationRouterType, 1);
  sub_219BE2914();
  type metadata accessor for SportsNavigationRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC22F70, &protocol descriptor for SportsNavigationEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC22F78, &protocol descriptor for SportsNavigationInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC22F80, &protocol descriptor for SportsNavigationTrackerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &unk_27CC22F88, &protocol descriptor for SportsNavigationDataManagerType, 0);
  sub_219BE2914();

  sub_2186D85DC();
  sub_219BE2904();

  sub_219A90B80(0, &qword_27CC22F98, MEMORY[0x277D6D8B8]);
  sub_219BE2904();

  type metadata accessor for SportsNavigationBlueprintModifierFactory();
  sub_219BE2904();

  sub_219A8FD08(0, v0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219A90548(0);
  sub_219BE2904();

  sub_219A8FE14(0, v1);
  sub_219BE2904();

  sub_219A901EC(0);
  sub_219BE2904();

  type metadata accessor for SportsNavigationBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_219A90634(0, v2);
  sub_219BE2904();

  sub_2186C6148(0, &qword_280E8E828, 0x277D75B40);
  sub_219BE2904();

  sub_219A8FEE0(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  sub_219BE2914();

  sub_219A90048(0, v3);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219A90330(0, v4);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219A90894(0, &qword_27CC23000, MEMORY[0x277D6E6B0], v5);
  sub_219BE2904();

  type metadata accessor for SportsNavigationBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for SportsNavigationBlueprintViewHeaderProvider();
  sub_219BE2904();

  sub_219A90894(0, &qword_27CC23050, MEMORY[0x277D6E388], v6);
  sub_219BE2904();

  sub_219BE70E4();
  sub_219BE2904();

  sub_219A90788(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80, MEMORY[0x277D6EA40], 1);
  sub_219BE2914();

  return result;
}

char *sub_219A8CC50(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC22F60, &protocol descriptor for SportsNavigationStylerType, 1);
  result = sub_219BE1E34();
  if (!v26)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC22F70, &protocol descriptor for SportsNavigationEventHandlerType, 0);
  result = sub_219BE1E34();
  v3 = v23;
  if (!v23)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A90634(0, v5);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = *v10;
    v21 = type metadata accessor for SportsNavigationStyler();
    v22 = &off_282A706C8;
    v20[0] = v12;
    v13 = objc_allocWithZone(type metadata accessor for SportsNavigationViewController());
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = sub_219A90C98(*v17, v3, v4, v6, v13);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v25);
    return v19;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_219A8CF10@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for BaseStyler(0);
    v20[3] = v10;
    v11 = sub_219A902E8(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v20[4] = v11;
    v20[0] = v9;
    v12 = type metadata accessor for SportsNavigationStyler();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v10);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[5] = v10;
    v13[6] = v11;
    v13[2] = v19;
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    a2[3] = v12;
    a2[4] = &off_282A706C8;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A8D170@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186CF94C(0);
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for SportsNavigationRouter();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      result = sub_2186CB1F0(v9, v8 + 24);
      *(v8 + 64) = v5;
      *(v8 + 72) = v6;
      a2[3] = v7;
      a2[4] = &off_282A54B20;
      *a2 = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_219A8D26C(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsNavigationViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_219A8D2EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC22F78, &protocol descriptor for SportsNavigationInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC22F68, &protocol descriptor for SportsNavigationRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC22F80, &protocol descriptor for SportsNavigationTrackerType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_219A90EB4(v5, v6, *v10, *v15);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A5EB38;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_219A8D59C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_27CC22F88, &protocol descriptor for SportsNavigationDataManagerType, 0);
  result = sub_219BE1E34();
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A8FD08(0, v5);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsNavigationBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    sub_219A90C04(0);
    v8 = swift_allocObject();
    v8[3] = 0;
    result = swift_unknownObjectWeakInit();
    v8[6] = v9;
    v8[7] = v10;
    v8[4] = v6;
    v8[5] = v7;
    *a2 = v8;
    a2[1] = &off_282A80D20;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219A8D6DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for SportsNavigationTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A6CCD0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219A8D764@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D85DC();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FE20, MEMORY[0x277D34428], 1);
  result = sub_219BE1E34();
  if (!v14)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
  result = sub_219BE1E34();
  v6 = v11;
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E97BA0, &protocol descriptor for SportsNavigationTitleStringBuilderType, 1);
  result = sub_219BE1E34();
  if (v10)
  {
    type metadata accessor for SportsNavigationDataManager();
    v8 = swift_allocObject();
    v8[2] = v5;
    sub_2186CB1F0(&v13, (v8 + 3));
    v8[8] = v6;
    v8[9] = v7;
    result = sub_2186CB1F0(&v9, (v8 + 10));
    *a2 = v8;
    a2[1] = &off_282A667C0;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219A8D988(__n128 a1)
{
  sub_219A90B80(0, &qword_27CC22F98, MEMORY[0x277D6D8B8]);
  swift_allocObject();
  return sub_219BE6F94();
}

uint64_t sub_219A8D9DC()
{
  type metadata accessor for SportsNavigationBlueprintModifierFactory();

  return swift_allocObject();
}

uint64_t sub_219A8DA10(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A90B80(0, &qword_27CC22F98, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219A8FE14(0, v3);
    result = sub_219BE1E24();
    if (result)
    {
      sub_219A8FD08(0, v4);
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_219A8DB0C(__n128 a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277D6E728];
  sub_219A90B80(0, &qword_27CC230B0, MEMORY[0x277D6E728]);
  swift_allocObject();
  sub_219BE96E4();
  sub_219A90B80(0, &qword_27CC230B8, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_219A902A4(&qword_27CC230C0, &qword_27CC230B0, v4, MEMORY[0x277D6E730], v5);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_219A90548(0);
  if (sub_219BE1E24())
  {
    swift_allocObject();
    sub_219A902E8(&unk_27CC230C8, sub_219A90548, MEMORY[0x277D6E7C0]);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }
}

void *sub_219A8DCC4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A901EC(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  result = sub_219BE1DF4();
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsNavigationBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219A90548(0);
    swift_allocObject();
    return sub_219BE9984();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_219A8DE08(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A8FEE0(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_219A8FE14(0, 0);
      swift_allocObject();
      return sub_219BE72C4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219A8DF08(__n128 a1)
{
  sub_219A901EC(0);
  swift_allocObject();
  return sub_219BE8554();
}

void *sub_219A8DF40(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9A3C0, &protocol descriptor for SportsTagLayoutAttributesFactoryType, 1);
  result = sub_219BE1E34();
  if (v38)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280E9A130, &protocol descriptor for TitleViewLayoutAttributesFactoryType, 1);
    result = sub_219BE1E34();
    if (v36)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
      v30[2] = v30;
      v4 = MEMORY[0x28223BE20](v3);
      v6 = (v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v7 + 16))(v6, v4);
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      v30[1] = v30;
      v9 = MEMORY[0x28223BE20](v8);
      v11 = (v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11, v9);
      v13 = *v6;
      v14 = *v11;
      v15 = type metadata accessor for SportsTagLayoutAttributesFactory();
      v34[3] = v15;
      v34[4] = &off_282A9D098;
      v34[0] = v13;
      v16 = type metadata accessor for TitleViewLayoutAttributesFactory();
      v32 = v16;
      v33 = &off_282A72438;
      v31[0] = v14;
      type metadata accessor for SportsNavigationBlueprintLayoutBuilder();
      v17 = swift_allocObject();
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v34, v15);
      v19 = MEMORY[0x28223BE20](v18);
      v21 = (v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21, v19);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      v24 = MEMORY[0x28223BE20](v23);
      v26 = (v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v27 + 16))(v26, v24);
      v28 = *v21;
      v29 = *v26;
      v17[5] = v15;
      v17[6] = &off_282A9D098;
      v17[2] = v28;
      v17[10] = v16;
      v17[11] = &off_282A72438;
      v17[7] = v29;
      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(v34);
      __swift_destroy_boxed_opaque_existential_1(v35);
      __swift_destroy_boxed_opaque_existential_1(v37);
      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}