uint64_t sub_218F30674@<X0>(uint64_t *a1@<X8>)
{
  v69 = a1;
  v1 = sub_219BF0B74();
  v62 = *(v1 - 8);
  v63 = v1;
  MEMORY[0x28223BE20](v1);
  v61 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC1C60(0);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F1164(0);
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x28223BE20](v5);
  v64 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF04A4();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0F3C(0);
  v57 = v10;
  v60 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF0F34();
  v56 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC1C94(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0E54(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F310C8(v68, v26, type metadata accessor for TagFeedModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8], "location offlineModel ");
      v50 = *(v49 + 48);
      v51 = sub_219BF1584();
      (*(*(v51 - 8) + 8))(&v26[v50], v51);
      v27 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_3;
    case 2u:
      (*(v21 + 32))(v23, v26, v20);
      sub_219BF07D4();
      sub_219BF0F14();
      (*(v56 + 8))(v15, v13);
      sub_219BF1624();
      v41 = sub_219BF1634();
      v42 = *(v41 - 8);
      if ((*(v42 + 48))(v18, 1, v41) == 1)
      {
        (*(v21 + 8))(v23, v20);
        v38 = sub_218AC1C94;
        goto LABEL_12;
      }

      v54 = v69;
      v69[3] = v41;
      v54[4] = sub_2186EFCF4(&qword_280E90860, MEMORY[0x277D33410], MEMORY[0x277D33408]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
      (*(v42 + 32))(boxed_opaque_existential_1, v18, v41);
      result = (*(v21 + 8))(v23, v20);
      break;
    case 3u:
      v44 = v60;
      v45 = v57;
      (*(v60 + 32))(v12, v26, v57);
      sub_219BF07D4();
      sub_219BF0404();
      (*(v58 + 8))(v9, v59);
      v46 = sub_219BF09E4();
      v47 = v69;
      v69[3] = v46;
      v47[4] = sub_2186EFCF4(&qword_280E90CA8, MEMORY[0x277D32FA8], MEMORY[0x277D32F98]);
      __swift_allocate_boxed_opaque_existential_1(v47);
      sub_219BF09D4();
      return (*(v44 + 8))(v12, v45);
    case 4u:
    case 5u:
    case 6u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
      v27 = type metadata accessor for TagFeedModel;
LABEL_3:
      v28 = v27;
      v29 = v26;
      goto LABEL_4;
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54, " fallback ");
      (*(v21 + 8))(&v26[*(v39 + 48)], v20);
      sub_2186EAD48(0);
      result = (*(*(v40 - 8) + 8))(v26, v40);
      goto LABEL_5;
    case 0xEu:
      v33 = v64;
      v32 = v65;
      v34 = v66;
      (*(v65 + 32))(v64, v26, v66);
      v35 = v61;
      sub_219BF07D4();
      sub_219BF0B44();
      (*(v62 + 8))(v35, v63);
      v18 = v67;
      sub_219BED9C4();
      v36 = sub_219BED9D4();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v18, 1, v36) == 1)
      {
        (*(v32 + 8))(v33, v34);
        v38 = sub_218AC1C60;
LABEL_12:
        result = sub_218F31004(v18, v38);
        v43 = v69;
        *v69 = 0u;
        *(v43 + 1) = 0u;
        v43[4] = 0;
      }

      else
      {
        v52 = v69;
        v69[3] = v36;
        v52[4] = sub_2186EFCF4(&qword_27CC0D938, MEMORY[0x277D31CE8], MEMORY[0x277D31CE0]);
        v53 = __swift_allocate_boxed_opaque_existential_1(v52);
        (*(v37 + 32))(v53, v18, v36);
        result = (*(v32 + 8))(v33, v34);
      }

      break;
    default:

      sub_2186F0CC0(0);
      v28 = type metadata accessor for TagFeedGapLocation;
      v29 = &v26[*(v48 + 48)];
LABEL_4:
      result = sub_218F31004(v29, v28);
LABEL_5:
      v31 = v69;
      v69[4] = 0;
      *v31 = 0u;
      *(v31 + 1) = 0u;
      return result;
  }

  return result;
}

uint64_t sub_218F31004(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218F31064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218F310C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218F31164(uint64_t a1, char *a2)
{
  v254 = a2;
  v255 = a1;
  sub_2186F1164(0);
  v236 = *(v2 - 8);
  v237 = v2;
  MEMORY[0x28223BE20](v2);
  v219 = &v193 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v218 = &v193 - v5;
  sub_2186F7328(0);
  v235 = v6;
  v234 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v217 = &v193 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v216 = &v193 - v9;
  sub_2186F107C(0);
  v233 = v10;
  v232 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v215 = &v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v214 = &v193 - v13;
  sub_2186FB04C(0);
  v231 = v14;
  v230 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v213 = &v193 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v211 = &v193 - v17;
  sub_2186F7240(0);
  v229 = v18;
  v228 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v209 = &v193 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v208 = &v193 - v21;
  sub_2186FAF54(0);
  v227 = v22;
  v226 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v207 = &v193 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v206 = &v193 - v25;
  sub_2186EAD48(0);
  v249 = *(v26 - 8);
  v250 = v26;
  MEMORY[0x28223BE20](v26);
  v212 = &v193 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v210 = &v193 - v29;
  v223 = sub_219BF0D74();
  v222 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v201 = &v193 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v200 = &v193 - v32;
  sub_2186F7158(0);
  v225 = v33;
  v224 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v203 = &v193 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v202 = &v193 - v36;
  sub_2186F0F3C(0);
  v221 = v37;
  v220 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v199 = &v193 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v198 = &v193 - v40;
  sub_2186F0E54(0);
  v251 = *(v41 - 8);
  v252 = v41;
  MEMORY[0x28223BE20](v41);
  v205 = &v193 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v204 = &v193 - v44;
  MEMORY[0x28223BE20](v45);
  v197 = &v193 - v46;
  MEMORY[0x28223BE20](v47);
  v196 = &v193 - v48;
  v49 = sub_219BF1584();
  v247 = *(v49 - 8);
  v248 = v49;
  MEMORY[0x28223BE20](v49);
  v195 = &v193 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v194 = &v193 - v52;
  v53 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v53);
  v253 = &v193 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v245 = &v193 - v56;
  MEMORY[0x28223BE20](v57);
  v244 = &v193 - v58;
  MEMORY[0x28223BE20](v59);
  v243 = &v193 - v60;
  MEMORY[0x28223BE20](v61);
  v241 = &v193 - v62;
  MEMORY[0x28223BE20](v63);
  v240 = &v193 - v64;
  MEMORY[0x28223BE20](v65);
  v239 = &v193 - v66;
  MEMORY[0x28223BE20](v67);
  v69 = (&v193 - v68);
  MEMORY[0x28223BE20](v70);
  v242 = &v193 - v71;
  MEMORY[0x28223BE20](v72);
  v238 = &v193 - v73;
  MEMORY[0x28223BE20](v74);
  v76 = &v193 - v75;
  MEMORY[0x28223BE20](v77);
  v79 = &v193 - v78;
  MEMORY[0x28223BE20](v80);
  v82 = &v193 - v81;
  MEMORY[0x28223BE20](v83);
  v85 = &v193 - v84;
  MEMORY[0x28223BE20](v86);
  v246 = &v193 - v87;
  MEMORY[0x28223BE20](v88);
  v90 = (&v193 - v89);
  sub_218F33010(0);
  MEMORY[0x28223BE20](v91 - 8);
  v93 = &v193 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = &v93[*(v94 + 56)];
  sub_218F310C8(v255, v93, type metadata accessor for TagFeedModel);
  v96 = v254;
  v254 = v95;
  sub_218F310C8(v96, v95, type metadata accessor for TagFeedModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v145 = v246;
      sub_218F310C8(v93, v246, type metadata accessor for TagFeedModel);
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8], "location offlineModel ");
      v147 = *(v146 + 48);
      v148 = v254;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v149 = v247;
        v150 = *(v247 + 32);
        v151 = v145 + v147;
        v152 = v194;
        v153 = v248;
        v150(v194, v151, v248);
        v154 = v195;
        v150(v195, v148 + v147, v153);
        v144 = MEMORY[0x21CEC82E0](v152, v154);
        v155 = *(v149 + 8);
        v155(v154, v153);
        v155(v152, v153);
        sub_218F31004(v148, type metadata accessor for TagFeedGapLocation);
        v156 = v246;
        goto LABEL_70;
      }

      (*(v247 + 8))(v145 + v147, v248);
      sub_218F31004(v145, type metadata accessor for TagFeedGapLocation);
      goto LABEL_52;
    case 2u:
      sub_218F310C8(v93, v85, type metadata accessor for TagFeedModel);
      v124 = v254;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v106 = v251;
        v105 = v252;
        v125 = *(v251 + 32);
        v108 = v196;
        v125(v196, v85, v252);
        v109 = v197;
        v125(v197, v124, v105);
        sub_219BF0F34();
        sub_2186FAF08();
        v110 = MEMORY[0x277D33058];
        sub_2186EFCF4(&unk_280E90A40, MEMORY[0x277D33058], MEMORY[0x277D33060]);
        v111 = &qword_280E90A50;
        v112 = MEMORY[0x277D33050];
        goto LABEL_31;
      }

      (*(v251 + 8))(v85, v252);
      goto LABEL_52;
    case 3u:
      sub_218F310C8(v93, v82, type metadata accessor for TagFeedModel);
      v126 = v254;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v106 = v220;
        v127 = *(v220 + 32);
        v108 = v198;
        v105 = v221;
        v127(v198, v82, v221);
        v109 = v199;
        v127(v199, v126, v105);
        sub_219BF04A4();
        sub_2186FAF08();
        v110 = MEMORY[0x277D32CE0];
        sub_2186EFCF4(&unk_280E90F10, MEMORY[0x277D32CE0], MEMORY[0x277D32CE8]);
        v111 = &unk_280E90F20;
        v112 = MEMORY[0x277D32C98];
        goto LABEL_31;
      }

      v178 = *(v220 + 8);
      v179 = v82;
      v180 = &v253;
      goto LABEL_51;
    case 4u:
      sub_218F310C8(v93, v79, type metadata accessor for TagFeedModel);
      v116 = v254;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v106 = v224;
        v117 = *(v224 + 32);
        v108 = v202;
        v105 = v225;
        v117(v202, v79, v225);
        v109 = v203;
        v117(v203, v116, v105);
        sub_219BF1094();
        sub_2186FAF08();
        v110 = MEMORY[0x277D330F8];
        sub_2186EFCF4(&unk_280E909A0, MEMORY[0x277D330F8], MEMORY[0x277D33100]);
        v111 = &qword_280E909B0;
        v112 = MEMORY[0x277D330E8];
        goto LABEL_31;
      }

      v178 = *(v224 + 8);
      v179 = v79;
      v180 = &v256;
      goto LABEL_51;
    case 5u:
      sub_218F310C8(v93, v76, type metadata accessor for TagFeedModel);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        sub_219BE5BA4();
        v144 = sub_219BE5B74();

        goto LABEL_32;
      }

      goto LABEL_52;
    case 6u:
      v160 = v238;
      sub_218F310C8(v93, v238, type metadata accessor for TagFeedModel);
      v161 = v254;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v162 = v222;
        v163 = *(v222 + 32);
        v164 = v200;
        v165 = v160;
        v166 = v223;
        v163(v200, v165, v223);
        v167 = v201;
        v163(v201, v161, v166);
        v144 = sub_219BF0D64();
        v168 = *(v162 + 8);
        v168(v167, v166);
        v168(v164, v166);
        goto LABEL_32;
      }

      v178 = *(v222 + 8);
      v179 = v160;
      v180 = &v255;
      goto LABEL_51;
    case 7u:
      v128 = v242;
      sub_218F310C8(v93, v242, type metadata accessor for TagFeedModel);
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54, " fallback ");
      v130 = *(v129 + 48);
      v131 = v254;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        (*(v251 + 8))(v128 + v130, v252);
        (*(v249 + 8))(v128, v250);
        goto LABEL_52;
      }

      v132 = v250;
      v133 = *(v249 + 32);
      v134 = v210;
      v133(v210, v128, v250);
      v135 = v212;
      v133(v212, v131, v132);
      v136 = v252;
      v137 = *(v251 + 32);
      v138 = v128 + v130;
      v139 = v204;
      v137(v204, v138, v252);
      v140 = &v131[v130];
      v141 = v205;
      v137(v205, v140, v136);
      sub_219BEC504();
      v142 = MEMORY[0x277D2D6B0];
      sub_2186EFCF4(&unk_280EE32C0, MEMORY[0x277D2D6B0], MEMORY[0x277D2D6B8]);
      sub_2186EFCF4(&qword_280EE32D0, v142, MEMORY[0x277D2D698]);
      if (sub_219BF07C4())
      {
        sub_219BF0F34();
        sub_2186FAF08();
        v143 = MEMORY[0x277D33058];
        sub_2186EFCF4(&unk_280E90A40, MEMORY[0x277D33058], MEMORY[0x277D33060]);
        sub_2186EFCF4(&qword_280E90A50, v143, MEMORY[0x277D33050]);
        v144 = sub_219BF07C4();
      }

      else
      {
        v144 = 0;
      }

      v189 = v252;
      v190 = *(v251 + 8);
      v190(v141, v252);
      v190(v139, v189);
      v191 = v250;
      v192 = *(v249 + 8);
      v192(v135, v250);
      v192(v134, v191);
      goto LABEL_32;
    case 8u:
      sub_218F310C8(v93, v69, type metadata accessor for TagFeedModel);
      v174 = *v69;
      v173 = v69[1];
      v175 = v254;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_37;
      }

      v176 = *v175;
      v177 = *(v175 + 1);
      if (v174 == v176 && v173 == v177)
      {
        v144 = 1;
      }

      else
      {
        v144 = sub_219BF78F4();
      }

      goto LABEL_32;
    case 9u:
      v121 = v239;
      sub_218F310C8(v93, v239, type metadata accessor for TagFeedModel);
      v122 = v254;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v106 = v226;
        v123 = *(v226 + 32);
        v108 = v206;
        v105 = v227;
        v123(v206, v121, v227);
        v109 = v207;
        v123(v207, v122, v105);
        sub_219BEDAE4();
        sub_2186FAF08();
        v110 = MEMORY[0x277D31D50];
        sub_2186EFCF4(&unk_280E92550, MEMORY[0x277D31D50], MEMORY[0x277D31D58]);
        v111 = &unk_280E92560;
        v112 = MEMORY[0x277D31D30];
        goto LABEL_31;
      }

      v178 = *(v226 + 8);
      v179 = v121;
      v180 = &v257;
      goto LABEL_51;
    case 0xAu:
      v169 = v240;
      sub_218F310C8(v93, v240, type metadata accessor for TagFeedModel);
      v170 = v254;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v106 = v228;
        v171 = *(v228 + 32);
        v108 = v208;
        v105 = v229;
        v171(v208, v169, v229);
        v109 = v209;
        v171(v209, v170, v105);
        sub_219BF07A4();
        sub_2186FAF08();
        v110 = MEMORY[0x277D32F68];
        sub_2186EFCF4(&unk_280E90E90, MEMORY[0x277D32F68], MEMORY[0x277D32F70]);
        v111 = &qword_280E90EA0;
        v112 = MEMORY[0x277D32F20];
        goto LABEL_31;
      }

      v178 = *(v228 + 8);
      v179 = v169;
      v180 = &v258;
      goto LABEL_51;
    case 0xBu:
      v113 = v241;
      sub_218F310C8(v93, v241, type metadata accessor for TagFeedModel);
      v114 = v254;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v106 = v230;
        v115 = *(v230 + 32);
        v108 = v211;
        v105 = v231;
        v115(v211, v113, v231);
        v109 = v213;
        v115(v213, v114, v105);
        sub_219BF0AC4();
        sub_2186FAF08();
        v110 = MEMORY[0x277D32FB8];
        sub_2186EFCF4(&unk_280E90C90, MEMORY[0x277D32FB8], MEMORY[0x277D32FC0]);
        v111 = &qword_280E90CA0;
        v112 = MEMORY[0x277D32FB0];
        goto LABEL_31;
      }

      v178 = *(v230 + 8);
      v179 = v113;
      v180 = &v259;
      goto LABEL_51;
    case 0xCu:
      v118 = v243;
      sub_218F310C8(v93, v243, type metadata accessor for TagFeedModel);
      v119 = v254;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v106 = v232;
        v120 = *(v232 + 32);
        v108 = v214;
        v105 = v233;
        v120(v214, v118, v233);
        v109 = v215;
        v120(v215, v119, v105);
        sub_219BEDB94();
        sub_2186FAF08();
        v110 = MEMORY[0x277D31DE8];
        sub_2186EFCF4(&unk_280E924E0, MEMORY[0x277D31DE8], MEMORY[0x277D31DF0]);
        v111 = &qword_280E924F0;
        v112 = MEMORY[0x277D31DE0];
        goto LABEL_31;
      }

      v178 = *(v232 + 8);
      v179 = v118;
      v180 = &v260;
LABEL_51:
      v178(v179, *(v180 - 32));
      goto LABEL_52;
    case 0xDu:
      v157 = v244;
      sub_218F310C8(v93, v244, type metadata accessor for TagFeedModel);
      v158 = v254;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v106 = v234;
        v159 = *(v234 + 32);
        v108 = v216;
        v105 = v235;
        v159(v216, v157, v235);
        v109 = v217;
        v159(v217, v158, v105);
        sub_219BEEAD4();
        sub_2186FAF08();
        v110 = MEMORY[0x277D32260];
        sub_2186EFCF4(&qword_280E91968, MEMORY[0x277D32260], MEMORY[0x277D32268]);
        v111 = &unk_280E91970;
        v112 = MEMORY[0x277D32258];
        goto LABEL_31;
      }

      (*(v234 + 8))(v157, v235);
      goto LABEL_52;
    case 0xEu:
      v103 = v245;
      sub_218F310C8(v93, v245, type metadata accessor for TagFeedModel);
      v104 = v254;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        (*(v236 + 8))(v103, v237);
        goto LABEL_52;
      }

      v106 = v236;
      v105 = v237;
      v107 = *(v236 + 32);
      v108 = v218;
      v107(v218, v103, v237);
      v109 = v219;
      v107(v219, v104, v105);
      sub_219BF0B74();
      sub_2186FAF08();
      v110 = MEMORY[0x277D32FD0];
      sub_2186EFCF4(&unk_280E90C70, MEMORY[0x277D32FD0], MEMORY[0x277D32FD8]);
      v111 = &unk_280E90C80;
      v112 = MEMORY[0x277D32FC8];
LABEL_31:
      sub_2186EFCF4(v111, v110, v112);
      v144 = sub_219BF07C4();
      v172 = *(v106 + 8);
      v172(v109, v105);
      v172(v108, v105);
      goto LABEL_32;
    default:
      sub_218F310C8(v93, v90, type metadata accessor for TagFeedModel);
      v98 = *v90;
      v97 = v90[1];
      sub_2186F0CC0(0);
      v100 = v99;
      v101 = *(v99 + 48);
      v102 = v254;
      if (swift_getEnumCaseMultiPayload())
      {
        sub_218F31004(v90 + v101, type metadata accessor for TagFeedGapLocation);
LABEL_37:

LABEL_52:
        sub_218F31004(v93, sub_218F33010);
        v181 = v253;
        sub_218F310C8(v255, v253, type metadata accessor for TagFeedModel);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8], "location offlineModel ");
            (*(v247 + 8))(v181 + *(v188 + 48), v248);
            v182 = type metadata accessor for TagFeedGapLocation;
            goto LABEL_54;
          case 2u:
          case 3u:
          case 4u:
          case 5u:
          case 6u:
          case 8u:
          case 9u:
          case 0xAu:
          case 0xBu:
          case 0xCu:
          case 0xDu:
          case 0xEu:
            v182 = type metadata accessor for TagFeedModel;
LABEL_54:
            v183 = v182;
            v184 = v181;
            goto LABEL_55;
          case 7u:
            sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54, " fallback ");
            (*(v251 + 8))(v181 + *(v186 + 48), v252);
            (*(v249 + 8))(v181, v250);
            goto LABEL_56;
          default:

            sub_2186F0CC0(0);
            v183 = type metadata accessor for TagFeedGapLocation;
            v184 = v181 + *(v187 + 48);
LABEL_55:
            sub_218F31004(v184, v183);
LABEL_56:
            v144 = 0;
            break;
        }
      }

      else
      {
        if (v98 == *v102 && v97 == *(v102 + 1))
        {
          v144 = 1;
        }

        else
        {
          v144 = sub_219BF78F4();
        }

        sub_218F31004(&v102[*(v100 + 48)], type metadata accessor for TagFeedGapLocation);
        v156 = v90 + v101;
LABEL_70:
        sub_218F31004(v156, type metadata accessor for TagFeedGapLocation);
LABEL_32:
        sub_218F31004(v93, type metadata accessor for TagFeedModel);
      }

      return v144 & 1;
  }
}

void sub_218F33010(uint64_t a1)
{
  if (!qword_280EDE750[0])
  {
    type metadata accessor for TagFeedModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_280EDE750);
    }
  }
}

void sub_218F33074(void *a1)
{
  v2 = [a1 sportsUserID];
  if (v2)
  {
    v3 = v2;
    v4 = sub_219BF5414();
    v6 = v5;

    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = v4;
    v7[4] = v6;
    v8 = a1;
    sub_219BDCD84();
  }

  else
  {
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v10 = sub_219BF6F64();
    v9 = sub_219BF61F4();
    sub_219BE5314("No private Sports ID has been set!", 34, 2, &dword_2186C1000, v10, v9, MEMORY[0x277D84F90]);
  }
}

void sub_218F331B8(void *a1)
{
  v1 = [a1 sportsUserID];
  if (v1)
  {
    v2 = v1;
    v3 = sub_219BF5414();
    v5 = v4;

    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
    sub_219BDCD84();
  }

  else
  {
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v8 = sub_219BF6F64();
    v7 = sub_219BF61F4();
    sub_219BE5314("No private Sports ID has been set!", 34, 2, &dword_2186C1000, v8, v7, MEMORY[0x277D84F90]);
  }
}

