float sub_1C4B832FC(uint64_t a1, uint64_t a2, void (*a3)(void, __n128), uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), void (*a9)(void))
{
  v247 = a8;
  v266 = a7;
  v248 = a6;
  v264 = a2;
  v265 = a9;
  v261 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v236 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v231 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v256 = &v231 - v20;
  a3(0, v19);
  sub_1C43FCDF8();
  v262 = v21;
  v263 = v22;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  v255 = v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  v260 = v26;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  v258 = v31;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v231 - v34;
  v237 = a4;
  v238 = a5;
  v36 = sub_1C456902C(a4, a5);
  MEMORY[0x1EEE9AC00](v36 - 8);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  v235 = &v231 - v39;
  v40 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBFDC();
  v253 = v44;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  v254 = v49;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  v259 = v51;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v231 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v231 - v57;
  v59 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v59 - 8);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v61);
  v246 = &v231 - v62;
  v63 = 0;
  v64 = *(a1 + 16);
  v267 = a1;
  v268 = v64;
  v65 = MEMORY[0x1E69E7CC0];
  v257 = v40;
  while (v268 != v63)
  {
    sub_1C44260B4();
    v9 = v67 & ~v66;
    sub_1C44032D8();
    sub_1C44718CC(v68, v58);
    if (sub_1C4F013E8())
    {
      sub_1C448566C(v58, v253);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v271 = v65;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C442044C();
        sub_1C459DCC0();
        v65 = v271;
      }

      v70 = *(v65 + 16);
      v71 = v70 + 1;
      if (v70 >= *(v65 + 24) >> 1)
      {
        v232 = v70 + 1;
        sub_1C459DCC0();
        v71 = v232;
        v65 = v271;
      }

      ++v63;
      *(v65 + 16) = v71;
      sub_1C44032D8();
      sub_1C448566C(v253, v72);
      v40 = v257;
    }

    else
    {
      sub_1C44DBD5C(v58, type metadata accessor for EntityTriple);
      ++v63;
    }
  }

  v73 = v246;
  sub_1C44D0BD8(v65, v246);

  sub_1C440029C(v73);
  if (v158)
  {
    v74 = &qword_1EC0BA590;
    v75 = &qword_1C4F1F430;
    v76 = v73;
LABEL_23:
    sub_1C4420C3C(v76, v74, v75);
    goto LABEL_24;
  }

  v77 = (v73 + *(v40 + 32));
  v78 = v77[1];
  v232 = *v77;
  v253 = v78;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44070F8();
  sub_1C44DBD5C(v73, v79);
  sub_1C43FF69C();
  v80 = MEMORY[0x1E69E7CC0];
  while (v9 != v63)
  {
    sub_1C4432B28();
    v83 = v82 & ~v81;
    v85 = *(v84 + 72);
    sub_1C44718CC(v264 + v83 + v85 * v63, v35);
    if (sub_1C4F013E8())
    {
      sub_1C440A104(v35, &v275);
      v86 = swift_isUniquelyReferenced_nonNull_native();
      v271 = v80;
      if ((v86 & 1) == 0)
      {
        v87 = sub_1C442044C();
        v247(v87);
        v80 = v271;
      }

      v88 = *(v80 + 16);
      v89 = v88 + 1;
      if (v88 >= *(v80 + 24) >> 1)
      {
        v246 = v88 + 1;
        sub_1C4400F68();
        v90();
        v89 = v246;
        v80 = v271;
      }

      ++v63;
      *(v80 + 16) = v89;
      sub_1C448566C(v244, v80 + v83 + v88 * v85);
      v40 = v257;
    }

    else
    {
      sub_1C44DBD5C(v35, v265);
      ++v63;
    }
  }

  v91 = v235;
  v92 = sub_1C4411284();
  v93(v92);

  v94 = v262;
  if (sub_1C44157D4(v91, 1, v262) == 1)
  {

    sub_1C4409144();
    goto LABEL_23;
  }

  v178 = (v91 + *(v94 + 32));
  v35 = *v178;
  v179 = v178[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DBD5C(v91, v265);
  if (v232 == v35 && v253 == v179)
  {
    goto LABEL_136;
  }

  sub_1C43FBEC0(v232, v253, v35);
  sub_1C4414F48();

  result = 1.0;
  if (v35)
  {
    return result;
  }

LABEL_24:
  v95 = 0;
  v96 = MEMORY[0x1E69E7CC0];
  while (v268 != v95)
  {
    sub_1C44260B4();
    v63 = v98 & ~v97;
    v9 = *(v42 + 72);
    sub_1C44032D8();
    sub_1C44718CC(v99, v55);
    if (sub_1C442E59C())
    {
      sub_1C448566C(v55, v250);
      v100 = swift_isUniquelyReferenced_nonNull_native();
      v271 = v96;
      if ((v100 & 1) == 0)
      {
        sub_1C442044C();
        sub_1C459DCC0();
        v96 = v271;
      }

      v101 = *(v96 + 16);
      v35 = v101 + 1;
      if (v101 >= *(v96 + 24) >> 1)
      {
        sub_1C459DCC0();
        v96 = v271;
      }

      ++v95;
      *(v96 + 16) = v35;
      sub_1C44032D8();
      sub_1C448566C(v250, v102);
      v40 = v257;
    }

    else
    {
      sub_1C44DBD5C(v55, type metadata accessor for EntityTriple);
      ++v95;
    }
  }

  v103 = v243;
  sub_1C44D0BD8(v96, v243);

  sub_1C440029C(v103);
  if (v158)
  {
    v104 = &qword_1EC0BA590;
    v105 = &qword_1C4F1F430;
    v106 = v103;
LABEL_46:
    sub_1C4420C3C(v106, v104, v105);
    goto LABEL_47;
  }

  v107 = (v103 + *(v40 + 32));
  v108 = v107[1];
  v250 = *v107;
  v253 = v108;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44070F8();
  sub_1C44DBD5C(v103, v109);
  sub_1C43FF69C();
  v110 = MEMORY[0x1E69E7CC0];
  v111 = v262;
  while (v9 != v63)
  {
    sub_1C4432B28();
    v113 = sub_1C4433808(v112);
    v114 = v258;
    sub_1C44718CC(v113, v258);
    if (sub_1C442E59C())
    {
      sub_1C440A104(v114, v274);
      v115 = swift_isUniquelyReferenced_nonNull_native();
      v271 = v110;
      if ((v115 & 1) == 0)
      {
        v116 = sub_1C442044C();
        v247(v116);
        v110 = v271;
      }

      sub_1C440D8F8();
      if (v117)
      {
        sub_1C4400F68();
        v119();
        v110 = v271;
      }

      sub_1C4406150();
      sub_1C448566C(v242, v118);
      v111 = v262;
      v40 = v257;
    }

    else
    {
      sub_1C44DBD5C(v114, v265);
      ++v63;
    }
  }

  v120 = v234;
  v121 = sub_1C4411284();
  v122(v121);

  if (sub_1C44157D4(v120, 1, v111) == 1)
  {

    sub_1C4409144();
    goto LABEL_46;
  }

  v182 = (v120 + *(v111 + 32));
  v184 = *v182;
  v183 = v182[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DBD5C(v120, v265);
  if (v250 == v184 && v253 == v183)
  {
    goto LABEL_136;
  }

  sub_1C43FBEC0(v250, v253, v184);
  sub_1C4414F48();

  result = 1.0;
  if (v35)
  {
    return result;
  }

LABEL_47:
  v123 = 0;
  v124 = MEMORY[0x1E69E7CC0];
  v125 = v245;
  while (v268 != v123)
  {
    sub_1C44260B4();
    v63 = v127 & ~v126;
    v9 = *(v42 + 72);
    sub_1C44032D8();
    sub_1C44718CC(v128, v125);
    if (sub_1C4F013E8())
    {
      sub_1C448566C(v125, v249);
      v129 = swift_isUniquelyReferenced_nonNull_native();
      v271 = v124;
      if ((v129 & 1) == 0)
      {
        sub_1C459DCC0();
        v125 = v245;
        v124 = v271;
      }

      v130 = *(v124 + 16);
      if (v130 >= *(v124 + 24) >> 1)
      {
        sub_1C459DCC0();
        v125 = v245;
        v124 = v271;
      }

      ++v123;
      *(v124 + 16) = v130 + 1;
      sub_1C44032D8();
      sub_1C448566C(v249, v131);
      v40 = v257;
    }

    else
    {
      sub_1C44DBD5C(v125, type metadata accessor for EntityTriple);
      ++v123;
    }
  }

  v132 = v241;
  sub_1C44D0BD8(v124, v241);

  sub_1C440029C(v132);
  if (!v158)
  {
    v136 = (v132 + *(v40 + 32));
    v137 = v136[1];
    v258 = *v136;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44070F8();
    sub_1C44DBD5C(v132, v138);
    sub_1C43FF69C();
    v139 = MEMORY[0x1E69E7CC0];
LABEL_59:
    v140 = v262;
    v141 = v240;
    while (v9 != v63)
    {
      sub_1C4432B28();
      v143 = sub_1C4433808(v142);
      sub_1C44718CC(v143, v141);
      if (sub_1C4F013E8())
      {
        sub_1C440A104(v141, &v271);
        v144 = swift_isUniquelyReferenced_nonNull_native();
        v271 = v139;
        if ((v144 & 1) == 0)
        {
          v145 = sub_1C442044C();
          v247(v145);
          v139 = v271;
        }

        sub_1C440D8F8();
        if (v117)
        {
          sub_1C4400F68();
          v147();
          v139 = v271;
        }

        sub_1C4406150();
        sub_1C448566C(v239, v146);
        goto LABEL_59;
      }

      sub_1C44DBD5C(v141, v265);
      ++v63;
    }

    v148 = v233;
    v149 = sub_1C4411284();
    v150(v149);

    if (sub_1C44157D4(v148, 1, v140) == 1)
    {

      sub_1C4409144();
      goto LABEL_70;
    }

    v227 = (v148 + *(v140 + 32));
    v229 = *v227;
    v228 = v227[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DBD5C(v148, v265);
    if (v258 != v229 || v137 != v228)
    {
      sub_1C43FBEC0(v258, v137, v229);
      sub_1C4414F48();

      result = 1.0;
      if (v148)
      {
        return result;
      }

      goto LABEL_71;
    }

LABEL_136:

    return 1.0;
  }

  v133 = &qword_1EC0BA590;
  v134 = &qword_1C4F1F430;
  v135 = v132;
LABEL_70:
  sub_1C4420C3C(v135, v133, v134);
LABEL_71:
  v151 = 0;
  v152 = (v236 + 8);
  v253 = MEMORY[0x1E69E7CC0];
  v258 = v17;
  while (1)
  {
    v153 = v256;
    if (v268 == v151)
    {
      break;
    }

    sub_1C44260B4();
    sub_1C44032D8();
    sub_1C44718CC(v154, v259);
    sub_1C4EFED48();
    sub_1C44178C0();
    sub_1C4B86488(&off_1EDDFCCA8, v155, MEMORY[0x1E69A9770]);
    v156 = v261;
    sub_1C4F01578();
    sub_1C4F01578();
    v157 = v272;
    v158 = v271 == v269 && v272 == v270;
    if (v158)
    {
      (*v152)(v153, v156);

LABEL_80:
      sub_1C448566C(v259, v251);
      v160 = v253;
      v161 = swift_isUniquelyReferenced_nonNull_native();
      v273 = v160;
      v17 = v258;
      if ((v161 & 1) == 0)
      {
        sub_1C459DCC0();
        v160 = v273;
      }

      sub_1C440D8F8();
      if (v117)
      {
        sub_1C459DCC0();
        v160 = v273;
      }

      ++v151;
      *(v160 + 16) = v157;
      v253 = v160;
      sub_1C44032D8();
      sub_1C448566C(v251, v162);
    }

    else
    {
      v159 = sub_1C43FBEC0(v271, v272, v269);
      (*v152)(v153, v156);

      if (v159)
      {
        goto LABEL_80;
      }

      sub_1C44DBD5C(v259, type metadata accessor for EntityTriple);
      ++v151;
      v17 = v258;
    }
  }

  v163 = v253;
  v164 = *(v253 + 16);
  if (v164)
  {
    v271 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v164, 0);
    v165 = v271;
    sub_1C44260B4();
    v168 = v163 + (v167 & ~v166);
    v169 = *(v42 + 72);
    do
    {
      v170 = v254;
      sub_1C44718CC(v168, v254);
      v171 = (v170 + *(v257 + 32));
      v173 = *v171;
      v172 = v171[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44070F8();
      sub_1C44DBD5C(v170, v174);
      v271 = v165;
      v176 = *(v165 + 16);
      v175 = *(v165 + 24);
      if (v176 >= v175 >> 1)
      {
        sub_1C44CD9C0(v175 > 1, v176 + 1, 1);
        v165 = v271;
      }

      *(v165 + 16) = v176 + 1;
      v177 = v165 + 16 * v176;
      *(v177 + 32) = v173;
      *(v177 + 40) = v172;
      v168 += v169;
      --v164;
    }

    while (v164);

    v17 = v258;
  }

  else
  {
  }

  v267 = sub_1C4499940();
  v186 = 0;
  v187 = *(v264 + 16);
  v268 = MEMORY[0x1E69E7CC0];
  while (v187 != v186)
  {
    sub_1C4432B28();
    v190 = v189 & ~v188;
    v164 = v17;
    v192 = *(v191 + 72);
    sub_1C44718CC(v264 + v190 + v192 * v186, v260);
    sub_1C4EFED48();
    sub_1C44178C0();
    sub_1C4B86488(&off_1EDDFCCA8, v193, MEMORY[0x1E69A9770]);
    v194 = v261;
    sub_1C4F01578();
    sub_1C4F01578();
    if (v271 == v269 && v272 == v270)
    {
      (*v152)(v164, v194);
    }

    else
    {
      v196 = sub_1C43FBEC0(v271, v272, v269);
      v197 = v194;
      v198 = v196;
      (*v152)(v164, v197);

      if ((v198 & 1) == 0)
      {
        sub_1C44DBD5C(v260, v265);
        ++v186;
        v17 = v258;
        continue;
      }
    }

    sub_1C440A104(v260, &v276);
    v199 = v268;
    v200 = swift_isUniquelyReferenced_nonNull_native();
    v273 = v199;
    if ((v200 & 1) == 0)
    {
      sub_1C4400F68();
      v201();
      v199 = v273;
    }

    v202 = *(v199 + 16);
    if (v202 >= *(v199 + 24) >> 1)
    {
      sub_1C4400F68();
      v203();
      v199 = v273;
    }

    ++v186;
    *(v199 + 16) = v202 + 1;
    v268 = v199;
    sub_1C448566C(v252, v199 + v190 + v202 * v192);
    v17 = v258;
  }

  v204 = v268;
  v205 = *(v268 + 16);
  if (v205)
  {
    v271 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v205, 0);
    v206 = v271;
    sub_1C4432B28();
    v209 = v204 + (v208 & ~v207);
    v211 = *(v210 + 72);
    v212 = v267;
    do
    {
      v213 = v255;
      sub_1C44718CC(v209, v255);
      v214 = (v213 + *(v262 + 32));
      v216 = *v214;
      v215 = v214[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v213, v265);
      v271 = v206;
      v218 = *(v206 + 16);
      v217 = *(v206 + 24);
      if (v218 >= v217 >> 1)
      {
        sub_1C44CD9C0(v217 > 1, v218 + 1, 1);
        v206 = v271;
      }

      *(v206 + 16) = v218 + 1;
      v219 = v206 + 16 * v218;
      *(v219 + 32) = v216;
      *(v219 + 40) = v215;
      v209 += v211;
      --v205;
    }

    while (v205);
  }

  else
  {

    v212 = v267;
  }

  v226 = sub_1C4499940();
  if (*(v212 + 16))
  {
    sub_1C4839FD8(v212, v226, v220, v221, v222, v223, v224, v225, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252);
    sub_1C4414F48();

    result = 0.0;
    if (v164)
    {
      return 1.0;
    }
  }

  else
  {

    return 0.0;
  }

  return result;
}

uint64_t sub_1C4B84748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v72 = a1;
  v68 = a3;
  v4 = sub_1C4EFF0C8();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v63 - v8;
  v10 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&unk_1EC0BC900, byte_1C4F142D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v63 - v14;
  v16 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v63 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v63 - v23;
  v25 = v74;
  result = sub_1C4ACE70C();
  if (!v25)
  {
    v66 = v6;
    v67 = v9;
    v63[1] = 0;
    v64 = v21;
    v65 = v18;
    v74 = v12;
    v28 = v70;
    v27 = v71;
    v73 = v24;
    if (v71)
    {
      sub_1C44F1938(v71, v15);
      v29 = type metadata accessor for GraphTriple(0);
      v30 = v28;
      v31 = v10;
      if (sub_1C44157D4(v15, 1, v29) == 1)
      {
        sub_1C4420C3C(v15, &unk_1EC0BC900, byte_1C4F142D0);
        v32 = 1;
      }

      else
      {
        (*(v69 + 16))(v73, v15, v28);
        sub_1C44DBD5C(v15, type metadata accessor for GraphTriple);
        v32 = 0;
      }

      v33 = v72;
    }

    else
    {
      v32 = 1;
      v30 = v70;
      v33 = v72;
      v31 = v10;
    }

    v34 = v67;
    sub_1C440BAA8(v73, v32, 1, v30);
    sub_1C44D0BD8(v33, v34);
    if (sub_1C44157D4(v34, 1, v31) == 1)
    {
      sub_1C4420C3C(v34, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v35 = sub_1C4F00978();
      sub_1C442B738(v35, qword_1EDE2DE10);
      v36 = sub_1C4F00968();
      v37 = sub_1C4F01CD8();
      v38 = os_log_type_enabled(v36, v37);
      v39 = v73;
      if (v38)
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1C43F8000, v36, v37, "Topic Matcher: skipping entityTriples are empty", v40, 2u);
        MEMORY[0x1C6942830](v40, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v41 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v39, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C448566C(v34, v74);
      if (v27)
      {
        v42 = v3;
        v43 = sub_1C4B832FC(v33, v27, type metadata accessor for GraphTriple, &unk_1EC0BC900, byte_1C4F142D0, sub_1C44F1938, type metadata accessor for GraphTriple, sub_1C459D7C8, type metadata accessor for GraphTriple);
        v44 = v68;
      }

      else
      {
        v43 = 0.0;
        v44 = v68;
        v42 = v3;
      }

      v45 = v66;
      v46 = v64;
      v47 = type metadata accessor for TopicMatcher(0);
      v48 = *(v42 + *(v47 + 28));
      v49 = v73;
      if (v43 <= v48)
      {
        sub_1C4EFF008();
        sub_1C4420C3C(v49, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v46, 0, 1, v30);
        sub_1C44DDDBC(v46, v49);
        v43 = v48;
      }

      v50 = v65;
      sub_1C457E858(v49, v65);
      v51 = sub_1C44157D4(v50, 1, v30);
      v52 = v69;
      if (v51 == 1)
      {
        sub_1C4420C3C(v50, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v69 + 32))(v45, v50, v30);
        v53 = *(v47 + 36);
        v54 = sub_1C4EFD548();
        (*(*(v54 - 8) + 16))(v44, v42 + v53, v54);
        v55 = type metadata accessor for EntityMatch(0);
        v56 = *(v52 + 16);
        v57 = v44 + v55[5];
        v72 = v42;
        v58 = v47;
        v59 = v74;
        v56(v57, v74, v30);
        v56(v44 + v55[6], v45, v30);
        sub_1C4EF9AE8();
        v61 = v60;
        (*(v52 + 8))(v45, v30);
        sub_1C44DBD5C(v59, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v73, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v62 = *(v72 + *(v58 + 24));
        *(v44 + v55[7]) = v43;
        *(v44 + v55[8]) = v61;
        *(v44 + v55[9]) = v62;
        *(v44 + v55[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4B84EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v67 = a1;
  v63 = a3;
  v4 = sub_1C4EFF0C8();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  v16 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v58 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v58 - v23;
  v25 = v68;
  result = sub_1C4ACE70C();
  if (!v25)
  {
    v58 = 0;
    v59 = v21;
    v60 = v18;
    v61 = v6;
    v68 = v9;
    v27 = v65;
    v62 = v3;
    if (v66)
    {
      v28 = v66;
      sub_1C44D0BD8(v66, v15);
      v29 = sub_1C44157D4(v15, 1, v7);
      v30 = v68;
      if (v29 == 1)
      {
        sub_1C4420C3C(v15, &qword_1EC0BA590, &qword_1C4F1F430);
        v31 = 1;
      }

      else
      {
        (*(v64 + 16))(v24, v15, v27);
        sub_1C44DBD5C(v15, type metadata accessor for EntityTriple);
        v31 = 0;
      }
    }

    else
    {
      v28 = 0;
      v31 = 1;
      v30 = v68;
    }

    v32 = v67;
    v33 = v24;
    v34 = v24;
    v35 = v27;
    sub_1C440BAA8(v34, v31, 1, v27);
    sub_1C44D0BD8(v32, v12);
    if (sub_1C44157D4(v12, 1, v7) == 1)
    {
      sub_1C4420C3C(v12, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v36 = sub_1C4F00978();
      sub_1C442B738(v36, qword_1EDE2DE10);
      v37 = sub_1C4F00968();
      v38 = sub_1C4F01CD8();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1C43F8000, v37, v38, "Topic Matcher: skipping entityTriples are empty", v39, 2u);
        MEMORY[0x1C6942830](v39, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v40 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v33, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C448566C(v12, v30);
      if (v28)
      {
        v41 = sub_1C4B81B98(v32, v28);
      }

      else
      {
        v41 = 0.0;
      }

      v43 = v63;
      v42 = v64;
      v44 = v61;
      v45 = v59;
      v46 = type metadata accessor for TopicMatcher(0);
      v47 = *(v62 + v46[7]);
      if (v41 <= v47)
      {
        sub_1C4EFF008();
        v44 = v61;
        sub_1C4420C3C(v33, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v45, 0, 1, v35);
        sub_1C44DDDBC(v45, v33);
        v41 = v47;
      }

      v48 = v60;
      sub_1C457E858(v33, v60);
      v49 = sub_1C44157D4(v48, 1, v35);
      v67 = v33;
      if (v49 == 1)
      {
        sub_1C4420C3C(v48, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v42 + 32))(v44, v48, v35);
        v50 = v46[9];
        v51 = sub_1C4EFD548();
        (*(*(v51 - 8) + 16))(v43, v62 + v50, v51);
        v52 = type metadata accessor for EntityMatch(0);
        v53 = *(v42 + 16);
        v54 = v68;
        v53(v43 + v52[5], v68, v35);
        v53(v43 + v52[6], v44, v35);
        sub_1C4EF9AE8();
        v56 = v55;
        (*(v42 + 8))(v44, v35);
        sub_1C44DBD5C(v54, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v67, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v57 = *(v62 + v46[6]);
        *(v43 + v52[7]) = v41;
        *(v43 + v52[8]) = v56;
        *(v43 + v52[9]) = v57;
        *(v43 + v52[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4B85578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v72 = a1;
  v68 = a3;
  v4 = sub_1C4EFF0C8();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v63 - v8;
  v10 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&unk_1EC0BCAE0, byte_1C4F142A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v63 - v14;
  v16 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v63 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v63 - v23;
  v25 = v74;
  result = sub_1C4ACE70C();
  if (!v25)
  {
    v66 = v6;
    v67 = v9;
    v63[1] = 0;
    v64 = v21;
    v65 = v18;
    v74 = v12;
    v28 = v70;
    v27 = v71;
    v73 = v24;
    if (v71)
    {
      sub_1C486854C(v71, v15);
      v29 = type metadata accessor for ConstructionGraphTriple(0);
      v30 = v28;
      v31 = v10;
      if (sub_1C44157D4(v15, 1, v29) == 1)
      {
        sub_1C4420C3C(v15, &unk_1EC0BCAE0, byte_1C4F142A0);
        v32 = 1;
      }

      else
      {
        (*(v69 + 16))(v73, v15, v28);
        sub_1C44DBD5C(v15, type metadata accessor for ConstructionGraphTriple);
        v32 = 0;
      }

      v33 = v72;
    }

    else
    {
      v32 = 1;
      v30 = v70;
      v33 = v72;
      v31 = v10;
    }

    v34 = v67;
    sub_1C440BAA8(v73, v32, 1, v30);
    sub_1C44D0BD8(v33, v34);
    if (sub_1C44157D4(v34, 1, v31) == 1)
    {
      sub_1C4420C3C(v34, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v35 = sub_1C4F00978();
      sub_1C442B738(v35, qword_1EDE2DE10);
      v36 = sub_1C4F00968();
      v37 = sub_1C4F01CD8();
      v38 = os_log_type_enabled(v36, v37);
      v39 = v73;
      if (v38)
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1C43F8000, v36, v37, "Topic Matcher: skipping entityTriples are empty", v40, 2u);
        MEMORY[0x1C6942830](v40, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v41 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v39, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C448566C(v34, v74);
      if (v27)
      {
        v42 = v3;
        v43 = sub_1C4B832FC(v33, v27, type metadata accessor for ConstructionGraphTriple, &unk_1EC0BCAE0, byte_1C4F142A0, sub_1C486854C, type metadata accessor for ConstructionGraphTriple, sub_1C459DC78, type metadata accessor for ConstructionGraphTriple);
        v44 = v68;
      }

      else
      {
        v43 = 0.0;
        v44 = v68;
        v42 = v3;
      }

      v45 = v66;
      v46 = v64;
      v47 = type metadata accessor for TopicMatcher(0);
      v48 = *(v42 + *(v47 + 28));
      v49 = v73;
      if (v43 <= v48)
      {
        sub_1C4EFF008();
        sub_1C4420C3C(v49, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v46, 0, 1, v30);
        sub_1C44DDDBC(v46, v49);
        v43 = v48;
      }

      v50 = v65;
      sub_1C457E858(v49, v65);
      v51 = sub_1C44157D4(v50, 1, v30);
      v52 = v69;
      if (v51 == 1)
      {
        sub_1C4420C3C(v50, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v69 + 32))(v45, v50, v30);
        v53 = *(v47 + 36);
        v54 = sub_1C4EFD548();
        (*(*(v54 - 8) + 16))(v44, v42 + v53, v54);
        v55 = type metadata accessor for EntityMatch(0);
        v56 = *(v52 + 16);
        v57 = v44 + v55[5];
        v72 = v42;
        v58 = v47;
        v59 = v74;
        v56(v57, v74, v30);
        v56(v44 + v55[6], v45, v30);
        sub_1C4EF9AE8();
        v61 = v60;
        (*(v52 + 8))(v45, v30);
        sub_1C44DBD5C(v59, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v73, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v62 = *(v72 + *(v58 + 24));
        *(v44 + v55[7]) = v43;
        *(v44 + v55[8]) = v61;
        *(v44 + v55[9]) = v62;
        *(v44 + v55[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t TopicMatcher.execute()()
{
  *(v1 + 24) = v0;
  sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4B85D8C, 0, 0);
}

uint64_t sub_1C4B85D8C()
{
  v41 = v0;
  v2 = v0[3];
  v1 = v0[4];
  type metadata accessor for PhaseStores(0);
  v3 = type metadata accessor for TopicMatcher(0);
  v4 = *(v3 + 24);
  LOBYTE(v40[0]) = *(v2 + v4);
  v5 = *(v3 + 36);
  v6 = sub_1C4EFD548();
  sub_1C43FBCE0();
  v8 = *(v7 + 16);
  v8(v1, v2 + v5, v6);
  sub_1C43FBD94();
  sub_1C440BAA8(v9, v10, v11, v6);
  sub_1C44ABA54(v40, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  v12 = *(v2 + v4);
  switch(*(v2 + v4))
  {
    case 1:
    case 3:
      v39 = v8;
      v13 = v0[3];
      v14 = swift_task_alloc();
      *(v14 + 16) = v13;
      sub_1C43FD8E4();
      sub_1C44AC170(v15, v16, v17, v18, v19, v20);

      if (v13)
      {
        goto LABEL_10;
      }

      if (*(v12 + *(sub_1C43FF150() + 28)) != 1)
      {
        goto LABEL_11;
      }

      v21 = *(v2 + v4);
      v22 = swift_task_alloc();
      *(v22 + 16) = v14;
      v23 = sub_1C4B862C8;
      goto LABEL_9;
    case 2:
      v39 = v8;
      v26 = v0[3];
      v27 = swift_task_alloc();
      *(v27 + 16) = v26;
      sub_1C43FD8E4();
      sub_1C46CE408(v28, v29, v30, v31, v32, v33);

      if (v1)
      {
LABEL_10:

        v34 = v0[1];
      }

      else
      {
        if (*(v26 + *(sub_1C43FF150() + 28)) == 1)
        {
          v21 = *(v2 + v4);
          v22 = swift_task_alloc();
          *(v22 + 16) = v27;
          v23 = sub_1C4B864D0;
LABEL_9:
          sub_1C44C6BB4(v2 + v5, v21, 0, 1, v23, v22);
        }

LABEL_11:
        v35 = v0[4];
        sub_1C4EF9AE8();
        sub_1C43FBD94();
        sub_1C46422B8();
        LOBYTE(v40[0]) = *(v2 + v4);
        v39(v35, v2 + v5, v6);
        sub_1C43FBD94();
        sub_1C440BAA8(v36, v37, v38, v6);
        sub_1C44A8814(v40, v35);
        sub_1C4420C3C(v35, &qword_1EC0B8568, &unk_1C4F319B0);

        v34 = v0[1];
      }

      result = v34();
      break;
    default:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v3;
      sub_1C456902C(&qword_1EC0BA4C8, &qword_1C4F56BF0);
      v24 = sub_1C4F01198();
      MEMORY[0x1C6940010](v24);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v2 + v4));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

uint64_t sub_1C4B86188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(a1, a2, a3);
  if (!v5)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_1C4B861D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return TopicMatcher.execute()();
}

uint64_t sub_1C4B862F8(uint64_t a1)
{
  result = sub_1C4B86488(&qword_1EDDF89D8, type metadata accessor for TopicMatcher, &protocol conformance descriptor for TopicMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B86350(uint64_t a1)
{
  result = sub_1C4B86488(&qword_1EDDF89E8, type metadata accessor for TopicMatcher, &protocol conformance descriptor for TopicMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B863D0(uint64_t a1)
{
  result = type metadata accessor for PhaseStores(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Source(319);
    if (v3 <= 0x3F)
    {
      result = sub_1C4EFD548();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4B86488(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static Transformers.reportError(error:context:config:pipelineType:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v10 = type metadata accessor for Pipeline.StatusStore(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v13) = *a5;
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v14 = sub_1C4F00978();
  sub_1C442B738(v14, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = a1;
  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CD8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = v13;
    v13 = v18;
    v32 = swift_slowAlloc();
    v36 = v32;
    *v13 = 136315394;
    *(v13 + 4) = sub_1C441D828(a2, a3, &v36);
    *(v13 + 12) = 2080;
    v35 = a1;
    v19 = a1;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v20 = sub_1C4F01198();
    v33 = a1;
    v22 = v10;
    v23 = a4;
    v24 = sub_1C441D828(v20, v21, &v36);

    *(v13 + 14) = v24;
    a4 = v23;
    v10 = v22;
    a1 = v33;
    _os_log_impl(&dword_1C43F8000, v16, v17, "Transformer error attempting to transform %s due to: %s", v13, 0x16u);
    v25 = v32;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v25, -1, -1);
    v26 = v13;
    LOBYTE(v13) = v34;
    MEMORY[0x1C6942830](v26, -1, -1);
  }

  sub_1C44098F0(a4, v12);
  v12[*(v10 + 20)] = v13;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C47CE078(v12);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0C890;
  *(inited + 32) = 0x726F727265;
  *(inited + 40) = 0xE500000000000000;
  v36 = a1;
  v28 = a1;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C4F01198();
  v29 = sub_1C4F01108();

  *(inited + 48) = v29;
  *(inited + 56) = 0x747865746E6F63;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = sub_1C4F01108();
  *(inited + 80) = 0x496E6F6973736573;
  *(inited + 88) = 0xE900000000000064;
  v30 = sub_1C4F01108();

  *(inited + 96) = v30;
  sub_1C4468200();
  sub_1C4F00F28();
  sub_1C4F00268();
}

void *initializeBufferWithCopyOfBuffer for Transformers(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithCopy for Transformers(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for Transformers(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1C4B869B0(uint64_t a1, char *a2)
{
  v3 = *a2;
  sub_1C443E52C(a1, v10);
  if (v11)
  {
    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, 0x49uLL);
      memcpy(v7, __src, 0x49uLL);
      v12 = v3;
      sub_1C4B86BAC(v7, &v12);
      return sub_1C4B873D0(__dst);
    }
  }

  else
  {
    sub_1C4448244(v10);
  }

  __src[0] = v3;
  __dst[0] = -104;
  result = static ActivityType.== infix(_:_:)(__src, __dst);
  if (result)
  {
    result = sub_1C4B86A9C();
    if (!v2)
    {
      return sub_1C4DE042C(result, v5, v6);
    }
  }

  return result;
}

void sub_1C4B86BAC(double *a1, char *a2)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  v7 = *a2;
  if (v4)
  {
    v8 = *a1;
    v9 = type metadata accessor for LifeEventStructs.IdentifierRelationshipType(0);
    sub_1C44099C4(v9);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v10 = sub_1C4DE55DC();
    v11 = (v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierId);
    *v11 = v8;
    v11[1] = v4;

    *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierType) = xmmword_1C4F56D20;

    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C4F0FCC0;
    *(v12 + 32) = v10;
    *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_identifier) = v12;

    sub_1C4E16C18();
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDDFECB8);
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C43F8000, v14, v15, "Got a transportation activity with no event id", v16, 2u);
      MEMORY[0x1C6942830](v16, -1, -1);
    }
  }

  if ((v6 & 1) == 0)
  {
    v17 = type metadata accessor for LifeEventStructs.QuantityRelationshipType(0);
    sub_1C44099C4(v17);
    sub_1C4E104CC();
    v18 = sub_1C4F019E8();
    sub_1C4407C98(v18, v19);

    sub_1C4DE0454(v20);
  }

  if ((v5 & 1) == 0)
  {
    v21 = type metadata accessor for LifeEventStructs.QuantityRelationshipType(0);
    sub_1C44099C4(v21);
    sub_1C4E104CC();
    v22 = sub_1C4F019E8();
    sub_1C4407C98(v22, v23);

    sub_1C4DE047C(v24);
  }

  if ((v7 & 0xE0) == 0x40)
  {
    if ((v7 & 0x1F) == 3)
    {
      v28 = sub_1C4B86A9C();
      if (!v3)
      {
        sub_1C4DE042C(v28, v29, v30);
      }
    }

    else if ((v7 & 0x1F) == 2)
    {
      v25 = sub_1C4B86E74();
      if (!v3)
      {
        sub_1C4DE04A4(v25, v26, v27);
      }
    }
  }
}

uint64_t sub_1C4B86E74()
{
  if (qword_1EDDE9278 != -1)
  {
    sub_1C441A63C(&qword_1EDDE9278);
  }

  v1 = type metadata accessor for SourceIdPrefix(0);
  sub_1C442B738(v1, qword_1EDE2CFA8);
  String.base64EncodedSHA(withPrefix:)();
  v2 = type metadata accessor for LifeEventStructs.Automobile(0);
  sub_1C44099C4(v2);
  sub_1C4E14D40();
  v4 = v3;
  if (!v0)
  {
    *(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs10Automobile_name) = xmmword_1C4F56D30;
  }

  return v4;
}

uint64_t TransportationActivityMetadata.identifier.getter()
{
  v1 = *v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t TransportationActivityMetadata.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TransportationActivityMetadata.vehicleInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1C4B86FEC(v2, v3);
}

uint64_t sub_1C4B86FEC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

__n128 TransportationActivityMetadata.vehicleInfo.setter(uint64_t a1)
{
  sub_1C4B87068(*(v1 + 16), *(v1 + 24));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  return result;
}

uint64_t sub_1C4B87068(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t TransportationActivityMetadata.distance.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t TransportationActivityMetadata.elevationGain.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

__n128 TransportationActivityMetadata.init(identifier:vehicleInfo:distance:elevationGain:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  sub_1C4B87068(0, 1);
  result = *a3;
  v15 = *(a3 + 16);
  *(a8 + 16) = *a3;
  *(a8 + 32) = v15;
  *(a8 + 48) = a4;
  *(a8 + 56) = a5 & 1;
  *(a8 + 64) = a6;
  *(a8 + 72) = a7 & 1;
  return result;
}

uint64_t TransportationActivityMetadata.VehicleInfoMetadata.stableId.getter()
{
  v1 = *v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t TransportationActivityMetadata.VehicleInfoMetadata.stableId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TransportationActivityMetadata.VehicleInfoMetadata.carPlayId.getter()
{
  v1 = *(v0 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t TransportationActivityMetadata.VehicleInfoMetadata.carPlayId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

IntelligencePlatformCore::TransportationActivityMetadata::VehicleInfoMetadata __swiftcall TransportationActivityMetadata.VehicleInfoMetadata.init(stableId:carPlayId:)(Swift::String_optional stableId, Swift::String_optional carPlayId)
{
  *v2 = stableId;
  v2[1] = carPlayId;
  result.carPlayId = carPlayId;
  result.stableId = stableId;
  return result;
}

uint64_t sub_1C4B872D0(uint64_t a1)
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

uint64_t sub_1C4B872F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4B87348(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C4B87460(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C4008, &qword_1C4F56EA8);
  v3 = sub_1C43FBD18(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD230();
  v130 = v6;
  sub_1C43FBE44();
  v144 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v143 = v11 - v10;
  sub_1C43FBE44();
  v138 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD230();
  v137 = v16;
  sub_1C43FBE44();
  v17 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD230();
  v149 = v22;
  sub_1C43FBE44();
  v23 = sub_1C4EFF318();
  sub_1C43FCDF8();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBFDC();
  v146 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v120 - v30;
  v32 = sub_1C4F00F28();
  v33 = *(a1 + 16);
  if (!v33)
  {
    return sub_1C482FCF0(v32);
  }

  v34 = v8;
  v35 = a1 + 32;
  v150 = (v19 + 8);
  v136 = (v13 + 8);
  v141 = (v25 + 16);
  v142 = (v34 + 8);
  v135 = (v25 + 32);
  v139 = (v25 + 8);
  v140 = v25;
  v131 = v25 + 40;
  v129 = v17;
  v145 = v23;
  v148 = v31;
  while (1)
  {
    v147 = v33;
    sub_1C442E860(v35, &v152);
    sub_1C440B42C();
    v36 = v149;
    sub_1C442D458();
    sub_1C4EFF7C8();
    v37 = sub_1C4EFED18();
    v38 = *v150;
    (*v150)(v36, v17);
    if (v37 & 1) != 0 || (sub_1C440B42C(), v39 = v137, sub_1C442D458(), sub_1C4EFF7B8(), v40 = v134, sub_1C4EFF888(), sub_1C4B89858(&unk_1EDDFCC80, MEMORY[0x1E69A99E8], MEMORY[0x1E69A9A08]), v41 = v138, v42 = sub_1C4F010B8(), v43 = *v136, (*v136)(v40, v41), v43(v39, v41), (v42))
    {
      sub_1C440B42C();
      v44 = v143;
      sub_1C442D458();
      sub_1C4EFF7E8();
      sub_1C4EFF048();
      (*v142)(v44, v144);
      sub_1C4409678(&v152, v153);
      v45 = v149;
      sub_1C4EFF7F8();
      sub_1C4EFEB68();
      v38(v45, v17);
      sub_1C4409678(&v152, v153);
      sub_1C4EFF7D8();
      v46 = v148;
      sub_1C4EFF308();
    }

    else
    {
      sub_1C440B42C();
      v67 = v143;
      sub_1C442D458();
      sub_1C4EFF7E8();
      v133 = sub_1C4EFF048();
      v132 = v68;
      (*v142)(v67, v144);
      sub_1C440B42C();
      v69 = v149;
      sub_1C442D458();
      sub_1C4EFF7F8();
      sub_1C4EFEB68();
      v38(v69, v17);
      sub_1C4409678(&v152, v153);
      v70 = v137;
      sub_1C4EFF7B8();
      sub_1C4EFF848();
      v43(v70, v138);
      v46 = v148;
      sub_1C4EFF308();
      v71 = sub_1C4EFF2F8();
      if (v32[2])
      {
        v73 = sub_1C445FAA8(v71, v72);
        v75 = v74;

        if (v75)
        {
          v76 = v145;
          v77 = *(v140 + 72);
          v78 = v32[7] + v77 * v73;
          v79 = v130;
          (*(v140 + 16))(v130, v78, v145);
          sub_1C43FBD94();
          sub_1C440BAA8(v80, v81, v82, v76);
          sub_1C4607CD4(v79, &qword_1EC0C4008, &qword_1C4F56EA8);
          v83 = sub_1C4EFF2F8();
          v85 = v84;
          sub_1C440B42C();
          v17 = v125;
          sub_1C442D458();
          sub_1C4EFF7C8();
          v132 = sub_1C4EFEB68();
          v133 = v86;
          v87 = sub_1C440D908();
          (v38)(v87);
          sub_1C440B42C();
          sub_1C442D458();
          v126 = sub_1C4EFF7D8();
          v127 = v88;
          swift_isUniquelyReferenced_nonNull_native();
          v151 = v32;
          sub_1C445FAA8(v83, v85);
          sub_1C4404C54();
          if (v53)
          {
            goto LABEL_33;
          }

          v91 = v89;
          v92 = v90;
          v93 = sub_1C456902C(&qword_1EC0C4010, &unk_1C4F56EB0);
          if (sub_1C4414F60(v93))
          {
            v94 = sub_1C445FAA8(v83, v85);
            if ((v92 & 1) != (v95 & 1))
            {
              goto LABEL_35;
            }

            v91 = v94;
          }

          v96 = v148;
          if ((v92 & 1) == 0)
          {
            goto LABEL_34;
          }

          v32 = v151;
          v97 = v151[7];
          v98 = *v135;
          v122 = v91 * v77;
          v99 = v97 + v91 * v77;
          v100 = v128;
          v101 = v145;
          v123 = v98;
          v98(v128, v99, v145);
          sub_1C43FBD94();
          sub_1C440BAA8(v102, v103, v104, v101);
          sub_1C4EFF2E8();

          v105 = v100;
          v106 = v124;
          sub_1C4B897E8(v105, v124);
          if (sub_1C44157D4(v106, 1, v101) == 1)
          {
            sub_1C4607CD4(v106, &qword_1EC0C4008, &qword_1C4F56EA8);
            sub_1C4471348(v32[6] + 16 * v91);
            sub_1C4F02478();
          }

          else
          {
            v113 = v121;
            v114 = v106;
            v115 = v123;
            v123(v121, v114, v101);
            v115(v32[7] + v122, v113, v101);
          }

          v66 = v147;
          (*v139)(v96, v101);
          sub_1C4607CD4(v128, &qword_1EC0C4008, &qword_1C4F56EA8);
          goto LABEL_15;
        }
      }

      else
      {
      }

      v107 = v130;
      sub_1C43FCF64();
      sub_1C440BAA8(v108, v109, v110, v111);
      sub_1C4607CD4(v107, &qword_1EC0C4008, &qword_1C4F56EA8);
      sub_1C440B42C();
      v17 = v149;
      sub_1C442D458();
      sub_1C4EFF7C8();
      sub_1C4EFEB68();
      v112 = sub_1C440D908();
      (v38)(v112);
      sub_1C4409678(&v152, v153);
      sub_1C4EFF7D8();
      sub_1C4EFF2E8();
    }

    v47 = sub_1C4EFF2F8();
    v49 = v48;
    v50 = v145;
    (*v141)(v146, v46, v145);
    swift_isUniquelyReferenced_nonNull_native();
    v151 = v32;
    sub_1C445FAA8(v47, v49);
    sub_1C4404C54();
    if (v53)
    {
      break;
    }

    v54 = v51;
    v55 = v52;
    v56 = sub_1C456902C(&qword_1EC0C4010, &unk_1C4F56EB0);
    if (sub_1C4414F60(v56))
    {
      v57 = sub_1C445FAA8(v47, v49);
      if ((v55 & 1) != (v58 & 1))
      {
        goto LABEL_35;
      }

      v54 = v57;
    }

    v32 = v151;
    if (v55)
    {
      v59 = sub_1C4406164();
      (*(v60 + 40))(v59, v146, v50);
    }

    else
    {
      v151[(v54 >> 6) + 8] |= 1 << v54;
      v61 = (v32[6] + 16 * v54);
      *v61 = v47;
      v61[1] = v49;
      v62 = sub_1C4406164();
      (*(v63 + 32))(v62, v146, v50);
      v64 = v32[2];
      v53 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v53)
      {
        goto LABEL_32;
      }

      v32[2] = v65;
    }

    (*v139)(v148, v50);
    v66 = v147;
LABEL_15:
    sub_1C440962C(&v152);
    v35 += 40;
    v33 = v66 - 1;
    if (!v33)
    {
      return sub_1C482FCF0(v32);
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_1C43FCF64();
  sub_1C440BAA8(v117, v118, v119, v145);
  __break(1u);
LABEL_35:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4B88014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v164 = a1;
  v160 = a3;
  v4 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  v157 = v154 - v6;
  sub_1C43FBE44();
  v170 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v159 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v158 = v10 - v9;
  sub_1C43FBE44();
  sub_1C4EFEFB8();
  sub_1C43FCDF8();
  v167 = v12;
  v168 = v11;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  v154[2] = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  v166 = v15;
  sub_1C43FBE44();
  sub_1C4EFD648();
  sub_1C43FCDF8();
  v162 = v17;
  v163 = v16;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v161 = v19 - v18;
  v20 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  v21 = sub_1C43FBD18(v20);
  MEMORY[0x1EEE9AC00](v21);
  v169 = sub_1C4EFF8F8();
  sub_1C43FCDF8();
  v171 = v22;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v172 = v25 - v24;
  sub_1C43FBE44();
  v26 = sub_1C4EFCE78();
  sub_1C43FCDF8();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBCC4();
  v32 = v31 - v30;
  v33 = sub_1C4EFCE88();
  sub_1C43FCDF8();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v154 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = v154 - v40;
  v165 = a2;
  sub_1C4EFCE98();
  if ((*(v35 + 88))(v41, v33) != *MEMORY[0x1E69A9258])
  {
    goto LABEL_5;
  }

  v42 = *(v35 + 96);
  v35 += 96;
  v42(v41, v33);
  v43 = *(v28 + 32);
  v155 = v32;
  v43(v32, v41, v26);
  v33 = sub_1C4EFDB08();
  if ((v33 & 0x8000000000000000) == 0)
  {
    v41 = sub_1C4EFDB08();
    if (v41 < 0)
    {
      __break(1u);
LABEL_5:
      v44 = sub_1C4EFCE58();
      sub_1C4432B38();
      sub_1C4B89858(v45, v46, MEMORY[0x1E69A9248]);
      v172 = v44;
      v175 = swift_allocError();
      v48 = v47;
      v173 = 0;
      v174 = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD00000000000001DLL, 0x80000001C4FB36E0);
      sub_1C4EFCE98();
      sub_1C4F02438();
      v49 = *(v35 + 8);
      v49(v38, v33);
      v50 = v174;
      *v48 = v173;
      v48[1] = v50;
      sub_1C440A6B8();
      (*(v51 + 104))(v48);
      swift_willThrow();
      return (v49)(v41, v33);
    }
  }

  v154[1] = v28;
  v165 = v26;
  sub_1C456902C(&qword_1EC0BDD38, qword_1C4F31D80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1C4F0CE60;
  *(v53 + 56) = &type metadata for FusedTripleColumn;
  v54 = sub_1C4505DC4();
  *(v53 + 64) = v54;
  *(v53 + 32) = 6;
  *(v53 + 96) = &type metadata for FusedTripleColumn;
  *(v53 + 104) = v54;
  *(v53 + 72) = 0;
  (*(v162 + 104))(v161, *MEMORY[0x1E69A9338], v163);
  sub_1C4EFD668();
  sub_1C4EFD678();
  sub_1C43FBD94();
  sub_1C440BAA8(v55, v56, v57, v58);
  v59 = v172;
  sub_1C4EFF8C8();
  v60 = v166;
  sub_1C4EFDB18();
  v61 = (v167[11])(v60, v168);
  if (v61 == *MEMORY[0x1E69A97C8])
  {
    goto LABEL_7;
  }

  v88 = v61;
  if (v61 == *MEMORY[0x1E69A9798])
  {
    v89 = v156[4];
    v168 = v156[3];
    v167 = sub_1C4409678(v156, v168);
    v90 = v155;
    sub_1C4EFCE68();
    v91 = sub_1C4409158();
    v92 = v169;
    v93(v91);
    sub_1C43FBD94();
    sub_1C440BAA8(v94, v95, v96, v92);
    v97 = *(v89 + 32);
    type metadata accessor for GraphTriple(0);
    sub_1C44138AC();
    sub_1C4B89858(v98, v99, &unk_1C4F326B0);
    v100 = sub_1C441EF78();
    v97(v100);
    v101 = v53;
    v75 = v90;
    sub_1C4607CD4(v101, &qword_1EC0BAA00, &unk_1C4F17400);
    v102 = sub_1C44301AC();
    v103(v102);
    sub_1C44FE5AC();
LABEL_10:
    v87 = v104;

    goto LABEL_11;
  }

  v108 = v169;
  v75 = v155;
  if (v61 == *MEMORY[0x1E69A97B0])
  {
    goto LABEL_15;
  }

  if (v61 == *MEMORY[0x1E69A9788])
  {
    v109 = v156[4];
    v168 = sub_1C4409678(v156, v156[3]);
    sub_1C4EFCE68();
    v110 = sub_1C4409158();
    v111(v110);
    sub_1C43FBD94();
    sub_1C440BAA8(v112, v113, v114, v108);
    v115 = *(v109 + 32);
    type metadata accessor for EventTriple(0);
    sub_1C4412620();
    sub_1C4B89858(v116, v117, &unk_1C4F32A00);
    v118 = sub_1C441EF78();
    v115(v118);
    v119 = v75;
    v75 = v155;
    sub_1C4607CD4(v119, &qword_1EC0BAA00, &unk_1C4F17400);
    v120 = sub_1C44301AC();
    v121(v120);
    sub_1C4813530();
    goto LABEL_10;
  }

  if (v61 == *MEMORY[0x1E69A97C0])
  {
    v122 = v156[3];
    v123 = v156[4];
    v168 = sub_1C4409678(v156, v122);
    v124 = v108;
    v125 = v158;
    sub_1C4EFCE68();
    v126 = v157;
    (*(v171 + 16))(v157, v59, v124);
    sub_1C43FBD94();
    sub_1C440BAA8(v127, v128, v129, v124);
    v130 = (*(v123 + 40))(v125, v126, v122, v123);
    sub_1C4607CD4(v126, &qword_1EC0BAA00, &unk_1C4F17400);
    (*(v159 + 8))(v125, v170);
    sub_1C4B88EA4(v130);
    goto LABEL_12;
  }

  if (v61 == *MEMORY[0x1E69A97B8])
  {
LABEL_15:
    sub_1C4B87460(MEMORY[0x1E69E7CC0]);
    goto LABEL_13;
  }

  if (v61 == *MEMORY[0x1E69A9790])
  {
LABEL_7:
    v62 = v156;
    v63 = v156[4];
    v168 = v156[3];
    v166 = sub_1C4409678(v156, v168);
    v64 = v158;
    sub_1C4EFCE68();
    v167 = *(v171 + 16);
    v65 = v157;
    v66 = v169;
    (v167)(v157, v59, v169);
    sub_1C43FBD94();
    sub_1C440BAA8(v67, v68, v69, v66);
    v70 = *(v63 + 32);
    type metadata accessor for GraphTriple(0);
    sub_1C44138AC();
    sub_1C4B89858(v71, v72, &unk_1C4F326B0);
    v73 = sub_1C44022DC();
    v168 = v70(v73);
    sub_1C4607CD4(v65, &qword_1EC0BAA00, &unk_1C4F17400);
    v166 = *(v159 + 8);
    (v166)(v64, v170);
    v74 = v62[4];
    v164 = v62[3];
    v163 = sub_1C4409678(v62, v164);
    v75 = v155;
    sub_1C4EFCE68();
    (v167)(v65, v172, v66);
    sub_1C43FBD94();
    sub_1C440BAA8(v76, v77, v78, v66);
    v79 = *(v74 + 32);
    type metadata accessor for EventTriple(0);
    sub_1C4412620();
    sub_1C4B89858(v80, v81, &unk_1C4F32A00);
    v82 = sub_1C44022DC();
    v79(v82);
    sub_1C4607CD4(v65, &qword_1EC0BAA00, &unk_1C4F17400);
    (v166)(v64, v170);
    sub_1C44FE5AC();
    v84 = v83;

    sub_1C4813530();
    v86 = v85;

    v173 = v84;
    sub_1C49D4C1C(v86);
    v87 = v173;
LABEL_11:
    sub_1C4B87460(v87);
LABEL_12:

LABEL_13:
    sub_1C4EFD5B8();
    v105 = sub_1C43FFE24();
    v106(v105);
    sub_1C43FF6AC();
    return v107(v75, v165);
  }

  v131 = *MEMORY[0x1E69A97A8];
  v132 = *MEMORY[0x1E69A97A0];
  sub_1C4EFCE58();
  sub_1C4432B38();
  sub_1C4B89858(v133, v134, MEMORY[0x1E69A9248]);
  v175 = swift_allocError();
  v136 = v135;
  v137 = (v167 + 1);
  v138 = v88 == v131 || v88 == v132;
  v173 = 0;
  v174 = 0xE000000000000000;
  if (v138)
  {
    sub_1C4F02248();

    sub_1C4411294();
    sub_1C43FDEE0();
    v141 = sub_1C4B89858(v139, v140, MEMORY[0x1E69A97E8]);
    v142 = sub_1C440A11C(v141);
    MEMORY[0x1C6940010](v142);

    (*v137)(v131, 0x80000001C4FB3700);
    v143 = v174;
    *v136 = v173;
    v136[1] = v143;
    sub_1C440A6B8();
    (*(v144 + 104))(v136);
    swift_willThrow();
    (*(v171 + 8))(v172, v169);
    sub_1C43FF6AC();
    return v145(v155, v165);
  }

  else
  {
    sub_1C4F02248();

    sub_1C4411294();
    sub_1C43FDEE0();
    v148 = sub_1C4B89858(v146, v147, MEMORY[0x1E69A97E8]);
    v149 = sub_1C440A11C(v148);
    MEMORY[0x1C6940010](v149);

    v150 = *v137;
    (*v137)(v131, 0x80000001C4FB3700);
    v151 = v174;
    *v136 = v173;
    v136[1] = v151;
    sub_1C440A6B8();
    (*(v152 + 104))(v136);
    swift_willThrow();
    (*(v171 + 8))(v172, v169);
    sub_1C43FF6AC();
    v153(v155, v165);
    return (v150)(v166, 0x80000001C4FB3700);
  }
}

uint64_t sub_1C4B88EA4(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C4008, &qword_1C4F56EA8);
  v3 = sub_1C43FBD18(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBF38();
  v104 = v7;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD230();
  v105 = v9;
  sub_1C43FBE44();
  v10 = sub_1C4EFF318();
  sub_1C43FCDF8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  v114 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  v98 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD230();
  v117 = v18;
  v19 = sub_1C43FBE44();
  v20 = type metadata accessor for OntologyTriple(v19);
  sub_1C43FCDF8();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v26 = v25 - v24;
  v27 = sub_1C4F00F28();
  v28 = *(a1 + 16);
  if (!v28)
  {
    return sub_1C482FCF0(v27);
  }

  v29 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v110 = v12;
  v111 = (v12 + 16);
  v106 = v12 + 40;
  v107 = (v12 + 32);
  v108 = *(v22 + 72);
  v109 = (v12 + 8);
  v112 = v20;
  v113 = v10;
  v99 = v5;
  while (1)
  {
    v115 = v29;
    v116 = v28;
    sub_1C4A69CD8(v29, v26);
    if (sub_1C4EFED18())
    {
      goto LABEL_13;
    }

    v30 = (v26 + *(v20 + 24));
    v31 = *v30;
    v32 = v30[1];
    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (!v33)
    {
LABEL_13:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFEB68();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v63 = v117;
      sub_1C4EFF308();
      goto LABEL_16;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFEB68();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FFE24();
    sub_1C4EFF308();
    v34 = sub_1C4EFF2F8();
    if (!v27[2])
    {
      break;
    }

    v36 = sub_1C445FAA8(v34, v35);
    v38 = v37;

    if ((v38 & 1) == 0)
    {
      goto LABEL_15;
    }

    v39 = *(v110 + 72);
    v40 = v27[7] + v39 * v36;
    v41 = v105;
    v42 = v113;
    (*(v110 + 16))(v105, v40, v113);
    sub_1C43FBD94();
    sub_1C440BAA8(v43, v44, v45, v42);
    sub_1C4607CD4(v41, &qword_1EC0C4008, &qword_1C4F56EA8);
    sub_1C4EFF2F8();
    v46 = sub_1C4EFEB68();
    v48 = v47;
    v49 = (v26 + *(v112 + 32));
    v51 = *v49;
    v50 = v49[1];
    v102 = v51;
    v103 = v46;
    v101 = v50;
    swift_isUniquelyReferenced_nonNull_native();
    v118 = v27;
    v52 = sub_1C43FFE24();
    sub_1C445FAA8(v52, v53);
    sub_1C4433820();
    if (v56)
    {
      goto LABEL_36;
    }

    v57 = v54;
    v58 = v55;
    v100 = v48;
    sub_1C456902C(&qword_1EC0C4010, &unk_1C4F56EB0);
    if (sub_1C4F02458())
    {
      v59 = sub_1C43FFE24();
      v61 = sub_1C445FAA8(v59, v60);
      v48 = v113;
      if ((v58 & 1) != (v62 & 1))
      {
        goto LABEL_38;
      }

      v57 = v61;
    }

    else
    {
      v48 = v113;
    }

    if ((v58 & 1) == 0)
    {
      goto LABEL_37;
    }

    v27 = v118;
    v87 = *v107;
    v88 = v104;
    (*v107)(v104, v118[7] + v57 * v39, v48);
    sub_1C43FBD94();
    sub_1C440BAA8(v89, v90, v91, v48);
    sub_1C4EFF2E8();

    v92 = v99;
    sub_1C4B897E8(v88, v99);
    if (sub_1C44157D4(v92, 1, v48) == 1)
    {
      sub_1C4607CD4(v92, &qword_1EC0C4008, &qword_1C4F56EA8);
      sub_1C4471348(v27[6] + 16 * v57);
      sub_1C4F02478();
    }

    else
    {
      v93 = v98;
      v87(v98, v92, v48);
      v87(v27[7] + v57 * v39, v93, v48);
    }

    v20 = v112;
    v85 = v115;
    v86 = v116;
    (*v109)(v117, v48);
    sub_1C4607CD4(v104, &qword_1EC0C4008, &qword_1C4F56EA8);
LABEL_25:
    sub_1C4A69D3C(v26);
    v29 = v85 + v108;
    v28 = v86 - 1;
    if (!v28)
    {
      return sub_1C482FCF0(v27);
    }
  }

LABEL_15:
  v64 = v105;
  sub_1C43FCF64();
  sub_1C440BAA8(v65, v66, v67, v113);
  sub_1C4607CD4(v64, &qword_1EC0C4008, &qword_1C4F56EA8);
  sub_1C4EFEB68();
  v63 = v117;
  sub_1C4EFF2E8();

LABEL_16:
  v68 = sub_1C4EFF2F8();
  v70 = v69;
  v48 = v113;
  (*v111)(v114, v63, v113);
  swift_isUniquelyReferenced_nonNull_native();
  v118 = v27;
  sub_1C445FAA8(v68, v70);
  sub_1C4433820();
  if (!v56)
  {
    v73 = v71;
    v74 = v72;
    sub_1C456902C(&qword_1EC0C4010, &unk_1C4F56EB0);
    if (sub_1C4F02458())
    {
      v75 = sub_1C445FAA8(v68, v70);
      v20 = v112;
      if ((v74 & 1) != (v76 & 1))
      {
        goto LABEL_38;
      }

      v73 = v75;
      v77 = v110;
      if ((v74 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v77 = v110;
      v20 = v112;
      if ((v74 & 1) == 0)
      {
LABEL_20:
        v27 = v118;
        v118[(v73 >> 6) + 8] |= 1 << v73;
        v78 = (v27[6] + 16 * v73);
        *v78 = v68;
        v78[1] = v70;
        (*(v77 + 32))(v27[7] + *(v77 + 72) * v73, v114, v48);
        v79 = sub_1C43FC908();
        v80(v79);
        v81 = v27[2];
        v56 = __OFADD__(v81, 1);
        v82 = v81 + 1;
        if (v56)
        {
          goto LABEL_35;
        }

        v27[2] = v82;
        goto LABEL_24;
      }
    }

    v27 = v118;
    (*(v77 + 40))(v118[7] + *(v77 + 72) * v73, v114, v48);
    v83 = sub_1C43FC908();
    v84(v83);
LABEL_24:
    v85 = v115;
    v86 = v116;
    goto LABEL_25;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_1C43FCF64();
  sub_1C440BAA8(v95, v96, v97, v48);
  __break(1u);
LABEL_38:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void sub_1C4B896A8()
{
  sub_1C456902C(&qword_1EC0C02B8, &qword_1C4F3E608);
  v0 = sub_1C4EFEFB8();
  sub_1C43FCDF8();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C4F0CE60;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x1E69A9798], v0);
  v8(v7 + v4, *MEMORY[0x1E69A9788], v0);

  sub_1C4D526A4();
}

uint64_t sub_1C4B897E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4008, &qword_1C4F56EA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B89858(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4B898E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v10 = sub_1C4EFB078();
  sub_1C43FCDF8();
  v25 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1C4EFB0B8();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB058();
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = v27;
  v33 = v28;
  v19 = v36;
  sub_1C4EFBFC8();
  if (v19)
  {
    return (*(v15 + 8))(v18, v13);
  }

  v28 = a3;
  v36 = v10;
  result = (*(v15 + 8))(v18, v13);
  v21 = *(v26 + 16);
  v27 = v25 + 8;
  for (i = v26 + 48; v21; --v21)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFB058();
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    sub_1C4EFBFB8();

    sub_1C4423A0C(v34, &qword_1EC0C5040, &qword_1C4F0F950);
    v23 = sub_1C4400F78();
    result = v24(v23);
    i += 24;
  }

  return result;
}

void sub_1C4B89B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a6;
  v7 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v25 = &v24 - v8;
  v9 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a5 + 16);
  if (v17)
  {
    v27 = *(v13 + 20);
    v18 = a5 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v19 = *(v14 + 72);
    do
    {
      sub_1C443CCBC(v18, v16);
      v20 = sub_1C4EFBE38();
      (*(*(v20 - 8) + 16))(v11, &v16[v27], v20);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C469C410(v16);
      sub_1C440BAA8(v11, 0, 1, v20);
      sub_1C4EFB498();

      sub_1C4423A0C(v11, &qword_1EC0B9BB8, &unk_1C4F1DC60);
      v18 += v19;
      --v17;
    }

    while (v17);
  }

  if (*(v26 + 16))
  {
    v21 = *MEMORY[0x1E69A00D0];
    v22 = sub_1C4EFBF38();
    v23 = v25;
    (*(*(v22 - 8) + 104))(v25, v21, v22);
    sub_1C440BAA8(v23, 0, 1, v22);
    sub_1C4EFB478();
    sub_1C4423A0C(v23, &unk_1EC0BCAB0, &unk_1C4F111A0);
  }
}

uint64_t sub_1C4B89E70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C4F919E0 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73657865646E69 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C4B89FD8(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C4020, &qword_1C4F57010);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C443C7AC();
  sub_1C4F02BF8();
  LOBYTE(v13) = 0;
  sub_1C4F02798();
  if (!v2)
  {
    v13 = v3[2];
    HIBYTE(v12) = 1;
    sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C443CB4C(&qword_1EDDDBC60);
    sub_1C44069F0();
    sub_1C4F027E8();
    v13 = v3[3];
    HIBYTE(v12) = 2;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D0B4(&qword_1EDDFA578);
    sub_1C44069F0();
    sub_1C4F027E8();
    v13 = v3[4];
    HIBYTE(v12) = 3;
    sub_1C456902C(&qword_1EC0BB020, &qword_1C4F1DB20);
    sub_1C443D1E4(&unk_1EC0BB030);
    sub_1C44069F0();
    sub_1C4F02778();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C4B8A248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B89E70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B8A270(uint64_t a1)
{
  v2 = sub_1C443C7AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B8A2AC(uint64_t a1)
{
  v2 = sub_1C443C7AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C4B8A300(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    type metadata accessor for ViewDatabaseArtifact.Property(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C4B8A354()
{
  result = qword_1EC0C4028;
  if (!qword_1EC0C4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4028);
  }

  return result;
}

unint64_t sub_1C4B8A3AC()
{
  result = qword_1EDDFFB60;
  if (!qword_1EDDFFB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFFB60);
  }

  return result;
}

unint64_t sub_1C4B8A404()
{
  result = qword_1EDDFED90;
  if (!qword_1EDDFED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFED90);
  }

  return result;
}

uint64_t sub_1C4B8A47C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001C4FB3A10 == a2;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001C4FB3A30 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C62615466666964 && a2 == 0xEF65674178614D65)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C4B8A5F0(char a1)
{
  result = 0x6D614E656C626174;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x6C62615466666964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B8A690(void *a1)
{
  v4 = v1;
  v6 = sub_1C456902C(&qword_1EC0C4050, &qword_1C4F57348);
  sub_1C43FCDF8();
  v8 = v7;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402A68();
  sub_1C4409678(a1, a1[3]);
  sub_1C4B8CF18();
  sub_1C4F02BF8();
  v10 = *v4;
  v11 = v4[1];
  v19 = 0;
  sub_1C4409190(v10, v11, &v19);
  if (!v2)
  {
    v12 = v4[2];
    v13 = v4[3];
    v18 = 1;
    sub_1C4409190(v12, v13, &v18);
    v14 = v4[4];
    v15 = v4[5];
    v17 = 2;
    sub_1C4409190(v14, v15, &v17);
    sub_1C4F027B8();
  }

  return (*(v8 + 8))(v3, v6);
}

void sub_1C4B8A808()
{
  sub_1C4414F80();
  v2 = v1;
  v4 = v3;
  sub_1C456902C(&qword_1EC0C4048, &qword_1C4F57340);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(v2, v2[3]);
  sub_1C4B8CF18();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v2);
  }

  else
  {
    sub_1C43FF6BC();
    v6 = sub_1C4F02678();
    v18 = v7;
    sub_1C43FF6BC();
    v8 = sub_1C4F02678();
    v17 = v9;
    v15 = v8;
    v14 = sub_1C4F02678();
    v16 = v10;
    sub_1C43FF6BC();
    v11 = sub_1C4F02698();
    v12 = sub_1C43FD158();
    v13(v12);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(v2);

    *v4 = v6;
    v4[1] = v18;
    v4[2] = v15;
    v4[3] = v17;
    v4[4] = v14;
    v4[5] = v16;
    *(v4 + 6) = v11;
  }

  sub_1C44053B0();
}

uint64_t sub_1C4B8AAAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4FB39F0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6954656E757270 && a2 == 0xEE00706D61747365)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

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

uint64_t sub_1C4B8AB84(char a1)
{
  if (a1)
  {
    return 0x6D6954656E757270;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1C4B8ABCC(void *a1)
{
  v4 = sub_1C456902C(&qword_1EC0C4040, &qword_1C4F57338);
  sub_1C43FCDF8();
  v6 = v5;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402A68();
  sub_1C4409678(a1, a1[3]);
  sub_1C4B8CEC4();
  sub_1C4F02BF8();
  sub_1C43FBF44();
  sub_1C4F027B8();
  if (!v1)
  {
    sub_1C43FBF44();
    sub_1C4F027B8();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_1C4B8AD18()
{
  sub_1C4414F80();
  v12 = v1;
  v13 = v2;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C4038, &qword_1C4F57330);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v11[-v9];
  sub_1C4409678(v4, v4[3]);
  sub_1C4B8CEC4();
  sub_1C4F02BC8();
  if (!v0)
  {
    v11[15] = 0;
    sub_1C4F02698();
    v11[14] = 1;
    sub_1C4F02698();
    (*(v7 + 8))(v10, v5);
  }

  sub_1C440962C(v4);
  sub_1C44053B0();
}

uint64_t sub_1C4B8AEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B8A47C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B8AEE0(uint64_t a1)
{
  v2 = sub_1C4B8CF18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B8AF1C(uint64_t a1)
{
  v2 = sub_1C4B8CF18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C4B8AF58@<D0>(uint64_t a1@<X8>)
{
  sub_1C4B8A808();
  if (!v1)
  {
    *a1 = v4;
    *(a1 + 16) = v5;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_1C4B8AFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B8AAAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B8AFF0(uint64_t a1)
{
  v2 = sub_1C4B8CEC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B8B02C(uint64_t a1)
{
  v2 = sub_1C4B8CEC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4B8B068(void *a1@<X8>)
{
  sub_1C4B8AD18();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_1C4B8B0BC()
{
  if (!*(v0 + 120))
  {
    sub_1C442D468();
    sub_1C4F02248();
    sub_1C43FDEF8();
    MEMORY[0x1C6940010]();
    sub_1C442E5BC();
    sub_1C4412638();
    sub_1C4406178();
    MEMORY[0x1C6940010](v2[4], v2[5]);
    sub_1C4412638();
    sub_1C4406178();
    MEMORY[0x1C6940010](v2[6], v2[7]);
    sub_1C43FDEF8();
    v3 = MEMORY[0x1C6940010]();
    sub_1C44138C4(v3, v4, v5, v6, v7, v8, v9, v10, v12[0], v12[1]);
    sub_1C4409174();
    if (v1)
    {
      return sub_1C440246C();
    }

    v2[15] = v12;
  }

  return sub_1C440246C();
}

uint64_t sub_1C4B8B1C0()
{
  if (!*(v0 + 128))
  {
    sub_1C442D468();
    sub_1C4F02248();

    strcpy(v12, "DELETE FROM ");
    HIWORD(v12[1]) = -4864;
    sub_1C442E5BC();
    v3 = MEMORY[0x1C6940010](34, 0xE100000000000000);
    sub_1C44138C4(v3, v4, v5, v6, v7, v8, v9, v10, v12[0], v12[1]);
    sub_1C4409174();
    if (v1)
    {
      return sub_1C440246C();
    }

    *(v2 + 128) = v12;
  }

  return sub_1C440246C();
}

uint64_t sub_1C4B8B288()
{
  if (!*(v0 + 136))
  {
    sub_1C442D468();
    sub_1C4F02248();
    sub_1C43FDEF8();
    MEMORY[0x1C6940010]();
    sub_1C442E5BC();
    sub_1C4412638();
    sub_1C441EF8C();
    MEMORY[0x1C6940010](v2[6], v2[7]);
    sub_1C44301C0();
    sub_1C44138C4(v3, v4, v5, v6, v7, v8, v9, v10, v12[0], v12[1]);
    sub_1C4409174();
    if (v1)
    {
      return sub_1C440246C();
    }

    v2[17] = v12;
  }

  return sub_1C440246C();
}

uint64_t sub_1C4B8B35C()
{
  if (!*(v0 + 144))
  {
    sub_1C442D468();
    sub_1C4F02248();
    sub_1C43FDEF8();
    MEMORY[0x1C6940010]();
    v3 = v2[6];
    v4 = v2[7];
    MEMORY[0x1C6940010](v3, v4);
    sub_1C4412638();
    sub_1C441EF8C();
    sub_1C442E5BC();
    sub_1C4412638();
    sub_1C441EF8C();
    MEMORY[0x1C6940010](v3, v4);
    sub_1C44301C0();
    sub_1C44138C4(v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1]);
    sub_1C4409174();
    if (v1)
    {
      return sub_1C440246C();
    }

    v2[18] = v14;
  }

  return sub_1C440246C();
}

void sub_1C4B8B458()
{
  sub_1C4414F80();
  v54 = v2;
  v55 = v3;
  v4 = v1;
  v5 = v0;
  v7 = v6;
  v50 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v48[1] = *v0;
  v49 = v15;
  v16 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v16);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v48[0] = v48 - v18;
  v19 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v25 = v24 - v23;
  *(v5 + 17) = 0u;
  *(v5 + 15) = 0u;
  v26 = *(v14 + 16);
  *(v5 + 1) = *v14;
  *(v5 + 2) = v26;
  *(v5 + 3) = *(v14 + 32);
  v5[8] = *(v14 + 48);
  v5[14] = v7;
  *(v5 + 104) = 0;

  sub_1C4B8CE5C(v14, v53);
  sub_1C4EF9C88();
  sub_1C4EF9AD8();
  v28 = v27;
  (*(v21 + 8))(v25, v19);
  *(v5 + 12) = v28;
  if (v10)
  {
    v29 = 0.0 - v28;
    if (v29 != INFINITY)
    {
      *&v29 += (*&v29 >> 63) | 1;
    }

    if (v50)
    {
      v53[0] = 0;
      v53[1] = 0xE000000000000000;
      sub_1C4F02248();

      v53[0] = 0xD000000000000018;
      v53[1] = 0x80000001C4FB3960;
      v30 = *(v14 + 32);
      v31 = *(v14 + 40);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v30, v31);

      sub_1C43FE984();
      sub_1C441EF8C();
      v32 = *v14;
      v33 = *(v14 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v32, v33);

      MEMORY[0x1C6940010](34, 0xE100000000000000);
      sub_1C4EFBE98();
      if (v4)
      {

        sub_1C4B8CE94(v14);

        swift_deallocPartialClassInstance();
        goto LABEL_19;
      }

      sub_1C4EFB768();
      v41 = v48[0];
      sub_1C43FCF64();
      sub_1C440BAA8(v42, v43, v44, v45);
      memset(v53, 0, 40);
      sub_1C4EFB9A8();

      sub_1C4423A0C(v53, &unk_1EC0BC770, &qword_1C4F10DC0);
      sub_1C4423A0C(v41, &unk_1EC0C06C0, &unk_1C4F10DB0);
      if (v52)
      {
        v47 = sub_1C4400F8C(*(v5 + 12));
        if (!v39 && !v46)
        {
          v47 = sub_1C4407CDC(v47);
        }

        v36 = -v47;
      }

      else
      {
        v36 = v51;
      }
    }

    else
    {

      v36 = -v29;
    }

    v35 = *(v5 + 12);
    *(v5 + 9) = v35;
    *(v5 + 10) = v36;
  }

  else
  {

    v34 = v49;
    v5[9] = v12;
    v5[10] = v34;
    v35 = *(v5 + 12);
  }

  sub_1C4B8CE94(v14);
  v38 = sub_1C4400F8C(*(v5 + 9));
  if (!v39 && !v37)
  {
    v38 = sub_1C4407CDC(v38);
  }

  v40 = -v38;
  if (v35 - *(v14 + 48) <= v40)
  {
    v40 = v35 - *(v14 + 48);
  }

  if (v40 <= *(v5 + 10))
  {
    v40 = *(v5 + 10);
  }

  *(v5 + 11) = v40;
LABEL_19:
  sub_1C44053B0();
}

uint64_t sub_1C4B8B8EC()
{
  v2 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v10 = sub_1C43FBD18(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  sub_1C43FC91C();
  result = sub_1C4B8B1C0();
  if (!v1)
  {
    sub_1C43FCF64();
    sub_1C440BAA8(v17, v18, v19, v2);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v15, &unk_1EC0C06C0, &unk_1C4F10DB0);

    v21 = sub_1C4400F8C(*(v0 + 96));
    if (!v22 && !v20)
    {
      v21 = sub_1C4407CDC(v21);
    }

    *(v0 + 88) = -v21;
    sub_1C43FBF44();
    sub_1C4B8B0BC();
    v23 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v24 = sub_1C4404370(v23);
    *(v24 + 16) = xmmword_1C4F0CE60;
    *(v24 + 32) = 0u;
    *(v24 + 48) = 0u;
    *(v24 + 64) = 0;
    v25 = *(v0 + 88);
    v26 = MEMORY[0x1E69A0168];
    *(v24 + 96) = MEMORY[0x1E69E63B0];
    *(v24 + 104) = v26;
    *(v24 + 72) = v25;
    sub_1C4EFB728();
    sub_1C4EFC088();

    (*(v4 + 8))(v8, v2);
    sub_1C43FBF44();
    sub_1C4B8B0BC();
    sub_1C43FCF64();
    sub_1C440BAA8(v27, v28, v29, v2);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v12, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

void sub_1C4B8BB5C()
{
  sub_1C4414F80();
  v46 = v2;
  v47 = v3;
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  if (*(v0 + 104))
  {
    sub_1C44178D8();
    sub_1C4B8B0BC();
    if (!v1)
    {
      v45 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v21 = sub_1C4404370(v45);
      v22 = *(v0 + 96);
      v40 = v0 + 96;
      *(v21 + 16) = xmmword_1C4F0CE60;
      *(v21 + 32) = 0u;
      *(v21 + 48) = 0u;
      *(v21 + 64) = 0;
      v23 = v22 + 0.0;
      if (v22 != INFINITY)
      {
        v23 = sub_1C4407CDC(v23);
      }

      v24 = MEMORY[0x1E69A0168];
      *(v21 + 96) = MEMORY[0x1E69E63B0];
      *(v21 + 104) = v24;
      *(v21 + 72) = v23;
      sub_1C4EFB728();
      sub_1C4EFC088();

      (*(v16 + 8))(v20, v14);
      sub_1C44178D8();
      sub_1C4B8B0BC();
      sub_1C43FCF64();
      sub_1C440BAA8(v25, v26, v27, v14);
      sub_1C4EFC0A8();
      sub_1C4423A0C(v13, &unk_1EC0C06C0, &unk_1C4F10DB0);

      sub_1C44178D8();
      sub_1C4B8B35C();
      v28 = swift_allocObject();
      v39 = xmmword_1C4F0D130;
      *(v28 + 16) = xmmword_1C4F0D130;
      v29 = *(v0 + 88);
      *(v28 + 56) = MEMORY[0x1E69E63B0];
      *(v28 + 64) = MEMORY[0x1E69A0168];
      *(v28 + 32) = v29;
      sub_1C4EFB728();
      sub_1C43FBD94();
      sub_1C440BAA8(v30, v31, v32, v14);
      v42 = 0;
      memset(v41, 0, sizeof(v41));
      sub_1C4EFB9A8();

      sub_1C4423A0C(v41, &unk_1EC0BC770, &qword_1C4F10DC0);
      sub_1C4423A0C(v10, &unk_1EC0C06C0, &unk_1C4F10DB0);
      if ((v44 & 1) == 0)
      {
        v33 = v43;
        if (v43 <= *(v0 + 80))
        {
          v33 = *(v0 + 80);
        }

        *(v0 + 88) = v33;
        sub_1C44178D8();
        sub_1C4B8B288();
        v34 = swift_allocObject();
        *(v34 + 16) = v39;
        v35 = *(v0 + 88);
        *(v34 + 56) = MEMORY[0x1E69E63B0];
        *(v34 + 64) = MEMORY[0x1E69A0168];
        *(v34 + 32) = v35;
        sub_1C4EFB728();
        sub_1C43FBD94();
        sub_1C440BAA8(v36, v37, v38, v14);
        sub_1C4EFC0A8();
        sub_1C4423A0C(v7, &unk_1EC0C06C0, &unk_1C4F10DB0);
      }
    }
  }

  sub_1C44053B0();
}

uint64_t sub_1C4B8BF6C(uint64_t a1, uint64_t a2)
{
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4402A68();
  sub_1C43FC91C();
  result = sub_1C4B8B0BC();
  if (!v3)
  {
    v10 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v11 = sub_1C4404370(v10);
    *(v11 + 16) = xmmword_1C4F0CE60;
    v12 = MEMORY[0x1E69A0138];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = v12;
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;
    v13 = *(v2 + 96);
    v14 = MEMORY[0x1E69A0168];
    *(v11 + 96) = MEMORY[0x1E69E63B0];
    *(v11 + 104) = v14;
    *(v11 + 72) = v13;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFB728();
    sub_1C4EFB768();
    sub_1C43FBD94();
    sub_1C440BAA8(v15, v16, v17, v18);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v4, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

void sub_1C4B8C0BC()
{
  sub_1C4414F80();
  v38 = v3;
  v39 = v4;
  v6 = v5;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4402A68();
  v9 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  sub_1C43FC91C();
  sub_1C4B8B0BC();
  if (!v1)
  {
    v37 = v0;
    v16 = v6[3];
    v30[0] = v6[4];
    v17 = sub_1C4409678(v6, v16);
    v30[1] = v30;
    *&v31 = v11;
    MEMORY[0x1EEE9AC00](v17);
    sub_1C43FBCC4();
    (*(v20 + 16))(v19 - v18);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1C4422F90(v34);
    sub_1C4F01478();
    v21 = (v31 + 8);
    v31 = xmmword_1C4F0CE60;
    while (1)
    {
      sub_1C4418280(v34, AssociatedTypeWitness);
      sub_1C4F01FA8();
      v22 = v33;
      if (!v33)
      {
        break;
      }

      v23 = v32;
      v24 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v25 = sub_1C4404370(v24);
      *(v25 + 16) = v31;
      *(v25 + 56) = MEMORY[0x1E69E6158];
      *(v25 + 64) = MEMORY[0x1E69A0138];
      *(v25 + 32) = v23;
      *(v25 + 40) = v22;
      v26 = *(v37 + 96);
      *(v25 + 96) = MEMORY[0x1E69E63B0];
      *(v25 + 104) = MEMORY[0x1E69A0168];
      *(v25 + 72) = v26;
      sub_1C4EFB728();
      sub_1C4EFC088();
      (*v21)(v15, v9);
      sub_1C43FCF64();
      sub_1C440BAA8(v27, v28, v29, v9);
      sub_1C4EFC0A8();
      sub_1C4423A0C(v2, &unk_1EC0C06C0, &unk_1C4F10DB0);
    }

    sub_1C440962C(v34);
  }

  sub_1C44053B0();
}

uint64_t sub_1C4B8C3E4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - v9;
  sub_1C43FC91C();
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000024, 0x80000001C4FB38C0);
  MEMORY[0x1C6940010](v4[2], v4[3]);
  sub_1C43FE984();
  sub_1C4406178();
  MEMORY[0x1C6940010](v4[4], v4[5]);
  sub_1C43FE984();
  sub_1C4406178();
  MEMORY[0x1C6940010](v4[6], v4[7]);
  MEMORY[0x1C6940010](0xD000000000000043, 0x80000001C4FB3980);
  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](0x29202020200ALL, 0xE600000000000000);
  sub_1C4EFBE98();

  if (!v3)
  {
    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C4F0D130;
    v13 = v2[12];
    v14 = MEMORY[0x1E69A0168];
    *(v12 + 56) = MEMORY[0x1E69E63B0];
    *(v12 + 64) = v14;
    *(v12 + 32) = v13;
    sub_1C4EFB728();
    sub_1C4EFB768();
    sub_1C43FBD94();
    sub_1C440BAA8(v15, v16, v17, v18);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v10, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

uint64_t sub_1C4B8C5E8()
{

  return v0;
}

uint64_t sub_1C4B8C658()
{
  sub_1C4B8C5E8();

  return swift_deallocClassInstance();
}

unint64_t sub_1C4B8C6D8()
{
  result = qword_1EDDFC190;
  if (!qword_1EDDFC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC190);
  }

  return result;
}

unint64_t sub_1C4B8C734()
{
  result = qword_1EDDEB990;
  if (!qword_1EDDEB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEB990);
  }

  return result;
}

unint64_t sub_1C4B8C788(void *a1)
{
  a1[1] = sub_1C4B8C7C0();
  a1[2] = sub_1C4B8C814();
  result = sub_1C4B8C868();
  a1[3] = result;
  return result;
}

unint64_t sub_1C4B8C7C0()
{
  result = qword_1EDDFE138;
  if (!qword_1EDDFE138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE138);
  }

  return result;
}

unint64_t sub_1C4B8C814()
{
  result = qword_1EDDFC1A0;
  if (!qword_1EDDFC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC1A0);
  }

  return result;
}

unint64_t sub_1C4B8C868()
{
  result = qword_1EDDFC198;
  if (!qword_1EDDFC198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC198);
  }

  return result;
}

void sub_1C4B8C8BC()
{
  sub_1C4414F80();
  v27 = v1;
  v28 = v2;
  v4 = v3;
  v5 = sub_1C4EFB078();
  sub_1C43FCDF8();
  v26 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v22 = v9 - v8;
  v10 = sub_1C4EFB0B8();
  sub_1C43FCDF8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  v17 = *v4;
  v18 = v4[1];
  sub_1C4EFB058();
  sub_1C4EFBFC8();
  (*(v12 + 8))(v16, v10);
  if (!v0)
  {
    sub_1C4F02248();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v23[0] = v17;
    v23[1] = v18;
    sub_1C43FE984();
    MEMORY[0x1C6940010](0xD000000000000016);
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    v19 = swift_allocObject();
    v20 = *(v4 + 2);
    v24 = *(v4 + 1);
    v21 = v24;
    v25 = v20;
    v19[1] = xmmword_1C4F0CE60;
    v19[2] = v20;
    v19[3] = v21;
    sub_1C448DB48(&v25, v23);
    sub_1C448DB48(&v24, v23);
    sub_1C4EFB058();
    memset(v23, 0, 40);
    sub_1C4EFBFB8();

    sub_1C4423A0C(v23, &qword_1EC0C5040, &qword_1C4F0F950);
    (*(v26 + 8))(v22, v5);
  }

  sub_1C44053B0();
}

uint64_t sub_1C4B8CB78(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = a2[2];
  v10 = a2[3];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBDA8();
  v11 = sub_1C4EFBE38();
  sub_1C440BAA8(v8, 0, 1, v11);
  sub_1C4EFB498();

  sub_1C4423A0C(v8, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDE8();
  sub_1C440BAA8(v8, 0, 1, v11);
  sub_1C4EFB498();

  sub_1C4423A0C(v8, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C4F0D130;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;
  v13 = *MEMORY[0x1E69A00D0];
  v14 = sub_1C4EFBF38();
  (*(*(v14 - 8) + 104))(v5, v13, v14);
  sub_1C440BAA8(v5, 0, 1, v14);
  sub_1C4EFB478();

  return sub_1C4423A0C(v5, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4B8CDC8(uint64_t a1, uint64_t a2)
{
  result = sub_1C4EF9538();
  if (!result || (result = sub_1C4EF9568(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C4EF9558();
      return sub_1C4EF9A08();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C4B8CEC4()
{
  result = qword_1EDDF8F00;
  if (!qword_1EDDF8F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8F00);
  }

  return result;
}

unint64_t sub_1C4B8CF18()
{
  result = qword_1EDDFC1B8;
  if (!qword_1EDDFC1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC1B8);
  }

  return result;
}

_BYTE *_s18UpdatedObjectStateV6ConfigV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s18UpdatedObjectStateV8BookmarkV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4B8D128()
{
  result = qword_1EC0C4058;
  if (!qword_1EC0C4058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4058);
  }

  return result;
}

unint64_t sub_1C4B8D180()
{
  result = qword_1EC0C4060;
  if (!qword_1EC0C4060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4060);
  }

  return result;
}

unint64_t sub_1C4B8D1D8()
{
  result = qword_1EDDFC1A8;
  if (!qword_1EDDFC1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC1A8);
  }

  return result;
}

unint64_t sub_1C4B8D230()
{
  result = qword_1EDDFC1B0;
  if (!qword_1EDDFC1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC1B0);
  }

  return result;
}

unint64_t sub_1C4B8D288()
{
  result = qword_1EDDF8EF0;
  if (!qword_1EDDF8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8EF0);
  }

  return result;
}

unint64_t sub_1C4B8D2E0()
{
  result = qword_1EDDF8EF8;
  if (!qword_1EDDF8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8EF8);
  }

  return result;
}

double sub_1C4B8D3C8()
{
  sub_1C447F304();
  sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FF6CC();
  if (!v3)
  {
    swift_once();
  }

  v4 = sub_1C442B738(v0, v1);
  sub_1C44138E4(v4);
  v5 = sub_1C440FCB0();
  v6(v5);
  sub_1C4EFD698();
  v7 = sub_1C443F394();
  v8(v7);
  return v10;
}

uint64_t static NSUserDefaults.isESDataCollectionDaily.getter()
{
  sub_1C456902C(&qword_1EC0C40C8, &qword_1C4F57588);
  sub_1C4403200();
  v2 = v1;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9[-v4];
  if (qword_1EDDDBA20 != -1)
  {
    sub_1C4412648(&qword_1EDDDBA20);
  }

  sub_1C442B738(v0, qword_1EDDDBA28);
  swift_beginAccess();
  v6 = sub_1C440FCB0();
  v7(v6);
  sub_1C4EFD698();
  (*(v2 + 8))(v5, v0);
  return v9[7];
}

uint64_t static NSUserDefaults.isESDataCollectionDaily.setter(char a1)
{
  if (qword_1EDDDBA20 != -1)
  {
    sub_1C4412648(&qword_1EDDDBA20);
  }

  v2 = sub_1C456902C(&qword_1EC0C40C8, &qword_1C4F57588);
  v3 = sub_1C442B738(v2, qword_1EDDDBA28);
  v5[31] = a1;
  sub_1C4403138(v3, v5);
  sub_1C4EFD6A8();
  return swift_endAccess();
}

uint64_t (*static NSUserDefaults.isDeltaUpdateEnabled.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDDBA40 != -1)
  {
    sub_1C43FC928(&qword_1EDDDBA40);
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDDBA48);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8D904()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDDBA48);
  sub_1C442B738(v0, qword_1EDDDBA48);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$isDeltaUpdateEnabled.getter()
{
  sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDDBA40 != -1)
  {
    v1 = sub_1C43FC928(&qword_1EDDDBA40);
  }

  sub_1C442D480(v1, qword_1EDDDBA48);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.viewGenerationGraphUpdateBatchSize.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFA4B8 != -1)
  {
    sub_1C443FFC8(&qword_1EDDFA4B8);
  }

  v3 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4420464(v3, qword_1EDDFA4C0);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8DB7C()
{
  v0 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C44F9918(v0, qword_1EDDFA4C0);
  sub_1C442B738(v0, qword_1EDDFA4C0);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$viewGenerationGraphUpdateBatchSize.getter()
{
  sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDFA4B8 != -1)
  {
    v1 = sub_1C443FFC8(&qword_1EDDFA4B8);
  }

  sub_1C442D480(v1, qword_1EDDFA4C0);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.viewGenerationSubjectIdBatchSize.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFA4E0 != -1)
  {
    sub_1C4416458(&qword_1EDDFA4E0);
  }

  v3 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4420464(v3, qword_1EDDFA4E8);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8DDF4()
{
  v0 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C44F9918(v0, qword_1EDDFA4E8);
  sub_1C442B738(v0, qword_1EDDFA4E8);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$viewGenerationSubjectIdBatchSize.getter()
{
  sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDFA4E0 != -1)
  {
    v1 = sub_1C4416458(&qword_1EDDFA4E0);
  }

  sub_1C442D480(v1, qword_1EDDFA4E8);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.viewGenerationMaxAttempts.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDF04D8 != -1)
  {
    sub_1C4425464(&qword_1EDDF04D8);
  }

  v3 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4420464(v3, qword_1EDDF04E0);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8E06C()
{
  v0 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C44F9918(v0, qword_1EDDF04E0);
  sub_1C442B738(v0, qword_1EDDF04E0);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$viewGenerationMaxAttempts.getter()
{
  sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDF04D8 != -1)
  {
    v1 = sub_1C4425464(&qword_1EDDF04D8);
  }

  sub_1C442D480(v1, qword_1EDDF04E0);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t sub_1C4B8E228()
{
  sub_1C447F304();
  sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FF6CC();
  if (!v3)
  {
    swift_once();
  }

  v4 = sub_1C442B738(v0, v1);
  sub_1C44138E4(v4);
  v5 = sub_1C440FCB0();
  v6(v5);
  sub_1C4EFD698();
  v7 = sub_1C443F394();
  v8(v7);
  return v10;
}

uint64_t (*static NSUserDefaults.viewGenerationMaxRemoteDevices.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFA500 != -1)
  {
    sub_1C441E710(&qword_1EDDFA500);
  }

  v3 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4420464(v3, qword_1EDDFA508);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8E3DC()
{
  v0 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C44F9918(v0, qword_1EDDFA508);
  sub_1C442B738(v0, qword_1EDDFA508);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$viewGenerationMaxRemoteDevices.getter()
{
  sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDFA500 != -1)
  {
    v1 = sub_1C441E710(&qword_1EDDFA500);
  }

  sub_1C442D480(v1, qword_1EDDFA508);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.sqlite3ReducedCacheSpillSize.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDF04B8 != -1)
  {
    sub_1C4450030(&qword_1EDDF04B8);
  }

  v3 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4420464(v3, qword_1EDDF04C0);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8E630()
{
  v0 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C44F9918(v0, qword_1EDDF04C0);
  sub_1C442B738(v0, qword_1EDDF04C0);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$sqlite3ReducedCacheSpillSize.getter()
{
  sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDF04B8 != -1)
  {
    v1 = sub_1C4450030(&qword_1EDDF04B8);
  }

  sub_1C442D480(v1, qword_1EDDF04C0);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.sqlite3MediumCacheSpillSize.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFE9E0 != -1)
  {
    sub_1C441061C(&qword_1EDDFE9E0);
  }

  v3 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4420464(v3, qword_1EDDFE9E8);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8E884()
{
  v0 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C44F9918(v0, qword_1EDDFE9E8);
  sub_1C442B738(v0, qword_1EDDFE9E8);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$sqlite3MediumCacheSpillSize.getter()
{
  sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDFE9E0 != -1)
  {
    v1 = sub_1C441061C(&qword_1EDDFE9E0);
  }

  sub_1C442D480(v1, qword_1EDDFE9E8);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.quDatabaseLoggingEnabled.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EC0B7168 != -1)
  {
    sub_1C44053C4(&qword_1EC0B7168);
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EC0C4068);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8EAFC()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EC0C4068);
  sub_1C442B738(v0, qword_1EC0C4068);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$quDatabaseLoggingEnabled.getter()
{
  sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EC0B7168 != -1)
  {
    v1 = sub_1C44053C4(&qword_1EC0B7168);
  }

  sub_1C442D480(v1, qword_1EC0C4068);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.graphDatabaseLoggingEnabled.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFEA00 != -1)
  {
    sub_1C4404740(&qword_1EDDFEA00);
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDFEA08);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8ED4C()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDFEA08);
  sub_1C442B738(v0, qword_1EDDFEA08);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$graphDatabaseLoggingEnabled.getter()
{
  sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDFEA00 != -1)
  {
    v1 = sub_1C4404740(&qword_1EDDFEA00);
  }

  sub_1C442D480(v1, qword_1EDDFEA08);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.globalKnowledgeDatabaseLoggingEnabled.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFE908 != -1)
  {
    sub_1C441EFA4(&qword_1EDDFE908);
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDFE910);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8EF9C()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDFE910);
  sub_1C442B738(v0, qword_1EDDFE910);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$globalKnowledgeDatabaseLoggingEnabled.getter()
{
  sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDFE908 != -1)
  {
    v1 = sub_1C441EFA4(&qword_1EDDFE908);
  }

  sub_1C442D480(v1, qword_1EDDFE910);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.keyValueDatabaseLoggingEnabled.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFE970 != -1)
  {
    sub_1C442BF9C(&qword_1EDDFE970);
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDFE978);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t static NSUserDefaults.$keyValueDatabaseLoggingEnabled.getter()
{
  sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDFE970 != -1)
  {
    v1 = sub_1C442BF9C(&qword_1EDDFE970);
  }

  sub_1C442D480(v1, qword_1EDDFE978);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.ontologyDatabaseLoggingEnabled.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFE948 != -1)
  {
    sub_1C44301E4(&qword_1EDDFE948);
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDFE950);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8F394()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDFE950);
  sub_1C442B738(v0, qword_1EDDFE950);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$ontologyDatabaseLoggingEnabled.getter()
{
  sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDFE948 != -1)
  {
    v1 = sub_1C44301E4(&qword_1EDDFE948);
  }

  sub_1C442D480(v1, qword_1EDDFE950);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.stateDatabaseLoggingEnabled.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFE9C0 != -1)
  {
    sub_1C44112BC(&qword_1EDDFE9C0);
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDFE9C8);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t static NSUserDefaults.$stateDatabaseLoggingEnabled.getter()
{
  sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDFE9C0 != -1)
  {
    v1 = sub_1C44112BC(&qword_1EDDFE9C0);
  }

  sub_1C442D480(v1, qword_1EDDFE9C8);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.eventLogDatabaseLoggingEnabled.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFE998 != -1)
  {
    sub_1C4426E84(&qword_1EDDFE998);
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDFE9A0);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8F78C()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDFE9A0);
  sub_1C442B738(v0, qword_1EDDFE9A0);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$eventLogDatabaseLoggingEnabled.getter()
{
  sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDFE998 != -1)
  {
    v1 = sub_1C4426E84(&qword_1EDDFE998);
  }

  sub_1C442D480(v1, qword_1EDDFE9A0);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.viewDatabaseLoggingEnabled.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFEA20 != -1)
  {
    sub_1C443546C(&qword_1EDDFEA20);
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDFEA28);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8FA00()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDFEA28);
  sub_1C442B738(v0, qword_1EDDFEA28);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$viewDatabaseLoggingEnabled.getter()
{
  sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDFEA20 != -1)
  {
    v1 = sub_1C443546C(&qword_1EDDFEA20);
  }

  sub_1C442D480(v1, qword_1EDDFEA28);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.viewDatabaseArtifactLoggingEnabled.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDFE928 != -1)
  {
    sub_1C440D920(&qword_1EDDFE928);
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDFE930);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B8FC74()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDFE930);
  sub_1C442B738(v0, qword_1EDDFE930);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$viewDatabaseArtifactLoggingEnabled.getter()
{
  sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDFE928 != -1)
  {
    v1 = sub_1C440D920(&qword_1EDDFE928);
  }

  sub_1C442D480(v1, qword_1EDDFE930);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.testTelemetry.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDF0520 != -1)
  {
    sub_1C44260C0(&qword_1EDDF0520);
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDF0528);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t static NSUserDefaults.$testTelemetry.getter()
{
  sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDF0520 != -1)
  {
    v1 = sub_1C44260C0(&qword_1EDDF0520);
  }

  sub_1C442D480(v1, qword_1EDDF0528);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t sub_1C4B90000(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  v7 = sub_1C442B738(v6, a3);
  v9[3] = a1;
  sub_1C4403138(v7, v9);
  sub_1C4EFD6A8();
  return swift_endAccess();
}

uint64_t (*static NSUserDefaults.maxSubjectIdSetSize.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDDBA68 != -1)
  {
    sub_1C4406190(&qword_1EDDDBA68);
  }

  v3 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4420464(v3, qword_1EDDDBA70);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B9012C()
{
  v0 = sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C44F9918(v0, qword_1EDDDBA70);
  sub_1C442B738(v0, qword_1EDDDBA70);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$maxSubjectIdSetSize.getter()
{
  sub_1C456902C(&qword_1EC0C40B8, &qword_1C4F57578);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDDBA68 != -1)
  {
    v1 = sub_1C4406190(&qword_1EDDDBA68);
  }

  sub_1C442D480(v1, qword_1EDDDBA70);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.isGraphStoreManuallyOverridden.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDF0490 != -1)
  {
    sub_1C442E5D4(&qword_1EDDF0490);
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDF0498);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B9035C()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDF0498);
  sub_1C442B738(v0, qword_1EDDF0498);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$isGraphStoreManuallyOverridden.getter()
{
  sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDF0490 != -1)
  {
    v1 = sub_1C442E5D4(&qword_1EDDF0490);
  }

  sub_1C442D480(v1, qword_1EDDF0498);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.mockLifeEvents.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDF04F8 != -1)
  {
    sub_1C441CDEC(&qword_1EDDF04F8);
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDF0500);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B905D8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v5, a2);
  sub_1C442B738(v5, a2);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$mockLifeEvents.getter()
{
  sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDF04F8 != -1)
  {
    v1 = sub_1C441CDEC(&qword_1EDDF04F8);
  }

  sub_1C442D480(v1, qword_1EDDF0500);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.mockLifeEventSignals.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EC0B7170 != -1)
  {
    sub_1C440A13C(&qword_1EC0B7170);
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EC0C4080);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B90840()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EC0C4080);
  sub_1C442B738(v0, qword_1EC0C4080);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$mockLifeEventSignals.getter()
{
  sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EC0B7170 != -1)
  {
    v1 = sub_1C440A13C(&qword_1EC0B7170);
  }

  sub_1C442D480(v1, qword_1EC0C4080);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.enableERHistoricalFeatureGeneration.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDDB9D8 != -1)
  {
    sub_1C4414F94(&qword_1EDDDB9D8);
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDDB9E0);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B90AB4()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDDB9E0);
  sub_1C442B738(v0, qword_1EDDDB9E0);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$enableERHistoricalFeatureGeneration.getter()
{
  sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDDB9D8 != -1)
  {
    v1 = sub_1C4414F94(&qword_1EDDDB9D8);
  }

  sub_1C442D480(v1, qword_1EDDDB9E0);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.isESDataCollectionDaily.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDDBA20 != -1)
  {
    sub_1C4412648(&qword_1EDDDBA20);
  }

  v3 = sub_1C456902C(&qword_1EC0C40C8, &qword_1C4F57588);
  sub_1C4420464(v3, qword_1EDDDBA28);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B90CE4()
{
  v0 = sub_1C456902C(&qword_1EC0C40C8, &qword_1C4F57588);
  sub_1C44F9918(v0, qword_1EDDDBA28);
  sub_1C442B738(v0, qword_1EDDDBA28);
  sub_1C44F920C();
  sub_1C4F01D18();
  sub_1C456902C(&qword_1EC0BD398, &unk_1C4F2DB60);
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$isESDataCollectionDaily.getter()
{
  sub_1C456902C(&qword_1EC0C40C8, &qword_1C4F57588);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDDBA20 != -1)
  {
    v1 = sub_1C4412648(&qword_1EDDDBA20);
  }

  sub_1C442D480(v1, qword_1EDDDBA28);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.isDeviceToBeSampledForESDataCollection.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDDB9B8 != -1)
  {
    sub_1C441BD04(&qword_1EDDDB9B8);
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EDDDB9C0);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B90F28()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EDDDB9C0);
  sub_1C442B738(v0, qword_1EDDDB9C0);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$isDeviceToBeSampledForESDataCollection.getter()
{
  sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDDB9B8 != -1)
  {
    v1 = sub_1C441BD04(&qword_1EDDDB9B8);
  }

  sub_1C442D480(v1, qword_1EDDDB9C0);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.autonamingMessagesProcessingDelay.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDDBA00 != -1)
  {
    sub_1C440BFA0(&qword_1EDDDBA00);
  }

  v3 = sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  sub_1C4420464(v3, qword_1EDDDBA08);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B9117C()
{
  v0 = sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  sub_1C44F9918(v0, qword_1EDDDBA08);
  sub_1C442B738(v0, qword_1EDDDBA08);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$autonamingMessagesProcessingDelay.getter()
{
  sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDDBA00 != -1)
  {
    v1 = sub_1C440BFA0(&qword_1EDDDBA00);
  }

  sub_1C442D480(v1, qword_1EDDDBA08);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t (*static NSUserDefaults.autonamingMessagesPhotosProcessingProgress.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDDB998 != -1)
  {
    sub_1C4415CC8(&qword_1EDDDB998);
  }

  v3 = sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  sub_1C4420464(v3, qword_1EDDDB9A0);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

uint64_t sub_1C4B913D8()
{
  v0 = sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  sub_1C44F9918(v0, qword_1EDDDB9A0);
  sub_1C442B738(v0, qword_1EDDDB9A0);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$autonamingMessagesPhotosProcessingProgress.getter()
{
  sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDDB998 != -1)
  {
    v1 = sub_1C4415CC8(&qword_1EDDDB998);
  }

  sub_1C442D480(v1, qword_1EDDDB9A0);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t sub_1C4B915A0(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  v7 = sub_1C442B738(v6, a2);
  *&v9[3] = a4;
  sub_1C4403138(v7, v9);
  sub_1C4EFD6A8();
  return swift_endAccess();
}

uint64_t (*static NSUserDefaults.autonamingMessagesContextMessagesTimeInterval.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EDDDBA90 != -1)
  {
    sub_1C441C524(&qword_1EDDDBA90);
  }

  v3 = sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  sub_1C4420464(v3, qword_1EDDDBA98);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B916CC;
}

uint64_t sub_1C4B916D0()
{
  v0 = sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  sub_1C44F9918(v0, qword_1EDDDBA98);
  sub_1C442B738(v0, qword_1EDDDBA98);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$autonamingMessagesContextMessagesTimeInterval.getter()
{
  sub_1C456902C(&qword_1EC0C40B0, &qword_1C4F57570);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EDDDBA90 != -1)
  {
    v1 = sub_1C441C524(&qword_1EDDDBA90);
  }

  sub_1C442D480(v1, qword_1EDDDBA98);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t sub_1C4B918B4(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  v7 = sub_1C442B738(v6, a3);
  v9[31] = a1 & 1;
  sub_1C4403138(v7, v9);
  sub_1C4EFD6A8();
  return swift_endAccess();
}

uint64_t (*static NSUserDefaults.mockDataActionSources.modify())()
{
  v1 = sub_1C440E858();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  if (qword_1EC0B7178 != -1)
  {
    sub_1C4433858(&qword_1EC0B7178);
  }

  v3 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4420464(v3, qword_1EC0C4098);
  *(v0 + 56) = sub_1C4432B50();
  return sub_1C4B91BCC;
}

void sub_1C4B919E4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  swift_endAccess();

  free(v1);
}

uint64_t sub_1C4B91A38()
{
  v0 = sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C44F9918(v0, qword_1EC0C4098);
  sub_1C442B738(v0, qword_1EC0C4098);
  sub_1C44F920C();
  sub_1C4F01D18();
  return sub_1C4EFD6C8();
}

uint64_t static NSUserDefaults.$mockDataActionSources.getter()
{
  sub_1C456902C(&qword_1EC0C40C0, &qword_1C4F57580);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  if (qword_1EC0B7178 != -1)
  {
    v1 = sub_1C4433858(&qword_1EC0B7178);
  }

  sub_1C442D480(v1, qword_1EC0C4098);
  v2 = sub_1C4407CF4();
  v3(v2);
  sub_1C43FDF04();
  v4 = sub_1C440B448();
  return v5(v4);
}

uint64_t sub_1C4B91BEC(int a1)
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x80000001C4F9AED0;
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

uint64_t sub_1C4B91CAC(int a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1C4B91BEC(a1);
  if (a3)
  {
    v10 = sub_1C45FB538();
    if (v10)
    {
      v11 = v10;
      v12 = sub_1C4EF9CD8();
      sub_1C440BAA8(v8, 1, 1, v12);
      v13 = sub_1C4886564(a2, a3, v8);
      v15 = v14;
      sub_1C45942C8(v11);
      sub_1C4420C3C(v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
      if (v15)
      {
        sub_1C4577DBC();
        if (sub_1C4594E18(v13, v15))
        {
          swift_isUniquelyReferenced_nonNull_native();
          v22 = v9;
          sub_1C4660314();
          return v22;
        }

        else
        {
          v16 = sub_1C445FAA8(0xD000000000000017, 0x80000001C4F9B190);
          if (v17)
          {
            v18 = v16;
            swift_isUniquelyReferenced_nonNull_native();
            v22 = v9;
            sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
            sub_1C4F02458();
            v9 = v22;

            v19 = *(*(v9 + 56) + 8 * v18);
            sub_1C4F02478();
          }
        }
      }
    }
  }

  return v9;
}

uint64_t sub_1C4B91ED4@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v12 + 32))(a6, a1);
  result = type metadata accessor for UserFocusComputedModeEvent(0);
  *(a6 + *(result + 20)) = a2;
  v14 = a6 + *(result + 24);
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = a5;
  return result;
}

uint64_t sub_1C4B91F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 24);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4B91FAC(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_1C456902C(&qword_1EC0BF9A0, &qword_1C4F3B520);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  v12 = [BiomeLibrary() UserFocus];
  swift_unknownObjectRelease();
  v13 = [v12 ComputedMode];
  swift_unknownObjectRelease();
  sub_1C4674D1C();

  if (!v1)
  {
    sub_1C445FFF0(v11, v8, &qword_1EC0BF9A0, &qword_1C4F3B520);
    sub_1C445FFF0(a1, v5, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C493A250();
    sub_1C4420C3C(v11, &qword_1EC0BF9A0, &qword_1C4F3B520);
  }
}

uint64_t type metadata accessor for UserFocusComputedModeEvent(uint64_t a1)
{
  result = qword_1EDDE0D40;
  if (!qword_1EDDE0D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B921FC(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C4B92290()
{
  result = qword_1EC0C40D0;
  if (!qword_1EC0C40D0)
  {
    sub_1C4572308(&qword_1EC0BF9B0, &qword_1C4F3B530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C40D0);
  }

  return result;
}

void sub_1C4B92310(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BF9B0, &qword_1C4F3B530);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v8 - v6;
  sub_1C4B91FAC(a1);
  if (!v2)
  {
    sub_1C4B923E4(v7, a2);
  }
}

uint64_t sub_1C4B923E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BF9B0, &qword_1C4F3B530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4B92454()
{
  result = qword_1EDDDC468;
  if (!qword_1EDDDC468)
  {
    sub_1C4572308(&qword_1EC0C40D8, &unk_1C4F57690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC468);
  }

  return result;
}

uint64_t sub_1C4B924B8(uint64_t result)
{
  if ((result - 1) < 0xA)
  {
    return result;
  }

  v1 = result;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDDFECB8);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CE8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_1C43F8000, v3, v4, "Unknown BMUserFocusModeComputedSemanticType - %d", v5, 8u);
    MEMORY[0x1C6942830](v5, -1, -1);
  }

  return 0;
}

uint64_t sub_1C4B925AC(uint64_t a1, const char *a2)
{
  v2 = a1;
  if (a1 >= 4)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDDFECB8);
    v5 = sub_1C4F00968();
    v6 = sub_1C4F01CE8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v2;
      _os_log_impl(&dword_1C43F8000, v5, v6, a2, v7, 8u);
      MEMORY[0x1C6942830](v7, -1, -1);
    }

    return 0;
  }

  return v2;
}

