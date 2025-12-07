void sub_1CF46DAC0(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, int64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>)
{
  if ((*(v8 + 448) & 3) != 0 || (*(v8 + 240) & 2) != 0 || *(v8 + 160) > 2u)
  {
LABEL_11:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v13 = 0x80;
LABEL_12:
    *(a3 + 24) = v13;
    return;
  }

  if (!*(v8 + 160))
  {
    v12 = *(v8 + 144);
    if (v12 != 4096 && v12 != 0x2000 && v12 != 0x4000)
    {
      *a3 = 0xD000000000000016;
      *(a3 + 8) = 0x80000001CFA45910;
      *(a3 + 16) = v12;
      *(a3 + 24) = 0;
      return;
    }

    goto LABEL_11;
  }

  if (*(v8 + 160) != 1)
  {
    v10 = 0x80000001CFA458E0;
    v11 = 0xD000000000000020;
    goto LABEL_15;
  }

  if (*(v8 + 368) == 2)
  {
    v10 = 0x80000001CFA458A0;
    v11 = 0xD000000000000034;
LABEL_15:
    *a3 = v11;
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v13 = 1;
    goto LABEL_12;
  }

  v14 = *(v8 + 232);
  if (*(v8 + 8) != 255 && *(v8 + 248) && *(v8 + 344) == 1)
  {
    v10 = 0x80000001CFA45870;
    v11 = 0xD00000000000002ALL;
    goto LABEL_15;
  }

  sub_1CF3FA99C(result, a2 & 1, v18, a4, a5, a6, a7, a8);
  if (!v9)
  {
    if (LOBYTE(v18[0]) == 89)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0x80;
    }

    else
    {
      v16 = v18[1];
      *a3 = LOBYTE(v18[0]);
      *(a3 + 8) = v16;
      *(a3 + 16) = v14;
      *(a3 + 24) = 64;
      v17 = v14;
    }
  }
}

void sub_1CF46DC58(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, int64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>)
{
  if ((*(v8 + 448) & 3) != 0 || (*(v8 + 200) & 2) != 0 || *(v8 + 120) > 2u)
  {
LABEL_11:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v13 = 0x80;
LABEL_12:
    *(a3 + 24) = v13;
    return;
  }

  if (!*(v8 + 120))
  {
    v12 = *(v8 + 104);
    if (v12 != 4096 && v12 != 0x2000 && v12 != 0x4000)
    {
      *a3 = 0xD000000000000016;
      *(a3 + 8) = 0x80000001CFA45910;
      *(a3 + 16) = v12;
      *(a3 + 24) = 0;
      return;
    }

    goto LABEL_11;
  }

  if (*(v8 + 120) != 1)
  {
    v10 = 0x80000001CFA458E0;
    v11 = 0xD000000000000020;
    goto LABEL_15;
  }

  if (*(v8 + 368) == 2)
  {
    v10 = 0x80000001CFA458A0;
    v11 = 0xD000000000000034;
LABEL_15:
    *a3 = v11;
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v13 = 1;
    goto LABEL_12;
  }

  v14 = *(v8 + 192);
  if (*v8 && *(v8 + 216) != 255 && *(v8 + 344) == 1)
  {
    v10 = 0x80000001CFA45870;
    v11 = 0xD00000000000002ALL;
    goto LABEL_15;
  }

  sub_1CF3F9E7C(result, a2 & 1, v18, a4, a5, a6, a7, a8);
  if (!v9)
  {
    if (LOBYTE(v18[0]) == 89)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0x80;
    }

    else
    {
      v16 = v18[1];
      *a3 = LOBYTE(v18[0]);
      *(a3 + 8) = v16;
      *(a3 + 16) = v14;
      *(a3 + 24) = 64;
      v17 = v14;
    }
  }
}

uint64_t sub_1CF46DDF0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v92, "<activity:");
  BYTE3(v92[1]) = 0;
  HIDWORD(v92[1]) = -369098752;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v13 = v12;
  v14 = *(v9 + 8);
  result = v14(v11, v8);
  v16 = v13 * 1000000000.0;
  if (COERCE__INT64(fabs(v13 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = sub_1CF065A84(v16, a3);
  v19 = v18;
  MEMORY[0x1D3868CC0](v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
  v28 = v92[0];
  v27 = v92[1];
  strcpy(v92, " expiration:");
  BYTE5(v92[1]) = 0;
  HIWORD(v92[1]) = -5120;
  if ((a2 & 1) == 0)
  {
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v32 = v31;
    result = v14(v11, v8);
    v33 = v32 * 1000000000.0;
    if (COERCE__INT64(fabs(v32 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v33 > -9.22337204e18)
      {
        if (v33 < 9.22337204e18)
        {
          v30 = sub_1CF065A84(v33, a1);
          v29 = v34;
          goto LABEL_10;
        }

LABEL_22:
        __break(1u);
        return result;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v29 = 0xE600000000000000;
  v30 = 0x3E656E6F6E3CLL;
LABEL_10:
  MEMORY[0x1D3868CC0](v30, v29);
  v29, v35, v36, v37, v38, v39, v40, v41;
  v42 = v92[0];
  v43 = v92[1];
  v92[0] = v28;
  v92[1] = v27;

  MEMORY[0x1D3868CC0](v42, v43);
  v27, v44, v45, v46, v47, v48, v49, v50;
  v43, v51, v52, v53, v54, v55, v56, v57;
  v59 = v92[0];
  v58 = v92[1];
  v92[0] = 0;
  v92[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v92[1], v60, v61, v62, v63, v64, v65, v66;
  v92[0] = 0xD000000000000010;
  v92[1] = 0x80000001CFA46E80;
  if (a4)
  {
    v67 = 1702195828;
  }

  else
  {
    v67 = 0x65736C6166;
  }

  if (a4)
  {
    v68 = 0xE400000000000000;
  }

  else
  {
    v68 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v67, v68);
  v68, v69, v70, v71, v72, v73, v74, v75;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  v76 = v92[0];
  v77 = v92[1];
  v92[0] = v59;
  v92[1] = v58;

  MEMORY[0x1D3868CC0](v76, v77);
  v58, v78, v79, v80, v81, v82, v83, v84;
  v77, v85, v86, v87, v88, v89, v90, v91;
  return v92[0];
}

uint64_t sub_1CF46E134()
{
  if (*(*v0 + 16))
  {
    return 0;
  }

  if (*(*(v0 + 8) + 16))
  {
    return 0;
  }

  if (*(*(v0 + 16) + 16))
  {
    return 0;
  }

  if (*(*(v0 + 24) + 16))
  {
    return 0;
  }

  return (*(v0 + 41) ^ 1) & 1;
}

void sub_1CF46E194(void *a1)
{
  v2 = v1;
  if ((sub_1CF46E134() & 1) != 0 && !*(v1[4] + 16))
  {
    v446 = a1[3];
    v447 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v446);
    sub_1CF4FB2BC(0xD000000000000022, 0x80000001CFA46E50, v446, v447);
    return;
  }

  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  sub_1CF9E7948();
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  if (v1[5])
  {
    v12 = 0x6F6C667265766F20;
  }

  else
  {
    v12 = 0;
  }

  if (v1[5])
  {
    v13 = 0xED000021676E6977;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x1D3868CC0](v12, v13);
  v13, v14, v15, v16, v17, v18, v19, v20;
  sub_1CF4FB2BC(0xD000000000000016, 0x80000001CFA46DB0, v3, v4);
  0x80000001CFA46DB0, v21, v22, v23, v24, v25, v26, v27;
  v28 = *v1;
  v450 = v1;
  if (!*(*v1 + 16))
  {
    goto LABEL_31;
  }

  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);

  sub_1CF9E7948();
  0xE000000000000000, v31, v32, v33, v34, v35, v36, v37;
  v38 = sub_1CF9E7F98();
  v40 = v39;
  MEMORY[0x1D3868CC0](v38);
  v40, v41, v42, v43, v44, v45, v46, v47;
  sub_1CF4FB2BC(0xD000000000000011, 0x80000001CFA46DD0, v29, v30);
  0x80000001CFA46DD0, v48, v49, v50, v51, v52, v53, v54;
  v55 = 0;
  v56 = v28 + 64;
  v57 = 1 << *(v28 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & *(v28 + 64);
  v60 = (v57 + 63) >> 6;
  v448 = v28;
  while (v59)
  {
LABEL_21:
    v98 = __clz(__rbit64(v59)) | (v55 << 6);
    v99 = *(v28 + 48) + 16 * v98;
    v100 = *v99;
    v101 = *(v99 + 8);
    v102 = *(v28 + 56) + 32 * v98;
    v453 = *v102;
    v103 = *(v102 + 8);
    v104 = *(v102 + 16);
    v451 = *(v102 + 24);
    v105 = a1[3];
    v457 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v105);
    if (!v101)
    {
      v463 = 0x284449636F64;
      v466 = 0xE600000000000000;
LABEL_14:
      v61 = sub_1CF9E7F98();
      v63 = v62;
      MEMORY[0x1D3868CC0](v61);
      v63, v64, v65, v66, v67, v68, v69, v70;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v71 = v463;
      v72 = v466;
      goto LABEL_15;
    }

    if (v101 == 1)
    {
      v463 = 0x284449656C6966;
      v466 = 0xE700000000000000;
      goto LABEL_14;
    }

    if (v100)
    {
      v71 = 0x6873617274;
    }

    else
    {
      v71 = 1953460082;
    }

    if (v100)
    {
      v72 = 0xE500000000000000;
    }

    else
    {
      v72 = 0xE400000000000000;
    }

LABEL_15:
    v59 &= v59 - 1;
    MEMORY[0x1D3868CC0](v71, v72);
    v72, v73, v74, v75, v76, v77, v78, v79;
    MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
    v80 = sub_1CF46DDF0(v453, v103, v104, v451);
    v82 = v81;
    MEMORY[0x1D3868CC0](v80);
    v82, v83, v84, v85, v86, v87, v88, v89;
    sub_1CF4FB2BC(538976288, 0xE400000000000000, v105, v457);
    0xE400000000000000, v90, v91, v92, v93, v94, v95, v96;
    v28 = v448;
    v2 = v450;
  }

  while (1)
  {
    v97 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      goto LABEL_123;
    }

    if (v97 >= v60)
    {
      break;
    }

    v59 = *(v56 + 8 * v97);
    ++v55;
    if (v59)
    {
      v55 = v97;
      goto LABEL_21;
    }
  }

LABEL_31:
  v106 = v2[1];
  if (*(v106 + 16))
  {
    v107 = a1[3];
    v108 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v107);

    sub_1CF9E7948();
    0xE000000000000000, v109, v110, v111, v112, v113, v114, v115;
    v116 = sub_1CF9E7F98();
    v118 = v117;
    MEMORY[0x1D3868CC0](v116);
    v118, v119, v120, v121, v122, v123, v124, v125;
    sub_1CF4FB2BC(0xD000000000000015, 0x80000001CFA46DF0, v107, v108);
    0x80000001CFA46DF0, v126, v127, v128, v129, v130, v131, v132;
    v133 = 0;
    v449 = v106;
    v134 = v106 + 64;
    v135 = 1 << *(v106 + 32);
    v136 = -1;
    if (v135 < 64)
    {
      v136 = ~(-1 << v135);
    }

    v137 = v136 & *(v106 + 64);
    v138 = (v135 + 63) >> 6;
    if (v137)
    {
      while (1)
      {
        v139 = v133;
LABEL_40:
        v140 = __clz(__rbit64(v137));
        v137 &= v137 - 1;
        v141 = v140 | (v139 << 6);
        v142 = *(*(v449 + 48) + 8 * v141);
        v143 = *(v449 + 56) + 32 * v141;
        v454 = *v143;
        v452 = *(v143 + 8);
        v144 = *(v143 + 16);
        v145 = *(v143 + 24);
        v146 = a1[3];
        v458 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v146);
        v147 = v142;
        v148 = NSFileProviderItemIdentifier.description.getter(v147);
        v150 = v149;
        MEMORY[0x1D3868CC0](v148);
        v150, v151, v152, v153, v154, v155, v156, v157;
        MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
        v158 = sub_1CF46DDF0(v454, v452, v144, v145);
        v160 = v159;
        MEMORY[0x1D3868CC0](v158);
        v160, v161, v162, v163, v164, v165, v166, v167;
        sub_1CF4FB2BC(538976288, 0xE400000000000000, v146, v458);

        0xE400000000000000, v168, v169, v170, v171, v172, v173, v174;
        if (!v137)
        {
          goto LABEL_36;
        }
      }
    }

    while (1)
    {
LABEL_36:
      v139 = v133 + 1;
      if (__OFADD__(v133, 1))
      {
        goto LABEL_124;
      }

      if (v139 >= v138)
      {
        break;
      }

      v137 = *(v134 + 8 * v139);
      ++v133;
      if (v137)
      {
        v133 = v139;
        goto LABEL_40;
      }
    }

    v2 = v450;
  }

  v175 = v2[2];
  if (!*(v175 + 16) && !*(v2[3] + 16))
  {
    goto LABEL_95;
  }

  v176 = a1[3];
  v177 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v176);

  sub_1CF9E7948();
  0xE000000000000000, v178, v179, v180, v181, v182, v183, v184;
  if (__OFADD__(*(v175 + 16), *(v2[3] + 16)))
  {
    goto LABEL_126;
  }

  v456 = v2[3];

  v185 = sub_1CF9E7F98();
  v187 = v186;
  MEMORY[0x1D3868CC0](v185);
  v187, v188, v189, v190, v191, v192, v193, v194;
  sub_1CF4FB2BC(0xD000000000000018, 0x80000001CFA46E10, v176, v177);
  0x80000001CFA46E10, v195, v196, v197, v198, v199, v200, v201;
  v202 = 0;
  v203 = 1 << *(v175 + 32);
  v204 = -1;
  if (v203 < 64)
  {
    v204 = ~(-1 << v203);
  }

  v205 = v204 & *(v175 + 56);
  v206 = (v203 + 63) >> 6;
LABEL_52:
  if (v205)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v233 = v202 + 1;
    if (__OFADD__(v202, 1))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    if (v233 >= v206)
    {
      break;
    }

    v205 = *(v175 + 56 + 8 * v233);
    ++v202;
    if (v205)
    {
      v202 = v233;
LABEL_57:
      v234 = *(v175 + 48) + ((v202 << 10) | (16 * __clz(__rbit64(v205))));
      v235 = *v234;
      v236 = *(v234 + 8);
      v237 = a1[3];
      v238 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v237);
      if (!v236)
      {
        v464 = 0x284449636F64;
        v467 = 0xE600000000000000;
        goto LABEL_50;
      }

      if (v236 == 1)
      {
        v464 = 0x284449656C6966;
        v467 = 0xE700000000000000;
LABEL_50:
        v207 = sub_1CF9E7F98();
        v209 = v208;
        MEMORY[0x1D3868CC0](v207);
        v209, v210, v211, v212, v213, v214, v215, v216;
        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
        v217 = v464;
        v218 = v467;
      }

      else
      {
        if (v235)
        {
          v217 = 0x6873617274;
        }

        else
        {
          v217 = 1953460082;
        }

        if (v235)
        {
          v218 = 0xE500000000000000;
        }

        else
        {
          v218 = 0xE400000000000000;
        }
      }

      v205 &= v205 - 1;
      MEMORY[0x1D3868CC0](v217, v218);
      v218, v219, v220, v221, v222, v223, v224, v225;
      sub_1CF4FB2BC(0x3A736620202020, 0xE700000000000000, v237, v238);
      0xE700000000000000, v226, v227, v228, v229, v230, v231, v232;
      goto LABEL_52;
    }
  }

  v239 = 0;
  v240 = v456;
  v241 = 1 << *(v456 + 32);
  v242 = -1;
  if (v241 < 64)
  {
    v242 = ~(-1 << v241);
  }

  v243 = v242 & *(v456 + 56);
  v244 = (v241 + 63) >> 6;
  while (2)
  {
    if (v243)
    {
LABEL_77:
      v277 = *(*(v240 + 48) + ((v239 << 9) | (8 * __clz(__rbit64(v243)))));
      v278 = a1[3];
      v459 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v278);
      v279 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v281 = v280;
      v283 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v284 = v279;
      v285 = v282;
      if (v284 == v283 && v281 == v282)
      {
        v245 = v277;
        v281, v246, v247, v248, v249, v250, v251, v252;
        v285, v253, v254, v255, v256, v257, v258, v259;
      }

      else
      {
        v287 = sub_1CF9E8048();
        v288 = v277;
        v281, v289, v290, v291, v292, v293, v294, v295;
        v285, v296, v297, v298, v299, v300, v301, v302;
        if ((v287 & 1) == 0)
        {
          v303 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v305 = v304;
          v307 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v313 = v303;
          v314 = v306;
          if (v313 == v307 && v305 == v306)
          {
            v305, v306, v307, v308, v309, v310, v311, v312;
            v314, v349, v350, v351, v352, v353, v354, v355;
            v261 = 0x676E696B726F772ELL;
            v260 = 0xEB00000000746553;
          }

          else
          {
            v316 = sub_1CF9E8048();
            v305, v317, v318, v319, v320, v321, v322, v323;
            v314, v324, v325, v326, v327, v328, v329, v330;
            v261 = 0x676E696B726F772ELL;
            v260 = 0xEB00000000746553;
            if ((v316 & 1) == 0)
            {
              v331 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v333 = v332;
              v335 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v341 = v334;
              if (v331 == v335 && v333 == v334)
              {
                v333, v334, v335, v336, v337, v338, v339, v340;
                v341, v342, v343, v344, v345, v346, v347, v348;
              }

              else
              {
                v356 = sub_1CF9E8048();
                v333, v357, v358, v359, v360, v361, v362, v363;
                v341, v364, v365, v366, v367, v368, v369, v370;
                if ((v356 & 1) == 0)
                {
                  v261 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                  v260 = v371;
                  goto LABEL_71;
                }
              }

              v260 = 0xE600000000000000;
              v261 = 0x68736172742ELL;
            }
          }

LABEL_71:
          v243 &= v243 - 1;
          MEMORY[0x1D3868CC0](v261, v260);

          v260, v262, v263, v264, v265, v266, v267, v268;
          sub_1CF4FB2BC(0x3A706620202020, 0xE700000000000000, v278, v459);
          0xE700000000000000, v269, v270, v271, v272, v273, v274, v275;
          v240 = v456;
          continue;
        }
      }

      v260 = 0xE500000000000000;
      v261 = 0x746F6F722ELL;
      goto LABEL_71;
    }

    break;
  }

  while (1)
  {
    v276 = v239 + 1;
    if (__OFADD__(v239, 1))
    {
      goto LABEL_122;
    }

    if (v276 >= v244)
    {
      break;
    }

    v243 = *(v456 + 56 + 8 * v276);
    ++v239;
    if (v243)
    {
      v239 = v276;
      goto LABEL_77;
    }
  }

  v2 = v450;
LABEL_95:
  v372 = v2[4];
  if (!*(v372 + 16))
  {
    return;
  }

  v373 = a1[3];
  v374 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v373);

  sub_1CF9E7948();
  0xE000000000000000, v375, v376, v377, v378, v379, v380, v381;
  v382 = sub_1CF9E7F98();
  v384 = v383;
  MEMORY[0x1D3868CC0](v382);
  v384, v385, v386, v387, v388, v389, v390, v391;
  sub_1CF4FB2BC(0xD000000000000014, 0x80000001CFA46E30, v373, v374);
  0x80000001CFA46E30, v392, v393, v394, v395, v396, v397, v398;
  v399 = 0;
  v400 = v372 + 56;
  v401 = 1 << *(v372 + 32);
  v402 = -1;
  if (v401 < 64)
  {
    v402 = ~(-1 << v401);
  }

  v403 = v402 & *(v372 + 56);
  v404 = (v401 + 63) >> 6;
  v455 = v372;
  while (2)
  {
    if (v403)
    {
LABEL_106:
      v430 = *(v372 + 48) + ((v399 << 10) | (16 * __clz(__rbit64(v403))));
      v431 = *v430;
      v432 = *(v430 + 8);
      v433 = *(v430 + 9);
      v435 = a1[3];
      v434 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v435);
      if (v433)
      {
        v465 = 0x28726568746F2ELL;
        v468 = 0xE700000000000000;
        sub_1CEFD0988(v431, v432, 1);
        v405 = NSFileProviderItemIdentifier.description.getter(v431);
        v407 = v406;
      }

      else
      {
        v465 = 0x286E69616D2ELL;
        v468 = 0xE600000000000000;
        if (v432)
        {
          if (v432 != 1)
          {
            if (v431)
            {
              v405 = 0x6873617274;
            }

            else
            {
              v405 = 1953460082;
            }

            if (v431)
            {
              v407 = 0xE500000000000000;
            }

            else
            {
              v407 = 0xE400000000000000;
            }

            goto LABEL_100;
          }

          v461 = 0x284449656C6966;
          v462 = 0xE700000000000000;
        }

        else
        {
          v461 = 0x284449636F64;
          v462 = 0xE600000000000000;
        }

        v436 = sub_1CF9E7F98();
        v438 = v437;
        MEMORY[0x1D3868CC0](v436);
        v438, v439, v440, v441, v442, v443, v444, v445;
        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
        v405 = v461;
        v407 = v462;
      }

LABEL_100:
      MEMORY[0x1D3868CC0](v405);
      v407, v408, v409, v410, v411, v412, v413, v414;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v403 &= v403 - 1;
      MEMORY[0x1D3868CC0](v465, v468);
      v468, v415, v416, v417, v418, v419, v420, v421;
      sub_1CEFD0994(v431, v432, v433);
      sub_1CF4FB2BC(538976288, 0xE400000000000000, v435, v434);
      0xE400000000000000, v422, v423, v424, v425, v426, v427, v428;
      v372 = v455;
      continue;
    }

    break;
  }

  while (1)
  {
    v429 = v399 + 1;
    if (__OFADD__(v399, 1))
    {
      break;
    }

    if (v429 >= v404)
    {

      return;
    }

    v403 = *(v400 + 8 * v429);
    ++v399;
    if (v403)
    {
      v399 = v429;
      goto LABEL_106;
    }
  }

LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

void sub_1CF46F028(_TtC18FileProviderDaemon8FSTester *a1)
{
  v3 = sub_1CF9E6118();
  v117 = *(v3 - 8);
  v118 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v1;
  v6 = *(*(*(*(*(v1 + 128) + 32) + 16) + 136) + 24);

  v7 = sub_1CF9E6888();
  v6, v8, v9, v10, v11, v12, v13, v14;
  v116 = "- Disk phase for ";
  v121 = 0;
  v122 = 0xE000000000000000;
  sub_1CF9E7948();
  v122, v15, v16, v17, v18, v19, v20, v21;
  v121 = 0xD000000000000017;
  v122 = 0x80000001CFA46150;
  v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v24 = v23;

  MEMORY[0x1D3868CC0](v22, v24);
  v24, v25, v26, v27, v28, v29, v30, v31;
  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  v120 = *a1->tree;
  v32 = sub_1CF9E7F98();
  v34 = v33;
  MEMORY[0x1D3868CC0](v32);
  v34, v35, v36, v37, v38, v39, v40, v41;
  MEMORY[0x1D3868CC0](0xA3A736D65744920, 0xE800000000000000);
  v120 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v42 = sub_1CF9E67D8();
  v44 = v43;
  MEMORY[0x1D3868CC0](v42);
  v44, v45, v46, v47, v48, v49, v50, v51;
  v52 = v121;
  v53 = v122;
  v54 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v55 = sub_1CF9E6108();
  v56 = sub_1CF9E72A8();
  a1, v57, v58, v59, v60, v61, v62, v63;
  if (os_log_type_enabled(v55, v56))
  {
    v64 = swift_slowAlloc();
    v114[1] = v52;
    v65 = v64;
    v66 = swift_slowAlloc();
    v115 = v7;
    v67 = v66;
    v120 = a1;
    v121 = v66;
    *v65 = 136315138;
    v68 = sub_1CF9E67D8();
    v70 = v69;
    v71 = sub_1CEFD0DF0(v68, v69, &v121);
    v70, v72, v73, v74, v75, v76, v77, v78;
    *(v65 + 4) = v71;
    _os_log_impl(&dword_1CEFC7000, v55, v56, "💂🏼‍♀️  TTR-ing stuck items:\n%s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    v79 = v67;
    v7 = v115;
    MEMORY[0x1D386CDC0](v79, -1, -1);
    MEMORY[0x1D386CDC0](v65, -1, -1);
  }

  (*(v117 + 8))(v5, v118);
  v80 = *(v119 + 136);
  v81 = sub_1CF9E6888();
  v82 = sub_1CF9E6888();
  v53, v83, v84, v85, v86, v87, v88, v89;
  sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  v90 = sub_1CF9E6D28();
  sub_1CF9E5A58();
  v91 = sub_1CF9E6D28();
  v92 = sub_1CF9E6888();
  v93 = v7;
  v94 = [v93 pathComponents];
  v95 = sub_1CF9E6D48();

  v96 = *v95->tree;
  v95, v97, v98, v99, v100, v101, v102, v103;
  v104 = v93;
  if (v96 >= 2)
  {
    v104 = [v93 stringByDeletingLastPathComponent];
    if (!v104)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v106 = v105;
      v104 = sub_1CF9E6888();
      v106, v107, v108, v109, v110, v111, v112, v113;
    }
  }

  [v80 requestTapToRadarWithTitle:v81 description:v82 keywords:v90 attachments:v91 displayReason:v92 providerID:v104];
}

void sub_1CF46F500(uint64_t a1)
{
  v2 = *(v1 + 152);
  v3 = 1000000000 * v2;
  if ((v2 * 1000000000) >> 64 != (1000000000 * v2) >> 63)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v298 = a1 - v3;
  if (__OFSUB__(a1, v3))
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  swift_beginAccess();
  v297 = v1;
  v4 = *(v1 + 80);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_1CF1F90EC(*(v4 + 16), 0);
    v7 = sub_1CF1FAB04(&v302, (v6 + 4), v5, v4);
    v8 = v302;
    swift_bridgeObjectRetain_n();
    sub_1CEFCB59C(v8);
    if (v7 != v5)
    {
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v4, v9, v10, v11, v12, v13, v14, v15;
    v16 = v6;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v17 = v16[2];
  v18 = a1;
  if (!v17)
  {
    v299 = MEMORY[0x1E69E7CC0];
    goto LABEL_56;
  }

  v19 = 0;
  v20 = v16 + 9;
  v299 = MEMORY[0x1E69E7CC0];
  v21 = v16;
  v294 = v16 + 9;
  do
  {
    v22 = &v20[6 * v19++];
    while (1)
    {
      if (v19 - 1 >= v17)
      {
        goto LABEL_133;
      }

      if (*v22)
      {
        goto LABEL_15;
      }

      v25 = *(v22 - 5);
      v26 = *(v22 - 32);
      v27 = *(v22 - 3);
      v28 = *(v22 - 1);
      v29 = *(v22 - 16);
      if (v28 < v298)
      {
        v30 = *(v297 + 112);

        v31 = sub_1CF7DCFA4(v25, v26, v30);
        v32 = v30;
        v18 = a1;
        v32, v33, v34, v35, v36, v37, v38, v39;
        v16 = v21;
        if ((v31 & 1) == 0)
        {
          break;
        }
      }

      if (v27 >= v18)
      {
        v23 = 1;
      }

      else
      {
        v23 = v29;
      }

      if (v23 != 1)
      {
        v302 = 0;
        v303 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0x206D657449202DLL, 0xE700000000000000);
        if (v26)
        {
          if (v26 == 1)
          {
            v300 = 0x284449656C6966;
            v301 = 0xE700000000000000;
            goto LABEL_27;
          }

          if (v25)
          {
            v50 = 0x6873617274;
          }

          else
          {
            v50 = 1953460082;
          }

          if (v25)
          {
            v51 = 0xE500000000000000;
          }

          else
          {
            v51 = 0xE400000000000000;
          }
        }

        else
        {
          v300 = 0x284449636F64;
          v301 = 0xE600000000000000;
LABEL_27:
          v40 = sub_1CF9E7F98();
          v42 = v41;
          MEMORY[0x1D3868CC0](v40);
          v42, v43, v44, v45, v46, v47, v48, v49;
          MEMORY[0x1D3868CC0](41, 0xE100000000000000);
          v50 = v300;
          v51 = v301;
        }

        MEMORY[0x1D3868CC0](v50, v51);
        v51, v52, v53, v54, v55, v56, v57, v58;
        MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA460D0);
        goto LABEL_44;
      }

      v17 = v16[2];
LABEL_15:
      v22 += 48;
      v24 = v19++ == v17;
      if (v24)
      {
        goto LABEL_56;
      }
    }

    v302 = 0;
    v303 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA46100);
    if (v26)
    {
      if (v26 == 1)
      {
        v300 = 0x284449656C6966;
        v301 = 0xE700000000000000;
        goto LABEL_36;
      }

      if (v25)
      {
        v69 = 0x6873617274;
      }

      else
      {
        v69 = 1953460082;
      }

      if (v25)
      {
        v70 = 0xE500000000000000;
      }

      else
      {
        v70 = 0xE400000000000000;
      }
    }

    else
    {
      v300 = 0x284449636F64;
      v301 = 0xE600000000000000;
LABEL_36:
      v59 = sub_1CF9E7F98();
      v61 = v60;
      MEMORY[0x1D3868CC0](v59);
      v61, v62, v63, v64, v65, v66, v67, v68;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v69 = v300;
      v70 = v301;
    }

    MEMORY[0x1D3868CC0](v69, v70);
    v70, v71, v72, v73, v74, v75, v76, v77;
    MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA46090);
    v300 = v28;
    sub_1CF064F48();
    v78 = sub_1CF9E7F98();
    v80 = v79;
    MEMORY[0x1D3868CC0](v78);
    v80, v81, v82, v83, v84, v85, v86, v87;
