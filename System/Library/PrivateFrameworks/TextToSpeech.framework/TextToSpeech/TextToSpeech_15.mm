uint64_t sub_1A94863CC(void *a1, uint64_t a2, unint64_t a3)
{
  v150 = a3;
  v4 = *a2;
  v5 = *(a2 + 8);
  v158 = *(a2 + 16);
  v159 = v4;
  v6 = *(a2 + 24);
  v152 = *(a2 + 32);
  v183 = *(a2 + 40);
  v182 = *(a2 + 48);
  v181 = *(a2 + 56);
  v180 = *(a2 + 57);
  v244 = *(a2 + 58);
  v245 = *(a2 + 62);
  v155 = *(a2 + 64);
  v156 = v6;
  v7 = *(a2 + 72);
  v178 = *(a2 + 80);
  v179 = v7;
  v8 = *(a2 + 88);
  v176 = *(a2 + 96);
  v177 = v8;
  v9 = *(a2 + 112);
  v184 = *(a2 + 104);
  v175 = v9;
  v174 = *(a2 + 120);
  v10 = *(a2 + 137);
  v242 = *(a2 + 121);
  v243[0] = v10;
  *(v243 + 11) = *(a2 + 148);
  v154 = *(a2 + 164);
  v173 = *(a2 + 168);
  v151 = *(a2 + 172);
  v172 = *(a2 + 180);
  v241 = *(a2 + 184);
  v239 = *(a2 + 185);
  v240 = *(a2 + 187);
  v171 = *(a2 + 188);
  v238 = *(a2 + 192);
  v170 = *(a2 + 193);
  v237 = *(a2 + 198);
  v236 = *(a2 + 194);
  v11 = *(a2 + 200);
  v168 = *(a2 + 208);
  v169 = v11;
  v12 = *(a2 + 216);
  v166 = *(a2 + 224);
  v167 = v12;
  v13 = *(a2 + 232);
  v164 = *(a2 + 240);
  v165 = v13;
  v14 = *(a2 + 248);
  v162 = *(a2 + 256);
  v163 = v14;
  v15 = *(a2 + 264);
  v160 = *(a2 + 272);
  v161 = v15;
  sub_1A937829C(&qword_1EB387A08, &qword_1A9591618);
  v16 = *(sub_1A957B5D8() - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1A95915C0;
  v144 = v19;
  v20 = v19 + v18;
  if (qword_1EB389540 != -1)
  {
    swift_once();
  }

  v21 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A937731C(v21, qword_1EB3A7870);
  v22 = a1;
  v24 = a1[3];
  v23 = a1[4];
  v143 = v22;
  v25 = sub_1A93780F4(v22, v24);
  v26 = *(v23 + 8);
  v147 = v25;
  v148 = v26;
  v149 = v24;
  v153 = v23;
  v193 = (v26)(v24, v23);
  v194 = v27;
  MEMORY[0x1AC585140](95, 0xE100000000000000);

  MEMORY[0x1AC585140](v159, v5);
  MEMORY[0x1AC585140](95, 0xE100000000000000);
  v189 = v150;
  v28 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v28);

  sub_1A957B4E8();

  if (qword_1EB38DFA8 != -1)
  {
    swift_once();
  }

  sub_1A937731C(v21, qword_1EB3A7968);
  v193 = v159;
  v194 = v5;
  sub_1A957B4E8();

  v185 = v20;
  if (qword_1EB389550 != -1)
  {
    swift_once();
  }

  sub_1A937731C(v21, qword_1EB3A78A0);
  v150 = v5;
  v193 = sub_1A957C1A8();
  v194 = v29;
  sub_1A957B4E8();

  if (qword_1EB389538 != -1)
  {
    swift_once();
  }

  sub_1A937731C(v21, qword_1EB3A7858);
  v193 = (v148)(v149, v153);
  v194 = v30;
  sub_1A957B4E8();

  if (qword_1EB38E000 != -1)
  {
    swift_once();
  }

  sub_1A937731C(v21, qword_1EB3A79F8);
  v193 = v183;
  v194 = v182;

  sub_1A957B4E8();

  if (qword_1EB38DFB8 != -1)
  {
    swift_once();
  }

  sub_1A937731C(v21, qword_1EB3A7980);
  LOBYTE(v189) = v181;
  v193 = CoreSynthesizer.Voice.Quality.rawValue.getter();
  v194 = v31;
  sub_1A957B4E8();

  if (qword_1EB38DFD8 != -1)
  {
    swift_once();
  }

  sub_1A937731C(v21, qword_1EB3A79B0);
  LOBYTE(v189) = v180;
  v193 = CoreSynthesizer.Voice.Gender.rawValue.getter();
  v194 = v32;
  sub_1A957B4E8();

  v146 = v185 - v17;
  if (qword_1EB38DFF0 != -1)
  {
    swift_once();
  }

  v153 = v21;
  sub_1A937731C(v21, qword_1EB3A79E0);
  v193 = v179;
  v194 = v178;
  v195 = v177;
  v196 = v176;
  v197 = v184;
  v198 = v175;
  LOBYTE(v199) = v174;
  v189 = CoreSynthesizer.Voice.VoiceType.rawValue.getter();
  v190 = v33;
  sub_1A957B4E8();

  v34 = v172;
  if (qword_1EB38E018 != -1)
  {
    swift_once();
  }

  v35 = sub_1A937829C(&qword_1EB3879E0, &qword_1A95915D8);
  v36 = sub_1A937731C(v35, qword_1EB3A7A28);
  v148 = v137;
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v149 = v38;
  v39 = v137 - v38;
  v40 = *(v37 + 16);
  v40(v137 - v38);
  if (v241)
  {
    v41 = 0;
  }

  else
  {
    v41 = v34;
  }

  v193 = v41;
  LOBYTE(v194) = v241;
  sub_1A957B4F8();
  v42 = *(v37 + 8);
  v42(v39, v35);
  if (qword_1EB38E060 != -1)
  {
    swift_once();
  }

  v43 = sub_1A937731C(v35, qword_1EB3A7AA0);
  MEMORY[0x1EEE9AC00](v43);
  v44 = v137 - v149;
  v40(v137 - v149);
  v45 = v171;
  if (v238)
  {
    v45 = 0;
  }

  v157 = v17;
  v193 = v45;
  LOBYTE(v194) = v238;
  sub_1A957B4F8();
  v42(v44, v35);
  if (qword_1EB38DFC8 != -1)
  {
    swift_once();
  }

  v46 = sub_1A937829C(&qword_1EB3879E8, &qword_1A95915E0);
  v47 = sub_1A937731C(v46, qword_1EB3A7998);
  v48 = *(v46 - 8);
  v49 = v48[8];
  MEMORY[0x1EEE9AC00](v47);
  v51 = v137 - v50;
  v52 = v48[2];
  v149 = v46;
  v52(v137 - v50);
  if (v168)
  {
    v193 = v169;
    v194 = v168;
    v195 = v167;
    v196 = v166;
    v197 = v165;
    v53 = CoreSynthesizer.Voice.AssetIdentifier.rawValue.getter();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0;
  }

  v193 = v53;
  v194 = v55;
  sub_1A957B4F8();

  v56 = v48[1];
  v57 = v149;
  v56(v51, v149);
  if (qword_1EB38E070 != -1)
  {
    swift_once();
  }

  v58 = sub_1A937731C(v57, qword_1EB3A7AB8);
  MEMORY[0x1EEE9AC00](v58);
  v59 = v137 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52(v59);
  if (v163)
  {
    v193 = v164;
    v194 = v163;
    v195 = v162;
    v196 = v161;
    v197 = v160;
    v60 = CoreSynthesizer.Voice.AssetIdentifier.rawValue.getter();
    v62 = v61;
  }

  else
  {
    v60 = 0;
    v62 = 0;
  }

  v63 = v157;
  v64 = v185;
  v193 = v60;
  v194 = v62;
  sub_1A957B4F8();

  v56(v59, v149);
  v65 = v64;
  if (qword_1EB38DFE8 != -1)
  {
    swift_once();
  }

  sub_1A937731C(v153, qword_1EB3A79C8);
  LOBYTE(v189) = v170;
  v193 = CoreSynthesizer.Voice.State.rawValue.getter();
  v194 = v66;
  sub_1A957B4E8();

  v67 = v156;
  v68 = v184;
  v69 = v173;
  if (qword_1EB38ECD8 != -1)
  {
    swift_once();
  }

  v70 = sub_1A937829C(&qword_1EB3879F0, qword_1A95915E8);
  sub_1A937731C(v70, qword_1EB3A7B20);
  v72 = v154;
  v71 = v155;
  if (v155 < 0)
  {
    __break(1u);
  }

  else
  {
    v147 = v70;
    v193 = v155;
    sub_1A957B4E8();
    if (qword_1EB38E008 == -1)
    {
      goto LABEL_42;
    }
  }

  swift_once();
LABEL_42:
  v73 = v147;
  sub_1A937731C(v147, qword_1EB3A7A10);
  v193 = v69;
  sub_1A957B4E8();
  if (qword_1EB38E020 != -1)
  {
    swift_once();
  }

  sub_1A937731C(v73, qword_1EB3A7A40);
  v193 = v72;
  sub_1A957B4E8();
  v74 = v72;
  v148 = (v65 + 16 * v63);
  if (qword_1EB38E030 != -1)
  {
    swift_once();
  }

  v75 = v153;
  v146 = sub_1A937731C(v153, qword_1EB3A7A58);
  v202 = v244;
  v203 = v245;
  v218 = v241;
  v219 = v239;
  v220 = v240;
  v222 = v238;
  v225 = v237;
  v224 = v236;
  v212 = v242;
  v193 = v159;
  v194 = v150;
  v195 = v158;
  v196 = v67;
  v197 = v152;
  v198 = v183;
  v199 = v182;
  v200 = v181;
  v201 = v180;
  v204 = v71;
  v205 = v179;
  v206 = v178;
  v207 = v177;
  v208 = v176;
  v209 = v68;
  v210 = v175;
  v211 = v174;
  *v213 = v243[0];
  *&v213[11] = *(v243 + 11);
  v214 = v74;
  v215 = v173;
  v216 = v151;
  v217 = v172;
  v221 = v171;
  v223 = v170;
  v226 = v169;
  v227 = v168;
  v228 = v167;
  v229 = v166;
  v230 = v165;
  v231 = v164;
  v232 = v163;
  v233 = v162;
  v234 = v161;
  v235 = v160;
  CoreSynthesizer.Voice.primaryLocales.getter(&v189);
  v76 = v191;
  v77 = v192;
  v78 = sub_1A93780F4(&v189, v191);
  v79 = MEMORY[0x1E69E6158];
  v186 = sub_1A9386128(sub_1A948C674, 0, v76, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v77, MEMORY[0x1E69E7410], v78);
  v80 = sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
  v81 = sub_1A93B744C(&qword_1EB385F80, &qword_1EB386B68, &qword_1A9591620, MEMORY[0x1E69E6310]);
  v82 = sub_1A957C088();
  v84 = v83;

  sub_1A9378138(&v189);
  v193 = v82;
  v194 = v84;
  sub_1A957B4E8();

  v148 = (v185 + 17 * v157);
  if (qword_1EB389548 != -1)
  {
    swift_once();
  }

  v142 = sub_1A937731C(v75, qword_1EB3A7888);
  v202 = v244;
  v203 = v245;
  v218 = v241;
  v219 = v239;
  v220 = v240;
  v222 = v238;
  v225 = v237;
  v224 = v236;
  v212 = v242;
  v193 = v159;
  v194 = v150;
  v195 = v158;
  v196 = v156;
  v197 = v152;
  v198 = v183;
  v199 = v182;
  v200 = v181;
  v201 = v180;
  v204 = v155;
  v205 = v179;
  v206 = v178;
  v207 = v177;
  v208 = v176;
  v209 = v184;
  v210 = v175;
  v211 = v174;
  *v213 = v243[0];
  *&v213[11] = *(v243 + 11);
  v214 = v154;
  v215 = v173;
  v216 = v151;
  v217 = v172;
  v221 = v171;
  v223 = v170;
  v226 = v169;
  v227 = v168;
  v228 = v167;
  v229 = v166;
  v230 = v165;
  v231 = v164;
  v232 = v163;
  v233 = v162;
  v234 = v161;
  v235 = v160;
  CoreSynthesizer.Voice.secondaryLocales.getter(&v189);
  v85 = v191;
  v86 = v192;
  v87 = sub_1A93780F4(&v189, v191);
  v186 = sub_1A9386128(sub_1A932D0F4, 0, v85, v79, MEMORY[0x1E69E73E0], v86, MEMORY[0x1E69E7410], v87);
  v145 = v80;
  v146 = v81;
  v88 = sub_1A957C088();
  v90 = v89;

  sub_1A9378138(&v189);
  v193 = v88;
  v194 = v90;
  sub_1A957B4E8();

  if (qword_1EB38E050 != -1)
  {
    swift_once();
  }

  v91 = sub_1A937731C(v75, qword_1EB3A7A88);
  v140 = v137;
  v92 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v148 = v93;
  v94 = *(v93 + 16);
  v139 = v137 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v94;
  v142 = v93 + 16;
  v94();
  v202 = v244;
  v203 = v245;
  v218 = v241;
  v219 = v239;
  v220 = v240;
  v222 = v238;
  v225 = v237;
  v224 = v236;
  v212 = v242;
  v193 = v159;
  v194 = v150;
  v195 = v158;
  v196 = v156;
  v197 = v152;
  v198 = v183;
  v199 = v182;
  v200 = v181;
  v201 = v180;
  v204 = v155;
  v205 = v179;
  v206 = v178;
  v207 = v177;
  v208 = v176;
  v209 = v184;
  v210 = v175;
  v211 = v174;
  *v213 = v243[0];
  *&v213[11] = *(v243 + 11);
  v214 = v154;
  v215 = v173;
  v216 = v151;
  v217 = v172;
  v221 = v171;
  v223 = v170;
  v226 = v169;
  v227 = v168;
  v228 = v167;
  v229 = v166;
  v230 = v165;
  v231 = v164;
  v232 = v163;
  v233 = v162;
  v234 = v161;
  v235 = v160;
  CoreSynthesizer.Voice.locales.getter(&v189);
  sub_1A93780F4(&v189, v191);
  v95 = sub_1A957C3D8();
  v96 = *(v95 + 16);
  if (v96)
  {
    v138 = v92;
    v188 = MEMORY[0x1E69E7CC0];
    sub_1A93ABB68(0, v96, 0);
    v97 = v188;
    v137[1] = v95;
    v98 = (v95 + 40);
    do
    {
      v100 = *(v98 - 1);
      v99 = *v98;
      v186 = 95;
      v187 = 0xE100000000000000;

      MEMORY[0x1AC585140](v100, v99);
      MEMORY[0x1AC585140](95, 0xE100000000000000);

      v101 = v186;
      v102 = v187;
      v188 = v97;
      v104 = *(v97 + 16);
      v103 = *(v97 + 24);
      if (v104 >= v103 >> 1)
      {
        sub_1A93ABB68((v103 > 1), v104 + 1, 1);
        v97 = v188;
      }

      *(v97 + 16) = v104 + 1;
      v105 = v97 + 16 * v104;
      *(v105 + 32) = v101;
      *(v105 + 40) = v102;
      v98 += 2;
      --v96;
    }

    while (v96);

    v92 = v138;
  }

  else
  {

    v97 = MEMORY[0x1E69E7CC0];
  }

  sub_1A9378138(&v189);
  v193 = v97;
  v106 = sub_1A957C088();
  v108 = v107;

  v193 = v106;
  v194 = v108;
  v109 = v139;
  sub_1A957B4E8();

  v110 = v148 + 1;
  v111 = v109;
  v112 = v153;
  v139 = v148[1];
  (v139)(v111, v153);
  if (qword_1EB38E080 != -1)
  {
    swift_once();
  }

  v113 = sub_1A937731C(v112, qword_1EB3A7AD0);
  v140 = v137;
  MEMORY[0x1EEE9AC00](v113);
  v138 = v137 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141();
  v114 = v158;
  v115 = *(v158 + 16);
  v116 = MEMORY[0x1E69E7CC0];
  if (v115)
  {
    v148 = v110;
    v189 = MEMORY[0x1E69E7CC0];
    sub_1A93ABB68(0, v115, 0);
    v116 = v189;
    v117 = v114 + 40;
    do
    {
      v193 = 95;
      v194 = 0xE100000000000000;
      v118 = sub_1A957C1A8();
      v120 = v119;

      MEMORY[0x1AC585140](v118, v120);

      MEMORY[0x1AC585140](95, 0xE100000000000000);

      v121 = v193;
      v122 = v194;
      v189 = v116;
      v124 = *(v116 + 16);
      v123 = *(v116 + 24);
      if (v124 >= v123 >> 1)
      {
        sub_1A93ABB68((v123 > 1), v124 + 1, 1);
        v116 = v189;
      }

      *(v116 + 16) = v124 + 1;
      v125 = v116 + 16 * v124;
      *(v125 + 32) = v121;
      *(v125 + 40) = v122;
      v117 += 16;
      --v115;
    }

    while (v115);
  }

  v193 = v116;
  v126 = sub_1A957C088();
  v128 = v127;

  v193 = v126;
  v194 = v128;
  v129 = v138;
  sub_1A957B4E8();

  (v139)(v129, v153);
  if (qword_1EB38E040 != -1)
  {
    swift_once();
  }

  sub_1A937731C(v147, qword_1EB3A7A70);
  v130 = v143[3];
  v131 = v143[4];
  sub_1A93780F4(v143, v130);
  v193 = (*(v131 + 32))(v130, v131);
  sub_1A957B4E8();
  if (qword_1EB38DF98 != -1)
  {
    swift_once();
  }

  v132 = v149;
  sub_1A937731C(v149, qword_1EB3A7950);
  v193 = v159;
  v194 = v150;
  v133 = v156;
  v195 = v158;
  v196 = v156;
  v212 = v242;
  v134 = v152;
  v197 = v152;
  v198 = v183;
  v199 = v182;
  v200 = v181;
  v201 = v180;
  v202 = v244;
  v203 = v245;
  v204 = v155;
  v205 = v179;
  v206 = v178;
  v207 = v177;
  v208 = v176;
  v209 = v184;
  v210 = v175;
  v211 = v174;
  *v213 = v243[0];
  *&v213[11] = *(v243 + 11);
  v214 = v154;
  v215 = v173;
  v216 = v151;
  v217 = v172;
  v218 = v241;
  v219 = v239;
  v220 = v240;
  v221 = v171;
  v222 = v238;
  v223 = v170;
  v225 = v237;
  v224 = v236;
  v226 = v169;
  v227 = v168;
  v228 = v167;
  v229 = v166;
  v230 = v165;
  v231 = v164;
  v232 = v163;
  v233 = v162;
  v234 = v161;
  v235 = v160;
  v189 = CoreSynthesizer.Voice.talentGroupKey.getter();
  v190 = v135;
  sub_1A957B4F8();

  if (qword_1EB38E090 != -1)
  {
    swift_once();
  }

  sub_1A937731C(v132, qword_1EB3A7AE8);
  v193 = v133;
  v194 = v134;

  sub_1A957B4F8();

  return v144;
}