uint64_t sub_1C4B9269C(uint64_t a1)
{
  v2 = a1;
  v3 = [BiomeLibrary() UserFocus];
  swift_unknownObjectRelease();
  v4 = [v3 ComputedMode];
  swift_unknownObjectRelease();
  *(v1 + 24) = v4;
  *(v1 + 16) = v2;
  return v1;
}

uint64_t sub_1C4B92790()
{
  sub_1C44CD9C0(0, 4, 0);
  v0 = 0;
  sub_1C4413900();
  sub_1C4412668();
  sub_1C440B458();
  sub_1C43FDF20();
  do
  {
    v6 = 0xED00006E6F736165;
    v7 = 0x725F657461647075;
    switch(byte_1F43D2B28[v0 + 32])
    {
      case 1:
        v7 = v3;
        v6 = v2;
        break;
      case 2:
        v7 = v5;
        v6 = v4;
        break;
      case 3:
        v7 = 0xD000000000000018;
        v6 = 0x80000001C4FB3E80;
        break;
      default:
        break;
    }

    v12 = v1;
    v9 = *(v1 + 16);
    v8 = *(v1 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_1C44CD9C0(v8 > 1, v9 + 1, 1);
      sub_1C43FDF20();
      sub_1C440B458();
      sub_1C4412668();
      sub_1C4413900();
      v1 = v12;
    }

    ++v0;
    *(v1 + 16) = v9 + 1;
    v10 = v1 + 16 * v9;
    *(v10 + 32) = v7;
    *(v10 + 40) = v6;
  }

  while (v0 != 4);

  return sub_1C4499940();
}