LABEL_44:
    v88 = v302;
    v89 = v303;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v94 = v299;
    }

    else
    {
      v94 = sub_1CF0710C0(0, *v299->tree + 1, 1, v299, v90, v91, v92, v93);
    }

    v20 = v294;
    v96 = *v94->tree;
    v95 = *v94->tester;
    if (v96 >= v95 >> 1)
    {
      v94 = sub_1CF0710C0((v95 > 1), v96 + 1, 1, v94, v90, v91, v92, v93);
    }

    *v94->tree = v96 + 1;
    v299 = v94;
    v97 = v94 + 16 * v96;
    *(v97 + 4) = v88;
    *(v97 + 5) = v89;
    swift_beginAccess();
    sub_1CF6E9D5C(&v300, v25, v26);
    sub_1CEFD0994(v300, v301, SBYTE1(v301));
    *(v297 + 72) = 1;
    v98 = sub_1CF7BF2C0(v25, v26);
    if (v99)
    {
      v100 = v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102 = *(v297 + 80);
      v300 = v102;
      *(v297 + 80) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1CF7D4F34();
        v102 = v300;
      }

      sub_1CF1D134C(v100, v102);
      *(v297 + 80) = v102;
    }

    swift_endAccess();
    v18 = a1;
    *(v297 + 72) = 1;
    v16 = v21;
    v17 = v21[2];
  }

  while (v17 != v19);
LABEL_56:

  v103 = *(v297 + 88);
  v104 = *(v103 + 16);
  if (!v104)
  {
    v105 = MEMORY[0x1E69E7CC0];
LABEL_60:
    v115 = v105[2];
    v116 = a1;
    if (v115)
    {
      v117 = 0;
      v118 = v105 + 7;
      do
      {
        v119 = &v118[5 * v117++];
        while (1)
        {
          if (v117 - 1 >= v115)
          {
            goto LABEL_134;
          }

          v121 = *(v119 - 3);
          v120 = *(v119 - 2);
          v122 = *v119;
          v123 = *(v119 - 8);
          if (*v119 >= v298)
          {
            v135 = v121;
          }

          else
          {
            v124 = *(v297 + 112);
            v125 = v121;

            v126 = v125;
            LOBYTE(v125) = sub_1CF7DCFA4(v121, 256, v124);

            v127 = v124;
            v116 = a1;
            v127, v128, v129, v130, v131, v132, v133, v134;
            if ((v125 & 1) == 0)
            {
              v302 = 0;
              v303 = 0xE000000000000000;
              sub_1CF9E7948();
              MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA46070);
              v159 = NSFileProviderItemIdentifier.description.getter(v126);
              v161 = v160;
              MEMORY[0x1D3868CC0](v159);
              v161, v162, v163, v164, v165, v166, v167, v168;
              MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA46090);
              v300 = v122;
              sub_1CF064F48();
              v169 = sub_1CF9E7F98();
              v171 = v170;
              MEMORY[0x1D3868CC0](v169);
              v171, v172, v173, v174, v175, v176, v177, v178;
              v179 = v302;
              v180 = v303;
              v181 = swift_isUniquelyReferenced_nonNull_native();
              if (v181)
              {
                v186 = v299;
              }

              else
              {
                v186 = sub_1CF0710C0(0, *v299->tree + 1, 1, v299, v182, v183, v184, v185);
              }

              v118 = v105 + 7;
              v188 = *v186->tree;
              v187 = *v186->tester;
              if (v188 >= v187 >> 1)
              {
                v186 = sub_1CF0710C0((v187 > 1), v188 + 1, 1, v186, v182, v183, v184, v185);
              }

              *v186->tree = v188 + 1;
              v299 = v186;
              v189 = v186 + 16 * v188;
              *(v189 + 4) = v179;
              *(v189 + 5) = v180;
              v157 = v297;
              swift_beginAccess();
              v158 = v126;
              goto LABEL_85;
            }
          }

          v136 = v120 >= v116 ? 1 : v123;
          if (v136 != 1)
          {
            break;
          }

          v115 = v105[2];
          v119 += 5;
          v24 = v117++ == v115;
          if (v24)
          {
            goto LABEL_89;
          }
        }

        v302 = 0;
        v303 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0x206D657449202DLL, 0xE700000000000000);
        v137 = NSFileProviderItemIdentifier.description.getter(v121);
        v139 = v138;
        MEMORY[0x1D3868CC0](v137);
        v139, v140, v141, v142, v143, v144, v145, v146;
        MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA46040);
        v147 = v302;
        v148 = v303;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v153 = v299;
        }

        else
        {
          v153 = sub_1CF0710C0(0, *v299->tree + 1, 1, v299, v149, v150, v151, v152);
        }

        v118 = v105 + 7;
        v155 = *v153->tree;
        v154 = *v153->tester;
        if (v155 >= v154 >> 1)
        {
          v153 = sub_1CF0710C0((v154 > 1), v155 + 1, 1, v153, v149, v150, v151, v152);
        }

        *v153->tree = v155 + 1;
        v299 = v153;
        v156 = v153 + 16 * v155;
        *(v156 + 4) = v147;
        *(v156 + 5) = v148;
        v157 = v297;
        swift_beginAccess();
        v158 = v121;
LABEL_85:
        v190 = v158;
        sub_1CF6E9D5C(&v300, v121, 256);
        sub_1CEFD0994(v300, v301, SBYTE1(v301));
        *(v157 + 72) = 1;
        sub_1CF1CEABC(v190);
        swift_endAccess();

        *(v157 + 72) = 1;
        v115 = v105[2];
        v116 = a1;
      }

      while (v115 != v117);
    }

LABEL_89:

    v191 = *(v297 + 96);
    v194 = *(v191 + 56);
    v193 = v191 + 56;
    v192 = v194;
    v195 = 1 << *(*(v297 + 96) + 32);
    v196 = -1;
    if (v195 < 64)
    {
      v196 = ~(-1 << v195);
    }

    v197 = v196 & v192;
    v198 = (v195 + 63) >> 6;
    v296 = *(v297 + 96);

    v199 = 0;
    if (!v197)
    {
      while (1)
      {
LABEL_92:
        v200 = v199 + 1;
        if (__OFADD__(v199, 1))
        {
          __break(1u);
          goto LABEL_132;
        }

        if (v200 >= v198)
        {
          break;
        }

        v197 = *(v193 + 8 * v200);
        ++v199;
        if (v197)
        {
          v199 = v200;
          goto LABEL_96;
        }
      }

      v236 = v297;
      v237 = *(v297 + 96);
      *(v297 + 96) = MEMORY[0x1E69E7CD0];
      v237, v238, v239, v240, v241, v242, v243, v244;
      *(v297 + 72) = 1;
      v245 = *(v297 + 104);
      v246 = 1 << *(v245 + 32);
      v247 = -1;
      if (v246 < 64)
      {
        v247 = ~(-1 << v246);
      }

      v248 = v247 & *(v245 + 56);
      v249 = (v246 + 63) >> 6;

      v250 = 0;
      if (v248)
      {
        goto LABEL_121;
      }

      while (1)
      {
        v251 = v250 + 1;
        if (__OFADD__(v250, 1))
        {
          break;
        }

        if (v251 >= v249)
        {

          v278 = *(v236 + 104);
          *(v236 + 104) = MEMORY[0x1E69E7CD0];
          v278, v279, v280, v281, v282, v283, v284, v285;
          *(v236 + 72) = 1;
          v293 = v299;
          if (*v299->tree)
          {
            sub_1CF7F2FB4();
            sub_1CF46F028(v299);
            v293 = v299;
          }

          v293, v286, v287, v288, v289, v290, v291, v292;
          return;
        }

        v248 = *(v245 + 56 + 8 * v251);
        ++v250;
        if (v248)
        {
          v250 = v251;
          do
          {
LABEL_121:
            v252 = *(*(v245 + 48) + ((v250 << 9) | (8 * __clz(__rbit64(v248)))));
            v302 = 0;
            v303 = 0xE000000000000000;
            v253 = v252;
            sub_1CF9E7948();
            MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA460B0);
            v254 = NSFileProviderItemIdentifier.description.getter(v253);
            v256 = v255;
            MEMORY[0x1D3868CC0](v254);
            v256, v257, v258, v259, v260, v261, v262, v263;
            v265 = v302;
            v264 = v303;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v270 = v299;
            }

            else
            {
              v270 = sub_1CF0710C0(0, *v299->tree + 1, 1, v299, v266, v267, v268, v269);
            }

            v272 = *v270->tree;
            v271 = *v270->tester;
            if (v272 >= v271 >> 1)
            {
              v270 = sub_1CF0710C0((v271 > 1), v272 + 1, 1, v270, v266, v267, v268, v269);
            }

            v248 &= v248 - 1;
            *v270->tree = v272 + 1;
            v299 = v270;
            v273 = v270 + 16 * v272;
            *(v273 + 4) = v265;
            *(v273 + 5) = v264;
            swift_beginAccess();
            sub_1CF6E9D5C(&v300, v253, 256);
            v274 = v300;
            v275 = BYTE1(v301);
            v276 = v301;
            swift_endAccess();
            v277 = v274;
            v236 = v297;
            sub_1CEFD0994(v277, v276, v275);
            *(v297 + 72) = 1;
          }

          while (v248);
        }
      }

LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    while (1)
    {
LABEL_96:
      v201 = *(v296 + 48) + ((v199 << 10) | (16 * __clz(__rbit64(v197))));
      v202 = *v201;
      v203 = *(v201 + 8);
      v302 = 0;
      v303 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA460B0);
      if (v203)
      {
        if (v203 != 1)
        {
          if (v202)
          {
            v214 = 0x6873617274;
          }

          else
          {
            v214 = 1953460082;
          }

          if (v202)
          {
            v215 = 0xE500000000000000;
          }

          else
          {
            v215 = 0xE400000000000000;
          }

          goto LABEL_107;
        }

        v300 = 0x284449656C6966;
        v301 = 0xE700000000000000;
      }

      else
      {
        v300 = 0x284449636F64;
        v301 = 0xE600000000000000;
      }

      v204 = sub_1CF9E7F98();
      v206 = v205;
      MEMORY[0x1D3868CC0](v204);
      v206, v207, v208, v209, v210, v211, v212, v213;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v214 = v300;
      v215 = v301;
LABEL_107:
      MEMORY[0x1D3868CC0](v214, v215);
      v215, v216, v217, v218, v219, v220, v221, v222;
      v223 = v302;
      v224 = v303;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v229 = v299;
      }

      else
      {
        v229 = sub_1CF0710C0(0, *v299->tree + 1, 1, v299, v225, v226, v227, v228);
      }

      v231 = *v229->tree;
      v230 = *v229->tester;
      if (v231 >= v230 >> 1)
      {
        v229 = sub_1CF0710C0((v230 > 1), v231 + 1, 1, v229, v225, v226, v227, v228);
      }

      v197 &= v197 - 1;
      *v229->tree = v231 + 1;
      v299 = v229;
      v232 = v229 + 16 * v231;
      *(v232 + 4) = v223;
      *(v232 + 5) = v224;
      swift_beginAccess();
      sub_1CF6E9D5C(&v300, v202, v203);
      v233 = v300;
      v234 = BYTE1(v301);
      v235 = v301;
      swift_endAccess();
      sub_1CEFD0994(v233, v235, v234);
      *(v297 + 72) = 1;
      if (!v197)
      {
        goto LABEL_92;
      }
    }
  }

  v105 = sub_1CF1F9050(*(v103 + 16), 0);
  v106 = sub_1CF1FA994(&v302, (v105 + 4), v104, v103);
  v107 = v302;
  swift_bridgeObjectRetain_n();
  sub_1CEFCB59C(v107);
  if (v106 == v104)
  {
    v103, v108, v109, v110, v111, v112, v113, v114;
    goto LABEL_60;
  }

LABEL_138:
  __break(1u);
}

void sub_1CF4703B8()
{
  if (*(v0 + 168))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7448();
    swift_unknownObjectRelease();
    if (*(v0 + 168))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7418();
      swift_unknownObjectRelease();
    }
  }

  *(v0 + 168) = 0;
  swift_unknownObjectRelease();

  sub_1CF47045C();
}

void sub_1CF47045C()
{
  swift_beginAccess();
  if (*(v0 + 121) == 1)
  {
    if (*(v0 + 176))
    {
      return;
    }

    *(v0 + 176) = 1;
    v1 = qword_1EDEACB30;
    v2 = &selRef_addWatcher_;
  }

  else
  {
    if ((*(v0 + 176) & 1) == 0)
    {
      return;
    }

    *(v0 + 176) = 0;
    v1 = qword_1EDEACB30;
    v2 = &selRef_removeWatcher_;
  }

  if (v1 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBB20 *v2];
}

