uint64_t sub_1AFD3D69C(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v247 = a8;
  v266 = a7;
  v261 = a5;
  v262 = a6;
  v250 = a4;
  v249 = a3;
  v232 = a13;
  v231 = a12;
  v252 = a11;
  v246 = a10;
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v222 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v222 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v245 = &v222 - v23;
  v264 = type metadata accessor for ScriptIndex(0);
  v24 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v264);
  v26 = &v222 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v222 - v28);
  MEMORY[0x1EEE9AC00](v30);
  v239 = (&v222 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v255 = &v222 - v33;
  v34 = a1[1];
  v242 = sub_1AF706D00(v34, a1);
  v230 = sub_1AF7064D0(v34, a1);
  v260 = v34;
  result = sub_1AF7069F4(v34, a1);
  v241 = result;
  v224 = v13;
  v36 = a1[11];
  v243 = a2;
  v267 = v21;
  v238 = v36;
  if (!v36)
  {
    v239 = v26;
    v131 = a1[6];
    v238 = a1[7];
    if (v131 == v238)
    {
      return result;
    }

    v132 = v18;
    v248 = type metadata accessor for MetalFunctionScript(0);
    v237 = *(*(v248 - 8) + 72);
    sub_1AFD53F14(0, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
    v234 = v133;
    v233 = *(*(v133 - 1) + 72);
    sub_1AFD53F14(0, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
    v236 = v134;
    v235 = *(*(v134 - 1) + 72);
    v135 = (v24 + 48);
    v257 = (v24 + 56);
    v229 = "nction for script ";
    v228 = "tal library for script ";
    v226 = 0x80000001AFF4F110;
    v227 = 0x80000001AFF4F1B0;
    v245 = v18;
    v256 = v29;
    v244 = v24 + 48;
    while (1)
    {
      v251 = v241 + v235 * v131;
      sub_1AFD53C4C(v251, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);

      v145 = sub_1AF6496EC(v131);

      if (*(a2 + 16) && (v146 = sub_1AF449D3C(v145), (v147 & 1) != 0))
      {
        v148 = (*(a2 + 56) + 8 * v146);
        v150 = *v148;
        v149 = v148[1];
      }

      else
      {

        v151 = sub_1AF6496EC(v131);

        v150 = v151;
        v149 = HIDWORD(v151);
      }

      *&v265 = v149;
      v152 = &v242[v237 * v131];
      sub_1AFB12858(v152 + *(v248 + 24), v132);
      v153 = *v135;
      v154 = (*v135)(v132, 1, v264);
      v255 = v131;
      if (v154 == 1)
      {

        v155 = sub_1AF6496EC(v131);
        v156 = v245;

        v157 = v256;
        *v256 = v155;
        v158 = v264;
        swift_storeEnumTagMultiPayload();
        if (v153(v156, 1, v158) != 1)
        {
          sub_1AFD53CA8(v156, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        v157 = v256;
        sub_1AFD53D8C(v132, v256, type metadata accessor for ScriptIndex);
      }

      v159 = v239;
      sub_1AFD531F8(v157, v239, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v159, type metadata accessor for ScriptIndex);
        v161 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        *&v160 = *v159;
        v162 = *(a2 + 16);
        v263 = v160;
        if (v162)
        {
          v163 = sub_1AF449D3C(v160);
          v161 = MEMORY[0x1E69E7CC0];
          if (v165)
          {
            *&v164 = *(*(a2 + 56) + 8 * v163);
            v263 = v164;
          }
        }

        else
        {
          v161 = MEMORY[0x1E69E7CC0];
        }

        sub_1AFD53198(v157, type metadata accessor for ScriptIndex);
        *v157 = v263;
        swift_storeEnumTagMultiPayload();
      }

      v166 = v251;
      sub_1AFD531F8(v152, v251, type metadata accessor for MetalFunctionScript);
      v168 = sub_1AFAA98A4(v167);
      v169 = v236;
      v170 = v166 + v236[9];
      *v170 = v168;
      *(v170 + 8) = 0;
      v171 = v169[10];
      v259 = 1;
      *(v166 + v171) = 1;
      *(v166 + v169[11]) = 0;
      v172 = v166 + v169[12];
      strcpy(v172, "<precompiled>");
      *(v172 + 14) = -4864;
      *(v166 + v169[13]) = v161;
      v273 = MEMORY[0x1E69E7CD0];
      v173 = *(v152 + 16);
      if (v173 < 4)
      {
        v259 = sub_1AFDFEE28();
      }

      v174 = sub_1AFAA9A50(v249, v250 & 1);
      v175 = *(v174 + 16);
      if (v175)
      {
        break;
      }

      v136 = 0;
      v137 = v161;
      v138 = v161;
LABEL_74:
      v139 = v255;
      v140 = &v230[v233 * v255];
      sub_1AFD53C4C(v140, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v251, v140, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
      v141 = v234;
      *(v140 + v234[15]) = 0;
      *(v140 + v141[9]) = v136;
      *(v140 + v141[10]) = v138;
      *(v140 + v141[11]) = v137;
      *(v140 + v141[12]) = 0;
      *(v140 + v141[13]) = 0;
      v142 = v140 + v141[14];
      *v142 = v249;
      *(v142 + 8) = v250 & 1;

      v143 = sub_1AF6496EC(v139);

      v270 = v141;
      v271 = &off_1F2558F90;
      v144 = sub_1AF585714(&v268);
      sub_1AFD53D18(v140, v144, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
      v272 = 0;
      sub_1AF8259D0(&v268, v248, v143);
      sub_1AF967B70(v273);
      result = sub_1AFD53198(v256, type metadata accessor for ScriptIndex);
      a2 = v243;
      v135 = v244;
LABEL_75:
      v131 = v139 + 1;
      v132 = v245;
      if (v131 == v238)
      {
        return result;
      }
    }

    v136 = 0;
    v240 = v174;
    v176 = (v174 + 48);
    v177 = v150;
    v178 = v161;
    v254 = v161;
    v253 = v177 | (v265 << 32);
    v258 = v173;
    while (1)
    {
      v180 = *(v176 - 2);
      v181 = *(v176 - 1);
      LODWORD(v263) = *v176;
      *&v265 = v178;
      if (v259)
      {
        swift_bridgeObjectRetain_n();

        v182 = v255;
        v183 = sub_1AF6496EC(v255);

        v184 = sub_1AF6496EC(v182);
        v173 = v258;

        v185 = v136;
        v186 = v267;
        *v267 = v184;
        v187 = v264;
        swift_storeEnumTagMultiPayload();
        v188 = v186;
        v136 = v185;
        (*v257)(v188, 0, 1, v187);
      }

      else
      {
        v189 = v267;
        sub_1AFD531F8(v256, v267, type metadata accessor for ScriptIndex);
        (*v257)(v189, 0, 1, v264);
        swift_bridgeObjectRetain_n();
        v183 = v253;
      }

      v190 = v267;
      v191 = sub_1AFAF8B58(v180, v181, v261, v262, v183, 0x6C656E72656BuLL, 0xE600000000000000, v267);
      v193 = v192;

      sub_1AFD53CA8(v190, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v268, v191, v193);

      if (v173 >= 4)
      {
        break;
      }

      v194 = sub_1AFDFEE28();

      if (v194)
      {
        goto LABEL_104;
      }

      if (v173 == 2)
      {
        v178 = v265;
        if (v252)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v178 = sub_1AF4246B0(0, *(v178 + 2) + 1, 1, v178);
          }

          v202 = *(v178 + 2);
          v201 = *(v178 + 3);
          if (v202 >= v201 >> 1)
          {
            v178 = sub_1AF4246B0(v201 > 1, v202 + 1, 1, v178);
          }

          *(v178 + 2) = v202 + 1;
          v203 = &v178[24 * v202];
          *(v203 + 4) = v191;
          *(v203 + 5) = v193;
          v203[48] = v263;
          v136 = v252;
        }

        else
        {

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v268 = 0;
          v269 = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD000000000000027, v229 | 0x8000000000000000);
          MEMORY[0x1B2718AE0](v191, v193);

          MEMORY[0x1B2718AE0](0xD000000000000031, v228 | 0x8000000000000000);
          v214 = v268;
          v213 = v269;
          v215 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v216 = v215;
            swift_once();
            v215 = v216;
          }

          v268 = 0;
          sub_1AF0D4F18(v215, &v268, v214, v213);
        }

        goto LABEL_97;
      }

      v204 = v247;
      v178 = v265;
      if (!*(v247 + 16) || (v205 = sub_1AF419914(v191, v193), (v206 & 1) == 0))
      {

        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v268 = 0;
        v269 = 0xE000000000000000;
        sub_1AFDFE218();

        v268 = 0xD000000000000022;
        v269 = v226;
        MEMORY[0x1B2718AE0](v191, v193);

        v219 = v268;
        v218 = v269;
        v220 = sub_1AFDFDA08();
        a2 = v243;
        v217 = v256;
        v135 = v244;
        if (qword_1ED731058 != -1)
        {
          goto LABEL_139;
        }

        goto LABEL_134;
      }

      v207 = v205;

      v208 = *(*(v204 + 56) + 8 * v207);
      v209 = v254;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v209 = sub_1AF42469C(0, *(v209 + 2) + 1, 1, v209);
      }

      v254 = v209;
      v211 = *(v209 + 2);
      v210 = *(v209 + 3);
      if (v211 >= v210 >> 1)
      {
        v254 = sub_1AF42469C(v210 > 1, v211 + 1, 1, v254);
      }

      v212 = v254;
      *(v254 + 2) = v211 + 1;
      *&v212[8 * v211 + 32] = v208;
      v136 = v246;
LABEL_96:

LABEL_97:
      v176 += 24;
      if (!--v175)
      {

        v138 = v254;
        v137 = v178;
        goto LABEL_74;
      }
    }

LABEL_104:
    if (!v266 || (v195 = *(v266 + 96), v196 = sub_1AFDFCEC8(), v197 = [v195 objectForKeyedSubscript_], v195, v196, !v197))
    {

LABEL_131:

      v217 = v256;
      v135 = v244;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v268 = 0;
      v269 = 0xE000000000000000;
      sub_1AFDFE218();

      v268 = 0xD000000000000025;
      v269 = v227;
      MEMORY[0x1B2718AE0](v191, v193);

      v219 = v268;
      v218 = v269;
      v220 = sub_1AFDFDA08();
      a2 = v243;
      if (qword_1ED731058 != -1)
      {
LABEL_139:
        v221 = v220;
        swift_once();
        v220 = v221;
      }

LABEL_134:
      v268 = 0;
      sub_1AF0D4F18(v220, &v268, v219, v218);

      result = sub_1AFD53198(v217, type metadata accessor for ScriptIndex);
      v139 = v255;
      goto LABEL_75;
    }

    v198 = [v197 isUndefined];

    if (v198)
    {
      goto LABEL_131;
    }

    v178 = v265;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v178 = sub_1AF4246B0(0, *(v178 + 2) + 1, 1, v178);
    }

    v173 = v258;
    v200 = *(v178 + 2);
    v199 = *(v178 + 3);
    if (v200 >= v199 >> 1)
    {
      v178 = sub_1AF4246B0(v199 > 1, v200 + 1, 1, v178);
    }

    *(v178 + 2) = v200 + 1;
    v179 = &v178[24 * v200];
    *(v179 + 4) = v191;
    *(v179 + 5) = v193;
    v179[48] = v263;
    v136 = v266;
    goto LABEL_96;
  }

  v37 = v245;
  v237 = a1[13];
  if (v237)
  {
    v244 = type metadata accessor for MetalFunctionScript(0);
    v236 = *(*(v244 - 8) + 72);
    sub_1AFD53F14(0, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
    v229 = v38;
    v228 = *(*(v38 - 1) + 72);
    sub_1AFD53F14(0, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
    v39 = 0;
    v235 = v40;
    v234 = *(*(v40 - 1) + 72);
    v41 = (v24 + 48);
    v257 = (v24 + 56);
    v227 = "nction for script ";
    v226 = "tal library for script ";
    v223 = 0x80000001AFF4F110;
    v225 = 0x80000001AFF4F1B0;
    v233 = (v24 + 48);
    while (1)
    {
      v52 = *(v238 + 8 * v39);
      v53 = v241 + v234 * v39;
      sub_1AFD53C4C(v53, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);

      v256 = v52;
      v54 = sub_1AF6496EC(v52);

      if (*(a2 + 16) && (v55 = sub_1AF449D3C(v54), (v56 & 1) != 0))
      {
        v57 = (*(a2 + 56) + 8 * v55);
        v59 = *v57;
        v58 = v57[1];
      }

      else
      {

        v60 = sub_1AF6496EC(v256);

        v59 = v60;
        v58 = HIDWORD(v60);
      }

      *&v263 = v58;
      v251 = v39;
      v61 = &v242[v236 * v39];
      sub_1AFB12858(v61 + *(v244 + 24), v37);
      v62 = *v41;
      v63 = (*v41)(v37, 1, v264);
      v248 = v53;
      if (v63 == 1)
      {

        v64 = sub_1AF6496EC(v256);

        v65 = v255;
        *v255 = v64;
        v53 = v248;
        v66 = v245;
        v67 = v264;
        swift_storeEnumTagMultiPayload();
        if (v62(v66, 1, v67) != 1)
        {
          sub_1AFD53CA8(v66, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        v65 = v255;
        sub_1AFD53D8C(v37, v255, type metadata accessor for ScriptIndex);
      }

      v68 = v239;
      sub_1AFD531F8(v65, v239, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v70 = v59;
        sub_1AFD53198(v68, type metadata accessor for ScriptIndex);
        v71 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        *&v69 = *v68;
        v72 = *(a2 + 16);
        v71 = MEMORY[0x1E69E7CC0];
        v265 = v69;
        if (v72)
        {
          v73 = sub_1AF449D3C(v69);
          if (v75)
          {
            *&v74 = *(*(a2 + 56) + 8 * v73);
            v265 = v74;
          }
        }

        v70 = v59;
        sub_1AFD53198(v65, type metadata accessor for ScriptIndex);
        *v65 = v265;
        swift_storeEnumTagMultiPayload();
      }

      sub_1AFD531F8(v61, v53, type metadata accessor for MetalFunctionScript);
      v77 = sub_1AFAA98A4(v76);
      v78 = v235;
      v79 = v53 + v235[9];
      *v79 = v77;
      *(v79 + 8) = 0;
      v80 = v78[10];
      v259 = 1;
      *(v53 + v80) = 1;
      *(v53 + v78[11]) = 0;
      v81 = v53 + v78[12];
      strcpy(v81, "<precompiled>");
      *(v81 + 14) = -4864;
      *(v53 + v78[13]) = v71;
      v273 = MEMORY[0x1E69E7CD0];
      v82 = *(v61 + 16);
      if (v82 < 4)
      {
        v259 = sub_1AFDFEE28();
      }

      v83 = sub_1AFAA9A50(v249, v250 & 1);
      v84 = *(v83 + 16);
      if (v84)
      {
        break;
      }

      v42 = 0;
      v43 = v71;
      v44 = v71;
LABEL_5:
      v45 = &v230[v228 * v251];
      sub_1AFD53C4C(v45, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v248, v45, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
      v46 = v229;
      *(v45 + *(v229 + 15)) = 0;
      *(v45 + v46[9]) = v42;
      *(v45 + v46[10]) = v44;
      *(v45 + v46[11]) = v43;
      *(v45 + v46[12]) = 0;
      *(v45 + v46[13]) = 0;
      v47 = v45 + v46[14];
      *v47 = v249;
      *(v47 + 8) = v250 & 1;

      v48 = sub_1AF6496EC(v256);

      v270 = v46;
      v271 = &off_1F2558F90;
      v49 = sub_1AF585714(&v268);
      sub_1AFD53D18(v45, v49, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
      v272 = 0;
      v50 = v48;
      v51 = v251;
      sub_1AF8259D0(&v268, v244, v50);
      sub_1AF967B70(v273);
      result = sub_1AFD53198(v255, type metadata accessor for ScriptIndex);
      a2 = v243;
LABEL_6:
      v41 = v233;
      v39 = v51 + 1;
      v37 = v245;
      if (v39 == v237)
      {
        return result;
      }
    }

    *&v265 = 0;
    v240 = v83;
    v85 = (v83 + 48);
    v86 = v71;
    v254 = v71;
    v253 = v70 | (v263 << 32);
    v258 = v82;
    while (1)
    {
      v88 = *(v85 - 2);
      v89 = *(v85 - 1);
      LODWORD(v263) = *v85;
      v90 = v86;
      if (v259)
      {
        swift_bridgeObjectRetain_n();

        v91 = v256;
        v92 = sub_1AF6496EC(v256);

        v93 = sub_1AF6496EC(v91);
        v94 = v267;
        v95 = v93;

        *v94 = v95;
        v82 = v258;
        v96 = v264;
        swift_storeEnumTagMultiPayload();
        (*v257)(v94, 0, 1, v96);
      }

      else
      {
        v97 = v267;
        sub_1AFD531F8(v255, v267, type metadata accessor for ScriptIndex);
        (*v257)(v97, 0, 1, v264);
        swift_bridgeObjectRetain_n();
        v92 = v253;
      }

      v98 = v267;
      v99 = sub_1AFAF8B58(v88, v89, v261, v262, v92, 0x6C656E72656BuLL, 0xE600000000000000, v267);
      v101 = v100;

      sub_1AFD53CA8(v98, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v268, v99, v101);

      if (v82 >= 4)
      {
        break;
      }

      v102 = sub_1AFDFEE28();

      if (v102)
      {
        goto LABEL_34;
      }

      v86 = v90;
      if (v82 == 2)
      {
        if (v252)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v86 = sub_1AF4246B0(0, *(v90 + 2) + 1, 1, v90);
          }

          v110 = v263;
          v112 = *(v86 + 2);
          v111 = *(v86 + 3);
          if (v112 >= v111 >> 1)
          {
            v86 = sub_1AF4246B0(v111 > 1, v112 + 1, 1, v86);
          }

          *(v86 + 2) = v112 + 1;
          v113 = &v86[24 * v112];
          *(v113 + 4) = v99;
          *(v113 + 5) = v101;
          v113[48] = v110;
          *&v265 = v252;
        }

        else
        {

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v268 = 0;
          v269 = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD000000000000027, v227 | 0x8000000000000000);
          MEMORY[0x1B2718AE0](v99, v101);

          MEMORY[0x1B2718AE0](0xD000000000000031, v226 | 0x8000000000000000);
          v124 = v268;
          v123 = v269;
          v125 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v126 = v125;
            swift_once();
            v125 = v126;
          }

          v268 = 0;
          sub_1AF0D4F18(v125, &v268, v124, v123);
        }

        goto LABEL_27;
      }

      v114 = v247;
      if (!*(v247 + 16) || (v115 = sub_1AF419914(v99, v101), (v116 & 1) == 0))
      {

        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v268 = 0;
        v269 = 0xE000000000000000;
        sub_1AFDFE218();

        v268 = 0xD000000000000022;
        v269 = v223;
        MEMORY[0x1B2718AE0](v99, v101);

        v128 = v268;
        v127 = v269;
        v129 = sub_1AFDFDA08();
        a2 = v243;
        v51 = v251;
        if (qword_1ED731058 != -1)
        {
          goto LABEL_69;
        }

        goto LABEL_64;
      }

      v117 = v115;

      v118 = *(*(v114 + 56) + 8 * v117);
      v119 = v254;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v119 = sub_1AF42469C(0, *(v119 + 2) + 1, 1, v119);
      }

      v254 = v119;
      v121 = *(v119 + 2);
      v120 = *(v119 + 3);
      if (v121 >= v120 >> 1)
      {
        v254 = sub_1AF42469C(v120 > 1, v121 + 1, 1, v254);
      }

      v122 = v254;
      *(v254 + 2) = v121 + 1;
      *&v122[8 * v121 + 32] = v118;
LABEL_26:

LABEL_27:
      v85 += 24;
      if (!--v84)
      {

        v42 = v265;
        v44 = v254;
        v43 = v86;
        goto LABEL_5;
      }
    }

LABEL_34:
    if (!v266 || (v103 = *(v266 + 96), v104 = sub_1AFDFCEC8(), v105 = [v103 objectForKeyedSubscript_], v103, v104, !v105))
    {

LABEL_61:

      v51 = v251;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v268 = 0;
      v269 = 0xE000000000000000;
      sub_1AFDFE218();

      v268 = 0xD000000000000025;
      v269 = v225;
      MEMORY[0x1B2718AE0](v99, v101);

      v128 = v268;
      v127 = v269;
      v129 = sub_1AFDFDA08();
      a2 = v243;
      if (qword_1ED731058 != -1)
      {
LABEL_69:
        v130 = v129;
        swift_once();
        v129 = v130;
      }

LABEL_64:
      v268 = 0;
      sub_1AF0D4F18(v129, &v268, v128, v127);

      result = sub_1AFD53198(v255, type metadata accessor for ScriptIndex);
      goto LABEL_6;
    }

    v106 = [v105 isUndefined];

    if (v106)
    {
      goto LABEL_61;
    }

    v86 = v90;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = sub_1AF4246B0(0, *(v90 + 2) + 1, 1, v90);
    }

    v82 = v258;
    v107 = v263;
    v109 = *(v86 + 2);
    v108 = *(v86 + 3);
    if (v109 >= v108 >> 1)
    {
      v86 = sub_1AF4246B0(v108 > 1, v109 + 1, 1, v86);
    }

    *(v86 + 2) = v109 + 1;
    v87 = &v86[24 * v109];
    *(v87 + 4) = v99;
    *(v87 + 5) = v101;
    v87[48] = v107;
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1AFD3F8E8(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v153 = a3;
  v154 = a4;
  sub_1AF0D4E74(0);
  v152 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v151 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1AFDFC298();
  *&v155 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v149 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v148 = &v124 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v124 - v16;
  v18 = type metadata accessor for ScriptIndex(0);
  v163 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v124 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v133 = (&v124 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v146 = (&v124 - v27);
  v28 = a1[1];
  v138 = sub_1AF705FA0(v28, a1);
  v137 = sub_1AF707064(v28, a1);
  result = sub_1AF706938(v28, a1);
  v124 = v4;
  v30 = a1[11];
  v126 = a1;
  v147 = v18;
  v139 = v28;
  v132 = v30;
  if (v30)
  {
    v131 = a1[13];
    if (v131)
    {
      v130 = type metadata accessor for ShaderScript(0);
      v129 = *(*(v130 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
      v31 = 0;
      v134 = v32;
      v33 = *(v32 - 8);
      v135 = (v163 + 48);
      v128 = *(v33 + 72);
      v143 = 0x80000001AFF4F1E0;
      v142 = (v163 + 56);
      v141 = (v155 + 32);
      v140 = xmmword_1AFE431C0;
      v125 = a2;
      v136 = v17;
      while (1)
      {
        v34 = v132[v31];
        v35 = a1[2];
        v36 = a1[3] + v31;
        v158 = *a1;
        v159 = v28;
        v160 = v35;
        v161 = v36;
        v162 = v34;

        if (*(v28 + 184))
        {
          break;
        }

        v38 = *(*(v28 + 168) + 4 * v34);
        v39 = *(*(v37 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v38 + 8);

        if (*(a2 + 16) && (v40 = sub_1AF449D3C(v38 | (v39 << 32)), (v41 & 1) != 0))
        {
          v42 = (*(a2 + 56) + 8 * v40);
          v43 = *v42;
          v163 = v42[1];
        }

        else
        {

          if (*(v28 + 184))
          {
            break;
          }

          v43 = *(*(v28 + 168) + 4 * v34);
          v163 = *(*(v44 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v43 + 8);
        }

        v45 = v136;
        sub_1AFB12858(&v138[v129 * v31 + *(v130 + 24)], v136);
        v46 = *v135;
        v47 = (*v135)(v45, 1, v18);
        v145 = v31;
        if (v47 == 1)
        {
          v48 = v139;

          if (*(v48 + 184))
          {
            break;
          }

          v50 = *(*(v48 + 168) + 4 * v34);
          v51 = *(*(v49 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v50 + 8);

          v52 = v146;
          *v146 = v50;
          v52[1] = v51;
          swift_storeEnumTagMultiPayload();
          v53 = v136;
          if (v46(v136, 1, v18) != 1)
          {
            sub_1AFD53CA8(v53, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          v52 = v146;
          sub_1AFD53D8C(v45, v146, type metadata accessor for ScriptIndex);
        }

        v54 = v133;
        sub_1AFD531F8(v52, v133, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v54, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v55 = *v54;
          v56 = *(a2 + 16);
          v155 = v55;
          if (v56)
          {
            v57 = sub_1AF449D3C(v55);
            if (v59)
            {
              *&v58 = *(*(a2 + 56) + 8 * v57);
              v155 = v58;
            }
          }

          sub_1AFD53198(v52, type metadata accessor for ScriptIndex);
          *v52 = v155;
          swift_storeEnumTagMultiPayload();
        }

        v60 = &v137[v128 * v145];
        if (!*&v60[*(v134 + 40)] && !*&v60[*(v134 + 44)])
        {
          v127 = sub_1AFABA41C();
          v61 = *(v127 + 2);
          if (v61)
          {
            v144 = v43 | (v163 << 32);
            v62 = (v127 + 40);
            do
            {
              *&v155 = v61;
              v63 = *(v62 - 1);
              v64 = *v62;
              v163 = v62;
              v65 = v148;
              sub_1AFD531F8(v52, v148, type metadata accessor for ScriptIndex);
              (*v142)(v65, 0, 1, v18);

              v66 = sub_1AFAF8B58(v63, v64, v153, v154, v144, 0x726564616873uLL, 0xE600000000000000, v65);
              v68 = v67;

              sub_1AFD53CA8(v65, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v156 = 0;
              v157 = 0xE000000000000000;
              sub_1AFDFE218();

              v156 = 0xD000000000000022;
              v157 = v143;
              MEMORY[0x1B2718AE0](v66, v68);

              v69 = v156;
              v70 = v157;
              v71 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              v72 = qword_1ED73B890;
              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v73 = swift_allocObject();
              *(v73 + 16) = v140;
              *(v73 + 56) = MEMORY[0x1E69E6158];
              *(v73 + 64) = sub_1AF0D544C();
              *(v73 + 32) = v69;
              *(v73 + 40) = v70;

              sub_1AFDFC4C8(v71, &dword_1AF0CE000, v72, "%{public}s", 10, 2, v73);

              v74 = v149;
              sub_1AFDFC288();
              v75 = v151;
              v76 = v152[12];
              v77 = v152[16];
              v78 = &v151[v152[20]];
              (*v141)(v151, v74, v150);
              *(v75 + v76) = v71;
              *(v75 + v77) = 0;
              *v78 = v69;
              *(v78 + 1) = v70;

              sub_1AFDFC608();

              sub_1AFD53198(v75, sub_1AF0D4E74);

              v62 = (v163 + 24);
              v61 = v155 - 1;
              v52 = v146;
              v18 = v147;
            }

            while (v155 != 1);
          }

          sub_1AF8DAD40(0);
          sub_1AF8DAD7C(0);
          a2 = v125;
          a1 = v126;
        }

        result = sub_1AFD53198(v52, type metadata accessor for ScriptIndex);
        v31 = v145 + 1;
        v28 = v139;
        if (v145 + 1 == v131)
        {
          return result;
        }
      }

LABEL_69:
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else
  {
    v136 = v12;
    v79 = a1[6];
    v133 = a1[7];
    if (v79 != v133)
    {
      v131 = a1[3] - v79;
      v130 = type metadata accessor for ShaderScript(0);
      v129 = *(*(v130 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
      v134 = v80;
      v81 = *(v80 - 8);
      v135 = (v163 + 48);
      v128 = *(v81 + 72);
      v143 = 0x80000001AFF4F1E0;
      v142 = (v163 + 56);
      v141 = (v155 + 32);
      v140 = xmmword_1AFE431C0;
      v132 = v20;
      v146 = v23;
      v125 = a2;
      while (1)
      {
        v83 = a1[2];
        v158 = *a1;
        v159 = v28;
        v160 = v83;
        v161 = v131 + v79;
        v162 = v79;

        if (*(v28 + 184))
        {
          goto LABEL_69;
        }

        v85 = *(*(v28 + 168) + 4 * v79);
        v86 = *(*(v84 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v85 + 8);

        if (*(a2 + 16) && (v87 = sub_1AF449D3C(v85 | (v86 << 32)), (v88 & 1) != 0))
        {
          v89 = (*(a2 + 56) + 8 * v87);
          v90 = *v89;
          v163 = v89[1];
        }

        else
        {

          if (*(v28 + 184))
          {
            goto LABEL_69;
          }

          v90 = *(*(v28 + 168) + 4 * v79);
          v163 = *(*(v91 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v90 + 8);
        }

        v92 = v136;
        sub_1AFB12858(&v138[v129 * v79 + *(v130 + 24)], v136);
        v93 = *v135;
        v94 = (*v135)(v92, 1, v18);
        v145 = v79;
        if (v94 == 1)
        {

          if (*(v28 + 184))
          {
            goto LABEL_69;
          }

          v96 = *(*(v28 + 168) + 4 * v79);
          v97 = *(*(v95 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v96 + 8);

          v98 = v146;
          *v146 = v96;
          v98[1] = v97;
          v28 = v139;
          swift_storeEnumTagMultiPayload();
          if (v93(v136, 1, v18) != 1)
          {
            sub_1AFD53CA8(v136, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          v98 = v146;
          sub_1AFD53D8C(v92, v146, type metadata accessor for ScriptIndex);
        }

        v99 = v132;
        sub_1AFD531F8(v98, v132, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v99, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v100 = *v99;
          v101 = *(a2 + 16);
          v155 = v100;
          if (v101)
          {
            v102 = sub_1AF449D3C(v100);
            if (v104)
            {
              *&v103 = *(*(a2 + 56) + 8 * v102);
              v155 = v103;
            }
          }

          sub_1AFD53198(v98, type metadata accessor for ScriptIndex);
          *v98 = v155;
          swift_storeEnumTagMultiPayload();
        }

        v105 = &v137[v128 * v145];
        if (!*&v105[*(v134 + 40)] && !*&v105[*(v134 + 44)])
        {
          v127 = sub_1AFABA41C();
          v106 = *(v127 + 2);
          if (v106)
          {
            v144 = v90 | (v163 << 32);
            v107 = (v127 + 40);
            do
            {
              *&v155 = v106;
              v108 = *(v107 - 1);
              v109 = *v107;
              v163 = v107;
              v110 = v148;
              sub_1AFD531F8(v98, v148, type metadata accessor for ScriptIndex);
              (*v142)(v110, 0, 1, v18);

              v111 = sub_1AFAF8B58(v108, v109, v153, v154, v144, 0x726564616873uLL, 0xE600000000000000, v110);
              v113 = v112;

              sub_1AFD53CA8(v110, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v156 = 0;
              v157 = 0xE000000000000000;
              sub_1AFDFE218();

              v156 = 0xD000000000000022;
              v157 = v143;
              MEMORY[0x1B2718AE0](v111, v113);

              v114 = v156;
              v115 = v157;
              v116 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              v117 = qword_1ED73B890;
              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v118 = swift_allocObject();
              *(v118 + 16) = v140;
              *(v118 + 56) = MEMORY[0x1E69E6158];
              *(v118 + 64) = sub_1AF0D544C();
              *(v118 + 32) = v114;
              *(v118 + 40) = v115;

              sub_1AFDFC4C8(v116, &dword_1AF0CE000, v117, "%{public}s", 10, 2, v118);

              v119 = v149;
              sub_1AFDFC288();
              v120 = v151;
              v121 = v152[12];
              v122 = v152[16];
              v123 = &v151[v152[20]];
              (*v141)(v151, v119, v150);
              *(v120 + v121) = v116;
              *(v120 + v122) = 0;
              *v123 = v114;
              *(v123 + 1) = v115;

              sub_1AFDFC608();

              sub_1AFD53198(v120, sub_1AF0D4E74);

              v107 = (v163 + 24);
              v106 = v155 - 1;
              v98 = v146;
              v18 = v147;
            }

            while (v155 != 1);
          }

          sub_1AF8DAD40(0);
          sub_1AF8DAD7C(0);
          a2 = v125;
          a1 = v126;
          v28 = v139;
        }

        v82 = v98;
        v79 = v145 + 1;
        result = sub_1AFD53198(v82, type metadata accessor for ScriptIndex);
        if (v79 == v133)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AFD40BCC(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v262 = a8;
  v288 = a7;
  v285 = a6;
  v284 = a5;
  v255 = a4;
  v254 = a3;
  v258 = a2;
  v253 = a13;
  v252 = a12;
  v270 = a11;
  v261 = a10;
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v245 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v286 = (&v245 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v276 = &v245 - v21;
  v22 = type metadata accessor for ScriptIndex(0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v245 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v245 - v27);
  MEMORY[0x1EEE9AC00](v29);
  v268 = (&v245 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v287 = (&v245 - v32);
  v33 = a1[1];
  v275 = sub_1AF705FA0(v33, a1);
  v251 = sub_1AF707064(v33, a1);
  result = sub_1AF706938(v33, a1);
  v274 = result;
  v35 = a1[11];
  v292 = v22;
  v279 = v33;
  v267 = v35;
  if (!v35)
  {
    v283 = v28;
    v269 = v25;
    v276 = v17;
    v137 = a1[6];
    v268 = a1[7];
    if (v137 == v268)
    {
      return result;
    }

    v271 = type metadata accessor for ShaderScript(0);
    v267 = *(*(v271 - 8) + 72);
    sub_1AFD53F14(0, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
    v256 = v138;
    v250 = *(*(v138 - 1) + 72);
    sub_1AFD53F14(0, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
    v266 = v139;
    v265 = *(*(v139 - 1) + 72);
    v140 = (v23 + 48);
    v259 = "mpiled script for ";
    v281 = v23 + 56;
    v249 = "nction for script ";
    v248 = "tal library for script ";
    v246 = 0x80000001AFF4F110;
    v247 = 0x80000001AFF4F1B0;
    v264 = v23 + 48;
    v141 = v258;
    while (1)
    {
      v289 = v13;
      v278 = v274 + v265 * v137;
      sub_1AFD53C4C(v278, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);

      v152 = sub_1AF6496EC(v137);

      if (*(v141 + 16) && (v153 = sub_1AF449D3C(v152), (v154 & 1) != 0))
      {
        v155 = v141;
        v156 = (*(v141 + 56) + 8 * v153);
        v158 = *v156;
        v157 = v156[1];
        v290 = v158;
      }

      else
      {
        v155 = v141;

        v159 = sub_1AF6496EC(v137);

        v290 = v159;
        v157 = HIDWORD(v159);
      }

      v280 = v157;
      v160 = &v275[v267 * v137];
      v161 = v276;
      sub_1AFB12858(v160 + *(v271 + 24), v276);
      v162 = *v140;
      v163 = v292;
      if ((*v140)(v161, 1, v292) == 1)
      {

        v164 = sub_1AF6496EC(v137);

        v165 = v283;
        *v283 = v164;
        v166 = v276;
        swift_storeEnumTagMultiPayload();
        if (v162(v166, 1, v163) != 1)
        {
          sub_1AFD53CA8(v166, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        v165 = v283;
        sub_1AFD53D8C(v161, v283, type metadata accessor for ScriptIndex);
      }

      v167 = v269;
      sub_1AFD531F8(v165, v269, type metadata accessor for ScriptIndex);
      v141 = v155;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v167, type metadata accessor for ScriptIndex);
      }

      else
      {
        *&v168 = *v167;
        v169 = *(v155 + 16);
        v291 = v168;
        if (v169)
        {
          v170 = sub_1AF449D3C(v168);
          if (v172)
          {
            *&v171 = *(*(v155 + 56) + 8 * v170);
            v291 = v171;
          }
        }

        sub_1AFD53198(v165, type metadata accessor for ScriptIndex);
        *v165 = v291;
        swift_storeEnumTagMultiPayload();
      }

      v173 = v278;
      sub_1AFD531F8(v160, v278, type metadata accessor for ShaderScript);
      v175 = sub_1AFAAAC40(v174);
      v176 = v266;
      v177 = v173 + v266[9];
      *v177 = v175;
      *(v177 + 8) = 0;
      *(v173 + v176[10]) = 1;
      *(v173 + v176[11]) = 0;
      v178 = v173 + v176[12];
      strcpy(v178, "<precompiled>");
      *(v178 + 14) = -4864;
      *(v173 + v176[13]) = MEMORY[0x1E69E7CC0];
      v179 = v289;
      sub_1AFAAADB4(0, 1uLL, &v294);
      v289 = v179;
      if (!v179)
      {
        break;
      }

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v294 = 0;
      v295 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000002DLL, v259 | 0x8000000000000000);
      MEMORY[0x1B2718AE0](0x6353726564616853, 0xEC00000074706972);
      MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
      v180 = v289;
      swift_getErrorValue();
      sub_1AFDFEDD8();
      v182 = v294;
      v181 = v295;
      v183 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v242 = v183;
        swift_once();
        v183 = v242;
      }

      v294 = 0;
      sub_1AF0D4F18(v183, &v294, v182, v181);

      result = sub_1AFD53198(v283, type metadata accessor for ScriptIndex);
      v13 = 0;
LABEL_85:
      ++v137;
      v140 = v264;
      if (v137 == v268)
      {
        return result;
      }
    }

    v184 = v298;
    v185 = v299;

    v293 = MEMORY[0x1E69E7CD0];
    v186 = *(v160 + 16);
    LODWORD(v287) = v186;
    v277 = v137;
    v263 = v184;
    v260 = v185;
    if (v186 >= 4)
    {
      LODWORD(v282) = 1;
    }

    else
    {
      LODWORD(v282) = sub_1AFDFEE28();
    }

    v187 = sub_1AFABA41C();
    v188 = *(v187 + 2);
    if (!v188)
    {

      v142 = 0;
      v143 = MEMORY[0x1E69E7CC0];
      v144 = MEMORY[0x1E69E7CC0];
LABEL_83:
      v137 = v277;
      v145 = &v251[v250 * v277];
      sub_1AFD53C4C(v145, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v278, v145, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
      v146 = v256;
      v147 = (v145 + v256[15]);
      v148 = v260;
      *v147 = v263;
      v147[1] = v148;
      *(v145 + v146[9]) = v142;
      *(v145 + v146[10]) = v144;
      *(v145 + v146[11]) = v143;
      *(v145 + v146[12]) = 0;
      *(v145 + v146[13]) = 0;
      v149 = v145 + v146[14];
      *v149 = v254;
      *(v149 + 8) = v255 & 1;

      v150 = sub_1AF6496EC(v137);

      v296 = v146;
      v297 = &off_1F2558F90;
      v151 = sub_1AF585714(&v294);
      sub_1AFD53D18(v145, v151, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
      LOBYTE(v298) = 0;
      sub_1AF8259D0(&v294, v271, v150);
      sub_1AF967B70(v293);
      result = sub_1AFD53198(v283, type metadata accessor for ScriptIndex);
      v141 = v258;
LABEL_84:
      v13 = v289;
      goto LABEL_85;
    }

    v142 = 0;
    v257 = v187;
    v189 = (v187 + 48);
    *&v291 = MEMORY[0x1E69E7CC0];
    v272 = MEMORY[0x1E69E7CC0];
    v273 = v290 | (v280 << 32);
    v190 = v288;
    while (1)
    {
      v192 = *(v189 - 2);
      v193 = *(v189 - 1);
      LODWORD(v290) = *v189;
      if (v282)
      {
        swift_bridgeObjectRetain_n();

        v194 = v193;
        v195 = v189;
        v196 = v188;
        v197 = v190;
        v198 = v142;
        v199 = v277;
        v280 = v192;
        v200 = sub_1AF6496EC(v277);

        v201 = v199;
        v142 = v198;
        v190 = v197;
        v188 = v196;
        v189 = v195;
        v193 = v194;
        v202 = sub_1AF6496EC(v201);

        v203 = v286;
        *v286 = v202;
        v204 = v292;
        swift_storeEnumTagMultiPayload();
        v205 = v204;
        v192 = v280;
        (*v281)(v203, 0, 1, v205);
      }

      else
      {
        v203 = v286;
        sub_1AFD531F8(v283, v286, type metadata accessor for ScriptIndex);
        (*v281)(v203, 0, 1, v292);
        swift_bridgeObjectRetain_n();
        v200 = v273;
      }

      v206 = sub_1AFAF8B58(v192, v193, v284, v285, v200, 0x726564616873uLL, 0xE600000000000000, v203);
      v208 = v207;

      sub_1AFD53CA8(v203, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v294, v206, v208);

      if (v287 >= 4)
      {
        break;
      }

      v209 = sub_1AFDFEE28();

      if (v209)
      {
        goto LABEL_119;
      }

      if (v287 == 2)
      {
        if (v270)
        {

          v214 = v291;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v214 = sub_1AF4246B0(0, *(v214 + 2) + 1, 1, v214);
          }

          v219 = *(v214 + 2);
          v218 = *(v214 + 3);
          if (v219 >= v218 >> 1)
          {
            v214 = sub_1AF4246B0(v218 > 1, v219 + 1, 1, v214);
          }

          *(v214 + 2) = v219 + 1;
          v220 = &v214[24 * v219];
          *(v220 + 4) = v206;
          *(v220 + 5) = v208;
          v220[48] = v290;
          v142 = v270;
        }

        else
        {

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v294 = 0;
          v295 = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD000000000000027, v249 | 0x8000000000000000);
          MEMORY[0x1B2718AE0](v206, v208);

          MEMORY[0x1B2718AE0](0xD000000000000031, v248 | 0x8000000000000000);
          v229 = v294;
          v230 = v295;
          v231 = sub_1AFDFDA08();
          v214 = v291;
          if (qword_1ED731058 != -1)
          {
            v232 = v231;
            swift_once();
            v231 = v232;
          }

          v294 = 0;
          sub_1AF0D4F18(v231, &v294, v229, v230);
        }
      }

      else
      {

        v221 = v262;
        if (!*(v262 + 16) || (v222 = sub_1AF419914(v206, v208), (v223 & 1) == 0))
        {

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v294 = 0;
          v295 = 0xE000000000000000;
          sub_1AFDFE218();

          v294 = 0xD000000000000022;
          v295 = v246;
          MEMORY[0x1B2718AE0](v206, v208);

          v239 = v294;
          v238 = v295;
          v240 = sub_1AFDFDA08();
          v141 = v258;
          v241 = v283;
          v137 = v277;
          if (qword_1ED731058 != -1)
          {
            v244 = v240;
            swift_once();
            v240 = v244;
          }

          v294 = 0;
          sub_1AF0D4F18(v240, &v294, v239, v238);

          result = sub_1AFD53198(v241, type metadata accessor for ScriptIndex);
          goto LABEL_84;
        }

        v224 = v222;

        v225 = *(*(v221 + 56) + 8 * v224);
        v226 = v272;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v226 = sub_1AF42469C(0, *(v226 + 2) + 1, 1, v226);
        }

        v214 = v291;
        v228 = *(v226 + 2);
        v227 = *(v226 + 3);
        if (v228 >= v227 >> 1)
        {
          v226 = sub_1AF42469C(v227 > 1, v228 + 1, 1, v226);
        }

        *(v226 + 2) = v228 + 1;
        v272 = v226;
        *&v226[8 * v228 + 32] = v225;
        v142 = v261;

        v190 = v288;
      }

LABEL_112:
      *&v291 = v214;
      v189 += 24;
      if (!--v188)
      {

        v144 = v272;
        v143 = v291;
        goto LABEL_83;
      }
    }

LABEL_119:
    if (!v190 || (v210 = *(v190 + 96), v211 = sub_1AFDFCEC8(), v212 = [v210 objectForKeyedSubscript_], v210, v211, !v212))
    {

LABEL_146:

      *&v291 = v142;

      v233 = v258;
      v234 = v283;
      v137 = v277;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v294 = 0;
      v295 = 0xE000000000000000;
      sub_1AFDFE218();

      v294 = 0xD000000000000025;
      v295 = v247;
      MEMORY[0x1B2718AE0](v206, v208);

      v236 = v294;
      v235 = v295;
      v237 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v243 = v237;
        swift_once();
        v237 = v243;
      }

      v294 = 0;
      sub_1AF0D4F18(v237, &v294, v236, v235);

      result = sub_1AFD53198(v234, type metadata accessor for ScriptIndex);
      v13 = v289;
      v141 = v233;
      goto LABEL_85;
    }

    v213 = [v212 isUndefined];

    if (v213)
    {
      goto LABEL_146;
    }

    v214 = v291;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v190 = v288;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v214 = sub_1AF4246B0(0, *(v214 + 2) + 1, 1, v214);
    }

    v217 = *(v214 + 2);
    v216 = *(v214 + 3);
    if (v217 >= v216 >> 1)
    {
      v214 = sub_1AF4246B0(v216 > 1, v217 + 1, 1, v214);
    }

    *(v214 + 2) = v217 + 1;
    v191 = &v214[24 * v217];
    *(v191 + 4) = v206;
    *(v191 + 5) = v208;
    v191[48] = v290;

    v142 = v190;
    goto LABEL_112;
  }

  v266 = a1[13];
  if (v266)
  {
    v269 = type metadata accessor for ShaderScript(0);
    v265 = *(*(v269 - 1) + 72);
    sub_1AFD53F14(0, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
    v250 = v36;
    v249 = *(*(v36 - 1) + 72);
    sub_1AFD53F14(0, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
    v264 = v37;
    v263 = *(*(v37 - 8) + 72);
    v38 = (v23 + 48);
    v257 = "mpiled script for ";
    v280 = v23 + 56;
    v39 = 0;
    v248 = "nction for script ";
    v247 = "tal library for script ";
    v245 = 0x80000001AFF4F110;
    v246 = 0x80000001AFF4F1B0;
    v272 = v38;
    v40 = v258;
    while (1)
    {
      v50 = *(v267 + 8 * v39);
      v277 = v274 + v263 * v39;
      sub_1AFD53C4C(v277, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);

      v283 = v50;
      v51 = sub_1AF6496EC(v50);

      v52 = v40;
      if (*(v40 + 16) && (v53 = sub_1AF449D3C(v51), (v54 & 1) != 0))
      {
        v55 = (*(v40 + 56) + 8 * v53);
        v57 = *v55;
        v56 = v55[1];
        v290 = v57;
      }

      else
      {

        v58 = sub_1AF6496EC(v283);

        v290 = v58;
        v56 = HIDWORD(v58);
      }

      v282 = v56;
      v59 = v292;
      v278 = v39;
      v60 = &v275[v265 * v39];
      v61 = v276;
      sub_1AFB12858(v60 + *(v269 + 6), v276);
      v62 = *v38;
      if ((*v38)(v61, 1, v59) == 1)
      {

        v63 = sub_1AF6496EC(v283);

        v64 = v287;
        *v287 = v63;
        v65 = v276;
        swift_storeEnumTagMultiPayload();
        if (v62(v65, 1, v59) != 1)
        {
          sub_1AFD53CA8(v65, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        v64 = v287;
        sub_1AFD53D8C(v61, v287, type metadata accessor for ScriptIndex);
      }

      v66 = v268;
      sub_1AFD531F8(v64, v268, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v66, type metadata accessor for ScriptIndex);
        v38 = v272;
      }

      else
      {
        *&v67 = *v66;
        v68 = *(v52 + 16);
        v291 = v67;
        if (v68)
        {
          v69 = sub_1AF449D3C(v67);
          v38 = v272;
          if (v71)
          {
            *&v70 = *(*(v52 + 56) + 8 * v69);
            v291 = v70;
          }
        }

        else
        {
          v38 = v272;
        }

        v72 = v287;
        sub_1AFD53198(v287, type metadata accessor for ScriptIndex);
        *v72 = v291;
        swift_storeEnumTagMultiPayload();
      }

      v73 = v277;
      sub_1AFD531F8(v60, v277, type metadata accessor for ShaderScript);
      v75 = sub_1AFAAAC40(v74);
      v76 = v264;
      v77 = v73 + *(v264 + 36);
      *v77 = v75;
      *(v77 + 8) = 0;
      *(v73 + v76[10]) = 1;
      *(v73 + v76[11]) = 0;
      v78 = v73 + v76[12];
      strcpy(v78, "<precompiled>");
      *(v78 + 14) = -4864;
      *(v73 + v76[13]) = MEMORY[0x1E69E7CC0];
      sub_1AFAAADB4(0, 1uLL, &v294);
      v289 = v13;
      if (v13)
      {
        v79 = v287;
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v294 = 0;
        v295 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000002DLL, v257 | 0x8000000000000000);
        MEMORY[0x1B2718AE0](0x6353726564616853, 0xEC00000074706972);
        MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
        v80 = v289;
        swift_getErrorValue();
        sub_1AFDFEDD8();
        v82 = v294;
        v81 = v295;
        v83 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v134 = v83;
          swift_once();
          v83 = v134;
        }

        v294 = 0;
        sub_1AF0D4F18(v83, &v294, v82, v81);

        result = sub_1AFD53198(v79, type metadata accessor for ScriptIndex);
        v13 = 0;
        v40 = v52;
        goto LABEL_6;
      }

      v260 = v298;
      v259 = v299;

      v293 = MEMORY[0x1E69E7CD0];
      v84 = *(v60 + 16);
      LODWORD(v281) = v84 >= 4 ? 1 : sub_1AFDFEE28();

      v85 = sub_1AFABA41C();
      v86 = *(v85 + 2);
      if (v86)
      {
        break;
      }

      v41 = MEMORY[0x1E69E7CC0];
      v42 = MEMORY[0x1E69E7CC0];
LABEL_5:
      v43 = &v251[v249 * v278];
      sub_1AFD53C4C(v43, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v277, v43, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
      v44 = v250;
      v45 = (v43 + v250[15]);
      v46 = v259;
      *v45 = v260;
      v45[1] = v46;
      *(v43 + v44[9]) = v86;
      *(v43 + v44[10]) = v42;
      *(v43 + v44[11]) = v41;
      *(v43 + v44[12]) = 0;
      *(v43 + v44[13]) = 0;
      v47 = v43 + v44[14];
      *v47 = v254;
      *(v47 + 8) = v255 & 1;

      v48 = sub_1AF6496EC(v283);

      v296 = v44;
      v297 = &off_1F2558F90;
      v49 = sub_1AF585714(&v294);
      sub_1AFD53D18(v43, v49, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
      LOBYTE(v298) = 0;
      sub_1AF8259D0(&v294, v269, v48);
      sub_1AF967B70(v293);
      result = sub_1AFD53198(v287, type metadata accessor for ScriptIndex);
      v40 = v258;
      v13 = v289;
      v38 = v272;
LABEL_6:
      v39 = v278 + 1;
      if ((v278 + 1) == v266)
      {
        return result;
      }
    }

    *&v291 = 0;
    v256 = v85;
    v87 = (v85 + 48);
    v41 = MEMORY[0x1E69E7CC0];
    v271 = MEMORY[0x1E69E7CC0];
    v273 = v290 | (v282 << 32);
    LODWORD(v282) = v84;
    while (1)
    {
      v89 = *(v87 - 2);
      v90 = *(v87 - 1);
      LODWORD(v290) = *v87;
      if (v281)
      {
        swift_bridgeObjectRetain_n();

        v91 = v283;
        v92 = sub_1AF6496EC(v283);

        v93 = v91;
        v84 = v282;
        v94 = sub_1AF6496EC(v93);

        v95 = v286;
        *v286 = v94;
        v96 = v95;
        v97 = v292;
        swift_storeEnumTagMultiPayload();
        (*v280)(v96, 0, 1, v97);
      }

      else
      {
        v96 = v286;
        sub_1AFD531F8(v287, v286, type metadata accessor for ScriptIndex);
        (*v280)(v96, 0, 1, v292);
        swift_bridgeObjectRetain_n();
        v92 = v273;
      }

      v98 = sub_1AFAF8B58(v89, v90, v284, v285, v92, 0x726564616873uLL, 0xE600000000000000, v96);
      v100 = v99;

      sub_1AFD53CA8(v96, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v294, v98, v100);

      if (v84 >= 4)
      {
        break;
      }

      v101 = sub_1AFDFEE28();

      if (v101)
      {
        goto LABEL_41;
      }

      if (v84 == 2)
      {
        if (v270)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_1AF4246B0(0, *(v41 + 2) + 1, 1, v41);
          }

          v109 = v290;
          v111 = *(v41 + 2);
          v110 = *(v41 + 3);
          if (v111 >= v110 >> 1)
          {
            v41 = sub_1AF4246B0(v110 > 1, v111 + 1, 1, v41);
          }

          *(v41 + 2) = v111 + 1;
          v112 = &v41[24 * v111];
          *(v112 + 4) = v98;
          *(v112 + 5) = v100;
          v112[48] = v109;
          *&v291 = v270;
        }

        else
        {

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v294 = 0;
          v295 = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD000000000000027, v248 | 0x8000000000000000);
          MEMORY[0x1B2718AE0](v98, v100);

          MEMORY[0x1B2718AE0](0xD000000000000031, v247 | 0x8000000000000000);
          v121 = v294;
          v122 = v295;
          v123 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v124 = v123;
            swift_once();
            v123 = v124;
          }

          v294 = 0;
          sub_1AF0D4F18(v123, &v294, v121, v122);
        }
      }

      else
      {

        v113 = v262;
        if (!*(v262 + 16) || (v114 = sub_1AF419914(v98, v100), (v115 & 1) == 0))
        {

          v130 = v287;
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v294 = 0;
          v295 = 0xE000000000000000;
          sub_1AFDFE218();

          v294 = 0xD000000000000022;
          v295 = v245;
          MEMORY[0x1B2718AE0](v98, v100);

          v132 = v294;
          v131 = v295;
          v133 = sub_1AFDFDA08();
          v40 = v258;
          v38 = v272;
          if (qword_1ED731058 != -1)
          {
            v136 = v133;
            swift_once();
            v133 = v136;
          }

          v294 = 0;
          sub_1AF0D4F18(v133, &v294, v132, v131);

          result = sub_1AFD53198(v130, type metadata accessor for ScriptIndex);
          v13 = v289;
          goto LABEL_6;
        }

        v116 = v114;

        v117 = *(*(v113 + 56) + 8 * v116);
        v118 = v271;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_1AF42469C(0, *(v118 + 2) + 1, 1, v118);
        }

        v120 = *(v118 + 2);
        v119 = *(v118 + 3);
        if (v120 >= v119 >> 1)
        {
          v118 = sub_1AF42469C(v119 > 1, v120 + 1, 1, v118);
        }

        *(v118 + 2) = v120 + 1;
        v271 = v118;
        *&v118[8 * v120 + 32] = v117;

        v84 = v282;
      }

LABEL_34:
      v87 += 24;
      if (!--v86)
      {

        v86 = v291;
        v42 = v271;
        goto LABEL_5;
      }
    }

LABEL_41:
    if (!v288 || (v102 = *(v288 + 96), v103 = sub_1AFDFCEC8(), v104 = [v102 objectForKeyedSubscript_], v102, v103, !v104))
    {

LABEL_68:

      v125 = v287;

      v126 = v258;
      v38 = v272;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v294 = 0;
      v295 = 0xE000000000000000;
      sub_1AFDFE218();

      v294 = 0xD000000000000025;
      v295 = v246;
      MEMORY[0x1B2718AE0](v98, v100);

      v128 = v294;
      v127 = v295;
      v129 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v135 = v129;
        swift_once();
        v129 = v135;
      }

      v294 = 0;
      sub_1AF0D4F18(v129, &v294, v128, v127);

      result = sub_1AFD53198(v125, type metadata accessor for ScriptIndex);
      v13 = v289;
      v40 = v126;
      goto LABEL_6;
    }

    v105 = [v104 isUndefined];

    if (v105)
    {
      goto LABEL_68;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1AF4246B0(0, *(v41 + 2) + 1, 1, v41);
    }

    v84 = v282;
    v106 = v290;
    v108 = *(v41 + 2);
    v107 = *(v41 + 3);
    if (v108 >= v107 >> 1)
    {
      v41 = sub_1AF4246B0(v107 > 1, v108 + 1, 1, v41);
    }

    *(v41 + 2) = v108 + 1;
    v88 = &v41[24 * v108];
    *(v88 + 4) = v98;
    *(v88 + 5) = v100;
    v88[48] = v106;

    goto LABEL_34;
  }

  return result;
}

uint64_t sub_1AFD43440(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6)
{
  v192 = a5;
  v193 = a6;
  LODWORD(v195) = a4;
  v199 = a3;
  v176 = a2;
  sub_1AF0D4E74(0);
  v191 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v190 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1AFDFC298();
  v184 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v188 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v187 = &v159 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v159 - v17;
  v19 = type metadata accessor for ScriptIndex(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v159 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v170 = (&v159 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v186 = &v159 - v29;
  v30 = a1[1];
  v175 = sub_1AF706CCC(v30, a1);
  v174 = sub_1AF706FA8(v30, a1);
  result = sub_1AF70687C(v30, a1);
  v160 = v6;
  v32 = a1[11];
  v171 = a1;
  v178 = v30;
  v169 = v32;
  if (v32)
  {
    v177 = v18;
    v168 = a1[13];
    if (v168)
    {
      v166 = type metadata accessor for EmitterScript(0);
      v165 = *(*(v166 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
      v33 = 0;
      v173 = v34;
      v35 = *(v34 - 8);
      v172 = (v20 + 48);
      v164 = *(v35 + 72);
      v159 = 0x80000001AFF47E70;
      v182 = 0x80000001AFF4F1E0;
      v181 = (v20 + 56);
      v180 = (v184 + 32);
      v36 = &unk_1F25040C0;
      if (v199 < 1029)
      {
        v36 = &unk_1F2504088;
      }

      v162 = v36;
      v161 = v195 | (v199 > 1032);
      v183 = xmmword_1AFE431C0;
      v194 = v19;
      while (1)
      {
        v37 = v169[v33];
        v167 = a1[2];

        if (*(v30 + 184))
        {
          break;
        }

        v39 = *(v30 + 168);
        v179 = v37;
        v40 = *(v39 + 4 * v37);
        v41 = *(*(v38 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v40 + 8);

        v42 = v176;
        if (*(v176 + 16) && (v43 = sub_1AF449D3C(v40 | (v41 << 32)), (v44 & 1) != 0))
        {
          v45 = (*(v42 + 56) + 8 * v43);
          v46 = *v45;
          v47 = v45[1];
          v48 = v170;
        }

        else
        {

          v48 = v170;
          if (*(v30 + 184))
          {
            break;
          }

          v46 = *(*(v30 + 168) + 4 * v179);
          v47 = *(*(v49 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v46 + 8);
        }

        v185 = v33;
        v50 = &v175[v165 * v33];
        v51 = v177;
        sub_1AFB12858(&v50[*(v166 + 32)], v177);
        v52 = *v172;
        if ((*v172)(v51, 1, v19) == 1)
        {
          v53 = v178;

          if (*(v53 + 184))
          {
            break;
          }

          v55 = *(*(v53 + 168) + 4 * v179);
          v56 = *(*(v54 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v55 + 8);

          v57 = v186;
          *v186 = v55;
          *(v57 + 4) = v56;
          v58 = v57;
          swift_storeEnumTagMultiPayload();
          v59 = v52(v177, 1, v19);
          a1 = v171;
          if (v59 != 1)
          {
            sub_1AFD53CA8(v177, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          v60 = v51;
          v58 = v186;
          sub_1AFD53D8C(v60, v186, type metadata accessor for ScriptIndex);
        }

        sub_1AFD531F8(v58, v48, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v48, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v61 = *v48;
          v62 = *(v42 + 16);
          v195 = v61;
          if (v62)
          {
            v63 = sub_1AF449D3C(v61);
            if (v65)
            {
              *&v64 = *(*(v42 + 56) + 8 * v63);
              v195 = v64;
            }
          }

          sub_1AFD53198(v58, type metadata accessor for ScriptIndex);
          *v58 = v195;
          swift_storeEnumTagMultiPayload();
        }

        v66 = &v174[v164 * v185];
        if (!*&v66[*(v173 + 40)] && !*&v66[*(v173 + 44)])
        {
          v67 = v162;
          if (v161)
          {
            v67 = &unk_1F25040F8;
            if (*v50 == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v67 = swift_allocObject();
              v67[1] = v183;
              v196 = 0xD000000000000017;
              v197 = v159;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v68 = v197;
              *(v67 + 4) = v196;
              *(v67 + 5) = v68;
              *(v67 + 48) = 0;
            }
          }

          v163 = v67;
          v69 = *(v67 + 2);
          if (v69)
          {
            v184 = v46 | (v47 << 32);
            v70 = v163 + 5;
            do
            {
              *&v195 = v69;
              v71 = *(v70 - 1);
              v72 = *v70;
              v199 = v70;
              v73 = v187;
              sub_1AFD531F8(v58, v187, type metadata accessor for ScriptIndex);
              (*v181)(v73, 0, 1, v19);

              v74 = sub_1AFAF8B58(v71, v72, v192, v193, v184, 0x72657474696D65uLL, 0xE700000000000000, v73);
              v76 = v75;

              sub_1AFD53CA8(v73, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v196 = 0;
              v197 = 0xE000000000000000;
              sub_1AFDFE218();

              v196 = 0xD000000000000022;
              v197 = v182;
              MEMORY[0x1B2718AE0](v74, v76);

              v78 = v196;
              v77 = v197;
              v79 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              v80 = qword_1ED73B890;
              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v81 = swift_allocObject();
              *(v81 + 16) = v183;
              *(v81 + 56) = MEMORY[0x1E69E6158];
              *(v81 + 64) = sub_1AF0D544C();
              *(v81 + 32) = v78;
              *(v81 + 40) = v77;

              sub_1AFDFC4C8(v79, &dword_1AF0CE000, v80, "%{public}s", 10, 2, v81);

              v82 = v188;
              sub_1AFDFC288();
              v83 = v190;
              v84 = v191[12];
              v85 = v191[16];
              v86 = &v190[v191[20]];
              (*v180)(v190, v82, v189);
              *(v83 + v84) = v79;
              *(v83 + v85) = 0;
              *v86 = v78;
              *(v86 + 1) = v77;

              sub_1AFDFC608();

              sub_1AFD53198(v83, sub_1AF0D4E74);

              v70 = (v199 + 24);
              v19 = v194;
              v69 = v195 - 1;
              v58 = v186;
            }

            while (v195 != 1);
          }

          v87 = v178;
          v88 = *(*(v178 + 40) + 16);
          v89 = *(v88 + 128);
          a1 = v171;
          if (*(v89 + 16))
          {
            v90 = sub_1AF449CB8(v173);
            if ((v91 & 1) != 0 && *(*(v88 + 24) + 16 * *(*(v89 + 56) + 8 * v90) + 32) == v173)
            {
              v196 = v173;
              v197 = &off_1F2558F90;
              v198 = 1;

              sub_1AF6304E8(v167 + 104, &v196, v179, 0, v87, v167);

              sub_1AF635250(&v196);
            }
          }

          sub_1AFD53F14(0, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
          v93 = *(*(v87 + 40) + 16);
          v94 = *(v93 + 128);
          if (*(v94 + 16))
          {
            v95 = v92;
            v96 = sub_1AF449CB8(v92);
            if ((v97 & 1) != 0 && *(*(v93 + 24) + 16 * *(*(v94 + 56) + 8 * v96) + 32) == v95)
            {
              v196 = v95;
              v197 = &off_1F250F310;
              v198 = 1;
              v98 = v178;

              sub_1AF6304E8(v167 + 104, &v196, v179, 0, v98, v167);

              sub_1AF635250(&v196);
            }
          }
        }

        result = sub_1AFD53198(v58, type metadata accessor for ScriptIndex);
        v33 = (v185 + 1);
        v30 = v178;
        if ((v185 + 1) == v168)
        {
          return result;
        }
      }

LABEL_91:
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else
  {
    v185 = v25;
    v179 = v13;
    v99 = a1[6];
    v172 = a1[7];
    if (v99 != v172)
    {
      v168 = type metadata accessor for EmitterScript(0);
      v167 = *(*(v168 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
      v177 = v100;
      v101 = *(v100 - 8);
      v173 = v20 + 48;
      v166 = *(v101 + 72);
      v162 = 0x80000001AFF47E70;
      v182 = 0x80000001AFF4F1E0;
      v181 = (v20 + 56);
      v180 = (v184 + 32);
      v102 = &unk_1F25040C0;
      if (v199 < 1029)
      {
        v102 = &unk_1F2504088;
      }

      v164 = v102;
      LODWORD(v163) = v195 | (v199 > 1032);
      v183 = xmmword_1AFE431C0;
      v169 = v22;
      v194 = v19;
      while (1)
      {
        v170 = a1[2];

        if (*(v30 + 184))
        {
          goto LABEL_91;
        }

        v104 = *(v30 + 168);
        v186 = v99;
        v105 = *(v104 + 4 * v99);
        v106 = *(*(v103 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v105 + 8);

        v107 = v176;
        if (*(v176 + 16) && (v108 = sub_1AF449D3C(v105 | (v106 << 32)), (v109 & 1) != 0))
        {
          v110 = (*(v107 + 56) + 8 * v108);
          v111 = *v110;
          v112 = v110[1];
          v114 = v185;
          v113 = v186;
        }

        else
        {

          if (*(v30 + 184))
          {
            goto LABEL_91;
          }

          v113 = v186;
          v111 = *(*(v30 + 168) + 4 * v186);
          v112 = *(*(v115 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v111 + 8);

          v114 = v185;
        }

        v116 = &v175[v167 * v113];
        v117 = v179;
        sub_1AFB12858(&v116[*(v168 + 32)], v179);
        v118 = *v173;
        if ((*v173)(v117, 1, v19) == 1)
        {

          if (*(v30 + 184))
          {
            goto LABEL_91;
          }

          v120 = *(*(v30 + 168) + 4 * v186);
          v121 = *(*(v119 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v120 + 8);

          *v114 = v120;
          v114[1] = v121;
          v30 = v178;
          swift_storeEnumTagMultiPayload();
          if (v118(v179, 1, v19) != 1)
          {
            sub_1AFD53CA8(v179, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          sub_1AFD53D8C(v117, v114, type metadata accessor for ScriptIndex);
        }

        v122 = v169;
        sub_1AFD531F8(v114, v169, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v122, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v123 = *v122;
          v124 = *(v107 + 16);
          v195 = v123;
          if (v124)
          {
            v125 = sub_1AF449D3C(v123);
            if (v127)
            {
              *&v126 = *(*(v107 + 56) + 8 * v125);
              v195 = v126;
            }
          }

          sub_1AFD53198(v114, type metadata accessor for ScriptIndex);
          *v114 = v195;
          swift_storeEnumTagMultiPayload();
        }

        v128 = &v174[v166 * v186];
        if (!*&v128[*(v177 + 10)] && !*&v128[*(v177 + 11)])
        {
          v129 = v164;
          if (v163)
          {
            v129 = &unk_1F25040F8;
            if (*v116 == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v129 = swift_allocObject();
              v129[1] = v183;
              v196 = 0xD000000000000017;
              v197 = v162;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v130 = v197;
              *(v129 + 4) = v196;
              *(v129 + 5) = v130;
              *(v129 + 48) = 0;
            }
          }

          v165 = v129;
          v131 = *(v129 + 2);
          if (v131)
          {
            v184 = v111 | (v112 << 32);
            v132 = v165 + 5;
            do
            {
              *&v195 = v131;
              v133 = *(v132 - 1);
              v134 = *v132;
              v199 = v132;
              v135 = v187;
              sub_1AFD531F8(v114, v187, type metadata accessor for ScriptIndex);
              (*v181)(v135, 0, 1, v194);

              v136 = sub_1AFAF8B58(v133, v134, v192, v193, v184, 0x72657474696D65uLL, 0xE700000000000000, v135);
              v138 = v137;

              sub_1AFD53CA8(v135, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v196 = 0;
              v197 = 0xE000000000000000;
              sub_1AFDFE218();

              v196 = 0xD000000000000022;
              v197 = v182;
              MEMORY[0x1B2718AE0](v136, v138);

              v140 = v196;
              v139 = v197;
              v141 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              v142 = qword_1ED73B890;
              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v143 = swift_allocObject();
              *(v143 + 16) = v183;
              *(v143 + 56) = MEMORY[0x1E69E6158];
              *(v143 + 64) = sub_1AF0D544C();
              *(v143 + 32) = v140;
              *(v143 + 40) = v139;

              sub_1AFDFC4C8(v141, &dword_1AF0CE000, v142, "%{public}s", 10, 2, v143);

              v144 = v188;
              sub_1AFDFC288();
              v145 = v190;
              v146 = v191[12];
              v147 = v191[16];
              v148 = &v190[v191[20]];
              (*v180)(v190, v144, v189);
              *(v145 + v146) = v141;
              *(v145 + v147) = 0;
              *v148 = v140;
              *(v148 + 1) = v139;

              sub_1AFDFC608();

              sub_1AFD53198(v145, sub_1AF0D4E74);

              v132 = (v199 + 24);
              v131 = v195 - 1;
              v114 = v185;
            }

            while (v195 != 1);
          }

          v30 = v178;
          v149 = *(*(v178 + 40) + 16);
          v150 = *(v149 + 128);
          if (*(v150 + 16))
          {
            v151 = sub_1AF449CB8(v177);
            if ((v152 & 1) != 0 && *(*(v149 + 24) + 16 * *(*(v150 + 56) + 8 * v151) + 32) == v177)
            {
              v196 = v177;
              v197 = &off_1F2558F90;
              v198 = 1;

              sub_1AF6304E8((v170 + 13), &v196, v186, 0, v30, v170);

              sub_1AF635250(&v196);
            }
          }

          sub_1AFD53F14(0, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
          v154 = *(*(v30 + 40) + 16);
          v155 = *(v154 + 128);
          v19 = v194;
          if (*(v155 + 16))
          {
            v156 = v153;
            v157 = sub_1AF449CB8(v153);
            if ((v158 & 1) != 0 && *(*(v154 + 24) + 16 * *(*(v155 + 56) + 8 * v157) + 32) == v156)
            {
              v196 = v156;
              v197 = &off_1F250F310;
              v198 = 1;

              sub_1AF6304E8((v170 + 13), &v196, v186, 0, v30, v170);

              sub_1AF635250(&v196);
            }
          }
        }

        v99 = v186 + 1;
        result = sub_1AFD53198(v114, type metadata accessor for ScriptIndex);
        a1 = v171;
        if (v99 == v172)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AFD44C10(void *a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v245 = a8;
  v273 = a7;
  v270 = a6;
  v269 = a5;
  v246 = a4;
  v247 = a3;
  v238 = a13;
  v237 = a12;
  v256 = a11;
  v244 = a10;
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v230 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v271 = (&v230 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v261 = &v230 - v22;
  v23 = type metadata accessor for ScriptIndex(0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v230 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v230 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v254 = (&v230 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v267 = &v230 - v33;
  v34 = a1[1];
  v260 = sub_1AF706CCC(v34, a1);
  v236 = sub_1AF706FA8(v34, a1);
  v277 = v34;
  result = sub_1AF70687C(v34, a1);
  v259 = result;
  v36 = v13;
  v37 = a1[11];
  v240 = a2;
  v275 = v23;
  v253 = v37;
  if (!v37)
  {
    v268 = v29;
    v254 = v26;
    v261 = v18;
    v130 = a1[6];
    v253 = a1[7];
    if (v130 == v253)
    {
      return result;
    }

    v255 = type metadata accessor for EmitterScript(0);
    v252 = *(*(v255 - 8) + 72);
    sub_1AFD53F14(0, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
    v239 = v131;
    v235 = *(*(v131 - 1) + 72);
    sub_1AFD53F14(0, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
    v251 = v132;
    v250 = *(*(v132 - 1) + 72);
    v249 = (v24 + 48);
    v242 = "mpiled script for ";
    v264 = v24 + 56;
    v234 = "nction for script ";
    v233 = "tal library for script ";
    v231 = 0x80000001AFF4F110;
    v232 = 0x80000001AFF4F1B0;
    v133 = v268;
LABEL_91:
    v135 = v36;
    v262 = v259 + v250 * v130;
    sub_1AFD53C4C(v262, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);

    v136 = sub_1AF6496EC(v130);

    if (*(a2 + 16) && (v137 = sub_1AF449D3C(v136), (v138 & 1) != 0))
    {
      v139 = (*(a2 + 56) + 8 * v137);
      v141 = *v139;
      v140 = v139[1];
      v274 = v141;
    }

    else
    {

      v142 = sub_1AF6496EC(v130);

      v274 = v142;
      v140 = HIDWORD(v142);
    }

    v263 = v140;
    v143 = &v260[v252 * v130];
    v144 = v261;
    sub_1AFB12858(&v143[*(v255 + 32)], v261);
    v145 = *v249;
    v146 = (*v249)(v144, 1, v23);
    v267 = v130;
    if (v146 == 1)
    {

      v147 = sub_1AF6496EC(v130);
      v133 = v268;

      *v133 = v147;
      v148 = v261;
      swift_storeEnumTagMultiPayload();
      v149 = v145(v148, 1, v23);
      v150 = v262;
      if (v149 != 1)
      {
        sub_1AFD53CA8(v148, qword_1ED730680, type metadata accessor for ScriptIndex);
      }
    }

    else
    {
      sub_1AFD53D8C(v144, v133, type metadata accessor for ScriptIndex);
      v150 = v262;
    }

    v151 = v254;
    sub_1AFD531F8(v133, v254, type metadata accessor for ScriptIndex);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1AFD53198(v151, type metadata accessor for ScriptIndex);
    }

    else
    {
      *&v152 = *v151;
      v153 = *(a2 + 16);
      v276 = v152;
      if (v153)
      {
        v154 = sub_1AF449D3C(v152);
        if (v156)
        {
          *&v155 = *(*(a2 + 56) + 8 * v154);
          v276 = v155;
        }
      }

      sub_1AFD53198(v133, type metadata accessor for ScriptIndex);
      *v133 = v276;
      swift_storeEnumTagMultiPayload();
    }

    sub_1AFD531F8(v143, v150, type metadata accessor for EmitterScript);
    v158 = sub_1AFAA71FC(v157);
    v159 = v251;
    v160 = v150 + v251[9];
    *v160 = v158;
    *(v160 + 8) = 0;
    *(v150 + v159[10]) = 1;
    *(v150 + v159[11]) = 0;
    v161 = v150 + v159[12];
    strcpy(v161, "<precompiled>");
    *(v161 + 14) = -4864;
    *(v150 + v159[13]) = MEMORY[0x1E69E7CC0];
    sub_1AFAA7344(0, 1, &v279);
    v265 = v135;
    if (v135)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v279 = 0;
      v280 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000002DLL, v242 | 0x8000000000000000);
      MEMORY[0x1B2718AE0](0x5372657474696D45, 0xED00007470697263);
      MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
      v162 = v265;
      swift_getErrorValue();
      sub_1AFDFEDD8();
      v164 = v279;
      v163 = v280;
      v165 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v229 = v165;
        swift_once();
        v165 = v229;
      }

      v279 = 0;
      sub_1AF0D4F18(v165, &v279, v164, v163);

      result = sub_1AFD53198(v133, type metadata accessor for ScriptIndex);
      v36 = 0;
LABEL_89:
      v134 = v267;
      goto LABEL_90;
    }

    v243 = v283;
    v166 = v284;

    v278 = MEMORY[0x1E69E7CD0];
    v167 = *v143;
    v168 = v246;
    v272 = v167;
    v248 = v166;
    if (v167 >= 4)
    {
      LODWORD(v266) = 1;
    }

    else
    {
      LODWORD(v266) = sub_1AFDFEE28();
    }

    v169 = sub_1AFD0834C(v247, v168 & 1);
    v170 = *(v169 + 2);
    if (!v170)
    {

      v274 = 0;
      v216 = MEMORY[0x1E69E7CC0];
      *&v276 = MEMORY[0x1E69E7CC0];
      v217 = v168;
      goto LABEL_158;
    }

    v171 = 0;
    v241 = v169;
    v172 = (v169 + 48);
    *&v276 = MEMORY[0x1E69E7CC0];
    v257 = MEMORY[0x1E69E7CC0];
    v258 = v274 | (v263 << 32);
    v173 = v273;
    while (1)
    {
      v175 = *(v172 - 2);
      v176 = *(v172 - 1);
      LODWORD(v274) = *v172;
      if (v266)
      {
        swift_bridgeObjectRetain_n();

        v177 = v176;
        v178 = v172;
        v179 = v170;
        v180 = v173;
        v181 = v171;
        v182 = v267;
        v263 = v175;
        v183 = sub_1AF6496EC(v267);

        v184 = v182;
        v171 = v181;
        v173 = v180;
        v170 = v179;
        v172 = v178;
        v176 = v177;
        v185 = sub_1AF6496EC(v184);

        v186 = v271;
        *v271 = v185;
        v187 = v275;
        swift_storeEnumTagMultiPayload();
        v188 = v187;
        v175 = v263;
        (*v264)(v186, 0, 1, v188);
      }

      else
      {
        v186 = v271;
        sub_1AFD531F8(v133, v271, type metadata accessor for ScriptIndex);
        (*v264)(v186, 0, 1, v275);
        swift_bridgeObjectRetain_n();
        v183 = v258;
      }

      v189 = sub_1AFAF8B58(v175, v176, v269, v270, v183, 0x72657474696D65uLL, 0xE700000000000000, v186);
      v191 = v190;

      sub_1AFD53CA8(v186, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v279, v189, v191);

      if (v272 >= 4)
      {
        break;
      }

      v192 = sub_1AFDFEE28();

      if (v192)
      {
        goto LABEL_125;
      }

      if (v272 != 2)
      {

        v204 = v245;
        if (!*(v245 + 16) || (v205 = sub_1AF419914(v189, v191), (v206 & 1) == 0))
        {

          v36 = v265;
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v279 = 0;
          v280 = 0xE000000000000000;
          sub_1AFDFE218();

          v279 = 0xD000000000000022;
          v280 = v231;
          MEMORY[0x1B2718AE0](v189, v191);

          v219 = v279;
          v218 = v280;
          v220 = sub_1AFDFDA08();
          v23 = v275;
          if (qword_1ED731058 != -1)
          {
            goto LABEL_156;
          }

          goto LABEL_88;
        }

        v207 = v205;

        v208 = *(*(v204 + 56) + 8 * v207);
        v209 = v257;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v209 = sub_1AF42469C(0, *(v209 + 2) + 1, 1, v209);
        }

        v133 = v268;
        v197 = v276;
        v211 = *(v209 + 2);
        v210 = *(v209 + 3);
        if (v211 >= v210 >> 1)
        {
          v209 = sub_1AF42469C(v210 > 1, v211 + 1, 1, v209);
        }

        *(v209 + 2) = v211 + 1;
        v257 = v209;
        *&v209[8 * v211 + 32] = v208;
        v171 = v244;

        v173 = v273;
        goto LABEL_118;
      }

      if (v256)
      {

        v197 = v276;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v197 = sub_1AF4246B0(0, *(v197 + 2) + 1, 1, v197);
        }

        v202 = *(v197 + 2);
        v201 = *(v197 + 3);
        if (v202 >= v201 >> 1)
        {
          v197 = sub_1AF4246B0(v201 > 1, v202 + 1, 1, v197);
        }

        *(v197 + 2) = v202 + 1;
        v203 = &v197[24 * v202];
        *(v203 + 4) = v189;
        *(v203 + 5) = v191;
        v203[48] = v274;
        v171 = v256;
      }

      else
      {

        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v279 = 0;
        v280 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000027, v234 | 0x8000000000000000);
        MEMORY[0x1B2718AE0](v189, v191);

        MEMORY[0x1B2718AE0](0xD000000000000031, v233 | 0x8000000000000000);
        v212 = v279;
        v213 = v280;
        v214 = sub_1AFDFDA08();
        v197 = v276;
        if (qword_1ED731058 != -1)
        {
          v215 = v214;
          swift_once();
          v214 = v215;
        }

        v279 = 0;
        sub_1AF0D4F18(v214, &v279, v212, v213);
      }

LABEL_117:
      v133 = v268;
LABEL_118:
      *&v276 = v197;
      v172 += 24;
      if (!--v170)
      {

        v217 = v246;
        v274 = v171;
        v216 = v257;
LABEL_158:
        v134 = v267;
        v222 = &v236[v235 * v267];
        sub_1AFD53C4C(v222, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
        sub_1AFD53D18(v262, v222, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
        v223 = v239;
        v224 = (v222 + v239[15]);
        v225 = v248;
        *v224 = v243;
        v224[1] = v225;
        *(v222 + v223[9]) = v274;
        *(v222 + v223[10]) = v216;
        *(v222 + v223[11]) = v276;
        *(v222 + v223[12]) = 0;
        *(v222 + v223[13]) = 0;
        v226 = v222 + v223[14];
        *v226 = v247;
        *(v226 + 8) = v217 & 1;

        v227 = sub_1AF6496EC(v134);

        v281 = v223;
        v282 = &off_1F2558F90;
        v228 = sub_1AF585714(&v279);
        sub_1AFD53D18(v222, v228, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
        LOBYTE(v283) = 0;
        sub_1AF8259D0(&v279, v255, v227);
        sub_1AF967B70(v278);
        v133 = v268;
        result = sub_1AFD53198(v268, type metadata accessor for ScriptIndex);
        a2 = v240;
        v23 = v275;
        v36 = v265;
LABEL_90:
        v130 = v134 + 1;
        if (v130 == v253)
        {
          return result;
        }

        goto LABEL_91;
      }
    }

LABEL_125:
    if (!v173 || (v193 = *(v173 + 96), v194 = sub_1AFDFCEC8(), v195 = [v193 objectForKeyedSubscript_], v193, v194, !v195))
    {

LABEL_153:

      v36 = v265;

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v279 = 0;
      v280 = 0xE000000000000000;
      sub_1AFDFE218();

      v279 = 0xD000000000000025;
      v280 = v232;
      MEMORY[0x1B2718AE0](v189, v191);

      v219 = v279;
      v218 = v280;
      v220 = sub_1AFDFDA08();
      v23 = v275;
      if (qword_1ED731058 != -1)
      {
LABEL_156:
        v221 = v220;
        swift_once();
        v220 = v221;
      }

LABEL_88:
      v279 = 0;
      sub_1AF0D4F18(v220, &v279, v219, v218);

      v133 = v268;
      result = sub_1AFD53198(v268, type metadata accessor for ScriptIndex);
      a2 = v240;
      goto LABEL_89;
    }

    v196 = [v195 isUndefined];

    if (v196)
    {
      goto LABEL_153;
    }

    v197 = v276;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v173 = v273;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v197 = sub_1AF4246B0(0, *(v197 + 2) + 1, 1, v197);
    }

    v200 = *(v197 + 2);
    v199 = *(v197 + 3);
    if (v200 >= v199 >> 1)
    {
      v197 = sub_1AF4246B0(v199 > 1, v200 + 1, 1, v197);
    }

    *(v197 + 2) = v200 + 1;
    v174 = &v197[24 * v200];
    *(v174 + 4) = v189;
    *(v174 + 5) = v191;
    v174[48] = v274;

    v171 = v173;
    goto LABEL_117;
  }

  v252 = a1[13];
  if (v252)
  {
    v255 = type metadata accessor for EmitterScript(0);
    v251 = *(*(v255 - 8) + 72);
    sub_1AFD53F14(0, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
    v235 = v38;
    v234 = *(*(v38 - 1) + 72);
    v39 = v24;
    v40 = &unk_1ED728DD0;
    sub_1AFD53F14(0, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
    v41 = 0;
    v250 = v42;
    v249 = *(*(v42 - 1) + 72);
    v248 = (v39 + 48);
    v241 = "mpiled script for ";
    v263 = v39 + 56;
    v233 = "nction for script ";
    v232 = "tal library for script ";
    v230 = 0x80000001AFF4F110;
    v231 = 0x80000001AFF4F1B0;
    v43 = v267;
    while (1)
    {
      v54 = *(v253 + 8 * v41);
      v266 = v41;
      v262 = v259 + v249 * v41;
      sub_1AFD53C4C(v262, v40, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);

      v268 = v54;
      v55 = sub_1AF6496EC(v54);

      if (*(a2 + 16) && (v56 = sub_1AF449D3C(v55), (v57 & 1) != 0))
      {
        v58 = v40;
        v59 = (*(a2 + 56) + 8 * v56);
        v61 = *v59;
        v60 = v59[1];
        v274 = v61;
      }

      else
      {
        v58 = v40;

        v62 = sub_1AF6496EC(v268);

        v274 = v62;
        v60 = HIDWORD(v62);
      }

      v258 = v60;
      v63 = &v260[v251 * v266];
      v64 = v261;
      sub_1AFB12858(&v63[*(v255 + 32)], v261);
      v65 = *v248;
      if ((*v248)(v64, 1, v23) == 1)
      {

        v66 = sub_1AF6496EC(v268);
        v43 = v267;

        *v43 = v66;
        v67 = v261;
        swift_storeEnumTagMultiPayload();
        if (v65(v67, 1, v23) != 1)
        {
          sub_1AFD53CA8(v67, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        sub_1AFD53D8C(v64, v43, type metadata accessor for ScriptIndex);
      }

      v68 = v254;
      sub_1AFD531F8(v43, v254, type metadata accessor for ScriptIndex);
      v40 = v58;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v68, type metadata accessor for ScriptIndex);
        v70 = v262;
      }

      else
      {
        *&v69 = *v68;
        v71 = *(a2 + 16);
        v276 = v69;
        if (v71)
        {
          v72 = sub_1AF449D3C(v69);
          v70 = v262;
          if (v74)
          {
            *&v73 = *(*(a2 + 56) + 8 * v72);
            v276 = v73;
          }
        }

        else
        {
          v70 = v262;
        }

        sub_1AFD53198(v43, type metadata accessor for ScriptIndex);
        *v43 = v276;
        swift_storeEnumTagMultiPayload();
      }

      sub_1AFD531F8(v63, v70, type metadata accessor for EmitterScript);
      v76 = sub_1AFAA71FC(v75);
      v77 = v250;
      v78 = v70 + v250[9];
      *v78 = v76;
      *(v78 + 8) = 0;
      *(v70 + v77[10]) = 1;
      *(v70 + v77[11]) = 0;
      v79 = v70 + v77[12];
      strcpy(v79, "<precompiled>");
      *(v79 + 14) = -4864;
      *(v70 + v77[13]) = MEMORY[0x1E69E7CC0];
      sub_1AFAA7344(0, 1, &v279);
      v265 = v36;
      if (v36)
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v279 = 0;
        v280 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000002DLL, v241 | 0x8000000000000000);
        MEMORY[0x1B2718AE0](0x5372657474696D45, 0xED00007470697263);
        MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
        v80 = v265;
        swift_getErrorValue();
        sub_1AFDFEDD8();
        v82 = v279;
        v81 = v280;
        v83 = sub_1AFDFDA08();
        v53 = v266;
        if (qword_1ED731058 != -1)
        {
          v128 = v83;
          swift_once();
          v83 = v128;
        }

        v279 = 0;
        sub_1AF0D4F18(v83, &v279, v82, v81);

        result = sub_1AFD53198(v43, type metadata accessor for ScriptIndex);
        v36 = 0;
        goto LABEL_6;
      }

      v242 = v283;
      v243 = v284;

      v278 = MEMORY[0x1E69E7CD0];
      v84 = *v63;
      v272 = v84;
      if (v84 <= 1)
      {
        break;
      }

      v85 = v246;
      if (v84 == 2 || v84 == 3)
      {
        goto LABEL_35;
      }

      LODWORD(v264) = 1;
LABEL_36:

      v86 = sub_1AFD0834C(v247, v85 & 1);
      v87 = *(v86 + 2);
      if (!v87)
      {

        v44 = MEMORY[0x1E69E7CC0];
        v45 = MEMORY[0x1E69E7CC0];
        goto LABEL_5;
      }

      *&v276 = 0;
      v239 = v86;
      v88 = (v86 + 48);
      v44 = MEMORY[0x1E69E7CC0];
      v257 = MEMORY[0x1E69E7CC0];
      v258 = v274 | (v258 << 32);
      do
      {
        v90 = *(v88 - 2);
        v91 = *(v88 - 1);
        LODWORD(v274) = *v88;
        if (v264)
        {
          swift_bridgeObjectRetain_n();

          v92 = v268;
          v93 = sub_1AF6496EC(v268);

          v94 = sub_1AF6496EC(v92);

          v95 = v271;
          *v271 = v94;
          v96 = v95;
          v97 = v275;
          swift_storeEnumTagMultiPayload();
          (*v263)(v96, 0, 1, v97);
        }

        else
        {
          v96 = v271;
          sub_1AFD531F8(v43, v271, type metadata accessor for ScriptIndex);
          (*v263)(v96, 0, 1, v275);
          swift_bridgeObjectRetain_n();
          v93 = v258;
        }

        v98 = sub_1AFAF8B58(v90, v91, v269, v270, v93, 0x72657474696D65uLL, 0xE700000000000000, v96);
        v100 = v99;

        sub_1AFD53CA8(v96, qword_1ED730680, type metadata accessor for ScriptIndex);

        sub_1AF0D2164(&v279, v98, v100);

        if (v272 >= 4)
        {

LABEL_47:
          if (!v273 || (v102 = *(v273 + 96), v103 = sub_1AFDFCEC8(), v104 = [v102 objectForKeyedSubscript_], v102, v103, !v104))
          {

LABEL_74:

            v36 = v265;
            v53 = v266;

            v40 = &unk_1ED728DD0;
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v279 = 0;
            v280 = 0xE000000000000000;
            sub_1AFDFE218();

            v279 = 0xD000000000000025;
            v280 = v231;
            MEMORY[0x1B2718AE0](v98, v100);

            v126 = v279;
            v125 = v280;
            v127 = sub_1AFDFDA08();
            v23 = v275;
            if (qword_1ED731058 != -1)
            {
              goto LABEL_83;
            }

            goto LABEL_77;
          }

          v105 = [v104 isUndefined];

          if (v105)
          {
            goto LABEL_74;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_1AF4246B0(0, *(v44 + 2) + 1, 1, v44);
          }

          v106 = v274;
          v108 = *(v44 + 2);
          v107 = *(v44 + 3);
          if (v108 >= v107 >> 1)
          {
            v44 = sub_1AF4246B0(v107 > 1, v108 + 1, 1, v44);
          }

          *(v44 + 2) = v108 + 1;
          v89 = &v44[24 * v108];
          *(v89 + 4) = v98;
          *(v89 + 5) = v100;
          v89[48] = v106;

LABEL_39:
          v43 = v267;
          goto LABEL_40;
        }

        v101 = sub_1AFDFEE28();

        if (v101)
        {
          goto LABEL_47;
        }

        if (v272 == 2)
        {
          if (v256)
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_1AF4246B0(0, *(v44 + 2) + 1, 1, v44);
            }

            v109 = v274;
            v111 = *(v44 + 2);
            v110 = *(v44 + 3);
            if (v111 >= v110 >> 1)
            {
              v44 = sub_1AF4246B0(v110 > 1, v111 + 1, 1, v44);
            }

            *(v44 + 2) = v111 + 1;
            v112 = &v44[24 * v111];
            *(v112 + 4) = v98;
            *(v112 + 5) = v100;
            v112[48] = v109;
            *&v276 = v256;
          }

          else
          {

            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v279 = 0;
            v280 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000027, v233 | 0x8000000000000000);
            MEMORY[0x1B2718AE0](v98, v100);

            MEMORY[0x1B2718AE0](0xD000000000000031, v232 | 0x8000000000000000);
            v121 = v279;
            v122 = v280;
            v123 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v124 = v123;
              swift_once();
              v123 = v124;
            }

            v279 = 0;
            sub_1AF0D4F18(v123, &v279, v121, v122);
          }

          goto LABEL_39;
        }

        v113 = v245;
        if (!*(v245 + 16) || (v114 = sub_1AF419914(v98, v100), (v115 & 1) == 0))
        {

          v36 = v265;
          v53 = v266;
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v279 = 0;
          v280 = 0xE000000000000000;
          sub_1AFDFE218();

          v279 = 0xD000000000000022;
          v280 = v230;
          MEMORY[0x1B2718AE0](v98, v100);

          v126 = v279;
          v125 = v280;
          v127 = sub_1AFDFDA08();
          v23 = v275;
          v40 = &unk_1ED728DD0;
          if (qword_1ED731058 == -1)
          {
            goto LABEL_77;
          }

LABEL_83:
          v129 = v127;
          swift_once();
          v127 = v129;
LABEL_77:
          v279 = 0;
          sub_1AF0D4F18(v127, &v279, v126, v125);

          v43 = v267;
          result = sub_1AFD53198(v267, type metadata accessor for ScriptIndex);
          a2 = v240;
          goto LABEL_6;
        }

        v116 = v114;

        v117 = *(*(v113 + 56) + 8 * v116);
        v118 = v257;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_1AF42469C(0, *(v118 + 2) + 1, 1, v118);
        }

        v43 = v267;
        v120 = *(v118 + 2);
        v119 = *(v118 + 3);
        if (v120 >= v119 >> 1)
        {
          v118 = sub_1AF42469C(v119 > 1, v120 + 1, 1, v118);
        }

        *(v118 + 2) = v120 + 1;
        v257 = v118;
        *&v118[8 * v120 + 32] = v117;

LABEL_40:
        v88 += 24;
        --v87;
      }

      while (v87);

      v40 = &unk_1ED728DD0;
      v87 = v276;
      v45 = v257;
LABEL_5:
      v46 = &v236[v234 * v266];
      sub_1AFD53C4C(v46, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v262, v46, v40, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
      v47 = v235;
      v48 = (v46 + v235[15]);
      v49 = v243;
      *v48 = v242;
      v48[1] = v49;
      *(v46 + v47[9]) = v87;
      *(v46 + v47[10]) = v45;
      *(v46 + v47[11]) = v44;
      *(v46 + v47[12]) = 0;
      *(v46 + v47[13]) = 0;
      v50 = v46 + v47[14];
      *v50 = v247;
      *(v50 + 8) = v246 & 1;

      v51 = sub_1AF6496EC(v268);

      v281 = v47;
      v40 = &unk_1ED728DD0;
      v282 = &off_1F2558F90;
      v52 = sub_1AF585714(&v279);
      v53 = v266;
      sub_1AFD53D18(v46, v52, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
      LOBYTE(v283) = 0;
      sub_1AF8259D0(&v279, v255, v51);
      sub_1AF967B70(v278);
      v43 = v267;
      result = sub_1AFD53198(v267, type metadata accessor for ScriptIndex);
      a2 = v240;
      v23 = v275;
      v36 = v265;
LABEL_6:
      v41 = v53 + 1;
      if (v41 == v252)
      {
        return result;
      }
    }

    v85 = v246;
LABEL_35:
    LODWORD(v264) = sub_1AFDFEE28();
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_1AFD4744C(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6)
{
  v192 = a5;
  v193 = a6;
  LODWORD(v195) = a4;
  v199 = a3;
  v176 = a2;
  sub_1AF0D4E74(0);
  v191 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v190 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1AFDFC298();
  v184 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v188 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v187 = &v159 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v159 - v17;
  v19 = type metadata accessor for ScriptIndex(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v159 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v170 = (&v159 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v186 = &v159 - v29;
  v30 = a1[1];
  v175 = sub_1AF706C98(v30, a1);
  v174 = sub_1AF706270(v30, a1);
  result = sub_1AF7067C0(v30, a1);
  v160 = v6;
  v32 = a1[11];
  v171 = a1;
  v178 = v30;
  v169 = v32;
  if (v32)
  {
    v177 = v18;
    v168 = a1[13];
    if (v168)
    {
      inited = type metadata accessor for ParticleInitScript(0);
      v165 = *(*(inited - 8) + 72);
      sub_1AFD53F14(0, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
      v33 = 0;
      v173 = v34;
      v35 = *(v34 - 8);
      v172 = (v20 + 48);
      v164 = *(v35 + 72);
      v159 = 0x80000001AFF47E70;
      v182 = 0x80000001AFF4F1E0;
      v181 = (v20 + 56);
      v180 = (v184 + 32);
      v36 = &unk_1F2504168;
      if (v199 < 1029)
      {
        v36 = &unk_1F2504130;
      }

      v162 = v36;
      v161 = v195 | (v199 > 1032);
      v183 = xmmword_1AFE431C0;
      v194 = v19;
      while (1)
      {
        v37 = v169[v33];
        v167 = a1[2];

        if (*(v30 + 184))
        {
          break;
        }

        v39 = *(v30 + 168);
        v179 = v37;
        v40 = *(v39 + 4 * v37);
        v41 = *(*(v38 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v40 + 8);

        v42 = v176;
        if (*(v176 + 16) && (v43 = sub_1AF449D3C(v40 | (v41 << 32)), (v44 & 1) != 0))
        {
          v45 = (*(v42 + 56) + 8 * v43);
          v46 = *v45;
          v47 = v45[1];
          v48 = v170;
        }

        else
        {

          v48 = v170;
          if (*(v30 + 184))
          {
            break;
          }

          v46 = *(*(v30 + 168) + 4 * v179);
          v47 = *(*(v49 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v46 + 8);
        }

        v185 = v33;
        v50 = &v175[v165 * v33];
        v51 = v177;
        sub_1AFB12858(&v50[*(inited + 40)], v177);
        v52 = *v172;
        if ((*v172)(v51, 1, v19) == 1)
        {
          v53 = v178;

          if (*(v53 + 184))
          {
            break;
          }

          v55 = *(*(v53 + 168) + 4 * v179);
          v56 = *(*(v54 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v55 + 8);

          v57 = v186;
          *v186 = v55;
          *(v57 + 4) = v56;
          v58 = v57;
          swift_storeEnumTagMultiPayload();
          v59 = v52(v177, 1, v19);
          a1 = v171;
          if (v59 != 1)
          {
            sub_1AFD53CA8(v177, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          v60 = v51;
          v58 = v186;
          sub_1AFD53D8C(v60, v186, type metadata accessor for ScriptIndex);
        }

        sub_1AFD531F8(v58, v48, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v48, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v61 = *v48;
          v62 = *(v42 + 16);
          v195 = v61;
          if (v62)
          {
            v63 = sub_1AF449D3C(v61);
            if (v65)
            {
              *&v64 = *(*(v42 + 56) + 8 * v63);
              v195 = v64;
            }
          }

          sub_1AFD53198(v58, type metadata accessor for ScriptIndex);
          *v58 = v195;
          swift_storeEnumTagMultiPayload();
        }

        v66 = &v174[v164 * v185];
        if (!*&v66[*(v173 + 40)] && !*&v66[*(v173 + 44)])
        {
          v67 = v162;
          if (v161)
          {
            v67 = &unk_1F25041A0;
            if (*v50 == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v67 = swift_allocObject();
              v67[1] = v183;
              v196 = 0xD000000000000017;
              v197 = v159;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v68 = v197;
              *(v67 + 4) = v196;
              *(v67 + 5) = v68;
              *(v67 + 48) = 0;
            }
          }

          v163 = v67;
          v69 = *(v67 + 2);
          if (v69)
          {
            v184 = v46 | (v47 << 32);
            v70 = v163 + 5;
            do
            {
              *&v195 = v69;
              v71 = *(v70 - 1);
              v72 = *v70;
              v199 = v70;
              v73 = v187;
              sub_1AFD531F8(v58, v187, type metadata accessor for ScriptIndex);
              (*v181)(v73, 0, 1, v19);

              v74 = sub_1AFAF8B58(v71, v72, v192, v193, v184, 0x656C636974726170uLL, 0xEC00000074696E49, v73);
              v76 = v75;

              sub_1AFD53CA8(v73, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v196 = 0;
              v197 = 0xE000000000000000;
              sub_1AFDFE218();

              v196 = 0xD000000000000022;
              v197 = v182;
              MEMORY[0x1B2718AE0](v74, v76);

              v78 = v196;
              v77 = v197;
              v79 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              v80 = qword_1ED73B890;
              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v81 = swift_allocObject();
              *(v81 + 16) = v183;
              *(v81 + 56) = MEMORY[0x1E69E6158];
              *(v81 + 64) = sub_1AF0D544C();
              *(v81 + 32) = v78;
              *(v81 + 40) = v77;

              sub_1AFDFC4C8(v79, &dword_1AF0CE000, v80, "%{public}s", 10, 2, v81);

              v82 = v188;
              sub_1AFDFC288();
              v83 = v190;
              v84 = v191[12];
              v85 = v191[16];
              v86 = &v190[v191[20]];
              (*v180)(v190, v82, v189);
              *(v83 + v84) = v79;
              *(v83 + v85) = 0;
              *v86 = v78;
              *(v86 + 1) = v77;

              sub_1AFDFC608();

              sub_1AFD53198(v83, sub_1AF0D4E74);

              v70 = (v199 + 24);
              v19 = v194;
              v69 = v195 - 1;
              v58 = v186;
            }

            while (v195 != 1);
          }

          v87 = v178;
          v88 = *(*(v178 + 40) + 16);
          v89 = *(v88 + 128);
          a1 = v171;
          if (*(v89 + 16))
          {
            v90 = sub_1AF449CB8(v173);
            if ((v91 & 1) != 0 && *(*(v88 + 24) + 16 * *(*(v89 + 56) + 8 * v90) + 32) == v173)
            {
              v196 = v173;
              v197 = &off_1F2558F90;
              v198 = 1;

              sub_1AF6304E8(v167 + 104, &v196, v179, 0, v87, v167);

              sub_1AF635250(&v196);
            }
          }

          sub_1AFD53F14(0, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
          v93 = *(*(v87 + 40) + 16);
          v94 = *(v93 + 128);
          if (*(v94 + 16))
          {
            v95 = v92;
            v96 = sub_1AF449CB8(v92);
            if ((v97 & 1) != 0 && *(*(v93 + 24) + 16 * *(*(v94 + 56) + 8 * v96) + 32) == v95)
            {
              v196 = v95;
              v197 = &off_1F250F310;
              v198 = 1;
              v98 = v178;

              sub_1AF6304E8(v167 + 104, &v196, v179, 0, v98, v167);

              sub_1AF635250(&v196);
            }
          }
        }

        result = sub_1AFD53198(v58, type metadata accessor for ScriptIndex);
        v33 = (v185 + 1);
        v30 = v178;
        if ((v185 + 1) == v168)
        {
          return result;
        }
      }

LABEL_91:
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else
  {
    v185 = v25;
    v179 = v13;
    v99 = a1[6];
    v172 = a1[7];
    if (v99 != v172)
    {
      v168 = type metadata accessor for ParticleInitScript(0);
      v167 = *(*(v168 - 8) + 72);
      sub_1AFD53F14(0, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
      v177 = v100;
      v101 = *(v100 - 8);
      v173 = v20 + 48;
      inited = *(v101 + 72);
      v162 = 0x80000001AFF47E70;
      v182 = 0x80000001AFF4F1E0;
      v181 = (v20 + 56);
      v180 = (v184 + 32);
      v102 = &unk_1F2504168;
      if (v199 < 1029)
      {
        v102 = &unk_1F2504130;
      }

      v164 = v102;
      LODWORD(v163) = v195 | (v199 > 1032);
      v183 = xmmword_1AFE431C0;
      v169 = v22;
      v194 = v19;
      while (1)
      {
        v170 = a1[2];

        if (*(v30 + 184))
        {
          goto LABEL_91;
        }

        v104 = *(v30 + 168);
        v186 = v99;
        v105 = *(v104 + 4 * v99);
        v106 = *(*(v103 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v105 + 8);

        v107 = v176;
        if (*(v176 + 16) && (v108 = sub_1AF449D3C(v105 | (v106 << 32)), (v109 & 1) != 0))
        {
          v110 = (*(v107 + 56) + 8 * v108);
          v111 = *v110;
          v112 = v110[1];
          v114 = v185;
          v113 = v186;
        }

        else
        {

          if (*(v30 + 184))
          {
            goto LABEL_91;
          }

          v113 = v186;
          v111 = *(*(v30 + 168) + 4 * v186);
          v112 = *(*(v115 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v111 + 8);

          v114 = v185;
        }

        v116 = &v175[v167 * v113];
        v117 = v179;
        sub_1AFB12858(&v116[*(v168 + 40)], v179);
        v118 = *v173;
        if ((*v173)(v117, 1, v19) == 1)
        {

          if (*(v30 + 184))
          {
            goto LABEL_91;
          }

          v120 = *(*(v30 + 168) + 4 * v186);
          v121 = *(*(v119 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v120 + 8);

          *v114 = v120;
          v114[1] = v121;
          v30 = v178;
          swift_storeEnumTagMultiPayload();
          if (v118(v179, 1, v19) != 1)
          {
            sub_1AFD53CA8(v179, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          sub_1AFD53D8C(v117, v114, type metadata accessor for ScriptIndex);
        }

        v122 = v169;
        sub_1AFD531F8(v114, v169, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v122, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v123 = *v122;
          v124 = *(v107 + 16);
          v195 = v123;
          if (v124)
          {
            v125 = sub_1AF449D3C(v123);
            if (v127)
            {
              *&v126 = *(*(v107 + 56) + 8 * v125);
              v195 = v126;
            }
          }

          sub_1AFD53198(v114, type metadata accessor for ScriptIndex);
          *v114 = v195;
          swift_storeEnumTagMultiPayload();
        }

        v128 = &v174[inited * v186];
        if (!*&v128[*(v177 + 10)] && !*&v128[*(v177 + 11)])
        {
          v129 = v164;
          if (v163)
          {
            v129 = &unk_1F25041A0;
            if (*v116 == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v129 = swift_allocObject();
              v129[1] = v183;
              v196 = 0xD000000000000017;
              v197 = v162;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v130 = v197;
              *(v129 + 4) = v196;
              *(v129 + 5) = v130;
              *(v129 + 48) = 0;
            }
          }

          v165 = v129;
          v131 = *(v129 + 2);
          if (v131)
          {
            v184 = v111 | (v112 << 32);
            v132 = v165 + 5;
            do
            {
              *&v195 = v131;
              v133 = *(v132 - 1);
              v134 = *v132;
              v199 = v132;
              v135 = v187;
              sub_1AFD531F8(v114, v187, type metadata accessor for ScriptIndex);
              (*v181)(v135, 0, 1, v194);

              v136 = sub_1AFAF8B58(v133, v134, v192, v193, v184, 0x656C636974726170uLL, 0xEC00000074696E49, v135);
              v138 = v137;

              sub_1AFD53CA8(v135, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v196 = 0;
              v197 = 0xE000000000000000;
              sub_1AFDFE218();

              v196 = 0xD000000000000022;
              v197 = v182;
              MEMORY[0x1B2718AE0](v136, v138);

              v140 = v196;
              v139 = v197;
              v141 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              v142 = qword_1ED73B890;
              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v143 = swift_allocObject();
              *(v143 + 16) = v183;
              *(v143 + 56) = MEMORY[0x1E69E6158];
              *(v143 + 64) = sub_1AF0D544C();
              *(v143 + 32) = v140;
              *(v143 + 40) = v139;

              sub_1AFDFC4C8(v141, &dword_1AF0CE000, v142, "%{public}s", 10, 2, v143);

              v144 = v188;
              sub_1AFDFC288();
              v145 = v190;
              v146 = v191[12];
              v147 = v191[16];
              v148 = &v190[v191[20]];
              (*v180)(v190, v144, v189);
              *(v145 + v146) = v141;
              *(v145 + v147) = 0;
              *v148 = v140;
              *(v148 + 1) = v139;

              sub_1AFDFC608();

              sub_1AFD53198(v145, sub_1AF0D4E74);

              v132 = (v199 + 24);
              v131 = v195 - 1;
              v114 = v185;
            }

            while (v195 != 1);
          }

          v30 = v178;
          v149 = *(*(v178 + 40) + 16);
          v150 = *(v149 + 128);
          if (*(v150 + 16))
          {
            v151 = sub_1AF449CB8(v177);
            if ((v152 & 1) != 0 && *(*(v149 + 24) + 16 * *(*(v150 + 56) + 8 * v151) + 32) == v177)
            {
              v196 = v177;
              v197 = &off_1F2558F90;
              v198 = 1;

              sub_1AF6304E8((v170 + 13), &v196, v186, 0, v30, v170);

              sub_1AF635250(&v196);
            }
          }

          sub_1AFD53F14(0, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
          v154 = *(*(v30 + 40) + 16);
          v155 = *(v154 + 128);
          v19 = v194;
          if (*(v155 + 16))
          {
            v156 = v153;
            v157 = sub_1AF449CB8(v153);
            if ((v158 & 1) != 0 && *(*(v154 + 24) + 16 * *(*(v155 + 56) + 8 * v157) + 32) == v156)
            {
              v196 = v156;
              v197 = &off_1F250F310;
              v198 = 1;

              sub_1AF6304E8((v170 + 13), &v196, v186, 0, v30, v170);

              sub_1AF635250(&v196);
            }
          }
        }

        v99 = v186 + 1;
        result = sub_1AFD53198(v114, type metadata accessor for ScriptIndex);
        a1 = v171;
        if (v99 == v172)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AFD48C2C(void *a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v249 = a8;
  v277 = a7;
  v274 = a6;
  v273 = a5;
  v250 = a4;
  v251 = a3;
  v241 = a13;
  v240 = a12;
  v260 = a11;
  v248 = a10;
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v232 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v275 = (&v232 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v265 = &v232 - v22;
  v23 = type metadata accessor for ScriptIndex(0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v232 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v232 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v258 = (&v232 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v271 = &v232 - v33;
  v34 = a1[1];
  v264 = sub_1AF706C98(v34, a1);
  v239 = sub_1AF706270(v34, a1);
  v281 = v34;
  result = sub_1AF7067C0(v34, a1);
  v263 = result;
  v36 = v13;
  v37 = a1[11];
  v243 = a2;
  v279 = v23;
  v257 = v37;
  if (!v37)
  {
    v272 = v29;
    v258 = v26;
    v265 = v18;
    v131 = a1[6];
    v257 = a1[7];
    if (v131 == v257)
    {
      return result;
    }

    inited = type metadata accessor for ParticleInitScript(0);
    v256 = *(*(inited - 8) + 72);
    sub_1AFD53F14(0, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
    v242 = v132;
    v238 = *(*(v132 - 1) + 72);
    sub_1AFD53F14(0, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
    v255 = v133;
    v254 = *(*(v133 - 1) + 72);
    v253 = (v24 + 48);
    v246 = "mpiled script for ";
    v245 = "rticleUpdateScript>";
    v268 = v24 + 56;
    v237 = "nction for script ";
    v236 = "tal library for script ";
    v234 = 0x80000001AFF4F110;
    v235 = 0x80000001AFF4F1B0;
    v134 = v272;
LABEL_91:
    v136 = v36;
    v266 = v263 + v254 * v131;
    sub_1AFD53C4C(v266, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);

    v137 = sub_1AF6496EC(v131);

    if (*(a2 + 16) && (v138 = sub_1AF449D3C(v137), (v139 & 1) != 0))
    {
      v140 = (*(a2 + 56) + 8 * v138);
      v142 = *v140;
      v141 = v140[1];
      v278 = v142;
    }

    else
    {

      v143 = sub_1AF6496EC(v131);

      v278 = v143;
      v141 = HIDWORD(v143);
    }

    v267 = v141;
    v144 = &v264[v256 * v131];
    v145 = v265;
    sub_1AFB12858(&v144[*(inited + 40)], v265);
    v146 = *v253;
    v147 = (*v253)(v145, 1, v23);
    v271 = v131;
    if (v147 == 1)
    {

      v148 = sub_1AF6496EC(v131);
      v134 = v272;

      *v134 = v148;
      v149 = v265;
      swift_storeEnumTagMultiPayload();
      v150 = v146(v149, 1, v23);
      v151 = v266;
      if (v150 != 1)
      {
        sub_1AFD53CA8(v149, qword_1ED730680, type metadata accessor for ScriptIndex);
      }
    }

    else
    {
      sub_1AFD53D8C(v145, v134, type metadata accessor for ScriptIndex);
      v151 = v266;
    }

    v152 = v258;
    sub_1AFD531F8(v134, v258, type metadata accessor for ScriptIndex);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1AFD53198(v152, type metadata accessor for ScriptIndex);
    }

    else
    {
      *&v153 = *v152;
      v154 = *(a2 + 16);
      v280 = v153;
      if (v154)
      {
        v155 = sub_1AF449D3C(v153);
        if (v157)
        {
          *&v156 = *(*(a2 + 56) + 8 * v155);
          v280 = v156;
        }
      }

      sub_1AFD53198(v134, type metadata accessor for ScriptIndex);
      *v134 = v280;
      swift_storeEnumTagMultiPayload();
    }

    sub_1AFD531F8(v144, v151, type metadata accessor for ParticleInitScript);
    v159 = sub_1AFAA2868(v158);
    v160 = v255;
    v161 = v151 + v255[9];
    *v161 = v159;
    *(v161 + 8) = 0;
    *(v151 + v160[10]) = 1;
    *(v151 + v160[11]) = 0;
    v162 = v151 + v160[12];
    strcpy(v162, "<precompiled>");
    *(v162 + 14) = -4864;
    *(v151 + v160[13]) = MEMORY[0x1E69E7CC0];
    sub_1AFAA2CD8(0, 1uLL, &v283, v163);
    v269 = v136;
    if (v136)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v283 = 0;
      v284 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000002DLL, v246 | 0x8000000000000000);
      MEMORY[0x1B2718AE0](0xD000000000000012, v245 | 0x8000000000000000);
      MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
      v164 = v269;
      swift_getErrorValue();
      sub_1AFDFEDD8();
      v166 = v283;
      v165 = v284;
      v167 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v231 = v167;
        swift_once();
        v167 = v231;
      }

      v283 = 0;
      sub_1AF0D4F18(v167, &v283, v166, v165);

      result = sub_1AFD53198(v134, type metadata accessor for ScriptIndex);
      v36 = 0;
LABEL_89:
      v135 = v271;
      goto LABEL_90;
    }

    v247 = v287;
    v168 = v288;

    v282 = MEMORY[0x1E69E7CD0];
    v169 = *v144;
    v170 = v250;
    v276 = v169;
    v252 = v168;
    if (v169 >= 4)
    {
      LODWORD(v270) = 1;
    }

    else
    {
      LODWORD(v270) = sub_1AFDFEE28();
    }

    v171 = sub_1AFD080F4(v251, v170 & 1);
    v172 = *(v171 + 2);
    if (!v172)
    {

      v278 = 0;
      v218 = MEMORY[0x1E69E7CC0];
      *&v280 = MEMORY[0x1E69E7CC0];
      v219 = v170;
      goto LABEL_158;
    }

    v173 = 0;
    v244 = v171;
    v174 = (v171 + 48);
    *&v280 = MEMORY[0x1E69E7CC0];
    v261 = MEMORY[0x1E69E7CC0];
    v262 = v278 | (v267 << 32);
    v175 = v277;
    while (1)
    {
      v177 = *(v174 - 2);
      v178 = *(v174 - 1);
      LODWORD(v278) = *v174;
      if (v270)
      {
        swift_bridgeObjectRetain_n();

        v179 = v178;
        v180 = v174;
        v181 = v172;
        v182 = v175;
        v183 = v173;
        v184 = v271;
        v267 = v177;
        v185 = sub_1AF6496EC(v271);

        v186 = v184;
        v173 = v183;
        v175 = v182;
        v172 = v181;
        v174 = v180;
        v178 = v179;
        v187 = sub_1AF6496EC(v186);

        v188 = v275;
        *v275 = v187;
        v189 = v279;
        swift_storeEnumTagMultiPayload();
        v190 = v189;
        v177 = v267;
        (*v268)(v188, 0, 1, v190);
      }

      else
      {
        v188 = v275;
        sub_1AFD531F8(v134, v275, type metadata accessor for ScriptIndex);
        (*v268)(v188, 0, 1, v279);
        swift_bridgeObjectRetain_n();
        v185 = v262;
      }

      v191 = sub_1AFAF8B58(v177, v178, v273, v274, v185, 0x656C636974726170uLL, 0xEC00000074696E49, v188);
      v193 = v192;

      sub_1AFD53CA8(v188, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v283, v191, v193);

      if (v276 >= 4)
      {
        break;
      }

      v194 = sub_1AFDFEE28();

      if (v194)
      {
        goto LABEL_125;
      }

      if (v276 != 2)
      {

        v206 = v249;
        if (!*(v249 + 16) || (v207 = sub_1AF419914(v191, v193), (v208 & 1) == 0))
        {

          v36 = v269;
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v283 = 0;
          v284 = 0xE000000000000000;
          sub_1AFDFE218();

          v283 = 0xD000000000000022;
          v284 = v234;
          MEMORY[0x1B2718AE0](v191, v193);

          v221 = v283;
          v220 = v284;
          v222 = sub_1AFDFDA08();
          v23 = v279;
          if (qword_1ED731058 != -1)
          {
            goto LABEL_156;
          }

          goto LABEL_88;
        }

        v209 = v207;

        v210 = *(*(v206 + 56) + 8 * v209);
        v211 = v261;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v211 = sub_1AF42469C(0, *(v211 + 2) + 1, 1, v211);
        }

        v134 = v272;
        v199 = v280;
        v213 = *(v211 + 2);
        v212 = *(v211 + 3);
        if (v213 >= v212 >> 1)
        {
          v211 = sub_1AF42469C(v212 > 1, v213 + 1, 1, v211);
        }

        *(v211 + 2) = v213 + 1;
        v261 = v211;
        *&v211[8 * v213 + 32] = v210;
        v173 = v248;

        v175 = v277;
        goto LABEL_118;
      }

      if (v260)
      {

        v199 = v280;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v199 = sub_1AF4246B0(0, *(v199 + 2) + 1, 1, v199);
        }

        v204 = *(v199 + 2);
        v203 = *(v199 + 3);
        if (v204 >= v203 >> 1)
        {
          v199 = sub_1AF4246B0(v203 > 1, v204 + 1, 1, v199);
        }

        *(v199 + 2) = v204 + 1;
        v205 = &v199[24 * v204];
        *(v205 + 4) = v191;
        *(v205 + 5) = v193;
        v205[48] = v278;
        v173 = v260;
      }

      else
      {

        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v283 = 0;
        v284 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000027, v237 | 0x8000000000000000);
        MEMORY[0x1B2718AE0](v191, v193);

        MEMORY[0x1B2718AE0](0xD000000000000031, v236 | 0x8000000000000000);
        v214 = v283;
        v215 = v284;
        v216 = sub_1AFDFDA08();
        v199 = v280;
        if (qword_1ED731058 != -1)
        {
          v217 = v216;
          swift_once();
          v216 = v217;
        }

        v283 = 0;
        sub_1AF0D4F18(v216, &v283, v214, v215);
      }

LABEL_117:
      v134 = v272;
LABEL_118:
      *&v280 = v199;
      v174 += 24;
      if (!--v172)
      {

        v219 = v250;
        v278 = v173;
        v218 = v261;
LABEL_158:
        v135 = v271;
        v224 = &v239[v238 * v271];
        sub_1AFD53C4C(v224, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
        sub_1AFD53D18(v266, v224, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
        v225 = v242;
        v226 = (v224 + v242[15]);
        v227 = v252;
        *v226 = v247;
        v226[1] = v227;
        *(v224 + v225[9]) = v278;
        *(v224 + v225[10]) = v218;
        *(v224 + v225[11]) = v280;
        *(v224 + v225[12]) = 0;
        *(v224 + v225[13]) = 0;
        v228 = v224 + v225[14];
        *v228 = v251;
        *(v228 + 8) = v219 & 1;

        v229 = sub_1AF6496EC(v135);

        v285 = v225;
        v286 = &off_1F2558F90;
        v230 = sub_1AF585714(&v283);
        sub_1AFD53D18(v224, v230, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
        LOBYTE(v287) = 0;
        sub_1AF8259D0(&v283, inited, v229);
        sub_1AF967B70(v282);
        v134 = v272;
        result = sub_1AFD53198(v272, type metadata accessor for ScriptIndex);
        a2 = v243;
        v23 = v279;
        v36 = v269;
LABEL_90:
        v131 = v135 + 1;
        if (v131 == v257)
        {
          return result;
        }

        goto LABEL_91;
      }
    }

LABEL_125:
    if (!v175 || (v195 = *(v175 + 96), v196 = sub_1AFDFCEC8(), v197 = [v195 objectForKeyedSubscript_], v195, v196, !v197))
    {

LABEL_153:

      v36 = v269;

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v283 = 0;
      v284 = 0xE000000000000000;
      sub_1AFDFE218();

      v283 = 0xD000000000000025;
      v284 = v235;
      MEMORY[0x1B2718AE0](v191, v193);

      v221 = v283;
      v220 = v284;
      v222 = sub_1AFDFDA08();
      v23 = v279;
      if (qword_1ED731058 != -1)
      {
LABEL_156:
        v223 = v222;
        swift_once();
        v222 = v223;
      }

LABEL_88:
      v283 = 0;
      sub_1AF0D4F18(v222, &v283, v221, v220);

      v134 = v272;
      result = sub_1AFD53198(v272, type metadata accessor for ScriptIndex);
      a2 = v243;
      goto LABEL_89;
    }

    v198 = [v197 isUndefined];

    if (v198)
    {
      goto LABEL_153;
    }

    v199 = v280;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v175 = v277;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v199 = sub_1AF4246B0(0, *(v199 + 2) + 1, 1, v199);
    }

    v202 = *(v199 + 2);
    v201 = *(v199 + 3);
    if (v202 >= v201 >> 1)
    {
      v199 = sub_1AF4246B0(v201 > 1, v202 + 1, 1, v199);
    }

    *(v199 + 2) = v202 + 1;
    v176 = &v199[24 * v202];
    *(v176 + 4) = v191;
    *(v176 + 5) = v193;
    v176[48] = v278;

    v173 = v175;
    goto LABEL_117;
  }

  v256 = a1[13];
  if (v256)
  {
    inited = type metadata accessor for ParticleInitScript(0);
    v255 = *(*(inited - 8) + 72);
    sub_1AFD53F14(0, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
    v238 = v38;
    v237 = *(*(v38 - 1) + 72);
    v39 = v24;
    v40 = qword_1ED728E30;
    sub_1AFD53F14(0, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
    v41 = 0;
    v254 = v42;
    v253 = *(*(v42 - 1) + 72);
    v252 = (v39 + 48);
    v245 = "mpiled script for ";
    v244 = "rticleUpdateScript>";
    v267 = v39 + 56;
    v236 = "nction for script ";
    v235 = "tal library for script ";
    v233 = 0x80000001AFF4F110;
    v234 = 0x80000001AFF4F1B0;
    v43 = v271;
    while (1)
    {
      v54 = *(v257 + 8 * v41);
      v270 = v41;
      v266 = v263 + v253 * v41;
      sub_1AFD53C4C(v266, v40, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);

      v272 = v54;
      v55 = sub_1AF6496EC(v54);

      if (*(a2 + 16) && (v56 = sub_1AF449D3C(v55), (v57 & 1) != 0))
      {
        v58 = v40;
        v59 = (*(a2 + 56) + 8 * v56);
        v61 = *v59;
        v60 = v59[1];
        v278 = v61;
      }

      else
      {
        v58 = v40;

        v62 = sub_1AF6496EC(v272);

        v278 = v62;
        v60 = HIDWORD(v62);
      }

      v262 = v60;
      v63 = &v264[v255 * v270];
      v64 = v265;
      sub_1AFB12858(&v63[*(inited + 40)], v265);
      v65 = *v252;
      if ((*v252)(v64, 1, v23) == 1)
      {

        v66 = sub_1AF6496EC(v272);
        v43 = v271;

        *v43 = v66;
        v67 = v265;
        swift_storeEnumTagMultiPayload();
        if (v65(v67, 1, v23) != 1)
        {
          sub_1AFD53CA8(v67, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        sub_1AFD53D8C(v64, v43, type metadata accessor for ScriptIndex);
      }

      v68 = v258;
      sub_1AFD531F8(v43, v258, type metadata accessor for ScriptIndex);
      v40 = v58;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v68, type metadata accessor for ScriptIndex);
        v70 = v266;
      }

      else
      {
        *&v69 = *v68;
        v71 = *(a2 + 16);
        v280 = v69;
        if (v71)
        {
          v72 = sub_1AF449D3C(v69);
          v70 = v266;
          if (v74)
          {
            *&v73 = *(*(a2 + 56) + 8 * v72);
            v280 = v73;
          }
        }

        else
        {
          v70 = v266;
        }

        sub_1AFD53198(v43, type metadata accessor for ScriptIndex);
        *v43 = v280;
        swift_storeEnumTagMultiPayload();
      }

      sub_1AFD531F8(v63, v70, type metadata accessor for ParticleInitScript);
      v76 = sub_1AFAA2868(v75);
      v77 = v254;
      v78 = v70 + v254[9];
      *v78 = v76;
      *(v78 + 8) = 0;
      *(v70 + v77[10]) = 1;
      *(v70 + v77[11]) = 0;
      v79 = v70 + v77[12];
      strcpy(v79, "<precompiled>");
      *(v79 + 14) = -4864;
      *(v70 + v77[13]) = MEMORY[0x1E69E7CC0];
      sub_1AFAA2CD8(0, 1uLL, &v283, v80);
      v269 = v36;
      if (v36)
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v283 = 0;
        v284 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000002DLL, v245 | 0x8000000000000000);
        MEMORY[0x1B2718AE0](0xD000000000000012, v244 | 0x8000000000000000);
        MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
        v81 = v269;
        swift_getErrorValue();
        sub_1AFDFEDD8();
        v83 = v283;
        v82 = v284;
        v84 = sub_1AFDFDA08();
        v53 = v270;
        if (qword_1ED731058 != -1)
        {
          v129 = v84;
          swift_once();
          v84 = v129;
        }

        v283 = 0;
        sub_1AF0D4F18(v84, &v283, v83, v82);

        result = sub_1AFD53198(v43, type metadata accessor for ScriptIndex);
        v36 = 0;
        goto LABEL_6;
      }

      v246 = v287;
      v247 = v288;

      v282 = MEMORY[0x1E69E7CD0];
      v85 = *v63;
      v276 = v85;
      if (v85 <= 1)
      {
        break;
      }

      v86 = v250;
      if (v85 == 2 || v85 == 3)
      {
        goto LABEL_35;
      }

      LODWORD(v268) = 1;
LABEL_36:

      v87 = sub_1AFD080F4(v251, v86 & 1);
      v88 = *(v87 + 2);
      if (!v88)
      {

        v44 = MEMORY[0x1E69E7CC0];
        v45 = MEMORY[0x1E69E7CC0];
        goto LABEL_5;
      }

      *&v280 = 0;
      v242 = v87;
      v89 = (v87 + 48);
      v44 = MEMORY[0x1E69E7CC0];
      v261 = MEMORY[0x1E69E7CC0];
      v262 = v278 | (v262 << 32);
      do
      {
        v91 = *(v89 - 2);
        v92 = *(v89 - 1);
        LODWORD(v278) = *v89;
        if (v268)
        {
          swift_bridgeObjectRetain_n();

          v93 = v272;
          v94 = sub_1AF6496EC(v272);

          v95 = sub_1AF6496EC(v93);

          v96 = v275;
          *v275 = v95;
          v97 = v96;
          v98 = v279;
          swift_storeEnumTagMultiPayload();
          (*v267)(v97, 0, 1, v98);
        }

        else
        {
          v97 = v275;
          sub_1AFD531F8(v43, v275, type metadata accessor for ScriptIndex);
          (*v267)(v97, 0, 1, v279);
          swift_bridgeObjectRetain_n();
          v94 = v262;
        }

        v99 = sub_1AFAF8B58(v91, v92, v273, v274, v94, 0x656C636974726170uLL, 0xEC00000074696E49, v97);
        v101 = v100;

        sub_1AFD53CA8(v97, qword_1ED730680, type metadata accessor for ScriptIndex);

        sub_1AF0D2164(&v283, v99, v101);

        if (v276 >= 4)
        {

LABEL_47:
          if (!v277 || (v103 = *(v277 + 96), v104 = sub_1AFDFCEC8(), v105 = [v103 objectForKeyedSubscript_], v103, v104, !v105))
          {

LABEL_74:

            v36 = v269;
            v53 = v270;

            v40 = qword_1ED728E30;
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v283 = 0;
            v284 = 0xE000000000000000;
            sub_1AFDFE218();

            v283 = 0xD000000000000025;
            v284 = v234;
            MEMORY[0x1B2718AE0](v99, v101);

            v127 = v283;
            v126 = v284;
            v128 = sub_1AFDFDA08();
            v23 = v279;
            if (qword_1ED731058 != -1)
            {
              goto LABEL_83;
            }

            goto LABEL_77;
          }

          v106 = [v105 isUndefined];

          if (v106)
          {
            goto LABEL_74;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_1AF4246B0(0, *(v44 + 2) + 1, 1, v44);
          }

          v107 = v278;
          v109 = *(v44 + 2);
          v108 = *(v44 + 3);
          if (v109 >= v108 >> 1)
          {
            v44 = sub_1AF4246B0(v108 > 1, v109 + 1, 1, v44);
          }

          *(v44 + 2) = v109 + 1;
          v90 = &v44[24 * v109];
          *(v90 + 4) = v99;
          *(v90 + 5) = v101;
          v90[48] = v107;

LABEL_39:
          v43 = v271;
          goto LABEL_40;
        }

        v102 = sub_1AFDFEE28();

        if (v102)
        {
          goto LABEL_47;
        }

        if (v276 == 2)
        {
          if (v260)
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_1AF4246B0(0, *(v44 + 2) + 1, 1, v44);
            }

            v110 = v278;
            v112 = *(v44 + 2);
            v111 = *(v44 + 3);
            if (v112 >= v111 >> 1)
            {
              v44 = sub_1AF4246B0(v111 > 1, v112 + 1, 1, v44);
            }

            *(v44 + 2) = v112 + 1;
            v113 = &v44[24 * v112];
            *(v113 + 4) = v99;
            *(v113 + 5) = v101;
            v113[48] = v110;
            *&v280 = v260;
          }

          else
          {

            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v283 = 0;
            v284 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000027, v236 | 0x8000000000000000);
            MEMORY[0x1B2718AE0](v99, v101);

            MEMORY[0x1B2718AE0](0xD000000000000031, v235 | 0x8000000000000000);
            v122 = v283;
            v123 = v284;
            v124 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v125 = v124;
              swift_once();
              v124 = v125;
            }

            v283 = 0;
            sub_1AF0D4F18(v124, &v283, v122, v123);
          }

          goto LABEL_39;
        }

        v114 = v249;
        if (!*(v249 + 16) || (v115 = sub_1AF419914(v99, v101), (v116 & 1) == 0))
        {

          v36 = v269;
          v53 = v270;
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v283 = 0;
          v284 = 0xE000000000000000;
          sub_1AFDFE218();

          v283 = 0xD000000000000022;
          v284 = v233;
          MEMORY[0x1B2718AE0](v99, v101);

          v127 = v283;
          v126 = v284;
          v128 = sub_1AFDFDA08();
          v23 = v279;
          v40 = qword_1ED728E30;
          if (qword_1ED731058 == -1)
          {
            goto LABEL_77;
          }

LABEL_83:
          v130 = v128;
          swift_once();
          v128 = v130;
LABEL_77:
          v283 = 0;
          sub_1AF0D4F18(v128, &v283, v127, v126);

          v43 = v271;
          result = sub_1AFD53198(v271, type metadata accessor for ScriptIndex);
          a2 = v243;
          goto LABEL_6;
        }

        v117 = v115;

        v118 = *(*(v114 + 56) + 8 * v117);
        v119 = v261;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_1AF42469C(0, *(v119 + 2) + 1, 1, v119);
        }

        v43 = v271;
        v121 = *(v119 + 2);
        v120 = *(v119 + 3);
        if (v121 >= v120 >> 1)
        {
          v119 = sub_1AF42469C(v120 > 1, v121 + 1, 1, v119);
        }

        *(v119 + 2) = v121 + 1;
        v261 = v119;
        *&v119[8 * v121 + 32] = v118;

LABEL_40:
        v89 += 24;
        --v88;
      }

      while (v88);

      v40 = qword_1ED728E30;
      v88 = v280;
      v45 = v261;
LABEL_5:
      v46 = &v239[v237 * v270];
      sub_1AFD53C4C(v46, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v266, v46, v40, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
      v47 = v238;
      v48 = (v46 + v238[15]);
      v49 = v247;
      *v48 = v246;
      v48[1] = v49;
      *(v46 + v47[9]) = v88;
      *(v46 + v47[10]) = v45;
      *(v46 + v47[11]) = v44;
      *(v46 + v47[12]) = 0;
      *(v46 + v47[13]) = 0;
      v50 = v46 + v47[14];
      *v50 = v251;
      *(v50 + 8) = v250 & 1;

      v51 = sub_1AF6496EC(v272);

      v285 = v47;
      v40 = qword_1ED728E30;
      v286 = &off_1F2558F90;
      v52 = sub_1AF585714(&v283);
      v53 = v270;
      sub_1AFD53D18(v46, v52, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
      LOBYTE(v287) = 0;
      sub_1AF8259D0(&v283, inited, v51);
      sub_1AF967B70(v282);
      v43 = v271;
      result = sub_1AFD53198(v271, type metadata accessor for ScriptIndex);
      a2 = v243;
      v23 = v279;
      v36 = v269;
LABEL_6:
      v41 = v53 + 1;
      if (v41 == v256)
      {
        return result;
      }
    }

    v86 = v250;
LABEL_35:
    LODWORD(v268) = sub_1AFDFEE28();
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_1AFD4B488(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6)
{
  v192 = a5;
  v193 = a6;
  LODWORD(v195) = a4;
  v199 = a3;
  v176 = a2;
  sub_1AF0D4E74(0);
  v191 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v190 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1AFDFC298();
  v184 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v188 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v187 = &v159 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v159 - v17;
  v19 = type metadata accessor for ScriptIndex(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v159 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v170 = (&v159 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v186 = &v159 - v29;
  v30 = a1[1];
  v175 = sub_1AF706C64(v30, a1);
  v174 = sub_1AF7061B4(v30, a1);
  result = sub_1AF706704(v30, a1);
  v160 = v6;
  v32 = a1[11];
  v171 = a1;
  v178 = v30;
  v169 = v32;
  if (v32)
  {
    v177 = v18;
    v168 = a1[13];
    if (v168)
    {
      updated = type metadata accessor for ParticleUpdateScript(0);
      v165 = *(*(updated - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
      v33 = 0;
      v173 = v34;
      v35 = *(v34 - 8);
      v172 = (v20 + 48);
      v164 = *(v35 + 72);
      v159 = 0x80000001AFF47E70;
      v182 = 0x80000001AFF4F1E0;
      v181 = (v20 + 56);
      v180 = (v184 + 32);
      v36 = &unk_1F2504210;
      if (v199 < 1029)
      {
        v36 = &unk_1F25041D8;
      }

      v162 = v36;
      v161 = v195 | (v199 > 1032);
      v183 = xmmword_1AFE431C0;
      v194 = v19;
      while (1)
      {
        v37 = v169[v33];
        v167 = a1[2];

        if (*(v30 + 184))
        {
          break;
        }

        v39 = *(v30 + 168);
        v179 = v37;
        v40 = *(v39 + 4 * v37);
        v41 = *(*(v38 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v40 + 8);

        v42 = v176;
        if (*(v176 + 16) && (v43 = sub_1AF449D3C(v40 | (v41 << 32)), (v44 & 1) != 0))
        {
          v45 = (*(v42 + 56) + 8 * v43);
          v46 = *v45;
          v47 = v45[1];
          v48 = v170;
        }

        else
        {

          v48 = v170;
          if (*(v30 + 184))
          {
            break;
          }

          v46 = *(*(v30 + 168) + 4 * v179);
          v47 = *(*(v49 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v46 + 8);
        }

        v185 = v33;
        v50 = &v175[v165 * v33];
        v51 = v177;
        sub_1AFB12858(&v50[*(updated + 40)], v177);
        v52 = *v172;
        if ((*v172)(v51, 1, v19) == 1)
        {
          v53 = v178;

          if (*(v53 + 184))
          {
            break;
          }

          v55 = *(*(v53 + 168) + 4 * v179);
          v56 = *(*(v54 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v55 + 8);

          v57 = v186;
          *v186 = v55;
          *(v57 + 4) = v56;
          v58 = v57;
          swift_storeEnumTagMultiPayload();
          v59 = v52(v177, 1, v19);
          a1 = v171;
          if (v59 != 1)
          {
            sub_1AFD53CA8(v177, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          v60 = v51;
          v58 = v186;
          sub_1AFD53D8C(v60, v186, type metadata accessor for ScriptIndex);
        }

        sub_1AFD531F8(v58, v48, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v48, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v61 = *v48;
          v62 = *(v42 + 16);
          v195 = v61;
          if (v62)
          {
            v63 = sub_1AF449D3C(v61);
            if (v65)
            {
              *&v64 = *(*(v42 + 56) + 8 * v63);
              v195 = v64;
            }
          }

          sub_1AFD53198(v58, type metadata accessor for ScriptIndex);
          *v58 = v195;
          swift_storeEnumTagMultiPayload();
        }

        v66 = &v174[v164 * v185];
        if (!*&v66[*(v173 + 40)] && !*&v66[*(v173 + 44)])
        {
          v67 = v162;
          if (v161)
          {
            v67 = &unk_1F2504248;
            if (v50[24] == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v67 = swift_allocObject();
              v67[1] = v183;
              v196 = 0xD000000000000017;
              v197 = v159;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v68 = v197;
              *(v67 + 4) = v196;
              *(v67 + 5) = v68;
              *(v67 + 48) = 0;
            }
          }

          v163 = v67;
          v69 = *(v67 + 2);
          if (v69)
          {
            v184 = v46 | (v47 << 32);
            v70 = v163 + 5;
            do
            {
              *&v195 = v69;
              v71 = *(v70 - 1);
              v72 = *v70;
              v199 = v70;
              v73 = v187;
              sub_1AFD531F8(v58, v187, type metadata accessor for ScriptIndex);
              (*v181)(v73, 0, 1, v19);

              v74 = sub_1AFAF8B58(v71, v72, v192, v193, v184, 0x656C636974726170uLL, 0xEE00657461647055, v73);
              v76 = v75;

              sub_1AFD53CA8(v73, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v196 = 0;
              v197 = 0xE000000000000000;
              sub_1AFDFE218();

              v196 = 0xD000000000000022;
              v197 = v182;
              MEMORY[0x1B2718AE0](v74, v76);

              v78 = v196;
              v77 = v197;
              v79 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              v80 = qword_1ED73B890;
              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v81 = swift_allocObject();
              *(v81 + 16) = v183;
              *(v81 + 56) = MEMORY[0x1E69E6158];
              *(v81 + 64) = sub_1AF0D544C();
              *(v81 + 32) = v78;
              *(v81 + 40) = v77;

              sub_1AFDFC4C8(v79, &dword_1AF0CE000, v80, "%{public}s", 10, 2, v81);

              v82 = v188;
              sub_1AFDFC288();
              v83 = v190;
              v84 = v191[12];
              v85 = v191[16];
              v86 = &v190[v191[20]];
              (*v180)(v190, v82, v189);
              *(v83 + v84) = v79;
              *(v83 + v85) = 0;
              *v86 = v78;
              *(v86 + 1) = v77;

              sub_1AFDFC608();

              sub_1AFD53198(v83, sub_1AF0D4E74);

              v70 = (v199 + 24);
              v19 = v194;
              v69 = v195 - 1;
              v58 = v186;
            }

            while (v195 != 1);
          }

          v87 = v178;
          v88 = *(*(v178 + 40) + 16);
          v89 = *(v88 + 128);
          a1 = v171;
          if (*(v89 + 16))
          {
            v90 = sub_1AF449CB8(v173);
            if ((v91 & 1) != 0 && *(*(v88 + 24) + 16 * *(*(v89 + 56) + 8 * v90) + 32) == v173)
            {
              v196 = v173;
              v197 = &off_1F2558F90;
              v198 = 1;

              sub_1AF6304E8(v167 + 104, &v196, v179, 0, v87, v167);

              sub_1AF635250(&v196);
            }
          }

          sub_1AFD53F14(0, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
          v93 = *(*(v87 + 40) + 16);
          v94 = *(v93 + 128);
          if (*(v94 + 16))
          {
            v95 = v92;
            v96 = sub_1AF449CB8(v92);
            if ((v97 & 1) != 0 && *(*(v93 + 24) + 16 * *(*(v94 + 56) + 8 * v96) + 32) == v95)
            {
              v196 = v95;
              v197 = &off_1F250F310;
              v198 = 1;
              v98 = v178;

              sub_1AF6304E8(v167 + 104, &v196, v179, 0, v98, v167);

              sub_1AF635250(&v196);
            }
          }
        }

        result = sub_1AFD53198(v58, type metadata accessor for ScriptIndex);
        v33 = (v185 + 1);
        v30 = v178;
        if ((v185 + 1) == v168)
        {
          return result;
        }
      }

LABEL_91:
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else
  {
    v185 = v25;
    v179 = v13;
    v99 = a1[6];
    v172 = a1[7];
    if (v99 != v172)
    {
      v168 = type metadata accessor for ParticleUpdateScript(0);
      v167 = *(*(v168 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
      v177 = v100;
      v101 = *(v100 - 8);
      v173 = v20 + 48;
      updated = *(v101 + 72);
      v162 = 0x80000001AFF47E70;
      v182 = 0x80000001AFF4F1E0;
      v181 = (v20 + 56);
      v180 = (v184 + 32);
      v102 = &unk_1F2504210;
      if (v199 < 1029)
      {
        v102 = &unk_1F25041D8;
      }

      v164 = v102;
      LODWORD(v163) = v195 | (v199 > 1032);
      v183 = xmmword_1AFE431C0;
      v169 = v22;
      v194 = v19;
      while (1)
      {
        v170 = a1[2];

        if (*(v30 + 184))
        {
          goto LABEL_91;
        }

        v104 = *(v30 + 168);
        v186 = v99;
        v105 = *(v104 + 4 * v99);
        v106 = *(*(v103 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v105 + 8);

        v107 = v176;
        if (*(v176 + 16) && (v108 = sub_1AF449D3C(v105 | (v106 << 32)), (v109 & 1) != 0))
        {
          v110 = (*(v107 + 56) + 8 * v108);
          v111 = *v110;
          v112 = v110[1];
          v114 = v185;
          v113 = v186;
        }

        else
        {

          if (*(v30 + 184))
          {
            goto LABEL_91;
          }

          v113 = v186;
          v111 = *(*(v30 + 168) + 4 * v186);
          v112 = *(*(v115 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v111 + 8);

          v114 = v185;
        }

        v116 = &v175[v167 * v113];
        v117 = v179;
        sub_1AFB12858(&v116[*(v168 + 40)], v179);
        v118 = *v173;
        if ((*v173)(v117, 1, v19) == 1)
        {

          if (*(v30 + 184))
          {
            goto LABEL_91;
          }

          v120 = *(*(v30 + 168) + 4 * v186);
          v121 = *(*(v119 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v120 + 8);

          *v114 = v120;
          v114[1] = v121;
          v30 = v178;
          swift_storeEnumTagMultiPayload();
          if (v118(v179, 1, v19) != 1)
          {
            sub_1AFD53CA8(v179, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          sub_1AFD53D8C(v117, v114, type metadata accessor for ScriptIndex);
        }

        v122 = v169;
        sub_1AFD531F8(v114, v169, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v122, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v123 = *v122;
          v124 = *(v107 + 16);
          v195 = v123;
          if (v124)
          {
            v125 = sub_1AF449D3C(v123);
            if (v127)
            {
              *&v126 = *(*(v107 + 56) + 8 * v125);
              v195 = v126;
            }
          }

          sub_1AFD53198(v114, type metadata accessor for ScriptIndex);
          *v114 = v195;
          swift_storeEnumTagMultiPayload();
        }

        v128 = &v174[updated * v186];
        if (!*&v128[*(v177 + 10)] && !*&v128[*(v177 + 11)])
        {
          v129 = v164;
          if (v163)
          {
            v129 = &unk_1F2504248;
            if (v116[24] == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v129 = swift_allocObject();
              v129[1] = v183;
              v196 = 0xD000000000000017;
              v197 = v162;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v130 = v197;
              *(v129 + 4) = v196;
              *(v129 + 5) = v130;
              *(v129 + 48) = 0;
            }
          }

          v165 = v129;
          v131 = *(v129 + 2);
          if (v131)
          {
            v184 = v111 | (v112 << 32);
            v132 = v165 + 5;
            do
            {
              *&v195 = v131;
              v133 = *(v132 - 1);
              v134 = *v132;
              v199 = v132;
              v135 = v187;
              sub_1AFD531F8(v114, v187, type metadata accessor for ScriptIndex);
              (*v181)(v135, 0, 1, v194);

              v136 = sub_1AFAF8B58(v133, v134, v192, v193, v184, 0x656C636974726170uLL, 0xEE00657461647055, v135);
              v138 = v137;

              sub_1AFD53CA8(v135, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v196 = 0;
              v197 = 0xE000000000000000;
              sub_1AFDFE218();

              v196 = 0xD000000000000022;
              v197 = v182;
              MEMORY[0x1B2718AE0](v136, v138);

              v140 = v196;
              v139 = v197;
              v141 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              v142 = qword_1ED73B890;
              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v143 = swift_allocObject();
              *(v143 + 16) = v183;
              *(v143 + 56) = MEMORY[0x1E69E6158];
              *(v143 + 64) = sub_1AF0D544C();
              *(v143 + 32) = v140;
              *(v143 + 40) = v139;

              sub_1AFDFC4C8(v141, &dword_1AF0CE000, v142, "%{public}s", 10, 2, v143);

              v144 = v188;
              sub_1AFDFC288();
              v145 = v190;
              v146 = v191[12];
              v147 = v191[16];
              v148 = &v190[v191[20]];
              (*v180)(v190, v144, v189);
              *(v145 + v146) = v141;
              *(v145 + v147) = 0;
              *v148 = v140;
              *(v148 + 1) = v139;

              sub_1AFDFC608();

              sub_1AFD53198(v145, sub_1AF0D4E74);

              v132 = (v199 + 24);
              v131 = v195 - 1;
              v114 = v185;
            }

            while (v195 != 1);
          }

          v30 = v178;
          v149 = *(*(v178 + 40) + 16);
          v150 = *(v149 + 128);
          if (*(v150 + 16))
          {
            v151 = sub_1AF449CB8(v177);
            if ((v152 & 1) != 0 && *(*(v149 + 24) + 16 * *(*(v150 + 56) + 8 * v151) + 32) == v177)
            {
              v196 = v177;
              v197 = &off_1F2558F90;
              v198 = 1;

              sub_1AF6304E8((v170 + 13), &v196, v186, 0, v30, v170);

              sub_1AF635250(&v196);
            }
          }

          sub_1AFD53F14(0, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
          v154 = *(*(v30 + 40) + 16);
          v155 = *(v154 + 128);
          v19 = v194;
          if (*(v155 + 16))
          {
            v156 = v153;
            v157 = sub_1AF449CB8(v153);
            if ((v158 & 1) != 0 && *(*(v154 + 24) + 16 * *(*(v155 + 56) + 8 * v157) + 32) == v156)
            {
              v196 = v156;
              v197 = &off_1F250F310;
              v198 = 1;

              sub_1AF6304E8((v170 + 13), &v196, v186, 0, v30, v170);

              sub_1AF635250(&v196);
            }
          }
        }

        v99 = v186 + 1;
        result = sub_1AFD53198(v114, type metadata accessor for ScriptIndex);
        a1 = v171;
        if (v99 == v172)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AFD4CC70(void *a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v249 = a8;
  v277 = a7;
  v274 = a6;
  v273 = a5;
  v250 = a4;
  v251 = a3;
  v241 = a13;
  v240 = a12;
  v260 = a11;
  v248 = a10;
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v232 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v275 = (&v232 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v265 = &v232 - v22;
  v23 = type metadata accessor for ScriptIndex(0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v232 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v232 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v258 = (&v232 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v271 = &v232 - v33;
  v34 = a1[1];
  v264 = sub_1AF706C64(v34, a1);
  v239 = sub_1AF7061B4(v34, a1);
  v281 = v34;
  result = sub_1AF706704(v34, a1);
  v263 = result;
  v36 = v13;
  v37 = a1[11];
  v243 = a2;
  v279 = v23;
  v257 = v37;
  if (!v37)
  {
    v272 = v29;
    v258 = v26;
    v265 = v18;
    v131 = a1[6];
    v257 = a1[7];
    if (v131 == v257)
    {
      return result;
    }

    updated = type metadata accessor for ParticleUpdateScript(0);
    v256 = *(*(updated - 8) + 72);
    sub_1AFD53F14(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
    v242 = v132;
    v238 = *(*(v132 - 1) + 72);
    sub_1AFD53F14(0, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
    v255 = v133;
    v254 = *(*(v133 - 1) + 72);
    v253 = (v24 + 48);
    v246 = "mpiled script for ";
    v245 = "ration<TriggerScript>";
    v268 = v24 + 56;
    v237 = "nction for script ";
    v236 = "tal library for script ";
    v234 = 0x80000001AFF4F110;
    v235 = 0x80000001AFF4F1B0;
    v134 = v272;
LABEL_91:
    v136 = v36;
    v266 = v263 + v254 * v131;
    sub_1AFD53C4C(v266, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);

    v137 = sub_1AF6496EC(v131);

    if (*(a2 + 16) && (v138 = sub_1AF449D3C(v137), (v139 & 1) != 0))
    {
      v140 = (*(a2 + 56) + 8 * v138);
      v142 = *v140;
      v141 = v140[1];
      v278 = v142;
    }

    else
    {

      v143 = sub_1AF6496EC(v131);

      v278 = v143;
      v141 = HIDWORD(v143);
    }

    v267 = v141;
    v144 = &v264[v256 * v131];
    v145 = v265;
    sub_1AFB12858(v144 + *(updated + 40), v265);
    v146 = *v253;
    v147 = (*v253)(v145, 1, v23);
    v271 = v131;
    if (v147 == 1)
    {

      v148 = sub_1AF6496EC(v131);
      v134 = v272;

      *v134 = v148;
      v149 = v265;
      swift_storeEnumTagMultiPayload();
      v150 = v146(v149, 1, v23);
      v151 = v266;
      if (v150 != 1)
      {
        sub_1AFD53CA8(v149, qword_1ED730680, type metadata accessor for ScriptIndex);
      }
    }

    else
    {
      sub_1AFD53D8C(v145, v134, type metadata accessor for ScriptIndex);
      v151 = v266;
    }

    v152 = v258;
    sub_1AFD531F8(v134, v258, type metadata accessor for ScriptIndex);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1AFD53198(v152, type metadata accessor for ScriptIndex);
    }

    else
    {
      *&v153 = *v152;
      v154 = *(a2 + 16);
      v280 = v153;
      if (v154)
      {
        v155 = sub_1AF449D3C(v153);
        if (v157)
        {
          *&v156 = *(*(a2 + 56) + 8 * v155);
          v280 = v156;
        }
      }

      sub_1AFD53198(v134, type metadata accessor for ScriptIndex);
      *v134 = v280;
      swift_storeEnumTagMultiPayload();
    }

    sub_1AFD531F8(v144, v151, type metadata accessor for ParticleUpdateScript);
    v159 = sub_1AFAA3818(v158);
    v160 = v255;
    v161 = v151 + v255[9];
    *v161 = v159;
    *(v161 + 8) = 0;
    *(v151 + v160[10]) = 1;
    *(v151 + v160[11]) = 0;
    v162 = v151 + v160[12];
    strcpy(v162, "<precompiled>");
    *(v162 + 14) = -4864;
    *(v151 + v160[13]) = MEMORY[0x1E69E7CC0];
    sub_1AFAA3C54(0, 1uLL, &v283, v163);
    v269 = v136;
    if (v136)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v283 = 0;
      v284 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000002DLL, v246 | 0x8000000000000000);
      MEMORY[0x1B2718AE0](0xD000000000000014, v245 | 0x8000000000000000);
      MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
      v164 = v269;
      swift_getErrorValue();
      sub_1AFDFEDD8();
      v166 = v283;
      v165 = v284;
      v167 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v231 = v167;
        swift_once();
        v167 = v231;
      }

      v283 = 0;
      sub_1AF0D4F18(v167, &v283, v166, v165);

      result = sub_1AFD53198(v134, type metadata accessor for ScriptIndex);
      v36 = 0;
LABEL_89:
      v135 = v271;
      goto LABEL_90;
    }

    v247 = v287;
    v168 = v288;

    v282 = MEMORY[0x1E69E7CD0];
    v169 = *(v144 + 24);
    v170 = v250;
    v276 = v169;
    v252 = v168;
    if (v169 >= 4)
    {
      LODWORD(v270) = 1;
    }

    else
    {
      LODWORD(v270) = sub_1AFDFEE28();
    }

    v171 = sub_1AFD0802C(v251, v170 & 1);
    v172 = *(v171 + 2);
    if (!v172)
    {

      v278 = 0;
      v218 = MEMORY[0x1E69E7CC0];
      *&v280 = MEMORY[0x1E69E7CC0];
      v219 = v170;
      goto LABEL_158;
    }

    v173 = 0;
    v244 = v171;
    v174 = (v171 + 48);
    *&v280 = MEMORY[0x1E69E7CC0];
    v261 = MEMORY[0x1E69E7CC0];
    v262 = v278 | (v267 << 32);
    v175 = v277;
    while (1)
    {
      v177 = *(v174 - 2);
      v178 = *(v174 - 1);
      LODWORD(v278) = *v174;
      if (v270)
      {
        swift_bridgeObjectRetain_n();

        v179 = v178;
        v180 = v174;
        v181 = v172;
        v182 = v175;
        v183 = v173;
        v184 = v271;
        v267 = v177;
        v185 = sub_1AF6496EC(v271);

        v186 = v184;
        v173 = v183;
        v175 = v182;
        v172 = v181;
        v174 = v180;
        v178 = v179;
        v187 = sub_1AF6496EC(v186);

        v188 = v275;
        *v275 = v187;
        v189 = v279;
        swift_storeEnumTagMultiPayload();
        v190 = v189;
        v177 = v267;
        (*v268)(v188, 0, 1, v190);
      }

      else
      {
        v188 = v275;
        sub_1AFD531F8(v134, v275, type metadata accessor for ScriptIndex);
        (*v268)(v188, 0, 1, v279);
        swift_bridgeObjectRetain_n();
        v185 = v262;
      }

      v191 = sub_1AFAF8B58(v177, v178, v273, v274, v185, 0x656C636974726170uLL, 0xEE00657461647055, v188);
      v193 = v192;

      sub_1AFD53CA8(v188, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v283, v191, v193);

      if (v276 >= 4)
      {
        break;
      }

      v194 = sub_1AFDFEE28();

      if (v194)
      {
        goto LABEL_125;
      }

      if (v276 != 2)
      {

        v206 = v249;
        if (!*(v249 + 16) || (v207 = sub_1AF419914(v191, v193), (v208 & 1) == 0))
        {

          v36 = v269;
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v283 = 0;
          v284 = 0xE000000000000000;
          sub_1AFDFE218();

          v283 = 0xD000000000000022;
          v284 = v234;
          MEMORY[0x1B2718AE0](v191, v193);

          v221 = v283;
          v220 = v284;
          v222 = sub_1AFDFDA08();
          v23 = v279;
          if (qword_1ED731058 != -1)
          {
            goto LABEL_156;
          }

          goto LABEL_88;
        }

        v209 = v207;

        v210 = *(*(v206 + 56) + 8 * v209);
        v211 = v261;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v211 = sub_1AF42469C(0, *(v211 + 2) + 1, 1, v211);
        }

        v134 = v272;
        v199 = v280;
        v213 = *(v211 + 2);
        v212 = *(v211 + 3);
        if (v213 >= v212 >> 1)
        {
          v211 = sub_1AF42469C(v212 > 1, v213 + 1, 1, v211);
        }

        *(v211 + 2) = v213 + 1;
        v261 = v211;
        *&v211[8 * v213 + 32] = v210;
        v173 = v248;

        v175 = v277;
        goto LABEL_118;
      }

      if (v260)
      {

        v199 = v280;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v199 = sub_1AF4246B0(0, *(v199 + 2) + 1, 1, v199);
        }

        v204 = *(v199 + 2);
        v203 = *(v199 + 3);
        if (v204 >= v203 >> 1)
        {
          v199 = sub_1AF4246B0(v203 > 1, v204 + 1, 1, v199);
        }

        *(v199 + 2) = v204 + 1;
        v205 = &v199[24 * v204];
        *(v205 + 4) = v191;
        *(v205 + 5) = v193;
        v205[48] = v278;
        v173 = v260;
      }

      else
      {

        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v283 = 0;
        v284 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000027, v237 | 0x8000000000000000);
        MEMORY[0x1B2718AE0](v191, v193);

        MEMORY[0x1B2718AE0](0xD000000000000031, v236 | 0x8000000000000000);
        v214 = v283;
        v215 = v284;
        v216 = sub_1AFDFDA08();
        v199 = v280;
        if (qword_1ED731058 != -1)
        {
          v217 = v216;
          swift_once();
          v216 = v217;
        }

        v283 = 0;
        sub_1AF0D4F18(v216, &v283, v214, v215);
      }

LABEL_117:
      v134 = v272;
LABEL_118:
      *&v280 = v199;
      v174 += 24;
      if (!--v172)
      {

        v219 = v250;
        v278 = v173;
        v218 = v261;
LABEL_158:
        v135 = v271;
        v224 = &v239[v238 * v271];
        sub_1AFD53C4C(v224, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
        sub_1AFD53D18(v266, v224, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
        v225 = v242;
        v226 = (v224 + v242[15]);
        v227 = v252;
        *v226 = v247;
        v226[1] = v227;
        *(v224 + v225[9]) = v278;
        *(v224 + v225[10]) = v218;
        *(v224 + v225[11]) = v280;
        *(v224 + v225[12]) = 0;
        *(v224 + v225[13]) = 0;
        v228 = v224 + v225[14];
        *v228 = v251;
        *(v228 + 8) = v219 & 1;

        v229 = sub_1AF6496EC(v135);

        v285 = v225;
        v286 = &off_1F2558F90;
        v230 = sub_1AF585714(&v283);
        sub_1AFD53D18(v224, v230, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
        LOBYTE(v287) = 0;
        sub_1AF8259D0(&v283, updated, v229);
        sub_1AF967B70(v282);
        v134 = v272;
        result = sub_1AFD53198(v272, type metadata accessor for ScriptIndex);
        a2 = v243;
        v23 = v279;
        v36 = v269;
LABEL_90:
        v131 = v135 + 1;
        if (v131 == v257)
        {
          return result;
        }

        goto LABEL_91;
      }
    }

LABEL_125:
    if (!v175 || (v195 = *(v175 + 96), v196 = sub_1AFDFCEC8(), v197 = [v195 objectForKeyedSubscript_], v195, v196, !v197))
    {

LABEL_153:

      v36 = v269;

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v283 = 0;
      v284 = 0xE000000000000000;
      sub_1AFDFE218();

      v283 = 0xD000000000000025;
      v284 = v235;
      MEMORY[0x1B2718AE0](v191, v193);

      v221 = v283;
      v220 = v284;
      v222 = sub_1AFDFDA08();
      v23 = v279;
      if (qword_1ED731058 != -1)
      {
LABEL_156:
        v223 = v222;
        swift_once();
        v222 = v223;
      }

LABEL_88:
      v283 = 0;
      sub_1AF0D4F18(v222, &v283, v221, v220);

      v134 = v272;
      result = sub_1AFD53198(v272, type metadata accessor for ScriptIndex);
      a2 = v243;
      goto LABEL_89;
    }

    v198 = [v197 isUndefined];

    if (v198)
    {
      goto LABEL_153;
    }

    v199 = v280;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v175 = v277;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v199 = sub_1AF4246B0(0, *(v199 + 2) + 1, 1, v199);
    }

    v202 = *(v199 + 2);
    v201 = *(v199 + 3);
    if (v202 >= v201 >> 1)
    {
      v199 = sub_1AF4246B0(v201 > 1, v202 + 1, 1, v199);
    }

    *(v199 + 2) = v202 + 1;
    v176 = &v199[24 * v202];
    *(v176 + 4) = v191;
    *(v176 + 5) = v193;
    v176[48] = v278;

    v173 = v175;
    goto LABEL_117;
  }

  v256 = a1[13];
  if (v256)
  {
    updated = type metadata accessor for ParticleUpdateScript(0);
    v255 = *(*(updated - 8) + 72);
    sub_1AFD53F14(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
    v238 = v38;
    v237 = *(*(v38 - 1) + 72);
    v39 = v24;
    v40 = &unk_1ED728E10;
    sub_1AFD53F14(0, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
    v41 = 0;
    v254 = v42;
    v253 = *(*(v42 - 1) + 72);
    v252 = (v39 + 48);
    v245 = "mpiled script for ";
    v244 = "ration<TriggerScript>";
    v267 = v39 + 56;
    v236 = "nction for script ";
    v235 = "tal library for script ";
    v233 = 0x80000001AFF4F110;
    v234 = 0x80000001AFF4F1B0;
    v43 = v271;
    while (1)
    {
      v54 = *(v257 + 8 * v41);
      v270 = v41;
      v266 = v263 + v253 * v41;
      sub_1AFD53C4C(v266, v40, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);

      v272 = v54;
      v55 = sub_1AF6496EC(v54);

      if (*(a2 + 16) && (v56 = sub_1AF449D3C(v55), (v57 & 1) != 0))
      {
        v58 = v40;
        v59 = (*(a2 + 56) + 8 * v56);
        v61 = *v59;
        v60 = v59[1];
        v278 = v61;
      }

      else
      {
        v58 = v40;

        v62 = sub_1AF6496EC(v272);

        v278 = v62;
        v60 = HIDWORD(v62);
      }

      v262 = v60;
      v63 = &v264[v255 * v270];
      v64 = v265;
      sub_1AFB12858(v63 + *(updated + 40), v265);
      v65 = *v252;
      if ((*v252)(v64, 1, v23) == 1)
      {

        v66 = sub_1AF6496EC(v272);
        v43 = v271;

        *v43 = v66;
        v67 = v265;
        swift_storeEnumTagMultiPayload();
        if (v65(v67, 1, v23) != 1)
        {
          sub_1AFD53CA8(v67, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        sub_1AFD53D8C(v64, v43, type metadata accessor for ScriptIndex);
      }

      v68 = v258;
      sub_1AFD531F8(v43, v258, type metadata accessor for ScriptIndex);
      v40 = v58;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v68, type metadata accessor for ScriptIndex);
        v70 = v266;
      }

      else
      {
        *&v69 = *v68;
        v71 = *(a2 + 16);
        v280 = v69;
        if (v71)
        {
          v72 = sub_1AF449D3C(v69);
          v70 = v266;
          if (v74)
          {
            *&v73 = *(*(a2 + 56) + 8 * v72);
            v280 = v73;
          }
        }

        else
        {
          v70 = v266;
        }

        sub_1AFD53198(v43, type metadata accessor for ScriptIndex);
        *v43 = v280;
        swift_storeEnumTagMultiPayload();
      }

      sub_1AFD531F8(v63, v70, type metadata accessor for ParticleUpdateScript);
      v76 = sub_1AFAA3818(v75);
      v77 = v254;
      v78 = v70 + v254[9];
      *v78 = v76;
      *(v78 + 8) = 0;
      *(v70 + v77[10]) = 1;
      *(v70 + v77[11]) = 0;
      v79 = v70 + v77[12];
      strcpy(v79, "<precompiled>");
      *(v79 + 14) = -4864;
      *(v70 + v77[13]) = MEMORY[0x1E69E7CC0];
      sub_1AFAA3C54(0, 1uLL, &v283, v80);
      v269 = v36;
      if (v36)
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v283 = 0;
        v284 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000002DLL, v245 | 0x8000000000000000);
        MEMORY[0x1B2718AE0](0xD000000000000014, v244 | 0x8000000000000000);
        MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
        v81 = v269;
        swift_getErrorValue();
        sub_1AFDFEDD8();
        v83 = v283;
        v82 = v284;
        v84 = sub_1AFDFDA08();
        v53 = v270;
        if (qword_1ED731058 != -1)
        {
          v129 = v84;
          swift_once();
          v84 = v129;
        }

        v283 = 0;
        sub_1AF0D4F18(v84, &v283, v83, v82);

        result = sub_1AFD53198(v43, type metadata accessor for ScriptIndex);
        v36 = 0;
        goto LABEL_6;
      }

      v246 = v287;
      v247 = v288;

      v282 = MEMORY[0x1E69E7CD0];
      v85 = *(v63 + 24);
      v276 = v85;
      if (v85 <= 1)
      {
        break;
      }

      v86 = v250;
      if (v85 == 2 || v85 == 3)
      {
        goto LABEL_35;
      }

      LODWORD(v268) = 1;
LABEL_36:

      v87 = sub_1AFD0802C(v251, v86 & 1);
      v88 = *(v87 + 2);
      if (!v88)
      {

        v44 = MEMORY[0x1E69E7CC0];
        v45 = MEMORY[0x1E69E7CC0];
        goto LABEL_5;
      }

      *&v280 = 0;
      v242 = v87;
      v89 = (v87 + 48);
      v44 = MEMORY[0x1E69E7CC0];
      v261 = MEMORY[0x1E69E7CC0];
      v262 = v278 | (v262 << 32);
      do
      {
        v91 = *(v89 - 2);
        v92 = *(v89 - 1);
        LODWORD(v278) = *v89;
        if (v268)
        {
          swift_bridgeObjectRetain_n();

          v93 = v272;
          v94 = sub_1AF6496EC(v272);

          v95 = sub_1AF6496EC(v93);

          v96 = v275;
          *v275 = v95;
          v97 = v96;
          v98 = v279;
          swift_storeEnumTagMultiPayload();
          (*v267)(v97, 0, 1, v98);
        }

        else
        {
          v97 = v275;
          sub_1AFD531F8(v43, v275, type metadata accessor for ScriptIndex);
          (*v267)(v97, 0, 1, v279);
          swift_bridgeObjectRetain_n();
          v94 = v262;
        }

        v99 = sub_1AFAF8B58(v91, v92, v273, v274, v94, 0x656C636974726170uLL, 0xEE00657461647055, v97);
        v101 = v100;

        sub_1AFD53CA8(v97, qword_1ED730680, type metadata accessor for ScriptIndex);

        sub_1AF0D2164(&v283, v99, v101);

        if (v276 >= 4)
        {

LABEL_47:
          if (!v277 || (v103 = *(v277 + 96), v104 = sub_1AFDFCEC8(), v105 = [v103 objectForKeyedSubscript_], v103, v104, !v105))
          {

LABEL_74:

            v36 = v269;
            v53 = v270;

            v40 = &unk_1ED728E10;
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v283 = 0;
            v284 = 0xE000000000000000;
            sub_1AFDFE218();

            v283 = 0xD000000000000025;
            v284 = v234;
            MEMORY[0x1B2718AE0](v99, v101);

            v127 = v283;
            v126 = v284;
            v128 = sub_1AFDFDA08();
            v23 = v279;
            if (qword_1ED731058 != -1)
            {
              goto LABEL_83;
            }

            goto LABEL_77;
          }

          v106 = [v105 isUndefined];

          if (v106)
          {
            goto LABEL_74;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_1AF4246B0(0, *(v44 + 2) + 1, 1, v44);
          }

          v107 = v278;
          v109 = *(v44 + 2);
          v108 = *(v44 + 3);
          if (v109 >= v108 >> 1)
          {
            v44 = sub_1AF4246B0(v108 > 1, v109 + 1, 1, v44);
          }

          *(v44 + 2) = v109 + 1;
          v90 = &v44[24 * v109];
          *(v90 + 4) = v99;
          *(v90 + 5) = v101;
          v90[48] = v107;

LABEL_39:
          v43 = v271;
          goto LABEL_40;
        }

        v102 = sub_1AFDFEE28();

        if (v102)
        {
          goto LABEL_47;
        }

        if (v276 == 2)
        {
          if (v260)
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_1AF4246B0(0, *(v44 + 2) + 1, 1, v44);
            }

            v110 = v278;
            v112 = *(v44 + 2);
            v111 = *(v44 + 3);
            if (v112 >= v111 >> 1)
            {
              v44 = sub_1AF4246B0(v111 > 1, v112 + 1, 1, v44);
            }

            *(v44 + 2) = v112 + 1;
            v113 = &v44[24 * v112];
            *(v113 + 4) = v99;
            *(v113 + 5) = v101;
            v113[48] = v110;
            *&v280 = v260;
          }

          else
          {

            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v283 = 0;
            v284 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000027, v236 | 0x8000000000000000);
            MEMORY[0x1B2718AE0](v99, v101);

            MEMORY[0x1B2718AE0](0xD000000000000031, v235 | 0x8000000000000000);
            v122 = v283;
            v123 = v284;
            v124 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v125 = v124;
              swift_once();
              v124 = v125;
            }

            v283 = 0;
            sub_1AF0D4F18(v124, &v283, v122, v123);
          }

          goto LABEL_39;
        }

        v114 = v249;
        if (!*(v249 + 16) || (v115 = sub_1AF419914(v99, v101), (v116 & 1) == 0))
        {

          v36 = v269;
          v53 = v270;
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v283 = 0;
          v284 = 0xE000000000000000;
          sub_1AFDFE218();

          v283 = 0xD000000000000022;
          v284 = v233;
          MEMORY[0x1B2718AE0](v99, v101);

          v127 = v283;
          v126 = v284;
          v128 = sub_1AFDFDA08();
          v23 = v279;
          v40 = &unk_1ED728E10;
          if (qword_1ED731058 == -1)
          {
            goto LABEL_77;
          }

LABEL_83:
          v130 = v128;
          swift_once();
          v128 = v130;
LABEL_77:
          v283 = 0;
          sub_1AF0D4F18(v128, &v283, v127, v126);

          v43 = v271;
          result = sub_1AFD53198(v271, type metadata accessor for ScriptIndex);
          a2 = v243;
          goto LABEL_6;
        }

        v117 = v115;

        v118 = *(*(v114 + 56) + 8 * v117);
        v119 = v261;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_1AF42469C(0, *(v119 + 2) + 1, 1, v119);
        }

        v43 = v271;
        v121 = *(v119 + 2);
        v120 = *(v119 + 3);
        if (v121 >= v120 >> 1)
        {
          v119 = sub_1AF42469C(v120 > 1, v121 + 1, 1, v119);
        }

        *(v119 + 2) = v121 + 1;
        v261 = v119;
        *&v119[8 * v121 + 32] = v118;

LABEL_40:
        v89 += 24;
        --v88;
      }

      while (v88);

      v40 = &unk_1ED728E10;
      v88 = v280;
      v45 = v261;
LABEL_5:
      v46 = &v239[v237 * v270];
      sub_1AFD53C4C(v46, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v266, v46, v40, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
      v47 = v238;
      v48 = (v46 + v238[15]);
      v49 = v247;
      *v48 = v246;
      v48[1] = v49;
      *(v46 + v47[9]) = v88;
      *(v46 + v47[10]) = v45;
      *(v46 + v47[11]) = v44;
      *(v46 + v47[12]) = 0;
      *(v46 + v47[13]) = 0;
      v50 = v46 + v47[14];
      *v50 = v251;
      *(v50 + 8) = v250 & 1;

      v51 = sub_1AF6496EC(v272);

      v285 = v47;
      v40 = &unk_1ED728E10;
      v286 = &off_1F2558F90;
      v52 = sub_1AF585714(&v283);
      v53 = v270;
      sub_1AFD53D18(v46, v52, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
      LOBYTE(v287) = 0;
      sub_1AF8259D0(&v283, updated, v51);
      sub_1AF967B70(v282);
      v43 = v271;
      result = sub_1AFD53198(v271, type metadata accessor for ScriptIndex);
      a2 = v243;
      v23 = v279;
      v36 = v269;
LABEL_6:
      v41 = v53 + 1;
      if (v41 == v256)
      {
        return result;
      }
    }

    v86 = v250;
LABEL_35:
    LODWORD(v268) = sub_1AFDFEE28();
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_1AFD4F4D4(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6)
{
  v192 = a5;
  v193 = a6;
  LODWORD(v195) = a4;
  v199 = a3;
  v176 = a2;
  sub_1AF0D4E74(0);
  v191 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v190 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1AFDFC298();
  v184 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v188 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v187 = &v159 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v159 - v17;
  v19 = type metadata accessor for ScriptIndex(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v159 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v170 = (&v159 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v186 = &v159 - v29;
  v30 = a1[1];
  v175 = sub_1AF70632C(v30, a1);
  v174 = sub_1AF706360(v30, a1);
  result = sub_1AF706648(v30, a1);
  v160 = v6;
  v32 = a1[11];
  v171 = a1;
  v178 = v30;
  v169 = v32;
  if (v32)
  {
    v177 = v18;
    v168 = a1[13];
    if (v168)
    {
      v166 = type metadata accessor for TriggerScript(0);
      v165 = *(*(v166 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
      v33 = 0;
      v173 = v34;
      v35 = *(v34 - 8);
      v172 = (v20 + 48);
      v164 = *(v35 + 72);
      v159 = 0x80000001AFF47E70;
      v182 = 0x80000001AFF4F1E0;
      v181 = (v20 + 56);
      v180 = (v184 + 32);
      v36 = &unk_1F25042B8;
      if (v199 < 1029)
      {
        v36 = &unk_1F2504280;
      }

      v162 = v36;
      v161 = v195 | (v199 > 1032);
      v183 = xmmword_1AFE431C0;
      v194 = v19;
      while (1)
      {
        v37 = v169[v33];
        v167 = a1[2];

        if (*(v30 + 184))
        {
          break;
        }

        v39 = *(v30 + 168);
        v179 = v37;
        v40 = *(v39 + 4 * v37);
        v41 = *(*(v38 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v40 + 8);

        v42 = v176;
        if (*(v176 + 16) && (v43 = sub_1AF449D3C(v40 | (v41 << 32)), (v44 & 1) != 0))
        {
          v45 = (*(v42 + 56) + 8 * v43);
          v46 = *v45;
          v47 = v45[1];
          v48 = v170;
        }

        else
        {

          v48 = v170;
          if (*(v30 + 184))
          {
            break;
          }

          v46 = *(*(v30 + 168) + 4 * v179);
          v47 = *(*(v49 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v46 + 8);
        }

        v185 = v33;
        v50 = &v175[v165 * v33];
        v51 = v177;
        sub_1AFB12858(&v50[*(v166 + 44)], v177);
        v52 = *v172;
        if ((*v172)(v51, 1, v19) == 1)
        {
          v53 = v178;

          if (*(v53 + 184))
          {
            break;
          }

          v55 = *(*(v53 + 168) + 4 * v179);
          v56 = *(*(v54 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v55 + 8);

          v57 = v186;
          *v186 = v55;
          *(v57 + 4) = v56;
          v58 = v57;
          swift_storeEnumTagMultiPayload();
          v59 = v52(v177, 1, v19);
          a1 = v171;
          if (v59 != 1)
          {
            sub_1AFD53CA8(v177, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          v60 = v51;
          v58 = v186;
          sub_1AFD53D8C(v60, v186, type metadata accessor for ScriptIndex);
        }

        sub_1AFD531F8(v58, v48, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v48, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v61 = *v48;
          v62 = *(v42 + 16);
          v195 = v61;
          if (v62)
          {
            v63 = sub_1AF449D3C(v61);
            if (v65)
            {
              *&v64 = *(*(v42 + 56) + 8 * v63);
              v195 = v64;
            }
          }

          sub_1AFD53198(v58, type metadata accessor for ScriptIndex);
          *v58 = v195;
          swift_storeEnumTagMultiPayload();
        }

        v66 = &v174[v164 * v185];
        if (!*&v66[*(v173 + 40)] && !*&v66[*(v173 + 44)])
        {
          v67 = v162;
          if (v161)
          {
            v67 = &unk_1F25042F0;
            if (v50[24] == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v67 = swift_allocObject();
              v67[1] = v183;
              v196 = 0xD000000000000017;
              v197 = v159;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v68 = v197;
              *(v67 + 4) = v196;
              *(v67 + 5) = v68;
              *(v67 + 48) = 0;
            }
          }

          v163 = v67;
          v69 = *(v67 + 2);
          if (v69)
          {
            v184 = v46 | (v47 << 32);
            v70 = v163 + 5;
            do
            {
              *&v195 = v69;
              v71 = *(v70 - 1);
              v72 = *v70;
              v199 = v70;
              v73 = v187;
              sub_1AFD531F8(v58, v187, type metadata accessor for ScriptIndex);
              (*v181)(v73, 0, 1, v19);

              v74 = sub_1AFAF8B58(v71, v72, v192, v193, v184, 0x72656767697274uLL, 0xE700000000000000, v73);
              v76 = v75;

              sub_1AFD53CA8(v73, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v196 = 0;
              v197 = 0xE000000000000000;
              sub_1AFDFE218();

              v196 = 0xD000000000000022;
              v197 = v182;
              MEMORY[0x1B2718AE0](v74, v76);

              v78 = v196;
              v77 = v197;
              v79 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              v80 = qword_1ED73B890;
              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v81 = swift_allocObject();
              *(v81 + 16) = v183;
              *(v81 + 56) = MEMORY[0x1E69E6158];
              *(v81 + 64) = sub_1AF0D544C();
              *(v81 + 32) = v78;
              *(v81 + 40) = v77;

              sub_1AFDFC4C8(v79, &dword_1AF0CE000, v80, "%{public}s", 10, 2, v81);

              v82 = v188;
              sub_1AFDFC288();
              v83 = v190;
              v84 = v191[12];
              v85 = v191[16];
              v86 = &v190[v191[20]];
              (*v180)(v190, v82, v189);
              *(v83 + v84) = v79;
              *(v83 + v85) = 0;
              *v86 = v78;
              *(v86 + 1) = v77;

              sub_1AFDFC608();

              sub_1AFD53198(v83, sub_1AF0D4E74);

              v70 = (v199 + 24);
              v19 = v194;
              v69 = v195 - 1;
              v58 = v186;
            }

            while (v195 != 1);
          }

          v87 = v178;
          v88 = *(*(v178 + 40) + 16);
          v89 = *(v88 + 128);
          a1 = v171;
          if (*(v89 + 16))
          {
            v90 = sub_1AF449CB8(v173);
            if ((v91 & 1) != 0 && *(*(v88 + 24) + 16 * *(*(v89 + 56) + 8 * v90) + 32) == v173)
            {
              v196 = v173;
              v197 = &off_1F2558F90;
              v198 = 1;

              sub_1AF6304E8(v167 + 104, &v196, v179, 0, v87, v167);

              sub_1AF635250(&v196);
            }
          }

          sub_1AFD53F14(0, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
          v93 = *(*(v87 + 40) + 16);
          v94 = *(v93 + 128);
          if (*(v94 + 16))
          {
            v95 = v92;
            v96 = sub_1AF449CB8(v92);
            if ((v97 & 1) != 0 && *(*(v93 + 24) + 16 * *(*(v94 + 56) + 8 * v96) + 32) == v95)
            {
              v196 = v95;
              v197 = &off_1F250F310;
              v198 = 1;
              v98 = v178;

              sub_1AF6304E8(v167 + 104, &v196, v179, 0, v98, v167);

              sub_1AF635250(&v196);
            }
          }
        }

        result = sub_1AFD53198(v58, type metadata accessor for ScriptIndex);
        v33 = (v185 + 1);
        v30 = v178;
        if ((v185 + 1) == v168)
        {
          return result;
        }
      }

LABEL_91:
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else
  {
    v185 = v25;
    v179 = v13;
    v99 = a1[6];
    v172 = a1[7];
    if (v99 != v172)
    {
      v168 = type metadata accessor for TriggerScript(0);
      v167 = *(*(v168 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
      v177 = v100;
      v101 = *(v100 - 8);
      v173 = v20 + 48;
      v166 = *(v101 + 72);
      v162 = 0x80000001AFF47E70;
      v182 = 0x80000001AFF4F1E0;
      v181 = (v20 + 56);
      v180 = (v184 + 32);
      v102 = &unk_1F25042B8;
      if (v199 < 1029)
      {
        v102 = &unk_1F2504280;
      }

      v164 = v102;
      LODWORD(v163) = v195 | (v199 > 1032);
      v183 = xmmword_1AFE431C0;
      v169 = v22;
      v194 = v19;
      while (1)
      {
        v170 = a1[2];

        if (*(v30 + 184))
        {
          goto LABEL_91;
        }

        v104 = *(v30 + 168);
        v186 = v99;
        v105 = *(v104 + 4 * v99);
        v106 = *(*(v103 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v105 + 8);

        v107 = v176;
        if (*(v176 + 16) && (v108 = sub_1AF449D3C(v105 | (v106 << 32)), (v109 & 1) != 0))
        {
          v110 = (*(v107 + 56) + 8 * v108);
          v111 = *v110;
          v112 = v110[1];
          v114 = v185;
          v113 = v186;
        }

        else
        {

          if (*(v30 + 184))
          {
            goto LABEL_91;
          }

          v113 = v186;
          v111 = *(*(v30 + 168) + 4 * v186);
          v112 = *(*(v115 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v111 + 8);

          v114 = v185;
        }

        v116 = &v175[v167 * v113];
        v117 = v179;
        sub_1AFB12858(&v116[*(v168 + 44)], v179);
        v118 = *v173;
        if ((*v173)(v117, 1, v19) == 1)
        {

          if (*(v30 + 184))
          {
            goto LABEL_91;
          }

          v120 = *(*(v30 + 168) + 4 * v186);
          v121 = *(*(v119 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v120 + 8);

          *v114 = v120;
          v114[1] = v121;
          v30 = v178;
          swift_storeEnumTagMultiPayload();
          if (v118(v179, 1, v19) != 1)
          {
            sub_1AFD53CA8(v179, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          sub_1AFD53D8C(v117, v114, type metadata accessor for ScriptIndex);
        }

        v122 = v169;
        sub_1AFD531F8(v114, v169, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v122, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v123 = *v122;
          v124 = *(v107 + 16);
          v195 = v123;
          if (v124)
          {
            v125 = sub_1AF449D3C(v123);
            if (v127)
            {
              *&v126 = *(*(v107 + 56) + 8 * v125);
              v195 = v126;
            }
          }

          sub_1AFD53198(v114, type metadata accessor for ScriptIndex);
          *v114 = v195;
          swift_storeEnumTagMultiPayload();
        }

        v128 = &v174[v166 * v186];
        if (!*&v128[*(v177 + 10)] && !*&v128[*(v177 + 11)])
        {
          v129 = v164;
          if (v163)
          {
            v129 = &unk_1F25042F0;
            if (v116[24] == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v129 = swift_allocObject();
              v129[1] = v183;
              v196 = 0xD000000000000017;
              v197 = v162;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v130 = v197;
              *(v129 + 4) = v196;
              *(v129 + 5) = v130;
              *(v129 + 48) = 0;
            }
          }

          v165 = v129;
          v131 = *(v129 + 2);
          if (v131)
          {
            v184 = v111 | (v112 << 32);
            v132 = v165 + 5;
            do
            {
              *&v195 = v131;
              v133 = *(v132 - 1);
              v134 = *v132;
              v199 = v132;
              v135 = v187;
              sub_1AFD531F8(v114, v187, type metadata accessor for ScriptIndex);
              (*v181)(v135, 0, 1, v194);

              v136 = sub_1AFAF8B58(v133, v134, v192, v193, v184, 0x72656767697274uLL, 0xE700000000000000, v135);
              v138 = v137;

              sub_1AFD53CA8(v135, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v196 = 0;
              v197 = 0xE000000000000000;
              sub_1AFDFE218();

              v196 = 0xD000000000000022;
              v197 = v182;
              MEMORY[0x1B2718AE0](v136, v138);

              v140 = v196;
              v139 = v197;
              v141 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              v142 = qword_1ED73B890;
              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v143 = swift_allocObject();
              *(v143 + 16) = v183;
              *(v143 + 56) = MEMORY[0x1E69E6158];
              *(v143 + 64) = sub_1AF0D544C();
              *(v143 + 32) = v140;
              *(v143 + 40) = v139;

              sub_1AFDFC4C8(v141, &dword_1AF0CE000, v142, "%{public}s", 10, 2, v143);

              v144 = v188;
              sub_1AFDFC288();
              v145 = v190;
              v146 = v191[12];
              v147 = v191[16];
              v148 = &v190[v191[20]];
              (*v180)(v190, v144, v189);
              *(v145 + v146) = v141;
              *(v145 + v147) = 0;
              *v148 = v140;
              *(v148 + 1) = v139;

              sub_1AFDFC608();

              sub_1AFD53198(v145, sub_1AF0D4E74);

              v132 = (v199 + 24);
              v131 = v195 - 1;
              v114 = v185;
            }

            while (v195 != 1);
          }

          v30 = v178;
          v149 = *(*(v178 + 40) + 16);
          v150 = *(v149 + 128);
          if (*(v150 + 16))
          {
            v151 = sub_1AF449CB8(v177);
            if ((v152 & 1) != 0 && *(*(v149 + 24) + 16 * *(*(v150 + 56) + 8 * v151) + 32) == v177)
            {
              v196 = v177;
              v197 = &off_1F2558F90;
              v198 = 1;

              sub_1AF6304E8((v170 + 13), &v196, v186, 0, v30, v170);

              sub_1AF635250(&v196);
            }
          }

          sub_1AFD53F14(0, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
          v154 = *(*(v30 + 40) + 16);
          v155 = *(v154 + 128);
          v19 = v194;
          if (*(v155 + 16))
          {
            v156 = v153;
            v157 = sub_1AF449CB8(v153);
            if ((v158 & 1) != 0 && *(*(v154 + 24) + 16 * *(*(v155 + 56) + 8 * v157) + 32) == v156)
            {
              v196 = v156;
              v197 = &off_1F250F310;
              v198 = 1;

              sub_1AF6304E8((v170 + 13), &v196, v186, 0, v30, v170);

              sub_1AF635250(&v196);
            }
          }
        }

        v99 = v186 + 1;
        result = sub_1AFD53198(v114, type metadata accessor for ScriptIndex);
        a1 = v171;
        if (v99 == v172)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AFD50DA8(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(uint64_t, void *, double), uint64_t (*a15)(uint64_t, void *), uint64_t (*a16)(uint64_t, void *), uint64_t (*a17)(void), unint64_t *a18, uint64_t (*a19)(uint64_t), uint64_t a20, unint64_t *a21, uint64_t (*a22)(void), uint64_t (*a23)(uint64_t), uint64_t (*a24)(uint64_t, void), unint64_t a25, unint64_t a26)
{
  v269 = a8;
  v293 = a7;
  v287 = a5;
  v288 = a6;
  v266 = a4;
  v270 = a3;
  v265 = a2;
  v285 = a25;
  v286 = a26;
  v262 = a24;
  v261 = a23;
  v260 = a22;
  v273 = a21;
  v272 = a20;
  v271 = a19;
  v256 = a18;
  v248 = a13;
  v247 = a12;
  v276 = a11;
  v267 = a10;
  v291 = a16;
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v238 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v289 = (&v238 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v263 = &v238 - v33;
  v34 = type metadata accessor for ScriptIndex(0);
  v290 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v238 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = (&v238 - v38);
  MEMORY[0x1EEE9AC00](v40);
  v255 = (&v238 - v41);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v279 = (&v238 - v44);
  v45 = a1[1];
  v46 = v292;
  v259 = a14(v45, a1, v43);
  v246 = a15(v45, a1);
  v284 = v45;
  result = v291(v45, a1);
  v258 = result;
  v240 = v46;
  v48 = a1[11];
  v291 = v34;
  v254 = v48;
  if (!v48)
  {
    v255 = v36;
    v263 = v29;
    v144 = a1[6];
    v254 = a1[7];
    v145 = v265;
    if (v144 == v254)
    {
      return result;
    }

    v264 = a17(0);
    v253 = *(*(v264 - 8) + 72);
    v146 = v271;
    v147 = v272;
    sub_1AFD53F14(0, v256, v271, v272, type metadata accessor for ScriptRuntime);
    v249 = v148;
    v245 = *(*(v148 - 1) + 72);
    sub_1AFD53F14(0, v273, v146, v147, type metadata accessor for ScriptCompileAttempt);
    v252 = v149;
    v251 = *(*(v149 - 1) + 72);
    v250 = (v290 + 48);
    v280 = (v290 + 56);
    v244 = "nction for script ";
    v243 = "tal library for script ";
    v241 = 0x80000001AFF4F110;
    v242 = 0x80000001AFF4F1B0;
    v279 = v39;
    while (1)
    {
      v274 = v258 + v251 * v144;
      sub_1AFD53C4C(v274, v273, v271, v272, type metadata accessor for ScriptCompileAttempt);

      v164 = sub_1AF6496EC(v144);

      if (*(v145 + 16) && (v165 = sub_1AF449D3C(v164), (v166 & 1) != 0))
      {
        v167 = (*(v145 + 56) + 8 * v165);
        v169 = *v167;
        v168 = v167[1];
      }

      else
      {

        v170 = sub_1AF6496EC(v144);

        v169 = v170;
        v168 = HIDWORD(v170);
      }

      v290 = v168;
      v171 = v259 + v253 * v144;
      v172 = v263;
      sub_1AFB12858(v171 + *(v264 + 44), v263);
      v173 = *v250;
      v174 = (*v250)(v172, 1, v34);
      v278 = v144;
      if (v174 == 1)
      {

        v175 = sub_1AF6496EC(v144);
        v176 = v263;

        v177 = v279;
        *v279 = v175;
        swift_storeEnumTagMultiPayload();
        if (v173(v176, 1, v34) != 1)
        {
          sub_1AFD53CA8(v176, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        v177 = v279;
        sub_1AFD53D8C(v172, v279, type metadata accessor for ScriptIndex);
      }

      v178 = v255;
      sub_1AFD531F8(v177, v255, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v178, type metadata accessor for ScriptIndex);
      }

      else
      {
        *&v179 = *v178;
        v180 = *(v145 + 16);
        v292 = v179;
        if (v180)
        {
          v181 = sub_1AF449D3C(v179);
          if (v183)
          {
            *&v182 = *(*(v145 + 56) + 8 * v181);
            v292 = v182;
          }
        }

        sub_1AFD53198(v177, type metadata accessor for ScriptIndex);
        *v177 = v292;
        swift_storeEnumTagMultiPayload();
      }

      v184 = v274;
      v185 = sub_1AFD531F8(v171, v274, v260);
      v186 = v261(v185);
      v187 = v252;
      v188 = v184 + v252[9];
      *v188 = v186;
      *(v188 + 8) = 0;
      v189 = v187[10];
      v283 = 1;
      *(v184 + v189) = 1;
      *(v184 + v187[11]) = 0;
      v190 = v184 + v187[12];
      strcpy(v190, "<precompiled>");
      *(v190 + 14) = -4864;
      *(v184 + v187[13]) = MEMORY[0x1E69E7CC0];
      v191 = *v171;
      v299 = MEMORY[0x1E69E7CD0];
      v192 = *(v171 + 24);
      v193 = v266;
      if (v192 < 4)
      {
        v283 = sub_1AFDFEE28();
      }

      v268 = v191;

      v194 = v262(v270, v193 & 1);
      v195 = *(v194 + 16);
      if (v195)
      {
        break;
      }

      v150 = 0;
      v151 = MEMORY[0x1E69E7CC0];
      v152 = MEMORY[0x1E69E7CC0];
LABEL_77:
      v153 = v278;
      v154 = v246 + v245 * v278;
      *&v292 = type metadata accessor for ScriptRuntime;
      v155 = v271;
      v156 = v272;
      sub_1AFD53C4C(v154, v256, v271, v272, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v274, v154, v273, v155, v156, type metadata accessor for ScriptCompileAttempt);
      v157 = v249;
      v158 = (v154 + v249[15]);
      *v158 = v268;
      v158[1] = 0;
      *(v154 + v157[9]) = v150;
      *(v154 + v157[10]) = v152;
      *(v154 + v157[11]) = v151;
      *(v154 + v157[12]) = 0;
      *(v154 + v157[13]) = 0;
      v159 = v154 + v157[14];
      *v159 = v270;
      *(v159 + 8) = v193 & 1;

      v160 = sub_1AF6496EC(v153);

      v296 = v157;
      v297 = &off_1F2558F90;
      v161 = sub_1AF585714(&v294);
      v162 = v156;
      v163 = v153;
      sub_1AFD53D18(v154, v161, v256, v155, v162, v292);
      v298 = 0;
      sub_1AF8259D0(&v294, v264, v160);
      sub_1AF967B70(v299);
      result = sub_1AFD53198(v279, type metadata accessor for ScriptIndex);
      v145 = v265;
      v34 = v291;
LABEL_78:
      v144 = v163 + 1;
      if (v144 == v254)
      {
        return result;
      }
    }

    v196 = v169;
    v150 = 0;
    v257 = v194;
    v197 = (v194 + 48);
    *&v292 = MEMORY[0x1E69E7CC0];
    v277 = MEMORY[0x1E69E7CC0];
    v275 = v196 | (v290 << 32);
    while (1)
    {
      v199 = *(v197 - 2);
      v200 = *(v197 - 1);
      LODWORD(v290) = *v197;
      if (v283)
      {
        swift_bridgeObjectRetain_n();

        v201 = v278;
        v202 = sub_1AF6496EC(v278);

        v203 = sub_1AF6496EC(v201);

        v204 = v289;
        *v289 = v203;
        v205 = v291;
        swift_storeEnumTagMultiPayload();
        (*v280)(v204, 0, 1, v205);
      }

      else
      {
        v204 = v289;
        sub_1AFD531F8(v279, v289, type metadata accessor for ScriptIndex);
        (*v280)(v204, 0, 1, v291);
        swift_bridgeObjectRetain_n();
        v202 = v275;
      }

      v206 = sub_1AFAF8B58(v199, v200, v287, v288, v202, v285, v286, v204);
      v208 = v207;

      sub_1AFD53CA8(v204, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v294, v206, v208);

      if (v192 < 4)
      {
        v209 = sub_1AFDFEE28();

        if ((v209 & 1) == 0)
        {
          if (v192 == 2)
          {
            if (v276)
            {

              v214 = v292;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v214 = sub_1AF4246B0(0, *(v214 + 2) + 1, 1, v214);
              }

              v218 = *(v214 + 2);
              v217 = *(v214 + 3);
              if (v218 >= v217 >> 1)
              {
                v214 = sub_1AF4246B0(v217 > 1, v218 + 1, 1, v214);
              }

              *(v214 + 2) = v218 + 1;
              v219 = &v214[24 * v218];
              *(v219 + 4) = v206;
              *(v219 + 5) = v208;
              v219[48] = v290;
              v150 = v276;
            }

            else
            {

              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v294 = 0;
              v295 = 0xE000000000000000;
              sub_1AFDFE218();
              MEMORY[0x1B2718AE0](0xD000000000000027, v244 | 0x8000000000000000);
              MEMORY[0x1B2718AE0](v206, v208);

              MEMORY[0x1B2718AE0](0xD000000000000031, v243 | 0x8000000000000000);
              v229 = v294;
              v230 = v295;
              v231 = sub_1AFDFDA08();
              v214 = v292;
              if (qword_1ED731058 != -1)
              {
                v232 = v231;
                swift_once();
                v231 = v232;
              }

              v294 = 0;
              sub_1AF0D4F18(v231, &v294, v229, v230);
            }
          }

          else
          {

            v220 = v269;
            if (!*(v269 + 16) || (v221 = sub_1AF419914(v206, v208), (v222 & 1) == 0))
            {

              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v294 = 0;
              v295 = 0xE000000000000000;
              sub_1AFDFE218();

              v294 = 0xD000000000000022;
              v295 = v241;
              MEMORY[0x1B2718AE0](v206, v208);

              v234 = v294;
              v235 = v295;
              v236 = sub_1AFDFDA08();
              v145 = v265;
              v34 = v291;
              v233 = v279;
              v163 = v278;
              if (qword_1ED731058 == -1)
              {
LABEL_139:
                v294 = 0;
                sub_1AF0D4F18(v236, &v294, v234, v235);

                result = sub_1AFD53198(v233, type metadata accessor for ScriptIndex);
                goto LABEL_78;
              }

LABEL_144:
              v237 = v236;
              swift_once();
              v236 = v237;
              goto LABEL_139;
            }

            v223 = v221;

            v224 = *(*(v220 + 56) + 8 * v223);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v214 = v292;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v277 = sub_1AF42469C(0, *(v277 + 2) + 1, 1, v277);
            }

            v227 = *(v277 + 2);
            v226 = *(v277 + 3);
            if (v227 >= v226 >> 1)
            {
              v277 = sub_1AF42469C(v226 > 1, v227 + 1, 1, v277);
            }

            v228 = v277;
            *(v277 + 2) = v227 + 1;
            *&v228[8 * v227 + 32] = v224;
            v150 = v267;
          }

          goto LABEL_98;
        }
      }

      else
      {
      }

      if (!v293 || (v281 = v197, v282 = v195, v210 = *(v293 + 96), v211 = sub_1AFDFCEC8(), v212 = [v210 objectForKeyedSubscript_], v210, v211, !v212))
      {

        goto LABEL_136;
      }

      v213 = [v212 isUndefined];

      if (v213)
      {

LABEL_136:

        v34 = v291;
        v233 = v279;
        v163 = v278;
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v294 = 0;
        v295 = 0xE000000000000000;
        sub_1AFDFE218();

        v294 = 0xD000000000000025;
        v295 = v242;
        MEMORY[0x1B2718AE0](v206, v208);

        v234 = v294;
        v235 = v295;
        v236 = sub_1AFDFDA08();
        v145 = v265;
        if (qword_1ED731058 == -1)
        {
          goto LABEL_139;
        }

        goto LABEL_144;
      }

      v214 = v292;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v214 = sub_1AF4246B0(0, *(v214 + 2) + 1, 1, v214);
      }

      v216 = *(v214 + 2);
      v215 = *(v214 + 3);
      if (v216 >= v215 >> 1)
      {
        v214 = sub_1AF4246B0(v215 > 1, v216 + 1, 1, v214);
      }

      *(v214 + 2) = v216 + 1;
      v198 = &v214[24 * v216];
      *(v198 + 4) = v206;
      *(v198 + 5) = v208;
      v198[48] = v290;
      v150 = v293;

      v197 = v281;
      v195 = v282;
LABEL_98:
      *&v292 = v214;
      v197 += 24;
      if (!--v195)
      {

        v193 = v266;
        v152 = v277;
        v151 = v292;
        goto LABEL_77;
      }
    }
  }

  v49 = v265;
  v50 = v279;
  v253 = a1[13];
  if (v253)
  {
    v264 = a17(0);
    v252 = *(*(v264 - 8) + 72);
    v51 = v271;
    v52 = v272;
    sub_1AFD53F14(0, v256, v271, v272, type metadata accessor for ScriptRuntime);
    v245 = v53;
    v244 = *(*(v53 - 1) + 72);
    sub_1AFD53F14(0, v273, v51, v52, type metadata accessor for ScriptCompileAttempt);
    v54 = 0;
    v251 = v55;
    v250 = *(*(v55 - 1) + 72);
    v56 = (v290 + 48);
    v281 = (v290 + 56);
    v243 = "nction for script ";
    v242 = "tal library for script ";
    v239 = 0x80000001AFF4F110;
    v241 = 0x80000001AFF4F1B0;
    v249 = (v290 + 48);
    while (1)
    {
      v71 = *(v254 + 8 * v54);
      v274 = v258 + v250 * v54;
      sub_1AFD53C4C(v274, v273, v271, v272, type metadata accessor for ScriptCompileAttempt);

      v280 = v71;
      v72 = sub_1AF6496EC(v71);

      if (*(v49 + 16) && (v73 = sub_1AF449D3C(v72), (v74 & 1) != 0))
      {
        v75 = (*(v49 + 56) + 8 * v73);
        v77 = *v75;
        v76 = v75[1];
      }

      else
      {

        v78 = sub_1AF6496EC(v280);

        v77 = v78;
        v76 = HIDWORD(v78);
      }

      v275 = v54;
      v79 = v259 + v252 * v54;
      v80 = v263;
      sub_1AFB12858(v79 + *(v264 + 44), v263);
      v81 = *v56;
      if ((*v56)(v80, 1, v34) == 1)
      {

        v82 = sub_1AF6496EC(v280);
        v50 = v279;

        *v50 = v82;
        v83 = v263;
        swift_storeEnumTagMultiPayload();
        if (v81(v83, 1, v34) != 1)
        {
          sub_1AFD53CA8(v83, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        sub_1AFD53D8C(v80, v50, type metadata accessor for ScriptIndex);
      }

      v84 = v255;
      sub_1AFD531F8(v50, v255, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v86 = v77;
        sub_1AFD53198(v84, type metadata accessor for ScriptIndex);
      }

      else
      {
        *&v85 = *v84;
        v87 = *(v49 + 16);
        v292 = v85;
        if (v87)
        {
          v88 = sub_1AF449D3C(v85);
          if (v90)
          {
            *&v89 = *(*(v49 + 56) + 8 * v88);
            v292 = v89;
          }
        }

        v86 = v77;
        sub_1AFD53198(v50, type metadata accessor for ScriptIndex);
        *v50 = v292;
        swift_storeEnumTagMultiPayload();
      }

      v91 = v274;
      v92 = sub_1AFD531F8(v79, v274, v260);
      v93 = v261(v92);
      v94 = v251;
      v95 = v91 + v251[9];
      *v95 = v93;
      *(v95 + 8) = 0;
      v96 = v94[10];
      v283 = 1;
      *(v91 + v96) = 1;
      *(v91 + v94[11]) = 0;
      v97 = v91 + v94[12];
      strcpy(v97, "<precompiled>");
      *(v97 + 14) = -4864;
      *(v91 + v94[13]) = MEMORY[0x1E69E7CC0];
      v98 = *v79;
      v299 = MEMORY[0x1E69E7CD0];
      v99 = *(v79 + 24);
      v100 = v266;
      if (v99 < 4)
      {
        v283 = sub_1AFDFEE28();
      }

      v268 = v98;

      v101 = v262(v270, v100 & 1);
      v102 = *(v101 + 16);
      if (v102)
      {
        break;
      }

      *&v292 = 0;
      v57 = MEMORY[0x1E69E7CC0];
      v58 = MEMORY[0x1E69E7CC0];
      v59 = v100;
LABEL_5:
      v60 = v246 + v244 * v275;
      v61 = v256;
      v62 = v271;
      v63 = v272;
      sub_1AFD53C4C(v60, v256, v271, v272, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v274, v60, v273, v62, v63, type metadata accessor for ScriptCompileAttempt);
      v64 = v245;
      v65 = (v60 + v245[15]);
      *v65 = v268;
      v65[1] = 0;
      *(v60 + v64[9]) = v292;
      *(v60 + v64[10]) = v57;
      *(v60 + v64[11]) = v58;
      *(v60 + v64[12]) = 0;
      *(v60 + v64[13]) = 0;
      v66 = v60 + v64[14];
      *v66 = v270;
      *(v66 + 8) = v59 & 1;

      v67 = sub_1AF6496EC(v280);

      v296 = v64;
      v297 = &off_1F2558F90;
      v68 = sub_1AF585714(&v294);
      sub_1AFD53D18(v60, v68, v61, v62, v63, type metadata accessor for ScriptRuntime);
      v298 = 0;
      v69 = v67;
      v70 = v275;
      sub_1AF8259D0(&v294, v264, v69);
      sub_1AF967B70(v299);
      v50 = v279;
      result = sub_1AFD53198(v279, type metadata accessor for ScriptIndex);
      v49 = v265;
      v34 = v291;
LABEL_6:
      v56 = v249;
      v54 = v70 + 1;
      if (v54 == v253)
      {
        return result;
      }
    }

    *&v292 = 0;
    v257 = v101;
    v103 = (v101 + 48);
    v58 = MEMORY[0x1E69E7CC0];
    v277 = MEMORY[0x1E69E7CC0];
    v278 = v86 | (v76 << 32);
    LODWORD(v282) = v99;
    while (1)
    {
      v106 = *(v103 - 2);
      v105 = *(v103 - 1);
      LODWORD(v290) = *v103;
      if (v283)
      {
        swift_bridgeObjectRetain_n();

        v107 = v280;
        v108 = sub_1AF6496EC(v280);

        v109 = v107;
        v99 = v282;
        v110 = sub_1AF6496EC(v109);

        v111 = v289;
        *v289 = v110;
        v112 = v291;
        swift_storeEnumTagMultiPayload();
        (*v281)(v111, 0, 1, v112);
      }

      else
      {
        v111 = v289;
        sub_1AFD531F8(v279, v289, type metadata accessor for ScriptIndex);
        (*v281)(v111, 0, 1, v291);
        swift_bridgeObjectRetain_n();
        v108 = v278;
      }

      v113 = sub_1AFAF8B58(v106, v105, v287, v288, v108, v285, v286, v111);
      v115 = v114;

      sub_1AFD53CA8(v111, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v294, v113, v115);

      if (v99 >= 4)
      {
        break;
      }

      v116 = sub_1AFDFEE28();

      if (v116)
      {
        goto LABEL_34;
      }

      if (v99 == 2)
      {
        if (v276)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = sub_1AF4246B0(0, *(v58 + 2) + 1, 1, v58);
          }

          v124 = v290;
          v126 = *(v58 + 2);
          v125 = *(v58 + 3);
          if (v126 >= v125 >> 1)
          {
            v58 = sub_1AF4246B0(v125 > 1, v126 + 1, 1, v58);
          }

          *(v58 + 2) = v126 + 1;
          v127 = &v58[24 * v126];
          *(v127 + 4) = v113;
          *(v127 + 5) = v115;
          v127[48] = v124;
          *&v292 = v276;
        }

        else
        {

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v294 = 0;
          v295 = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD000000000000027, v243 | 0x8000000000000000);
          MEMORY[0x1B2718AE0](v113, v115);

          MEMORY[0x1B2718AE0](0xD000000000000031, v242 | 0x8000000000000000);
          v136 = v294;
          v137 = v295;
          v138 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v139 = v138;
            swift_once();
            v138 = v139;
          }

          v294 = 0;
          sub_1AF0D4F18(v138, &v294, v136, v137);
        }

        goto LABEL_27;
      }

      v128 = v269;
      if (!*(v269 + 16) || (v129 = sub_1AF419914(v113, v115), (v130 & 1) == 0))
      {

        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v294 = 0;
        v295 = 0xE000000000000000;
        sub_1AFDFE218();

        v294 = 0xD000000000000022;
        v295 = v239;
        MEMORY[0x1B2718AE0](v113, v115);

        v140 = v294;
        v141 = v295;
        v142 = sub_1AFDFDA08();
        v49 = v265;
        v34 = v291;
        v50 = v279;
        v70 = v275;
        if (qword_1ED731058 == -1)
        {
          goto LABEL_64;
        }

LABEL_71:
        v143 = v142;
        swift_once();
        v142 = v143;
LABEL_64:
        v294 = 0;
        sub_1AF0D4F18(v142, &v294, v140, v141);

        result = sub_1AFD53198(v50, type metadata accessor for ScriptIndex);
        goto LABEL_6;
      }

      v131 = v129;

      v132 = *(*(v128 + 56) + 8 * v131);
      v133 = v277;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v133 = sub_1AF42469C(0, *(v133 + 2) + 1, 1, v133);
      }

      v135 = *(v133 + 2);
      v134 = *(v133 + 3);
      if (v135 >= v134 >> 1)
      {
        v133 = sub_1AF42469C(v134 > 1, v135 + 1, 1, v133);
      }

      *(v133 + 2) = v135 + 1;
      v277 = v133;
      *&v133[8 * v135 + 32] = v132;
LABEL_26:

LABEL_27:
      v103 += 24;
      if (!--v102)
      {

        v59 = v266;
        v57 = v277;
        goto LABEL_5;
      }
    }

LABEL_34:
    if (!v293 || (v117 = *(v293 + 96), v118 = sub_1AFDFCEC8(), v119 = [v117 objectForKeyedSubscript_], v117, v118, !v119))
    {

LABEL_61:

      v34 = v291;
      v70 = v275;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v294 = 0;
      v295 = 0xE000000000000000;
      sub_1AFDFE218();

      v294 = 0xD000000000000025;
      v295 = v241;
      MEMORY[0x1B2718AE0](v113, v115);

      v140 = v294;
      v141 = v295;
      v142 = sub_1AFDFDA08();
      v49 = v265;
      v50 = v279;
      if (qword_1ED731058 != -1)
      {
        goto LABEL_71;
      }

      goto LABEL_64;
    }

    v120 = [v119 isUndefined];

    if (v120)
    {
      goto LABEL_61;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_1AF4246B0(0, *(v58 + 2) + 1, 1, v58);
    }

    v99 = v282;
    v121 = v290;
    v123 = *(v58 + 2);
    v122 = *(v58 + 3);
    if (v123 >= v122 >> 1)
    {
      v58 = sub_1AF4246B0(v122 > 1, v123 + 1, 1, v58);
    }

    *(v58 + 2) = v123 + 1;
    v104 = &v58[24 * v123];
    *(v104 + 4) = v113;
    *(v104 + 5) = v115;
    v104[48] = v121;
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1AFD53198(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AFD531F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AFD53260(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AFD55360(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AFD532D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AFD53334(uint64_t a1, uint64_t a2)
{
  sub_1AFD532D0(0, &qword_1ED730AD8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1AFD533D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1AFD533F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, _UNKNOWN **))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6448], &off_1F2532E98);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AFD53450(uint64_t a1, uint64_t a2)
{
  sub_1AFD533F0(0, qword_1ED72FDC8, type metadata accessor for KeyframeAnimation);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AFD534D0(uint64_t a1)
{
  sub_1AFD533F0(0, qword_1ED72FDC8, type metadata accessor for KeyframeAnimation);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AFD53548(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1[11];
  v8 = a1[12];
  v9 = a1[13];
  v10 = a1[2];
  v54 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v7, v8, v9, v10);
  result = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, v7, v8, v9, v10);
  v12 = result;
  if (!v7)
  {
    v33 = a1[6];
    v34 = a1[7];
    if (v33 == v34)
    {
      return result;
    }

    v35 = a3 + 32;
    while (1)
    {
      v57 = *&v54[16 * v33];
      v36 = sub_1AFA2D838(*(v12 + 16 * v33));
      v37 = v57;
      *(&v37 + 3) = v36;
      v58[0] = v37;
      v59 = 3;
      ecs_stack_allocator_push_snapshot(*(a2 + 32));
      v38 = *(a3 + 16);
      v39 = 2 * v38;
      v40 = ecs_stack_allocator_allocate(*(a2 + 32), 16 * v38 + 32, 8);
      *v40 = &type metadata for DebugInfoWireframePrimitive;
      v40[1] = &off_1F25604A8;
      v40[2] = &type metadata for DebugInfoColor;
      v40[3] = &off_1F2560488;
      if (!v38)
      {
        v43 = 2;
        goto LABEL_41;
      }

      if (v38 <= 3)
      {
        break;
      }

      if ((v40 + 4) < v35 + v39 * 8 && v35 < &v40[v39 + 4])
      {
        break;
      }

      v42 = v38 & 0x7FFFFFFFFFFFFFFCLL;
      v43 = v38 & 0x7FFFFFFFFFFFFFFCLL | 2;
      v44 = v40 + 8;
      v45 = v38 & 0x7FFFFFFFFFFFFFFCLL;
      v46 = (a3 + 64);
      do
      {
        v48 = *(v46 - 2);
        v47 = *(v46 - 1);
        v50 = *v46;
        v49 = v46[1];
        v46 += 4;
        *(v44 - 2) = v48;
        *(v44 - 1) = v47;
        *v44 = v50;
        v44[1] = v49;
        v44 += 4;
        v45 -= 4;
      }

      while (v45);
      if (v38 != v42)
      {
        goto LABEL_37;
      }

LABEL_41:
      v60 = 1;
      sub_1AF63C898(v40, v43, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a2, v58, -16744193);
      if (v4)
      {
LABEL_44:
        result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
        __break(1u);
        return result;
      }

      v4 = 0;
      ++v33;
      result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
      if (v33 == v34)
      {
        return result;
      }
    }

    v42 = 0;
    v43 = 2;
LABEL_37:
    v51 = v38 - v42;
    v52 = (v35 + 16 * v42);
    do
    {
      v53 = *v52++;
      *&v40[2 * v43++] = v53;
      --v51;
    }

    while (v51);
    goto LABEL_41;
  }

  if (v9)
  {
    v13 = 0;
    v14 = a3 + 32;
    do
    {
      v56 = *&v54[16 * v13];
      v15 = sub_1AFA2D838(*(v12 + 16 * v13));
      v16 = v56;
      *(&v16 + 3) = v15;
      v58[0] = v16;
      v59 = 3;
      ecs_stack_allocator_push_snapshot(*(a2 + 32));
      v17 = *(a3 + 16);
      v18 = 2 * v17;
      v19 = ecs_stack_allocator_allocate(*(a2 + 32), 16 * v17 + 32, 8);
      *v19 = &type metadata for DebugInfoWireframePrimitive;
      v19[1] = &off_1F25604A8;
      v19[2] = &type metadata for DebugInfoColor;
      v19[3] = &off_1F2560488;
      if (v17)
      {
        if (v17 > 3 && ((v19 + 4) < v14 + v18 * 8 ? (v20 = v14 >= &v19[v18 + 4]) : (v20 = 1), v20))
        {
          v21 = v17 & 0x7FFFFFFFFFFFFFFCLL;
          v22 = v17 & 0x7FFFFFFFFFFFFFFCLL | 2;
          v23 = v19 + 8;
          v24 = v17 & 0x7FFFFFFFFFFFFFFCLL;
          v25 = (a3 + 64);
          do
          {
            v27 = *(v25 - 2);
            v26 = *(v25 - 1);
            v29 = *v25;
            v28 = v25[1];
            v25 += 4;
            *(v23 - 2) = v27;
            *(v23 - 1) = v26;
            *v23 = v29;
            v23[1] = v28;
            v23 += 4;
            v24 -= 4;
          }

          while (v24);
          if (v17 == v21)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v21 = 0;
          v22 = 2;
        }

        v30 = v17 - v21;
        v31 = (v14 + 16 * v21);
        do
        {
          v32 = *v31++;
          *&v19[2 * v22++] = v32;
          --v30;
        }

        while (v30);
      }

      else
      {
        v22 = 2;
      }

LABEL_20:
      v60 = 1;
      sub_1AF63C898(v19, v22, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a2, v58, -16744193);
      if (v4)
      {
        goto LABEL_44;
      }

      v4 = 0;
      result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
      ++v13;
    }

    while (v13 != v9);
  }

  return result;
}

void sub_1AFD53904(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1[11];
  v8 = a1[12];
  v10 = a1[13];
  v11 = a1[2];
  v50 = sub_1AF64B110(&type metadata for KillShape, &off_1F2561EB0, v9, v8, v10, v11);
  v12 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v9, v8, v10, v11);
  if (v9)
  {
    if (v10)
    {
      v13 = *(a2 + 32);
      v14 = (v12 + 32);
      v15 = v50 + 1;
      do
      {

        sub_1AFB95040(v13, &v53);
        v48 = v53.columns[1];
        v51 = v53.columns[0];
        v44 = v53.columns[3];
        v46 = v53.columns[2];

        if (v54)
        {
          v16 = -1;
        }

        else
        {
          v16 = 0;
        }

        v17 = vdupq_n_s32(v16);
        v18 = vbslq_s8(v17, xmmword_1AFE20150, v51);
        v19 = vbslq_s8(v17, xmmword_1AFE20160, v48);
        v20 = vbslq_s8(v17, xmmword_1AFE20180, v46);
        v21 = vbslq_s8(v17, xmmword_1AFE201A0, v44);
        v22 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*v14[-4].f32)), v19, v14[-4], 1), v20, *v14[-4].f32, 2), v21, *v14[-4].f32, 3);
        v23 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*v14[-2].f32)), v19, v14[-2], 1), v20, *v14[-2].f32, 2), v21, *v14[-2].f32, 3);
        v24 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*v14->f32)), v19, *v14, 1), v20, *v14->f32, 2), v21, *v14->f32, 3);
        v25 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*v14[2].f32)), v19, v14[2], 1), v20, *v14[2].f32, 2), v21, *v14[2].f32, 3);
        v26 = *v15;
        if (*(v15 - 1))
        {
          if (*(v15 - 1) == 1)
          {
            sub_1AFB6657C(v26, a3, a4, v22, v23, v24, v25);
          }

          else
          {
            sub_1AFB671E8(v26, a3, a4, v22, v23, v24, v25, *v19.i64, *v20.i64, v21);
          }
        }

        else
        {
          sub_1AFB65D2C(v26, a3, a4, v22, v23, v24);
        }

        v14 += 8;
        v15 += 2;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    v27 = a1[6];
    v28 = a1[7];
    v29 = v28 - v27;
    if (v28 != v27)
    {
      v30 = *(a2 + 32);
      v31 = &v50[2 * v27 + 1];
      v32 = &v12[64 * v27 + 32];
      do
      {

        sub_1AFB95040(v30, &v53);
        v49 = v53.columns[1];
        v52 = v53.columns[0];
        v45 = v53.columns[3];
        v47 = v53.columns[2];

        if (v54)
        {
          v33 = -1;
        }

        else
        {
          v33 = 0;
        }

        v34 = vdupq_n_s32(v33);
        v35 = vbslq_s8(v34, xmmword_1AFE20150, v52);
        v36 = vbslq_s8(v34, xmmword_1AFE20160, v49);
        v37 = vbslq_s8(v34, xmmword_1AFE20180, v47);
        v38 = vbslq_s8(v34, xmmword_1AFE201A0, v45);
        v39 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*v32[-4].f32)), v36, v32[-4], 1), v37, *v32[-4].f32, 2), v38, *v32[-4].f32, 3);
        v40 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*v32[-2].f32)), v36, v32[-2], 1), v37, *v32[-2].f32, 2), v38, *v32[-2].f32, 3);
        v41 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*v32->f32)), v36, *v32, 1), v37, *v32->f32, 2), v38, *v32->f32, 3);
        v42 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*v32[2].f32)), v36, v32[2], 1), v37, *v32[2].f32, 2), v38, *v32[2].f32, 3);
        v43 = *v31;
        if (*(v31 - 1))
        {
          if (*(v31 - 1) == 1)
          {
            sub_1AFB6657C(v43, a3, a4, v39, v40, v41, v42);
          }

          else
          {
            sub_1AFB671E8(v43, a3, a4, v39, v40, v41, v42, *v36.i64, *v37.i64, v38);
          }
        }

        else
        {
          sub_1AFB65D2C(v43, a3, a4, v39, v40, v41);
        }

        v31 += 2;
        v32 += 8;
        --v29;
      }

      while (v29);
    }
  }
}

uint64_t sub_1AFD53C4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1AFD53F14(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AFD53CA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AFD532D0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AFD53D18(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1AFD53F14(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1AFD53D8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1AFD53DF4(uint64_t a1)
{
  if (!qword_1EB644400)
  {
    sub_1AFD53F14(255, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB644400);
    }
  }
}

void sub_1AFD53E84(uint64_t a1)
{
  if (!qword_1EB644408)
  {
    sub_1AFD53F14(255, &unk_1ED725708, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptRuntime);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB644408);
    }
  }
}

void sub_1AFD53F14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1AFD53F80(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1AFD53F14(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

void sub_1AFD53FF4(uint64_t a1)
{
  if (!qword_1EB644418)
  {
    sub_1AFD53F14(255, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB644418);
    }
  }
}

void sub_1AFD54084(uint64_t a1)
{
  if (!qword_1ED7256F8)
  {
    sub_1AFD53F14(255, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED7256F8);
    }
  }
}

void sub_1AFD54114(uint64_t a1)
{
  if (!qword_1EB644428)
  {
    sub_1AFD53F14(255, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB644428);
    }
  }
}

void sub_1AFD541A4(uint64_t a1)
{
  if (!qword_1ED725720)
  {
    sub_1AFD53F14(255, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED725720);
    }
  }
}

void sub_1AFD54234(uint64_t a1)
{
  if (!qword_1EB644430)
  {
    sub_1AFD53F14(255, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB644430);
    }
  }
}

void sub_1AFD542C4(uint64_t a1)
{
  if (!qword_1ED725728[0])
  {
    sub_1AFD53F14(255, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, qword_1ED725728);
    }
  }
}

void sub_1AFD54354(uint64_t a1)
{
  if (!qword_1EB644438)
  {
    sub_1AFD53F14(255, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB644438);
    }
  }
}

void sub_1AFD543E4(uint64_t a1)
{
  if (!qword_1ED722AF0)
  {
    sub_1AFD53F14(255, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED722AF0);
    }
  }
}

void sub_1AFD54474(uint64_t a1)
{
  if (!qword_1EB644448)
  {
    sub_1AFD53F14(255, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB644448);
    }
  }
}

void sub_1AFD54504(uint64_t a1)
{
  if (!qword_1EB644450)
  {
    sub_1AFD53F14(255, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB644450);
    }
  }
}

void sub_1AFD54594(uint64_t a1)
{
  if (!qword_1ED725700)
  {
    sub_1AFD53F14(255, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED725700);
    }
  }
}

void sub_1AFD54624(uint64_t a1)
{
  if (!qword_1EB644458)
  {
    sub_1AFD53F14(255, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB644458);
    }
  }
}

void sub_1AFD546B4(uint64_t a1)
{
  if (!qword_1ED725718)
  {
    sub_1AFD53F14(255, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED725718);
    }
  }
}

void sub_1AFD54744(uint64_t a1)
{
  if (!qword_1EB644460)
  {
    sub_1AFD53F14(255, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB644460);
    }
  }
}

void sub_1AFD547D4(uint64_t a1)
{
  if (!qword_1EB644468[0])
  {
    sub_1AFD53F14(255, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, qword_1EB644468);
    }
  }
}

uint64_t sub_1AFD54864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AFD548CC(void *a1, uint64_t a2)
{
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[2];
  v8 = sub_1AF64B110(&type metadata for Skybox, &off_1F25304A0, v4, v5, v6, v7);
  result = sub_1AF64B110(&type metadata for IBLGenerator, &off_1F252A618, v4, v5, v6, v7);
  if (v4)
  {
    if (v6)
    {
      v10 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v53 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
      v55 = a2;
      v11 = (v8 + 4);
      do
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        if ((v16 != -1 || v17 != 0) && (v16 & 0x80000000) == 0 && v10[1] > v16)
        {
          v19 = (*v10 + 12 * v16);
          if (v17 == -1 || v19[2] == v17)
          {
            v20 = *(v19 + 2);
            v21 = *(*(a2 + 144) + 8 * *v19 + 32);
            if (*(v21 + 232) <= v20 && *(v21 + 240) > v20)
            {
              v23 = *(a2 + v53);
              v24 = *v23;
              v25 = *(v21 + 344);

              os_unfair_lock_lock(v25);
              ecs_stack_allocator_push_snapshot(*(v24 + 32));
              v26 = *(*(v21 + 40) + 16);
              v27 = *(v26 + 128);
              if (!*(v27 + 16) || (v28 = sub_1AF449CB8(&type metadata for TextureRequireMipmapGeneration), (v29 & 1) == 0) || *(*(v26 + 24) + 16 * *(*(v27 + 56) + 8 * v28) + 32) != &type metadata for TextureRequireMipmapGeneration)
              {
                v12 = *(v24 + 32);

                v13 = ecs_stack_allocator_allocate(v12, 8, 8);
                *v13 = v20;
                v14 = *v23;
                sub_1AF5B4D64(v13, 1, 1, &type metadata for TextureRequireMipmapGeneration, &off_1F2546238, 1, v14);
                LODWORD(v12) = *(v21 + 24);

                v62 = 0;
                v60 = 0u;
                v61 = 0u;
                v59 = 0;
                v57 = 0u;
                v58 = 0u;
                v15 = sub_1AF65A4B4(v12, &type metadata for TextureRequireMipmapGeneration, &off_1F2546238, 0, 0, &v60, &v57);

                sub_1AF5DD41C(&v57);
                sub_1AF5DD41C(&v60);
                sub_1AF64A824(v13, 1, 1, v15, v14);
              }

              ecs_stack_allocator_pop_snapshot(*(v24 + 32));
              os_unfair_lock_unlock(*(v21 + 344));

              a2 = v55;
            }
          }
        }

        v11 += 8;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v30 = a1[6];
    v31 = a1[7];
    v32 = v31 - v30;
    if (v31 != v30)
    {
      v33 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v54 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
      v56 = a2;
      v34 = &v8[32 * v30 + 4];
      do
      {
        v39 = *(v34 - 1);
        v40 = *v34;
        if ((v39 != -1 || v40 != 0) && (v39 & 0x80000000) == 0 && v33[1] > v39)
        {
          v42 = (*v33 + 12 * v39);
          if (v40 == -1 || v42[2] == v40)
          {
            v43 = *(v42 + 2);
            v44 = *(*(a2 + 144) + 8 * *v42 + 32);
            if (*(v44 + 232) <= v43 && *(v44 + 240) > v43)
            {
              v46 = *(a2 + v54);
              v47 = *v46;
              v48 = *(v44 + 344);

              os_unfair_lock_lock(v48);
              ecs_stack_allocator_push_snapshot(*(v47 + 32));
              v49 = *(*(v44 + 40) + 16);
              v50 = *(v49 + 128);
              if (!*(v50 + 16) || (v51 = sub_1AF449CB8(&type metadata for TextureRequireMipmapGeneration), (v52 & 1) == 0) || *(*(v49 + 24) + 16 * *(*(v50 + 56) + 8 * v51) + 32) != &type metadata for TextureRequireMipmapGeneration)
              {
                v35 = *(v47 + 32);

                v36 = ecs_stack_allocator_allocate(v35, 8, 8);
                *v36 = v43;
                v37 = *v46;
                sub_1AF5B4D64(v36, 1, 1, &type metadata for TextureRequireMipmapGeneration, &off_1F2546238, 1, *v46);
                LODWORD(v35) = *(v44 + 24);

                v62 = 0;
                v60 = 0u;
                v61 = 0u;
                v59 = 0;
                v57 = 0u;
                v58 = 0u;
                v38 = sub_1AF65A4B4(v35, &type metadata for TextureRequireMipmapGeneration, &off_1F2546238, 0, 0, &v60, &v57);

                sub_1AF5DD41C(&v57);
                sub_1AF5DD41C(&v60);
                sub_1AF64A824(v36, 1, 1, v38, v37);
              }

              ecs_stack_allocator_pop_snapshot(*(v47 + 32));
              os_unfair_lock_unlock(*(v44 + 344));

              a2 = v56;
            }
          }
        }

        v34 += 32;
        --v32;
      }

      while (v32);
    }
  }

  return result;
}

void sub_1AFD54DA0(void *a1, uint64_t a2)
{
  v4 = a1[11];
  v3 = a1[12];
  v5 = a1[13];
  v6 = a1[1];
  v7 = a1[2];
  v8 = sub_1AF64B110(&type metadata for SubEntity, &off_1F2562C50, v4, v3, v5, v7);
  v50 = v6;
  v9 = sub_1AF64B110(&type metadata for Parent, &off_1F2529C98, v4, v3, v5, v7);
  v10 = v9;
  if (v4)
  {
    if (v5)
    {
      v49 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      do
      {
        v11 = *v4;
        v51 = v4 + 1;
        v13 = *v10;
        v12 = *(v10 + 1);
        if (*v10 == -1 && v12 == 0)
        {
          v15 = *v8;
          *v10 = *v8;
          v12 = HIDWORD(v15);
          v13 = v15;
        }

        v16 = v13 == -1 && v12 == 0;
        v17 = v16;
        if (!v16 && (v13 & 0x80000000) == 0 && v49[1] > v13 && ((v23 = *v49 + 12 * v13, v12 == -1) || *(v23 + 8) == v12) && (v24 = *(*(*(a2 + 88) + 8 * *(v23 + 6) + 32) + 16), v25 = *(v24 + 128), *(v25 + 16)) && (v26 = sub_1AF449CB8(&type metadata for Children), (v27 & 1) != 0) && *(*(v24 + 24) + 16 * *(*(v25 + 56) + 8 * v26) + 32) == &type metadata for Children)
        {
          sub_1AF6875E0(v13 | (v12 << 32), a2, v50, v11);
        }

        else
        {
          sub_1AFD55360(0, &unk_1ED7269B0, &type metadata for Entity, MEMORY[0x1E69E6F90]);
          v6 = swift_allocObject();
          *(v6 + 16) = xmmword_1AFE431C0;

          if (*(v50 + 184))
          {
            goto LABEL_75;
          }

          v19 = *(*(v50 + 168) + 4 * v11);
          v20 = *(*(v18 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v19 + 8);

          *(v6 + 32) = v19;
          *(v6 + 36) = v20;
          if ((v17 & 1) == 0 && (v13 & 0x80000000) == 0 && v49[1] > v13)
          {
            v21 = (*v49 + 12 * v13);
            if (v12 == -1 || v21[2] == v12)
            {
              v11 = *(*(a2 + 144) + 8 * *v21 + 32);
              v22 = *(v21 + 2);
              os_unfair_lock_lock(*(v11 + 344));
              sub_1AFC0FAEC(v11, v22, v6, a2, v13 | (v12 << 32));
              if (v46)
              {
                goto LABEL_76;
              }

              os_unfair_lock_unlock(*(v11 + 344));
            }
          }
        }

        v4 = v51;
        v10 += 8;
        v8 += 8;
        --v5;
      }

      while (v5);
    }

    return;
  }

  v28 = a1[6];
  v52 = a1[7];
  if (v28 == v52)
  {
    return;
  }

  v29 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v30 = &v9[8 * v28];
  v48 = v8;
  while (1)
  {
    v32 = *v30;
    v31 = *(v30 + 1);
    if (*v30 == -1 && v31 == 0)
    {
      v34 = *&v8[8 * v28];
      *v30 = v34;
      v31 = HIDWORD(v34);
      v32 = v34;
    }

    v35 = v32 == -1 && v31 == 0;
    v36 = v35;
    if (v35)
    {
      break;
    }

    if ((v32 & 0x80000000) != 0)
    {
      break;
    }

    if (v29[1] <= v32)
    {
      break;
    }

    v40 = *v29 + 12 * v32;
    if (v31 != -1 && *(v40 + 8) != v31)
    {
      break;
    }

    v41 = *(*(*(a2 + 88) + 8 * *(v40 + 6) + 32) + 16);
    v6 = *(v41 + 128);
    if (!*(v6 + 16))
    {
      break;
    }

    v42 = sub_1AF449CB8(&type metadata for Children);
    if ((v43 & 1) == 0 || *(*(v41 + 24) + 16 * *(*(v6 + 56) + 8 * v42) + 32) != &type metadata for Children)
    {
      break;
    }

    sub_1AF6875E0(v32 | (v31 << 32), a2, v50, v28);
LABEL_71:
    ++v28;
    v30 += 8;
    if (v52 == v28)
    {
      return;
    }
  }

  v37 = v29;
  sub_1AFD55360(0, &unk_1ED7269B0, &type metadata for Entity, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE431C0;

  if ((*(v50 + 184) & 1) == 0)
  {
    v6 = *(*(v50 + 168) + 4 * v28);
    v39 = *(*(v38 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v6 + 8);

    *(v11 + 32) = v6;
    *(v11 + 36) = v39;
    if (!v36)
    {
      v29 = v37;
      if ((v32 & 0x80000000) != 0 || v37[1] <= v32 || (v44 = (*v37 + 12 * v32), v31 != -1) && v44[2] != v31)
      {

        goto LABEL_70;
      }

      v6 = *(*(a2 + 144) + 8 * *v44 + 32);
      v45 = *(v44 + 2);
      os_unfair_lock_lock(*(v6 + 344));
      sub_1AFC0FAEC(v6, v45, v11, a2, v32 | (v31 << 32));
      if (v46)
      {
        goto LABEL_77;
      }

      os_unfair_lock_unlock(*(v6 + 344));
    }

    v29 = v37;
LABEL_70:
    v8 = v48;
    goto LABEL_71;
  }

LABEL_75:
  sub_1AFDFE518();
  __break(1u);
LABEL_76:

  os_unfair_lock_unlock(*(v11 + 344));
  __break(1u);
LABEL_77:

  os_unfair_lock_unlock(*(v6 + 344));
  __break(1u);
}