uint64_t sub_1C4B92908(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4B92960(v1, a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C4B92960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &aBlock - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = *(a1 + 24);
  v14 = sub_1C4EF9CD8();
  sub_1C440BAA8(v11, 1, 1, v14);
  (*(*(v14 - 8) + 16))(v8, a2, v14);
  sub_1C440BAA8(v8, 0, 1, v14);
  v15 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v16 = sub_1C457A86C(v11, v8, 1, 1, 0);
  v17 = [v13 publisherWithOptions_];

  v30 = sub_1C4AFB170;
  v31 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1C45AF9C8;
  v29 = &unk_1F43FF628;
  v18 = _Block_copy(&aBlock);
  v19 = [v17 filterWithIsIncluded_];
  _Block_release(v18);
  v30 = nullsub_1;
  v31 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1C44405F8;
  v29 = &unk_1F43FF650;
  v20 = _Block_copy(&aBlock);
  v30 = sub_1C4B93AF0;
  v31 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1C4440590;
  v29 = &unk_1F43FF678;
  v21 = _Block_copy(&aBlock);

  v22 = [v19 sinkWithCompletion:v20 receiveInput:v21];

  _Block_release(v21);
  _Block_release(v20);

  swift_beginAccess();
  v23 = *(v12 + 16);
  *a3 = v23;
  v24 = v23;
}

void sub_1C4B92CC0(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v7, "Exception: Unable to parse eventBody from latest event in UserFocusComputedMode stream", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }
  }
}

