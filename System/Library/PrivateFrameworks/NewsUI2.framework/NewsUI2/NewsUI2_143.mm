uint64_t sub_2196B0F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v114 = a4;
  v128 = a1;
  v111 = sub_219BDBD34();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_219BDF7C4();
  v108 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v115 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FEC(0);
  MEMORY[0x28223BE20](v7 - 8);
  v105 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_219BE0724();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v85 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BDF0E4();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_219BEC504();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_219BDF094();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v13 - 8);
  v95 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_219BE16D4();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v96 = &v80 - v18;
  v94 = sub_219BE0444();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B612C(0);
  v117 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B61C0(0, &qword_280EE37B0, MEMORY[0x277D6EC60]);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v80 - v27;
  v112 = sub_219BDFCE4();
  v29 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v31 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = swift_projectBox();
  sub_2196B61C0(0, &unk_280EE5140, MEMORY[0x277D6DA48]);
  v33 = v32;
  sub_219BE7594();
  v118 = v33;
  v119 = a2;
  sub_219BE7564();
  v34 = sub_2196B6B28(&qword_280EE8DF0, MEMORY[0x277D2FBA8], MEMORY[0x277D2FB88]);
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v81 = v16;
  sub_219BDFCD4();
  v36 = *(v21 + 8);
  v89 = v21 + 8;
  v87 = v36;
  v36(v23, v117);
  v37 = *(v26 + 8);
  v88 = v26 + 8;
  v86 = v37;
  v37(v28, v25);
  sub_2196B6ABC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v39 = v38;
  v40 = sub_219BDCD44();
  v90 = v34;
  v41 = v40;
  v42 = *(v40 - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v120 = *(v42 + 80);
  v121 = v43;
  v113 = v39;
  v45 = swift_allocObject();
  v124 = xmmword_219C09BA0;
  *(v45 + 16) = xmmword_219C09BA0;
  v46 = *(v42 + 104);
  v126 = *MEMORY[0x277CEAD18];
  v122 = v42 + 104;
  v123 = v41;
  v125 = v46;
  v46(v45 + v44);
  sub_2196B6B28(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v127 = "articleFooterContext";
  v47 = v112;
  sub_219BDCCC4();

  (*(v29 + 8))(v31, v47);
  sub_219BE7594();
  sub_219BE7564();
  result = sub_219BEB314();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v48 = v92;
  sub_219BE0434();
  v87(v23, v117);
  v86(v28, v25);
  v49 = swift_allocObject();
  *(v49 + 16) = v124;
  v50 = v123;
  v125(v49 + v44, v126, v123);
  sub_2196B6B28(&unk_280EE8400, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
  v51 = v94;
  sub_219BDCCC4();

  (*(v93 + 8))(v48, v51);
  v52 = v91;
  swift_beginAccess();
  v53 = v52;
  v54 = v95;
  sub_2196B6404(v53, v95, sub_218B58D58);
  v55 = v97;
  v56 = v98;
  if ((*(v97 + 48))(v54, 1, v98) == 1)
  {
    sub_2196B6A5C(v54, sub_218B58D58);
  }

  else
  {
    v57 = v96;
    (*(v55 + 32))(v96, v54, v56);
    (*(v55 + 16))(v81, v57, v56);
    v58 = v82;
    sub_219BDF084();
    v59 = swift_allocObject();
    *(v59 + 16) = v124;
    v125(v59 + v44, v126, v50);
    sub_2196B6B28(&unk_280EE88C0, MEMORY[0x277D2D888], MEMORY[0x277D2D880]);
    v60 = v84;
    sub_219BDCCC4();

    (*(v83 + 8))(v58, v60);
    v61 = swift_allocObject();
    *(v61 + 16) = v124;
    v125(v61 + v44, v126, v123);
    sub_2196B6B28(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    v62 = v96;
    sub_219BDCCC4();

    (*(v55 + 8))(v62, v56);
  }

  v63 = v107;
  v64 = v105;
  v65 = v101;
  v66 = v100;
  v67 = v99;
  sub_2196B646C(0);
  v112 = v68;
  sub_219BF07D4();
  v69 = sub_219BEC4F4();
  (*(v66 + 8))(v67, v65);
  swift_getObjectType();
  v70 = v102;
  sub_219BF67F4();
  v71 = swift_allocObject();
  *(v71 + 16) = v124;
  v125(v71 + v44, v126, v123);
  sub_2196B6B28(&qword_280EE88B0, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
  v72 = v104;
  sub_219BDCCC4();

  (*(v103 + 8))(v70, v72);
  v117 = v69;
  sub_219BF6824();
  v73 = v106;
  if ((*(v106 + 48))(v64, 1, v63) == 1)
  {
    sub_2196B6A5C(v64, sub_218B58FEC);
  }

  else
  {
    v74 = v64;
    v75 = v85;
    (*(v73 + 32))(v85, v74, v63);
    v76 = swift_allocObject();
    *(v76 + 16) = v124;
    v125(v76 + v44, v126, v123);
    sub_2196B6B28(&unk_27CC0DC50, MEMORY[0x277D2E738], MEMORY[0x277D2E730]);
    sub_219BDCCC4();

    (*(v73 + 8))(v75, v63);
  }

  sub_219BF07B4();
  sub_219BDF7B4();
  sub_2196B6B28(&qword_280EE8680, MEMORY[0x277D2DD68], MEMORY[0x277D2DD60]);
  sub_219BDCCC4();
  sub_219BE0A94();
  v77 = v109;
  sub_219BE75A4();
  sub_2196B6B28(&qword_280EE8228, MEMORY[0x277D2EA68], MEMORY[0x277D2EA60]);
  sub_219BDCC64();
  v78 = *(v110 + 8);
  v79 = v111;
  v78(v77, v111);
  sub_219BE7574();
  sub_219BDCC74();
  swift_unknownObjectRelease();
  v78(v77, v79);
  return (*(v108 + 8))(v115, v116);
}

uint64_t sub_2196B2124(uint64_t a1)
{
  sub_2196B61C0(0, &qword_280EE45E8, MEMORY[0x277D6E3A0]);
  v3 = v2;
  v151 = *(v2 - 8);
  v149 = *(v151 + 64);
  MEMORY[0x28223BE20](v2);
  v150 = &v123 - v4;
  sub_2196B6ABC(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v148 = &v123 - v6;
  v7 = sub_219BE16E4();
  MEMORY[0x28223BE20](v7 - 8);
  v161 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_219BDE874();
  v160 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v146 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v138 = &v123 - v11;
  MEMORY[0x28223BE20](v12);
  v152 = &v123 - v13;
  v128 = sub_219BEC504();
  v133 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v127 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B646C(0);
  v126 = v15;
  v130 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v125 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_219BF0F34();
  v132 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v135 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B6554(0);
  v137 = v18;
  v131 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v134 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_219BDDA04();
  v129 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v153 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v21 - 8);
  v144 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v165 = &v123 - v24;
  v156 = sub_219BDF584();
  v164 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v159 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v163 = &v123 - v27;
  sub_2196B61C0(0, &qword_280EE37B0, MEMORY[0x277D6EC60]);
  v142 = v28;
  v141 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v162 = &v123 - v29;
  v147 = sub_219BE16D4();
  v145 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v143 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = v30;
  MEMORY[0x28223BE20](v31);
  v157 = &v123 - v32;
  sub_2196B612C(0);
  v169 = v33;
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v168 = &v123 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B663C(0);
  v37 = v36 - 8;
  MEMORY[0x28223BE20](v36);
  v39 = &v123 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v123 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E847D8(0);
  v44 = v43;
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v47 = &v123 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v50 = &v123 - v49;
  sub_219BE8EF4();
  v158 = v42;
  v166 = a1;
  v167 = v3;
  sub_219BE8F24();
  v176 = MEMORY[0x277D84F90];
  v179 = MEMORY[0x277D84F90];
  v139 = v45;
  v51 = *(v45 + 16);
  v170 = v50;
  v51(v47, v50, v44);
  sub_2196B6B28(&qword_280EE59C8, sub_218E847D8, MEMORY[0x277D6D728]);
  sub_219BF56A4();
  v52 = *(v37 + 44);
  sub_2196B6B28(&qword_280EE59C0, sub_218E847D8, MEMORY[0x277D6D730]);
  v177 = v44;
  sub_219BF5E84();
  if (*&v39[v52] != v178)
  {
    v175 = (v34 + 16);
    v174 = (v129 + 11);
    LODWORD(v173) = *MEMORY[0x277D2FB98];
    LODWORD(v172) = *MEMORY[0x277D2FBA0];
    v77 = (v34 + 8);
    v171 = (v129 + 1);
    v129 += 12;
    v124 = (v130 + 4);
    v123 = v133 + 1;
    ++v130;
    v133 = (v131 + 1);
    v131 += 4;
    ++v132;
    v176 = MEMORY[0x277D84F90];
    do
    {
      v78 = v154;
      v79 = v153;
      v80 = v168;
      v81 = v169;
      while (1)
      {
        v82 = sub_219BF5EC4();
        (*v175)(v80);
        v82(&v178, 0);
        sub_219BF5E94();
        sub_219BE5FC4();
        v83 = (*v174)(v79, v78);
        if (v83 == v173)
        {
          (*v129)(v79, v78);
          v84 = v134;
          v85 = v79;
          v86 = v137;
          (*v131)(v134, v85, v137);
          v87 = v135;
          sub_219BF07D4();
          sub_219BF0F14();
          (*v132)(v87, v136);
          (*v133)(v84, v86);
          v88 = (*v77)(v168, v169);
          goto LABEL_23;
        }

        if (v83 == v172)
        {
          break;
        }

        (*v77)(v80, v81);
        (*v171)(v79, v78);
        sub_219BF5E84();
        if (*&v39[v52] == v178)
        {
          goto LABEL_2;
        }
      }

      (*v129)(v79, v78);
      sub_2196B66D0(0);
      v176 = *(v89 + 48);
      v90 = v125;
      v91 = v126;
      (*v124)(v125, v79, v126);
      v92 = v127;
      sub_219BF07D4();
      sub_219BEC4F4();
      (*v123)(v92, v128);
      (*v130)(v90, v91);
      (*v77)(v168, v169);
      v88 = (*v133)(&v79[v176], v137);
LABEL_23:
      MEMORY[0x21CECC690](v88);
      if (*((v179 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v179 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v176 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v176 = v179;
      sub_219BF5E84();
    }

    while (*&v39[v52] != v178);
  }

LABEL_2:
  sub_2196B6A5C(v39, sub_2196B663C);
  sub_219BE8F04();
  v54 = v163;
  v53 = v164;
  v55 = v156;
  (*(v164 + 104))(v163, *MEMORY[0x277D2DB50], v156);
  v56 = sub_219BDF474();
  (*(*(v56 - 8) + 56))(v165, 1, 1, v56);
  v57 = v170;
  result = sub_218E66970(v170);
  if (v59)
  {
    goto LABEL_47;
  }

  v60 = result;
  v61 = sub_219690144(v158, v57);
  (*(v53 + 16))(v159, v54, v55);
  v62 = v152;
  sub_219BE6934();
  sub_219A5E7F0(v161);
  v63 = *(v160 + 8);
  v64 = v155;
  v63(v62, v155);
  v65 = sub_219BE6944();
  if (v60 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v60 > 0x7FFFFFFF)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v171 = v63;
  v172 = v66;
  v62 = v176;
  LODWORD(v174) = v61;
  if (v176 >> 62)
  {
LABEL_45:
    v122 = v65;
    v67 = sub_219BF7214();
    v65 = v122;
    goto LABEL_7;
  }

  v67 = *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v175 = v60;
  v173 = v65;
  if (!v67)
  {
    goto LABEL_32;
  }

  v178 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v67 & ~(v67 >> 63), 0);
  if ((v67 & 0x8000000000000000) == 0)
  {
    v68 = v178;
    if ((v62 & 0xC000000000000001) != 0)
    {
      v69 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v69, v176);
        v70 = [swift_unknownObjectRetain() articleID];
        v71 = sub_219BF5414();
        v73 = v72;
        swift_unknownObjectRelease_n();

        v178 = v68;
        v75 = *(v68 + 16);
        v74 = *(v68 + 24);
        if (v75 >= v74 >> 1)
        {
          sub_21870B65C((v74 > 1), v75 + 1, 1);
          v68 = v178;
        }

        ++v69;
        *(v68 + 16) = v75 + 1;
        v76 = v68 + 16 * v75;
        *(v76 + 32) = v71;
        *(v76 + 40) = v73;
      }

      while (v67 != v69);
    }

    else
    {
      v93 = (v62 + 32);
      do
      {
        v94 = [swift_unknownObjectRetain_n() articleID];
        v95 = sub_219BF5414();
        v97 = v96;
        swift_unknownObjectRelease_n();

        v178 = v68;
        v99 = *(v68 + 16);
        v98 = *(v68 + 24);
        if (v99 >= v98 >> 1)
        {
          sub_21870B65C((v98 > 1), v99 + 1, 1);
          v68 = v178;
        }

        *(v68 + 16) = v99 + 1;
        v100 = v68 + 16 * v99;
        *(v100 + 32) = v95;
        *(v100 + 40) = v97;
        v93 += 8;
        --v67;
      }

      while (v67);
    }

    v64 = v155;
    v55 = v156;
LABEL_32:
    v101 = v138;
    sub_219BE6934();
    v102 = v160;
    v103 = v146;
    (*(v160 + 32))(v146, v101, v64);
    v104 = (*(v102 + 88))(v103, v64);
    v105 = v148;
    v106 = v171;
    if (v104 == *MEMORY[0x277D301C0] || v104 == *MEMORY[0x277D301B8] || v104 == *MEMORY[0x277D301A0] || v104 == *MEMORY[0x277D30198] || v104 == *MEMORY[0x277D301B0])
    {
      v171(v103, v64);
      v107 = MEMORY[0x277D2E6B0];
    }

    else
    {
      if (v104 != *MEMORY[0x277D301C8])
      {
        v110 = *MEMORY[0x277D2E6C0];
        v109 = sub_219BE0674();
        (*(*(v109 - 8) + 104))(v105, v110, v109);
        v106(v103, v64);
        goto LABEL_42;
      }

      v171(v103, v64);
      v107 = MEMORY[0x277D2E6C0];
    }

    v108 = *v107;
    v109 = sub_219BE0674();
    (*(*(v109 - 8) + 104))(v105, v108, v109);
LABEL_42:
    sub_219BE0674();
    (*(*(v109 - 8) + 56))(v105, 0, 1, v109);
    v111 = v165;
    sub_2196B6404(v165, v144, sub_218B58F30);
    v112 = v157;
    sub_219BE15E4();

    sub_2196B6A5C(v111, sub_218B58F30);
    (*(v164 + 8))(v163, v55);
    (*(v141 + 8))(v162, v142);
    v113 = v145;
    v114 = v143;
    v115 = v147;
    (*(v145 + 16))(v143, v112, v147);
    v116 = v151;
    v117 = v150;
    v118 = v167;
    (*(v151 + 16))(v150, v166, v167);
    v119 = (*(v113 + 80) + 16) & ~*(v113 + 80);
    v120 = (v140 + *(v116 + 80) + v119) & ~*(v116 + 80);
    v121 = swift_allocObject();
    (*(v113 + 32))(v121 + v119, v114, v115);
    (*(v116 + 32))(v121 + v120, v117, v118);

    sub_219BDD154();

    (*(v113 + 8))(v157, v115);
    sub_2196B6A5C(v158, sub_218B58900);
    return (*(v139 + 8))(v170, v177);
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_2196B3754(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B6ABC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v6 = sub_219BDCD44();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x277CEAD18], v6);
  sub_219BE16D4();
  sub_2196B6B28(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
  sub_219BDCCC4();

  sub_219BE0794();
  sub_2196B61C0(0, &qword_280EE45E8, MEMORY[0x277D6E3A0]);
  sub_219BE8F14();
  sub_2196B6B28(&qword_280EE82F8, MEMORY[0x277D2E7F0], MEMORY[0x277D2E7E8]);
  sub_219BDCC64();
  v10 = *(v3 + 8);
  v10(v5, v2);
  sub_219BE8EE4();
  sub_219BDCC74();
  return (v10)(v5, v2);
}

uint64_t sub_2196B3A5C()
{
  v0 = sub_219BDD0A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDDA04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B612C(0);
  sub_219BE5FC4();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D2FB98])
  {
    *v3 = 0x656E696C64616568;
    v3[1] = 0xE800000000000000;
    (*(v1 + 104))(v3, *MEMORY[0x277CEAE48], v0);

    sub_219BDD204();

    (*(v1 + 8))(v3, v0);
  }

  else if (v8 == *MEMORY[0x277D2FBA0])
  {
    (*(v5 + 96))(v7, v4);
    sub_2196B66D0(0);
    v10 = *(v9 + 48);
    sub_2196B6554(0);
    (*(*(v11 - 8) + 8))(&v7[v10], v11);
    sub_2196B646C(0);
    return (*(*(v12 - 8) + 8))(v7, v12);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_2196B3D10(uint64_t a1, uint64_t a2)
{
  v143 = a2;
  sub_2196B612C(0);
  v4 = v3;
  v142 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v139 = v5;
  v141 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B61C0(0, &qword_280EE37B0, MEMORY[0x277D6EC60]);
  v7 = v6;
  v137 = *(v6 - 8);
  v135 = *(v137 + 64);
  MEMORY[0x28223BE20](v6);
  v136 = &v108 - v8;
  sub_2196B6ABC(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v122 = &v108 - v10;
  v11 = sub_219BE16E4();
  MEMORY[0x28223BE20](v11 - 8);
  v128 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_219BDE874();
  v126 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v125 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v118 = &v108 - v15;
  MEMORY[0x28223BE20](v16);
  v123 = &v108 - v17;
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v18 - 8);
  v121 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v132 = &v108 - v21;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v22 - 8);
  v130 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_219BDF584();
  v129 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v127 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v146 = &v108 - v26;
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v27);
  v120 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E847D8(0);
  v30 = v29;
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v145 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B62B4(0);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v108 - v37;
  v39 = v4;
  v40 = a1;
  sub_219BE5F84();
  v138 = v7;
  v41 = v143;
  sub_219BEB244();

  v42 = v31;
  v133 = swift_allocBox();
  v44 = v43;
  v45 = sub_219BE16D4();
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v119 = v46 + 56;
  v47(v44, 1, 1, v45);
  v134 = v38;
  sub_2196B6404(v38, v35, sub_2196B62B4);
  v48 = (*(v42 + 48))(v35, 1, v30);
  v140 = v40;
  if (v48 == 1)
  {
    v49 = v142;
    v50 = v39;
    sub_2196B6A5C(v35, sub_2196B62B4);
LABEL_31:
    v146 = *(v147 + 16);
    v96 = v136;
    v97 = v137;
    v98 = v41;
    v99 = v138;
    (*(v137 + 16))(v136, v98, v138);
    v100 = v141;
    (*(v49 + 16))(v141, v140, v50);
    v101 = (*(v97 + 80) + 16) & ~*(v97 + 80);
    v102 = (v135 + *(v49 + 80) + v101) & ~*(v49 + 80);
    v103 = (v139 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
    v104 = swift_allocObject();
    (*(v97 + 32))(v104 + v101, v96, v99);
    (*(v49 + 32))(v104 + v102, v100, v50);
    *(v104 + v103) = v133;

    sub_219BDD154();

    sub_219BDD134();

    sub_2196B6A5C(v134, sub_2196B62B4);

    return;
  }

  v113 = v47;
  v114 = v45;
  v115 = v44;
  v117 = v39;
  v116 = v42;
  v51 = v145;
  (*(v42 + 32))(v145, v35, v30);
  v52 = v30;
  v53 = sub_2196B4CCC(v41);
  v54 = v129;
  v55 = v131;
  (*(v129 + 104))(v146, *MEMORY[0x277D2DB50], v131);
  v56 = sub_219BE97D4();
  v57 = v130;
  (*(*(v56 - 8) + 56))(v130, 1, 1, v56);
  v58 = sub_219BDF474();
  (*(*(v58 - 8) + 56))(v132, 1, 1, v58);
  v59 = sub_218E66970(v51);
  if (v60)
  {
    goto LABEL_36;
  }

  v61 = v59;
  v112 = sub_219690144(v57, v51);
  (*(v54 + 16))(v127, v146, v55);
  v62 = v123;
  sub_219BE6934();
  sub_219A5E7F0(v128);
  v63 = *(v126 + 8);
  v123 = (v126 + 8);
  v111 = v63;
  v63(v62, v144);
  v124 = v52;
  v64 = sub_219BE6944();
  if (v61 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_33;
  }

  v52 = v61;
  if (v61 > 0x7FFFFFFF)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v53 >> 62)
  {
LABEL_34:
    v105 = v64;
    v106 = v65;
    v107 = sub_219BF7214();
    v65 = v106;
    v66 = v107;
    v64 = v105;
    goto LABEL_8;
  }

  v66 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v110 = v52;
  v109 = v64;
  v108 = v65;
  if (!v66)
  {
LABEL_21:
    v84 = v118;
    sub_219BE6934();
    v85 = v126;
    v86 = v125;
    v87 = v144;
    (*(v126 + 32))(v125, v84, v144);
    v88 = (*(v85 + 88))(v86, v87);
    v89 = v122;
    if (v88 == *MEMORY[0x277D301C0] || v88 == *MEMORY[0x277D301B8] || v88 == *MEMORY[0x277D301A0] || v88 == *MEMORY[0x277D30198] || v88 == *MEMORY[0x277D301B0])
    {
      v49 = v142;
      v111(v125, v144);
      v92 = *MEMORY[0x277D2E6B0];
      v91 = sub_219BE0674();
      (*(*(v91 - 8) + 104))(v89, v92, v91);
    }

    else
    {
      v49 = v142;
      if (v88 == *MEMORY[0x277D301C8])
      {
        v111(v125, v144);
        v90 = *MEMORY[0x277D2E6C0];
        v91 = sub_219BE0674();
        (*(*(v91 - 8) + 104))(v89, v90, v91);
      }

      else
      {
        v93 = *MEMORY[0x277D2E6C0];
        v91 = sub_219BE0674();
        (*(*(v91 - 8) + 104))(v89, v93, v91);
        v111(v125, v144);
      }
    }

    v50 = v117;
    sub_219BE0674();
    (*(*(v91 - 8) + 56))(v89, 0, 1, v91);
    v94 = v132;
    sub_2196B6404(v132, v121, sub_218B58F30);
    v95 = v120;
    sub_219BE15E4();

    sub_2196B6A5C(v94, sub_218B58F30);
    sub_2196B6A5C(v130, sub_218B58900);
    (*(v129 + 8))(v146, v131);
    (*(v116 + 8))(v145, v124);
    v113(v95, 0, 1, v114);
    sub_218B58ECC(v95, v115);
    goto LABEL_31;
  }

  v148 = MEMORY[0x277D84F90];
  sub_21870B65C(0, v66 & ~(v66 >> 63), 0);
  if ((v66 & 0x8000000000000000) == 0)
  {
    v67 = v148;
    if ((v53 & 0xC000000000000001) != 0)
    {
      v68 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v68, v53);
        v69 = [swift_unknownObjectRetain() articleID];
        v70 = sub_219BF5414();
        v72 = v71;
        swift_unknownObjectRelease_n();

        v148 = v67;
        v74 = *(v67 + 16);
        v73 = *(v67 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_21870B65C((v73 > 1), v74 + 1, 1);
          v67 = v148;
        }

        ++v68;
        *(v67 + 16) = v74 + 1;
        v75 = v67 + 16 * v74;
        *(v75 + 32) = v70;
        *(v75 + 40) = v72;
      }

      while (v66 != v68);
    }

    else
    {
      v76 = v53 + 32;
      do
      {
        v77 = [swift_unknownObjectRetain_n() articleID];
        v78 = sub_219BF5414();
        v80 = v79;
        swift_unknownObjectRelease_n();

        v148 = v67;
        v82 = *(v67 + 16);
        v81 = *(v67 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_21870B65C((v81 > 1), v82 + 1, 1);
          v67 = v148;
        }

        *(v67 + 16) = v82 + 1;
        v83 = v67 + 16 * v82;
        *(v83 + 32) = v78;
        *(v83 + 40) = v80;
        v76 += 8;
        --v66;
      }

      while (v66);
    }

    v41 = v143;
    goto LABEL_21;
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_2196B4CCC(void (**a1)(char *))
{
  v73 = a1;
  v55 = sub_219BEC504();
  v60 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B646C(0);
  v3 = v2;
  v59 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_219BF0F34();
  v58 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B6554(0);
  v64 = v6;
  v57 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v61 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_219BDDA04();
  v56 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B612C(0);
  v10 = v9;
  v70 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v65 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B663C(0);
  v72 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B62B4(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E847D8(0);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v46 - v24;
  sub_219BE5F84();
  sub_2196B61C0(0, &qword_280EE37B0, MEMORY[0x277D6EC60]);
  sub_219BEB244();
  v26 = v20;

  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    sub_2196B6A5C(v17, sub_2196B62B4);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v51 = v3;
    (*(v20 + 32))(v25, v17, v19);
    v27 = MEMORY[0x277D84F90];
    v75 = MEMORY[0x277D84F90];
    v52 = v26;
    (*(v26 + 16))(v22, v25, v19);
    sub_2196B6B28(&qword_280EE59C8, sub_218E847D8, MEMORY[0x277D6D728]);
    sub_219BF56A4();
    v28 = *(v72 + 9);
    sub_2196B6B28(&qword_280EE59C0, sub_218E847D8, MEMORY[0x277D6D730]);
    sub_219BF5E84();
    if (*&v14[v28] != v74[0])
    {
      v73 = (v70 + 2);
      v72 = (v56 + 11);
      v71 = *MEMORY[0x277D2FB98];
      v69 = *MEMORY[0x277D2FBA0];
      ++v70;
      v68 = v56 + 1;
      v56 += 12;
      v49 = (v59 + 4);
      v48 = (v60 + 8);
      v47 = v59 + 1;
      v59 = (v57 + 1);
      v57 += 4;
      ++v58;
      v50 = v25;
      do
      {
        v60 = v27;
        v29 = v10;
        v30 = v66;
        v31 = v67;
        v32 = v65;
        while (1)
        {
          v33 = sub_219BF5EC4();
          (*v73)(v32);
          v33(v74, 0);
          sub_219BF5E94();
          v34 = v29;
          sub_219BE5FC4();
          v35 = (*v72)(v30, v31);
          v36 = v32;
          if (v35 == v71)
          {
            (*v56)(v30, v31);
            v37 = v61;
            v38 = v30;
            v39 = v64;
            (*v57)(v61, v38, v64);
            v40 = v62;
            sub_219BF07D4();
            v60 = sub_219BF0F14();
            (*v58)(v40, v63);
            (*v59)(v37, v39);
            v10 = v34;
            v41 = (*v70)(v36, v34);
            goto LABEL_12;
          }

          if (v35 == v69)
          {
            break;
          }

          v29 = v34;
          (*v70)(v32, v34);
          (*v68)(v30, v31);
          sub_219BF5E84();
          if (*&v14[v28] == v74[0])
          {
            v25 = v50;
            v27 = v60;
            goto LABEL_15;
          }
        }

        (*v56)(v30, v31);
        sub_2196B66D0(0);
        v46 = *(v42 + 48);
        v43 = v53;
        (*v49)();
        v44 = v54;
        sub_219BF07D4();
        v60 = sub_219BEC4F4();
        (*v48)(v44, v55);
        (*v47)(v43, v51);
        v10 = v34;
        (*v70)(v32, v34);
        v41 = (*v59)(&v30[v46], v64);
LABEL_12:
        MEMORY[0x21CECC690](v41);
        v25 = v50;
        if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v46 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v27 = v75;
        sub_219BF5E84();
      }

      while (*&v14[v28] != v74[0]);
    }

LABEL_15:
    sub_2196B6A5C(v14, sub_2196B663C);
    (*(v52 + 8))(v25, v19);
  }

  return v27;
}

uint64_t sub_2196B5760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v50 = a2;
  v5 = sub_219BDF094();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE16D4();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9);
  v38 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v39 = &v38 - v12;
  v13 = sub_219BE0444();
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x28223BE20](v13);
  v44 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDFCE4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BE14C4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BE14A4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = swift_projectBox();
  (*(v20 + 104))(v22, *MEMORY[0x277D2F2E8], v19);
  sub_219BE1484();
  sub_2196B6B28(&qword_280EE8010, MEMORY[0x277D2F280], MEMORY[0x277D2F278]);
  v52 = a1;
  sub_219BDCCC4();
  (*(v24 + 8))(v26, v23);
  sub_2196B61C0(0, &qword_280EE37B0, MEMORY[0x277D6EC60]);
  sub_2196B6B28(&qword_280EE8DF0, MEMORY[0x277D2FBA8], MEMORY[0x277D2FB88]);
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_219BDFCD4();
  sub_2196B6B28(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  sub_219BDCCC4();
  (*(v16 + 8))(v18, v15);
  result = sub_219BEB314();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v28 = v44;
  sub_219BE0434();
  sub_2196B6B28(&unk_280EE8400, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
  v29 = v46;
  sub_219BDCCC4();
  (*(v45 + 8))(v28, v29);
  v30 = v43;
  swift_beginAccess();
  v31 = v30;
  v32 = v47;
  sub_2196B6404(v31, v47, sub_218B58D58);
  v34 = v48;
  v33 = v49;
  if ((*(v48 + 48))(v32, 1, v49) == 1)
  {
    return sub_2196B6A5C(v32, sub_218B58D58);
  }

  v35 = v39;
  (*(v34 + 32))(v39, v32, v33);
  (*(v34 + 16))(v38, v35, v33);
  v36 = v40;
  sub_219BDF084();
  sub_2196B6B28(&unk_280EE88C0, MEMORY[0x277D2D888], MEMORY[0x277D2D880]);
  v37 = v42;
  sub_219BDCCC4();
  (*(v41 + 8))(v36, v37);
  sub_2196B6B28(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
  sub_219BDCCC4();
  return (*(v34 + 8))(v35, v33);
}

uint64_t sub_2196B5F64()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return swift_deallocClassInstance();
}

double sub_2196B5FE8()
{

  sub_219BDD154();

  return result;
}

void sub_2196B612C(uint64_t a1)
{
  if (!qword_280EE5D48)
  {
    sub_219BDDA04();
    sub_2196B6B28(&unk_280EE8DE0, MEMORY[0x277D2FBA8], MEMORY[0x277D2FB90]);
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5D48);
    }
  }
}

void sub_2196B61C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_219BDE874();
    v8[1] = sub_219BDDA04();
    v8[2] = sub_2196B6B28(&unk_280EE8AF0, MEMORY[0x277D301D0], MEMORY[0x277D301A8]);
    v8[3] = sub_2196B6B28(&unk_280EE8DE0, MEMORY[0x277D2FBA8], MEMORY[0x277D2FB90]);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2196B62E8(uint64_t a1)
{
  sub_2196B61C0(0, &qword_280EE37B0, MEMORY[0x277D6EC60]);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  sub_2196B612C(0);
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2196B5760(a1, v1 + v4, v1 + v8, v9);
}

uint64_t sub_2196B6404(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2196B646C(uint64_t a1)
{
  if (!qword_280E90E88)
  {
    sub_219BEC504();
    sub_219BDD9F4();
    v1 = MEMORY[0x277D2D6B0];
    sub_2196B6B28(&unk_280EE32C0, MEMORY[0x277D2D6B0], MEMORY[0x277D2D6B8]);
    sub_2196B6B28(&qword_280EE32D0, v1, MEMORY[0x277D2D698]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90E88);
    }
  }
}

void sub_2196B6554(uint64_t a1)
{
  if (!qword_27CC1DF30)
  {
    sub_219BF0F34();
    sub_219BDD9F4();
    v1 = MEMORY[0x277D33058];
    sub_2196B6B28(&unk_280E90A40, MEMORY[0x277D33058], MEMORY[0x277D33060]);
    sub_2196B6B28(&qword_280E90A50, v1, MEMORY[0x277D33050]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_27CC1DF30);
    }
  }
}

void sub_2196B663C(uint64_t a1)
{
  if (!qword_280E8D508)
  {
    sub_218E847D8(255);
    sub_2196B6B28(&qword_280EE59C0, sub_218E847D8, MEMORY[0x277D6D730]);
    v1 = sub_219BF7494();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D508);
    }
  }
}