uint64_t sub_218F33358(void *a1, uint64_t a2, uint64_t a3)
{
  v114 = a3;
  v108 = sub_219BE9674();
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v104 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_219BE9CC4();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v103 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE8424();
  MEMORY[0x28223BE20](v7 - 8);
  v100 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_219BE8404();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v95 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F35250(0, &qword_280EE4CE8, MEMORY[0x277D6DEE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v77 - v11;
  v99 = sub_219BE8434();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v96 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter(0);
  v101 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v102 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_219BDCAA4();
  v83 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v109 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v115 = sub_219BE8164();
  v15 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v92 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v77 - v18;
  v84 = type metadata accessor for MagazineFeedGroupTitleViewLayoutOptions(0);
  MEMORY[0x28223BE20](v84);
  v85 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v21 - 8);
  v86 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader(0);
  v93 = *(v23 - 8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [objc_opt_self() ts:a1[4] dynamicColor:a1[5] withDarkStyleVariant:?];
  v27 = type metadata accessor for MyMagazinesMagazineFeedGroup(0);
  v28 = *(a1 + *(v27 + 56));
  if (v28 && *(a1 + *(v27 + 60)) == 1)
  {
    swift_unknownObjectRetain();
    v29 = v26;
    v112 = sub_2197A0B74(v28);
    v111 = v30;
    v110 = v31;
  }

  else
  {
    v112 = 0;
    v111 = 0;
    v110 = 0;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v91 = v25;
  if (a2 < 1)
  {

    v37 = 0;
    v39 = 0;
  }

  else
  {
    sub_218F35250(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v34 = swift_allocObject();
    v35 = MEMORY[0x277D83B88];
    *(v34 + 16) = xmmword_219C09BA0;
    v36 = MEMORY[0x277D83C10];
    *(v34 + 56) = v35;
    *(v34 + 64) = v36;
    *(v34 + 32) = a2;
    v37 = sub_219BF5454();
    v39 = v38;
  }

  v40 = a1[3];
  *&v117 = a1[2];
  *(&v117 + 1) = v40;
  *&v118 = 0x403D000000000000;
  *(&v118 + 1) = v26;
  *&v119 = v37;
  *(&v119 + 1) = v39;
  v41 = v112;
  v42 = v111;
  *&v120 = v112;
  *(&v120 + 1) = v111;
  v121 = v110;
  sub_218718690(v113 + 56, v116);
  v79 = __swift_project_boxed_opaque_existential_1(v116, v116[3]);
  v43 = *(v15 + 16);
  v78 = v19;
  v44 = v114;
  v82 = v15 + 16;
  v81 = v43;
  v43(v19, v114, v115);
  v45 = type metadata accessor for MagazineFeedEmbeddedSupplementaryOptions(0);
  v46 = v83;
  v47 = v87;
  (*(v83 + 16))(v109, v44 + *(v45 + 20), v87);
  v88 = v26;
  v80 = v26;

  sub_218F35160(v41, v42);
  if (sub_219BED0C4())
  {
    v48 = 18.0;
  }

  else
  {
    v48 = 37.0;
  }

  v49 = *(v45 + 24);
  v50 = v84;
  v51 = *(v84 + 36);
  v52 = sub_219BDCAF4();
  v53 = v85;
  (*(*(v52 - 8) + 16))(&v85[v51], v44 + v49, v52);
  (*(v15 + 32))(v53, v78, v115);
  (*(v46 + 32))(&v53[v50[7]], v109, v47);
  *&v53[v50[5]] = v48;
  *&v53[v50[6]] = 0;
  v53[v50[8]] = 1;
  v54 = v86;
  sub_219258418(&v117, v53, v86);
  sub_218F351F0(v53, type metadata accessor for MagazineFeedGroupTitleViewLayoutOptions);
  __swift_destroy_boxed_opaque_existential_1(v116);
  sub_2187DE3C8(0);
  v56 = *(v55 + 48);
  v57 = v91;
  *(v91 + 8) = v121;
  v58 = v120;
  v57[2] = v119;
  v57[3] = v58;
  v59 = v118;
  *v57 = v117;
  v57[1] = v59;
  sub_218F352B4(v54, v57 + v56, type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes);
  (*(v89 + 56))(v94, 1, 1, v90);
  if (qword_27CC07DA0 != -1)
  {
    swift_once();
  }

  v60 = qword_27CC07DA8;
  v61 = v80;

  if (v60 != -1)
  {
    swift_once();
  }

  sub_219BE83F4();
  sub_218A293AC();
  sub_219BF6BD4();
  v62 = [qword_27CCD84A8 imageWithTintColor:v61 renderingMode:1];
  sub_219BE8414();
  v63 = v113;
  v64 = *(*__swift_project_boxed_opaque_existential_1((v113 + 16), *(v113 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 72);
  v65 = v96;
  sub_219BE83E4();
  __swift_project_boxed_opaque_existential_1((v63 + 96), *(v63 + 120));
  v81(v92, v114, v115);
  v66 = v104;
  sub_219BE9664();
  v67 = v103;
  sub_219BEA504();
  (*(v106 + 8))(v66, v108);
  sub_2187DE694(0);
  v69 = *(v68 + 48);
  v70 = v102;
  (*(v98 + 32))(v102, v65, v99);
  (*(v105 + 32))(v70 + v69, v67, v107);
  swift_storeEnumTagMultiPayload();
  v71 = MEMORY[0x277D84560];
  sub_218F35250(0, &qword_280E8B920, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader, MEMORY[0x277D84560]);
  v72 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v73 = swift_allocObject();
  v115 = xmmword_219C09BA0;
  *(v73 + 16) = xmmword_219C09BA0;
  sub_218AD8008(v57, v73 + v72, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
  sub_218F35250(0, &qword_280E8B928, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter, v71);
  v74 = (*(v101 + 80) + 32) & ~*(v101 + 80);
  v75 = swift_allocObject();
  *(v75 + 16) = v115;
  sub_218AD8008(v70, v75 + v74, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
  sub_218F351A8(v112, v111);

  sub_218F351F0(v70, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
  sub_218F351F0(v57, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
  return v73;
}

uint64_t sub_218F341E0(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v61 = sub_219BE9834();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v62 = type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter(0);
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = v63;
  MEMORY[0x28223BE20](v62);
  v59 = (&v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = sub_219BDCAA4();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE8164();
  v48 = *(v7 - 8);
  v8 = v48;
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v10;
  v11 = type metadata accessor for MagazineFeedGroupTitleViewLayoutOptions(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v15 - 8);
  v50 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader(0);
  v18 = *(v17 - 8);
  v55 = v17 - 8;
  v56 = v18;
  v57 = v18;
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = objc_opt_self();

  v24 = [v23 labelColor];
  *&v67 = v21;
  *(&v67 + 1) = v22;
  *&v68 = 0x403D000000000000;
  *(&v68 + 1) = v24;
  v69 = 0u;
  v70 = 0u;
  v71 = 0;
  sub_218718690((v54 + 7), v66);
  v54 = __swift_project_boxed_opaque_existential_1(v66, v66[3]);
  v25 = *(v8 + 16);
  v26 = v53;
  v27 = v7;
  v25(v10, v53, v7);
  v28 = type metadata accessor for MagazineFeedEmbeddedSupplementaryOptions(0);
  v29 = v51;
  v30 = v52;
  (*(v5 + 16))(v51, v26 + *(v28 + 20), v52);
  if (sub_219BED0C4())
  {
    v31 = 18.0;
  }

  else
  {
    v31 = 37.0;
  }

  v32 = *(v28 + 24);
  v33 = v12[11];
  v34 = sub_219BDCAF4();
  (*(*(v34 - 8) + 16))(&v14[v33], v26 + v32, v34);
  (*(v48 + 32))(v14, v49, v27);
  (*(v5 + 32))(&v14[v12[9]], v29, v30);
  *&v14[v12[7]] = v31;
  *&v14[v12[8]] = 0;
  v14[v12[10]] = 0;
  v35 = v50;
  sub_219258418(&v67, v14, v50);
  sub_218F351F0(v14, type metadata accessor for MagazineFeedGroupTitleViewLayoutOptions);
  __swift_destroy_boxed_opaque_existential_1(v66);
  sub_2187DE3C8(0);
  v37 = *(v36 + 48);
  *(v20 + 8) = v71;
  v38 = v70;
  *(v20 + 2) = v69;
  *(v20 + 3) = v38;
  v39 = v68;
  *v20 = v67;
  *(v20 + 1) = v39;
  sub_218F352B4(v35, &v20[v37], type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes);
  sub_219BE8154();
  (*(v60 + 104))(v58, *MEMORY[0x277D6E750], v61);
  sub_219BF4E64();
  swift_allocObject();
  v40 = sub_219BF4E44();
  v41 = v59;
  *v59 = v40;
  swift_storeEnumTagMultiPayload();
  v42 = MEMORY[0x277D84560];
  sub_218F35250(0, &qword_280E8B920, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader, MEMORY[0x277D84560]);
  v43 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v44 = swift_allocObject();
  v62 = xmmword_219C09BA0;
  *(v44 + 16) = xmmword_219C09BA0;
  sub_218AD8008(v20, v44 + v43, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
  sub_218F35250(0, &qword_280E8B928, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter, v42);
  v45 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = v62;
  sub_218F352B4(v41, v46 + v45, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
  sub_218F351F0(v20, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
  return v44;
}

uint64_t sub_218F3498C(void *a1, uint64_t a2)
{
  v58 = a2;
  v65 = sub_219BE9834();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v66 = type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter(0);
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = v67;
  MEMORY[0x28223BE20](v66);
  v63 = (&v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = sub_219BDCAA4();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE8164();
  v50 = *(v6 - 8);
  v7 = v50;
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v9;
  v10 = type metadata accessor for MagazineFeedGroupTitleViewLayoutOptions(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v14 - 8);
  v54 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader(0);
  v17 = *(v16 - 8);
  v59 = v16 - 8;
  v60 = v17;
  v61 = v17;
  MEMORY[0x28223BE20](v16 - 8);
  v52 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[2];
  v19 = a1[3];
  v21 = objc_opt_self();

  v22 = [v21 labelColor];
  v23 = a1[6];
  v24 = a1[7];
  *&v71 = v20;
  *(&v71 + 1) = v19;
  *&v72 = 0x403D000000000000;
  *(&v72 + 1) = v22;
  *&v73 = v23;
  *(&v73 + 1) = v24;
  v75 = 0;
  v74 = 0uLL;
  sub_218718690((v57 + 7), v70);
  v57 = __swift_project_boxed_opaque_existential_1(v70, v70[3]);
  v25 = *(v7 + 16);
  v26 = v58;
  v27 = v6;
  v25(v9, v58, v6);
  v28 = type metadata accessor for MagazineFeedEmbeddedSupplementaryOptions(0);
  v29 = v55;
  v30 = v53;
  v31 = v56;
  (*(v55 + 16))(v53, v26 + *(v28 + 20), v56);

  if (sub_219BED0C4())
  {
    v32 = 18.0;
  }

  else
  {
    v32 = 37.0;
  }

  v33 = *(v28 + 24);
  v34 = v11[11];
  v35 = sub_219BDCAF4();
  (*(*(v35 - 8) + 16))(&v13[v34], v26 + v33, v35);
  (*(v50 + 32))(v13, v51, v27);
  (*(v29 + 32))(&v13[v11[9]], v30, v31);
  *&v13[v11[7]] = v32;
  *&v13[v11[8]] = 0;
  v13[v11[10]] = 0;
  v36 = v54;
  sub_219258418(&v71, v13, v54);
  sub_218F351F0(v13, type metadata accessor for MagazineFeedGroupTitleViewLayoutOptions);
  __swift_destroy_boxed_opaque_existential_1(v70);
  sub_2187DE3C8(0);
  v38 = *(v37 + 48);
  v39 = v52;
  *(v52 + 8) = v75;
  v40 = v74;
  v39[2] = v73;
  v39[3] = v40;
  v41 = v72;
  *v39 = v71;
  v39[1] = v41;
  sub_218F352B4(v36, v39 + v38, type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes);
  sub_219BE8154();
  (*(v64 + 104))(v62, *MEMORY[0x277D6E750], v65);
  sub_219BF4E64();
  swift_allocObject();
  v42 = sub_219BF4E44();
  v43 = v63;
  *v63 = v42;
  swift_storeEnumTagMultiPayload();
  v44 = MEMORY[0x277D84560];
  sub_218F35250(0, &qword_280E8B920, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader, MEMORY[0x277D84560]);
  v45 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v46 = swift_allocObject();
  v66 = xmmword_219C09BA0;
  *(v46 + 16) = xmmword_219C09BA0;
  sub_218AD8008(v39, v46 + v45, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
  sub_218F35250(0, &qword_280E8B928, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter, v44);
  v47 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v66;
  sub_218F352B4(v43, v48 + v47, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
  sub_218F351F0(v39, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
  return v46;
}

uint64_t sub_218F35160(uint64_t result, void *a2)
{
  if (result)
  {
    swift_unknownObjectRetain();
    v3 = a2;
  }

  return result;
}

double sub_218F351A8(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218F351F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218F35250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218F352B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218F3531C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
  result = sub_21922CCB8(v2);
  v4 = result;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 0;
    v7 = result + 32;
    v8 = MEMORY[0x277D84F90];
    while (v6 < *(v4 + 16))
    {
      sub_21896FC94(v7, v23);
      v9 = *&v23[0] == 0x657061707377656ELL && *(&v23[0] + 1) == 0xEA00000000007372;
      if (v9 || (sub_219BF78F4() & 1) != 0)
      {
        result = sub_218C113E0(v23);
      }

      else
      {
        v21 = v23[8];
        *v22 = v24[0];
        *&v22[9] = *(v24 + 9);
        v17 = v23[4];
        v18 = v23[5];
        v19 = v23[6];
        v20 = v23[7];
        v13 = v23[0];
        v14 = v23[1];
        v15 = v23[2];
        v16 = v23[3];
        result = swift_isUniquelyReferenced_nonNull_native();
        v25 = v8;
        if ((result & 1) == 0)
        {
          result = sub_218C35080(0, *(v8 + 16) + 1, 1);
          v8 = v25;
        }

        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          result = sub_218C35080((v10 > 1), v11 + 1, 1);
          v8 = v25;
        }

        *(v8 + 16) = v11 + 1;
        v12 = (v8 + 176 * v11);
        v12[3] = v14;
        v12[4] = v15;
        v12[2] = v13;
        v12[7] = v18;
        v12[8] = v19;
        v12[5] = v16;
        v12[6] = v17;
        *(v12 + 185) = *&v22[9];
        v12[10] = v21;
        v12[11] = *v22;
        v12[9] = v20;
      }

      ++v6;
      v7 += 176;
      if (v5 == v6)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_17:

    *&v23[0] = v8;
    sub_218F3581C();
    swift_allocObject();
    return sub_219BE3014();
  }

  return result;
}

void sub_218F35538(uint64_t a1)
{
  v1 = sub_219BF61F4();
  sub_2186F20D4(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_2186C66AC();
  v3 = sub_219BF6F44();
  sub_219BE5314("Failed to fetch categories for picker with error=%{public}@", 59, 2, &dword_2186C1000, v3, v1, v2);
}

uint64_t sub_218F35660()
{
  sub_218F357C4(0);
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_219BE2F84();

  v1 = sub_219BE2E54();
  v2 = sub_219BE2FD4();

  return v2;
}

uint64_t sub_218F35758()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = off_282A6EDF8[0];
  v2 = type metadata accessor for MagazineCategoryConfigService(0);
  return v1(v2);
}

void sub_218F357C4(uint64_t a1)
{
  if (!qword_280E8F130)
  {
    type metadata accessor for MagazineCategoryConfig(255);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8F130);
    }
  }
}

void sub_218F3581C()
{
  if (!qword_27CC139E0)
  {
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC139E0);
    }
  }
}

uint64_t sub_218F3586C(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 11, v1[14]);
  sub_218CBCA50(a1);
  v4 = __swift_project_boxed_opaque_existential_1(v2 + 16, v2[19]);
  v5 = [a1 identifier];
  v6 = sub_219BF5414();
  v8 = v7;

  v9 = __swift_project_boxed_opaque_existential_1(v2 + 11, v2[14]);
  v10 = *(*v4 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(*v9 + 16);
    v13 = v10 + 32;

    do
    {
      sub_218718690(v13, v17);
      v14 = v18;
      v15 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v15 + 8))(v6, v8, 1, v12, v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v13 += 40;
      --v11;
    }

    while (v11);
  }

  else
  {
  }

  sub_218B0705C([a1 backingTag]);
  swift_unknownObjectRelease();
  return sub_218B07B30();
}

uint64_t sub_218F359E8(void *a1)
{
  sub_218760638(0);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 32);
  v8 = [a1 backingTag];
  if (([v8 isPuzzleHub] & 1) != 0 || objc_msgSend(v8, sel_isPuzzleType))
  {
    v9 = sub_219BF5BF4();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v7;
    swift_unknownObjectRetain();
    sub_218AB3D80(0, 0, v6, &unk_219C47DA0, v10);

    return swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_218F35B60()
{
  sub_218774F78((v0 + 2));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);

  return swift_deallocClassInstance();
}

uint64_t sub_218F35BE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_218B079A8(a1, v4, v5, v6);
}

unint64_t sub_218F35D68()
{
  result = qword_280EB01F0;
  if (!qword_280EB01F0)
  {
    type metadata accessor for MagazineSectionBarLayoutModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB01F0);
  }

  return result;
}

uint64_t sub_218F35E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BEE914();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218F35EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BEE914();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_218F35F3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for TodayLayoutSectionDescriptor.Decoration(0);
  v60 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for TodayLayoutSectionDescriptor.Footer(0);
  v70 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for TodayLayoutSectionDescriptor.Header(0);
  v8 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE9834();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *MEMORY[0x277D6E758];
  v62 = *(v12 + 104);
  v63 = v12 + 104;
  v62(v15, v16, v11, v13);
  v17 = sub_219BEE054();
  v19 = *(v12 + 8);
  v18 = v12 + 8;
  v64 = v15;
  v61 = v19;
  v19(v15, v11);
  v20 = *(v17 + 16);
  v21 = MEMORY[0x277D84F90];
  v66 = a2;
  v67 = a1;
  if (v20)
  {
    v55[1] = v18;
    v56 = v11;
    v57 = v7;
    v71 = MEMORY[0x277D84F90];
    sub_218C351A0(0, v20, 0);
    v22 = v17;
    v23 = v71;
    v69 = sub_219BF00D4();
    v24 = *(v69 - 8);
    v68 = *(v24 + 16);
    v25 = *(v24 + 80);
    v55[0] = v22;
    v26 = v22 + ((v25 + 32) & ~v25);
    v27 = *(v24 + 72);
    do
    {
      v68(v10, v26, v69);
      swift_storeEnumTagMultiPayload();
      v71 = v23;
      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_218C351A0((v28 > 1), v29 + 1, 1);
        v23 = v71;
      }

      *(v23 + 16) = v29 + 1;
      sub_218F375CC(v10, v23 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v29, type metadata accessor for TodayLayoutSectionDescriptor.Header);
      v26 += v27;
      --v20;
    }

    while (v20);

    a2 = v66;
    a1 = v67;
    v11 = v56;
    v7 = v57;
    v21 = MEMORY[0x277D84F90];
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  *a2 = v23;
  v30 = v64;
  (v62)(v64, *MEMORY[0x277D6E750], v11);
  v31 = sub_219BEE054();
  v61(v30, v11);
  v32 = *(v31 + 16);
  if (v32)
  {
    v71 = v21;
    sub_218C35150(0, v32, 0);
    v33 = v71;
    v69 = sub_219BF00D4();
    v34 = *(v69 - 8);
    v35 = *(v34 + 16);
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v68 = v31;
    v37 = v31 + v36;
    v38 = *(v34 + 72);
    do
    {
      v35(v7, v37, v69);
      swift_storeEnumTagMultiPayload();
      v71 = v33;
      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_218C35150((v39 > 1), v40 + 1, 1);
        v33 = v71;
      }

      *(v33 + 16) = v40 + 1;
      sub_218F375CC(v7, v33 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v40, type metadata accessor for TodayLayoutSectionDescriptor.Footer);
      v37 += v38;
      --v32;
    }

    while (v32);

    a2 = v66;
    a1 = v67;
    v21 = MEMORY[0x277D84F90];
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  a2[1] = v33;
  v41 = sub_219BEE044();
  v42 = *(v41 + 16);
  v43 = v65;
  if (v42)
  {
    v71 = v21;
    sub_218C36218(0, v42, 0);
    v44 = v71;
    v70 = sub_219BEE914();
    v45 = *(v70 - 8);
    v46 = *(v45 + 16);
    v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v69 = v41;
    v48 = v41 + v47;
    v49 = *(v45 + 72);
    v50 = v60;
    do
    {
      v46(v43, v48, v70);
      v71 = v44;
      v52 = *(v44 + 16);
      v51 = *(v44 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_218C36218((v51 > 1), v52 + 1, 1);
        v50 = v60;
        v44 = v71;
      }

      *(v44 + 16) = v52 + 1;
      sub_218F375CC(v43, v44 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v52, type metadata accessor for TodayLayoutSectionDescriptor.Decoration);
      v48 += v49;
      --v42;
    }

    while (v42);

    a2 = v66;
    a1 = v67;
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
  }

  a2[2] = v44;
  type metadata accessor for TodayLayoutSectionDescriptor.LayoutData(0);
  sub_219BEE034();
  v53 = sub_219BEE074();
  return (*(*(v53 - 8) + 8))(a1, v53);
}

uint64_t sub_218F36634()
{
  v1 = type metadata accessor for TodayLayoutSectionDescriptor.LayoutData(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for TodayLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218F37504(v0, v6, type metadata accessor for TodayLayoutSectionDescriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_218F3756C(v6, type metadata accessor for TodayLayoutSectionDescriptor);
        return 0;
      }

      else
      {
        v12 = v6[1];
        v13 = sub_218ACE90C(*v6);
        v14 = sub_218ACEB00(v12);
        v16 = v13;
        sub_2191ED57C(v14);

        return v16;
      }
    }

    else
    {
      sub_218F375CC(v6, v3, type metadata accessor for TodayLayoutSectionDescriptor.LayoutData);
      v9 = sub_218F36808(*v3);
      v10 = sub_218F36B80(v3[1]);
      v16 = v9;
      sub_2191ED57C(v10);
      v11 = v16;
      sub_218F3756C(v3, type metadata accessor for TodayLayoutSectionDescriptor.LayoutData);
      return v11;
    }
  }

  return result;
}

uint64_t sub_218F36808(uint64_t a1)
{
  v26 = type metadata accessor for TodayLayoutSectionDescriptor.Header(0);
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v30 = MEMORY[0x277D84F90];
    sub_218C34270(0, v8, 0);
    v9 = v30;
    v10 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_218F37504(v10, v7, type metadata accessor for TodayLayoutSectionDescriptor.Header);
      sub_218F37504(v7, v4, type metadata accessor for TodayLayoutSectionDescriptor.Header);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader(0);
        v29 = sub_2187DE8A8(qword_280E97070, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader, &unk_219C7C738);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
        sub_218F375CC(v4, boxed_opaque_existential_1, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
      }

      else
      {
        v13 = sub_219BF00D4();
        v28 = v13;
        v29 = sub_2187DE8A8(&qword_280E91018, MEMORY[0x277D32BB0], MEMORY[0x277D32BA8]);
        v14 = __swift_allocate_boxed_opaque_existential_1(v27);
        (*(*(v13 - 8) + 32))(v14, v4, v13);
      }

      sub_218F3756C(v7, type metadata accessor for TodayLayoutSectionDescriptor.Header);
      v30 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_218C34270((v15 > 1), v16 + 1, 1);
      }

      v17 = v28;
      v18 = v29;
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      v20 = MEMORY[0x28223BE20](v19);
      v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v22, v20);
      sub_218DD76AC(v16, v22, &v30, v17, v18);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v9 = v30;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_218F36B80(uint64_t a1)
{
  v26 = type metadata accessor for TodayLayoutSectionDescriptor.Footer(0);
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v30 = MEMORY[0x277D84F90];
    sub_218C34270(0, v8, 0);
    v9 = v30;
    v10 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_218F37504(v10, v7, type metadata accessor for TodayLayoutSectionDescriptor.Footer);
      sub_218F37504(v7, v4, type metadata accessor for TodayLayoutSectionDescriptor.Footer);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter(0);
        v29 = sub_2187DE8A8(qword_280E97138, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter, &unk_219C7C7F8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
        sub_218F375CC(v4, boxed_opaque_existential_1, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
      }

      else
      {
        v13 = sub_219BF00D4();
        v28 = v13;
        v29 = sub_2187DE8A8(&qword_280E91018, MEMORY[0x277D32BB0], MEMORY[0x277D32BA8]);
        v14 = __swift_allocate_boxed_opaque_existential_1(v27);
        (*(*(v13 - 8) + 32))(v14, v4, v13);
      }

      sub_218F3756C(v7, type metadata accessor for TodayLayoutSectionDescriptor.Footer);
      v30 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_218C34270((v15 > 1), v16 + 1, 1);
      }

      v17 = v28;
      v18 = v29;
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      v20 = MEMORY[0x28223BE20](v19);
      v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v22, v20);
      sub_218DD76AC(v16, v22, &v30, v17, v18);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v9 = v30;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_218F36EFC(uint64_t a1)
{
  v2 = sub_2187DE8A8(&qword_27CC13A20, type metadata accessor for TodayLayoutSectionDescriptor, &unk_219C47F4C);

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_218F36FB0(uint64_t a1)
{
  v2 = sub_2187DE8A8(&unk_280EB1A50, type metadata accessor for TodayLayoutSectionDescriptor, &unk_219C47EFC);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_218F3701C()
{
  v1 = type metadata accessor for TodayLayoutSectionDescriptor.LayoutData(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TodayLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218F37504(v0, v6, type metadata accessor for TodayLayoutSectionDescriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v9 = sub_218F371BC(*v6);

        return v9;
      }

      else
      {
        v11 = sub_2193C3E70(v6[2]);

        return v11;
      }
    }

    else
    {
      sub_218F375CC(v6, v3, type metadata accessor for TodayLayoutSectionDescriptor.LayoutData);
      v10 = sub_218F371BC(*(v3 + 2));
      sub_218F3756C(v3, type metadata accessor for TodayLayoutSectionDescriptor.LayoutData);
      return v10;
    }
  }

  return result;
}

uint64_t sub_218F371BC(uint64_t a1)
{
  v32 = sub_219BEE914();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TodayLayoutSectionDescriptor.Decoration(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v36 = MEMORY[0x277D84F90];
    sub_218C35B30(0, v11, 0);
    v12 = v36;
    v13 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    v29 = (v2 + 32);
    v30 = v14;
    v15 = (v2 + 8);
    do
    {
      sub_218F37504(v13, v10, type metadata accessor for TodayLayoutSectionDescriptor.Decoration);
      v16 = v31;
      sub_218F37504(v10, v31, type metadata accessor for TodayLayoutSectionDescriptor.Decoration);
      v17 = v16;
      v18 = v32;
      (*v29)(v4, v17, v32);
      sub_219BEE8F4();
      (*v15)(v4, v18);
      sub_218F3756C(v10, type metadata accessor for TodayLayoutSectionDescriptor.Decoration);
      v36 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_218C35B30((v19 > 1), v20 + 1, 1);
      }

      v21 = v34;
      v22 = v35;
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      v24 = MEMORY[0x28223BE20](v23);
      v26 = &v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v26, v24);
      sub_218DD76AC(v20, v26, &v36, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v33);
      v12 = v36;
      v13 += v30;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_218F37504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218F3756C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218F375CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void ChannelPickerMainModule.createViewController(pickerType:useAlternateTitle:)(uint64_t *a1, char a2)
{
  v5 = *a1;
  v4 = a1[1];
  sub_219BDD224();
  if (v4 >= 3)
  {
    MEMORY[0x21CECC330](v5, v4);
  }

  else
  {
    sub_218DB964C(v5, v4);
    sub_219BF5484();
  }

  v6 = sub_219BDD224();

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  type metadata accessor for ChannelPickerViewController();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = a2 & 1;
  sub_218DB964C(v5, v4);

  v8 = sub_219BE1E04();

  if (v8)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218F377E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_219BE1BA4();
}

uint64_t ChannelPickerMainModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t ChannelPickerMainModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_7NewsUI227ChannelPickerEntryPointTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_218F37998(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_218F379F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_218F37A90()
{
  v1 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v0, v3, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v4 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 6u:
    case 7u:
      return *v3;
    case 0xBu:

      sub_218748BF4(0);
      v7 = *(v6 + 48);
      sub_218748D40(0);
      (*(*(v8 - 8) + 8))(&v3[v7], v8);
      return 0;
    case 0x10u:
      v4 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v4 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v4 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218F3B148(v3, v4);
      return 0;
  }
}

uint64_t sub_218F37C08()
{
  v1 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218F3C590(v0, v3, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v9 = *(v3 + 3);

      return 0xD000000000000010;
    case 2u:
      sub_218F3B148(v3, type metadata accessor for FollowingAudioModel);
      v7 = 0x466F69647541;
      return v7 & 0xFFFFFFFFFFFFLL | 0x6565000000000000;
    case 3u:
      v4 = *(*(*v3 + 16) + 16);
      goto LABEL_3;
    case 4u:
      v6 = *(v3 + 3);

      v7 = 0x466465766153;
      return v7 & 0xFFFFFFFFFFFFLL | 0x6565000000000000;
    case 5u:
      v10 = *(v3 + 2);

      return 0x4679726F74736948;
    case 6u:
    case 7u:
      v11 = *(*v3 + 16);
      v12 = *(*v3 + 24);
      v25 = 0;
      v26 = 0xE000000000000000;
      v24[15] = v11;
      sub_219BF7484();
      MEMORY[0x21CECC330](58, 0xE100000000000000);
      v13 = [*(v12 + 16) identifier];
      v14 = sub_219BF5414();
      v16 = v15;

      MEMORY[0x21CECC330](v14, v16);

      return v25;
    case 8u:
    case 9u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
      v4 = *(*v3 + 16);
LABEL_3:

      goto LABEL_4;
    case 0xBu:
      v17 = *v3;
      sub_218748BF4(0);
      v19 = *(v18 + 48);
      v4 = *(v17 + 16);

      sub_218748D40(0);
      (*(*(v20 - 8) + 8))(&v3[v19], v20);
      return v4;
    case 0xEu:
      v5 = *(v3 + 3);

      return 0x6957646572616853;
    case 0xFu:
      v4 = sub_219A910C0();
LABEL_4:

      break;
    case 0x10u:
      sub_218F3B148(v3, type metadata accessor for FollowingMySportsModel);
      v4 = 0x7374726F7053796DLL;
      break;
    case 0x11u:
      sub_218F3B148(v3, type metadata accessor for FollowingPuzzleHubModel);
      v4 = 0x7548656C7A7A7570;
      break;
    case 0x12u:
      v21 = *(v3 + 4);

      v4 = 0x627548646F6F66;
      break;
    case 0x13u:
      v22 = *(v3 + 2);

      v4 = 0x6F42657069636552;
      break;
    default:
      v8 = *(v3 + 2);

      v4 = 0x6546756F59726F46;
      break;
  }

  return v4;
}

uint64_t sub_218F38050()
{
  v1 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v0, v3, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 4u:
    case 0xEu:
      v6 = *(v3 + 3);
      goto LABEL_15;
    case 2u:
      v11 = type metadata accessor for FollowingAudioModel;
      goto LABEL_13;
    case 3u:
      v5 = *(*v3 + 24);

      return v5;
    case 6u:
    case 7u:
      v5 = *(*v3 + 32);

      return v5;
    case 8u:
    case 9u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
      v4 = *v3;
      goto LABEL_3;
    case 0xBu:
      v7 = *v3;
      sub_218748BF4(0);
      v9 = *(v8 + 48);
      sub_218748D40(0);
      (*(*(v10 - 8) + 8))(&v3[v9], v10);
      v4 = v7;
LABEL_3:
      v5 = *(v4 + 48);

      return v5;
    case 0xFu:
      v5 = *(*v3 + OBJC_IVAR____TtC7NewsUI224FollowingEngagementModel_allowsUserInteraction);

      return v5;
    case 0x10u:
      v11 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_13;
    case 0x11u:
      v11 = type metadata accessor for FollowingPuzzleHubModel;
LABEL_13:
      sub_218F3B148(v3, v11);
      return 1;
    case 0x12u:
      v6 = *(v3 + 4);

      goto LABEL_15;
    default:
      v6 = *(v3 + 2);
LABEL_15:

      return 1;
  }
}

uint64_t sub_218F3822C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2187491C8(&qword_280EDC650, type metadata accessor for FollowingModel, &unk_219C48158);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

double sub_218F382AC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FollowingPuzzleHubModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FollowingMySportsModel(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FollowingAudioModel(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v2, v15, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = v15[32];
      *(a1 + 24) = &type metadata for FollowingMagazineModel;
      *(a1 + 32) = &off_282A81B18;
      goto LABEL_14;
    case 2u:
      v20 = type metadata accessor for FollowingAudioModel;
      sub_218F3B0E0(v15, v12, type metadata accessor for FollowingAudioModel);
      *(a1 + 24) = v10;
      *(a1 + 32) = &off_282A41AE0;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v22 = v12;
      goto LABEL_9;
    case 3u:
      v17 = *v15;
      v18 = type metadata accessor for FollowingEditorialModel();
      v19 = &off_282A546A0;
      goto LABEL_11;
    case 4u:
      v23 = v15[32];
      *(a1 + 24) = &type metadata for FollowingSavedModel;
      *(a1 + 32) = &off_282A95760;
LABEL_14:
      v30 = swift_allocObject();
      *a1 = v30;
      v16 = *v15;
      v31 = *(v15 + 1);
      *(v30 + 16) = *v15;
      *(v30 + 32) = v31;
      *(v30 + 48) = v23;
      return *&v16;
    case 5u:
      v42 = *v15;
      v33 = *(v15 + 2);
      v34 = v15[24];
      *(a1 + 24) = &type metadata for FollowingHistoryModel;
      *(a1 + 32) = &off_282A5FBD0;
      goto LABEL_20;
    case 6u:
    case 7u:
      v17 = *v15;
      v18 = type metadata accessor for FollowingTagModel();
      v19 = &off_282A3ABF8;
LABEL_11:
      *(a1 + 24) = v18;
      *(a1 + 32) = v19;
      *a1 = v17;
      return *&v16;
    case 8u:
    case 9u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
    case 0xFu:
      sub_218F3B148(v15, type metadata accessor for FollowingModel);
      goto LABEL_3;
    case 0xBu:

      sub_218748BF4(0);
      v36 = *(v35 + 48);
      sub_218748D40(0);
      (*(*(v37 - 8) + 8))(&v15[v36], v37);
LABEL_3:
      *(a1 + 32) = 0;
      *&v16 = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      break;
    case 0xEu:
      v24 = *(v15 + 16);
      v25 = v15[34];
      v26 = v15[35];
      *(a1 + 24) = &type metadata for FollowingSharedWithYouModel;
      *(a1 + 32) = &off_282A8F9F0;
      v27 = swift_allocObject();
      *a1 = v27;
      v16 = *v15;
      v28 = *(v15 + 1);
      *(v27 + 16) = *v15;
      *(v27 + 32) = v28;
      *(v27 + 50) = v25;
      *(v27 + 48) = v24;
      *(v27 + 51) = v26;
      break;
    case 0x10u:
      v20 = type metadata accessor for FollowingMySportsModel;
      sub_218F3B0E0(v15, v9, type metadata accessor for FollowingMySportsModel);
      *(a1 + 24) = v7;
      *(a1 + 32) = &off_282A53EA8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v22 = v9;
LABEL_9:
      sub_218F3B0E0(v22, boxed_opaque_existential_1, v20);
      break;
    case 0x11u:
      sub_218F3B0E0(v15, v6, type metadata accessor for FollowingPuzzleHubModel);
      *(a1 + 24) = v4;
      *(a1 + 32) = &off_282A6F6C8;
      v32 = __swift_allocate_boxed_opaque_existential_1(a1);
      sub_218F3B0E0(v6, v32, type metadata accessor for FollowingPuzzleHubModel);
      break;
    case 0x12u:
      *(a1 + 24) = &type metadata for FollowingFoodModel;
      *(a1 + 32) = &off_282A42E50;
      v38 = swift_allocObject();
      *a1 = v38;
      v39 = *(v15 + 1);
      v38[1] = *v15;
      v38[2] = v39;
      v38[3] = *(v15 + 2);
      v16 = *(v15 + 46);
      *(v38 + 62) = v16;
      break;
    case 0x13u:
      v42 = *v15;
      v33 = *(v15 + 2);
      v34 = v15[24];
      *(a1 + 24) = &type metadata for FollowingRecipeBoxModel;
      *(a1 + 32) = &off_282A55700;
LABEL_20:
      v40 = swift_allocObject();
      *a1 = v40;
      *&v16 = v42;
      *(v40 + 16) = v42;
      *(v40 + 32) = v33;
      *(v40 + 40) = v34;
      break;
    default:
      v29 = *(v15 + 2);
      *(a1 + 24) = &type metadata for FollowingForYouModel;
      *(a1 + 32) = &off_282A84BE0;
      v16 = *v15;
      *a1 = *v15;
      *(a1 + 16) = v29;
      break;
  }

  return *&v16;
}

uint64_t sub_218F387A8()
{
  v1 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v0, v3, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v4 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 8u:
    case 9u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
    case 0xFu:
      sub_218F3B148(v3, type metadata accessor for FollowingModel);
      return 0;
    case 0xBu:

      sub_218748BF4(0);
      v7 = *(v6 + 48);
      sub_218748D40(0);
      (*(*(v8 - 8) + 8))(&v3[v7], v8);
      return 0;
    case 0x10u:
      v4 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v4 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v4 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218F3B148(v3, v4);
      return 1;
  }
}

double sub_218F389A0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v2, v6, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v7 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 6u:
    case 7u:
      if (*(*v6 + 32) == 1 && ((v10 = *(*v6 + 16), v10 != 3) ? (v11 = v10 == 0) : (v11 = 1), v11))
      {

        TagModel.dragItem.getter(a1);
      }

      else
      {

LABEL_4:
        v8 = sub_219BEAF84();
        (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
      }

      return result;
    case 0xBu:

      sub_218748BF4(0);
      v13 = *(v12 + 48);
      sub_218748D40(0);
      (*(*(v14 - 8) + 8))(&v6[v13], v14);
      goto LABEL_4;
    case 0x10u:
      v7 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v7 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v7 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218F3B148(v6, v7);
      goto LABEL_4;
  }
}

BOOL sub_218F38BAC()
{
  v1 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v0, v3, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v4 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 6u:
    case 7u:
      if (*(*v3 + 32) == 1)
      {
        v6 = *(*v3 + 16);

        return !v6 || v6 == 3;
      }

      else
      {

        return 0;
      }

    case 0xBu:

      sub_218748BF4(0);
      v9 = *(v8 + 48);
      sub_218748D40(0);
      (*(*(v10 - 8) + 8))(&v3[v9], v10);
      return 0;
    case 0x10u:
      v4 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v4 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v4 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218F3B148(v3, v4);
      return 0;
  }
}

uint64_t sub_218F38D50()
{
  v1 = sub_219BE59F4();
  v52 = *(v1 - 8);
  v53 = v1;
  MEMORY[0x28223BE20](v1);
  v51 = (&v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_219BE5A04();
  v54 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - v7;
  sub_218F3C4F0(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - v19;
  v21 = 0;
  if (sub_218F38050())
  {
    sub_218F3C590(v0, v20, type metadata accessor for FollowingModel);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 2u:
        v22 = type metadata accessor for FollowingAudioModel;
        goto LABEL_4;
      case 3u:
        v31 = *v20;
        sub_218F3C524(0, &qword_27CC110C0, sub_218973CC4, MEMORY[0x277D84560]);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_219C09BA0;
        sub_218F3C590(*(v31 + 16) + OBJC_IVAR____TtC7NewsUI214EditorialModel_route, v11, sub_218F3C4F0);
        v33 = type metadata accessor for EditorialModelRoute(0);
        if ((*(*(v33 - 8) + 48))(v11, 1, v33) == 1)
        {
          sub_218F3B148(v11, sub_218F3C4F0);
          v34 = sub_219BDB954();
          (*(*(v34 - 8) + 56))(v14, 1, 1, v34);
        }

        else
        {
          sub_218DCFB08(v14);
          sub_218F3B148(v11, type metadata accessor for EditorialModelRoute);
        }

        v35 = sub_219BE6684();
        v36 = sub_219BE65C4();
        sub_218F3B148(v14, sub_21873F65C);
        if (v36)
        {
          v37 = MEMORY[0x277D6D630];
        }

        else
        {
          v35 = 0;
          v37 = 0;
          *(v32 + 40) = 0;
          *(v32 + 48) = 0;
        }

        *(v32 + 32) = v36;
        *(v32 + 56) = v35;
        *(v32 + 64) = v37;
        sub_219BE5A14();
        v21 = sub_219BE59D4();

        return v21;
      case 6u:
      case 7u:
        v24 = *v20;
        v55 = MEMORY[0x277D84FA0];
        sub_218F3C590(v0, v17, type metadata accessor for FollowingModel);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_218F3B148(v17, type metadata accessor for FollowingModel);
        if (EnumCaseMultiPayload == 6)
        {
          v26 = *MEMORY[0x277D31AA8];
          v27 = v54;
LABEL_27:
          v39 = *(v27 + 13);
          v39(v5, v26, v3);
          sub_219498044(v8, v5);
          (*(v27 + 1))(v8, v3);
          v39(v5, *MEMORY[0x277D31A80], v3);
          goto LABEL_28;
        }

        v27 = v54;
        if (*(v24 + 16) <= 1u && *(v24 + 16))
        {

LABEL_26:
          v26 = *MEMORY[0x277D31AA8];
          goto LABEL_27;
        }

        v38 = sub_219BF78F4();

        v27 = v54;
        if (v38)
        {
          goto LABEL_26;
        }

        v39 = *(v54 + 13);
        v39(v5, *MEMORY[0x277D31A80], v3);
LABEL_28:
        sub_219498044(v8, v5);
        v40 = *(v27 + 1);
        v40(v8, v3);
        v41 = MEMORY[0x277D31AC8];
        if (*(v24 + 16) > 1u)
        {
          if (*(v24 + 16) != 2)
          {

            goto LABEL_35;
          }

          v54 = v40;
          v42 = v39;
          v43 = v24;
          v44 = MEMORY[0x277D31AC8];
        }

        else
        {
          v54 = v40;
          v42 = v39;
          v43 = v24;
          v44 = MEMORY[0x277D31AC8];
        }

        v45 = sub_219BF78F4();

        v41 = v44;
        v24 = v43;
        v39 = v42;
        v40 = v54;
        if ((v45 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_35:
        v39(v5, *MEMORY[0x277D31A78], v3);
        sub_219498044(v8, v5);
        v40(v8, v3);
        v39(v5, *v41, v3);
        sub_219498044(v8, v5);
        v40(v8, v3);
LABEL_36:
        if ([*(*(v24 + 24) + 16) isPuzzleType])
        {
          v39(v5, *v41, v3);
          sub_219498044(v8, v5);
          v40(v8, v3);
        }

        sub_219BE5A14();
        v47 = v51;
        v46 = v52;
        *v51 = *(*(v24 + 24) + 16);
        v47[1] = 0;
        v48 = v53;
        (*(v46 + 104))(v47, *MEMORY[0x277D31A10], v53);
        v49 = v55;
        swift_unknownObjectRetain();
        MEMORY[0x21CEBC780](v47, v49);

        (*(v46 + 8))(v47, v48);
        swift_allocObject();
        v21 = sub_219BE59B4();
        break;
      case 0xBu:

        sub_218748BF4(0);
        v29 = *(v28 + 48);
        sub_218748D40(0);
        (*(*(v30 - 8) + 8))(&v20[v29], v30);
        return 0;
      case 0x10u:
        v22 = type metadata accessor for FollowingMySportsModel;
        goto LABEL_4;
      case 0x11u:
        v22 = type metadata accessor for FollowingPuzzleHubModel;
        goto LABEL_4;
      default:
        v22 = type metadata accessor for FollowingModel;
LABEL_4:
        sub_218F3B148(v20, v22);
        return 0;
    }
  }

  return v21;
}

uint64_t sub_218F39684(uint64_t a1)
{
  sub_219BF4284();
  swift_unknownObjectRetain();
  return sub_219BF4274();
}

uint64_t sub_218F396C4()
{
  v1 = type metadata accessor for FollowingPuzzleHubModel(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for FollowingMySportsModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for FollowingAudioModel(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218F3C590(v0, v12, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 4u:
      v19 = v12[3];
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v21 = [objc_opt_self() bundleForClass_];
      goto LABEL_15;
    case 2u:
      sub_218F3B0E0(v12, v9, type metadata accessor for FollowingAudioModel);
      v14 = *v9;

      sub_218F3B148(v9, type metadata accessor for FollowingAudioModel);
      return v14;
    case 3u:
      v14 = *(*(*v12 + 16) + 32);
      goto LABEL_4;
    case 6u:
    case 7u:
      v15 = [*(*(*v12 + 24) + 16) name];
      v14 = sub_219BF5414();

      return v14;
    case 8u:
    case 9u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
      v13 = *v12;
      goto LABEL_3;
    case 0xBu:
      v13 = *v12;
      sub_218748BF4(0);
      v17 = *(v16 + 48);
      sub_218748D40(0);
      (*(*(v18 - 8) + 8))(v12 + v17, v18);
LABEL_3:
      v14 = *(v13 + 16);
      goto LABEL_4;
    case 0xEu:
      v19 = v12[3];
      sub_219BF2394();
      v21 = sub_219BF2364();
      v23 = MEMORY[0x21CEC9110]();
      goto LABEL_16;
    case 0xFu:
      v14 = *(*v12 + OBJC_IVAR____TtC7NewsUI224FollowingEngagementModel_title);
LABEL_4:

      break;
    case 0x10u:
      sub_218F3B0E0(v12, v6, type metadata accessor for FollowingMySportsModel);
      v14 = *v6;

      sub_218F3B148(v6, type metadata accessor for FollowingMySportsModel);
      break;
    case 0x11u:
      sub_218F3B0E0(v12, v3, type metadata accessor for FollowingPuzzleHubModel);
      v14 = *v3;

      sub_218F3B148(v3, type metadata accessor for FollowingPuzzleHubModel);
      break;
    case 0x12u:
      v14 = *v12;
      v22 = v12[4];

      break;
    default:
      v19 = v12[2];
      type metadata accessor for Localized();
      v24 = swift_getObjCClassFromMetadata();
      v21 = [objc_opt_self() bundleForClass_];
LABEL_15:
      v23 = sub_219BDB5E4();
LABEL_16:
      v14 = v23;

      break;
  }

  return v14;
}

uint64_t sub_218F39CC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v2, v6, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v7 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 6u:
    case 7u:
      v15 = *(*v6 + 32);

      v10 = sub_219BE6244();
      v11 = *(*(v10 - 8) + 104);
      if (v15 == 1)
      {
        v16 = MEMORY[0x277D6D588];
      }

      else
      {
        v16 = MEMORY[0x277D6D580];
      }

      v13 = *v16;
      v12 = a1;
      return v11(v12, v13, v10);
    case 8u:
    case 9u:
    case 0xFu:
      sub_218F3B148(v6, type metadata accessor for FollowingModel);
      v8 = MEMORY[0x277D6D580];
      goto LABEL_5;
    case 0xBu:

      sub_218748BF4(0);
      v18 = *(v17 + 48);
      sub_218748D40(0);
      (*(*(v19 - 8) + 8))(&v6[v18], v19);
      goto LABEL_4;
    case 0x10u:
      v7 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v7 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v7 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218F3B148(v6, v7);
LABEL_4:
      v8 = MEMORY[0x277D6D588];
LABEL_5:
      v9 = *v8;
      v10 = sub_219BE6244();
      v11 = *(*(v10 - 8) + 104);
      v12 = a1;
      v13 = v9;
      return v11(v12, v13, v10);
  }
}

uint64_t sub_218F39F04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v2, v6, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v7 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 8u:
    case 9u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
    case 0xFu:
      sub_218F3B148(v6, type metadata accessor for FollowingModel);
      goto LABEL_5;
    case 0xBu:

      sub_218748BF4(0);
      v13 = *(v12 + 48);
      sub_218748D40(0);
      (*(*(v14 - 8) + 8))(&v6[v13], v14);
LABEL_5:
      v8 = MEMORY[0x277D6D5D8];
      goto LABEL_6;
    case 0x10u:
      v7 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v7 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v7 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218F3B148(v6, v7);
      v8 = MEMORY[0x277D6D5E0];
LABEL_6:
      v9 = *v8;
      v10 = sub_219BE63D4();
      return (*(*(v10 - 8) + 104))(a1, v9, v10);
  }
}

uint64_t sub_218F3A0EC()
{
  v1 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_218F38050();
  result = 0;
  if (v4)
  {
    sub_218F3C590(v0, v3, type metadata accessor for FollowingModel);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 2u:
        v6 = type metadata accessor for FollowingAudioModel;
        goto LABEL_4;
      case 6u:
      case 7u:
        v7 = *v3;
        v8 = MEMORY[0x277D84560];
        sub_218F3C524(0, &qword_27CC13A28, MEMORY[0x277D6DB00], MEMORY[0x277D84560]);
        v9 = sub_219BE7674();
        v10 = *(v9 - 8);
        v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
        v12 = swift_allocObject();
        v29 = xmmword_219C09BA0;
        *(v12 + 16) = xmmword_219C09BA0;
        v13 = (v12 + v11);
        sub_218F3C5F8(0);
        v15 = *(v14 + 48);
        v16 = *(v14 + 64);
        v17 = sub_218F3A4BC(v7);
        v19 = v18;

        *v13 = v17;
        v13[1] = v19;
        v20 = *MEMORY[0x277D6DA70];
        v21 = sub_219BE7634();
        (*(*(v21 - 8) + 104))(v13 + v15, v20, v21);
        sub_218F3C524(0, &qword_27CC13A40, MEMORY[0x277D6DAF8], v8);
        v22 = sub_219BE7664();
        v23 = *(v22 - 8);
        v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
        v25 = swift_allocObject();
        *(v25 + 16) = v29;
        (*(v23 + 104))(v25 + v24, *MEMORY[0x277D6DAD8], v22);
        *(v13 + v16) = v25;
        (*(v10 + 104))(v13, *MEMORY[0x277D6DA90], v9);
        return v12;
      case 0xBu:

        sub_218748BF4(0);
        v27 = *(v26 + 48);
        sub_218748D40(0);
        (*(*(v28 - 8) + 8))(v3 + v27, v28);
        goto LABEL_5;
      case 0x10u:
        v6 = type metadata accessor for FollowingMySportsModel;
        goto LABEL_4;
      case 0x11u:
        v6 = type metadata accessor for FollowingPuzzleHubModel;
        goto LABEL_4;
      default:
        v6 = type metadata accessor for FollowingModel;
LABEL_4:
        sub_218F3B148(v3, v6);
LABEL_5:
        result = 0;
        break;
    }
  }

  return result;
}

uint64_t sub_218F3A4BC(uint64_t a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_219BDB5E4();

  return v3;
}

uint64_t sub_218F3A690()
{
  v1 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v0, v3, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v4 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 8u:
    case 9u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
    case 0xFu:
      sub_218F3B148(v3, type metadata accessor for FollowingModel);
      return 0;
    case 0xBu:

      sub_218748BF4(0);
      v7 = *(v6 + 48);
      sub_218748D40(0);
      (*(*(v8 - 8) + 8))(&v3[v7], v8);
      return 0;
    case 0x10u:
      v4 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v4 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v4 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218F3B148(v3, v4);
      return 1;
  }
}

uint64_t sub_218F3A824()
{
  v1 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v0, v3, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v4 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 6u:
    case 7u:
      sub_218F3B148(v3, type metadata accessor for FollowingModel);
      return 1;
    case 0xBu:

      sub_218748BF4(0);
      v7 = *(v6 + 48);
      sub_218748D40(0);
      (*(*(v8 - 8) + 8))(&v3[v7], v8);
      return 0;
    case 0x10u:
      v4 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v4 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v4 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218F3B148(v3, v4);
      return 0;
  }
}

unint64_t sub_218F3A9B8()
{
  v1 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v0, v3, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v4 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 6u:
    case 7u:
      if (*(*v3 + 16) <= 1u && *(*v3 + 16))
      {
        sub_218F3C524(0, &qword_27CC13A48, sub_218F3C6A4, MEMORY[0x277D84560]);
        sub_218F3C6A4(0);
        v7 = v6 - 8;
        v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_219C09BA0;
        v10 = v9 + v8;
        v11 = (v10 + *(v7 + 56));
        v12 = *MEMORY[0x277D6D238];
        v13 = sub_219BE5854();
        (*(*(v13 - 8) + 104))(v10, v12, v13);
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v15 = [objc_opt_self() bundleForClass_];
        v16 = sub_219BDB5E4();
        v18 = v17;

        *v11 = v16;
        v11[1] = v18;
        v19 = sub_2194B0F38(v9);
        swift_setDeallocating();
        sub_218F3B148(v10, sub_218F3C6A4);
        swift_deallocClassInstance();

        return v19;
      }

      else
      {

        return 0;
      }

    case 0xBu:

      sub_218748BF4(0);
      v21 = *(v20 + 48);
      sub_218748D40(0);
      (*(*(v22 - 8) + 8))(&v3[v21], v22);
      return 0;
    case 0x10u:
      v4 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v4 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v4 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218F3B148(v3, v4);
      return 0;
  }
}

uint64_t sub_218F3AD44()
{
  v1 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v0, v3, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v4 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 0xBu:

      sub_218748BF4(0);
      v7 = *(v6 + 48);
      sub_218748D40(0);
      (*(*(v8 - 8) + 8))(&v3[v7], v8);
      return MEMORY[0x277D84F90];
    case 0x10u:
      v4 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v4 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v4 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218F3B148(v3, v4);
      return MEMORY[0x277D84F90];
  }
}