uint64_t sub_1C4B92DF8(uint64_t a1)
{
  sub_1C4432B6C();
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  strcpy((inited + 32), "update_reason");
  *(inited + 46) = -4864;
  v4 = objc_opt_self();
  *(inited + 48) = [v4 featureValueWithInt64_];
  strcpy((inited + 56), "update_source");
  *(inited + 70) = -4864;
  *(inited + 72) = [v4 featureValueWithInt64_];
  *(inited + 80) = v1;
  *(inited + 88) = 0xED0000657079745FLL;
  *(inited + 96) = [v4 featureValueWithInt64_];
  *(inited + 104) = 0xD000000000000018;
  *(inited + 112) = 0x80000001C4FB3E80;
  sub_1C4577DBC();
  *(inited + 120) = sub_1C4594E18(0x6E776F6E6B6E75, 0xE700000000000000);
  v5 = sub_1C4F00F28();
  v6 = sub_1C4B92908(a1);
  if (v6)
  {
    v7 = v6;

    v8 = sub_1C4B93A8C(v7);
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0x6E776F6E6B6E75;
    }

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1C4F0D480;
    strcpy((v12 + 32), "update_reason");
    *(v12 + 46) = -4864;
    v13 = sub_1C4B925AC([v7 updateReason], "Unknown BMUserFocusModeComputedUpdateReason - %d");
    *(v12 + 48) = sub_1C4400FA4(v13);
    strcpy((v12 + 56), "update_source");
    *(v12 + 70) = -4864;
    v14 = sub_1C4B925AC([v7 updateSource], "Unknown BMUserFocusModeComputedUpdateSource - %d");
    *(v12 + 72) = sub_1C4400FA4(v14);
    strcpy((v12 + 80), "semantic_type");
    *(v12 + 94) = -4864;
    v15 = sub_1C4B924B8([v7 semanticType]);
    *(v12 + 96) = sub_1C4400FA4(v15);
    *(v12 + 104) = 0xD000000000000018;
    *(v12 + 112) = 0x80000001C4FB3E80;
    *(v12 + 120) = sub_1C4594E18(v10, v11);
    v5 = sub_1C4F00F28();
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v16 = sub_1C4F00978();
    sub_1C442B738(v16, qword_1EDDFECB8);
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CF8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1C43F8000, v17, v18, "Unable to fetch last UserFocusComputedModeEvent", v19, 2u);
      MEMORY[0x1C6942830](v19, -1, -1);
    }
  }

  return v5;
}