void sub_2196B66D0(uint64_t a1)
{
  if (!qword_27CC1DF40)
  {
    sub_2196B646C(255);
    sub_2196B6554(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1DF40);
    }
  }
}

uint64_t sub_2196B6744(uint64_t a1)
{
  v3 = *(sub_219BE16D4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  sub_2196B61C0(0, &qword_280EE45E8, MEMORY[0x277D6E3A0]);

  return sub_2196B3754(a1, v1 + v4);
}

uint64_t sub_2196B6834(uint64_t a1)
{
  sub_2196B61C0(0, &unk_280EE5140, MEMORY[0x277D6DA48]);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2196B646C(0);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(*(v6 - 8) + 80) + 8) & ~*(*(v6 - 8) + 80));

  return sub_2196B0F88(a1, v1 + v4, v7, v8);
}

uint64_t sub_2196B6934(uint64_t a1)
{
  sub_2196B61C0(0, &unk_280EE5140, MEMORY[0x277D6DA48]);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  sub_2196B6554(0);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = *(v1 + v7);
  v13 = v1 + ((v7 + *(*(v8 - 8) + 80) + 8) & ~*(*(v8 - 8) + 80));

  return sub_2196AF278(a1, v1 + v4, v9, v10, v11, v12, v13);
}

uint64_t sub_2196B6A5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2196B6ABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2196B6B28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2196B6B70(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_219BF71C4();
    sub_2186C6148(0, &qword_280E8DA50, 0x277D75940);
    sub_218F86FB4();
    sub_219BF5D94();
    v2 = v21;
    v3 = v22;
    v4 = v23;
    v5 = v24;
    v6 = v25;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v20 = v2;
  while (v2 < 0)
  {
    if (!sub_219BF7244())
    {
      goto LABEL_27;
    }

    sub_2186C6148(0, &qword_280E8DA50, 0x277D75940);
    swift_dynamicCast();
    v10 = v26;
    v13 = v5;
    v14 = v6;
    if (!v26)
    {
      goto LABEL_27;
    }

LABEL_20:
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v10;
    }

    sub_2186C6148(0, &unk_280E8D980, 0x277D75DA0);
    v17 = sub_219BF6F14();
    v18 = v17;
    if (!v15)
    {
      if (!v17)
      {
        goto LABEL_28;
      }

      goto LABEL_9;
    }

    if (!v17)
    {
      v18 = v15;
LABEL_9:

      v10 = v18;
      goto LABEL_10;
    }

    sub_2186C6148(0, &qword_280E8E700, 0x277D75DA8);
    v19 = sub_219BF6DD4();

    if (v19)
    {
LABEL_28:
      v2 = v20;
LABEL_27:
      sub_21892DE98(v2);
      return;
    }

LABEL_10:
    v2 = v20;

    v5 = v13;
    v6 = v14;
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_16:
    v14 = (v12 - 1) & v12;
    v10 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v10)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_2196B6E0C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v1297 = a1;
  v1296 = a2;
  v1271 = *v2;
  v4 = MEMORY[0x277D83D88];
  sub_218834E54(0, &qword_280E8FE00, MEMORY[0x277D34450], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v1207 = &v1191 - v6;
  v1222 = sub_219BF2EB4();
  v1208 = *(v1222 - 8);
  MEMORY[0x28223BE20](v1222);
  *&v1293 = &v1191 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218834E54(0, &qword_280E90470, MEMORY[0x277D338C0], v4);
  MEMORY[0x28223BE20](v8 - 8);
  v1243 = &v1191 - v9;
  v10 = sub_219BF24E4();
  v1248 = *(v10 - 8);
  v1249 = v10;
  MEMORY[0x28223BE20](v10);
  v1225 = &v1191 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v1226 = &v1191 - v13;
  v1237 = type metadata accessor for PuzzleModel(0);
  MEMORY[0x28223BE20](v1237);
  v1253 = (&v1191 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_219BE3CB4();
  v1241 = *(v15 - 8);
  v1242 = v15;
  MEMORY[0x28223BE20](v15);
  v1239 = &v1191 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1240 = sub_219BE3EE4();
  v1238 = *(v1240 - 8);
  MEMORY[0x28223BE20](v1240);
  v1270 = &v1191 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1262 = sub_219BE3CA4();
  v1261 = *(v1262 - 8);
  MEMORY[0x28223BE20](v1262);
  v1260 = &v1191 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218834E54(0, &unk_280EE6490, MEMORY[0x277D34E88], v4);
  MEMORY[0x28223BE20](v19 - 8);
  v1280 = (&v1191 - v20);
  sub_218834E54(0, qword_280ED3E78, type metadata accessor for CampaignRouteModel, v4);
  MEMORY[0x28223BE20](v21 - 8);
  v1257 = &v1191 - v22;
  v23 = sub_219BDBD64();
  v1220 = *(v23 - 8);
  v1221 = v23;
  MEMORY[0x28223BE20](v23);
  v1219 = &v1191 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1236 = type metadata accessor for PreBuyFlowRouteModel(0);
  MEMORY[0x28223BE20](v1236);
  v1279 = &v1191 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for WebLinkRouteModel(0);
  MEMORY[0x28223BE20](v26 - 8);
  v1224 = &v1191 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1234 = type metadata accessor for WebLinkViewControllerType(0);
  MEMORY[0x28223BE20](v1234);
  v1235 = &v1191 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v1252 = &v1191 - v30;
  sub_218834E54(0, &qword_280ED6F90, sub_219535290, v4);
  MEMORY[0x28223BE20](v31 - 8);
  v1233 = &v1191 - v32;
  v1218 = type metadata accessor for WebEmbedResource(0);
  MEMORY[0x28223BE20](v1218);
  v1244 = &v1191 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218834E54(0, &qword_280EE8E10, MEMORY[0x277D2FB40], v4);
  MEMORY[0x28223BE20](v34 - 8);
  v1217 = &v1191 - v35;
  v36 = sub_219BDD804();
  v1215 = *(v36 - 8);
  v1216 = v36;
  MEMORY[0x28223BE20](v36);
  v1214 = &v1191 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218834E54(0, &qword_280EE64A0, MEMORY[0x277D34D78], v4);
  MEMORY[0x28223BE20](v38 - 8);
  v1278 = &v1191 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v1246 = &v1191 - v41;
  v1267 = sub_219BEC544();
  v1266 = *(v1267 - 8);
  MEMORY[0x28223BE20](v1267);
  v1265 = &v1191 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1295 = sub_219BE4524();
  v1269 = *(v1295 - 1);
  MEMORY[0x28223BE20](v1295);
  v1268 = &v1191 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for FollowingNotificationsPrewarm(0);
  MEMORY[0x28223BE20](v44 - 8);
  v1254 = &v1191 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1256 = type metadata accessor for CampaignRouteModel(0);
  v1255 = *(v1256 - 8);
  MEMORY[0x28223BE20](v1256);
  v1245 = (&v1191 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = type metadata accessor for AudioFeedTrack(0);
  MEMORY[0x28223BE20](v47 - 8);
  v1264 = &v1191 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_219BE7784();
  MEMORY[0x28223BE20](v49 - 8);
  v1232 = &v1191 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218834E54(0, &unk_280E90420, sub_218932F68, v4);
  MEMORY[0x28223BE20](v51 - 8);
  v1193 = &v1191 - v52;
  v53 = sub_219BDE294();
  v1198 = *(v53 - 8);
  v1199 = v53;
  MEMORY[0x28223BE20](v53);
  v1197 = &v1191 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932F68(0);
  v1201 = *(v55 - 8);
  v1202 = v55;
  MEMORY[0x28223BE20](v55);
  v1200 = &v1191 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C5110(0);
  v58 = v57;
  v1281 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v1273 = &v1191 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1272 = v59;
  MEMORY[0x28223BE20](v60);
  v1209 = &v1191 - v61;
  v1282 = sub_219BDB954();
  v1283 = *(v1282 - 1);
  MEMORY[0x28223BE20](v1282);
  v1259 = &v1191 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v1277 = &v1191 - v64;
  MEMORY[0x28223BE20](v65);
  v1223 = &v1191 - v66;
  MEMORY[0x28223BE20](v67);
  v1231 = &v1191 - v68;
  MEMORY[0x28223BE20](v69);
  v1203 = &v1191 - v70;
  MEMORY[0x28223BE20](v71);
  v1230 = &v1191 - v72;
  MEMORY[0x28223BE20](v73);
  v1251 = &v1191 - v74;
  MEMORY[0x28223BE20](v75);
  v1205 = &v1191 - v76;
  MEMORY[0x28223BE20](v77);
  v1196 = &v1191 - v78;
  sub_218834E54(0, &unk_280EE8C10, MEMORY[0x277D30048], v4);
  MEMORY[0x28223BE20](v79 - 8);
  v1213 = &v1191 - v80;
  v81 = sub_219BDD944();
  v1210 = *(v81 - 8);
  v1211 = v81;
  MEMORY[0x28223BE20](v81);
  v1206 = &v1191 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83);
  v1194 = &v1191 - v84;
  MEMORY[0x28223BE20](v85);
  v1195 = &v1191 - v86;
  MEMORY[0x28223BE20](v87);
  v1212 = &v1191 - v88;
  v1276 = sub_219BF1D74();
  v1275 = *(v1276 - 8);
  MEMORY[0x28223BE20](v1276);
  v1274 = &v1191 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218834E54(0, &qword_280E902A0, MEMORY[0x277D33BC8], v4);
  MEMORY[0x28223BE20](v90 - 8);
  v1229 = (&v1191 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v92);
  v1263 = (&v1191 - v93);
  v94 = type metadata accessor for NewsActivity2.Article(0);
  v1204 = *(v94 - 8);
  v95 = *(v1204 + 64);
  MEMORY[0x28223BE20](v94 - 8);
  v96 = &v1191 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v97);
  v1247 = &v1191 - v98;
  MEMORY[0x28223BE20](v99);
  v1227 = &v1191 - v100;
  MEMORY[0x28223BE20](v101);
  v1258 = &v1191 - v102;
  sub_218834E54(0, &unk_280EE4470, MEMORY[0x277D6E658], v4);
  MEMORY[0x28223BE20](v103 - 8);
  v1288 = (&v1191 - v104);
  v1284 = sub_219BE92E4();
  v1285 = *(v1284 - 8);
  MEMORY[0x28223BE20](v1284);
  v1287 = &v1191 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v106);
  v1286 = &v1191 - v107;
  v1290 = sub_219BE9EC4();
  v1291 = *(v1290 - 8);
  MEMORY[0x28223BE20](v1290);
  v1228 = &v1191 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v109);
  v1250 = &v1191 - v110;
  MEMORY[0x28223BE20](v111);
  v113 = &v1191 - v112;
  MEMORY[0x28223BE20](v114);
  v116 = &v1191 - v115;
  MEMORY[0x28223BE20](v117);
  v119 = &v1191 - v118;
  MEMORY[0x28223BE20](v120);
  v122 = &v1191 - v121;
  MEMORY[0x28223BE20](v123);
  v1289 = &v1191 - v124;
  v1294 = v3;
  v1292 = v3[7];
  sub_21909C5CC();
  if (v125)
  {
    v1192 = v58;
    sub_219BEA7A4();
    v126 = v1317[0];
    v127 = v1293;
    v128 = v1295;
    switch((v126 >> 58) & 0x3C | (v126 >> 1) & 3)
    {
      case 1uLL:
        sub_2187B2C48(0);
        v442 = v126;
        v444 = v443;
        v1191 = v442;
        v445 = swift_projectBox();
        v446 = *(v445 + *(v444 + 48));
        v447 = v1258;
        sub_2196C8D0C(v445, v1258, type metadata accessor for NewsActivity2.Article);

        v448 = v1263;
        sub_2196C1694(v447, v1263);
        v449 = v1294;
        v450 = v1294[9];
        v451 = v1275;
        v452 = v1274;
        v453 = v1276;
        (*(v1275 + 104))(v1274, *MEMORY[0x277D33600], v1276);
        v454 = v450;
        v455 = v449;
        LOBYTE(v449) = sub_218AA147C(v448, v1297, v454, v452);
        (*(v451 + 8))(v452, v453);
        sub_2196C8E20(v448, &qword_280E902A0, MEMORY[0x277D33BC8]);
        if (v449)
        {
          sub_2196C8A38(v447, type metadata accessor for NewsActivity2.Article);

          goto LABEL_331;
        }

        v803 = v1227;
        sub_2196C8D0C(v447, v1227, type metadata accessor for NewsActivity2.Article);
        sub_2196C8470(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

        v804 = v1212;
        sub_2196C8AA4(v803, v1212, MEMORY[0x277D2FB40]);
        v805 = v1213;
        sub_219BDD934();
        sub_2196C8A38(v804, MEMORY[0x277D2FB40]);
        v806 = sub_219BDE544();
        if ((*(*(v806 - 8) + 48))(v805, 1, v806) == 1)
        {
          v807 = v1192;
          (*(v1281 + 16))(v1209, v1297, v1192);
          v808 = v455;
          v809 = [v455[21] narrativeAudio];
          v810 = v1258;
          if (v809)
          {
            v1297 = v446;
            sub_2196C8D0C(v1258, v803, type metadata accessor for NewsActivity2.Article);

            v811 = v1195;
            sub_2196C8AA4(v803, v1195, MEMORY[0x277D2FB40]);
            v812 = v810;
            v813 = v1197;
            sub_219BDD8E4();
            sub_2196C8A38(v811, MEMORY[0x277D2FB40]);
            v815 = v1198;
            v814 = v1199;
            if ((*(v1198 + 88))(v813, v1199) == *MEMORY[0x277D2FF00])
            {
              (*(v815 + 96))(v813, v814);
              (*(v1201 + 32))(v1200, v813, v1202);
              sub_2196C8D0C(v812, v803, type metadata accessor for NewsActivity2.Article);

              v816 = v1194;
              sub_2196C8AA4(v803, v1194, MEMORY[0x277D2FB40]);
              v817 = sub_219BDD914();
              sub_2196C8A38(v816, MEMORY[0x277D2FB40]);
              v810 = v812;
              if (v817)
              {
                __swift_project_boxed_opaque_existential_1(v808 + 2, v808[5]);
                sub_2186C709C(0, qword_280EB1710, &protocol descriptor for AudioFeedRoutingEvaluatorType, 1);
                sub_219BE1E34();
                v446 = v1297;
                if (!*(&v1298[1] + 1))
                {
                  (*(v1201 + 8))(v1200, v1202);
                  swift_unknownObjectRelease();
                  sub_2196C8C94(v1298, &qword_27CC1DFA0, qword_280EB1710, &protocol descriptor for AudioFeedRoutingEvaluatorType);
                  goto LABEL_384;
                }

                sub_2186CB1F0(v1298, v1303);
                __swift_project_boxed_opaque_existential_1(v1303, *(&v1303[1] + 1));
                if (sub_218FD3110(v817))
                {
                  (*(v1201 + 8))(v1200, v1202);
                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v1303);
LABEL_384:
                  v803 = v1227;
                  v807 = v1192;
                  goto LABEL_385;
                }

                swift_getObjectType();
                sub_219BEAC64();
                v1186 = v1201;
                v1187 = v1193;
                v1188 = v1202;
                (*(v1201 + 16))(v1193, v1200, v1202);
                (*(v1186 + 56))(v1187, 0, 1, v1188);
                sub_219BE7094();

                swift_unknownObjectRelease();
                sub_2196C8E20(v1187, &unk_280E90420, sub_218932F68);
                (*(v1201 + 8))(v1200, v1202);
                (*(v1281 + 8))(v1209, v1192);
                v1141 = v810;
LABEL_336:
                sub_2196C8A38(v1141, type metadata accessor for NewsActivity2.Article);
                goto LABEL_337;
              }

              (*(v1201 + 8))(v1200, v1202);
              v807 = v1192;
            }

            else
            {
              (*(v815 + 8))(v813, v814);
              v807 = v1192;
              v810 = v812;
            }

            v446 = v1297;
          }

LABEL_385:
          if (sub_219093144(5u, v446))
          {
            __swift_project_boxed_opaque_existential_1(v808 + 2, v808[5]);
            sub_2186C709C(0, &unk_27CC1DF90, MEMORY[0x277D30178], 1);
            sub_219BE1E34();
            if (!*(&v1298[1] + 1))
            {
LABEL_396:
              __break(1u);
LABEL_397:
              __break(1u);
LABEL_398:
              __break(1u);
LABEL_399:
              sub_219BF7514();
              __break(1u);
              return;
            }

            sub_2186CB1F0(v1298, v1303);
            __swift_project_boxed_opaque_existential_1(v1303, *(&v1303[1] + 1));
            sub_219BDE824();
            v1178 = v1273;
            v1179 = v1209;
            sub_219BEA774();

            v1180 = v1281;
            (*(v1281 + 8))(v1179, v807);
            (*(v1180 + 32))(v1179, v1178, v807);
            sub_218718690(v1303, v1298);
            v1181 = swift_allocObject();
            sub_2186CB1F0(v1298, v1181 + 16);
            *(v1181 + 56) = v808;

            __swift_destroy_boxed_opaque_existential_1(v1303);
            v1182 = sub_2196C8C88;
          }

          else
          {
            sub_2196C8D0C(v810, v803, type metadata accessor for NewsActivity2.Article);
            v1183 = (*(v1204 + 80) + 24) & ~*(v1204 + 80);
            v1184 = swift_allocObject();
            *(v1184 + 16) = v808;
            sub_2196C8AA4(v803, v1184 + v1183, type metadata accessor for NewsActivity2.Article);

            v1182 = sub_2196C8C14;
            v1179 = v1209;
          }

          v1185 = sub_218AA1DB4(v1179, v810, v446);

          if (v1185)
          {
            v1182(v1185);
          }

          (*(v1281 + 8))(v1179, v807);
          sub_2196C8A38(v810, type metadata accessor for NewsActivity2.Article);

          goto LABEL_308;
        }

        v1064 = v455;
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v1138 = v1283;
          v1139 = v1196;
          v1140 = v1282;
          (v1283[4])(v1196, v805, v1282);
          __swift_project_boxed_opaque_existential_1(v1064 + 2, v1064[5]);
          sub_2186C709C(0, &qword_280EE5700, MEMORY[0x277D6D840], 1);
          sub_219BE1E34();
          if (!*(&v1298[1] + 1))
          {
            goto LABEL_395;
          }

          sub_2186CB1F0(v1298, v1303);
          __swift_project_boxed_opaque_existential_1(v1303, *(&v1303[1] + 1));
          sub_219BE6DC4();
          (v1138[1])(v1139, v1140);
          v1141 = v1258;
          goto LABEL_336;
        }

        v1065 = v1283;
        v1066 = v1205;
        v1067 = v1282;
        (v1283[4])(v1205, v805, v1282);
        v1068 = sub_218CF8A44(v1297, v1066);
        if (v1068)
        {
          v1069 = *MEMORY[0x277D6E530];
          v1297 = v1068;
          v1070 = sub_219BE92D4();
          v1071 = *(*(v1070 - 8) + 104);
          v1072 = v1286;
          v1071(v1286, v1069, v1070);
          v1073 = *MEMORY[0x277D6E518];
          v1074 = v1285[13];
          v1075 = v1284;
          v1074(v1072, v1073, v1284);
          v1076 = v1287;
          v1071(v1287, *MEMORY[0x277D6E538], v1070);
          v1074(v1076, v1073, v1075);
          v1077 = v1289;
          sub_219BE9EB4();
          v1078 = sub_219BE94F4();
          v1079 = v1288;
          (*(*(v1078 - 8) + 56))(v1288, 1, 1, v1078);
          v1080 = v1297;
          sub_21909BA64(v1297, v1077, v1079);

          sub_2196C8E20(v1079, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1291 + 8))(v1077, v1290);
          (v1283[1])(v1205, v1282);
        }

        else
        {
          (v1065[1])(v1066, v1067);
        }

        sub_2196C8A38(v1258, type metadata accessor for NewsActivity2.Article);
        goto LABEL_308;
      case 2uLL:
        sub_2187B2C48(0);
        v411 = v126;
        v413 = v412;
        v235 = v411;
        v414 = swift_projectBox();
        v415 = *(v414 + *(v413 + 48));
        v416 = v1247;
        sub_2196C8D0C(v414, v1247, type metadata accessor for NewsActivity2.Article);
        Strong = swift_unknownObjectWeakLoadStrong();

        v418 = v1297;
        if (!Strong)
        {
          goto LABEL_321;
        }

        v419 = sub_219BF6534();

        objc_opt_self();
        v420 = swift_dynamicCastObjCClass();
        if (v420 && (v421 = [v420 visibleViewController]) != 0)
        {
          v422 = v421;
          ObjectType = swift_getObjectType();
          v424 = swift_conformsToProtocol2();
          if (v424 && ((*(v424 + 8))(ObjectType, v424) & 1) != 0)
          {
            sub_2196C8D0C(v416, v1227, type metadata accessor for NewsActivity2.Article);
            v425 = v1281;
            (*(v1281 + 16))(v1273, v418, v1192);
            v426 = (*(v1204 + 80) + 16) & ~*(v1204 + 80);
            v427 = (v95 + v426 + 7) & 0xFFFFFFFFFFFFFFF8;
            v428 = (*(v425 + 80) + v427 + 8) & ~*(v425 + 80);
            v1297 = ((v1272 + v428 + 7) & 0xFFFFFFFFFFFFFFF8);
            v429 = swift_allocObject();
            sub_2196C8AA4(v1227, v429 + v426, type metadata accessor for NewsActivity2.Article);
            *(v429 + v427) = v1294;
            (*(v425 + 32))(v429 + v428, v1273, v1192);
            *(v1297 + v429) = v415;
            *&v1303[2] = sub_2196C8B0C;
            *(&v1303[2] + 1) = v429;
            *&v1303[0] = MEMORY[0x277D85DD0];
            *(&v1303[0] + 1) = 1107296256;
            *&v1303[1] = sub_218793E0C;
            *(&v1303[1] + 1) = &block_descriptor_31_3;
            v430 = _Block_copy(v1303);

            v431 = v422;

            [v431 dismissViewControllerAnimated:1 completion:v430];

            _Block_release(v430);
            v432 = v1247;
            goto LABEL_322;
          }
        }

        else
        {
          v422 = v419;
        }

LABEL_321:
        sub_2196C20D4(v416, v1294, v418, v415);

        v432 = v416;
LABEL_322:
        sub_2196C8A38(v432, type metadata accessor for NewsActivity2.Article);
        goto LABEL_323;
      case 3uLL:
        v171 = v1317[0];
        sub_218AAC1BC(v1297, *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10), *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x18), *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20), *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x28));
        v435 = v437;
        v436 = v1289;
        sub_218A56C8C();
        goto LABEL_113;
      case 4uLL:
        v353 = swift_projectBox();
        v354 = v1283;
        v355 = v1251;
        v356 = v1282;
        (v1283[2])(v1251, v353, v1282);
        sub_219BE7DC4();
        v1191 = v126;
        v357 = sub_219BDB804();
        MEMORY[0x28223BE20](v357);
        *(&v1191 - 4) = v1294;
        *(&v1191 - 3) = v355;
        sub_219BE7774();
        v1189 = &v1191 - 6;
        v358 = sub_219BE7D74();
        v359 = v1289;
        sub_218A554EC(v1289);
        v360 = sub_219BE94F4();
        v361 = v1288;
        (*(*(v360 - 8) + 56))(v1288, 1, 1, v360);
        sub_21909BA64(v358, v359, v361);

        sub_2196C8E20(v361, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1291 + 8))(v359, v1290);
        (v354[1])(v355, v356);
        goto LABEL_308;
      case 5uLL:
        v476 = swift_projectBox();
        v477 = v1264;
        sub_2196C8D0C(v476, v1264, type metadata accessor for AudioFeedTrack);
        v1191 = v126;
        v1297 = sub_218ADDE38(v477);
        LODWORD(v1295) = *MEMORY[0x277D6E528];
        v478 = v1295;
        v479 = sub_219BE92D4();
        v480 = *(*(v479 - 8) + 104);
        v481 = v1286;
        v480(v1286, v478, v479);
        v482 = *MEMORY[0x277D6E4F8];
        v483 = v1285[13];
        v484 = v1284;
        v483(v481, v482, v1284);
        v485 = v1287;
        v480(v1287, v1295, v479);
        v483(v485, v482, v484);
        v486 = v1289;
        sub_219BE9EB4();
        v487 = sub_219BE94F4();
        v488 = v1288;
        (*(*(v487 - 8) + 56))(v1288, 1, 1, v487);
        v489 = v1297;
        sub_21909BA64(v1297, v486, v488);

        sub_2196C8E20(v488, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1291 + 8))(v486, v1290);
        sub_2196C8A38(v1264, type metadata accessor for AudioFeedTrack);
        goto LABEL_308;
      case 6uLL:
        v504 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v503 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x18);
        sub_219092608(v504, v503);
        v505 = v1297;
        v506 = v126;
        if (sub_2189A44C0(v1297))
        {
          v507 = *MEMORY[0x277D6E358];
          v508 = sub_219BE8DE4();
          (*(*(v508 - 8) + 104))(v1296, v507, v508);
          sub_21909261C(v504, v503);
          v179 = v506;
          goto LABEL_333;
        }

        v1191 = v126;
        v824 = swift_unknownObjectWeakLoadStrong();
        if (!v824)
        {
          goto LABEL_303;
        }

        v825 = v824;
        v826 = sub_219BF6534();

        objc_opt_self();
        v827 = swift_dynamicCastObjCClass();
        if (v827 && (v828 = [v827 visibleViewController]) != 0)
        {
          v829 = v828;
          swift_getObjectType();
          if (swift_conformsToProtocol2())
          {
            v1295 = swift_allocObject();
            swift_weakInit();
            v830 = v1281;
            v831 = v1273;
            v832 = v1192;
            (*(v1281 + 16))(v1273, v505, v1192);
            v833 = (*(v830 + 80) + 40) & ~*(v830 + 80);
            v834 = swift_allocObject();
            *(v834 + 2) = v1295;
            *(v834 + 3) = v504;
            *(v834 + 4) = v503;
            (*(v830 + 32))(&v834[v833], v831, v832);
            *&v1303[2] = sub_2196C89D0;
            *(&v1303[2] + 1) = v834;
            *&v1303[0] = MEMORY[0x277D85DD0];
            *(&v1303[0] + 1) = 1107296256;
            *&v1303[1] = sub_218793E0C;
            *(&v1303[1] + 1) = &block_descriptor_155;
            v835 = _Block_copy(v1303);
            v836 = v829;

            [v836 dismissViewControllerAnimated:1 completion:v835];
            _Block_release(v835);

            goto LABEL_308;
          }
        }

        else
        {
          v829 = v826;
        }