double sub_218F3AEE4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(v2, v6, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v7 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 6u:
    case 7u:
      *(a1 + 24) = sub_219BF09E4();
      *(a1 + 32) = sub_2187491C8(&qword_280E90CA8, MEMORY[0x277D32FA8], MEMORY[0x277D32F98]);
      __swift_allocate_boxed_opaque_existential_1(a1);
      swift_unknownObjectRetain();
      sub_219BF09D4();

      return result;
    case 0xBu:

      sub_218748BF4(0);
      v10 = *(v9 + 48);
      sub_218748D40(0);
      (*(*(v11 - 8) + 8))(&v6[v10], v11);
      goto LABEL_4;
    case 0x10u:
      v7 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      v7 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_3;
    default:
      v7 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218F3B148(v6, v7);
LABEL_4:
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
  }
}

uint64_t sub_218F3B0E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218F3B148(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218F3B1A8(uint64_t a1, uint64_t a2)
{
  v84 = type metadata accessor for FollowingPuzzleHubModel(0);
  MEMORY[0x28223BE20](v84);
  v83 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v82 - v6;
  v8 = type metadata accessor for FollowingMySportsModel(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v82 - v12;
  sub_218748D40(0);
  v85 = *(v14 - 8);
  v86 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v82 - v18;
  sub_218F3C48C(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &v22[*(v23 + 56)];
  sub_218F3C590(a1, v22, type metadata accessor for FollowingModel);
  v25 = v24;
  sub_218F3C590(a2, v24, type metadata accessor for FollowingModel);
  type metadata accessor for FollowingModel(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v28 = *(v22 + 3);
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    case 2u:
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v77 = type metadata accessor for FollowingAudioModel;
        goto LABEL_60;
      }

      sub_218F3B148(v24, type metadata accessor for FollowingAudioModel);
      v41 = v22;
      v42 = type metadata accessor for FollowingAudioModel;
LABEL_54:
      sub_218F3B148(v41, v42);
      v27 = 1;
      return v27 & 1;
    case 3u:
      v48 = *v22;
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_26;
      }

      v27 = sub_218DD0AA8(*(v48 + 16), *(*v24 + 16));
      goto LABEL_71;
    case 4u:
      v28 = *(v22 + 3);
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    case 5u:
      v54 = *(v22 + 2);
      v26 = v25;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_65;
      }

      goto LABEL_56;
    case 6u:
      v49 = *v22;
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_38;
      }

      goto LABEL_26;
    case 7u:
      v49 = *v22;
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_26;
      }

LABEL_38:
      v55 = *v24;
      v56 = *(v49 + 16);
      v57 = *(v49 + 24);
      v88 = 0;
      v89 = 0xE000000000000000;
      v87 = v56;
      sub_219BF7484();
      MEMORY[0x21CECC330](58, 0xE100000000000000);
      v58 = [*(v57 + 16) identifier];
      v59 = sub_219BF5414();
      v61 = v60;

      MEMORY[0x21CECC330](v59, v61);

      v63 = v88;
      v62 = v89;
      v64 = *(v55 + 16);
      v65 = *(v55 + 24);
      v88 = 0;
      v89 = 0xE000000000000000;
      v87 = v64;
      sub_219BF7484();
      MEMORY[0x21CECC330](58, 0xE100000000000000);
      v66 = [*(v65 + 16) identifier];
      v67 = sub_219BF5414();
      v69 = v68;

      MEMORY[0x21CECC330](v67, v69);

      if (v63 == v88 && v62 == v89)
      {

LABEL_62:
        v27 = _s7NewsUI28TagModelC2eeoiySbAC_ACtFZ_0(*(v49 + 24), *(v55 + 24));

        return v27 & 1;
      }

      v78 = sub_219BF78F4();

      if (v78)
      {
        goto LABEL_62;
      }

LABEL_67:
      v27 = 0;
      return v27 & 1;
    case 8u:
      sub_218F3B148(v22, type metadata accessor for FollowingModel);
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_53;
      }

      goto LABEL_66;
    case 9u:
      sub_218F3B148(v22, type metadata accessor for FollowingModel);
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_66;
      }

      goto LABEL_53;
    case 0xAu:
      sub_218F3B148(v22, type metadata accessor for FollowingModel);
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_66;
      }

      goto LABEL_53;
    case 0xBu:

      sub_218748BF4(0);
      v33 = v32;
      v34 = *(v32 + 48);
      v26 = v25;
      if (swift_getEnumCaseMultiPayload() == 11)
      {

        v35 = *(v33 + 48);
        v36 = v85;
        v37 = *(v85 + 32);
        v38 = &v22[v34];
        v39 = v86;
        v37(v19, v38, v86);
        v37(v16, (v25 + v35), v39);
        type metadata accessor for FollowingTagModel();
        sub_2187491C8(&unk_280ED6630, type metadata accessor for FollowingTagModel, &protocol conformance descriptor for FollowingTagModel);
        sub_2187491C8(&qword_280ED6640, type metadata accessor for FollowingTagModel, &protocol conformance descriptor for FollowingTagModel);
        v27 = sub_219BE23C4();
        v40 = *(v36 + 8);
        v40(v16, v39);
        v40(v19, v39);
        return v27 & 1;
      }

      (*(v85 + 8))(&v22[v34], v86);
      goto LABEL_66;
    case 0xCu:
      sub_218F3B148(v22, type metadata accessor for FollowingModel);
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_66;
      }

      goto LABEL_53;
    case 0xDu:
      sub_218F3B148(v22, type metadata accessor for FollowingModel);
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_66;
      }

      goto LABEL_53;
    case 0xEu:
      v28 = *(v22 + 3);
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
LABEL_7:
        v29 = *v22;
        v30 = *v26;
        v31 = v26[3];

        v27 = v29 == v30;
        return v27 & 1;
      }

LABEL_11:

      goto LABEL_66;
    case 0xFu:
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
LABEL_26:

        goto LABEL_66;
      }

      v43 = sub_219A910C0();
      v45 = v44;
      if (v43 == sub_219A910C0() && v45 == v46)
      {
        v27 = 1;
      }

      else
      {
        v27 = sub_219BF78F4();
      }

LABEL_71:

      return v27 & 1;
    case 0x10u:
      v26 = v24;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        sub_218F3B0E0(v22, v13, type metadata accessor for FollowingMySportsModel);
        sub_218F3B0E0(v24, v10, type metadata accessor for FollowingMySportsModel);
        v27 = _s7NewsUI222FollowingMySportsModelV2eeoiySbAC_ACtFZ_0(v13, v10);
        sub_218F3B148(v10, type metadata accessor for FollowingMySportsModel);
        sub_218F3B148(v13, type metadata accessor for FollowingMySportsModel);
        return v27 & 1;
      }

      v77 = type metadata accessor for FollowingMySportsModel;
LABEL_60:
      sub_218F3B148(v22, v77);
      goto LABEL_66;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        sub_218F3B0E0(v22, v7, type metadata accessor for FollowingPuzzleHubModel);
        v50 = v83;
        sub_218F3B0E0(v24, v83, type metadata accessor for FollowingPuzzleHubModel);
        v51 = v84;
        v52 = *&v7[*(v84 + 40)];
        sub_218F3B148(v7, type metadata accessor for FollowingPuzzleHubModel);
        v53 = *(v50 + *(v51 + 40));
        sub_218F3B148(v50, type metadata accessor for FollowingPuzzleHubModel);
        v27 = v52 == v53;
        return v27 & 1;
      }

      sub_218F3B148(v22, type metadata accessor for FollowingPuzzleHubModel);
      v26 = v24;
      goto LABEL_66;
    case 0x12u:
      v54 = *(v22 + 4);
      v70 = v22[61];
      v71 = *(v22 + 59);
      v26 = v25;
      if (swift_getEnumCaseMultiPayload() != 18)
      {

LABEL_65:

LABEL_66:
        sub_218F3B148(v26, type metadata accessor for FollowingModel);
        goto LABEL_67;
      }

      v72 = v71 | (v70 << 16);
      v73 = *(v25 + 32);
      v74 = *(v25 + 59) | (*(v25 + 61) << 16);

      v75 = (v72 >> 21) & 3;
      if (v75 > 1)
      {
        if (v75 == 2)
        {
          if ((v74 & 0x600000) != 0x400000)
          {
            goto LABEL_67;
          }

          v27 = v74 ^ v72 ^ 1;
        }

        else
        {
          if (v74 != 6291456)
          {
            goto LABEL_67;
          }

          v27 = 1;
        }
      }

      else if (v75)
      {
        if ((v74 & 0x600000) != 0x200000)
        {
          goto LABEL_67;
        }

        v27 = v74 == v72;
      }

      else
      {
        if ((v74 & 0x600000) != 0 || v74 != v72)
        {
          goto LABEL_67;
        }

        if (BYTE1(v72) == 2)
        {
          if (BYTE1(v74) != 2)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v27 = 0;
          if (BYTE1(v74) == 2 || (((v74 >> 8) ^ (v72 >> 8)) & 1) != 0)
          {
            return v27 & 1;
          }
        }

        v80 = BYTE2(v74) ^ BYTE2(v72) ^ 1;
        if (v74 < 0)
        {
          v81 = 0;
        }

        else
        {
          v81 = BYTE2(v74) ^ BYTE2(v72) ^ 1;
        }

        if (v74 >= 0)
        {
          v80 = 0;
        }

        if (v72 < 0)
        {
          v27 = v80;
        }

        else
        {
          v27 = v81;
        }
      }

      return v27 & 1;
    case 0x13u:
      v54 = *(v22 + 2);
      v26 = v25;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_65;
      }

LABEL_56:
      v76 = v26[2];

      v27 = 1;
      return v27 & 1;
    default:
      sub_218F3B148(v22, type metadata accessor for FollowingModel);
      v26 = v24;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_66;
      }

LABEL_53:
      v42 = type metadata accessor for FollowingModel;
      v41 = v26;
      goto LABEL_54;
  }
}

uint64_t sub_218F3BE9C(uint64_t a1)
{
  v2 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F3C590(a1, v4, type metadata accessor for FollowingModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 1;
      break;
    case 2u:
      sub_218F3B148(v4, type metadata accessor for FollowingAudioModel);
      result = 2;
      break;
    case 3u:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 8;
      break;
    case 4u:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 9;
      break;
    case 5u:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 10;
      break;
    case 6u:
    case 7u:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 17;
      break;
    case 8u:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 16;
      break;
    case 9u:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 18;
      break;
    case 0xAu:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 12;
      break;
    case 0xBu:

      sub_218748BF4(0);
      v7 = *(v6 + 48);
      sub_218748D40(0);
      (*(*(v8 - 8) + 8))(&v4[v7], v8);
      result = 13;
      break;
    case 0xCu:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 14;
      break;
    case 0xDu:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 15;
      break;
    case 0xEu:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 11;
      break;
    case 0xFu:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 7;
      break;
    case 0x10u:
      sub_218F3B148(v4, type metadata accessor for FollowingMySportsModel);
      result = 3;
      break;
    case 0x11u:
      sub_218F3B148(v4, type metadata accessor for FollowingPuzzleHubModel);
      result = 4;
      break;
    case 0x12u:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 5;
      break;
    case 0x13u:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 6;
      break;
    default:
      sub_218F3B148(v4, type metadata accessor for FollowingModel);
      result = 0;
      break;
  }

  return result;
}

BOOL sub_218F3C23C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v22 - v8);
  sub_218F3C48C(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 56);
  sub_218F3C590(a1, v12, type metadata accessor for FollowingModel);
  sub_218F3C590(a2, &v12[v14], type metadata accessor for FollowingModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7)
  {
    sub_218F3C590(v12, v6, type metadata accessor for FollowingModel);
    v16 = *v6;
    v18 = swift_getEnumCaseMultiPayload();
    if (v18 != 6 && v18 != 7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 6)
    {
LABEL_10:
      v20 = sub_218F3BE9C(a1);
      v19 = v20 < sub_218F3BE9C(a2);
      sub_218F3B148(&v12[v14], type metadata accessor for FollowingModel);
      goto LABEL_11;
    }

    sub_218F3C590(v12, v9, type metadata accessor for FollowingModel);
    v16 = *v9;
    v17 = swift_getEnumCaseMultiPayload();
    if (v17 != 7 && v17 != 6)
    {
LABEL_9:

      goto LABEL_10;
    }
  }

  v19 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(*(v16 + 24), *(*&v12[v14] + 24));

LABEL_11:
  sub_218F3B148(v12, type metadata accessor for FollowingModel);
  return v19;
}

void sub_218F3C48C(uint64_t a1)
{
  if (!qword_280EDC568[0])
  {
    type metadata accessor for FollowingModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_280EDC568);
    }
  }
}

void sub_218F3C524(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218F3C590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218F3C5F8(uint64_t a1)
{
  if (!qword_27CC13A30)
  {
    sub_219BE7634();
    sub_218F3C524(255, &qword_27CC13A38, MEMORY[0x277D6DAF8], MEMORY[0x277D83940]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC13A30);
    }
  }
}

void sub_218F3C6A4(uint64_t a1)
{
  if (!qword_27CC1AAD0)
  {
    sub_219BE5854();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1AAD0);
    }
  }
}