void sub_1CF470518()
{
  v1 = v0;
  v2 = sub_1CF9E6388();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44 - v7;
  v9 = sub_1CF9E6498();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v44 - v13;
  v14 = sub_1CF9E6448();
  v53 = *(v14 - 8);
  v54 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v52 = (&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1CF9E73D8();
  v51 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF47045C();
  swift_beginAccess();
  if (*(*(v0 + 80) + 16) || *(*(v0 + 88) + 16) || *(*(v0 + 96) + 16) || *(*(v0 + 104) + 16) || (*(v0 + 121) & 1) != 0)
  {
    v49 = v8;
    if (!*(v0 + 168))
    {
      v44 = v5;
      v19 = *(v0 + 128);
      v20 = *(*(*(*(v19 + 32) + 16) + 136) + 24);
      v48 = v3;

      sub_1CF9E6AE8();
      v20, v21, v22, v23, v24, v25, v26, v27;
      v46 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
      v28 = *(v19 + 64);
      v56 = MEMORY[0x1E69E7CC0];
      sub_1CF042F54(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
      v47 = v10;
      v45 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
      sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
      v29 = v47;
      sub_1CF9E77B8();
      v30 = v48;
      v31 = sub_1CF9E73E8();

      (*(v51 + 8))(v18, v16);
      *(v1 + 168) = v31;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      ObjectType = swift_getObjectType();
      v33 = swift_allocObject();
      swift_weakInit();

      v34 = v52;
      sub_1CF042F9C();
      sub_1CEFD5828(0, v34, sub_1CF482C8C, v33, ObjectType);
      swift_unknownObjectRelease();

      (*(v53 + 8))(v34, v54);

      if (*(v1 + 168))
      {
        v53 = swift_getObjectType();
        swift_unknownObjectRetain();
        v35 = v50;
        sub_1CF9E6478();
        v51 = *(v1 + 144);
        v54 = v9;
        v36 = v49;
        *v49 = v51;
        v37 = *MEMORY[0x1E69E7F48];
        v46 = *(v30 + 104);
        v46(v36, v37, v2);
        MEMORY[0x1D3868740](v35, v36);
        v38 = v29;
        v39 = v2;
        v40 = *(v30 + 8);
        v40(v36, v39);
        v52 = *(v38 + 8);
        v52(v35, v54);
        *v36 = v51;
        v46(v36, v37, v39);
        v41 = v44;
        v42 = v53;
        sub_1CEFD5BD8(v44);
        v43 = v55;
        MEMORY[0x1D3869770](v55, v36, v41, v42);
        swift_unknownObjectRelease();
        v40(v41, v39);
        v40(v36, v39);
        v52(v43, v54);
        if (*(v1 + 168))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_1CF9E7428();
          swift_unknownObjectRelease();
        }
      }
    }
  }

  else
  {
    sub_1CF4703B8();
  }
}

void sub_1CF470BA0(uint64_t a1)
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v9 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v10 = sub_1CF9E6108();
    v11 = sub_1CF9E7298();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1CEFC7000, v10, v11, "💂🏼‍♀️  evaluating stuck imports", v12, 2u);
      MEMORY[0x1D386CDC0](v12, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v14 = v13;
    (*(v2 + 8))(v4, v1);
    v15 = v14 * 1000000000.0;
    if (COERCE__INT64(fabs(v14 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v15 > -9.22337204e18)
    {
      if (v15 < 9.22337204e18)
      {
        sub_1CF46F500(v15);
        sub_1CF470518();

        return;
      }

LABEL_11:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1CF470E34(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = a2;
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v33 - v12;
  swift_beginAccess();
  v14 = *(*(v4 + 80) + 16);
  v15 = *(*(v4 + 88) + 16);
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = *(*(v4 + 96) + 16);
  v16 = __OFADD__(v17, v18);
  v19 = v17 + v18;
  if (v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = *(*(v4 + 104) + 16);
  v16 = __OFADD__(v19, v20);
  v21 = v19 + v20;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = *(*(v4 + 112) + 16);
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_18:
    __break(1u);
    return;
  }

  if (*(v4 + 120))
  {
    if (v23 <= 29)
    {
      v24 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v25 = sub_1CF9E6108();
      v26 = sub_1CF9E7298();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v33[5] = v3;
        v28 = v27;
        *v27 = 0;
        _os_log_impl(&dword_1CEFC7000, v25, v26, "💂🏼‍♀️ we can track more items", v27, 2u);
        MEMORY[0x1D386CDC0](v28, -1, -1);
      }

      (*(v8 + 8))(v13, v7);
      *(v4 + 120) = 0;
      *(v4 + 72) = 1;
      sub_1CF471C20(a1, v5);
    }
  }

  else if (v23 > 50)
  {
    v29 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v30 = sub_1CF9E6108();
    v31 = sub_1CF9E7298();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = v23;
      _os_log_impl(&dword_1CEFC7000, v30, v31, "💂🏼‍♀️ we're tracking to many importing items (%ld)", v32, 0xCu);
      MEMORY[0x1D386CDC0](v32, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    *(v4 + 120) = 1;
    *(v4 + 72) = 1;
  }
}

void sub_1CF471120(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a3;
  v6 = v5;
  v11 = sub_1CF9E6118();
  v71 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v65[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v65[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v65[-v18];
  v80 = a1;
  v81 = a2;
  v78 = a4;
  v79 = a5;
  swift_beginAccess();
  sub_1CF8DDA6C(a1, a2, &v76);
  v20 = v76;
  v21 = v77;
  swift_endAccess();
  v22 = v20;
  v23 = v6;
  sub_1CF47FDFC(v22, v21);
  *(v6 + 72) = 1;
  v24 = v73;
  sub_1CF470E34(a4, a5);
  if (v24)
  {
    return;
  }

  v70 = v16;
  v73 = v13;
  if (*(v6 + 120))
  {
    return;
  }

  v25 = *(**(*(v6 + 128) + 32) + 240);

  v25(&v80, 1, &v78, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

  v68 = 0;
  v69 = v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v27 = (*(*(v26 - 8) + 48))(v19, 1, v26);
  v67 = v11;
  if (v27 != 1)
  {
    v31 = v70;
    sub_1CEFDA214(&v19[*(v26 + 48)], v70, type metadata accessor for ItemMetadata);
    sub_1CEFCCC44(v19, &unk_1EC4BE360, &qword_1CF9FE650);
    v32 = *(v31 + 4);
    v33 = *(v31 + 8);
    sub_1CEFD5278(v31, type metadata accessor for ItemMetadata);
    v30 = v73;
    if (v33)
    {
      v70 = 0;
      v66 = 1;
      v28 = a4;
      v29 = v71;
      goto LABEL_11;
    }

    v34 = *(v69 + 160);
    v35 = (v32 / 0x3E8 + 1) * v34;
    if (((v32 / 0x3E8 + 1) * v34) >> 64 == v35 >> 63)
    {
      v36 = 1000000000 * v35;
      if ((v35 * 1000000000) >> 64 == (1000000000 * v35) >> 63)
      {
        v28 = a4;
        v29 = v71;
        if (!__OFADD__(v72, v36))
        {
          v70 = (v72 + v36);
          v66 = 0;
          goto LABEL_11;
        }

LABEL_18:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  sub_1CEFCCC44(v19, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v70 = 0;
  v66 = 1;
  v28 = a4;
  v29 = v71;
  v30 = v73;
LABEL_11:
  v37 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v38 = v80;
  v39 = v81;
  v40 = sub_1CF9E6108();
  v41 = sub_1CF9E7298();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v73 = v28;
    v43 = a5;
    v44 = v30;
    v45 = v42;
    v46 = swift_slowAlloc();
    v76 = v46;
    v47 = v39;
    v48 = v46;
    *v45 = 136315138;
    v74 = v38;
    v75 = v47;
    v49 = VFSItemID.description.getter(v46);
    v51 = v50;
    v52 = sub_1CEFD0DF0(v49, v50, &v76);
    v51, v53, v54, v55, v56, v57, v58, v59;
    *(v45 + 4) = v52;
    _os_log_impl(&dword_1CEFC7000, v40, v41, "💂🏼‍♀️ start monitoring import:disk for %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x1D386CDC0](v48, -1, -1);
    MEMORY[0x1D386CDC0](v45, -1, -1);

    v60 = v44;
    a5 = v43;
    v28 = v73;
    (*(v29 + 8))(v60, v67);
  }

  else
  {

    (*(v29 + 8))(v30, v67);
  }

  v61 = v80;
  v62 = v81;
  v63 = v69;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = *(v63 + 80);
  *(v63 + 80) = 0x8000000000000000;
  sub_1CF1D4C68(v70, v66, v72, 0, v61, v62, isUniquelyReferenced_nonNull_native);
  *(v63 + 80) = v76;
  swift_endAccess();
  *(v63 + 72) = 1;
  sub_1CF470E34(v28, a5);
}

void sub_1CF4716AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a2;
  v5 = v4;
  v9 = sub_1CF9E6118();
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v62[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v62[-v16];
  v78 = a1;
  v76 = a3;
  v77 = a4;
  swift_beginAccess();
  v18 = a1;
  sub_1CF8DDA6C(a1, 256, &v74);
  v19 = v74;
  v20 = v75;
  swift_endAccess();

  v21 = v19;
  v22 = v5;
  sub_1CF47FDFC(v21, v20);
  *(v5 + 72) = 1;
  v23 = v72;
  sub_1CF470E34(a3, a4);
  if (v23)
  {
    return;
  }

  v68 = v11;
  v72 = a3;
  v67 = a4;
  v24 = v71;
  if (*(v5 + 120))
  {
    return;
  }

  v25 = *(**(*(v5 + 128) + 40) + 240);

  v25(&v78, 1, &v76, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

  v65 = 0;
  v66 = v22;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  if ((*(*(v26 - 8) + 48))(v17, 1, v26) != 1)
  {
    v27 = v14;
    sub_1CEFDA214(&v17[*(v26 + 48)], v14, type metadata accessor for ItemMetadata);
    sub_1CEFCCC44(v17, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v28 = *(v14 + 1);
    v29 = v14[8];
    sub_1CEFD5278(v27, type metadata accessor for ItemMetadata);
    if (v29)
    {
      goto LABEL_7;
    }

    v33 = *(v66 + 160);
    v34 = (v28 / 0x3E8 + 1) * v33;
    if (((v28 / 0x3E8 + 1) * v33) >> 64 == v34 >> 63)
    {
      v35 = 1000000000 * v34;
      if ((v34 * 1000000000) >> 64 == (1000000000 * v34) >> 63)
      {
        v30 = v24 + v35;
        v32 = v68;
        if (!__OFADD__(v24, v35))
        {
          LODWORD(v31) = 0;
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  sub_1CEFCCC44(v17, &unk_1EC4BFBB0, &qword_1CF9FCB90);
LABEL_7:
  v30 = 0;
  LODWORD(v31) = 1;
  v32 = v68;
LABEL_12:
  v36 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v37 = v18;
  v38 = sub_1CF9E6108();
  v39 = sub_1CF9E7298();
  v40 = os_log_type_enabled(v38, v39);
  v64 = v37;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v63 = v31;
    v31 = v42;
    v73[0] = v42;
    *v41 = 136315138;
    v43 = v30;
    v44 = NSFileProviderItemIdentifier.description.getter(v37);
    v46 = v45;

    v47 = sub_1CEFD0DF0(v44, v46, v73);
    v46, v48, v49, v50, v51, v52, v53, v54;
    *(v41 + 4) = v47;
    v30 = v43;
    _os_log_impl(&dword_1CEFC7000, v38, v39, "💂🏼‍♀️ start monitoring import:provider for %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v55 = v31;
    LOBYTE(v31) = v63;
    MEMORY[0x1D386CDC0](v55, -1, -1);
    MEMORY[0x1D386CDC0](v41, -1, -1);

    (*(v69 + 8))(v68, v70);
  }

  else
  {

    (*(v69 + 8))(v32, v70);
  }

  v56 = v24;
  v57 = v67;
  v58 = v72;
  v59 = v66;
  swift_beginAccess();
  v60 = v64;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = *(v59 + 88);
  sub_1CF1D4ACC(v30, v31, v56, 0, v60, isUniquelyReferenced_nonNull_native);
  *(v59 + 88) = v74;

  swift_endAccess();
  *(v59 + 72) = 1;
  sub_1CF470E34(v58, v57);
}

void sub_1CF471C20(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  swift_beginAccess();
  if ((*(v3 + 120) & 1) == 0)
  {
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v11 = v10;
    v12 = (*(v7 + 8))(v9, v6);
    v13 = v11 * 1000000000.0;
    if (COERCE__INT64(fabs(v11 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v13 > -9.22337204e18)
    {
      if (v13 < 9.22337204e18)
      {
        v14 = *(*(v3 + 128) + 16);
        MEMORY[0x1EEE9AC00](v12);
        *(&v17 - 4) = v3;
        *(&v17 - 3) = &v18;
        *(&v17 - 2) = v15;
        v16 = *(*v14 + 264);

        v16(&v18, sub_1CF482C94, &v17 - 6, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1CF471E4C(void *a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 0xFF)
  {
    if (!a3)
    {
      goto LABEL_21;
    }

    swift_beginAccess();
    v71 = *(a5 + 112);
    v16 = a3;

    v72 = sub_1CF7DCFA4(a3, 256, v71);
    v71, v73, v74, v75, v76, v77, v78, v79;
    if ((v72 & 1) == 0)
    {
      swift_beginAccess();
      v16 = v16;
      sub_1CF6EA6C4(v134, v16);
      v101 = v134[0];
      swift_endAccess();

      *(a5 + 72) = 1;
      sub_1CF470E34(a6, a7);
      goto LABEL_25;
    }

LABEL_11:

    goto LABEL_21;
  }

  if (a3)
  {
    if (a4 != 3)
    {
      if (a4 != 4)
      {
LABEL_21:
        swift_beginAccess();
LABEL_22:
        v89 = *(a5 + 120) ^ 1;
        return v89 & 1;
      }

      swift_beginAccess();
      v15 = *(a5 + 112);
      v16 = a3;

      v17 = sub_1CF7DCFA4(a3, 256, v15);
      v15, v18, v19, v20, v21, v22, v23, v24;
      if ((v17 & 1) == 0)
      {
        v25 = *(a5 + 88);
        if (*v25->tree)
        {
          v27 = *(a5 + 96);
          v26 = *(a5 + 104);
          v28 = *(a5 + 112);
          v131 = *(a5 + 80);

          sub_1CEFE863C(v16);
          if (v29)
          {

            v28, v36, v37, v38, v39, v40, v41, v42;
            v26, v43, v44, v45, v46, v47, v48, v49;
            v27, v50, v51, v52, v53, v54, v55, v56;
            v25, v57, v58, v59, v60, v61, v62, v63;
            v131, v64, v65, v66, v67, v68, v69, v70;
            goto LABEL_21;
          }

          v28, v29, v30, v31, v32, v33, v34, v35;
          v26, v102, v103, v104, v105, v106, v107, v108;
          v27, v109, v110, v111, v112, v113, v114, v115;
          v25, v116, v117, v118, v119, v120, v121, v122;
          v131, v123, v124, v125, v126, v127, v128, v129;
        }

        sub_1CF4716AC(v16, a8, a6, a7);
LABEL_25:

        if (v8)
        {
          return v89 & 1;
        }

        goto LABEL_21;
      }

      goto LABEL_11;
    }

    swift_beginAccess();
    v90 = *(a5 + 112);
    v91 = a3;

    v92 = sub_1CF7DCFA4(a1, a2, v90);
    v90, v93, v94, v95, v96, v97, v98, v99;
    if (v92 & 1) != 0 || *(*(a5 + 80) + 16) && (sub_1CF7BF2C0(a1, a2), (v100))
    {

      goto LABEL_21;
    }

    sub_1CF471120(a1, a2, a8, a6, a7);

    if (!v8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    swift_beginAccess();
    v80 = *(a5 + 112);

    v81 = sub_1CF7DCFA4(a1, a2, v80);
    v80, v82, v83, v84, v85, v86, v87, v88;
    if (v81)
    {
      goto LABEL_22;
    }

    swift_beginAccess();
    sub_1CF6E9500(v134, a1, a2);
    swift_endAccess();
    *(a5 + 72) = 1;
    sub_1CF470E34(a6, a7);
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  return v89 & 1;
}

void sub_1CF4721F4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v220 = a3;
  v219 = a2;
  v4 = sub_1CF9E6118();
  v214 = *(v4 - 8);
  v215 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v213 = &v213 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v213 - v7;
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v217 = v9;
  v218 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v216 = &v213 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &qword_1CF9FE5A8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v213 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v213 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v213 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v213 - v23);
  sub_1CEFCCBDC(a1, &v213 - v23, &qword_1EC4BE710, &qword_1CF9FE5A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 21)
  {
    if (EnumCaseMultiPayload != 22)
    {
      if (EnumCaseMultiPayload == 44)
      {
        sub_1CF7F2FB4();
      }

      goto LABEL_134;
    }

    sub_1CEFCCBDC(v24, v18, &qword_1EC4BE710, &qword_1CF9FE5A8);
    v12 = *v18;
    if (*v18 < 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
      v69 = swift_dynamicCastClass();
      if (v69)
      {
        v68 = v69;
        v26 = v221;
LABEL_42:
        sub_1CEFCCC44(v24, &qword_1EC4BE710, &qword_1CF9FE5A8);
        swift_beginAccess();
        v70 = *(v68 + 272);
        v71 = *(v68 + 280);

        if (v71 == 255)
        {
          goto LABEL_135;
        }

        v21 = v226;
        v32 = sub_1CF387C98(v226);
        v24 = &v224;
        v15 = sub_1CF598798(&v224, v70, v71);
        if (*(v72 + 24) != 2)
        {
          v8 = v72;
          v79 = v216;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v81 = v80;
          (*(v218 + 1))(v79, v217);
          v37 = v81 * 1000000000.0;
          if (COERCE__INT64(fabs(v81 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v37 > -9.22337204e18)
            {
              if (v37 < 9.22337204e18)
              {
                goto LABEL_53;
              }

LABEL_145:
              __break(1u);
              goto LABEL_146;
            }

LABEL_144:
            __break(1u);
            goto LABEL_145;
          }

LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

LABEL_44:
        (v15)(&v224, 0);
        (v32)(v226, 0);
        goto LABEL_135;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E30, &qword_1CF9FB460);
      v82 = swift_dynamicCastClass();
      v26 = v221;
      if (v82)
      {
LABEL_57:
        v83 = v82;
        sub_1CEFCCC44(v24, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v32 = *(v83 + 144);

        v24 = v226;
        v8 = sub_1CF387C98(v226);
        v18 = &v224;
        v15 = sub_1CF598870(&v224, v32);
        if (*(v84 + 24) == 2)
        {
          (v15)(&v224, 0);

          (v8)(v226, 0);
          goto LABEL_135;
        }

        v21 = v84;
        v95 = v216;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v97 = v96;
        (*(v218 + 1))(v95, v217);
        v98 = v97 * 1000000000.0;
        if (COERCE__INT64(fabs(v97 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v98 > -9.22337204e18)
          {
            if (v98 < 9.22337204e18)
            {
              *(v21 + 2) = v98;
              (v15)(&v224, 0);

              (v8)(v226, 0);
              goto LABEL_135;
            }

            goto LABEL_151;
          }

LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF20, &unk_1CFA05470);
      v109 = swift_dynamicCastClass();
      if (!v109)
      {
        goto LABEL_133;
      }

      v110 = v109 + *(*v109 + 632);
      swift_beginAccess();
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
      if ((*(*(v111 - 8) + 48))(v110, 1, v111))
      {
        goto LABEL_133;
      }

      v112 = *(v110 + 8);
      v113 = sub_1CF387C98(v226);
      v115 = sub_1CF598870(&v224, v112);
      if (*(v114 + 24) == 2)
      {
        (v115)(&v224, 0);
        v113(v226, 0);
      }

      else
      {
        v208 = v114;
        v209 = v216;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v211 = v210;
        (*(v218 + 1))(v209, v217);
        v212 = v211 * 1000000000.0;
        if (COERCE__INT64(fabs(v211 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        if (v212 <= -9.22337204e18)
        {
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        if (v212 >= 9.22337204e18)
        {
LABEL_168:
          __break(1u);
          return;
        }

        *(v208 + 16) = v212;
        (v115)(&v224, 0);
        v113(v226, 0);
      }

      goto LABEL_133;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
    v29 = swift_dynamicCastClass();
    if (v29)
    {
      v28 = v29;
      v26 = v221;
LABEL_15:
      sub_1CEFCCC44(v24, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v30 = *(v28 + 144);
      v31 = *(v28 + 152);

      v21 = v226;
      v32 = sub_1CF387C98(v226);
      v24 = &v224;
      v15 = sub_1CF598798(&v224, v30, v31);
      if (*(v33 + 24) != 2)
      {
        v8 = v33;
        v34 = v216;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v36 = v35;
        (*(v218 + 1))(v34, v217);
        v37 = v36 * 1000000000.0;
        if (COERCE__INT64(fabs(v36 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v37 > -9.22337204e18)
        {
          if (v37 >= 9.22337204e18)
          {
            __break(1u);
            goto LABEL_20;
          }

LABEL_53:
          *(v8 + 16) = v37;
          (v15)(&v224, 0);
          (v32)(v226, 0);
          goto LABEL_135;
        }

        __break(1u);
        goto LABEL_143;
      }

      goto LABEL_44;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA10, &qword_1CF9FADD8);
    v73 = swift_dynamicCastClass();
    if (v73)
    {
      v32 = v73;
      v74 = v73 + *(*v73 + 632);
      swift_beginAccess();
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      if (!(*(*(v75 - 8) + 48))(v74, 1, v75))
      {
        v76 = *(v74 + 16);
        v77 = *(v74 + 24);
        v21 = sub_1CF387C98(v226);
        LODWORD(v215) = v77;
        v62 = sub_1CF598798(&v224, v76, v77);
        if (*(v78 + 24) == 2)
        {
          (v62)(&v224, 0);
          v21(v226, 0);
        }

        else
        {
          v186 = v78;
          v187 = v216;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v189 = v188;
          (*(v218 + 1))(v187, v217);
          v190 = v189 * 1000000000.0;
          if (COERCE__INT64(fabs(v189 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

          if (v190 <= -9.22337204e18)
          {
LABEL_157:
            __break(1u);
            goto LABEL_158;
          }

          if (v190 >= 9.22337204e18)
          {
LABEL_158:
            __break(1u);
            goto LABEL_159;
          }

          *(v186 + 16) = v190;
          (v62)(&v224, 0);
          v21(v226, 0);
        }

        if (*(v32 + 112) == 3)
        {
          v192 = *(v32 + 96);
          v191 = *(v32 + 104);
          sub_1CF03C530(v192, v191, 3u);
          sub_1CF03C530(v192, v191, 3u);
          if (sub_1CF94C0CC(v192) == 9)
          {
            v193 = sub_1CF387C98(v226);
            v195 = sub_1CF598798(&v224, v76, v215);
            if (*(v194 + 24) != 2)
            {
              *(v194 + 24) = 1;
            }

            (v195)(&v224, 0);
            v193(v226, 0);

            sub_1CF03D7A8(v192, v191, 3u);
            v196 = v221;
            swift_beginAccess();
            *(v196 + 121) = 1;
            *(v196 + 72) = 1;
            goto LABEL_134;
          }

          sub_1CF03D7A8(v192, v191, 3u);
        }
      }

      goto LABEL_133;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA38, &unk_1CF9FAE30);
    v99 = swift_dynamicCastClass();
    if (v99)
    {
      v100 = v99;
      swift_beginAccess();
      v101 = *(v100 + 168);
      if (v101 != 255)
      {
        v102 = *(v100 + 160);
        v21 = v226;
        v32 = sub_1CF387C98(v226);
        v62 = sub_1CF598798(&v224, v102, v101);
        if (*(v103 + 24) == 2)
        {
          (v62)(&v224, 0);
          (v32)(v226, 0);
        }

        else
        {
          v197 = v103;
          v198 = v216;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v200 = v199;
          (*(v218 + 1))(v198, v217);
          v201 = v200 * 1000000000.0;
          if (COERCE__INT64(fabs(v200 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_159:
            __break(1u);
            goto LABEL_160;
          }

          if (v201 <= -9.22337204e18)
          {
LABEL_160:
            __break(1u);
            goto LABEL_161;
          }

          if (v201 >= 9.22337204e18)
          {
LABEL_161:
            __break(1u);
            goto LABEL_162;
          }

          *(v197 + 16) = v201;
          (v62)(&v224, 0);
          (v32)(v226, 0);
        }
      }

      goto LABEL_133;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
    v117 = swift_dynamicCastClass();
    if (!v117)
    {
      goto LABEL_133;
    }

    v118 = v117;
    sub_1CEFCCC44(v24, &qword_1EC4BE710, &qword_1CF9FE5A8);
    swift_beginAccess();
    v119 = *(v118 + 232);
    v120 = v119;

    if (!v119)
    {
      goto LABEL_135;
    }

    v121 = v120;
    v122 = sub_1CF387C98(v226);
    v124 = sub_1CF598870(&v224, v121);
    if (*(v123 + 24) == 2)
    {
      (v124)(&v224, 0);

      v122(v226, 0);
      goto LABEL_135;
    }

    v203 = v123;
    v204 = v216;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v206 = v205;
    (*(v218 + 1))(v204, v217);
    v207 = v206 * 1000000000.0;
    if (COERCE__INT64(fabs(v206 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v207 > -9.22337204e18)
    {
      if (v207 < 9.22337204e18)
      {
        *(v203 + 16) = v207;
        (v124)(&v224, 0);

        v122(v226, 0);
        goto LABEL_135;
      }

      goto LABEL_165;
    }

    __break(1u);
LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

  if (EnumCaseMultiPayload != 12)
  {
    v26 = v221;
    if (EnumCaseMultiPayload != 21)
    {
      goto LABEL_134;
    }

    sub_1CEFCCBDC(v24, v15, &qword_1EC4BE710, &qword_1CF9FE5A8);
    if ((*v15 & 0x8000000000000000) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        v28 = v27;
        goto LABEL_15;
      }

LABEL_133:

      goto LABEL_134;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
    v67 = swift_dynamicCastClass();
    if (v67)
    {
      v68 = v67;
      goto LABEL_42;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E30, &qword_1CF9FB460);
    v82 = swift_dynamicCastClass();
    if (!v82)
    {
      goto LABEL_133;
    }

    goto LABEL_57;
  }

  sub_1CEFCCBDC(v24, v21, &qword_1EC4BE710, &qword_1CF9FE5A8);
  v26 = v221;
  if (*(v21 + 9))
  {
    sub_1CF47FDFC(*(v21 + 2), *(v21 + 12));
    sub_1CEFD0994(*v21, *(v21 + 8), *(v21 + 9));
    goto LABEL_134;
  }

LABEL_20:
  v38 = *(v21 + 27);
  if (v38 == 3)
  {
    v12 = *v21;
    v8 = *(v21 + 8);
    v18 = *(v21 + 2);
    v32 = *(v21 + 12);
    v90 = v216;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v92 = v91;
    (*(v218 + 1))(v90, v217);
    v93 = v92 * 1000000000.0;
    if (COERCE__INT64(fabs(v92 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v94 = v222;
      if (v93 > -9.22337204e18)
      {
        if (v93 < 9.22337204e18)
        {
          sub_1CF471120(v12, v8, v93, v219, v220);
          if (!v94)
          {
            if (v32 >> 8 > 0xFE || (v32 & 0x100) == 0)
            {
              swift_beginAccess();
              sub_1CF6E9500(&v224, v12, v8);
              swift_endAccess();
            }

            else
            {
              swift_beginAccess();
              sub_1CEFD0988(v18, v32, 1);
              sub_1CF1CEABC(v18);
              swift_endAccess();
              sub_1CF47FDFC(v18, v32);
            }

            sub_1CF47FDFC(v18, v32);
            *(v26 + 72) = 1;
            sub_1CEFCCC44(v24, &qword_1EC4BE710, &qword_1CF9FE5A8);
            v66 = 0;
            goto LABEL_136;
          }

          v222 = v94;
          sub_1CF47FDFC(v18, v32);
LABEL_85:
          sub_1CEFCCC44(v24, &qword_1EC4BE710, &qword_1CF9FE5A8);
          return;
        }

        goto LABEL_148;
      }

LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  if (v38 == 4)
  {
    v12 = *v21;
    v8 = *(v21 + 8);
    v18 = *(v21 + 2);
    v32 = *(v21 + 12);
    swift_beginAccess();
    v85 = sub_1CF7BF2C0(v12, v8);
    if ((v86 & 1) == 0)
    {
      goto LABEL_62;
    }

    v15 = v85;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v26[10];
    v224 = v88;
    v26[10] = 0x8000000000000000;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_61:
      sub_1CF1D134C(v15, v88);
      v26[10] = v88;
LABEL_62:
      swift_endAccess();
      v62 = 1;
      *(v26 + 72) = 1;
      if (v32 >> 8 > 0xFE || (v32 & 0x100) == 0)
      {
        swift_beginAccess();
        sub_1CF6E9500(&v224, v12, v8);
        swift_endAccess();
        sub_1CF47FDFC(v18, v32);
        *(v26 + 72) = 1;
        goto LABEL_134;
      }

      sub_1CEFD0988(v18, v32, 1);
      v104 = v216;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v106 = v105;
      (*(v218 + 1))(v104, v217);
      v107 = v106 * 1000000000.0;
      if (COERCE__INT64(fabs(v106 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v108 = v222;
        if (v107 > -9.22337204e18)
        {
          if (v107 < 9.22337204e18)
          {
            sub_1CF4716AC(v18, v107, v219, v220);
            sub_1CF47FDFC(v18, v32);
            sub_1CF47FDFC(v18, v32);
            v222 = v108;
            if (v108)
            {
              goto LABEL_85;
            }

LABEL_134:
            sub_1CEFCCC44(v24, &qword_1EC4BE710, &qword_1CF9FE5A8);
            goto LABEL_135;
          }

          goto LABEL_155;
        }
      }

      __break(1u);
LABEL_155:
      __break(1u);
      goto LABEL_156;
    }

LABEL_152:
    sub_1CF7D4F34();
    v88 = v224;
    goto LABEL_61;
  }

  if (v38 != 6 || *(v21 + 26) - 3 >= 2)
  {
    sub_1CF47FDFC(*(v21 + 2), *(v21 + 12));
    goto LABEL_134;
  }

  v39 = v26;
  v40 = *(v21 + 8);
  v41 = *v21;
  v12 = *(v21 + 12);
  v21 = *(v21 + 2);
  sub_1CEFCCC44(v24, &qword_1EC4BE710, &qword_1CF9FE5A8);
  swift_beginAccess();
  if (*(v39[10] + 16))
  {
    sub_1CF7BF2C0(v41, v40);
    if (v42)
    {
      v218 = v21;
      v43 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v44 = sub_1CF9E6108();
      v45 = sub_1CF9E7298();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v217 = v46;
        v47 = swift_slowAlloc();
        v223[0] = v47;
        *v46 = 136315138;
        v224 = v41;
        v225 = v40;
        v48 = VFSItemID.description.getter(v47);
        v50 = v49;
        v51 = sub_1CEFD0DF0(v48, v49, v223);
        v50, v52, v53, v54, v55, v56, v57, v58;
        v59 = v217;
        *(v217 + 1) = v51;
        _os_log_impl(&dword_1CEFC7000, v44, v45, "💂🏼‍♀️ stop monitoring import:disk for %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x1D386CDC0](v47, -1, -1);
        MEMORY[0x1D386CDC0](v59, -1, -1);
      }

      (*(v214 + 8))(v8, v215);
      v32 = v221;
      swift_beginAccess();
      v60 = sub_1CF7BF2C0(v41, v40);
      v21 = v218;
      if ((v61 & 1) == 0)
      {
        goto LABEL_31;
      }

      v62 = v60;
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v64 = *(v32 + 80);
      v223[0] = v64;
      *(v32 + 80) = 0x8000000000000000;
      if (v63)
      {
LABEL_30:
        sub_1CF1D134C(v62, v64);
        *(v32 + 80) = v64;
LABEL_31:
        swift_endAccess();
        *(v32 + 72) = 1;
        goto LABEL_32;
      }

LABEL_162:
      sub_1CF7D4F34();
      v64 = v223[0];
      goto LABEL_30;
    }
  }

LABEL_32:
  if (v12 >> 8 > 0xFE || (v12 & 0x100) == 0)
  {
    v66 = v222;
    goto LABEL_136;
  }

  v125 = v221;
  v126 = v221[11];
  if (*v126->tree)
  {
    v218 = (v221 + 11);
    v128 = v221[13];
    v127 = v221[14];
    v129 = v21;
    v130 = v221[12];
    v131 = v221[10];

    sub_1CEFE863C(v129);
    v133 = v132;
    v127, v132, v134, v135, v136, v137, v138, v139;
    v128, v140, v141, v142, v143, v144, v145, v146;
    v130, v147, v148, v149, v150, v151, v152, v153;
    v126, v154, v155, v156, v157, v158, v159, v160;
    v131, v161, v162, v163, v164, v165, v166, v167;
    if (v133)
    {
      v168 = fpfs_current_or_default_log();
      v169 = v12;
      v170 = v213;
      sub_1CF9E6128();
      sub_1CEFD0988(v129, v169, 1);
      v171 = sub_1CF9E6108();
      v172 = sub_1CF9E7298();
      if (os_log_type_enabled(v171, v172))
      {
        v173 = swift_slowAlloc();
        v174 = swift_slowAlloc();
        v224 = v174;
        *v173 = 136315138;
        v175 = NSFileProviderItemIdentifier.description.getter(v129);
        v177 = v176;
        sub_1CF47FDFC(v129, v169);
        v178 = sub_1CEFD0DF0(v175, v177, &v224);
        v177, v179, v180, v181, v182, v183, v184, v185;
        *(v173 + 4) = v178;
        _os_log_impl(&dword_1CEFC7000, v171, v172, "💂🏼‍♀️ stop monitoring import:provider for %s", v173, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v174);
        MEMORY[0x1D386CDC0](v174, -1, -1);
        MEMORY[0x1D386CDC0](v173, -1, -1);

        (*(v214 + 8))(v213, v215);
      }

      else
      {
        sub_1CF47FDFC(v129, v169);

        (*(v214 + 8))(v170, v215);
      }

      swift_beginAccess();
      sub_1CEFD0988(v129, v169, 1);
      sub_1CF1CEABC(v129);
      swift_endAccess();
      sub_1CF47FDFC(v129, v169);
      sub_1CF47FDFC(v129, v169);
      *(v125 + 72) = 1;
      goto LABEL_135;
    }

    v202 = v129;
  }

  else
  {
    v202 = v21;
  }

  sub_1CF47FDFC(v202, v12);
LABEL_135:
  v66 = v222;
LABEL_136:
  sub_1CF470E34(v219, v220);
  if (!v66)
  {
    sub_1CF470518();
  }
}

uint64_t sub_1CF4739B0(void *a1, int a2, void *a3, unsigned int a4, void *(*a5)(_BYTE *__return_ptr))
{
  LODWORD(v325) = a2;
  v10 = sub_1CF9E5CF8();
  v315 = *(v10 - 8);
  v316 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v318 = &v298 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v311 = &v298 - v13;
  v14 = sub_1CF9E6118();
  v15 = *(v14 - 8);
  v327 = v14;
  v328 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v323 = &v298 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v306 = &v298 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v307 = &v298 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v309 = &v298 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v310 = &v298 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v308 = &v298 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v312 = &v298 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v314 = &v298 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v313 = &v298 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v319 = &v298 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v321 = &v298 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v322 = &v298 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v326 = &v298 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v298 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v298 - v45;
  v320 = a3;
  v337 = a3;
  v317 = a4;
  v338 = a4;
  v47 = objc_sync_enter(a1);
  if (v47)
  {
LABEL_123:
    MEMORY[0x1EEE9AC00](v47);
    v297 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v298 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v48 = a1;
  v49 = *(a1 + qword_1EDEADAA8);
  v324 = v48;
  result = objc_sync_exit(v48);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v297 = v324;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v298 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if (v49)
  {
    result = a5(v336);
    if (!v5)
    {
      memcpy(v335, v336, sizeof(v335));
      if (sub_1CF08B99C(v335) == 1)
      {
        memcpy(v334, v336, sizeof(v334));
        return sub_1CEFCCC44(v334, &unk_1EC4BFC20, &unk_1CFA0A290);
      }

      v305 = 0;
      memcpy(v334, v336, sizeof(v334));
      v345 = *&v336[73];
      v346 = *&v336[89];
      *v347 = *&v336[105];
      *&v347[15] = *&v336[120];
      v341 = *&v336[9];
      v342 = *&v336[25];
      v343 = *&v336[41];
      v344 = *&v336[57];
      v333 = BYTE2(v334[17]);
      v353 = *&v336[187];
      v354 = *&v336[203];
      *v355 = *&v336[219];
      *&v355[13] = *&v336[232];
      v350 = *&v336[139];
      v351 = *&v336[155];
      v352 = *&v336[171];
      v51 = v334[31];
      v360 = *&v336[304];
      v361 = *&v336[320];
      v358 = *&v336[272];
      v359 = *&v336[288];
      v357 = *&v336[256];
      v364 = *&v336[345];
      v365 = *&v336[361];
      v368 = *&v336[409];
      v369 = *&v336[425];
      v366 = *&v336[377];
      v367 = *&v336[393];
      *(v373 + 15) = *&v336[504];
      v52 = LOBYTE(v334[43]);
      v372 = *&v336[473];
      v373[0] = *&v336[489];
      v370 = *&v336[441];
      v371 = *&v336[457];
      v339 = v334[0];
      v340 = v334[1];
      v348 = v334[17];
      v349 = BYTE2(v334[17]);
      v362 = *&v336[336];
      v356 = v334[31];
      v363 = v334[43];
      if (LOBYTE(v334[1]) == 255)
      {
        return sub_1CEFCCC44(v334, &unk_1EC4BFC20, &unk_1CFA0A290);
      }

      v331 = v334[0];
      v332 = v334[1];
      if (!v334[31])
      {
        return sub_1CEFCCC44(v334, &unk_1EC4BFC20, &unk_1CFA0A290);
      }

      if (BYTE1(v334[17]) == 3)
      {
        v304 = LOBYTE(v334[17]);
        v53 = objc_allocWithZone(FPLoggerScope);
        v303 = v51;
        v325 = v51;
        v54 = [v53 init];
        v55 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v56 = v54;
        sub_1CEFCCBDC(v334, v330, &unk_1EC4BFC20, &unk_1CFA0A290);
        v57 = sub_1CF9E6108();
        v58 = sub_1CF9E7298();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v300 = v60;
          v301 = swift_slowAlloc();
          v330[0] = v301;
          *v59 = 138412546;
          v61 = [v56 enter];
          *(v59 + 4) = v61;
          *v60 = v61;
          *(v59 + 12) = 2082;
          v302 = v56;
          v62 = v58;
          v63 = sub_1CF38B634();
          LODWORD(v60) = v52;
          v65 = v64;
          sub_1CEFCCC44(v334, &unk_1EC4BFC20, &unk_1CFA0A290);
          v66 = sub_1CEFD0DF0(v63, v65, v330);
          v67 = v65;
          v52 = v60;
          v67, v68, v69, v70, v71, v72, v73, v74;
          *(v59 + 14) = v66;
          v75 = v62;
          v56 = v302;
          _os_log_impl(&dword_1CEFC7000, v57, v75, "%@ evaluating disk import status for %{public}s", v59, 0x16u);
          v76 = v300;
          sub_1CEFCCC44(v300, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v76, -1, -1);
          v77 = v301;
          __swift_destroy_boxed_opaque_existential_1(v301);
          MEMORY[0x1D386CDC0](v77, -1, -1);
          MEMORY[0x1D386CDC0](v59, -1, -1);
        }

        else
        {
          sub_1CEFCCC44(v334, &unk_1EC4BFC20, &unk_1CFA0A290);
        }

        v81 = *(v328 + 1);
        v82 = v46;
        v83 = v327;
        v81(v82, v327);
        if (v52 != 3)
        {
          v84 = v83;
          v85 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          memcpy(v330, v334, sizeof(v330));
          sub_1CEFCCBDC(v334, v329, &unk_1EC4BFC20, &unk_1CFA0A290);
          sub_1CEFCCBDC(v330, v329, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
          v86 = sub_1CF9E6108();
          v87 = sub_1CF9E72B8();
          if (os_log_type_enabled(v86, v87))
          {
            LODWORD(v301) = v87;
            v302 = v86;
            v88 = swift_slowAlloc();
            v300 = swift_slowAlloc();
            v329[0] = v300;
            *v88 = 136446466;
            v89 = 0xED00006465747365;
            v90 = 0x7265746E49746F6ELL;
            v91 = 0xE800000000000000;
            v92 = 0x676E696863746177;
            if (v52 != 2)
            {
              v92 = 0xD000000000000015;
              v91 = 0x80000001CFA45AA0;
            }

            if (v52)
            {
              v90 = 0x746F687370616E73;
              v89 = 0xEC000000676E6974;
            }

            if (v52 <= 1)
            {
              v93 = v90;
            }

            else
            {
              v93 = v92;
            }

            if (v52 <= 1)
            {
              v94 = v89;
            }

            else
            {
              v94 = v91;
            }

            v95 = sub_1CEFD0DF0(v93, v94, v329);
            v94, v96, v97, v98, v99, v100, v101, v102;
            *(v88 + 4) = v95;
            *(v88 + 12) = 2082;
            v103 = sub_1CF38B634();
            v105 = v104;
            sub_1CEFCCC44(v334, &unk_1EC4BFC20, &unk_1CFA0A290);
            sub_1CEFCCC44(v334, &unk_1EC4BFC20, &unk_1CFA0A290);
            v106 = sub_1CEFD0DF0(v103, v105, v329);
            v105, v107, v108, v109, v110, v111, v112, v113;
            *(v88 + 14) = v106;
            v114 = v302;
            _os_log_impl(&dword_1CEFC7000, v302, v301, "👽 item content status is %{public}s instead of content:import: %{public}s", v88, 0x16u);
            v115 = v300;
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v115, -1, -1);
            MEMORY[0x1D386CDC0](v88, -1, -1);

            v83 = v327;
            v116 = v43;
            v117 = v327;
          }

          else
          {
            sub_1CEFCCC44(v334, &unk_1EC4BFC20, &unk_1CFA0A290);
            sub_1CEFCCC44(v334, &unk_1EC4BFC20, &unk_1CFA0A290);

            v116 = v43;
            v83 = v84;
            v117 = v84;
          }

          v81(v116, v117);
        }

        if (v304 != 2)
        {
          v132 = v81;
          v133 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v134 = sub_1CF9E6108();
          v135 = sub_1CF9E7298();
          if (os_log_type_enabled(v134, v135))
          {
            v136 = swift_slowAlloc();
            *v136 = 0;
            _os_log_impl(&dword_1CEFC7000, v134, v135, "skip item not watching content", v136, 2u);
            MEMORY[0x1D386CDC0](v136, -1, -1);
          }

          v132(v326, v83);
          v137 = fpfs_current_or_default_log();
          v138 = v83;
          v139 = v323;
          sub_1CF9E6128();
          v125 = v56;
          v140 = sub_1CF9E6108();
          v141 = sub_1CF9E7298();

          if (os_log_type_enabled(v140, v141))
          {
            v142 = swift_slowAlloc();
            v143 = swift_slowAlloc();
            *v142 = 138412290;
            v144 = [v125 leave];
            *(v142 + 4) = v144;
            *v143 = v144;
            _os_log_impl(&dword_1CEFC7000, v140, v141, "%@", v142, 0xCu);
            sub_1CEFCCC44(v143, &qword_1EC4BE350, &unk_1CF9FC3B0);
            MEMORY[0x1D386CDC0](v143, -1, -1);
            MEMORY[0x1D386CDC0](v142, -1, -1);

            v145 = v139;
            v146 = v327;
          }

          else
          {

            v145 = v139;
            v146 = v138;
          }

          goto LABEL_55;
        }

        v118 = v56;
        v119 = v324[4];
        v120 = v305;
        v121 = (*(*v119 + 424))(&v331, &v337, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v120)
        {
          v122 = v81;
          v305 = v120;
          v123 = fpfs_current_or_default_log();
          v124 = v322;
          sub_1CF9E6128();
          v125 = v118;
          v126 = sub_1CF9E6108();
          v127 = sub_1CF9E7298();

          if (os_log_type_enabled(v126, v127))
          {
            v128 = swift_slowAlloc();
            v129 = swift_slowAlloc();
            *v128 = 138412290;
            v130 = [v125 leave];
            *(v128 + 4) = v130;
            *v129 = v130;
            _os_log_impl(&dword_1CEFC7000, v126, v127, "%@", v128, 0xCu);
            sub_1CEFCCC44(v129, &qword_1EC4BE350, &unk_1CF9FC3B0);
            MEMORY[0x1D386CDC0](v129, -1, -1);
            MEMORY[0x1D386CDC0](v128, -1, -1);

            v131 = v322;
          }

          else
          {

            v131 = v124;
          }

          v122(v131, v83);
          goto LABEL_56;
        }

        if (v121)
        {
          v305 = 0;
          v147 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v148 = sub_1CF9E6108();
          v149 = sub_1CF9E7298();
          if (os_log_type_enabled(v148, v149))
          {
            v150 = swift_slowAlloc();
            *v150 = 0;
            _os_log_impl(&dword_1CEFC7000, v148, v149, "skip item with pending children", v150, 2u);
            MEMORY[0x1D386CDC0](v150, -1, -1);
          }

          v81(v321, v83);
          v151 = fpfs_current_or_default_log();
          v152 = v319;
          sub_1CF9E6128();
          v153 = v118;
          v132 = v81;
          v125 = v153;
          v154 = sub_1CF9E6108();
          v155 = sub_1CF9E7298();

          if (os_log_type_enabled(v154, v155))
          {
            v156 = swift_slowAlloc();
            v157 = swift_slowAlloc();
            *v156 = 138412290;
            v158 = [v125 leave];
            *(v156 + 4) = v158;
            *v157 = v158;
            _os_log_impl(&dword_1CEFC7000, v154, v155, "%@", v156, 0xCu);
            sub_1CEFCCC44(v157, &qword_1EC4BE350, &unk_1CF9FC3B0);
            MEMORY[0x1D386CDC0](v157, -1, -1);
            MEMORY[0x1D386CDC0](v156, -1, -1);

            v145 = v319;
          }

          else
          {

            v145 = v152;
          }

          v146 = v83;
LABEL_55:
          v132(v145, v146);
LABEL_56:

          return sub_1CEFCCC44(v334, &unk_1EC4BFC20, &unk_1CFA0A290);
        }

        if (v333)
        {
          v159 = (*(*v119 + 384))(&v331, 1, &v337, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          v160 = v325;
          v161 = v317;
          v299 = v81;
          if (v159)
          {
            a1 = 0;
            v162 = v320;
            goto LABEL_60;
          }

          v193 = v311;
          (*(*v119 + 240))(&v331, 1, &v337, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          a1 = 0;
          v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
          if ((*(*(v234 - 8) + 48))(v193, 1, v234) == 1)
          {
            sub_1CEFCCC44(v311, &qword_1EC4C1B40, &unk_1CF9FCB70);
            goto LABEL_90;
          }

          v270 = v311;
          v271 = v311 + *(v234 + 48);
          LOBYTE(v271) = *(v271 + *(type metadata accessor for ItemMetadata(0) + 80));
          sub_1CEFCCC44(v270, &unk_1EC4BE360, &qword_1CF9FE650);
          if (v271)
          {
LABEL_90:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4750, &unk_1CFA05360);
            v272 = swift_allocObject();
            *(v272 + 16) = xmmword_1CF9FC3C0;
            v273 = v303;
            *(v272 + 32) = v303;
            *(v272 + 40) = 256;
            *(v272 + 48) = 0;
            *(v272 + 114) = 10;
            *(v272 + 147) = 9;
            *(v272 + 152) = v273;
            *(v272 + 160) = 393472;
            *(v272 + 267) = 15;
            *(v272 + 272) = v273;
            *(v272 + 280) = 256;
            v326 = v325;
            v274 = v318;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v276 = v275;
            v277 = *(v315 + 8);
            v47 = v277(v274, v316);
            v278 = v276 * 1000000000.0;
            if (COERCE__INT64(fabs(v276 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v278 > -9.22337204e18)
              {
                if (v278 < 9.22337204e18)
                {
                  *(v272 + 288) = xmmword_1CFA04F40;
                  *(v272 + 304) = v278;
                  *(v272 + 354) = 0;
                  *(v272 + 387) = 9;
                  sub_1CF808014(MEMORY[0x1E69E7CC0], v272, v320, v317);
                  v272, v279, v280, v281, v282, v283, v284, v285;
                  (*(*v119[2] + 96))(v330);
                  v286 = v318;
                  sub_1CF9E5CE8();
                  sub_1CF9E5C98();
                  v288 = v287;
                  v47 = v277(v286, v316);
                  v289 = v288 * 1000000000.0;
                  if (COERCE__INT64(fabs(v288 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                  {
                    if (v289 > -9.22337204e18)
                    {
                      if (v289 < 9.22337204e18)
                      {
                        v290 = v289;
                        v291 = v330[0];
                        a1 = LOBYTE(v330[1]);
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA28, &unk_1CFA05660);
                        v292 = swift_allocObject();
                        *(v292 + 152) = a1;
                        *(v292 + 16) = 0u;
                        *(v292 + 32) = 0u;
                        *(v292 + 48) = 1;
                        *(v292 + 56) = 0u;
                        *(v292 + 72) = 0u;
                        *(v292 + 88) = 0;
                        *(v292 + 96) = xmmword_1CF9FEC30;
                        *(v292 + 112) = 0;
                        *(v292 + 120) = 0x2000000000000000;
                        *(v292 + 128) = v290;
                        *(v292 + 136) = 0x10000;
                        *(v292 + 144) = v291;
                        v293 = v318;
                        sub_1CF9E5CE8();
                        sub_1CF9E5C98();
                        v295 = v294;
                        v47 = v277(v293, v316);
                        v296 = v295 * 1000000000.0;
                        if (COERCE__INT64(fabs(v295 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                        {
                          if (v296 > -9.22337204e18)
                          {
                            if (v296 < 9.22337204e18)
                            {
                              sub_1CF902E70(v292, v296, v320, v317);

                              goto LABEL_86;
                            }

                            goto LABEL_122;
                          }

LABEL_121:
                          __break(1u);
LABEL_122:
                          __break(1u);
                          goto LABEL_123;
                        }

LABEL_120:
                        __break(1u);
                        goto LABEL_121;
                      }

LABEL_119:
                      __break(1u);
                      goto LABEL_120;
                    }

LABEL_118:
                    __break(1u);
                    goto LABEL_119;
                  }

LABEL_117:
                  __break(1u);
                  goto LABEL_118;
                }

LABEL_116:
                __break(1u);
                goto LABEL_117;
              }

LABEL_115:
              __break(1u);
              goto LABEL_116;
            }

LABEL_114:
            __break(1u);
            goto LABEL_115;
          }

          v83 = v327;
        }

        else
        {
          v299 = v81;
          a1 = 0;
        }

        v160 = v325;
        v161 = v317;
        v162 = v320;
LABEL_60:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4750, &unk_1CFA05360);
        v163 = swift_allocObject();
        *(v163 + 16) = xmmword_1CF9FA450;
        *(v163 + 32) = v303;
        *(v163 + 40) = 262400;
        *(v163 + 147) = 15;
        v326 = v160;
        v164 = MEMORY[0x1E69E7CC0];
        sub_1CF808014(MEMORY[0x1E69E7CC0], v163, v162, v161);
        v163, v165, v166, v167, v168, v169, v170, v171;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
        v187 = swift_allocObject();
        *(v187 + 16) = v164;
        *(v187 + 24) = v164;
        *(v187 + 32) = v164;
        *(v187 + 40) = v164;
        *(v187 + 48) = 0;
        v188 = v318;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v190 = v189;
        v191 = *(v315 + 8);
        v47 = v191(v188, v316);
        v192 = v190 * 1000000000.0;
        if (COERCE__INT64(fabs(v190 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v192 > -9.22337204e18)
          {
            if (v192 < 9.22337204e18)
            {
              sub_1CF3A0978(v331, v332, 0x2000000000000000, v192, 0x20000, v324, 0, v187, v320, v161);
              v305 = 0;
              a1 = v318;
              sub_1CF9E5CE8();
              sub_1CF9E5C98();
              v195 = v194;
              v47 = v191(a1, v316);
              v196 = v195 * 1000000000.0;
              if (COERCE__INT64(fabs(v195 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v196 > -9.22337204e18)
                {
                  v197 = v305;
                  if (v196 < 9.22337204e18)
                  {
                    sub_1CF7F6588(v187, v196, v320, v161);
                    if (v197)
                    {
                      v305 = v197;
                      swift_setDeallocating();
                      *(v187 + 16), v198, v199, v200, v201, v202, v203, v204;
                      *(v187 + 24), v205, v206, v207, v208, v209, v210, v211;
                      *(v187 + 32), v212, v213, v214, v215, v216, v217, v218;
                      *(v187 + 40), v219, v220, v221, v222, v223, v224, v225;

                      swift_deallocClassInstance();
                      v226 = fpfs_current_or_default_log();
                      v227 = v308;
                      sub_1CF9E6128();
                      v228 = v118;
                      v229 = sub_1CF9E6108();
                      v230 = sub_1CF9E7298();

                      if (os_log_type_enabled(v229, v230))
                      {
                        v231 = swift_slowAlloc();
                        v232 = swift_slowAlloc();
                        *v231 = 138412290;
                        v233 = [v228 leave];
                        *(v231 + 4) = v233;
                        *v232 = v233;
                        _os_log_impl(&dword_1CEFC7000, v229, v230, "%@", v231, 0xCu);
                        sub_1CEFCCC44(v232, &qword_1EC4BE350, &unk_1CF9FC3B0);
                        MEMORY[0x1D386CDC0](v232, -1, -1);
                        MEMORY[0x1D386CDC0](v231, -1, -1);
                      }

                      v299(v227, v83);
                      return sub_1CEFCCC44(v334, &unk_1EC4BFC20, &unk_1CFA0A290);
                    }

                    swift_setDeallocating();
                    *(v187 + 16), v235, v236, v237, v238, v239, v240, v241;
                    *(v187 + 24), v242, v243, v244, v245, v246, v247, v248;
                    *(v187 + 32), v249, v250, v251, v252, v253, v254, v255;
                    *(v187 + 40), v256, v257, v258, v259, v260, v261, v262;

                    swift_deallocClassInstance();
LABEL_86:
                    v263 = fpfs_current_or_default_log();
                    sub_1CF9E6128();
                    v264 = v118;
                    v265 = sub_1CF9E6108();
                    v266 = sub_1CF9E7298();

                    if (os_log_type_enabled(v265, v266))
                    {
                      v267 = swift_slowAlloc();
                      v268 = swift_slowAlloc();
                      *v267 = 138412290;
                      v269 = [v264 leave];
                      *(v267 + 4) = v269;
                      *v268 = v269;
                      _os_log_impl(&dword_1CEFC7000, v265, v266, "%@", v267, 0xCu);
                      sub_1CEFCCC44(v268, &qword_1EC4BE350, &unk_1CF9FC3B0);
                      MEMORY[0x1D386CDC0](v268, -1, -1);
                      MEMORY[0x1D386CDC0](v267, -1, -1);
                    }

                    v299(v310, v327);
                    return sub_1CEFCCC44(v334, &unk_1EC4BFC20, &unk_1CFA0A290);
                  }

                  goto LABEL_113;
                }

LABEL_112:
                __break(1u);
LABEL_113:
                __break(1u);
                goto LABEL_114;
              }

LABEL_111:
              __break(1u);
              goto LABEL_112;
            }

LABEL_110:
            __break(1u);
            goto LABEL_111;
          }

LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      if ((v325 & 1) == 0 || BYTE1(v334[17]) != 6 || !LOBYTE(v334[43]))
      {
        return sub_1CEFCCC44(v334, &unk_1EC4BFC20, &unk_1CFA0A290);
      }

      v78 = *(*v324[4] + 424);
      v79 = v334[31];
      v80 = v78(&v331, &v337, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      a1 = 0;
      if (v80)
      {

        return sub_1CEFCCC44(v334, &unk_1EC4BFC20, &unk_1CFA0A290);
      }

      v172 = v331;
      v173 = v332;
      v174 = v318;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v176 = v175;
      v177 = v316;
      v178 = *(v315 + 8);
      v47 = v178(v174, v316);
      v179 = v176 * 1000000000.0;
      if (COERCE__INT64(fabs(v176 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v328 = v178;
        if (v179 > -9.22337204e18)
        {
          if (v179 < 9.22337204e18)
          {
            v180 = v173;
            v181 = v179;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
            v182 = swift_allocObject();
            *(v182 + 152) = v180;
            *(v182 + 16) = 0u;
            *(v182 + 32) = 0u;
            *(v182 + 48) = 1;
            *(v182 + 56) = 0u;
            *(v182 + 72) = 0u;
            *(v182 + 88) = 0;
            *(v182 + 120) = 0x2000000000000000;
            *(v182 + 128) = v181;
            *(v182 + 136) = 0x20000;
            *(v182 + 144) = v172;
            *(v182 + 96) = xmmword_1CFA04E20;
            *(v182 + 112) = 0;
            v183 = v318;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v185 = v184;
            v47 = v328(v183, v177);
            v186 = v185 * 1000000000.0;
            if (COERCE__INT64(fabs(v185 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v186 > -9.22337204e18)
              {
                if (v186 < 9.22337204e18)
                {
                  sub_1CF902E70(v182, v186, v320, v317);

                  return sub_1CEFCCC44(v334, &unk_1EC4BFC20, &unk_1CFA0A290);
                }

LABEL_107:
                __break(1u);
                goto LABEL_108;
              }

LABEL_106:
              __break(1u);
              goto LABEL_107;
            }

LABEL_105:
            __break(1u);
            goto LABEL_106;
          }

LABEL_104:
          __break(1u);
          goto LABEL_105;
        }
      }

      __break(1u);
      goto LABEL_104;
    }
  }

  return result;
}

void sub_1CF475D0C(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = a5;
  v15 = a2;
  v16 = a3;
  v13 = a4;
  v14 = a5;
  (*(**(a1 + 32) + 288))(&v11, &v15, &v13, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (!v6)
  {
    if (v12 == 255)
    {
      sub_1CF095754(__src);
      memcpy(a6, __src, 0x208uLL);
    }

    else
    {
      sub_1CF7EB934(v11, v12, a4, v7, a6);
    }
  }
}

void sub_1CF475E04(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, unsigned int a6)
{
  v13 = sub_1CF9E5CF8();
  v63 = *(v13 - 8);
  v64 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v59 - v18;
  v67 = a1;
  v68 = a2;
  v61 = a5;
  v65 = a5;
  v62 = a6;
  v66 = a6;
  if (*(a3 + 456) == 1)
  {
    (*(**(a4 + 32) + 240))(&v67, 1, &v65, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970, v17);
    if (!v6)
    {
      v60 = a4;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v19, 1, v20) == 1)
      {
        sub_1CEFCCC44(v19, &qword_1EC4C1B40, &unk_1CF9FCB70);
LABEL_13:
        v36 = *(v60 + 24);
        sub_1CF8DCAA0(v22);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1CF9FA450;
        *(v37 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE60, &qword_1CF9FAE20);
        v38 = (*(*v36 + 312))(&v67, v37, &v65, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v37, v39, v40, v41, v42, v43, v44, v45;
        v46 = sub_1CF663828();
        v38, v47, v48, v49, v50, v51, v52, v53;
        if (!v46)
        {
          return;
        }

        if (*(v46 + 112) == 1)
        {
          v54 = *(v46 + 96);
          v55 = *(v46 + 104);
          *(v46 + 96) = 0;
          *(v46 + 104) = 0;
          *(v46 + 112) = 4;
          sub_1CF03D7A8(v54, v55, 1u);

          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v57 = v56;
          (*(v63 + 8))(v15, v64);
          v58 = v57 * 1000000000.0;
          if (COERCE__INT64(fabs(v57 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v58 > -9.22337204e18)
            {
              if (v58 < 9.22337204e18)
              {
                sub_1CF902E70(v46, v58, v61, v62);

                return;
              }

              goto LABEL_29;
            }

LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            return;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        goto LABEL_19;
      }

      v23 = &v19[*(v20 + 48)];
      LOBYTE(v23) = v23[*(type metadata accessor for ItemMetadata(0) + 80)];
      sub_1CEFCCC44(v19, &unk_1EC4BE360, &qword_1CF9FE650);
      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }

      v24 = v67;
      v25 = v68;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v27 = v26;
      v28 = *(v63 + 8);
      v28(v15, v64);
      v29 = v27 * 1000000000.0;
      if (COERCE__INT64(fabs(v27 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v29 > -9.22337204e18)
      {
        v63 = v24;
        if (v29 < 9.22337204e18)
        {
          v59 = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFC0, &unk_1CF9FAE00);
          v30 = swift_allocObject();
          (*(v21 + 56))(v30 + *(*v30 + 632), 1, 1, v20);
          *(v30 + 152) = v25;
          *(v30 + 16) = 0u;
          *(v30 + 32) = 0u;
          *(v30 + 48) = 1;
          *(v30 + 56) = 0u;
          *(v30 + 72) = 0u;
          *(v30 + 88) = 0;
          *(v30 + 96) = xmmword_1CF9FEC30;
          *(v30 + 112) = 0;
          v31 = v59;
          *(v30 + 120) = 0x2000000000000000;
          *(v30 + 128) = v31;
          v32 = v63;
          *(v30 + 136) = 0x10000;
          *(v30 + 144) = v32;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v34 = v33;
          v28(v15, v64);
          v35 = v34 * 1000000000.0;
          if (COERCE__INT64(fabs(v34 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v35 > -9.22337204e18)
            {
              if (v35 < 9.22337204e18)
              {
                sub_1CF902E70(v30, v35, v61, v62);
LABEL_19:

                return;
              }

LABEL_26:
              __break(1u);
              goto LABEL_27;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      __break(1u);
      goto LABEL_23;
    }
  }
}

void sub_1CF476408(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  sub_1CF7F5EA8(*(a1 + 8), a2, a3, __src);
  if (!v4)
  {
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1CF08B99C(__dst) == 1)
    {
      memcpy(v6, __src, sizeof(v6));
      sub_1CEFCCC44(v6, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CF095754(v7);
      memcpy(a4, v7, 0x208uLL);
    }

    else
    {
      memcpy(v10, __src, sizeof(v10));
      sub_1CF7F6024(a4);
      memcpy(v7, __src, sizeof(v7));
      sub_1CEFCCC44(v7, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      nullsub_1();
    }
  }
}

void sub_1CF47650C(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  sub_1CF7F5EA8(a1, a2, a3, __src);
  if (!v4)
  {
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1CF08B99C(__dst) == 1)
    {
      memcpy(v6, __src, sizeof(v6));
      sub_1CEFCCC44(v6, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CF095754(v7);
      memcpy(a4, v7, 0x208uLL);
    }

    else
    {
      memcpy(v10, __src, sizeof(v10));
      sub_1CF7F6024(a4);
      memcpy(v7, __src, sizeof(v7));
      sub_1CEFCCC44(v7, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      nullsub_1();
    }
  }
}

uint64_t sub_1CF476610@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CF343AF8();
  *a1 = result;
  return result;
}

uint64_t sub_1CF476664(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_1CF476694@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1CF4766C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C0728, &qword_1CFA05B38);
    v2 = sub_1CF9E78F8();
    v15 = v2;
    sub_1CF9E7808();
    if (sub_1CF9E7838())
    {
      sub_1CEFD57E0(0, &unk_1EDEA3640, 0x1E696ABF8);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1CF6EB5FC(v9 + 1);
        }

        v2 = v15;
        result = sub_1CF9E7558();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1CF9E7838());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1CF4768B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06F8, &qword_1CFA05B08);
    v2 = sub_1CF9E78F8();
    v15 = v2;
    sub_1CF9E7808();
    if (sub_1CF9E7838())
    {
      type metadata accessor for FSChangesEnumerator(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1CF6EBD0C(v9 + 1);
        }

        v2 = v15;
        result = sub_1CF9E7558();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1CF9E7838());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1CF476A94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0658, &qword_1CFA05A68);
    v2 = sub_1CF9E78F8();
    v15 = v2;
    sub_1CF9E7808();
    if (sub_1CF9E7838())
    {
      sub_1CEFD57E0(0, &unk_1EDEAB630, 0x1E696AE38);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1CF6EC518(v9 + 1);
        }

        v2 = v15;
        result = sub_1CF9E7558();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1CF9E7838());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1CF476C84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC38, &unk_1CFA05370);
    v2 = sub_1CF9E78F8();
    v24 = v2;
    sub_1CF9E7808();
    for (; sub_1CF9E7838(); ++*(v24 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC30, &qword_1CFA17EC0);
      swift_dynamicCast();
      v18 = *(v2 + 16);
      if (*(v2 + 24) <= v18)
      {
        sub_1CF6ED0E8(v18 + 1);
      }

      v2 = v24;
      sub_1CF9E81D8();
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v4 = v3;
      sub_1CF9E69C8();
      v4, v5, v6, v7, v8, v9, v10, v11;
      result = sub_1CF9E8228();
      v13 = v24 + 56;
      v14 = -1 << *(v24 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
      {
        v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = 0;
        v20 = (63 - v14) >> 6;
        do
        {
          if (++v16 == v20 && (v19 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v21 = v16 == v20;
          if (v16 == v20)
          {
            v16 = 0;
          }

          v19 |= v21;
          v22 = *(v13 + 8 * v16);
        }

        while (v22 == -1);
        v17 = __clz(__rbit64(~v22)) + (v16 << 6);
      }

      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v24 + 48) + 8 * v17) = v23;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t sub_1CF476EA8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7558();
  result = sub_1CF9E77F8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1CF476F2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-1] - v12;
  sub_1CF9E81D8();
  sub_1CEFCCBDC(a1, v13, &unk_1EC4BF650, &unk_1CF9FCB40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = &qword_1CFA12AC0;
    sub_1CEFE55D0(v13, v6, &unk_1EC4BFD70, &qword_1CFA12AC0);
    MEMORY[0x1D386A470](1);
    sub_1CF1CE0C8(v20);
    v15 = v6;
    v16 = &unk_1EC4BFD70;
  }

  else
  {
    v14 = &unk_1CF9FCB50;
    sub_1CEFE55D0(v13, v9, &unk_1EC4BFCC0, &unk_1CF9FCB50);
    MEMORY[0x1D386A470](0);
    sub_1CF1CDC08(v20);
    v15 = v9;
    v16 = &unk_1EC4BFCC0;
  }

  sub_1CEFCCC44(v15, v16, v14);
  sub_1CF9E8228();
  v17 = sub_1CF9E77F8();
  *(a2 + 56 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
  result = sub_1CEFE55D0(a1, *(a2 + 48) + *(v11 + 72) * v17, &unk_1EC4BF650, &unk_1CF9FCB40);
  ++*(a2 + 16);
  return result;
}

void sub_1CF4771D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for NSFileProviderItemIdentifier(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1770, &qword_1CFA05A80);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1CF4772B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04A0, &unk_1CF9FE5B0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE718, &unk_1CFA058A0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1CF4773B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04E0, &qword_1CF9FE4B8);
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5230, &unk_1CF9FE4C0);
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

uint64_t sub_1CF477568(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v1;
    v7 = a1;
    goto LABEL_8;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_1CF9E7818();
  if (!__OFADD__(result, 1))
  {
    v9 = sub_1CF476C84(v5, result + 1);
    v7 = a1;
    isUniquelyReferenced_nonNull_native = 1;
LABEL_8:
    result = sub_1CF477608(v7, isUniquelyReferenced_nonNull_native);
    *v2 = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF477608(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1CF9E81D8();
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;
  sub_1CF9E69C8();
  v8, v9, v10, v11, v12, v13, v14, v15;
  v16 = sub_1CF9E8228();
  v17 = -1 << *(v6 + 32);
  v18 = v16 & ~v17;
  if ((*(v6 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v114 = v3;
    v19 = ~v17;
    v20 = 1;
    while (1)
    {
      v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v23 = v22;
      v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v31 = v21;
      v32 = v24;
      if (v31 == v25 && v23 == v24)
      {
        v23, v24, v25, v26, v27, v28, v29, v30;
        v32, v50, v51, v52, v53, v54, v55, v56;
        v49 = 0;
        v20 = 0;
        v3 = v114;
        goto LABEL_14;
      }

      v34 = sub_1CF9E8048();
      v23, v35, v36, v37, v38, v39, v40, v41;
      v32, v42, v43, v44, v45, v46, v47, v48;
      if (v34)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v6 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v20 = 0;
LABEL_13:
    v3 = v114;
    v49 = v34 ^ 1;
  }

  else
  {
    v49 = 1;
    v20 = 1;
  }

LABEL_14:
  v57 = *(v6 + 16);
  v58 = v57 + v20;
  if (__OFADD__(v57, v20))
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v59 = *(v6 + 24);
  if (v59 < v58 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_1CF6ED0E8(v58);
    }

    else
    {
      if (v59 >= v58)
      {
        sub_1CF6EFF7C();
        if ((v49 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_34;
      }

      sub_1CF6F1A54(v58);
    }

    v60 = *v3;
    sub_1CF9E81D8();
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v62 = v61;
    sub_1CF9E69C8();
    v62, v63, v64, v65, v66, v67, v68, v69;
    v70 = sub_1CF9E8228();
    v71 = -1 << *(v60 + 32);
    v18 = v70 & ~v71;
    if ((*(v60 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
    {
      v72 = ~v71;
      while (1)
      {
        v73 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v75 = v74;
        v76 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v84 = v77;
        if (v73 == v76 && v75 == v77)
        {
          break;
        }

        v86 = sub_1CF9E8048();
        v75, v87, v88, v89, v90, v91, v92, v93;
        v84, v94, v95, v96, v97, v98, v99, v100;
        if (v86)
        {
          goto LABEL_37;
        }

        v18 = (v18 + 1) & v72;
        if (((*(v60 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      v75, v77, v78, v79, v80, v81, v82, v83;
      v84, v106, v107, v108, v109, v110, v111, v112;
LABEL_37:
      if ((v49 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
LABEL_33:
      if (v49)
      {
LABEL_34:
        v101 = *v3;
        *(*v3 + 8 * (v18 >> 6) + 56) |= 1 << v18;
        *(*(v101 + 48) + 8 * v18) = a1;
        v102 = *(v101 + 16);
        v103 = __OFADD__(v102, 1);
        v104 = v102 + 1;
        if (!v103)
        {
          result = 0;
          *(v101 + 16) = v104;
          return result;
        }

        goto LABEL_41;
      }
    }

LABEL_42:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC30, &qword_1CFA17EC0);
    result = sub_1CF9E80F8();
    __break(1u);
    return result;
  }

  if (v49)
  {
    goto LABEL_34;
  }

LABEL_38:
  v113 = *(*v3 + 48);
  result = *(v113 + 8 * v18);
  *(v113 + 8 * v18) = a1;
  return result;
}

uint64_t sub_1CF47794C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_1CF9E77E8();
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1CF4779CC(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_1CF5D5D4C(2u, 0x7FFFFFFFFFFFFFFFLL, v6, 0, 0, v4, v5);
  if (!v2)
  {
    *a2 = v7 & 1;
  }
}

uint64_t sub_1CF477A40(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 56) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1CF477AC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    v6 = a4 >> 1;
    v7 = (a4 >> 1) - a3;
    if (!__OFSUB__(a4 >> 1, a3))
    {
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_11:
      v9 = MEMORY[0x1E69E7CC0];
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_15;
  }

  sub_1CF9E8078();
  swift_unknownObjectRetain_n();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v10 + 16);

  v6 = a4 >> 1;
  v12 = __OFSUB__(a4 >> 1, a3);
  v7 = (a4 >> 1) - a3;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11 == v7)
  {
    v9 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v9)
    {
      return v9;
    }

    goto LABEL_11;
  }

LABEL_16:
  swift_unknownObjectRelease();
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_4:
  result = sub_1CF1F8CC4(v7, 0);
  if (v6 != a3)
  {
    v9 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE670, &qword_1CF9FE4D0);
    swift_arrayInitWithCopy();
LABEL_12:
    swift_unknownObjectRelease();
    return v9;
  }

  __break(1u);
  return result;
}

void sub_1CF477C48(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  swift_dynamicCastClassUnconditional();
  sub_1CF38F7F4(v4, v5, a1);
}

void sub_1CF477CD0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  swift_beginAccess();
  v7 = *(a2 + 16);
  *(a2 + 16) = v5;
  v8 = *(a2 + 24);
  *(a2 + 24) = v6;
  sub_1CF0BA8A4(v5);
  sub_1CF483C30(v7, v8);
  dispatch_group_leave(a3);
}

void sub_1CF477D58(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, void *)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t (*a8)(void *, uint64_t, uint64_t, void, uint64_t, void (*)(void *__return_ptr, void), uint64_t, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = sub_1CF477A40(*a1, v13, v14, a2);
  v19 = v18;
  v68[0] = v17;
  v68[1] = v18;
  a3(&v69, v68);
  v19, v20, v21, v22, v23, v24, v25, v26;
  v17, v27, v28, v29, v30, v31, v32, v33;
  if ((v16 & 1) == 0)
  {
    v41 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
    }

    else
    {
      v42 = *v69->tree;
      v69, v34, v35, v36, v37, v38, v39, v40;
      if (v41 != v42)
      {
        sub_1CF0BA900(v12, v13, v14);
LABEL_5:
        v43 = 0;
        goto LABEL_6;
      }
    }

    v44 = sub_1CF47794C(v12, v13, v14, a2);
    if (v46)
    {
LABEL_14:
      __break(1u);
LABEL_15:
      LOBYTE(v14) = 0;
      v41 = 0;
      v43 = 1;
LABEL_6:
      *a9 = v12;
      *(a9 + 8) = v13;
      *(a9 + 16) = v14;
      *(a9 + 24) = v41;
      *(a9 + 32) = v43;
      return;
    }

    v12 = v44;
    v47 = v45;
    while (1)
    {
      v13 = *(a2 + 36);
      if (v13 != v47)
      {
        break;
      }

      if (v12 == 1 << *(a2 + 32))
      {
        goto LABEL_15;
      }

      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v49 = a7();
      v50 = a8(v68, v12, v47, 0, a2, a3, a4, v48, v49);
      v13 = v47;
      v52 = *v51;

      v50(v68, 0);
      v53 = *v52->tree;
      v52, v54, v55, v56, v57, v58, v59, v60;
      if (v53)
      {
        LOBYTE(v14) = 0;
        v41 = 0;
        goto LABEL_5;
      }

      v12 = sub_1CF47794C(v12, v13, 0, a2);
      v47 = v61;
      if (v62)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t (*sub_1CF477F5C(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, void (*a6)(void *)))()
{
  v7 = sub_1CF477A40(a2, a3, a4 & 1, a5);
  v9 = v8;
  v25[0] = v7;
  v25[1] = v8;
  a6(v25);
  v7, v10, v11, v12, v13, v14, v15, v16;
  v9, v17, v18, v19, v20, v21, v22, v23;
  return sub_1CF485974;
}

void (*sub_1CF477FFC(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, void (*a6)(void *)))(_TtC18FileProviderDaemon8FSTester **a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v7 = sub_1CF477A40(a2, a3, a4 & 1, a5);
  v9 = v8;
  v25[0] = v7;
  v25[1] = v8;
  a6(v25);
  v7, v10, v11, v12, v13, v14, v15, v16;
  v9, v17, v18, v19, v20, v21, v22, v23;
  return sub_1CF47809C;
}

void sub_1CF4780A4(void *a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v4 = *(a2 + qword_1EDEBBCB8);
  if (v4)
  {
    swift_beginAccess();
    v6 = v4[6];
    v8 = v4[5];
    v9[0] = v6;
    *(v9 + 10) = *(v4 + 106);

    sub_1CEFCCBDC(&v8, v7, &qword_1EC4C4EC0, &qword_1CFA05AE8);
    sub_1CF46E194(a1);
    sub_1CEFCCC44(&v8, &qword_1EC4C4EC0, &qword_1CFA05AE8);
  }

  *a3 = v4 == 0;
}

uint64_t sub_1CF478184(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[3] = a5;
  v25[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  v12 = (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
  v13 = *(a4 + qword_1EC4EBCD0);
  if (v13)
  {
    v14 = *(a4 + qword_1EC4EBCD0 + 8);
    sub_1CF1FD6B8(*(a4 + qword_1EC4EBCD0), v14);
    v15 = v13;
    sub_1CF1FD6F8(v13, v14);
    if ((*(a4 + 82) & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v16);
      v21 = a4;
      v22 = v25;
      v23 = a2 & 1;
      v24 = a3 & 1;
      v18 = objc_autoreleasePoolPush();
      sub_1CF804374(a4, 1, "dump(to:limitNumberOfItems:includingFileTrees:)", 47, 2, 0, sub_1CF48391C, v20);
      objc_autoreleasePoolPop(v18);
    }

    else
    {

      sub_1CF482E50(v15, 2, v25, a2 & 1, a3 & 1, a4, a4);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v12);
    v21 = a4;
    v22 = v25;
    v23 = a2 & 1;
    v24 = a3 & 1;
    v17 = objc_autoreleasePoolPush();
    sub_1CF804374(a4, 2, "dump(to:limitNumberOfItems:includingFileTrees:)", 47, 2, 0, sub_1CF4839A4, v20);
    objc_autoreleasePoolPop(v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

void *sub_1CF4783A8(uint64_t a1, uint64_t a2, void *__src)
{
  result = memcpy(v9, __src, sizeof(v9));
  v6 = *(a2 + qword_1EDEBBDD8);
  if (v6)
  {
    v7 = *(a2 + qword_1EDEBBDD8 + 8);
    MEMORY[0x1EEE9AC00](result);
    v8[2] = v9;
    v8[3] = a1;
    v8[4] = a2;

    v6(sub_1CF4800CC, v8);
    return sub_1CEFF7124(v6, v7);
  }

  return result;
}

uint64_t sub_1CF47849C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v10 = *a3;
  v4 = *(a2 + qword_1EDEBBDD8);
  if (v4)
  {
    v6 = *(a2 + qword_1EDEBBDD8 + 8);
    MEMORY[0x1EEE9AC00](result);
    v9[2] = v7;
    v9[3] = v8;
    v9[4] = &v10;

    v4(a4, v9);
    return sub_1CEFF7124(v4, v6);
  }

  return result;
}

uint64_t sub_1CF478550(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  v11 = *a3;
  v12 = v4;
  v5 = *(a2 + qword_1EDEBBDD8);
  if (v5)
  {
    v7 = *(a2 + qword_1EDEBBDD8 + 8);
    MEMORY[0x1EEE9AC00](result);
    v10[2] = v8;
    v10[3] = v9;
    v10[4] = &v11;

    v5(a4, v10);
    return sub_1CEFF7124(v5, v7);
  }

  return result;
}

uint64_t sub_1CF478610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1CF0262EC;

  return sub_1CF3FE51C(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_1CF4786E0@<X0>(void *a1@<X0>, uint64_t *a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v10 = *a2;
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  return sub_1CF3CA63C(&v10, a3, v8, v6, v7, a4);
}

uint64_t sub_1CF478758@<X0>(void *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 8);
  v9 = *a2;
  v10 = v4;
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  return sub_1CF3CA2D8(&v9, 0, v7, v5, v6, a3);
}

uint64_t sub_1CF4787D4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  v15[0] = *a3;
  v15[1] = v4;
  v15[2] = v5;
  v15[3] = v6;
  v15[4] = v7;
  v16 = v8;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  sub_1CF480278(v4, v5, v6, v7, v8, sub_1CF48034C);
  sub_1CF399CD8(&v12);
  sub_1CF480358(v4, v5, v6, v7, v8, sub_1CF1E53F8);
  v11[2] = v15;
  v17[0] = v12;
  v17[1] = v13;
  v18 = v14;
  v9 = sub_1CF393BDC(v17, a1, sub_1CF480BC8, v11);
  sub_1CF480358(v12, *(&v12 + 1), v13, *(&v13 + 1), v14, sub_1CEFD0994);
  return v9;
}

uint64_t sub_1CF478928(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v4 = *(a3 + 40);
  v5 = *(a3 + 16);
  *v8 = *a3;
  *&v8[16] = v5;
  *&v8[32] = v3;
  v9 = v4;
  v7[2] = v8;
  v11 = v4;
  v10[0] = *&v8[8];
  v10[1] = *&v8[24];
  return sub_1CF393BDC(v10, a1, sub_1CF480D5C, v7);
}

uint64_t sub_1CF4789A4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA456A0);
  v1 = sub_1CF38B634();
  v3 = v2;
  MEMORY[0x1D3868CC0](v1);
  v3, v4, v5, v6, v7, v8, v9, v10;
  return 0;
}

void sub_1CF478A8C(unsigned __int8 *a1@<X0>, const void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  v7 = sub_1CF357F60(v6);
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  v17 = sub_1CF38DE58(v6, a3);
  v19 = v18;
  MEMORY[0x1D3868CC0](v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
  *a4 = 0;
  a4[1] = 0xE000000000000000;
}

uint64_t sub_1CF478B60(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = qword_1EDEA4990;
  swift_beginAccess();
  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + v6);
  *(a1 + v6) = 0x8000000000000000;
  sub_1CF1D3C18(a3, v7, isUniquelyReferenced_nonNull_native);

  *(a1 + v6) = v10;
  return swift_endAccess();
}

uint64_t sub_1CF478C28()
{
  v1 = *(*v0 + 2648);
  v3[0] = *(*v0 + 2632);
  v3[1] = v1;
  type metadata accessor for SQLJobRegistry(0, v3);
  return swift_dynamicCastClassUnconditional();
}

uint64_t sub_1CF478CAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v2, 0);
    v3 = v15;
    v5 = (a1 + 41);
    do
    {
      v6 = *v5;
      v7 = *(v5 - 1);
      v12 = *(v5 - 9);
      sub_1CF48034C(v12, v7, *v5);
      swift_getAtKeyPath();
      sub_1CF1E53F8(v12, v7, v6);
      v9 = *(v15 + 16);
      v8 = *(v15 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1CEFE95CC((v8 > 1), v9 + 1, 1);
      }

      *(v15 + 16) = v9 + 1;
      v10 = v15 + 16 * v9;
      *(v10 + 32) = v13;
      *(v10 + 40) = v14;
      v5 += 16;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1CF478DD0(void *a1)
{
  v2 = type metadata accessor for GlobalResourceStore(0);
  swift_allocObject();
  v19[3] = v2;
  v19[4] = &off_1F4C04308;
  v19[0] = sub_1CF51BB3C();
  sub_1CF1A91AC(v19, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C06E0, &unk_1CFA05AF0);
  v3 = swift_allocObject();
  *(v3 + 72) = 0;
  sub_1CF1A91AC(v18, v3 + 16);
  v4 = v3 + *(*v3 + 136);
  v5 = sub_1CF9E5CF8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = type metadata accessor for FPFeedbackManagerState(0);
  v7 = *(v6 + 20);
  v8 = sub_1CF4E06FC(MEMORY[0x1E69E7CC0]);
  __swift_destroy_boxed_opaque_existential_1(v18);
  *(v4 + v7) = v8;
  v9 = v4 + *(v6 + 24);
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v3 + 56) = 0xD000000000000016;
  *(v3 + 64) = 0x80000001CFA46EE0;
  sub_1CF1A6E34();
  __swift_destroy_boxed_opaque_existential_1(v19);
  swift_beginAccess();
  sub_1CF1A1590(a1);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  *(v3 + 64), v10, v11, v12, v13, v14, v15, v16;
  sub_1CEFD5278(v3 + *(*v3 + 136), type metadata accessor for FPFeedbackManagerState);
  return swift_deallocClassInstance();
}

uint64_t sub_1CF479160(uint64_t a1, uint64_t a2, char a3, void *a4, __int16 a5, uint64_t (*a6)(void, unint64_t))
{
  v8 = v6;
  *&v53 = a1;
  *(&v53 + 1) = a2;
  *(v8 + 16) = 0;
  *(v8 + 104) = 0;
  *(v8 + 112) = 1;
  *(v8 + 120) = 0;
  *(v8 + 128) = 1;
  v11 = (v8 + 168);
  *(v8 + 136) = 0;
  *(v8 + 144) = 0;
  if (qword_1EDEACD18 != -1)
  {
    v52 = a3;
    swift_once();
    a3 = v52;
  }

  v12 = xmmword_1EDEBBB80;
  v57[6] = xmmword_1EDEBBB90;
  v57[7] = xmmword_1EDEBBBA0;
  v13 = xmmword_1EDEBBBA0;
  v57[8] = xmmword_1EDEBBBB0;
  v14 = xmmword_1EDEBBB40;
  v15 = xmmword_1EDEBBB50;
  v57[2] = xmmword_1EDEBBB50;
  v57[3] = xmmword_1EDEBBB60;
  v16 = xmmword_1EDEBBB60;
  v17 = xmmword_1EDEBBB70;
  v57[4] = xmmword_1EDEBBB70;
  v57[5] = xmmword_1EDEBBB80;
  v18 = xmmword_1EDEBBB30;
  v57[0] = xmmword_1EDEBBB30;
  v57[1] = xmmword_1EDEBBB40;
  *(v8 + 264) = xmmword_1EDEBBB90;
  *(v8 + 280) = v13;
  *(v8 + 296) = xmmword_1EDEBBBB0;
  *(v8 + 200) = v15;
  *(v8 + 216) = v16;
  *(v8 + 232) = v17;
  *(v8 + 248) = v12;
  *v11 = v18;
  *(v8 + 184) = v14;
  *(v8 + 24) = a3 & 1;
  if (a3)
  {
    v19 = 20550;
  }

  else
  {
    v19 = 21318;
  }

  sub_1CF3386F8(v57, v56);
  *(v8 + 48) = sub_1CF206B28(0, 0xE000000000000000);
  *(v8 + 56) = v20;
  *(v8 + 64) = a6(0, 0xE000000000000000);
  *(v8 + 72) = v21;
  *(v8 + 152) = a4;
  *&v56[0] = 0;
  *(&v56[0] + 1) = 0xE000000000000000;
  if (*(v8 + 24))
  {
    v22 = 20550;
  }

  else
  {
    v22 = 21318;
  }

  v23 = a4;
  MEMORY[0x1D3868CC0](v22, 0xE200000000000000);
  0xE200000000000000, v24, v25, v26, v27, v28, v29, v30;
  MEMORY[0x1D3868CC0](0x6C74746F7268745FLL, 0xE900000000000065);
  v31 = *(&v56[0] + 1);
  *(v8 + 32) = *&v56[0];
  *(v8 + 40) = v31;
  *(v8 + 96) = (a5 & 2) == 0;
  *(v8 + 97) = (a5 & 0x10) != 0;
  *(v8 + 160) = 1;
  *(v8 + 162) = 0;
  v56[0] = v53;
  MEMORY[0x1D3868CC0](46, 0xE100000000000000);
  MEMORY[0x1D3868CC0](v19, 0xE200000000000000);
  0xE200000000000000, v32, v33, v34, v35, v36, v37, v38;
  v39 = *(&v56[0] + 1);
  *(v8 + 80) = *&v56[0];
  *(v8 + 88) = v39;
  if ((a5 & 0x100) != 0)
  {
    if (qword_1EC4BCD80 != -1)
    {
      swift_once();
    }

    v40 = xmmword_1EC4EBEF0;
    v41 = xmmword_1EC4EBF00;
    v55[6] = xmmword_1EC4EBF00;
    v55[7] = xmmword_1EC4EBF10;
    v42 = xmmword_1EC4EBF10;
    v55[8] = xmmword_1EC4EBF20;
    v43 = xmmword_1EC4EBEB0;
    v44 = xmmword_1EC4EBEC0;
    v55[2] = xmmword_1EC4EBEC0;
    v55[3] = xmmword_1EC4EBED0;
    v45 = xmmword_1EC4EBED0;
    v55[4] = xmmword_1EC4EBEE0;
    v55[5] = xmmword_1EC4EBEF0;
    v46 = xmmword_1EC4EBEA0;
    v55[0] = xmmword_1EC4EBEA0;
    v55[1] = xmmword_1EC4EBEB0;
    v47 = *(v8 + 280);
    v56[6] = *(v8 + 264);
    v56[7] = v47;
    v56[8] = *(v8 + 296);
    v48 = *(v8 + 216);
    v56[2] = *(v8 + 200);
    v56[3] = v48;
    v49 = *(v8 + 248);
    v56[4] = *(v8 + 232);
    v56[5] = v49;
    v50 = *(v8 + 184);
    v56[0] = *v11;
    v56[1] = v50;
    *(v8 + 232) = xmmword_1EC4EBEE0;
    *(v8 + 248) = v40;
    *(v8 + 264) = v41;
    *(v8 + 280) = v42;
    *(v8 + 296) = xmmword_1EC4EBF20;
    *(v8 + 200) = v44;
    *(v8 + 216) = v45;
    *v11 = v46;
    *(v8 + 184) = v43;
    sub_1CF3386F8(v55, v54);
    sub_1CF338754(v56);
  }

  if (qword_1EDEAC3C8 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBA88 ping];
  if (qword_1EDEACB30 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBB20 ping];
  return v8;
}

_BYTE *sub_1CF4794AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v119 = a7;
  v128 = a4;
  v122 = a3;
  v121 = a2;
  v120 = a1;
  v118 = sub_1CF9E7318();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v115 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v116 = &v105 - v13;
  v14 = sub_1CF9E6448();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v114 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v105 - v18;
  v127 = sub_1CF9E7388();
  v129 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1CF9E7488();
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  a8[72] = 1;
  a8[90] = 0;
  type metadata accessor for JobLimit();
  *(a8 + 12) = 0;
  *(a8 + 13) = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1CFA04F50;
  *(v22 + 32) = xmmword_1CFA04F60;
  *(a8 + 15) = v22;
  *(a8 + 16) = 500;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0608, &qword_1CFA05A18);
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E7CC0];
  v23[2] = sub_1CF4E1CD8(MEMORY[0x1E69E7CC0]);
  v23[3] = sub_1CF4E1E00(v24);
  v23[4] = sub_1CF4E1F20(v24);
  v23[5] = [objc_opt_self() weakObjectsHashTable];
  *(a8 + 17) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0610, &qword_1CFA05A20);
  v25 = swift_allocObject();
  v25[2] = sub_1CF4E1A40(v24);
  v25[3] = sub_1CF4E1B90(v24);
  v25[4] = sub_1CF4E1CC4(v24);
  v25[5] = [objc_opt_self() weakObjectsHashTable];
  *(a8 + 18) = v25;
  a8[152] = 0;
  type metadata accessor for PersistenceCounters();
  v26 = swift_allocObject();
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0u;
  *(v26 + 47) = 0;
  *(a8 + 20) = v26;
  type metadata accessor for TaskTracker();
  v27 = swift_allocObject();
  v28 = fp_task_tracker_create("db");
  if (!v28)
  {
    __break(1u);
    goto LABEL_16;
  }

  v110 = a5;
  v123 = v19;
  v111 = v15;
  v124 = v14;
  v125 = a6;
  *(v27 + 16) = v28;
  *(a8 + 21) = v27;
  *(a8 + 22) = dispatch_group_create();
  *(a8 + 24) = sub_1CF4E0F3C(v24);
  *(a8 + 25) = 0;
  *(a8 + 52) = 0;
  *(a8 + 27) = 0;
  *(a8 + 28) = 0;
  v29 = qword_1EDEBBC70;
  *&a8[v29] = sub_1CF4E1040(v24);
  v30 = qword_1EC4EBD70;
  *&a8[v30] = sub_1CF4E1238(v24);
  v31 = qword_1EC4EBD78;
  *&a8[v31] = sub_1CF4E1330(v24);
  *&a8[qword_1EDEBBC90] = v24;
  v32 = qword_1EC4EBD80;
  *&a8[v32] = sub_1CF4E1344(v24);
  v33 = MEMORY[0x1E69E7CD0];
  *&a8[qword_1EDEBBCC0] = MEMORY[0x1E69E7CD0];
  *&a8[qword_1EDEBBCC8] = v33;
  *&a8[qword_1EDEBBD00] = v24;
  v34 = qword_1EDEBBC60;
  *&a8[v34] = sub_1CF4E1358(v24);
  v35 = &a8[qword_1EDEBBC20];
  sub_1CF3FE320(sub_1CF4E0DEC, sub_1CF4E1848, sub_1CF056EEC, sub_1CF4E1938, v132);
  v36 = v132[3];
  *(v35 + 40) = v132[2];
  *(v35 + 56) = v36;
  v37 = v132[5];
  *(v35 + 72) = v132[4];
  *(v35 + 88) = v37;
  v38 = v132[1];
  *(v35 + 8) = v132[0];
  *v35 = 0;
  v39 = MEMORY[0x1E69E7CC8];
  *(v35 + 24) = v38;
  *(v35 + 13) = v39;
  v40 = &a8[qword_1EDEBBC28];
  sub_1CF3FE320(sub_1CF4E154C, sub_1CF4E1660, sub_1CF03AED0, sub_1CF4E1750, v133);
  v41 = v133[3];
  *(v40 + 40) = v133[2];
  *(v40 + 56) = v41;
  v42 = v133[5];
  *(v40 + 72) = v133[4];
  *(v40 + 88) = v42;
  v43 = v133[1];
  *(v40 + 8) = v133[0];
  *v40 = 0;
  *(v40 + 24) = v43;
  *&a8[qword_1EDEBBCB0] = 0;
  *&a8[qword_1EDEADB30] = 0;
  a8[qword_1EDEADB48] = 1;
  *&a8[qword_1EDEBBCD8] = v24;
  v44 = qword_1EDEADB50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0618, &unk_1CFA05A28);
  v45 = swift_allocObject();
  *&a8[v44] = v45;
  v46 = qword_1EDEBBC38;
  *&a8[qword_1EDEBBC38] = 0;
  a8[qword_1EDEBBCF0] = 0;
  a8[qword_1EC4EBD88] = 0;
  *(v45 + 24) = 0;
  *(v45 + 16) = 0;
  *&a8[qword_1EDEBBC30] = 0;
  type metadata accessor for DBCounters(0);
  sub_1CF9E5CC8();
  v47 = &a8[qword_1EDEBBCA0];
  *v47 = 0;
  v47[1] = 0;
  v48 = &a8[qword_1EDEBBC80];
  *v48 = 0;
  v48[1] = 0;
  v49 = &a8[qword_1EDEBBCD0];
  *v49 = 0;
  v49[1] = 0;
  v50 = &a8[qword_1EDEBBCA8];
  *v50 = 0;
  v50[1] = 0;
  *&a8[qword_1EDEBBC58] = 0;
  v51 = &a8[qword_1EDEBBC78];
  *v51 = 0;
  v51[1] = 0;
  a8[qword_1EDEBBC50] = 0;
  v52 = &a8[qword_1EDEBBC68];
  *v52 = 0;
  v52[8] = 1;
  a8[qword_1EDEADAA8] = 0;
  v53 = qword_1EDEADB40;
  v54 = v24;
  if (qword_1EDEAC5D0 != -1)
  {
    swift_once();
  }

  v55 = qword_1EDEBBAB8;
  *&a8[v53] = qword_1EDEBBAB8;
  *&a8[qword_1EDEBBCB8] = 0;
  *&a8[qword_1EDEBBC88] = 0;
  *&a8[qword_1EDEBBC98] = 0;
  a8[qword_1EDEBBCE0] = 0;
  *&a8[qword_1EDEADA98] = 0;
  a8[qword_1EDEBBC48] = 0;
  a8[qword_1EDEBBC40] = 0;
  v56 = &a8[qword_1EDEBBCF8];
  v57 = type metadata accessor for RequestContinuation();
  *v56 = 0;
  v56[1] = 0;
  v58 = v55;
  sub_1CF387D24(v57);
  v59 = type metadata accessor for MaintenanceContinuation();
  sub_1CF387D24(v59);
  v60 = type metadata accessor for DiskImportContinuation();
  sub_1CF387D24(v60);
  v61 = type metadata accessor for StagedContext();
  sub_1CF387D24(v61);
  v62 = type metadata accessor for MaintenanceWaitingContinuation();
  sub_1CF387D24(v62);
  v63 = *(*(v128 + 16) + 136);
  v64 = *(v63 + 16);
  v65 = *(v63 + 24);
  sub_1CF9E6978();

  v66 = fpfs_create_log_for_provider();

  v67 = *&a8[v46];
  *&a8[v46] = v66;

  v108 = sub_1CEFD57E0(0, &unk_1EDEAB5C0, 0x1E69E9638);
  v130 = v64;
  v131 = v65;

  MEMORY[0x1D3868CC0](0x616261746164203ALL, 0xEA00000000006573);
  v130 = v54;
  sub_1CF042F54(&unk_1EDEAB5D0, MEMORY[0x1E69E8110], MEMORY[0x1E69E8118]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE60, &qword_1CFA00870);
  v68 = MEMORY[0x1E69E6328];
  sub_1CEFCCCEC(&unk_1EDEAB640, &qword_1EC4BEE60, &qword_1CFA00870, MEMORY[0x1E69E6328]);
  sub_1CF9E77B8();
  LODWORD(v112) = *MEMORY[0x1E69E8098];
  v109 = *(v129 + 104);
  v129 += 104;
  v109(v126);
  *(a8 + 8) = sub_1CF9E7498();
  v113 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  v130 = 0;
  v131 = 0xE000000000000000;
  sub_1CF9E7948();
  v131, v69, v70, v71, v72, v73, v74, v75;
  v130 = v64;
  v131 = v65;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA46340);
  v108 = v130;
  v107 = v131;
  v106 = *(a8 + 8);
  v76 = v106;
  v77 = v123;
  sub_1CF9E63F8();
  v130 = MEMORY[0x1E69E7CC0];
  sub_1CF042F54(&qword_1EDEAED80, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CEFCCCEC(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770, v68);
  v78 = v116;
  v79 = v118;
  sub_1CF9E77B8();
  v80 = v111;
  v81 = v124;
  (*(v111 + 16))(v114, v77, v124);
  v82 = v117;
  (*(v117 + 16))(v115, v78, v79);
  (v109)(v126, v112, v127);
  v83 = sub_1CF9E73B8();
  (*(v82 + 8))(v78, v79);
  v129 = *(v80 + 8);
  (v129)(v77, v81);
  *&a8[qword_1EDEBBD08] = v83;
  v84 = v119;
  a8[88] = (v119 & 0x20) == 0;
  a8[89] = (v84 & 0x800) != 0;
  *(a8 + 10) = v84;
  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v85 = *(a8 + 8);
  v86 = sub_1CF9E73F8();

  *(a8 + 14) = v86;
  v87 = v122;
  *(a8 + 23) = *(*(v122 + 16) + 136);
  v88 = *(a8 + 8);

  v89 = v88;
  v90 = sub_1CF9E73F8();

  *&a8[qword_1EDEBBCE8] = v90;
  sub_1CEFCCBDC(v125, &a8[qword_1EDEBBC18], &qword_1EC4BFB10, &unk_1CFA12AD0);
  v91 = v121;
  *(a8 + 2) = v120;
  *(a8 + 3) = v91;
  v92 = v128;
  *(a8 + 4) = v87;
  *(a8 + 5) = v92;
  *(a8 + 6) = v110;
  *(a8 + 7) = &off_1F4BFC938;
  swift_weakAssign();
  swift_weakAssign();
  v93 = *(*a8 + 176);

  v93(v94);

  swift_weakAssign();

  ObjectType = swift_getObjectType();
  v96 = swift_allocObject();
  swift_weakInit();
  swift_retain_n();
  swift_unknownObjectRetain();

  v97 = v123;
  sub_1CF042F9C();
  sub_1CEFD5828(0, v97, sub_1CF065084, v96, ObjectType);
  swift_unknownObjectRelease();

  v98 = v124;
  v99 = v129;
  (v129)(v97, v124);

  v100 = swift_getObjectType();
  v101 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_1CF042F9C();
  sub_1CEFD5828(0, v97, sub_1CF02E08C, v101, v100);
  swift_unknownObjectRelease();

  v99(v97, v98);

  if (qword_1EDEADB60 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBD10 ping];
  v28 = objc_sync_enter(a8);
  if (v28)
  {
LABEL_16:
    MEMORY[0x1EEE9AC00](v28);
    *(&v105 - 2) = a8;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v105 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v102 = *&a8[qword_1EDEADB40];
  v103 = objc_sync_exit(a8);
  if (v103)
  {
    MEMORY[0x1EEE9AC00](v103);
    *(&v105 - 2) = a8;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v105 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  [v102 ping];

  if (qword_1EDEACC50 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBB28 ping];
  if (qword_1EDEAC220 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBA80 ping];
  if (qword_1EDEACD48 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBBF8 ping];

  sub_1CEFCCC44(v125, &qword_1EC4BFB10, &unk_1CFA12AD0);
  return a8;
}

void sub_1CF47A748(void *a1, NSObject *a2, uint64_t a3, char a4)
{
  v6 = v5;
  v11 = swift_allocObject();
  swift_weakInit();
  *&v125 = sub_1CF485A94;
  *(&v125 + 1) = v11;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v124 = sub_1CF00A468;
  *(&v124 + 1) = &block_descriptor_79;
  v12 = _Block_copy(&aBlock);

  [a1 setAutoRollbackHandlerForSwift_];
  _Block_release(v12);
  if (a4)
  {
    sub_1CF3B107C(a1, a2);
    if (!v6)
    {
      return;
    }

    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB18, &qword_1CFA052A0);
  v15 = (a3 + v14[13]);
  v16 = *(a3 + v14[14]);
  v119 = *(a3 + v14[15]);
  v120 = v16;
  v17 = *v15;
  v117 = v15[1];
  v118 = v17;
  v18 = *(a3 + v14[18]);
  v19 = [objc_opt_self() defaultStore];
  [v19 sqlDatabaseBatchDelay];
  v114 = v19;
  [a1 useBatchingOnTargetQueue:a2 delay:objc_msgSend(v19 changeCount:{sel_sqlDatabaseBatchChangeCount), v20}];
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *&v125 = sub_1CEFE8634;
  *(&v125 + 1) = v21;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v124 = sub_1CEFE7F20;
  *(&v124 + 1) = &block_descriptor_85_0;
  v22 = _Block_copy(&aBlock);
  v23 = a1;

  [v23 setProfilingHookV2_];
  _Block_release(v22);
  v24 = swift_allocObject();
  swift_weakInit();
  *&v125 = sub_1CF47FBCC;
  *(&v125 + 1) = v24;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v124 = sub_1CF3B1E88;
  *(&v124 + 1) = &block_descriptor_89;
  v25 = _Block_copy(&aBlock);

  [v23 setBusyHandler_];
  _Block_release(v25);
  v115 = &v113;
  v129 = 0;
  MEMORY[0x1EEE9AC00](v26);
  v104[16] = v18;
  v105 = v23;
  v106 = v4;
  v116 = v4;
  v107 = &v129;
  v108 = &v129 + 1;
  v109 = v118;
  v110 = v117;
  v111 = v120;
  v112 = v119;
  v27 = fpfs_current_log();
  v120 = fpfs_adopt_log();
  *&v121[0] = 0;
  BYTE8(v121[0]) = 1;
  *&aBlock = sub_1CF9E73C8();
  *(&aBlock + 1) = v28;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v29 = sub_1CF9E7988();
  v31 = v30;
  MEMORY[0x1D3868CC0](v29);
  v31, v32, v33, v34, v35, v36, v37, v38;
  v39 = *(&aBlock + 1);
  sub_1CF9E6978();
  v39, v40, v41, v42, v43, v44, v45, v46;
  v47 = __fp_log_fork();

  v119 = v104;
  *&v121[0] = v47;
  BYTE8(v121[0]) = 0;
  MEMORY[0x1EEE9AC00](v48);
  v100[2] = v27;
  v100[3] = v121;
  v100[4] = a2;
  v100[5] = "setUpWriteDatabase(db:queue:label:creationReason:fsTree:fpTree:inMemory:)";
  v100[6] = 73;
  v101 = 2;
  v102 = sub_1CF47FBD4;
  v103 = v104;
  v128 = 1;
  v127 = 0;
  v49 = swift_allocObject();
  v49[2] = &v128;
  v49[3] = sub_1CF2BA13C;
  v49[4] = v100;
  v49[5] = &v127;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1CF2BA170;
  *(v50 + 24) = v49;
  *&v125 = sub_1CF1C0B54;
  *(&v125 + 1) = v50;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v124 = sub_1CEFFD02C;
  *(&v124 + 1) = &block_descriptor_101;
  v51 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(a2, v51);
  _Block_release(v51);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_25;
  }

  v13 = v127;
  if (v127)
  {
    swift_willThrow();

    v53 = v120;
    v54 = fpfs_adopt_log();

    goto LABEL_7;
  }

  v79 = v116;
  if (v128)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v80 = v120;
  v81 = fpfs_adopt_log();

  if (HIBYTE(v129) != 1 || (*(v79 + 82) & 0x20) == 0 || (sub_1CF3C3CA0(0), !v6))
  {

    return;
  }

LABEL_3:
  v13 = v6;
LABEL_7:
  v127 = v13;
  v55 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  if (swift_dynamicCast())
  {

    v121[0] = aBlock;
    v121[1] = v124;
    v121[2] = v125;
    v122 = v126;
    sub_1CF3E3914(v56);
    sub_1CF24CD3C();
    swift_allocError();
    sub_1CF47FADC(v121, v57);
    swift_willThrow();
    sub_1CF47FB38(v121);

    return;
  }

  *&aBlock = v13;
  v58 = v13;
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v59 = *&v121[0];
    v60 = [*&v121[0] domain];
    v61 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v63 = v62;

    v65 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v71 = v64;
    if (v61 == v65 && v63 == v64)
    {
      v63, v64, v65, v66, v67, v68, v69, v70;
      v71, v72, v73, v74, v75, v76, v77, v78;
LABEL_20:

      sub_1CF3E3914(v97);
      swift_willThrow();

      return;
    }

    v82 = sub_1CF9E8048();
    v63, v83, v84, v85, v86, v87, v88, v89;
    v71, v90, v91, v92, v93, v94, v95, v96;
    if (v82)
    {
      goto LABEL_20;
    }
  }

  sub_1CF3E3914(v98);
  sub_1CF24CD3C();
  swift_allocError();
  *v99 = v13;
  *(v99 + 48) = 2;
  swift_willThrow();
}

uint64_t sub_1CF47AFBC(uint64_t a1)
{
  if (*(v1 + 112))
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  else
  {
    *(v1 + 96) &= ~a1;
    return v1;
  }

  return result;
}

double sub_1CF47B03C(uint64_t *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C01C0, &qword_1CFA056E0);
    v6 = swift_allocObject();
    memcpy((v6 + 16), a1, 0x208uLL);
    *(v6 + 536) = a2;
    v7 = *(a1 + 8);
    v8 = MEMORY[0x1E69E7D40];
    if (v7 == 255)
    {
      sub_1CEFCCBDC(a1, v24, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v14 = a1[31];
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v9 = *a1;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C01C8, &qword_1CFA056E8);
      v11 = objc_allocWithZone(v10);
      v12 = v11 + *((*v8 & *v11) + 0x70);
      *v12 = v9;
      v12[8] = v7;
      v12[9] = 0;
      sub_1CEFCCBDC(a1, v24, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v22.receiver = v11;
      v22.super_class = v10;
      v13 = objc_msgSendSuper2(&v22, sel_init);
      [*(v3 + 80) setObject:v6 forKey:v13];

      v14 = a1[31];
      if (!v14)
      {
LABEL_5:

        return result;
      }
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C01C8, &qword_1CFA056E8);
    v16 = objc_allocWithZone(v15);
    v17 = &v16[*((*v8 & *v16) + 0x70)];
    *v17 = v14;
    *(v17 + 4) = 256;
    v23.receiver = v16;
    v23.super_class = v15;
    v18 = v14;
    v19 = objc_msgSendSuper2(&v23, sel_init);
    v20 = *(v3 + 80);
    [v20 setObject:v6 forKey:v19];

    goto LABEL_5;
  }

  return result;
}

void sub_1CF47B24C(uint64_t *a1, char a2)
{
  if (a2 == 2)
  {
    v3 = *(a1 + 8);
    v4 = MEMORY[0x1E69E7D40];
    if (v3 != 255)
    {
      v5 = *a1;
      v6 = a1;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C01C8, &qword_1CFA056E8);
      v8 = objc_allocWithZone(v7);
      v9 = &v8[*((*v4 & *v8) + 0x70)];
      *v9 = v5;
      v9[8] = v3;
      v9[9] = 0;
      v17.receiver = v8;
      v17.super_class = v7;
      v10 = objc_msgSendSuper2(&v17, sel_init);
      [*(v2 + 80) removeObjectForKey_];

      a1 = v6;
    }

    v11 = a1[31];
    if (v11)
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C01C8, &qword_1CFA056E8);
      v13 = objc_allocWithZone(v12);
      v14 = &v13[*((*v4 & *v13) + 0x70)];
      *v14 = v11;
      *(v14 + 4) = 256;
      v18.receiver = v13;
      v18.super_class = v12;
      v15 = v11;
      v16 = objc_msgSendSuper2(&v18, sel_init);
      [*(v2 + 80) removeObjectForKey_];
    }
  }
}

void sub_1CF47B3BC(void (*a1)(uint64_t *), uint64_t a2, void *a3, uint64_t a4)
{
  v31 = a1;
  v7 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5268();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF7D55FC(sub_1CF209EF0, 0, a3, a4);
  if (!v4)
  {
    v15 = v14;
    v16 = v31;
    v27 = v13;
    v28 = v9;
    if (![v14 next])
    {
LABEL_13:

      return;
    }

    v25 = v11;
    v26 = v10;
    v17 = v16;
    while (1)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = v15;
      v20 = [v19 longAtIndex_];
      if (v20 == 0x8000000000000000)
      {
        v22 = 2;
        v21 = 1;
      }

      else
      {
        v21 = v20;
        if (v20)
        {
          if (v20 < 0)
          {
            v21 = -v20;
            if (-v20 >> 32)
            {
              sub_1CF9E51B8();
              sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
              sub_1CF042F54(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
              v23 = v27;
              v24 = v26;
              sub_1CF9E57D8();
              sub_1CF9E50D8();
              (*(v25 + 8))(v23, v24);
              swift_willThrow();

              objc_autoreleasePoolPop(v18);
              return;
            }

            v22 = 0;
          }

          else
          {
            v22 = 1;
          }
        }

        else
        {
          v22 = 2;
        }
      }

      v29 = v21;
      v30 = v22;
      v17(&v29);
      objc_autoreleasePoolPop(v18);
      if (([v19 next] & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }
}

uint64_t sub_1CF47B684(uint64_t *a1, uint64_t *a2, unsigned __int8 a3)
{
  if ((a3 >> 6) <= 1u)
  {
    if (!(a3 >> 6))
    {
      if (a3 <= 2u)
      {
        if (a3)
        {
          if (a3 != 1)
          {
            v71 = *(a1 + 23);
            v353 = *(a1 + 21);
            v354 = v71;
            v72 = *(a1 + 27);
            v355 = *(a1 + 25);
            v356 = v72;
            if ((*(&v71 + 1) & 0xF000000000000000) == 0xB000000000000000)
            {
              v73 = 0;
            }

            else
            {
              v73 = v354;
            }

            if ((*(&v71 + 1) & 0xF000000000000000) == 0xB000000000000000)
            {
              v74 = 0xF000000000000000;
            }

            else
            {
              v74 = *(&v354 + 1);
            }

            v75 = *(a2 + 23);
            *v351 = *(a2 + 21);
            *&v351[16] = v75;
            v76 = *(a2 + 27);
            *&v351[32] = *(a2 + 25);
            *&v351[48] = v76;
            if ((*&v351[24] & 0xF000000000000000) == 0xB000000000000000)
            {
              v77 = 0;
            }

            else
            {
              v77 = *&v351[16];
            }

            if ((*&v351[24] & 0xF000000000000000) == 0xB000000000000000)
            {
              v78 = 0xF000000000000000;
            }

            else
            {
              v78 = *&v351[24];
            }

            if (v74 >> 60 == 15)
            {
              if (v78 >> 60 == 15)
              {
                sub_1CEFCCBDC(&v353, v347, &unk_1EC4BF260, &unk_1CFA01B60);
                sub_1CEFCCBDC(v351, v347, &unk_1EC4BF260, &unk_1CFA01B60);
                sub_1CEFE48D8(v73, v74);
                v48 = 0;
                return v48 & 1;
              }
            }

            else if (v78 >> 60 != 15)
            {
              sub_1CEFCCBDC(&v353, v347, &unk_1EC4BF260, &unk_1CFA01B60);
              sub_1CEFCCBDC(v351, v347, &unk_1EC4BF260, &unk_1CFA01B60);
              sub_1CEFCCBDC(&v353, v347, &unk_1EC4BF260, &unk_1CFA01B60);
              sub_1CEFCCBDC(v351, v347, &unk_1EC4BF260, &unk_1CFA01B60);
              v285 = sub_1CF328660(v73, v74, v77, v78);
              sub_1CEFCCC44(v351, &unk_1EC4BF260, &unk_1CFA01B60);
              sub_1CEFCCC44(&v353, &unk_1EC4BF260, &unk_1CFA01B60);
              sub_1CEFE48D8(v77, v78);
              sub_1CEFE48D8(v73, v74);
              v48 = !v285;
              return v48 & 1;
            }

            sub_1CEFCCBDC(&v353, v347, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFCCBDC(v351, v347, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFE48D8(v73, v74);
            sub_1CEFE48D8(v77, v78);
            v48 = 1;
            return v48 & 1;
          }

          if (a1[24] >> 60 == 11)
          {
            v3 = 0;
            v4 = 1;
          }

          else
          {
            v3 = *(a1 + 44);
            v4 = *(a1 + 180);
          }

          if (a2[24] >> 60 == 11)
          {
            v135 = 0;
            v136 = 1;
          }

          else
          {
            v135 = *(a2 + 44);
            v136 = *(a2 + 180);
          }

          v139 = (v3 == v135) & ~v136;
          if (v4)
          {
            v139 = v136;
          }

          v48 = v139 ^ 1;
          return v48 & 1;
        }

        v69 = a2[24] & 0xF000000000000000;
        v70 = v69 == 0xB000000000000000;
        if (v69 == 0xB000000000000000)
        {
          v131 = 0;
        }

        else
        {
          v131 = a2[21];
        }

        if (a1[24] >> 60 == 11)
        {
LABEL_148:
          v48 = !v70;
          return v48 & 1;
        }

        v132 = v69 == 0xB000000000000000;
        v133 = a1[21];
LABEL_142:
        v70 = !v132 && v133 == v131;
        goto LABEL_148;
      }

      if (a3 == 3)
      {
        if (a1[24] >> 60 == 11)
        {
          v49 = 0;
          v50 = 1;
        }

        else
        {
          v49 = a1[25];
          v50 = *(a1 + 216);
          if (v50)
          {
            v49 = 0;
          }
        }

        if (a2[24] >> 60 == 11)
        {
LABEL_137:
          v134 = 0;
          v137 = 1;
LABEL_156:
          v140 = (v49 == v134) & ~v137;
          if (v50)
          {
            v141 = v137;
          }

          else
          {
            v141 = v140;
          }

          v48 = v141 ^ 1;
          return v48 & 1;
        }

        v134 = a2[25];
      }

      else
      {
        if (a3 != 4)
        {
          v79 = a2[24] & 0xF000000000000000;
          v70 = v79 == 0xB000000000000000;
          if (v79 == 0xB000000000000000)
          {
            v131 = 0;
          }

          else
          {
            v131 = a2[28];
          }

          if (a1[24] >> 60 == 11)
          {
            goto LABEL_148;
          }

          v132 = v79 == 0xB000000000000000;
          v133 = a1[28];
          goto LABEL_142;
        }

        if (a1[24] >> 60 == 11)
        {
          v49 = 0;
          v50 = 1;
        }

        else
        {
          v49 = a1[26];
          v50 = *(a1 + 216);
          if (v50)
          {
            v49 = 0;
          }
        }

        if (a2[24] >> 60 == 11)
        {
          goto LABEL_137;
        }

        v134 = a2[26];
      }

      v137 = *(a2 + 216);
      if (v137)
      {
        v134 = 0;
      }

      goto LABEL_156;
    }

    v12 = a1[18];
    v13 = *(a1 + 160);
    v14 = a2[18];
    v15 = *(a2 + 160);
    if (v13 <= 1)
    {
      if (!*(a1 + 160))
      {
        if (!*(a2 + 160))
        {
          v48 = v12 != v14;
          return v48 & 1;
        }

        goto LABEL_246;
      }

      if (v15 != 1)
      {
        goto LABEL_246;
      }
    }

    else if (v13 == 2)
    {
      if (v15 != 2)
      {
        goto LABEL_246;
      }
    }

    else
    {
      if (v13 == 3)
      {
        if (v15 == 3)
        {
          v16 = v12;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
          v17 = sub_1CF9E6948();
          v19 = v18;
          *&v353 = v14;
          v20 = v14;
          v22 = sub_1CF9E6948();
          v28 = v21;
          if (v17 != v22 || v19 != v21)
          {
            v258 = sub_1CF9E8048();
            v19, v259, v260, v261, v262, v263, v264, v265;
            v28, v266, v267, v268, v269, v270, v271, v272;
            v48 = v258 ^ 1;
            return v48 & 1;
          }

          v19, v21, v22, v23, v24, v25, v26, v27;
          v28, v29, v30, v31, v32, v33, v34, v35;
          goto LABEL_162;
        }

LABEL_246:
        v48 = 1;
        return v48 & 1;
      }

      v68 = a2[19];
      if (*(a1 + 9) == 0)
      {
        if (v15 != 4 || v68 | v14)
        {
          goto LABEL_246;
        }
      }

      else if (v15 != 4 || v14 != 1 || v68)
      {
        goto LABEL_246;
      }
    }

LABEL_162:
    v48 = 0;
    return v48 & 1;
  }

  if (a3 >> 6 != 3)
  {
    if (a3 > 0x83u)
    {
      if (a3 > 0x85u)
      {
        if (a3 == 134)
        {
          v48 = *(a1 + 138) ^ *(a2 + 138);
          return v48 & 1;
        }

        v122 = *(a1 + 5);
        v123 = *(a1 + 13);
        v124 = *(a1 + 11);
        v355 = *(a1 + 9);
        v356 = v124;
        v125 = *(a1 + 15);
        v357 = v123;
        v358 = v125;
        v126 = *(a1 + 7);
        v353 = v122;
        v354 = v126;
        v127 = v122;
        v128 = v357;
        if (v357)
        {
          v129 = *(a1 + 4);
          *&v351[8] = *(a1 + 3);
          *&v351[24] = v129;
          *&v351[40] = *(a1 + 5);
          v130 = a1[12];
          *v351 = v122;
          *&v351[56] = v130;
          *v352 = v357;
          *&v352[8] = *(a1 + 7);
          *&v352[24] = a1[16];
          sub_1CEFCCBDC(&v353, v347, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v351, &unk_1EC4BE330, &unk_1CF9FF010);
        }

        else
        {
          v273 = *(a1 + 4);
          *&v351[8] = *(a1 + 3);
          *&v351[24] = v273;
          *&v351[40] = *(a1 + 5);
          v274 = a1[12];
          *v351 = v122;
          *&v351[56] = v274;
          *v352 = 0;
          *&v352[8] = *(a1 + 7);
          *&v352[24] = a1[16];
          sub_1CEFCCBDC(&v353, v347, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v351, &unk_1EC4BECD0, &unk_1CF9FEF80);
          v127 = 0;
        }

        v275 = a2;
        v276 = *(a2 + 5);
        v277 = *(a2 + 13);
        v278 = *(a2 + 11);
        *&v351[32] = *(a2 + 9);
        *&v351[48] = v278;
        v279 = *(a2 + 15);
        *v352 = v277;
        *&v352[16] = v279;
        v280 = *(a2 + 7);
        *v351 = v276;
        *&v351[16] = v280;
        v281 = v276;
        v282 = *v352;
        v150 = *v352 == 0;
        if (*v352)
        {
          *v347 = v276;
          v283 = *(v275 + 4);
          *&v347[8] = *(v275 + 3);
          *&v347[24] = v283;
          *&v347[40] = *(v275 + 5);
          *&v347[56] = v275[12];
          v348 = *v352;
          v349 = *(v275 + 7);
          v350 = v275[16];
          sub_1CEFCCBDC(v351, v346, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v347, &unk_1EC4BE330, &unk_1CF9FF010);
        }

        else
        {
          *v347 = v276;
          v284 = *(v275 + 4);
          *&v347[8] = *(v275 + 3);
          *&v347[24] = v284;
          *&v347[40] = *(v275 + 5);
          *&v347[56] = v275[12];
          v348 = 0;
          v349 = *(v275 + 7);
          v350 = v275[16];
          sub_1CEFCCBDC(v351, v346, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v347, &unk_1EC4BECD0, &unk_1CF9FEF80);
          v281 = 0;
        }

        if (v128)
        {
          if (v282)
          {
            v152 = v127 == v281;
          }

          else
          {
            v152 = 0;
          }

          goto LABEL_228;
        }

LABEL_231:
        v48 = !v150;
        return v48 & 1;
      }

      if (a3 == 132)
      {
        v48 = *(a1 + 136) != *(a2 + 136);
        return v48 & 1;
      }

      v119 = *(a1 + 137);
      v120 = *(a2 + 137);
    }

    else
    {
      if (a3 <= 0x81u)
      {
        if (a3 == 128)
        {
          v36 = *a1;
          v37 = *(a1 + 8);
          v38 = *a2;
          v39 = *(a2 + 8);
          v40 = *a1 == *a2;
          if (*(a2 + 8))
          {
            v40 = 0;
          }

          v42 = v39 == 1 && v36 == v38;
          v44 = v39 == 2 && v38 == 0;
          v46 = v39 == 2 && v38 == 1;
          if (v36)
          {
            v47 = v46;
          }

          else
          {
            v47 = v44;
          }

          if (v37 == 1)
          {
            v47 = v42;
          }

          if (!*(a1 + 8))
          {
            v47 = v40;
          }

          if (v39 == 255)
          {
            v47 = *(a1 + 8) == 255;
          }

          if (v37 == 255)
          {
            v47 = *(a2 + 8) == 255;
          }

          v48 = !v47;
          return v48 & 1;
        }

        v66 = a1[2];
        v67 = a2[2];
LABEL_119:
        v48 = v66 != v67;
        return v48 & 1;
      }

      if (a3 == 130)
      {
        v66 = a1[3];
        v67 = a2[3];
        goto LABEL_119;
      }

      v119 = *(a1 + 32);
      v120 = *(a2 + 32);
    }

    v48 = v120 != v119;
    return v48 & 1;
  }

  if (a3 <= 0xC2u)
  {
    if (a3 != 192)
    {
      if (a3 == 193)
      {
        v52 = *(a1 + 7);
        v53 = *(a1 + 13);
        v54 = *(a1 + 11);
        v355 = *(a1 + 9);
        v356 = v54;
        v55 = *(a1 + 15);
        v357 = v53;
        v358 = v55;
        v353 = *(a1 + 5);
        v354 = v52;
        v56 = v52;
        v57 = BYTE8(v52);
        if (v53)
        {
          *v351 = *(a1 + 5);
          *&v351[16] = v52;
          v351[24] = BYTE8(v52);
          *&v351[25] = *(a1 + 65);
          *&v351[41] = *(a1 + 81);
          *&v351[56] = a1[12];
          *v352 = v53;
          *&v352[8] = *(a1 + 7);
          *&v352[24] = a1[16];
          sub_1CEFCCBDC(&v353, v347, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v351, &unk_1EC4BE330, &unk_1CF9FF010);
        }

        else
        {
          *v351 = *(a1 + 5);
          *&v351[16] = v52;
          v351[24] = BYTE8(v52);
          *&v351[25] = *(a1 + 65);
          *&v351[41] = *(a1 + 81);
          *&v351[56] = a1[12];
          *v352 = 0;
          *&v352[8] = *(a1 + 7);
          *&v352[24] = a1[16];
          sub_1CEFCCBDC(&v353, v347, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v351, &unk_1EC4BECD0, &unk_1CF9FEF80);
          v56 = 0;
          v57 = 1;
        }

        v153 = *(a2 + 7);
        v154 = *(a2 + 13);
        v155 = *(a2 + 11);
        *&v351[32] = *(a2 + 9);
        *&v351[48] = v155;
        v156 = *(a2 + 15);
        *v352 = v154;
        *&v352[16] = v156;
        *v351 = *(a2 + 5);
        *&v351[16] = v153;
        v157 = v153;
        v116 = BYTE8(v153);
        if (v154)
        {
          *v347 = *(a2 + 5);
          *&v347[16] = v153;
          v347[24] = BYTE8(v153);
          *&v347[25] = *(a2 + 65);
          *&v347[41] = *(a2 + 81);
          *&v347[56] = a2[12];
          v348 = *v352;
          v349 = *(a2 + 7);
          v350 = a2[16];
          sub_1CEFCCBDC(v351, v346, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v347, &unk_1EC4BE330, &unk_1CF9FF010);
        }

        else
        {
          *v347 = *(a2 + 5);
          *&v347[16] = v153;
          v347[24] = BYTE8(v153);
          *&v347[25] = *(a2 + 65);
          *&v347[41] = *(a2 + 81);
          *&v347[56] = a2[12];
          v348 = 0;
          v349 = *(a2 + 7);
          v350 = a2[16];
          sub_1CEFCCBDC(v351, v346, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v347, &unk_1EC4BECD0, &unk_1CF9FEF80);
          v157 = 0;
          v116 = 1;
        }

        if ((v57 & 1) == 0)
        {
          v116 = (v56 == v157) & ~v116;
        }

        goto LABEL_186;
      }

      v91 = *(a1 + 11);
      v355 = *(a1 + 9);
      v356 = v91;
      v92 = *(a1 + 15);
      v357 = *(a1 + 13);
      v358 = v92;
      v93 = *(a1 + 7);
      v353 = *(a1 + 5);
      v354 = v93;
      v94 = *(&v355 + 1);
      v95 = v356;
      v96 = v357;
      if (v357)
      {
        v97 = *(a1 + 7);
        *v351 = *(a1 + 5);
        *&v351[16] = v97;
        *&v351[32] = a1[9];
        *&v351[40] = *(&v355 + 1);
        v351[48] = v356;
        *&v351[49] = *(a1 + 89);
        *&v351[52] = *(a1 + 23);
        *&v351[56] = *(&v356 + 1);
        *v352 = v357;
        *&v352[8] = *(a1 + 7);
        *&v352[24] = a1[16];
        sub_1CEFCCBDC(&v353, v347, &unk_1EC4BECD0, &unk_1CF9FEF80);

        sub_1CEFCCC44(v351, &unk_1EC4BE330, &unk_1CF9FF010);
        v96, v98, v99, v100, v101, v102, v103, v104;
      }

      else
      {
        v158 = *(a1 + 7);
        *v351 = *(a1 + 5);
        *&v351[16] = v158;
        *&v351[32] = a1[9];
        *&v351[40] = *(&v355 + 1);
        v351[48] = v356;
        *&v351[49] = *(a1 + 89);
        *&v351[52] = *(a1 + 23);
        *&v351[56] = *(&v356 + 1);
        *v352 = 0;
        *&v352[8] = *(a1 + 7);
        *&v352[24] = a1[16];
        sub_1CEFCCBDC(&v353, v347, &unk_1EC4BECD0, &unk_1CF9FEF80);
        sub_1CEFCCC44(v351, &unk_1EC4BECD0, &unk_1CF9FEF80);
        0, v159, v160, v161, v162, v163, v164, v165;
        v94 = 0;
        v95 = 255;
      }

      v166 = a2;
      v167 = *(a2 + 11);
      *&v351[32] = *(a2 + 9);
      *&v351[48] = v167;
      v168 = *(a2 + 15);
      *v352 = *(a2 + 13);
      *&v352[16] = v168;
      v169 = *(a2 + 7);
      *v351 = *(a2 + 5);
      *&v351[16] = v169;
      v170 = *&v351[40];
      v171 = v351[48];
      v172 = *v352;
      if (*v352)
      {
        v173 = *(v166 + 7);
        *v347 = *(v166 + 5);
        *&v347[16] = v173;
        *&v347[32] = v166[9];
        *&v347[40] = *&v351[40];
        v347[48] = v351[48];
        *&v347[49] = *(v166 + 89);
        *&v347[52] = *(v166 + 23);
        *&v347[56] = *&v351[56];
        v348 = *v352;
        v349 = *(v166 + 7);
        v350 = v166[16];
        sub_1CEFCCBDC(v351, v346, &unk_1EC4BECD0, &unk_1CF9FEF80);

        sub_1CEFCCC44(v347, &unk_1EC4BE330, &unk_1CF9FF010);
        v172, v174, v175, v176, v177, v178, v179, v180;
        if (v95 != 255)
        {
          if (v171 == 255)
          {
            goto LABEL_246;
          }

          if (v95)
          {
            if (v95 == 1)
            {
              v181 = v171 == 1 && v94 == v170;
            }

            else if (v94)
            {
              v181 = v171 == 2 && v170 == 1;
            }

            else
            {
              v181 = v171 == 2 && v170 == 0;
            }
          }

          else
          {
            if (v171)
            {
              goto LABEL_246;
            }

            v181 = v94 == v170;
          }

LABEL_190:
          v190 = v181;
          v48 = v190 ^ 1;
          return v48 & 1;
        }
      }

      else
      {
        v182 = *(v166 + 7);
        *v347 = *(v166 + 5);
        *&v347[16] = v182;
        *&v347[32] = v166[9];
        *&v347[40] = *&v351[40];
        v347[48] = v351[48];
        *&v347[49] = *(v166 + 89);
        *&v347[52] = *(v166 + 23);
        *&v347[56] = *&v351[56];
        v348 = 0;
        v349 = *(v166 + 7);
        v350 = v166[16];
        sub_1CEFCCBDC(v351, v346, &unk_1EC4BECD0, &unk_1CF9FEF80);
        sub_1CEFCCC44(v347, &unk_1EC4BECD0, &unk_1CF9FEF80);
        0, v183, v184, v185, v186, v187, v188, v189;
        if (v95 != 255)
        {
          goto LABEL_246;
        }

        v171 = 255;
      }

      v181 = v171 == 255;
      goto LABEL_190;
    }

    v81 = *(a1 + 5);
    v82 = *(a1 + 13);
    v83 = *(a1 + 11);
    v355 = *(a1 + 9);
    v356 = v83;
    v84 = *(a1 + 15);
    v357 = v82;
    v358 = v84;
    v85 = *(a1 + 7);
    v353 = v81;
    v354 = v85;
    v86 = DWORD2(v81);
    v87 = v357;
    *v351 = v81;
    *&v351[12] = *(a1 + 52);
    *&v351[28] = *(a1 + 68);
    *&v351[44] = *(a1 + 84);
    v88 = *(a1 + 25);
    *&v351[8] = DWORD2(v81);
    *&v351[60] = v88;
    *&v352[8] = *(a1 + 7);
    v89 = a1[16];
    if (v357)
    {
      *v352 = v357;
      *&v352[24] = v89;
      sub_1CEFCCBDC(&v353, v347, &unk_1EC4BECD0, &unk_1CF9FEF80);
      sub_1CEFCCC44(v351, &unk_1EC4BE330, &unk_1CF9FF010);
    }

    else
    {
      *v352 = 0;
      *&v352[24] = v89;
      sub_1CEFCCBDC(&v353, v347, &unk_1EC4BECD0, &unk_1CF9FEF80);
      sub_1CEFCCC44(v351, &unk_1EC4BECD0, &unk_1CF9FEF80);
      v86 = 0;
    }

    v142 = a2;
    v143 = *(a2 + 5);
    v144 = *(a2 + 13);
    v145 = *(a2 + 11);
    *&v351[32] = *(a2 + 9);
    *&v351[48] = v145;
    v146 = *(a2 + 15);
    *v352 = v144;
    *&v352[16] = v146;
    v147 = *(a2 + 7);
    *v351 = v143;
    *&v351[16] = v147;
    v148 = DWORD2(v143);
    v149 = *v352;
    v150 = *v352 == 0;
    *v347 = v143;
    *&v347[8] = DWORD2(v143);
    *&v347[12] = *(v142 + 52);
    *&v347[28] = *(v142 + 68);
    *&v347[44] = *(v142 + 84);
    *&v347[60] = *(v142 + 25);
    v349 = *(v142 + 7);
    v151 = v142[16];
    if (*v352)
    {
      v348 = *v352;
      v350 = v151;
      sub_1CEFCCBDC(v351, v346, &unk_1EC4BECD0, &unk_1CF9FEF80);
      sub_1CEFCCC44(v347, &unk_1EC4BE330, &unk_1CF9FF010);
    }

    else
    {
      v348 = 0;
      v350 = v151;
      sub_1CEFCCBDC(v351, v346, &unk_1EC4BECD0, &unk_1CF9FEF80);
      sub_1CEFCCC44(v347, &unk_1EC4BECD0, &unk_1CF9FEF80);
      v148 = 0;
    }

    if (v87)
    {
      if (v149)
      {
        v152 = v86 == v148;
      }

      else
      {
        v152 = 0;
      }

LABEL_228:
      v150 = v152;
      goto LABEL_231;
    }

    goto LABEL_231;
  }

  if (a3 > 0xC4u)
  {
    if (a3 == 197)
    {
      v59 = *(a1 + 11);
      v355 = *(a1 + 9);
      v356 = v59;
      v60 = *(a1 + 15);
      v357 = *(a1 + 13);
      v358 = v60;
      v61 = *(a1 + 7);
      v353 = *(a1 + 5);
      v354 = v61;
      v62 = *(&v355 + 1);
      v63 = v356;
      v64 = *(&v356 + 1);
      v9 = v357;
      if (v357)
      {
        v65 = *(a1 + 7);
        *v351 = *(a1 + 5);
        *&v351[16] = v65;
        *&v351[32] = a1[9];
        *&v351[40] = *(&v355 + 1);
        v351[48] = v356;
        *&v351[49] = *(a1 + 89);
        *&v351[52] = *(a1 + 23);
        *&v351[56] = *(&v356 + 1);
        *v352 = v357;
        *&v352[8] = *(a1 + 7);
        *&v352[24] = a1[16];
        sub_1CEFCCBDC(&v353, v347, &unk_1EC4BECD0, &unk_1CF9FEF80);

        sub_1CEFCCC44(v351, &unk_1EC4BE330, &unk_1CF9FF010);
      }

      else
      {
        v221 = *(a1 + 7);
        *v351 = *(a1 + 5);
        *&v351[16] = v221;
        *&v351[32] = a1[9];
        *&v351[40] = *(&v355 + 1);
        v351[48] = v356;
        *&v351[49] = *(a1 + 89);
        *&v351[52] = *(a1 + 23);
        *&v351[56] = *(&v356 + 1);
        *v352 = 0;
        *&v352[8] = *(a1 + 7);
        *&v352[24] = a1[16];
        sub_1CEFCCBDC(&v353, v347, &unk_1EC4BECD0, &unk_1CF9FEF80);
        sub_1CEFCCC44(v351, &unk_1EC4BECD0, &unk_1CF9FEF80);
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v9 = 0;
      }

      v222 = a2;
      v223 = *(a2 + 11);
      *&v351[32] = *(a2 + 9);
      *&v351[48] = v223;
      v224 = *(a2 + 15);
      *v352 = *(a2 + 13);
      *&v352[16] = v224;
      v225 = *(a2 + 7);
      *v351 = *(a2 + 5);
      *&v351[16] = v225;
      v226 = *&v351[40];
      v227 = v351[48];
      v229 = *&v351[56];
      v228 = *v352;
      if (*v352)
      {
        v230 = *(v222 + 7);
        *v347 = *(v222 + 5);
        *&v347[16] = v230;
        *&v347[32] = v222[9];
        *&v347[40] = *&v351[40];
        v347[48] = v351[48];
        *&v347[49] = *(v222 + 89);
        *&v347[52] = *(v222 + 23);
        *&v347[56] = *&v351[56];
        v348 = *v352;
        v349 = *(v222 + 7);
        v350 = v222[16];
        sub_1CEFCCBDC(v351, v346, &unk_1EC4BECD0, &unk_1CF9FEF80);

        sub_1CEFCCC44(v347, &unk_1EC4BE330, &unk_1CF9FF010);
        if (v9)
        {
          swift_bridgeObjectRetain_n();

          v231 = sub_1CF443664(v62, v63, v64, v9, v226, v227, v229, v228);
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v48 = v231 ^ 1;
          return v48 & 1;
        }
      }

      else
      {
        v250 = *(v222 + 7);
        *v347 = *(v222 + 5);
        *&v347[16] = v250;
        *&v347[32] = v222[9];
        *&v347[40] = *&v351[40];
        v347[48] = v351[48];
        *&v347[49] = *(v222 + 89);
        *&v347[52] = *(v222 + 23);
        *&v347[56] = *&v351[56];
        v348 = 0;
        v349 = *(v222 + 7);
        v350 = v222[16];
        sub_1CEFCCBDC(v351, v346, &unk_1EC4BECD0, &unk_1CF9FEF80);
        sub_1CEFCCC44(v347, &unk_1EC4BECD0, &unk_1CF9FEF80);
        if (!v9)
        {
          goto LABEL_233;
        }
      }

      v249 = v228;
      goto LABEL_217;
    }

    v114 = a1[29];
    v115 = a2[29];
    v116 = (v114 | v115) == 0;
    if (v114 && v115)
    {
      sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
      v117 = v115;
      v118 = v114;
      v116 = sub_1CF9E7568();
    }

LABEL_186:
    v48 = v116 ^ 1;
    return v48 & 1;
  }

  if (a3 == 195)
  {
    v6 = *(a1 + 11);
    v355 = *(a1 + 9);
    v356 = v6;
    v7 = *(a1 + 15);
    v357 = *(a1 + 13);
    v358 = v7;
    v8 = *(a1 + 7);
    v353 = *(a1 + 5);
    v354 = v8;
    v10 = *(&v356 + 1);
    v9 = v357;
    if (v357)
    {
      v11 = *(a1 + 7);
      *v351 = *(a1 + 5);
      *&v351[16] = v11;
      *&v351[32] = a1[9];
      *&v351[40] = *(&v355 + 1);
      v351[48] = v356;
      *&v351[49] = *(a1 + 89);
      *&v351[52] = *(a1 + 23);
      *&v351[56] = *(&v356 + 1);
      *v352 = v357;
      *&v352[8] = *(a1 + 7);
      *&v352[24] = a1[16];
      sub_1CEFCCBDC(&v353, v347, &unk_1EC4BECD0, &unk_1CF9FEF80);

      sub_1CEFCCC44(v351, &unk_1EC4BE330, &unk_1CF9FF010);
    }

    else
    {
      v191 = *(a1 + 7);
      *v351 = *(a1 + 5);
      *&v351[16] = v191;
      *&v351[32] = a1[9];
      *&v351[40] = *(&v355 + 1);
      v351[48] = v356;
      *&v351[49] = *(a1 + 89);
      *&v351[52] = *(a1 + 23);
      *&v351[56] = *(&v356 + 1);
      *v352 = 0;
      *&v352[8] = *(a1 + 7);
      *&v352[24] = a1[16];
      sub_1CEFCCBDC(&v353, v347, &unk_1EC4BECD0, &unk_1CF9FEF80);
      sub_1CEFCCC44(v351, &unk_1EC4BECD0, &unk_1CF9FEF80);
      0, v192, v193, v194, v195, v196, v197, v198;
      v10 = 0;
      v9 = 0;
    }

    v199 = a2;
    v200 = *(a2 + 11);
    *&v351[32] = *(a2 + 9);
    *&v351[48] = v200;
    v201 = *(a2 + 15);
    *v352 = *(a2 + 13);
    *&v352[16] = v201;
    v202 = *(a2 + 7);
    *v351 = *(a2 + 5);
    *&v351[16] = v202;
    v204 = *&v351[56];
    v203 = *v352;
    if (*v352)
    {
      v205 = *(v199 + 7);
      *v347 = *(v199 + 5);
      *&v347[16] = v205;
      *&v347[32] = v199[9];
      *&v347[40] = *&v351[40];
      v347[48] = v351[48];
      *&v347[49] = *(v199 + 89);
      *&v347[52] = *(v199 + 23);
      *&v347[56] = *&v351[56];
      v348 = *v352;
      v349 = *(v199 + 7);
      v350 = v199[16];
      sub_1CEFCCBDC(v351, v346, &unk_1EC4BECD0, &unk_1CF9FEF80);

      sub_1CEFCCC44(v347, &unk_1EC4BE330, &unk_1CF9FF010);
      if (v9)
      {

        v213 = sub_1CEFE7394(v10, v9);
        if (v214)
        {
          if (v213 == 12565487 && v214 == 0xA300000000000000)
          {
            0xA300000000000000, 0xA300000000000000, v215, v216, v217, v218, v219, v220;
LABEL_235:
            v295 = sub_1CF9E69E8();
            v296 = sub_1CF025150(v295, v10, v9);
            v298 = v297;
            v10 = MEMORY[0x1D3868C10](v296);
            v300 = v299;
            v298, v299, v301, v302, v303, v304, v305, v306;
            goto LABEL_237;
          }

          v286 = v214;
          v287 = sub_1CF9E8048();
          v286, v288, v289, v290, v291, v292, v293, v294;
          if (v287)
          {
            goto LABEL_235;
          }
        }

        v300 = v9;
LABEL_237:
        *v347 = v204;
        *&v347[8] = v203;
        v308 = sub_1CF662E90();
        v314 = v307;
        if (v10 == v308 && v300 == v307)
        {
          v9, v307, v308, v309, v310, v311, v312, v313;
          swift_bridgeObjectRelease_n();
          v48 = 0;
        }

        else
        {
          v322 = sub_1CF9E8048();
          v9, v323, v324, v325, v326, v327, v328, v329;
          swift_bridgeObjectRelease_n();
          v48 = v322 ^ 1;
        }

        v314, v315, v316, v317, v318, v319, v320, v321;
        v300, v330, v331, v332, v333, v334, v335, v336;
        v9, v337, v338, v339, v340, v341, v342, v343;
        return v48 & 1;
      }

      goto LABEL_214;
    }

    v241 = *(v199 + 7);
    *v347 = *(v199 + 5);
    *&v347[16] = v241;
    *&v347[32] = v199[9];
    *&v347[40] = *&v351[40];
    v347[48] = v351[48];
    *&v347[49] = *(v199 + 89);
    *&v347[52] = *(v199 + 23);
    *&v347[56] = *&v351[56];
    v348 = 0;
    v349 = *(v199 + 7);
    v350 = v199[16];
    sub_1CEFCCBDC(v351, v346, &unk_1EC4BECD0, &unk_1CF9FEF80);
    sub_1CEFCCC44(v347, &unk_1EC4BECD0, &unk_1CF9FEF80);
    0, v242, v243, v244, v245, v246, v247, v248;
    if (v9)
    {
LABEL_214:
      v249 = v203;
LABEL_217:
      v249, v206, v207, v208, v209, v210, v211, v212;
      v9, v251, v252, v253, v254, v255, v256, v257;
      v48 = 1;
      return v48 & 1;
    }

LABEL_233:
    0, v206, v207, v208, v209, v210, v211, v212;
    v48 = 0;
    return v48 & 1;
  }

  v106 = *(a1 + 7);
  v353 = *(a1 + 5);
  v354 = v106;
  v107 = *(a1 + 13);
  v108 = *(a1 + 11);
  v355 = *(a1 + 9);
  v356 = v108;
  v109 = *(a1 + 15);
  v357 = v107;
  v358 = v109;
  v110 = v353;
  v111 = DWORD2(v353);
  v112 = BYTE8(v354);
  v113 = v107;
  v48 = v107 != 0;
  *v351 = v353;
  if (v107)
  {
    v345 = v354;
    *&v351[16] = v354;
    v351[24] = BYTE8(v354);
    *&v351[25] = *(a1 + 65);
    *&v351[41] = *(a1 + 81);
    *&v351[56] = a1[12];
    *v352 = v107;
    *&v352[8] = *(a1 + 7);
    *&v352[24] = a1[16];
    sub_1CEFCCBDC(&v353, v347, &unk_1EC4BECD0, &unk_1CF9FEF80);
    sub_1CEFCCC44(v351, &unk_1EC4BE330, &unk_1CF9FF010);
  }

  else
  {
    *&v351[16] = v354;
    v351[24] = BYTE8(v354);
    *&v351[25] = *(a1 + 65);
    *&v351[41] = *(a1 + 81);
    *&v351[56] = a1[12];
    *v352 = 0;
    *&v352[8] = *(a1 + 7);
    *&v352[24] = a1[16];
    sub_1CEFCCBDC(&v353, v347, &unk_1EC4BECD0, &unk_1CF9FEF80);
    sub_1CEFCCC44(v351, &unk_1EC4BECD0, &unk_1CF9FEF80);
    v110 = 0;
    v111 = 0;
    v345 = 0;
    v112 = 0;
  }

  v232 = a2;
  v233 = *(a2 + 7);
  *v351 = *(a2 + 5);
  *&v351[16] = v233;
  v234 = *(a2 + 13);
  v235 = *(a2 + 11);
  *&v351[32] = *(a2 + 9);
  *&v351[48] = v235;
  v236 = *(a2 + 15);
  *v352 = v234;
  *&v352[16] = v236;
  v237 = *v351;
  v238 = *&v351[8];
  v239 = *&v351[16];
  v240 = v351[24];
  if (!v234)
  {
    *v347 = *v351;
    *&v347[16] = *&v351[16];
    v347[24] = v351[24];
    *&v347[25] = *(v232 + 65);
    *&v347[41] = *(v232 + 81);
    *&v347[56] = v232[12];
    v348 = 0;
    v349 = *(v232 + 7);
    v350 = v232[16];
    sub_1CEFCCBDC(v351, v346, &unk_1EC4BECD0, &unk_1CF9FEF80);
    sub_1CEFCCC44(v347, &unk_1EC4BECD0, &unk_1CF9FEF80);
    return v48 & 1;
  }

  *v347 = *v351;
  *&v347[16] = *&v351[16];
  v347[24] = v351[24];
  *&v347[25] = *(v232 + 65);
  *&v347[41] = *(v232 + 81);
  *&v347[56] = v232[12];
  v348 = v234;
  v349 = *(v232 + 7);
  v350 = v232[16];
  sub_1CEFCCBDC(v351, v346, &unk_1EC4BECD0, &unk_1CF9FEF80);
  sub_1CEFCCC44(v347, &unk_1EC4BE330, &unk_1CF9FF010);
  v48 = 1;
  if (v113 && v110 == v237 && v111 == v238)
  {
    if (v112)
    {
      if ((v240 & 1) == 0)
      {
        return v48 & 1;
      }
    }

    else if ((v240 & 1) != 0 || v345 != v239)
    {
      return v48 & 1;
    }

    v48 = 0;
  }

  return v48 & 1;
}

uint64_t sub_1CF47D064(uint64_t *a1, uint64_t *a2, unsigned __int8 a3)
{
  if ((a3 >> 6) <= 1u)
  {
    if (!(a3 >> 6))
    {
      if (a3 <= 2u)
      {
        if (a3)
        {
          if (a3 == 1)
          {
            if (a1[19] >> 60 == 11)
            {
              v4 = 0;
              v5 = 1;
            }

            else
            {
              v4 = *(a1 + 34);
              v5 = *(a1 + 140);
            }

            if (a2[19] >> 60 == 11)
            {
              v123 = 0;
              v124 = 1;
            }

            else
            {
              v123 = *(a2 + 34);
              v124 = *(a2 + 140);
            }

            v129 = (v4 == v123) & ~v124;
            if (v5)
            {
              v129 = v124;
            }

            v21 = v129 ^ 1;
            return v21 & 1;
          }

          v78 = *(a1 + 9);
          v184 = *(a1 + 8);
          v185 = v78;
          v79 = *(a1 + 11);
          v186 = *(a1 + 10);
          v187 = v79;
          if ((*(&v78 + 1) & 0xF000000000000000) == 0xB000000000000000)
          {
            v80 = 0;
          }

          else
          {
            v80 = v185;
          }

          if ((*(&v78 + 1) & 0xF000000000000000) == 0xB000000000000000)
          {
            v81 = 0xF000000000000000;
          }

          else
          {
            v81 = *(&v185 + 1);
          }

          v82 = *(a2 + 9);
          v182 = *(a2 + 8);
          *v183 = v82;
          v83 = *(a2 + 11);
          *&v183[16] = *(a2 + 10);
          *&v183[32] = v83;
          if ((*&v183[8] & 0xF000000000000000) == 0xB000000000000000)
          {
            v84 = 0;
          }

          else
          {
            v84 = *v183;
          }

          if ((*&v183[8] & 0xF000000000000000) == 0xB000000000000000)
          {
            v85 = 0xF000000000000000;
          }

          else
          {
            v85 = *&v183[8];
          }

          if (v81 >> 60 == 15)
          {
            if (v85 >> 60 == 15)
            {
              sub_1CEFCCBDC(&v184, &v178, &unk_1EC4BF260, &unk_1CFA01B60);
              sub_1CEFCCBDC(&v182, &v178, &unk_1EC4BF260, &unk_1CFA01B60);
              v86 = v80;
              v87 = v81;
LABEL_156:
              sub_1CEFE48D8(v86, v87);
              v21 = 0;
              return v21 & 1;
            }
          }

          else if (v85 >> 60 != 15)
          {
            sub_1CEFCCBDC(&v184, &v178, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFCCBDC(&v182, &v178, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFCCBDC(&v184, &v178, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFCCBDC(&v182, &v178, &unk_1EC4BF260, &unk_1CFA01B60);
            v158 = sub_1CF328660(v80, v81, v84, v85);
            sub_1CEFCCC44(&v182, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFCCC44(&v184, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFE48D8(v84, v85);
            sub_1CEFE48D8(v80, v81);
            v21 = !v158;
            return v21 & 1;
          }

          sub_1CEFCCBDC(&v184, &v178, &unk_1EC4BF260, &unk_1CFA01B60);
          sub_1CEFCCBDC(&v182, &v178, &unk_1EC4BF260, &unk_1CFA01B60);
          sub_1CEFE48D8(v80, v81);
          v126 = v84;
          v127 = v85;
LABEL_160:
          sub_1CEFE48D8(v126, v127);
          v21 = 1;
          return v21 & 1;
        }

        v76 = a2[19] & 0xF000000000000000;
        v77 = v76 == 0xB000000000000000;
        if (v76 == 0xB000000000000000)
        {
          v119 = 0;
        }

        else
        {
          v119 = a2[16];
        }

        if (a1[19] >> 60 == 11)
        {
          goto LABEL_128;
        }

        v120 = v76 == 0xB000000000000000;
        v121 = a1[16];
        goto LABEL_122;
      }

      if (a3 == 3)
      {
        if (a1[19] >> 60 == 11)
        {
          v58 = 0;
          v59 = 1;
        }

        else
        {
          v58 = a1[20];
          v59 = *(a1 + 176);
          if (v59)
          {
            v58 = 0;
          }
        }

        if (a2[19] >> 60 == 11)
        {
LABEL_117:
          v122 = 0;
          v125 = 1;
LABEL_136:
          v130 = (v58 == v122) & ~v125;
          if (v59)
          {
            v131 = v125;
          }

          else
          {
            v131 = v130;
          }

          v21 = v131 ^ 1;
          return v21 & 1;
        }

        v122 = a2[20];
      }

      else
      {
        if (a3 != 4)
        {
          v88 = a2[19] & 0xF000000000000000;
          v77 = v88 == 0xB000000000000000;
          if (v88 == 0xB000000000000000)
          {
            v119 = 0;
          }

          else
          {
            v119 = a2[23];
          }

          if (a1[19] >> 60 == 11)
          {
            goto LABEL_128;
          }

          v120 = v88 == 0xB000000000000000;
          v121 = a1[23];
LABEL_122:
          v77 = !v120 && v121 == v119;
LABEL_128:
          v21 = !v77;
          return v21 & 1;
        }

        if (a1[19] >> 60 == 11)
        {
          v58 = 0;
          v59 = 1;
        }

        else
        {
          v58 = a1[21];
          v59 = *(a1 + 176);
          if (v59)
          {
            v58 = 0;
          }
        }

        if (a2[19] >> 60 == 11)
        {
          goto LABEL_117;
        }

        v122 = a2[21];
      }

      v125 = *(a2 + 176);
      if (v125)
      {
        v122 = 0;
      }

      goto LABEL_136;
    }

    v22 = a1[13];
    v23 = *(a1 + 120);
    v9 = a2[13];
    v24 = *(a2 + 120);
    if (v23 > 1)
    {
      if (v23 != 2)
      {
        if (v23 == 3)
        {
          if (v24 == 3)
          {
            v25 = v22;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            v26 = sub_1CF9E6948();
            v28 = v27;
            *&v184 = v9;
            v29 = v9;
            v31 = sub_1CF9E6948();
            v37 = v30;
            if (v26 != v31 || v28 != v30)
            {
              v143 = sub_1CF9E8048();
              v28, v144, v145, v146, v147, v148, v149, v150;
              v37, v151, v152, v153, v154, v155, v156, v157;
              v21 = v143 ^ 1;
              return v21 & 1;
            }

            v28, v30, v31, v32, v33, v34, v35, v36;
            v37, v38, v39, v40, v41, v42, v43, v44;
            goto LABEL_142;
          }

          goto LABEL_60;
        }

        v75 = a2[14];
        if (*(a1 + 13) == 0)
        {
          if (v24 != 4 || v75 | v9)
          {
            goto LABEL_60;
          }
        }

        else if (v24 != 4 || v9 != 1 || v75)
        {
          goto LABEL_60;
        }

LABEL_142:
        v21 = 0;
        return v21 & 1;
      }

      if (v24 == 2)
      {
        goto LABEL_142;
      }

LABEL_60:
      v21 = 1;
      return v21 & 1;
    }

    goto LABEL_42;
  }

  if (a3 >> 6 == 3)
  {
    if (a3 > 0xC2u)
    {
      if (a3 > 0xC4u)
      {
        if (a3 != 197)
        {
          v106 = a1[24];
          v107 = a2[24];
          v108 = (v106 | v107) == 0;
          if (v106 && v107)
          {
            sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
            v109 = v107;
            v110 = v106;
            v108 = sub_1CF9E7568();
          }

          v21 = v108 ^ 1;
          return v21 & 1;
        }

        v68 = *(a1 + 3);
        v184 = *(a1 + 2);
        v185 = v68;
        v69 = *(a1 + 5);
        v186 = *(a1 + 4);
        v187 = v69;
        v70 = *(&v68 + 1);
        v71 = v186;
        v182 = *(a1 + 2);
        if (v68 == 1)
        {
          *v183 = 1;
          *&v183[8] = *(&v68 + 1);
          *&v183[24] = *(a1 + 9);
          v72 = a1[11];
          *&v183[16] = v186;
          *&v183[40] = v72;
          sub_1CEFCCBDC(&v184, &v178, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFCCC44(&v182, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          v70 = 0;
          v71 = 0xF000000000000000;
        }

        else
        {
          *v183 = v68;
          *&v183[24] = *(a1 + 9);
          v132 = a1[11];
          *&v183[16] = v186;
          *&v183[40] = v132;
          sub_1CEFCCBDC(&v184, &v178, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v70, v71);
          sub_1CEFCCC44(&v182, &unk_1EC4BF250, &unk_1CFA01B50);
        }

        v133 = a2;
        v134 = *(a2 + 3);
        v182 = *(a2 + 2);
        *v183 = v134;
        v135 = *(a2 + 5);
        *&v183[16] = *(a2 + 4);
        *&v183[32] = v135;
        v136 = *(&v134 + 1);
        v137 = *&v183[16];
        if (v134 == 1)
        {
          v178 = *(v133 + 2);
          *v179 = v134;
          v180 = *(v133 + 9);
          v138 = v133[11];
          *&v179[16] = *&v183[16];
          goto LABEL_149;
        }

        v178 = *(v133 + 2);
        *v179 = *v183;
        v180 = *(v133 + 9);
        v142 = v133[11];
        *&v179[16] = *&v183[16];
      }

      else
      {
        if (a3 == 195)
        {
          v6 = *(a1 + 3);
          v184 = *(a1 + 2);
          v185 = v6;
          v7 = *(a1 + 5);
          v186 = *(a1 + 4);
          v187 = v7;
          v8 = *(&v6 + 1);
          v9 = v186;
          if (v6 == 1)
          {
            v3 = a2;
            v178 = *(a1 + 2);
            *v179 = 1;
            *&v179[8] = *(&v6 + 1);
            v180 = *(a1 + 9);
            v10 = a1[11];
            *&v179[16] = v186;
            v181 = v10;
            sub_1CEFCCBDC(&v184, &v182, &unk_1EC4BF2D0, &unk_1CF9FEF20);
            sub_1CEFCCC44(&v178, &unk_1EC4BF2D0, &unk_1CF9FEF20);
            v11 = *(v3 + 3);
            v182 = *(v3 + 2);
            *v183 = v11;
            v12 = *(v3 + 5);
            *&v183[16] = *(v3 + 4);
            *&v183[32] = v12;
            v8 = *(&v11 + 1);
            v13 = v11;
            v9 = *&v183[16];
            if (v11 == 1)
            {
              v174 = *(v3 + 2);
              *v175 = v11;
              *&v175[16] = *&v183[16];
              v176 = *(v3 + 9);
              v177 = v3[11];
              sub_1CEFCCBDC(&v182, v173, &unk_1EC4BF2D0, &unk_1CF9FEF20);
              sub_1CEFCCC44(&v174, &unk_1EC4BF2D0, &unk_1CF9FEF20);
              0, v14, v15, v16, v17, v18, v19, v20;
              v21 = 0;
              return v21 & 1;
            }

            goto LABEL_172;
          }

          v182 = *(a1 + 2);
          *v183 = v6;
          *&v183[24] = *(a1 + 9);
          v168 = a1[11];
          *&v183[16] = v186;
          *&v183[40] = v168;
          sub_1CEFCCBDC(&v184, &v178, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v8, v9);
          a1 = sub_1CEFCCC44(&v182, &unk_1EC4BF250, &unk_1CFA01B50);
          __break(1u);
          goto LABEL_169;
        }

        v103 = *(a1 + 3);
        v184 = *(a1 + 2);
        v185 = v103;
        v104 = *(a1 + 5);
        v186 = *(a1 + 4);
        v187 = v104;
        v71 = *(&v184 + 1);
        v70 = v184;
        v182 = v184;
        *&v183[8] = *(a1 + 7);
        *&v183[24] = *(a1 + 9);
        v105 = a1[11];
        if (v185 == 1)
        {
          *v183 = 1;
          *&v183[40] = v105;
          sub_1CEFCCBDC(&v184, &v178, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFCCC44(&v182, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          v70 = 0;
          v71 = 0xF000000000000000;
        }

        else
        {
          *v183 = v185;
          *&v183[40] = v105;
          sub_1CEFCCBDC(&v184, &v178, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v70, v71);
          sub_1CEFCCC44(&v182, &unk_1EC4BF250, &unk_1CFA01B50);
        }

        v139 = a2;
        v140 = *(a2 + 3);
        v182 = *(a2 + 2);
        *v183 = v140;
        v141 = *(a2 + 5);
        *&v183[16] = *(a2 + 4);
        *&v183[32] = v141;
        v137 = *(&v182 + 1);
        v136 = v182;
        if (*v183 == 1)
        {
          v178 = v182;
          *&v179[8] = *(v139 + 7);
          v180 = *(v139 + 9);
          v138 = v139[11];
          *v179 = 1;
LABEL_149:
          v181 = v138;
          sub_1CEFCCBDC(&v182, &v174, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFCCC44(&v178, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          if (v71 >> 60 != 15)
          {
            v136 = 0;
            v137 = 0xF000000000000000;
LABEL_158:
            sub_1CEFF05F4(v70, v71);
            sub_1CEFE4714(v70, v71);
            goto LABEL_159;
          }

          goto LABEL_155;
        }

        v178 = v182;
        *&v179[8] = *(v139 + 7);
        v180 = *(v139 + 9);
        v142 = v139[11];
        *v179 = *v183;
      }

      v181 = v142;
      sub_1CEFCCBDC(&v182, &v174, &unk_1EC4BF2D0, &unk_1CF9FEF20);
      sub_1CEFE42D4(v136, v137);
      sub_1CEFCCC44(&v178, &unk_1EC4BF250, &unk_1CFA01B50);
      if (v71 >> 60 != 15)
      {
        if (v137 >> 60 != 15)
        {
          sub_1CEFF05F4(v70, v71);
          sub_1CEFF05F4(v136, v137);
          sub_1CEFF05F4(v70, v71);
          v159 = sub_1CF328660(v70, v71, v136, v137);
          sub_1CEFE48D8(v136, v137);
          sub_1CEFE48D8(v136, v137);
          sub_1CEFE48D8(v70, v71);
          sub_1CEFE4714(v70, v71);
          sub_1CEFE48D8(v70, v71);
          v21 = !v159;
          return v21 & 1;
        }

        goto LABEL_158;
      }

      if (v137 >> 60 != 15)
      {
LABEL_159:
        sub_1CEFE48D8(v70, v71);
        v126 = v136;
        v127 = v137;
        goto LABEL_160;
      }

LABEL_155:
      v86 = v70;
      v87 = v71;
      goto LABEL_156;
    }

    if (a3 != 192)
    {
      if (a3 == 193)
      {
        v60 = *(a1 + 3);
        v184 = *(a1 + 2);
        v185 = v60;
        v61 = *(a1 + 5);
        v186 = *(a1 + 4);
        v187 = v61;
        v9 = *(&v184 + 1);
        v8 = v184;
        v62 = v185;
        if (v185 != 1)
        {
LABEL_169:
          *&v182 = v8;
          *(&v182 + 1) = v9;
          *&v183[8] = *(a1 + 7);
          *&v183[24] = *(a1 + 9);
          v169 = a1[11];
          *v183 = v62;
          *&v183[40] = v169;
          sub_1CEFCCBDC(&v184, &v178, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v8, v9);
          a1 = sub_1CEFCCC44(&v182, &unk_1EC4BF250, &unk_1CFA01B50);
          __break(1u);
          goto LABEL_170;
        }

        v3 = a2;
        v178 = v184;
        *&v179[8] = *(a1 + 7);
        v180 = *(a1 + 9);
        v63 = a1[11];
        *v179 = 1;
        v181 = v63;
        sub_1CEFCCBDC(&v184, &v182, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFCCC44(&v178, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        v64 = *(v3 + 3);
        v182 = *(v3 + 2);
        *v183 = v64;
        v65 = *(v3 + 5);
        *&v183[16] = *(v3 + 4);
        *&v183[32] = v65;
        v9 = *(&v182 + 1);
        v8 = v182;
        v66 = *v183;
        if (*v183 != 1)
        {
          v174 = v182;
          *v175 = *v183;
          *&v175[8] = *(v3 + 7);
          v176 = *(v3 + 9);
          v177 = v3[11];
          sub_1CEFCCBDC(&v182, v173, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v8, v9);
          sub_1CEFCCC44(&v174, &unk_1EC4BF250, &unk_1CFA01B50);
          __break(1u);
LABEL_42:
          if (v23)
          {
            if (v24 == 1)
            {
              goto LABEL_142;
            }

            goto LABEL_60;
          }

          if (v24)
          {
            goto LABEL_60;
          }

          v21 = v22 != v9;
          return v21 & 1;
        }

        goto LABEL_103;
      }

LABEL_87:
      v95 = *(a1 + 3);
      v184 = *(a1 + 2);
      v185 = v95;
      v96 = *(a1 + 5);
      v186 = *(a1 + 4);
      v187 = v96;
      v8 = *(&v95 + 1);
      v97 = v95;
      v9 = v186;
      if (v95 != 1)
      {
LABEL_171:
        v182 = *(a1 + 2);
        *v183 = v97;
        *&v183[8] = v8;
        *&v183[24] = *(a1 + 9);
        v171 = a1[11];
        *&v183[16] = v9;
        *&v183[40] = v171;
        sub_1CEFCCBDC(&v184, &v178, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFE42D4(v8, v9);
        sub_1CEFCCC44(&v182, &unk_1EC4BF250, &unk_1CFA01B50);
        __break(1u);
LABEL_172:
        v174 = *(v3 + 2);
        *v175 = v13;
        *&v175[8] = v8;
        *&v175[16] = v9;
        v176 = *(v3 + 9);
        v177 = v3[11];
        sub_1CEFCCBDC(&v182, v173, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFE42D4(v8, v9);
        sub_1CEFCCC44(&v174, &unk_1EC4BF250, &unk_1CFA01B50);
        __break(1u);
        goto LABEL_173;
      }

      v3 = a2;
      v178 = *(a1 + 2);
      *v179 = 1;
      *&v179[8] = *(&v95 + 1);
      v180 = *(a1 + 9);
      v98 = a1[11];
      *&v179[16] = v186;
      v181 = v98;
      sub_1CEFCCBDC(&v184, &v182, &unk_1EC4BF2D0, &unk_1CF9FEF20);
      sub_1CEFCCC44(&v178, &unk_1EC4BF2D0, &unk_1CF9FEF20);
      v99 = *(v3 + 3);
      v182 = *(v3 + 2);
      *v183 = v99;
      v100 = *(v3 + 5);
      *&v183[16] = *(v3 + 4);
      *&v183[32] = v100;
      v8 = *(&v99 + 1);
      v101 = v99;
      v9 = *&v183[16];
      if (v99 != 1)
      {
LABEL_173:
        v174 = *(v3 + 2);
        *v175 = v101;
        *&v175[8] = v8;
        *&v175[16] = v9;
        v176 = *(v3 + 9);
        v177 = v3[11];
        sub_1CEFCCBDC(&v182, v173, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFE42D4(v8, v9);
        a1 = sub_1CEFCCC44(&v174, &unk_1EC4BF250, &unk_1CFA01B50);
        __break(1u);
LABEL_174:
        *&v182 = v8;
        *(&v182 + 1) = v9;
        *&v183[8] = *(a1 + 7);
        *&v183[24] = *(a1 + 9);
        v172 = a1[11];
        *v183 = v115;
        *&v183[40] = v172;
        sub_1CEFCCBDC(&v184, &v178, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFE42D4(v8, v9);
        sub_1CEFCCC44(&v182, &unk_1EC4BF250, &unk_1CFA01B50);
        __break(1u);
        goto LABEL_175;
      }

      v174 = *(v3 + 2);
      *v175 = v99;
      *&v175[16] = *&v183[16];
LABEL_104:
      v176 = *(v3 + 9);
      v177 = v3[11];
      sub_1CEFCCBDC(&v182, v173, &unk_1EC4BF2D0, &unk_1CF9FEF20);
      sub_1CEFCCC44(&v174, &unk_1EC4BF2D0, &unk_1CF9FEF20);
      v21 = 0;
      return v21 & 1;
    }

    v89 = *(a1 + 3);
    v184 = *(a1 + 2);
    v185 = v89;
    v90 = *(a1 + 5);
    v186 = *(a1 + 4);
    v187 = v90;
    v9 = *(&v184 + 1);
    v8 = v184;
    v91 = v185;
    if (v185 != 1)
    {
LABEL_170:
      *&v182 = v8;
      *(&v182 + 1) = v9;
      *&v183[8] = *(a1 + 7);
      *&v183[24] = *(a1 + 9);
      v170 = a1[11];
      *v183 = v91;
      *&v183[40] = v170;
      sub_1CEFCCBDC(&v184, &v178, &unk_1EC4BF2D0, &unk_1CF9FEF20);
      sub_1CEFE42D4(v8, v9);
      a1 = sub_1CEFCCC44(&v182, &unk_1EC4BF250, &unk_1CFA01B50);
      __break(1u);
      goto LABEL_171;
    }

    v3 = a2;
    v178 = v184;
    *&v179[8] = *(a1 + 7);
    v180 = *(a1 + 9);
    v92 = a1[11];
    *v179 = 1;
    v181 = v92;
    sub_1CEFCCBDC(&v184, &v182, &unk_1EC4BF2D0, &unk_1CF9FEF20);
    sub_1CEFCCC44(&v178, &unk_1EC4BF2D0, &unk_1CF9FEF20);
    v93 = *(v3 + 3);
    v182 = *(v3 + 2);
    *v183 = v93;
    v94 = *(v3 + 5);
    *&v183[16] = *(v3 + 4);
    *&v183[32] = v94;
    v9 = *(&v182 + 1);
    v8 = v182;
    v66 = *v183;
    if (*v183 != 1)
    {
      v174 = v182;
      *v175 = *v183;
      *&v175[8] = *(v3 + 7);
      v176 = *(v3 + 9);
      v177 = v3[11];
      sub_1CEFCCBDC(&v182, v173, &unk_1EC4BF2D0, &unk_1CF9FEF20);
      sub_1CEFE42D4(v8, v9);
      a1 = sub_1CEFCCC44(&v174, &unk_1EC4BF250, &unk_1CFA01B50);
      __break(1u);
      goto LABEL_87;
    }

LABEL_103:
    *&v174 = v8;
    *(&v174 + 1) = v9;
    *v175 = v66;
    *&v175[8] = *(v3 + 7);
    goto LABEL_104;
  }

  if (a3 <= 0x83u)
  {
    if (a3 <= 0x81u)
    {
      if (a3 == 128)
      {
        v45 = *a1;
        v46 = (v45 | *a2) == 0;
        if (v45 && *a2)
        {
          v47 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v49 = v48;
          v51 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v57 = v50;
          if (v47 == v51 && v49 == v50)
          {
            v46 = 1;
          }

          else
          {
            v46 = sub_1CF9E8048();
          }

          v49, v50, v51, v52, v53, v54, v55, v56;
          v57, v160, v161, v162, v163, v164, v165, v166;
        }

        v21 = v46 ^ 1;
        return v21 & 1;
      }

      v73 = a1[1];
      v74 = a2[1];
      goto LABEL_97;
    }

    if (a3 == 130)
    {
      v73 = a1[2];
      v74 = a2[2];
LABEL_97:
      v21 = v73 != v74;
      return v21 & 1;
    }

    v111 = *(a1 + 24);
    v112 = *(a2 + 24);
LABEL_100:
    v21 = v112 != v111;
    return v21 & 1;
  }

  if (a3 <= 0x85u)
  {
    if (a3 == 132)
    {
      v21 = *(a1 + 96) != *(a2 + 96);
      return v21 & 1;
    }

    v111 = *(a1 + 97);
    v112 = *(a2 + 97);
    goto LABEL_100;
  }

  if (a3 == 134)
  {
    v21 = *(a1 + 98) ^ *(a2 + 98);
    return v21 & 1;
  }

  v113 = *(a1 + 3);
  v184 = *(a1 + 2);
  v185 = v113;
  v114 = *(a1 + 5);
  v186 = *(a1 + 4);
  v187 = v114;
  v9 = *(&v184 + 1);
  v8 = v184;
  v115 = v185;
  if (v185 != 1)
  {
    goto LABEL_174;
  }

  v3 = a2;
  v178 = v184;
  *&v179[8] = *(a1 + 7);
  v180 = *(a1 + 9);
  v116 = a1[11];
  *v179 = 1;
  v181 = v116;
  sub_1CEFCCBDC(&v184, &v182, &unk_1EC4BF2D0, &unk_1CF9FEF20);
  sub_1CEFCCC44(&v178, &unk_1EC4BF2D0, &unk_1CF9FEF20);
  v117 = *(v3 + 3);
  v182 = *(v3 + 2);
  *v183 = v117;
  v118 = *(v3 + 5);
  *&v183[16] = *(v3 + 4);
  *&v183[32] = v118;
  v9 = *(&v182 + 1);
  v8 = v182;
  v66 = *v183;
  if (*v183 == 1)
  {
    goto LABEL_103;
  }

LABEL_175:
  *&v174 = v8;
  *(&v174 + 1) = v9;
  *v175 = v66;
  *&v175[8] = *(v3 + 7);
  v176 = *(v3 + 9);
  v177 = v3[11];
  sub_1CEFCCBDC(&v182, v173, &unk_1EC4BF2D0, &unk_1CF9FEF20);
  sub_1CEFE42D4(v8, v9);
  result = sub_1CEFCCC44(&v174, &unk_1EC4BF250, &unk_1CFA01B50);
  __break(1u);
  return result;
}

uint64_t sub_1CF47E31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{

  MEMORY[0x1D3868FA0](v12);
  if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CF9E6D88();
  }

  sub_1CF9E6DE8();
  if (a5)
  {
    return 0;
  }

  v13 = sub_1CF388E8C();
  v14 = *(a1 + 144);
  v15 = *(a1 + 152);
  sub_1CF19F384(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF30, &unk_1CFA05600);
  v16 = swift_dynamicCastMetatype();
  if (v16)
  {
    v23 = v14;
    v24 = v15;
    v17 = (*(v16 + 592))(&v23, a2, a3, a4);
    v19 = *(v17 + 96);
    v18 = *(v17 + 104);
    *(v17 + 96) = 0;
    *(v17 + 104) = 0;
    v20 = *(v17 + 112);
    *(v17 + 112) = 0;

    sub_1CF03D7A8(v19, v18, v20);

    MEMORY[0x1D3868FA0](v21);
    if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CF9E6D88();
    }

    sub_1CF9E6DE8();
    return 0;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF47E540(unsigned int a1, __int128 *a2, __int128 *a3)
{
  v3 = (a1 >> 4) & 3;
  if (v3 <= 1)
  {
    if (v3)
    {
      v21 = *(a2 + 248);
      v22 = *(a2 + 392);
      v23 = *(a2 + 424);
      v24 = *(a2 + 440);
      v123 = *(a2 + 408);
      v124 = v23;
      v125 = v24;
      v25 = *(a2 + 328);
      v26 = *(a2 + 360);
      v27 = *(a2 + 376);
      v119 = *(a2 + 344);
      v120 = v26;
      v121 = v27;
      v122 = v22;
      v28 = *(a2 + 264);
      v29 = *(a2 + 280);
      v113 = v21;
      v114 = v28;
      v30 = *(a2 + 296);
      v31 = *(a2 + 312);
      v115 = v29;
      v116 = v30;
      v117 = v31;
      v118 = v25;
      v32 = *(a3 + 392);
      v33 = *(a3 + 424);
      v34 = *(a3 + 440);
      v107 = *(a3 + 408);
      v108 = v33;
      v109 = v34;
      v35 = *(a3 + 328);
      v36 = *(a3 + 360);
      v37 = *(a3 + 376);
      v103 = *(a3 + 344);
      v104 = v36;
      v105 = v37;
      v106 = v32;
      v38 = *(a3 + 264);
      v39 = *(a3 + 296);
      v40 = *(a3 + 312);
      v99 = *(a3 + 280);
      v100 = v39;
      v101 = v40;
      v102 = v35;
      v97 = *(a3 + 248);
      v98 = v38;
      v18 = sub_1CF47D064(&v113, &v97, a1 & 0xCF);
    }

    else
    {
      v4 = a2[13];
      v125 = a2[12];
      v126 = v4;
      v127 = a2[14];
      v128 = *(a2 + 30);
      v5 = a2[9];
      v121 = a2[8];
      v122 = v5;
      v6 = a2[11];
      v123 = a2[10];
      v124 = v6;
      v7 = a2[5];
      v117 = a2[4];
      v118 = v7;
      v8 = a2[7];
      v119 = a2[6];
      v120 = v8;
      v9 = a2[1];
      v113 = *a2;
      v114 = v9;
      v10 = a2[3];
      v115 = a2[2];
      v116 = v10;
      v11 = a3[13];
      v109 = a3[12];
      v110 = v11;
      v111 = a3[14];
      v112 = *(a3 + 30);
      v12 = a3[9];
      v105 = a3[8];
      v106 = v12;
      v13 = a3[11];
      v107 = a3[10];
      v108 = v13;
      v14 = a3[5];
      v101 = a3[4];
      v102 = v14;
      v15 = a3[7];
      v103 = a3[6];
      v104 = v15;
      v16 = a3[1];
      v97 = *a3;
      v98 = v16;
      v17 = a3[3];
      v99 = a3[2];
      v100 = v17;
      v18 = sub_1CF47B684(&v113, &v97, a1);
    }

    return v18 & 1;
  }

  if (v3 == 2)
  {
    if (a1)
    {
      v19 = *(a2 + 60);
      v20 = *(a3 + 60);
    }

    else
    {
      v19 = *(a2 + 59);
      v20 = *(a3 + 59);
    }

    goto LABEL_58;
  }

  if (a1 > 0x32u)
  {
    if (a1 > 0x34u)
    {
      if (a1 == 53)
      {
        v19 = *(a2 + 64);
        v20 = *(a3 + 64);
      }

      else
      {
        v19 = *(a2 + 62);
        v20 = *(a3 + 62);
      }
    }

    else
    {
      if (a1 != 51)
      {
        v18 = *(a2 + 504) ^ *(a3 + 504);
        return v18 & 1;
      }

      v19 = *(a2 + 61);
      v20 = *(a3 + 61);
    }

LABEL_58:
    v18 = v19 != v20;
    return v18 & 1;
  }

  if (a1 == 48)
  {
    v88 = *(a2 + 456);
    v89 = v88 == 4;
    v90 = *(a3 + 456);
    if (v90 != 4)
    {
      v89 = 0;
    }

    if (v88 != 4 && *(a3 + 456) != 4)
    {
      v89 = qword_1CFA05EB0[v88] == qword_1CFA05EB0[v90];
    }

    v18 = !v89;
    return v18 & 1;
  }

  if (a1 != 49)
  {
    v19 = *(a2 + 30);
    v20 = *(a3 + 30);
    goto LABEL_58;
  }

  v41 = *(a2 + 58);
  v42 = *(a3 + 58);
  v43 = *(v41 + 16);
  if (v43 != *(v42 + 16))
  {
    v18 = 1;
    return v18 & 1;
  }

  if (!v43 || v41 == v42)
  {
    v18 = 0;
    return v18 & 1;
  }

  v44 = (v41 + 41);
  for (i = (v42 + 41); ; i += 16)
  {
    v46 = *(v44 - 9);
    v47 = *(v44 - 1);
    v48 = *v44;
    v49 = *(i - 9);
    v50 = *(i - 1);
    if ((*v44 & 1) == 0)
    {
      break;
    }

    if ((*i & 1) == 0)
    {
      goto LABEL_62;
    }

    v96 = *v44;
    v51 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v53 = v52;
    v55 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v56 = v51;
    v57 = v54;
    if (v56 == v55 && v53 == v54)
    {
      sub_1CEFD0988(v46, v47, 1);
      sub_1CEFD0988(v49, v50, 1);
      sub_1CEFD0988(v46, v47, 1);
      sub_1CEFD0988(v49, v50, 1);
      v53, v73, v74, v75, v76, v77, v78, v79;
      v57, v80, v81, v82, v83, v84, v85, v86;
      sub_1CEFD0994(v49, v50, 1);
    }

    else
    {
      v95 = sub_1CF9E8048();
      sub_1CEFD0988(v46, v47, 1);
      sub_1CEFD0988(v49, v50, 1);
      sub_1CEFD0988(v46, v47, 1);
      sub_1CEFD0988(v49, v50, 1);
      v53, v59, v60, v61, v62, v63, v64, v65;
      v57, v66, v67, v68, v69, v70, v71, v72;
      sub_1CEFD0994(v49, v50, 1);
      if ((v95 & 1) == 0)
      {
        sub_1CEFD0994(v46, v47, 1);
        sub_1CEFD0994(v49, v50, 1);
        v92 = v46;
        v93 = v47;
        v94 = 1;
        goto LABEL_65;
      }
    }

    sub_1CEFD0994(v46, v47, 1);
    sub_1CEFD0994(v49, v50, 1);
    v48 = v96;
LABEL_22:
    sub_1CEFD0994(v46, v47, v48);
    v18 = 0;
    v44 += 16;
    if (!--v43)
    {
      return v18 & 1;
    }
  }

  if (*i)
  {
LABEL_62:
    sub_1CEFD0988(*(v44 - 9), *(v44 - 1), *v44);
    sub_1CEFD0988(v49, v50, v48 ^ 1);
    sub_1CEFD0994(v46, v47, v48);
    sub_1CEFD0994(v49, v50, v48 ^ 1);
    v18 = 1;
    return v18 & 1;
  }

  if (*(v44 - 1))
  {
    if (v47 == 1)
    {
      if (v50 != 1 || v46 != v49)
      {
        goto LABEL_63;
      }
    }

    else if (v46)
    {
      if (v50 != 2 || v49 != 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v87 = 0;
      if (v50 != 2 || v49)
      {
        goto LABEL_64;
      }
    }

    goto LABEL_21;
  }

  if (!*(i - 1) && v46 == v49)
  {
LABEL_21:
    sub_1CEFD0988(*(v44 - 9), *(v44 - 1), 0);
    sub_1CEFD0988(v49, v50, 0);
    goto LABEL_22;
  }

LABEL_63:
  v87 = *(v44 - 9);
LABEL_64:
  sub_1CEFD0988(v87, *(v44 - 1), 0);
  sub_1CEFD0988(v49, v50, 0);
  v92 = v87;
  v93 = v47;
  v94 = 0;
LABEL_65:
  sub_1CEFD0994(v92, v93, v94);
  v18 = 1;
  return v18 & 1;
}

unint64_t sub_1CF47EAD4(unint64_t result, int64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2)->tree;
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = (v5 + v7);
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *v4->tester >> 1)
  {
    if (v5 <= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = v5;
    }

    v4 = sub_1CF1F77F0(isUniquelyReferenced_nonNull_native, v14, 1, v4, v10, v11, v12, v13);
    *v2 = v4;
  }

  result = sub_1CF8E5BBC(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_1CF47EB94(_BYTE *a1, uint64_t a2, unsigned __int8 a3, void *a4, uint64_t a5)
{
  v147 = a5;
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[8];
  if (v13 == 255)
  {
    if (a3 == 0xFF)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if (a3 == 0xFF)
  {
    goto LABEL_19;
  }

  v14 = *a1;
  if (!a1[8])
  {
    if (!a3 && v14 == a2)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (v13 == 1)
  {
    if (a3 == 1 && v14 == a2)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if (!v14)
  {
    if (a3 == 2 && !a2)
    {
      goto LABEL_56;
    }

    goto LABEL_19;
  }

  if (a3 != 2 || a2 != 1)
  {
LABEL_19:
    v15 = *(a1 + 13);
    v149[12] = *(a1 + 12);
    v149[13] = v15;
    v149[14] = *(a1 + 14);
    *&v149[15] = *(a1 + 30);
    v16 = *(a1 + 9);
    v149[8] = *(a1 + 8);
    v149[9] = v16;
    v17 = *(a1 + 11);
    v149[10] = *(a1 + 10);
    v149[11] = v17;
    v18 = *(a1 + 5);
    v149[4] = *(a1 + 4);
    v149[5] = v18;
    v19 = *(a1 + 7);
    v149[6] = *(a1 + 6);
    v149[7] = v19;
    v20 = *(a1 + 1);
    v149[0] = *a1;
    v149[1] = v20;
    v21 = *(a1 + 3);
    v149[2] = *(a1 + 2);
    v149[3] = v21;
    sub_1CEFCCC44(v149, &unk_1EC4BFE00, &unk_1CF9FEF00);
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    a1[32] = 5;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    a1[136] = 0;
    *(a1 + 137) = 6;
    *(a1 + 9) = xmmword_1CF9FD920;
    a1[160] = 4;
    *(a1 + 21) = 0;
    *(a1 + 22) = 0;
    *(a1 + 23) = 0;
    *(a1 + 24) = 0xB000000000000000;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *a1 = a2;
    a1[8] = a3;
    if (a3 <= 1u)
    {
      LODWORD(v14) = a2;
      if (a3)
      {
        goto LABEL_27;
      }

LABEL_21:
      if (v14 == a2)
      {
        goto LABEL_27;
      }

      goto LABEL_57;
    }

    if (a3 == 255)
    {
      goto LABEL_27;
    }

    if (a2)
    {
      goto LABEL_25;
    }

LABEL_56:
    if (a3 == 2)
    {
      goto LABEL_27;
    }

LABEL_57:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 436);
  }

LABEL_25:
  if (a3 != 2 || a2 != 1)
  {
    goto LABEL_57;
  }

LABEL_27:
  v145 = v9;
  v146 = v12;
  v22 = *(a1 + 31);
  v144 = v10;
  if (!v22)
  {
    v32 = a4;
    goto LABEL_33;
  }

  v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v25 = v24;
  v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v28 = v27;
  if (v23 != v26 || v25 != v27)
  {
    HIDWORD(v143) = sub_1CF9E8048();
    v29 = v22;
    v47 = a4;
    v48 = a4;

    v49 = v25;
    v32 = v47;
    v49, v50, v51, v52, v53, v54, v55, v56;
    v28, v57, v58, v59, v60, v61, v62, v63;
    if ((v143 & 0x100000000) != 0)
    {
      goto LABEL_34;
    }

LABEL_33:
    v64 = *(a1 + 424);
    v149[10] = *(a1 + 408);
    v149[11] = v64;
    v149[12] = *(a1 + 440);
    v65 = *(a1 + 360);
    v149[6] = *(a1 + 344);
    v149[7] = v65;
    v66 = *(a1 + 392);
    v149[8] = *(a1 + 376);
    v149[9] = v66;
    v67 = *(a1 + 296);
    v149[2] = *(a1 + 280);
    v149[3] = v67;
    v68 = *(a1 + 328);
    v149[4] = *(a1 + 312);
    v149[5] = v68;
    v69 = *(a1 + 264);
    v149[0] = *(a1 + 248);
    v149[1] = v69;
    sub_1CEFCCC44(v149, &unk_1EC4C4E60, &unk_1CF9FCAD0);
    *(a1 + 33) = 0;
    a1[272] = 5;
    *(a1 + 35) = 0;
    *(a1 + 36) = 0;
    *(a1 + 37) = 1;
    *(a1 + 19) = 0u;
    *(a1 + 20) = 0u;
    *(a1 + 329) = 0u;
    *(a1 + 345) = 6;
    *(a1 + 22) = xmmword_1CF9FD920;
    a1[368] = 4;
    *(a1 + 47) = 0;
    *(a1 + 48) = 0;
    *(a1 + 49) = 0;
    *(a1 + 50) = 0xB000000000000000;
    *(a1 + 408) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 31) = v32;
    *(a1 + 32) = 0;
    v70 = v32;
    v29 = v32;
    goto LABEL_34;
  }

  v29 = v22;
  v30 = a4;

  v31 = v25;
  v32 = a4;
  v31, v33, v34, v35, v36, v37, v38, v39;
  v28, v40, v41, v42, v43, v44, v45, v46;
LABEL_34:
  v71 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v73 = v72;
  v74 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v76 = v75;
  if (v71 == v74 && v73 == v75)
  {
    v77 = v29;
    v78 = v32;
    v79 = v77;
    v80 = v78;

    v73, v81, v82, v83, v84, v85, v86, v87;
    v76, v88, v89, v90, v91, v92, v93, v94;
    v95 = v146;
  }

  else
  {
    v96 = sub_1CF9E8048();
    v97 = v29;
    v98 = v32;
    v99 = v97;
    v100 = v98;

    v73, v101, v102, v103, v104, v105, v106, v107;
    v76, v108, v109, v110, v111, v112, v113, v114;
    v95 = v146;
    if ((v96 & 1) == 0)
    {
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 449);
    }
  }

  v115 = a1[456];
  if (v115 <= 1)
  {
    v116 = a1[456];
    if (a1[456])
    {
      v116 = 1;
    }
  }

  else if (v115 == 2)
  {
    v116 = 2;
  }

  else
  {
    if (v115 != 3)
    {
      goto LABEL_64;
    }

    v116 = 4;
  }

  if (v116 == qword_1CFA05EB0[v147])
  {
    goto LABEL_64;
  }

  if (v115 == 3)
  {
    if (!v147)
    {
      goto LABEL_64;
    }
  }

  else if (!a1[456] && v147 == 3)
  {
    goto LABEL_64;
  }

  memcpy(v149, a1, 0x208uLL);
  sub_1CEFCCBDC(v149, v148, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v117 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFCCBDC(v149, v148, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v118 = sub_1CF9E6108();
  v119 = sub_1CF9E72B8();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v148[0] = v121;
    *v120 = 136446466;
    v122 = sub_1CF38B634();
    v124 = v123;
    sub_1CEFCCC44(v149, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v125 = sub_1CEFD0DF0(v122, v124, v148);
    v124, v126, v127, v128, v129, v130, v131, v132;
    *(v120 + 4) = v125;
    *(v120 + 12) = 2082;
    if (v147 > 1u)
    {
      if (v147 == 2)
      {
        v133 = 0xE700000000000000;
        v134 = 0x6B6E696C6D7973;
      }

      else
      {
        v133 = 0xE500000000000000;
        v134 = 0x7361696C61;
      }
    }

    else
    {
      v133 = 0xE300000000000000;
      if (v147)
      {
        v134 = 7498084;
      }

      else
      {
        v134 = 6516580;
      }
    }

    v135 = sub_1CEFD0DF0(v134, v133, v148);
    v133, v136, v137, v138, v139, v140, v141, v142;
    *(v120 + 14) = v135;
    _os_log_impl(&dword_1CEFC7000, v118, v119, "inconsistent item kind %{public}s new kind %{public}s", v120, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v121, -1, -1);
    MEMORY[0x1D386CDC0](v120, -1, -1);

    (*(v144 + 8))(v95, v145);
  }

  else
  {

    sub_1CEFCCC44(v149, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    (*(v144 + 8))(v95, v145);
  }

  sub_1CEFCCC44(v149, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
LABEL_64:
  a1[456] = v147;
}