void sub_1C4B931D0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v34 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  type metadata accessor for FeatureProviderSnapshot(0);
  sub_1C43FCDF8();
  v32 = v14;
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = *(a2 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v29 = a3;
    v37 = MEMORY[0x1E69E7CC0];
    v36 = v17;
    sub_1C459D0A8();
    v20 = v36;
    v19 = v37;
    v22 = *(v8 + 16);
    v21 = v8 + 16;
    v23 = a2 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v30 = *(v21 + 56);
    v31 = v22;
    do
    {
      v31(v12, v23, v34);
      v31(v20, v12, v34);
      v24 = sub_1C4B92DF8(v12);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v25 = v4;
      sub_1C4B938C8(v24, a1);

      sub_1C465CF34();
      v27 = v26;
      v20 = v36;

      (*(v21 - 8))(v12, v34);
      *(v36 + *(v33 + 20)) = v27;
      v28 = *(v37 + 16);
      if (v28 >= *(v37 + 24) >> 1)
      {
        sub_1C459D0A8();
        v20 = v36;
      }

      *(v37 + 16) = v28 + 1;
      sub_1C4586A54(v20, v37 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28);
      v23 += v30;
      --v18;
      v4 = v25;
    }

    while (v18);
    a3 = v29;
  }

  *a3 = v19;
}