uint64_t sub_218F3C70C()
{
  v0 = sub_219BE1544();
  v25 = *(v0 - 8);
  v26 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BE1524();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE9C04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDF074();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  sub_219BE9934();
  v17 = (*(v7 + 88))(v9, v6);
  if (v17 == *MEMORY[0x277D6E830])
  {
    v18 = MEMORY[0x277D2D868];
LABEL_9:
    v20 = *v18;
    v21 = *(v11 + 104);
    goto LABEL_10;
  }

  if (v17 == *MEMORY[0x277D6E840] || v17 == *MEMORY[0x277D6E848])
  {
    v18 = MEMORY[0x277D2D850];
    goto LABEL_9;
  }

  v21 = *(v11 + 104);
  if (v17 != *MEMORY[0x277D6E838])
  {
    v21(v16, *MEMORY[0x277D2D850], v10);
    (*(v7 + 8))(v9, v6);
    goto LABEL_11;
  }

  v20 = *MEMORY[0x277D2D810];
LABEL_10:
  v21(v16, v20, v10);
LABEL_11:
  sub_219BE9924();
  (*(v25 + 104))(v2, *MEMORY[0x277D2F3D8], v26);
  (*(v11 + 16))(v13, v16, v10);
  sub_219BE1514();
  sub_218F420A4(&qword_280EE7FE0, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
  v22 = v28;
  sub_219BDD1F4();
  (*(v27 + 8))(v5, v22);
  sub_219BDD134();
  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_218F3CB60(uint64_t a1)
{
  sub_218F40F48(0);
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x28223BE20](v2);
  v63 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF0B74();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308(0);
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x28223BE20](v7);
  v64 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F413E4(0, &unk_27CC13A60, MEMORY[0x277D6DA48]);
  v10 = v9;
  v11 = *(v9 - 8);
  v67 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v68 = &v56 - v12;
  sub_218985EAC(0);
  v61 = *(v13 - 8);
  v62 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SearchMoreModel(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F834(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v10;
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v21 + 8))(v23, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v27 = a1;
    if (EnumCaseMultiPayload == 2)
    {
      (*(v61 + 32))(v15, v18, v62);
      sub_219BF07D4();
      v28 = *(v71 + 16);
      swift_unknownObjectRetain();

      v29 = v70;
      v30 = v70[14];
      v66 = v70[15];
      __swift_project_boxed_opaque_existential_1(v70 + 11, v30);
      v31 = [v28 identifier];
      sub_219BF5414();

      v32 = sub_219BF4774();

      v66 = v29[2];
      v33 = v68;
      v34 = v69;
      (*(v11 + 16))(v68, v27, v69);
      v35 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v36 = v35 + v67;
      v37 = swift_allocObject();
      *(v37 + 16) = v29;
      *(v37 + 24) = v28;
      (*(v11 + 32))(v37 + v35, v33, v34);
      *(v37 + v36) = v32 & 1;
      swift_unknownObjectRetain();

      sub_219BDD154();
      swift_unknownObjectRelease();

      return (*(v61 + 8))(v15, v62);
    }

    else
    {
      (*(v65 + 32))(v64, v18, v66);
      sub_219BF07D4();
      v46 = sub_219BF0B44();
      (*(v57 + 8))(v6, v58);
      v47 = v70;
      __swift_project_boxed_opaque_existential_1(v70 + 11, v70[14]);
      v48 = [v46 identifier];
      sub_219BF5414();

      v49 = sub_219BF4774();

      v51 = v68;
      v50 = v69;
      (*(v11 + 16))(v68, v27, v69);
      v52 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v53 = v52 + v67;
      v54 = swift_allocObject();
      *(v54 + 16) = v47;
      *(v54 + 24) = v46;
      (*(v11 + 32))(v54 + v52, v51, v50);
      *(v54 + v53) = v49 & 1;

      v55 = v46;
      sub_219BDD154();

      return (*(v65 + 8))(v64, v66);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v39 = v59;
    v38 = v60;
    (*(v59 + 32))();
    sub_219BF07D4();
    v40 = *(v71 + 16);
    swift_unknownObjectRetain();

    v42 = v69;
    v41 = v70;
    v43 = v68;
    (*(v11 + 16))(v68, a1, v69);
    v44 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v41;
    *(v45 + 24) = v40;
    (*(v11 + 32))(v45 + v44, v43, v42);

    swift_unknownObjectRetain();
    sub_219BDD154();
    swift_unknownObjectRelease();

    return (*(v39 + 8))(v63, v38);
  }

  else
  {

    sub_218F41028(0);
    return sub_218F4120C(&v18[*(v25 + 48)], type metadata accessor for SearchMoreFeedGapLocation);
  }
}

uint64_t sub_218F3D394()
{
  sub_218F40F48(0);
  v90 = *(v0 - 8);
  v91 = v0;
  MEMORY[0x28223BE20](v0);
  v86 = v1;
  v87 = &v80 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v97 = &v80 - v3;
  sub_2186EB308(0);
  v88 = *(v4 - 8);
  v89 = v4;
  MEMORY[0x28223BE20](v4);
  v85 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v5;
  MEMORY[0x28223BE20](v6);
  v96 = &v80 - v7;
  v8 = sub_219BE0874();
  v98 = *(v8 - 8);
  v99 = v8;
  MEMORY[0x28223BE20](v8);
  v84 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v83 = &v80 - v11;
  MEMORY[0x28223BE20](v12);
  v82 = &v80 - v13;
  v14 = sub_219BDF034();
  v102 = *(v14 - 8);
  v103 = v14;
  v15 = *(v102 + 64);
  MEMORY[0x28223BE20](v14);
  v95 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v94 = &v80 - v17;
  MEMORY[0x28223BE20](v18);
  v101 = &v80 - v19;
  MEMORY[0x28223BE20](v20);
  v93 = &v80 - v21;
  v22 = sub_219BDD0A4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = (&v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218985EAC(0);
  v92 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 8);
  MEMORY[0x28223BE20](v26);
  v80 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v80 - v30;
  v32 = type metadata accessor for SearchMoreModel(0);
  MEMORY[0x28223BE20](v32);
  v34 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F834(0);
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {

      sub_218F41028(0);
      return sub_218F4120C(&v34[*(v36 + 48)], type metadata accessor for SearchMoreFeedGapLocation);
    }

    v51 = v90;
    v52 = *(v90 + 32);
    v53 = v34;
    v54 = v91;
    v96 = (v90 + 32);
    v94 = v52;
    (v52)(v97, v53, v91);
    v55 = v100;
    v56 = *(v100 + 16);
    *v25 = 6775156;
    v25[1] = 0xE300000000000000;
    (*(v23 + 104))(v25, *MEMORY[0x277CEAE48], v22);
    v93 = v56;
    sub_219BDD204();
    (*(v23 + 8))(v25, v22);
    v57 = *(v55 + 64);
    if (v57 < 0xA)
    {
      (*(v98 + 104))(v84, **(&unk_2782427C8 + v57), v99);

      v58 = v95;
      sub_219BDF024();
      v59 = v87;
      (*(v51 + 16))(v87, v97, v54);
      v60 = v54;
      v62 = v101;
      v61 = v102;
      v63 = v103;
      (*(v102 + 16))(v101, v58, v103);
      v64 = (*(v51 + 80) + 16) & ~*(v51 + 80);
      v65 = (v86 + *(v61 + 80) + v64) & ~*(v61 + 80);
      v66 = swift_allocObject();
      (v94)(v66 + v64, v59, v60);
      (*(v61 + 32))(v66 + v65, v62, v63);
      sub_219BDD154();

      (*(v61 + 8))(v95, v63);
      return (*(v51 + 8))(v97, v60);
    }

    v104 = *(v55 + 64);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v96 = v27;
    v97 = v31;
    v94 = *(v27 + 4);
    v95 = v27 + 32;
    (v94)(v31, v34, v92);
    v38 = v100;
    v39 = *(v100 + 16);
    *v25 = 0x656E696C64616568;
    v25[1] = 0xE800000000000000;
    (*(v23 + 104))(v25, *MEMORY[0x277CEAE48], v22);
    v91 = v39;
    sub_219BDD204();
    (*(v23 + 8))(v25, v22);
    v40 = *(v38 + 64);
    if (v40 < 0xA)
    {
      (*(v98 + 104))(v82, **(&unk_2782427C8 + v40), v99);

      v41 = v93;
      sub_219BDF024();
      v42 = v96;
      v43 = v80;
      v44 = v92;
      (*(v96 + 2))(v80, v97, v92);
      v46 = v101;
      v45 = v102;
      v47 = v103;
      (*(v102 + 16))(v101, v41, v103);
      v48 = (v42[80] + 16) & ~v42[80];
      v49 = (v28 + *(v45 + 80) + v48) & ~*(v45 + 80);
      v50 = swift_allocObject();
      (v94)(v50 + v48, v43, v44);
      (*(v45 + 32))(v50 + v49, v46, v47);
      sub_219BDD154();

      (*(v45 + 8))(v93, v47);
      return (*(v42 + 1))(v97, v44);
    }

    v104 = *(v38 + 64);
LABEL_14:

LABEL_16:

    result = sub_219BF7974();
    __break(1u);
    return result;
  }

  v93 = v15;
  v67 = v88;
  v68 = *(v88 + 32);
  v69 = v89;
  v97 = (v88 + 32);
  v95 = v68;
  (v68)(v96, v34);
  v70 = v100;
  *v25 = 0x657069636572;
  v25[1] = 0xE600000000000000;
  (*(v23 + 104))(v25, *MEMORY[0x277CEAE48], v22);
  sub_219BDD204();
  (*(v23 + 8))(v25, v22);
  v71 = *(v70 + 64);
  if (v71 >= 0xA)
  {
    v104 = *(v70 + 64);

    goto LABEL_16;
  }

  (*(v98 + 104))(v83, **(&unk_2782427C8 + v71), v99);

  v72 = v94;
  sub_219BDF024();
  v73 = v85;
  (*(v67 + 16))(v85, v96, v69);
  v75 = v101;
  v74 = v102;
  v76 = v103;
  (*(v102 + 16))(v101, v72, v103);
  v77 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v78 = (v81 + *(v74 + 80) + v77) & ~*(v74 + 80);
  v79 = swift_allocObject();
  (v95)(v79 + v77, v73, v69);
  (*(v74 + 32))(v79 + v78, v75, v76);
  sub_219BDD154();

  (*(v74 + 8))(v94, v76);
  return (*(v67 + 8))(v96, v69);
}

uint64_t sub_218F3DF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v18 = a3;
  v3 = sub_219BE0304();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE0514();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC(0);
  sub_219BF07D4();
  v11 = [*(*&v19[0] + 16) identifier];
  sub_219BF5414();

  (*(v4 + 104))(v6, *MEMORY[0x277D2E468], v3);
  sub_219BE0504();
  sub_218F420A4(&qword_27CC13A50, MEMORY[0x277D2E5B0], MEMORY[0x277D2E5A8]);
  sub_219BDCCC4();
  (*(v8 + 8))(v10, v7);
  sub_2187F5D38(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v12 = sub_219BDCD44();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C09BA0;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x277CEAD18], v12);
  sub_219BDF034();
  sub_218F420A4(&unk_280EE88E0, MEMORY[0x277D2D7D8], MEMORY[0x277D2D7D0]);
  sub_219BDCCC4();

  sub_219BE0AA4();
  sub_218F420A4(&qword_27CC13A58, MEMORY[0x277D2EA78], MEMORY[0x277D2EA70]);
  memset(v19, 0, sizeof(v19));
  sub_219BDCCE4();
  return sub_218F4120C(v19, sub_21880702C);
}

uint64_t sub_218F3E38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a3;
  v20 = sub_219BE0304();
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF0B74();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE0514();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308(0);
  sub_219BF07D4();
  sub_219BF0AF4();
  (*(v7 + 8))(v9, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D2E460], v20);
  sub_219BE0504();
  sub_218F420A4(&qword_27CC13A50, MEMORY[0x277D2E5B0], MEMORY[0x277D2E5A8]);
  sub_219BDCCC4();
  (*(v11 + 8))(v13, v10);
  sub_2187F5D38(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v14 = sub_219BDCD44();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_219C09BA0;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x277CEAD18], v14);
  sub_219BDF034();
  sub_218F420A4(&unk_280EE88E0, MEMORY[0x277D2D7D8], MEMORY[0x277D2D7D0]);
  sub_219BDCCC4();

  sub_219BE0AA4();
  sub_218F420A4(&qword_27CC13A58, MEMORY[0x277D2EA78], MEMORY[0x277D2EA70]);
  memset(v23, 0, sizeof(v23));
  sub_219BDCCE4();
  return sub_218F4120C(v23, sub_21880702C);
}

uint64_t sub_218F3E800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = a3;
  v3 = sub_219BE0304();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE0514();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F40F48(0);
  sub_219BF07D4();
  v11 = *(*&v19[0] + 16);
  swift_unknownObjectRetain();

  v12 = [v11 identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  (*(v4 + 104))(v6, *MEMORY[0x277D2E458], v3);
  sub_219BE0504();
  sub_218F420A4(&qword_27CC13A50, MEMORY[0x277D2E5B0], MEMORY[0x277D2E5A8]);
  sub_219BDCCC4();
  (*(v8 + 8))(v10, v7);
  sub_2187F5D38(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v13 = sub_219BDCD44();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C09BA0;
  (*(v14 + 104))(v16 + v15, *MEMORY[0x277CEAD18], v13);
  sub_219BDF034();
  sub_218F420A4(&unk_280EE88E0, MEMORY[0x277D2D7D8], MEMORY[0x277D2D7D0]);
  sub_219BDCCC4();

  sub_219BE0AA4();
  sub_218F420A4(&qword_27CC13A58, MEMORY[0x277D2EA78], MEMORY[0x277D2EA70]);
  memset(v19, 0, sizeof(v19));
  sub_219BDCCE4();
  return sub_218F4120C(v19, sub_21880702C);
}

uint64_t sub_218F3EC30(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v118 = a4;
  v135 = a3;
  v145 = a1;
  v124 = sub_219BDBD34();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_219BDF8A4();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v119 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_2187F5D38(0, &unk_280EE8690, MEMORY[0x277D2DD28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v102 = &v93 - v9;
  v104 = sub_219BDF754();
  v117 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F5D38(0, &qword_280EE8330, MEMORY[0x277D2E738], v7);
  MEMORY[0x28223BE20](v11 - 8);
  v114 = &v93 - v12;
  v116 = sub_219BE0724();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v14 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_219BE09E4();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDF104();
  v110 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F834(0);
  v108 = v19;
  v107 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v132 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F413E4(0, &qword_27CC13A70, MEMORY[0x277D6EC60]);
  v131 = v21;
  v105 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v134 = &v93 - v22;
  v23 = sub_219BDFCE4();
  v109 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v106 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_219BE1774();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_219BEFBD4();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_219BDF1A4();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_219BDF0E4();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  result = [a2 sourceChannel];
  v133 = result;
  if (!result)
  {
    return result;
  }

  v97 = v23;
  v98 = v18;
  v99 = v16;
  v93 = v14;
  v101 = ObjectType;
  v143 = a2;
  sub_219BF67F4();
  sub_2187F5D38(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v35 = v34;
  v36 = sub_219BDCD44();
  v37 = *(v36 - 8);
  v141 = *(v37 + 72);
  v38 = *(v37 + 80);
  v39 = swift_allocObject();
  v144 = xmmword_219C09BA0;
  *(v39 + 16) = xmmword_219C09BA0;
  v142 = *MEMORY[0x277CEAD18];
  v41 = *(v37 + 104);
  v40 = v37 + 104;
  v140 = v41;
  (v41)(v39 + ((v38 + 32) & ~v38));
  v139 = "ion expandLocation ";
  sub_218F420A4(&qword_280EE88B0, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
  sub_219BDCCC4();

  v42 = v31;
  v43 = (v38 + 32) & ~v38;
  (*(v29 + 8))(v42, v28);
  v44 = v126;
  v45 = v125;
  v46 = v127;
  (*(v126 + 104))(v125, *MEMORY[0x277D329E0], v127);
  v47 = v128;
  sub_219BE02C4();
  (*(v44 + 8))(v45, v46);
  v136 = v38;
  v137 = v35;
  v48 = v142;
  v49 = swift_allocObject();
  *(v49 + 16) = v144;
  v127 = v43;
  v138 = v36;
  v140(v49 + v43, v48, v36);
  sub_218F420A4(&unk_280EE8850, MEMORY[0x277D2D950], MEMORY[0x277D2D948]);
  v50 = v130;
  sub_219BDCCC4();

  (*(v129 + 8))(v47, v50);
  v51 = [v143 scoreProfile];
  v52 = v131;
  if (v51)
  {
    v53 = v51;
    if ([v51 hasShadowScores])
    {
      [v53 shadowTabiScore];
      [v53 shadowAgedPersonalizationScore];
      v54 = v94;
      sub_219BE1764();
      v55 = v127;
      v56 = swift_allocObject();
      *(v56 + 16) = v144;
      v140(v56 + v55, v48, v138);
      sub_218F420A4(&unk_280EE7F40, MEMORY[0x277D2F8F0], MEMORY[0x277D2F8E8]);
      v57 = v96;
      sub_219BDCCC4();

      (*(v95 + 8))(v54, v57);
    }

    else
    {
    }
  }

  sub_218F413E4(0, &unk_27CC13A60, MEMORY[0x277D6DA48]);
  v59 = v58;
  sub_219BE7594();
  v60 = v132;
  sub_219BE7564();
  sub_218F420A4(&unk_27CC13A78, type metadata accessor for SearchMoreModel, &unk_219CB2584);
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v130 = v59;
  v61 = v106;
  sub_219BDFCD4();
  (*(v107 + 8))(v60, v108);
  (*(v105 + 8))(v134, v52);
  v62 = v127;
  v100 = v40;
  v63 = swift_allocObject();
  *(v63 + 16) = v144;
  v64 = v138;
  (v140)(v63 + v62, v142);
  sub_218F420A4(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v65 = v97;
  sub_219BDCCC4();

  (*(v109 + 8))(v61, v65);
  v66 = v98;
  sub_219BE01F4();
  v67 = swift_allocObject();
  *(v67 + 16) = v144;
  v68 = v140;
  v140(v67 + v62, v142, v64);
  sub_218F420A4(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
  v69 = v99;
  sub_219BDCCC4();

  (*(v110 + 8))(v66, v69);
  v70 = v111;
  sub_219BE01E4();
  v71 = v68;
  v72 = v142;
  v73 = swift_allocObject();
  *(v73 + 16) = v144;
  v71(v73 + v62, v72, v138);
  sub_218F420A4(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
  v74 = v113;
  sub_219BDCCC4();

  (*(v112 + 8))(v70, v74);
  v75 = v114;
  sub_219BF6824();
  v76 = v115;
  v77 = v116;
  if ((*(v115 + 48))(v75, 1, v116) == 1)
  {
    v78 = v62;
    sub_218F414D8(v75, &qword_280EE8330, MEMORY[0x277D2E738]);
  }

  else
  {
    v79 = v93;
    (*(v76 + 32))(v93, v75, v77);
    v80 = swift_allocObject();
    *(v80 + 16) = v144;
    v78 = v62;
    v140(v80 + v62, v72, v138);
    sub_218F420A4(&unk_27CC0DC50, MEMORY[0x277D2E738], MEMORY[0x277D2E730]);
    sub_219BDCCC4();

    (*(v76 + 8))(v79, v77);
  }

  v81 = v104;
  v82 = v102;
  sub_219BF6804();
  v83 = v117;
  if ((*(v117 + 48))(v82, 1, v81) == 1)
  {
    sub_218F414D8(v82, &unk_280EE8690, MEMORY[0x277D2DD28]);
    v84 = v140;
    v85 = v142;
  }

  else
  {
    (*(v83 + 32))(v103, v82, v81);
    v86 = swift_allocObject();
    *(v86 + 16) = v144;
    v85 = v142;
    v84 = v140;
    v140(v86 + v78, v142, v138);
    sub_218F420A4(&unk_280EE86A0, MEMORY[0x277D2DD28], MEMORY[0x277D2DD20]);
    sub_219BDCCC4();

    (*(v83 + 8))(v103, v81);
  }

  v87 = v119;
  sub_219BDF894();
  v88 = swift_allocObject();
  *(v88 + 16) = v144;
  v84(v88 + v78, v85, v138);
  sub_218F420A4(&qword_280EE8640, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
  v89 = v121;
  sub_219BDCCC4();

  (*(v120 + 8))(v87, v89);
  sub_219BE0834();
  v90 = v122;
  sub_219BE75A4();
  sub_218F420A4(&qword_280EE82C0, MEMORY[0x277D2E858], MEMORY[0x277D2E840]);
  sub_219BDCC64();
  v91 = *(v123 + 8);
  v92 = v124;
  v91(v90, v124);
  sub_219BE7574();
  v146[3] = sub_219BDF4D4();
  __swift_allocate_boxed_opaque_existential_1(v146);
  swift_unknownObjectRetain();
  sub_219BDF4C4();
  sub_219BDCC84();
  swift_unknownObjectRelease();
  v91(v90, v92);
  return sub_218F4120C(v146, sub_21880702C);
}

uint64_t sub_218F4020C(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v65 = a4;
  v81 = a3;
  v84 = a1;
  v5 = sub_219BDBD34();
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x28223BE20](v5);
  v69 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDF8A4();
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x28223BE20](v7);
  v66 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_219BDEFE4();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_219BDFCE4();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v85 = sub_219BEF9C4();
  v11 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_219BDFFE4();
  v64 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_219BE09E4();
  v63 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_219BDF104();
  v62 = *(v77 - 8);
  *&v18 = MEMORY[0x28223BE20](v77).n128_u64[0];
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a2 sourceChannel];
  v75 = v20;
  v22 = a2;
  sub_219BE01F4();
  swift_unknownObjectRelease();
  v23 = [a2 sourceChannel];
  v76 = v17;
  sub_219BE01E4();
  swift_unknownObjectRelease();
  v24 = v85;
  (*(v11 + 104))(v13, *MEMORY[0x277D32840], v85);
  v78 = v15;
  sub_219BE02B4();
  (*(v11 + 8))(v13, v24);
  sub_218F413E4(0, &unk_27CC13A60, MEMORY[0x277D6DA48]);
  v26 = v25;
  sub_218F420A4(&unk_27CC13A78, type metadata accessor for SearchMoreModel, &unk_219CB2584);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v28 = v56;
    sub_219BDFCD4();
    sub_2187F5D38(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v72 = v29;
    v54 = sub_219BDCD44();
    v30 = *(v54 - 8);
    v55 = v26;
    v31 = v30;
    v73 = *(v30 + 80);
    v32 = (v73 + 32) & ~v73;
    v33 = swift_allocObject();
    v85 = xmmword_219C09BA0;
    *(v33 + 16) = xmmword_219C09BA0;
    v74 = *MEMORY[0x277CEAD18];
    v83 = *(v31 + 104);
    v83(v33 + v32);
    v53 = v31 + 104;
    v82 = "ion expandLocation ";
    sub_218F420A4(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
    v34 = v58;
    sub_219BDCCC4();

    (*(v57 + 8))(v28, v34);
    v35 = [v22 identifier];
    sub_219BF5414();

    [v22 isPaid];
    v36 = [v22 totalTime];
    sub_219BF5414();

    v37 = v59;
    sub_219BDEFB4();
    v38 = swift_allocObject();
    *(v38 + 16) = v85;
    v39 = v54;
    (v83)(v38 + v32, v74, v54);
    sub_218F420A4(&qword_280EE8900, MEMORY[0x277D2D798], MEMORY[0x277D2D790]);
    v40 = v61;
    sub_219BDCCC4();

    (*(v60 + 8))(v37, v40);
    v41 = swift_allocObject();
    *(v41 + 16) = v85;
    v42 = v74;
    v43 = v83;
    (v83)(v41 + v32, v74, v39);
    sub_218F420A4(&unk_280EE84E0, MEMORY[0x277D2E2C0], MEMORY[0x277D2E2B8]);
    sub_219BDCCC4();

    v44 = swift_allocObject();
    *(v44 + 16) = v85;
    v43(v44 + v32, v42, v39);
    sub_218F420A4(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    sub_219BDCCC4();

    v45 = swift_allocObject();
    *(v45 + 16) = v85;
    v46 = v83;
    (v83)(v45 + v32, v42, v39);
    sub_218F420A4(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    sub_219BDCCC4();

    v47 = v66;
    sub_219BDF894();
    v48 = swift_allocObject();
    *(v48 + 16) = v85;
    v46(v48 + v32, v42, v39);
    sub_218F420A4(&qword_280EE8640, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
    v49 = v68;
    sub_219BDCCC4();

    (*(v67 + 8))(v47, v49);
    sub_219BE04C4();
    v50 = v69;
    sub_219BE75A4();
    sub_218F420A4(&unk_280EE83D0, MEMORY[0x277D2E570], MEMORY[0x277D2E568]);
    sub_219BDCC64();
    v51 = v71;
    v52 = *(v70 + 8);
    v52(v50, v71);
    sub_219BE7574();
    sub_219BDCC74();
    v52(v50, v51);
    (*(v64 + 8))(v78, v80);
    (*(v63 + 8))(v76, v79);
    return (*(v62 + 8))(v75, v77);
  }

  __break(1u);
  return result;
}

uint64_t sub_218F40EBC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return swift_deallocClassInstance();
}

void sub_218F40F48(uint64_t a1)
{
  if (!qword_280E90E60)
  {
    type metadata accessor for TagModel();
    sub_218F420A4(&unk_280E92B30, type metadata accessor for TagModel, &protocol conformance descriptor for TagModel);
    sub_218F420A4(qword_280E92B40, type metadata accessor for TagModel, &protocol conformance descriptor for TagModel);
    v1 = sub_219BF0854();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90E60);
    }
  }
}

void sub_218F41028(uint64_t a1)
{
  if (!qword_27CC209F0)
  {
    type metadata accessor for SearchMoreFeedGapLocation(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC209F0);
    }
  }
}

uint64_t sub_218F410F4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_219BDF034() - 8);
  v9 = v3 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return a3(a1, v3 + v6, v9);
}

uint64_t sub_218F4120C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218F4126C(uint64_t a1)
{
  sub_218F413E4(0, &unk_27CC13A60, MEMORY[0x277D6DA48]);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));

  return sub_218F41548(a1, v4, v5);
}

uint64_t sub_218F4132C(uint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t, void))
{
  sub_218F413E4(0, &unk_27CC13A60, MEMORY[0x277D6DA48]);
  v6 = v2 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));
  return a2(a1, *(v2 + 24), v6, *(v6 + *(*(v5 - 8) + 64)));
}