LABEL_303:
        *&v1303[0] = v504;
        *(&v1303[0] + 1) = v503;
        v1118 = sub_2190FC0D8(v1303, v505);
        sub_21909261C(v504, v503);
        if (v1118)
        {
          LODWORD(v1295) = *MEMORY[0x277D6E528];
          v1119 = v1295;
          v1120 = sub_219BE92D4();
          v1121 = *(*(v1120 - 8) + 104);
          v1122 = v1286;
          v1121(v1286, v1119, v1120);
          v1123 = *MEMORY[0x277D6E518];
          v1124 = v1285[13];
          v1297 = v1118;
          v1125 = v1284;
          v1124(v1122, v1123, v1284);
          v1126 = v1287;
          v1121(v1287, v1295, v1120);
          v1124(v1126, v1123, v1125);
          v799 = v1289;
          sub_219BE9EB4();
          v1127 = sub_219BE94F4();
          v801 = v1288;
          (*(*(v1127 - 8) + 56))(v1288, 1, 1, v1127);
          v1128 = v1297;
          sub_21909BA64(v1297, v799, v801);

          goto LABEL_305;
        }

        if (qword_27CC08558 != -1)
        {
          swift_once();
        }

        v1134 = qword_27CCD8A18;
        v1135 = sub_219BF6214();
        sub_219BE5314("Unable to present channel picker", 32, 2, &dword_2186C1000, v1134, v1135, MEMORY[0x277D84F90]);
        goto LABEL_308;
      case 7uLL:
        v1191 = v1317[0];
        v438 = swift_projectBox();
        v439 = v1245;
        sub_2196C8D0C(v438, v1245, type metadata accessor for CampaignRouteModel);
        if (v439[1])
        {
          v440 = *v439;
          v441 = v439[1];
        }

        else
        {
          v441 = 0x8000000219D09BA0;
          v440 = 0xD000000000000012;
        }

        v900 = v1294;
        v901 = v1229;
        *v1229 = v440;
        *(v901 + 8) = v441;
        v902 = *MEMORY[0x277D33B80];
        v903 = sub_219BF2CB4();
        v904 = *(v903 - 8);
        (*(v904 + 104))(v901, v902, v903);
        (*(v904 + 56))(v901, 0, 1, v903);
        v905 = v900[9];
        v906 = v1275;
        v907 = v1274;
        v908 = v1276;
        (*(v1275 + 104))(v1274, *MEMORY[0x277D33600], v1276);

        v909 = v1297;
        LOBYTE(v905) = sub_218AA147C(v901, v1297, v905, v907);
        (*(v906 + 8))(v907, v908);
        sub_2196C8E20(v901, &qword_280E902A0, MEMORY[0x277D33BC8]);
        if (v905)
        {
          sub_2196C8A38(v439, type metadata accessor for CampaignRouteModel);
          goto LABEL_331;
        }

        v910 = sub_2199EF978(v909, v439);
        v911 = [objc_opt_self() sharedApplication];
        v912 = [v911 connectedScenes];

        sub_2186C6148(0, &qword_280E8DA50, 0x277D75940);
        sub_218F86FB4();
        v913 = sub_219BF5D44();

        sub_2196B6B70(v913, v914);
        v916 = v915;

        if (v916)
        {
          sub_219BE5CD4();
          v917 = swift_dynamicCastClass();
          v918 = v917;
          if (v917)
          {
            v919 = [v917 keyWindow];
            if (v919)
            {
              v920 = v919;
              v921 = [v919 rootViewController];

              if (v921)
              {
                type metadata accessor for MainTabBarController(0);
                sub_219BF6584();

                v922 = *&v1303[0];
                if (*&v1303[0])
                {
                  LODWORD(v1294) = *MEMORY[0x277D6E528];
                  v923 = v1294;
                  v924 = sub_219BE92D4();
                  v925 = *(v924 - 8);
                  *&v1293 = *(v925 + 104);
                  v1295 = (v925 + 104);
                  v926 = v1286;
                  (v1293)(v1286, v923, v924);
                  v927 = *MEMORY[0x277D6E518];
                  v928 = v1285[13];
                  v929 = v1284;
                  v928(v926, v927, v1284);
                  v1297 = v922;
                  v930 = v1287;
                  (v1293)(v1287, v1294, v924);
                  v928(v930, v927, v929);
                  v931 = v1289;
                  sub_219BE9EB4();
                  v932 = sub_219BE94F4();
                  v933 = v1288;
                  (*(*(v932 - 8) + 56))(v1288, 1, 1, v932);
                  v934 = v1297;
                  sub_218FDEB54(v910, v931, v933, 0, 0);

                  sub_2196C8E20(v933, &unk_280EE4470, MEMORY[0x277D6E658]);
                  (*(v1291 + 8))(v931, v1290);
                  sub_2196C8A38(v1245, type metadata accessor for CampaignRouteModel);
                  goto LABEL_308;
                }
              }
            }
          }

          else
          {
          }
        }

        else
        {
          v918 = 0;
        }

        if (qword_280EE5F98 != -1)
        {
          swift_once();
        }

        v1142 = sub_219BE5434();
        __swift_project_value_buffer(v1142, qword_280F62610);
        v1143 = sub_219BE5414();
        v1144 = sub_219BF61F4();
        if (os_log_type_enabled(v1143, v1144))
        {
          v1145 = swift_slowAlloc();
          *v1145 = 0;
          _os_log_impl(&dword_2186C1000, v1143, v1144, "Unable to show campaign landing page because no valid presenting VC is available!", v1145, 2u);
          MEMORY[0x21CECF960](v1145, -1, -1);
        }

        sub_2196C8A38(v439, type metadata accessor for CampaignRouteModel);
        goto LABEL_308;
      case 8uLL:
        v536 = swift_projectBox();
        sub_2196C8D0C(v536, v96, type metadata accessor for NewsActivity2.Article);
        v171 = v126;
        v537 = sub_218AA1DB4(v1297, v96, MEMORY[0x277D84F90]);
        if (v537)
        {
          v538 = v537;
          v539 = v1289;
          sub_218A5576C(v1289);
          v540 = sub_219BE94F4();
          v541 = v1288;
          (*(*(v540 - 8) + 56))(v1288, 1, 1, v540);
          sub_21909BA64(v538, v539, v541);

          sub_2196C8E20(v541, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1291 + 8))(v539, v1290);
        }

        sub_2196C8A38(v96, type metadata accessor for NewsActivity2.Article);
        goto LABEL_134;
      case 9uLL:
        v387 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v388 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x18);
        v389 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
        v390 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x21);
        v392 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x28);
        v391 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x30);
        *&v1298[0] = v387;
        *(&v1298[0] + 1) = v388;
        LOBYTE(v1298[1]) = v389;
        BYTE1(v1298[1]) = v390;
        *(&v1298[1] + 1) = v392;
        *&v1298[2] = v391;

        sub_2188202A8(v392);
        v393 = v1297;
        sub_2199EFE20(v1298, v1303);
        v1191 = v126;
        if ((BYTE8(v1303[2]) & 1) == 0)
        {
          v788 = *&v1303[0];
          v1283 = *&v1303[0];
          v789 = sub_219BEA784();
          v789(v788);

          LODWORD(v1282) = *MEMORY[0x277D6E528];
          v790 = v1282;
          v791 = sub_219BE92D4();
          v1295 = v388;
          v792 = v791;
          v793 = *(*(v791 - 8) + 104);
          v1297 = v391;
          *&v1293 = v387;
          v794 = v1286;
          v793(v1286, v790, v791);
          v795 = *MEMORY[0x277D6E518];
          v796 = v1285[13];
          v797 = v1284;
          v796(v794, v795, v1284);
          v1294 = v392;
          v798 = v1287;
          v793(v1287, v1282, v792);
          v796(v798, v795, v797);
          v799 = v1289;
          sub_219BE9EB4();
          v800 = sub_219BE94F4();
          v801 = v1288;
          (*(*(v800 - 8) + 56))(v1288, 1, 1, v800);
          v802 = v1283;
          sub_21909BA64(v1283, v799, v801);

          sub_2187FABEC(v1294, v1297);
LABEL_305:
          sub_2196C8E20(v801, &unk_280EE4470, MEMORY[0x277D6E658]);
          v210 = *(v1291 + 8);
          v211 = v799;
          goto LABEL_306;
        }

        sub_2186CB1F0(v1303, &v1306);
        if (v390)
        {
          __swift_destroy_boxed_opaque_existential_1(&v1306);
        }

        else
        {
          sub_218718690(&v1306, v1298);
          sub_219BEA744();
          swift_allocObject();
          v1049 = sub_219BEA6C4();
          *&v1298[0] = v1049;
          BYTE8(v1298[2]) = 0;

          v1050 = sub_218CF86B0(v393, v1298);
          sub_2189A4E34(v1298);
          if (v1050)
          {
            LODWORD(v1281) = *MEMORY[0x277D6E528];
            v1051 = v1281;
            v1052 = sub_219BE92D4();
            v1053 = *(v1052 - 8);
            v1283 = v1049;
            v1054 = *(v1053 + 104);
            v1295 = v388;
            v1297 = v391;
            v1055 = v1286;
            v1054(v1286, v1051, v1052);
            v1056 = *MEMORY[0x277D6E518];
            v1294 = v392;
            v1282 = v1050;
            v1057 = v1285[13];
            *&v1293 = v387;
            v1058 = v1284;
            v1057(v1055, v1056, v1284);
            v1059 = v1287;
            v1054(v1287, v1281, v1052);
            v1057(v1059, v1056, v1058);
            v1060 = v1289;
            sub_219BE9EB4();
            v1061 = sub_219BE94F4();
            v1062 = v1288;
            (*(*(v1061 - 8) + 56))(v1288, 1, 1, v1061);
            v1063 = v1282;
            sub_21909BA64(v1282, v1060, v1062);

            sub_2187FABEC(v1294, v1297);

            sub_2196C8E20(v1062, &unk_280EE4470, MEMORY[0x277D6E658]);
            (*(v1291 + 8))(v1060, v1290);
            __swift_destroy_boxed_opaque_existential_1(&v1306);
            goto LABEL_308;
          }

          __swift_destroy_boxed_opaque_existential_1(&v1306);
        }

        v626 = v392;
        goto LABEL_346;
      case 0xAuLL:
        v522 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1298[0] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v1298[1] = v522;
        v523 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x40);
        v1298[2] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x30);
        v1298[3] = v523;
        v1299 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x50);
        LOBYTE(v1300) = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x60);
        v524 = v1317[0];
        v525 = v1298[0];
        v526 = v1298[1];
        v527 = v1298[2];
        v1306 = v1298[0];
        v1307 = v1298[1];
        LOBYTE(v1308) = v1298[2];
        v528 = *(&v1298[2] + 1);
        sub_218B5A004(v1298, v1303);
        sub_21908FD7C(v525, *(&v525 + 1), v526, *(&v526 + 1), v527);
        v529 = v1289;
        sub_218A56C88();
        v1303[0] = 0uLL;
        *&v1303[1] = 1;
        *(&v1303[1] + 8) = 0u;
        *(&v1303[2] + 8) = 0u;
        *(&v1303[3] + 8) = 0u;
        *(&v1303[4] + 8) = 0u;
        sub_2195D0028(v1297, &v1306, v528, v529, v1303);
        v531 = v530;
        v532 = *(v1291 + 8);
        v533 = v1290;
        v532(v529, v1290);
        sub_21896FBB0(v1306, *(&v1306 + 1), v1307, *(&v1307 + 1), v1308);
        if (v531)
        {
          sub_218A56C88();
          v534 = sub_219BE94F4();
          v535 = v1288;
          (*(*(v534 - 8) + 56))(v1288, 1, 1, v534);
          sub_21909BA64(v531, v529, v535);

          sub_218B5A060(v1298);
          sub_2196C8E20(v535, &unk_280EE4470, MEMORY[0x277D6E658]);
          v532(v529, v533);
        }

        else
        {
          sub_218B5A060(v1298);
        }

        goto LABEL_250;
      case 0xBuLL:
        v1191 = v1317[0];
        v323 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1306 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v1307 = v323;
        v324 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x40);
        v1308 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x30);
        v1309 = v324;
        v1310 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x50);
        v1311 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x60);
        v326 = *(&v1306 + 1);
        v325 = v1306;
        v328 = *(&v1307 + 1);
        v327 = v1307;
        LODWORD(v329) = v1308;
        v1298[0] = v1306;
        v1298[1] = v1307;
        LOBYTE(v1298[2]) = v1308;
        sub_218B5A004(&v1306, v1303);
        if (NewsActivity2.Feed.shouldPresentAsModal.getter())
        {
          LODWORD(v1281) = *MEMORY[0x277D6E528];
          v330 = v1281;
          v331 = sub_219BE92D4();
          v1280 = *(*(v331 - 8) + 104);
          v1295 = v325;
          v1289 = v327;
          v332 = v1286;
          v1280(v1286, v330, v331);
          LODWORD(v1282) = v329;
          v329 = *MEMORY[0x277D6E518];
          v1283 = v328;
          v333 = v1285[13];
          v334 = v1284;
          v333(v332, v329, v1284);
          *&v1293 = v326;
          v335 = v1287;
          v1280(v1287, v1281, v331);
          v325 = v1295;
          v336 = v329;
          LOBYTE(v329) = v1282;
          v333(v335, v336, v334);
          v328 = v1283;
          v327 = v1289;
          v326 = v1293;
          sub_219BE9EB4();
        }

        else
        {
          sub_218A56C8C();
        }

        v1312 = v325;
        v1313 = v326;
        v1314 = v327;
        v1315 = v328;
        v1316 = v329;
        v780 = *(&v1308 + 1);
        LOBYTE(v1298[0]) = 1;
        *&v1298[1] = 0;
        *(&v1298[0] + 1) = 0;
        *(&v1298[1] + 8) = v1309;
        *(&v1298[2] + 8) = v1310;
        BYTE8(v1298[3]) = v1311;
        *&v1300 = 0;
        v1299 = 0uLL;
        sub_218F20858(v1309, *(&v1309 + 1), v1310, *(&v1310 + 1), v1311);
        sub_21908FD7C(v325, v326, v327, v328, v329);
        sub_2195D0028(v1297, &v1312, v780, v122, v1298);
        v782 = v781;
        v1303[2] = v1298[2];
        v1303[3] = v1298[3];
        v1303[4] = v1299;
        *&v1303[5] = v1300;
        v1303[0] = v1298[0];
        v1303[1] = v1298[1];
        sub_2196C8400(v1303, &qword_280EA94E0, &type metadata for FeedViewControllerCreateOptions);
        v783 = sub_21896FBB0(v1312, v1313, v1314, v1315, v1316);
        v784 = v1291;
        v785 = v1290;
        if (v782)
        {
          v786 = sub_219BE94F4();
          v787 = v1288;
          (*(*(v786 - 8) + 56))(v1288, 1, 1, v786);
          sub_21909BA64(v782, v122, v787);

          sub_218B5A060(&v1306);
          sub_2196C8E20(v787, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v784 + 8))(v122, v785);
        }

        else
        {
          (*(v1291 + 8))(v122, v1290, v783);
LABEL_237:
          sub_218B5A060(&v1306);
        }

        goto LABEL_308;
      case 0xCuLL:
        v383 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v196 = v1317[0];
        sub_2190FC1CC(v1297);
        if (v384)
        {
          v385 = v384;
          v386 = v1289;
          sub_218A56538(v1289);
          sub_21909CA28(v385, v386, v383);

          (*(v1291 + 8))(v386, v1290);
        }

        goto LABEL_300;
      case 0xDuLL:
        *&v1303[0] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);

        v1191 = v126;
        sub_2190FC74C(v1297, v1303);
        v1297 = v498;

        LODWORD(v1295) = *MEMORY[0x277D6E528];
        v499 = v1295;
        v216 = sub_219BE92D4();
        v217 = *(*(v216 - 8) + 104);
        v253 = v1286;
        v217(v1286, v499, v216);
        v254 = MEMORY[0x277D6E518];
        goto LABEL_95;
      case 0xEuLL:
        v288 = swift_projectBox();
        v289 = v1254;
        sub_2196C8D0C(v288, v1254, type metadata accessor for FollowingNotificationsPrewarm);
        v290 = v1297;
        v196 = v126;
        if (sub_2189A44C0(v1297))
        {
          sub_2196C8A38(v289, type metadata accessor for FollowingNotificationsPrewarm);
          goto LABEL_200;
        }

        sub_2190FCB44(v290, v289);
        v1297 = v729;
        LODWORD(v1295) = *MEMORY[0x277D6E528];
        v730 = v1295;
        v731 = sub_219BE92D4();
        v732 = *(*(v731 - 8) + 104);
        v733 = v1286;
        v732(v1286, v730, v731);
        v1191 = v196;
        v734 = *MEMORY[0x277D6E518];
        v735 = v1285[13];
        v736 = v1284;
        v735(v733, v734, v1284);
        v737 = v1287;
        v732(v1287, v1295, v731);
        v735(v737, v734, v736);
        v738 = v1289;
        sub_219BE9EB4();
        v739 = sub_219BE94F4();
        v740 = v1288;
        (*(*(v739 - 8) + 56))(v1288, 1, 1, v739);
        v741 = v1297;
        sub_21909BA64(v1297, v738, v740);

        sub_2196C8E20(v740, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1291 + 8))(v738, v1290);
        sub_2196C8A38(v1254, type metadata accessor for FollowingNotificationsPrewarm);
        goto LABEL_308;
      case 0xFuLL:
        v433 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        memset(v1303, 0, 32);
        LOBYTE(v1303[2]) = -1;
        v171 = v1317[0];
        v434 = sub_2195D1848(v1297, v433, v1303);
        if (!v434)
        {
          goto LABEL_134;
        }

        v435 = v434;
        v436 = v1289;
        sub_218A56C88();
        goto LABEL_113;
      case 0x10uLL:
        v1191 = v1317[0];
        v255 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1306 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v1307 = v255;
        v256 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x40);
        v1308 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x30);
        v1309 = v256;
        v1310 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x50);
        v1311 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x60);
        v257 = *(&v1306 + 1);
        *&v1293 = v1306;
        v1285 = *(&v1307 + 1);
        v258 = v1307;
        v1283 = *(&v1306 + 1);
        if (v1308)
        {
          v257 = v1307;
          if (v1308 != 1)
          {
            goto LABEL_399;
          }
        }

        LODWORD(v1287) = v1308;
        v260 = *(&v1309 + 1);
        v259 = v1309;
        v261 = v1310;
        v262 = v1311;
        v1298[0] = v1309;
        v1298[1] = v1310;
        LOBYTE(v1298[2]) = v1311;
        v263 = v257;
        sub_218B5A004(&v1306, v1303);
        v264 = v259;
        v265 = v260;
        v1284 = *(&v261 + 1);
        v1286 = v261;
        LODWORD(v1295) = v262;
        sub_218F20858(v259, v260, v261, *(&v261 + 1), v262);
        v266 = sub_2195D1848(v1297, v263, v1298);

        sub_218DFAEC4(*&v1298[0], *(&v1298[0] + 1), *&v1298[1], *(&v1298[1] + 1), v1298[2]);
        v267 = v1291;
        if (!v266)
        {
          goto LABEL_147;
        }

        sub_218A56C88();
        goto LABEL_146;
      case 0x11uLL:
        sub_218932F9C(v1317[0]);
        sub_218E2CBEC(v1297);
        if (v457)
        {
          v381 = v457;
          v382 = v1289;
          sub_218A54C74(v1289);
LABEL_85:
          v458 = sub_219BE94F4();
          v459 = v1288;
          (*(*(v458 - 8) + 56))(v1288, 1, 1, v458);
          sub_21909BA64(v381, v382, v459);

          sub_2196C8E20(v459, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1291 + 8))(v382, v1290);
        }

        goto LABEL_310;
      case 0x12uLL:
        v509 = swift_projectBox();
        (*(v1269 + 16))(v1268, v509, v128);
        __swift_project_boxed_opaque_existential_1(v1294 + 2, v1294[5]);
        v1191 = v126;
        sub_2186C709C(0, &unk_27CC1DF80, MEMORY[0x277D35220], 1);
        sub_219BE1E34();
        if (!*(&v1298[1] + 1))
        {
          goto LABEL_394;
        }

        sub_2186CB1F0(v1298, v1303);
        __swift_project_boxed_opaque_existential_1(v1303, *(&v1303[1] + 1));
        v1297 = sub_219BE45A4();
        LODWORD(v1294) = *MEMORY[0x277D6E528];
        v510 = v1294;
        v511 = sub_219BE92D4();
        v512 = *(*(v511 - 8) + 104);
        v513 = v1286;
        v512(v1286, v510, v511);
        v514 = *MEMORY[0x277D6E518];
        v515 = v1285[13];
        v516 = v1284;
        v515(v513, v514, v1284);
        v517 = v1287;
        v512(v1287, v1294, v511);
        v515(v517, v514, v516);
        v518 = v1289;
        sub_219BE9EB4();
        v519 = sub_219BE94F4();
        v520 = v1288;
        (*(*(v519 - 8) + 56))(v1288, 1, 1, v519);
        v521 = v1297;
        sub_21909BA64(v1297, v518, v520);

        sub_2196C8E20(v520, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1291 + 8))(v518, v1290);
        (*(v1269 + 8))(v1268, v1295);
        goto LABEL_337;
      case 0x13uLL:
        v572 = swift_projectBox();
        v573 = v1265;
        (*(v1266 + 16))(v1265, v572, v1267);
        v1191 = v126;
        v1297 = sub_21953B0F8(v1297, v573);
        LODWORD(v1295) = *MEMORY[0x277D6E528];
        v574 = v1295;
        v575 = sub_219BE92D4();
        v576 = *(*(v575 - 8) + 104);
        v577 = v1286;
        v576(v1286, v574, v575);
        v578 = *MEMORY[0x277D6E518];
        v579 = v1285[13];
        v580 = v1284;
        v579(v577, v578, v1284);
        v581 = v1287;
        v576(v1287, v1295, v575);
        v579(v581, v578, v580);
        v582 = v1289;
        sub_219BE9EB4();
        v583 = sub_219BE94F4();
        v584 = v1288;
        (*(*(v583 - 8) + 56))(v1288, 1, 1, v583);
        v585 = v1297;
        sub_21909BA64(v1297, v582, v584);

        sub_2196C8E20(v584, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1291 + 8))(v582, v1290);
        (*(v1266 + 8))(v1265, v1267);
        goto LABEL_308;
      case 0x14uLL:
        v470 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x30);
        v1303[1] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1303[2] = v470;
        v1303[3] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x40);
        *&v1303[4] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x50);
        v471 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1303[0] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v472 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x30);
        v473 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x40);
        v1298[1] = v471;
        v1298[2] = v472;
        v1298[3] = v473;
        *&v1299 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x50);
        v1298[0] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        sub_219092568(v1303, &v1306);
        v171 = v126;
        v474 = sub_2191651D0(v1297, v1298, 0, 0, MEMORY[0x277D84F90]);
        if (v474)
        {
          v435 = v474;
          v436 = v1289;
          sub_218A56C90();
          v1298[2] = v1303[2];
          v1298[3] = v1303[3];
          *&v1299 = *&v1303[4];
          v1298[0] = v1303[0];
          v1298[1] = v1303[1];
          v475 = v1288;
          NewsActivity2.Issue.transitionIdentifier.getter(v1288);
          sub_21909BA64(v435, v436, v475);
          sub_218AAFFC4(v1303);
LABEL_133:

          sub_2196C8E20(v475, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1291 + 8))(v436, v1290);
        }

        else
        {
          sub_218AAFFC4(v1303);
        }

        goto LABEL_134;
      case 0x15uLL:
        v490 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x30);
        v1303[1] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1303[2] = v490;
        v1303[3] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x40);
        v491 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x58);
        *&v1303[4] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x50);
        v492 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1303[0] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v493 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x30);
        v494 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x40);
        v1298[1] = v492;
        v1298[2] = v493;
        v1298[3] = v494;
        *&v1299 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x50);
        v1298[0] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v495 = v1297;
        v496 = 0;
        v497 = 0;
        goto LABEL_130;
      case 0x16uLL:
        v558 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x30);
        v1303[1] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1303[2] = v558;
        v1303[3] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x40);
        v496 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x58);
        *&v1303[4] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x50);
        v559 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1303[0] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v560 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x30);
        v561 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x40);
        v1298[1] = v559;
        v1298[2] = v560;
        v497 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x60);
        v1298[3] = v561;
        *&v1299 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x50);
        v1298[0] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v491 = MEMORY[0x277D84F90];
        goto LABEL_129;
      case 0x17uLL:
        v609 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x30);
        v1303[1] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1303[2] = v609;
        v1303[3] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x40);
        v496 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x58);
        *&v1303[4] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x50);
        v610 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1303[0] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v611 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x30);
        v612 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x40);
        v1298[1] = v610;
        v1298[2] = v611;
        v497 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x60);
        v491 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x68);
        v1298[3] = v612;
        *&v1299 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x50);
        v1298[0] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
LABEL_129:
        v495 = v1297;
LABEL_130:
        v171 = v1317[0];
        v613 = sub_2191651D0(v495, v1298, v496, v497, v491);
        if (!v613)
        {
          goto LABEL_134;
        }

        v435 = v613;
        v436 = v1289;
        sub_218A56C90();
        v1298[2] = v1303[2];
        v1298[3] = v1303[3];
        *&v1299 = *&v1303[4];
        v1298[0] = v1303[0];
        v1298[1] = v1303[1];
        v475 = v1288;
        NewsActivity2.Issue.transitionIdentifier.getter(v1288);
        goto LABEL_132;
      case 0x18uLL:
        v407 = swift_projectBox();
        v408 = v1283;
        v409 = v1230;
        v410 = v1282;
        (v1283[2])(v1230, v407, v1282);
        __swift_project_boxed_opaque_existential_1(v1294 + 2, v1294[5]);
        v196 = v126;
        sub_2186C709C(0, &qword_280EE5700, MEMORY[0x277D6D840], 1);
        sub_219BE1E34();
        if (*(&v1298[1] + 1))
        {
          sub_2186CB1F0(v1298, v1303);
          __swift_project_boxed_opaque_existential_1(v1303, *(&v1303[1] + 1));
          sub_219BE6DC4();
          (v408[1])(v409, v410);
          __swift_destroy_boxed_opaque_existential_1(v1303);
          goto LABEL_300;
        }

        __break(1u);
LABEL_394:
        __break(1u);
LABEL_395:
        __break(1u);
        goto LABEL_396;
      case 0x19uLL:
        sub_21896FC94((v1317[0] & 0xFFFFFFFFFFFFFF9) + 16, v1303);
        v1191 = v126;
        sub_218F73AF0(v1297, v1303);
        v1297 = v394;
        LODWORD(v1295) = *MEMORY[0x277D6E528];
        v395 = v1295;
        v396 = sub_219BE92D4();
        v397 = *(*(v396 - 8) + 104);
        v398 = v1286;
        v397(v1286, v395, v396);
        v399 = *MEMORY[0x277D6E518];
        v400 = v1285[13];
        v401 = v1284;
        v400(v398, v399, v1284);
        v402 = v1287;
        v397(v1287, v1295, v396);
        v400(v402, v399, v401);
        v403 = v1289;
        sub_219BE9EB4();
        v404 = sub_219BE94F4();
        v405 = v1288;
        (*(*(v404 - 8) + 56))(v1288, 1, 1, v404);
        v406 = v1297;
        sub_21909BA64(v1297, v403, v405);

        sub_2196C8E20(v405, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1291 + 8))(v403, v1290);
        sub_218C113E0(v1303);
        goto LABEL_308;
      case 0x1AuLL:
        sub_21896FC94((v1317[0] & 0xFFFFFFFFFFFFFF9) + 16, v1303);
        v171 = v126;
        v652 = sub_219B4E2DC(v1297, v1303);
        v653 = v1289;
        sub_218A55E28(v1289);
        v654 = sub_219BE94F4();
        v655 = v1288;
        (*(*(v654 - 8) + 56))(v1288, 1, 1, v654);
        sub_21909BA64(v652, v653, v655);

        sub_2196C8E20(v655, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1291 + 8))(v653, v1290);
        sub_218C113E0(v1303);
        goto LABEL_134;
      case 0x1BuLL:
        v246 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1303[0] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        LOBYTE(v1303[1]) = v246;
        v196 = v1317[0];
        sub_219B4EBD0(v1297, v1303);
        if (v247)
        {
          v248 = v247;
          if (v246 == 255)
          {
            sub_218A56150();
          }

          else
          {
            sub_218A56C94();
          }

          v1114 = v1291;
          v1115 = v1290;
          v1116 = sub_219BE94F4();
          v1117 = v1288;
          (*(*(v1116 - 8) + 56))(v1288, 1, 1, v1116);
          sub_21909BA64(v248, v119, v1117);

          sub_2196C8E20(v1117, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1114 + 8))(v119, v1115);
        }

        goto LABEL_300;
      case 0x1CuLL:
        v1191 = v1317[0];
        v615 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x18);
        v616 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
        if (*((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10) - 5) >= 2 && (v616 == 2 || (v616))
        {
          memset(v1303, 0, 32);
          LOBYTE(v1303[2]) = -1;
          v886 = v1297;
          v887 = v1294;
          v888 = sub_2195CFAE4(v1297, v615, v1303);
          if (v888)
          {
            v889 = v888;
            v890 = v1289;
            sub_218A54C90(v1289);
            v891 = sub_219BE94F4();
            v892 = v1288;
            (*(*(v891 - 8) + 56))(v1288, 1, 1, v891);
            sub_21909BA64(v889, v890, v892);

            sub_2196C8E20(v892, &unk_280EE4470, MEMORY[0x277D6E658]);
            (*(v1291 + 8))(v890, v1290);
          }

          v614 = v1191;
          if (v616 != 2 && (v616 & 1) != 0)
          {
            if (qword_280E8D818 != -1)
            {
              swift_once();
            }

            v893 = qword_280F61718;
            sub_2196C8698(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
            v894 = swift_allocObject();
            *(v894 + 16) = xmmword_219C09BA0;
            *&v1303[0] = 0;
            *(&v1303[0] + 1) = 0xE000000000000000;
            sub_219BEA7A4();
            v895 = *&v1298[0];
            *&v1306 = *&v1298[0];
            sub_219BF7484();
            sub_218932F9C(v895);
            v896 = v1303[0];
            *(v894 + 56) = MEMORY[0x277D837D0];
            *(v894 + 64) = sub_2186FC3BC();
            *(v894 + 32) = v896;
            v897 = sub_219BF6214();
            sub_219BE5314("Will async determine sports post-route redirect route for %{public}@", 68, 2, &dword_2186C1000, v893, v897, v894);

            MEMORY[0x28223BE20](v898);
            v1189 = v887;
            v1190 = v886;
            type metadata accessor for SportsOnboardingRedirectRoute(0);
            sub_219BE3204();
            v899 = sub_219BE1C44();
            sub_219BE2F94();

            goto LABEL_308;
          }

          goto LABEL_309;
        }

        v1295 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v617 = OBJC_IVAR___TSFeedViewContext_openedFromNews;
        swift_beginAccess();
        v618 = (v615[v617] == 2) | v615[v617];
        v619 = v1297;
        LODWORD(v1293) = (v615[v617] == 2) | v615[v617];
        if (v616 == 2)
        {
          v620 = v1192;
          if (v618)
          {
            goto LABEL_274;
          }
        }

        else
        {
          v620 = v1192;
          if (((v616 & 1) == 0) | v618 & 1)
          {
LABEL_274:
            v1297 = v615;
            if (qword_280E8D818 != -1)
            {
              swift_once();
            }

            v1019 = qword_280F61718;
            sub_2196C8698(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
            v1020 = swift_allocObject();
            *(v1020 + 16) = xmmword_219C09BA0;
            *&v1303[0] = 0;
            *(&v1303[0] + 1) = 0xE000000000000000;
            sub_219BEA7A4();
            v1021 = v1306;
            v1312 = v1306;
            sub_219BF7484();
            sub_218932F9C(v1021);
            v1022 = *&v1303[0];
            v1023 = v619;
            v1024 = *(&v1303[0] + 1);
            *(v1020 + 56) = MEMORY[0x277D837D0];
            *(v1020 + 64) = sub_2186FC3BC();
            *(v1020 + 32) = v1022;
            *(v1020 + 40) = v1024;
            v1025 = sub_219BF6214();
            sub_219BE5314("Will async determine sports redirect route for %{public}@", 57, 2, &dword_2186C1000, v1019, v1025, v1020);

            MEMORY[0x28223BE20](v1026);
            v1189 = v1294;
            v1190 = v1023;
            type metadata accessor for SportsOnboardingRedirectRoute(0);
            sub_219BE3204();
            v1027 = sub_219BE1C44();
            v1028 = v1281;
            v1029 = v1273;
            (*(v1281 + 16))(v1273, v1023, v620);
            v1030 = (*(v1028 + 80) + 24) & ~*(v1028 + 80);
            v1031 = (v1272 + v1030 + 7) & 0xFFFFFFFFFFFFFFF8;
            v1032 = swift_allocObject();
            *(v1032 + 16) = v1295;
            (*(v1028 + 32))(v1032 + v1030, v1029, v620);
            v1033 = v1032 + v1031;
            v1034 = v1297;
            *v1033 = v1297;
            *(v1033 + 8) = v1293 & 1;
            v1035 = v1034;
            sub_219BE2F94();

            goto LABEL_277;
          }
        }

        if (qword_280E8D818 != -1)
        {
          swift_once();
        }

        v1007 = qword_280F61718;
        sub_2196C8698(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
        v1008 = swift_allocObject();
        *(v1008 + 16) = xmmword_219C09BA0;
        *&v1303[0] = 0;
        *(&v1303[0] + 1) = 0xE000000000000000;
        sub_219BEA7A4();
        v1009 = v1306;
        v1312 = v1306;
        sub_219BF7484();
        sub_218932F9C(v1009);
        v1011 = *(&v1303[0] + 1);
        v1010 = *&v1303[0];
        *(v1008 + 56) = MEMORY[0x277D837D0];
        *(v1008 + 64) = sub_2186FC3BC();
        *(v1008 + 32) = __PAIR128__(v1011, v1010);
        v619 = v1297;
        v1012 = sub_219BF6214();
        sub_219BE5314("Special case determine sports redirect route for %{public}@ will force My Sports first", 86, 2, &dword_2186C1000, v1007, v1012, v1008);

        memset(v1303, 0, 32);
        LOBYTE(v1303[2]) = -1;
        v1013 = sub_2195CFAE4(v619, v615, v1303);
        if (v1013)
        {
          v1014 = v1013;
          v1015 = v1289;
          sub_218A54C90(v1289);
          v1016 = sub_219BE94F4();
          v1017 = v1288;
          (*(*(v1016 - 8) + 56))(v1288, 1, 1, v1016);
          sub_21909BA64(v1014, v1015, v1017);

          sub_2196C8E20(v1017, &unk_280EE4470, MEMORY[0x277D6E658]);
          v1018 = v1015;
          v619 = v1297;
          (*(v1291 + 8))(v1018, v1290);
        }

        goto LABEL_274;
      case 0x1DuLL:
        v621 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v391 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x18);
        *&v1303[0] = v621;
        *(&v1303[0] + 1) = v391;
        sub_2188202A8(v621);
        v196 = v126;
        v622 = sub_219163D7C(v1297, v1303);
        if (!v622)
        {
          sub_2187FABEC(v621, v391);
          goto LABEL_300;
        }

        v623 = v622;
        v1191 = v126;
        sub_219BE8AE4();
        if ((sub_219BE8AD4() & 1) == 0)
        {
          v1297 = v623;
          sub_219BE8A94();
          LODWORD(v1294) = *MEMORY[0x277D6E528];
          v1036 = v1294;
          v1037 = sub_219BE92D4();
          v1038 = *(v1037 - 8);
          *&v1293 = *(v1038 + 104);
          v1295 = (v1038 + 104);
          v1039 = v1286;
          (v1293)(v1286, v1036, v1037);
          v1040 = *MEMORY[0x277D6E518];
          v1041 = v1285[13];
          v1042 = v1284;
          v1041(v1039, v1040, v1284);
          v1043 = v1287;
          (v1293)(v1287, v1294, v1037);
          v1041(v1043, v1040, v1042);
          v231 = v1289;
          sub_219BE9EB4();
          v1044 = sub_219BE94F4();
          v233 = v1288;
          (*(*(v1044 - 8) + 56))(v1288, 1, 1, v1044);
          v1045 = v1297;
          sub_21909BA64(v1297, v231, v233);
          sub_2187FABEC(v621, v391);

LABEL_279:
          sub_2196C8E20(v233, &unk_280EE4470, MEMORY[0x277D6E658]);
          v210 = *(v1291 + 8);
          v211 = v231;
          goto LABEL_306;
        }

        sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
        v624 = sub_219BF6F44();
        v625 = sub_219BF6214();
        sub_219BE5314("Skipping onboarding flow presentation as one is already being presented", 71, 2, &dword_2186C1000, v624, v625, MEMORY[0x277D84F90]);

        v626 = v621;
LABEL_346:
        sub_2187FABEC(v626, v391);
        goto LABEL_308;
      case 0x1EuLL:
        v235 = v1317[0];
        v542 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v543 = v1294[21];

        if (([v543 useFood] & 1) == 0)
        {
          v837 = v1214;
          sub_219BDE5F4();
          v838 = v1217;
          sub_219BDD7E4();
          (*(v1215 + 8))(v837, v1216);
          if ((*(v1210 + 48))(v838, 1, v1211) == 1)
          {

            sub_2196C8E20(v838, &qword_280EE8E10, MEMORY[0x277D2FB40]);
            v839 = *MEMORY[0x277D6E358];
            v840 = sub_219BE8DE4();
            (*(*(v840 - 8) + 104))(v1296, v839, v840);
          }

          else
          {
            v1086 = v1206;
            sub_2196C8AA4(v838, v1206, MEMORY[0x277D2FB40]);
            sub_2196C8470(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);
            v1088 = *(v1087 + 48);
            v1089 = v1227;
            sub_2196C8D0C(v1086, v1227, MEMORY[0x277D2FB40]);
            v1090 = MEMORY[0x277D84F90];
            *(v1089 + v1088) = MEMORY[0x277D84F90];
            sub_2187B2C48(0);
            v1092 = v1091;
            v1093 = swift_allocBox();
            v1095 = v1094;
            v1096 = *(v1092 + 48);
            sub_2196C8D0C(v1089, v1094, type metadata accessor for NewsActivity2.Article);
            *(v1095 + v1096) = v1090;
            *&v1303[0] = v1093 | 2;
            sub_2186CF9A8();
            v1097 = v1273;
            v1098 = v1192;
            sub_219BEA7C4();
            sub_2196B6E0C(v1097, v1296);

            (*(v1281 + 8))(v1097, v1098);
            sub_2196C8A38(v1089, type metadata accessor for NewsActivity2.Article);
            sub_2196C8A38(v1086, MEMORY[0x277D2FB40]);
          }

          v179 = v235;
          goto LABEL_333;
        }

        sub_21988B198(v1297, v542);
        if (!v544)
        {
          v1132 = *MEMORY[0x277D6E358];
          v1133 = sub_219BE8DE4();
          (*(*(v1133 - 8) + 104))(v1296, v1132, v1133);

          v179 = v235;
          goto LABEL_333;
        }

        v545 = v544;
        v546 = v1289;
        sub_218A56C8C();
        v547 = v1288;
        sub_219BDE654();
        sub_21909BA64(v545, v546, v547);

        sub_2196C8E20(v547, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1291 + 8))(v546, v1290);
LABEL_323:
        v614 = v235;
        goto LABEL_309;
      case 0x1FuLL:
        v196 = v1317[0];
        v456 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        if ([v1294[21] useFood])
        {
          if (v456)
          {
            sub_218A56708(v116);
          }

          else
          {
            sub_218A56C88();
          }

          v1081 = v1291;
          v1082 = v1290;
          v1083 = sub_2190FD6AC(v1297, v116, v456);
          v1084 = sub_219BE94F4();
          v1085 = v1288;
          (*(*(v1084 - 8) + 56))(v1288, 1, 1, v1084);
          sub_21909BA64(v1083, v116, v1085);

          sub_2196C8E20(v1085, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1081 + 8))(v116, v1082);
          goto LABEL_300;
        }

        if (qword_280EE5F38 != -1)
        {
          swift_once();
        }

        v818 = sub_219BE5434();
        __swift_project_value_buffer(v818, qword_280F62568);
        v819 = sub_219BE5414();
        v820 = sub_219BF6214();
        if (os_log_type_enabled(v819, v820))
        {
          v821 = swift_slowAlloc();
          *v821 = 0;
          MEMORY[0x21CECF960](v821, -1, -1);
        }

LABEL_200:
        v822 = *MEMORY[0x277D6E358];
        v823 = sub_219BE8DE4();
        (*(*(v823 - 8) + 104))(v1296, v822, v823);
        v179 = v196;
        goto LABEL_333;
      case 0x20uLL:
        v548 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        memset(v1303, 0, 32);
        LOBYTE(v1303[2]) = -1;
        v171 = v1317[0];
        v549 = sub_2195D1D8C(v1297, v548, v1303, 0, 0, 0);
        if (!v549)
        {
          goto LABEL_134;
        }

        v435 = v549;
        v436 = v1289;
        sub_218A56C8C();
LABEL_113:
        v550 = sub_219BE94F4();
        v475 = v1288;
        (*(*(v550 - 8) + 56))(v1288, 1, 1, v550);
LABEL_132:
        sub_21909BA64(v435, v436, v475);
        goto LABEL_133;
      case 0x21uLL:
        v291 = v1317[0];
        v292 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v293 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x18);
        v294 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
        v295 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x28);
        __swift_project_boxed_opaque_existential_1(v1294 + 66, v1294[69]);
        v296 = v292;

        if (sub_219BEED54())
        {
          memset(v1303, 0, 32);
          LOBYTE(v1303[2]) = -1;
          v297 = sub_2195D1D8C(v1297, v296, v1303, v293, v294, v295);
          if (v297)
          {
            v298 = v297;
            v299 = v1289;
            sub_218A56C8C();
            v300 = sub_219BE94F4();
            v301 = v1288;
            (*(*(v300 - 8) + 56))(v1288, 1, 1, v300);
            sub_21909BA64(v298, v299, v301);

            sub_2196C8E20(v301, &unk_280EE4470, MEMORY[0x277D6E658]);
            (*(v1291 + 8))(v299, v1290);
          }

          else
          {
          }

          goto LABEL_313;
        }

        if (qword_27CC085D0 != -1)
        {
          swift_once();
        }

        v742 = sub_219BE5434();
        __swift_project_value_buffer(v742, qword_27CCD8AF8);
        v743 = sub_219BE5414();
        v744 = sub_219BF6214();
        if (os_log_type_enabled(v743, v744))
        {
          v745 = swift_slowAlloc();
          *v745 = 0;
          MEMORY[0x21CECF960](v745, -1, -1);
        }

        v746 = *MEMORY[0x277D6E358];
        v747 = sub_219BE8DE4();
        (*(*(v747 - 8) + 104))(v1296, v746, v747);
        v179 = v291;
        goto LABEL_333;
      case 0x22uLL:
        v249 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v250 = v1297;
        v196 = v1317[0];
        if (sub_2189A44C0(v1297))
        {
          goto LABEL_200;
        }

        sub_218AAC77C(v250, v249);
        v1297 = v251;
        LODWORD(v1295) = *MEMORY[0x277D6E528];
        v252 = v1295;
        v216 = sub_219BE92D4();
        v217 = *(*(v216 - 8) + 104);
        v253 = v1286;
        v217(v1286, v252, v216);
        v254 = MEMORY[0x277D6E4F8];
        v1191 = v196;