uint64_t sub_1C4B93484()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C4EF9C88();
  v7 = sub_1C4B92DF8(v6);
  (*(v2 + 8))(v6, v0);
  return v7;
}

uint64_t sub_1C4B93540(uint64_t a1, uint64_t a2)
{
  v4 = 0xED00006E6F736165;
  v5 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  sub_1C4EF9C88();
  sub_1C4B92DF8(v11);
  (*(v7 + 8))(v11, v5);
  v12 = a1 == 0x725F657461647075 && a2 == 0xED00006E6F736165;
  if (v12 || (sub_1C4F02938() & 1) != 0)
  {
    v13 = 0x725F657461647075;
  }

  else
  {
    sub_1C4432B6C();
    v14 = a1 == 0xED00006E6F736165 && a2 == 0xED0000657079745FLL;
    if (v14 || (sub_1C4420498(0xED00006E6F736165) & 1) != 0 || ((v4 = 0x735F657461647075, a1 == 0x735F657461647075) ? (v15 = a2 == 0xED0000656372756FLL) : (v15 = 0), v15 || (sub_1C4420498(0x735F657461647075) & 1) != 0))
    {
      v13 = v4;
    }

    else
    {
      v18 = a1 == 0xD000000000000018 && 0x80000001C4FB3E80 == a2;
      if (!v18 && (sub_1C4420498(0xD000000000000018) & 1) == 0)
      {
        v16 = 0;
        goto LABEL_19;
      }

      v13 = 0xD000000000000018;
    }
  }

  v16 = sub_1C44F9274(v13);
LABEL_19:

  return v16;
}

unint64_t sub_1C4B9384C(uint64_t a1)
{
  result = sub_1C4B93874();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4B93874()
{
  result = qword_1EC0C40E0;
  if (!qword_1EC0C40E0)
  {
    type metadata accessor for UserFocusComputedModeSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C40E0);
  }

  return result;
}

_BYTE *sub_1C4B938C8(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v16, v7, v4, a2);
      MEMORY[0x1C6942830](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v17 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2, v10, v11, v12, v13);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v14;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_1C4B93A8C(void *a1)
{
  v1 = [a1 semanticModeIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4B93B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (sub_1C4EF9D38(), result = sub_1C4B93D68(a2), !v2))
  {
    v5 = type metadata accessor for FutureLifeEventStructs.Place(0);
    return sub_1C440D320(v5);
  }

  return result;
}

uint64_t sub_1C4B93BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v16 - v6;
  v8 = sub_1C4EF9D38();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) < 2uLL)
  {
    goto LABEL_4;
  }

  sub_1C4A3E16C(a1, v7);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    sub_1C4631FFC(v7);
LABEL_4:
    v14 = type metadata accessor for FutureLifeEventStructs.Place(0);
    return sub_1C440D320(v14);
  }

  (*(v10 + 32))(v13, v7, v8);
  sub_1C4B93D68(a2);
  if (!v2)
  {
    (*(v10 + 8))(v13, v8);
    goto LABEL_4;
  }

  return (*(v10 + 8))(v13, v8);
}