void sub_218F413E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchMoreSectionDescriptor(255);
    v8[1] = type metadata accessor for SearchMoreModel(255);
    v8[2] = sub_218F420A4(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor, &unk_219C702A4);
    v8[3] = sub_218F420A4(&qword_27CC0B890, type metadata accessor for SearchMoreModel, &unk_219CB2414);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218F414D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2187F5D38(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218F41548(uint64_t a1, void *a2, uint64_t a3)
{
  v84 = a2;
  v91 = a1;
  v4 = sub_219BDBD34();
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x28223BE20](v4);
  v81 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDF1E4();
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x28223BE20](v6);
  v78 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDFCE4();
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x28223BE20](v8);
  v75 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE1444();
  v86 = *(v10 - 8);
  v87 = v10;
  MEMORY[0x28223BE20](v10);
  v85 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F834(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F413E4(0, &qword_27CC13A70, MEMORY[0x277D6EC60]);
  v18 = v17;
  v90 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v62 - v19;
  sub_218F42030(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F413E4(0, &qword_27CC13A90, MEMORY[0x277D6D710]);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v92 = v62 - v27;
  sub_218F413E4(0, &unk_27CC13A60, MEMORY[0x277D6DA48]);
  v29 = v28;
  sub_219BE7594();
  v88 = v29;
  v89 = a3;
  sub_219BE7564();
  sub_219BE5F84();
  v30 = *(v14 + 8);
  v31 = v14 + 8;
  v32 = v18;
  v33 = v90;
  v73 = v31;
  v74 = v13;
  v72 = v30;
  v30(v16, v13);
  sub_219BEB244();

  v34 = *(v33 + 8);
  v34(v20, v32);
  if ((*(v26 + 48))(v23, 1, v25) == 1)
  {
    return sub_218F4120C(v23, sub_218F42030);
  }

  v67 = v34;
  v69 = v26;
  v36 = *(v26 + 32);
  v90 = v25;
  v36(v92, v23, v25);
  v37 = [v84 identifier];
  sub_219BF5414();

  v38 = v85;
  sub_219BE1424();
  sub_2187F5D38(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v40 = v39;
  v41 = sub_219BDCD44();
  v42 = *(v41 - 8);
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v44 = v43 + *(v42 + 72);
  v84 = *(v42 + 80);
  v66 = v40;
  v64 = v44;
  v45 = swift_allocObject();
  v70 = xmmword_219C09BA0;
  *(v45 + 16) = xmmword_219C09BA0;
  v46 = *MEMORY[0x277CEAD18];
  v48 = *(v42 + 104);
  v47 = v42 + 104;
  v65 = v43;
  v71 = v46;
  v68 = v41;
  v63 = v48;
  v48(v45 + v43);
  sub_218F420A4(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
  v49 = v87;
  sub_219BDCCC4();

  (*(v86 + 8))(v38, v49);
  sub_219BE7594();
  sub_219BE7564();
  sub_218F420A4(&unk_27CC13A78, type metadata accessor for SearchMoreModel, &unk_219CB2584);
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v50 = v75;
  sub_219BDFCD4();
  v72(v16, v74);
  v67(v20, v32);
  v62[1] = v47;
  v51 = swift_allocObject();
  *(v51 + 16) = v70;
  v62[2] = "ion expandLocation ";
  v52 = v65;
  v53 = v68;
  v54 = v63;
  v63(v51 + v65, v71, v68);
  sub_218F420A4(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v55 = v77;
  sub_219BDCCC4();

  (*(v76 + 8))(v50, v55);
  sub_219BE6944();
  v56 = v78;
  sub_219BDF1C4();
  v57 = swift_allocObject();
  *(v57 + 16) = v70;
  v54(v57 + v52, v71, v53);
  sub_218F420A4(&unk_280EE8840, MEMORY[0x277D2D970], MEMORY[0x277D2D968]);
  v58 = v80;
  sub_219BDCCC4();

  (*(v79 + 8))(v56, v58);
  sub_219BDFEC4();
  v59 = v81;
  sub_219BE75A4();
  sub_218F420A4(&unk_280EE8520, MEMORY[0x277D2E1D0], MEMORY[0x277D2E1C8]);
  sub_219BDCC64();
  v60 = v83;
  v61 = *(v82 + 8);
  v61(v59, v83);
  sub_219BE7574();
  sub_219BDCC74();
  v61(v59, v60);
  return (*(v69 + 8))(v92, v90);
}

void sub_218F42030(uint64_t a1)
{
  if (!qword_27CC13A88)
  {
    sub_218F413E4(255, &qword_27CC13A90, MEMORY[0x277D6D710]);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC13A88);
    }
  }
}

uint64_t sub_218F420A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218F420EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F428F4(0, &qword_27CC13AC8, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SportsEventTopicTagFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F4283C();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218F42958(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218F42890(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218F42398(uint64_t a1)
{
  v2 = sub_218F4283C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218F423D4(uint64_t a1)
{
  v2 = sub_218F4283C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218F42450(void *a1)
{
  sub_218F428F4(0, &qword_27CC13AD8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F4283C();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218F42958(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218F426B0(uint64_t a1)
{
  result = sub_218F42958(&unk_27CC1C5E0, type metadata accessor for SportsEventTopicTagFeedGroup, &unk_219C485D4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218F42708(void *a1)
{
  a1[1] = sub_218F42958(&qword_27CC13AB0, type metadata accessor for SportsEventTopicTagFeedGroup, &unk_219C48500);
  a1[2] = sub_218F42958(&qword_27CC13AB8, type metadata accessor for SportsEventTopicTagFeedGroup, &unk_219C485AC);
  result = sub_218F42958(&qword_27CC13AC0, type metadata accessor for SportsEventTopicTagFeedGroup, &unk_219C48584);
  a1[3] = result;
  return result;
}

uint64_t sub_218F427B4(uint64_t a1)
{
  v2 = sub_218F42958(&qword_27CC13AB0, type metadata accessor for SportsEventTopicTagFeedGroup, &unk_219C48500);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218F4283C()
{
  result = qword_27CC13AD0;
  if (!qword_27CC13AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13AD0);
  }

  return result;
}

uint64_t sub_218F42890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsEventTopicTagFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218F428F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218F4283C();
    v7 = a3(a1, &type metadata for SportsEventTopicTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218F42958(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_218F429B4()
{
  result = qword_27CC13AE0;
  if (!qword_27CC13AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13AE0);
  }

  return result;
}

unint64_t sub_218F42A0C()
{
  result = qword_27CC13AE8;
  if (!qword_27CC13AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13AE8);
  }

  return result;
}

unint64_t sub_218F42A64()
{
  result = qword_27CC13AF0;
  if (!qword_27CC13AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13AF0);
  }

  return result;
}

uint64_t sub_218F42AB8(uint64_t a1)
{
  v22 = type metadata accessor for TagFeedLayoutModel(0);
  MEMORY[0x28223BE20](v22);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58934(0);
  v21 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v18[1] = v1;
    v23 = MEMORY[0x277D84F90];
    sub_218C34D90(0, v9, 0);
    v10 = v23;
    v20 = sub_219BEF974();
    v11 = *(v20 - 8);
    v12 = *(v11 + 16);
    v18[3] = v11 + 16;
    v19 = v12;
    v13 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18[2] = v6 + 32;
    v14 = *(v11 + 72);
    do
    {
      v19(v4, v13, v20);
      sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
      sub_219BE75D4();
      v23 = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_218C34D90((v15 > 1), v16 + 1, 1);
        v10 = v23;
      }

      *(v10 + 16) = v16 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v8, v21);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void *sub_218F42D28(uint64_t a1)
{
  v41 = type metadata accessor for TagFeedLayoutModel(0);
  MEMORY[0x28223BE20](v41);
  v40 = (v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21898BF70(0);
  v39 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58934(0);
  v38 = v7;
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v11 = v10;
  v12 = sub_218F54E5C(&unk_280EE5850, sub_218954350, MEMORY[0x277D6D730]);
  v13 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v45 = MEMORY[0x277D84F90];
    sub_218C34D90(0, v13 & ~(v13 >> 63), 0);
    v43 = v45;
    result = sub_219BF5DF4();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v36 = v9;
      v31[1] = v1;
      v15 = 0;
      v34 = (v5 + 16);
      v33 = *MEMORY[0x277D32830];
      v31[3] = v42 + 32;
      v32 = (v5 + 8);
      v35 = v13;
      v31[2] = v12;
      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v17 = sub_219BF5EC4();
        v18 = v37;
        v19 = v39;
        (*v34)(v37);
        v17(v44, 0);
        v20 = swift_allocObject();
        *(v20 + 16) = sub_219BE5F84();
        *(v20 + 24) = v21;
        v22 = v40;
        *v40 = v20;
        v23 = sub_219BEF974();
        (*(*(v23 - 8) + 104))(v22, v33, v23);
        sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
        v24 = v11;
        v25 = v36;
        sub_219BE75D4();
        (*v32)(v18, v19);
        v26 = v43;
        v45 = v43;
        v27 = a1;
        v29 = *(v43 + 16);
        v28 = *(v43 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_218C34D90((v28 > 1), v29 + 1, 1);
          v26 = v45;
        }

        *(v26 + 16) = v29 + 1;
        v30 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v43 = v26;
        (*(v42 + 32))(v26 + v30 + *(v42 + 72) * v29, v25, v38);
        result = sub_219BF5E94();
        ++v15;
        a1 = v27;
        v11 = v24;
        if (v16 == v35)
        {
          return v43;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_218F43190()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_218F43294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = sub_219BE8944();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  sub_21898BBC4(0);
  v5[18] = swift_task_alloc();
  sub_21898BBF8(0);
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  sub_218954350(0);
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v9 = MEMORY[0x277D83D88];
  sub_218F54EA4(0, &qword_280E8E970, sub_21898BBF8, MEMORY[0x277D83D88]);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_218954408(0);
  v5[28] = v10;
  v5[29] = *(v10 - 8);
  v5[30] = swift_task_alloc();
  sub_218F534E0(0, &qword_280E8D430, &qword_280EE36E0, MEMORY[0x277D6EC68], MEMORY[0x277D843E8]);
  v5[31] = swift_task_alloc();
  sub_21898BC64(0);
  v5[32] = v11;
  v5[33] = swift_task_alloc();
  sub_219BEF6B4();
  v5[34] = swift_task_alloc();
  v12 = sub_219BEF594();
  v5[35] = v12;
  v5[36] = *(v12 - 8);
  v5[37] = swift_task_alloc();
  sub_219BEF5B4();
  v5[38] = swift_task_alloc();
  sub_219BEF644();
  v5[39] = swift_task_alloc();
  sub_219BEF664();
  v5[40] = swift_task_alloc();
  v13 = sub_219BEF694();
  v5[41] = v13;
  v5[42] = *(v13 - 8);
  v5[43] = swift_task_alloc();
  sub_218F54EA4(0, &qword_280E91358, MEMORY[0x277D326A8], v9);
  v5[44] = swift_task_alloc();
  v14 = sub_219BE8164();
  v5[45] = v14;
  v5[46] = *(v14 - 8);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  sub_218F54EA4(0, &qword_280E91368, MEMORY[0x277D32698], v9);
  v5[49] = swift_task_alloc();
  sub_219BEF604();
  v5[50] = swift_task_alloc();
  v15 = sub_219BEF6C4();
  v5[51] = v15;
  v5[52] = *(v15 - 8);
  v5[53] = swift_task_alloc();
  sub_219BDCAF4();
  v5[54] = swift_task_alloc();
  v16 = sub_219BDCAE4();
  v5[55] = v16;
  v5[56] = *(v16 - 8);
  v5[57] = swift_task_alloc();
  v17 = sub_219BDCAB4();
  v5[58] = v17;
  v5[59] = *(v17 - 8);
  v5[60] = swift_task_alloc();
  sub_218B6AF30(0);
  v5[61] = swift_task_alloc();
  v18 = sub_219BF0634();
  v5[62] = v18;
  v5[63] = *(v18 - 8);
  v5[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218F43A04, 0, 0);
}

void sub_218F43A04()
{
  v100 = v0;
  if (qword_280E8D7F8 != -1)
  {
LABEL_29:
    swift_once();
  }

  sub_219BF63B4();
  v1 = sub_219759E94();
  if ((~v1 & 0xF000000000000007) != 0)
  {
    v3 = v1;
    type metadata accessor for TagFeedServiceConfig(0);
    sub_218F54E5C(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    sub_219BEE7A4();
    sub_21885AB78(v3);
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v67 = v0[64];
  v4 = v0[61];
  v78 = v0[63];
  v80 = v0[62];
  v63 = v4;
  v6 = v0[59];
  v5 = v0[60];
  v7 = v0[58];
  v95 = v0[57];
  v70 = v0[56];
  v72 = v0[55];
  v65 = v0[53];
  v66 = v0[52];
  v68 = v0[51];
  v92 = v0[49];
  v55 = v0[48];
  v8 = v0[46];
  v57 = v0[44];
  v58 = v0[43];
  v9 = v0[42];
  v56 = v0[45];
  v59 = v0[41];
  v60 = v0[36];
  v61 = v0[37];
  v62 = v0[35];
  v84 = v0[33];
  v82 = v0[32];
  v74 = v0[31];
  v76 = v0[30];
  v71 = v0[29];
  v73 = v0[28];
  v87 = v0[23];
  v89 = v0[20];
  v54 = v0[19];
  v10 = v0[12];
  v69 = v0[11];
  v11 = sub_219BF0BD4();
  (*(*(v11 - 8) + 56))(v4, v2, 1, v11);
  (*(v6 + 104))(v5, *MEMORY[0x277D6D178], v7);
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

  v12 = v54;
  sub_219BDCAC4();
  sub_219BEF5F4();
  v53 = *(v8 + 16);
  v53(v55, v10, v56);
  v13 = v84;
  sub_219BEF614();
  v14 = sub_219BEF624();
  (*(*(v14 - 8) + 56))(v92, 0, 1, v14);
  v15 = sub_219BEF684();
  (*(*(v15 - 8) + 56))(v57, 1, 1, v15);
  (*(v9 + 104))(v58, *MEMORY[0x277D326B0], v59);
  sub_219BEF654();
  sub_219BEF5F4();
  (*(v60 + 104))(v61, *MEMORY[0x277D32680], v62);
  sub_219BEF5A4();
  sub_219BEF6A4();

  sub_219BEF5C4();
  v64 = sub_219BEE0E4();
  (*(v66 + 8))(v65, v68);
  (*(v70 + 8))(v95, v72);
  (*(v6 + 8))(v5, v7);
  sub_218864CF4(v63, sub_218B6AF30);
  (*(v78 + 8))(v67, v80);
  v99[0] = 0;
  (*(v71 + 16))(v74, v69, v73);
  (*(v71 + 32))(v76, v74, v73);
  sub_218F54E5C(&qword_280EE36E0, sub_218954408, MEMORY[0x277D6EC68]);
  sub_219BF56A4();
  v81 = *(v82 + 36);
  *(v84 + v81) = 0;
  v16 = MEMORY[0x277D6EC70];
  sub_218F534E0(0, &qword_280E8D490, &unk_280EE36D0, MEMORY[0x277D6EC70], MEMORY[0x277D84310]);
  v83 = (v87 + 16);
  v18 = *(v17 + 36);
  v19 = (v89 + 56);
  v91 = (v89 + 48);
  v93 = (v87 + 32);
  v88 = (v87 + 8);
  sub_218F54E5C(&unk_280EE36D0, sub_218954408, v16);
  v77 = 0;
  v75 = 0;
  v96 = 0;
  v90 = 0;
  v79 = v19;
  while (1)
  {
    sub_219BF5E84();
    if (*(v13 + v18) == v0[6])
    {
      v20 = 1;
    }

    else
    {
      v21 = v0[25];
      v22 = v0[22];
      v85 = v0[21];
      v23 = v18;
      v24 = v12;
      v25 = sub_219BF5EC4();
      (*v83)(v21);
      v25(v0 + 2, 0);
      v12 = v24;
      v18 = v23;
      v13 = v84;
      sub_219BF5E94();
      v26 = *(v12 + 48);
      *v85 = v90;
      (*v93)(&v85[v26], v21, v22);
      v27 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      v28 = v0[26];
      v29 = v0[21];
      ++v90;
      *(v84 + v81) = v27;
      sub_218F53578(v29, v28);
      v20 = 0;
      v19 = v79;
    }

    v31 = v0[26];
    v30 = v0[27];
    v32 = v0[19];
    (*v19)(v31, v20, 1, v32);
    sub_218F535DC(v31, v30);
    if ((*v91)(v30, 1, v32) == 1)
    {
      break;
    }

    v33 = v0[27];
    v34 = *v33;
    (*v93)(v0[24], v33 + *(v12 + 48), v0[22]);
    if (v96)
    {
      (*v88)(v0[24], v0[22]);
      v96 = 1;
    }

    else
    {
      sub_219BE6934();
      v35 = (v0[7] >> 58) & 0x3C | (v0[7] >> 1) & 3;
      if (v35 == 8)
      {
        goto LABEL_16;
      }

      if (v35)
      {
        (*v88)(v0[24], v0[22]);

        if (v75)
        {
          v77 = 1;
          v75 = 1;
          v96 = 1;
        }

        else
        {
          v75 = 0;
          v96 = 0;
        }
      }

      else
      {
        type metadata accessor for TagFeedSectionGapDescriptor(0);
        v36 = swift_projectBox();
        v37 = type metadata accessor for TagFeedBlueprintCollapsedSection(0);
        if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
        {
LABEL_16:
          (*v88)(v0[24], v0[22]);

          v96 = 0;
        }

        else
        {
          v97 = v0[24];
          v86 = v0[22];
          sub_219BF5DF4();
          sub_219BF5E84();
          v38 = sub_219BF5E74();
          (*v88)(v97, v86);

          v39 = v38 - 1;
          if (__OFSUB__(v38, 1))
          {
            __break(1u);
            return;
          }

          v40 = v34 == v39;
          v96 = v34 == v39;
          v41 = v77;
          if (v40)
          {
            v41 = 1;
          }

          v77 = v41;
          v75 = 1;
        }
      }
    }
  }

  v99[0] = v77;
  v42 = v0[47];
  v43 = v0[45];
  v44 = v0[22];
  v45 = v0[23];
  v46 = v0[18];
  v48 = v0[15];
  v47 = v0[16];
  v49 = v0[14];
  v50 = v0[12];
  v94 = v0[17];
  v98 = v0[11];
  sub_218864CF4(v0[33], sub_21898BC64);
  (*(v45 + 56))(v46, 1, 1, v44);
  v53(v42, v50, v43);
  (*(v47 + 104))(v94, *MEMORY[0x277D6E080], v48);

  sub_218F544F4(v98, v46, v49, v64, v99);
  v51 = v0[18];

  type metadata accessor for TagFeedLayoutModel(0);
  sub_218DED7F0();
  sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
  sub_219BE6564();
  sub_218864CF4(v51, sub_21898BBC4);
  sub_219BEE0C4();

  v52 = v0[1];

  v52();
}

uint64_t sub_218F4495C@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X2>, _BYTE *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v1189 = a5;
  v1232 = a4;
  v1170 = a3;
  v1233 = a2;
  v1234 = a1;
  v1231 = a6;
  v6 = type metadata accessor for TopicRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v1149 = &v1070 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TrendingRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v1191 = (&v1070 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for SavedRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v1148 = &v1070 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LatestRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v12 - 8);
  v1190 = (&v1070 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for SponsoredBannerTagFeedGroup(0);
  MEMORY[0x28223BE20](v14 - 8);
  v1147 = &v1070 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AffinityTagFeedGroup(0);
  MEMORY[0x28223BE20](v16 - 8);
  v1146 = &v1070 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PuzzleScoreboardTagFeedGroup(0);
  MEMORY[0x28223BE20](v18 - 8);
  v1145 = &v1070 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PuzzleFullArchiveTagFeedGroup(0);
  MEMORY[0x28223BE20](v20 - 8);
  v1144 = &v1070 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PuzzleFeaturedTagFeedGroup(0);
  MEMORY[0x28223BE20](v22 - 8);
  v1143 = &v1070 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup(0);
  MEMORY[0x28223BE20](v24 - 8);
  v1142 = &v1070 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PuzzleArchiveTagFeedGroup(0);
  MEMORY[0x28223BE20](v26 - 8);
  v1141 = &v1070 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PuzzleListTagFeedGroup(0);
  MEMORY[0x28223BE20](v28 - 8);
  v1140 = &v1070 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SportsEventTopicTagFeedGroup(0);
  MEMORY[0x28223BE20](v30 - 8);
  v1139 = &v1070 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for SportsMastheadTagFeedGroup(0);
  MEMORY[0x28223BE20](v32 - 8);
  v1138 = &v1070 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for SportsOnboardingTagFeedGroup(0);
  MEMORY[0x28223BE20](v34 - 8);
  v1137 = &v1070 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1134 = type metadata accessor for DateRangeTagFeedGroup(0);
  MEMORY[0x28223BE20](v1134);
  v1136 = &v1070 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v37 - 8);
  v1135 = &v1070 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for RecentStoriesTagFeedGroup(0);
  MEMORY[0x28223BE20](v39 - 8);
  v1133 = &v1070 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ForYouRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v41 - 8);
  v1132 = &v1070 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for ChannelRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v43 - 8);
  v1131 = &v1070 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1129 = type metadata accessor for ForYouTagFeedGroup(0);
  MEMORY[0x28223BE20](v1129);
  v1130 = &v1070 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for HighlightsTagFeedGroup(0);
  MEMORY[0x28223BE20](v46 - 8);
  v1128 = &v1070 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SportsEventArticlesTagFeedGroup(0);
  MEMORY[0x28223BE20](v48 - 8);
  v1127 = &v1070 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SportsKeyPlayersTagFeedGroup(0);
  MEMORY[0x28223BE20](v50 - 8);
  v1126 = &v1070 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for SportsInjuryReportsTagFeedGroup(0);
  MEMORY[0x28223BE20](v52 - 8);
  v1125 = &v1070 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for SportsEventInfoTagFeedGroup(0);
  MEMORY[0x28223BE20](v54 - 8);
  v1188 = (&v1070 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for SportsBoxScoresTagFeedGroup(0);
  MEMORY[0x28223BE20](v56 - 8);
  v1187 = (&v1070 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = type metadata accessor for SportsBracketTagFeedGroup(0);
  MEMORY[0x28223BE20](v58 - 8);
  v1186 = (&v1070 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = type metadata accessor for SportsStandingsTagFeedGroup(0);
  MEMORY[0x28223BE20](v60 - 8);
  v1185 = (&v1070 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1124 = type metadata accessor for MySportsTopicTagFeedGroup(0);
  MEMORY[0x28223BE20](v1124);
  v1184 = (&v1070 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = type metadata accessor for SportsLinksTagFeedGroup(0);
  MEMORY[0x28223BE20](v63 - 8);
  v1183 = (&v1070 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1123 = type metadata accessor for SportsScoresTagFeedGroup(0);
  MEMORY[0x28223BE20](v1123);
  v1182 = (&v1070 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = type metadata accessor for SportsFavoritesTagFeedGroup(0);
  MEMORY[0x28223BE20](v66 - 8);
  v1181 = (&v1070 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1122 = type metadata accessor for SportsTopStoriesTagFeedGroup(0);
  MEMORY[0x28223BE20](v1122);
  v1180 = (&v1070 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = type metadata accessor for SportsScheduleTagFeedGroup(0);
  MEMORY[0x28223BE20](v69 - 8);
  v1179 = (&v1070 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1120 = type metadata accessor for SportsNavigationTagFeedGroup(0);
  MEMORY[0x28223BE20](v1120);
  v1178 = (&v1070 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = type metadata accessor for SportsRecordTagFeedGroup(0);
  MEMORY[0x28223BE20](v72 - 8);
  v1177 = (&v1070 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for CuratedTagFeedGroup(0);
  MEMORY[0x28223BE20](v74 - 8);
  v1176 = (&v1070 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218F54AFC(0);
  MEMORY[0x28223BE20](v76 - 8);
  v1118 = &v1070 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54B30(0);
  v1121 = v78;
  v1119 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v1117 = &v1070 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54B8C(0);
  MEMORY[0x28223BE20](v80 - 8);
  v1116 = &v1070 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54BC0(0);
  MEMORY[0x28223BE20](v82 - 8);
  v1115 = &v1070 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1114 = type metadata accessor for WeatherTagFeedGroup(0);
  MEMORY[0x28223BE20](v1114);
  v1175 = (&v1070 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup(0);
  MEMORY[0x28223BE20](v85 - 8);
  v1174 = (&v1070 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = type metadata accessor for ChannelSectionTagFeedGroup(0);
  MEMORY[0x28223BE20](v87 - 8);
  v1173 = (&v1070 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = type metadata accessor for PromotedArticleListTagFeedGroup(0);
  MEMORY[0x28223BE20](v89 - 8);
  v1172 = (&v1070 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1242 = type metadata accessor for TagFeedLayoutModel(0);
  MEMORY[0x28223BE20](v1242);
  v1240 = &v1070 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1239 = sub_219BEF974();
  v1243 = *(v1239 - 8);
  MEMORY[0x28223BE20](v1239);
  v1238 = &v1070 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58934(0);
  v1237 = v93;
  v1241 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v1212 = &v1070 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v95);
  v1211 = &v1070 - v96;
  MEMORY[0x28223BE20](v97);
  v1210 = &v1070 - v98;
  MEMORY[0x28223BE20](v99);
  v1208 = &v1070 - v100;
  MEMORY[0x28223BE20](v101);
  v1207 = &v1070 - v102;
  MEMORY[0x28223BE20](v103);
  v1206 = &v1070 - v104;
  MEMORY[0x28223BE20](v105);
  v1205 = &v1070 - v106;
  MEMORY[0x28223BE20](v107);
  v1204 = &v1070 - v108;
  MEMORY[0x28223BE20](v109);
  v1203 = &v1070 - v110;
  MEMORY[0x28223BE20](v111);
  v1202 = &v1070 - v112;
  MEMORY[0x28223BE20](v113);
  v1201 = &v1070 - v114;
  MEMORY[0x28223BE20](v115);
  v1200 = &v1070 - v116;
  MEMORY[0x28223BE20](v117);
  v1199 = &v1070 - v118;
  MEMORY[0x28223BE20](v119);
  v1198 = &v1070 - v120;
  MEMORY[0x28223BE20](v121);
  v1197 = &v1070 - v122;
  MEMORY[0x28223BE20](v123);
  v1209 = &v1070 - v124;
  MEMORY[0x28223BE20](v125);
  v1196 = &v1070 - v126;
  MEMORY[0x28223BE20](v127);
  v1195 = &v1070 - v128;
  MEMORY[0x28223BE20](v129);
  v1194 = &v1070 - v130;
  MEMORY[0x28223BE20](v131);
  v1193 = &v1070 - v132;
  sub_218F54EA4(0, &qword_280EE9048, MEMORY[0x277D6D1A0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v133 - 8);
  v1228 = &v1070 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v135);
  v1227 = &v1070 - v136;
  MEMORY[0x28223BE20](v137);
  v1226 = &v1070 - v138;
  MEMORY[0x28223BE20](v139);
  v1225 = &v1070 - v140;
  v1229 = sub_219BDCB14();
  v1230 = *(v1229 - 8);
  MEMORY[0x28223BE20](v1229);
  v1113 = &v1070 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v142);
  v1112 = &v1070 - v143;
  MEMORY[0x28223BE20](v144);
  v1111 = &v1070 - v145;
  MEMORY[0x28223BE20](v146);
  v1109 = &v1070 - v147;
  MEMORY[0x28223BE20](v148);
  v1108 = &v1070 - v149;
  MEMORY[0x28223BE20](v150);
  v1107 = &v1070 - v151;
  MEMORY[0x28223BE20](v152);
  v1106 = &v1070 - v153;
  MEMORY[0x28223BE20](v154);
  v1105 = &v1070 - v155;
  MEMORY[0x28223BE20](v156);
  v1104 = &v1070 - v157;
  MEMORY[0x28223BE20](v158);
  v1103 = &v1070 - v159;
  MEMORY[0x28223BE20](v160);
  v1102 = &v1070 - v161;
  MEMORY[0x28223BE20](v162);
  v1101 = &v1070 - v163;
  MEMORY[0x28223BE20](v164);
  v1100 = &v1070 - v165;
  MEMORY[0x28223BE20](v166);
  v1099 = &v1070 - v167;
  MEMORY[0x28223BE20](v168);
  v1098 = &v1070 - v169;
  MEMORY[0x28223BE20](v170);
  v1110 = &v1070 - v171;
  MEMORY[0x28223BE20](v172);
  v1097 = &v1070 - v173;
  MEMORY[0x28223BE20](v174);
  v1096 = &v1070 - v175;
  MEMORY[0x28223BE20](v176);
  v1095 = &v1070 - v177;
  MEMORY[0x28223BE20](v178);
  v1094 = &v1070 - v179;
  v1217 = sub_219BED8D4();
  v1218 = *(v1217 - 8);
  MEMORY[0x28223BE20](v1217);
  v1219 = &v1070 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54BF4(0);
  MEMORY[0x28223BE20](v181 - 8);
  v1220 = &v1070 - ((v182 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54C28(0);
  MEMORY[0x28223BE20](v183 - 8);
  v1221 = &v1070 - ((v184 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1223 = sub_219BF1904();
  v1224 = *(v1223 - 8);
  MEMORY[0x28223BE20](v1223);
  v1222 = &v1070 - ((v185 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for ArticleListTagFeedGroup(0);
  MEMORY[0x28223BE20](v186 - 8);
  v1171 = (&v1070 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1215 = sub_219BEE074();
  v1216 = *(v1215 - 8);
  MEMORY[0x28223BE20](v1215);
  v1169 = &v1070 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v189);
  v1168 = &v1070 - v190;
  MEMORY[0x28223BE20](v191);
  v1167 = &v1070 - v192;
  MEMORY[0x28223BE20](v193);
  v1166 = &v1070 - v194;
  MEMORY[0x28223BE20](v195);
  v1165 = &v1070 - v196;
  MEMORY[0x28223BE20](v197);
  v1163 = &v1070 - v198;
  MEMORY[0x28223BE20](v199);
  v1162 = &v1070 - v200;
  MEMORY[0x28223BE20](v201);
  v1161 = &v1070 - v202;
  MEMORY[0x28223BE20](v203);
  v1160 = &v1070 - v204;
  MEMORY[0x28223BE20](v205);
  v1159 = &v1070 - v206;
  MEMORY[0x28223BE20](v207);
  v1158 = &v1070 - v208;
  MEMORY[0x28223BE20](v209);
  v1157 = &v1070 - v210;
  MEMORY[0x28223BE20](v211);
  v1156 = &v1070 - v212;
  MEMORY[0x28223BE20](v213);
  v1155 = &v1070 - v214;
  MEMORY[0x28223BE20](v215);
  v1154 = &v1070 - v216;
  MEMORY[0x28223BE20](v217);
  v1093 = &v1070 - v218;
  MEMORY[0x28223BE20](v219);
  v1092 = &v1070 - v220;
  MEMORY[0x28223BE20](v221);
  v1164 = &v1070 - v222;
  MEMORY[0x28223BE20](v223);
  v1153 = &v1070 - v224;
  MEMORY[0x28223BE20](v225);
  v1152 = &v1070 - v226;
  MEMORY[0x28223BE20](v227);
  v229 = &v1070 - v228;
  MEMORY[0x28223BE20](v230);
  v1151 = &v1070 - v231;
  MEMORY[0x28223BE20](v232);
  v1192 = &v1070 - v233;
  MEMORY[0x28223BE20](v234);
  v1150 = &v1070 - v235;
  MEMORY[0x28223BE20](v236);
  v1071 = &v1070 - v237;
  MEMORY[0x28223BE20](v238);
  v240 = &v1070 - v239;
  v1213 = sub_219BE9FA4();
  v1214 = *(v1213 - 8);
  MEMORY[0x28223BE20](v1213);
  v1091 = &v1070 - ((v241 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v242);
  v1090 = &v1070 - v243;
  MEMORY[0x28223BE20](v244);
  v1089 = &v1070 - v245;
  MEMORY[0x28223BE20](v246);
  v1088 = &v1070 - v247;
  MEMORY[0x28223BE20](v248);
  v1087 = &v1070 - v249;
  MEMORY[0x28223BE20](v250);
  v1085 = &v1070 - v251;
  MEMORY[0x28223BE20](v252);
  v1084 = &v1070 - v253;
  MEMORY[0x28223BE20](v254);
  v1083 = &v1070 - v255;
  MEMORY[0x28223BE20](v256);
  v1082 = &v1070 - v257;
  MEMORY[0x28223BE20](v258);
  v1081 = &v1070 - v259;
  MEMORY[0x28223BE20](v260);
  v1080 = &v1070 - v261;
  MEMORY[0x28223BE20](v262);
  v1079 = &v1070 - v263;
  MEMORY[0x28223BE20](v264);
  v1078 = &v1070 - v265;
  MEMORY[0x28223BE20](v266);
  v1077 = &v1070 - v267;
  MEMORY[0x28223BE20](v268);
  v1076 = &v1070 - v269;
  MEMORY[0x28223BE20](v270);
  v272 = &v1070 - v271;
  MEMORY[0x28223BE20](v273);
  v275 = &v1070 - v274;
  MEMORY[0x28223BE20](v276);
  v1086 = &v1070 - v277;
  MEMORY[0x28223BE20](v278);
  v1075 = &v1070 - v279;
  MEMORY[0x28223BE20](v280);
  v1074 = &v1070 - v281;
  MEMORY[0x28223BE20](v282);
  v284 = &v1070 - v283;
  MEMORY[0x28223BE20](v285);
  v1073 = &v1070 - v286;
  MEMORY[0x28223BE20](v287);
  v1072 = &v1070 - v288;
  MEMORY[0x28223BE20](v289);
  v291 = &v1070 - v290;
  MEMORY[0x28223BE20](v292);
  v294 = &v1070 - v293;
  MEMORY[0x28223BE20](v295);
  v297 = &v1070 - v296;
  v298 = type metadata accessor for TagFeedSectionGapDescriptor(0);
  MEMORY[0x28223BE20](v298 - 8);
  v300 = &v1070 - ((v299 + 15) & 0xFFFFFFFFFFFFFFF0);
  v303 = MEMORY[0x28223BE20](v301);
  switch((v304 >> 58) & 0x3C | (v304 >> 1) & 3)
  {
    case 1uLL:
      v479 = swift_projectBox();
      v480 = v1171;
      sub_218F54C5C(v479, v1171, type metadata accessor for ArticleListTagFeedGroup);
      v481 = v1222;
      sub_219BED874();
      v482 = sub_219BEDB64();
      v483 = v1221;
      (*(*(v482 - 8) + 56))(v1221, 1, 1, v482);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v480, v1217);
      v484 = v1220;
      sub_219BEF4D4();
      v485 = sub_219BEF4E4();
      (*(*(v485 - 8) + 56))(v484, 0, 1, v485);
      sub_219BED894();
      sub_21905F818();
      sub_218954350(0);
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
      sub_219BE69F4();

      sub_218864CF4(v484, sub_218F54BF4);
      sub_218864CF4(v483, sub_218F54C28);
      v486 = *(v1224 + 8);
      v487 = v1223;
      v486(v481, v1223);
      sub_219BED874();
      v488 = sub_219BF44B4();
      v486(v481, v487);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v488;
      v489 = sub_219BDCB24();
      v490 = *(*(v489 - 8) + 56);
      v490(v1225, 1, 1, v489);
      v490(v1226, 1, 1, v489);
      v490(v1227, 1, 1, v489);
      v490(v1228, 1, 1, v489);
      v491 = v488;

      v492 = v1094;
      sub_219BDCB04();
      v493 = v1150;
      v494 = v1235;
      sub_219BEE0B4();
      if (v494)
      {

        (*(v1230 + 8))(v492, v1229);
        v338 = type metadata accessor for ArticleListTagFeedGroup;
        v339 = &v1203;
        goto LABEL_80;
      }

      v851 = MEMORY[0x277D84F90];
      v1233 = v491;
      (*(v1230 + 8))(v492, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v852 = v1192;
      (*(v1216 + 16))(v1192, v493, v1215);
      *&v1248 = sub_218DED880(v852);
      *(&v1248 + 1) = v853;
      *&v1249 = v854;
      BYTE8(v1249) = 0;
      v855 = *MEMORY[0x277D6E980];
      v856 = sub_219BE9F84();
      v857 = v1072;
      (*(*(v856 - 8) + 104))(v1072, v855, v856);
      (*(v1214 + 104))(v857, *MEMORY[0x277D6E988], v1213);
      v858 = sub_219BEE004();
      v859 = *(v858 + 16);
      if (v859)
      {
        v1235 = 0;
        v1244 = v851;
        sub_218C33FD0(v859);
        v860 = *(v1243 + 16);
        v861 = *(v1243 + 80);
        v1232 = v858;
        v862 = v858 + ((v861 + 32) & ~v861);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v863 = (v1243 - 8);
        v1234 = v1241 + 32;
        v864 = v1238;
        do
        {
          v865 = v1239;
          v860(v864, v862, v1239);
          v860(v1240, v864, v865);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
          sub_219BE75D4();
          (*v863)(v864, v865);
          v866 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v866 + 16) + 1, 1);
            v866 = v1244;
          }

          v868 = *(v866 + 16);
          v867 = *(v866 + 24);
          if (v868 >= v867 >> 1)
          {
            sub_218C34D90((v867 > 1), v868 + 1, 1);
            v866 = v1244;
          }

          *(v866 + 16) = v868 + 1;
          (*(v1241 + 32))(v866 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v868, v1193, v1237);
          v1244 = v866;
          v862 += v1236;
          --v859;
        }

        while (v859);

        v493 = v1150;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      sub_219BE81A4();

      (*(v1216 + 8))(v493, v1215);
      v683 = type metadata accessor for ArticleListTagFeedGroup;
      v684 = v1171;
      return sub_218864CF4(v684, v683);
    case 2uLL:
      v420 = swift_projectBox();
      v421 = v1172;
      sub_218F54C5C(v420, v1172, type metadata accessor for PromotedArticleListTagFeedGroup);
      v422 = v1222;
      sub_219BED874();
      v423 = sub_219BEDB64();
      v424 = v1221;
      (*(*(v423 - 8) + 56))(v1221, 1, 1, v423);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v421, v1217);
      v425 = v1220;
      sub_219BEF4D4();
      v426 = sub_219BEF4E4();
      (*(*(v426 - 8) + 56))(v425, 0, 1, v426);
      sub_219BED894();
      sub_21905F818();
      sub_218954350(0);
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
      sub_219BE69F4();

      sub_218864CF4(v425, sub_218F54BF4);
      sub_218864CF4(v424, sub_218F54C28);
      v427 = *(v1224 + 8);
      v428 = v1223;
      v427(v422, v1223);
      sub_219BED874();
      v429 = sub_219BF44B4();
      v427(v422, v428);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v429;
      v430 = sub_219BDCB24();
      v431 = *(*(v430 - 8) + 56);
      v431(v1225, 1, 1, v430);
      v431(v1226, 1, 1, v430);
      v431(v1227, 1, 1, v430);
      v431(v1228, 1, 1, v430);
      v432 = v429;

      v433 = v1095;
      sub_219BDCB04();
      v434 = v1151;
      v435 = v1235;
      sub_219BEE0B4();
      if (v435)
      {

        (*(v1230 + 8))(v433, v1229);
        v338 = type metadata accessor for PromotedArticleListTagFeedGroup;
        v339 = &v1204;
        goto LABEL_80;
      }

      v796 = MEMORY[0x277D84F90];
      v1233 = v432;
      (*(v1230 + 8))(v433, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v797 = v1192;
      (*(v1216 + 16))(v1192, v434, v1215);
      *&v1248 = sub_218DED880(v797);
      *(&v1248 + 1) = v798;
      *&v1249 = v799;
      BYTE8(v1249) = 0;
      v800 = *MEMORY[0x277D6E980];
      v801 = sub_219BE9F84();
      v802 = v1073;
      (*(*(v801 - 8) + 104))(v1073, v800, v801);
      (*(v1214 + 104))(v802, *MEMORY[0x277D6E988], v1213);
      v803 = sub_219BEE004();
      v804 = *(v803 + 16);
      if (v804)
      {
        v1235 = 0;
        v1244 = v796;
        sub_218C33FD0(v804);
        v805 = *(v1243 + 16);
        v806 = *(v1243 + 80);
        v1232 = v803;
        v807 = v803 + ((v806 + 32) & ~v806);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v808 = (v1243 - 8);
        v1234 = v1241 + 32;
        v809 = v1238;
        do
        {
          v810 = v1239;
          v805(v809, v807, v1239);
          v805(v1240, v809, v810);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
          sub_219BE75D4();
          (*v808)(v809, v810);
          v811 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v811 + 16) + 1, 1);
            v811 = v1244;
          }

          v813 = *(v811 + 16);
          v812 = *(v811 + 24);
          if (v813 >= v812 >> 1)
          {
            sub_218C34D90((v812 > 1), v813 + 1, 1);
            v811 = v1244;
          }

          *(v811 + 16) = v813 + 1;
          (*(v1241 + 32))(v811 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v813, v1194, v1237);
          v1244 = v811;
          v807 += v1236;
          --v804;
        }

        while (v804);

        v434 = v1151;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      sub_219BE81A4();

      (*(v1216 + 8))(v434, v1215);
      v683 = type metadata accessor for PromotedArticleListTagFeedGroup;
      v684 = v1172;
      return sub_218864CF4(v684, v683);
    case 3uLL:
      v452 = swift_projectBox();
      v453 = v1175;
      sub_218F54C5C(v452, v1175, type metadata accessor for WeatherTagFeedGroup);
      v454 = *(v1114 + 20);
      sub_218F54EA4(0, &qword_280E8B878, MEMORY[0x277D33130], MEMORY[0x277D84560]);
      v455 = sub_219BF10D4();
      v456 = *(v455 - 8);
      v457 = (*(v456 + 80) + 32) & ~*(v456 + 80);
      v458 = swift_allocObject();
      *(v458 + 16) = xmmword_219C09BA0;
      v459 = sub_219BF0D34();
      (*(*(v459 - 8) + 16))(v458 + v457, v453, v459);
      (*(v456 + 104))(v458 + v457, *MEMORY[0x277D33128], v455);
      v1212 = sub_2194AD438(v458);
      swift_setDeallocating();
      (*(v456 + 8))(v458 + v457, v455);
      swift_deallocClassInstance();
      v460 = v1222;
      sub_219BED874();
      v461 = sub_219BEDB64();
      v462 = v1221;
      (*(*(v461 - 8) + 56))(v1221, 1, 1, v461);
      v1210 = *(v1236 + 72);
      v463 = *(v1218 + 16);
      v1211 = v454;
      v463(v1219, &v454[v453], v1217);
      v464 = v1220;
      sub_219BEF4D4();
      v465 = sub_219BEF4E4();
      (*(*(v465 - 8) + 56))(v464, 0, 1, v465);
      sub_219BED894();
      sub_21905F818();
      sub_218954350(0);
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
      sub_219BE69F4();

      sub_218864CF4(v464, sub_218F54BF4);
      sub_218864CF4(v462, sub_218F54C28);
      v466 = *(v1224 + 8);
      v467 = v1223;
      v466(v460, v1223);
      sub_219BED874();
      v468 = sub_219BF44B4();
      v466(v460, v467);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v468;
      v469 = sub_219BDCB24();
      v470 = *(*(v469 - 8) + 56);
      v470(v1225, 1, 1, v469);
      v470(v1226, 1, 1, v469);
      v470(v1227, 1, 1, v469);
      v470(v1228, 1, 1, v469);
      v471 = v468;

      v472 = v1110;
      sub_219BDCB04();
      v473 = v1164;
      v474 = v1235;
      sub_219BEE0B4();
      if (v474)
      {

        (*(v1230 + 8))(v472, v1229);
        v338 = type metadata accessor for WeatherTagFeedGroup;
        v339 = &v1207;
        goto LABEL_80;
      }

      v832 = MEMORY[0x277D84F90];
      v1233 = v471;
      (*(v1230 + 8))(v472, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v833 = v1192;
      (*(v1216 + 16))(v1192, v473, v1215);
      *&v1248 = sub_218DED880(v833);
      *(&v1248 + 1) = v834;
      *&v1249 = v835;
      BYTE8(v1249) = 0;
      v836 = *MEMORY[0x277D6E980];
      v837 = sub_219BE9F84();
      v838 = v1086;
      (*(*(v837 - 8) + 104))(v1086, v836, v837);
      (*(v1214 + 104))(v838, *MEMORY[0x277D6E988], v1213);
      v839 = sub_219BEE004();
      v840 = *(v839 + 16);
      if (v840)
      {
        v1235 = 0;
        v1244 = v832;
        sub_218C33FD0(v840);
        v841 = *(v1243 + 16);
        v842 = *(v1243 + 80);
        v1232 = v839;
        v843 = v839 + ((v842 + 32) & ~v842);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v844 = (v1243 - 8);
        v1234 = v1241 + 32;
        v845 = v1238;
        do
        {
          v846 = v1239;
          v841(v845, v843, v1239);
          v841(v1240, v845, v846);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
          sub_219BE75D4();
          (*v844)(v845, v846);
          v847 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v847 + 16) + 1, 1);
            v847 = v1244;
          }

          v849 = *(v847 + 16);
          v848 = *(v847 + 24);
          if (v849 >= v848 >> 1)
          {
            sub_218C34D90((v848 > 1), v849 + 1, 1);
            v847 = v1244;
          }

          *(v847 + 16) = v849 + 1;
          (*(v1241 + 32))(v847 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v849, v1209, v1237);
          v1244 = v847;
          v843 += v1236;
          --v840;
        }

        while (v840);

        v473 = v1164;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      sub_219BE81A4();

      (*(v1216 + 8))(v473, v1215);
      v683 = type metadata accessor for WeatherTagFeedGroup;
      v684 = v1175;
      return sub_218864CF4(v684, v683);
    case 4uLL:
      v1244 = MEMORY[0x277D84F90];
      v1245 = MEMORY[0x277D84F90];
      v1246 = MEMORY[0x277D84F90];
      v1247 = 1;
      v390 = v1214;
      v391 = v1213;
      (*(v1214 + 104))(v284, *MEMORY[0x277D6E9B0], v1213, v303);
      sub_218954350(0);
      sub_218F54D18();
      v1248 = 0u;
      v1249 = 0u;
      v1250 = 0;
      v392 = v1235;
      sub_219BEE0A4();
      sub_218864CF4(&v1248, sub_218C8A15C);
      if (v392)
      {
        return (*(v390 + 8))(v284, v391);
      }

      v777 = sub_219BEE004();
      (*(v1216 + 8))(v229, v1215);
      sub_218F42AB8(v777);

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      return sub_219BE81A4();
    case 5uLL:
      v534 = swift_projectBox();
      v535 = v1173;
      sub_218F54C5C(v534, v1173, type metadata accessor for ChannelSectionTagFeedGroup);
      v536 = v1222;
      sub_219BED874();
      v537 = sub_219BEDB64();
      v538 = v1221;
      (*(*(v537 - 8) + 56))(v1221, 1, 1, v537);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v535, v1217);
      v539 = v1220;
      sub_219BEF4D4();
      v540 = sub_219BEF4E4();
      (*(*(v540 - 8) + 56))(v539, 0, 1, v540);
      sub_219BED894();
      sub_21905F818();
      sub_218954350(0);
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
      sub_219BE69F4();

      sub_218864CF4(v539, sub_218F54BF4);
      sub_218864CF4(v538, sub_218F54C28);
      v541 = *(v1224 + 8);
      v542 = v1223;
      v541(v536, v1223);
      sub_219BED874();
      v543 = sub_219BF44B4();
      v541(v536, v542);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v543;
      v544 = sub_219BDCB24();
      v545 = *(*(v544 - 8) + 56);
      v545(v1225, 1, 1, v544);
      v545(v1226, 1, 1, v544);
      v545(v1227, 1, 1, v544);
      v545(v1228, 1, 1, v544);
      v546 = v543;

      v547 = v1096;
      sub_219BDCB04();
      v548 = v1152;
      v549 = v1235;
      sub_219BEE0B4();
      if (v549)
      {

        (*(v1230 + 8))(v547, v1229);
        v338 = type metadata accessor for ChannelSectionTagFeedGroup;
        v339 = &v1205;
        goto LABEL_80;
      }

      v905 = MEMORY[0x277D84F90];
      v1233 = v546;
      (*(v1230 + 8))(v547, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v906 = v1192;
      (*(v1216 + 16))(v1192, v548, v1215);
      *&v1248 = sub_218DED880(v906);
      *(&v1248 + 1) = v907;
      *&v1249 = v908;
      BYTE8(v1249) = 0;
      v909 = *MEMORY[0x277D6E980];
      v910 = sub_219BE9F84();
      v911 = v1074;
      (*(*(v910 - 8) + 104))(v1074, v909, v910);
      (*(v1214 + 104))(v911, *MEMORY[0x277D6E988], v1213);
      v912 = sub_219BEE004();
      v913 = *(v912 + 16);
      if (v913)
      {
        v1235 = 0;
        v1244 = v905;
        sub_218C33FD0(v913);
        v914 = *(v1243 + 16);
        v915 = *(v1243 + 80);
        v1232 = v912;
        v916 = v912 + ((v915 + 32) & ~v915);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v917 = (v1243 - 8);
        v1234 = v1241 + 32;
        v918 = v1238;
        do
        {
          v919 = v1239;
          v914(v918, v916, v1239);
          v914(v1240, v918, v919);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
          sub_219BE75D4();
          (*v917)(v918, v919);
          v920 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v920 + 16) + 1, 1);
            v920 = v1244;
          }

          v922 = *(v920 + 16);
          v921 = *(v920 + 24);
          if (v922 >= v921 >> 1)
          {
            sub_218C34D90((v921 > 1), v922 + 1, 1);
            v920 = v1244;
          }

          *(v920 + 16) = v922 + 1;
          (*(v1241 + 32))(v920 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v922, v1195, v1237);
          v1244 = v920;
          v916 += v1236;
          --v913;
        }

        while (v913);

        v548 = v1152;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      sub_219BE81A4();

      (*(v1216 + 8))(v548, v1215);
      v683 = type metadata accessor for ChannelSectionTagFeedGroup;
      v684 = v1173;
      return sub_218864CF4(v684, v683);
    case 6uLL:
      v582 = swift_projectBox();
      v583 = v1174;
      sub_218F54C5C(v582, v1174, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      v584 = v1222;
      sub_219BED874();
      v585 = sub_219BEDB64();
      v586 = v1221;
      (*(*(v585 - 8) + 56))(v1221, 1, 1, v585);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v583, v1217);
      v587 = v1220;
      sub_219BEF4D4();
      v588 = sub_219BEF4E4();
      (*(*(v588 - 8) + 56))(v587, 0, 1, v588);
      sub_219BED894();
      sub_21905F818();
      sub_218954350(0);
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
      sub_219BE69F4();

      sub_218864CF4(v587, sub_218F54BF4);
      sub_218864CF4(v586, sub_218F54C28);
      v589 = *(v1224 + 8);
      v590 = v1223;
      v589(v584, v1223);
      sub_219BED874();
      v591 = sub_219BF44B4();
      v589(v584, v590);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v591;
      v592 = sub_219BDCB24();
      v593 = *(*(v592 - 8) + 56);
      v593(v1225, 1, 1, v592);
      v593(v1226, 1, 1, v592);
      v593(v1227, 1, 1, v592);
      v593(v1228, 1, 1, v592);
      v594 = v591;

      v595 = v1097;
      sub_219BDCB04();
      v596 = v1153;
      v597 = v1235;
      sub_219BEE0B4();
      if (v597)
      {

        (*(v1230 + 8))(v595, v1229);
        v338 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
        v339 = &v1206;
        goto LABEL_80;
      }

      v959 = MEMORY[0x277D84F90];
      v1233 = v594;
      (*(v1230 + 8))(v595, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v960 = v1192;
      (*(v1216 + 16))(v1192, v596, v1215);
      *&v1248 = sub_218DED880(v960);
      *(&v1248 + 1) = v961;
      *&v1249 = v962;
      BYTE8(v1249) = 0;
      v963 = *MEMORY[0x277D6E980];
      v964 = sub_219BE9F84();
      v965 = v1075;
      (*(*(v964 - 8) + 104))(v1075, v963, v964);
      (*(v1214 + 104))(v965, *MEMORY[0x277D6E988], v1213);
      v966 = sub_219BEE004();
      v967 = *(v966 + 16);
      if (v967)
      {
        v1235 = 0;
        v1244 = v959;
        sub_218C33FD0(v967);
        v968 = *(v1243 + 16);
        v969 = *(v1243 + 80);
        v1232 = v966;
        v970 = v966 + ((v969 + 32) & ~v969);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v971 = (v1243 - 8);
        v1234 = v1241 + 32;
        v972 = v1238;
        do
        {
          v973 = v1239;
          v968(v972, v970, v1239);
          v968(v1240, v972, v973);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
          sub_219BE75D4();
          (*v971)(v972, v973);
          v974 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v974 + 16) + 1, 1);
            v974 = v1244;
          }

          v976 = *(v974 + 16);
          v975 = *(v974 + 24);
          if (v976 >= v975 >> 1)
          {
            sub_218C34D90((v975 > 1), v976 + 1, 1);
            v974 = v1244;
          }

          *(v974 + 16) = v976 + 1;
          (*(v1241 + 32))(v974 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v976, v1196, v1237);
          v1244 = v974;
          v970 += v1236;
          --v967;
        }

        while (v967);

        v596 = v1153;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      sub_219BE81A4();

      (*(v1216 + 8))(v596, v1215);
      v683 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      v684 = v1174;
      return sub_218864CF4(v684, v683);
    case 7uLL:
      v1244 = 0;
      v1245 = 0;
      v1246 = 0;
      v1247 = 3;
      v475 = v1214;
      v476 = v1213;
      (*(v1214 + 104))(v275, *MEMORY[0x277D6E9B0], v1213, v303);
      sub_218954350(0);
      sub_218F54D18();
      v1248 = 0u;
      v1249 = 0u;
      v1250 = 0;
      v477 = v1092;
      v478 = v1235;
      sub_219BEE0A4();
      if (v478)
      {
        sub_218864CF4(&v1248, sub_218C8A15C);
        return (*(v475 + 8))(v275, v476);
      }

      sub_218864CF4(&v1248, sub_218C8A15C);
      v850 = sub_219BEE004();
      (*(v1216 + 8))(v477, v1215);
      sub_218F42AB8(v850);

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      return sub_219BE81A4();
    case 8uLL:
      sub_218F52B40(v1189);
      v1244 = MEMORY[0x277D84F90];
      v1245 = MEMORY[0x277D84F90];
      v1246 = MEMORY[0x277D84F90];
      v1247 = 2;
      v631 = v1214;
      v632 = v1213;
      (*(v1214 + 104))(v272, *MEMORY[0x277D6E9B0], v1213);
      v633 = sub_219BEF664();
      v634 = v1115;
      (*(*(v633 - 8) + 56))(v1115, 1, 1, v633);
      v635 = v1116;
      sub_219BEF5D4();
      v636 = sub_219BEF5E4();
      (*(*(v636 - 8) + 56))(v635, 0, 1, v636);
      sub_219BEE0D4();
      sub_218864CF4(v635, sub_218F54B8C);
      sub_218864CF4(v634, sub_218F54BC0);
      sub_218954350(0);
      sub_218F54D18();
      v1248 = 0u;
      v1249 = 0u;
      v1250 = 0;
      v637 = v1093;
      v638 = v1235;
      sub_219BEE0A4();
      if (v638)
      {

        sub_218864CF4(&v1248, sub_218C8A15C);
        return (*(v631 + 8))(v272, v632);
      }

      else
      {
        sub_218864CF4(&v1248, sub_218C8A15C);

        v1013 = sub_219BEE004();
        (*(v1216 + 8))(v637, v1215);
        sub_218F42AB8(v1013);

        sub_218DED7F0();
        sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
        return sub_219BE81A4();
      }

    case 9uLL:
      v412 = swift_projectBox();
      v413 = v1119;
      v414 = v1117;
      v415 = v1121;
      (*(v1119 + 16))(v1117, v412, v1121);
      sub_219BEE474();
      v416 = v1118;
      sub_219BEE484();
      v417 = sub_219BEEA64();
      (*(*(v417 - 8) + 56))(v416, 0, 1, v417);
      sub_218F4495C(v1234, v1233, v1170, v416, v1189, v1231);

      sub_218864CF4(v416, sub_218F54AFC);
      return (*(v413 + 8))(v414, v415);
    case 0xAuLL:
      v615 = swift_projectBox();
      v616 = v1176;
      sub_218F54C5C(v615, v1176, type metadata accessor for CuratedTagFeedGroup);
      v617 = v1222;
      sub_219BED874();
      v618 = sub_219BEDB64();
      v619 = v1221;
      (*(*(v618 - 8) + 56))(v1221, 1, 1, v618);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v616, v1217);
      v620 = v1220;
      sub_219BEF4D4();
      v621 = sub_219BEF4E4();
      (*(*(v621 - 8) + 56))(v620, 0, 1, v621);
      sub_219BED894();
      sub_21905F818();
      sub_218954350(0);
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
      sub_219BE69F4();

      sub_218864CF4(v620, sub_218F54BF4);
      sub_218864CF4(v619, sub_218F54C28);
      v622 = *(v1224 + 8);
      v623 = v1223;
      v622(v617, v1223);
      sub_219BED874();
      v624 = sub_219BF44B4();
      v622(v617, v623);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v624;
      v625 = sub_219BDCB24();
      v626 = *(*(v625 - 8) + 56);
      v626(v1225, 1, 1, v625);
      v626(v1226, 1, 1, v625);
      v626(v1227, 1, 1, v625);
      v626(v1228, 1, 1, v625);
      v627 = v624;

      v628 = v1098;
      sub_219BDCB04();
      v629 = v1154;
      v630 = v1235;
      sub_219BEE0B4();
      if (v630)
      {

        (*(v1230 + 8))(v628, v1229);
        v338 = type metadata accessor for CuratedTagFeedGroup;
        v339 = &v1208;
        goto LABEL_80;
      }

      v995 = MEMORY[0x277D84F90];
      v1233 = v627;
      (*(v1230 + 8))(v628, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v996 = v1192;
      (*(v1216 + 16))(v1192, v629, v1215);
      *&v1248 = sub_218DED880(v996);
      *(&v1248 + 1) = v997;
      *&v1249 = v998;
      BYTE8(v1249) = 0;
      v999 = *MEMORY[0x277D6E980];
      v1000 = sub_219BE9F84();
      v1001 = v1076;
      (*(*(v1000 - 8) + 104))(v1076, v999, v1000);
      (*(v1214 + 104))(v1001, *MEMORY[0x277D6E988], v1213);
      v1002 = sub_219BEE004();
      v1003 = *(v1002 + 16);
      if (v1003)
      {
        v1235 = 0;
        v1244 = v995;
        sub_218C33FD0(v1003);
        v1004 = *(v1243 + 16);
        v1005 = *(v1243 + 80);
        v1232 = v1002;
        v1006 = v1002 + ((v1005 + 32) & ~v1005);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v1007 = (v1243 - 8);
        v1234 = v1241 + 32;
        v1008 = v1238;
        do
        {
          v1009 = v1239;
          v1004(v1008, v1006, v1239);
          v1004(v1240, v1008, v1009);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
          sub_219BE75D4();
          (*v1007)(v1008, v1009);
          v1010 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v1010 + 16) + 1, 1);
            v1010 = v1244;
          }

          v1012 = *(v1010 + 16);
          v1011 = *(v1010 + 24);
          if (v1012 >= v1011 >> 1)
          {
            sub_218C34D90((v1011 > 1), v1012 + 1, 1);
            v1010 = v1244;
          }

          *(v1010 + 16) = v1012 + 1;
          (*(v1241 + 32))(v1010 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v1012, v1197, v1237);
          v1244 = v1010;
          v1006 += v1236;
          --v1003;
        }

        while (v1003);

        v629 = v1154;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      sub_219BE81A4();

      (*(v1216 + 8))(v629, v1215);
      v683 = type metadata accessor for CuratedTagFeedGroup;
      v684 = v1176;
      return sub_218864CF4(v684, v683);
    case 0xBuLL:
      v374 = swift_projectBox();
      v375 = v1177;
      sub_218F54C5C(v374, v1177, type metadata accessor for SportsRecordTagFeedGroup);
      v376 = v1222;
      sub_219BED874();
      v377 = sub_219BEDB64();
      v378 = v1221;
      (*(*(v377 - 8) + 56))(v1221, 1, 1, v377);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v375, v1217);
      v379 = v1220;
      sub_219BEF4D4();
      v380 = sub_219BEF4E4();
      (*(*(v380 - 8) + 56))(v379, 0, 1, v380);
      sub_219BED894();
      sub_21905F818();
      sub_218954350(0);
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
      sub_219BE69F4();

      sub_218864CF4(v379, sub_218F54BF4);
      sub_218864CF4(v378, sub_218F54C28);
      v381 = *(v1224 + 8);
      v382 = v1223;
      v381(v376, v1223);
      sub_219BED874();
      v383 = sub_219BF44B4();
      v381(v376, v382);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v383;
      v384 = sub_219BDCB24();
      v385 = *(*(v384 - 8) + 56);
      v385(v1225, 1, 1, v384);
      v385(v1226, 1, 1, v384);
      v385(v1227, 1, 1, v384);
      v385(v1228, 1, 1, v384);
      v386 = v383;

      v387 = v1099;
      sub_219BDCB04();
      v388 = v1155;
      v389 = v1235;
      sub_219BEE0B4();
      if (v389)
      {

        (*(v1230 + 8))(v387, v1229);
        v338 = type metadata accessor for SportsRecordTagFeedGroup;
        v339 = &v1209;
        goto LABEL_80;
      }

      v759 = MEMORY[0x277D84F90];
      v1233 = v386;
      (*(v1230 + 8))(v387, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v760 = v1192;
      (*(v1216 + 16))(v1192, v388, v1215);
      *&v1248 = sub_218DED880(v760);
      *(&v1248 + 1) = v761;
      *&v1249 = v762;
      BYTE8(v1249) = 0;
      v763 = *MEMORY[0x277D6E980];
      v764 = sub_219BE9F84();
      v765 = v1077;
      (*(*(v764 - 8) + 104))(v1077, v763, v764);
      (*(v1214 + 104))(v765, *MEMORY[0x277D6E988], v1213);
      v766 = sub_219BEE004();
      v767 = *(v766 + 16);
      if (v767)
      {
        v1235 = 0;
        v1244 = v759;
        sub_218C33FD0(v767);
        v768 = *(v1243 + 16);
        v769 = *(v1243 + 80);
        v1232 = v766;
        v770 = v766 + ((v769 + 32) & ~v769);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v771 = (v1243 - 8);
        v1234 = v1241 + 32;
        v772 = v1238;
        do
        {
          v773 = v1239;
          v768(v772, v770, v1239);
          v768(v1240, v772, v773);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
          sub_219BE75D4();
          (*v771)(v772, v773);
          v774 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v774 + 16) + 1, 1);
            v774 = v1244;
          }

          v776 = *(v774 + 16);
          v775 = *(v774 + 24);
          if (v776 >= v775 >> 1)
          {
            sub_218C34D90((v775 > 1), v776 + 1, 1);
            v774 = v1244;
          }

          *(v774 + 16) = v776 + 1;
          (*(v1241 + 32))(v774 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v776, v1198, v1237);
          v1244 = v774;
          v770 += v1236;
          --v767;
        }

        while (v767);

        v388 = v1155;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      sub_219BE81A4();

      (*(v1216 + 8))(v388, v1215);
      v683 = type metadata accessor for SportsRecordTagFeedGroup;
      v684 = v1177;
      return sub_218864CF4(v684, v683);
    case 0xCuLL:
      v395 = swift_projectBox();
      v396 = v1178;
      sub_218F54C5C(v395, v1178, type metadata accessor for SportsNavigationTagFeedGroup);
      v397 = *(v1120 + 20);
      v398 = v1222;
      sub_219BED874();
      v399 = sub_219BEDB64();
      v400 = v1221;
      (*(*(v399 - 8) + 56))(v1221, 1, 1, v399);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v396 + v397, v1217);
      v401 = v1220;
      sub_219BEF4D4();
      v402 = sub_219BEF4E4();
      (*(*(v402 - 8) + 56))(v401, 0, 1, v402);
      v1219 = sub_219BED894();
      sub_21905F818();
      sub_218954350(0);
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
      sub_219BE69F4();

      sub_218864CF4(v401, sub_218F54BF4);
      sub_218864CF4(v400, sub_218F54C28);
      v403 = *(v1224 + 8);
      v404 = v1223;
      v403(v398, v1223);
      sub_219BED874();
      v405 = sub_219BF44B4();
      v403(v398, v404);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v405;
      v406 = sub_219BDCB24();
      v407 = *(*(v406 - 8) + 56);
      v407(v1225, 1, 1, v406);
      v407(v1226, 1, 1, v406);
      v407(v1227, 1, 1, v406);
      v407(v1228, 1, 1, v406);
      v408 = v405;

      v409 = v1100;
      sub_219BDCB04();
      v410 = v1156;
      v411 = v1235;
      sub_219BEE0B4();
      if (v411)
      {

        (*(v1230 + 8))(v409, v1229);
        v338 = type metadata accessor for SportsNavigationTagFeedGroup;
        v339 = &v1210;
        goto LABEL_80;
      }

      v778 = MEMORY[0x277D84F90];
      v1233 = v408;
      (*(v1230 + 8))(v409, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v779 = v1192;
      (*(v1216 + 16))(v1192, v410, v1215);
      *&v1248 = sub_218DED880(v779);
      *(&v1248 + 1) = v780;
      *&v1249 = v781;
      BYTE8(v1249) = 0;
      v782 = *MEMORY[0x277D6E980];
      v783 = sub_219BE9F84();
      v784 = v1078;
      (*(*(v783 - 8) + 104))(v1078, v782, v783);
      (*(v1214 + 104))(v784, *MEMORY[0x277D6E988], v1213);
      v785 = sub_219BEE004();
      v786 = *(v785 + 16);
      if (v786)
      {
        v1235 = 0;
        v1244 = v778;
        sub_218C33FD0(v786);
        v787 = *(v1243 + 16);
        v788 = *(v1243 + 80);
        v1232 = v785;
        v789 = v785 + ((v788 + 32) & ~v788);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v790 = (v1243 - 8);
        v1234 = v1241 + 32;
        v791 = v1238;
        do
        {
          v792 = v1239;
          v787(v791, v789, v1239);
          v787(v1240, v791, v792);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
          sub_219BE75D4();
          (*v790)(v791, v792);
          v793 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v793 + 16) + 1, 1);
            v793 = v1244;
          }

          v795 = *(v793 + 16);
          v794 = *(v793 + 24);
          if (v795 >= v794 >> 1)
          {
            sub_218C34D90((v794 > 1), v795 + 1, 1);
            v793 = v1244;
          }

          *(v793 + 16) = v795 + 1;
          (*(v1241 + 32))(v793 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v795, v1199, v1237);
          v1244 = v793;
          v789 += v1236;
          --v786;
        }

        while (v786);

        v410 = v1156;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      sub_219BE81A4();

      (*(v1216 + 8))(v410, v1215);
      v683 = type metadata accessor for SportsNavigationTagFeedGroup;
      v684 = v1178;
      return sub_218864CF4(v684, v683);
    case 0xDuLL:
      v566 = swift_projectBox();
      v567 = v1179;
      sub_218F54C5C(v566, v1179, type metadata accessor for SportsScheduleTagFeedGroup);
      v568 = v1222;
      sub_219BED874();
      v569 = sub_219BEDB64();
      v570 = v1221;
      (*(*(v569 - 8) + 56))(v1221, 1, 1, v569);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v567, v1217);
      v571 = v1220;
      sub_219BEF4D4();
      v572 = sub_219BEF4E4();
      (*(*(v572 - 8) + 56))(v571, 0, 1, v572);
      sub_219BED894();
      sub_21905F818();
      sub_218954350(0);
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
      sub_219BE69F4();

      sub_218864CF4(v571, sub_218F54BF4);
      sub_218864CF4(v570, sub_218F54C28);
      v573 = *(v1224 + 8);
      v574 = v1223;
      v573(v568, v1223);
      sub_219BED874();
      v575 = sub_219BF44B4();
      v573(v568, v574);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v575;
      v576 = sub_219BDCB24();
      v577 = *(*(v576 - 8) + 56);
      v577(v1225, 1, 1, v576);
      v577(v1226, 1, 1, v576);
      v577(v1227, 1, 1, v576);
      v577(v1228, 1, 1, v576);
      v578 = v575;

      v579 = v1101;
      sub_219BDCB04();
      v580 = v1157;
      v581 = v1235;
      sub_219BEE0B4();
      if (v581)
      {

        (*(v1230 + 8))(v579, v1229);
        v338 = type metadata accessor for SportsScheduleTagFeedGroup;
        v339 = &v1211;
        goto LABEL_80;
      }

      v941 = MEMORY[0x277D84F90];
      v1233 = v578;
      (*(v1230 + 8))(v579, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v942 = v1192;
      (*(v1216 + 16))(v1192, v580, v1215);
      *&v1248 = sub_218DED880(v942);
      *(&v1248 + 1) = v943;
      *&v1249 = v944;
      BYTE8(v1249) = 0;
      v945 = *MEMORY[0x277D6E980];
      v946 = sub_219BE9F84();
      v947 = v1079;
      (*(*(v946 - 8) + 104))(v1079, v945, v946);
      (*(v1214 + 104))(v947, *MEMORY[0x277D6E988], v1213);
      v948 = sub_219BEE004();
      v949 = *(v948 + 16);
      if (v949)
      {
        v1235 = 0;
        v1244 = v941;
        sub_218C33FD0(v949);
        v950 = *(v1243 + 16);
        v951 = *(v1243 + 80);
        v1232 = v948;
        v952 = v948 + ((v951 + 32) & ~v951);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v953 = (v1243 - 8);
        v1234 = v1241 + 32;
        v954 = v1238;
        do
        {
          v955 = v1239;
          v950(v954, v952, v1239);
          v950(v1240, v954, v955);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
          sub_219BE75D4();
          (*v953)(v954, v955);
          v956 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v956 + 16) + 1, 1);
            v956 = v1244;
          }

          v958 = *(v956 + 16);
          v957 = *(v956 + 24);
          if (v958 >= v957 >> 1)
          {
            sub_218C34D90((v957 > 1), v958 + 1, 1);
            v956 = v1244;
          }

          *(v956 + 16) = v958 + 1;
          (*(v1241 + 32))(v956 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v958, v1200, v1237);
          v1244 = v956;
          v952 += v1236;
          --v949;
        }

        while (v949);

        v580 = v1157;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      sub_219BE81A4();

      (*(v1216 + 8))(v580, v1215);
      v683 = type metadata accessor for SportsScheduleTagFeedGroup;
      v684 = v1179;
      return sub_218864CF4(v684, v683);
    case 0xEuLL:
      v356 = swift_projectBox();
      v357 = v1180;
      sub_218F54C5C(v356, v1180, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v358 = *(v1122 + 20);
      v359 = v1222;
      sub_219BED874();
      v360 = sub_219BEDB64();
      v361 = v1221;
      (*(*(v360 - 8) + 56))(v1221, 1, 1, v360);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v357 + v358, v1217);
      v362 = v1220;
      sub_219BEF4D4();
      v363 = sub_219BEF4E4();
      (*(*(v363 - 8) + 56))(v362, 0, 1, v363);
      v1219 = sub_219BED894();
      sub_21905F818();
      sub_218954350(0);
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
      sub_219BE69F4();

      sub_218864CF4(v362, sub_218F54BF4);
      sub_218864CF4(v361, sub_218F54C28);
      v364 = *(v1224 + 8);
      v365 = v1223;
      v364(v359, v1223);
      sub_219BED874();
      v366 = sub_219BF44B4();
      v364(v359, v365);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v366;
      v367 = sub_219BDCB24();
      v368 = *(*(v367 - 8) + 56);
      v368(v1225, 1, 1, v367);
      v368(v1226, 1, 1, v367);
      v368(v1227, 1, 1, v367);
      v368(v1228, 1, 1, v367);
      v369 = v366;

      v370 = v1102;
      sub_219BDCB04();
      v371 = v1158;
      v372 = v1235;
      sub_219BEE0B4();
      if (v372)
      {

        (*(v1230 + 8))(v370, v1229);
        v338 = type metadata accessor for SportsTopStoriesTagFeedGroup;
        v339 = &v1212;
        goto LABEL_80;
      }

      v741 = MEMORY[0x277D84F90];
      v1233 = v369;
      (*(v1230 + 8))(v370, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v742 = v1192;
      (*(v1216 + 16))(v1192, v371, v1215);
      *&v1248 = sub_218DED880(v742);
      *(&v1248 + 1) = v743;
      *&v1249 = v744;
      BYTE8(v1249) = 0;
      v745 = *MEMORY[0x277D6E980];
      v746 = sub_219BE9F84();
      v747 = v1080;
      (*(*(v746 - 8) + 104))(v1080, v745, v746);
      (*(v1214 + 104))(v747, *MEMORY[0x277D6E988], v1213);
      v748 = sub_219BEE004();
      v749 = *(v748 + 16);
      if (v749)
      {
        v1235 = 0;
        v1244 = v741;
        sub_218C33FD0(v749);
        v750 = *(v1243 + 16);
        v751 = *(v1243 + 80);
        v1232 = v748;
        v752 = v748 + ((v751 + 32) & ~v751);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v753 = (v1243 - 8);
        v1234 = v1241 + 32;
        v754 = v1238;
        do
        {
          v755 = v1239;
          v750(v754, v752, v1239);
          v750(v1240, v754, v755);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
          sub_219BE75D4();
          (*v753)(v754, v755);
          v756 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v756 + 16) + 1, 1);
            v756 = v1244;
          }

          v758 = *(v756 + 16);
          v757 = *(v756 + 24);
          if (v758 >= v757 >> 1)
          {
            sub_218C34D90((v757 > 1), v758 + 1, 1);
            v756 = v1244;
          }

          *(v756 + 16) = v758 + 1;
          (*(v1241 + 32))(v756 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v758, v1201, v1237);
          v1244 = v756;
          v752 += v1236;
          --v749;
        }

        while (v749);

        v371 = v1158;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      sub_219BE81A4();

      (*(v1216 + 8))(v371, v1215);
      v683 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      v684 = v1180;
      return sub_218864CF4(v684, v683);
    case 0xFuLL:
      v436 = swift_projectBox();
      v437 = v1181;
      sub_218F54C5C(v436, v1181, type metadata accessor for SportsFavoritesTagFeedGroup);
      v438 = v1222;
      sub_219BED874();
      v439 = sub_219BEDB64();
      v440 = v1221;
      (*(*(v439 - 8) + 56))(v1221, 1, 1, v439);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v437, v1217);
      v441 = v1220;
      sub_219BEF4D4();
      v442 = sub_219BEF4E4();
      (*(*(v442 - 8) + 56))(v441, 0, 1, v442);
      sub_219BED894();
      sub_21905F818();
      sub_218954350(0);
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
      sub_219BE69F4();

      sub_218864CF4(v441, sub_218F54BF4);
      sub_218864CF4(v440, sub_218F54C28);
      v443 = *(v1224 + 8);
      v444 = v1223;
      v443(v438, v1223);
      sub_219BED874();
      v445 = sub_219BF44B4();
      v443(v438, v444);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v445;
      v446 = sub_219BDCB24();
      v447 = *(*(v446 - 8) + 56);
      v447(v1225, 1, 1, v446);
      v447(v1226, 1, 1, v446);
      v447(v1227, 1, 1, v446);
      v447(v1228, 1, 1, v446);
      v448 = v445;

      v449 = v1103;
      sub_219BDCB04();
      v450 = v1159;
      v451 = v1235;
      sub_219BEE0B4();
      if (v451)
      {

        (*(v1230 + 8))(v449, v1229);
        v338 = type metadata accessor for SportsFavoritesTagFeedGroup;
        v339 = &v1213;
        goto LABEL_80;
      }

      v814 = MEMORY[0x277D84F90];
      v1233 = v448;
      (*(v1230 + 8))(v449, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v815 = v1192;
      (*(v1216 + 16))(v1192, v450, v1215);
      *&v1248 = sub_218DED880(v815);
      *(&v1248 + 1) = v816;
      *&v1249 = v817;
      BYTE8(v1249) = 0;
      v818 = *MEMORY[0x277D6E980];
      v819 = sub_219BE9F84();
      v820 = v1081;
      (*(*(v819 - 8) + 104))(v1081, v818, v819);
      (*(v1214 + 104))(v820, *MEMORY[0x277D6E988], v1213);
      v821 = sub_219BEE004();
      v822 = *(v821 + 16);
      if (v822)
      {
        v1235 = 0;
        v1244 = v814;
        sub_218C33FD0(v822);
        v823 = *(v1243 + 16);
        v824 = *(v1243 + 80);
        v1232 = v821;
        v825 = v821 + ((v824 + 32) & ~v824);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v826 = (v1243 - 8);
        v1234 = v1241 + 32;
        v827 = v1238;
        do
        {
          v828 = v1239;
          v823(v827, v825, v1239);
          v823(v1240, v827, v828);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
          sub_219BE75D4();
          (*v826)(v827, v828);
          v829 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v829 + 16) + 1, 1);
            v829 = v1244;
          }

          v831 = *(v829 + 16);
          v830 = *(v829 + 24);
          if (v831 >= v830 >> 1)
          {
            sub_218C34D90((v830 > 1), v831 + 1, 1);
            v829 = v1244;
          }

          *(v829 + 16) = v831 + 1;
          (*(v1241 + 32))(v829 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v831, v1202, v1237);
          v1244 = v829;
          v825 += v1236;
          --v822;
        }

        while (v822);

        v450 = v1159;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      sub_219BE81A4();

      (*(v1216 + 8))(v450, v1215);
      v683 = type metadata accessor for SportsFavoritesTagFeedGroup;
      v684 = v1181;
      return sub_218864CF4(v684, v683);
    case 0x10uLL:
      v321 = swift_projectBox();
      v322 = v1182;
      sub_218F54C5C(v321, v1182, type metadata accessor for SportsScoresTagFeedGroup);
      v323 = *(v1123 + 20);
      v324 = v1222;
      sub_219BED874();
      v325 = sub_219BEDB64();
      v326 = v1221;
      (*(*(v325 - 8) + 56))(v1221, 1, 1, v325);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v322 + v323, v1217);
      v327 = v1220;
      sub_219BEF4D4();
      v328 = sub_219BEF4E4();
      (*(*(v328 - 8) + 56))(v327, 0, 1, v328);
      v1219 = sub_219BED894();
      sub_21905F818();
      sub_218954350(0);
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
      sub_219BE69F4();

      sub_218864CF4(v327, sub_218F54BF4);
      sub_218864CF4(v326, sub_218F54C28);
      v329 = *(v1224 + 8);
      v330 = v1223;
      v329(v324, v1223);
      sub_219BED874();
      v331 = sub_219BF44B4();
      v329(v324, v330);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v331;
      v332 = sub_219BDCB24();
      v333 = *(*(v332 - 8) + 56);
      v333(v1225, 1, 1, v332);
      v333(v1226, 1, 1, v332);
      v333(v1227, 1, 1, v332);
      v333(v1228, 1, 1, v332);
      v334 = v331;

      v335 = v1104;
      sub_219BDCB04();
      v336 = v1160;
      v337 = v1235;
      sub_219BEE0B4();
      if (v337)
      {

        (*(v1230 + 8))(v335, v1229);
        v338 = type metadata accessor for SportsScoresTagFeedGroup;
        v339 = &v1214;
        goto LABEL_80;
      }

      v705 = MEMORY[0x277D84F90];
      v1233 = v334;
      (*(v1230 + 8))(v335, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v706 = v1192;
      (*(v1216 + 16))(v1192, v336, v1215);
      *&v1248 = sub_218DED880(v706);
      *(&v1248 + 1) = v707;
      *&v1249 = v708;
      BYTE8(v1249) = 0;
      v709 = *MEMORY[0x277D6E980];
      v710 = sub_219BE9F84();
      v711 = v1082;
      (*(*(v710 - 8) + 104))(v1082, v709, v710);
      (*(v1214 + 104))(v711, *MEMORY[0x277D6E988], v1213);
      v712 = sub_219BEE004();
      v713 = *(v712 + 16);
      if (v713)
      {
        v1235 = 0;
        v1244 = v705;
        sub_218C33FD0(v713);
        v714 = *(v1243 + 16);
        v715 = *(v1243 + 80);
        v1232 = v712;
        v716 = v712 + ((v715 + 32) & ~v715);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v717 = (v1243 - 8);
        v1234 = v1241 + 32;
        v718 = v1238;
        do
        {
          v719 = v1239;
          v714(v718, v716, v1239);
          v714(v1240, v718, v719);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
          sub_219BE75D4();
          (*v717)(v718, v719);
          v720 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v720 + 16) + 1, 1);
            v720 = v1244;
          }

          v722 = *(v720 + 16);
          v721 = *(v720 + 24);
          if (v722 >= v721 >> 1)
          {
            sub_218C34D90((v721 > 1), v722 + 1, 1);
            v720 = v1244;
          }

          *(v720 + 16) = v722 + 1;
          (*(v1241 + 32))(v720 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v722, v1203, v1237);
          v1244 = v720;
          v716 += v1236;
          --v713;
        }

        while (v713);

        v336 = v1160;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      sub_219BE81A4();

      (*(v1216 + 8))(v336, v1215);
      v683 = type metadata accessor for SportsScoresTagFeedGroup;
      v684 = v1182;
      return sub_218864CF4(v684, v683);
    case 0x11uLL:
      v499 = swift_projectBox();
      v500 = v1183;
      sub_218F54C5C(v499, v1183, type metadata accessor for SportsLinksTagFeedGroup);
      v501 = v1222;
      sub_219BED874();
      v502 = sub_219BEDB64();
      v503 = v1221;
      (*(*(v502 - 8) + 56))(v1221, 1, 1, v502);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v500, v1217);
      v504 = v1220;
      sub_219BEF4D4();
      v505 = sub_219BEF4E4();
      (*(*(v505 - 8) + 56))(v504, 0, 1, v505);
      sub_219BED894();
      sub_21905F818();
      sub_218954350(0);
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
      sub_219BE69F4();

      sub_218864CF4(v504, sub_218F54BF4);
      sub_218864CF4(v503, sub_218F54C28);
      v506 = *(v1224 + 8);
      v507 = v1223;
      v506(v501, v1223);
      sub_219BED874();
      v508 = sub_219BF44B4();
      v506(v501, v507);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v508;
      v509 = sub_219BDCB24();
      v510 = *(*(v509 - 8) + 56);
      v510(v1225, 1, 1, v509);
      v510(v1226, 1, 1, v509);
      v510(v1227, 1, 1, v509);
      v510(v1228, 1, 1, v509);
      v511 = v508;

      v512 = v1105;
      sub_219BDCB04();
      v513 = v1161;
      v514 = v1235;
      sub_219BEE0B4();
      if (v514)
      {

        (*(v1230 + 8))(v512, v1229);
        v338 = type metadata accessor for SportsLinksTagFeedGroup;
        v339 = &v1215;
        goto LABEL_80;
      }

      v869 = MEMORY[0x277D84F90];
      v1233 = v511;
      (*(v1230 + 8))(v512, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v870 = v1192;
      (*(v1216 + 16))(v1192, v513, v1215);
      *&v1248 = sub_218DED880(v870);
      *(&v1248 + 1) = v871;
      *&v1249 = v872;
      BYTE8(v1249) = 0;
      v873 = *MEMORY[0x277D6E980];
      v874 = sub_219BE9F84();
      v875 = v1083;
      (*(*(v874 - 8) + 104))(v1083, v873, v874);
      (*(v1214 + 104))(v875, *MEMORY[0x277D6E988], v1213);
      v876 = sub_219BEE004();
      v877 = *(v876 + 16);
      if (v877)
      {
        v1235 = 0;
        v1244 = v869;
        sub_218C33FD0(v877);
        v878 = *(v1243 + 16);
        v879 = *(v1243 + 80);
        v1232 = v876;
        v880 = v876 + ((v879 + 32) & ~v879);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v881 = (v1243 - 8);
        v1234 = v1241 + 32;
        v882 = v1238;
        do
        {
          v883 = v1239;
          v878(v882, v880, v1239);
          v878(v1240, v882, v883);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
          sub_219BE75D4();
          (*v881)(v882, v883);
          v884 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v884 + 16) + 1, 1);
            v884 = v1244;
          }

          v886 = *(v884 + 16);
          v885 = *(v884 + 24);
          if (v886 >= v885 >> 1)
          {
            sub_218C34D90((v885 > 1), v886 + 1, 1);
            v884 = v1244;
          }

          *(v884 + 16) = v886 + 1;
          (*(v1241 + 32))(v884 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v886, v1204, v1237);
          v1244 = v884;
          v880 += v1236;
          --v877;
        }

        while (v877);

        v513 = v1161;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      sub_219BE81A4();

      (*(v1216 + 8))(v513, v1215);
      v683 = type metadata accessor for SportsLinksTagFeedGroup;
      v684 = v1183;
      return sub_218864CF4(v684, v683);
    case 0x12uLL:
      v598 = swift_projectBox();
      v599 = v1184;
      sub_218F54C5C(v598, v1184, type metadata accessor for MySportsTopicTagFeedGroup);
      v600 = *(v1124 + 20);
      v601 = v1222;
      sub_219BED874();
      v602 = sub_219BEDB64();
      v603 = v1221;
      (*(*(v602 - 8) + 56))(v1221, 1, 1, v602);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v599 + v600, v1217);
      v604 = v1220;
      sub_219BEF4D4();
      v605 = sub_219BEF4E4();
      (*(*(v605 - 8) + 56))(v604, 0, 1, v605);
      v1219 = sub_219BED894();
      sub_21905F818();
      sub_218954350(0);
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
      sub_219BE69F4();

      sub_218864CF4(v604, sub_218F54BF4);
      sub_218864CF4(v603, sub_218F54C28);
      v606 = *(v1224 + 8);
      v607 = v1223;
      v606(v601, v1223);
      sub_219BED874();
      v608 = sub_219BF44B4();
      v606(v601, v607);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v608;
      v609 = sub_219BDCB24();
      v610 = *(*(v609 - 8) + 56);
      v610(v1225, 1, 1, v609);
      v610(v1226, 1, 1, v609);
      v610(v1227, 1, 1, v609);
      v610(v1228, 1, 1, v609);
      v611 = v608;

      v612 = v1106;
      sub_219BDCB04();
      v613 = v1162;
      v614 = v1235;
      sub_219BEE0B4();
      if (v614)
      {

        (*(v1230 + 8))(v612, v1229);
        v338 = type metadata accessor for MySportsTopicTagFeedGroup;
        v339 = &v1216;
        goto LABEL_80;
      }

      v977 = MEMORY[0x277D84F90];
      v1233 = v611;
      (*(v1230 + 8))(v612, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v978 = v1192;
      (*(v1216 + 16))(v1192, v613, v1215);
      *&v1248 = sub_218DED880(v978);
      *(&v1248 + 1) = v979;
      *&v1249 = v980;
      BYTE8(v1249) = 0;
      v981 = *MEMORY[0x277D6E980];
      v982 = sub_219BE9F84();
      v983 = v1084;
      (*(*(v982 - 8) + 104))(v1084, v981, v982);
      (*(v1214 + 104))(v983, *MEMORY[0x277D6E988], v1213);
      v984 = sub_219BEE004();
      v985 = *(v984 + 16);
      if (v985)
      {
        v1235 = 0;
        v1244 = v977;
        sub_218C33FD0(v985);
        v986 = *(v1243 + 16);
        v987 = *(v1243 + 80);
        v1232 = v984;
        v988 = v984 + ((v987 + 32) & ~v987);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v989 = (v1243 - 8);
        v1234 = v1241 + 32;
        v990 = v1238;
        do
        {
          v991 = v1239;
          v986(v990, v988, v1239);
          v986(v1240, v990, v991);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
          sub_219BE75D4();
          (*v989)(v990, v991);
          v992 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v992 + 16) + 1, 1);
            v992 = v1244;
          }

          v994 = *(v992 + 16);
          v993 = *(v992 + 24);
          if (v994 >= v993 >> 1)
          {
            sub_218C34D90((v993 > 1), v994 + 1, 1);
            v992 = v1244;
          }

          *(v992 + 16) = v994 + 1;
          (*(v1241 + 32))(v992 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v994, v1205, v1237);
          v1244 = v992;
          v988 += v1236;
          --v985;
        }

        while (v985);

        v613 = v1162;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      sub_219BE81A4();

      (*(v1216 + 8))(v613, v1215);
      v683 = type metadata accessor for MySportsTopicTagFeedGroup;
      v684 = v1184;
      return sub_218864CF4(v684, v683);
    case 0x13uLL:
      v660 = swift_projectBox();
      v661 = v1185;
      sub_218F54C5C(v660, v1185, type metadata accessor for SportsStandingsTagFeedGroup);
      v662 = v1222;
      sub_219BED874();
      v663 = sub_219BEDB64();
      v664 = v1221;
      (*(*(v663 - 8) + 56))(v1221, 1, 1, v663);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v661, v1217);
      v665 = v1220;
      sub_219BEF4D4();
      v666 = sub_219BEF4E4();
      (*(*(v666 - 8) + 56))(v665, 0, 1, v666);
      sub_219BED894();
      sub_21905F818();
      sub_218954350(0);
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
      sub_219BE69F4();

      sub_218864CF4(v665, sub_218F54BF4);
      sub_218864CF4(v664, sub_218F54C28);
      v667 = *(v1224 + 8);
      v668 = v1223;
      v667(v662, v1223);
      sub_219BED874();
      v669 = sub_219BF44B4();
      v667(v662, v668);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v669;
      v670 = sub_219BDCB24();
      v671 = *(*(v670 - 8) + 56);
      v671(v1225, 1, 1, v670);
      v671(v1226, 1, 1, v670);
      v671(v1227, 1, 1, v670);
      v671(v1228, 1, 1, v670);
      v672 = v669;

      v673 = v1107;
      sub_219BDCB04();
      v674 = v1163;
      v675 = v1235;
      sub_219BEE0B4();
      if (v675)
      {

        (*(v1230 + 8))(v673, v1229);
        v338 = type metadata accessor for SportsStandingsTagFeedGroup;
        v339 = &v1217;
        goto LABEL_80;
      }

      v1032 = MEMORY[0x277D84F90];
      v1233 = v672;
      (*(v1230 + 8))(v673, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v1033 = v1192;
      (*(v1216 + 16))(v1192, v674, v1215);
      *&v1248 = sub_218DED880(v1033);
      *(&v1248 + 1) = v1034;
      *&v1249 = v1035;
      BYTE8(v1249) = 0;
      v1036 = *MEMORY[0x277D6E980];
      v1037 = sub_219BE9F84();
      v1038 = v1085;
      (*(*(v1037 - 8) + 104))(v1085, v1036, v1037);
      (*(v1214 + 104))(v1038, *MEMORY[0x277D6E988], v1213);
      v1039 = sub_219BEE004();
      v1040 = *(v1039 + 16);
      if (v1040)
      {
        v1235 = 0;
        v1244 = v1032;
        sub_218C33FD0(v1040);
        v1041 = *(v1243 + 16);
        v1042 = *(v1243 + 80);
        v1232 = v1039;
        v1043 = v1039 + ((v1042 + 32) & ~v1042);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v1044 = (v1243 - 8);
        v1234 = v1241 + 32;
        v1045 = v1238;
        do
        {
          v1046 = v1239;
          v1041(v1045, v1043, v1239);
          v1041(v1240, v1045, v1046);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
          sub_219BE75D4();
          (*v1044)(v1045, v1046);
          v1047 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v1047 + 16) + 1, 1);
            v1047 = v1244;
          }

          v1049 = *(v1047 + 16);
          v1048 = *(v1047 + 24);
          if (v1049 >= v1048 >> 1)
          {
            sub_218C34D90((v1048 > 1), v1049 + 1, 1);
            v1047 = v1244;
          }

          *(v1047 + 16) = v1049 + 1;
          (*(v1241 + 32))(v1047 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v1049, v1206, v1237);
          v1244 = v1047;
          v1043 += v1236;
          --v1040;
        }

        while (v1040);

        v674 = v1163;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      sub_219BE81A4();

      (*(v1216 + 8))(v674, v1215);
      v683 = type metadata accessor for SportsStandingsTagFeedGroup;
      v684 = v1185;
      return sub_218864CF4(v684, v683);
    case 0x14uLL:
      v518 = swift_projectBox();
      v519 = v1186;
      sub_218F54C5C(v518, v1186, type metadata accessor for SportsBracketTagFeedGroup);
      v520 = v1222;
      sub_219BED874();
      v521 = sub_219BEDB64();
      v522 = v1221;
      (*(*(v521 - 8) + 56))(v1221, 1, 1, v521);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v519, v1217);
      v523 = v1220;
      sub_219BEF4D4();
      v524 = sub_219BEF4E4();
      (*(*(v524 - 8) + 56))(v523, 0, 1, v524);
      sub_219BED894();
      sub_21905F818();
      sub_218954350(0);
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
      sub_219BE69F4();

      sub_218864CF4(v523, sub_218F54BF4);
      sub_218864CF4(v522, sub_218F54C28);
      v525 = *(v1224 + 8);
      v526 = v1223;
      v525(v520, v1223);
      sub_219BED874();
      v527 = sub_219BF44B4();
      v525(v520, v526);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v527;
      v528 = sub_219BDCB24();
      v529 = *(*(v528 - 8) + 56);
      v529(v1225, 1, 1, v528);
      v529(v1226, 1, 1, v528);
      v529(v1227, 1, 1, v528);
      v529(v1228, 1, 1, v528);
      v530 = v527;

      v531 = v1108;
      sub_219BDCB04();
      v532 = v1165;
      v533 = v1235;
      sub_219BEE0B4();
      if (v533)
      {

        (*(v1230 + 8))(v531, v1229);
        v338 = type metadata accessor for SportsBracketTagFeedGroup;
        v339 = &v1218;
        goto LABEL_80;
      }

      v887 = MEMORY[0x277D84F90];
      v1233 = v530;
      (*(v1230 + 8))(v531, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v888 = v1192;
      (*(v1216 + 16))(v1192, v532, v1215);
      *&v1248 = sub_218DED880(v888);
      *(&v1248 + 1) = v889;
      *&v1249 = v890;
      BYTE8(v1249) = 0;
      v891 = *MEMORY[0x277D6E980];
      v892 = sub_219BE9F84();
      v893 = v1087;
      (*(*(v892 - 8) + 104))(v1087, v891, v892);
      (*(v1214 + 104))(v893, *MEMORY[0x277D6E988], v1213);
      v894 = sub_219BEE004();
      v895 = *(v894 + 16);
      if (v895)
      {
        v1235 = 0;
        v1244 = v887;
        sub_218C33FD0(v895);
        v896 = *(v1243 + 16);
        v897 = *(v1243 + 80);
        v1232 = v894;
        v898 = v894 + ((v897 + 32) & ~v897);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v899 = (v1243 - 8);
        v1234 = v1241 + 32;
        v900 = v1238;
        do
        {
          v901 = v1239;
          v896(v900, v898, v1239);
          v896(v1240, v900, v901);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
          sub_219BE75D4();
          (*v899)(v900, v901);
          v902 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v902 + 16) + 1, 1);
            v902 = v1244;
          }

          v904 = *(v902 + 16);
          v903 = *(v902 + 24);
          if (v904 >= v903 >> 1)
          {
            sub_218C34D90((v903 > 1), v904 + 1, 1);
            v902 = v1244;
          }

          *(v902 + 16) = v904 + 1;
          (*(v1241 + 32))(v902 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v904, v1207, v1237);
          v1244 = v902;
          v898 += v1236;
          --v895;
        }

        while (v895);

        v532 = v1165;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      sub_219BE81A4();

      (*(v1216 + 8))(v532, v1215);
      v683 = type metadata accessor for SportsBracketTagFeedGroup;
      v684 = v1186;
      return sub_218864CF4(v684, v683);
    case 0x15uLL:
      v550 = swift_projectBox();
      v551 = v1187;
      sub_218F54C5C(v550, v1187, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v552 = v1222;
      sub_219BED874();
      v553 = sub_219BEDB64();
      v554 = v1221;
      (*(*(v553 - 8) + 56))(v1221, 1, 1, v553);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v551, v1217);
      v555 = v1220;
      sub_219BEF4D4();
      v556 = sub_219BEF4E4();
      (*(*(v556 - 8) + 56))(v555, 0, 1, v556);
      sub_219BED894();
      sub_21905F818();
      sub_218954350(0);
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
      sub_219BE69F4();

      sub_218864CF4(v555, sub_218F54BF4);
      sub_218864CF4(v554, sub_218F54C28);
      v557 = *(v1224 + 8);
      v558 = v1223;
      v557(v552, v1223);
      sub_219BED874();
      v559 = sub_219BF44B4();
      v557(v552, v558);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v559;
      v560 = sub_219BDCB24();
      v561 = *(*(v560 - 8) + 56);
      v561(v1225, 1, 1, v560);
      v561(v1226, 1, 1, v560);
      v561(v1227, 1, 1, v560);
      v561(v1228, 1, 1, v560);
      v562 = v559;

      v563 = v1109;
      sub_219BDCB04();
      v564 = v1166;
      v565 = v1235;
      sub_219BEE0B4();
      if (v565)
      {

        (*(v1230 + 8))(v563, v1229);
        v338 = type metadata accessor for SportsBoxScoresTagFeedGroup;
        v339 = &v1219;
        goto LABEL_80;
      }

      v923 = MEMORY[0x277D84F90];
      v1233 = v562;
      (*(v1230 + 8))(v563, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v924 = v1192;
      (*(v1216 + 16))(v1192, v564, v1215);
      *&v1248 = sub_218DED880(v924);
      *(&v1248 + 1) = v925;
      *&v1249 = v926;
      BYTE8(v1249) = 0;
      v927 = *MEMORY[0x277D6E980];
      v928 = sub_219BE9F84();
      v929 = v1088;
      (*(*(v928 - 8) + 104))(v1088, v927, v928);
      (*(v1214 + 104))(v929, *MEMORY[0x277D6E988], v1213);
      v930 = sub_219BEE004();
      v931 = *(v930 + 16);
      if (v931)
      {
        v1235 = 0;
        v1244 = v923;
        sub_218C33FD0(v931);
        v932 = *(v1243 + 16);
        v933 = *(v1243 + 80);
        v1232 = v930;
        v934 = v930 + ((v933 + 32) & ~v933);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v935 = (v1243 - 8);
        v1234 = v1241 + 32;
        v936 = v1238;
        do
        {
          v937 = v1239;
          v932(v936, v934, v1239);
          v932(v1240, v936, v937);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
          sub_219BE75D4();
          (*v935)(v936, v937);
          v938 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v938 + 16) + 1, 1);
            v938 = v1244;
          }

          v940 = *(v938 + 16);
          v939 = *(v938 + 24);
          if (v940 >= v939 >> 1)
          {
            sub_218C34D90((v939 > 1), v940 + 1, 1);
            v938 = v1244;
          }

          *(v938 + 16) = v940 + 1;
          (*(v1241 + 32))(v938 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v940, v1208, v1237);
          v1244 = v938;
          v934 += v1236;
          --v931;
        }

        while (v931);

        v564 = v1166;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      sub_219BE81A4();

      (*(v1216 + 8))(v564, v1215);
      v683 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      v684 = v1187;
      return sub_218864CF4(v684, v683);
    case 0x16uLL:
      v643 = swift_projectBox();
      v644 = v1188;
      sub_218F54C5C(v643, v1188, type metadata accessor for SportsEventInfoTagFeedGroup);
      v645 = v1222;
      sub_219BED874();
      v646 = sub_219BEDB64();
      v647 = v1221;
      (*(*(v646 - 8) + 56))(v1221, 1, 1, v646);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v644, v1217);
      v648 = v1220;
      sub_219BEF4D4();
      v649 = sub_219BEF4E4();
      (*(*(v649 - 8) + 56))(v648, 0, 1, v649);
      sub_219BED894();
      sub_21905F818();
      sub_218954350(0);
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
      sub_219BE69F4();

      sub_218864CF4(v648, sub_218F54BF4);
      sub_218864CF4(v647, sub_218F54C28);
      v650 = *(v1224 + 8);
      v651 = v1223;
      v650(v645, v1223);
      sub_219BED874();
      v652 = sub_219BF44B4();
      v650(v645, v651);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v652;
      v653 = sub_219BDCB24();
      v654 = *(*(v653 - 8) + 56);
      v654(v1225, 1, 1, v653);
      v654(v1226, 1, 1, v653);
      v654(v1227, 1, 1, v653);
      v654(v1228, 1, 1, v653);
      v655 = v652;

      v656 = v1111;
      sub_219BDCB04();
      v657 = v1167;
      v658 = v1235;
      sub_219BEE0B4();
      if (v658)
      {

        (*(v1230 + 8))(v656, v1229);
        v338 = type metadata accessor for SportsEventInfoTagFeedGroup;
        v339 = &v1220;
        goto LABEL_80;
      }

      v1014 = MEMORY[0x277D84F90];
      v1233 = v655;
      (*(v1230 + 8))(v656, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v1015 = v1192;
      (*(v1216 + 16))(v1192, v657, v1215);
      *&v1248 = sub_218DED880(v1015);
      *(&v1248 + 1) = v1016;
      *&v1249 = v1017;
      BYTE8(v1249) = 0;
      v1018 = *MEMORY[0x277D6E980];
      v1019 = sub_219BE9F84();
      v1020 = v1089;
      (*(*(v1019 - 8) + 104))(v1089, v1018, v1019);
      (*(v1214 + 104))(v1020, *MEMORY[0x277D6E988], v1213);
      v1021 = sub_219BEE004();
      v1022 = *(v1021 + 16);
      if (v1022)
      {
        v1235 = 0;
        v1244 = v1014;
        sub_218C33FD0(v1022);
        v1023 = *(v1243 + 16);
        v1024 = *(v1243 + 80);
        v1232 = v1021;
        v1025 = v1021 + ((v1024 + 32) & ~v1024);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v1026 = (v1243 - 8);
        v1234 = v1241 + 32;
        v1027 = v1238;
        do
        {
          v1028 = v1239;
          v1023(v1027, v1025, v1239);
          v1023(v1240, v1027, v1028);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
          sub_219BE75D4();
          (*v1026)(v1027, v1028);
          v1029 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v1029 + 16) + 1, 1);
            v1029 = v1244;
          }

          v1031 = *(v1029 + 16);
          v1030 = *(v1029 + 24);
          if (v1031 >= v1030 >> 1)
          {
            sub_218C34D90((v1030 > 1), v1031 + 1, 1);
            v1029 = v1244;
          }

          *(v1029 + 16) = v1031 + 1;
          (*(v1241 + 32))(v1029 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v1031, v1210, v1237);
          v1244 = v1029;
          v1025 += v1236;
          --v1022;
        }

        while (v1022);

        v657 = v1167;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      sub_219BE81A4();

      (*(v1216 + 8))(v657, v1215);
      v683 = type metadata accessor for SportsEventInfoTagFeedGroup;
      v684 = v1188;
      return sub_218864CF4(v684, v683);
    case 0x17uLL:
      v677 = swift_projectBox();
      v313 = v1125;
      sub_218F54C5C(v677, v1125, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      sub_218F51E50(v1233, v313, MEMORY[0x277D84FA0], v1232, v1231);
      v314 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_77;
    case 0x18uLL:
      v419 = swift_projectBox();
      v313 = v1126;
      sub_218F54C5C(v419, v1126, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      sub_218F51E50(v1233, v313, MEMORY[0x277D84FA0], v1232, v1231);
      v314 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_77;
    case 0x19uLL:
      v418 = swift_projectBox();
      v313 = v1127;
      sub_218F54C5C(v418, v1127, type metadata accessor for SportsEventArticlesTagFeedGroup);
      sub_218F51E50(v1233, v313, MEMORY[0x277D84FA0], v1232, v1231);
      v314 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_77;
    case 0x1AuLL:
      v682 = swift_projectBox();
      v313 = v1128;
      sub_218F54C5C(v682, v1128, type metadata accessor for HighlightsTagFeedGroup);
      sub_218F51E50(v1233, v313, MEMORY[0x277D84FA0], v1232, v1231);
      v314 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_77;
    case 0x1BuLL:
      v319 = swift_projectBox();
      v313 = v1130;
      sub_218F54C5C(v319, v1130, type metadata accessor for ForYouTagFeedGroup);
      sub_218F51E50(v1233, v313 + *(v1129 + 20), MEMORY[0x277D84FA0], v1232, v1231);
      v314 = type metadata accessor for ForYouTagFeedGroup;
      goto LABEL_77;
    case 0x1CuLL:
      v678 = swift_projectBox();
      v313 = v1131;
      sub_218F54C5C(v678, v1131, type metadata accessor for ChannelRecipesTagFeedGroup);
      sub_218F51E50(v1233, v313, MEMORY[0x277D84FA0], v1232, v1231);
      v314 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_77;
    case 0x1DuLL:
      v679 = swift_projectBox();
      v313 = v1132;
      sub_218F54C5C(v679, v1132, type metadata accessor for ForYouRecipesTagFeedGroup);
      sub_218F51E50(v1233, v313, MEMORY[0x277D84FA0], v1232, v1231);
      v314 = type metadata accessor for ForYouRecipesTagFeedGroup;
      goto LABEL_77;
    case 0x1EuLL:
      v639 = swift_projectBox();
      v313 = v1133;
      sub_218F54C5C(v639, v1133, type metadata accessor for RecentStoriesTagFeedGroup);
      sub_218F51E50(v1233, v313, MEMORY[0x277D84FA0], v1232, v1231);
      v314 = type metadata accessor for RecentStoriesTagFeedGroup;
      goto LABEL_77;
    case 0x1FuLL:
      v495 = swift_projectBox();
      v496 = v1135;
      sub_218F54C5C(v495, v1135, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v497 = v1234;
      if (sub_218F53670())
      {
        sub_218F52E84(v497, v1231);
        v498 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
        return sub_218864CF4(v496, v498);
      }

      sub_218F51E50(v1233, v496, MEMORY[0x277D84FA0], v1232, v1231);
      v517 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      goto LABEL_91;
    case 0x20uLL:
      v640 = swift_projectBox();
      v313 = v1136;
      sub_218F54C5C(v640, v1136, type metadata accessor for DateRangeTagFeedGroup);
      sub_218F51E50(v1233, v313 + *(v1134 + 20), MEMORY[0x277D84FA0], v1232, v1231);
      v314 = type metadata accessor for DateRangeTagFeedGroup;
      goto LABEL_77;
    case 0x21uLL:
      v373 = swift_projectBox();
      v313 = v1137;
      sub_218F54C5C(v373, v1137, type metadata accessor for SportsOnboardingTagFeedGroup);
      sub_218F51E50(v1233, v313, MEMORY[0x277D84FA0], v1232, v1231);
      v314 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_77;
    case 0x22uLL:
      v320 = swift_projectBox();
      v313 = v1138;
      sub_218F54C5C(v320, v1138, type metadata accessor for SportsMastheadTagFeedGroup);
      sub_218F51E50(v1233, v313, MEMORY[0x277D84FA0], v1232, v1231);
      v314 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_77;
    case 0x23uLL:
      v317 = swift_projectBox();
      v313 = v1139;
      sub_218F54C5C(v317, v1139, type metadata accessor for SportsEventTopicTagFeedGroup);
      sub_218F51E50(v1233, v313, MEMORY[0x277D84FA0], v1232, v1231);
      v314 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_77;
    case 0x24uLL:
      v318 = swift_projectBox();
      v313 = v1140;
      sub_218F54C5C(v318, v1140, type metadata accessor for PuzzleListTagFeedGroup);
      sub_218F51E50(v1233, v313, MEMORY[0x277D84FA0], v1232, v1231);
      v314 = type metadata accessor for PuzzleListTagFeedGroup;
      goto LABEL_77;
    case 0x25uLL:
      v315 = swift_projectBox();
      v313 = v1141;
      sub_218F54C5C(v315, v1141, type metadata accessor for PuzzleArchiveTagFeedGroup);
      sub_218F51E50(v1233, v313, MEMORY[0x277D84FA0], v1232, v1231);
      v314 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      goto LABEL_77;
    case 0x26uLL:
      v680 = swift_projectBox();
      v496 = v1142;
      sub_218F54C5C(v680, v1142, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v681 = v1234;
      if (sub_218F53670())
      {
        sub_218F52E84(v681, v1231);
        v498 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
        return sub_218864CF4(v496, v498);
      }

      sub_218F51E50(v1233, v496, MEMORY[0x277D84FA0], v1232, v1231);
      v517 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      goto LABEL_91;
    case 0x27uLL:
      v659 = swift_projectBox();
      v313 = v1143;
      sub_218F54C5C(v659, v1143, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      sub_218F51E50(v1233, v313, MEMORY[0x277D84FA0], v1232, v1231);
      v314 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      goto LABEL_77;
    case 0x28uLL:
      v394 = swift_projectBox();
      v313 = v1144;
      sub_218F54C5C(v394, v1144, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      sub_218F51E50(v1233, v313, MEMORY[0x277D84FA0], v1232, v1231);
      v314 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      goto LABEL_77;
    case 0x29uLL:
      v515 = swift_projectBox();
      v496 = v1145;
      sub_218F54C5C(v515, v1145, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      v516 = v1234;
      if (sub_218F53838())
      {
        sub_218F51E50(v1233, v496, MEMORY[0x277D84FA0], v1232, v1231);
        v517 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
        goto LABEL_91;
      }

      sub_218F52E84(v516, v1231);
      v498 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      return sub_218864CF4(v496, v498);
    case 0x2AuLL:
      v676 = swift_projectBox();
      v313 = v1146;
      sub_218F54C5C(v676, v1146, type metadata accessor for AffinityTagFeedGroup);
      sub_218F51E50(v1233, v313, MEMORY[0x277D84FA0], v1232, v1231);
      v314 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_77;
    case 0x2BuLL:
      v312 = swift_projectBox();
      v313 = v1147;
      sub_218F54C5C(v312, v1147, type metadata accessor for SponsoredBannerTagFeedGroup);
      sub_218F51E50(v1233, v313, MEMORY[0x277D84FA0], v1232, v1231);
      v314 = type metadata accessor for SponsoredBannerTagFeedGroup;
      goto LABEL_77;
    case 0x2CuLL:
      v340 = swift_projectBox();
      v341 = v1190;
      sub_218F54C5C(v340, v1190, type metadata accessor for LatestRecipesTagFeedGroup);
      v342 = v1222;
      sub_219BED874();
      v343 = sub_219BEDB64();
      v344 = v1221;
      (*(*(v343 - 8) + 56))(v1221, 1, 1, v343);
      v1212 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v341, v1217);
      v345 = v1220;
      sub_219BEF4D4();
      v346 = sub_219BEF4E4();
      (*(*(v346 - 8) + 56))(v345, 0, 1, v346);
      sub_219BED894();
      sub_21905F818();
      sub_218954350(0);
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
      sub_219BE69F4();

      sub_218864CF4(v345, sub_218F54BF4);
      sub_218864CF4(v344, sub_218F54C28);
      v347 = *(v1224 + 8);
      v348 = v1223;
      v347(v342, v1223);
      sub_219BED874();
      v349 = sub_219BF44B4();
      v347(v342, v348);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v349;
      v350 = sub_219BDCB24();
      v351 = *(*(v350 - 8) + 56);
      v351(v1225, 1, 1, v350);
      v351(v1226, 1, 1, v350);
      v351(v1227, 1, 1, v350);
      v351(v1228, 1, 1, v350);
      v352 = v349;

      v353 = v1112;
      sub_219BDCB04();
      v354 = v1168;
      v355 = v1235;
      sub_219BEE0B4();
      if (v355)
      {

        (*(v1230 + 8))(v353, v1229);
        v338 = type metadata accessor for LatestRecipesTagFeedGroup;
        v339 = &v1222;
        goto LABEL_80;
      }

      v723 = MEMORY[0x277D84F90];
      v1233 = v352;
      (*(v1230 + 8))(v353, v1229);

      sub_218864CF4(&v1248, sub_218C8A15C);
      v724 = v1192;
      (*(v1216 + 16))(v1192, v354, v1215);
      *&v1248 = sub_218DED880(v724);
      *(&v1248 + 1) = v725;
      *&v1249 = v726;
      BYTE8(v1249) = 0;
      v727 = *MEMORY[0x277D6E980];
      v728 = sub_219BE9F84();
      v729 = v1090;
      (*(*(v728 - 8) + 104))(v1090, v727, v728);
      (*(v1214 + 104))(v729, *MEMORY[0x277D6E988], v1213);
      v730 = sub_219BEE004();
      v731 = *(v730 + 16);
      if (v731)
      {
        v1235 = 0;
        v1244 = v723;
        sub_218C33FD0(v731);
        v732 = *(v1243 + 16);
        v733 = *(v1243 + 80);
        v1232 = v730;
        v734 = v730 + ((v733 + 32) & ~v733);
        v1236 = *(v1243 + 72);
        v1243 += 16;
        v735 = (v1243 - 8);
        v1234 = v1241 + 32;
        v736 = v1238;
        do
        {
          v737 = v1239;
          v732(v736, v734, v1239);
          v732(v1240, v736, v737);
          sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
          sub_219BE75D4();
          (*v735)(v736, v737);
          v738 = v1244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_218C34D90(0, *(v738 + 16) + 1, 1);
            v738 = v1244;
          }

          v740 = *(v738 + 16);
          v739 = *(v738 + 24);
          if (v740 >= v739 >> 1)
          {
            sub_218C34D90((v739 > 1), v740 + 1, 1);
            v738 = v1244;
          }

          *(v738 + 16) = v740 + 1;
          (*(v1241 + 32))(v738 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v740, v1211, v1237);
          v1244 = v738;
          v734 += v1236;
          --v731;
        }

        while (v731);

        v354 = v1168;
      }

      else
      {
      }

      sub_218DED7F0();
      sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      sub_219BE81A4();

      (*(v1216 + 8))(v354, v1215);
      v683 = type metadata accessor for LatestRecipesTagFeedGroup;
      v684 = v1190;
      return sub_218864CF4(v684, v683);
    case 0x2DuLL:
      v641 = swift_projectBox();
      v496 = v1148;
      sub_218F54C5C(v641, v1148, type metadata accessor for SavedRecipesTagFeedGroup);
      v642 = v1234;
      if (!sub_218F53670())
      {
        sub_218F51E50(v1233, v496, MEMORY[0x277D84FA0], v1232, v1231);
        v517 = type metadata accessor for SavedRecipesTagFeedGroup;
LABEL_91:
        v683 = v517;
        v684 = v496;
        return sub_218864CF4(v684, v683);
      }

      sub_218F52E84(v642, v1231);
      v498 = type metadata accessor for SavedRecipesTagFeedGroup;
      return sub_218864CF4(v496, v498);
    case 0x2EuLL:
      v685 = swift_projectBox();
      v686 = v1191;
      sub_218F54C5C(v685, v1191, type metadata accessor for TrendingRecipesTagFeedGroup);
      v687 = v1222;
      sub_219BED874();
      v688 = sub_219BEDB64();
      v689 = v1221;
      (*(*(v688 - 8) + 56))(v1221, 1, 1, v688);
      v1211 = *(v1236 + 72);
      (*(v1218 + 16))(v1219, v686, v1217);
      v690 = v1220;
      sub_219BEF4D4();
      v691 = sub_219BEF4E4();
      (*(*(v691 - 8) + 56))(v690, 0, 1, v691);
      sub_219BED894();
      sub_21905F818();
      sub_218954350(0);
      sub_218F54CC4();
      sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
      sub_219BE69F4();

      sub_218864CF4(v690, sub_218F54BF4);
      sub_218864CF4(v689, sub_218F54C28);
      v692 = *(v1224 + 8);
      v693 = v1223;
      v692(v687, v1223);
      sub_219BED874();
      v694 = sub_219BF44B4();
      v692(v687, v693);
      *(&v1249 + 1) = sub_219BF3594();
      v1250 = MEMORY[0x277D33EB8];
      *&v1248 = v694;
      v695 = sub_219BDCB24();
      v696 = *(*(v695 - 8) + 56);
      v696(v1225, 1, 1, v695);
      v696(v1226, 1, 1, v695);
      v696(v1227, 1, 1, v695);
      v696(v1228, 1, 1, v695);
      v697 = v694;

      v698 = v1113;
      sub_219BDCB04();
      v699 = v1169;
      v700 = v1235;
      sub_219BEE0B4();
      if (v700)
      {

        (*(v1230 + 8))(v698, v1229);
        v338 = type metadata accessor for TrendingRecipesTagFeedGroup;
        v339 = &v1223;
LABEL_80:
        sub_218864CF4(*(v339 - 32), v338);
        v683 = sub_218C8A15C;
        v684 = &v1248;
      }

      else
      {
        v1050 = MEMORY[0x277D84F90];
        v1233 = v697;
        (*(v1230 + 8))(v698, v1229);

        sub_218864CF4(&v1248, sub_218C8A15C);
        v1051 = v1192;
        (*(v1216 + 16))(v1192, v699, v1215);
        *&v1248 = sub_218DED880(v1051);
        *(&v1248 + 1) = v1052;
        *&v1249 = v1053;
        BYTE8(v1249) = 0;
        v1054 = *MEMORY[0x277D6E980];
        v1055 = sub_219BE9F84();
        v1056 = v1091;
        (*(*(v1055 - 8) + 104))(v1091, v1054, v1055);
        (*(v1214 + 104))(v1056, *MEMORY[0x277D6E988], v1213);
        v1057 = sub_219BEE004();
        v1058 = *(v1057 + 16);
        if (v1058)
        {
          v1235 = 0;
          v1244 = v1050;
          sub_218C33FD0(v1058);
          v1059 = *(v1243 + 16);
          v1060 = *(v1243 + 80);
          v1232 = v1057;
          v1061 = v1057 + ((v1060 + 32) & ~v1060);
          v1236 = *(v1243 + 72);
          v1243 += 16;
          v1062 = (v1243 - 8);
          v1234 = v1241 + 32;
          v1063 = v1238;
          do
          {
            v1064 = v1239;
            v1059(v1063, v1061, v1239);
            v1059(v1240, v1063, v1064);
            sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
            sub_219BE75D4();
            (*v1062)(v1063, v1064);
            v1065 = v1244;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_218C34D90(0, *(v1065 + 16) + 1, 1);
              v1065 = v1244;
            }

            v1067 = *(v1065 + 16);
            v1066 = *(v1065 + 24);
            if (v1067 >= v1066 >> 1)
            {
              sub_218C34D90((v1066 > 1), v1067 + 1, 1);
              v1065 = v1244;
            }

            *(v1065 + 16) = v1067 + 1;
            (*(v1241 + 32))(v1065 + ((*(v1241 + 80) + 32) & ~*(v1241 + 80)) + *(v1241 + 72) * v1067, v1212, v1237);
            v1244 = v1065;
            v1061 += v1236;
            --v1058;
          }

          while (v1058);

          v699 = v1169;
        }

        else
        {
        }

        sub_218DED7F0();
        sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
        sub_219BE81A4();

        (*(v1216 + 8))(v699, v1215);
        v683 = type metadata accessor for TrendingRecipesTagFeedGroup;
        v684 = v1191;
      }

      return sub_218864CF4(v684, v683);
    case 0x2FuLL:
      v316 = swift_projectBox();
      v313 = v1149;
      sub_218F54C5C(v316, v1149, type metadata accessor for TopicRecipesTagFeedGroup);
      sub_218F51E50(v1233, v313, MEMORY[0x277D84FA0], v1232, v1231);
      v314 = type metadata accessor for TopicRecipesTagFeedGroup;
LABEL_77:
      v683 = v314;
      v684 = v313;
      return sub_218864CF4(v684, v683);
    default:
      v305 = &v1070 - v302;
      v306 = swift_projectBox();
      sub_218F54C5C(v306, v305, type metadata accessor for TagFeedSectionGapDescriptor);
      v307 = v305;
      sub_218F54C5C(v305, v300, type metadata accessor for TagFeedSectionGapDescriptor);
      v308 = type metadata accessor for TagFeedBlueprintCollapsedSection(0);
      if ((*(*(v308 - 8) + 48))(v300, 1, v308) == 1)
      {
        v1245 = 0;
        v1246 = 0;
        v1244 = 1;
        v1247 = 3;
        v309 = v1214;
        v310 = v1213;
        (*(v1214 + 104))(v297, *MEMORY[0x277D6E9B0], v1213);
        sub_218954350(0);
        sub_218F54D18();
        v1248 = 0u;
        v1249 = 0u;
        v1250 = 0;
        v311 = v1235;
        sub_219BEE0A4();
        sub_218864CF4(&v1248, sub_218C8A15C);
        if (v311)
        {
          (*(v309 + 8))(v297, v310);
        }

        else
        {
          v1068 = sub_219BEE004();
          (*(v1216 + 8))(v240, v1215);
          sub_218F42AB8(v1068);

          sub_218DED7F0();
          sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
          sub_219BE81A4();
        }

        v683 = type metadata accessor for TagFeedSectionGapDescriptor;
        v684 = v307;
        return sub_218864CF4(v684, v683);
      }

      if (*v1170 != 1)
      {
        v1248 = 0uLL;
        *&v1249 = 0;
        BYTE8(v1249) = 3;
        (*(v1214 + 104))(v291, *MEMORY[0x277D6E9B0], v1213);
        sub_218F42D28(v1234);
        sub_218DED7F0();
        sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
LABEL_300:
        sub_219BE81A4();
        sub_218864CF4(v307, type metadata accessor for TagFeedSectionGapDescriptor);
        v684 = v300;
        v683 = type metadata accessor for TagFeedSectionGapDescriptor;
        return sub_218864CF4(v684, v683);
      }

      *v1170 = 0;
      v1245 = 0;
      v1246 = 0;
      v1244 = 1;
      v1247 = 3;
      v701 = v1214;
      v702 = v1213;
      (*(v1214 + 104))(v294, *MEMORY[0x277D6E9B0], v1213);
      sub_218954350(0);
      sub_218F54D18();
      v1248 = 0u;
      v1249 = 0u;
      v1250 = 0;
      v703 = v1071;
      v704 = v1235;
      sub_219BEE0A4();
      if (!v704)
      {
        sub_218864CF4(&v1248, sub_218C8A15C);
        v1069 = sub_219BEE004();
        (*(v1216 + 8))(v703, v1215);
        sub_218F42AB8(v1069);

        sub_218DED7F0();
        sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
        goto LABEL_300;
      }

      sub_218864CF4(&v1248, sub_218C8A15C);
      (*(v701 + 8))(v294, v702);
      sub_218864CF4(v307, type metadata accessor for TagFeedSectionGapDescriptor);
      return sub_218864CF4(v300, type metadata accessor for TagFeedSectionGapDescriptor);
  }
}

uint64_t sub_218F51E50@<X0>(void (*a1)(char *, char *, uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v88 = a4;
  v90 = a3;
  v93 = a1;
  v79 = a5;
  v73 = type metadata accessor for TagFeedLayoutModel(0);
  MEMORY[0x28223BE20](v73);
  v97 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_219BEF974();
  v99 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58934(0);
  v94 = v8;
  v98 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v71 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_219BE9FA4();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v78 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54EA4(0, &qword_280EE9048, MEMORY[0x277D6D1A0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v87 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v86 = &v70 - v14;
  MEMORY[0x28223BE20](v15);
  v85 = &v70 - v16;
  MEMORY[0x28223BE20](v17);
  v84 = &v70 - v18;
  v19 = sub_219BDCB14();
  v91 = *(v19 - 8);
  v92 = v19;
  MEMORY[0x28223BE20](v19);
  v83 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_219BEE074();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v72 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v89 = &v70 - v23;
  v24 = sub_219BED8D4();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54BF4(0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54C28(0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_219BF1904();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v35 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BED874();
  v36 = sub_219BEDB64();
  (*(*(v36 - 8) + 56))(v33, 1, 1, v36);
  v37 = *(v25 + 16);
  v80 = a2;
  v37(v27, a2, v24);
  sub_219BEF4D4();
  v38 = sub_219BEF4E4();
  (*(*(v38 - 8) + 56))(v30, 0, 1, v38);
  sub_219BED894();
  sub_21905F818();
  sub_218954350(0);
  sub_218F54CC4();
  sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
  sub_219BE69F4();

  sub_218864CF4(v30, sub_218F54BF4);
  sub_218864CF4(v33, sub_218F54C28);
  v39 = *(v81 + 8);
  v40 = v82;
  v39(v35, v82);
  sub_219BED874();
  v41 = sub_219BF44B4();
  v39(v35, v40);
  v102 = sub_219BF3594();
  v103 = MEMORY[0x277D33EB8];
  v101[0] = v41;
  v42 = sub_219BDCB24();
  v43 = *(*(v42 - 8) + 56);
  v43(v84, 1, 1, v42);
  v43(v85, 1, 1, v42);
  v43(v86, 1, 1, v42);
  v44 = v42;
  v45 = v83;
  v43(v87, 1, 1, v44);

  v46 = v89;
  sub_219BDCB04();
  v47 = v100;
  sub_219BEE0B4();
  if (v47)
  {
    v91[1](v45, v92);

    return sub_218864CF4(v101, sub_218C8A15C);
  }

  else
  {
    v49 = MEMORY[0x277D84F90];
    v87 = 0;
    v88 = v41;
    v91[1](v45, v92);

    sub_218864CF4(v101, sub_218C8A15C);
    v50 = v76;
    v51 = v72;
    v52 = v77;
    (*(v76 + 16))(v72, v46, v77);
    v101[0] = sub_218DED880(v51);
    v101[1] = v53;
    v101[2] = v54;
    LOBYTE(v102) = 0;
    v55 = *MEMORY[0x277D6E980];
    v56 = sub_219BE9F84();
    v57 = v78;
    (*(*(v56 - 8) + 104))(v78, v55, v56);
    (*(v74 + 104))(v57, *MEMORY[0x277D6E988], v75);
    v58 = sub_219BEE004();
    v59 = *(v58 + 16);
    if (v59)
    {
      v104 = v49;
      sub_218C34D90(0, v59, 0);
      v100 = v104;
      v60 = *(v99 + 16);
      v61 = (*(v99 + 80) + 32) & ~*(v99 + 80);
      v86 = v58;
      v62 = (v58 + v61);
      v92 = *(v99 + 72);
      v93 = v60;
      v90 = v98 + 32;
      v91 = (v99 + 8);
      v63 = v71;
      v99 += 16;
      do
      {
        v64 = v95;
        v65 = v96;
        v66 = v93;
        v93(v95, v62, v96);
        v66(v97, v64, v65);
        sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
        sub_219BE75D4();
        (*v91)(v64, v65);
        v104 = v100;
        v68 = *(v100 + 16);
        v67 = *(v100 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_218C34D90((v67 > 1), v68 + 1, 1);
          v100 = v104;
        }

        v69 = v100;
        *(v100 + 16) = v68 + 1;
        (*(v98 + 32))(v69 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v68, v63, v94);
        v62 += v92;
        --v59;
      }

      while (v59);

      v52 = v77;
      v50 = v76;
    }

    else
    {

      v100 = MEMORY[0x277D84F90];
    }

    sub_218DED7F0();
    sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
    sub_219BE81A4();

    return (*(v50 + 8))(v89, v52);
  }
}

uint64_t sub_218F52B40(uint64_t a1)
{
  v2 = sub_219BDCAA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A1299C(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54C5C(a1, v8, sub_21898BBC4);
  sub_218954350(0);
  v13 = v12;
  v14 = *(v12 - 8);
  if ((*(v14 + 48))(v8, 1, v12) == 1)
  {
    sub_218864CF4(v8, sub_21898BBC4);
    v15 = type metadata accessor for TagFeedGroup(0);
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    return sub_218864CF4(v11, sub_218A1299C);
  }

  sub_219BE6934();
  v16 = v20[1];
  (*(v14 + 8))(v8, v13);
  sub_21943EC40(v16, v11);

  v17 = type metadata accessor for TagFeedGroup(0);
  if ((*(*(v17 - 8) + 48))(v11, 1, v17) == 1)
  {
    return sub_218864CF4(v11, sub_218A1299C);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_218864CF4(v11, type metadata accessor for TagFeedGroup);
  if (!EnumCaseMultiPayload)
  {
    sub_219BEE084();
    sub_219BDCA94();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void *sub_218F52E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = type metadata accessor for TagFeedLayoutModel(0);
  MEMORY[0x28223BE20](v45);
  v43 = (v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21898BF70(0);
  v42 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58934(0);
  v41 = v8;
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE9FA4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 3;
  v15 = *MEMORY[0x277D6E980];
  v16 = sub_219BE9F84();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  (*(v12 + 104))(v14, *MEMORY[0x277D6E988], v11);
  sub_218954350(0);
  v18 = v17;
  v19 = sub_218F54E5C(&unk_280EE5850, sub_218954350, MEMORY[0x277D6D730]);
  v20 = sub_219BF5E44();
  if (!v20)
  {
LABEL_7:
    sub_218DED7F0();
    sub_218F54E5C(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
    return sub_219BE81A4();
  }

  v21 = v20;
  v47 = MEMORY[0x277D84F90];
  sub_218C34D90(0, v20 & ~(v20 >> 63), 0);
  v22 = v47;
  result = sub_219BF5DF4();
  if ((v21 & 0x8000000000000000) == 0)
  {
    v36[1] = v14;
    v36[2] = a2;
    v39 = (v6 + 16);
    v38 = *MEMORY[0x277D32830];
    v36[3] = v44 + 32;
    v37 = (v6 + 8);
    v24 = v40;
    do
    {
      v25 = v18;
      v26 = sub_219BF5EC4();
      v27 = v19;
      v28 = v42;
      (*v39)(v24);
      v26(v46, 0);
      v29 = swift_allocObject();
      *(v29 + 16) = sub_219BE5F84();
      *(v29 + 24) = v30;
      v31 = v43;
      *v43 = v29;
      v32 = sub_219BEF974();
      (*(*(v32 - 8) + 104))(v31, v38, v32);
      sub_218F54E5C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7B4);
      sub_219BE75D4();
      (*v37)(v24, v28);
      v47 = v22;
      v33 = a1;
      v35 = *(v22 + 16);
      v34 = *(v22 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_218C34D90((v34 > 1), v35 + 1, 1);
        v22 = v47;
      }

      *(v22 + 16) = v35 + 1;
      (*(v44 + 32))(v22 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v35, v10, v41);
      sub_219BF5E94();
      --v21;
      a1 = v33;
      v18 = v25;
      v19 = v27;
    }

    while (v21);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}