LABEL_95:
        v219 = *v254;
        v220 = v1285[13];
        v221 = v253;
        v222 = v219;
        goto LABEL_96;
      case 0x23uLL:
        LOBYTE(v1303[0]) = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        *(v1303 + 8) = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x18);
        v1293 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x28);
        *(&v1303[1] + 8) = v1293;
        v1295 = *(&v1303[0] + 1);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v1191 = v126;
        v1297 = sub_21988C550(v1297, v1303);
        LODWORD(v1294) = *MEMORY[0x277D6E528];
        v223 = v1294;
        v224 = sub_219BE92D4();
        v225 = *(*(v224 - 8) + 104);
        v226 = v1286;
        v225(v1286, v223, v224);
        v227 = *MEMORY[0x277D6E518];
        v228 = v1285[13];
        v229 = v1284;
        v228(v226, v227, v1284);
        v230 = v1287;
        v225(v1287, v1294, v224);
        v228(v230, v227, v229);
        v231 = v1289;
        sub_219BE9EB4();
        v232 = sub_219BE94F4();
        v233 = v1288;
        (*(*(v232 - 8) + 56))(v1288, 1, 1, v232);
        v234 = v1297;
        sub_21909BA64(v1297, v231, v233);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        goto LABEL_279;
      case 0x24uLL:
        v235 = v1317[0];
        v236 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v237 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x18);
        if (sub_21909C564())
        {
          sub_2190FC1CC(v1297);
          v239 = v1291;
          v240 = v1290;
          if (v238)
          {
            v241 = v238;
            v242 = v1289;
            sub_218A56538(v1289);
            v243 = sub_219BE94F4();
            v244 = v1288;
            (*(*(v243 - 8) + 56))(v1288, 1, 1, v243);
            sub_21909BA64(v241, v242, v244);
            sub_2196C8E20(v244, &unk_280EE4470, MEMORY[0x277D6E658]);
            (*(v239 + 8))(v242, v240);
            type metadata accessor for FollowingViewController(0);
            sub_219BF6584();
            v245 = *&v1303[0];
            if (*&v1303[0])
            {

              sub_218AE58B4(v236, v237);
            }
          }
        }

        else
        {
          v722 = sub_219430CDC(v236, v237);
          v723 = v1291;
          v724 = v1290;
          if (v722)
          {
            v725 = v722;
            v726 = v1289;
            sub_218A557E8(v1289);
            v727 = sub_219BE94F4();
            v728 = v1288;
            (*(*(v727 - 8) + 56))(v1288, 1, 1, v727);
            sub_21909BA64(v725, v726, v728);

            sub_2196C8E20(v728, &unk_280EE4470, MEMORY[0x277D6E658]);
            (*(v723 + 8))(v726, v724);
          }
        }

        goto LABEL_323;
      case 0x25uLL:
        sub_2194314FC((v1317[0] & 0xFFFFFFFFFFFFFF9) + 16, v1303);
        v169 = sub_219BF2CB4();
        v170 = v1263;
        (*(*(v169 - 8) + 56))(v1263, 1, 1, v169);
        v171 = v126;
        v172 = v1294[14];
        v173 = v1275;
        v174 = v1274;
        v175 = v1276;
        (*(v1275 + 104))(v1274, *MEMORY[0x277D335E0], v1276);
        v176 = v1297;
        LOBYTE(v172) = sub_218AA1908(v170, v1297, v172, v174);
        (*(v173 + 8))(v174, v175);
        sub_2196C8E20(v170, &qword_280E902A0, MEMORY[0x277D33BC8]);
        if (v172)
        {
          sub_2196C88C0(v1303);
          v177 = *MEMORY[0x277D6E358];
          v178 = sub_219BE8DE4();
          (*(*(v178 - 8) + 104))(v1296, v177, v178);
          v179 = v171;
          goto LABEL_333;
        }

        sub_219430F5C(v176, v1303);
        v718 = v717;
        v719 = v1289;
        sub_218A56C90();
        v720 = sub_219BE94F4();
        v721 = v1288;
        (*(*(v720 - 8) + 56))(v1288, 1, 1, v720);
        sub_21909BA64(v718, v719, v721);

        sub_2196C8E20(v721, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1291 + 8))(v719, v1290);
        sub_2196C88C0(v1303);
LABEL_134:
        v614 = v171;
        goto LABEL_309;
      case 0x26uLL:
        v1191 = v1317[0];
        v627 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1306 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v1307 = v627;
        v628 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x40);
        v1308 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x30);
        v1309 = v628;
        v1310 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x50);
        v1311 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x60);
        v629 = *(&v1306 + 1);
        *&v1293 = v1306;
        v1285 = *(&v1307 + 1);
        v258 = v1307;
        v1283 = *(&v1306 + 1);
        if (v1308)
        {
          v629 = v1307;
          if (v1308 != 1)
          {
            goto LABEL_399;
          }
        }

        LODWORD(v1287) = v1308;
        v631 = *(&v1309 + 1);
        v630 = v1309;
        v632 = v1310;
        v633 = v1311;
        v1298[0] = v1309;
        v1298[1] = v1310;
        LOBYTE(v1298[2]) = v1311;
        v634 = v629;
        sub_218B5A004(&v1306, v1303);
        v264 = v630;
        v265 = v631;
        v1284 = *(&v632 + 1);
        v1286 = v632;
        LODWORD(v1295) = v633;
        sub_218F20858(v630, v631, v632, *(&v632 + 1), v633);
        v266 = sub_2195CFAE4(v1297, v634, v1298);

        sub_218DFAEC4(*&v1298[0], *(&v1298[0] + 1), *&v1298[1], *(&v1298[1] + 1), v1298[2]);
        v267 = v1291;
        if (v266)
        {
          sub_218A54C90(v1289);
LABEL_146:
          v635 = sub_219BE94F4();
          v636 = v1288;
          (*(*(v635 - 8) + 56))(v1288, 1, 1, v635);
          sub_21909BA64(v266, v1289, v636);

          v637 = v1289;
          sub_2196C8E20(v636, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v267 + 8))(v637, v1290);
        }

LABEL_147:
        v638 = v1293;
        v639 = v1283;
        v1312 = v1293;
        v1313 = v1283;
        v640 = v1285;
        v1314 = v258;
        v1315 = v1285;
        v641 = v1287;
        v1316 = v1287;
        v1282 = *(&v1308 + 1);
        v642 = v1286;
        v643 = v1284;
        sub_218F20858(v264, v265, v1286, v1284, v1295);
        v644 = v639;
        v645 = v1289;
        sub_21908FD7C(v638, v644, v258, v640, v641);
        sub_218A56C8C();
        LOBYTE(v1298[0]) = 0;
        *&v1298[1] = 0;
        *(&v1298[0] + 1) = 0;
        *(&v1298[1] + 1) = v264;
        *&v1298[2] = v265;
        *(&v1298[2] + 1) = v642;
        *&v1298[3] = v643;
        BYTE8(v1298[3]) = v1295;
        *&v1300 = 0;
        v1299 = 0uLL;
        sub_2195D0028(v1297, &v1312, v1282, v645, v1298);
        v647 = v646;
        v1303[2] = v1298[2];
        v1303[3] = v1298[3];
        v1303[4] = v1299;
        *&v1303[5] = v1300;
        v1303[0] = v1298[0];
        v1303[1] = v1298[1];
        sub_2196C8400(v1303, &qword_280EA94E0, &type metadata for FeedViewControllerCreateOptions);
        v648 = *(v1291 + 8);
        v649 = v1290;
        v648(v645, v1290);
        sub_21896FBB0(v1312, v1313, v1314, v1315, v1316);
        if (!v647)
        {
          goto LABEL_237;
        }

        sub_218A56C8C();
        v650 = sub_219BE94F4();
        v651 = v1288;
        (*(*(v650 - 8) + 56))(v1288, 1, 1, v650);
        sub_21909BA64(v647, v645, v651);

        sub_218B5A060(&v1306);
        sub_2196C8E20(v651, &unk_280EE4470, MEMORY[0x277D6E658]);
        v648(v645, v649);
        goto LABEL_308;
      case 0x27uLL:
        v1191 = v1317[0];
        v563 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v562 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x18);
        v564 = qword_280E8D818;

        if (v564 != -1)
        {
          swift_once();
        }

        v565 = qword_280F61718;
        v566 = sub_219BF6214();
        sub_219BE5314("Will async determine sports redirect route for sportsManagementDetail", 69, 2, &dword_2186C1000, v565, v566, MEMORY[0x277D84F90]);
        v567 = v1297;
        v568 = v1294;
        v569 = sub_2189A44C0(v1297);
        if (v569)
        {
          v570 = *MEMORY[0x277D6E358];
          v571 = sub_219BE8DE4();
          (*(*(v571 - 8) + 104))(v1296, v570, v571);

          goto LABEL_332;
        }

        v1295 = v563;
        MEMORY[0x28223BE20](v569);
        v1189 = v568;
        v1190 = v567;
        type metadata accessor for SportsOnboardingRedirectRoute(0);
        sub_219BE3204();
        *&v1293 = sub_219BE1C44();
        v841 = v1281;
        v842 = v1273;
        v843 = v1192;
        (*(v1281 + 16))(v1273, v567, v1192);
        v844 = (*(v841 + 80) + 16) & ~*(v841 + 80);
        v845 = (v1272 + v844 + 7) & 0xFFFFFFFFFFFFFFF8;
        v846 = swift_allocObject();
        (*(v841 + 32))(v846 + v844, v842, v843);
        v847 = (v846 + v845);
        *v847 = v1295;
        v847[1] = v562;
        v848 = v1293;
        sub_219BE2F94();

LABEL_277:

        goto LABEL_308;
      case 0x28uLL:
        v1295 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v362 = v1295;
        swift_unknownObjectRetain();
        v1191 = v126;
        v1297 = sub_219048E18(v1297, v362);
        LODWORD(v1294) = *MEMORY[0x277D6E528];
        v363 = v1294;
        v364 = sub_219BE92D4();
        v365 = *(*(v364 - 8) + 104);
        v366 = v1286;
        v365(v1286, v363, v364);
        v367 = *MEMORY[0x277D6E4F8];
        v368 = v1285[13];
        v369 = v1284;
        v368(v366, v367, v1284);
        v370 = v1287;
        v365(v1287, v1294, v364);
        v368(v370, v367, v369);
        v371 = v1289;
        sub_219BE9EB4();
        v372 = sub_219BE94F4();
        v373 = v1288;
        (*(*(v372 - 8) + 56))(v1288, 1, 1, v372);
        v374 = v1297;
        sub_21909BA64(v1297, v371, v373);
        swift_unknownObjectRelease();

        v375 = MEMORY[0x277D6E658];
        v376 = v373;
        goto LABEL_216;
      case 0x29uLL:
        sub_218932F9C(v1317[0]);
        if (qword_280E8D818 != -1)
        {
          swift_once();
        }

        v460 = qword_280F61718;
        v461 = sub_219BF6214();
        sub_219BE5314("Will async determine sports redirect route for sportsFavoritesSync", 66, 2, &dword_2186C1000, v460, v461, MEMORY[0x277D84F90]);
        MEMORY[0x28223BE20](v462);
        v463 = v1297;
        v1189 = v1294;
        v1190 = v1297;
        type metadata accessor for SportsOnboardingRedirectRoute(0);
        sub_219BE3204();
        v464 = sub_219BE1C44();
        v465 = v1281;
        v466 = v1273;
        v467 = v1192;
        (*(v1281 + 16))(v1273, v463, v1192);
        v468 = (*(v465 + 80) + 16) & ~*(v465 + 80);
        v469 = swift_allocObject();
        (*(v465 + 32))(v469 + v468, v466, v467);
        sub_219BE2F94();

        goto LABEL_89;
      case 0x2AuLL:
        v587 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v588 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x18);
        v589 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
        *&v1303[0] = v587;
        *(&v1303[0] + 1) = v588;
        LOBYTE(v1303[1]) = v589;
        sub_219092540(v587, v588, v589);
        v151 = v126;
        sub_2189B5068(v1303);
        sub_219092554(v587, v588, v589);
        goto LABEL_233;
      case 0x2BuLL:
        sub_218932F9C(v1317[0]);
        v166 = v1233;
        sub_219534E68(v1297, v1233);
        sub_219535290(0);
        v168 = v167;
        if ((*(*(v167 - 8) + 48))(v166, 1, v167) == 1)
        {
          sub_2196C8E20(v166, &qword_280ED6F90, sub_219535290);
        }

        else
        {
          v1297 = *(v166 + *(v168 + 48));
          v704 = v1244;
          sub_2196C8AA4(v166, v1244, type metadata accessor for WebEmbedResource);
          v705 = *(v704 + *(v1218 + 24));
          LODWORD(v1295) = *MEMORY[0x277D6E528];
          v706 = v1295;
          v707 = sub_219BE92D4();
          v1294 = *(*(v707 - 8) + 104);
          v708 = v1286;
          (v1294)(v1286, v706, v707);
          v709 = v1285[13];
          v710 = MEMORY[0x277D6E4F8];
          if (!v705)
          {
            v710 = MEMORY[0x277D6E518];
          }

          v711 = *v710;
          v712 = v1284;
          v709(v708, v711, v1284);
          v713 = v1287;
          (v1294)(v1287, v1295, v707);
          v709(v713, v711, v712);
          sub_219BE9EB4();
          v714 = sub_219BE94F4();
          v715 = v1288;
          (*(*(v714 - 8) + 56))(v1288, 1, 1, v714);
          v716 = v1297;
          sub_21909BA64(v1297, v113, v715);

          sub_2196C8E20(v715, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1291 + 8))(v113, v1290);
          sub_2196C8A38(v1244, type metadata accessor for WebEmbedResource);
        }

        goto LABEL_310;
      case 0x2CuLL:
        v1191 = v1317[0];
        v268 = swift_projectBox();
        v269 = v1252;
        sub_2196C8D0C(v268, v1252, type metadata accessor for WebLinkViewControllerType);
        v270 = v1235;
        sub_2196C8D0C(v269, v1235, type metadata accessor for WebLinkViewControllerType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          v272 = v1283;
          v273 = v1282;
          if (EnumCaseMultiPayload == 1)
          {
            v274 = v1223;
            (v1283[4])(v1223, v270, v1282);
            v275 = sub_218CF8A44(v1297, v274);
            if (v275)
            {
              v276 = *MEMORY[0x277D6E530];
              v1297 = v275;
              v277 = sub_219BE92D4();
              v278 = *(*(v277 - 8) + 104);
              v279 = v1286;
              v278(v1286, v276, v277);
              v280 = *MEMORY[0x277D6E518];
              v281 = v1285[13];
              v282 = v1284;
              v281(v279, v280, v1284);
              v283 = v1287;
              v278(v1287, *MEMORY[0x277D6E538], v277);
              v281(v283, v280, v282);
              v284 = v1289;
              sub_219BE9EB4();
              v285 = sub_219BE94F4();
              v286 = v1288;
              (*(*(v285 - 8) + 56))(v1288, 1, 1, v285);
              v287 = v1297;
              sub_21909BA64(v1297, v284, v286);

              sub_2196C8E20(v286, &unk_280EE4470, MEMORY[0x277D6E658]);
              (*(v1291 + 8))(v284, v1290);
              (v1283[1])(v1223, v1282);
LABEL_268:
              sub_2196C8A38(v1252, type metadata accessor for WebLinkViewControllerType);
              goto LABEL_308;
            }

            (v272[1])(v274, v273);
          }

          else
          {
            v993 = v1224;
            sub_2196C8AA4(v270, v1224, type metadata accessor for WebLinkRouteModel);
            v994 = sub_218CF8D3C(v1297, v993);
            if (v994)
            {
              LODWORD(v1295) = *MEMORY[0x277D6E528];
              v995 = v1295;
              v1297 = v994;
              v996 = sub_219BE92D4();
              v997 = *(*(v996 - 8) + 104);
              v998 = v1286;
              v997(v1286, v995, v996);
              v999 = *MEMORY[0x277D6E518];
              v1000 = v1285[13];
              v1001 = v1284;
              v1000(v998, v999, v1284);
              v1002 = v1287;
              v997(v1287, v1295, v996);
              v1000(v1002, v999, v1001);
              v1003 = v1289;
              sub_219BE9EB4();
              v1004 = sub_219BE94F4();
              v1005 = v1288;
              (*(*(v1004 - 8) + 56))(v1288, 1, 1, v1004);
              v1006 = v1297;
              sub_21909BA64(v1297, v1003, v1005);

              sub_2196C8E20(v1005, &unk_280EE4470, MEMORY[0x277D6E658]);
              (*(v1291 + 8))(v1003, v1290);
              sub_2196C8A38(v1224, type metadata accessor for WebLinkRouteModel);
              goto LABEL_268;
            }

            sub_2196C8A38(v993, type metadata accessor for WebLinkRouteModel);
          }
        }

        else
        {
          v987 = v1283;
          v988 = v1251;
          v989 = v1282;
          (v1283[4])(v1251, v270, v1282);
          v990 = [objc_opt_self() sharedApplication];
          v991 = sub_219BDB854();
          sub_2194B115C(MEMORY[0x277D84F90]);
          type metadata accessor for OpenExternalURLOptionsKey(0);
          sub_2196C8DD8(&qword_27CC0A770, type metadata accessor for OpenExternalURLOptionsKey, &unk_219C0986C);
          v992 = sub_219BF5204();

          [v990 openURL:v991 options:v992 completionHandler:0];

          (v987[1])(v988, v989);
        }

        sub_2196C8A38(v269, type metadata accessor for WebLinkViewControllerType);
        goto LABEL_308;
      case 0x2DuLL:
        sub_218C24040(0);
        v551 = v126;
        v553 = v552;
        v1191 = v551;
        v554 = swift_projectBox();
        v555 = *(v553 + 48);
        v556 = *(v553 + 64);
        (v1283[2])(v1277, v554, v1282);
        sub_2196C8588(v554 + v555, v1278, &qword_280EE64A0, MEMORY[0x277D34D78]);
        sub_2196C8588(v554 + v556, v1280, &unk_280EE6490, MEMORY[0x277D34E88]);
        v557 = v1294;
        __swift_project_boxed_opaque_existential_1(v1294 + 2, v1294[5]);
        sub_2186C709C(0, &qword_280EA6BB0, &protocol descriptor for EngagementUpsellOfferManagerType, 1);
        sub_219BE1E34();
        sub_2196C8608(v1303, v1298);
        if (*(&v1298[1] + 1))
        {
          __swift_project_boxed_opaque_existential_1(v1298, *(&v1298[1] + 1));
          sub_2187AC958(0);
          __swift_destroy_boxed_opaque_existential_1(v1298);
        }

        else
        {
          sub_2196C8C94(v1298, &qword_27CC1DF78, &qword_280EA6BB0, &protocol descriptor for EngagementUpsellOfferManagerType);
        }

        __swift_project_boxed_opaque_existential_1(v557 + 30, v557[33]);
        v935 = v1257;
        v936.n128_f64[0] = (*(v1255 + 56))(v1257, 1, 1, v1256);
        sub_2199F33C0(v935, v936);
        sub_2196C8E20(v935, qword_280ED3E78, type metadata accessor for CampaignRouteModel);
        v1297 = sub_219BE4674();

        LODWORD(v1295) = *MEMORY[0x277D6E528];
        v937 = v1295;
        v938 = sub_219BE92D4();
        v939 = *(*(v938 - 8) + 104);
        v940 = v1286;
        v939(v1286, v937, v938);
        v941 = *MEMORY[0x277D6E518];
        v942 = v1285[13];
        v943 = v1284;
        v942(v940, v941, v1284);
        v944 = v1287;
        v939(v1287, v1295, v938);
        v942(v944, v941, v943);
        v945 = v1289;
        sub_219BE9EB4();
        v946 = sub_219BE94F4();
        v947 = v1288;
        (*(*(v946 - 8) + 56))(v1288, 1, 1, v946);
        v948 = v1297;
        sub_21909BA64(v1297, v945, v947);

        sub_2196C8E20(v947, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1291 + 8))(v945, v1290);
        sub_2196C8C94(v1303, &qword_27CC1DF78, &qword_280EA6BB0, &protocol descriptor for EngagementUpsellOfferManagerType);
        sub_2196C8E20(v1280, &unk_280EE6490, MEMORY[0x277D34E88]);
        sub_2196C8E20(v1278, &qword_280EE64A0, MEMORY[0x277D34D78]);
        v210 = v1283[1];
        v211 = v1277;
        goto LABEL_253;
      case 0x2EuLL:
        v196 = v1317[0];
        v685 = swift_projectBox();
        v686 = v1283;
        v687 = v1231;
        v688 = v1282;
        (v1283[2])(v1231, v685, v1282);
        v689 = sub_219BE3D64();
        v690 = v1246;
        (*(*(v689 - 8) + 56))(v1246, 1, 1, v689);
        v691 = sub_2199F0118(v687, v690);
        sub_2196C8E20(v690, &qword_280EE64A0, MEMORY[0x277D34D78]);
        if (v691)
        {
          v692 = swift_unknownObjectWeakLoadStrong();
          if (v692)
          {
            v693 = v692;
            v694 = sub_219BF6534();

            [v694 presentViewController:v691 animated:1 completion:0];
          }

          else
          {
          }
        }

        (v686[1])(v687, v688);
        goto LABEL_300;
      case 0x2FuLL:
        v192 = swift_projectBox();
        v193 = v1283;
        v194 = v1259;
        v195 = v1282;
        (v1283[2])(v1259, v192, v1282);
        v196 = v126;
        v197 = sub_2199F04B8(v194);
        if (v197)
        {
          LODWORD(v1295) = *MEMORY[0x277D6E528];
          v198 = v1295;
          v1297 = v197;
          v199 = sub_219BE92D4();
          v200 = *(*(v199 - 8) + 104);
          v201 = v1286;
          v200(v1286, v198, v199);
          v1191 = v196;
          v202 = *MEMORY[0x277D6E518];
          v203 = v1285[13];
          v204 = v1284;
          v203(v201, v202, v1284);
          v205 = v1287;
          v200(v1287, v1295, v199);
          v203(v205, v202, v204);
          v206 = v1289;
          sub_219BE9EB4();
          v207 = sub_219BE94F4();
          v208 = v1288;
          (*(*(v207 - 8) + 56))(v1288, 1, 1, v207);
          v209 = v1297;
          sub_21909BA64(v1297, v206, v208);

          sub_2196C8E20(v208, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1291 + 8))(v206, v1290);
          v210 = v1283[1];
          v211 = v1259;
LABEL_253:
          v949 = v1282;
          goto LABEL_307;
        }

        (v193[1])(v194, v195);
LABEL_300:
        v614 = v196;
        goto LABEL_309;
      case 0x30uLL:
        v1191 = v1317[0];
        v302 = swift_projectBox();
        v303 = v1279;
        sub_2196C8D0C(v302, v1279, type metadata accessor for PreBuyFlowRouteModel);
        if (*(v303 + *(v1236 + 28)))
        {
          v304 = v1219;
          sub_219BDBD54();
          sub_219BDBD44();
          (*(v1220 + 8))(v304, v1221);
        }

        else
        {
          v748 = v1257;
          v749.n128_f64[0] = (*(v1255 + 56))(v1257, 1, 1, v1256);
          sub_2199F33C0(v748, v749);
          sub_2196C8E20(v748, qword_280ED3E78, type metadata accessor for CampaignRouteModel);
        }

        __swift_project_boxed_opaque_existential_1(v1294 + 30, v1294[33]);
        v1297 = sub_219BE4684();

        LODWORD(v1295) = *MEMORY[0x277D6E528];
        v750 = v1295;
        v751 = sub_219BE92D4();
        v752 = *(*(v751 - 8) + 104);
        v753 = v1286;
        v752(v1286, v750, v751);
        v754 = *MEMORY[0x277D6E518];
        v755 = v1285[13];
        v756 = v1284;
        v755(v753, v754, v1284);
        v757 = v1287;
        v752(v1287, v1295, v751);
        v755(v757, v754, v756);
        v758 = v1289;
        sub_219BE9EB4();
        v759 = sub_219BE94F4();
        v760 = v1288;
        (*(*(v759 - 8) + 56))(v1288, 1, 1, v759);
        v761 = v1297;
        sub_21909BA64(v1297, v758, v760);

        sub_2196C8E20(v760, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v1291 + 8))(v758, v1290);
        sub_2196C8A38(v1279, type metadata accessor for PreBuyFlowRouteModel);
        goto LABEL_308;
      case 0x31uLL:
        v337 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v338 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x18);
        v339 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
        v340 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x28);
        v341 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x30);
        *&v1306 = v337;
        *(&v1306 + 1) = v338;
        *&v1307 = v339;
        *(&v1307 + 1) = v340;
        LOBYTE(v1308) = v341;
        LODWORD(v1295) = v341;
        sub_21908FD7C(v337, v338, v339, v340, v341);
        v342 = v1289;
        sub_218A5652C(v1289);
        LOBYTE(v1298[0]) = 0;
        *(v1298 + 8) = 0u;
        *(&v1298[1] + 8) = 0u;
        *(&v1298[2] + 8) = 0u;
        BYTE8(v1298[3]) = -1;
        *&v1300 = 0;
        v1299 = 0uLL;
        v1191 = v126;
        sub_2195D0028(v1297, &v1306, 0, v342, v1298);
        v344 = v343;
        v1303[2] = v1298[2];
        v1303[3] = v1298[3];
        v1303[4] = v1299;
        *&v1303[5] = v1300;
        v1303[0] = v1298[0];
        v1303[1] = v1298[1];
        sub_2196C8400(v1303, &qword_280EA94E0, &type metadata for FeedViewControllerCreateOptions);
        v345 = *(v1291 + 8);
        v346 = v1290;
        v345(v342, v1290);
        if (v344)
        {
          sub_218A5652C(v342);
          v347 = sub_219BE94F4();
          v348 = *(*(v347 - 8) + 56);
          v1294 = v340;
          v349 = v339;
          v350 = v338;
          v351 = v337;
          v352 = v1288;
          v348(v1288, 1, 1, v347);
          v1297 = v345;
          sub_21909BA64(v344, v342, v352);
          sub_21896FBB0(v351, v350, v349, v1294, v1295);

          sub_2196C8E20(v352, &unk_280EE4470, MEMORY[0x277D6E658]);
          (v1297)(v342, v346);
        }

        else
        {
          sub_21896FBB0(v337, v338, v339, v340, v1295);
        }

        goto LABEL_308;
      case 0x32uLL:
        v147 = swift_projectBox();
        v148 = v1261;
        v149 = v1260;
        v150 = v1262;
        (*(v1261 + 16))(v1260, v147, v1262);
        v151 = v126;
        sub_2199F05A4(v1297, v149);
        if (v152)
        {
          LODWORD(v1295) = *MEMORY[0x277D6E528];
          v153 = v1295;
          v1297 = v152;
          v154 = sub_219BE92D4();
          v155 = *(v154 - 8);
          v1191 = v151;
          v156 = *(v155 + 104);
          v157 = v1286;
          v156(v1286, v153, v154);
          v158 = *MEMORY[0x277D6E518];
          v159 = v1285[13];
          v160 = v1284;
          v159(v157, v158, v1284);
          v161 = v1287;
          v156(v1287, v1295, v154);
          v159(v161, v158, v160);
          v162 = v1289;
          sub_219BE9EB4();
          v163 = sub_219BE94F4();
          v164 = v1288;
          (*(*(v163 - 8) + 56))(v1288, 1, 1, v163);
          v165 = v1297;
          sub_21909BA64(v1297, v162, v164);

          sub_2196C8E20(v164, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1291 + 8))(v162, v1290);
          (*(v1261 + 8))(v1260, v1262);
          goto LABEL_308;
        }

        (*(v148 + 8))(v149, v150);