uint64_t sub_1C4B93D68@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v30 = type metadata accessor for FutureLifeEventStructs.Place(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType(0);
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = sub_1C4EFEEF8();
  sub_1C440BAA8(v12, 1, 1, v13);
  sub_1C4EFD258();
  v14 = v4[6];
  if (qword_1EDDFED40 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Source(0);
  v16 = sub_1C442B738(v15, qword_1EDDFD2A8);
  sub_1C448D0E0(v16, &v12[v14], type metadata accessor for Source);
  sub_1C4EFE558();
  v17 = &v12[v4[8]];
  sub_1C4EFE658();
  v18 = v4[10];
  *v17 = sub_1C4EF9CF8();
  v17[1] = v19;
  *&v12[v18] = xmmword_1C4F55890;
  sub_1C448D0E0(v12, v9, type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C458C7D4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v21 = v20;
  v23 = *(v20 + 16);
  v22 = *(v20 + 24);
  if (v23 >= v22 >> 1)
  {
    sub_1C458C7D4(v22 > 1, v23 + 1, 1, v20);
    v21 = v29;
  }

  *(v21 + 16) = v23 + 1;
  sub_1C4B94124(v9, v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v23, type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType);
  if (qword_1EDDE9258 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for SourceIdPrefix(0);
  sub_1C442B738(v24, qword_1EDE2CF48);
  String.base64EncodedSHA(withPrefix:)();

  v25 = v32;
  sub_1C4DA9F58();
  if (v25)
  {
  }

  else
  {
    v27 = *(v30 + 32);

    *&v3[v27] = v21;
    sub_1C4DAF124();
    sub_1C4B94124(v3, v31, type metadata accessor for FutureLifeEventStructs.Place);
  }

  return sub_1C4B940C8(v12, v26);
}

uint64_t sub_1C4B940C8(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C4B94124(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1C4B94184(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = sub_1C4B9AF40(a1, a2);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v6 = v4;
  v45 = MEMORY[0x1E69E7CC0];
  result = sub_1C459D3B0(0, v4 & ~(v4 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v5 = v45;
    v9 = (v3 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 4 << v9;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v11 = v3 & 0xFFFFFFFFFFFFLL;
    }

    v39 = 4 << v9;
    v12 = 15;
    v40 = v6;
    v41 = v3;
    v42 = v11;
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v12 & 0xC;
      v15 = (v12 & 1) == 0 || v14 == v10;
      v16 = v15;
      if (v15)
      {
        result = v12;
        if (v14 == v10)
        {
          v36 = v16;
          result = sub_1C4B9AAA8(v12, v3, a2);
          v16 = v36;
          v11 = v42;
        }

        v17 = result >> 16;
        if (result >> 16 >= v11)
        {
          goto LABEL_59;
        }

        if ((result & 1) == 0)
        {
          v18 = v16;
          result = sub_1C4B9AE34(result, v3, a2);
          v16 = v18;
          v11 = v42;
          v17 = result >> 16;
        }
      }

      else
      {
        v17 = v12 >> 16;
        result = v12;
        if (v12 >> 16 >= v11)
        {
          goto LABEL_60;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v22 = v16;
        result = sub_1C4F02238();
        v16 = v22;
        v11 = v42;
        v21 = result;
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v43 = v3;
        v44 = a2 & 0xFFFFFFFFFFFFFFLL;
        v19 = &v43 + v17;
        v23 = *(&v43 + v17);
        v21 = *(&v43 + v17);
        if (v23 < 0)
        {
          switch(__clz(v21 ^ 0xFF))
          {
            case 0x1Au:
LABEL_33:
              v21 = v19[1] & 0x3F | ((v21 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_34:
              v24 = v19[1];
              v25 = v19[2];
              v26 = ((v21 & 0xF) << 12) | ((v24 & 0x3F) << 6);
              goto LABEL_36;
            case 0x1Cu:
LABEL_35:
              v27 = v19[1];
              v28 = v19[2];
              v25 = v19[3];
              v26 = ((v21 & 0xF) << 18) | ((v27 & 0x3F) << 12) | ((v28 & 0x3F) << 6);
LABEL_36:
              v21 = v26 & 0xFFFFFFC0 | v25 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v3 & 0x1000000000000000) == 0)
        {
          v37 = v16;
          result = sub_1C4F022F8();
          v16 = v37;
          v11 = v42;
        }

        v19 = (result + v17);
        v20 = *(result + v17);
        v21 = *(result + v17);
        if (v20 < 0)
        {
          switch(__clz(v21 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_33;
            case 0x1Bu:
              goto LABEL_34;
            case 0x1Cu:
              goto LABEL_35;
            default:
              break;
          }
        }
      }

      v45 = v5;
      v30 = *(v5 + 16);
      v29 = *(v5 + 24);
      if (v30 >= v29 >> 1)
      {
        v38 = v16;
        result = sub_1C459D3B0((v29 > 1), v30 + 1, 1);
        v16 = v38;
        v11 = v42;
        v5 = v45;
      }

      *(v5 + 16) = v30 + 1;
      *(v5 + 4 * v30 + 32) = v21;
      if (v16)
      {
        v10 = v39;
        v31 = v40;
        v3 = v41;
        if (v14 == v39)
        {
          result = sub_1C4B9AAA8(v12, v41, a2);
          v11 = v42;
          v12 = result;
        }

        if (v11 <= v12 >> 16)
        {
          goto LABEL_61;
        }

        if ((v12 & 1) == 0)
        {
          result = sub_1C4B9AE34(v12, v41, a2);
          v11 = v42;
          v12 = v12 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else
      {
        v31 = v40;
        v3 = v41;
        v10 = v39;
        if (v11 <= v12 >> 16)
        {
          goto LABEL_62;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1C4F01228();
        v11 = v42;
        v12 = result;
      }

      else
      {
        v32 = v12 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v43 = v3;
          v44 = a2 & 0xFFFFFFFFFFFFFFLL;
          v33 = *(&v43 + v32);
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v3 & 0x1000000000000000) == 0)
          {
            result = sub_1C4F022F8();
            v11 = v42;
          }

          v33 = *(result + v32);
        }

        v34 = v33;
        v35 = __clz(v33 ^ 0xFF) - 24;
        if (v34 >= 0)
        {
          LOBYTE(v35) = 1;
        }

        v12 = ((v32 + v35) << 16) | 5;
      }

      ++v8;
      if (v13 == v31)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4B94580(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v4 = v5;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v3 = *(result + 24);
      result = *(result + 16);
      v4 = v3;
LABEL_9:
      result = sub_1C4B9AC0C(result, v4);
      break;
    case 3uLL:
      result = 0;
      v2 = 0;
      goto LABEL_5;
    default:
      v2 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_1C4B9AB04(result, v2);
      break;
  }

  return result;
}

uint64_t sub_1C4B9460C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EFBE38();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v47 = v46 - v14;
  v15 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  sub_1C43FCDF8();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v52 = (v20 - v19);
  sub_1C4F02B78();
  v21 = (*(a3 + 32))(a2, a3);
  v22 = *(v21 + 16);
  if (v22)
  {
    v48 = v12;
    v51 = *(v15 + 20);
    v23 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v46[1] = v21;
    v24 = v21 + v23;
    v50 = *(v17 + 72);
    v49 = (v8 + 16);
    v25 = (v8 + 8);
    v26 = v47;
    while (1)
    {
      v54 = v22;
      v27 = a1;
      v28 = v52;
      sub_1C4B9B230(v24, v52, type metadata accessor for ViewDatabaseArtifact.Property);
      v53 = *v28;
      (*v49)(v26, &v28[v51], v6);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C443CDD0(v28, type metadata accessor for ViewDatabaseArtifact.Property);
      sub_1C4EFBDD8();
      sub_1C4B9AA60(&qword_1EDDF0040, MEMORY[0x1E69A0080], MEMORY[0x1E69A0088]);
      v29 = sub_1C44091B8();
      v30 = *v25;
      v31 = sub_1C4402B58();
      v30(v31);
      if (v29)
      {
        v32 = sub_1C440E740();
        v30(v32);
        a1 = v27;
        if (*(v27 + 16))
        {
          sub_1C4425484();
          sub_1C441BD24();
          v33 = v54;
          if ((v27 & 1) == 0)
          {
            goto LABEL_34;
          }

          sub_1C441E730();
          sub_1C444B334();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_34;
          }

          sub_1C4F01298();
          goto LABEL_31;
        }

        goto LABEL_19;
      }

      sub_1C4EFBE08();
      v34 = sub_1C44091B8();
      v35 = sub_1C4402B58();
      v30(v35);
      if (v34)
      {
        break;
      }

      sub_1C4EFBDF8();
      v38 = sub_1C44091B8();
      v39 = sub_1C4402B58();
      v30(v39);
      if (v38)
      {
        v40 = sub_1C440E740();
        v30(v40);
        a1 = v27;
        if (*(v27 + 16))
        {
          sub_1C4425484();
          sub_1C441BD24();
          v33 = v54;
          if ((v27 & 1) == 0)
          {
            goto LABEL_34;
          }

          sub_1C441E730();
          sub_1C444B334();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

LABEL_19:

        v33 = v54;
        goto LABEL_34;
      }

      sub_1C4EFBDE8();
      v41 = sub_1C44091B8();
      v42 = sub_1C4402B58();
      v30(v42);
      v43 = sub_1C440E740();
      v30(v43);
      a1 = v27;
      if (v41)
      {
        v33 = v54;
        if (!*(v27 + 16))
        {
          goto LABEL_31;
        }

        sub_1C4425484();
        sub_1C441BD24();
        if ((v27 & 1) == 0)
        {
          goto LABEL_34;
        }

        sub_1C441E730();
        sub_1C444B334();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_34;
        }

        v44 = v55;
        if (v55 == 0.0)
        {
          v44 = 0.0;
        }

        v37 = v44;
LABEL_13:
        MEMORY[0x1C6941830](*&v37);
        goto LABEL_34;
      }

      v33 = v54;
      if (!*(v27 + 16))
      {

LABEL_33:
        sub_1C4F02B18();
        goto LABEL_34;
      }

      sub_1C4425484();
      sub_1C441BD24();
      if ((v27 & 1) == 0)
      {
        goto LABEL_33;
      }

      sub_1C441E730();
      sub_1C444B334();
      if (swift_dynamicCast())
      {
        sub_1C4F02B18();
        sub_1C4F01298();
        v26 = v47;
LABEL_31:
      }

LABEL_34:
      v24 += v50;
      v22 = v33 - 1;
      if (!v22)
      {
        goto LABEL_35;
      }
    }

    v36 = sub_1C440E740();
    v30(v36);
    a1 = v27;
    if (!*(v27 + 16))
    {
      goto LABEL_19;
    }

    sub_1C4425484();
    sub_1C441BD24();
    v33 = v54;
    if ((v27 & 1) == 0)
    {
      goto LABEL_34;
    }

    sub_1C441E730();
    sub_1C444B334();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_34;
    }

    v37 = v55;
    goto LABEL_13;
  }

LABEL_35:

  return sub_1C4F02B58();
}

uint64_t sub_1C4B94B7C(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v1 = objc_opt_self();
  v2 = sub_1C4F00EC8();
  v16[0] = 0;
  v3 = [v1 dataWithJSONObject:v2 options:0 error:v16];

  v4 = v16[0];
  if (v3)
  {
    sub_1C4EF9A68();
  }

  else
  {
    v5 = v4;
    v6 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C43FCEE8(v7, qword_1EDE2DF70);
    v8 = v6;
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CD8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = sub_1C43FD084();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v6;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_1C43F8000, v9, v10, "Row data cannot be encoded, using nil payload: %@", v11, 0xCu);
      sub_1C4420C3C(v12, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }
  }

  return sub_1C43FBC98();
}

uint64_t sub_1C4B94DA4()
{
  sub_1C43FBCD4();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v5 = sub_1C4EFC358();
  v1[24] = v5;
  sub_1C43FCF7C(v5);
  v1[25] = v6;
  v1[26] = sub_1C43FE604();
  v1[27] = swift_task_alloc();
  v7 = sub_1C4EFC338();
  v1[28] = v7;
  sub_1C43FCF7C(v7);
  v1[29] = v8;
  v1[30] = sub_1C43FE604();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v9 = sub_1C4EFC328();
  v1[33] = v9;
  sub_1C43FCF7C(v9);
  v1[34] = v10;
  v1[35] = swift_task_alloc();
  v11 = sub_1C4EFC308();
  v1[36] = v11;
  sub_1C43FCF7C(v11);
  v1[37] = v12;
  v1[38] = sub_1C43FE604();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v13 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  sub_1C43FCF7C(v13);
  v1[41] = v14;
  v1[42] = sub_1C43FE604();
  v1[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4B94FD0, 0, 0);
}

uint64_t sub_1C4B94FD0()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  *(v0 + 352) = v2;
  if (v2)
  {
    v3 = *(v0 + 176);
    v4 = v3[4];
    *(v0 + 360) = v4;
    *(v0 + 368) = (v3 + 4) & 0xFFFFFFFFFFFFLL | 0xAA3C000000000000;
    *(v0 + 376) = v3[5];
    *(v0 + 384) = (v3 + 5) & 0xFFFFFFFFFFFFLL | 0xDEF3000000000000;
    *(v0 + 392) = v3[7];
    *(v0 + 400) = (v3 + 7) & 0xFFFFFFFFFFFFLL | 0x2AFC000000000000;
    v5 = MEMORY[0x1E69DF5B8];
    *(v0 + 480) = *MEMORY[0x1E69DF5E0];
    *(v0 + 484) = *v5;
    *(v0 + 488) = *MEMORY[0x1E69DF5D8];
    v6 = MEMORY[0x1E69E7CC0];
    *(v0 + 492) = *MEMORY[0x1E69DF5C8];
    *(v0 + 408) = 0;
    *(v0 + 416) = v6;
    v7 = *(v1 + 32);
    *(v0 + 424) = v7;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = sub_1C44057DC();
    v9 = *(v4(v8) + 16);

    if (v9 == 1)
    {
      v10 = sub_1C4433E08();
      if (*(v11(v10) + 16))
      {
        sub_1C440D940();

        sub_1C4430204();
        if (*(v7 + 16) && (v12 = sub_1C445FAA8(**(v0 + 344), *(*(v0 + 344) + 8)), (v13 & 1) != 0))
        {
          sub_1C4450808(v12);
          sub_1C4400FD4();
          sub_1C443CDD0(v7, v14);
          if (swift_dynamicCast())
          {
            v15 = *(v0 + 152);
LABEL_14:
            *(v0 + 432) = v15;
            v21 = sub_1C4433E08();
            if (v22(v21))
            {
              v23 = sub_1C4B94B7C(v7);
            }

            else
            {
              v23 = 0;
              v24 = 0xF000000000000000;
            }

            sub_1C446C080(v23, v24);
            v28 = (v25 + *v25);
            v26 = swift_task_alloc();
            *(v0 + 456) = v26;
            *v26 = v0;
            v27 = sub_1C43FF6E4(v26);

            return v28(v27);
          }
        }

        else
        {
          sub_1C4400FD4();
          sub_1C443CDD0(v19, v20);
        }
      }

      else
      {
      }
    }

    v15 = sub_1C4B9460C(v7, *(v0 + 168), *(v0 + 176));
    goto LABEL_14;
  }

  sub_1C43FBCF0();
  v17 = MEMORY[0x1E69E7CC0];

  return v16(v17);
}

uint64_t sub_1C4B95304()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 464) = v5;
  *(v3 + 472) = v0;

  if (v0)
  {

    v6 = sub_1C4B95FD8;
  }

  else
  {
    v6 = sub_1C4B9541C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C4B9541C()
{
  v1 = *(v0 + 464);
  if (!v1)
  {
LABEL_37:
    sub_1C441DFEC(*(v0 + 440), *(v0 + 448));
LABEL_41:

LABEL_42:
    v24 = *(v0 + 416);
    goto LABEL_43;
  }

  v2 = *(v0 + 424);
  v3 = sub_1C4433E08();
  v5 = (*(v4 + 8))(v3);
  v135 = v2;
  if (!*(v2 + 16))
  {
    sub_1C441DFEC(*(v0 + 440), *(v0 + 448));

LABEL_40:

    goto LABEL_41;
  }

  v7 = sub_1C445FAA8(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    sub_1C441DFEC(*(v0 + 440), *(v0 + 448));
    goto LABEL_40;
  }

  v131 = *(v0 + 424);
  sub_1C442B870(*(v131 + 56) + 32 * v7, v0 + 16);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v102 = *(v0 + 440);
    v101 = *(v0 + 448);

    sub_1C441DFEC(v102, v101);
    goto LABEL_42;
  }

  v128 = v1;
  v140 = *(v0 + 480);
  v10 = *(v0 + 224);
  v11 = *(v0 + 232);
  v12 = *(v0 + 128);
  sub_1C456902C(&qword_1EC0C4138, &qword_1C4F57A18);
  v13 = (sub_1C456902C(&qword_1EC0C4140, &qword_1C4F57A20) - 8);
  v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C4F0D130;
  v16 = v15 + v14;
  v17 = v13[14];
  v18 = sub_1C44057DC();
  v19(v18);
  v20 = *(v11 + 104);
  *(v16 + v17) = v12;
  v134 = v20;
  v20((v16 + v17), v140, v10);
  sub_1C4B9AA60(&qword_1EDDF0010, MEMORY[0x1E69DF568], MEMORY[0x1E69DF570]);
  v142 = sub_1C4F00F28();
  v21 = sub_1C44057DC();
  v23 = v22(v21);
  if (!v23)
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  v133 = *(v23 + 16);
  if (!v133)
  {
LABEL_63:
    v111 = *(v0 + 440);
    v110 = *(v0 + 448);
    v112 = *(v0 + 208);
    v113 = *(v0 + 216);
    v115 = *(v0 + 192);
    v114 = *(v0 + 200);

    sub_1C456902C(&qword_1EC0B8A88, &unk_1C4F0EDB0);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_1C4F0D130;
    *(v116 + 32) = v128;
    sub_1C4431E64(v111, v110);
    sub_1C4EFC348();
    (*(v114 + 16))(v112, v113, v115);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v0 + 416);
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_64:
      v119 = *(v24 + 16);
      v118 = *(v24 + 24);
      if (v119 >= v118 >> 1)
      {
        sub_1C458BF50(v118 > 1, v119 + 1, 1, v24);
        v24 = v127;
      }

      v121 = *(v0 + 208);
      v120 = *(v0 + 216);
      v122 = *(v0 + 192);
      v123 = *(v0 + 200);
      sub_1C441DFEC(*(v0 + 440), *(v0 + 448));
      (*(v123 + 8))(v120, v122);
      *(v24 + 16) = v119 + 1;
      (*(v123 + 32))(v24 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v119, v121, v122);
LABEL_43:
      v86 = *(v0 + 408) + 1;
      if (v86 == *(v0 + 352))
      {

        sub_1C43FBCF0();
        sub_1C441AF18();

        __asm { BRAA            X2, X16 }
      }

      *(v0 + 408) = v86;
      *(v0 + 416) = v24;
      v89 = *(v0 + 360);
      v90 = *(*(v0 + 160) + 8 * v86 + 32);
      *(v0 + 424) = v90;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v91 = sub_1C44057DC();
      v92 = *(v89(v91) + 16);

      if (v92 == 1)
      {
        v93 = sub_1C4433E08();
        if (*(v94(v93) + 16))
        {
          sub_1C440D940();

          sub_1C4430204();
          if (*(v90 + 16) && (v95 = sub_1C445FAA8(**(v0 + 344), *(*(v0 + 344) + 8)), (v96 & 1) != 0))
          {
            sub_1C4450808(v95);
            sub_1C4400FD4();
            sub_1C443CDD0(v90, v97);
            if (swift_dynamicCast())
            {
              v98 = *(v0 + 152);
              goto LABEL_57;
            }
          }

          else
          {
            sub_1C4400FD4();
            sub_1C443CDD0(v99, v100);
          }
        }

        else
        {
        }
      }

      v98 = sub_1C4B9460C(v90, *(v0 + 168), *(v0 + 176));
LABEL_57:
      *(v0 + 432) = v98;
      v103 = sub_1C4433E08();
      if (v104(v103))
      {
        v105 = sub_1C4B94B7C(v90);
      }

      else
      {
        v105 = 0;
        v106 = 0xF000000000000000;
      }

      sub_1C446C080(v105, v106);
      v107 = swift_task_alloc();
      *(v0 + 456) = v107;
      *v107 = v0;
      sub_1C43FF6E4(v107);
      sub_1C441AF18();

      __asm { BRAA            X4, X3 }
    }

LABEL_74:
    sub_1C458BF50(0, *(v24 + 16) + 1, 1, v24);
    v24 = v126;
    goto LABEL_64;
  }

  v24 = 0;
  v25 = (v23 + 40);
  v132 = v23;
  while (1)
  {
    if (v24 >= *(v23 + 16))
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v26 = *(v0 + 484);
    v27 = *(v0 + 272);
    v28 = *(v0 + 280);
    v29 = *(v0 + 264);
    v31 = *(v25 - 1);
    v30 = *v25;
    v139 = v25;
    *v28 = 0;
    v28[1] = 0;
    (*(v27 + 104))(v28, v26, v29);
    swift_bridgeObjectRetain_n();
    sub_1C4EFC2F8();
    v141 = v24;
    if (!*(v135 + 16))
    {
      goto LABEL_22;
    }

    v32 = sub_1C445FAA8(v31, v30);
    v34 = v33;

    if (v34)
    {
      sub_1C442B870(*(v131 + 56) + 32 * v32, v0 + 48);
      if (swift_dynamicCast())
      {
        v35 = *(v0 + 112);
        v36 = *(v0 + 120);
        v37 = HIBYTE(v36) & 0xF;
        if ((v36 & 0x2000000000000000) == 0)
        {
          v37 = v35 & 0xFFFFFFFFFFFFLL;
        }

        if (v37)
        {
          v136 = *(v0 + 488);
          v39 = *(v0 + 248);
          v38 = *(v0 + 256);
          v40 = *(v0 + 224);
          v41 = *(v0 + 232);
          v130 = *(*(v0 + 296) + 16);
          v130(*(v0 + 312), *(v0 + 320), *(v0 + 288));
          *v38 = v35;
          v38[1] = v36;
          v134(v38, v136, v40);
          v129 = *(v41 + 32);
          v129(v39, v38, v40);
          swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 144) = v142;
          sub_1C457B2A0();
          sub_1C442CD84();
          if (v44)
          {
            goto LABEL_73;
          }

          v45 = v42;
          v46 = v43;
          sub_1C456902C(&qword_1EC0C4148, &qword_1C4F57A28);
          if (sub_1C4F02458())
          {
            sub_1C457B2A0();
            if ((v46 & 1) != (v48 & 1))
            {
              break;
            }

            v45 = v47;
          }

          v49 = *(v0 + 144);
          v137 = *(v0 + 320);
          v50 = *(v0 + 288);
          v51 = *(v0 + 296);
          v52 = *(v0 + 248);
          v53 = *(v0 + 224);
          v54 = *(v0 + 232);
          v142 = v49;
          if ((v46 & 1) == 0)
          {
            sub_1C44185D4(v49 + 8 * (v45 >> 6));
            v83 = v82;
            v130(v81 + *(v51 + 72) * v45, v82, v50);
            v129(*(v142 + 56) + *(v54 + 72) * v45, v52, v53);
            v84 = *(v51 + 8);
            v84(v83, v50);
            v84(v137, v50);
            v78 = v142;
            v85 = *(v142 + 16);
            v44 = __OFADD__(v85, 1);
            v80 = v85 + 1;
            if (v44)
            {
              __break(1u);
              goto LABEL_37;
            }

            goto LABEL_30;
          }

          (*(v54 + 40))(*(v49 + 56) + *(v54 + 72) * v45, v52, v53);
          v55 = *(v51 + 8);
          v56 = sub_1C4402B58();
          v55(v56);
          (v55)(v137, v50);
          goto LABEL_31;
        }

LABEL_22:
      }
    }

    v57 = *(v0 + 492);
    v58 = *(v0 + 240);
    v59 = *(v0 + 224);
    v24 = *(*(v0 + 296) + 16);
    (v24)(*(v0 + 304), *(v0 + 320), *(v0 + 288));
    v134(v58, v57, v59);
    swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 136) = v142;
    sub_1C457B2A0();
    sub_1C442CD84();
    if (v44)
    {
      goto LABEL_71;
    }

    v62 = v60;
    v63 = v61;
    sub_1C456902C(&qword_1EC0C4148, &qword_1C4F57A28);
    if ((sub_1C4F02458() & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_1C457B2A0();
    if ((v63 & 1) != (v65 & 1))
    {
      break;
    }

    v62 = v64;
LABEL_27:
    v66 = *(v0 + 136);
    v138 = *(v0 + 320);
    v67 = *(v0 + 296);
    v68 = *(v0 + 288);
    v69 = *(v0 + 232);
    v70 = *(v0 + 240);
    v71 = *(v0 + 224);
    v142 = v66;
    if ((v63 & 1) == 0)
    {
      sub_1C44185D4(v66 + 8 * (v62 >> 6));
      v76 = v75;
      (v24)(v74 + *(v67 + 72) * v62, v75, v68);
      (*(v69 + 32))(*(v142 + 56) + *(v69 + 72) * v62, v70, v71);
      v77 = *(v67 + 8);
      v77(v76, v68);
      v77(v138, v68);
      v78 = v142;
      v79 = *(v142 + 16);
      v44 = __OFADD__(v79, 1);
      v80 = v79 + 1;
      if (v44)
      {
        goto LABEL_72;
      }

LABEL_30:
      *(v78 + 16) = v80;
      goto LABEL_31;
    }

    v72 = *(v0 + 304);
    (*(v69 + 40))(*(v66 + 56) + *(v69 + 72) * v62, v70, v71);
    v73 = *(v67 + 8);
    v73(v72, v68);
    v73(v138, v68);
LABEL_31:
    v23 = v132;
    v24 = v141 + 1;
    v25 = v139 + 2;
    if (v133 == v141 + 1)
    {
      goto LABEL_63;
    }
  }

  sub_1C441AF18();

  return sub_1C4F029F8();
}

uint64_t sub_1C4B95FD8()
{
  sub_1C441DFEC(*(v0 + 440), *(v0 + 448));

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4B960D0(uint64_t a1)
{
  v23 = sub_1C4EFC328();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v22 = sub_1C4EFC308();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = OBJC_IVAR____TtC24IntelligencePlatformCore11AssetLoader_filterableStringAttributes;
  *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore11AssetLoader_filterableStringAttributes) = 0;
  v16 = *(a1 + 32);
  *(v1 + 16) = *(a1 + 24);
  *(v1 + 24) = v16;
  *v8 = 0;
  *(v8 + 8) = 1;
  (*(v4 + 104))(v8, *MEMORY[0x1E69DF5C0], v23);
  swift_bridgeObjectRetain_n();
  sub_1C4EFC2F8();
  (*(v10 + 32))(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore11AssetLoader_idAttribute, v14, v22);
  v17 = *(a1 + 16);
  v18 = (v1 + OBJC_IVAR____TtC24IntelligencePlatformCore11AssetLoader_vectorColumn);
  *v18 = *(a1 + 8);
  v18[1] = v17;
  *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore11AssetLoader_keyColumns) = *(a1 + 40);
  *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore11AssetLoader_includePayload) = *(a1 + 1);
  v19 = *(a1 + *(type metadata accessor for VectorDB.Config(0) + 44));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4407D0C();
  sub_1C443CDD0(a1, v20);
  *(v1 + v15) = v19;

  return v1;
}

uint64_t sub_1C4B962F4()
{
  sub_1C43FCF70();
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v0 = sub_1C4F00978();
  sub_1C43FCEE8(v0, qword_1EDE2DF70);
  v1 = sub_1C4F00968();
  sub_1C4F01CB8();
  v2 = sub_1C4404760();
  if (os_log_type_enabled(v2, v3))
  {
    sub_1C43FD1A8();
    *swift_slowAlloc() = 0;
    sub_1C43FFFD8(&dword_1C43F8000, v4, v5, "VectorDBArtfiact: Default no-op implementation for model pre-loading.");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C43FBDA0();

  return v6();
}

uint64_t sub_1C4B963D8()
{

  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore11AssetLoader_idAttribute;
  sub_1C4EFC308();
  sub_1C43FBCE0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1C4B96498(uint64_t a1)
{
  result = sub_1C4EFC308();
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

uint64_t sub_1C4B96558(uint64_t a1)
{
  v4 = type metadata accessor for VectorDB.Config(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v6 = sub_1C456902C(&qword_1EC0C4168, &qword_1C4F57A58);
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for VectorDB.EmbeddingConfig(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  sub_1C4B9B28C(a1 + *(v5 + 48), v9);
  if (sub_1C44157D4(v9, 1, v10) == 1)
  {
    sub_1C4420C3C(v9, &qword_1EC0C4168, &qword_1C4F57A58);
    v15 = sub_1C447FA64();
    sub_1C43FFB2C(&type metadata for VectorDB.EmbeddingDatabaseError, v15);
    *v16 = 0xD000000000000038;
    *(v16 + 8) = v2;
    *(v16 + 16) = 1;
    swift_willThrow();
    sub_1C4407D0C();
    sub_1C443CDD0(a1, v17);
    type metadata accessor for GenericEmbeddingAssetLoader(0);
    sub_1C44366B4();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1C4B9B2FC(v9, v14, type metadata accessor for VectorDB.EmbeddingConfig);
    sub_1C4B9B230(v14, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore27GenericEmbeddingAssetLoader_embeddingConfig, type metadata accessor for VectorDB.EmbeddingConfig);
    sub_1C4B9B230(a1, v2, type metadata accessor for VectorDB.Config);
    sub_1C4B960D0(v2);
    sub_1C443CDD0(a1, type metadata accessor for VectorDB.Config);
    sub_1C443CDD0(v14, type metadata accessor for VectorDB.EmbeddingConfig);
  }

  return v1;
}

uint64_t sub_1C4B967C0(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return sub_1C43FFE30(sub_1C4B967D8);
}

uint64_t sub_1C4B967D8()
{
  sub_1C43FCF70();
  sub_1C43FC948();
  sub_1C4403860();

  if (*(v0 + 40))
  {
    if (sub_1C43FDF34())
    {
      v1 = sub_1C4402B58();
      sub_1C44344B8(v1, v2);
      v3 = sub_1C4402B58();
      sub_1C4B968B4(v3, v4);
      v5 = sub_1C4402B58();
      sub_1C4434000(v5, v6);
      v7 = sub_1C4402B58();
      sub_1C4434000(v7, v8);
    }
  }

  else
  {
    sub_1C4420C3C(v0 + 16, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  v9 = sub_1C43FD5F0();

  return v10(v9);
}

uint64_t sub_1C4B968B4(uint64_t a1, unint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E7CC0];
  switch(a2 >> 62)
  {
    case 1uLL:
      v4 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v5 = v4;
      goto LABEL_7;
    case 2uLL:
      v6 = *(a1 + 24);
      a1 = *(a1 + 16);
      v5 = v6;
LABEL_7:
      v2 = sub_1C4B9AB80(a1, v5);
      break;
    case 3uLL:
      return v2;
    default:
      __src = a1;
      v9 = a2;
      v10 = BYTE2(a2);
      v11 = BYTE3(a2);
      v12 = BYTE4(a2);
      v3 = (a2 >> 50) & 0x3F;
      v13 = BYTE5(a2);
      if (v3)
      {
        v2 = sub_1C497EDBC();
        memcpy((v2 + 32), &__src, 4 * v3);
      }

      break;
  }

  return v2;
}

uint64_t sub_1C4B96A2C@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1C4EFC318();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v8 = type metadata accessor for VectorDB.EmbeddingConfig(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  sub_1C4B9B230(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore27GenericEmbeddingAssetLoader_embeddingConfig, v11 - v10, type metadata accessor for VectorDB.EmbeddingConfig);
  v13 = *(v9 + 28);
  (*(v6 + 16))(v2, v12 + v13, v4);
  v14 = (*(v6 + 88))(v2, v4);
  if (v14 == *MEMORY[0x1E69DF588])
  {
    v15 = MEMORY[0x1E69DF528];
LABEL_7:
    v16 = *v15;
    sub_1C4EFC2D8();
    sub_1C43FBCE0();
    (*(v17 + 104))(a1, v16);
    return (*(v6 + 8))(v12 + v13, v4);
  }

  if (v14 == *MEMORY[0x1E69DF590])
  {
    v15 = MEMORY[0x1E69DF518];
    goto LABEL_7;
  }

  if (v14 == *MEMORY[0x1E69DF580])
  {
    v15 = MEMORY[0x1E69DF520];
    goto LABEL_7;
  }

  result = sub_1C4F02928();
  __break(1u);
  return result;
}

uint64_t sub_1C4B96C4C()
{
  sub_1C4B963D8();
  sub_1C441CE0C(OBJC_IVAR____TtC24IntelligencePlatformCore27GenericEmbeddingAssetLoader_embeddingConfig);
  sub_1C44366B4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4B96CD4(uint64_t a1)
{
  result = type metadata accessor for VectorDB.EmbeddingConfig(319);
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

uint64_t sub_1C4B96D64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C4703368;

  return sub_1C4B967C0(a1);
}

uint64_t sub_1C4B96DFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4703368;

  return sub_1C4B94DA4();
}

uint64_t sub_1C4B96EA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C4B962E0();
}

uint64_t sub_1C4B96F7C(uint64_t a1)
{
  v4 = type metadata accessor for VectorDB.Config(0);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C44058BC();
  *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore23DefaultEmptyAssetLoader_dimension) = 128;
  sub_1C4B9B230(a1, v2, type metadata accessor for VectorDB.Config);
  sub_1C4B960D0(v2);
  sub_1C443CDD0(a1, type metadata accessor for VectorDB.Config);
  return v1;
}

uint64_t sub_1C4B9703C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return sub_1C43FFE30(sub_1C4B97054);
}

void sub_1C4B97054()
{
  sub_1C43FC948();
  sub_1C4403860();

  if (!*(v0 + 40))
  {
LABEL_19:
    sub_1C4420C3C(v0 + 16, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_20:
    v15 = 0;
LABEL_24:
    sub_1C43FBCF0();

    v28(v15);
    return;
  }

  if ((sub_1C43FDF34() & 1) == 0)
  {
    goto LABEL_20;
  }

  v1 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v2 = sub_1C4F01348();
    if (!v3)
    {
      break;
    }

    v4 = sub_1C4B94184(v2, v3);

    v5 = *(v4 + 16);
    v6 = *(v1 + 16);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v7 > *(v1 + 24) >> 1)
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      sub_1C458BE6C(isUniquelyReferenced_nonNull_native, v9, 1, v1);
      v1 = v10;
    }

    if (*(v4 + 16))
    {
      v11 = *(v1 + 16);
      if ((*(v1 + 24) >> 1) - v11 < v5)
      {
        goto LABEL_28;
      }

      memcpy((v1 + 4 * v11 + 32), (v4 + 32), 4 * v5);

      if (v5)
      {
        v12 = *(v1 + 16);
        v13 = __OFADD__(v12, v5);
        v14 = v12 + v5;
        if (v13)
        {
          goto LABEL_29;
        }

        *(v1 + 16) = v14;
      }
    }

    else
    {

      if (v5)
      {
        __break(1u);
        goto LABEL_19;
      }
    }
  }

  v16 = sub_1C4C527C4(128, v1);
  v20 = (v19 >> 1) - v18;
  if (__OFSUB__(v19 >> 1, v18))
  {
    goto LABEL_30;
  }

  v13 = __OFSUB__(128, v20);
  v21 = 128 - v20;
  if (!v13)
  {
    v22 = v16;
    v23 = v17;
    v24 = v18;
    v25 = v19;
    v26 = sub_1C44B345C(v21 & ~(v21 >> 63), 0.0);
    sub_1C4B97298(v22, v23, v24, v25, v26);
    v15 = v27;

    swift_unknownObjectRelease();
    goto LABEL_24;
  }

LABEL_31:
  __break(1u);
}

void sub_1C4B97298(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v6 = *(a5 + 16);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      sub_1C458BE6C(0, v8 & ~(v8 >> 63), 0, MEMORY[0x1E69E7CC0]);
      v12 = swift_unknownObjectRetain();
      sub_1C49D3C64(v12, a2, a3, a4);
      v13 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C49D3BB4(v13);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1C4B97360()
{
  sub_1C4B963D8();
  sub_1C44366B4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4B973EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C4703368;

  return sub_1C4B9703C(a1);
}

uint64_t sub_1C4B97484(uint64_t a1)
{
  v4 = v1;
  v6 = type metadata accessor for VectorDB.Config(0);
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C44058BC();
  if (!*(a1 + 56))
  {
    v14 = sub_1C447FA64();
    sub_1C43FFB2C(&type metadata for VectorDB.EmbeddingDatabaseError, v14);
    *v12 = 0xD000000000000041;
    *(v12 + 8) = v3;
    v13 = 1;
    goto LABEL_5;
  }

  sub_1C4F00F28();
  sub_1C4EFE278();
  swift_allocObject();
  v8 = sub_1C4EFE268();
  if (v2)
  {

    v9 = sub_1C4B9B1DC();
    v10 = sub_1C43FFB2C(&type metadata for VectorDB.EmbeddingDatabaseError, v9);
    sub_1C447F314(v10, v11);
LABEL_5:
    *(v12 + 16) = v13;
    swift_willThrow();
    sub_1C4407D0C();
    sub_1C443CDD0(a1, v15);
    type metadata accessor for AddressEmbeddingAssetLoader(0);
    sub_1C44057E8();
    swift_deallocPartialClassInstance();
    return sub_1C445EA10();
  }

  v16 = v8;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v17 = sub_1C4F00978();
  sub_1C442B738(v17, qword_1EDE2DF70);
  v18 = sub_1C4F00968();
  sub_1C4F01CB8();
  v19 = sub_1C4404760();
  if (os_log_type_enabled(v19, v20))
  {
    sub_1C43FD1A8();
    *swift_slowAlloc() = 0;
    sub_1C4407324(&dword_1C43F8000, v21, v22, "VectorDBArtifact: Using (AddressEmbedding) as the text embedding provider.");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore27AddressEmbeddingAssetLoader_embeddingModel) = v16;
  sub_1C44204B8();
  sub_1C4B9B230(a1, v3, v23);
  sub_1C4B960D0(v3);
  sub_1C441D3EC();
  return sub_1C445EA10();
}

uint64_t sub_1C4B976E0()
{
  sub_1C43FBCD4();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_1C456902C(&qword_1EC0B84F8, &unk_1C4F57A40);
  sub_1C43FBD18(v3);
  v1[14] = swift_task_alloc();
  v4 = sub_1C456902C(&qword_1EC0B84F0, &unk_1C4F0CF50);
  v1[15] = v4;
  sub_1C43FCF7C(v4);
  v1[16] = v5;
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4B977D4, 0, 0);
}

uint64_t sub_1C4B977D4()
{
  sub_1C43FC948();
  sub_1C4403860();

  if (*(v0 + 40))
  {
    if (sub_1C43FDF34())
    {
      sub_1C4F00FF8();

      while (1)
      {
        v1 = sub_1C4F01348();
        if (!v2)
        {
          break;
        }

        v3 = v1;
        v4 = v2;
        if ((sub_1C4F01008() & 1) == 0)
        {
          sub_1C4404C28();
          if (sub_1C4F01018() & 1) != 0 || (v3 == 32 ? (v5 = v4 == 0xE100000000000000) : (v5 = 0), v5 || (sub_1C4404C28(), (sub_1C4F02938()) || (sub_1C4404C28(), (sub_1C4F01028())))
          {
            v6 = sub_1C4404C28();
            MEMORY[0x1C6940000](v6);
          }
        }
      }

      if (qword_1EDDFECD0 != -1)
      {
        sub_1C4400FC0();
        swift_once();
      }

      v10 = sub_1C4F00978();
      sub_1C43FCEE8(v10, qword_1EDE2DF70);
      v11 = sub_1C4F00968();
      sub_1C4F01CD8();
      v12 = sub_1C4404760();
      if (os_log_type_enabled(v12, v13))
      {
        sub_1C43FD1A8();
        *swift_slowAlloc() = 0;
        sub_1C43FFFD8(&dword_1C43F8000, v14, v15, "VectorDBArtifact: Input address is empty after preprocessing");
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }
    }
  }

  else
  {
    sub_1C4420C3C(v0 + 16, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  v7 = sub_1C43FD5F0();

  return v8(v7);
}

uint64_t sub_1C4B97C14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4703368;

  return sub_1C4B976E0();
}

uint64_t sub_1C4B97CAC()
{
  v4 = sub_1C4415CE8();
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C443F3A4();
  if (!v6)
  {
    v16 = sub_1C447FA64();
    sub_1C43FFB2C(&type metadata for VectorDB.EmbeddingDatabaseError, v16);
    *v17 = 0xD000000000000046;
    *(v17 + 8) = v2;
    v18 = 1;
LABEL_10:
    *(v17 + 16) = v18;
    swift_willThrow();
    sub_1C4407D0C();
    sub_1C443CDD0(v1, v22);
    type metadata accessor for NLContextualEmbeddingAssetLoader(0);
    sub_1C44057E8();
    swift_deallocPartialClassInstance();
    return sub_1C445EA10();
  }

  v7 = [objc_opt_self() contextualEmbeddingWithLanguage_];
  if (!v7)
  {
    v19 = sub_1C4B9B1DC();
    v20 = sub_1C43FFB2C(&type metadata for VectorDB.EmbeddingDatabaseError, v19);
    sub_1C447F314(v20, v21);
    goto LABEL_10;
  }

  v8 = v7;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v9 = sub_1C4F00978();
  sub_1C442B738(v9, qword_1EDE2DF70);
  v10 = sub_1C4F00968();
  sub_1C4F01CB8();
  v11 = sub_1C4404760();
  if (os_log_type_enabled(v11, v12))
  {
    sub_1C43FD1A8();
    *swift_slowAlloc() = 0;
    sub_1C4407324(&dword_1C43F8000, v13, v14, "VectorDBArtifact: Using (NLContextualEmbedding) as the text embedding provider.");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32NLContextualEmbeddingAssetLoader_embeddingModel) = v8;
  sub_1C44204B8();
  sub_1C4B9B230(v1, v3, v15);
  sub_1C442ED58();
  sub_1C441D3EC();
  return sub_1C445EA10();
}

uint64_t sub_1C4B97EBC()
{
  sub_1C43FCF70();
  v1 = *(v0[19] + OBJC_IVAR____TtC24IntelligencePlatformCore32NLContextualEmbeddingAssetLoader_embeddingModel);
  if ([v1 hasAvailableAssets])
  {
    sub_1C43FBDA0();

    return v2();
  }

  else
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1C4B98024;
    v4 = swift_continuation_init();
    v0[17] = sub_1C456902C(&qword_1EC0C4150, &unk_1C4F57A30);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1C4B981B0;
    v0[13] = &unk_1F43FF940;
    v0[14] = v4;
    [v1 requestAssetsWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1C4B98024()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 160) = v4;
  if (v4)
  {
    v5 = sub_1C4B9814C;
  }

  else
  {
    v5 = sub_1C4B98128;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C4B9814C()
{
  sub_1C43FCF70();
  swift_willThrow();
  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4B981B0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C4409678((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_1C467BF20();
  }

  else
  {

    return sub_1C467BF1C();
  }
}

uint64_t sub_1C4B98234()
{
  sub_1C43FBCD4();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1C4B982C0, 0, 0);
}

uint64_t sub_1C4B982C0()
{
  sub_1C43FEAEC();
  sub_1C43FC948();
  sub_1C4403860();

  if (!v0[5])
  {
    sub_1C4420C3C((v0 + 2), &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_6;
  }

  if ((sub_1C43FDF34() & 1) == 0)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  v1 = *(v0[9] + OBJC_IVAR____TtC24IntelligencePlatformCore32NLContextualEmbeddingAssetLoader_embeddingModel);
  v2 = sub_1C44CF75C([v1 maximumSequenceLength], v0[6], v0[7]);
  v3 = MEMORY[0x1C693FEF0](v2);
  v5 = v4;

  v6 = *MEMORY[0x1E6977748];
  v0[2] = 0;
  v7 = sub_1C4B9ACA8(v3, v5, v6, (v0 + 2), v1);
  v8 = v0[2];
  if (v7)
  {
    v9 = v7;
    v10 = v8;
    v11 = sub_1C4EF9A68();
    v13 = v12;

    v14 = sub_1C4B94580(v11, v13);
    sub_1C4434000(v11, v13);
LABEL_7:
    sub_1C43FBCF0();

    return v15(v14);
  }

  v17 = v8;
  sub_1C4EF97A8();

  swift_willThrow();
  sub_1C43FBDA0();

  return v18();
}

void *sub_1C4B984CC@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result && (v4 = result, v5 = a2 - result, (a2 - result + 3) >= 7))
  {
    v7 = v5 / 4;
    if (v5 <= 3)
    {
      v8 = 4 * v7;
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1C456902C(&qword_1EC0B8998, &qword_1C4F0DDB0);
      v8 = 4 * v7;
      v6 = swift_allocObject();
      v9 = j__malloc_size(v6);
      v6[2] = v7;
      v6[3] = 2 * ((v9 - 32) / 4);
    }

    result = memcpy(v6 + 4, v4, v8);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1C4B985F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4703368;

  return sub_1C4B98234();
}

uint64_t sub_1C4B9868C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C4B97EA4();
}

uint64_t sub_1C4B98740()
{
  v4 = sub_1C4415CE8();
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C443F3A4();
  if (!v6)
  {
    v16 = sub_1C447FA64();
    sub_1C43FFB2C(&type metadata for VectorDB.EmbeddingDatabaseError, v16);
    *v17 = 0xD00000000000003CLL;
    *(v17 + 8) = v2;
    v18 = 1;
LABEL_10:
    *(v17 + 16) = v18;
    swift_willThrow();
    sub_1C4407D0C();
    sub_1C443CDD0(v1, v22);
    type metadata accessor for NLEmbeddingAssetLoader(0);
    sub_1C44057E8();
    swift_deallocPartialClassInstance();
    return sub_1C445EA10();
  }

  v7 = [objc_opt_self() sentenceEmbeddingForLanguage_];
  if (!v7)
  {
    v19 = sub_1C4B9B1DC();
    v20 = sub_1C43FFB2C(&type metadata for VectorDB.EmbeddingDatabaseError, v19);
    sub_1C447F314(v20, v21);
    goto LABEL_10;
  }

  v8 = v7;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v9 = sub_1C4F00978();
  sub_1C442B738(v9, qword_1EDE2DF70);
  v10 = sub_1C4F00968();
  sub_1C4F01CB8();
  v11 = sub_1C4404760();
  if (os_log_type_enabled(v11, v12))
  {
    sub_1C43FD1A8();
    *swift_slowAlloc() = 0;
    sub_1C4407324(&dword_1C43F8000, v13, v14, "VectorDBArtifact: Using (NLEmbedding) as the text embedding provider.");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore22NLEmbeddingAssetLoader_embeddingModel) = v8;
  sub_1C44204B8();
  sub_1C4B9B230(v1, v3, v15);
  sub_1C442ED58();
  sub_1C441D3EC();
  return sub_1C445EA10();
}

uint64_t sub_1C4B98934(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return sub_1C43FFE30(sub_1C4B9894C);
}

uint64_t sub_1C4B9894C()
{
  sub_1C43FC948();
  sub_1C4403860();

  if (*(v0 + 40))
  {
    if (sub_1C43FDF34())
    {
      sub_1C4404C28();
      v2 = sub_1C4F01C38();
      if (v2)
      {
        v3 = v2;

        v4 = *(v3 + 16);
        if (v4)
        {
          v21 = MEMORY[0x1E69E7CC0];
          sub_1C459D3B0(0, v4, 0);
          v5 = *(v21 + 16);
          v6 = 32;
          do
          {
            v7 = *(v3 + v6);
            v8 = *(v21 + 24);
            if (v5 >= v8 >> 1)
            {
              sub_1C459D3B0((v8 > 1), v5 + 1, 1);
            }

            v9 = v7;
            *(v21 + 16) = v5 + 1;
            *(v21 + 4 * v5 + 32) = v9;
            v6 += 8;
            ++v5;
            --v4;
          }

          while (v4);
        }
      }

      else
      {
        if (qword_1EDDFECD0 != -1)
        {
          sub_1C4400FC0();
          swift_once();
        }

        v13 = sub_1C4F00978();
        sub_1C43FCEE8(v13, qword_1EDE2DF70);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v14 = sub_1C4F00968();
        v15 = sub_1C4F01CD8();

        if (os_log_type_enabled(v14, v15))
        {
          sub_1C43FD084();
          v22 = sub_1C4402BBC();
          *v1 = 136315138;
          v16 = sub_1C4404C28();
          v19 = sub_1C441D828(v16, v17, v18);

          *(v1 + 4) = v19;
          sub_1C440A610(&dword_1C43F8000, v20, v15, "NLEmbeddingAssetLoader: Input string (%s) cannot be encoded.");
          sub_1C440962C(v22);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
        }
      }
    }
  }

  else
  {
    sub_1C4420C3C(v0 + 16, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  v10 = sub_1C43FD5F0();

  return v11(v10);
}

uint64_t sub_1C4B98C18(void *a1)
{
  sub_1C4B963D8();

  sub_1C44366B4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4B98CAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C4703368;

  return sub_1C4B98934(a1);
}

uint64_t sub_1C4B98D44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C46FDBC8;

  return sub_1C4B94DA4();
}

uint64_t sub_1C4B98DF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return sub_1C4B962E0();
}

uint64_t sub_1C4B98EA0(uint64_t a1)
{
  v4 = v1;
  v6 = type metadata accessor for VectorDB.Config(0);
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  sub_1C4F009E8();
  sub_1C43FCDF8();
  v81 = v12;
  v82 = v11;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v83 = v14 - v13;
  sub_1C4EFF988();
  sub_1C43FCDF8();
  v79 = v16;
  v80 = v15;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v17 = sub_1C456902C(&qword_1EC0C4160, &qword_1C4F57A50);
  v18 = sub_1C43FBD18(v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v70 - v19;
  v21 = sub_1C4F009D8();
  sub_1C43FCDF8();
  v88 = v22;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBD08();
  v78 = v24 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v87 = &v70 - v27;
  sub_1C4EF9E48();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v29);
  v91 = &v70 - v33;
  if (!*(a1 + 56) || (v34 = *(a1 + 64)) == 0)
  {
    v56 = sub_1C4B9B1DC();
    sub_1C43FFB2C(&type metadata for VectorDB.EmbeddingDatabaseError, v56);
    sub_1C445FEC0(v57, 0xD000000000000036);
    goto LABEL_22;
  }

  v72 = v3;
  v73 = v32;
  v84 = v21;
  v85 = v31;
  v75 = v10;
  v76 = v2;
  v86 = v30;
  v35 = sub_1C44735D4(0x656C61636F6CLL, 0xE600000000000000, v34);
  if (v36)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0x53552D6E65;
  }

  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0xE500000000000000;
  }

  v39 = sub_1C44735D4(0x547265646F636E65, 0xEB00000000657079, v34);
  if (v40)
  {
    v41 = v39;
  }

  else
  {
    v41 = 0x656D656870617267;
  }

  if (v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = 0xE800000000000000;
  }

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v43 = sub_1C4F00978();
  v44 = sub_1C442B738(v43, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v74 = v44;
  v45 = sub_1C4F00968();
  v46 = sub_1C4F01CC8();

  v47 = os_log_type_enabled(v45, v46);
  v77 = a1;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71 = v4;
    v89 = v49;
    *v48 = 136315394;
    *(v48 + 4) = sub_1C441D828(v37, v38, &v89);
    *(v48 + 12) = 2080;
    *(v48 + 14) = sub_1C441D828(v41, v42, &v89);
    _os_log_impl(&dword_1C43F8000, v45, v46, "VectorDBArtifact: PhoneticEmbedder with locale: (%s) and encoderType: (%s) ", v48, 0x16u);
    swift_arrayDestroy();
    v4 = v71;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v50 = v91;
  sub_1C4EF9D48();
  sub_1C4B996DC(v41, v42, v20);
  v51 = v84;
  if (sub_1C44157D4(v20, 1, v84) == 1)
  {
    sub_1C4420C3C(v20, &qword_1EC0C4160, &qword_1C4F57A50);
    v89 = 0;
    v90 = 0xE000000000000000;
    sub_1C4F02248();

    v89 = 0xD000000000000015;
    v90 = 0x80000001C4FB4220;
    MEMORY[0x1C6940010](v41, v42);

    MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4FB4240);
    v52 = v89;
    v53 = v90;
    v54 = sub_1C4B9B1DC();
    sub_1C43FFB2C(&type metadata for VectorDB.EmbeddingDatabaseError, v54);
    *v55 = v52;
    *(v55 + 8) = v53;
    *(v55 + 16) = 1;
    swift_willThrow();
    (*(v85 + 8))(v50, v86);
    a1 = v77;
LABEL_22:
    sub_1C443CDD0(a1, type metadata accessor for VectorDB.Config);
    type metadata accessor for EuclidEmbeddingAssetLoader(0);
    swift_deallocPartialClassInstance();
    return v4;
  }

  v58 = v87;
  v59 = v88;
  (*(v88 + 32))(v87, v20, v51);
  (*(v85 + 16))(v73, v50, v86);
  v60 = v79;
  v61 = v80;
  v62 = v72;
  (*(v79 + 104))(v72, *MEMORY[0x1E69A9A50], v80);
  v71 = sub_1C4EFF978();
  (*(v60 + 8))(v62, v61);
  (*(v59 + 16))(v78, v58, v51);
  (*(v81 + 104))(v83, *MEMORY[0x1E697B940], v82);
  sub_1C4F00A18();
  swift_allocObject();
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore26EuclidEmbeddingAssetLoader_embeddingModel) = sub_1C4F00A08();
  v63 = sub_1C4F00968();
  v64 = sub_1C4F01CB8();
  if (os_log_type_enabled(v63, v64))
  {
    sub_1C43FD1A8();
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_1C43F8000, v63, v64, "VectorDBArtifact: Using (PhoneticEmbedder) as the text embedding provider.", v65, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v66 = v77;
  v67 = v75;
  sub_1C4B9B230(v77, v75, type metadata accessor for VectorDB.Config);
  sub_1C4B960D0(v67);
  (*(v88 + 8))(v87, v84);
  (*(v85 + 8))(v91, v86);
  sub_1C4407D0C();
  sub_1C443CDD0(v66, v68);
  return v4;
}

uint64_t sub_1C4B996DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x656D656870617267 && a2 == 0xE800000000000000;
  if (v6 || (sub_1C4F02938() & 1) != 0)
  {
    v8 = MEMORY[0x1E697B938];
LABEL_7:
    v9 = *v8;
    v10 = sub_1C4F009D8();
    sub_1C43FBCE0();
    (*(v11 + 104))(a3, v9, v10);
    v12 = a3;
    v13 = 0;
    v14 = v10;
    goto LABEL_8;
  }

  v16 = a1 == 0x656D656E6F6870 && a2 == 0xE700000000000000;
  if (v16 || (sub_1C4F02938() & 1) != 0)
  {
    v8 = MEMORY[0x1E697B930];
    goto LABEL_7;
  }

  v14 = sub_1C4F009D8();
  v12 = a3;
  v13 = 1;
LABEL_8:

  return sub_1C440BAA8(v12, v13, 1, v14);
}

uint64_t sub_1C4B99808(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return sub_1C43FFE30(sub_1C4B99820);
}

uint64_t sub_1C4B99820()
{
  sub_1C43FCF70();
  sub_1C43FC948();
  sub_1C4403860();

  if (v0[5])
  {
    if (sub_1C43FDF34())
    {
      v1 = v0[9];
      v3 = v0[6];
      v2 = v0[7];
      v0[10] = v3;
      v0[11] = v2;
      v0[12] = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore26EuclidEmbeddingAssetLoader_embeddingModel);
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v4 = swift_allocObject();
      v0[13] = v4;
      *(v4 + 16) = xmmword_1C4F0D130;
      *(v4 + 32) = v3;
      *(v4 + 40) = v2;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v5 = swift_task_alloc();
      v0[14] = v5;
      *v5 = v0;
      sub_1C43FC688(v5);

      return MEMORY[0x1EEDD8EC0](v4);
    }
  }

  else
  {
    sub_1C4420C3C((v0 + 2), &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  sub_1C43FBCF0();

  return v6(0);
}

uint64_t sub_1C4B999A0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 120) = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    v6 = sub_1C4B99E30;
  }

  else
  {

    v6 = sub_1C4B99AB0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C4B99AB0()
{
  v33 = v0;
  v2 = v0[15];
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v4 = *(v3 + 16);
    if (v4 == sub_1C4F009F8())
    {

      if (v4)
      {
        v32 = MEMORY[0x1E69E7CC0];
        sub_1C459D3B0(0, v4, 0);
        v5 = v32;
        v6 = v32[2];
        v7 = 32;
        do
        {
          v8 = *(v3 + v7);
          v32 = v5;
          v9 = *(v5 + 24);
          if (v6 >= v9 >> 1)
          {
            sub_1C459D3B0((v9 > 1), v6 + 1, 1);
            v5 = v32;
          }

          v10 = v8;
          *(v5 + 16) = v6 + 1;
          *(v5 + 4 * v6 + 32) = v10;
          v7 += 8;
          ++v6;
          --v4;
        }

        while (v4);
      }

      goto LABEL_20;
    }

    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v20 = sub_1C4F00978();
    sub_1C43FCEE8(v20, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v12 = sub_1C4F00968();
    v21 = sub_1C4F01CD8();

    v22 = os_log_type_enabled(v12, v21);
    v23 = v0[11];
    if (v22)
    {
      v24 = v0[10];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315394;
      sub_1C441D828(v24, v23, &v32);

      sub_1C442F3F0();
      *(v25 + 14) = v23;

      sub_1C4423818(&dword_1C43F8000, v27, v28, "PhoneticEmbedder: Input string (%s) vector has %ld dimensions.");
      sub_1C440962C(v26);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      goto LABEL_17;
    }

    swift_bridgeObjectRelease_n();
  }

  else
  {

    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v11 = sub_1C4F00978();
    sub_1C43FCEE8(v11, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v12 = sub_1C4F00968();
    v13 = sub_1C4F01CD8();

    if (os_log_type_enabled(v12, v13))
    {
      sub_1C43FD084();
      v14 = sub_1C4402BBC();
      v32 = v14;
      *v1 = 136315138;
      v15 = sub_1C44057DC();
      v18 = sub_1C441D828(v15, v16, v17);

      *(v1 + 4) = v18;
      sub_1C440A610(&dword_1C43F8000, v19, v13, "PhoneticEmbedder: Input string (%s) cannot be encoded.");
      sub_1C440962C(v14);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
LABEL_17:
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      goto LABEL_21;
    }
  }

LABEL_20:

LABEL_21:
  v29 = sub_1C43FD5F0();

  return v30(v29);
}

uint64_t sub_1C4B99E30()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4B99F04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C4703368;

  return sub_1C4B99808(a1);
}

uint64_t sub_1C4B99FC0()
{
  v4 = sub_1C4415CE8();
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C443F3A4();
  if (!v6)
  {
    v15 = sub_1C4B9B1DC();
    sub_1C43FFB2C(&type metadata for VectorDB.EmbeddingDatabaseError, v15);
    sub_1C445FEC0(v16, 0xD000000000000043);
    goto LABEL_9;
  }

  sub_1C4EFFD68();
  v7 = sub_1C4EFFD58();
  if (v2)
  {
LABEL_9:
    sub_1C4407D0C();
    sub_1C443CDD0(v1, v17);
    type metadata accessor for UniversalEmbeddingAssetLoader(0);
    sub_1C44057E8();
    swift_deallocPartialClassInstance();
    return v0;
  }

  *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore29UniversalEmbeddingAssetLoader_client) = v7;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2DF70);
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CB8();
  v11 = sub_1C4404760();
  if (os_log_type_enabled(v11, v12))
  {
    sub_1C43FD1A8();
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C43F8000, v9, v10, "VectorDBArtifact: Using (UniversalEmbedding) as the text embedding provider.", v13, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C44204B8();
  sub_1C4B9B230(v1, v3, v14);
  sub_1C442ED58();
  sub_1C443CDD0(v1, v10);
  return v0;
}

uint64_t sub_1C4B9A19C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return sub_1C43FFE30(sub_1C4B9A1B4);
}