uint64_t sub_1A9487F14@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A957B2E8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v15 - v7;
  sub_1A957B2F8();
  sub_1A957B2B8();
  (*(v3 + 8))(v5, v2);
  v9 = sub_1A957B188();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_1A937B960(v8, &qword_1EB386A68, &qword_1A9587F40);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = sub_1A957B148();
    v13 = v14;
    result = (*(v10 + 8))(v8, v9);
  }

  *a1 = v12;
  a1[1] = v13;
  return result;
}

uint64_t sub_1A94880F8()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A7870);
  sub_1A937731C(v0, qword_1EB3A7870);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A9488194()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A7968);
  sub_1A937731C(v0, qword_1EB3A7968);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A948823C()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A78A0);
  sub_1A937731C(v0, qword_1EB3A78A0);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A94882EC()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A7858);
  sub_1A937731C(v0, qword_1EB3A7858);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A9488394()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A79F8);
  sub_1A937731C(v0, qword_1EB3A79F8);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A9488434()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A7980);
  sub_1A937731C(v0, qword_1EB3A7980);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A94884DC()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A7AD0);
  sub_1A937731C(v0, qword_1EB3A7AD0);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A948858C()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A79B0);
  sub_1A937731C(v0, qword_1EB3A79B0);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A9488630()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A79E0);
  sub_1A937731C(v0, qword_1EB3A79E0);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A94886D0()
{
  v0 = sub_1A937829C(&qword_1EB3879E0, &qword_1A95915D8);
  sub_1A9377618(v0, qword_1EB3A7A28);
  sub_1A937731C(v0, qword_1EB3A7A28);
  sub_1A93B744C(&qword_1EB386348, &qword_1EB3879E0, &qword_1A95915D8, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A9488784()
{
  v0 = sub_1A937829C(&qword_1EB3879E0, &qword_1A95915D8);
  sub_1A9377618(v0, qword_1EB3A7AA0);
  sub_1A937731C(v0, qword_1EB3A7AA0);
  sub_1A93B744C(&qword_1EB386348, &qword_1EB3879E0, &qword_1A95915D8, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A9488838()
{
  v0 = sub_1A937829C(&qword_1EB3879E8, &qword_1A95915E0);
  sub_1A9377618(v0, qword_1EB3A7998);
  sub_1A937731C(v0, qword_1EB3A7998);
  sub_1A93B744C(&qword_1EB386350, &qword_1EB3879E8, &qword_1A95915E0, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A94888E0()
{
  v0 = sub_1A937829C(&qword_1EB3879E8, &qword_1A95915E0);
  sub_1A9377618(v0, qword_1EB3A7AB8);
  sub_1A937731C(v0, qword_1EB3A7AB8);
  sub_1A93B744C(&qword_1EB386350, &qword_1EB3879E8, &qword_1A95915E0, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A9488990()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A79C8);
  sub_1A937731C(v0, qword_1EB3A79C8);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A9488A34()
{
  v0 = sub_1A937829C(&qword_1EB3879F0, qword_1A95915E8);
  sub_1A9377618(v0, qword_1EB3A7A40);
  sub_1A937731C(v0, qword_1EB3A7A40);
  sub_1A93B744C(&qword_1EB386418, &qword_1EB3879F0, qword_1A95915E8, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A9488AE8()
{
  v0 = sub_1A937829C(&qword_1EB3879F0, qword_1A95915E8);
  sub_1A9377618(v0, qword_1EB3A7A10);
  sub_1A937731C(v0, qword_1EB3A7A10);
  sub_1A93B744C(&qword_1EB386418, &qword_1EB3879F0, qword_1A95915E8, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A9488B9C()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A7A58);
  sub_1A937731C(v0, qword_1EB3A7A58);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A9488C50()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A7888);
  sub_1A937731C(v0, qword_1EB3A7888);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A9488D04()
{
  v0 = sub_1A937829C(&qword_1EB3879D8, &qword_1A95915D0);
  sub_1A9377618(v0, qword_1EB3A7A88);
  sub_1A937731C(v0, qword_1EB3A7A88);
  sub_1A93B744C(&qword_1EB386358, &qword_1EB3879D8, &qword_1A95915D0, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A9488DB0()
{
  v0 = sub_1A937829C(&qword_1EB3879F0, qword_1A95915E8);
  sub_1A9377618(v0, qword_1EB3A7B20);
  sub_1A937731C(v0, qword_1EB3A7B20);
  sub_1A93B744C(&qword_1EB386418, &qword_1EB3879F0, qword_1A95915E8, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A9488E54()
{
  v0 = sub_1A937829C(&qword_1EB3879F0, qword_1A95915E8);
  sub_1A9377618(v0, qword_1EB3A7A70);
  sub_1A937731C(v0, qword_1EB3A7A70);
  sub_1A93B744C(&qword_1EB386418, &qword_1EB3879F0, qword_1A95915E8, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A9488F08()
{
  v0 = sub_1A937829C(&qword_1EB3879E8, &qword_1A95915E0);
  sub_1A9377618(v0, qword_1EB3A7950);
  sub_1A937731C(v0, qword_1EB3A7950);
  sub_1A93B744C(&qword_1EB386350, &qword_1EB3879E8, &qword_1A95915E0, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t sub_1A9488FB0()
{
  v0 = sub_1A937829C(&qword_1EB3879E8, &qword_1A95915E0);
  sub_1A9377618(v0, qword_1EB3A7AE8);
  sub_1A937731C(v0, qword_1EB3A7AE8);
  sub_1A93B744C(&qword_1EB386350, &qword_1EB3879E8, &qword_1A95915E0, MEMORY[0x1EEE94768]);
  return sub_1A957B458();
}

uint64_t SQLiteVoiceBackingStore.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SQLiteVoiceBackingStore.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A94890F0(const void *a1)
{
  v2 = sub_1A957B018();
  v14 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A957ADB8();
  MEMORY[0x1EEE9AC00](v5);
  memcpy(v16, a1, sizeof(v16));
  sub_1A957ADF8();
  swift_allocObject();
  sub_1A957ADE8();
  sub_1A937829C(&qword_1EB387A10, &qword_1A9591628);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A9587160;
  sub_1A957ADA8();
  v15 = v6;
  sub_1A948BD3C(&qword_1EB386250, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
  sub_1A937829C(&qword_1EB387A18, &qword_1A9591630);
  sub_1A93B744C(&unk_1EB385FA0, &qword_1EB387A18, &qword_1A9591630, MEMORY[0x1E69E6328]);
  sub_1A957CE08();
  sub_1A957ADC8();
  sub_1A948C450();
  v7 = sub_1A957ADD8();
  v9 = v8;
  v10 = 0xCBF29CE484222325;
  sub_1A9450950(v7, v8);
  sub_1A957B028();
  for (i = sub_1A957B008(); (i & 0x100) == 0; i = sub_1A957B008())
  {
    v10 = 0x100000001B3 * (v10 ^ i);
  }

  sub_1A9442638(v7, v9);
  (*(v14 + 8))(v4, v2);
  return v10;
}

uint64_t sub_1A94894A4(uint64_t a1)
{
  v2 = sub_1A948BD3C(&qword_1EB385F08, type metadata accessor for FileAttributeKey, &unk_1A9591A80);
  v3 = sub_1A948BD3C(&qword_1EB387AF8, type metadata accessor for FileAttributeKey, &unk_1A959187C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A9489560(uint64_t a1)
{
  v2 = sub_1A948BD3C(&qword_1EB387AE8, type metadata accessor for FileProtectionType, &unk_1A95919F0);
  v3 = sub_1A948BD3C(&qword_1EB387AF0, type metadata accessor for FileProtectionType, &unk_1A9591990);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void *sub_1A948961C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A937829C(&qword_1EB387AA0, &qword_1A9591770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 288);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[36 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 288 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB387A80, &unk_1A9591748);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A948976C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1A957D4F8();
  sub_1A957C228();
  v6 = sub_1A957D548();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1A957D3E8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1A93AB790();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1A94898A8(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_1A94898A8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1A957CE28();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1A957D4F8();

        sub_1A957C228();
        v10 = sub_1A957D548();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_1A9489B98(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A9489C04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A9489BB8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A9489D38(a1, a2, a3, *v3, &qword_1EB387A00, &qword_1A9591610, MEMORY[0x1EEE94788]);
  *v3 = result;
  return result;
}

void *sub_1A9489C04(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A937829C(&qword_1EB387A88, &qword_1A9591758);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB387A90, &qword_1A9591760);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A9489D38(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_1A9489F14(uint64_t a1)
{
  sub_1A957C0F8();
  sub_1A957D4F8();
  sub_1A957C228();
  v2 = sub_1A957D548();

  return sub_1A948A0A4(a1, v2);
}

unint64_t sub_1A9489FA8(__int128 *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 48);
  sub_1A948C16C();
  v1 = sub_1A957C058();
  v7[0] = v3;
  v7[1] = v4;
  v7[2] = v5;
  v8 = v6;
  return sub_1A948A1A8(v7, v1);
}

unint64_t sub_1A948A03C(uint64_t a1)
{
  sub_1A942C394();
  v1 = sub_1A957C058();
  return sub_1A948A2C4(a1, v1);
}

unint64_t sub_1A948A0A4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1A957C0F8();
      v8 = v7;
      if (v6 == sub_1A957C0F8() && v8 == v9)
      {
        break;
      }

      v11 = sub_1A957D3E8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1A948A1A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v6 = *(v2 + 48) + 56 * v4;
      v9 = *v6;
      v10 = *(v6 + 8);
      v11 = *(v6 + 16);
      v12 = *(v6 + 24);
      v13 = *(v6 + 32);
      v14 = *(v6 + 40);
      v15 = *(v6 + 48);
      sub_1A93B10F0(*v6, v10, v11, v12, v13, v14, v15);
      sub_1A93B72DC();
      v7 = sub_1A957C098();
      sub_1A93B183C(v9, v10, v11, v12, v13, v14, v15);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1A948A2C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A93B1F40();
    do
    {
      if (sub_1A957C098())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void (*sub_1A948A38C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1A948BBCC(v7);
  v7[9] = sub_1A948B838(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1A948A438;
}

void sub_1A948A438(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_1A948A498(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x1AC584A20](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = MEMORY[0x1AC584A30]();
    v15 = *(sub_1A957B308() - 8);
    sub_1A948B498(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v8, (v14 + 16), v14 + 32);
    *a1 = v16;
    return v14;
  }

  else if (v8 >= 2)
  {
    v17 = *(sub_1A957B308() - 8);
    v18 = sub_1A948A9F0(a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v8);
    result = 0;
    *a1 = v18;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

char *sub_1A948A5EC(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A957CE28() + 1) & ~v5;
    do
    {
      sub_1A957D4F8();

      sub_1A957C228();
      v9 = sub_1A957D548();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 280 * v3);
        v15 = (v14 + 280 * v6);
        if (v3 != v6 || result >= v15 + 280)
        {
          result = memmove(result, v15, 0x118uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A948A7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v29 = a2;
  v8 = sub_1A957B308();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A948BD3C(&qword_1ED970220, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  v28[1] = a1;
  result = sub_1A957C058();
  v13 = 1 << *a4;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = v15 & result;
    v17 = sub_1A957BAF8();
    *&v34 = a4;
    *(&v34 + 1) = a5;
    *&v35 = v16;
    *(&v35 + 1) = v17;
    *&v36 = v18;
    *(&v36 + 1) = v19;
    v37 = 0;
    v20 = sub_1A957BB18();
    if ((v21 & 1) == 0)
    {
      v24 = *(v9 + 16);
      v23 = v9 + 16;
      v22 = v24;
      v25 = *(v23 + 56);
      do
      {
        v22(v11, v29 + v25 * v20, v8);
        sub_1A948BD3C(&unk_1ED970210, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
        v26 = sub_1A957C098();
        (*(v23 - 8))(v11, v8);
        if (v26)
        {
          break;
        }

        sub_1A957BB38();
        v30 = v34;
        v31 = v35;
        v32 = v36;
        v33 = v37;
        v20 = sub_1A957BB18();
      }

      while ((v27 & 1) == 0);
    }

    return v20;
  }

  return result;
}

void *sub_1A948A9F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A957B308();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v26 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - v9;
  v33 = MEMORY[0x1E69E7CC0];
  result = sub_1A93ABB88(0, a2 & ~(a2 >> 63), 0);
  v12 = v33;
  if (!a2)
  {
LABEL_11:

    return a2;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v24 = a2;
    v25 = v2;
    v13 = 0;
    v29 = (v6 + 8);
    v22[1] = v6 + 32;
    v23 = a1;
    v14 = *(v6 + 16);
    v15 = *(v6 + 72);
    v30 = v14;
    v31 = v6 + 16;
    do
    {
      v27 = v13;
      v28 = v13 + 1;
      v14(v10, (a1 + v15 * v13), v5);
      v16 = *(v12 + 16) + 1;
      v32 = v12;
      while (--v16)
      {
        sub_1A948BD3C(&unk_1ED970210, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
        v12 += v15;
        if (sub_1A957C098())
        {
          (*v29)(v10, v5);
          a2 = v27;
          goto LABEL_11;
        }
      }

      v17 = v26;
      v30(v26, v10, v5);
      v33 = v32;
      v19 = *(v32 + 16);
      v18 = *(v32 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1A93ABB88((v18 > 1), v19 + 1, 1);
        v17 = v26;
      }

      (*(v6 + 8))(v10, v5);
      v20 = v33;
      *(v33 + 16) = v19 + 1;
      v21 = v17;
      v12 = v20;
      (*(v6 + 32))(v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v19 * v15, v21, v5);
      a1 = v23;
      a2 = v24;
      v13 = v28;
      v14 = v30;
    }

    while (v28 != v24);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A948ACDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A957B308();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = v2 + 1;
  v9 = v2[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[1] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1A93ABB88(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_1A93ABB88((v11 > 1), v12 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v7, v4);
  v2[1] = v9;
  v14 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    if (MEMORY[0x1AC584A00](*(v14 + 16) & 0x3FLL) > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v15 = *v2;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = sub_1A957BB58();

        *v2 = v16;
        v15 = v16;
      }

      if (v15)
      {
        return sub_1A957BB08();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_1A948AF24();
}

uint64_t sub_1A948AF24()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x1AC584A20](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_1A948AFC4(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_1A948AFC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1AC584A20](v6, a2);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1AC584A30](v8, a4);
    sub_1A948B044(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

uint64_t sub_1A948B0E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v29 = a4;
  v30 = a1;
  v6 = sub_1A957B308();
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2;
  if (a2)
  {
    if ((v38 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v13 = *(v8 + 16);
      v12 = v8 + 16;
      v26 = *(v12 + 56);
      v27 = v13;
      v28 = v12;
      v25 = (v12 - 8);
      v13(v10, v30, v6);
      while (1)
      {
        sub_1A948BD3C(&qword_1ED970220, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
        result = sub_1A957C058();
        v14 = 1 << *a3;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
          break;
        }

        v17 = v16 & result;
        v18 = v29;
        v19 = sub_1A957BAF8();
        v21 = v20;
        v23 = v22;
        (*v25)(v10, v6);
        v31 = a3;
        v32 = v18;
        v33 = v17;
        v34 = v19;
        v35 = v21;
        v36 = v23;
        v37 = 0;
        while (v34)
        {
          sub_1A957BB38();
        }

        result = sub_1A957BB28();
        if (++v11 == v38)
        {
          return result;
        }

        v27(v10, v30 + v26 * v11, v6);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1A948B2F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1A937829C(&qword_1EB386B18, &unk_1A95916F0);
      v7 = *(sub_1A957B308() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_1A957B308();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1A948B498(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v34 = a4;
  v42 = a1;
  v7 = sub_1A957B308();
  v35 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v31 - v12;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
LABEL_16:
    __break(1u);
  }

  else
  {
    v31 = v4;
    v14 = 0;
    v15 = (v35 + 8);
    v33 = a2;
    v32 = a3;
    while (1)
    {
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v36 = v14 + 1;
      v16 = *(v35 + 72);
      v41 = v14;
      v52 = v16;
      v17 = *(v35 + 16);
      v43 = v42 + v16 * v14;
      v17(v13);
      sub_1A948BD3C(&qword_1ED970220, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
      result = sub_1A957C058();
      v18 = 1 << *a3;
      v19 = __OFSUB__(v18, 1);
      v20 = v18 - 1;
      if (v19)
      {
        goto LABEL_15;
      }

      v40 = v20 & result;
      v21 = v34;
      v22 = sub_1A957BAF8();
      v38 = v23;
      v39 = v22;
      v37 = v24;
      v25 = *v15;
      (*v15)(v13, v7);
      *&v44 = a3;
      *(&v44 + 1) = v21;
      *&v45 = v40;
      *(&v45 + 1) = v39;
      *&v46 = v38;
      *(&v46 + 1) = v37;
      v47 = 0;
      v51 = 0;
      v48 = v44;
      v49 = v45;
      v50 = v46;
      v26 = sub_1A957BB18();
      v27 = v42;
      if ((v28 & 1) == 0)
      {
        break;
      }

LABEL_4:
      result = sub_1A957BB28();
      v14 = v36;
      a3 = v32;
      if (v36 == v33)
      {
        return 1;
      }
    }

    while (1)
    {
      (v17)(v13, v27 + v26 * v52, v7);
      (v17)(v10, v43, v7);
      sub_1A948BD3C(&unk_1ED970210, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
      v29 = sub_1A957C098();
      v25(v10, v7);
      v25(v13, v7);
      if (v29)
      {
        return 0;
      }

      sub_1A957BB38();
      v48 = v44;
      v49 = v45;
      v50 = v46;
      v51 = v47;
      v26 = sub_1A957BB18();
      if (v30)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

void (*sub_1A948B838(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x7D0uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[247] = v4;
  v10[246] = a3;
  v10[245] = a2;
  v12 = *v4;
  v13 = sub_1A937A490(a2, a3);
  *(v11 + 1992) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1A93ED3EC();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1A93EBE70(v18, a4 & 1);
    v13 = sub_1A937A490(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[248] = v13;
  if (v19)
  {
    memmove(v11 + 105, (*(*v5 + 56) + 280 * v13), 0x118uLL);
    nullsub_23();
    memcpy(v11 + 70, v11 + 105, 0x118uLL);
  }

  else
  {
    sub_1A93847E0((v11 + 70));
  }

  return sub_1A948B9BC;
}

void sub_1A948B9BC(uint64_t *a1, char a2)
{
  v3 = *a1;
  memcpy((*a1 + 1120), (*a1 + 560), 0x118uLL);
  memcpy((v3 + 840), (v3 + 560), 0x118uLL);
  v4 = sub_1A932D058(v3 + 840);
  LOBYTE(v5) = *(v3 + 1992);
  v6 = v4 == 1;
  if (a2)
  {
    if (v4 == 1)
    {
      goto LABEL_9;
    }

    v7 = *(v3 + 1984);
    v8 = *(v3 + 1976);
    if (*(v3 + 1992))
    {
      goto LABEL_12;
    }

    v9 = *(v3 + 1968);
    v10 = *(v3 + 1960);
    v11 = *v8;
    memcpy(v3, (v3 + 1120), 0x118uLL);
    v11[(v7 >> 6) + 8] |= 1 << v7;
    v12 = (v11[6] + 16 * v7);
    *v12 = v10;
    v12[1] = v9;
    memcpy((v11[7] + 280 * v7), v3, 0x118uLL);
    v13 = v11[2];
    v14 = __OFADD__(v13, 1);
    v5 = v13 + 1;
    v6 = v5 == 0;
    if (!v14)
    {
LABEL_14:
      v11[2] = v5;

      goto LABEL_15;
    }

    __break(1u);
  }

  if (v6)
  {
LABEL_9:
    if (v5)
    {
      v15 = *(v3 + 1984);
      v16 = **(v3 + 1976);
      sub_1A948C1C0(*(v16 + 48) + 16 * v15);
      sub_1A948A5EC(v15, v16);
    }

    goto LABEL_15;
  }

  v7 = *(v3 + 1984);
  v8 = *(v3 + 1976);
  if ((v5 & 1) == 0)
  {
    v17 = *(v3 + 1968);
    v18 = *(v3 + 1960);
    v11 = *v8;
    memcpy((v3 + 280), (v3 + 1120), 0x118uLL);
    v11[(v7 >> 6) + 8] |= 1 << v7;
    v19 = (v11[6] + 16 * v7);
    *v19 = v18;
    v19[1] = v17;
    memcpy((v11[7] + 280 * v7), (v3 + 280), 0x118uLL);
    v20 = v11[2];
    v14 = __OFADD__(v20, 1);
    v5 = v20 + 1;
    if (v14)
    {
      __break(1u);
      return;
    }

    goto LABEL_14;
  }

LABEL_12:
  memmove((*(*v8 + 56) + 280 * v7), (v3 + 1120), 0x118uLL);
LABEL_15:
  memcpy((v3 + 1400), (v3 + 560), 0x118uLL);
  sub_1A9391BAC(v3 + 1120, v3 + 1680, &unk_1EB387BC0, &qword_1A9587E30);
  sub_1A937B960(v3 + 1400, &unk_1EB387BC0, &qword_1A9587E30);

  free(v3);
}

uint64_t (*sub_1A948BBCC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1A948BBF4;
}

unint64_t sub_1A948BC00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB387A30, &qword_1A95916D8);
    v3 = sub_1A957D128();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A9391BAC(v4, &v11, &qword_1EB387A28, &unk_1A95916C8);
      v5 = v11;
      result = sub_1A9489F14(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A93981D4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A948BD3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A948BDA0(uint64_t a1)
{
  v2 = sub_1A957B308();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1A948BD3C(&qword_1ED970220, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  result = MEMORY[0x1AC585770](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1A94265A0(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

void sub_1A948BF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    sub_1A93B183C(a1, a2, a3, a4, a5, a6, a7);
  }
}

unint64_t sub_1A948BF50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB387A70, &unk_1A9591730);
    v3 = sub_1A957D128();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1A948A03C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A948C038(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB387A68, &qword_1A9591728);
    v3 = sub_1A957D128();

    for (i = a1 + 48; ; i += 64)
    {
      v5 = *(i - 8);
      v6 = *i;
      v7 = *(i + 8);
      v8 = *(i + 16);
      v9 = *(i + 24);
      v10 = *(i + 40);
      *&v18 = *(i - 16);
      *(&v18 + 1) = v5;
      *&v19 = v6;
      *(&v19 + 1) = v7;
      *&v20 = v8;
      *(&v20 + 1) = v9;
      v21 = *(i + 32);
      sub_1A93B10F0(v18, v5, v6, v7, v8, v9, v21);
      result = sub_1A9489FA8(&v18);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 56 * result;
      v14 = v19;
      *v13 = v18;
      *(v13 + 16) = v14;
      *(v13 + 32) = v20;
      *(v13 + 48) = v21;
      *(v3[7] + 8 * result) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A948C16C()
{
  result = qword_1ED96FDC0;
  if (!qword_1ED96FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FDC0);
  }

  return result;
}

uint64_t sub_1A948C238@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v19, __src, sizeof(v19));
  result = sub_1A94890F0(__dst);
  if ((v8 & 1) != 0 && (memcpy(__srca, __dst, 0x118uLL), result = CoreSynthesizer.Voice.hashValue.getter(), result < 0))
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = v6[3];
    v11 = v6[4];
    sub_1A93780F4(v6, v10);
    *&__srca[0] = (*(v11 + 8))(v10, v11);
    *(&__srca[0] + 1) = v12;
    MEMORY[0x1AC585140](95, 0xE100000000000000);
    MEMORY[0x1AC585140](__dst[0], __dst[1]);
    MEMORY[0x1AC585140](95, 0xE100000000000000);
    v16[0] = v9;
    v13 = sub_1A957D3A8();
    MEMORY[0x1AC585140](v13);

    v14 = __srca[0];
    v15 = *v5;

    LOBYTE(v11) = sub_1A93A8204(v14, *(&v14 + 1), v15);

    if (v11)
    {
      sub_1A948976C(v14, *(&v14 + 1));

      sub_1A948C424(__srca);
      return memcpy(a2, __srca, 0x120uLL);
    }

    else
    {

      memcpy(__srca, v19, 0x118uLL);
      *(&__srca[17] + 1) = v9;
      nullsub_23();
      memcpy(a2, __srca, 0x120uLL);
      return sub_1A937B3DC(__dst, v16);
    }
  }

  return result;
}

double sub_1A948C424(_OWORD *a1)
{
  result = 0.0;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_1A948C450()
{
  result = qword_1EB3860C8;
  if (!qword_1EB3860C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3860C8);
  }

  return result;
}

uint64_t *TTSMarkup.ForEach.context.getter@<X0>(void *a1@<X8>)
{
  sub_1A93ADE40(v1 + 8, v8);
  v3 = v9;
  if (v9)
  {
    v4 = v10;
    sub_1A93780F4(v8, v9);
    (*(v4 + 24))(&v7, v3, v4);
    v5 = v7;
    result = sub_1A9378138(v8);
    *a1 = v5;
  }

  else
  {
    sub_1A9383404(v8);
    return SpeechContext.init<each A>(_:)(v8, 0, v8, a1);
  }

  return result;
}

uint64_t *sub_1A948C758@<X0>(void *a1@<X8>)
{
  result = TTSMarkup.ForEach.context.getter(&v3);
  *a1 = v3;
  return result;
}

void (*TTSMarkup.ForEach.context.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  sub_1A93ADE40(v1 + 8, v3);
  v5 = v4[3];
  if (v5)
  {
    v6 = v4[4];
    sub_1A93780F4(v4, v4[3]);
    (*(v6 + 24))(&v9, v5, v6);
    v7 = v9;
    sub_1A9378138(v4);
    v4[5] = v7;
  }

  else
  {
    sub_1A9383404(v4);
    SpeechContext.init<each A>(_:)(v4, 0, v4, v4 + 5);
  }

  return sub_1A948C890;
}

void sub_1A948C890(void **a1)
{
  v1 = *a1;

  free(v1);
}

double TTSMarkup.ForEach.init(_:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A9381740(MEMORY[0x1E69E7CC0]);

  result = 0.0;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t static TTSMarkup.ForEach.tag.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB387B00;
  return result;
}

uint64_t static TTSMarkup.ForEach.tag.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB387B00 = v1;
  return result;
}

uint64_t sub_1A948C9FC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB387B00;
  return result;
}

uint64_t sub_1A948CA48(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB387B00 = v1;
  return result;
}

uint64_t TTSMarkup.ForEach.attributes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t TTSMarkup.ForEach.init<A>(_:iterationBlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_1A9381740(MEMORY[0x1E69E7CC0]);
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0;
  *(a5 + 8) = 0u;
  v17[0] = a1;
  v16[2] = a4;
  v16[3] = a2;
  v16[4] = a3;
  v10 = sub_1A957C578();
  v11 = sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1A9386128(sub_1A948D284, v16, v10, v11, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);

  v17[3] = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v17[4] = &protocol witness table for <A> [A];
  v17[0] = v14;
  return sub_1A93A38D8(v17, a5 + 8);
}

uint64_t TTSMarkup.ForEach.init(speeches:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1A9381740(MEMORY[0x1E69E7CC0]);
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0u;
  v5[3] = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v5[4] = &protocol witness table for <A> [A];
  v5[0] = a1;
  return sub_1A93A38D8(v5, a2 + 8);
}

uint64_t TTSMarkup.ForEach.ssml.getter()
{
  sub_1A93ADE40(v0 + 8, v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    sub_1A93780F4(v4, v5);
    v1 = (*(v2 + 64))(v1, v2);
    sub_1A9378138(v4);
  }

  else
  {
    sub_1A9383404(v4);
  }

  return v1;
}

uint64_t TTSMarkup.ForEach.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A93ADE40(v3 + 8, v10);
  v7 = v11;
  if (!v11)
  {
    return sub_1A9383404(v10);
  }

  v8 = v12;
  sub_1A93780F4(v10, v11);
  (*(v8 + 72))(a1, a2, a3, v7, v8);
  return sub_1A9378138(v10);
}

{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A948CE28, 0, 0);
}

uint64_t sub_1A948CE28()
{
  v1 = v0[10];
  sub_1A93ADE40(v1 + 8, (v0 + 2));
  v2 = v0[5];
  result = sub_1A9383404((v0 + 2));
  if (v2)
  {
    if (*(v0[10] + 32))
    {
      v4 = swift_task_alloc();
      v0[11] = v4;
      *v4 = v0;
      v4[1] = sub_1A948CF28;
      v5 = v0[8];
      v6 = v0[9];

      return TTSMarkupAsyncVisitor.visit(_:)(v1 + 8, v5, v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t sub_1A948CF28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t (*sub_1A948D028(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTSMarkup.ForEach.context.modify(v2);
  return sub_1A948D098;
}

void sub_1A948D098(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1A948D0F8()
{
  sub_1A93ADE40(v0 + 8, v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    sub_1A93780F4(v4, v5);
    v1 = (*(v2 + 64))(v1, v2);
    sub_1A9378138(v4);
  }

  else
  {
    sub_1A9383404(v4);
  }

  return v1;
}

uint64_t sub_1A948D194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A9382328;

  return TTSMarkup.ForEach.accept<A>(_:)(a1, a2, a3);
}

double sub_1A948D240@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A9381740(MEMORY[0x1E69E7CC0]);

  result = 0.0;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t TTSMarkup.GenericSpeechElement.context.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.GenericSpeechElement.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = SpeechContext.init<each A>(_:)(v27, 0, v27, v24);
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v4 = MEMORY[0x1E69E7D40];
  v24[3] = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(v3);
  v24[1] = (*((*v4 & *a1) + 0xD0))();
  v24[2] = v5;
  v17 = a1;
  v6 = (*((*v4 & *a1) + 0x100))();
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A957CE48())
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1AC585DE0](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1A93D1250(&v19);

      if (v20)
      {
        sub_1A932D070(&v19, &v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1A93ADC90(0, v10[2] + 1, 1, v10);
        }

        v15 = v10[2];
        v14 = v10[3];
        if (v15 >= v14 >> 1)
        {
          v10 = sub_1A93ADC90((v14 > 1), v15 + 1, 1, v10);
        }

        v10[2] = v15 + 1;
        sub_1A932D070(&v21, &v10[5 * v15 + 4]);
      }

      else
      {
        sub_1A9383404(&v19);
      }

      ++v9;
      if (v13 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_21:

  v22 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v23 = &protocol witness table for <A> [A];

  *&v21 = v10;
  sub_1A93A38D8(&v21, v25);
  sub_1A948DA50(v24, a2);
  return sub_1A948DA88(v24);
}

uint64_t TTSMarkup.GenericSpeechElement.tag.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TTSMarkup.GenericSpeechElement.tag.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t TTSMarkup.GenericSpeechElement.attributes.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

double TTSMarkup.GenericSpeechElement.init(tag:attributes:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  SpeechContext.init<each A>(_:)(&v9, 0, &v9, a4);
  *(a4 + 64) = 0;
  result = 0.0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

uint64_t TTSMarkup.GenericSpeechElement.init(tag:attributes:speech:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void *__return_ptr, uint64_t)@<X3>, void *a5@<X8>)
{
  v9 = a5;
  v10 = SpeechContext.init<each A>(_:)(&v13, 0, &v13, a5);
  *(v9 + 2) = 0u;
  v9 += 4;
  v9[4] = 0;
  *(v9 + 1) = 0u;
  *(v9 - 3) = a1;
  *(v9 - 2) = a2;
  *(v9 - 1) = a3;
  a4(v12, v10);
  return sub_1A93A38D8(v12, v9);
}

uint64_t TTSMarkup.GenericSpeechElement.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 120))(v3, a2);
}

{
  v9 = (*(a3 + 96) + **(a3 + 96));
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1A9382328;

  return v9(v3, a2, a3);
}

uint64_t sub_1A948D9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.GenericSpeechElement.accept<A>(_:)(a1, a2, a3);
}

__n128 sub_1A948DAB8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A948DADC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1A948DB24(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t CoreSynthesizer.Voice.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CoreSynthesizer.Voice.cannonicId.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 56) <= 1u && *(v0 + 56))
  {

    goto LABEL_6;
  }

  v3 = sub_1A957D3E8();

  if (v3)
  {
LABEL_6:
    v9[2] = v2;
    v9[3] = v1;
    v9[0] = sub_1A957C0F8();
    v9[1] = v4;
    v8[0] = sub_1A957C0F8();
    v8[1] = v5;
    v6 = sub_1A93820F4();

    v2 = sub_1A957CD08(v9, v8, 0, 0, 0, 1, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], v6, v6, v6);

    return v2;
  }

  return v2;
}

uint64_t sub_1A948DD60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701869940;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x65707974627573;
    }

    else
    {
      v5 = 1701869940;
    }

    if (v3)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x74636166756E616DLL;
    v4 = 0xEC00000072657275;
  }

  else if (a1 == 3)
  {
    v4 = 0xE500000000000000;
    v5 = 0x7367616C66;
  }

  else
  {
    v5 = 0x73614D7367616C66;
    v4 = 0xE90000000000006BLL;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE400000000000000;
    v7 = 0xE700000000000000;
    v8 = 0x65707974627573;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x74636166756E616DLL;
    v6 = 0xEC00000072657275;
    v7 = 0xE500000000000000;
    v8 = 0x7367616C66;
    if (a2 != 3)
    {
      v8 = 0x73614D7367616C66;
      v7 = 0xE90000000000006BLL;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1A957D3E8();
  }

  return v12 & 1;
}

uint64_t sub_1A948DEE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6F632D7265707573;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v2)
    {
      v3 = 0xED0000746361706DLL;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x746361706D6F63;
  }

  else if (a1 == 3)
  {
    v3 = 0xE800000000000000;
    v4 = 0x6465636E61686E65;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6D75696D657270;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6F632D7265707573;
    }

    else
    {
      v9 = 1701736302;
    }

    if (a2)
    {
      v8 = 0xED0000746361706DLL;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x6465636E61686E65;
    if (a2 != 3)
    {
      v6 = 0x6D75696D657270;
      v5 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x746361706D6F63;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1A957D3E8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1A948E080(__int128 *a1, __int128 *a2)
{
  sub_1A93B17E8();
  sub_1A957C438();
  sub_1A957C438();
  if (v6 == v4 && v7 == v5)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1A957D3E8();
  }

  return v2 & 1;
}

uint64_t sub_1A948E15C(char a1, char a2)
{
  sub_1A9496198();
  sub_1A957C438();
  sub_1A957C438();
  if (v7 == v5 && v8 == v6)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1A957D3E8();
  }

  return v3 & 1;
}

uint64_t sub_1A948E20C(__int128 *a1, __int128 *a2)
{
  sub_1A94961EC();
  sub_1A957C438();
  sub_1A957C438();
  if (v6 == v4 && v7 == v5)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1A957D3E8();
  }

  return v2 & 1;
}

uint64_t sub_1A948E2D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6C617275656ELL;
    }

    else
    {
      v3 = 0x6E6F6870797267;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x58416C617275656ELL;
  }

  else if (a1 == 3)
  {
    v3 = 0x646E6172626E6F6ELL;
    v4 = 0xEA00000000006465;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6C61727574616ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6C617275656ELL;
    }

    else
    {
      v9 = 0x6E6F6870797267;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x646E6172626E6F6ELL;
    v6 = 0xEA00000000006465;
    if (a2 != 3)
    {
      v5 = 0x6C61727574616ELL;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x58416C617275656ELL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1A957D3E8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t CoreSynthesizer.Voice.supersedingVoiceIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CoreSynthesizer.Voice.name.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void CoreSynthesizer.Voice.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 120);
  *(a1 + 48) = v8;
  sub_1A93B10F0(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t CoreSynthesizer.Voice.primaryLocales.getter@<X0>(void *a1@<X8>)
{
  v15 = sub_1A957B308();
  v3 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 136);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v14[0] = a1;
    v16 = MEMORY[0x1E69E7CC0];
    result = sub_1A93ABB88(0, v7, 0);
    v10 = 0;
    v8 = v16;
    v14[1] = v3 + 32;
    v11 = v6 + 40;
    while (v10 < *(v6 + 16))
    {

      sub_1A957B1B8();
      v16 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1A93ABB88((v12 > 1), v13 + 1, 1);
        v8 = v16;
      }

      ++v10;
      *(v8 + 16) = v13 + 1;
      result = (*(v3 + 32))(v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v5, v15);
      v11 += 16;
      if (v7 == v10)
      {
        a1 = v14[0];
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    a1[3] = sub_1A937829C(&qword_1EB387268, &unk_1A9591CB0);
    result = sub_1A93B744C(&qword_1EB386450, &qword_1EB387268, &unk_1A9591CB0, MEMORY[0x1E69E6340]);
    a1[4] = result;
    *a1 = v8;
  }

  return result;
}

uint64_t sub_1A948E76C(uint64_t a1, uint64_t a2)
{
  sub_1A9379534(a1, v12);
  v3 = v13;
  v4 = v14;
  v5 = sub_1A93780F4(v12, v13);
  v6 = sub_1A9386128(sub_1A948C674, 0, v3, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  sub_1A93B0B3C(v6);
  v8 = v7;
  v10 = v9;

  *(a2 + 128) = v8;
  *(a2 + 136) = v10;
  return sub_1A9378138(v12);
}

uint64_t CoreSynthesizer.Voice.primaryLocales.setter(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = sub_1A93780F4(a1, v4);
  v7 = sub_1A9386128(sub_1A948C674, 0, v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  sub_1A93B0B3C(v7);
  v9 = v8;
  v11 = v10;

  *(v2 + 128) = v9;
  *(v2 + 136) = v11;

  return sub_1A9378138(a1);
}

void (*CoreSynthesizer.Voice.primaryLocales.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  *a1 = v3;
  v3[10] = v1;
  v3[11] = *(v1 + 128);
  v3[12] = *(v1 + 136);
  CoreSynthesizer.Voice.primaryLocales.getter(v3);
  return sub_1A948E9C0;
}

void sub_1A948E9C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_1A9379534(*a1, (v2 + 5));
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_1A93780F4(v2 + 5, v4);
    v7 = sub_1A9386128(sub_1A948C674, 0, v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
    sub_1A93B0B3C(v7);
    v9 = v8;
    v11 = v10;

    *(v3 + 128) = v9;
    *(v3 + 136) = v11;
    sub_1A9378138(v2 + 5);
  }

  else
  {
    v12 = v2[3];
    v13 = v2[4];
    v14 = sub_1A93780F4(*a1, v12);
    v15 = sub_1A9386128(sub_1A948C674, 0, v12, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
    sub_1A93B0B3C(v15);
    v17 = v16;
    v19 = v18;

    *(v3 + 128) = v17;
    *(v3 + 136) = v19;
  }

  sub_1A9378138(v2);

  free(v2);
}

uint64_t CoreSynthesizer.Voice.secondaryLocales.getter@<X0>(void *a1@<X8>)
{
  v15 = sub_1A957B308();
  v3 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 152);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v14[0] = a1;
    v16 = MEMORY[0x1E69E7CC0];
    result = sub_1A93ABB88(0, v7, 0);
    v10 = 0;
    v8 = v16;
    v14[1] = v3 + 32;
    v11 = v6 + 40;
    while (v10 < *(v6 + 16))
    {

      sub_1A957B1B8();
      v16 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1A93ABB88((v12 > 1), v13 + 1, 1);
        v8 = v16;
      }

      ++v10;
      *(v8 + 16) = v13 + 1;
      result = (*(v3 + 32))(v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v5, v15);
      v11 += 16;
      if (v7 == v10)
      {
        a1 = v14[0];
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    a1[3] = sub_1A937829C(&qword_1EB387268, &unk_1A9591CB0);
    result = sub_1A93B744C(&qword_1EB386450, &qword_1EB387268, &unk_1A9591CB0, MEMORY[0x1E69E6340]);
    a1[4] = result;
    *a1 = v8;
  }

  return result;
}

uint64_t sub_1A948ED5C(uint64_t a1, uint64_t a2)
{
  sub_1A9379534(a1, v12);
  v3 = v13;
  v4 = v14;
  v5 = sub_1A93780F4(v12, v13);
  v6 = sub_1A9386128(sub_1A948C674, 0, v3, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  sub_1A93B0B3C(v6);
  v8 = v7;
  v10 = v9;

  *(a2 + 144) = v8;
  *(a2 + 152) = v10;
  return sub_1A9378138(v12);
}

uint64_t CoreSynthesizer.Voice.secondaryLocales.setter(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = sub_1A93780F4(a1, v4);
  v7 = sub_1A9386128(sub_1A948C674, 0, v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  sub_1A93B0B3C(v7);
  v9 = v8;
  v11 = v10;

  *(v2 + 144) = v9;
  *(v2 + 152) = v11;

  return sub_1A9378138(a1);
}

void (*CoreSynthesizer.Voice.secondaryLocales.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  *a1 = v3;
  v3[10] = v1;
  v3[11] = *(v1 + 144);
  v3[12] = *(v1 + 152);
  CoreSynthesizer.Voice.secondaryLocales.getter(v3);
  return sub_1A948EFB8;
}

void sub_1A948EFB8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_1A9379534(*a1, (v2 + 5));
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_1A93780F4(v2 + 5, v4);
    v7 = sub_1A9386128(sub_1A948C674, 0, v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
    sub_1A93B0B3C(v7);
    v9 = v8;
    v11 = v10;

    *(v3 + 144) = v9;
    *(v3 + 152) = v11;
    sub_1A9378138(v2 + 5);
  }

  else
  {
    v12 = v2[3];
    v13 = v2[4];
    v14 = sub_1A93780F4(*a1, v12);
    v15 = sub_1A9386128(sub_1A948C674, 0, v12, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
    sub_1A93B0B3C(v15);
    v17 = v16;
    v19 = v18;

    *(v3 + 144) = v17;
    *(v3 + 152) = v19;
  }

  sub_1A9378138(v2);

  free(v2);
}

uint64_t CoreSynthesizer.Voice.locales.getter@<X0>(void *a1@<X8>)
{
  v34 = a1;
  v36 = sub_1A957B308();
  v2 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v1[16];
  v6 = v1[17];
  v7 = v1[19];
  v37 = v5;
  v38 = v6;
  v8 = *(v7 + 16);

  if (v8)
  {
    v35 = v4;
    v9 = 0;
    v10 = v7 + 32;
    while (1)
    {
      v12 = (v10 + 16 * v9);
      v14 = *v12;
      v13 = v12[1];
      v16 = v37;
      v15 = v38;
      v17 = *(v38 + 16);
      if (v37)
      {

        sub_1A93B1894(v14, v13, v15 + 32, v17, (v16 + 16), v16 + 32);
        v19 = v18;
        v11 = v20;

        if ((v19 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v17)
        {
          v21 = (v38 + 40);
          do
          {
            v22 = *(v21 - 1) == v14 && *v21 == v13;
            if (v22 || (sub_1A957D3E8() & 1) != 0)
            {
              goto LABEL_6;
            }

            v21 += 2;
          }

          while (--v17);
        }

        v11 = 0;
      }

      sub_1A93B13D0(v14, v13, v11);
LABEL_5:

LABEL_6:
      if (++v9 == v8)
      {
        v5 = v37;
        v6 = v38;
        v4 = v35;
        break;
      }
    }
  }

  v23 = *(v6 + 16);
  if (v23)
  {
    v33 = v5;
    v37 = MEMORY[0x1E69E7CC0];
    result = sub_1A93ABB88(0, v23, 0);
    v25 = 0;
    v26 = v37;
    v35 = (v2 + 32);
    v27 = v6 + 40;
    while (v25 < *(v6 + 16))
    {

      sub_1A957B1B8();
      v37 = v26;
      v28 = v4;
      v30 = *(v26 + 16);
      v29 = *(v26 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1A93ABB88((v29 > 1), v30 + 1, 1);
        v26 = v37;
      }

      ++v25;
      *(v26 + 16) = v30 + 1;
      result = (*(v2 + 32))(v26 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v30, v28, v36);
      v27 += 16;
      v4 = v28;
      if (v23 == v25)
      {

        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v31 = sub_1A937829C(&qword_1EB387268, &unk_1A9591CB0);
    v32 = v34;
    v34[3] = v31;
    result = sub_1A93B744C(&qword_1EB386450, &qword_1EB387268, &unk_1A9591CB0, MEMORY[0x1E69E6340]);
    v32[4] = result;
    *v32 = v26;
  }

  return result;
}

uint64_t CoreSynthesizer.Voice.primaryLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9[-1] - v3;
  CoreSynthesizer.Voice.primaryLocales.getter(v9);
  sub_1A93780F4(v9, v9[3]);
  sub_1A957C9C8();
  v5 = sub_1A957B308();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1A937B960(v4, &qword_1EB386988, &qword_1A9587830);
    sub_1A9378138(v9);
    result = sub_1A957D0A8();
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(a1, v4, v5);
    return sub_1A9378138(v9);
  }

  return result;
}

uint64_t CoreSynthesizer.Voice.downloadSizeBytes.setter(uint64_t result)
{
  *(v1 + 180) = result;
  *(v1 + 184) = BYTE4(result) & 1;
  return result;
}

uint64_t CoreSynthesizer.Voice.diskSizeBytes.setter(uint64_t result)
{
  *(v1 + 188) = result;
  *(v1 + 192) = BYTE4(result) & 1;
  return result;
}

void CoreSynthesizer.Voice.assetId.getter(uint64_t *a1@<X8>)
{
  v2 = v1[25];
  v3 = v1[26];
  v4 = v1[27];
  v5 = v1[28];
  v6 = v1[29];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  sub_1A9495608(v2, v3, v4, v5);
}

void CoreSynthesizer.Voice.newerAssetId.getter(uint64_t *a1@<X8>)
{
  v2 = v1[30];
  v3 = v1[31];
  v4 = v1[32];
  v5 = v1[33];
  v6 = v1[34];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  sub_1A9495608(v2, v3, v4, v5);
}

__n128 CoreSynthesizer.Voice.newerAssetId.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_1A93B10AC(v1[30], v1[31], v1[32], v1[33]);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 15) = *a1;
  *(v1 + 16) = v5;
  v1[34] = v3;
  return result;
}

void sub_1A948F7A4(void *a1@<X8>)
{
  *a1 = 24942;
  a1[1] = 0xE200000000000000;
  a1[2] = 24942;
  a1[3] = 0xE200000000000000;
  a1[4] = 0;
}

uint64_t CoreSynthesizer.Voice.AssetIdentifier.init(loader:identifier:version:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t CoreSynthesizer.Voice.init(id:alternateIdentifiers:name:quality:gender:traits:type:primaryLocales:secondaryLocales:componentDescription:downloadSizeBytes:diskSizeBytes:assetId:state:newerAssetId:supersedingVoiceIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>, uint64_t *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16, unsigned int a17, char a18, int a19, char a20, uint64_t *a21, char *a22, uint64_t *a23, uint64_t a24, uint64_t a25)
{
  v57 = *a6;
  v58 = *a7;
  v65 = *a10;
  v66 = *a8;
  v63 = a10[2];
  v64 = a10[1];
  v61 = a10[4];
  v62 = a10[3];
  v60 = a10[5];
  v59 = *(a10 + 48);
  v51 = *a21;
  v50 = a21[1];
  v75 = a21[2];
  v73 = a21[4];
  v74 = a21[3];
  v67 = *a22;
  v71 = a23[1];
  v72 = *a23;
  v69 = a23[3];
  v70 = a23[2];
  v68 = a23[4];
  v25 = a11[3];
  v26 = a11[4];
  v27 = sub_1A93780F4(a11, v25);
  v28 = MEMORY[0x1E69E6158];
  v29 = MEMORY[0x1E69E73E0];
  v30 = MEMORY[0x1E69E7410];
  v31 = sub_1A9386128(sub_1A948C674, 0, v25, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);
  sub_1A93B0B3C(v31);
  v33 = v32;
  v46 = v34;
  v47 = v32;
  v35 = v34;
  v36 = a12[3];
  v37 = a12[4];
  v38 = sub_1A93780F4(a12, v36);
  v39 = sub_1A9386128(sub_1A948C674, 0, v36, v28, v29, v37, v30, v38);
  sub_1A93B0B3C(v39);
  v41 = v40;
  v45 = v40;
  v43 = v42;
  v48 = v42;
  sub_1A93B10AC(0, 0, 0, 0);
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = a3;
  __src[3] = a24;
  __src[4] = a25;
  __src[5] = a4;
  __src[6] = a5;
  LOBYTE(__src[7]) = v57;
  BYTE1(__src[7]) = v58;
  __src[8] = v66;
  __src[9] = v65;
  __src[10] = v64;
  __src[11] = v63;
  __src[12] = v62;
  __src[13] = v61;
  __src[14] = v60;
  LOBYTE(__src[15]) = v59;
  __src[16] = v33;
  __src[17] = v35;
  __src[18] = v41;
  __src[19] = v43;
  __src[20] = a13;
  __src[21] = a14;
  __src[22] = __PAIR64__(a17, a15);
  LOBYTE(__src[23]) = a18 & 1;
  HIDWORD(__src[23]) = a19;
  LOBYTE(__src[24]) = a20 & 1;
  BYTE1(__src[24]) = v67;
  __src[25] = v51;
  __src[26] = v50;
  __src[27] = v75;
  __src[28] = v74;
  __src[29] = v73;
  __src[30] = v72;
  __src[31] = v71;
  __src[32] = v70;
  __src[33] = v69;
  __src[34] = v68;
  memcpy(a9, __src, 0x118uLL);
  sub_1A937B3DC(__src, v77);
  sub_1A9378138(a12);
  sub_1A9378138(a11);
  v77[0] = a1;
  v77[1] = a2;
  v77[2] = a3;
  v77[3] = a24;
  v77[4] = a25;
  v77[5] = a4;
  v77[6] = a5;
  v78 = v57;
  v79 = v58;
  v80 = v66;
  v81 = v65;
  v82 = v64;
  v83 = v63;
  v84 = v62;
  v85 = v61;
  v86 = v60;
  v87 = v59;
  v88 = v47;
  v89 = v46;
  v90 = v45;
  v91 = v48;
  v92 = a13;
  v93 = a14;
  v94 = a15;
  v95 = a17;
  v96 = a18 & 1;
  v97 = a19;
  v98 = a20 & 1;
  v99 = v67;
  v100 = v51;
  v101 = v50;
  v102 = v75;
  v103 = v74;
  v104 = v73;
  v105 = v72;
  v106 = v71;
  v107 = v70;
  v108 = v69;
  v109 = v68;
  return sub_1A937B48C(v77);
}

id CoreSynthesizer.Voice.synthesisProviderVoice.getter()
{
  v1 = v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v39 = *(v0 + 64);
  v43 = *(v0 + 72);
  v44 = *(v0 + 80);
  v5 = *(v0 + 120);
  v42 = v5;
  v40 = *(v0 + 160);
  v41 = *(v0 + 168);
  v37 = *(v0 + 172);
  v38 = *(v0 + 164);
  v36 = *(v0 + 176);
  v34 = v0 + 180;
  v48 = *v0;
  v49 = v2;
  v6 = v48;
  v7 = v2;
  v50 = *(v0 + 16);
  v35 = *(v0 + 40);
  v51 = *(v0 + 32);
  v52 = v35;
  v53 = v3;
  v54 = v4;
  v8 = v3;
  v55 = v39;
  v56 = v43;
  v57 = v44;
  v58 = *(v0 + 88);
  v59 = *(v0 + 104);
  v60 = v5;
  v9 = *(v0 + 121);
  v10 = *(v0 + 137);
  *&v62[15] = *(v0 + 152);
  *v62 = v10;
  v61 = v9;
  v63 = v40;
  v64 = v38;
  v65 = v41;
  v66 = v37;
  v73 = *(v0 + 260);
  v11 = *(v0 + 276);
  v67 = v36;
  v74 = v11;
  v71 = *(v0 + 228);
  v72 = *(v0 + 244);
  v70 = *(v0 + 212);
  v69 = *(v0 + 196);
  v68 = *(v0 + 180);
  CoreSynthesizer.Voice.primaryLocales.getter(v45);
  v12 = v46;
  v13 = v47;
  v14 = sub_1A93780F4(v45, v46);
  sub_1A9386128(sub_1A94978AC, 0, v12, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  sub_1A9378138(v45);
  v48 = v6;
  v49 = v7;
  v50 = *(v1 + 16);
  v51 = *(v1 + 32);
  v52 = v35;
  v53 = v8;
  v54 = v4;
  v55 = v39;
  v56 = v43;
  v57 = v44;
  v58 = *(v1 + 88);
  v59 = *(v1 + 104);
  v60 = v42;
  v15 = *(v1 + 121);
  v16 = *(v1 + 137);
  *&v62[15] = *(v1 + 152);
  *v62 = v16;
  v61 = v15;
  v63 = v40;
  v64 = v38;
  v65 = v41;
  v66 = v37;
  v73 = *(v34 + 80);
  v17 = *(v1 + 276);
  v67 = v36;
  v74 = v17;
  v71 = *(v1 + 228);
  v72 = *(v1 + 244);
  v70 = *(v1 + 212);
  v69 = *(v1 + 196);
  v68 = *(v1 + 180);
  CoreSynthesizer.Voice.primaryLocales.getter(v45);
  v18 = v46;
  v19 = v47;
  v20 = sub_1A93780F4(v45, v46);
  v21 = sub_1A9386128(sub_1A94978AC, 0, v18, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
  sub_1A9378138(v45);
  CoreSynthesizer.Voice.secondaryLocales.getter(&v48);
  v22 = *(&v50 + 1);
  v23 = v51;
  v24 = sub_1A93780F4(&v48, *(&v50 + 1));
  v25 = sub_1A9386128(sub_1A94978AC, 0, v22, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
  sub_1A9378138(&v48);
  v48 = v21;
  sub_1A93ABFE0(v25);
  v26 = objc_allocWithZone(MEMORY[0x1E69584F0]);
  v27 = sub_1A957C0C8();
  v28 = sub_1A957C0C8();
  v29 = sub_1A957C4B8();

  v30 = sub_1A957C4B8();

  v31 = [v26 initWithName:v27 identifier:v28 primaryLanguages:v29 supportedLanguages:v30];

  v48 = __PAIR64__(v38, v40);
  v49 = __PAIR64__(v37, v41);
  LODWORD(v50) = v36;
  [v31 setAuComponentDesc_];
  [v31 setIsPersonalVoice_];
  [v31 setIsFirstParty_];
  if (v42 == 1)
  {
    v32 = sub_1A957C0C8();
    [v31 setIdentifier_];

    [v31 setIsFirstParty_];
  }

  return v31;
}

uint64_t sub_1A949017C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1A957D3E8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t sub_1A9490228(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
    case 10:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 0x7974696C617571;
      break;
    case 5:
      result = 0x7265646E6567;
      break;
    case 6:
      result = 0x737469617274;
      break;
    case 7:
      result = 1701869940;
      break;
    case 8:
      result = 0x7972616D6972705FLL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x657A69536B736964;
      break;
    case 13:
      result = 0x6574617473;
      break;
    case 14:
      result = 0x64497465737361;
      break;
    case 15:
      result = 0x737341726577656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A94903D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A9496438(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9490404(uint64_t a1)
{
  v2 = sub_1A9495EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9490440(uint64_t a1)
{
  v2 = sub_1A9495EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreSynthesizer.Voice.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB387B08, &unk_1A9591CC0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - v5;
  v7 = *(v1 + 16);
  v62 = *(v1 + 24);
  v63 = v7;
  v8 = *(v1 + 32);
  v60 = *(v1 + 40);
  v61 = v8;
  v58 = *(v1 + 48);
  v72 = *(v1 + 56);
  v57 = *(v1 + 57);
  v9 = *(v1 + 72);
  v56 = *(v1 + 64);
  v49 = v9;
  v10 = *(v1 + 88);
  v50 = *(v1 + 80);
  v51 = v10;
  v11 = *(v1 + 96);
  v54 = *(v1 + 104);
  v55 = v11;
  v53 = *(v1 + 112);
  v52 = *(v1 + 120);
  v12 = *(v1 + 136);
  v47 = *(v1 + 128);
  v48 = v12;
  v13 = *(v1 + 152);
  v45 = *(v1 + 144);
  v46 = v13;
  v14 = *(v1 + 160);
  v15 = *(v1 + 168);
  v16 = *(v1 + 180);
  v44 = *(v1 + 176);
  v43 = v16;
  v42 = *(v1 + 184);
  v41 = *(v1 + 188);
  v40 = *(v1 + 192);
  v39 = *(v1 + 193);
  v17 = *(v1 + 208);
  v34 = *(v1 + 200);
  v35 = v17;
  v18 = *(v1 + 224);
  v38 = *(v1 + 216);
  v37 = v18;
  v19 = *(v1 + 240);
  v36 = *(v1 + 232);
  v59 = v19;
  v20 = *(v1 + 256);
  v31 = *(v1 + 248);
  v33 = v20;
  v21 = *(v1 + 272);
  v32 = *(v1 + 264);
  v22 = a1[3];
  v23 = a1;
  v25 = v24;
  sub_1A93780F4(v23, v22);
  sub_1A9495EE4();
  sub_1A957D598();
  LOBYTE(v65) = 0;
  v26 = v64;
  sub_1A957D2E8();
  if (v26)
  {
    return (*(v4 + 8))(v6, v25);
  }

  v64 = v21;
  v27 = v59;
  v65 = v63;
  v73 = 1;
  sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
  sub_1A9442BB0(&qword_1EB385F88, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1A957D338();
  LOBYTE(v65) = 2;
  sub_1A957D298();
  LOBYTE(v65) = 3;
  sub_1A957D2E8();
  LOBYTE(v65) = v72;
  v73 = 4;
  sub_1A9495F38();
  sub_1A957D338();
  LOBYTE(v65) = v57;
  v73 = 5;
  sub_1A9495F8C();
  sub_1A957D338();
  v65 = v56;
  v73 = 6;
  sub_1A942C340();
  sub_1A957D338();
  v65 = v49;
  v66 = v50;
  v67 = v51;
  v68 = v55;
  v69 = v54;
  v70 = v53;
  v71 = v52;
  v73 = 7;
  sub_1A93B10F0(v49, v50, v51, v55, v54, v53, v52);
  sub_1A9495FE0();
  sub_1A957D338();
  sub_1A93B183C(v65, v66, v67, v68, v69, v70, v71);
  v65 = v47;
  v66 = v48;
  v73 = 8;
  sub_1A937829C(&qword_1EB387B10, &qword_1A9591CD0);
  sub_1A9496034(&qword_1EB385FE0, MEMORY[0x1E69E6160], MEMORY[0x1E69955B0]);
  v63 = v6;
  sub_1A957D338();
  v65 = v45;
  v66 = v46;
  v73 = 9;
  sub_1A957D338();
  v65 = v14;
  v66 = v15;
  LODWORD(v67) = v44;
  v73 = 10;
  type metadata accessor for AudioComponentDescription();
  sub_1A9497084(&qword_1EB385ED0, &protocol conformance descriptor for AudioComponentDescription);
  sub_1A957D338();
  LOBYTE(v65) = 11;
  v73 = v42;
  sub_1A957D2C8();
  LOBYTE(v65) = 12;
  v73 = v40;
  sub_1A957D2C8();
  LOBYTE(v65) = v39;
  v73 = 13;
  sub_1A94960F0();
  sub_1A957D338();
  v65 = v34;
  v66 = v35;
  v67 = v38;
  v68 = v37;
  v69 = v36;
  v73 = 14;
  sub_1A9495608(v34, v35, v38, v37);
  sub_1A9496144();
  sub_1A957D2B8();
  sub_1A93B10AC(v65, v66, v67, v68);
  v65 = v27;
  v66 = v31;
  v67 = v33;
  v68 = v32;
  v69 = v64;
  v73 = 15;
  sub_1A9495608(v27, v31, v33, v32);
  v29 = v63;
  sub_1A957D2B8();
  sub_1A93B10AC(v65, v66, v67, v68);
  return (*(v4 + 8))(v29, v25);
}

uint64_t CoreSynthesizer.Voice.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v13 = *(v1 + 64);
  v4 = *(v1 + 136);
  v14 = *(v1 + 152);
  v15 = *(v1 + 184);
  v16 = *(v1 + 192);
  v17 = *(v1 + 208);
  v18 = *(v1 + 248);
  sub_1A957C228();
  MEMORY[0x1AC5863C0](*(v2 + 16));
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = v2 + 40;
    do
    {

      sub_1A957C228();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  sub_1A957D518();
  if (v3)
  {
    sub_1A957C228();
  }

  v7 = v4;
  sub_1A957C228();
  sub_1A957C228();

  sub_1A957C228();

  MEMORY[0x1AC5863C0](v13);
  sub_1A93B17E8();
  sub_1A957C438();
  sub_1A957C228();

  v8 = *(v4 + 16);
  MEMORY[0x1AC5863C0](v8);
  if (v8)
  {
    v9 = v7 + 40;
    do
    {
      sub_1A957C228();
      v9 += 16;
      --v8;
    }

    while (v8);
  }

  v10 = *(v14 + 16);
  MEMORY[0x1AC5863C0](v10);
  if (v10)
  {
    v11 = v14 + 40;
    do
    {
      sub_1A957C228();
      v11 += 16;
      --v10;
    }

    while (v10);
  }

  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D518();
  if ((v15 & 1) == 0)
  {
    sub_1A957D528();
  }

  sub_1A957D518();
  if (!v16)
  {
    sub_1A957D528();
  }

  sub_1A9496198();
  sub_1A957C438();
  sub_1A957C228();

  if (v17)
  {
    sub_1A957D518();
    sub_1A94961EC();
    sub_1A957C438();
    sub_1A957C228();

    if (v18)
    {
LABEL_18:
      sub_1A957D518();
      sub_1A94961EC();
      sub_1A957C438();
      sub_1A957C228();
    }
  }

  else
  {
    sub_1A957D518();
    if (v18)
    {
      goto LABEL_18;
    }
  }

  return sub_1A957D518();
}

uint64_t CoreSynthesizer.Voice.hashValue.getter()
{
  sub_1A957D4F8();
  CoreSynthesizer.Voice.hash(into:)(v1);
  return sub_1A957D548();
}

void CoreSynthesizer.Voice.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A937829C(&qword_1EB387B18, &qword_1A9591CD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = a1[3];
  v125 = a1;
  sub_1A93780F4(a1, v9);
  sub_1A9495EE4();
  sub_1A957D588();
  if (v2)
  {
    sub_1A9378138(v125);
    sub_1A93B10AC(0, 0, 0, 0);
  }

  else
  {
    v10 = v6;
    v60 = a2;
    LOBYTE(v62) = 0;
    v11 = sub_1A957D1E8();
    v59 = v12;
    sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
    LOBYTE(v61[0]) = 1;
    sub_1A9442BB0(&qword_1EB3863D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1A957D238();
    v57 = v62;
    LOBYTE(v62) = 2;
    v44 = sub_1A957D198();
    v56 = v13;
    LOBYTE(v62) = 3;
    v43 = sub_1A957D1E8();
    v55 = v14;
    LOBYTE(v61[0]) = 4;
    sub_1A9496240();
    sub_1A957D238();
    v42 = v62;
    LOBYTE(v61[0]) = 5;
    sub_1A9496294();
    sub_1A957D238();
    v41 = v62;
    LOBYTE(v61[0]) = 6;
    sub_1A942C430();
    sub_1A957D238();
    v40 = v62;
    LOBYTE(v61[0]) = 7;
    sub_1A94962E8();
    sub_1A957D238();
    v48 = v62;
    v49 = v63;
    v50 = v64;
    v51 = v65;
    v52 = v66;
    v53 = v67;
    v54 = v68;
    v15 = sub_1A937829C(&qword_1EB387B10, &qword_1A9591CD0);
    LOBYTE(v61[0]) = 8;
    v45 = sub_1A9496034(&qword_1EB3862A8, MEMORY[0x1E69E6190], MEMORY[0x1E69955C8]);
    v46 = v15;
    sub_1A957D238();
    v47 = v62;
    v58 = v63;
    LOBYTE(v61[0]) = 9;
    sub_1A957D238();
    v38 = v63;
    v39 = v62;
    type metadata accessor for AudioComponentDescription();
    LOBYTE(v61[0]) = 10;
    sub_1A9497084(&qword_1EB386388, &protocol conformance descriptor for AudioComponentDescription);
    sub_1A957D238();
    v34 = v63;
    v35 = HIDWORD(v62);
    v33 = HIDWORD(v63);
    v31 = v62;
    v32 = v64;
    LOBYTE(v62) = 11;
    v16 = sub_1A957D1C8();
    v121 = BYTE4(v16) & 1;
    LOBYTE(v62) = 12;
    v30 = sub_1A957D1C8();
    v118 = BYTE4(v30) & 1;
    LOBYTE(v61[0]) = 13;
    sub_1A949633C();
    sub_1A957D238();
    v28 = v62;
    LOBYTE(v61[0]) = 14;
    v29 = sub_1A9496390();
    sub_1A957D1B8();
    v17 = v62;
    v36 = v64;
    v37 = v63;
    v45 = v65;
    v46 = v66;
    v110 = 15;
    sub_1A957D1B8();
    (*(v10 + 8))(v8, v5);
    v29 = v111;
    v26 = v113;
    v27 = v112;
    v24 = v115;
    v25 = v114;
    sub_1A93B10AC(0, 0, 0, 0);
    v61[0] = v11;
    v61[1] = v59;
    v61[2] = v57;
    v61[3] = v44;
    v61[4] = v56;
    v61[5] = v43;
    v61[6] = v55;
    LOBYTE(v61[7]) = v42;
    BYTE1(v61[7]) = v41;
    *(&v61[7] + 2) = v123;
    HIWORD(v61[7]) = v124;
    v61[8] = v40;
    v61[9] = v48;
    v61[10] = v49;
    v61[11] = v50;
    v61[12] = v51;
    v61[13] = v52;
    v61[14] = v53;
    LOBYTE(v61[15]) = v54;
    *(&v61[15] + 1) = *v122;
    HIDWORD(v61[15]) = *&v122[3];
    v61[16] = v47;
    v61[17] = v58;
    v61[18] = v39;
    v61[19] = v38;
    v61[20] = __PAIR64__(v35, v31);
    v61[21] = __PAIR64__(v33, v34);
    v61[22] = __PAIR64__(v16, v32);
    v22 = v17;
    v23 = v16;
    *(&v61[23] + 1) = v119;
    *(&v61[24] + 2) = v116;
    v18 = v121;
    LOBYTE(v61[23]) = v121;
    BYTE3(v61[23]) = v120;
    LODWORD(v16) = v30;
    HIDWORD(v61[23]) = v30;
    HIWORD(v61[24]) = v117;
    v19 = v118;
    LOBYTE(v61[24]) = v118;
    LOBYTE(v10) = v28;
    BYTE1(v61[24]) = v28;
    v61[25] = v17;
    v61[26] = v37;
    v61[27] = v36;
    v20 = v45;
    v61[28] = v45;
    v61[29] = v46;
    v61[30] = v29;
    v61[31] = v27;
    v61[32] = v26;
    v61[33] = v25;
    v61[34] = v24;
    memcpy(v60, v61, 0x118uLL);
    sub_1A937B3DC(v61, &v62);
    sub_1A9378138(v125);
    v62 = v11;
    v63 = v59;
    v64 = v57;
    v65 = v44;
    v66 = v56;
    v67 = v43;
    v68 = v55;
    v69 = v42;
    v70 = v41;
    v73 = v40;
    v74 = v48;
    v75 = v49;
    v76 = v50;
    v71 = v123;
    v72 = v124;
    v77 = v51;
    v78 = v52;
    v79 = v53;
    v80 = v54;
    *v81 = *v122;
    *&v81[3] = *&v122[3];
    v82 = v47;
    v83 = v58;
    v84 = v39;
    v85 = v38;
    v86 = v31;
    v87 = v35;
    v88 = v34;
    v89 = v33;
    v90 = v32;
    v91 = v23;
    v92 = v18;
    v94 = v120;
    v93 = v119;
    v95 = v16;
    v96 = v19;
    v97 = v10;
    v99 = v117;
    v98 = v116;
    v100 = v22;
    v101 = v37;
    v102 = v36;
    v103 = v20;
    v104 = v46;
    v105 = v29;
    v106 = v27;
    v107 = v26;
    v108 = v25;
    v109 = v24;
    sub_1A937B48C(&v62);
  }
}

uint64_t sub_1A9491D04()
{
  sub_1A957D4F8();
  CoreSynthesizer.Voice.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t sub_1A9491D48(uint64_t a1)
{
  sub_1A957D4F8();
  CoreSynthesizer.Voice.hash(into:)(v2);
  return sub_1A957D548();
}

uint64_t CoreSynthesizer.Voice.Gender.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1A957D158();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t CoreSynthesizer.Voice.Gender.rawValue.getter()
{
  v1 = 0x656C616D6566;
  if (*v0 != 1)
  {
    v1 = 0x6669636570736E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701601645;
  }
}

uint64_t sub_1A9491E6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656C616D6566;
  if (v2 != 1)
  {
    v4 = 0x6669636570736E75;
    v3 = 0xEB00000000646569;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701601645;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C616D6566;
  if (*a2 != 1)
  {
    v8 = 0x6669636570736E75;
    v7 = 0xEB00000000646569;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701601645;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A957D3E8();
  }

  return v11 & 1;
}

void sub_1A9491F7C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C616D6566;
  if (v2 != 1)
  {
    v5 = 0x6669636570736E75;
    v4 = 0xEB00000000646569;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701601645;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1A9491FD8()
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9492078(uint64_t a1)
{
  sub_1A957C228();
}

uint64_t sub_1A9492104(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t CoreSynthesizer.Voice.ThirdPartyVoiceDetails.rawIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CoreSynthesizer.Voice.ThirdPartyVoiceDetails.manufacturerName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CoreSynthesizer.Voice.ThirdPartyVoiceDetails.manufacturerBundleIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CoreSynthesizer.Voice.ThirdPartyVoiceDetails.init(rawIdentifier:manufacturerName:manufacturerBundleIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t static CoreSynthesizer.Voice.ThirdPartyVoiceDetails.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1A957D3E8() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1A957D3E8();
}

unint64_t sub_1A94923E8()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E656449776172;
  }
}

uint64_t sub_1A9492454@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A9496934(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A949247C(uint64_t a1)
{
  v2 = sub_1A94963E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94924B8(uint64_t a1)
{
  v2 = sub_1A94963E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreSynthesizer.Voice.ThirdPartyVoiceDetails.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB387B20, &qword_1A9591CE0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  sub_1A93780F4(a1, a1[3]);
  sub_1A94963E4();
  sub_1A957D598();
  v14 = 0;
  v9 = v11[5];
  sub_1A957D2E8();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_1A957D2E8();
  v12 = 2;
  sub_1A957D2E8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t CoreSynthesizer.Voice.ThirdPartyVoiceDetails.hash(into:)(uint64_t a1)
{
  sub_1A957C228();
  sub_1A957C228();

  return sub_1A957C228();
}

uint64_t CoreSynthesizer.Voice.ThirdPartyVoiceDetails.hashValue.getter()
{
  sub_1A957D4F8();
  sub_1A957C228();
  sub_1A957C228();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t CoreSynthesizer.Voice.ThirdPartyVoiceDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A937829C(&qword_1EB387B28, &qword_1A9591CE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  sub_1A93780F4(a1, a1[3]);
  sub_1A94963E4();
  sub_1A957D588();
  if (v2)
  {
    return sub_1A9378138(a1);
  }

  v25 = 0;
  v9 = sub_1A957D1E8();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_1A957D1E8();
  v21 = v12;
  v23 = 2;
  v13 = sub_1A957D1E8();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  sub_1A9378138(a1);
}

uint64_t sub_1A9492A20()
{
  sub_1A957D4F8();
  sub_1A957C228();
  sub_1A957C228();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t sub_1A9492AA4(uint64_t a1)
{
  sub_1A957C228();
  sub_1A957C228();

  return sub_1A957C228();
}

uint64_t sub_1A9492B10(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A957C228();
  sub_1A957C228();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t sub_1A9492BC0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1A957D3E8() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1A957D3E8();
}

uint64_t CoreSynthesizer.Voice.VoiceType.SiriVoiceTechnology.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1A957D158();

  v6 = 5;
  if (v4 < 5)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t CoreSynthesizer.Voice.VoiceType.SiriVoiceTechnology.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E6F6870797267;
  v3 = 0x58416C617275656ELL;
  v4 = 0x646E6172626E6F6ELL;
  if (v1 != 3)
  {
    v4 = 0x6C61727574616ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C617275656ELL;
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

uint64_t sub_1A9492DBC()
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9492EA0(uint64_t a1)
{
  sub_1A957C228();
}

uint64_t sub_1A9492F70(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

void sub_1A949305C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6870797267;
  v5 = 0xE800000000000000;
  v6 = 0x58416C617275656ELL;
  v7 = 0xEA00000000006465;
  v8 = 0x646E6172626E6F6ELL;
  if (v2 != 3)
  {
    v8 = 0x6C61727574616ELL;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C617275656ELL;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t CoreSynthesizer.Voice.VoiceType.description.getter()
{
  v1 = *v0;
  if (*(v0 + 48))
  {
    if (*(v0 + 48) == 1)
    {
      return 0x7472615020647233;
    }

    else
    {
      v6 = v0[3];
      v7 = v0[4] | v0[5];
      v8 = v0[2] | v0[1];
      if (v7 | v1 | v6 | v8)
      {
        v9 = v7 | v6 | v8;
        if (v1 != 1 || v9)
        {
          if (v1 != 2 || v9)
          {
            if (v1 != 3 || v9)
            {
              if (v1 == 4 && v9 == 0)
              {
                return 0x636E6575716F6C45;
              }

              else
              {
                return 0x6C61746E6963614DLL;
              }
            }

            else
            {
              return 0x6C616E6F73726550;
            }
          }

          else
          {
            return 0x6D6F74737543;
          }
        }

        else
        {
          return 0x65636E65726543;
        }
      }

      else
      {
        return 0xD000000000000010;
      }
    }
  }

  else
  {
    v3 = 0x7247282069726953;
    v4 = 0xD000000000000010;
    v5 = 0xD000000000000010;
    if (*v0 != 3)
    {
      v5 = 0x614E282069726953;
    }

    if (*v0 != 2)
    {
      v4 = v5;
    }

    if (*v0)
    {
      v3 = 0x654E282069726953;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t sub_1A949339C(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A93B17E8();
  sub_1A957C438();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9493430(uint64_t a1, uint64_t a2)
{
  sub_1A93B17E8();
  sub_1A957C438();
  sub_1A957C228();
}

uint64_t sub_1A94934AC(uint64_t a1, uint64_t a2)
{
  sub_1A957D4F8();
  sub_1A93B17E8();
  sub_1A957C438();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A94935EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1A948E080(v5, v7) & 1;
}

uint64_t CoreSynthesizer.Voice.Quality.description.getter()
{
  v1 = *v0;
  v2 = 1701736270;
  v3 = 0x746361706D6F43;
  v4 = 0x6465636E61686E45;
  if (v1 != 3)
  {
    v4 = 0x6D75696D657250;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F43207265707553;
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

uint64_t CoreSynthesizer.Voice.Quality.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1A957D158();

  v6 = 5;
  if (v4 < 5)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t CoreSynthesizer.Voice.Quality.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x746361706D6F63;
  v4 = 0x6465636E61686E65;
  if (v1 != 3)
  {
    v4 = 0x6D75696D657270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F632D7265707573;
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

void sub_1A94937FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE700000000000000;
  v6 = 0x746361706D6F63;
  v7 = 0xE800000000000000;
  v8 = 0x6465636E61686E65;
  if (v2 != 3)
  {
    v8 = 0x6D75696D657270;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6F632D7265707573;
    v3 = 0xED0000746361706DLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1A94938A0()
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9493988(uint64_t a1)
{
  sub_1A957C228();
}

uint64_t sub_1A9493A5C(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t CoreSynthesizer.Voice.Trait.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1A93AC2AC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1A93AC2AC((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x79746C65766F4ELL;
  *(v5 + 5) = 0xE700000000000000;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1A93AC2AC((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x6C616E6F73726550;
    *(v8 + 5) = 0xE800000000000000;
  }

LABEL_12:
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_1A93AC2AC((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  *(v11 + 4) = 0x7974726150647233;
  *(v11 + 5) = 0xE800000000000000;
  if ((v1 & 8) != 0)
  {
LABEL_20:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_1A93AC2AC((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0x6D6574737953;
    *(v14 + 5) = 0xE600000000000000;
  }

LABEL_25:
  if ((v1 & 0x10) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_1A93AC2AC((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x7561666544636F4CLL;
    *(v17 + 5) = 0xEA0000000000746CLL;
  }

  if ((v1 & 0x20) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
    }

    v19 = *(v2 + 2);
    v18 = *(v2 + 3);
    if (v19 >= v18 >> 1)
    {
      v2 = sub_1A93AC2AC((v18 > 1), v19 + 1, 1, v2);
    }

    *(v2 + 2) = v19 + 1;
    v20 = &v2[16 * v19];
    *(v20 + 4) = 1769105747;
    *(v20 + 5) = 0xE400000000000000;
  }

  if ((v1 & 0x40) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
    }

    v22 = *(v2 + 2);
    v21 = *(v2 + 3);
    if (v22 >= v21 >> 1)
    {
      v2 = sub_1A93AC2AC((v21 > 1), v22 + 1, 1, v2);
    }

    *(v2 + 2) = v22 + 1;
    v23 = &v2[16 * v22];
    *(v23 + 4) = 0x656C6C6174736E49;
    *(v23 + 5) = 0xE900000000000064;
    if ((v1 & 0x80) == 0)
    {
LABEL_39:
      if ((v1 & 0x1000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_58;
    }
  }

  else if ((v1 & 0x80) == 0)
  {
    goto LABEL_39;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_1A93AC2AC((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0x7974726150747331;
  *(v26 + 5) = 0xE800000000000000;
  if ((v1 & 0x1000) == 0)
  {
LABEL_40:
    if ((v1 & 0x2000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_63;
  }

LABEL_58:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_1A93AC2AC((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0x6D65747379532BLL;
  *(v29 + 5) = 0xE700000000000000;
  if ((v1 & 0x2000) == 0)
  {
LABEL_41:
    if ((v1 & 0x4000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_68;
  }

LABEL_63:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_1A93AC2AC((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  *(v32 + 4) = 0x6C617275654E2BLL;
  *(v32 + 5) = 0xE700000000000000;
  if ((v1 & 0x4000) == 0)
  {
LABEL_42:
    if ((v1 & 0x8000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_73;
  }

LABEL_68:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_1A93AC2AC((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 0x416C617275654E2BLL;
  *(v35 + 5) = 0xE900000000000058;
  if ((v1 & 0x8000) == 0)
  {
LABEL_43:
    if ((v1 & 0x10000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_78;
  }

LABEL_73:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_1A93AC2AC((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  *(v38 + 4) = 0x7269536D6572502BLL;
  *(v38 + 5) = 0xE900000000000069;
  if ((v1 & 0x10000) == 0)
  {
LABEL_44:
    if ((v1 & 0x20000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_83;
  }

LABEL_78:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_1A93AC2AC((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  *(v41 + 4) = 0x706D43727075532BLL;
  *(v41 + 5) = 0xEA00000000007463;
  if ((v1 & 0x20000) == 0)
  {
LABEL_45:
    if ((v1 & 0x40000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_88;
  }

LABEL_83:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v43 = *(v2 + 2);
  v42 = *(v2 + 3);
  if (v43 >= v42 >> 1)
  {
    v2 = sub_1A93AC2AC((v42 > 1), v43 + 1, 1, v2);
  }

  *(v2 + 2) = v43 + 1;
  v44 = &v2[16 * v43];
  *(v44 + 4) = 0x656C62612D4C44;
  *(v44 + 5) = 0xE700000000000000;
  if ((v1 & 0x40000) == 0)
  {
LABEL_46:
    if ((v1 & 0x200000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_93;
  }

LABEL_88:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v46 = *(v2 + 2);
  v45 = *(v2 + 3);
  if (v46 >= v45 >> 1)
  {
    v2 = sub_1A93AC2AC((v45 > 1), v46 + 1, 1, v2);
  }

  *(v2 + 2) = v46 + 1;
  v47 = &v2[16 * v46];
  *(v47 + 4) = 0x676E692D4C44;
  *(v47 + 5) = 0xE600000000000000;
  if ((v1 & 0x200000) != 0)
  {
LABEL_93:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1A93AC2AC(0, *(v2 + 2) + 1, 1, v2);
    }

    v49 = *(v2 + 2);
    v48 = *(v2 + 3);
    if (v49 >= v48 >> 1)
    {
      v2 = sub_1A93AC2AC((v48 > 1), v49 + 1, 1, v2);
    }

    *(v2 + 2) = v49 + 1;
    v50 = &v2[16 * v49];
    *(v50 + 4) = 0x6F4663696C627550;
    *(v50 + 5) = 0xEF6E656464696272;
  }

LABEL_98:
  sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
  sub_1A93B744C(&qword_1EB385F80, &qword_1EB386B68, &qword_1A9591620, MEMORY[0x1E69E6310]);
  v51 = sub_1A957C088();

  return v51;
}

uint64_t CoreSynthesizer.Voice.AssetIdentifier.loader.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CoreSynthesizer.Voice.AssetIdentifier.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1A9494858(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A94961EC();
  sub_1A957C438();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A94948DC(uint64_t a1, uint64_t a2)
{
  sub_1A94961EC();
  sub_1A957C438();
  sub_1A957C228();
}

uint64_t sub_1A9494954(uint64_t a1, uint64_t a2)
{
  sub_1A957D4F8();
  sub_1A94961EC();
  sub_1A957C438();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A94949D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1A948E20C(v5, v7) & 1;
}

uint64_t sub_1A9494AD0(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A9496198();
  sub_1A957C438();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9494B44(uint64_t a1, uint64_t a2)
{
  sub_1A9496198();
  sub_1A957C438();
  sub_1A957C228();
}

uint64_t sub_1A9494BB0(uint64_t a1, uint64_t a2)
{
  sub_1A957D4F8();
  sub_1A9496198();
  sub_1A957C438();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t AudioComponentDescription.hash(into:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  return sub_1A957D528();
}

uint64_t sub_1A9494CA0()
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9494D84(uint64_t a1)
{
  sub_1A957C228();
}

uint64_t sub_1A9494E54(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

unint64_t sub_1A9494F34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A9496A60(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1A9494F64(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0xEC00000072657275;
  v6 = 0x74636166756E616DLL;
  v7 = 0xE500000000000000;
  v8 = 0x7367616C66;
  if (v2 != 3)
  {
    v8 = 0x73614D7367616C66;
    v7 = 0xE90000000000006BLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65707974627573;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1A9495004()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x74636166756E616DLL;
  v4 = 0x7367616C66;
  if (v1 != 3)
  {
    v4 = 0x73614D7367616C66;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65707974627573;
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

unint64_t sub_1A94950A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9496A60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A94950C8(uint64_t a1)
{
  v2 = sub_1A9496CCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9495104(uint64_t a1)
{
  v2 = sub_1A9496CCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t AudioComponentDescription.init(from:)(void *a1)
{
  result = sub_1A9496AAC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t AudioComponentDescription.encode(to:)(void *a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v11[3] = a4;
  v6 = sub_1A937829C(&qword_1EB387B30, &qword_1A9591CF0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  sub_1A93780F4(a1, a1[3]);
  sub_1A9496CCC();
  sub_1A957D598();
  v16 = 0;
  sub_1A957D358();
  if (v4)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v15 = 1;
  sub_1A957D358();
  v14 = 2;
  sub_1A957D358();
  v13 = 3;
  sub_1A957D358();
  v12 = 4;
  sub_1A957D358();
  return (*(v7 + 8))(v9, v6);
}

uint64_t AudioComponentDescription.hashValue.getter(unint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1A957D4F8();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  return sub_1A957D548();
}

unint64_t sub_1A949542C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1A9496AAC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1A9495488()
{
  sub_1A957D4F8();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  return sub_1A957D548();
}

uint64_t sub_1A9495518()
{
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  return sub_1A957D528();
}

uint64_t sub_1A949557C(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  sub_1A957D528();
  return sub_1A957D548();
}

void sub_1A9495608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

BOOL _s12TextToSpeech15CoreSynthesizerC5VoiceV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[6];
  v86 = a1[5];
  v85 = *(a1 + 56);
  v84 = *(a1 + 57);
  v82 = a1[8];
  v79 = *(a1 + 11);
  v80 = *(a1 + 9);
  v78 = *(a1 + 13);
  v77 = *(a1 + 120);
  v72 = a1[17];
  v70 = a1[19];
  v68 = a1[20];
  v66 = *(a1 + 44);
  v67 = a1[21];
  v63 = *(a1 + 184);
  v48 = *(a1 + 47);
  v60 = *(a1 + 45);
  v61 = *(a1 + 192);
  v49 = *(a1 + 193);
  v54 = a1[26];
  v55 = a1[25];
  v56 = *(a1 + 27);
  v57 = a1[29];
  v43 = a1[30];
  v42 = a1[31];
  v44 = *(a1 + 16);
  v45 = a1[34];
  v75 = *(a2 + 88);
  v76 = *(a2 + 72);
  v74 = *(a2 + 104);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v83 = *(a2 + 57);
  v81 = *(a2 + 64);
  v73 = *(a2 + 120);
  v71 = *(a2 + 136);
  v69 = *(a2 + 152);
  v64 = *(a2 + 168);
  v65 = *(a2 + 160);
  v62 = *(a2 + 184);
  v58 = *(a2 + 180);
  v59 = *(a2 + 192);
  v46 = *(a2 + 188);
  v47 = *(a2 + 193);
  v50 = *(a2 + 200);
  v51 = *(a2 + 216);
  v52 = *(a2 + 232);
  v53 = *(a2 + 208);
  v38 = *(a2 + 248);
  v39 = *(a2 + 240);
  v40 = *(a2 + 256);
  v41 = *(a2 + 272);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1A957D3E8() & 1) == 0 || (sub_1A949017C(v2, v7) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8 || (v3 != v6 || v4 != v8) && (sub_1A957D3E8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if ((v86 != v9 || v5 != v10) && (sub_1A957D3E8() & 1) == 0 || (sub_1A948DEE4(v85, v11) & 1) == 0)
  {
    return 0;
  }

  v12 = 1701601645;
  if (v84)
  {
    if (v84 == 1)
    {
      v13 = 0xE600000000000000;
      v14 = 0x656C616D6566;
    }

    else
    {
      v14 = 0x6669636570736E75;
      v13 = 0xEB00000000646569;
    }
  }

  else
  {
    v13 = 0xE400000000000000;
    v14 = 1701601645;
  }

  if (v83)
  {
    if (v83 == 1)
    {
      v15 = 0xE600000000000000;
      v12 = 0x656C616D6566;
    }

    else
    {
      v12 = 0x6669636570736E75;
      v15 = 0xEB00000000646569;
    }
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  if (v14 == v12 && v13 == v15)
  {

    if (v82 != v81)
    {
      return 0;
    }

LABEL_32:
    v87 = v80;
    v88 = v79;
    v89 = v78;
    LOBYTE(v90) = v77;
    v98 = v76;
    v99 = v75;
    v100 = v74;
    v101 = v73;
    sub_1A93B17E8();
    sub_1A957C438();
    sub_1A957C438();
    if (v96 == v94 && v97 == v95)
    {
    }

    else
    {
      v18 = sub_1A957D3E8();

      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

    if ((sub_1A949017C(v72, v71) & 1) == 0)
    {
      return 0;
    }

    if ((sub_1A949017C(v70, v69) & 1) == 0)
    {
      return 0;
    }

    LOBYTE(v87) = 0;
    if (!sub_1A93C92B8(v68, v67, v66, v65, v64))
    {
      return 0;
    }

    if (v63)
    {
      if (!v62)
      {
        return 0;
      }
    }

    else
    {
      v19 = v62;
      if (v60 != v58)
      {
        v19 = 1;
      }

      if (v19)
      {
        return 0;
      }
    }

    if (v61)
    {
      if (!v59)
      {
        return 0;
      }
    }

    else
    {
      v20 = v59;
      if (v48 != v46)
      {
        v20 = 1;
      }

      if (v20)
      {
        return 0;
      }
    }

    LOBYTE(v96) = v49;
    LOBYTE(v94) = v47;
    sub_1A9496198();
    sub_1A957C438();
    sub_1A957C438();
    if (v87 == v98)
    {
    }

    else
    {
      v21 = sub_1A957D3E8();

      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    v22 = v54;
    if (v54)
    {
      v23 = v53;
      if (v53)
      {
        *&v87 = v55;
        *(&v87 + 1) = v54;
        v88 = v56;
        *&v89 = v57;
        *&v98 = v50;
        *(&v98 + 1) = v53;
        v99 = v51;
        *&v100 = v52;
        sub_1A9495608(v55, v54, v56, *(&v56 + 1));
        sub_1A9495608(v50, v53, v51, *(&v51 + 1));
        sub_1A94961EC();
        sub_1A957C438();
        sub_1A957C438();
        if (v96 != v94 || v97 != v95)
        {
          v32 = sub_1A957D3E8();
          sub_1A93B10AC(v50, v53, v51, *(&v51 + 1));

          sub_1A93B10AC(v55, v54, v56, *(&v56 + 1));
          if ((v32 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_65;
        }

        sub_1A93B10AC(v50, v53, v51, *(&v51 + 1));

        v24 = v54;
LABEL_64:
        sub_1A93B10AC(v55, v24, v56, *(&v56 + 1));
LABEL_65:
        v22 = v42;
        if (v42)
        {
          v23 = v38;
          if (v38)
          {
            *&v87 = v43;
            *(&v87 + 1) = v42;
            v88 = v44;
            *&v89 = v45;
            *&v98 = v39;
            *(&v98 + 1) = v38;
            v99 = v40;
            *&v100 = v41;
            sub_1A9495608(v43, v42, v44, *(&v44 + 1));
            sub_1A9495608(v39, v38, v40, *(&v40 + 1));
            sub_1A94961EC();
            sub_1A957C438();
            sub_1A957C438();
            if (v96 == v94 && v97 == v95)
            {
              sub_1A93B10AC(v39, v38, v40, *(&v40 + 1));

              v34 = v42;
              v33 = v43;
              v36 = *(&v44 + 1);
              v35 = v44;
LABEL_78:
              sub_1A93B10AC(v33, v34, v35, v36);
              return 1;
            }

            v37 = sub_1A957D3E8();
            sub_1A93B10AC(v39, v38, v40, *(&v40 + 1));

            sub_1A93B10AC(v43, v42, v44, *(&v44 + 1));
            return (v37 & 1) != 0;
          }
        }

        else
        {
          v23 = v38;
          if (!v38)
          {
            sub_1A9495608(v43, 0, v44, *(&v44 + 1));
            sub_1A9495608(v39, 0, v40, *(&v40 + 1));
            v33 = v43;
            v34 = 0;
            v36 = *(&v44 + 1);
            v35 = v44;
            goto LABEL_78;
          }
        }

        v25 = v43;
        v26 = v44;
        *&v87 = v43;
        *(&v87 + 1) = v42;
        v27 = *(&v44 + 1);
        v88 = v44;
        v29 = v39;
        v28 = v40;
        *&v89 = v45;
        *(&v89 + 1) = v39;
        v90 = v23;
        v31 = *(&v40 + 1);
        v91 = v40;
        v30 = v41;
LABEL_72:
        v92 = v31;
        v93 = v30;
        sub_1A9495608(v25, v22, v26, v27);
        sub_1A9495608(v29, v23, v28, v31);
        sub_1A937B960(&v87, &qword_1EB387B68, &qword_1A9592D90);
        return 0;
      }
    }

    else
    {
      v23 = v53;
      if (!v53)
      {
        sub_1A9495608(v55, 0, v56, *(&v56 + 1));
        sub_1A9495608(v50, 0, v51, *(&v51 + 1));
        v24 = 0;
        goto LABEL_64;
      }
    }

    v25 = v55;
    v26 = v56;
    *&v87 = v55;
    *(&v87 + 1) = v54;
    v27 = *(&v56 + 1);
    v88 = v56;
    v29 = v50;
    v28 = v51;
    *&v89 = v57;
    *(&v89 + 1) = v50;
    v90 = v23;
    v31 = *(&v51 + 1);
    v91 = v51;
    v30 = v52;
    goto LABEL_72;
  }

  v16 = sub_1A957D3E8();

  result = 0;
  if ((v16 & 1) != 0 && v82 == v81)
  {
    goto LABEL_32;
  }

  return result;
}

unint64_t sub_1A9495EE4()
{
  result = qword_1EB390C20;
  if (!qword_1EB390C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB390C20);
  }

  return result;
}

unint64_t sub_1A9495F38()
{
  result = qword_1EB3860D0;
  if (!qword_1EB3860D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3860D0);
  }

  return result;
}

unint64_t sub_1A9495F8C()
{
  result = qword_1EB3860D8;
  if (!qword_1EB3860D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3860D8);
  }

  return result;
}

unint64_t sub_1A9495FE0()
{
  result = qword_1EB3860F0;
  if (!qword_1EB3860F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3860F0);
  }

  return result;
}

uint64_t sub_1A9496034(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB387B10, &qword_1A9591CD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for AudioComponentDescription()
{
  if (!qword_1EB386380)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB386380);
    }
  }
}

unint64_t sub_1A94960F0()
{
  result = qword_1EB3860E0;
  if (!qword_1EB3860E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3860E0);
  }

  return result;
}

unint64_t sub_1A9496144()
{
  result = qword_1EB3860E8;
  if (!qword_1EB3860E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3860E8);
  }

  return result;
}

unint64_t sub_1A9496198()
{
  result = qword_1EB386408;
  if (!qword_1EB386408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386408);
  }

  return result;
}

unint64_t sub_1A94961EC()
{
  result = qword_1EB386410;
  if (!qword_1EB386410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386410);
  }

  return result;
}

unint64_t sub_1A9496240()
{
  result = qword_1EB3862F0;
  if (!qword_1EB3862F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3862F0);
  }

  return result;
}

unint64_t sub_1A9496294()
{
  result = qword_1EB3862F8;
  if (!qword_1EB3862F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3862F8);
  }

  return result;
}

unint64_t sub_1A94962E8()
{
  result = qword_1EB386318;
  if (!qword_1EB386318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386318);
  }

  return result;
}

unint64_t sub_1A949633C()
{
  result = qword_1EB386308;
  if (!qword_1EB386308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386308);
  }

  return result;
}

unint64_t sub_1A9496390()
{
  result = qword_1EB386310;
  if (!qword_1EB386310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386310);
  }

  return result;
}

unint64_t sub_1A94963E4()
{
  result = qword_1EB39DE48[0];
  if (!qword_1EB39DE48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39DE48);
  }

  return result;
}

uint64_t sub_1A9496438(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A95C3A60 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A95C3770 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7974696C617571 && a2 == 0xE700000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7265646E6567 && a2 == 0xE600000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737469617274 && a2 == 0xE600000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7972616D6972705FLL && a2 == 0xEF73656C61636F4CLL || (sub_1A957D3E8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A95C3A80 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A95C3AA0 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A95C37F0 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x657A69536B736964 && a2 == 0xED00007365747942 || (sub_1A957D3E8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x64497465737361 && a2 == 0xE700000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x737341726577656ELL && a2 == 0xEC00000064497465)
  {

    return 15;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_1A9496934(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656449776172 && a2 == 0xED00007265696669;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A95C3AC0 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A95C3AE0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A957D3E8();

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

unint64_t sub_1A9496A60(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A957D158();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1A9496AAC(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB387B60, &unk_1A9592D80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  sub_1A93780F4(a1, a1[3]);
  sub_1A9496CCC();
  sub_1A957D588();
  if (v1)
  {
    return sub_1A9378138(a1);
  }

  v16 = 0;
  v7 = sub_1A957D258();
  v15 = 1;
  v8 = sub_1A957D258();
  v14 = 2;
  v11 = sub_1A957D258();
  v13 = 3;
  v10 = sub_1A957D258();
  v12 = 4;
  sub_1A957D258();
  (*(v4 + 8))(v6, v3);
  sub_1A9378138(a1);
  return v7 | (v8 << 32);
}

unint64_t sub_1A9496CCC()
{
  result = qword_1EB3863A0;
  if (!qword_1EB3863A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3863A0);
  }

  return result;
}

unint64_t sub_1A9496D28()
{
  result = qword_1EB387B38;
  if (!qword_1EB387B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387B38);
  }

  return result;
}

unint64_t sub_1A9496D80()
{
  result = qword_1EB387B40;
  if (!qword_1EB387B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387B40);
  }

  return result;
}

unint64_t sub_1A9496DE0()
{
  result = qword_1ED96FD60;
  if (!qword_1ED96FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FD60);
  }

  return result;
}

unint64_t sub_1A9496E44()
{
  result = qword_1ED96FFE8;
  if (!qword_1ED96FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FFE8);
  }

  return result;
}

unint64_t sub_1A9496E9C()
{
  result = qword_1EB387B48;
  if (!qword_1EB387B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387B48);
  }

  return result;
}

unint64_t sub_1A9496EF4()
{
  result = qword_1EB387B50;
  if (!qword_1EB387B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387B50);
  }

  return result;
}

unint64_t sub_1A9496F4C()
{
  result = qword_1EB387B58;
  if (!qword_1EB387B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387B58);
  }

  return result;
}

unint64_t sub_1A9496FA4()
{
  result = qword_1EB386390;
  if (!qword_1EB386390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386390);
  }

  return result;
}

unint64_t sub_1A9496FFC()
{
  result = qword_1EB386398;
  if (!qword_1EB386398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386398);
  }

  return result;
}

uint64_t sub_1A9497084(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioComponentDescription();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A94970D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
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

uint64_t sub_1A9497118(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A94971C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1A9497208(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A9497264(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1A94972AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A9497300(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1A9497368(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1A94973B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s5VoiceV5StateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t _s5VoiceV5StateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1A9497574(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1A9497590(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

__n128 sub_1A94975D8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A94975EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A949760C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

unint64_t sub_1A949764C()
{
  result = qword_1EB39E850[0];
  if (!qword_1EB39E850[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39E850);
  }

  return result;
}

unint64_t sub_1A94976A4()
{
  result = qword_1EB39EA60[0];
  if (!qword_1EB39EA60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39EA60);
  }

  return result;
}

unint64_t sub_1A94976FC()
{
  result = qword_1EB39EB70;
  if (!qword_1EB39EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39EB70);
  }

  return result;
}

unint64_t sub_1A9497754()
{
  result = qword_1EB39EB78;
  if (!qword_1EB39EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39EB78);
  }

  return result;
}

unint64_t sub_1A94977AC()
{
  result = qword_1EB390C10;
  if (!qword_1EB390C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB390C10);
  }

  return result;
}

unint64_t sub_1A9497804()
{
  result = qword_1EB390C18;
  if (!qword_1EB390C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB390C18);
  }

  return result;
}

unint64_t sub_1A9497858()
{
  result = qword_1EB3863F0;
  if (!qword_1EB3863F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3863F0);
  }

  return result;
}

uint64_t sub_1A94978CC()
{
  v0 = sub_1A957AE58();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v10 - v6;
  sub_1A9377618(v5, qword_1EB3A7C60);
  sub_1A937731C(v0, qword_1EB3A7C60);
  sub_1A957AE38();
  sub_1A957AE18();
  sub_1A957AE28();
  v8 = *(v1 + 8);
  v8(v4, v0);
  return (v8)(v7, v0);
}

uint64_t CoreSynthesizer.Substitution.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A957B0B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CoreSynthesizer.Substitution.identifier.setter(uint64_t a1)
{
  v3 = sub_1A957B0B8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1A9497B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for CoreSynthesizer.Substitution.Context(0);
  result = sub_1A9497B74(a3, a6 + *(v10 + 20));
  v12 = (a6 + *(v10 + 24));
  *v12 = a4;
  v12[1] = a5;
  return result;
}

uint64_t sub_1A9497B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9497BE4(uint64_t *a1)
{
  v3 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v38[-v4];
  v6 = sub_1A957B308();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v38[-v12];
  v14 = *v1;
  v15 = *v1 >> 61;
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v22 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1EEE9AC00](v11);
      *&v38[-16] = a1;

      v17 = sub_1A949806C(sub_1A949B204, &v38[-32], v22);
      goto LABEL_16;
    }

    if (v15 == 3)
    {
      v16 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1EEE9AC00](v11);
      *&v38[-16] = a1;

      v17 = sub_1A949820C(sub_1A94981C4, &v38[-32], v16);
LABEL_16:
      v21 = v17;

      return v21 & 1;
    }

LABEL_14:
    v21 = 1;
    return v21 & 1;
  }

  if (v15)
  {
    v23 = sub_1A937829C(&qword_1EB387B70, &qword_1A9592D98);
    v24 = swift_projectBox();
    v25 = *(v24 + *(v23 + 48));
    (*(v7 + 16))(v13, v24, v6);
    v26 = type metadata accessor for CoreSynthesizer.Substitution.Context(0);
    sub_1A93B5960(a1 + *(v26 + 20), v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      (*(v7 + 8))(v13, v6);
      sub_1A9498364(v5);
      goto LABEL_30;
    }

    (*(v7 + 32))(v10, v5, v6);

    v27 = sub_1A957B1A8();
    v29 = v28;
    if (v27 == sub_1A957B1A8() && v29 == v30)
    {
    }

    else
    {
      v32 = sub_1A957D3E8();

      if ((v32 & 1) == 0)
      {
LABEL_29:

        v36 = *(v7 + 8);
        v36(v10, v6);
        v36(v13, v6);
        goto LABEL_30;
      }
    }

    if (!v25)
    {
      v37 = *(v7 + 8);
      v37(v10, v6);
      v37(v13, v6);
      v21 = 1;
      return v21 & 1;
    }

    v33 = (a1 + *(v26 + 24));
    v34 = v33[1];
    if (v34)
    {
      v21 = sub_1A93A8204(*v33, v34, v25);

      v35 = *(v7 + 8);
      v35(v10, v6);
      v35(v13, v6);
      return v21 & 1;
    }

    goto LABEL_29;
  }

  v18 = a1[1];
  if (!v18)
  {
LABEL_30:
    v21 = 0;
    return v21 & 1;
  }

  if (*a1 == *(v14 + 16) && v18 == *(v14 + 24))
  {
    goto LABEL_14;
  }

  return sub_1A957D3E8();
}

uint64_t sub_1A949806C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v17 = *(*(a3 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v8)))));

      v13 = a1(&v17);
      if (v3)
      {

        return v15 & 1;
      }

      v14 = v13;

      if ((v14 & 1) == 0)
      {
        break;
      }

      v8 &= v8 - 1;
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v15 = 0;
    return v15 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        v15 = 1;
        return v15 & 1;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A949820C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v17 = *(*(a3 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v8)))));

      v13 = a1(&v17);
      if (v3)
      {

        return v15 & 1;
      }

      v14 = v13;

      if (v14)
      {
        break;
      }

      v8 &= v8 - 1;
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v15 = 1;
    return v15 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        v15 = 0;
        return v15 & 1;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A9498364(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A94983D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A957B308();
  v5 = MEMORY[0x1EEE9AC00](v4);
  result = MEMORY[0x1EEE9AC00](v5);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v58 = &v49 - v8;
  v59 = v9;
  v10 = 0;
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v16 = a2 + 56;
  v53 = (v7 + 8);
  v54 = (v7 + 16);
  v51 = a1;
  v56 = a2;
  v50 = a1 + 56;
  v49 = v15;
  v55 = a2 + 56;
  if (!v14)
  {
    goto LABEL_8;
  }

  do
  {
    v17 = __clz(__rbit64(v14));
    v52 = (v14 - 1) & v14;
LABEL_13:
    v20 = *(*(a1 + 48) + 8 * (v17 | (v10 << 6)));
    v65 = v20;
    sub_1A957D4F8();
    v61 = v20;

    CoreSynthesizer.Substitution.Scope.hash(into:)(v64);
    v21 = sub_1A957D548();
    v22 = -1 << *(a2 + 32);
    v23 = v20 & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v21 & ~v22;
    if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
LABEL_55:

      return 0;
    }

    v63 = ~v22;
    v62 = v61 & 0xE000000000000000;
    v60 = v20 & 0x1FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v26 = *(*(a2 + 48) + 8 * v24);
      v27 = v26 >> 61;
      if ((v26 >> 61) <= 1)
      {
        break;
      }

      if (v27 == 2)
      {
        v28 = 0x4000000000000000;
      }

      else
      {
        if (v27 != 3)
        {
          if (v61 == 0x8000000000000000)
          {
            goto LABEL_47;
          }

LABEL_34:

          goto LABEL_16;
        }

        v28 = 0x6000000000000000;
      }

      if (v62 == v28)
      {
        v30 = v23;
        v31 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v32 = *(v30 + 16);
        swift_retain_n();

        LOBYTE(v31) = sub_1A94983D0(v31, v32);

        if (v31)
        {
          goto LABEL_45;
        }

        v23 = v30;
      }

LABEL_16:
      v24 = (v24 + 1) & v63;
      if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    if (!v27)
    {
      if (!(v61 >> 61))
      {
        if (*(v26 + 16) == *(v61 + 16) && *(v26 + 24) == *(v61 + 24))
        {

LABEL_47:

LABEL_48:

LABEL_49:
          a1 = v51;
          v11 = v50;
          v15 = v49;
          goto LABEL_50;
        }

        if (sub_1A957D3E8())
        {
          goto LABEL_48;
        }
      }

      goto LABEL_16;
    }

    v33 = sub_1A937829C(&qword_1EB387B70, &qword_1A9592D98);
    v34 = swift_projectBox();
    if (v62 != 0x2000000000000000)
    {
      goto LABEL_16;
    }

    v35 = v34;
    v36 = v4;
    v37 = *(v33 + 48);
    v57 = *(v34 + v37);
    v38 = swift_projectBox();
    v39 = *(v38 + v37);
    v40 = *v54;
    v41 = v58;
    (*v54)(v58, v35, v36);
    v42 = v59;
    v40(v59, v38, v36);

    swift_retain_n();

    if ((MEMORY[0x1AC5840A0](v41, v42) & 1) == 0)
    {

      v25 = *v53;
      (*v53)(v42, v36);
      v25(v41, v36);
      v23 = v60;

      v4 = v36;
      v16 = v55;
      a2 = v56;
      goto LABEL_16;
    }

    v43 = v36;
    v44 = v57;
    if (v57)
    {
      v16 = v55;
      if (!v39)
      {

        v48 = *v53;
        v4 = v43;
        (*v53)(v59, v43);
        v48(v58, v43);
        v23 = v60;

        goto LABEL_44;
      }

      v45 = sub_1A9454870(v44, v39);

      swift_bridgeObjectRelease_n();
      v46 = *v53;
      v4 = v43;
      (*v53)(v59, v43);
      v46(v58, v43);
      a2 = v56;
      if (v45)
      {
LABEL_45:

        goto LABEL_49;
      }

      v23 = v60;

      goto LABEL_34;
    }

    v47 = *v53;
    (*v53)(v59, v43);
    v47(v58, v43);
    v16 = v55;
    if (v39)
    {
      v23 = v60;

      swift_bridgeObjectRelease_n();
      v4 = v43;
LABEL_44:
      a2 = v56;
      goto LABEL_16;
    }

    a1 = v51;
    v4 = v43;
    a2 = v56;
    v11 = v50;
    v15 = v49;
LABEL_50:
    v14 = v52;
  }

  while (v52);
LABEL_8:
  v18 = v10;
  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      return 1;
    }

    v19 = *(v11 + 8 * v10);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v52 = (v19 - 1) & v19;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t CoreSynthesizer.Substitution.Scope.hash(into:)(__int128 *a1)
{
  v3 = sub_1A957B308();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 >> 61;
  if (v8 <= 1)
  {
    if (v8)
    {
      v12 = sub_1A937829C(&qword_1EB387B70, &qword_1A9592D98);
      v13 = swift_projectBox();
      v14 = *(v13 + *(v12 + 48));
      (*(v4 + 16))(v6, v13, v3);
      MEMORY[0x1AC5863C0](2);
      sub_1A949AA90();

      sub_1A957C068();
      sub_1A957D518();
      if (v14)
      {
        sub_1A9457590(a1, v14);
      }

      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      MEMORY[0x1AC5863C0](1);

      return sub_1A957C228();
    }
  }

  else
  {
    if (v8 == 2)
    {
      v9 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = 3;
    }

    else
    {
      if (v8 != 3)
      {
        return MEMORY[0x1AC5863C0](0);
      }

      v9 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = 4;
    }

    MEMORY[0x1AC5863C0](v10);

    sub_1A949A008(a1, v9);
  }
}

uint64_t CoreSynthesizer.Substitution.Scope.hashValue.getter()
{
  v3 = *v0;
  sub_1A957D4F8();
  CoreSynthesizer.Substitution.Scope.hash(into:)(v2);
  return sub_1A957D548();
}

uint64_t sub_1A9498D20()
{
  v3 = *v0;
  sub_1A957D4F8();
  CoreSynthesizer.Substitution.Scope.hash(into:)(v2);
  return sub_1A957D548();
}

uint64_t sub_1A9498D70(uint64_t a1)
{
  v4 = *v1;
  sub_1A957D4F8();
  CoreSynthesizer.Substitution.Scope.hash(into:)(v3);
  return sub_1A957D548();
}

uint64_t CoreSynthesizer.Substitution.search.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CoreSynthesizer.Substitution(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(v3 + 16);

  return sub_1A9327228(v4, v5);
}

uint64_t CoreSynthesizer.Substitution.search.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for CoreSynthesizer.Substitution(0) + 20);
  result = sub_1A9328CAC(*v5, *(v5 + 8));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t CoreSynthesizer.Substitution.replacement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CoreSynthesizer.Substitution(0) + 24);

  return sub_1A944A98C(v3, a1);
}

uint64_t CoreSynthesizer.Substitution.replacement.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CoreSynthesizer.Substitution(0) + 24);

  return sub_1A949AB08(a1, v3);
}

__n128 CoreSynthesizer.Substitution.init(replacing:with:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  sub_1A957B0A8();
  v8 = type metadata accessor for CoreSynthesizer.Substitution(0);
  v9 = a3 + *(v8 + 20);
  *v9 = v5;
  *(v9 + 8) = v6;
  *(v9 + 16) = v7;
  v10 = a3 + *(v8 + 24);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  result = *(a2 + 25);
  *(v10 + 25) = result;
  return result;
}

uint64_t CoreSynthesizer.Substitution.init(search:ipa:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 < 0)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {

    v10 = v8;
    v11 = v7;
  }

  sub_1A9327184(&v17);
  v16 = v17;
  v12 = swift_allocObject();
  TTSMarkup.Phoneme.init(alphabet:phonemes:orthography:)(&v16, a2, a3, v10, v11, v12 + 16);
  v18 = 0;
  sub_1A957B0A8();
  result = type metadata accessor for CoreSynthesizer.Substitution(0);
  v14 = a4 + *(result + 20);
  *v14 = v8;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  v15 = a4 + *(result + 24);
  *v15 = v12;
  *(v15 + 24) = &type metadata for TTSMarkup.Phoneme;
  *(v15 + 32) = &protocol witness table for TTSMarkup.Phoneme;
  *(v15 + 40) = v18;
  return result;
}

uint64_t CoreSynthesizer.Substitution.regex(forLocale:)(uint64_t a1)
{
  v3 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_1A957B308();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1 + *(type metadata accessor for CoreSynthesizer.Substitution(0) + 20);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  if (v13 < 0)
  {

    return v11;
  }

  v32 = a1;
  v33 = v7;
  if (v13)
  {
    v14 = 47;
  }

  else
  {
    v14 = 26927;
  }

  v15 = 0xE200000000000000;
  if (v13)
  {
    v15 = 0xE100000000000000;
  }

  v34 = v14;
  v35 = v15;
  if ((sub_1A9499588(v11, v12) & 0x100000000) == 0 && (sub_1A94996D4(v11, v12) & 0x100000000) == 0)
  {
    v16 = objc_opt_self();

    v17 = sub_1A957C0C8();
    sub_1A9328CAC(v11, v12);
    v18 = [v16 escapedPatternForString_];

    v19 = sub_1A957C0F8();
    v21 = v20;

    if (qword_1EB39EC00 != -1)
    {
      swift_once();
    }

    v22 = sub_1A957AE58();
    sub_1A937731C(v22, qword_1EB3A7C60);
    v23 = sub_1A957AE48();
    v24 = v32;
    v25 = v33;
    if (v23)
    {
      v26 = 1;
    }

    else
    {
      v26 = sub_1A957AE48();
    }

    sub_1A93B5960(v24, v5);
    if ((*(v25 + 48))(v5, 1, v6) == 1)
    {
      sub_1A9498364(v5);
      if (v26)
      {
LABEL_17:
        v36 = 0;
        v37 = 0xE000000000000000;
        sub_1A957CF08();

        v36 = 0x7C735C3D3C3F282FLL;
        v37 = 0xEA0000000000295ELL;
        MEMORY[0x1AC585140](v19, v21);

        v27 = 0x29247C735C3D3F28;
        v28 = 0xE800000000000000;
LABEL_23:
        MEMORY[0x1AC585140](v27, v28);
        MEMORY[0x1AC585140](v34, v35);

        return v36;
      }

LABEL_22:
      v36 = 6446127;
      v37 = 0xE300000000000000;
      MEMORY[0x1AC585140](v19, v21);

      v27 = 25180;
      v28 = 0xE200000000000000;
      goto LABEL_23;
    }

    (*(v25 + 32))(v9, v5, v6);
    sub_1A957B118();
    v29 = sub_1A957C348();

    if ((v29 & 1) == 0)
    {
      sub_1A957B118();
      v30 = sub_1A957C348();

      if ((v30 & 1) == 0)
      {
        (*(v25 + 8))(v9, v6);
        if (v26)
        {
          goto LABEL_17;
        }

        goto LABEL_22;
      }
    }

    v36 = 47;
    v37 = 0xE100000000000000;
    MEMORY[0x1AC585140](v19, v21);

    MEMORY[0x1AC585140](v34, v35);

    v11 = v36;
    (*(v25 + 8))(v9, v6);
    return v11;
  }

  result = sub_1A957D0A8();
  __break(1u);
  return result;
}

unint64_t sub_1A9499588(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1A949A3A8(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_1A957CEF8();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1A957CF68();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

unint64_t sub_1A94996D4(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    v11 = 0;
    goto LABEL_35;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = sub_1A949A5C8(v5 | (v2 << 16), a1, a2);
  if (v6 < 0x4000)
  {
    __break(1u);
    goto LABEL_37;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_37:
    v25 = sub_1A957C208();
    sub_1A949A3A8(v25, a1, a2);
    v11 = sub_1A957CEF8();
    goto LABEL_35;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v27 = a1;
    v28 = a2 & 0xFFFFFFFFFFFFFFLL;
    v12 = &v27 + (v6 >> 16);
    if ((*(v12 - 1) & 0xC0) == 0x80)
    {
      v9 = -2;
      do
      {
        v13 = v12[v9--] & 0xC0;
      }

      while (v13 == 128);
      goto LABEL_20;
    }

LABEL_21:
    v14 = -1;
    goto LABEL_22;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v26 = v6;
    v7 = sub_1A957CF68();
    v6 = v26;
  }

  v8 = v7 + (v6 >> 16);
  if ((*(v8 - 1) & 0xC0) != 0x80)
  {
    goto LABEL_21;
  }

  v9 = -2;
  do
  {
    v10 = *(v8 + v9--) & 0xC0;
  }

  while (v10 == 128);
LABEL_20:
  v14 = v9 + 1;
LABEL_22:
  v15 = sub_1A949A3A8((v6 + (v14 << 16)) & 0xFFFFFFFFFFFF0000 | 5, a1, a2) >> 16;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v27 = a1;
    v28 = a2 & 0xFFFFFFFFFFFFFFLL;
    v17 = &v27 + v15;
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v16 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v16 = sub_1A957CF68();
    }

    v17 = (v16 + v15);
  }

  v11 = *v17;
  if (*v17 < 0)
  {
    v18 = (__clz(v11 ^ 0xFF) - 24);
    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = v17[1];
        v20 = v17[2];
        v21 = ((v11 & 0xF) << 12) | ((v19 & 0x3F) << 6);
      }

      else
      {
        v22 = v17[1];
        v23 = v17[2];
        v20 = v17[3];
        v21 = ((v11 & 0xF) << 18) | ((v22 & 0x3F) << 12) | ((v23 & 0x3F) << 6);
      }

      v11 = v21 & 0xFFFFFFC0 | v20 & 0x3F;
    }

    else if (v18 != 1)
    {
      v11 = v17[1] & 0x3F | ((v11 & 0x1F) << 6);
    }
  }

LABEL_35:
  LOBYTE(v27) = v2 == 0;
  return v11 | ((v2 == 0) << 32);
}

uint64_t sub_1A9499974(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1A9499E30(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for CoreSynthesizer.Substitution(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A9499AA0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v5 = v4;
  v7 = a1;
  v8 = a4 + 64;
  v9 = 1 << *(a4 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a4 + 64);
  v12 = (v9 + 63) >> 6;

  v19 = a4;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = (v15 << 9) | (8 * __clz(__rbit64(v11)));
      v17 = *(*(v19 + 56) + v16);
      v21[0] = *(*(v19 + 48) + v16);
      v21[1] = v17;

      a2(&v20, &v22, v21);
      if (v5)
      {
        break;
      }

      v11 &= v11 - 1;

      v7 = v20;
      v22 = v20;
      v14 = v15;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return v7;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        goto LABEL_11;
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A9499C2C(uint64_t a1, unint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_1A957C2B8();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v5;
  v11[4] = sub_1A949ABE8;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A9499DC8;
  v11[3] = &unk_1F1CED7C0;
  v8 = _Block_copy(v11);

  [v2 enumerateMatchesInCString:sub_1A957C1C8() + 32 length:v6 usingBlock:v8];

  _Block_release(v8);
  swift_beginAccess();
  v9 = *(v5 + 16);

  return v9;
}

void sub_1A9499DC8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void *sub_1A9499E30(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(&qword_1EB387B78, &qword_1A9593008);
  v10 = *(type metadata accessor for CoreSynthesizer.Substitution(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for CoreSynthesizer.Substitution(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1A949A008(__int128 *a1, uint64_t a2)
{
  v36 = sub_1A957B308();
  v4 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[3];
  *&v39[13] = a1[2];
  *&v39[15] = v6;
  v39[17] = *(a1 + 8);
  v8 = *a1;
  v7 = a1[1];
  v34 = a1;
  *&v39[9] = v8;
  *&v39[11] = v7;
  v9 = sub_1A957D548();
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v33 = (v4 + 16);
  v32 = (v4 + 8);
  v15 = v9;

  v17 = 0;
  v18 = 0;
  v38 = a2;
  while (v13)
  {
LABEL_12:
    v25 = *(*(a2 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v13)))));
    sub_1A957D4F8();
    v26 = v25 >> 61;
    if ((v25 >> 61) <= 1)
    {
      v37 = v17;
      if (v26)
      {
        v31 = v15;
        v27 = sub_1A937829C(&qword_1EB387B70, &qword_1A9592D98);
        v28 = swift_projectBox();
        v29 = *(v28 + *(v27 + 48));
        (*v33)(v35, v28, v36);
        MEMORY[0x1AC5863C0](2);
        sub_1A949AA90();

        sub_1A957C068();
        sub_1A957D518();
        if (v29)
        {
          sub_1A9457590(v39, v29);
        }

        v17 = v37;
        (*v32)(v35, v36);
        a2 = v38;
        v15 = v31;
      }

      else
      {
        MEMORY[0x1AC5863C0](1);

        sub_1A957C228();
        v17 = v37;
      }
    }

    else
    {
      if (v26 == 2)
      {
        v19 = v15;
        v20 = v17;
        v21 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v22 = 3;
LABEL_5:
        MEMORY[0x1AC5863C0](v22);
        v17 = v20;
        v15 = v19;
        a2 = v38;

        sub_1A949A008(v39, v21);

        goto LABEL_6;
      }

      if (v26 == 3)
      {
        v19 = v15;
        v20 = v17;
        v21 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v22 = 4;
        goto LABEL_5;
      }

      MEMORY[0x1AC5863C0](0);
    }

LABEL_6:
    v13 &= v13 - 1;
    v23 = sub_1A957D548();

    v17 ^= v23;
  }

  while (1)
  {
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v24 >= v14)
    {

      return MEMORY[0x1AC5863C0](v17);
    }

    v13 = *(v10 + 8 * v24);
    ++v18;
    if (v13)
    {
      v18 = v24;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}