LABEL_233:
        v614 = v151;
        goto LABEL_309;
      case 0x33uLL:
        v1191 = v1317[0];
        v695 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x60);
        v1303[4] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x50);
        v1303[5] = v695;
        v1304 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x70);
        v1305 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x80);
        v696 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
        v1303[0] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v1303[1] = v696;
        v697 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x40);
        v1303[2] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x30);
        v1303[3] = v697;
        v698 = swift_unknownObjectWeakLoadStrong();
        sub_2189EB2A8(v1303, v1298);
        v699 = [v698 presentedViewController];

        if (v699)
        {

          if (qword_280E8D8F0 != -1)
          {
            swift_once();
          }

          v700 = qword_280F617A8;
          sub_2196C8698(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
          v701 = swift_allocObject();
          *(v701 + 16) = xmmword_219C09BA0;
          v702 = v1303[0];
          *(v701 + 56) = MEMORY[0x277D837D0];
          *(v701 + 64) = sub_2186FC3BC();
          *(v701 + 32) = v702;

          v703 = sub_219BF6214();
          sub_219BE5314("Due to an existing modal presentation, abandoning Continue Reading prompt presentation for Content ID : %{public}@", 114, 2, &dword_2186C1000, v700, v703, v701);

          goto LABEL_166;
        }

        v1299 = v1303[4];
        v1300 = v1303[5];
        v1301 = v1304;
        v1302 = v1305;
        v1298[0] = v1303[0];
        v1298[1] = v1303[1];
        v1298[2] = v1303[2];
        v1298[3] = v1303[3];
        v970 = swift_unknownObjectWeakLoadStrong();
        v971 = sub_2195E1C48(v1297, v1298, v970);

        if (!v971)
        {
LABEL_166:
          sub_2189EB304(v1303);
          goto LABEL_308;
        }

        v1297 = v971;
        if (qword_280E8D8F0 != -1)
        {
          swift_once();
        }

        v972 = qword_280F617A8;
        sub_2196C8698(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
        v973 = swift_allocObject();
        *(v973 + 16) = xmmword_219C09BA0;
        v974 = *(&v1303[0] + 1);
        v975 = *&v1303[0];
        *(v973 + 56) = MEMORY[0x277D837D0];
        *(v973 + 64) = sub_2186FC3BC();
        *(v973 + 32) = __PAIR128__(v974, v975);

        v976 = sub_219BF6214();
        sub_219BE5314("Presenting prompt for Content ID : %{public}@", 45, 2, &dword_2186C1000, v972, v976, v973);

        LODWORD(v1295) = *MEMORY[0x277D6E530];
        v977 = v1295;
        v978 = sub_219BE92D4();
        v979 = *(*(v978 - 8) + 104);
        v980 = v1286;
        v979(v1286, v977, v978);
        v981 = *MEMORY[0x277D6E518];
        v982 = v1285[13];
        v983 = v1284;
        v982(v980, v981, v1284);
        v984 = v1287;
        v979(v1287, v1295, v978);
        v982(v984, v981, v983);
        v189 = v1289;
        sub_219BE9EB4();
        v985 = sub_219BE94F4();
        v191 = v1288;
        (*(*(v985 - 8) + 56))(v1288, 1, 1, v985);
        v986 = v1297;
        sub_21909BA64(v1297, v189, v191);

        sub_2189EB304(v1303);
LABEL_98:
        sub_2196C8E20(v191, &unk_280EE4470, MEMORY[0x277D6E658]);
        v210 = *(v1291 + 8);
        v211 = v189;
LABEL_306:
        v949 = v1290;
LABEL_307:
        v210(v211, v949);
        goto LABEL_308;
      case 0x34uLL:
        v677 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v678 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x18);
        v679 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
        *&v1303[0] = v677;
        *(&v1303[0] + 1) = v678;
        *&v1303[1] = v679;
        sub_218DFB8E8(v677, v678, v679);
        v524 = v126;
        v680 = sub_2198CCC6C(v1297, v1303);
        if (!v680)
        {
          if (qword_280EE5F98 != -1)
          {
            swift_once();
          }

          v964 = sub_219BE5434();
          __swift_project_value_buffer(v964, qword_280F62610);
          v965 = sub_219BE5414();
          v966 = sub_219BF61F4();
          if (os_log_type_enabled(v965, v966))
          {
            v967 = swift_slowAlloc();
            *v967 = 0;
            _os_log_impl(&dword_2186C1000, v965, v966, "Failed to create TipViewController", v967, 2u);
            MEMORY[0x21CECF960](v967, -1, -1);
          }

          sub_218DFB934(v677, v678, v679);

          v968 = *MEMORY[0x277D6E358];
          v969 = sub_219BE8DE4();
          (*(*(v969 - 8) + 104))(v1296, v968, v969);
          v179 = v524;
          goto LABEL_333;
        }

        v681 = v680;
        v682 = swift_allocObject();
        swift_weakInit();
        v683 = swift_allocObject();
        v683[2] = v682;
        v683[3] = v677;
        v683[4] = v678;
        v683[5] = v679;
        v683[6] = v681;
        sub_218DFB8E8(v677, v678, v679);

        v684 = v681;
        sub_219BF64D4();

        sub_218DFB934(v677, v678, v679);
LABEL_250:
        v614 = v524;
        goto LABEL_309;
      case 0x35uLL:
        v1297 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v1191 = v1317[0];
        LODWORD(v1295) = *MEMORY[0x277D6E528];
        v180 = v1295;
        v181 = sub_219BE92D4();
        v182 = *(*(v181 - 8) + 104);
        v183 = v1286;
        v182(v1286, v180, v181);
        v184 = *MEMORY[0x277D6E518];
        v185 = v1285[13];
        v186 = v1284;
        v185(v183, v184, v1284);
        v187 = v1287;
        v182(v1287, v1295, v181);
        v185(v187, v184, v186);
        v188 = v1297;
        v189 = v1289;
        sub_219BE9EB4();
        v190 = sub_219BE94F4();
        v191 = v1288;
        (*(*(v190 - 8) + 56))(v1288, 1, 1, v190);
        goto LABEL_97;
      case 0x36uLL:
        sub_2196C8470(0, &qword_27CC1DF70, MEMORY[0x277D34E88], MEMORY[0x277D34D18]);
        v656 = v126;
        v658 = v657;
        v196 = v656;
        v659 = swift_projectBox();
        v660 = *(v658 + 48);
        v661 = v1238;
        v662 = v1270;
        v663 = v1240;
        (*(v1238 + 16))(v1270, v659, v1240);
        v665 = v1241;
        v664 = v1242;
        v666 = v1239;
        (*(v1241 + 16))(v1239, v659 + v660, v1242);
        v667 = swift_unknownObjectWeakLoadStrong();
        if (v667)
        {
          v668 = v667;
          __swift_project_boxed_opaque_existential_1(v1294 + 40, v1294[43]);
          v662 = v1270;
          sub_219BE4264();
        }

        (*(v665 + 8))(v666, v664);
        (*(v661 + 8))(v662, v663);
        goto LABEL_300;
      case 0x37uLL:
        sub_218718690((v1317[0] & 0xFFFFFFFFFFFFFF9) + 16, v1303);
        v669 = swift_unknownObjectWeakLoadStrong();
        v291 = v126;
        v670 = [v669 presentedViewController];

        if (!v670)
        {
          sub_219BDE3D4();
          v950 = sub_219BDE3C4();
          v1295 = v950;
          v951 = sub_219BEA784();
          v951(v950);

          LODWORD(v1297) = *MEMORY[0x277D6E530];
          v952 = v1297;
          v953 = sub_219BE92D4();
          v954 = *(*(v953 - 8) + 104);
          v955 = v1286;
          v954(v1286, v952, v953);
          v956 = *MEMORY[0x277D6E518];
          v957 = v1285[13];
          v958 = v1284;
          v957(v955, v956, v1284);
          v1191 = v291;
          v959 = v1287;
          v954(v1287, v1297, v953);
          v957(v959, v956, v958);
          v960 = v1289;
          sub_219BE9EB4();
          v961 = sub_219BE94F4();
          v962 = v1288;
          (*(*(v961 - 8) + 56))(v1288, 1, 1, v961);
          v963 = v1295;
          sub_21909BA64(v1295, v960, v962);

          sub_2196C8E20(v962, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1291 + 8))(v960, v1290);
LABEL_337:
          __swift_destroy_boxed_opaque_existential_1(v1303);
          goto LABEL_308;
        }

        if (qword_280E8D818 != -1)
        {
          swift_once();
        }

        v671 = qword_280F61718;
        sub_2196C8698(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
        v672 = swift_allocObject();
        *(v672 + 16) = xmmword_219C09BA0;
        __swift_project_boxed_opaque_existential_1(v1303, *(&v1303[1] + 1));
        v673 = sub_219BDDE64();
        v675 = v674;
        *(v672 + 56) = MEMORY[0x277D837D0];
        *(v672 + 64) = sub_2186FC3BC();
        *(v672 + 32) = v673;
        *(v672 + 40) = v675;
        v676 = sub_219BF6214();
        sub_219BE5314("Due to an existing modal presentation, abandoning Confirmation Toast  presentation, contentType=%{public}@", 106, 2, &dword_2186C1000, v671, v676, v672);

        __swift_destroy_boxed_opaque_existential_1(v1303);
LABEL_313:
        v614 = v291;
        goto LABEL_309;
      case 0x38uLL:
        v212 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x18);
        *&v1303[0] = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        *(&v1303[0] + 1) = v212;

        v213 = v126;
        v214 = sub_2199F0234(v1297, v1303);

        if (!v214)
        {
          v614 = v213;
          goto LABEL_309;
        }

        LODWORD(v1295) = *MEMORY[0x277D6E528];
        v215 = v1295;
        v216 = sub_219BE92D4();
        v217 = *(*(v216 - 8) + 104);
        v218 = v1286;
        v217(v1286, v215, v216);
        v219 = *MEMORY[0x277D6E518];
        v1191 = v213;
        v220 = v1285[13];
        v221 = v218;
        v222 = v219;
        v1297 = v214;
LABEL_96:
        v500 = v1284;
        v220(v221, v222, v1284);
        v501 = v1287;
        v217(v1287, v1295, v216);
        v220(v501, v219, v500);
        v189 = v1289;
        sub_219BE9EB4();
        v502 = sub_219BE94F4();
        v191 = v1288;
        (*(*(v502 - 8) + 56))(v1288, 1, 1, v502);
        v188 = v1297;
LABEL_97:
        sub_21909BA64(v188, v189, v191);

        goto LABEL_98;
      case 0x39uLL:
        v1191 = v1317[0];
        v586 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v371 = v1250;
        if (*((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x28))
        {
          sub_218A55E1C(v1250);
        }

        else
        {
          sub_218A56C84();
        }

        v849 = v1297;
        memset(v1298, 0, 32);
        LOBYTE(v1298[2]) = -1;
        sub_2195D133C(v1297, v586, v371, v1298, v1303);
        if (BYTE8(v1303[2]) == 1)
        {
          sub_2186CB1F0(v1303, &v1306);
          sub_218718690(&v1306, v1298);
          sub_219BEA744();
          swift_allocObject();
          v850 = sub_219BEA6C4();
          *&v1298[0] = v850;
          BYTE8(v1298[2]) = 0;

          v851 = sub_218CF86B0(v849, v1298);
          sub_2189A4E34(v1298);
          if (v851)
          {
            LODWORD(v1294) = *MEMORY[0x277D6E528];
            v852 = v1294;
            v853 = sub_219BE92D4();
            v854 = *(*(v853 - 8) + 104);
            v855 = v1286;
            v854(v1286, v852, v853);
            v856 = *MEMORY[0x277D6E518];
            v1297 = v850;
            v857 = v1285[13];
            v1295 = v851;
            v858 = v1284;
            v857(v855, v856, v1284);
            v859 = v1287;
            v854(v1287, v1294, v853);
            v857(v859, v856, v858);
            v860 = v1289;
            sub_219BE9EB4();
            v861 = sub_219BE94F4();
            v862 = v1288;
            (*(*(v861 - 8) + 56))(v1288, 1, 1, v861);
            v863 = v1295;
            sub_21909BA64(v1295, v860, v862);

            sub_2196C8E20(v862, &unk_280EE4470, MEMORY[0x277D6E658]);
            v864 = *(v1291 + 8);
            v865 = v1290;
            v864(v860, v1290);
            __swift_destroy_boxed_opaque_existential_1(&v1306);
            v864(v1250, v865);
            goto LABEL_308;
          }

          __swift_destroy_boxed_opaque_existential_1(&v1306);
          goto LABEL_217;
        }

        v866 = *&v1303[0];
        if (*&v1303[0])
        {
          v867 = sub_219BE94F4();
          v868 = v1288;
          (*(*(v867 - 8) + 56))(v1288, 1, 1, v867);
          sub_21909BA64(v866, v371, v868);

          v375 = MEMORY[0x277D6E658];
          v376 = v868;
LABEL_216:
          sub_2196C8E20(v376, &unk_280EE4470, v375);
LABEL_217:
          v210 = *(v1291 + 8);
          v211 = v371;
          goto LABEL_306;
        }

        (*(v1291 + 8))(v371, v1290);
LABEL_331:
        v1136 = *MEMORY[0x277D6E358];
        v1137 = sub_219BE8DE4();
        (*(*(v1137 - 8) + 104))(v1296, v1136, v1137);
LABEL_332:
        v179 = v1191;
LABEL_333:
        sub_218932F9C(v179);
        break;
      case 0x3AuLL:
        v1191 = v1317[0];
        v306 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
        v305 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x18);
        v307 = *((v1317[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
        v308 = v1228;
        sub_218A56C8C();
        v309 = v1294;
        v310 = [objc_opt_self() sharedAccount];
        v311 = [v310 isContentStoreFrontSupported];

        if (v311)
        {
          v312 = [v309[21] puzzlesEnabled];
          v313 = v1291;
          if (v312)
          {
            v1312 = v306;
            v1313 = v305;
            v1314 = v307;
            v1315 = MEMORY[0x277D84F90];
            v1316 = 1;
            LOBYTE(v1298[0]) = 1;
            *(v1298 + 8) = 0u;
            *(&v1298[1] + 8) = 0u;
            *(&v1298[2] + 8) = 0u;
            BYTE8(v1298[3]) = -1;
            *&v1300 = 0;
            v1299 = 0uLL;

            v314 = v307;
            sub_2195D0028(v1297, &v1312, 11, v308, v1298);
            v316 = v315;
            v1303[2] = v1298[2];
            v1303[3] = v1298[3];
            v1303[4] = v1299;
            *&v1303[5] = v1300;
            v1303[0] = v1298[0];
            v1303[1] = v1298[1];
            sub_2196C8400(v1303, &qword_280EA94E0, &type metadata for FeedViewControllerCreateOptions);
            v317 = *(v313 + 8);
            v318 = v308;
            v319 = v1290;
            v317(v318, v1290);

            *&v1306 = v316;
            BYTE8(v1308) = 0;
            if (!v316)
            {
              goto LABEL_331;
            }

            v320 = v1289;
            sub_218A56C8C();
            v321 = sub_219BE94F4();
            v322 = v1288;
            (*(*(v321 - 8) + 56))(v1288, 1, 1, v321);
            sub_21909BA64(v316, v320, v322);

            sub_2196C8E20(v322, &unk_280EE4470, MEMORY[0x277D6E658]);
            v317(v320, v319);
LABEL_308:
            v614 = v1191;
LABEL_309:
            sub_218932F9C(v614);
LABEL_310:
            v1129 = MEMORY[0x277D6E348];
LABEL_311:
            v1130 = *v1129;
            v1131 = sub_219BE8DE4();
            (*(*(v1131 - 8) + 104))(v1296, v1130, v1131);
            return;
          }

          if ((sub_219BF1AE4() & 1) == 0)
          {
            (*(v313 + 8))(v308, v1290);
            *&v1306 = 0;
            BYTE8(v1308) = 0;
            goto LABEL_331;
          }

          if (qword_27CC089E8 != -1)
          {
            swift_once();
          }

          v1046 = sub_219BF1584();
          v1047 = __swift_project_value_buffer(v1046, qword_27CCD8FE8);
          *(&v1307 + 1) = type metadata accessor for AlertDeviceOffline(0);
          *&v1308 = sub_2196C8DD8(&qword_27CC0C708, type metadata accessor for AlertDeviceOffline, &unk_219C31144);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v1306);
          (*(*(v1046 - 8) + 16))(boxed_opaque_existential_1, v1047, v1046);
        }

        else
        {
          *(&v1307 + 1) = &type metadata for AlertContentRegionUnavailable;
          *&v1308 = sub_2189F7F2C();
          v313 = v1291;
        }

        v762 = v1297;
        v765 = *(v313 + 8);
        v764 = v313 + 8;
        v763 = v765;
        (v765)(v308, v1290);
        BYTE8(v1308) = 1;
        sub_2186CB1F0(&v1306, v1298);
        sub_218718690(v1298, v1303);
        sub_219BEA744();
        swift_allocObject();
        v766 = sub_219BEA6C4();
        *&v1303[0] = v766;
        BYTE8(v1303[2]) = 0;

        v767 = sub_218CF86B0(v762, v1303);
        sub_2189A4E34(v1303);
        if (v767)
        {
          LODWORD(v1293) = *MEMORY[0x277D6E528];
          v768 = v1293;
          v769 = sub_219BE92D4();
          v770 = *(*(v769 - 8) + 104);
          v771 = v1286;
          v770(v1286, v768, v769);
          v1295 = v766;
          v772 = *MEMORY[0x277D6E518];
          v1291 = v764;
          v1297 = v763;
          v773 = v1285[13];
          v1294 = v767;
          v774 = v1284;
          v773(v771, v772, v1284);
          v775 = v1287;
          v770(v1287, v1293, v769);
          v773(v775, v772, v774);
          v776 = v1289;
          sub_219BE9EB4();
          v777 = sub_219BE94F4();
          v778 = v1288;
          (*(*(v777 - 8) + 56))(v1288, 1, 1, v777);
          v779 = v1294;
          sub_21909BA64(v1294, v776, v778);

          sub_2196C8E20(v778, &unk_280EE4470, MEMORY[0x277D6E658]);
          (v1297)(v776, v1290);
        }

        else
        {
        }

        __swift_destroy_boxed_opaque_existential_1(v1298);
        goto LABEL_308;
      case 0x3BuLL:
        v590 = swift_projectBox();
        v591 = v1253;
        sub_2196C8D0C(v590, v1253, type metadata accessor for PuzzleModel);
        v592 = v1243;
        sub_2196C8588(v591 + *(v1237 + 20), v1243, &qword_280E90470, MEMORY[0x277D338C0]);
        v594 = v1248;
        v593 = v1249;
        v595 = (*(v1248 + 48))(v592, 1, v1249);
        v1191 = v126;
        if (v595 == 1)
        {
          sub_2196C8E20(v592, &qword_280E90470, MEMORY[0x277D338C0]);
          sub_2197472E8(v1297, v591);
          if (v596)
          {
            LODWORD(v1295) = *MEMORY[0x277D6E540];
            v597 = v1295;
            v1297 = v596;
            v598 = sub_219BE92D4();
            v599 = *(*(v598 - 8) + 104);
            v600 = v1286;
            v599(v1286, v597, v598);
            v601 = *MEMORY[0x277D6E518];
            v602 = v1285[13];
            v603 = v1284;
            v602(v600, v601, v1284);
            v604 = v1287;
            v599(v1287, v1295, v598);
            v602(v604, v601, v603);
            v605 = v1289;
            sub_219BE9EB4();
            v606 = sub_219BE94F4();
            v607 = v1288;
            (*(*(v606 - 8) + 56))(v1288, 1, 1, v606);
            v608 = v1297;
            sub_21909BA64(v1297, v605, v607);

            sub_2196C8E20(v607, &unk_280EE4470, MEMORY[0x277D6E658]);
            (*(v1291 + 8))(v605, v1290);
            sub_2196C8A38(v1253, type metadata accessor for PuzzleModel);
            goto LABEL_308;
          }

          sub_2196C8A38(v591, type metadata accessor for PuzzleModel);
          goto LABEL_331;
        }

        v869 = v1226;
        (*(v594 + 32))(v1226, v592, v593);
        v870 = v1225;
        (*(v594 + 16))(v1225, v869, v593);
        v871 = (*(v594 + 88))(v870, v593);
        v872 = v1297;
        if (v871 != *MEMORY[0x277D338B0])
        {
          sub_2197472E8(v1297, v591);
          if (v1099)
          {
            LODWORD(v1295) = *MEMORY[0x277D6E540];
            v1100 = v1295;
            v1297 = v1099;
            v1101 = sub_219BE92D4();
            v1102 = *(*(v1101 - 8) + 104);
            v1103 = v1286;
            v1102(v1286, v1100, v1101);
            v1104 = *MEMORY[0x277D6E518];
            v1105 = v1285[13];
            v1106 = v1284;
            v1105(v1103, v1104, v1284);
            v1107 = v1287;
            v1102(v1287, v1295, v1101);
            v1105(v1107, v1104, v1106);
            v1108 = v1289;
            sub_219BE9EB4();
            v1109 = sub_219BE94F4();
            v1110 = v1288;
            (*(*(v1109 - 8) + 56))(v1288, 1, 1, v1109);
            v1111 = v1297;
            sub_21909BA64(v1297, v1108, v1110);

            sub_2196C8E20(v1110, &unk_280EE4470, MEMORY[0x277D6E658]);
            (*(v1291 + 8))(v1108, v1290);
            v1112 = v1249;
            v1113 = *(v1248 + 8);
            v1113(v1226, v1249);
            sub_2196C8A38(v1253, type metadata accessor for PuzzleModel);
            v1113(v1225, v1112);
            goto LABEL_308;
          }

          v1148 = *(v594 + 8);
          v1148(v869, v593);
          sub_2196C8A38(v591, type metadata accessor for PuzzleModel);
          v1149 = *MEMORY[0x277D6E358];
          v1150 = sub_219BE8DE4();
          (*(*(v1150 - 8) + 104))(v1296, v1149, v1150);
          v1148(v870, v593);
          goto LABEL_332;
        }

        (*(v594 + 96))(v870, v593);
        v873 = v1208;
        (*(v1208 + 32))(v127, v870, v1222);
        v874 = v1207;
        sub_219BF2E84();
        v875 = sub_219746AF0(v872, v591, v874);
        sub_2196C8E20(v874, &qword_280E8FE00, MEMORY[0x277D34450]);
        v876 = v1296;
        if (!v875)
        {
          (*(v873 + 8))(v127, v1222);
          (*(v594 + 8))(v1226, v593);
          sub_2196C8A38(v591, type metadata accessor for PuzzleModel);
          v1146 = *MEMORY[0x277D6E358];
          v1147 = sub_219BE8DE4();
          (*(*(v1147 - 8) + 104))(v876, v1146, v1147);
          goto LABEL_332;
        }

        sub_2196C84EC();
        sub_219BF6584();
        v877 = *&v1303[0];
        if (*&v1303[0])
        {
          v878 = *(&v1303[0] + 1);
          v879 = swift_allocObject();
          swift_weakInit();
          v880 = swift_allocObject();
          *(v880 + 2) = v879;
          *(v880 + 3) = v875;
          *(v880 + 4) = v877;
          *(v880 + 5) = v878;
          v881 = &v877[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_embedDidLoadCompletion];
          v882 = *&v877[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_embedDidLoadCompletion];
          v883 = *&v877[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_embedDidLoadCompletion + 8];
          *v881 = sub_2196C8568;
          v881[1] = v880;

          v884 = v875;
          v885 = v877;
          sub_2187FABEC(v882, v883);

          [v885 loadViewIfNeeded];
        }

        else
        {
        }

        (*(v1208 + 8))(v1293, v1222);
        (*(v594 + 8))(v1226, v593);
        sub_2196C8A38(v591, type metadata accessor for PuzzleModel);
        goto LABEL_308;
      case 0x3CuLL:
        v377 = v1291;
        v378 = v1290;
        v379 = v1289;
        switch(__ROR8__(v1317[0] + 0x1000000000000000, 3))
        {
          case 1:
            sub_21897C9C4();
            v1153 = v1155;
            sub_218A54940();
            goto LABEL_373;
          case 2:
            sub_218AA0DF8();
            v1153 = v1154;
            sub_218A56C80();
            goto LABEL_373;
          case 3:
            v1153 = sub_2190FCFC4();
            sub_218A56C84();
            goto LABEL_373;
          case 4:
            __swift_project_boxed_opaque_existential_1(v1294 + 2, v1294[5]);
            sub_219BE5A54();
            v1151 = sub_219BE1E24();
            if (!v1151)
            {
              goto LABEL_397;
            }

            v1152 = v1151;
            sub_219BE5A24();

            goto LABEL_310;
          case 5:
            __swift_project_boxed_opaque_existential_1(v1294 + 2, v1294[5]);
            sub_2186C709C(0, &qword_280EE6260, MEMORY[0x277D35320], 1);
            sub_219BE1E34();
            v1156 = v1282;
            if (!*(&v1298[1] + 1))
            {
              goto LABEL_398;
            }

            sub_2186CB1F0(v1298, v1303);
            __swift_project_boxed_opaque_existential_1(v1303, *(&v1303[1] + 1));
            v1157 = v1203;
            sub_219BE46D4();
            v1158 = *MEMORY[0x277D34D70];
            v1159 = sub_219BE3D64();
            v1160 = *(v1159 - 8);
            v1161 = v1246;
            (*(v1160 + 104))(v1246, v1158, v1159);
            (*(v1160 + 56))(v1161, 0, 1, v1159);
            v1162 = sub_2199F0118(v1157, v1161);
            sub_2196C8E20(v1161, &qword_280EE64A0, MEMORY[0x277D34D78]);
            if (v1162)
            {
              v1163 = swift_unknownObjectWeakLoadStrong();
              if (v1163)
              {
                v1164 = v1163;
                v1165 = sub_219BF6534();

                [v1165 presentViewController:v1162 animated:1 completion:0];
                v1162 = v1165;
              }
            }

            (v1283[1])(v1203, v1156);
            __swift_destroy_boxed_opaque_existential_1(v1303);
            goto LABEL_310;
          case 6:
            v1153 = sub_219B4EFA0(v1297);
            sub_218A55E28(v379);
            goto LABEL_373;
          case 7:
            [objc_opt_self() openNewsSettings];
            goto LABEL_310;
          case 8:
            v1153 = sub_2190FD33C();
            sub_218A554E8();
            goto LABEL_373;
          case 9:
            v1153 = sub_2190FD89C();
            sub_218A56C88();
LABEL_373:
            v1172 = sub_219BE94F4();
            v1173 = v1288;
            (*(*(v1172 - 8) + 56))(v1288, 1, 1, v1172);
            sub_21909BA64(v1153, v379, v1173);

            sub_2196C8E20(v1173, &unk_280EE4470, MEMORY[0x277D6E658]);
            (*(v377 + 8))(v379, v378);
            goto LABEL_310;
          case 0xALL:
            if (qword_280E8D818 != -1)
            {
              swift_once();
            }

            v1166 = qword_280F61718;
            v1167 = sub_219BF6214();
            sub_219BE5314("Will async determine sports redirect route for sportsManagement", 63, 2, &dword_2186C1000, v1166, v1167, MEMORY[0x277D84F90]);
            v1168 = v1297;
            v1169 = v1294;
            v1170 = sub_2189A44C0(v1297);
            v1171 = v1192;
            if (v1170)
            {
              v1129 = MEMORY[0x277D6E358];
              goto LABEL_311;
            }

            MEMORY[0x28223BE20](v1170);
            v1189 = v1169;
            v1190 = v1168;
            type metadata accessor for SportsOnboardingRedirectRoute(0);
            sub_219BE3204();
            v464 = sub_219BE1C44();
            v1174 = v1281;
            v1175 = v1273;
            (*(v1281 + 16))(v1273, v1168, v1171);
            v1176 = (*(v1174 + 80) + 16) & ~*(v1174 + 80);
            v1177 = swift_allocObject();
            (*(v1174 + 32))(v1177 + v1176, v1175, v1171);
            sub_219BE2F94();

            break;
          case 0xBLL:
            [objc_opt_self() openAppleAccountLoginSettings];
            goto LABEL_310;
          case 0xCLL:
            sub_2192DE80C();
            goto LABEL_310;
          case 0xDLL:
            __swift_project_boxed_opaque_existential_1(v1294 + 2, v1294[5]);
            sub_2186C709C(0, &unk_280E8FEC0, MEMORY[0x277D34388], 0);
            sub_219BE1E34();
            if (*&v1303[0])
            {
              swift_getObjectType();
              swift_unknownObjectRetain();
              sub_219BF42C4();

              swift_unknownObjectRelease_n();
            }

            goto LABEL_310;
          default:
            sub_218DAF3DC(v1297);
            if (!v380)
            {
              goto LABEL_310;
            }

            v381 = v380;
            v382 = v1289;
            sub_218A54924(v1289);
            goto LABEL_85;
        }

LABEL_89:

        goto LABEL_310;
      default:
        v1191 = v1317[0];
        sub_218CF89E8(v1317[0] + 16, v1303);
        v129 = sub_218CF86B0(v1297, v1303);
        if (v129)
        {
          LODWORD(v1295) = *MEMORY[0x277D6E528];
          v130 = v1295;
          v1297 = v129;
          v131 = sub_219BE92D4();
          v132 = *(*(v131 - 8) + 104);
          v133 = v1286;
          v132(v1286, v130, v131);
          v134 = *MEMORY[0x277D6E518];
          v135 = v1285[13];
          v136 = v1284;
          v135(v133, v134, v1284);
          v137 = v1287;
          v132(v1287, v1295, v131);
          v135(v137, v134, v136);
          v138 = v1289;
          sub_219BE9EB4();
          v139 = sub_219BE94F4();
          v140 = v1288;
          (*(*(v139 - 8) + 56))(v1288, 1, 1, v139);
          v141 = v1297;
          sub_21909BA64(v1297, v138, v140);

          sub_2196C8E20(v140, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v1291 + 8))(v138, v1290);
        }

        sub_2189A4E34(v1303);
        goto LABEL_308;
    }
  }

  else
  {
    v142 = *MEMORY[0x277D6E358];
    v143 = sub_219BE8DE4();
    v144 = *(*(v143 - 8) + 104);
    v145 = v143;
    v146 = v1296;

    v144(v146, v142, v145);
  }
}

uint64_t sub_2196C1694@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDD944();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  sub_2196C8D0C(a1, v6, type metadata accessor for NewsActivity2.Article);
  sub_2196C8470(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

  sub_2196C8AA4(v6, v12, MEMORY[0x277D2FB40]);
  v13 = sub_219BDD914();
  sub_2196C8A38(v12, MEMORY[0x277D2FB40]);
  if (v13)
  {
    *a2 = v13;
    v14 = MEMORY[0x277D33BC0];
  }

  else
  {
    sub_2196C8D0C(a1, v6, type metadata accessor for NewsActivity2.Article);

    sub_2196C8AA4(v6, v9, MEMORY[0x277D2FB40]);
    v15 = sub_219BDD8C4();
    v17 = v16;
    sub_2196C8A38(v9, MEMORY[0x277D2FB40]);
    *a2 = v15;
    a2[1] = v17;
    v14 = MEMORY[0x277D33B80];
  }

  v18 = *v14;
  v19 = sub_219BF2CB4();
  v20 = *(v19 - 8);
  (*(v20 + 104))(a2, v18, v19);
  return (*(v20 + 56))(a2, 0, 1, v19);
}