uint64_t sub_1C4B9A1B4()
{
  sub_1C43FCF70();
  sub_1C43FC948();
  sub_1C4403860();

  if (v0[5])
  {
    if (sub_1C43FDF34())
    {
      v2 = v0[6];
      v1 = v0[7];
      v0[10] = v2;
      v0[11] = v1;
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v3 = swift_allocObject();
      v0[12] = v3;
      *(v3 + 16) = xmmword_1C4F0D130;
      *(v3 + 32) = v2;
      *(v3 + 40) = v1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = swift_task_alloc();
      v0[13] = v4;
      *v4 = v0;
      sub_1C43FC688(v4);

      return MEMORY[0x1EEE13BF0](v3);
    }
  }

  else
  {
    sub_1C4420C3C((v0 + 2), &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  sub_1C43FBCF0();

  return v5(0);
}

uint64_t sub_1C4B9A330()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 112) = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    v6 = sub_1C4B9A710;
  }

  else
  {

    v6 = sub_1C4B9A440;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C4B9A440()
{
  v26 = v0;
  v2 = v0[14];
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    if (*(v3 + 16) == 512)
    {

      goto LABEL_17;
    }

    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C43FCEE8(v14, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v5 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();

    v16 = os_log_type_enabled(v5, v15);
    v17 = v0[11];
    if (v16)
    {
      v18 = v0[10];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315394;
      sub_1C441D828(v18, v17, &v25);

      sub_1C442F3F0();
      *(v19 + 14) = v17;

      sub_1C4423818(&dword_1C43F8000, v21, v22, "UniversalEmbeddingModelClient: Input string (%s) vector has %ld dimensions.");
      sub_1C440962C(v20);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      goto LABEL_12;
    }

    swift_bridgeObjectRelease_n();

LABEL_15:

    goto LABEL_16;
  }

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v4 = sub_1C4F00978();
  sub_1C43FCEE8(v4, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CD8();

  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_15;
  }

  sub_1C43FD084();
  v7 = sub_1C4402BBC();
  v25 = v7;
  *v1 = 136315138;
  v8 = sub_1C44057DC();
  v11 = sub_1C441D828(v8, v9, v10);

  *(v1 + 4) = v11;
  sub_1C440A610(&dword_1C43F8000, v12, v6, "UniversalEmbeddingModelClient: Input string (%s) cannot be encoded.");
  sub_1C440962C(v7);
  sub_1C43FBCFC();
  MEMORY[0x1C6942830](v13);
LABEL_12:
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();

LABEL_16:
  v3 = 0;
LABEL_17:
  sub_1C43FBCF0();

  return v23(v3);
}

uint64_t sub_1C4B9A710()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4B9A77C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1C4EFC2D8();
  sub_1C43FBCE0();
  v6 = *(v5 + 104);

  return v6(a2, v3, v4);
}

uint64_t sub_1C4B9A7F8()
{
  sub_1C4B963D8();

  sub_1C44366B4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4B9A8C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC24IntelligencePlatformCore11AssetLoader_idAttribute;
  sub_1C4EFC308();
  sub_1C43FBCE0();
  v7 = *(v6 + 16);

  return v7(a1, v3 + v4, v5);
}

uint64_t sub_1C4B9A93C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C4703368;

  return sub_1C4B9A19C(a1);
}

char *sub_1C4B9A9D4(char *a1, uint64_t a2)
{
  if (!a1 || (a2 - a1 + 3) < 7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = (a2 - a1) / 4;
  v3 = sub_1C497EDBC();
  result = sub_1C497FCC8((v3 + 32), v4, a1, v4);
  if (v6 == v4)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4B9AA60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4B9AAA8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1C4F013D8();
    sub_1C4402518(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1C6940060](15, a1 >> 16);
    sub_1C4402518(v3);
    return v4 | 8;
  }
}

void *sub_1C4B9AB04(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v7 = WORD2(a2);
  v6 = a2;
  result = sub_1C4B984CC(&v5, &v5 + BYTE6(a2), &v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

char *sub_1C4B9AB80(uint64_t a1, uint64_t a2)
{
  result = sub_1C4EF9538();
  v5 = result;
  if (result)
  {
    result = sub_1C4EF9568();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_1C4EF9558();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = &v5[v9];
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return sub_1C4B9A9D4(v5, v11);
}