void sub_2196C1954(uint64_t a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v4 = sub_219BDE834();
  v16 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  v5 = [v16 sheetPresentationController];
  if (v5)
  {
    v6 = v5;
    [v5 setPrefersGrabberVisible_];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_219BF6534();

    v10 = swift_allocObject();
    *(v10 + 16) = a3;
    *(v10 + 24) = v16;
    aBlock[4] = sub_2196C8D04;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218793E0C;
    aBlock[3] = &block_descriptor_43_1;
    v11 = _Block_copy(aBlock);

    v12 = v16;

    [v9 dismissViewControllerAnimated:0 completion:v11];

    _Block_release(v11);
  }

  else
  {
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = sub_219BF6534();

      [v15 presentViewController:v16 animated:1 completion:0];
    }
  }
}

void sub_2196C1B64(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_219BF6534();

    [v5 presentViewController:a2 animated:1 completion:0];
  }
}

uint64_t sub_2196C1BEC(void *a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v48 = a1;
  v4 = sub_219BDD944();
  MEMORY[0x28223BE20](v4 - 8);
  v47 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x277D6E658];
  sub_218834E54(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v44 = v35 - v9;
  v49 = sub_219BE92E4();
  v10 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v39 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v35 - v13;
  v35[1] = v35 - v13;
  v15 = sub_219BE9EC4();
  v41 = *(v15 - 8);
  v42 = v15;
  MEMORY[0x28223BE20](v15);
  v38 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(a2 + 56);
  sub_2196C8470(0, &qword_280EE4520, MEMORY[0x277D6E4E8], MEMORY[0x277D6E510]);
  v18 = v17;
  v19 = *(v17 + 48);
  v37 = *MEMORY[0x277D6E4C0];
  v20 = v37;
  v21 = sub_219BE92A4();
  v36 = *(*(v21 - 8) + 104);
  v36(v14, v20, v21);
  v22 = *MEMORY[0x277D6E500];
  v23 = sub_219BE92B4();
  v24 = *(*(v23 - 8) + 104);
  v24(&v14[v19], v22, v23);
  v25 = *MEMORY[0x277D6E4F0];
  v26 = *(v10 + 104);
  v26(v14, v25, v49);
  v27 = *(v18 + 48);
  v28 = v39;
  v36(v39, v37, v21);
  v24(&v28[v27], *MEMORY[0x277D6E508], v23);
  v26(v28, v25, v49);
  v29 = v38;
  sub_219BE9EB4();
  v30 = v43;
  sub_2196C8D0C(v45, v43, type metadata accessor for NewsActivity2.Article);
  sub_2196C8470(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

  v31 = v30;
  v32 = v47;
  sub_2196C8AA4(v31, v47, MEMORY[0x277D2FB40]);
  v33 = v44;
  sub_219BDD8D4();
  sub_2196C8A38(v32, MEMORY[0x277D2FB40]);
  sub_21909BA64(v48, v29, v33);
  sub_2196C8E20(v33, &unk_280EE4470, v46);
  return (*(v41 + 8))(v29, v42);
}

void sub_2196C20D4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v77 = a4;
  v78 = a3;
  v6 = MEMORY[0x277D83D88];
  sub_218834E54(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v72 = &v66 - v8;
  v73 = sub_219BE92E4();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v66 - v11;
  v74 = sub_219BE9EC4();
  v76 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v75 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BDB954();
  v15 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  sub_218834E54(0, &unk_280EE8C10, MEMORY[0x277D30048], v6);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v66 - v22;
  v24 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BDD944();
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196C8D0C(a1, v26, type metadata accessor for NewsActivity2.Article);
  sub_2196C8470(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

  sub_2196C8AA4(v26, v29, MEMORY[0x277D2FB40]);
  sub_219BDD934();
  sub_2196C8A38(v29, MEMORY[0x277D2FB40]);
  v30 = sub_219BDE544();
  if ((*(*(v30 - 8) + 48))(v23, 1, v30) == 1)
  {
    v81[0] = v77;

    sub_2191F0504(&unk_282A290B0);
    v31 = sub_218AA1DB4(v78, a1, v81[0]);

    if (v31)
    {
      v78 = a2[7];
      sub_2196C8470(0, &qword_280EE4520, MEMORY[0x277D6E4E8], MEMORY[0x277D6E510]);
      v33 = v32;
      v77 = *(v32 + 48);
      *v12 = 0x44656C6369747261;
      *(v12 + 1) = 0xEF6B6E696C706565;
      LODWORD(v68) = *MEMORY[0x277D6E4B8];
      v34 = v68;
      v35 = sub_219BE92A4();
      v36 = *(v35 - 8);
      v67 = *(v36 + 104);
      v69 = v36 + 104;
      v67(v12, v34, v35);
      v37 = v12;
      v38 = *MEMORY[0x277D6E500];
      v39 = sub_219BE92B4();
      v40 = v70;
      v66 = *(*(v39 - 8) + 104);
      v41 = v71;
      v66(&v37[v77], v38, v39);
      v42 = *MEMORY[0x277D6E4F0];
      v77 = v31;
      v43 = *(v41 + 104);
      v44 = v73;
      v43(v37, v42, v73);
      v45 = *(v33 + 48);
      *v40 = 0x44656C6369747261;
      *(v40 + 1) = 0xEF6B6E696C706565;
      v67(v40, v68, v35);
      v66(&v40[v45], *MEMORY[0x277D6E508], v39);
      v43(v40, v42, v44);
      v46 = v75;
      sub_219BE9EB4();
      v47 = sub_219BE94F4();
      v48 = v72;
      (*(*(v47 - 8) + 56))(v72, 1, 1, v47);
      v49 = v77;
      sub_21909BA64(v77, v46, v48);

      sub_2196C8E20(v48, &unk_280EE4470, MEMORY[0x277D6E658]);
      (*(v76 + 8))(v46, v74);
    }
  }

  else
  {
    v50 = v78;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v52 = *(v15 + 32);
    if (EnumCaseMultiPayload == 1)
    {
      v52(v17, v23, v14);
      v53 = sub_218CF8A44(v50, v17);
      if (v53)
      {
        v69 = a2[7];
        v54 = *MEMORY[0x277D6E530];
        v68 = v53;
        v55 = sub_219BE92D4();
        v56 = *(*(v55 - 8) + 104);
        v78 = v15;
        v56(v12, v54, v55);
        v57 = *MEMORY[0x277D6E518];
        v77 = v14;
        v58 = *(v71 + 104);
        v59 = v12;
        v60 = v70;
        v61 = v73;
        v58(v59, v57, v73);
        v56(v60, *MEMORY[0x277D6E538], v55);
        v58(v60, v57, v61);
        v62 = v75;
        sub_219BE9EB4();
        v63 = sub_219BE94F4();
        v64 = v72;
        (*(*(v63 - 8) + 56))(v72, 1, 1, v63);
        v65 = v68;
        sub_21909BA64(v68, v62, v64);

        sub_2196C8E20(v64, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v76 + 8))(v62, v74);
        (*(v78 + 8))(v17, v77);
      }

      else
      {
        (*(v15 + 8))(v17, v14);
      }
    }

    else
    {
      v52(v20, v23, v14);
      __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
      sub_2186C709C(0, &qword_280EE5700, MEMORY[0x277D6D840], 1);
      sub_219BE1E34();
      if (v80)
      {
        sub_2186CB1F0(&v79, v81);
        __swift_project_boxed_opaque_existential_1(v81, v81[3]);
        sub_219BE6DC4();
        (*(v15 + 8))(v20, v14);
        __swift_destroy_boxed_opaque_existential_1(v81);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

double sub_2196C2ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_218834E54(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_219BE92E4();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = sub_219BE9EC4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v46[0] = a2;
    v46[1] = a3;
    v23 = sub_2190FC0D8(v46, a4);
    if (v23)
    {
      v40 = *(v22 + 56);
      v24 = *MEMORY[0x277D6E528];
      v39 = v23;
      v25 = sub_219BE92D4();
      v42 = v16;
      v26 = v25;
      v27 = *(*(v25 - 8) + 104);
      v41 = v17;
      v27(v15, v24, v25);
      v37 = v19;
      v38 = v9;
      v28 = *MEMORY[0x277D6E518];
      v43 = v22;
      v29 = v45;
      v30 = *(v44 + 104);
      v30(v15, v28, v45);
      v27(v12, v24, v26);
      v30(v12, v28, v29);
      v31 = v37;
      sub_219BE9EB4();
      v32 = sub_219BE94F4();
      v33 = v38;
      (*(*(v32 - 8) + 56))(v38, 1, 1, v32);
      v34 = v39;
      sub_21909BA64(v39, v31, v33);

      sub_2196C8E20(v33, &unk_280EE4470, MEMORY[0x277D6E658]);
      (*(v41 + 8))(v31, v42);
    }

    else
    {
      if (qword_27CC08558 != -1)
      {
        swift_once();
      }

      v35 = qword_27CCD8A18;
      v36 = sub_219BF6214();
      sub_219BE5314("Unable to present channel picker after dismissal", 48, 2, &dword_2186C1000, v35, v36, MEMORY[0x277D84F90]);
    }
  }

  return result;
}

uint64_t sub_2196C2EB0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = sub_219BED174();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_219BED1D4();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BED214();
  v48 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = &v33 - v10;
  sub_2187C5110(0);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  v19 = type metadata accessor for SportsOnboardingRedirectRoute(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196C8D0C(a1, v21, type metadata accessor for SportsOnboardingRedirectRoute);
  result = (*(v13 + 48))(v21, 2, v12);
  if (!result)
  {
    v36 = v6;
    v38 = v18;
    v34 = *(v13 + 32);
    v34(v18, v21, v12);
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v35 = sub_219BF66A4();
    sub_219BED1F4();
    sub_219BED244();
    v23 = *(v48 + 8);
    v48 += 8;
    v37 = v23;
    v23(v8, v6);
    v24 = swift_allocObject();
    swift_weakInit();
    (*(v13 + 16))(v15, v38, v12);
    v25 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    v34((v26 + v25), v15, v12);
    aBlock[4] = sub_2196C8D74;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218793E0C;
    aBlock[3] = &block_descriptor_51_2;
    v27 = _Block_copy(aBlock);

    v28 = v40;
    sub_219BED1A4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2196C8DD8(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_218834E54(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_21874EB68();
    v29 = v42;
    v30 = v45;
    sub_219BF7164();
    v31 = v46;
    v32 = v35;
    MEMORY[0x21CECD420](v46, v28, v29, v27);
    _Block_release(v27);

    (*(v44 + 8))(v29, v30);
    (*(v41 + 8))(v28, v43);
    v37(v31, v36);
    return (*(v13 + 8))(v38, v12);
  }

  return result;
}

uint64_t sub_2196C3484(uint64_t a1, void *a2)
{
  sub_218834E54(0, &qword_27CC1DFA8, MEMORY[0x277D6E360], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2196B6E0C(a2, v5);

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_219BE8DE4();
  (*(*(v7 - 8) + 56))(v5, v6, 1, v7);
  return sub_2196C8E20(v5, &qword_27CC1DFA8, MEMORY[0x277D6E360]);
}

void sub_2196C35D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v68 = a6;
  v66 = a5;
  v67 = a4;
  v69 = a3;
  v72 = a2;
  sub_218834E54(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = &v63 - v8;
  v71 = sub_219BE9EC4();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v63 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = &v63 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v63 - v13;
  v15 = sub_219BE8DE4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C5110(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = (&v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for SportsOnboardingRedirectRoute(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196C8D0C(a1, v26, type metadata accessor for SportsOnboardingRedirectRoute);
  v27 = (*(v21 + 48))(v26, 2, v20);
  if (v27)
  {
    if (v27 == 1)
    {
      if (v69 == 6)
      {
        v44 = v63;
        sub_218A55078(v68 & 1, v63);
        v45 = [objc_msgSend(*(v72 + 360) possiblyUnfetchedAppConfiguration)];
        swift_unknownObjectRelease();
        v46 = v71;
        v47 = v70;
        if (v45)
        {
          v48 = sub_219BF5414();
          v50 = v49;

          v76 = v48;
          v77 = v50;
          v78 = v66;
          v79 = MEMORY[0x277D84F90];
          v80 = 1;
          v73[0] = 1;
          memset(&v73[8], 0, 48);
          v73[56] = -1;
          v75 = 0;
          v74 = 0uLL;
          v51 = v66;
          sub_2195D0028(v67, &v76, 6, v44, v73);
          v53 = v52;
          v54 = *(v47 + 8);
          v54(v44, v46);
          v83 = *&v73[32];
          v84 = *&v73[48];
          v85 = v74;
          v86 = v75;
          v81 = *v73;
          v82 = *&v73[16];
          sub_2196C8400(&v81, &qword_280EA94E0, &type metadata for FeedViewControllerCreateOptions);

          if (v53)
          {
            v55 = v64;
            sub_218A55078(v68 & 1, v64);
            v56 = sub_219BE94F4();
            v57 = v65;
            (*(*(v56 - 8) + 56))(v65, 1, 1, v56);
            sub_21909BA64(v53, v55, v57);

            sub_2196C8E20(v57, &unk_280EE4470, MEMORY[0x277D6E658]);
            v54(v55, v46);
          }
        }

        else
        {
          (*(v70 + 8))(v44, v71);
        }
      }

      else
      {
        v28 = v71;
        v29 = v70;
        v30 = v72;
        if (v69 == 5)
        {
          sub_218A55078(v68 & 1, v14);
          v31 = [objc_msgSend(*(v30 + 360) possiblyUnfetchedAppConfiguration)];
          swift_unknownObjectRelease();
          if (v31)
          {
            v32 = sub_219BF5414();
            v34 = v33;

            v76 = v32;
            v77 = v34;
            v78 = v66;
            v79 = MEMORY[0x277D84F90];
            v80 = 1;
            v73[0] = 1;
            memset(&v73[8], 0, 48);
            v73[56] = -1;
            v75 = 0;
            v74 = 0uLL;
            v35 = v66;
            sub_2195D0028(v67, &v76, 5, v14, v73);
            v37 = v36;
            v38 = *(v29 + 8);
            v38(v14, v28);
            v83 = *&v73[32];
            v84 = *&v73[48];
            v85 = v74;
            v86 = v75;
            v81 = *v73;
            v82 = *&v73[16];
            sub_2196C8400(&v81, &qword_280EA94E0, &type metadata for FeedViewControllerCreateOptions);

            if (v37)
            {
              v39 = v64;
              sub_218A55078(v68 & 1, v64);
              v40 = sub_219BE94F4();
              v41 = v65;
              (*(*(v40 - 8) + 56))(v65, 1, 1, v40);
              sub_21909BA64(v37, v39, v41);

              sub_2196C8E20(v41, &unk_280EE4470, MEMORY[0x277D6E658]);
              v38(v39, v28);
            }
          }

          else
          {
            (*(v29 + 8))(v14, v28);
          }
        }

        else
        {
          v81 = 0u;
          v82 = 0u;
          LOBYTE(v83) = -1;
          v58 = sub_2195CFAE4(v67, v66, &v81);
          if (v58)
          {
            v59 = v58;
            v60 = v64;
            sub_218A54C90(v64);
            v61 = sub_219BE94F4();
            v62 = v65;
            (*(*(v61 - 8) + 56))(v65, 1, 1, v61);
            sub_21909BA64(v59, v60, v62);

            sub_2196C8E20(v62, &unk_280EE4470, MEMORY[0x277D6E658]);
            (*(v29 + 8))(v60, v28);
          }
        }
      }
    }

    else
    {
      if (qword_280E8D818 != -1)
      {
        swift_once();
      }

      v42 = qword_280F61718;
      v43 = sub_219BF6214();
    }
  }

  else
  {
    (*(v21 + 32))(v23, v26, v20);
    sub_2196B6E0C(v23, v18);
    (*(v16 + 8))(v18, v15);
    (*(v21 + 8))(v23, v20);
  }
}

double sub_2196C3FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), const char *a5, void *a6)
{
  v49 = a5;
  v50 = a6;
  v47 = a4;
  v44 = a3;
  v54 = a2;
  v55 = a1;
  sub_218834E54(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v53 = &v44 - v7;
  v46 = sub_219BE92E4();
  v8 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = sub_219BE9EC4();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x28223BE20](v13);
  v48 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE8DE4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C5110(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = (&v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for SportsOnboardingRedirectRoute(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196C8D0C(v55, v26, type metadata accessor for SportsOnboardingRedirectRoute);
  v27 = (*(v21 + 48))(v26, 2, v20);
  if (v27)
  {
    if (v27 == 1)
    {
      v28 = v54;
      v50 = v47(v44);
      v55 = *(v28 + 56);
      LODWORD(v54) = *MEMORY[0x277D6E528];
      v29 = v54;
      v30 = sub_219BE92D4();
      v31 = *(*(v30 - 8) + 104);
      v31(v12, v29, v30);
      v32 = *MEMORY[0x277D6E4F8];
      v33 = *(v8 + 104);
      v34 = v12;
      v35 = v46;
      v33(v34, v32, v46);
      v36 = v45;
      v31(v45, v54, v30);
      v33(v36, v32, v35);
      v37 = v48;
      sub_219BE9EB4();
      v38 = sub_219BE94F4();
      v39 = v53;
      (*(*(v38 - 8) + 56))(v53, 1, 1, v38);
      v40 = v50;
      sub_21909BA64(v50, v37, v39);

      sub_2196C8E20(v39, &unk_280EE4470, MEMORY[0x277D6E658]);
      (*(v51 + 8))(v37, v52);
    }

    else
    {
      if (qword_280E8D818 != -1)
      {
        swift_once();
      }

      v42 = qword_280F61718;
      v43 = sub_219BF6214();
      return sub_219BE5314(v49, v50, 2, &dword_2186C1000, v42, v43, MEMORY[0x277D84F90]);
    }
  }

  else
  {
    (*(v21 + 32))(v23, v26, v20);
    sub_2196B6E0C(v23, v18);
    (*(v16 + 8))(v18, v15);
    (*(v21 + 8))(v23, v20);
  }

  return result;
}

uint64_t sub_2196C458C(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 368), *(a1 + 392));
  v3 = off_282A31BD8[0];
  v4 = type metadata accessor for SportsOnboardingFlowManager(0);
  return v3(a2, 1, v4);
}

double sub_2196C4618(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v44 = a5;
  v45 = a3;
  v47 = a4;
  v53 = a2;
  v54 = a1;
  sub_218834E54(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v52 = &v43 - v6;
  v48 = sub_219BE92E4();
  v7 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = sub_219BE9EC4();
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x28223BE20](v12);
  v49 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE8DE4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C5110(0);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for SportsOnboardingRedirectRoute(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196C8D0C(v54, v25, type metadata accessor for SportsOnboardingRedirectRoute);
  v26 = (*(v20 + 48))(v25, 2, v19);
  if (v26)
  {
    if (v26 == 1)
    {
      v27 = v53;
      v47 = sub_219048A48(v45, v47, v44);
      v54 = *(v27 + 56);
      LODWORD(v53) = *MEMORY[0x277D6E528];
      v28 = v53;
      v29 = sub_219BE92D4();
      v30 = *(*(v29 - 8) + 104);
      v30(v11, v28, v29);
      v31 = *MEMORY[0x277D6E4F8];
      v32 = *(v7 + 104);
      v33 = v11;
      v34 = v48;
      v32(v33, v31, v48);
      v35 = v46;
      v30(v46, v53, v29);
      v32(v35, v31, v34);
      v36 = v49;
      sub_219BE9EB4();
      v37 = sub_219BE94F4();
      v38 = v52;
      (*(*(v37 - 8) + 56))(v52, 1, 1, v37);
      v39 = v47;
      sub_21909BA64(v47, v36, v38);

      sub_2196C8E20(v38, &unk_280EE4470, MEMORY[0x277D6E658]);
      (*(v50 + 8))(v36, v51);
    }

    else
    {
      if (qword_280E8D818 != -1)
      {
        swift_once();
      }

      v41 = qword_280F61718;
      v42 = sub_219BF6214();
    }
  }

  else
  {
    (*(v20 + 32))(v22, v25, v19);
    sub_2196B6E0C(v22, v17);
    (*(v15 + 8))(v17, v14);
    (*(v20 + 8))(v22, v19);
  }

  return result;
}

double sub_2196C4BCC(void *a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7)
{
  v60 = a7;
  v62 = a4;
  v63 = a6;
  v10 = sub_219BE7224();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_219BEB674();
  v61 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2)
    {
      v20 = a1;
      if (qword_280EE5F98 != -1)
      {
        swift_once();
      }

      v21 = sub_219BE5434();
      __swift_project_value_buffer(v21, qword_280F62610);
      v22 = a1;
      v23 = sub_219BE5414();
      v24 = sub_219BF61F4();
      sub_219087C70(a1, 1);
      if (!os_log_type_enabled(v23, v24))
      {

        sub_219087C70(a1, 1);
        return result;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v64[0] = v26;
      *v25 = 136446210;
      swift_getErrorValue();
      v27 = sub_219BF7A04();
      v29 = sub_2186D1058(v27, v28, v64);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2186C1000, v23, v24, "Failed to load assets in TipViewController: [%{public}s]", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x21CECF960](v26, -1, -1);
      MEMORY[0x21CECF960](v25, -1, -1);
      sub_219087C70(a1, 1);
    }

    else
    {
      v59 = v11;
      if (qword_280EE5F90 != -1)
      {
        swift_once();
      }

      v30 = sub_219BE5434();
      __swift_project_value_buffer(v30, qword_280F625F8);
      v32 = v62;
      v31 = v63;
      sub_218DFB8E8(v62, a5, v63);
      v33 = sub_219BE5414();
      v34 = sub_219BF6214();
      sub_218DFB934(v32, a5, v31);
      v58 = v34;
      v35 = v34;
      v36 = v33;
      v37 = a5 >> 61;
      if (os_log_type_enabled(v33, v35))
      {
        v57[1] = v19;
        v38 = swift_slowAlloc();
        v57[0] = swift_slowAlloc();
        v64[0] = v57[0];
        v39 = 0xE800000000000000;
        v40 = 0x6465776F6C6C6F66;
        *v38 = 136446210;
        v41 = 0xEF736569726F7453;
        v42 = 0x73756C507377656ELL;
        if (v37 != 6)
        {
          v42 = 0x6843657069636572;
          v41 = 0xEC000000656D6F72;
        }

        v43 = 0x8000000219CF99A0;
        if (v37 == 4)
        {
          v44 = 0xD000000000000016;
        }

        else
        {
          v44 = 0xD000000000000015;
        }

        if (v37 != 4)
        {
          v43 = 0x8000000219CF9980;
        }

        if (v37 <= 5)
        {
          v42 = v44;
          v41 = v43;
        }

        v45 = 0xEB0000000065726FLL;
        v46 = 0x63537374726F7073;
        if (v37 != 2)
        {
          v46 = 0x7548656C7A7A7570;
          v45 = 0xED00006F666E4962;
        }

        if (v37)
        {
          v40 = 0x74756374726F6873;
          v39 = 0xE900000000000073;
        }

        if (v37 > 1)
        {
          v40 = v46;
          v39 = v45;
        }

        if (v37 <= 3)
        {
          v47 = v40;
        }

        else
        {
          v47 = v42;
        }

        if (v37 <= 3)
        {
          v48 = v39;
        }

        else
        {
          v48 = v41;
        }

        v49 = sub_2186D1058(v47, v48, v64);

        *(v38 + 4) = v49;
        _os_log_impl(&dword_2186C1000, v36, v58, "Tip view controller completed loading assets for tip source=%{public}s", v38, 0xCu);
        v50 = v57[0];
        __swift_destroy_boxed_opaque_existential_1(v57[0]);
        MEMORY[0x21CECF960](v50, -1, -1);
        MEMORY[0x21CECF960](v38, -1, -1);
      }

      else
      {
      }

      v53 = v59;
      v64[0] = v62;
      v64[1] = a5;
      v64[2] = v63;
      sub_219092084(v52, v16, v51);
      if (v37)
      {
        v55 = MEMORY[0x277D6D948];
      }

      else
      {
        *v13 = sub_219BE82C4();
        v13[1] = v54;
        v55 = MEMORY[0x277D6D950];
      }

      (*(v53 + 104))(v13, *v55, v10);
      v56 = sub_219BE5924();
      (*(v53 + 8))(v13, v10);
      (*(v61 + 8))(v16, v14);
      if (v56)
      {

        sub_219BE5944();
      }
    }
  }

  return result;
}

uint64_t sub_2196C5214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = sub_219BF6534();

      [v8 presentViewController:a2 animated:1 completion:0];
    }

    v9 = (a3 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_embedDidLoadCompletion);
    v10 = *(a3 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_embedDidLoadCompletion);
    v11 = *(a3 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_embedDidLoadCompletion + 8);
    *v9 = 0;
    v9[1] = 0;
    return sub_2187FABEC(v10, v11);
  }

  return result;
}

void sub_2196C52DC(void *a1@<X0>, void *a2@<X8>)
{
  v366 = a2;
  v3 = sub_219BDB954();
  v342 = *(v3 - 8);
  v343 = v3;
  MEMORY[0x28223BE20](v3);
  v341 = (&v333 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v344 = type metadata accessor for WebLinkViewControllerType(0);
  MEMORY[0x28223BE20](v344);
  v345 = &v333 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v352 = (&v333 - v7);
  v8 = sub_219BE15B4();
  v337 = *(v8 - 8);
  v338 = v8;
  MEMORY[0x28223BE20](v8);
  v334 = &v333 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDD0A4();
  v335 = *(v10 - 8);
  v336 = v10;
  MEMORY[0x28223BE20](v10);
  v333 = &v333 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = type metadata accessor for TagFeedAsyncConfig(0);
  MEMORY[0x28223BE20](v339);
  v340 = (&v333 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v360 = sub_219BE92E4();
  v362 = *(v360 - 8);
  MEMORY[0x28223BE20](v360);
  v357 = &v333 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v358 = &v333 - v15;
  v16 = sub_219BE9EC4();
  v17 = *(v16 - 8);
  v363 = v16;
  v364 = v17;
  MEMORY[0x28223BE20](v16);
  v351 = &v333 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v348 = &v333 - v20;
  MEMORY[0x28223BE20](v21);
  v359 = &v333 - v22;
  sub_218834E54(0, &unk_280EE8C10, MEMORY[0x277D30048], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v23 - 8);
  v350 = (&v333 - v24);
  v25 = sub_219BDD944();
  MEMORY[0x28223BE20](v25 - 8);
  v349 = &v333 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v356 = sub_219BF2CB4();
  *&v355 = *(v356 - 8);
  MEMORY[0x28223BE20](v356);
  v347 = (&v333 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v346 = (&v333 - v29);
  MEMORY[0x28223BE20](v30);
  v32 = (&v333 - v31);
  *&v354 = sub_219BF2634();
  *&v353 = *(v354 - 8);
  MEMORY[0x28223BE20](v354);
  v34 = &v333 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v333 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v333 - v39;
  v41 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v333 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v46 = &v333 - v45;
  MEMORY[0x28223BE20](v47);
  v49 = &v333 - v48;
  sub_2187C5110(0);
  v361 = a1;
  sub_219BEA7A4();
  switch((v385[0] >> 58) & 0x3C | (LODWORD(v385[0]) >> 1) & 3)
  {
    case 1uLL:
      v126 = v385[0];
      sub_2187B2C48(0);
      v351 = v126;
      v127 = swift_projectBox();
      sub_2196C8D0C(v127, v49, type metadata accessor for NewsActivity2.Article);
      v128 = v365;
      __swift_project_boxed_opaque_existential_1((v365 + 528), *(v365 + 552));
      if (sub_219BEED44())
      {
        __swift_project_boxed_opaque_existential_1(v128 + 61, v128[64]);
        sub_2196C8018(v49, v32);
        sub_219BF4794();
        (*(v355 + 8))(v32, v356);
        v129 = sub_219BF2614();
        (*(v353 + 8))(v40, v354);
        if ((v129 & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      sub_2196C8D0C(v49, v46, type metadata accessor for NewsActivity2.Article);
      sub_2196C8470(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

      v130 = v349;
      sub_2196C8AA4(v46, v349, MEMORY[0x277D2FB40]);
      v131 = v350;
      sub_219BDD934();
      sub_2196C8A38(v130, MEMORY[0x277D2FB40]);
      v132 = sub_219BDE544();
      if ((*(*(v132 - 8) + 48))(v131, 1, v132) == 1)
      {
        v133 = sub_218AA1DB4(v361, v49, &unk_282A290D8);
        if (v133)
        {
          v365 = v128[7];
          v361 = v133;
          sub_2196C8470(0, &qword_280EE4520, MEMORY[0x277D6E4E8], MEMORY[0x277D6E510]);
          v135 = v134;
          v136 = *(v134 + 48);
          LODWORD(v354) = *MEMORY[0x277D6E4C0];
          v137 = v354;
          v138 = sub_219BE92A4();
          v139 = *(v138 - 8);
          *&v353 = *(v139 + 104);
          *&v355 = v139 + 104;
          v140 = v358;
          (v353)(v358, v137, v138);
          *&v356 = v49;
          v141 = *MEMORY[0x277D6E500];
          v142 = sub_219BE92B4();
          v143 = *(v142 - 8);
          v350 = *(v143 + 104);
          v352 = (v143 + 104);
          (v350)(&v140[v136], v141, v142);
          v144 = *MEMORY[0x277D6E4F0];
          v145 = *(v362 + 104);
          v146 = v360;
          v145(v140, v144, v360);
          v147 = *(v135 + 48);
          v148 = v357;
          (v353)(v357, v354, v138);
          (v350)(&v148[v147], *MEMORY[0x277D6E508], v142);
          v145(v148, v144, v146);
          v149 = v359;
          sub_219BE9EB4();
          v125 = v361;
          sub_21909C8A4(v361, v149);
          (*(v364 + 8))(v149, v363);
          sub_2196C8A38(v356, type metadata accessor for NewsActivity2.Article);
          goto LABEL_95;
        }

LABEL_73:
        sub_2196C8A38(v49, type metadata accessor for NewsActivity2.Article);
        goto LABEL_96;
      }

      sub_2196C8A38(v49, type metadata accessor for NewsActivity2.Article);
      v268 = *MEMORY[0x277D6DEF8];
      v269 = sub_219BE8464();
      (*(*(v269 - 8) + 104))(v366, v268, v269);
      v270 = MEMORY[0x277D30048];
      v271 = v131;
      goto LABEL_77;
    case 8uLL:
      v150 = v385[0];
      v151 = swift_projectBox();
      sub_2196C8D0C(v151, v43, type metadata accessor for NewsActivity2.Article);
      v152 = v365;
      __swift_project_boxed_opaque_existential_1((v365 + 528), *(v365 + 552));
      if ((sub_219BEED44() & 1) == 0 || (__swift_project_boxed_opaque_existential_1((v152 + 488), *(v152 + 512)), sub_2196C8018(v43, v32), sub_219BF4794(), (*(v355 + 8))(v32, v356), v153 = sub_219BF2614(), (*(v353 + 8))(v40, v354), (v153)) && (v154 = sub_218AA1DB4(v361, v43, &unk_282A29100)) != 0)
      {
        v155 = v154;
        v156 = v359;
        sub_218A5576C(v359);
        sub_21909C8A4(v155, v156);
        (*(v364 + 8))(v156, v363);
        sub_2196C8A38(v43, type metadata accessor for NewsActivity2.Article);
        v157 = v366;
        *v366 = v155;
        v158 = *MEMORY[0x277D6DF00];
        v159 = sub_219BE8464();
        (*(*(v159 - 8) + 104))(v157, v158, v159);
      }

      else
      {
        sub_2196C8A38(v43, type metadata accessor for NewsActivity2.Article);
        v232 = *MEMORY[0x277D6DEF8];
        v233 = sub_219BE8464();
        (*(*(v233 - 8) + 104))(v366, v232, v233);
      }

      sub_218932F9C(v150);
      return;
    case 0xAuLL:
      v101 = v385[0];
      v162 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x40);
      v381 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x30);
      v382 = v162;
      v383 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x50);
      v384 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x60);
      v163 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
      v379 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
      v380 = v163;
      __swift_project_boxed_opaque_existential_1((v365 + 528), *(v365 + 552));
      sub_218B5A004(&v379, &v373);
      if ((sub_219BEED44() & 1) == 0)
      {
        v370 = v379;
        v371 = v380;
        v372 = v381;
        v164 = *(&v381 + 1);
        sub_21908FD7C(v379, *(&v379 + 1), v380, *(&v380 + 1), v381);
        v165 = v359;
        sub_218A56C88();
        LOBYTE(v367[0]) = 0;
        *(v367 + 8) = 0u;
        *(&v367[1] + 8) = 0u;
        *(&v367[2] + 8) = 0u;
        BYTE8(v367[3]) = -1;
        v369 = 0;
        v368 = 0uLL;
        sub_2195D0028(v361, &v370, v164, v165, v367);
        v104 = v166;
        v375 = v367[2];
        v376 = v367[3];
        v377 = v368;
        v378 = v369;
        v373 = v367[0];
        v374 = v367[1];
        sub_2196C8400(&v373, &qword_280EA94E0, &type metadata for FeedViewControllerCreateOptions);
        v167 = v363;
        v168 = *(v364 + 8);
        v168(v165, v363);
        sub_21896FBB0(v370, *(&v370 + 1), v371, *(&v371 + 1), v372);
        if (v104)
        {
          sub_218A56C88();
          sub_21909C8A4(v104, v165);
          sub_218B5A060(&v379);
          v168(v165, v167);
          goto LABEL_29;
        }
      }

      v230 = *MEMORY[0x277D6DEF8];
      v231 = sub_219BE8464();
      (*(*(v231 - 8) + 104))(v366, v230, v231);
      sub_218B5A060(&v379);
      goto LABEL_102;
    case 0xBuLL:
    case 0x10uLL:
    case 0x26uLL:
      v53 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x40);
      v375 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x30);
      v376 = v53;
      v377 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x50);
      LOBYTE(v378) = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x60);
      v54 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
      v373 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
      v374 = v54;
      v55 = v385[0];
      sub_218B5A004(&v373, v367);
      sub_218932F9C(v55);
      v56 = v378;
      v57 = *(&v375 + 1);
      v58 = v375;
      v353 = v373;
      v354 = v374;
      v379 = v373;
      v380 = v374;
      LOBYTE(v381) = v375;
      *(&v381 + 1) = *(&v375 + 1);
      v355 = v376;
      v356 = v377;
      v382 = v376;
      v383 = v377;
      v384 = v378;
      __swift_project_boxed_opaque_existential_1((v365 + 528), *(v365 + 552));
      if (sub_219BEED44())
      {
        v59 = *MEMORY[0x277D6DEF8];
        v60 = sub_219BE8464();
        (*(*(v60 - 8) + 104))(v366, v59, v60);
        sub_218B5A060(&v379);
        return;
      }

      v371 = v354;
      v370 = v353;
      v372 = v58;
      sub_2196C8470(0, &qword_280EE4520, MEMORY[0x277D6E4E8], MEMORY[0x277D6E510]);
      v62 = v61;
      v63 = *(v61 + 48);
      LODWORD(v351) = *MEMORY[0x277D6E4C0];
      v64 = v351;
      v65 = sub_219BE92A4();
      LODWORD(v345) = v56;
      v66 = v65;
      v67 = *(v65 - 8);
      v352 = *(v67 + 104);
      v350 = (v67 + 104);
      v346 = v57;
      v68 = v358;
      (v352)(v358, v64, v65);
      LODWORD(v344) = v58;
      v69 = *MEMORY[0x277D6E500];
      v70 = sub_219BE92B4();
      v71 = *(v70 - 8);
      v72 = *(v71 + 104);
      v73 = (v71 + 104);
      LODWORD(v339) = v69;
      v72(&v68[v63], v69, v70);
      v74 = *MEMORY[0x277D6E4F0];
      v76 = v362 + 104;
      v75 = *(v362 + 104);
      v75(v68, v74, v360);
      v343 = v62;
      v362 = *(v62 + 48);
      v77 = v357;
      v349 = v66;
      (v352)(v357, v351, v66);
      v78 = *MEMORY[0x277D6E508];
      v79 = *MEMORY[0x277D6E508];
      v348 = v70;
      v341 = v73;
      v342 = v72;
      v72(&v77[v362], v79, v70);
      LODWORD(v347) = v74;
      v362 = v76;
      v340 = v75;
      v75(v77, v74, v360);
      v80 = v365;
      LOBYTE(v74) = v345;
      sub_218F20858(v355, *(&v355 + 1), v356, *(&v356 + 1), v345);
      sub_21908FD7C(v353, *(&v353 + 1), v354, *(&v354 + 1), v344);
      v81 = v77;
      v82 = v359;
      v83 = v68;
      sub_219BE9EB4();
      LOBYTE(v367[0]) = 0;
      *(&v367[0] + 1) = 0;
      *&v367[1] = 0;
      *(&v367[2] + 8) = v356;
      *(&v367[1] + 8) = v355;
      BYTE8(v367[3]) = v74;
      v369 = 0;
      v368 = 0uLL;
      sub_2195D0028(v361, &v370, v346, v82, v367);
      v85 = v84;
      sub_218B5A060(&v379);
      v375 = v367[2];
      v376 = v367[3];
      v377 = v368;
      v378 = v369;
      v373 = v367[0];
      v374 = v367[1];
      sub_2196C8400(&v373, &qword_280EA94E0, &type metadata for FeedViewControllerCreateOptions);
      v86 = v364 + 8;
      v361 = *(v364 + 8);
      (v361)(v82, v363);
      v87 = sub_21896FBB0(v370, *(&v370 + 1), v371, *(&v371 + 1), v372);
      if (v85)
      {
        v88 = *(v80 + 56);
        v364 = v86;
        v365 = v88;
        v89 = v343;
        v90 = *(v343 + 48);
        *&v356 = v85;
        v91 = v351;
        LODWORD(v355) = v78;
        (v352)(v83, v351, v349, v87);
        v92 = &v83[v90];
        v93 = v342;
        v342(v92, v339, v348);
        v94 = v340;
        v340(v83, v347, v360);
        v95 = *(v89 + 48);
        (v352)(v81, v91, v349);
        v93(&v81[v95], v355, v348);
        v94(v81, v347, v360);
        v96 = v359;
        sub_219BE9EB4();
        v97 = v356;
        sub_21909C8A4(v356, v96);
        (v361)(v96, v363);
        goto LABEL_9;
      }

      v50 = MEMORY[0x277D6DEF8];
      goto LABEL_4;
    case 0xFuLL:
      v101 = v385[0];
      v102 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
      if (([*(v365 + 168) useFood] & 1) == 0)
      {
        if (qword_280EE5F60 != -1)
        {
          swift_once();
        }

        v234 = sub_219BE5434();
        __swift_project_value_buffer(v234, qword_280F625B0);
        v235 = sub_219BE5414();
        v236 = sub_219BF6214();
        if (os_log_type_enabled(v235, v236))
        {
          v237 = swift_slowAlloc();
          *v237 = 0;
          MEMORY[0x21CECF960](v237, -1, -1);
        }

        v238 = *MEMORY[0x277D6DEF8];
        goto LABEL_101;
      }

      v373 = 0u;
      v374 = 0u;
      LOBYTE(v375) = -1;
      v103 = sub_2195D1848(v361, v102, &v373);
      if (!v103)
      {
        v238 = *MEMORY[0x277D6DEF8];
LABEL_101:
        v322 = sub_219BE8464();
        (*(*(v322 - 8) + 104))(v366, v238, v322);
        goto LABEL_102;
      }

      v104 = v103;
      v105 = v359;
      sub_218A56C88();
      sub_21909C8A4(v104, v105);
      (*(v364 + 8))(v105, v363);
LABEL_29:
      v169 = v366;
      *v366 = v104;
      v170 = *MEMORY[0x277D6DF00];
      v171 = sub_219BE8464();
      (*(*(v171 - 8) + 104))(v169, v170, v171);
LABEL_102:
      sub_218932F9C(v101);
      return;
    case 0x14uLL:
      v351 = v385[0];
      v209 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x30);
      v374 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
      v375 = v209;
      v376 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x40);
      *&v377 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x50);
      v373 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
      v210 = v365;
      __swift_project_boxed_opaque_existential_1((v365 + 528), *(v365 + 552));
      sub_219092568(&v373, v367);
      v211 = sub_219BEED44();
      v212 = v358;
      if ((v211 & 1) == 0)
      {
        goto LABEL_85;
      }

      v213 = v210[64];
      v352 = v210[65];
      v350 = __swift_project_boxed_opaque_existential_1(v210 + 61, v213);
      if (((HIBYTE(v375) << 48) & 0xC0000000000000) == 0x40000000000000)
      {
        v214 = v346;
        *v346 = v373;
        v215 = v355;
        v216 = v356;
        (*(v355 + 104))(v214, *MEMORY[0x277D33B80], v356);
      }

      else
      {
        v367[0] = v373;
        v367[1] = v374;
        *&v367[2] = v375;
        BYTE8(v367[2]) = BYTE8(v375) & 1;
        v277 = sub_219BD4870();
        v214 = v346;
        *v346 = v277;
        v215 = v355;
        v216 = v356;
        (*(v355 + 104))(v214, *MEMORY[0x277D33BA0], v356);
        v278 = v277;
      }

      v279 = v354;
      sub_219BF4794();
      (*(v215 + 8))(v214, v216);
      v280 = sub_219BF2614();
      (*(v353 + 8))(v37, v279);
      if ((v280 & 1) == 0)
      {
        v295 = *MEMORY[0x277D6DEF8];
      }

      else
      {
LABEL_85:
        v367[2] = v375;
        v367[3] = v376;
        *&v368 = v377;
        v367[0] = v373;
        v367[1] = v374;
        v281 = sub_2191651D0(v361, v367, 0, 0, MEMORY[0x277D84F90]);
        if (v281)
        {
          v365 = v210[7];
          v361 = v281;
          sub_2196C8470(0, &qword_280EE4520, MEMORY[0x277D6E4E8], MEMORY[0x277D6E510]);
          v283 = v282;
          v284 = *(v282 + 48);
          LODWORD(v355) = *MEMORY[0x277D6E4D0];
          v285 = v355;
          v286 = sub_219BE92A4();
          v287 = *(v286 - 8);
          *&v354 = *(v287 + 104);
          *&v356 = v287 + 104;
          (v354)(v212, v285, v286);
          v288 = *MEMORY[0x277D6E500];
          v289 = sub_219BE92B4();
          *&v353 = *(*(v289 - 8) + 104);
          (v353)(&v212[v284], v288, v289);
          v290 = *MEMORY[0x277D6E4F0];
          v291 = *(v362 + 104);
          v292 = v360;
          v291(v212, v290, v360);
          v293 = *(v283 + 48);
          v294 = v357;
          (v354)(v357, v355, v286);
          (v353)(&v294[v293], *MEMORY[0x277D6E508], v289);
          v291(v294, v290, v292);
          v124 = v359;
          sub_219BE9EB4();
          v125 = v361;
          sub_21909C8A4(v361, v124);
          sub_218AAFFC4(&v373);
          goto LABEL_94;
        }

        v295 = *MEMORY[0x277D6DEF8];
      }

      v296 = sub_219BE8464();
      (*(*(v296 - 8) + 104))(v366, v295, v296);
      sub_218AAFFC4(&v373);
      goto LABEL_98;
    case 0x15uLL:
      v218 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
      v217 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x18);
      v219 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x20);
      v220 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x28);
      v351 = v385[0];
      v352 = v219;
      v349 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x30);
      v350 = v220;
      LODWORD(v348) = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x38);
      v221 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x39) | ((*((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x3D) | (*((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x3F) << 16)) << 32);
      v223 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x40);
      v222 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x48);
      v224 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x58);
      v345 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x50);
      v346 = v222;
      v225 = v365;
      __swift_project_boxed_opaque_existential_1((v365 + 528), *(v365 + 552));
      if (sub_219BEED44())
      {
        v343 = v223;
        v344 = v224;
        v226 = v225[64];
        v342 = v225[65];
        v341 = __swift_project_boxed_opaque_existential_1(v225 + 61, v226);
        if ((v221 & 0xC0000000000000) == 0x40000000000000)
        {
          v227 = v347;
          *v347 = v218;
          v227[1] = v217;
          v228 = v355;
          v229 = v356;
          (*(v355 + 104))(v227, *MEMORY[0x277D33B80], v356);
        }

        else
        {
          *&v373 = v218;
          *(&v373 + 1) = v217;
          *&v374 = v352;
          *(&v374 + 1) = v350;
          *&v375 = v349;
          BYTE8(v375) = v348 & 1;
          v297 = sub_219BD4870();
          v298 = v347;
          *v347 = v297;
          v228 = v355;
          v229 = v356;
          (*(v355 + 104))(v298, *MEMORY[0x277D33BA0], v356);
          v299 = v297;
          v227 = v298;
        }

        sub_219BF4794();
        (*(v228 + 8))(v227, v229);
        v300 = sub_219BF2614();
        (*(v353 + 8))(v34, v354);
        v225 = v365;
        v223 = v343;
        v224 = v344;
        if ((v300 & 1) == 0)
        {
          goto LABEL_96;
        }
      }

      *&v373 = v218;
      *(&v373 + 1) = v217;
      *&v374 = v352;
      *(&v374 + 1) = v350;
      *&v375 = v349;
      BYTE8(v375) = v348;
      *(&v375 + 9) = v221;
      HIBYTE(v375) = BYTE6(v221);
      *(&v375 + 13) = WORD2(v221);
      *&v376 = v223;
      *(&v376 + 1) = v346;
      *&v377 = v345;
      v301 = sub_2191651D0(v361, &v373, 0, 0, v224);
      if (v301)
      {
        v365 = v225[7];
        v361 = v301;
        sub_2196C8470(0, &qword_280EE4520, MEMORY[0x277D6E4E8], MEMORY[0x277D6E510]);
        v303 = v302;
        v304 = *(v302 + 48);
        LODWORD(v355) = *MEMORY[0x277D6E4D0];
        v305 = v355;
        v306 = sub_219BE92A4();
        v307 = *(v306 - 8);
        *&v354 = *(v307 + 104);
        *&v356 = v307 + 104;
        v308 = v358;
        (v354)(v358, v305, v306);
        v309 = *MEMORY[0x277D6E500];
        v310 = sub_219BE92B4();
        v311 = *(v310 - 8);
        v352 = *(v311 + 104);
        *&v353 = v311 + 104;
        (v352)(&v308[v304], v309, v310);
        v312 = *MEMORY[0x277D6E4F0];
        v313 = *(v362 + 104);
        v314 = v360;
        v313(v308, v312, v360);
        v315 = *(v303 + 48);
        v316 = v357;
        (v354)(v357, v355, v306);
        (v352)(&v316[v315], *MEMORY[0x277D6E508], v310);
        v313(v316, v312, v314);
        v124 = v359;
        sub_219BE9EB4();
        v125 = v361;
        sub_21909C8A4(v361, v124);
        goto LABEL_94;
      }

      v320 = *MEMORY[0x277D6DEF8];
      goto LABEL_97;
    case 0x1EuLL:
      v351 = v385[0];
      v106 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x10);

      v107 = v365;
      sub_21988B198(v361, v106);
      if (!v108)
      {
        v266 = *MEMORY[0x277D6DEF8];
        v267 = sub_219BE8464();
        (*(*(v267 - 8) + 104))(v366, v266, v267);

        goto LABEL_98;
      }

      v365 = *(v107 + 56);
      v361 = v108;
      sub_2196C8470(0, &qword_280EE4520, MEMORY[0x277D6E4E8], MEMORY[0x277D6E510]);
      v110 = v109;
      v111 = *(v109 + 48);
      LODWORD(v355) = *MEMORY[0x277D6E4C0];
      v112 = v355;
      v113 = sub_219BE92A4();
      v114 = *(v113 - 8);
      *&v354 = *(v114 + 104);
      *&v356 = v114 + 104;
      v115 = v358;
      (v354)(v358, v112, v113);
      v116 = *MEMORY[0x277D6E500];
      v117 = sub_219BE92B4();
      v118 = *(v117 - 8);
      v352 = *(v118 + 104);
      *&v353 = v118 + 104;
      (v352)(&v115[v111], v116, v117);
      v119 = *MEMORY[0x277D6E4F0];
      v120 = *(v362 + 104);
      v362 = v106;
      v121 = v360;
      v120(v115, v119, v360);
      v122 = *(v110 + 48);
      v123 = v357;
      (v354)(v357, v355, v113);
      (v352)(&v123[v122], *MEMORY[0x277D6E508], v117);
      v120(v123, v119, v121);
      v124 = v359;
      sub_219BE9EB4();
      v125 = v361;
      sub_21909C8A4(v361, v124);

LABEL_94:
      (*(v364 + 8))(v124, v363);
      goto LABEL_95;
    case 0x1FuLL:
      v351 = v385[0];
      LODWORD(v359) = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
      v175 = [*(v365 + 168) useFood];
      v176 = v362;
      if ((v175 & 1) == 0)
      {
        if (qword_280EE5F38 != -1)
        {
          swift_once();
        }

        v258 = sub_219BE5434();
        __swift_project_value_buffer(v258, qword_280F62568);
        v259 = sub_219BE5414();
        v260 = sub_219BF6214();
        if (os_log_type_enabled(v259, v260))
        {
          v261 = swift_slowAlloc();
          *v261 = 0;
          MEMORY[0x21CECF960](v261, -1, -1);
        }

        goto LABEL_96;
      }

      if (v359)
      {
        sub_2196C8470(0, &qword_280EE4520, MEMORY[0x277D6E4E8], MEMORY[0x277D6E510]);
        v178 = v177;
        *&v354 = *(v177 + 48);
        LODWORD(v356) = *MEMORY[0x277D6E4C0];
        v179 = v356;
        v180 = sub_219BE92A4();
        *&v355 = *(*(v180 - 8) + 104);
        v181 = v358;
        (v355)(v358, v179, v180);
        v182 = *MEMORY[0x277D6E500];
        v183 = sub_219BE92B4();
        v184 = *(v183 - 8);
        v352 = *(v184 + 104);
        *&v353 = v184 + 104;
        (v352)(&v181[v354], v182, v183);
        v185 = *MEMORY[0x277D6E4F0];
        v186 = *(v176 + 104);
        v362 = v176 + 104;
        v187 = v360;
        v186(v181, v185, v360);
        v188 = *(v178 + 48);
        v189 = v357;
        (v355)(v357, v356, v180);
        (v352)(&v189[v188], *MEMORY[0x277D6E508], v183);
        v186(v189, v185, v187);
        v190 = v348;
        sub_219BE9EB4();
      }

      else
      {
        v190 = v348;
        sub_218A56C88();
      }

      v274 = v363;
      v125 = sub_2190FD6AC(v361, v190, v359);
      sub_21909C8A4(v125, v190);
      (*(v364 + 8))(v190, v274);
LABEL_95:
      v317 = v366;
      *v366 = v125;
      v318 = *MEMORY[0x277D6DF00];
      v319 = sub_219BE8464();
      (*(*(v319 - 8) + 104))(v317, v318, v319);
      goto LABEL_98;
    case 0x2CuLL:
      v351 = v385[0];
      v160 = swift_projectBox();
      v161 = v352;
      sub_2196C8D0C(v160, v352, type metadata accessor for WebLinkViewControllerType);
      __swift_project_boxed_opaque_existential_1((v365 + 528), *(v365 + 552));
      if (sub_219BEED44())
      {
        goto LABEL_25;
      }

      v239 = v345;
      sub_2196C8D0C(v161, v345, type metadata accessor for WebLinkViewControllerType);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        sub_2196C8A38(v161, type metadata accessor for WebLinkViewControllerType);
        v272 = *MEMORY[0x277D6DEF8];
        v273 = sub_219BE8464();
        (*(*(v273 - 8) + 104))(v366, v272, v273);
        v271 = v239;
        v270 = type metadata accessor for WebLinkViewControllerType;
LABEL_77:
        sub_2196C8A38(v271, v270);
      }

      else
      {
        v241 = v341;
        v240 = v342;
        v242 = v343;
        (*(v342 + 4))(v341, v239, v343);
        v243 = v365;
        v244 = sub_218CF8A44(v361, v241);
        v240[1](v241, v242);
        if (v244)
        {
          v365 = *(v243 + 56);
          v245 = *MEMORY[0x277D6E530];
          v246 = sub_219BE92D4();
          v247 = *(*(v246 - 8) + 104);
          v248 = v358;
          v247(v358, v245, v246);
          v249 = *MEMORY[0x277D6E518];
          v361 = v244;
          v250 = *(v362 + 104);
          v251 = v360;
          v250(v248, v249, v360);
          v252 = v357;
          v247(v357, *MEMORY[0x277D6E538], v246);
          v250(v252, v249, v251);
          v253 = v359;
          sub_219BE9EB4();
          v254 = v361;
          sub_21909C8A4(v361, v253);
          (*(v364 + 8))(v253, v363);
          sub_2196C8A38(v352, type metadata accessor for WebLinkViewControllerType);
          v255 = v366;
          *v366 = v254;
          v256 = *MEMORY[0x277D6DF00];
          v257 = sub_219BE8464();
          (*(*(v257 - 8) + 104))(v255, v256, v257);
        }

        else
        {
LABEL_25:
          sub_2196C8A38(v161, type metadata accessor for WebLinkViewControllerType);
LABEL_96:
          v320 = *MEMORY[0x277D6DEF8];
LABEL_97:
          v321 = sub_219BE8464();
          (*(*(v321 - 8) + 104))(v366, v320, v321);
        }
      }

LABEL_98:
      sub_218932F9C(v351);
      return;
    case 0x39uLL:
      v191 = v385[0];
      v192 = *((v385[0] & 0xFFFFFFFFFFFFFF9) + 0x10);
      v193 = v365;
      if ([*(v365 + 168) puzzlesEnabled])
      {
        v194 = v351;
        sub_218A56C84();
        v195 = [objc_opt_self() sharedAccount];
        v196 = [v195 isContentStoreFrontSupported];

        if (v196)
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          v198 = v363;
          if (Strong)
          {
            v199 = Strong;
            v200 = sub_218FE7680(0x7548656C7A7A7570, 0xE900000000000062, v351);

            if (v200)
            {
              sub_219BEA7B4();
              if (*(&v367[1] + 1))
              {
                sub_219BDD274();
                v201 = swift_dynamicCast();
                v202 = v359;
                if (v201)
                {
                  v204 = v337;
                  v203 = v338;
                  v205 = v334;
                  (*(v337 + 104))(v334, *MEMORY[0x277D2F518], v338);
                  v206 = v333;
                  sub_219BDD094();
                  (*(v204 + 8))(v205, v203);
                  sub_219BDD204();

                  v207 = v206;
                  v198 = v363;
                  (*(v335 + 8))(v207, v336);
                }

                v208 = *(v364 + 8);
                v208(v351, v198);
                goto LABEL_115;
              }

              v208 = *(v364 + 8);
              v208(v351, v198);
              sub_2196C8400(v367, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8);
LABEL_114:
              v202 = v359;
LABEL_115:
              v329 = v200;
              sub_218A56C84();
              sub_21909C8A4(v329, v202);

              v208(v202, v198);
              v330 = v366;
              *v366 = v329;
              v331 = *MEMORY[0x277D6DF00];
              v332 = sub_219BE8464();
              (*(*(v332 - 8) + 104))(v330, v331, v332);
              goto LABEL_82;
            }
          }

          __swift_project_boxed_opaque_existential_1((v193 + 16), *(v193 + 40));
          sub_2186C709C(0, &qword_280EC68C0, &protocol descriptor for TagFeedAsyncModuleType, 1);
          sub_219BE1E34();
          if (!*(&v380 + 1))
          {
            __break(1u);
            return;
          }

          sub_2186CB1F0(&v379, v367);
          v323 = v351;
          if (qword_280EE5F48 != -1)
          {
            swift_once();
          }

          v324 = sub_219BE5434();
          v325 = __swift_project_value_buffer(v324, qword_280F62580);
          v326 = v340;
          (*(*(v324 - 8) + 16))(v340 + *(v339 + 36), v325, v324);
          *v326 = 0;
          *(v326 + 8) = 9;
          *(v326 + 16) = v192;
          *(v326 + 24) = 0x7548656C7A7A7570;
          *(v326 + 32) = 0xE900000000000062;
          *(v326 + 40) = 0u;
          *(v326 + 56) = 0u;
          *(v326 + 72) = -1;
          __swift_project_boxed_opaque_existential_1(v367, *(&v367[1] + 1));
          v327 = v192;
          v328 = sub_21940500C(v326);
          sub_2196C8A38(v326, type metadata accessor for TagFeedAsyncConfig);
          v208 = *(v364 + 8);
          v208(v323, v198);
          *&v373 = v328;
          __swift_destroy_boxed_opaque_existential_1(v367);
          v200 = v373;
          if (v373)
          {
            goto LABEL_114;
          }
        }

        else
        {
          *(&v374 + 1) = &type metadata for AlertContentRegionUnavailable;
          *&v375 = sub_2189F7F2C();
          (*(v364 + 8))(v194, v363);
          BYTE8(v375) = 1;
          sub_2196C83AC(&v373);
        }
      }

      else
      {
        if (qword_280EE5F80 != -1)
        {
          swift_once();
        }

        v262 = sub_219BE5434();
        __swift_project_value_buffer(v262, qword_280F625E0);
        v263 = sub_219BE5414();
        v264 = sub_219BF6214();
        if (os_log_type_enabled(v263, v264))
        {
          v265 = swift_slowAlloc();
          *v265 = 0;
          MEMORY[0x21CECF960](v265, -1, -1);
        }
      }

      v275 = *MEMORY[0x277D6DEF8];
      v276 = sub_219BE8464();
      (*(*(v276 - 8) + 104))(v366, v275, v276);
LABEL_82:
      sub_218932F9C(v191);
      return;
    case 0x3CuLL:
      v172 = __ROR8__(v385[0] + 0x1000000000000000, 3);
      v173 = v363;
      v174 = v359;
      if (v172 > 0xD)
      {
        goto LABEL_110;
      }

      if (((1 << v172) & 0x3CF0) != 0)
      {
        goto LABEL_3;
      }

      if (v172 == 8)
      {
        v97 = sub_2190FD33C();
        sub_218A554E8();
      }

      else if (v172 == 9)
      {
        v97 = sub_2190FD89C();
        sub_218A56C88();
      }

      else
      {
LABEL_110:
        if (v172 < 3)
        {
LABEL_3:
          v50 = MEMORY[0x277D6DEF0];
LABEL_4:
          v51 = *v50;
          v52 = sub_219BE8464();
          (*(*(v52 - 8) + 104))(v366, v51, v52);
          return;
        }

        v97 = sub_2190FCFC4();
        sub_218A56C84();
      }

      sub_21909C8A4(v97, v174);
      (*(v364 + 8))(v174, v173);
LABEL_9:
      v98 = v366;
      *v366 = v97;
      v99 = *MEMORY[0x277D6DF00];
      v100 = sub_219BE8464();
      (*(*(v100 - 8) + 104))(v98, v99, v100);
      return;
    default:
      sub_218932F9C(v385[0]);
      goto LABEL_3;
  }
}

uint64_t sub_2196C8018@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDD944();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  sub_2196C8D0C(a1, v6, type metadata accessor for NewsActivity2.Article);
  sub_2196C8470(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

  sub_2196C8AA4(v6, v12, MEMORY[0x277D2FB40]);
  v13 = sub_219BDD914();
  sub_2196C8A38(v12, MEMORY[0x277D2FB40]);
  if (v13)
  {
    *a2 = v13;
    v14 = MEMORY[0x277D33BC0];
  }

  else
  {
    sub_2196C8D0C(a1, v6, type metadata accessor for NewsActivity2.Article);

    sub_2196C8AA4(v6, v9, MEMORY[0x277D2FB40]);
    v15 = sub_219BDD8C4();
    v17 = v16;
    sub_2196C8A38(v9, MEMORY[0x277D2FB40]);
    *a2 = v15;
    a2[1] = v17;
    v14 = MEMORY[0x277D33B80];
  }

  v18 = *v14;
  v19 = sub_219BF2CB4();
  return (*(*(v19 - 8) + 104))(a2, v18, v19);
}

uint64_t sub_2196C8288()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 240));
  __swift_destroy_boxed_opaque_existential_1((v0 + 280));
  __swift_destroy_boxed_opaque_existential_1((v0 + 320));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 368));
  __swift_destroy_boxed_opaque_existential_1((v0 + 408));
  __swift_destroy_boxed_opaque_existential_1((v0 + 448));
  __swift_destroy_boxed_opaque_existential_1((v0 + 488));
  __swift_destroy_boxed_opaque_existential_1((v0 + 528));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 592));
  return v0;
}

uint64_t sub_2196C8370()
{
  sub_2196C8288();

  return swift_deallocClassInstance();
}

uint64_t sub_2196C8400(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_2186F8688(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2196C8470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

unint64_t sub_2196C84EC()
{
  result = qword_27CC1DF60;
  if (!qword_27CC1DF60)
  {
    sub_2186C6148(255, &qword_280E8E480, 0x277D75D28);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC1DF60);
  }

  return result;
}

uint64_t sub_2196C8588(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218834E54(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2196C8608(uint64_t a1, uint64_t a2)
{
  sub_2196C8698(0, &qword_27CC1DF78, &qword_280EA6BB0, &protocol descriptor for EngagementUpsellOfferManagerType, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2196C8698(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C709C(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double sub_2196C8704(uint64_t a1, uint64_t a2)
{
  sub_2187C5110(0);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = v2 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_2196C4618(a1, a2, v2 + v6, *v7, *(v7 + 8));
}

void sub_2196C8914(uint64_t a1, uint64_t a2)
{
  sub_2187C5110(0);
  v6 = (*(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80);
  v7 = v2 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_2196C35D4(a1, a2, *(v2 + 16), v2 + v6, *v7, *(v7 + 8));
}

double sub_2196C89D0()
{
  sub_2187C5110(0);
  v2 = *(v1 - 8);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return sub_2196C2ABC(v3, v4, v5, v6);
}

uint64_t sub_2196C8A38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2196C8AA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2196C8B0C()
{
  v1 = *(type metadata accessor for NewsActivity2.Article(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2187C5110(0);
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + v3);
  v8 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2196C20D4(v0 + v2, v7, v0 + v6, v8);
}

uint64_t sub_2196C8C14(void *a1)
{
  v3 = *(type metadata accessor for NewsActivity2.Article(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_2196C1BEC(a1, v4, v5);
}

uint64_t sub_2196C8C94(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_2196C8698(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2196C8D0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2196C8D74()
{
  sub_2187C5110(0);
  v2 = *(v1 - 8);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80)));

  return sub_2196C3484(v3, v4);
}

uint64_t sub_2196C8DD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2196C8E20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218834E54(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2196C8ED0()
{
  sub_2196C9308(v0, v9);
  v1 = v10;
  v2 = v11;
  v3 = v12;
  v7[0] = v10;
  v7[1] = v11;
  v8 = v12;
  v6[2] = v7;
  sub_218AB7B18(v10, v11, v12);
  v4 = sub_218FAE36C(sub_2196C9340, v6, &unk_282A22AE8);
  sub_218C113E0(v9);
  sub_21896755C(v1, v2, v3);
  return v4 & 1;
}

uint64_t sub_2196C8F88()
{
  sub_2196C9308(v0, v5);
  v3[8] = v5[8];
  v4[0] = v6[0];
  *(v4 + 9) = *(v6 + 9);
  v3[4] = v5[4];
  v3[5] = v5[5];
  v3[6] = v5[6];
  v3[7] = v5[7];
  v3[0] = v5[0];
  v3[1] = v5[1];
  v3[2] = v5[2];
  v3[3] = v5[3];
  v1 = *&v5[0];

  sub_218C113E0(v3);
  return v1;
}

uint64_t sub_2196C9010(uint64_t a1, uint64_t a2)
{
  v4 = sub_2196C925C();

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2196C905C(uint64_t a1, uint64_t a2)
{
  sub_2196C9308(a1, v9);
  sub_2196C9308(a2, v11);
  v7[8] = v9[8];
  v8[0] = v10[0];
  *(v8 + 9) = *(v10 + 9);
  v7[4] = v9[4];
  v7[5] = v9[5];
  v7[6] = v9[6];
  v7[7] = v9[7];
  v7[0] = v9[0];
  v7[1] = v9[1];
  v7[2] = v9[2];
  v7[3] = v9[3];
  v5[8] = v11[8];
  v6[0] = v12[0];
  *(v6 + 9) = *(v12 + 9);
  v5[4] = v11[4];
  v5[5] = v11[5];
  v5[6] = v11[6];
  v5[7] = v11[7];
  v5[0] = v11[0];
  v5[1] = v11[1];
  v5[2] = v11[2];
  v5[3] = v11[3];
  if (v9[0] == v11[0])
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_219BF78F4();
  }

  sub_218C113E0(v5);
  sub_218C113E0(v7);
  return v3 & 1;
}

unint64_t sub_2196C9154()
{
  result = qword_280EC4648;
  if (!qword_280EC4648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4648);
  }

  return result;
}

unint64_t sub_2196C91AC()
{
  result = qword_280EC4650;
  if (!qword_280EC4650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4650);
  }

  return result;
}

unint64_t sub_2196C9204()
{
  result = qword_280EC4678;
  if (!qword_280EC4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4678);
  }

  return result;
}

unint64_t sub_2196C925C()
{
  result = qword_280EC4670;
  if (!qword_280EC4670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4670);
  }

  return result;
}

unint64_t sub_2196C92B4()
{
  result = qword_280EC4668;
  if (!qword_280EC4668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4668);
  }

  return result;
}

BOOL sub_2196C9340(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v4 = *(v2 + 16);
  v8 = *a1;
  v9 = v3;
  v6 = *v2;
  v7 = v4;
  return _s7NewsUI225MagazineSectionConfigKindO2eeoiySbAC_ACtFZ_0(&v8, &v6);
}

uint64_t sub_2196C93C0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08890 != -1)
  {
    swift_once();
  }

  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC088A0 != -1)
  {
    swift_once();
  }

  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC088B0 != -1)
  {
    swift_once();
  }

  return sub_219BDC924();
}

uint64_t sub_2196C9580(void *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC088D8 != -1)
  {
    swift_once();
  }

  v8 = 0;
  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC088C8 != -1)
  {
    swift_once();
  }

  v7 = 0;
  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC088D0 != -1)
  {
    swift_once();
  }

  sub_219BDBBB4();
  sub_21871DBD4();
  sub_219BDC924();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2196C97E8(void *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC088F0 != -1)
  {
    swift_once();
  }

  v8 = 0;
  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC088E0 != -1)
  {
    swift_once();
  }

  v7 = 0;
  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC088E8 != -1)
  {
    swift_once();
  }

  sub_219BDBBB4();
  sub_21871DBD4();
  sub_219BDC924();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2196C9A50(void *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC088F8 != -1)
  {
    swift_once();
  }

  v7[1] = 0;
  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08900 != -1)
  {
    swift_once();
  }

  sub_219BDBBB4();
  sub_21871DBD4();
  sub_219BDC924();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2196C9C48(void *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_280EE9998 != -1)
  {
    swift_once();
  }

  v7[1] = 0;
  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_280EE9980 != -1)
  {
    swift_once();
  }

  sub_219BDBBB4();
  sub_21871DBD4();
  sub_219BDC924();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2196C9E40(void *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08908 != -1)
  {
    swift_once();
  }

  v7[1] = 0;
  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_280EE9970 != -1)
  {
    swift_once();
  }

  sub_219BDBBB4();
  sub_21871DBD4();
  sub_219BDC924();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2196CA038(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08918 != -1)
  {
    swift_once();
  }

  return sub_219BDC924();
}

uint64_t sub_2196CA114(void *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08928 != -1)
  {
    swift_once();
  }

  v8 = 0;
  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08930 != -1)
  {
    swift_once();
  }

  sub_219BDBBB4();
  sub_21871DBD4();
  sub_219BDC924();
  (*(v3 + 8))(v5, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08938 != -1)
  {
    swift_once();
  }

  v7[7] = 0;
  return sub_219BDC924();
}

uint64_t sub_2196CA37C(void *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08940 != -1)
  {
    swift_once();
  }

  v7[1] = 0;
  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08948 != -1)
  {
    swift_once();
  }

  sub_219BDBBB4();
  sub_21871DBD4();
  sub_219BDC924();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2196CA574(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_280EE99B0 != -1)
  {
    swift_once();
  }

  return sub_219BDC924();
}

uint64_t sub_2196CA66C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2196CA6C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_2196CA730()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2196CA7EC()
{
  v1 = *(v0 + 8);

  return v1;
}

void *sub_2196CA81C()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_2196CA874(uint64_t a1, uint64_t a2)
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_2196CA8E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2196CAAA0();

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2196CA92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

unint64_t sub_2196CA998()
{
  result = qword_27CC1E000;
  if (!qword_27CC1E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E000);
  }

  return result;
}

unint64_t sub_2196CA9F0()
{
  result = qword_27CC1E008;
  if (!qword_27CC1E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E008);
  }

  return result;
}

unint64_t sub_2196CAA48()
{
  result = qword_27CC1E010;
  if (!qword_27CC1E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E010);
  }

  return result;
}

unint64_t sub_2196CAAA0()
{
  result = qword_27CC1E018;
  if (!qword_27CC1E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E018);
  }

  return result;
}

unint64_t sub_2196CAAF8()
{
  result = qword_27CC1E020;
  if (!qword_27CC1E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E020);
  }

  return result;
}

void sub_2196CAB4C(uint64_t a1)
{
  sub_219BED0C4();
  v1 = objc_opt_self();
  v2 = sub_219BF53D4();
  sub_218A293AC();
  v3 = sub_219BF6BB4();
  v4 = [objc_opt_self() configurationWithFont_];

  v5 = [v1 ts:v2 internalSystemImageNamed:v4 withConfiguration:?];
  if (v5)
  {
    [v5 imageWithRenderingMode_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2196CAC68()
{
  v1 = v0[5];
  ObjectType = swift_getObjectType();
  (*(v1 + 64))(ObjectType, v1);
  __swift_project_boxed_opaque_existential_1(v0 + 6, v0[9]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_2196CAD40()
{
  v1 = type metadata accessor for ChannelPickerElementModel(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
  sub_218951C88(0);
  sub_219BE5FC4();
  sub_218F24588(v3);
  return sub_2189DA478(v3);
}

void *sub_2196CADE8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for EngagementAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a2 + 11, a2[14]);
  sub_218D2F4F4(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_219194CCC(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_219BDD154();

  v9 = __swift_project_boxed_opaque_existential_1(a2 + 6, a2[9]);
  __swift_project_boxed_opaque_existential_1((*v9 + 24), *(*v9 + 48));
  sub_218D2F5C8();
  result = sub_219BE1E34();
  if (v12)
  {
    sub_21875F93C(&v11, v13);
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_219BE6DC4();
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2196CAF9C(uint64_t a1)
{
  v3 = *(type metadata accessor for EngagementAction(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_219B5D804(a1, v4);
}

uint64_t ContinueReadingContent.identifier.getter()
{
  v1 = *v0;

  return v1;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2196CB0A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2196CB124()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2196CB198()
{
  v1 = *(*v0 + 48);

  return v1;
}

uint64_t sub_2196CB1CC(void *a1, double a2, double a3)
{
  v4 = v3;
  *(v4 + 24) = a1;
  sub_2196CB378(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000219D2E620;
  *(inited + 72) = sub_21897A4D4();
  *(inited + 80) = sub_2189EB528();
  *(inited + 48) = a1;
  v9 = a1;
  v10 = sub_2194AEC1C(inited);
  swift_setDeallocating();
  sub_218A4724C(inited + 32);
  *(v4 + 16) = v10;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  v11 = [v9 uniqueKey];
  v12 = sub_219BF5414();
  v14 = v13;

  *(v4 + 64) = v12;
  *(v4 + 72) = v14;
  v15 = [v9 uniqueKey];
  v16 = sub_219BF5414();
  v18 = v17;

  MEMORY[0x21CECC330](v16, v18);

  MEMORY[0x21CECC330](45, 0xE100000000000000);
  type metadata accessor for CGSize(0);
  sub_219BF7484();
  MEMORY[0x21CECC330](41, 0xE100000000000000);
  *(v4 + 48) = 0;
  *(v4 + 56) = 0xE000000000000000;
  return v4;
}

void sub_2196CB378(uint64_t a1)
{
  if (!qword_280E8B718)
  {
    sub_218A471D4(255);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8B718);
    }
  }
}

void sub_2196CB3D0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v39 = a2;
  v40 = a3;
  v44 = a4;
  v7 = type metadata accessor for EmailSignupViewModel(0);
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v42 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = v38 - v10;
  v11 = type metadata accessor for EmailSignupViewModelFactoryResult(0);
  MEMORY[0x28223BE20](v11);
  v13 = (v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = v38 - v15;
  v17 = *a1;
  v18 = a1[1];
  v19 = *(a1 + 16);
  v45 = *(a1 + 17);
  v46 = v19;
  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  sub_2196CB8C4();
  sub_219BE1E34();
  if (v50)
  {
    sub_2186CB1F0(&v47, v51);
    __swift_project_boxed_opaque_existential_1(v51, v51[3]);
    *&v47 = v17;
    *(&v47 + 1) = v18;
    v48 = v46;
    v49 = v45;
    sub_219AE48D0(&v47, v16);
    sub_2196CB98C(v16, v13, type metadata accessor for EmailSignupViewModelFactoryResult);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_2196CBAD4(v16, type metadata accessor for EmailSignupViewModelFactoryResult);
      v21 = v13;
      v22 = v44;
      sub_2186CB1F0(v21, v44);
LABEL_6:
      *(v22 + 40) = EnumCaseMultiPayload == 1;
      __swift_destroy_boxed_opaque_existential_1(v51);
      return;
    }

    v23 = v43;
    sub_2196CB928(v13, v43);
    v24 = v5[5];
    v38[1] = v5[6];
    v38[0] = __swift_project_boxed_opaque_existential_1(v5 + 2, v24);
    type metadata accessor for EmailSignupViewController(0);
    v25 = v23;
    v26 = v42;
    sub_2196CB98C(v25, v42, type metadata accessor for EmailSignupViewModel);
    v27 = (*(v41 + 80) + 34) & ~*(v41 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v17;
    *(v28 + 24) = v18;
    v29 = v45;
    *(v28 + 32) = v46;
    *(v28 + 33) = v29;
    sub_2196CB928(v26, v28 + v27);

    v30 = sub_219BE1E04();

    if (v30)
    {
      v31 = *(v30 + OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      (*(v31 + 32))(ObjectType, v31);
      v33 = swift_allocObject();
      v34 = v39;
      v35 = v40;
      *(v33 + 16) = v39;
      *(v33 + 24) = v35;
      sub_218CB34F0(v34);
      v36 = sub_219BE2E54();
      sub_218AB5E74();
      sub_219BE2F74();

      sub_2196CBAD4(v43, type metadata accessor for EmailSignupViewModel);
      sub_2196CBAD4(v16, type metadata accessor for EmailSignupViewModelFactoryResult);
      v37 = v44;
      *v44 = v30;
      v22 = v37;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2196CB7FC(void *a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for EmailSignupViewModel(0);
  return sub_219BE1BA4();
}

unint64_t sub_2196CB8C4()
{
  result = qword_280EA96A8[0];
  if (!qword_280EA96A8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280EA96A8);
  }

  return result;
}

uint64_t sub_2196CB928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmailSignupViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2196CB98C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2196CB9F4(void *a1)
{
  v3 = *(type metadata accessor for EmailSignupViewModel(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  if (*(v1 + 33))
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v8 = v1 + ((*(v3 + 80) + 34) & ~*(v3 + 80));

  return sub_2196CB7FC(a1, v4, v5, v7 | v6, v8);
}

void *sub_2196CBA80@<X0>(void *result@<X0>, BOOL *a2@<X8>)
{
  v4 = *(v2 + 16);
  if (v4)
  {
    result = v4(*result);
  }

  *a2 = v4 == 0;
  return result;
}

uint64_t sub_2196CBAD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for SportsScheduleTagFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E9A450;
  if (!qword_280E9A450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2196CBBA8(uint64_t a1)
{
  result = sub_219BF1934();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2196CBC2C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v19 = a2;
  v4 = sub_219BF1934();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196CC2E4(0, &qword_27CC1E028, MEMORY[0x277D844C8]);
  v21 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196CC23C();
  sub_219BF7B34();
  if (!v2)
  {
    v11 = v8;
    v12 = v20;
    v24 = 1;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    v13 = v4;
    v22 = 2;
    sub_2196CC290();
    sub_219BF7734();
    (*(v11 + 8))(v10, v21);
    v15 = v23;
    v16 = v19;
    *v19 = 13;
    v17 = type metadata accessor for SportsScheduleTagFeedGroupConfigData(0);
    (*(v12 + 32))(&v16[*(v17 + 20)], v6, v13);
    v16[*(v17 + 24)] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2196CBF00(void *a1)
{
  v3 = v1;
  sub_2196CC2E4(0, &qword_27CC1E040, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196CC23C();
  sub_219BF7B44();
  v12[15] = *v3;
  v12[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for SportsScheduleTagFeedGroupConfigData(0);
    v12[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
    sub_219BF7834();
    v12[12] = v3[*(v10 + 24)];
    v12[11] = 2;
    sub_2196CC348();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2196CC114()
{
  v1 = 0x746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x72756F5361746164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_2196CC16C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2196CC4B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2196CC194(uint64_t a1)
{
  v2 = sub_2196CC23C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2196CC1D0(uint64_t a1)
{
  v2 = sub_2196CC23C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2196CC23C()
{
  result = qword_27CC1E030;
  if (!qword_27CC1E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E030);
  }

  return result;
}

unint64_t sub_2196CC290()
{
  result = qword_27CC1E038;
  if (!qword_27CC1E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E038);
  }

  return result;
}

void sub_2196CC2E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2196CC23C();
    v7 = a3(a1, &type metadata for SportsScheduleTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2196CC348()
{
  result = qword_27CC1E048;
  if (!qword_27CC1E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E048);
  }

  return result;
}

unint64_t sub_2196CC3B0()
{
  result = qword_27CC1E050;
  if (!qword_27CC1E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E050);
  }

  return result;
}

unint64_t sub_2196CC408()
{
  result = qword_27CC1E058;
  if (!qword_27CC1E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E058);
  }

  return result;
}

unint64_t sub_2196CC460()
{
  result = qword_27CC1E060;
  if (!qword_27CC1E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E060);
  }

  return result;
}

uint64_t sub_2196CC4B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756F5361746164 && a2 == 0xEA00000000006563)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_2196CC5D4()
{
  sub_21896FA3C(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = *(v0 + 24);
  v9 = swift_allocObject();
  v10 = sub_219BDFA44();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = v8;
  sub_2187B14CC(v35, &v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (!*(&v30 + 1))
  {
    sub_2187448D0(&v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v15 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v17 = qword_280ED32E8;

    sub_2188202A8(v16);
    goto LABEL_8;
  }

  sub_21875F93C(&v29, &v31);
  __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
  sub_2187A53A0(0);
  result = sub_219BE1E24();
  if (result)
  {
    v12 = result;
    __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
    sub_2187367A8(0);
    result = sub_219BE1E24();
    if (result)
    {
      v13 = sub_219BED5B4();

      MEMORY[0x28223BE20](v14);
      *(&v26 - 2) = v12;
      *(&v26 - 1) = v13;
      sub_2186F8278(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
      swift_allocObject();
      v15 = sub_219BE30B4();

      __swift_destroy_boxed_opaque_existential_1(&v31);
      v16 = 0;
      v17 = 0;
LABEL_8:
      v28 = v9 | 0x4000000000000002;
      v30 = 0u;
      v29 = 0u;
      sub_2189B4E2C(v7, v4);
      sub_2187B14CC(v37, &v31, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v18 = (*(v2 + 80) + 24) & ~*(v2 + 80);
      v19 = (v3 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
      v20 = (v19 + 47) & 0xFFFFFFFFFFFFFFF8;
      v27 = v7;
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      sub_2189B4EAC(v4, v21 + v18);
      v22 = v21 + v19;
      v23 = v32;
      *v22 = v31;
      *(v22 + 16) = v23;
      *(v22 + 32) = v33;
      v24 = (v21 + v20);
      v25 = (v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v24 = 0;
      v24[1] = 0;
      *v25 = v15;
      v25[1] = v16;
      v25[2] = v17;

      sub_2188202A8(v16);
      sub_2186CF94C(0);
      sub_2196CCD0C(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
      sub_219BEB464();

      sub_2187FABEC(v16, v17);
      sub_2187448D0(v35, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_2187448D0(v37, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_218A42D80(v27);
      sub_2187448D0(&v29, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2196CCD0C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double sub_2196CCD54(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  sub_21896FA3C(0);
  v63 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v4;
  MEMORY[0x28223BE20](v5);
  v66 = &v62 - v6;
  v7 = sub_219BE8C14();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE9414();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  v18 = sub_219BDD944();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v20;
  v21 = type metadata accessor for SavedFeedRouteModel(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196CE020(a1, v23, type metadata accessor for SavedFeedRouteModel);
  v24 = v20;
  v25 = v67;
  sub_218B5E238(v23, v24, MEMORY[0x277D2FB40]);
  (*(v8 + 16))(v10, v25, v7);
  sub_219BE9424();
  (*(v12 + 104))(v14, *MEMORY[0x277D6E598], v11);
  sub_2186F7DF8(&unk_280EE44E0, MEMORY[0x277D6E5A8], MEMORY[0x277D6E5B0]);
  v69 = v17;
  LOBYTE(a1) = sub_219BF53A4();
  v26 = *(v12 + 8);
  v70 = v11;
  v71 = v12 + 8;
  v26(v14, v11);
  if ((a1 & 1) == 0)
  {
    v27 = sub_219BE8BF4();
    if (v27)
    {
      v28 = v27;
      sub_218C1A2CC(v81);
      v29 = v81[0];
      if ((~v81[0] & 0xF000000000000007) != 0)
      {
        v61 = v69;
        sub_219BE6474();

        v26(v61, v70);
        sub_218D0E588(v72, MEMORY[0x277D2FB40]);
        return sub_218970170(v29);
      }
    }
  }

  v30 = v68;
  v31 = *(v68 + 112);
  sub_2187B2C48(0);
  v33 = v32;
  v34 = swift_allocBox();
  v36 = v35;
  v37 = *(v33 + 48);
  sub_2187B2DA0(0);
  v39 = *(v38 + 48);
  sub_2196CE020(v72, v36, MEMORY[0x277D2FB40]);
  v40 = MEMORY[0x277D84F90];
  *(v36 + v39) = MEMORY[0x277D84F90];
  *(v36 + v37) = v40;
  v67 = v34;
  v41 = v34 | 2;
  v42 = *(v30 + 64);
  v43 = sub_219BDFA44();
  v44 = v66;
  (*(*(v43 - 8) + 56))(v66, 1, 1, v43);
  sub_218718690(v30 + 72, v81);
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  v78 = v31;
  sub_21896FEF0(v79, &v74, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  v62 = v26;
  if (v75)
  {
    sub_21875F93C(&v74, v76);
    *&v74 = v41;
    v45 = sub_2194DA78C(v76);
    v68 = v46;
    v48 = v47;
    __swift_destroy_boxed_opaque_existential_1(v76);
  }

  else
  {
    sub_21896FF74(&v74, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v45 = qword_280ED32D8;
    v49 = qword_280ED32E0;
    v48 = qword_280ED32E8;

    v68 = v49;
    sub_2188202A8(v49);
  }

  v73 = v41;
  v75 = sub_219BDD274();
  *&v74 = v42;
  v50 = v65;
  sub_2196CE020(v44, v65, sub_21896FA3C);
  sub_21896FEF0(v81, v76, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v51 = (*(v63 + 80) + 24) & ~*(v63 + 80);
  v52 = (v64 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 47) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  *(v54 + 16) = v42;
  sub_218B5E238(v50, v54 + v51, sub_21896FA3C);
  v55 = v54 + v52;
  v56 = v76[1];
  *v55 = v76[0];
  *(v55 + 16) = v56;
  *(v55 + 32) = v77;
  v57 = (v54 + v53);
  v58 = (v54 + ((v53 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v57 = 0;
  v57[1] = 0;
  v59 = v68;
  *v58 = v45;
  v58[1] = v59;
  v58[2] = v48;
  swift_retain_n();

  sub_2188202A8(v59);
  sub_2186CF94C(0);
  sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  sub_219BEB464();

  sub_2187FABEC(v59, v48);
  sub_21896FF74(v79, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_21896FF74(v81, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218D0E588(v44, sub_21896FA3C);
  v62(v69, v70);
  sub_218D0E588(v72, MEMORY[0x277D2FB40]);
  sub_218806FD0(&v74);

  return result;
}

uint64_t sub_2196CD744(uint64_t a1)
{
  sub_21896F9B8(0);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = (&v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v59 - v8;
  sub_21896FA3C(0);
  v65 = *(v9 - 8);
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - v12;
  v62 = sub_219BDD944();
  MEMORY[0x28223BE20](v62);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = &v59 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v21 = type metadata accessor for SavedFeedRouteModel(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196CE020(a1, v23, type metadata accessor for SavedFeedRouteModel);
  sub_218B5E238(v23, v20, MEMORY[0x277D2FB40]);
  v24 = *(v1 + 112);
  sub_2187B2C48(0);
  v26 = v25;
  v67 = swift_allocBox();
  v28 = v27;
  v29 = *(v26 + 48);
  sub_2187B2DA0(0);
  v31 = *(v30 + 48);
  v68 = v20;
  sub_2196CE020(v20, v28, MEMORY[0x277D2FB40]);
  v32 = MEMORY[0x277D84F90];
  *(v28 + v31) = MEMORY[0x277D84F90];
  v33 = v13;
  *(v28 + v29) = v32;
  v34 = *(v1 + 64);
  v35 = sub_219BDFA44();
  (*(*(v35 - 8) + 56))(v13, 1, 1, v35);
  sub_218718690(v1 + 72, v72);
  v71[5] = v24;
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  v36 = sub_219BDC8C4();

  if (v36)
  {
    v37 = v28;
    v38 = v64;
    sub_2196CE020(v37, v64, type metadata accessor for NewsActivity2.Article);
    v39 = v63;
    sub_2196CE020(v38, v63, type metadata accessor for NewsActivity2.Article);

    sub_218B5E238(v39, v15, MEMORY[0x277D2FB40]);
    sub_218D0E588(v38, type metadata accessor for NewsActivity2.Article);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = swift_projectBox();
      v41 = v59;
      sub_2196CE020(v40, v59, sub_21896F9B8);
      v42 = v61;
      sub_218B5E238(v41 + *(v60 + 48), v61, MEMORY[0x277D2FB40]);
      __swift_destroy_boxed_opaque_existential_1(v41);

      sub_2186C66AC();
      v43 = sub_219BF6F44();
      sub_2186C6FC8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_219C09BA0;
      v45 = sub_219BDD8C4();
      v47 = v46;
      *(v44 + 56) = MEMORY[0x277D837D0];
      *(v44 + 64) = sub_2186FC3BC();
      *(v44 + 32) = v45;
      *(v44 + 40) = v47;
      v48 = sub_219BF6214();
      sub_219BE5314("Unable to preview for blocked headline: %{public}@", 50, 2, &dword_2186C1000, v43, v48, v44);

      v49 = MEMORY[0x277D2FB40];
      sub_218D0E588(v42, MEMORY[0x277D2FB40]);
      sub_21896FF74(v72, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_218D0E588(v33, sub_21896FA3C);
      sub_218D0E588(v68, v49);

      return 0;
    }

    sub_218D0E588(v15, MEMORY[0x277D2FB40]);
  }

  v71[4] = v67 | 2;
  v71[3] = sub_219BDD274();
  v71[0] = v34;
  v50 = v66;
  sub_2196CE020(v33, v66, sub_21896FA3C);
  sub_21896FEF0(v72, v69, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v51 = (*(v65 + 80) + 24) & ~*(v65 + 80);
  v52 = (v10 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  *(v53 + 16) = v34;
  sub_218B5E238(v50, v53 + v51, sub_21896FA3C);
  v54 = v53 + v52;
  v55 = v69[1];
  *v54 = v69[0];
  *(v54 + 16) = v55;
  *(v54 + 32) = v70;
  v56 = (v53 + ((v52 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v56 = 0;
  v56[1] = 0;
  sub_2186CF94C(0);
  sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  swift_retain_n();
  v58 = sub_219BEB454();

  sub_21896FF74(v72, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218D0E588(v33, sub_21896FA3C);
  sub_218D0E588(v68, MEMORY[0x277D2FB40]);
  sub_218806FD0(v71);

  return v58;
}

uint64_t sub_2196CE020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_2196CE088(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC7NewsUI233SubscriberStatusConditionProvider_statusConditions;
  v11 = MEMORY[0x277D84F90];
  sub_2196CE6B0(0, &qword_280EE7B40, sub_2196CE67C, MEMORY[0x277D6CB60]);
  swift_allocObject();
  *&v2[v6] = sub_219BE20D4();
  *&v2[OBJC_IVAR____TtC7NewsUI233SubscriberStatusConditionProvider_appConfigurationManager] = a1;
  *&v2[OBJC_IVAR____TtC7NewsUI233SubscriberStatusConditionProvider_bundleSubscriptionManager] = a2;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = objc_msgSendSuper2(&v10, sel_init);
  [a1 addAppConfigObserver_];
  [a2 addObserver_];
  v8 = [a1 possiblyUnfetchedAppConfiguration];
  sub_2196CEB6C();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_2196CE1F0@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_219BEBF64();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v28 - v16;
  v18 = [a1 unsignedIntegerValue];
  if (v18)
  {
    if (v18 == 2)
    {
      v21 = [a2 identifier];
      sub_219BF5414();

      v22 = [*(a4 + OBJC_IVAR____TtC7NewsUI233SubscriberStatusConditionProvider_bundleSubscriptionManager) cachedSubscription];
      LODWORD(v21) = [v22 isServicesBundleUser];

      if (v21)
      {
        if (a3)
        {
          v23 = MEMORY[0x277D2D478];
        }

        else
        {
          v23 = MEMORY[0x277D2D480];
        }

        (*(v11 + 104))(v13, *v23, v10);
      }

      else
      {
        (*(v11 + 104))(v13, *MEMORY[0x277D2D480], v10);
      }

      goto LABEL_16;
    }

    if (v18 == 1)
    {
      v19 = [a2 identifier];
      sub_219BF5414();

      v20 = MEMORY[0x277D2D478];
      if ((a3 & 1) == 0)
      {
        v20 = MEMORY[0x277D2D480];
      }

      (*(v11 + 104))(v17, *v20, v10);
LABEL_16:
      sub_219BEBF54();
      v27 = sub_219BEBF74();
      return (*(*(v27 - 8) + 56))(a5, 0, 1, v27);
    }
  }

  v24 = sub_219BEBF74();
  v25 = *(*(v24 - 8) + 56);

  return v25(a5, 1, 1, v24);
}

void sub_2196CE5A4(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7NewsUI233SubscriberStatusConditionProvider_appConfigurationManager];
  v3 = a1;
  v2 = [v1 possiblyUnfetchedAppConfiguration];
  sub_2196CEB6C();
  swift_unknownObjectRelease();
}

void sub_2196CE6B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2196CE714(unint64_t a1, void (*a2)(id, id), uint64_t a3)
{
  v50 = a2;
  v51 = a3;
  sub_2196CEFA0(0);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_219BEBF74();
  v7 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = &v41 - v10;
  v46 = v3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = sub_219BF74D4() | 0x8000000000000000;
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v12 = ~v15;
    v11 = a1 + 64;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v13 = v17 & *(a1 + 64);
    v14 = a1;
  }

  v18 = 0;
  v45 = v12;
  v48 = (v7 + 48);
  v42 = v7;
  v43 = (v7 + 32);
  v47 = MEMORY[0x277D84F90];
  v53 = v14;
LABEL_8:
  v19 = v18;
  v20 = v13;
  if ((v14 & 0x8000000000000000) != 0)
  {
    do
    {
      v28 = sub_219BF7504();
      if (!v28)
      {
        goto LABEL_25;
      }

      v30 = v29;
      v54 = v28;
      sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
      swift_dynamicCast();
      v26 = v55;
      v54 = v30;
      sub_2186C6148(0, &unk_280E8E2C8, 0x277D30DB8);
      swift_dynamicCast();
      v27 = v55;
      v18 = v19;
      v13 = v20;
      if (!v26)
      {
        goto LABEL_25;
      }

LABEL_17:
      v31 = v49;
      v50(v26, v27);

      if ((*v48)(v31, 1, v52) != 1)
      {
        v32 = *v43;
        v33 = v41;
        v34 = v31;
        v35 = v52;
        (*v43)(v41, v34, v52);
        v32(v44, v33, v35);
        v36 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_2191FA5A4(0, v36[2] + 1, 1, v36);
        }

        v37 = v42;
        v39 = v36[2];
        v38 = v36[3];
        if (v39 >= v38 >> 1)
        {
          v36 = sub_2191FA5A4((v38 > 1), v39 + 1, 1, v36);
        }

        v36[2] = v39 + 1;
        v40 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v47 = v36;
        v32(v36 + v40 + *(v37 + 72) * v39, v44, v52);
        v14 = v53;
        goto LABEL_8;
      }

      sub_21874576C(v31, sub_2196CEFA0);
      v19 = v18;
      v20 = v13;
      v14 = v53;
    }

    while ((v53 & 0x8000000000000000) != 0);
  }

  v21 = v19;
  v22 = v20;
  v18 = v19;
  if (v20)
  {
LABEL_13:
    v13 = (v22 - 1) & v22;
    v23 = (v18 << 9) | (8 * __clz(__rbit64(v22)));
    v24 = *(*(v14 + 48) + v23);
    v25 = *(*(v14 + 56) + v23);
    v26 = v24;
    v27 = v25;
    if (v26)
    {
      goto LABEL_17;
    }

LABEL_25:
    sub_21892DE98(v53);
    return;
  }

  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= ((v12 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v22 = *(v11 + 8 * v18);
    ++v21;
    if (v22)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_2196CEB6C()
{
  v1 = [objc_msgSend(*(v0 + OBJC_IVAR____TtC7NewsUI233SubscriberStatusConditionProvider_appConfigurationManager) appConfiguration)];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = [v1 adStatusConditionsByType];

    if (!v2)
    {
      *&v17 = MEMORY[0x277D84F90];
      sub_2196CEEC4();
      sub_219BE2114();
      return;
    }

    sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
    sub_2186C6148(0, &unk_280E8E2C8, 0x277D30DB8);
    sub_218B9E44C();
    v3 = sub_219BF5214();

    v4 = [*(v0 + OBJC_IVAR____TtC7NewsUI233SubscriberStatusConditionProvider_bundleSubscriptionManager) cachedSubscription];
    if (objc_getAssociatedObject(v4, v4 + 1))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17 = v15;
    v18 = v16;
    if (*(&v16 + 1))
    {
      if (swift_dynamicCast())
      {
        v5 = v14;
        v6 = [v14 integerValue];
        if (v6 == -1)
        {
          goto LABEL_20;
        }

        goto LABEL_13;
      }
    }

    else
    {
      sub_21874576C(&v17, sub_21880702C);
    }

    v5 = 0;
    v6 = 0;
LABEL_13:
    if (objc_getAssociatedObject(v4, ~v6))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17 = v15;
    v18 = v16;
    if (*(&v16 + 1))
    {
      if (swift_dynamicCast())
      {
        v7 = v14;
        [v7 integerValue];

LABEL_21:
        MEMORY[0x28223BE20](v8);
        v12[16] = v9 & 1;
        v13 = v0;
        sub_2196CE714(v3, sub_2196CEF94, v12);
        v11 = v10;

        *&v17 = v11;
        sub_2196CEEC4();
        sub_219BE2114();

        return;
      }
    }

    else
    {
      sub_21874576C(&v17, sub_21880702C);
    }

LABEL_20:

    goto LABEL_21;
  }

  __break(1u);
}