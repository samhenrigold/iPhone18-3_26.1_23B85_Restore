void sub_22F1C1348(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0710, &qword_22F772040);
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0710, &qword_22F772040) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F1C18B8(v8, v9, a1, v4);
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
    sub_22F1C148C(0, v2, 1, a1);
  }
}

void sub_22F1C148C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0710, &qword_22F772040);
  MEMORY[0x28223BE20](v8);
  v65 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v49 - v11;
  MEMORY[0x28223BE20](v12);
  v57 = &v49 - v13;
  MEMORY[0x28223BE20](v14);
  v62 = &v49 - v15;
  MEMORY[0x28223BE20](v16);
  v59 = &v49 - v18;
  v51 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v17 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v63 = -v20;
    v64 = v19;
    v22 = a1 - a3;
    v50 = v20;
    v23 = v19 + v20 * a3;
    v56 = v8;
LABEL_6:
    v54 = v21;
    v55 = a3;
    v52 = v23;
    v53 = v22;
    v24 = v62;
    v25 = v59;
    while (1)
    {
      sub_22F13BA9C(v23, v25, &unk_27DAB0710, &qword_22F772040);
      sub_22F13BA9C(v21, v24, &unk_27DAB0710, &qword_22F772040);
      v26 = *(v8 + 48);
      v27 = v25 + v26;
      v28 = *(v25 + v26);
      v29 = (v24 + v26);
      if (v28 != *v29)
      {
        break;
      }

      v30 = *(v27 + 4);
      v31 = v29[1];
      v32 = v30 < v31;
      if (v30 != v31)
      {
        v46 = v8;
LABEL_14:
        v45 = v32;
        goto LABEL_17;
      }

      v33 = v25;
      v34 = v57;
      sub_22F13BA9C(v33, v57, &unk_27DAB0710, &qword_22F772040);
      v35 = sub_22F740330();
      v60 = v36;
      v61 = v35;
      v37 = sub_22F740390();
      v38 = *(*(v37 - 8) + 8);
      v38(v34, v37);
      v39 = v58;
      sub_22F13BA9C(v62, v58, &unk_27DAB0710, &qword_22F772040);
      v40 = sub_22F740330();
      v42 = v41;
      v43 = v37;
      v44 = v60;
      v38(v39, v43);
      if (v40 == v61 && v42 == v44)
      {

        sub_22F120ADC(v62, &unk_27DAB0710, &qword_22F772040);
        sub_22F120ADC(v59, &unk_27DAB0710, &qword_22F772040);
        v8 = v56;
LABEL_5:
        a3 = v55 + 1;
        v21 = v54 + v50;
        v22 = v53 - 1;
        v23 = v52 + v50;
        if (v55 + 1 == v51)
        {
          return;
        }

        goto LABEL_6;
      }

      v45 = sub_22F742040();

      v46 = v56;
      v24 = v62;
      v25 = v59;
LABEL_17:
      sub_22F120ADC(v24, &unk_27DAB0710, &qword_22F772040);
      sub_22F120ADC(v25, &unk_27DAB0710, &qword_22F772040);
      v8 = v46;
      if ((v45 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v64)
      {
        __break(1u);
        return;
      }

      v47 = v65;
      sub_22F1207AC(v23, v65, &unk_27DAB0710, &qword_22F772040);
      swift_arrayInitWithTakeFrontToBack();
      sub_22F1207AC(v47, v21, &unk_27DAB0710, &qword_22F772040);
      v21 += v63;
      v23 += v63;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_5;
      }
    }

    v46 = v8;
    v32 = *v29 < v28;
    goto LABEL_14;
  }
}

void sub_22F1C18B8(unint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v5 = v4;
  v195 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0710, &qword_22F772040);
  v204 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v201 = &v187 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v211 = &v187 - v12;
  MEMORY[0x28223BE20](v13);
  v210 = &v187 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v187 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v187 - v19;
  MEMORY[0x28223BE20](v21);
  v198 = &v187 - v22;
  MEMORY[0x28223BE20](v23);
  v197 = &v187 - v24;
  MEMORY[0x28223BE20](v25);
  v209 = &v187 - v26;
  MEMORY[0x28223BE20](v27);
  v208 = &v187 - v28;
  MEMORY[0x28223BE20](v29);
  v189 = &v187 - v30;
  MEMORY[0x28223BE20](v31);
  v188 = &v187 - v32;
  MEMORY[0x28223BE20](v33);
  v194 = &v187 - v34;
  MEMORY[0x28223BE20](v35);
  v193 = &v187 - v37;
  v206 = a3;
  v38 = a3[1];
  if (v38 < 1)
  {
    v40 = MEMORY[0x277D84F90];
LABEL_126:
    v41 = *v195;
    if (!*v195)
    {
      goto LABEL_165;
    }

    v17 = v40;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v182 = v17;
LABEL_129:
      v220 = v182;
      v17 = *(v182 + 2);
      if (v17 >= 2)
      {
        while (*v206)
        {
          v183 = *&v182[16 * v17];
          v184 = v182;
          v185 = *&v182[16 * v17 + 24];
          sub_22F1C2868(*v206 + *(v204 + 72) * v183, *v206 + *(v204 + 72) * *&v182[16 * v17 + 16], *v206 + *(v204 + 72) * v185, v41);
          if (v5)
          {
            goto LABEL_137;
          }

          if (v185 < v183)
          {
            goto LABEL_152;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v184 = sub_22F3F5F98(v184);
          }

          if (v17 - 2 >= *(v184 + 2))
          {
            goto LABEL_153;
          }

          v186 = &v184[16 * v17];
          *v186 = v183;
          *(v186 + 1) = v185;
          v220 = v184;
          sub_22F3F5F0C(v17 - 1);
          v182 = v220;
          v17 = *(v220 + 2);
          if (v17 <= 1)
          {
            goto LABEL_137;
          }
        }

        goto LABEL_163;
      }

LABEL_137:

      return;
    }

LABEL_159:
    v182 = sub_22F3F5F98(v17);
    goto LABEL_129;
  }

  v39 = 0;
  v40 = MEMORY[0x277D84F90];
  v219 = v36;
  v191 = a4;
  v212 = v8;
  v213 = v20;
  v216 = v17;
  while (2)
  {
    v41 = v39;
    v42 = v39 + 1;
    v192 = v40;
    v196 = v39;
    if (v39 + 1 >= v38)
    {
      goto LABEL_47;
    }

    v202 = v38;
    v43 = v39;
    v44 = *v206;
    v45 = *(v204 + 72);
    v207 = v39 + 1;
    v46 = v193;
    sub_22F13BA9C(v44 + v45 * v42, v193, &unk_27DAB0710, &qword_22F772040);
    v205 = v45;
    v47 = v44 + v45 * v43;
    v48 = v194;
    sub_22F13BA9C(v47, v194, &unk_27DAB0710, &qword_22F772040);
    v49 = *(v8 + 48);
    v50 = v46 + v49;
    v51 = *(v46 + v49);
    v52 = (v48 + v49);
    v53 = *v52;
    v54 = v51 == *v52;
    v190 = v5;
    if (v54)
    {
      v55 = *(v50 + 4);
      v56 = v52[1];
      v67 = v55 < v56;
      if (v55 == v56)
      {
        v57 = v188;
        sub_22F13BA9C(v193, v188, &unk_27DAB0710, &qword_22F772040);
        v58 = sub_22F740330();
        v60 = v59;
        v61 = sub_22F740390();
        v62 = *(*(v61 - 8) + 8);
        v62(v57, v61);
        v63 = v189;
        sub_22F13BA9C(v194, v189, &unk_27DAB0710, &qword_22F772040);
        v64 = sub_22F740330();
        v66 = v65;
        v62(v63, v61);
        if (v64 == v58 && v66 == v60)
        {

          LODWORD(v203) = 0;
        }

        else
        {
          LODWORD(v203) = sub_22F742040();
        }

        v8 = v212;
        v17 = v216;
        goto LABEL_17;
      }
    }

    else
    {
      v67 = v53 < v51;
    }

    v68 = v67;
    LODWORD(v203) = v68;
LABEL_17:
    sub_22F120ADC(v194, &unk_27DAB0710, &qword_22F772040);
    sub_22F120ADC(v193, &unk_27DAB0710, &qword_22F772040);
    v69 = v196 + 2;
    v70 = v205 * (v196 + 2);
    v71 = v44 + v70;
    v72 = v207;
    v73 = v205 * v207;
    v74 = v44 + v205 * v207;
    do
    {
      v76 = v69;
      v79 = v72;
      v217 = v69;
      v218 = v73;
      v78 = v70;
      if (v69 >= v202)
      {
        break;
      }

      v214 = v72;
      v215 = v70;
      v80 = v208;
      sub_22F13BA9C(v71, v208, &unk_27DAB0710, &qword_22F772040);
      v81 = v8;
      v82 = v209;
      sub_22F13BA9C(v74, v209, &unk_27DAB0710, &qword_22F772040);
      v83 = v81;
      v84 = *(v81 + 48);
      v85 = v80 + v84;
      v86 = *(v80 + v84);
      v87 = (v82 + v84);
      if (v86 == *v87)
      {
        v88 = *(v85 + 4);
        v89 = v87[1];
        v77 = v218;
        if (v88 != v89)
        {
          v75 = v88 < v89;
          v76 = v217;
          goto LABEL_20;
        }

        v90 = v197;
        sub_22F13BA9C(v208, v197, &unk_27DAB0710, &qword_22F772040);
        v207 = sub_22F740330();
        v92 = v91;
        v93 = sub_22F740390();
        v94 = *(*(v93 - 8) + 8);
        v94(v90, v93);
        v95 = v198;
        sub_22F13BA9C(v209, v198, &unk_27DAB0710, &qword_22F772040);
        v96 = sub_22F740330();
        v98 = v97;
        v94(v95, v93);
        if (v96 == v207 && v98 == v92)
        {

          v75 = 0;
        }

        else
        {
          v75 = sub_22F742040();
        }

        v83 = v212;
        v17 = v216;
      }

      else
      {
        v75 = *v87 < v86;
      }

      v76 = v217;
      v77 = v218;
LABEL_20:
      sub_22F120ADC(v209, &unk_27DAB0710, &qword_22F772040);
      sub_22F120ADC(v208, &unk_27DAB0710, &qword_22F772040);
      v69 = v76 + 1;
      v71 += v205;
      v74 += v205;
      v79 = v214;
      v78 = v215;
      v72 = v214 + 1;
      v73 = v77 + v205;
      v70 = v215 + v205;
      v8 = v83;
    }

    while (((v203 ^ v75) & 1) == 0);
    v5 = v190;
    if (v203)
    {
      v42 = v76;
      v41 = v196;
      if (v42 < v196)
      {
        goto LABEL_156;
      }

      if (v196 >= v42)
      {
        v40 = v192;
        v20 = v213;
      }

      else
      {
        v99 = v196 * v205;
        v100 = v196;
        v101 = v218;
        do
        {
          if (v100 != v79)
          {
            v103 = v5;
            v104 = *v206;
            if (!*v206)
            {
              goto LABEL_162;
            }

            v105 = v79;
            v106 = v78;
            sub_22F1207AC(v104 + v99, v201, &unk_27DAB0710, &qword_22F772040);
            if (v99 < v101 || v104 + v99 >= (v104 + v106))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v99 != v101)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_22F1207AC(v201, v104 + v101, &unk_27DAB0710, &qword_22F772040);
            v5 = v103;
            v17 = v216;
            v78 = v106;
            v79 = v105;
          }

          ++v100;
          v101 -= v205;
          v78 -= v205;
          v99 += v205;
        }

        while (v100 < v79--);
        v42 = v217;
        v8 = v212;
        v20 = v213;
        v40 = v192;
      }

      a4 = v191;
    }

    else
    {
      v42 = v76;
      a4 = v191;
      v40 = v192;
      v20 = v213;
      v41 = v196;
    }

LABEL_47:
    v107 = v206[1];
    if (v42 >= v107)
    {
      goto LABEL_74;
    }

    if (__OFSUB__(v42, v41))
    {
      goto LABEL_155;
    }

    if ((v42 - v41) >= a4)
    {
LABEL_74:
      if (v42 < v41)
      {
        goto LABEL_154;
      }

      v207 = v42;
      v137 = v40;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v40 = v137;
      }

      else
      {
        v40 = sub_22F13D970(0, *(v137 + 2) + 1, 1, v137);
      }

      v41 = *(v40 + 2);
      v138 = *(v40 + 3);
      v17 = v41 + 1;
      v39 = v207;
      if (v41 >= v138 >> 1)
      {
        v181 = sub_22F13D970((v138 > 1), v41 + 1, 1, v40);
        v39 = v207;
        v40 = v181;
      }

      *(v40 + 2) = v17;
      v139 = &v40[16 * v41];
      *(v139 + 4) = v196;
      *(v139 + 5) = v39;
      v218 = *v195;
      if (!v218)
      {
        goto LABEL_164;
      }

      if (!v41)
      {
LABEL_3:
        v38 = v206[1];
        a4 = v191;
        v17 = v216;
        if (v39 >= v38)
        {
          goto LABEL_126;
        }

        continue;
      }

      while (1)
      {
        v140 = v17 - 1;
        if (v17 >= 4)
        {
          break;
        }

        if (v17 == 3)
        {
          v141 = *(v40 + 4);
          v142 = *(v40 + 5);
          v151 = __OFSUB__(v142, v141);
          v143 = v142 - v141;
          v144 = v151;
LABEL_94:
          if (v144)
          {
            goto LABEL_143;
          }

          v157 = &v40[16 * v17];
          v159 = *v157;
          v158 = *(v157 + 1);
          v160 = __OFSUB__(v158, v159);
          v161 = v158 - v159;
          v162 = v160;
          if (v160)
          {
            goto LABEL_146;
          }

          v163 = &v40[16 * v140 + 32];
          v165 = *v163;
          v164 = *(v163 + 1);
          v151 = __OFSUB__(v164, v165);
          v166 = v164 - v165;
          if (v151)
          {
            goto LABEL_149;
          }

          if (__OFADD__(v161, v166))
          {
            goto LABEL_150;
          }

          if (v161 + v166 >= v143)
          {
            if (v143 < v166)
            {
              v140 = v17 - 2;
            }

            goto LABEL_115;
          }

          goto LABEL_108;
        }

        v167 = &v40[16 * v17];
        v169 = *v167;
        v168 = *(v167 + 1);
        v151 = __OFSUB__(v168, v169);
        v161 = v168 - v169;
        v162 = v151;
LABEL_108:
        if (v162)
        {
          goto LABEL_145;
        }

        v170 = &v40[16 * v140];
        v172 = *(v170 + 4);
        v171 = *(v170 + 5);
        v151 = __OFSUB__(v171, v172);
        v173 = v171 - v172;
        if (v151)
        {
          goto LABEL_148;
        }

        if (v173 < v161)
        {
          goto LABEL_3;
        }

LABEL_115:
        v41 = v140 - 1;
        if (v140 - 1 >= v17)
        {
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
          goto LABEL_158;
        }

        if (!*v206)
        {
          goto LABEL_161;
        }

        v178 = v40;
        v17 = *&v40[16 * v41 + 32];
        v179 = *&v40[16 * v140 + 40];
        sub_22F1C2868(*v206 + *(v204 + 72) * v17, *v206 + *(v204 + 72) * *&v40[16 * v140 + 32], *v206 + *(v204 + 72) * v179, v218);
        if (v5)
        {
          goto LABEL_137;
        }

        if (v179 < v17)
        {
          goto LABEL_139;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v178 = sub_22F3F5F98(v178);
        }

        if (v41 >= *(v178 + 2))
        {
          goto LABEL_140;
        }

        v180 = &v178[16 * v41];
        *(v180 + 4) = v17;
        *(v180 + 5) = v179;
        v220 = v178;
        sub_22F3F5F0C(v140);
        v40 = v220;
        v17 = *(v220 + 2);
        v20 = v213;
        v39 = v207;
        if (v17 <= 1)
        {
          goto LABEL_3;
        }
      }

      v145 = &v40[16 * v17 + 32];
      v146 = *(v145 - 64);
      v147 = *(v145 - 56);
      v151 = __OFSUB__(v147, v146);
      v148 = v147 - v146;
      if (v151)
      {
        goto LABEL_141;
      }

      v150 = *(v145 - 48);
      v149 = *(v145 - 40);
      v151 = __OFSUB__(v149, v150);
      v143 = v149 - v150;
      v144 = v151;
      if (v151)
      {
        goto LABEL_142;
      }

      v152 = &v40[16 * v17];
      v154 = *v152;
      v153 = *(v152 + 1);
      v151 = __OFSUB__(v153, v154);
      v155 = v153 - v154;
      if (v151)
      {
        goto LABEL_144;
      }

      v151 = __OFADD__(v143, v155);
      v156 = v143 + v155;
      if (v151)
      {
        goto LABEL_147;
      }

      if (v156 >= v148)
      {
        v174 = &v40[16 * v140 + 32];
        v176 = *v174;
        v175 = *(v174 + 1);
        v151 = __OFSUB__(v175, v176);
        v177 = v175 - v176;
        if (v151)
        {
          goto LABEL_151;
        }

        if (v143 < v177)
        {
          v140 = v17 - 2;
        }

        goto LABEL_115;
      }

      goto LABEL_94;
    }

    break;
  }

  v108 = v41 + a4;
  if (__OFADD__(v41, a4))
  {
    goto LABEL_157;
  }

  if (v108 >= v107)
  {
    v108 = v206[1];
  }

  if (v108 < v41)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  if (v42 == v108)
  {
    goto LABEL_74;
  }

  v190 = v5;
  v109 = *v206;
  v110 = *(v204 + 72);
  v111 = *v206 + v110 * (v42 - 1);
  v217 = -v110;
  v218 = v109;
  v112 = v41 - v42;
  v199 = v110;
  v200 = v108;
  v113 = v109 + v42 * v110;
  while (2)
  {
    v207 = v42;
    v202 = v113;
    v203 = v112;
    v205 = v111;
LABEL_59:
    sub_22F13BA9C(v113, v20, &unk_27DAB0710, &qword_22F772040);
    sub_22F13BA9C(v111, v17, &unk_27DAB0710, &qword_22F772040);
    v114 = *(v8 + 48);
    v115 = &v20[v114];
    v116 = *&v20[v114];
    v117 = (v17 + v114);
    if (v116 != *v117)
    {
      v120 = *v117 < v116;
LABEL_65:
      v132 = v120;
      goto LABEL_68;
    }

    v118 = *(v115 + 1);
    v119 = v117[1];
    v120 = v118 < v119;
    if (v118 != v119)
    {
      goto LABEL_65;
    }

    v121 = v210;
    sub_22F13BA9C(v20, v210, &unk_27DAB0710, &qword_22F772040);
    v122 = sub_22F740330();
    v214 = v123;
    v215 = v122;
    v124 = sub_22F740390();
    v125 = *(*(v124 - 8) + 8);
    v125(v121, v124);
    v126 = v211;
    sub_22F13BA9C(v216, v211, &unk_27DAB0710, &qword_22F772040);
    v127 = sub_22F740330();
    v129 = v128;
    v130 = v126;
    v131 = v214;
    v125(v130, v124);
    if (v127 == v215 && v129 == v131)
    {

      v17 = v216;
      sub_22F120ADC(v216, &unk_27DAB0710, &qword_22F772040);
      v20 = v213;
      sub_22F120ADC(v213, &unk_27DAB0710, &qword_22F772040);
      v8 = v212;
LABEL_57:
      v42 = v207 + 1;
      v111 = v205 + v199;
      v112 = v203 - 1;
      v113 = v202 + v199;
      if (v207 + 1 == v200)
      {
        v42 = v200;
        v5 = v190;
        v41 = v196;
        v40 = v192;
        goto LABEL_74;
      }

      continue;
    }

    break;
  }

  v132 = sub_22F742040();

  v8 = v212;
  v20 = v213;
  v17 = v216;
LABEL_68:
  sub_22F120ADC(v17, &unk_27DAB0710, &qword_22F772040);
  sub_22F120ADC(v20, &unk_27DAB0710, &qword_22F772040);
  if ((v132 & 1) == 0)
  {
    goto LABEL_57;
  }

  if (v218)
  {
    v133 = v20;
    v134 = v17;
    v135 = v219;
    sub_22F1207AC(v113, v219, &unk_27DAB0710, &qword_22F772040);
    swift_arrayInitWithTakeFrontToBack();
    sub_22F1207AC(v135, v111, &unk_27DAB0710, &qword_22F772040);
    v111 += v217;
    v113 += v217;
    v136 = __CFADD__(v112++, 1);
    v17 = v134;
    v20 = v133;
    if (v136)
    {
      goto LABEL_57;
    }

    goto LABEL_59;
  }

  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
}

void sub_22F1C2868(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0710, &qword_22F772040);
  MEMORY[0x28223BE20](v8);
  v87 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v86 = &v85 - v11;
  MEMORY[0x28223BE20](v12);
  v93 = &v85 - v13;
  MEMORY[0x28223BE20](v14);
  v98 = &v85 - v15;
  MEMORY[0x28223BE20](v16);
  v95 = &v85 - v17;
  MEMORY[0x28223BE20](v18);
  v91 = &v85 - v19;
  MEMORY[0x28223BE20](v20);
  v99 = &v85 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v85 - v23;
  v26 = *(v25 + 72);
  if (!v26)
  {
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (a2 - a1 == 0x8000000000000000 && v26 == -1)
  {
    goto LABEL_81;
  }

  v27 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v26 != -1)
  {
    v96 = a3;
    v28 = (a2 - a1) / v26;
    v102 = a1;
    v101 = a4;
    v92 = v8;
    if (v28 < v27 / v26)
    {
      v29 = v28 * v26;
      if (a4 < a1 || a1 + v29 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v98 = a4 + v29;
      v100 = a4 + v29;
      if (v29 >= 1 && a2 < v96)
      {
        v89 = v24;
        v90 = v26;
        while (1)
        {
          sub_22F13BA9C(a2, v24, &unk_27DAB0710, &qword_22F772040);
          v32 = v99;
          sub_22F13BA9C(a4, v99, &unk_27DAB0710, &qword_22F772040);
          v33 = *(v8 + 48);
          v34 = &v24[v33];
          v35 = *&v24[v33];
          v36 = (v32 + v33);
          if (v35 != *v36)
          {
            break;
          }

          v37 = *(v34 + 1);
          v38 = v36[1];
          v39 = v37 < v38;
          if (v37 != v38)
          {
            v50 = a2;
            v51 = v8;
LABEL_28:
            v52 = v39;
            goto LABEL_32;
          }

          v94 = a4;
          v97 = a2;
          v40 = v91;
          sub_22F13BA9C(v24, v91, &unk_27DAB0710, &qword_22F772040);
          v41 = sub_22F740330();
          v43 = v42;
          v44 = sub_22F740390();
          v45 = *(*(v44 - 8) + 8);
          v45(v40, v44);
          v46 = v95;
          sub_22F13BA9C(v99, v95, &unk_27DAB0710, &qword_22F772040);
          v47 = sub_22F740330();
          v49 = v48;
          v45(v46, v44);
          if (v47 == v41 && v49 == v43)
          {

            sub_22F120ADC(v99, &unk_27DAB0710, &qword_22F772040);
            v24 = v89;
            sub_22F120ADC(v89, &unk_27DAB0710, &qword_22F772040);
            a2 = v97;
            v8 = v92;
            a4 = v94;
            v26 = v90;
            goto LABEL_37;
          }

          v52 = sub_22F742040();

          v50 = v97;
          v51 = v92;
          a4 = v94;
          v24 = v89;
          v26 = v90;
LABEL_32:
          sub_22F120ADC(v99, &unk_27DAB0710, &qword_22F772040);
          sub_22F120ADC(v24, &unk_27DAB0710, &qword_22F772040);
          v8 = v51;
          a2 = v50;
          if (v52)
          {
            if (a1 < v50 || a1 >= v50 + v26)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v50)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v50 + v26;
            goto LABEL_45;
          }

LABEL_37:
          if (a1 < a4 || a1 >= a4 + v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v101 = a4 + v26;
          a4 += v26;
LABEL_45:
          a1 += v26;
          v102 = a1;
          if (a4 >= v98 || a2 >= v96)
          {
            goto LABEL_79;
          }
        }

        v50 = a2;
        v51 = v8;
        v39 = *v36 < v35;
        goto LABEL_28;
      }

      goto LABEL_79;
    }

    v30 = v27 / v26 * v26;
    if (a4 < a2 || a2 + v30 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = a4 + v30;
    if (v30 < 1)
    {
LABEL_77:
      v102 = a2;
      v100 = v53;
LABEL_79:
      sub_22F3B66E0(&v102, &v101, &v100);
      return;
    }

    v54 = -v26;
    v55 = a4 + v30;
    v56 = v96;
    v94 = a4;
    v99 = -v26;
LABEL_51:
    v85 = v53;
    v57 = a2 + v54;
    v97 = a2 + v54;
    v91 = a2;
    while (1)
    {
      if (a2 <= a1)
      {
        v102 = a2;
        v100 = v85;
        goto LABEL_79;
      }

      v58 = v56;
      v95 = v55 + v54;
      v96 = v55;
      v59 = v98;
      v60 = v8;
      sub_22F13BA9C(v55 + v54, v98, &unk_27DAB0710, &qword_22F772040);
      v61 = v57;
      v62 = v93;
      sub_22F13BA9C(v61, v93, &unk_27DAB0710, &qword_22F772040);
      v63 = *(v8 + 48);
      v64 = v59 + v63;
      v65 = *(v59 + v63);
      v66 = (v62 + v63);
      v67 = *v66;
      v68 = v65 == *v66;
      v90 = v53;
      if (!v68)
      {
        break;
      }

      v69 = *(v64 + 4);
      v70 = v66[1];
      v83 = v69 < v70;
      if (v69 != v70)
      {
        goto LABEL_61;
      }

      v71 = v86;
      sub_22F13BA9C(v98, v86, &unk_27DAB0710, &qword_22F772040);
      v72 = sub_22F740330();
      v88 = v73;
      v89 = v72;
      v74 = sub_22F740390();
      v75 = *(*(v74 - 8) + 8);
      v75(v71, v74);
      v76 = v87;
      sub_22F13BA9C(v62, v87, &unk_27DAB0710, &qword_22F772040);
      v77 = sub_22F740330();
      v79 = v78;
      v80 = v76;
      v81 = v88;
      v75(v80, v74);
      if (v77 == v89 && v79 == v81)
      {

        v82 = 0;
      }

      else
      {
        v82 = sub_22F742040();
      }

      v60 = v92;
      v62 = v93;
      a4 = v94;
LABEL_66:
      v56 = v58 + v99;
      sub_22F120ADC(v62, &unk_27DAB0710, &qword_22F772040);
      sub_22F120ADC(v98, &unk_27DAB0710, &qword_22F772040);
      if (v82)
      {
        v8 = v60;
        if (v58 < v91 || v56 >= v91)
        {
          a2 = v97;
          swift_arrayInitWithTakeFrontToBack();
          v53 = v90;
        }

        else
        {
          v53 = v90;
          a2 = v97;
          if (v58 != v91)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v55 = v96;
        v54 = v99;
        if (v96 <= a4)
        {
          goto LABEL_77;
        }

        goto LABEL_51;
      }

      v84 = v95;
      v53 = v95;
      v8 = v60;
      if (v58 < v96 || v56 >= v96)
      {
        swift_arrayInitWithTakeFrontToBack();
        v57 = v97;
      }

      else
      {
        v57 = v97;
        if (v58 != v96)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v55 = v53;
      v54 = v99;
      a2 = v91;
      if (v84 <= a4)
      {
        goto LABEL_77;
      }
    }

    v83 = v67 < v65;
LABEL_61:
    v82 = v83;
    goto LABEL_66;
  }

LABEL_82:
  __break(1u);
}

uint64_t sub_22F1C3120(uint64_t a1)
{
  sub_22F740390();
  sub_22F1C33B0(&qword_2810A94B8, MEMORY[0x277D3C2E0], MEMORY[0x277D3C2F0]);
  return sub_22F740DE0() & 1;
}

unint64_t sub_22F1C31B4()
{
  result = qword_27DAB21A0;
  if (!qword_27DAB21A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB21A0);
  }

  return result;
}

uint64_t type metadata accessor for CollectionElector(uint64_t a1)
{
  result = qword_2810AB478;
  if (!qword_2810AB478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F1C325C(uint64_t a1)
{
  result = sub_22F740B90();
  if (v2 <= 0x3F)
  {
    result = sub_22F73F690();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22F1C33B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22F1C33F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a1;
  v59 = type metadata accessor for TriggerResult(0);
  v51 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - v7;
  v9 = sub_22F73F690();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v58 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v62 = &v49 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v57 = sub_22F740390();
  v18 = MEMORY[0x28223BE20](v57);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 + 16);
  if (v21)
  {
    v56 = v16;
    v49 = v10;
    v50 = a3;
    v23 = *(v17 + 16);
    v22 = v17 + 16;
    v24 = a2 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v63 = (v22 - 8);
    v64 = v23;
    v54 = (v10 + 32);
    v55 = (v10 + 8);
    v25 = *(v22 + 56);
    v26 = 0.0;
    v27 = v57;
    v53 = v22;
    v60 = v25;
    v61 = (v10 + 48);
    v23(v20, v24, v57, v18);
    while (1)
    {
      if (sub_22F740350())
      {
        sub_22F740320();
        if ((*v61)(v8, 1, v9) == 1)
        {
          (*v63)(v20, v27);
          sub_22F120ADC(v8, &qword_27DAB0920, &qword_22F770B20);
          v25 = v60;
        }

        else
        {
          v29 = v56;
          v30 = v8;
          (*v54)(v56, v8, v9);
          v31 = v62;
          sub_22F73F650();
          sub_22F73F670();
          v32 = *v55;
          (*v55)(v31, v9);
          v33 = v65;
          v34 = sub_22F741380();
          v65 = v33;
          if (v33)
          {
            v32(v29, v9);
            (*v63)(v20, v57);
            return;
          }

          v35 = v34;
          v32(v29, v9);
          v27 = v57;
          (*v63)(v20, v57);
          if (v35 <= 1)
          {
            v36 = 1;
          }

          else
          {
            v36 = v35;
          }

          v28.n128_f32[0] = 1.0 / v36;
          v26 = v26 + v28.n128_f32[0];
          v8 = v30;
          v25 = v60;
        }
      }

      else
      {
        (*v63)(v20, v27);
      }

      v24 += v25;
      if (!--v21)
      {
        v10 = v49;
        a3 = v50;
        break;
      }

      v64(v20, v24, v27, v28);
    }
  }

  v37 = *(a3 + 16);
  v38 = v52;
  if (v37)
  {
    v39 = a3 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v40 = (v10 + 8);
    v41 = *(v51 + 72);
    v42 = 0.0;
    do
    {
      sub_22F13C46C(v39, v38);
      if (sub_22F740350())
      {
        v43 = v62;
        sub_22F73F650();
        v44 = v58;
        sub_22F73F060();
        sub_22F73F670();
        v45 = *v40;
        (*v40)(v44, v9);
        v45(v43, v9);
        v46 = v65;
        v47 = sub_22F741380();
        sub_22F13DBA0(v38);
        v65 = v46;
        if (v46)
        {
          return;
        }

        if (v47 <= 1)
        {
          v48 = 1;
        }

        else
        {
          v48 = v47;
        }

        v42 = v42 + (1.0 / v48);
      }

      else
      {
        sub_22F13DBA0(v38);
      }

      v39 += v41;
      --v37;
    }

    while (v37);
  }
}

uint64_t static PhotosChallengeAlgorithmEvaluator.algorithm(for:)(uint64_t a1)
{
  v1 = sub_22F740EA0();
  v3 = v2;
  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmWedding();
  sub_22F2653D8();
  v5 = sub_22F740EA0();
  v7 = v6;

  if (v5 == v1 && v7 == v3)
  {
    goto LABEL_3;
  }

  v8 = sub_22F742040();

  if (v8)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmBirthday();
  sub_22F2653D8();
  v10 = sub_22F740EA0();
  v12 = v11;

  if (v10 == v1 && v12 == v3)
  {
    goto LABEL_3;
  }

  v13 = sub_22F742040();

  if (v13)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmAnniversary();
  sub_22F2653D8();
  v14 = sub_22F740EA0();
  v16 = v15;

  if (v14 == v1 && v16 == v3)
  {
    goto LABEL_3;
  }

  v17 = sub_22F742040();

  if (v17)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableCelebration();
  sub_22F2653D8();
  v18 = sub_22F740EA0();
  v20 = v19;

  if (v18 == v1 && v20 == v3)
  {
    goto LABEL_3;
  }

  v21 = sub_22F742040();

  if (v21)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmConcert();
  sub_22F2653D8();
  v22 = sub_22F740EA0();
  v24 = v23;

  if (v22 == v1 && v24 == v3)
  {
    goto LABEL_3;
  }

  v25 = sub_22F742040();

  if (v25)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmFestival();
  sub_22F2653D8();
  v26 = sub_22F740EA0();
  v28 = v27;

  if (v26 == v1 && v28 == v3)
  {
    goto LABEL_3;
  }

  v29 = sub_22F742040();

  if (v29)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmTheater();
  sub_22F2653D8();
  v30 = sub_22F740EA0();
  v32 = v31;

  if (v30 == v1 && v32 == v3)
  {
    goto LABEL_3;
  }

  v33 = sub_22F742040();

  if (v33)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmDance();
  sub_22F2653D8();
  v34 = sub_22F740EA0();
  v36 = v35;

  if (v34 == v1 && v36 == v3)
  {
    goto LABEL_3;
  }

  v37 = sub_22F742040();

  if (v37)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmMuseum();
  sub_22F2653D8();
  v38 = sub_22F740EA0();
  v40 = v39;

  if (v38 == v1 && v40 == v3)
  {
    goto LABEL_3;
  }

  v41 = sub_22F742040();

  if (v41)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmAmusementPark();
  sub_22F2653D8();
  v42 = sub_22F740EA0();
  v44 = v43;

  if (v42 == v1 && v44 == v3)
  {
    goto LABEL_3;
  }

  v45 = sub_22F742040();

  if (v45)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmPerformance();
  sub_22F2653D8();
  v46 = sub_22F740EA0();
  v48 = v47;

  if (v46 == v1 && v48 == v3)
  {
    goto LABEL_3;
  }

  v49 = sub_22F742040();

  if (v49)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmHiking();
  sub_22F2653D8();
  v50 = sub_22F740EA0();
  v52 = v51;

  if (v50 == v1 && v52 == v3)
  {
    goto LABEL_3;
  }

  v53 = sub_22F742040();

  if (v53)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmClimbing();
  sub_22F2653D8();
  v54 = sub_22F740EA0();
  v56 = v55;

  if (v54 == v1 && v56 == v3)
  {
    goto LABEL_3;
  }

  v57 = sub_22F742040();

  if (v57)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmBeaching();
  sub_22F2653D8();
  v58 = sub_22F740EA0();
  v60 = v59;

  if (v58 == v1 && v60 == v3)
  {
    goto LABEL_3;
  }

  v61 = sub_22F742040();

  if (v61)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmSportEvent();
  sub_22F2653D8();
  v62 = sub_22F740EA0();
  v64 = v63;

  if (v62 == v1 && v64 == v3)
  {
    goto LABEL_3;
  }

  v65 = sub_22F742040();

  if (v65)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmWinterSport();
  sub_22F2653D8();
  v66 = sub_22F740EA0();
  v68 = v67;

  if (v66 == v1 && v68 == v3)
  {
    goto LABEL_3;
  }

  v69 = sub_22F742040();

  if (v69)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmDiving();
  sub_22F2653D8();
  v70 = sub_22F740EA0();
  v72 = v71;

  if (v70 == v1 && v72 == v3)
  {
    goto LABEL_3;
  }

  v73 = sub_22F742040();

  if (v73)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmLunch();
  sub_22F2653D8();
  v74 = sub_22F740EA0();
  v76 = v75;

  if (v74 == v1 && v76 == v3)
  {
    goto LABEL_3;
  }

  v77 = sub_22F742040();

  if (v77)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmDinner();
  sub_22F2653D8();
  v78 = sub_22F740EA0();
  v80 = v79;

  if (v78 == v1 && v80 == v3)
  {
    goto LABEL_3;
  }

  v81 = sub_22F742040();

  if (v81)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmBreakfast();
  sub_22F2653D8();
  v82 = sub_22F740EA0();
  v84 = v83;

  if (v82 == v1 && v84 == v3)
  {
    goto LABEL_3;
  }

  v85 = sub_22F742040();

  if (v85)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmRestaurant();
  sub_22F2653D8();
  v86 = sub_22F740EA0();
  v88 = v87;

  if (v86 == v1 && v88 == v3)
  {
    goto LABEL_3;
  }

  v89 = sub_22F742040();

  if (v89)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmNightOut();
  sub_22F2653D8();
  v90 = sub_22F740EA0();
  v92 = v91;

  if (v90 == v1 && v92 == v3)
  {
    goto LABEL_3;
  }

  v93 = sub_22F742040();

  if (v93)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmEntertainment();
  sub_22F2653D8();
  v94 = sub_22F740EA0();
  v96 = v95;

  if (v94 == v1 && v96 == v3)
  {
    goto LABEL_3;
  }

  v97 = sub_22F742040();

  if (v97)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmHolidayEvent();
  sub_22F2653D8();
  v98 = sub_22F740EA0();
  v100 = v99;

  if (v98 == v1 && v100 == v3)
  {
    goto LABEL_3;
  }

  v101 = sub_22F742040();

  if (v101)
  {
    goto LABEL_5;
  }

  v4 = type metadata accessor for PhotosChallengeEvaluableAlgorithmGathering();
  sub_22F2653D8();
  v102 = sub_22F740EA0();
  v104 = v103;

  if (v102 == v1 && v104 == v3)
  {
LABEL_3:

LABEL_5:

    return v4;
  }

  v105 = sub_22F742040();

  if (v105)
  {
    goto LABEL_5;
  }

  if (sub_22F740EA0() == v1 && v106 == v3)
  {

LABEL_83:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNewYearsDay();
  }

  v107 = sub_22F742040();

  if (v107)
  {
    goto LABEL_83;
  }

  if (sub_22F740EA0() == v1 && v109 == v3)
  {

LABEL_88:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNewYearsEve();
  }

  v110 = sub_22F742040();

  if (v110)
  {
    goto LABEL_88;
  }

  if (sub_22F740EA0() == v1 && v111 == v3)
  {

LABEL_93:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmChristmasDay();
  }

  v112 = sub_22F742040();

  if (v112)
  {
    goto LABEL_93;
  }

  if (sub_22F740EA0() == v1 && v113 == v3)
  {

LABEL_98:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmValentinesDay();
  }

  v114 = sub_22F742040();

  if (v114)
  {
    goto LABEL_98;
  }

  if (sub_22F740EA0() == v1 && v115 == v3)
  {

LABEL_103:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMothersDay();
  }

  v116 = sub_22F742040();

  if (v116)
  {
    goto LABEL_103;
  }

  if (sub_22F740EA0() == v1 && v117 == v3)
  {

LABEL_108:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmFathersDay();
  }

  v118 = sub_22F742040();

  if (v118)
  {
    goto LABEL_108;
  }

  if (sub_22F740EA0() == v1 && v119 == v3)
  {

LABEL_113:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmChristmasEve();
  }

  v120 = sub_22F742040();

  if (v120)
  {
    goto LABEL_113;
  }

  if (sub_22F740EA0() == v1 && v121 == v3)
  {

LABEL_118:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmEaster();
  }

  v122 = sub_22F742040();

  if (v122)
  {
    goto LABEL_118;
  }

  if (sub_22F740EA0() == v1 && v123 == v3)
  {

LABEL_123:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmLabourDay();
  }

  v124 = sub_22F742040();

  if (v124)
  {
    goto LABEL_123;
  }

  if (sub_22F740EA0() == v1 && v125 == v3)
  {

LABEL_128:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmHalloween();
  }

  v126 = sub_22F742040();

  if (v126)
  {
    goto LABEL_128;
  }

  if (sub_22F740EA0() == v1 && v127 == v3)
  {

LABEL_133:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmWomensDay();
  }

  v128 = sub_22F742040();

  if (v128)
  {
    goto LABEL_133;
  }

  if (sub_22F740EA0() == v1 && v129 == v3)
  {

LABEL_138:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmEasterMonday();
  }

  v130 = sub_22F742040();

  if (v130)
  {
    goto LABEL_138;
  }

  if (sub_22F740EA0() == v1 && v131 == v3)
  {

LABEL_143:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmSaintNicholas();
  }

  v132 = sub_22F742040();

  if (v132)
  {
    goto LABEL_143;
  }

  if (sub_22F740EA0() == v1 && v133 == v3)
  {

LABEL_148:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmAllSaintsDay();
  }

  v134 = sub_22F742040();

  if (v134)
  {
    goto LABEL_148;
  }

  if (sub_22F740EA0() == v1 && v135 == v3)
  {

LABEL_153:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmIndependenceDay_US();
  }

  v136 = sub_22F742040();

  if (v136)
  {
    goto LABEL_153;
  }

  if (sub_22F740EA0() == v1 && v137 == v3)
  {

LABEL_158:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmIndependenceDay_PL();
  }

  v138 = sub_22F742040();

  if (v138)
  {
    goto LABEL_158;
  }

  if (sub_22F740EA0() == v1 && v139 == v3)
  {

LABEL_163:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmIndependenceDay_LT();
  }

  v140 = sub_22F742040();

  if (v140)
  {
    goto LABEL_163;
  }

  if (sub_22F740EA0() == v1 && v141 == v3)
  {

LABEL_168:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmIndependenceDay_HR();
  }

  v142 = sub_22F742040();

  if (v142)
  {
    goto LABEL_168;
  }

  if (sub_22F740EA0() == v1 && v143 == v3)
  {

LABEL_173:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmIndependenceDay_FI();
  }

  v144 = sub_22F742040();

  if (v144)
  {
    goto LABEL_173;
  }

  if (sub_22F740EA0() == v1 && v145 == v3)
  {

LABEL_178:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmIndependenceDay_EE();
  }

  v146 = sub_22F742040();

  if (v146)
  {
    goto LABEL_178;
  }

  if (sub_22F740EA0() == v1 && v147 == v3)
  {

LABEL_183:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmIndependenceDay_BR();
  }

  v148 = sub_22F742040();

  if (v148)
  {
    goto LABEL_183;
  }

  if (sub_22F740EA0() == v1 && v149 == v3)
  {

LABEL_188:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmIndependenceDay_BG();
  }

  v150 = sub_22F742040();

  if (v150)
  {
    goto LABEL_188;
  }

  if (sub_22F740EA0() == v1 && v151 == v3)
  {

LABEL_193:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmIndependenceDay_IN();
  }

  v152 = sub_22F742040();

  if (v152)
  {
    goto LABEL_193;
  }

  if (sub_22F740EA0() == v1 && v153 == v3)
  {

LABEL_198:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmCarnival();
  }

  v154 = sub_22F742040();

  if (v154)
  {
    goto LABEL_198;
  }

  if (sub_22F740EA0() == v1 && v155 == v3)
  {

LABEL_203:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_AE();
  }

  v156 = sub_22F742040();

  if (v156)
  {
    goto LABEL_203;
  }

  if (sub_22F740EA0() == v1 && v157 == v3)
  {

LABEL_208:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_AT();
  }

  v158 = sub_22F742040();

  if (v158)
  {
    goto LABEL_208;
  }

  if (sub_22F740EA0() == v1 && v159 == v3)
  {

LABEL_213:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_BE();
  }

  v160 = sub_22F742040();

  if (v160)
  {
    goto LABEL_213;
  }

  if (sub_22F740EA0() == v1 && v161 == v3)
  {

LABEL_218:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_CH();
  }

  v162 = sub_22F742040();

  if (v162)
  {
    goto LABEL_218;
  }

  if (sub_22F740EA0() == v1 && v163 == v3)
  {

LABEL_223:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_CN();
  }

  v164 = sub_22F742040();

  if (v164)
  {
    goto LABEL_223;
  }

  if (sub_22F740EA0() == v1 && v165 == v3)
  {

LABEL_228:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_LU();
  }

  v166 = sub_22F742040();

  if (v166)
  {
    goto LABEL_228;
  }

  if (sub_22F740EA0() == v1 && v167 == v3)
  {

LABEL_233:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_MY();
  }

  v168 = sub_22F742040();

  if (v168)
  {
    goto LABEL_233;
  }

  if (sub_22F740EA0() == v1 && v169 == v3)
  {

LABEL_238:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_SA();
  }

  v170 = sub_22F742040();

  if (v170)
  {
    goto LABEL_238;
  }

  if (sub_22F740EA0() == v1 && v171 == v3)
  {

LABEL_243:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_SG();
  }

  v172 = sub_22F742040();

  if (v172)
  {
    goto LABEL_243;
  }

  if (sub_22F740EA0() == v1 && v173 == v3)
  {

LABEL_248:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_TH();
  }

  v174 = sub_22F742040();

  if (v174)
  {
    goto LABEL_248;
  }

  if (sub_22F740EA0() == v1 && v175 == v3)
  {

LABEL_253:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_TW();
  }

  v176 = sub_22F742040();

  if (v176)
  {
    goto LABEL_253;
  }

  if (sub_22F740EA0() == v1 && v177 == v3)
  {

LABEL_258:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmStStephensDay();
  }

  v178 = sub_22F742040();

  if (v178)
  {
    goto LABEL_258;
  }

  if (sub_22F740EA0() == v1 && v179 == v3)
  {

LABEL_263:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmConstitutionDay();
  }

  v180 = sub_22F742040();

  if (v180)
  {
    goto LABEL_263;
  }

  if (sub_22F740EA0() == v1 && v181 == v3)
  {

LABEL_268:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmAssumption();
  }

  v182 = sub_22F742040();

  if (v182)
  {
    goto LABEL_268;
  }

  if (sub_22F740EA0() == v1 && v183 == v3)
  {

LABEL_273:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmChildrensDay();
  }

  v184 = sub_22F742040();

  if (v184)
  {
    goto LABEL_273;
  }

  if (sub_22F740EA0() == v1 && v185 == v3)
  {

LABEL_278:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmAprilFoolsDay();
  }

  v186 = sub_22F742040();

  if (v186)
  {
    goto LABEL_278;
  }

  if (sub_22F740EA0() == v1 && v187 == v3)
  {

LABEL_283:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmStPatricksDay();
  }

  v188 = sub_22F742040();

  if (v188)
  {
    goto LABEL_283;
  }

  if (sub_22F740EA0() == v1 && v189 == v3)
  {

LABEL_288:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMusicDay();
  }

  v190 = sub_22F742040();

  if (v190)
  {
    goto LABEL_288;
  }

  if (sub_22F740EA0() == v1 && v191 == v3)
  {

LABEL_293:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmLiberationDay();
  }

  v192 = sub_22F742040();

  if (v192)
  {
    goto LABEL_293;
  }

  if (sub_22F740EA0() == v1 && v193 == v3)
  {

LABEL_298:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmSpringEquinox();
  }

  v194 = sub_22F742040();

  if (v194)
  {
    goto LABEL_298;
  }

  if (sub_22F740EA0() == v1 && v195 == v3)
  {

LABEL_303:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithm2ndChristmasDay();
  }

  v196 = sub_22F742040();

  if (v196)
  {
    goto LABEL_303;
  }

  if (sub_22F740EA0() == v1 && v197 == v3)
  {

LABEL_308:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMidsummerDay();
  }

  v198 = sub_22F742040();

  if (v198)
  {
    goto LABEL_308;
  }

  if (sub_22F740EA0() == v1 && v199 == v3)
  {

LABEL_313:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMidsummerEve();
  }

  v200 = sub_22F742040();

  if (v200)
  {
    goto LABEL_313;
  }

  if (sub_22F740EA0() == v1 && v201 == v3)
  {

LABEL_318:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmRepublicDay();
  }

  v202 = sub_22F742040();

  if (v202)
  {
    goto LABEL_318;
  }

  if (sub_22F740EA0() == v1 && v203 == v3)
  {

LABEL_323:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmLaborDay();
  }

  v204 = sub_22F742040();

  if (v204)
  {
    goto LABEL_323;
  }

  if (sub_22F740EA0() == v1 && v205 == v3)
  {

LABEL_328:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmAscension();
  }

  v206 = sub_22F742040();

  if (v206)
  {
    goto LABEL_328;
  }

  if (sub_22F740EA0() == v1 && v207 == v3)
  {

LABEL_333:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmRemembranceDay();
  }

  v208 = sub_22F742040();

  if (v208)
  {
    goto LABEL_333;
  }

  if (sub_22F740EA0() == v1 && v209 == v3)
  {

LABEL_338:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmEmperorsBirthday();
  }

  v210 = sub_22F742040();

  if (v210)
  {
    goto LABEL_338;
  }

  if (sub_22F740EA0() == v1 && v211 == v3)
  {

LABEL_343:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmLaborThanksgivingDay();
  }

  v212 = sub_22F742040();

  if (v212)
  {
    goto LABEL_343;
  }

  if (sub_22F740EA0() == v1 && v213 == v3)
  {

LABEL_348:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmCultureDay();
  }

  v214 = sub_22F742040();

  if (v214)
  {
    goto LABEL_348;
  }

  if (sub_22F740EA0() == v1 && v215 == v3)
  {

LABEL_353:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmSportsDay();
  }

  v216 = sub_22F742040();

  if (v216)
  {
    goto LABEL_353;
  }

  if (sub_22F740EA0() == v1 && v217 == v3)
  {

LABEL_358:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmAutumnalEquinox();
  }

  v218 = sub_22F742040();

  if (v218)
  {
    goto LABEL_358;
  }

  if (sub_22F740EA0() == v1 && v219 == v3)
  {

LABEL_363:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmBuddhasBirthday();
  }

  v220 = sub_22F742040();

  if (v220)
  {
    goto LABEL_363;
  }

  if (sub_22F740EA0() == v1 && v221 == v3)
  {

LABEL_368:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmStatehoodDay();
  }

  v222 = sub_22F742040();

  if (v222)
  {
    goto LABEL_368;
  }

  if (sub_22F740EA0() == v1 && v223 == v3)
  {

LABEL_373:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmANZACDay();
  }

  v224 = sub_22F742040();

  if (v224)
  {
    goto LABEL_373;
  }

  if (sub_22F740EA0() == v1 && v225 == v3)
  {

LABEL_378:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmQueensBirthday();
  }

  v226 = sub_22F742040();

  if (v226)
  {
    goto LABEL_378;
  }

  if (sub_22F740EA0() == v1 && v227 == v3)
  {

LABEL_383:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmCorpusChristi();
  }

  v228 = sub_22F742040();

  if (v228)
  {
    goto LABEL_383;
  }

  if (sub_22F740EA0() == v1 && v229 == v3)
  {

LABEL_388:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmEpiphany();
  }

  v230 = sub_22F742040();

  if (v230)
  {
    goto LABEL_388;
  }

  if (sub_22F740EA0() == v1 && v231 == v3)
  {

LABEL_393:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmStAndrewsDay();
  }

  v232 = sub_22F742040();

  if (v232)
  {
    goto LABEL_393;
  }

  if (sub_22F740EA0() == v1 && v233 == v3)
  {

LABEL_398:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmVictoryDay();
  }

  v234 = sub_22F742040();

  if (v234)
  {
    goto LABEL_398;
  }

  if (sub_22F740EA0() == v1 && v235 == v3)
  {

LABEL_403:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMayDay();
  }

  v236 = sub_22F742040();

  if (v236)
  {
    goto LABEL_403;
  }

  if (sub_22F740EA0() == v1 && v237 == v3)
  {

LABEL_408:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmLunarNewYearsDay();
  }

  v238 = sub_22F742040();

  if (v238)
  {
    goto LABEL_408;
  }

  if (sub_22F740EA0() == v1 && v239 == v3)
  {

LABEL_413:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmLunarNewYearsEve();
  }

  v240 = sub_22F742040();

  if (v240)
  {
    goto LABEL_413;
  }

  if (sub_22F740EA0() == v1 && v241 == v3)
  {

LABEL_418:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmChineseNewYearsDay();
  }

  v242 = sub_22F742040();

  if (v242)
  {
    goto LABEL_418;
  }

  if (sub_22F740EA0() == v1 && v243 == v3)
  {

LABEL_423:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmChineseNewYearsEve();
  }

  v244 = sub_22F742040();

  if (v244)
  {
    goto LABEL_423;
  }

  if (sub_22F740EA0() == v1 && v245 == v3)
  {

LABEL_428:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMidAutumnFestival();
  }

  v246 = sub_22F742040();

  if (v246)
  {
    goto LABEL_428;
  }

  if (sub_22F740EA0() == v1 && v247 == v3)
  {

LABEL_433:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmDragonBoatFestival();
  }

  v248 = sub_22F742040();

  if (v248)
  {
    goto LABEL_433;
  }

  if (sub_22F740EA0() == v1 && v249 == v3)
  {

LABEL_438:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmLanternFestival();
  }

  v250 = sub_22F742040();

  if (v250)
  {
    goto LABEL_438;
  }

  if (sub_22F740EA0() == v1 && v251 == v3)
  {

LABEL_443:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmDoubleNinthFestival();
  }

  v252 = sub_22F742040();

  if (v252)
  {
    goto LABEL_443;
  }

  if (sub_22F740EA0() == v1 && v253 == v3)
  {

LABEL_448:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmYouthDay();
  }

  v254 = sub_22F742040();

  if (v254)
  {
    goto LABEL_448;
  }

  if (sub_22F740EA0() == v1 && v255 == v3)
  {

LABEL_453:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalCatDay();
  }

  v256 = sub_22F742040();

  if (v256)
  {
    goto LABEL_453;
  }

  if (sub_22F740EA0() == v1 && v257 == v3)
  {

LABEL_458:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDogDay();
  }

  v258 = sub_22F742040();

  if (v258)
  {
    goto LABEL_458;
  }

  if (sub_22F740EA0() == v1 && v259 == v3)
  {

LABEL_463:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmThanksgivingUS();
  }

  v260 = sub_22F742040();

  if (v260)
  {
    goto LABEL_463;
  }

  if (sub_22F740EA0() == v1 && v261 == v3)
  {

LABEL_468:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmThanksgivingCA();
  }

  v262 = sub_22F742040();

  if (v262)
  {
    goto LABEL_468;
  }

  if (sub_22F740EA0() == v1 && v263 == v3)
  {

LABEL_473:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmEarthDay();
  }

  v264 = sub_22F742040();

  if (v264)
  {
    goto LABEL_473;
  }

  if (sub_22F740EA0() == v1 && v265 == v3)
  {

LABEL_478:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmStMartinsDay();
  }

  v266 = sub_22F742040();

  if (v266)
  {
    goto LABEL_478;
  }

  if (sub_22F740EA0() == v1 && v267 == v3)
  {

LABEL_483:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmShroveTuesday();
  }

  v268 = sub_22F742040();

  if (v268)
  {
    goto LABEL_483;
  }

  if (sub_22F740EA0() == v1 && v269 == v3)
  {

LABEL_488:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmRoseMonday();
  }

  v270 = sub_22F742040();

  if (v270)
  {
    goto LABEL_488;
  }

  if (sub_22F740EA0() == v1 && v271 == v3)
  {

LABEL_493:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMelbourneCup();
  }

  v272 = sub_22F742040();

  if (v272)
  {
    goto LABEL_493;
  }

  if (sub_22F740EA0() == v1 && v273 == v3)
  {

LABEL_498:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmAustraliaDay();
  }

  v274 = sub_22F742040();

  if (v274)
  {
    goto LABEL_498;
  }

  if (sub_22F740EA0() == v1 && v275 == v3)
  {

LABEL_503:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmDayoftheGermanspeakingCommunity();
  }

  v276 = sub_22F742040();

  if (v276)
  {
    goto LABEL_503;
  }

  if (sub_22F740EA0() == v1 && v277 == v3)
  {

LABEL_508:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmFrenchCommunityDay();
  }

  v278 = sub_22F742040();

  if (v278)
  {
    goto LABEL_508;
  }

  if (sub_22F740EA0() == v1 && v279 == v3)
  {

LABEL_513:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmFlemishCommunityDay();
  }

  v280 = sub_22F742040();

  if (v280)
  {
    goto LABEL_513;
  }

  if (sub_22F740EA0() == v1 && v281 == v3)
  {

LABEL_518:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmRevivalLeadersDay();
  }

  v282 = sub_22F742040();

  if (v282)
  {
    goto LABEL_518;
  }

  if (sub_22F740EA0() == v1 && v283 == v3)
  {

LABEL_523:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmCultureandLiteracyDay();
  }

  v284 = sub_22F742040();

  if (v284)
  {
    goto LABEL_523;
  }

  if (sub_22F740EA0() == v1 && v285 == v3)
  {

LABEL_528:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmBabaMarta();
  }

  v286 = sub_22F742040();

  if (v286)
  {
    goto LABEL_528;
  }

  if (sub_22F740EA0() == v1 && v287 == v3)
  {

LABEL_533:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmUnificationDay();
  }

  v288 = sub_22F742040();

  if (v288)
  {
    goto LABEL_533;
  }

  if (sub_22F740EA0() == v1 && v289 == v3)
  {

LABEL_538:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmCanadaDay();
  }

  v290 = sub_22F742040();

  if (v290)
  {
    goto LABEL_538;
  }

  if (sub_22F740EA0() == v1 && v291 == v3)
  {

LABEL_543:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmSaintJeanBaptisteDay();
  }

  v292 = sub_22F742040();

  if (v292)
  {
    goto LABEL_543;
  }

  if (sub_22F740EA0() == v1 && v293 == v3)
  {

LABEL_548:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmVictoriaDay();
  }

  v294 = sub_22F742040();

  if (v294)
  {
    goto LABEL_548;
  }

  if (sub_22F740EA0() == v1 && v295 == v3)
  {

LABEL_553:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmStNikolaus();
  }

  v296 = sub_22F742040();

  if (v296)
  {
    goto LABEL_553;
  }

  if (sub_22F740EA0() == v1 && v297 == v3)
  {

LABEL_558:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmChineseValentinesDay();
  }

  v298 = sub_22F742040();

  if (v298)
  {
    goto LABEL_558;
  }

  if (sub_22F740EA0() == v1 && v299 == v3)
  {

LABEL_563:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmTombSweepingDay();
  }

  v300 = sub_22F742040();

  if (v300)
  {
    goto LABEL_563;
  }

  if (sub_22F740EA0() == v1 && v301 == v3)
  {

LABEL_568:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmIndependentCzechoslovakStateDay();
  }

  v302 = sub_22F742040();

  if (v302)
  {
    goto LABEL_568;
  }

  if (sub_22F740EA0() == v1 && v303 == v3)
  {

LABEL_573:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmGermanUnityDay();
  }

  v304 = sub_22F742040();

  if (v304)
  {
    goto LABEL_573;
  }

  if (sub_22F740EA0() == v1 && v305 == v3)
  {

LABEL_578:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmTeachersDay();
  }

  v306 = sub_22F742040();

  if (v306)
  {
    goto LABEL_578;
  }

  if (sub_22F740EA0() == v1 && v307 == v3)
  {

LABEL_583:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmTheWalpurgisNight();
  }

  v308 = sub_22F742040();

  if (v308)
  {
    goto LABEL_583;
  }

  if (sub_22F740EA0() == v1 && v309 == v3)
  {

LABEL_588:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmGrandparentsDay();
  }

  v310 = sub_22F742040();

  if (v310)
  {
    goto LABEL_588;
  }

  if (sub_22F740EA0() == v1 && v311 == v3)
  {

LABEL_593:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmRestorationofIndependence();
  }

  v312 = sub_22F742040();

  if (v312)
  {
    goto LABEL_593;
  }

  if (sub_22F740EA0() == v1 && v313 == v3)
  {

LABEL_598:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmSpringDay();
  }

  v314 = sub_22F742040();

  if (v314)
  {
    goto LABEL_598;
  }

  if (sub_22F740EA0() == v1 && v315 == v3)
  {

LABEL_603:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmStGeorge();
  }

  v316 = sub_22F742040();

  if (v316)
  {
    goto LABEL_603;
  }

  if (sub_22F740EA0() == v1 && v317 == v3)
  {

LABEL_608:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmSpanishnessDay();
  }

  v318 = sub_22F742040();

  if (v318)
  {
    goto LABEL_608;
  }

  if (sub_22F740EA0() == v1 && v319 == v3)
  {

LABEL_613:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmBastilleDay();
  }

  v320 = sub_22F742040();

  if (v320)
  {
    goto LABEL_613;
  }

  if (sub_22F740EA0() == v1 && v321 == v3)
  {

LABEL_618:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmDayofGrandmothers();
  }

  v322 = sub_22F742040();

  if (v322)
  {
    goto LABEL_618;
  }

  if (sub_22F740EA0() == v1 && v323 == v3)
  {

LABEL_623:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmAshWednesday();
  }

  v324 = sub_22F742040();

  if (v324)
  {
    goto LABEL_623;
  }

  if (sub_22F740EA0() == v1 && v325 == v3)
  {

LABEL_628:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmGuyFawkesNight();
  }

  v326 = sub_22F742040();

  if (v326)
  {
    goto LABEL_628;
  }

  if (sub_22F740EA0() == v1 && v327 == v3)
  {

LABEL_633:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmPolytechneio();
  }

  v328 = sub_22F742040();

  if (v328)
  {
    goto LABEL_633;
  }

  if (sub_22F740EA0() == v1 && v329 == v3)
  {

LABEL_638:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmAnnunciation();
  }

  v330 = sub_22F742040();

  if (v330)
  {
    goto LABEL_638;
  }

  if (sub_22F740EA0() == v1 && v331 == v3)
  {

LABEL_643:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmOchiDay();
  }

  v332 = sub_22F742040();

  if (v332)
  {
    goto LABEL_643;
  }

  if (sub_22F740EA0() == v1 && v333 == v3)
  {

LABEL_648:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmOrthodoxEasterPascha();
  }

  v334 = sub_22F742040();

  if (v334)
  {
    goto LABEL_648;
  }

  if (sub_22F740EA0() == v1 && v335 == v3)
  {

LABEL_653:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmCleanMonday();
  }

  v336 = sub_22F742040();

  if (v336)
  {
    goto LABEL_653;
  }

  if (sub_22F740EA0() == v1 && v337 == v3)
  {

LABEL_658:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmHomelandThanksgivingDay();
  }

  v338 = sub_22F742040();

  if (v338)
  {
    goto LABEL_658;
  }

  if (sub_22F740EA0() == v1 && v339 == v3)
  {

LABEL_663:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmAnniversaryoftheRevolution184849();
  }

  v340 = sub_22F742040();

  if (v340)
  {
    goto LABEL_663;
  }

  if (sub_22F740EA0() == v1 && v341 == v3)
  {

LABEL_668:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmEmperorsBirthdayEmperorNaruhito();
  }

  v342 = sub_22F742040();

  if (v342)
  {
    goto LABEL_668;
  }

  if (sub_22F740EA0() == v1 && v343 == v3)
  {

LABEL_673:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmEmperorsBirthdayEmperorEmeritusAkihito();
  }

  v344 = sub_22F742040();

  if (v344)
  {
    goto LABEL_673;
  }

  if (sub_22F740EA0() == v1 && v345 == v3)
  {

LABEL_678:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmHealthandSportsDay();
  }

  v346 = sub_22F742040();

  if (v346)
  {
    goto LABEL_678;
  }

  if (sub_22F740EA0() == v1 && v347 == v3)
  {

LABEL_683:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmShichigosan();
  }

  v348 = sub_22F742040();

  if (v348)
  {
    goto LABEL_683;
  }

  if (sub_22F740EA0() == v1 && v349 == v3)
  {

LABEL_688:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmRespectfortheAgedDay();
  }

  v350 = sub_22F742040();

  if (v350)
  {
    goto LABEL_688;
  }

  if (sub_22F740EA0() == v1 && v351 == v3)
  {

LABEL_693:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmObon();
  }

  v352 = sub_22F742040();

  if (v352)
  {
    goto LABEL_693;
  }

  if (sub_22F740EA0() == v1 && v353 == v3)
  {

LABEL_698:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMountainDay();
  }

  v354 = sub_22F742040();

  if (v354)
  {
    goto LABEL_698;
  }

  if (sub_22F740EA0() == v1 && v355 == v3)
  {

LABEL_703:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMarineDay();
  }

  v356 = sub_22F742040();

  if (v356)
  {
    goto LABEL_703;
  }

  if (sub_22F740EA0() == v1 && v357 == v3)
  {

LABEL_708:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmTanabataStarFestival();
  }

  v358 = sub_22F742040();

  if (v358)
  {
    goto LABEL_708;
  }

  if (sub_22F740EA0() == v1 && v359 == v3)
  {

LABEL_713:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmGreeneryDay();
  }

  v360 = sub_22F742040();

  if (v360)
  {
    goto LABEL_713;
  }

  if (sub_22F740EA0() == v1 && v361 == v3)
  {

LABEL_718:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmConstitutionMemorialDay();
  }

  v362 = sub_22F742040();

  if (v362)
  {
    goto LABEL_718;
  }

  if (sub_22F740EA0() == v1 && v363 == v3)
  {

LABEL_723:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmShowaDay();
  }

  v364 = sub_22F742040();

  if (v364)
  {
    goto LABEL_723;
  }

  if (sub_22F740EA0() == v1 && v365 == v3)
  {

LABEL_728:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmWhiteDay();
  }

  v366 = sub_22F742040();

  if (v366)
  {
    goto LABEL_728;
  }

  if (sub_22F740EA0() == v1 && v367 == v3)
  {

LABEL_733:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmFoundationDay();
  }

  v368 = sub_22F742040();

  if (v368)
  {
    goto LABEL_733;
  }

  if (sub_22F740EA0() == v1 && v369 == v3)
  {

LABEL_738:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmComingofAgeDay();
  }

  v370 = sub_22F742040();

  if (v370)
  {
    goto LABEL_738;
  }

  if (sub_22F740EA0() == v1 && v371 == v3)
  {

LABEL_743:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmHarvestFestival_KR();
  }

  v372 = sub_22F742040();

  if (v372)
  {
    goto LABEL_743;
  }

  if (sub_22F740EA0() == v1 && v373 == v3)
  {

LABEL_748:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmLiberationDay_KR();
  }

  v374 = sub_22F742040();

  if (v374)
  {
    goto LABEL_748;
  }

  if (sub_22F740EA0() == v1 && v375 == v3)
  {

LABEL_753:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMemorialDay_KR();
  }

  v376 = sub_22F742040();

  if (v376)
  {
    goto LABEL_753;
  }

  if (sub_22F740EA0() == v1 && v377 == v3)
  {

LABEL_758:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmParentsDay();
  }

  v378 = sub_22F742040();

  if (v378)
  {
    goto LABEL_758;
  }

  if (sub_22F740EA0() == v1 && v379 == v3)
  {

LABEL_763:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmLunarYearsDay();
  }

  v380 = sub_22F742040();

  if (v380)
  {
    goto LABEL_763;
  }

  if (sub_22F740EA0() == v1 && v381 == v3)
  {

LABEL_768:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmStJohnsDay();
  }

  v382 = sub_22F742040();

  if (v382)
  {
    goto LABEL_768;
  }

  if (sub_22F740EA0() == v1 && v383 == v3)
  {

LABEL_773:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalRemembranceDay();
  }

  v384 = sub_22F742040();

  if (v384)
  {
    goto LABEL_773;
  }

  if (sub_22F740EA0() == v1 && v385 == v3)
  {

LABEL_778:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmStNicholasEve();
  }

  v386 = sub_22F742040();

  if (v386)
  {
    goto LABEL_778;
  }

  if (sub_22F740EA0() == v1 && v387 == v3)
  {

LABEL_783:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmKingsDay();
  }

  v388 = sub_22F742040();

  if (v388)
  {
    goto LABEL_783;
  }

  if (sub_22F740EA0() == v1 && v389 == v3)
  {

LABEL_788:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmSaintLucysDay();
  }

  v390 = sub_22F742040();

  if (v390)
  {
    goto LABEL_788;
  }

  if (sub_22F740EA0() == v1 && v391 == v3)
  {

LABEL_793:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmDayofLiberation();
  }

  v392 = sub_22F742040();

  if (v392)
  {
    goto LABEL_793;
  }

  if (sub_22F740EA0() == v1 && v393 == v3)
  {

LABEL_798:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMaundyThursday();
  }

  v394 = sub_22F742040();

  if (v394)
  {
    goto LABEL_798;
  }

  if (sub_22F740EA0() == v1 && v395 == v3)
  {

LABEL_803:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmAdventSunday();
  }

  v396 = sub_22F742040();

  if (v396)
  {
    goto LABEL_803;
  }

  if (sub_22F740EA0() == v1 && v397 == v3)
  {

LABEL_808:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmPortugalDay();
  }

  v398 = sub_22F742040();

  if (v398)
  {
    goto LABEL_808;
  }

  if (sub_22F740EA0() == v1 && v399 == v3)
  {

LABEL_813:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMartisor();
  }

  v400 = sub_22F742040();

  if (v400)
  {
    goto LABEL_813;
  }

  if (sub_22F740EA0() == v1 && v401 == v3)
  {

LABEL_818:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDayofRomania();
  }

  v402 = sub_22F742040();

  if (v402)
  {
    goto LABEL_818;
  }

  if (sub_22F740EA0() == v1 && v403 == v3)
  {

LABEL_823:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmDragobete();
  }

  v404 = sub_22F742040();

  if (v404)
  {
    goto LABEL_823;
  }

  if (sub_22F740EA0() == v1 && v405 == v3)
  {

LABEL_828:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmUnityDay();
  }

  v406 = sub_22F742040();

  if (v406)
  {
    goto LABEL_828;
  }

  if (sub_22F740EA0() == v1 && v407 == v3)
  {

LABEL_833:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmDefenderoftheFatherlandDay();
  }

  v408 = sub_22F742040();

  if (v408)
  {
    goto LABEL_833;
  }

  if (sub_22F740EA0() == v1 && v409 == v3)
  {

LABEL_838:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmKnowledgeDay();
  }

  v410 = sub_22F742040();

  if (v410)
  {
    goto LABEL_838;
  }

  if (sub_22F740EA0() == v1 && v411 == v3)
  {

LABEL_843:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmCosmonauticsDay();
  }

  v412 = sub_22F742040();

  if (v412)
  {
    goto LABEL_843;
  }

  if (sub_22F740EA0() == v1 && v413 == v3)
  {

LABEL_848:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmOrthodoxNewYear();
  }

  v414 = sub_22F742040();

  if (v414)
  {
    goto LABEL_848;
  }

  if (sub_22F740EA0() == v1 && v415 == v3)
  {

LABEL_853:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmWalpurgisNight();
  }

  v416 = sub_22F742040();

  if (v416)
  {
    goto LABEL_853;
  }

  if (sub_22F740EA0() == v1 && v417 == v3)
  {

LABEL_858:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmHariRayaHaji();
  }

  v418 = sub_22F742040();

  if (v418)
  {
    goto LABEL_858;
  }

  if (sub_22F740EA0() == v1 && v419 == v3)
  {

LABEL_863:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmHariRayaPuasa();
  }

  v420 = sub_22F742040();

  if (v420)
  {
    goto LABEL_863;
  }

  if (sub_22F740EA0() == v1 && v421 == v3)
  {

LABEL_868:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmArmedForcesDay();
  }

  v422 = sub_22F742040();

  if (v422)
  {
    goto LABEL_868;
  }

  if (sub_22F740EA0() == v1 && v423 == v3)
  {

LABEL_873:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithm228MemorialDay();
  }

  v424 = sub_22F742040();

  if (v424)
  {
    goto LABEL_873;
  }

  if (sub_22F740EA0() == v1 && v425 == v3)
  {

LABEL_878:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmRepublicDayNewYearsDay();
  }

  v426 = sub_22F742040();

  if (v426)
  {
    goto LABEL_878;
  }

  if (sub_22F740EA0() == v1 && v427 == v3)
  {

LABEL_883:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmFarmersDay();
  }

  v428 = sub_22F742040();

  if (v428)
  {
    goto LABEL_883;
  }

  if (sub_22F740EA0() == v1 && v429 == v3)
  {

LABEL_888:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmFoundingoftheRepublicofChina();
  }

  v430 = sub_22F742040();

  if (v430)
  {
    goto LABEL_888;
  }

  if (sub_22F740EA0() == v1 && v431 == v3)
  {

LABEL_893:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmTaiwanRetrocessionDay();
  }

  v432 = sub_22F742040();

  if (v432)
  {
    goto LABEL_893;
  }

  if (sub_22F740EA0() == v1 && v433 == v3)
  {

LABEL_898:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmVeteransDay();
  }

  v434 = sub_22F742040();

  if (v434)
  {
    goto LABEL_898;
  }

  if (sub_22F740EA0() == v1 && v435 == v3)
  {

LABEL_903:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMemorialDay();
  }

  v436 = sub_22F742040();

  if (v436)
  {
    goto LABEL_903;
  }

  if (sub_22F740EA0() == v1 && v437 == v3)
  {

LABEL_908:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmInternationalDayofFriendship();
  }

  v438 = sub_22F742040();

  if (v438)
  {
    goto LABEL_908;
  }

  if (sub_22F740EA0() == v1 && v439 == v3)
  {

LABEL_913:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMartinLutherKingJrDay();
  }

  v440 = sub_22F742040();

  if (v440)
  {
    goto LABEL_913;
  }

  if (sub_22F740EA0() == v1 && v441 == v3)
  {
  }

  else
  {
    v442 = sub_22F742040();

    if ((v442 & 1) == 0)
    {
      return 0;
    }
  }

  return type metadata accessor for PhotosChallengeEvaluablePublicEventAlgorithm();
}

uint64_t MaestroSongsInfo.schemaVersion.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MaestroSongsInfo.contentVersion.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

PhotosGraph::MaestroSongsInfo __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MaestroSongsInfo.init(schemaVersion:contentVersion:)(Swift::String schemaVersion, Swift::String contentVersion)
{
  *v2 = schemaVersion;
  v2[1] = contentVersion;
  result.contentVersion = contentVersion;
  result.schemaVersion = schemaVersion;
  return result;
}

void MaestroSongsInfo.init(from:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v5 = sub_22F73F480();
  if (!v2)
  {
    v7 = v5;
    v8 = v6;
    v9 = objc_opt_self();
    v10 = sub_22F73F4F0();
    v31[0] = 0;
    v11 = [v9 JSONObjectWithData:v10 options:4 error:v31];

    if (v11)
    {
      v12 = v31[0];
      sub_22F741920();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
      if (swift_dynamicCast())
      {
        if (*(v29 + 16))
        {
          v13 = sub_22F1229E8(0x6556616D65686373, 0xED00006E6F697372);
          if (v14)
          {
            sub_22F13A100(*(v29 + 56) + 32 * v13, v31);
            if (swift_dynamicCast())
            {
              v15 = v30;
              if (*(v29 + 16))
              {
                v16 = v29;
                v17 = sub_22F1229E8(0x56746E65746E6F63, 0xEE006E6F69737265);
                if (v18)
                {
                  sub_22F13A100(*(v29 + 56) + 32 * v17, v31);
                  if (swift_dynamicCast())
                  {
                    v19 = sub_22F73F470();
                    (*(*(v19 - 8) + 8))(a1, v19);
                    sub_22F133BF0(v7, v8);

                    v20 = v29;
                    v21 = v30;
LABEL_18:
                    *a2 = v16;
                    a2[1] = v15;
                    a2[2] = v20;
                    a2[3] = v21;
                    return;
                  }
                }
              }
            }
          }
        }

        if (*(v29 + 16) && (v24 = sub_22F1229E8(0x6E6F6973726576, 0xE700000000000000), (v25 & 1) != 0))
        {
          sub_22F13A100(*(v29 + 56) + 32 * v24, v31);

          if (swift_dynamicCast())
          {
            v26 = sub_22F73F470();
            (*(*(v26 - 8) + 8))(a1, v26);
            sub_22F133BF0(v7, v8);
            v16 = v29;
            v15 = v30;

            v20 = v29;
            v21 = v30;
            goto LABEL_18;
          }
        }

        else
        {
        }

        sub_22F1C9700();
        swift_allocError();
        *v27 = 1;
      }

      else
      {
        sub_22F1C9700();
        swift_allocError();
        *v23 = 0;
      }
    }

    else
    {
      v22 = v31[0];
      sub_22F73F370();
    }

    swift_willThrow();
    sub_22F133BF0(v7, v8);
  }

  v28 = sub_22F73F470();
  (*(*(v28 - 8) + 8))(a1, v28);
}

unint64_t sub_22F1C9700()
{
  result = qword_27DAB21A8;
  if (!qword_27DAB21A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB21A8);
  }

  return result;
}

unint64_t sub_22F1C9778()
{
  result = qword_27DAB21B0;
  if (!qword_27DAB21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB21B0);
  }

  return result;
}

void sub_22F1C97DC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_22F742040();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_22F1C9864(uint64_t a1)
{
  v2 = sub_22F1C9A50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1C98A0(uint64_t a1)
{
  v2 = sub_22F1C9A50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitArtistEssentialsResponse.ArtistView.Attributes.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB21B8, &qword_22F778BD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1C9A50();
  sub_22F742200();
  if (!v2)
  {
    v9 = sub_22F741EB0();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F1C9A50()
{
  result = qword_27DAB21C0;
  if (!qword_27DAB21C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB21C0);
  }

  return result;
}

uint64_t sub_22F1C9ABC()
{
  sub_22F742170();
  sub_22F740D60();
  return sub_22F7421D0();
}

uint64_t sub_22F1C9B30(uint64_t a1)
{
  sub_22F742170();
  sub_22F740D60();
  return sub_22F7421D0();
}

void sub_22F1C9B84(BOOL *a2@<X8>)
{
  v3 = sub_22F741E30();

  *a2 = v3 != 0;
}

void sub_22F1C9C14(BOOL *a3@<X8>)
{
  v4 = sub_22F741E30();

  *a3 = v4 != 0;
}

uint64_t sub_22F1C9C6C(uint64_t a1)
{
  v2 = sub_22F1C9E5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1C9CA8(uint64_t a1)
{
  v2 = sub_22F1C9E5C();

  return MEMORY[0x2821FE720](a1, v2);
}

double MusicKitArtistEssentialsResponse.ArtistView.Views.topSongs.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

uint64_t MusicKitArtistEssentialsResponse.ArtistView.Views.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB21C8, &qword_22F778BD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1C9E5C();
  sub_22F742200();
  if (!v2)
  {
    sub_22F1C9EB0();
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F1C9E5C()
{
  result = qword_27DAB21D0;
  if (!qword_27DAB21D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB21D0);
  }

  return result;
}

unint64_t sub_22F1C9EB0()
{
  result = qword_2810AA128;
  if (!qword_2810AA128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA128);
  }

  return result;
}

uint64_t MusicKitArtistEssentialsResponse.ArtistView.id.getter()
{
  v1 = *v0;

  return v1;
}

double MusicKitArtistEssentialsResponse.ArtistView.attributes.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

double MusicKitArtistEssentialsResponse.ArtistView.views.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 32);

  return result;
}

uint64_t sub_22F1C9F64()
{
  v1 = 0x7475626972747461;
  if (*v0 != 1)
  {
    v1 = 0x7377656976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_22F1C9FB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F1CAC7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F1C9FDC(uint64_t a1)
{
  v2 = sub_22F1CA2F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1CA018(uint64_t a1)
{
  v2 = sub_22F1CA2F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void MusicKitArtistEssentialsResponse.ArtistView.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB21D8, &qword_22F778BE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1CA2F4();
  sub_22F742200();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v18) = 0;
    v9 = sub_22F741EB0();
    v11 = v10;
    v17 = v9;
    v20 = 1;
    sub_22F1CA348();
    sub_22F741F10();
    v15 = v18;
    v16 = v19;
    v20 = 2;
    sub_22F1CA39C();
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    v12 = v18;
    *a2 = v17;
    a2[1] = v11;
    v13 = v16;
    a2[2] = v15;
    a2[3] = v13;
    a2[4] = v12;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

unint64_t sub_22F1CA2F4()
{
  result = qword_27DAB21E0;
  if (!qword_27DAB21E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB21E0);
  }

  return result;
}

unint64_t sub_22F1CA348()
{
  result = qword_27DAB21E8;
  if (!qword_27DAB21E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB21E8);
  }

  return result;
}

unint64_t sub_22F1CA39C()
{
  result = qword_27DAB21F0;
  if (!qword_27DAB21F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB21F0);
  }

  return result;
}

uint64_t sub_22F1CA410(uint64_t a1)
{
  v2 = sub_22F1CA608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1CA44C(uint64_t a1)
{
  v2 = sub_22F1CA608();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitArtistEssentialsResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB21F8, &qword_22F778BE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1CA608();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2208, &qword_22F778BF0);
    sub_22F1CA65C();
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F1CA608()
{
  result = qword_27DAB2200;
  if (!qword_27DAB2200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2200);
  }

  return result;
}

unint64_t sub_22F1CA65C()
{
  result = qword_27DAB2210;
  if (!qword_27DAB2210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB2208, &qword_22F778BF0);
    sub_22F1CA6E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2210);
  }

  return result;
}

unint64_t sub_22F1CA6E0()
{
  result = qword_27DAB2218;
  if (!qword_27DAB2218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2218);
  }

  return result;
}

uint64_t sub_22F1CA75C(uint64_t a1, int a2)
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

uint64_t sub_22F1CA7A4(uint64_t result, int a2, int a3)
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

unint64_t sub_22F1CA860()
{
  result = qword_27DAB2220;
  if (!qword_27DAB2220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2220);
  }

  return result;
}

unint64_t sub_22F1CA8B8()
{
  result = qword_27DAB2228;
  if (!qword_27DAB2228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2228);
  }

  return result;
}

unint64_t sub_22F1CA910()
{
  result = qword_27DAB2230;
  if (!qword_27DAB2230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2230);
  }

  return result;
}

unint64_t sub_22F1CA968()
{
  result = qword_27DAB2238;
  if (!qword_27DAB2238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2238);
  }

  return result;
}

unint64_t sub_22F1CA9C0()
{
  result = qword_27DAB2240;
  if (!qword_27DAB2240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2240);
  }

  return result;
}

unint64_t sub_22F1CAA18()
{
  result = qword_27DAB2248;
  if (!qword_27DAB2248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2248);
  }

  return result;
}

unint64_t sub_22F1CAA70()
{
  result = qword_27DAB2250;
  if (!qword_27DAB2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2250);
  }

  return result;
}

unint64_t sub_22F1CAAC8()
{
  result = qword_27DAB2258;
  if (!qword_27DAB2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2258);
  }

  return result;
}

unint64_t sub_22F1CAB20()
{
  result = qword_27DAB2260;
  if (!qword_27DAB2260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2260);
  }

  return result;
}

unint64_t sub_22F1CAB78()
{
  result = qword_27DAB2268;
  if (!qword_27DAB2268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2268);
  }

  return result;
}

unint64_t sub_22F1CABD0()
{
  result = qword_27DAB2270;
  if (!qword_27DAB2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2270);
  }

  return result;
}

unint64_t sub_22F1CAC28()
{
  result = qword_27DAB2278;
  if (!qword_27DAB2278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2278);
  }

  return result;
}

uint64_t sub_22F1CAC7C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7377656976 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22F742040();

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

uint64_t RecentPeriod.dateInterval(currentDate:)(uint64_t a1)
{
  v2 = sub_22F73F990();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22F73F9B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  sub_22F73F970();
  if (v10)
  {
    sub_22F73F890();
  }

  else
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CC9940], v2);
    sub_22F73F8C0();
    (*(v3 + 8))(v5, v2);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t RecentPeriod.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

void *HistoricalInterval.annualDateIntervals(startDate:currentDate:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_22F73F990();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, **(&unk_27887E460 + *v2), v5, v7);
  v10 = HistoricalInterval.annualDateIntervals(from:to:windowSize:)(a1, a2, v9);
  (*(v6 + 8))(v9, v5);
  return v10;
}

void *HistoricalInterval.annualDateIntervals(from:to:windowSize:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v48 - v5;
  v69 = sub_22F73F090();
  v7 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v73 = &v48 - v11;
  v68 = sub_22F73F990();
  v12 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v14 - 8);
  v66 = &v48 - v15;
  v16 = sub_22F73F690();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v74 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v48 - v20;
  v50 = sub_22F73F9B0();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F970();
  v70 = v23;
  sub_22F73F800();
  v24 = v21;
  v64 = a1;
  v25 = sub_22F73F5C0();
  v48 = v17;
  if (v25)
  {
    v62 = *MEMORY[0x277CC9988];
    v27 = *(v12 + 104);
    v26 = v12 + 104;
    v60 = (v26 - 96);
    v61 = v27;
    v58 = (v7 + 48);
    v59 = (v17 + 48);
    v71 = (v7 + 32);
    v72 = (v17 + 32);
    v52 = (v7 + 16);
    v55 = v7;
    v51 = v7 + 8;
    v57 = (v17 + 8);
    v28 = MEMORY[0x277D84F90];
    v56 = v6;
    v29 = v6;
    v30 = v69;
    v54 = v9;
    v53 = v26;
    v63 = v24;
    while (1)
    {
      v31 = v67;
      v32 = v68;
      v61(v67, v62, v68);
      v33 = v66;
      sub_22F73F940();
      (*v60)(v31, v32);
      if ((*v59)(v33, 1, v16) == 1)
      {

        v44 = &qword_27DAB0920;
        v45 = &qword_22F770B20;
        v46 = v33;
        goto LABEL_14;
      }

      v34 = *v72;
      (*v72)(v74, v33, v16);
      v35 = v29;
      sub_22F73F8B0();
      if ((*v58)(v29, 1, v30) == 1)
      {
        break;
      }

      v36 = *v71;
      v37 = v73;
      (*v71)(v73, v35, v30);
      (*v52)(v9, v37, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_22F13ED68(0, v28[2] + 1, 1, v28);
      }

      v39 = v28[2];
      v38 = v28[3];
      if (v39 >= v38 >> 1)
      {
        v28 = sub_22F13ED68((v38 > 1), v39 + 1, 1, v28);
      }

      v40 = v55;
      v41 = v69;
      (*(v55 + 8))(v73, v69);
      v24 = v63;
      (*v57)(v63, v16);
      v28[2] = v39 + 1;
      v42 = v28 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v39;
      v9 = v54;
      v30 = v41;
      v36(v42, v54, v41);
      v34(v24, v74, v16);
      v43 = sub_22F73F5C0();
      v29 = v56;
      if ((v43 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    (*v57)(v74, v16);

    v44 = &qword_27DAB40E0;
    v45 = &unk_22F779200;
    v46 = v29;
LABEL_14:
    sub_22F120ADC(v46, v44, v45);
    v28 = MEMORY[0x277D84F90];
    v24 = v63;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

LABEL_15:
  (*(v48 + 8))(v24, v16);
  (*(v49 + 8))(v70, v50);
  return v28;
}

uint64_t HistoricalInterval.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

unint64_t sub_22F1CB878()
{
  result = qword_27DAB2280;
  if (!qword_27DAB2280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2280);
  }

  return result;
}

unint64_t sub_22F1CB8D0()
{
  result = qword_27DAB2288;
  if (!qword_27DAB2288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2288);
  }

  return result;
}

uint64_t sub_22F1CB958(unint64_t a1)
{
  v2 = RecentlyUsedSongs.songIdsRecommendedForExclusion()();
  v30 = MEMORY[0x277D84F90];
  v3 = (a1 >> 62);
  if (a1 >> 62)
  {
LABEL_25:
    v4 = sub_22F741A00();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v26 = v3;
      v27 = a1;
      v5 = 0;
      v28 = a1 & 0xFFFFFFFFFFFFFF8;
      v29 = a1 & 0xC000000000000001;
      a1 += 32;
      v6 = v2 + 56;
      while (1)
      {
        if (v29)
        {
          v3 = MEMORY[0x2319016F0](v5, v27);
          v7 = __OFADD__(v5++, 1);
          if (v7)
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v18 = v30;
            v3 = v26;
            a1 = v27;
            goto LABEL_27;
          }
        }

        else
        {
          if (v5 >= *(v28 + 16))
          {
            __break(1u);
            goto LABEL_25;
          }

          v3 = *(a1 + 8 * v5);
          swift_unknownObjectRetain();
          v7 = __OFADD__(v5++, 1);
          if (v7)
          {
            goto LABEL_22;
          }
        }

        v8 = [v3 uid];
        v9 = sub_22F740E20();
        v11 = v10;

        if (*(v2 + 16) && (sub_22F742170(), sub_22F740D60(), v12 = sub_22F7421D0(), v13 = -1 << *(v2 + 32), v14 = v12 & ~v13, ((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
        {
          v15 = ~v13;
          while (1)
          {
            v16 = (*(v2 + 48) + 16 * v14);
            v17 = *v16 == v9 && v16[1] == v11;
            if (v17 || (sub_22F742040() & 1) != 0)
            {
              break;
            }

            v14 = (v14 + 1) & v15;
            if (((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          swift_unknownObjectRelease();

          if (v5 == v4)
          {
            goto LABEL_23;
          }
        }

        else
        {
LABEL_4:

          sub_22F741BA0();
          sub_22F741BE0();
          sub_22F741BF0();
          sub_22F741BB0();
          if (v5 == v4)
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_27:

  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v19 = sub_22F740B90();
  __swift_project_value_buffer(v19, qword_2810B4D90);

  v20 = sub_22F740B70();
  v21 = sub_22F7415C0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134218240;
    if (v3)
    {
      v23 = sub_22F741A00();
    }

    else
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v22 + 4) = v23;

    *(v22 + 12) = 2048;
    if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
    {
      v24 = sub_22F741A00();
    }

    else
    {
      v24 = *(v18 + 16);
    }

    *(v22 + 14) = v24;

    _os_log_impl(&dword_22F0FC000, v20, v21, "[Flex Filtered] Filtered %ld songs to %ld songs after excluding recently used songs", v22, 0x16u);
    MEMORY[0x2319033A0](v22, -1, -1);
  }

  else
  {
  }

  return v18;
}

void *CompletionCounter.__allocating_init(count:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2290, &qword_22F779380);
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = a1;
  v6[4] = v7;
  return v6;
}

void *CompletionCounter.init(count:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2290, &qword_22F779380);
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = a1;
  v3[4] = v5;
  return v3;
}

Swift::Void __swiftcall CompletionCounter.decrementCounter()()
{
  v1 = *(v0 + 32);

  os_unfair_lock_lock(v1 + 8);
  sub_22F1CBE1C(&v1[4], &v4);
  os_unfair_lock_unlock(v1 + 8);
  v2 = v4;

  if (v2 == 1)
  {
    (*(v0 + 16))(v3);
  }
}

void sub_22F1CBE1C(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*a1)
  {
    if (qword_2810A93F0 != -1)
    {
      swift_once();
    }

    v3 = sub_22F740B90();
    __swift_project_value_buffer(v3, qword_2810B4CB0);
    v4 = sub_22F740B70();
    v5 = sub_22F7415C0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22F0FC000, v4, v5, "CompletionCounter has been terminated", v6, 2u);
      MEMORY[0x2319033A0](v6, -1, -1);
    }

    v7 = 0;
    goto LABEL_11;
  }

  v8 = *(a1 + 8);
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (!v9)
  {
    *(a1 + 8) = v10;
    if (v10)
    {
      v7 = 0;
    }

    else
    {
      v7 = 1;
      *a1 = 1;
    }

LABEL_11:
    *a2 = v7;
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall CompletionCounter.terminate()()
{
  v1 = *(v0 + 32);

  os_unfair_lock_lock((v1 + 32));
  if (*(v1 + 16))
  {
    os_unfair_lock_unlock((v1 + 32));
  }

  else
  {
    *(v1 + 16) = 1;
    os_unfair_lock_unlock((v1 + 32));

    (*(v0 + 16))(v2);
  }
}

uint64_t CompletionCounter.deinit()
{

  return v0;
}

uint64_t CompletionCounter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for CompletionCounter.CompletionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CompletionCounter.CompletionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

id FlexMusicCurationParameters.__allocating_init(with:moodKeywords:recentlyUsedSongs:entityUUID:useMoodKeywords:features:musicCuratorContext:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, void *a7, char *a8)
{
  v9 = v8;
  v18 = sub_22F7401D0();
  v38 = *(v18 - 8);
  v39 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v9;
  v21 = objc_allocWithZone(v9);
  *&v21[OBJC_IVAR___PGFlexMusicCurationParameters_mood] = a1;
  *&v21[OBJC_IVAR___PGFlexMusicCurationParameters_moodKeywords] = a2;
  *&v21[OBJC_IVAR___PGFlexMusicCurationParameters_recentlyUsedSongs] = a3;
  v22 = &v21[OBJC_IVAR___PGFlexMusicCurationParameters_entityUUID];
  *v22 = a4;
  v22[1] = a5;
  v21[OBJC_IVAR___PGFlexMusicCurationParameters_useMoodKeywords] = a6;
  *&v21[OBJC_IVAR___PGFlexMusicCurationParameters_features] = a7;
  if (a8)
  {
    v23 = OBJC_IVAR___PGMusicCuratorContext_flexSongProvider;
    swift_beginAccess();
    *&v21[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongProvider] = *&a8[v23];
    v24 = a7;
    swift_unknownObjectRetain();
    v25 = v21;
    v26 = a3;
    v27 = sub_22F2A8AE4();
  }

  else
  {
    if (sub_22F742040())
    {
      v28 = type metadata accessor for MockFlexSongProvider();
    }

    else
    {
      v28 = type metadata accessor for FlexMusicKitSongProvider();
    }

    v29 = objc_allocWithZone(v28);
    v24 = a7;
    v30 = v21;
    v31 = a3;
    v32 = [v29 init];
    *&v30[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongProvider] = v32;
    v33 = swift_unknownObjectRetain();
    v27 = _s11PhotosGraph16FlexMusicCuratorC06usableC5Songs4fromSayAA0cD12SongProtocol_pGAA0cdi8ProviderJ0_pSg_tFZ_0(v33);
    swift_unknownObjectRelease();
  }

  *&v21[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongs] = v27;
  v34 = &v21[OBJC_IVAR___PGFlexMusicCurationParameters_genre];
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  sub_22F7401C0();
  sub_22F7401B0();
  *&v21[OBJC_IVAR___PGFlexMusicCurationParameters_weightByLanguage] = sub_22F740180();
  v35 = sub_22F740170();
  (*(v38 + 8))(v20, v39);
  *&v21[OBJC_IVAR___PGFlexMusicCurationParameters_weightByRegion] = v35;
  v41.receiver = v21;
  v41.super_class = v40;
  v36 = objc_msgSendSuper2(&v41, sel_init);

  return v36;
}

id FlexMusicCurationParameters.init(with:moodKeywords:recentlyUsedSongs:entityUUID:useMoodKeywords:features:musicCuratorContext:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v11 = sub_22F1CD944(a1, a2, a3, a4, a5, a6, a7, a8);

  return v11;
}

id FlexMusicCurationParameters.__allocating_init(with:moodKeywords:recentlyUsedSongs:entityUUID:useMoodKeywords:features:musicCuratorContext:genre:weightByLanguage:weightByRegion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, void *a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v22 = objc_allocWithZone(v13);
  *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_mood] = a1;
  *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_moodKeywords] = a2;
  *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_recentlyUsedSongs] = a3;
  v23 = &v22[OBJC_IVAR___PGFlexMusicCurationParameters_entityUUID];
  *v23 = a4;
  v23[1] = a5;
  v22[OBJC_IVAR___PGFlexMusicCurationParameters_useMoodKeywords] = a6;
  *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_features] = a7;
  if (a8)
  {
    v24 = OBJC_IVAR___PGMusicCuratorContext_flexSongProvider;
    swift_beginAccess();
    *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongProvider] = *&a8[v24];
    v25 = a7;
    swift_unknownObjectRetain();
    v26 = v22;
    v27 = a3;
    v28 = sub_22F2A8AE4();
  }

  else
  {
    if (sub_22F742040())
    {
      v29 = type metadata accessor for MockFlexSongProvider();
    }

    else
    {
      v29 = type metadata accessor for FlexMusicKitSongProvider();
    }

    v30 = objc_allocWithZone(v29);
    v25 = a7;
    v31 = v22;
    v32 = a3;
    v33 = [v30 init];
    *&v31[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongProvider] = v33;
    v34 = swift_unknownObjectRetain();
    v28 = _s11PhotosGraph16FlexMusicCuratorC06usableC5Songs4fromSayAA0cD12SongProtocol_pGAA0cdi8ProviderJ0_pSg_tFZ_0(v34);
    swift_unknownObjectRelease();
  }

  *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongs] = v28;
  v35 = &v22[OBJC_IVAR___PGFlexMusicCurationParameters_genre];
  *v35 = a9;
  v35[1] = a10;
  *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_weightByLanguage] = a11;
  *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_weightByRegion] = a12;
  v38.receiver = v22;
  v38.super_class = v13;
  v36 = objc_msgSendSuper2(&v38, sel_init);

  return v36;
}

id FlexMusicCurationParameters.init(with:moodKeywords:recentlyUsedSongs:entityUUID:useMoodKeywords:features:musicCuratorContext:genre:weightByLanguage:weightByRegion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = sub_22F1CDBF8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);

  return v15;
}

uint64_t sub_22F1CCA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22F15E910(a1, a2, a3);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v11[0] = a1;
    v11[1] = a2;
    MEMORY[0x28223BE20](v7);
    v10[2] = v11;
    v8 = sub_22F1C0E04(sub_22F15A388, v10, a4);
  }

  return v8 & 1;
}

uint64_t static FlexMusicCurator.allFlexSongs(from:)(void *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = a1;
    v2 = qword_2810A9460;
    swift_unknownObjectRetain_n();
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = sub_22F740B90();
    __swift_project_value_buffer(v3, qword_2810B4D90);
    v4 = sub_22F740B70();
    v5 = sub_22F7415C0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v37 = v7;
      *v6 = 136315138;
      v8 = [v1 name];
      v9 = sub_22F740E20();
      v11 = v10;

      v12 = sub_22F145F20(v9, v11, &v37);

      *(v6 + 4) = v12;
      v13 = "Using a custom flex song provider: %s";
LABEL_13:
      _os_log_impl(&dword_22F0FC000, v4, v5, v13, v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x2319033A0](v7, -1, -1);
      MEMORY[0x2319033A0](v6, -1, -1);
    }
  }

  else
  {
    if (sub_22F742040())
    {
      v14 = type metadata accessor for MockFlexSongProvider();
    }

    else
    {
      v14 = type metadata accessor for FlexMusicKitSongProvider();
    }

    v1 = [objc_allocWithZone(v14) init];
    v15 = qword_2810A9460;
    swift_unknownObjectRetain_n();
    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_22F740B90();
    __swift_project_value_buffer(v16, qword_2810B4D90);
    v4 = sub_22F740B70();
    v5 = sub_22F7415C0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v37 = v7;
      *v6 = 136315138;
      v17 = [v1 name];
      v18 = sub_22F740E20();
      v20 = v19;

      v21 = sub_22F145F20(v18, v20, &v37);

      *(v6 + 4) = v21;
      v13 = "Using the default flex song provider: %s";
      goto LABEL_13;
    }
  }

  v37 = 0;
  v22 = [v1 allFlexSongsAndReturnError_];
  swift_unknownObjectRelease();
  v23 = v37;
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
    v24 = sub_22F741180();
    v25 = v23;

    swift_unknownObjectRelease();
  }

  else
  {
    v26 = v37;
    v27 = sub_22F73F370();

    swift_willThrow();
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v28 = sub_22F740B90();
    __swift_project_value_buffer(v28, qword_2810B4D90);
    v29 = v27;
    v30 = sub_22F740B70();
    v31 = sub_22F7415E0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = v27;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_22F0FC000, v30, v31, "(FlexMusicCurator) allFlexSongs failed with error: %@. Returning empty array.", v32, 0xCu);
      sub_22F120ADC(v33, &qword_27DAB07D0, &qword_22F779400);
      MEMORY[0x2319033A0](v33, -1, -1);
      MEMORY[0x2319033A0](v32, -1, -1);
    }

    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return v24;
}

id FlexMusicCurator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FlexMusicCurator.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_22F1CD128(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0938, &qword_22F770B38);
  v2 = sub_22F741DC0();
  v3 = v2;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v2 + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = *(*(a1 + 56) + 8 * v13);
      v17 = *v14;
      v16 = v14[1];
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v18 = (v3[6] + 16 * v13);
      *v18 = v17;
      v18[1] = v16;
      *(v3[7] + 4 * v13) = v15;
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      v3[2] = v21;

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v12 = *(a1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22F1CD27C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0938, &qword_22F770B38);
  v2 = sub_22F741DC0();
  v3 = v2;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v2 + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(*(a1 + 56) + 8 * v13 + 4);
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v18 = (v3[6] + 16 * v13);
      *v18 = v16;
      v18[1] = v15;
      *(v3[7] + 4 * v13) = v17;
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      v3[2] = v21;

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v12 = *(a1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t *sub_22F1CD3D0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22F1CE3E8(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t _s11PhotosGraph16FlexMusicCuratorC06usableC5Songs4fromSayAA0cD12SongProtocol_pGAA0cdi8ProviderJ0_pSg_tFZ_0(void *a1)
{
  v37[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = a1;
    v2 = qword_2810A9460;
    swift_unknownObjectRetain_n();
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = sub_22F740B90();
    __swift_project_value_buffer(v3, qword_2810B4D90);
    v4 = sub_22F740B70();
    v5 = sub_22F7415C0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v37[0] = v7;
      *v6 = 136315138;
      v8 = [v1 name];
      v9 = sub_22F740E20();
      v11 = v10;

      v12 = sub_22F145F20(v9, v11, v37);

      *(v6 + 4) = v12;
      v13 = "Using a custom flex song provider: %s";
LABEL_13:
      _os_log_impl(&dword_22F0FC000, v4, v5, v13, v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x2319033A0](v7, -1, -1);
      MEMORY[0x2319033A0](v6, -1, -1);
    }
  }

  else
  {
    if (sub_22F742040())
    {
      v14 = type metadata accessor for MockFlexSongProvider();
    }

    else
    {
      v14 = type metadata accessor for FlexMusicKitSongProvider();
    }

    v1 = [objc_allocWithZone(v14) init];
    v15 = qword_2810A9460;
    swift_unknownObjectRetain_n();
    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_22F740B90();
    __swift_project_value_buffer(v16, qword_2810B4D90);
    v4 = sub_22F740B70();
    v5 = sub_22F7415C0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v37[0] = v7;
      *v6 = 136315138;
      v17 = [v1 name];
      v18 = sub_22F740E20();
      v20 = v19;

      v21 = sub_22F145F20(v18, v20, v37);

      *(v6 + 4) = v21;
      v13 = "Using the default flex song provider: %s";
      goto LABEL_13;
    }
  }

  v37[0] = 0;
  v22 = [v1 usableFlexSongsAndReturnError_];
  swift_unknownObjectRelease();
  v23 = v37[0];
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
    v24 = sub_22F741180();
    v25 = v23;

    swift_unknownObjectRelease();
  }

  else
  {
    v26 = v37[0];
    v27 = sub_22F73F370();

    swift_willThrow();
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v28 = sub_22F740B90();
    __swift_project_value_buffer(v28, qword_2810B4D90);
    v29 = v27;
    v30 = sub_22F740B70();
    v31 = sub_22F7415E0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = v27;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_22F0FC000, v30, v31, "(FlexMusicCurator) usableFlexSongs failed with error: %@. Returning empty array.", v32, 0xCu);
      sub_22F120ADC(v33, &qword_27DAB07D0, &qword_22F779400);
      MEMORY[0x2319033A0](v33, -1, -1);
      MEMORY[0x2319033A0](v32, -1, -1);
    }

    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return v24;
}

id sub_22F1CD944(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, void *a7, uint64_t a8)
{
  v9 = v8;
  ObjectType = swift_getObjectType();
  v18 = sub_22F7401D0();
  v37 = *(v18 - 8);
  v38 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9[OBJC_IVAR___PGFlexMusicCurationParameters_mood] = a1;
  *&v9[OBJC_IVAR___PGFlexMusicCurationParameters_moodKeywords] = a2;
  *&v9[OBJC_IVAR___PGFlexMusicCurationParameters_recentlyUsedSongs] = a3;
  v21 = &v9[OBJC_IVAR___PGFlexMusicCurationParameters_entityUUID];
  *v21 = a4;
  v21[1] = a5;
  v9[OBJC_IVAR___PGFlexMusicCurationParameters_useMoodKeywords] = a6;
  *&v9[OBJC_IVAR___PGFlexMusicCurationParameters_features] = a7;
  if (a8)
  {
    v22 = OBJC_IVAR___PGMusicCuratorContext_flexSongProvider;
    swift_beginAccess();
    *&v9[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongProvider] = *(a8 + v22);
    v23 = a7;
    swift_unknownObjectRetain();
    v24 = v9;
    v25 = a3;
    v26 = sub_22F2A8AE4();
  }

  else
  {
    if (sub_22F742040())
    {
      v27 = type metadata accessor for MockFlexSongProvider();
    }

    else
    {
      v27 = type metadata accessor for FlexMusicKitSongProvider();
    }

    v28 = objc_allocWithZone(v27);
    v29 = a7;
    v30 = v9;
    v31 = a3;
    v32 = [v28 init];
    *&v30[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongProvider] = v32;
    v33 = swift_unknownObjectRetain();
    v26 = _s11PhotosGraph16FlexMusicCuratorC06usableC5Songs4fromSayAA0cD12SongProtocol_pGAA0cdi8ProviderJ0_pSg_tFZ_0(v33);
    swift_unknownObjectRelease();
  }

  *&v9[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongs] = v26;
  v34 = &v9[OBJC_IVAR___PGFlexMusicCurationParameters_genre];
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  sub_22F7401C0();
  sub_22F7401B0();
  *&v9[OBJC_IVAR___PGFlexMusicCurationParameters_weightByLanguage] = sub_22F740180();
  v35 = sub_22F740170();
  (*(v37 + 8))(v20, v38);
  *&v9[OBJC_IVAR___PGFlexMusicCurationParameters_weightByRegion] = v35;
  v40.receiver = v9;
  v40.super_class = ObjectType;
  return objc_msgSendSuper2(&v40, sel_init);
}

id sub_22F1CDBF8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  ObjectType = swift_getObjectType();
  *&v13[OBJC_IVAR___PGFlexMusicCurationParameters_mood] = a1;
  *&v13[OBJC_IVAR___PGFlexMusicCurationParameters_moodKeywords] = a2;
  *&v13[OBJC_IVAR___PGFlexMusicCurationParameters_recentlyUsedSongs] = a3;
  v22 = &v13[OBJC_IVAR___PGFlexMusicCurationParameters_entityUUID];
  *v22 = a4;
  v22[1] = a5;
  v13[OBJC_IVAR___PGFlexMusicCurationParameters_useMoodKeywords] = a6;
  *&v13[OBJC_IVAR___PGFlexMusicCurationParameters_features] = a7;
  if (a8)
  {
    v23 = OBJC_IVAR___PGMusicCuratorContext_flexSongProvider;
    swift_beginAccess();
    *&v13[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongProvider] = *(a8 + v23);
    v24 = a7;
    swift_unknownObjectRetain();
    v25 = v13;
    v26 = a3;
    v27 = sub_22F2A8AE4();
  }

  else
  {
    if (sub_22F742040())
    {
      v28 = type metadata accessor for MockFlexSongProvider();
    }

    else
    {
      v28 = type metadata accessor for FlexMusicKitSongProvider();
    }

    v29 = objc_allocWithZone(v28);
    v30 = a7;
    v31 = v13;
    v32 = a3;
    v33 = [v29 init];
    *&v31[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongProvider] = v33;
    v34 = swift_unknownObjectRetain();
    v27 = _s11PhotosGraph16FlexMusicCuratorC06usableC5Songs4fromSayAA0cD12SongProtocol_pGAA0cdi8ProviderJ0_pSg_tFZ_0(v34);
    swift_unknownObjectRelease();
  }

  *&v13[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongs] = v27;
  v35 = &v13[OBJC_IVAR___PGFlexMusicCurationParameters_genre];
  *v35 = a9;
  v35[1] = a10;
  *&v13[OBJC_IVAR___PGFlexMusicCurationParameters_weightByLanguage] = a11;
  *&v13[OBJC_IVAR___PGFlexMusicCurationParameters_weightByRegion] = a12;
  v38.receiver = v13;
  v38.super_class = ObjectType;
  return objc_msgSendSuper2(&v38, sel_init);
}

unint64_t sub_22F1CDE24(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v40 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v10 = a1 + 32;

    v31 = a5;

    v30 = a3;

    swift_beginAccess();
    v29 = a4;
    do
    {
      sub_22F15C30C(v10, &v37);
      if (v5 >> 62)
      {
        v32 = sub_22F741A00();
      }

      else
      {
        v32 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v38;
      v12 = v39;
      __swift_project_boxed_opaque_existential_1(&v37, v38);
      v13 = *(v12 + 8);

      v15 = v13(v14, v30, a4, v31, v11, v12);

      v40 = v15;

      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      v16 = sub_22F740B90();
      __swift_project_value_buffer(v16, qword_2810B4D90);
      sub_22F100260(&v37, v34);
      v17 = sub_22F740B70();
      v18 = sub_22F7415C0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v33 = v20;
        *v19 = 136315650;
        v21 = v35;
        v22 = v36;
        __swift_project_boxed_opaque_existential_1(v34, v35);
        v23 = (*(v22 + 16))(v21, v22);
        v25 = v24;
        __swift_destroy_boxed_opaque_existential_0(v34);
        v26 = sub_22F145F20(v23, v25, &v33);

        *(v19 + 4) = v26;
        *(v19 + 12) = 2048;
        *(v19 + 14) = v32;
        *(v19 + 22) = 2048;
        if (v15 >> 62)
        {
          v27 = sub_22F741A00();
        }

        else
        {
          v27 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v19 + 24) = v27;
        _os_log_impl(&dword_22F0FC000, v17, v18, "[Flex Filters] Applied %s: %ld -> %ld songs", v19, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x2319033A0](v20, -1, -1);
        MEMORY[0x2319033A0](v19, -1, -1);

        a4 = v29;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v34);
      }

      v10 += 40;
      v5 = v15;
      --v6;
    }

    while (v6);

    return v15;
  }

  else
  {
  }

  return v5;
}

unint64_t sub_22F1CE148(uint64_t a1, unint64_t a2, unint64_t a3, int64_t a4, uint64_t a5)
{
  v5 = a2;
  v32 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v10 = a1 + 32;

    swift_beginAccess();
    v11 = &qword_2810A9000;
    v27 = a4;
    v28 = a5;
    v26 = a3;
    do
    {
      sub_22F15C30C(v10, v31);
      if (v5 >> 62)
      {
        v12 = sub_22F741A00();
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = sub_22F2D7594(v13, a3, a4, a5);

      v32 = v14;

      if (v11[140] != -1)
      {
        swift_once();
      }

      v15 = sub_22F740B90();
      __swift_project_value_buffer(v15, qword_2810B4D90);
      sub_22F100260(v31, v30);
      v16 = sub_22F740B70();
      v17 = sub_22F7415C0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v29 = v19;
        *v18 = 136315650;
        v20 = __swift_project_boxed_opaque_existential_1(v30, v30[3]);
        v21 = *v20;
        v22 = v20[1];

        __swift_destroy_boxed_opaque_existential_0(v30);
        v23 = sub_22F145F20(v21, v22, &v29);

        *(v18 + 4) = v23;
        *(v18 + 12) = 2048;
        *(v18 + 14) = v12;
        *(v18 + 22) = 2048;
        if (v14 >> 62)
        {
          v24 = sub_22F741A00();
        }

        else
        {
          v24 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v18 + 24) = v24;
        _os_log_impl(&dword_22F0FC000, v16, v17, "[Flex Padder] Applied %s: %ld -> %ld songs", v18, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x2319033A0](v19, -1, -1);
        MEMORY[0x2319033A0](v18, -1, -1);

        a4 = v27;
        a5 = v28;
        a3 = v26;
        v11 = &qword_2810A9000;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v30);
      }

      v10 += 40;
      v5 = v14;
      --v6;
    }

    while (v6);
  }

  else
  {

    return v5;
  }

  return v14;
}

void sub_22F1CE3E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  v22 = a4;
  v19 = a2;
  v20 = a1;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v24 + 48) + 16 * v13);
    v15 = v14[1];
    v23[0] = *v14;
    v23[1] = v15;
    MEMORY[0x28223BE20](a1);
    v18[2] = v23;

    v16 = sub_22F1C0E04(sub_22F1D0468, v18, v22);

    if (v16)
    {
      *(v20 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:
        sub_22F1B153C(v20, v19, v21, v24);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_22F1CE58C(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_22F1CD3D0(v13, v7, a1, a2);
      MEMORY[0x2319033A0](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_22F1CE3E8((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

void *sub_22F1CE74C(uint64_t isUniquelyReferenced_nonNull_native, unint64_t a2)
{
  v4 = sub_22F73F690();
  v211 = *(v4 - 8);
  v212 = v4;
  MEMORY[0x28223BE20](v4);
  v229 = v208 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_22F740920();
  v233 = *(v235 - 8);
  MEMORY[0x28223BE20](v235);
  v7 = v208 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22F73F7C0();
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = v208 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9BD0 != -1)
  {
    goto LABEL_70;
  }

  while (1)
  {
    v12 = qword_2810B4E90;
    *&v13 = CACurrentMediaTime();
    v222 = v12;
    sub_22F1B560C("FlexMusicCurator - curateFlexMusicWithCurationParameters", 56, 2u, v13, 0, v12, v247);
    v232 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_mood);
    v14 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_moodKeywords);
    v224 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_recentlyUsedSongs);
    v15 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_entityUUID + 8);
    v236 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_entityUUID);
    v210 = v15;
    v220 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_features);
    v16 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_genre);
    v230 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_genre + 8);
    v227 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_weightByLanguage);
    v228 = v16;
    v226 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_weightByRegion);
    v237 = v14;

    v17 = sub_22F7416E0();
    v216 = v18;
    v217 = v17;
    v231 = v19;
    v21 = v20;
    v214 = isUniquelyReferenced_nonNull_native;
    v22 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongs);
    if (v22 >> 62)
    {
      v23 = sub_22F741A00();
      if (v23 < 1)
      {
LABEL_72:

        sub_22F1D033C();
        swift_allocError();
        *v124 = 0;
        swift_willThrow();

LABEL_73:

        return v8;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23 < 1)
      {
        goto LABEL_72;
      }
    }

    v221 = v23;
    v208[2] = a2;
    v213 = v21;
    sub_22F73F780();
    v24 = sub_22F73F730();
    (*(v9 + 8))(v11, v8);
    v25 = [v24 objectForKey_];

    if (v25)
    {
      sub_22F741920();
      swift_unknownObjectRelease();
    }

    else
    {
      v241 = 0u;
      v242 = 0u;
    }

    v26 = v235;
    v244 = v241;
    v245 = v242;
    v27 = &qword_2810A9000;
    if (!*(&v242 + 1))
    {
      sub_22F120ADC(&v244, &qword_27DAB0C28, &qword_22F778980);
LABEL_17:
      v215 = MEMORY[0x277D84F90];
      goto LABEL_18;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_17;
    }

    v28 = v238;
    v29 = v239;
    *&v244 = sub_22F740E20();
    *(&v244 + 1) = v30;
    MEMORY[0x231900B10](v28, v29);

    v31 = *(&v244 + 1);
    v225 = v244;
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v32 = sub_22F740B90();
    __swift_project_value_buffer(v32, qword_2810B4D90);

    v33 = sub_22F740B70();
    v34 = sub_22F7415C0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v244 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_22F145F20(v225, v31, &v244);
      _os_log_impl(&dword_22F0FC000, v33, v34, "placeholderRegion = %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      v37 = v36;
      v27 = &qword_2810A9000;
      v26 = v235;
      MEMORY[0x2319033A0](v37, -1, -1);
      MEMORY[0x2319033A0](v35, -1, -1);
    }

    v38 = sub_22F13E1A8(0, 1, 1, MEMORY[0x277D84F90]);
    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    v215 = v38;
    if (v40 >= v39 >> 1)
    {
      v215 = sub_22F13E1A8((v39 > 1), v40 + 1, 1, v215);
    }

    v41 = v215;
    *(v215 + 2) = v40 + 1;
    v42 = &v41[16 * v40];
    *(v42 + 4) = v225;
    *(v42 + 5) = v31;
LABEL_18:
    sub_22F7408D0();
    v43 = sub_22F7408B0();
    v8 = v44;
    v45 = *(v233 + 1);
    v45(v7, v26);
    v46 = *(v237 + 16);
    v235 = v43;
    if (v46)
    {
      v47 = v26;

      sub_22F7408F0();

      v223 = sub_22F7408B0();
      v49 = v48;
      v45(v7, v47);
      v27 = &qword_2810A9000;
    }

    else
    {

      v49 = v8;
      v223 = v43;
    }

    v50 = v230;

    if (v27[140] != -1)
    {
      swift_once();
    }

    v209 = v22;
    v51 = sub_22F740B90();
    __swift_project_value_buffer(v51, qword_2810B4D90);

    v52 = sub_22F740B70();
    v53 = sub_22F7415C0();

    v54 = os_log_type_enabled(v52, v53);
    v55 = v235;
    v225 = v49;
    if (v54)
    {
      v56 = swift_slowAlloc();
      v233 = swift_slowAlloc();
      *&v244 = v233;
      *v56 = 136315906;
      v57 = sub_22F145F20(v223, v49, &v244);

      *(v56 + 4) = v57;
      *(v56 + 12) = 2080;
      v58 = sub_22F145F20(v55, v8, &v244);

      *(v56 + 14) = v58;
      *(v56 + 22) = 2080;
      *(v56 + 24) = sub_22F145F20(v228, v50, &v244);
      *(v56 + 32) = 2080;

      v60 = MEMORY[0x231900D40](v59, MEMORY[0x277D837D0]);
      v62 = v61;

      v8 = sub_22F145F20(v60, v62, &v244);

      *(v56 + 34) = v8;
      _os_log_impl(&dword_22F0FC000, v52, v53, "(FlexMusicCurator) Curating flex music for: mood, %s, moodNameFromPHMemory, %s, genre, %s, regionTagID, %s", v56, 0x2Au);
      v63 = v233;
      swift_arrayDestroy();
      MEMORY[0x2319033A0](v63, -1, -1);
      MEMORY[0x2319033A0](v56, -1, -1);
    }

    else
    {
    }

    v11 = v231;
    v64 = v217;
    isUniquelyReferenced_nonNull_native = v236;
    v65 = v234;
    sub_22F7416A0();
    v7 = v65;
    if (v65)
    {

      goto LABEL_73;
    }

    sub_22F1B560C("FlexMusicCurator - curateFlexMusicWithCurationParameters - scoreSongs", 69, 2u, 0, 1, v222, v248);
    sub_22F73F680();
    if (v214[OBJC_IVAR___PGFlexMusicCurationParameters_useMoodKeywords])
    {
      v66 = &off_2843EA1B8;
      v67 = &type metadata for RandomizedScoreRanker;
      v68 = &off_2843DF8B8;
      v69 = &type metadata for MoodKeywordScoreComputer;
    }

    else
    {

      v69 = type metadata accessor for MaestroKeywordScoreComputer();
      v70 = swift_allocObject();
      v71 = v220;
      v72 = v220;
      v8 = MEMORY[0x277D84F90];
      *(v70 + 24) = sub_22F14EE58(MEMORY[0x277D84F90]);

      v73 = sub_22F14EE58(v8);
      *(v70 + 16) = v71;
      *(v70 + 24) = v73;
      v237 = v70;
      v66 = &off_2843EA0F0;
      v67 = &type metadata for OrderedScoreRanker;
      v68 = &off_2843E9EA0;
    }

    v246 = v68;
    *(&v245 + 1) = v69;
    *&v244 = v237;
    *(&v242 + 1) = v67;
    v243 = v66;
    v208[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB22F8, &qword_22F779480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22F770DF0;
    *(inited + 56) = &type metadata for FlexMusicRecentlyUsedFilter;
    *(inited + 64) = &off_2843E3E20;
    strcpy((inited + 32), "RegionalFilter");
    *(inited + 47) = -18;
    *(inited + 96) = &type metadata for FlexMusicRegionalFilter;
    *(inited + 104) = &off_2843E47B0;
    strcpy((inited + 72), "RegionalFilter");
    *(inited + 87) = -18;
    a2 = sub_22F1CDE24(inited, v209, v214, v227, v226);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2300, &qword_22F779488);
    swift_arrayDestroy();
    v208[0] = a2 >> 62;
    if (!(a2 >> 62))
    {
      v75 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v75)
      {
        break;
      }

      goto LABEL_33;
    }

    v75 = sub_22F741A00();
    if (!v75)
    {
      break;
    }

LABEL_33:
    v9 = 0;
    v219 = a2 & 0xFFFFFFFFFFFFFF8;
    v220 = (a2 & 0xC000000000000001);
    v76 = MEMORY[0x277D84F98];
    v237 = MEMORY[0x277D84F98];
    v222 = a2;
    v218 = v75;
    while (1)
    {
      v235 = v76;
      if (!v220)
      {
        break;
      }

      v8 = MEMORY[0x2319016F0](v9, a2);
      v77 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_66;
      }

LABEL_37:
      v232 = v77;
      *&v234 = 0;
      v78 = [v8 uid];
      v233 = sub_22F740E20();
      a2 = v79;

      v80 = *(&v245 + 1);
      v81 = v246;
      __swift_project_boxed_opaque_existential_1(&v244, *(&v245 + 1));
      v82 = (v81[1])(v8, v80, v81);
      v83 = *(&v245 + 1);
      v84 = v246;
      __swift_project_boxed_opaque_existential_1(&v244, *(&v245 + 1));
      v85 = (v84[2])(v8, v83, v84);
      v86 = *(&v245 + 1);
      v87 = v246;
      __swift_project_boxed_opaque_existential_1(&v244, *(&v245 + 1));
      v88 = (v87[3])(v8, v227, v226, v86, v87);
      v90 = v89;
      v91 = *(&v245 + 1);
      v92 = v246;
      __swift_project_boxed_opaque_existential_1(&v244, *(&v245 + 1));
      v93 = (v92[5])(v8, v224, v229, v91, v92);
      v94 = *(&v245 + 1);
      v95 = v246;
      __swift_project_boxed_opaque_existential_1(&v244, *(&v245 + 1));
      v96 = (v95[4])(v8, v223, v225, v94, v95);
      v97 = v228;
      v98 = v230;
      if (sub_22F740F10() < 1)
      {
        v101 = 0.0;
      }

      else
      {
        v99 = *(&v245 + 1);
        v100 = v246;
        __swift_project_boxed_opaque_existential_1(&v244, *(&v245 + 1));
        (v100[6])(v8, v97, v98, v99, v100);
        v102 = 0.1;
        if (v96 >= 0.1)
        {
          v102 = v96;
        }

        if (v101 == 1.0)
        {
          v101 = 1.0;
          v96 = v102;
        }
      }

      v103 = (v88 * v90) * ((v93 * ((((v82 * 40.0) + 1.0) * v85) * v93)) * ((v101 * 50.0) + 1.0));
      if ((v96 * v103) > 1.0e-16)
      {
        v104 = v96 * v103;
      }

      else
      {
        v104 = 1.0e-16;
      }

      if (v103 > 1.0e-16)
      {
        v105 = v103;
      }

      else
      {
        v105 = 1.0e-16;
      }

      v106 = v235;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v238 = v106;
      v11 = v233;
      v7 = sub_22F1229E8(v233, a2);
      v108 = *(v106 + 16);
      v109 = (v107 & 1) == 0;
      v110 = v108 + v109;
      if (__OFADD__(v108, v109))
      {
        goto LABEL_68;
      }

      v111 = v107;
      if (*(v106 + 24) >= v110)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F135238();
        }
      }

      else
      {
        sub_22F12730C(v110, isUniquelyReferenced_nonNull_native);
        v112 = sub_22F1229E8(v11, a2);
        if ((v111 & 1) != (v113 & 1))
        {
          goto LABEL_144;
        }

        v7 = v112;
      }

      isUniquelyReferenced_nonNull_native = v236;
      v114 = v238;
      if (v111)
      {
        v76 = v238;
        v115 = (*(v238 + 56) + 8 * v7);
        *v115 = v104;
        v115[1] = v105;
      }

      else
      {
        *(v238 + 8 * (v7 >> 6) + 64) |= 1 << v7;
        v116 = (v114[6] + 16 * v7);
        *v116 = v11;
        v116[1] = a2;
        v117 = (v114[7] + 8 * v7);
        *v117 = v104;
        v117[1] = v105;
        v118 = v114[2];
        v119 = __OFADD__(v118, 1);
        v120 = v118 + 1;
        if (v119)
        {
          goto LABEL_69;
        }

        v76 = v114;
        v114[2] = v120;
      }

      swift_unknownObjectRetain();
      v121 = v237;
      v122 = swift_isUniquelyReferenced_nonNull_native();
      v238 = v121;
      sub_22F130EBC(v8, v11, a2, v122);

      v237 = v238;
      v11 = v231;
      v123 = v234;
      sub_22F741680();
      v7 = v123;
      if (v123)
      {

        swift_unknownObjectRelease();

        (*(v211 + 8))(v229, v212);
        __swift_destroy_boxed_opaque_existential_0(&v241);
        __swift_destroy_boxed_opaque_existential_0(&v244);

        goto LABEL_73;
      }

      swift_unknownObjectRelease();
      ++v9;
      a2 = v222;
      if (v232 == v218)
      {
        goto LABEL_77;
      }
    }

    if (v9 >= *(v219 + 16))
    {
      goto LABEL_67;
    }

    v8 = *(a2 + 8 * v9 + 32);
    swift_unknownObjectRetain();
    v77 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_37;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    swift_once();
  }

  v76 = MEMORY[0x277D84F98];
  v237 = MEMORY[0x277D84F98];
LABEL_77:
  v235 = v76;
  sub_22F1B2BBC(0);
  sub_22F7416A0();
  v126 = v235;
  sub_22F1CD128(v235);
  v232 = v127;
  sub_22F1CD27C(v126);
  v129 = v128;
  v230 = 0;
  v130 = swift_initStackObject();
  v234 = xmmword_22F771340;
  *(v130 + 16) = xmmword_22F771340;
  *(v130 + 56) = &type metadata for FlexMusicCelebrationEventsFilter;
  *(v130 + 64) = &off_2843DFF88;
  *(v130 + 32) = 0xD000000000000017;
  v131 = (v130 + 32);
  *(v130 + 40) = 0x800000022F7911D0;
  v222 = a2;
  v132 = sub_22F1CDE24(v130, a2, v214, v227, v226);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0(v131);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2308, &unk_22F779490);
  v133 = swift_initStackObject();
  *(v133 + 16) = v234;
  *(v133 + 56) = &type metadata for FlexMusicKeywordSongPadder;
  *(v133 + 64) = &off_2843EA898;
  *(v133 + 32) = 0x5064726F7779654BLL;
  v134 = (v133 + 32);
  *(v133 + 40) = 0xED00007265646461;
  v135 = sub_22F1CE148(v133, v132, v209, &unk_2843D97D8, 3);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0(v134);
  v136 = v135;
  if (v135 >> 62)
  {
    v152 = v135;
    v137 = sub_22F741A00();
    v136 = v152;
    v233 = v129;
    if (!v137)
    {
      goto LABEL_89;
    }

LABEL_79:
    v138 = v136;
    v238 = MEMORY[0x277D84F90];
    sub_22F146454(0, v137 & ~(v137 >> 63), 0);
    if (v137 < 0)
    {
      goto LABEL_142;
    }

    v139 = 0;
    v140 = v238;
    v141 = v138;
    *&v234 = v138 & 0xC000000000000001;
    v142 = v138;
    v143 = v137;
    do
    {
      if (v234)
      {
        v144 = MEMORY[0x2319016F0](v139, v141);
      }

      else
      {
        v144 = *(v141 + 8 * v139 + 32);
        swift_unknownObjectRetain();
      }

      v145 = [v144 uid];
      v146 = sub_22F740E20();
      v148 = v147;
      swift_unknownObjectRelease();

      v238 = v140;
      v150 = *(v140 + 16);
      v149 = *(v140 + 24);
      if (v150 >= v149 >> 1)
      {
        sub_22F146454((v149 > 1), v150 + 1, 1);
        v140 = v238;
      }

      ++v139;
      *(v140 + 16) = v150 + 1;
      v151 = v140 + 16 * v150;
      *(v151 + 32) = v146;
      *(v151 + 40) = v148;
      isUniquelyReferenced_nonNull_native = v236;
      v141 = v142;
    }

    while (v143 != v139);

    v11 = v231;
  }

  else
  {
    v137 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v233 = v129;
    if (v137)
    {
      goto LABEL_79;
    }

LABEL_89:

    v140 = MEMORY[0x277D84F90];
  }

  v153 = v230;
  v8 = sub_22F1CE58C(v232, v140);

  swift_bridgeObjectRelease_n();
  v154 = *(&v242 + 1);
  v155 = v243;
  __swift_project_boxed_opaque_existential_1(&v241, *(&v242 + 1));
  v156 = isUniquelyReferenced_nonNull_native;
  v157 = v216;
  v158 = (v155[1])(v8, v233, 12, v156, v210, v216, v154, v155);
  if (v153)
  {

    (*(v211 + 8))(v229, v212);
    __swift_destroy_boxed_opaque_existential_0(&v241);
    __swift_destroy_boxed_opaque_existential_0(&v244);

    goto LABEL_92;
  }

  v232 = v158;
  *&v234 = 0;

  if (v208[0])
  {
    v159 = sub_22F741A00();
  }

  else
  {
    v159 = *((v222 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v160 = v236;
  if (v159)
  {
    v238 = MEMORY[0x277D84F90];
    sub_22F146454(0, v159 & ~(v159 >> 63), 0);
    if (v159 < 0)
    {
      goto LABEL_143;
    }

    v161 = 0;
    v162 = v238;
    v163 = v222 & 0xC000000000000001;
    do
    {
      if (v163)
      {
        v164 = MEMORY[0x2319016F0](v161, v222);
      }

      else
      {
        v164 = *(v222 + 8 * v161 + 32);
        swift_unknownObjectRetain();
      }

      v165 = [v164 uid];
      v166 = sub_22F740E20();
      v168 = v167;
      swift_unknownObjectRelease();

      v238 = v162;
      v170 = *(v162 + 16);
      v169 = *(v162 + 24);
      if (v170 >= v169 >> 1)
      {
        sub_22F146454((v169 > 1), v170 + 1, 1);
        v162 = v238;
      }

      ++v161;
      *(v162 + 16) = v170 + 1;
      v171 = v162 + 16 * v170;
      *(v171 + 32) = v166;
      *(v171 + 40) = v168;
      v160 = v236;
    }

    while (v159 != v161);

    v11 = v231;
  }

  else
  {

    v162 = MEMORY[0x277D84F90];
  }

  v172 = v232;

  v174 = sub_22F1515F8(v173);

  MEMORY[0x28223BE20](v175);
  v208[-2] = v174;
  v208[-1] = v162;
  v176 = v234;
  sub_22F3ED474(v233, sub_22F1D0390);
  v8 = v176;
  v178 = v177;

  v179 = *(&v242 + 1);
  v180 = v243;
  __swift_project_boxed_opaque_existential_1(&v241, *(&v242 + 1));
  v181 = v160;
  v182 = v213;
  v183 = (v180[2])(v178, 12, v181, v210, v213, v179, v180);
  *&v234 = v176;
  if (v176)
  {

    (*(v211 + 8))(v229, v212);
    __swift_destroy_boxed_opaque_existential_0(&v241);
    __swift_destroy_boxed_opaque_existential_0(&v244);

    return v8;
  }

  v184 = v183;

  v185 = MEMORY[0x277D84F90];
  v238 = MEMORY[0x277D84F90];
  v186 = *(v172 + 16);
  if (!v186)
  {
    v236 = MEMORY[0x277D84F90];
    v189 = v184;
    goto LABEL_123;
  }

  v187 = 0;
  v188 = v172 + 40;
  v236 = MEMORY[0x277D84F90];
  v189 = v184;
  v233 = v188;
  while (2)
  {
    v190 = (v188 + 16 * v187);
    v191 = v187;
    while (2)
    {
      if (v191 >= v186)
      {
        __break(1u);
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      v187 = v191 + 1;
      if (__OFADD__(v191, 1))
      {
        goto LABEL_139;
      }

      if (!*(v237 + 16))
      {
LABEL_113:
        ++v191;
        v190 += 2;
        if (v187 == v186)
        {
          goto LABEL_123;
        }

        continue;
      }

      break;
    }

    v192 = *(v190 - 1);
    v193 = *v190;

    sub_22F1229E8(v192, v193);
    if ((v194 & 1) == 0)
    {

      goto LABEL_113;
    }

    swift_unknownObjectRetain();

    MEMORY[0x231900D00](v195);
    if (*((v238 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v238 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22F7411C0();
    }

    sub_22F741220();
    v236 = v238;
    v188 = v233;
    if (v187 != v186)
    {
      continue;
    }

    break;
  }

LABEL_123:

  v238 = v185;
  v196 = *(v189 + 16);
  if (!v196)
  {
LABEL_135:

    v205 = type metadata accessor for FlexMusicCuration();
    v206 = objc_allocWithZone(v205);
    *&v206[OBJC_IVAR___PGFlexMusicCuration_curatorVersion] = 14;
    *&v206[OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions] = v236;
    *&v206[OBJC_IVAR___PGFlexMusicCuration_secondarySongSuggestions] = v185;
    v240.receiver = v206;
    v240.super_class = v205;
    v8 = objc_msgSendSuper2(&v240, sel_init);
    v207 = v234;
    sub_22F7416A0();
    if (v207)
    {

      (*(v211 + 8))(v229, v212);
      __swift_destroy_boxed_opaque_existential_0(&v241);
      __swift_destroy_boxed_opaque_existential_0(&v244);

LABEL_92:
    }

    else
    {
      sub_22F1B2BBC(0);

      (*(v211 + 8))(v229, v212);
      __swift_destroy_boxed_opaque_existential_0(&v241);
      __swift_destroy_boxed_opaque_existential_0(&v244);
    }

    return v8;
  }

  v197 = 0;
  v198 = v189 + 40;
  v185 = MEMORY[0x277D84F90];
  v233 = (v189 + 40);
LABEL_125:
  v199 = (v198 + 16 * v197);
  v200 = v197;
  while (v200 < v196)
  {
    v197 = v200 + 1;
    if (__OFADD__(v200, 1))
    {
      goto LABEL_141;
    }

    if (*(v237 + 16))
    {
      v201 = *(v199 - 1);
      v202 = *v199;

      sub_22F1229E8(v201, v202);
      if (v203)
      {
        swift_unknownObjectRetain();

        MEMORY[0x231900D00](v204);
        if (*((v238 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v238 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22F7411C0();
        }

        sub_22F741220();
        v185 = v238;
        v198 = v233;
        if (v197 != v196)
        {
          goto LABEL_125;
        }

        goto LABEL_135;
      }
    }

    ++v200;
    v199 += 2;
    if (v197 == v196)
    {
      goto LABEL_135;
    }
  }

LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

unint64_t sub_22F1D033C()
{
  result = qword_27DAB22F0;
  if (!qword_27DAB22F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB22F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlexRegionLanguageScore(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FlexRegionLanguageScore(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_22F1D0410()
{
  result = qword_27DAB2310;
  if (!qword_27DAB2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2310);
  }

  return result;
}

unint64_t sub_22F1D0488()
{
  v1 = 0x6C706D4920746F4ELL;
  v2 = 0x73676E6F53206F4ELL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

_WORD *sub_22F1D05E4()
{
  v1 = type metadata accessor for Song(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v54 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v54 - v10;
  v12 = sub_22F1D0C98(v9);
  if (!v0)
  {
    v13 = v12;
    v55 = v7;
    v56 = v4;
    v57 = v2;
    v54 = 0;
    v14 = v12[2];
    if (v14)
    {
      v62 = MEMORY[0x277D84F90];
      sub_22F146514(0, v14, 0);
      v15 = v62;
      v16 = v14 - 1;
      v17 = 4;
      v18 = v57;
      while (1)
      {
        memcpy(v61, &v13[v17], 0x128uLL);
        memcpy(v60, &v13[v17], sizeof(v60));
        sub_22F18C4EC(v61, &v59);
        Song.init(_:)(v60);
        v62 = v15;
        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_22F146514((v19 > 1), v20 + 1, 1);
          v18 = v57;
          v15 = v62;
        }

        *(v15 + 16) = v20 + 1;
        sub_22F15CB04(v11, v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 9) * v20);
        if (!v16)
        {
          break;
        }

        --v16;
        v17 += 37;
      }
    }

    else
    {

      v15 = MEMORY[0x277D84F90];
    }

    v21 = v55;
    v2 = v56;
    v22 = *(v15 + 16);
    if (v22)
    {
      v23 = 0;
      v24 = MEMORY[0x277D84F90];
      do
      {
        if (v23 >= *(v15 + 16))
        {
          __break(1u);
LABEL_41:
          swift_once();
LABEL_26:
          v39 = sub_22F740B90();
          __swift_project_value_buffer(v39, qword_2810B4D90);
          v2 = v24;
          v40 = sub_22F740B70();
          v41 = sub_22F7415D0();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v61[0] = v43;
            *v42 = 136315138;
            v44 = MusicCuration.description.getter();
            v46 = sub_22F145F20(v44, v45, v61);

            *(v42 + 4) = v46;
            _os_log_impl(&dword_22F0FC000, v40, v41, "[SpecificationBasedMusicCurator] musicCuration: %s", v42, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v43);
            MEMORY[0x2319033A0](v43, -1, -1);
            MEMORY[0x2319033A0](v42, -1, -1);
          }

          return v2;
        }

        v25 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v26 = *(v57 + 9);
        sub_22F15CAA0(v15 + v25 + v26 * v23, v21);
        v27 = *(v21 + 72);
        if (v27 != 2 && (v27 & 1) != 0)
        {
          sub_22F15CBD8(v21);
        }

        else
        {
          sub_22F15CB04(v21, v2);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v61[0] = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22F146514(0, v24[2] + 1, 1);
            v24 = v61[0];
          }

          v30 = v24[2];
          v29 = v24[3];
          if (v30 >= v29 >> 1)
          {
            sub_22F146514((v29 > 1), v30 + 1, 1);
            v24 = v61[0];
          }

          v24[2] = v30 + 1;
          v31 = v24 + v25 + v30 * v26;
          v2 = v56;
          sub_22F15CB04(v56, v31);
          v21 = v55;
        }

        ++v23;
      }

      while (v22 != v23);

      v32 = v24[2];
      if (v32)
      {
        if (v32 >= 0xA)
        {
          sub_22F10AB68(v24, v24 + v25, 0, 0x13uLL);
          v34 = v33;

          v24 = v34;
        }

        v35 = MEMORY[0x277D84F90];
        v36 = type metadata accessor for MusicCuration();
        v37 = objc_allocWithZone(v36);
        *&v37[OBJC_IVAR___PGMusicCuration_curatorVersion] = 2;
        *&v37[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions] = v24;
        *&v37[OBJC_IVAR___PGMusicCuration_musicForYou] = v35;
        *&v37[OBJC_IVAR___PGMusicCuration_musicForLocation] = v35;
        *&v37[OBJC_IVAR___PGMusicCuration_musicForTime] = v35;
        *&v37[OBJC_IVAR___PGMusicCuration_musicForPerformer] = v35;
        v38 = &v37[OBJC_IVAR___PGMusicCuration_musicCurationInfo];
        *v38 = v35;
        *(v38 + 1) = 0;
        *(v38 + 2) = 0;
        *&v37[OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo] = v35;
        v58.receiver = v37;
        v58.super_class = v36;
        v24 = objc_msgSendSuper2(&v58, sel_init);
        if (qword_2810A9460 == -1)
        {
          goto LABEL_26;
        }

        goto LABEL_41;
      }

      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      v51 = sub_22F740B90();
      __swift_project_value_buffer(v51, qword_2810B4D90);
      v48 = sub_22F740B70();
      v49 = sub_22F7415E0();
      if (os_log_type_enabled(v48, v49))
      {
        v2 = swift_slowAlloc();
        *v2 = 0;
        v50 = "[SpecificationBasedMusicCurator] No clean songs within song search results";
        goto LABEL_37;
      }
    }

    else
    {

      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      v47 = sub_22F740B90();
      __swift_project_value_buffer(v47, qword_2810B4D90);
      v48 = sub_22F740B70();
      v49 = sub_22F7415E0();
      if (os_log_type_enabled(v48, v49))
      {
        v2 = swift_slowAlloc();
        *v2 = 0;
        v50 = "[SpecificationBasedMusicCurator] No songs found from search results";
LABEL_37:
        _os_log_impl(&dword_22F0FC000, v48, v49, v50, v2, 2u);
        MEMORY[0x2319033A0](v2, -1, -1);
      }
    }

    sub_22F1D2050();
    swift_allocError();
    *v52 = 3;
    swift_willThrow();
  }

  return v2;
}

void *sub_22F1D0C98(__n128 a1)
{
  v3 = v2;
  v4 = v1;
  v33 = 0;
  v34 = 0xE000000000000000;
  v5 = (v1 + OBJC_IVAR___PGSpecificationBasedMusicCurator_curationSpecification);
  v6 = *(v1 + OBJC_IVAR___PGSpecificationBasedMusicCurator_curationSpecification);
  if (v6[2])
  {
    v7 = v6[5];
    v32[0] = v6[4];
    v32[1] = v7;
    swift_bridgeObjectRetain_n();
    MEMORY[0x231900B10](32, 0xE100000000000000);

    MEMORY[0x231900B10](v32[0], v7);
  }

  v8 = v5[1];
  if (v8[2])
  {
    v9 = v8[4];
    v10 = v8[5];

    MEMORY[0x231900B10](v9, v10);
  }

  v12 = v33;
  v11 = v34;
  if (sub_22F740F10() > 0)
  {
    v13 = 1;
    goto LABEL_12;
  }

  v14 = v5[2];
  if (v14[2])
  {
    v13 = 3;
LABEL_11:
    v12 = v14[4];
    v15 = v14[5];

    v11 = v15;
    goto LABEL_12;
  }

  v14 = v5[3];
  if (v14[2])
  {
    v13 = 4;
    goto LABEL_11;
  }

  v13 = 0;
LABEL_12:
  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v16 = sub_22F740B90();
  __swift_project_value_buffer(v16, qword_2810B4D90);

  v17 = sub_22F740B70();
  v18 = sub_22F7415C0();
  if (os_log_type_enabled(v17, v18))
  {
    v35 = v4;
    v19 = v3;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_22F145F20(v12, v11, v32);
    _os_log_impl(&dword_22F0FC000, v17, v18, "[SpecificationBasedMusicCurator] Using legacy search term: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x2319033A0](v21, -1, -1);
    v22 = v20;
    v3 = v19;
    MEMORY[0x2319033A0](v22, -1, -1);
  }

  v23 = sub_22F1D10B0(v12, v11, v13);

  if (!v3)
  {

    v24 = sub_22F740B70();
    v25 = sub_22F7415D0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32[0] = v27;
      *v26 = 136315138;
      v28 = MEMORY[0x231900D40](v23, &type metadata for MusicKitCatalogSong);
      v30 = sub_22F145F20(v28, v29, v32);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_22F0FC000, v24, v25, "[SpecificationBasedMusicCurator] legacySearchFoundSongs: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x2319033A0](v27, -1, -1);
      MEMORY[0x2319033A0](v26, -1, -1);
    }
  }

  return v23;
}

void *sub_22F1D10B0(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v8 = sub_22F740C00();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F740BF0();
  v11 = sub_22F22FB24(v10, 0);
  v12 = v4;
  if (!v4)
  {
    v13 = v11;
    v105 = 0;
    v14 = dispatch_group_create();
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    v16 = v15 + 16;
    *(v15 + 24) = -1;
    dispatch_group_enter(v14);
    v118 = a1;
    if (a3 > 1u)
    {
      v104 = v15;
      if (a3 == 2)
      {
        v102 = v3;
        v38 = *(&v3[2].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
        v114 = *(&v3->isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
        v115 = v38;
        v116 = *(&v3[4].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
        v117 = *(&v3[6].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
        v39 = objc_opt_self();
        sub_22F1D20B0(&v114, &v110);
        v40 = [v39 ignoreProgress];
        v41 = swift_allocObject();
        *(v41 + 16) = v15;
        *(v41 + 24) = v14;
        v42 = qword_2810A9440;

        v43 = v14;
        if (v42 != -1)
        {
          swift_once();
        }

        v103 = v15 + 16;
        v44 = sub_22F740B90();
        __swift_project_value_buffer(v44, qword_2810B4D48);

        v45 = sub_22F740B70();
        v46 = sub_22F7415C0();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v101 = v40;
          v48 = v47;
          v49 = v14;
          v50 = v13;
          v51 = swift_slowAlloc();
          *&v110 = v51;
          *v48 = 136315138;
          v52 = v118;
          *(v48 + 4) = sub_22F145F20(v118, a2, &v110);
          _os_log_impl(&dword_22F0FC000, v45, v46, "[MemoriesMusic] Search for songs by artist: '%s'", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v51);
          v53 = v51;
          v13 = v50;
          v14 = v49;
          v15 = v104;
          MEMORY[0x2319033A0](v53, -1, -1);
          v54 = v48;
          v40 = v101;
          MEMORY[0x2319033A0](v54, -1, -1);
        }

        else
        {

          v52 = v118;
        }

        v110 = v114;
        v111 = v115;
        v112 = v116;
        v113 = v117;

        sub_22F231A34(v52, a2, &v110, v13, sub_22F1D21DC, v41);

        sub_22F1D210C(&v114);
        v3 = v102;
        v16 = v103;
      }

      else if (a3 == 3)
      {
        v17 = *(&v3[2].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
        v114 = *(&v3->isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
        v115 = v17;
        v116 = *(&v3[4].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
        v117 = *(&v3[6].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
        v18 = objc_opt_self();
        sub_22F1D20B0(&v114, &v110);
        v19 = [v18 ignoreProgress];
        v20 = swift_allocObject();
        *(v20 + 16) = v15;
        *(v20 + 24) = v14;
        v21 = qword_2810A9440;

        v22 = v14;
        if (v21 != -1)
        {
          swift_once();
        }

        v23 = sub_22F740B90();
        __swift_project_value_buffer(v23, qword_2810B4D48);

        v24 = sub_22F740B70();
        v25 = sub_22F7415C0();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v103 = v15 + 16;
          v102 = v14;
          v27 = v13;
          v28 = v26;
          v29 = v19;
          v30 = swift_slowAlloc();
          *&v110 = v30;
          *v28 = 136315138;
          v31 = v118;
          *(v28 + 4) = sub_22F145F20(v118, a2, &v110);
          _os_log_impl(&dword_22F0FC000, v24, v25, "[MemoriesMusic] Search for songs with genre: '%s'", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v30);
          v32 = v30;
          v19 = v29;
          MEMORY[0x2319033A0](v32, -1, -1);
          v33 = v28;
          v13 = v27;
          v14 = v102;
          MEMORY[0x2319033A0](v33, -1, -1);
        }

        else
        {

          v31 = v118;
        }

        v110 = v114;
        v111 = v115;
        v112 = v116;
        v113 = v117;

        sub_22F233C0C(v31, a2, &v110, v13, sub_22F1D2268, v20);
LABEL_30:

        sub_22F1D210C(&v114);
        v15 = v104;
LABEL_31:
        sub_22F741620();
        swift_beginAccess();
        v78 = *(v15 + 24);
        if (v78 == 255)
        {
          sub_22F1D2050();
          v12 = swift_allocError();
          *v85 = 2;
          swift_willThrow();
LABEL_39:

          return v12;
        }

        v12 = *(v15 + 16);
        if (v78)
        {
          sub_22F1D2160(*(v15 + 16), *(v15 + 24));
          sub_22F1D2178(v12, 1);
          if (qword_2810A9460 != -1)
          {
            swift_once();
          }

          v79 = sub_22F740B90();
          __swift_project_value_buffer(v79, qword_2810B4D90);

          v80 = sub_22F740B70();
          v81 = sub_22F7415E0();

          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            v102 = v14;
            v83 = v82;
            v84 = swift_slowAlloc();
            *&v110 = v84;
            *v83 = 136315138;
            *(v83 + 4) = sub_22F145F20(v118, a2, &v110);
            _os_log_impl(&dword_22F0FC000, v80, v81, "[SpecificationBasedMusicCurator] Failed search songs request for the search term '%s'", v83, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v84);
            MEMORY[0x2319033A0](v84, -1, -1);
            v14 = v102;
            MEMORY[0x2319033A0](v83, -1, -1);
          }

          swift_willThrow();
          sub_22F1D2184(v12, v78);
          goto LABEL_39;
        }

        v86 = v12[2];
        sub_22F1D2160(*(v15 + 16), *(v15 + 24));
        sub_22F1D2178(v12, 0);
        if (v86)
        {
          if (qword_2810A9460 != -1)
          {
            swift_once();
          }

          v87 = sub_22F740B90();
          __swift_project_value_buffer(v87, qword_2810B4D90);

          sub_22F1D2160(v12, v78);
          v88 = sub_22F740B70();
          v89 = sub_22F7415C0();

          if (os_log_type_enabled(v88, v89))
          {
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v103 = v13;
            v92 = v91;
            *&v110 = v91;
            *v90 = 134218242;
            *(v90 + 4) = v12[2];
            sub_22F1D2184(v12, v78);
            *(v90 + 12) = 2080;
            *(v90 + 14) = sub_22F145F20(v118, a2, &v110);
            _os_log_impl(&dword_22F0FC000, v88, v89, "[SpecificationBasedMusicCurator] Found %ld songs for the search term '%s'", v90, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v92);
            MEMORY[0x2319033A0](v92, -1, -1);
            v93 = v90;
LABEL_49:
            MEMORY[0x2319033A0](v93, -1, -1);

            sub_22F1D2184(v12, v78);

LABEL_52:

            return v12;
          }

          sub_22F1D2184(v12, v78);
        }

        else
        {
          if (qword_2810A9460 != -1)
          {
            swift_once();
          }

          v94 = sub_22F740B90();
          __swift_project_value_buffer(v94, qword_2810B4D90);

          v88 = sub_22F740B70();
          v95 = sub_22F7415E0();

          if (os_log_type_enabled(v88, v95))
          {
            v96 = swift_slowAlloc();
            v103 = v13;
            v97 = v96;
            v98 = swift_slowAlloc();
            *&v110 = v98;
            *v97 = 136315138;
            *(v97 + 4) = sub_22F145F20(v118, a2, &v110);
            _os_log_impl(&dword_22F0FC000, v88, v95, "[SpecificationBasedMusicCurator] Did not find any songs in the Music catalog for the search '%s'.", v97, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v98);
            MEMORY[0x2319033A0](v98, -1, -1);
            v93 = v97;
            goto LABEL_49;
          }
        }

        sub_22F1D2184(v12, v78);

        goto LABEL_52;
      }

      v62 = *(&v3[2].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v114 = *(&v3->isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v115 = v62;
      v116 = *(&v3[4].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v117 = *(&v3[6].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v63 = objc_opt_self();
      sub_22F1D20B0(&v114, &v110);
      v19 = [v63 ignoreProgress];
      v64 = swift_allocObject();
      *(v64 + 16) = v15;
      *(v64 + 24) = v14;
      v65 = qword_2810A9440;

      v66 = v14;
      if (v65 != -1)
      {
        swift_once();
      }

      v67 = sub_22F740B90();
      __swift_project_value_buffer(v67, qword_2810B4D48);

      v68 = sub_22F740B70();
      v69 = sub_22F7415C0();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v103 = v16;
        v102 = v14;
        v71 = v13;
        v72 = v70;
        v73 = v19;
        v74 = swift_slowAlloc();
        *&v110 = v74;
        *v72 = 136315138;
        v75 = v118;
        *(v72 + 4) = sub_22F145F20(v118, a2, &v110);
        _os_log_impl(&dword_22F0FC000, v68, v69, "[MemoriesMusic] Search for songs with mood: '%s'", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v74);
        v76 = v74;
        v19 = v73;
        MEMORY[0x2319033A0](v76, -1, -1);
        v77 = v72;
        v13 = v71;
        v14 = v102;
        MEMORY[0x2319033A0](v77, -1, -1);
      }

      else
      {

        v75 = v118;
      }

      v110 = v114;
      v111 = v115;
      v112 = v116;
      v113 = v117;

      sub_22F232404(v75, a2, &v110, v13, sub_22F1D2268, v64);
      goto LABEL_30;
    }

    if (a3)
    {
      v55 = *(&v3[2].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v110 = *(&v3->isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v111 = v55;
      v57 = *(&v3->isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v56 = *(&v3[2].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v112 = *(&v3[4].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v113 = *(&v3[6].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v106 = v57;
      v58 = *(&v3[4].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v107 = v56;
      v108 = v58;
      v109 = *(&v3[6].isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
      v59 = objc_opt_self();
      sub_22F1D20B0(&v110, &v114);
      v60 = [v59 ignoreProgress];

      v61 = v14;
      sub_22F22FDFC(a1, a2, &v106, v60, v13, v15, v61);

      v114 = v106;
      v115 = v107;
      v116 = v108;
      v117 = v109;
      sub_22F1D210C(&v114);
      goto LABEL_31;
    }

    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v34 = sub_22F740B90();
    __swift_project_value_buffer(v34, qword_2810B4D90);
    v35 = sub_22F740B70();
    v36 = sub_22F7415C0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_22F0FC000, v35, v36, "[Warning-Music][SpecificationBasedMusicCurator] No curation to do since searchType is none. Expect curation to get done downstream.", v37, 2u);
      MEMORY[0x2319033A0](v37, -1, -1);
    }

    dispatch_group_leave(v14);

    return MEMORY[0x277D84F90];
  }

  return v12;
}

void sub_22F1D1EF4(void *a1, char a2, uint64_t a3, NSObject *a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a1;
  v9 = *(a3 + 24);
  a2 &= 1u;
  *(a3 + 24) = a2;
  sub_22F1D2184(v8, v9);
  sub_22F1D2178(a1, a2);
  dispatch_group_leave(a4);
}

unint64_t sub_22F1D2050()
{
  result = qword_27DAB2330;
  if (!qword_27DAB2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2330);
  }

  return result;
}

double sub_22F1D20A4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

double sub_22F1D2160(void *result, char a2)
{
  if (a2 != -1)
  {
    return sub_22F1D2178(result, a2 & 1);
  }

  return v2;
}

double sub_22F1D2178(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

double sub_22F1D2184(void *a1, char a2)
{
  if (a2 != -1)
  {
    return sub_22F1D20A4(a1, a2 & 1);
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_22F1D2214()
{
  result = qword_27DAB2338;
  if (!qword_27DAB2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2338);
  }

  return result;
}

unint64_t sub_22F1D226C(unint64_t a1, unint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 0;
  if (v4)
  {
    v6 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v6) = 1;
    }

    v7 = 4 << v6;
    v8 = 15;
    do
    {
      v9 = v8 & 0xC;
      v10 = v8;
      if (v9 == v7)
      {
        v14 = v8;
        v10 = sub_22F1D244C(v8, a1, a2);
        v8 = v14;
      }

      v11 = v10 >> 16;
      if (v10 >> 16 >= v4)
      {
        __break(1u);
LABEL_27:
        __break(1u);
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v17 = v8;
        v13 = sub_22F740FC0();
        v8 = v17;
        if (v9 != v7)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v18[0] = a1;
          v18[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          v12 = v18;
        }

        else
        {
          v12 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((a1 & 0x1000000000000000) == 0)
          {
            v16 = v8;
            v12 = sub_22F741B80();
            v8 = v16;
          }
        }

        v13 = *(v12 + v11);
        if (v9 != v7)
        {
LABEL_19:
          if ((a2 & 0x1000000000000000) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_20;
        }
      }

      v8 = sub_22F1D244C(v8, a1, a2);
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_8:
        v8 = (v8 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_9;
      }

LABEL_20:
      if (v4 <= v8 >> 16)
      {
        goto LABEL_27;
      }

      v8 = sub_22F740FA0();
LABEL_9:
      v5 ^= (v5 << 6) + (v5 >> 2) + v13 + 2654435769u;
    }

    while (4 * v4 != v8 >> 14);
  }

  return v5;
}

unint64_t sub_22F1D244C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22F740FD0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x231900B60](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void static ImportantEntitiesTuning.evaluateImportantEntitiesInferenceAcrossParameters(withDetectionType:inGraph:truePositiveImportantEntitiesLocalIdentifiers:trueNegativeImportantEntitiesLocalIdentifiers:progressReporter:sendToCoreAnalytics:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = a1;
  sub_22F741690();
  if (v6)
  {
    return;
  }

  if (v11 == 1)
  {
    v12 = _s11PhotosGraph23ImportantEntitiesTuningC46getChildrenPositiveAndNegativeLocalIdentifiers02inB004truehcdkL00njcdkL0ShySSG_AHtSo7PGGraphC_A2HtFZ_0(a2, a3, a4);
  }

  else
  {
    v12 = _s11PhotosGraph23ImportantEntitiesTuningC41getPetPositiveAndNegativeLocalIdentifiers02inB004truehcdkL00njcdkL0ShySSG_AHtSo7PGGraphC_A2HtFZ_0(a2, a3, a4);
  }

  v14 = v12;
  v15 = v13;
  sub_22F741690();
  v16 = objc_opt_self();
  v17 = v16;
  v18 = qword_22F7796B0[v11 == 1];
  v19 = &selRef_usersChildrenInferenceRecencyThresholdFromLatestMomentDateYears;
  if (v11 != 1)
  {
    v19 = &selRef_usersPetsInferenceRecencyThresholdFromLatestMomentDateYears;
  }

  v20 = *v19;
  if (v11 == 1)
  {
    v21 = 15;
  }

  else
  {
    v21 = 10;
  }

  v108 = v21;
  if (v11 == 1)
  {
    v22 = &selRef_usersChildrenInferenceMinimumLifespanYears;
  }

  else
  {
    v22 = &selRef_usersPetsInferenceMinimumLifespanYears;
  }

  v23 = 0x800000022F78F140;
  v24 = 0x7265666E49746570;
  if (v11 == 1)
  {
    v24 = 0xD000000000000011;
  }

  v124 = v24;
  if (v11 != 1)
  {
    v23 = 0xEC00000065636E65;
  }

  v107 = v23;
  [v16 v20];
  v26 = v25;
  [v17 *v22];
  v28 = v27 * 31557600.0;
  v29 = v26 * 31557600.0;
  *(&v133 + 1) = GEOLocationCoordinate2DMake;
  v134 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v131 = 1107296256;
  v132 = sub_22F1D3828;
  *&v133 = &block_descriptor_3;
  v30 = _Block_copy(&aBlock);
  v104 = objc_opt_self();
  v121 = [v104 progressReporterWithProgressBlock_];
  _Block_release(v30);

  type metadata accessor for ImportantEntitiesTuningEventFactory();
  v106 = a6;
  v31 = v15;
  inited = swift_initStackObject();
  *(inited + 16) = a2;
  *(inited + 24) = 0;
  type metadata accessor for ImportantEntitiesTuningSubject();
  v33 = swift_initStackObject();
  v105 = v11;
  *(v33 + 40) = v11;
  *(v33 + 16) = a2;
  *(v33 + 24) = v14;
  *(v33 + 32) = v31;
  type metadata accessor for ImportantEntitiesTuningParameter();
  v34 = v14;
  v35 = swift_initStackObject();
  *(v35 + 16) = 0xD000000000000010;
  *(v35 + 24) = 0x800000022F7912E0;
  *(v35 + 32) = v26 * 31557600.0;
  *(v35 + 40) = v28;
  *(v35 + 48) = v108;
  *(v35 + 56) = v18;
  *(v35 + 64) = xmmword_22F7796C0;
  type metadata accessor for ImportantEntitiesTuningEvaluator();
  v36 = swift_allocObject();
  v36[2] = v124;
  v36[3] = v107;
  v36[4] = 0xD000000000000010;
  v36[5] = 0x800000022F7912E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2340, &unk_22F7796D0);
  swift_initStackObject();
  v37 = a2;
  v110 = v34;

  v109 = v31;

  v38 = v121;
  v39 = sub_22F1D51B4(inited, v38);
  v103 = v37;
  v113 = inited;
  v117 = v38;
  v115 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1560, &qword_22F772170);
  swift_initStackObject();
  v125 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v40 = *(v39 + 16);
  if (v40 >> 62)
  {
    v41 = sub_22F741A00();
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v41)
  {
    v119 = MEMORY[0x277D84F90];
    v48 = v124;
LABEL_35:

    sub_22F163B1C(v119, &v126);
    if (v106)
    {
      v49 = v128;
      v50 = v129;
      __swift_project_boxed_opaque_existential_1(&v126, v128);
      v51 = *((*(v50 + 8))(v49, v50) + 16);

      if (v51)
      {
        v52 = sub_22F740DF0();
        v53 = v128;
        v54 = v129;
        __swift_project_boxed_opaque_existential_1(&v126, v128);
        (*(v54 + 8))(v53, v54);
        sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
        v55 = sub_22F740C80();

        AnalyticsSendEvent();
      }
    }

    sub_22F7416A0();

    sub_22F100260(&v126, &aBlock);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2348, &unk_22F7796E0);
    type metadata accessor for ImportantEntitiesTuningMetrics();
    swift_dynamicCast();
    sub_22F1D9CAC(v126);

    swift_setDeallocating();
    v56 = *(v113 + 16);

    v57 = 0.2;
    sub_22F741690();
    v58 = [objc_allocWithZone(PGRemoteConfiguration) init];
    v59 = @"com.apple.photos.importantentitiesinference.childrenInferenceSimulationParameters";
    v60 = sub_22F741160();
    v61 = [v58 arrayValueForKey:@"com.apple.photos.importantentitiesinference.childrenInferenceSimulationParameters" withFallbackValue:v60];

    v62 = sub_22F741180();
    v63 = v62;
    v64 = *(v62 + 16);
    if (v64)
    {
      v100 = v58;
      v65 = 0;
      v98 = 0.8 / v64;
      v111 = *(v62 + 16);
      while (v65 < *(v63 + 16))
      {
        sub_22F13A100(v62 + 32 + 32 * v65, &aBlock);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
        if (swift_dynamicCast())
        {
          v66 = v126;
          if (*(v126 + 16) && (v67 = sub_22F1229E8(1701667182, 0xE400000000000000), (v68 & 1) != 0) && (sub_22F13A100(*(v66 + 56) + 32 * v67, &aBlock), (swift_dynamicCast() & 1) != 0))
          {
            v69 = v126;
            *&v126 = v29;
            *(&v126 + 1) = v28;
            v127 = v108;
            v128 = v18;
            v129 = xmmword_22F7796C0;
            sub_22F1D3FDC(v66, &v126, &aBlock);

            v70 = aBlock;
            v71 = v131;
            v72 = v132;
            v120 = v133;
            v73 = v134;
            *(&v133 + 1) = GEOLocationCoordinate2DMake;
            v134 = 0;
            aBlock = MEMORY[0x277D85DD0];
            v131 = 1107296256;
            v132 = sub_22F1D3828;
            *&v133 = &block_descriptor_3;
            v74 = _Block_copy(&aBlock);
            v122 = [v104 progressReporterWithProgressBlock_];
            _Block_release(v74);

            v75 = swift_initStackObject();
            *(v75 + 16) = v103;
            *(v75 + 24) = 0;
            v76 = swift_initStackObject();
            *(v76 + 40) = v105;
            *(v76 + 16) = v103;
            *(v76 + 24) = v34;
            *(v76 + 32) = v109;
            v77 = swift_initStackObject();
            *(v77 + 16) = v69;
            *(v77 + 32) = v70;
            *(v77 + 40) = v71;
            *(v77 + 48) = v72;
            *(v77 + 56) = v120;
            v116 = v77;
            *(v77 + 72) = v73;
            v78 = swift_allocObject();
            *(v78 + 16) = v48;
            *(v78 + 24) = v107;
            *(v78 + 32) = v69;
            swift_initStackObject();
            v101 = v103;

            v79 = v122;
            v102 = v75;
            v80 = v75;
            v81 = v79;
            v82 = sub_22F1D51B4(v80, v79);
            swift_allocObject();
            v135 = MEMORY[0x277D84F90];
            swift_beginAccess();
            v83 = *(v82 + 16);
            if (v83 >> 62)
            {
              v84 = sub_22F741A00();
            }

            else
            {
              v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v123 = v81;

            if (v84)
            {
              v85 = 0;
              v112 = v83 & 0xFFFFFFFFFFFFFF8;
              v114 = v83 & 0xC000000000000001;
              while (1)
              {
                if (v114)
                {
                  v86 = v83;
                  MEMORY[0x2319016F0](v85, v83);
                  v87 = v85 + 1;
                  if (__OFADD__(v85, 1))
                  {
                    goto LABEL_80;
                  }
                }

                else
                {
                  if (v85 >= *(v112 + 16))
                  {
                    goto LABEL_81;
                  }

                  v86 = v83;

                  v87 = v85 + 1;
                  if (__OFADD__(v85, 1))
                  {
                    goto LABEL_80;
                  }
                }

                v88 = objc_autoreleasePoolPush();
                sub_22F165D18(v116);

                MEMORY[0x231900D00](v89);
                if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_22F7411C0();
                }

                sub_22F741220();
                v118 = v135;
                if (*(v82 + 16) >> 62)
                {
                  sub_22F741A00();
                }

                sub_22F741690();

                objc_autoreleasePoolPop(v88);

                ++v85;
                v47 = v87 == v84;
                v34 = v110;
                v48 = v124;
                v83 = v86;
                if (v47)
                {
                  goto LABEL_68;
                }
              }
            }

            v118 = MEMORY[0x277D84F90];
LABEL_68:

            sub_22F163B1C(v118, &v126);
            if (v106)
            {
              v90 = v128;
              v91 = v129;
              __swift_project_boxed_opaque_existential_1(&v126, v128);
              v92 = *((*(v91 + 8))(v90, v91) + 16);

              if (v92)
              {
                v93 = sub_22F740DF0();
                v94 = v128;
                v95 = v129;
                __swift_project_boxed_opaque_existential_1(&v126, v128);
                (*(v95 + 8))(v94, v95);
                sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
                v96 = sub_22F740C80();

                AnalyticsSendEvent();
              }
            }

            sub_22F7416A0();

            sub_22F100260(&v126, &aBlock);
            swift_setDeallocating();
            swift_deallocClassInstance();

            swift_dynamicCast();
            sub_22F1D9CAC(v126);

            swift_setDeallocating();
            v97 = *(v102 + 16);

            v57 = v98 + v57;
            sub_22F741690();
            v63 = v62;
            v64 = v111;
          }

          else
          {

            v64 = v111;
          }
        }

        if (++v65 == v64)
        {

          v58 = v100;
          goto LABEL_75;
        }
      }

      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
    }

    else
    {

LABEL_75:

      sub_22F741690();
    }

    return;
  }

  v42 = 0;
  while ((v40 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2319016F0](v42, v40);
    v43 = v115;
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_76;
    }

LABEL_24:
    v45 = objc_autoreleasePoolPush();
    sub_22F165D18(v43);

    MEMORY[0x231900D00](v46);
    if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22F7411C0();
    }

    sub_22F741220();
    v119 = v125;
    if (*(v39 + 16) >> 62)
    {
      sub_22F741A00();
    }

    sub_22F741690();

    objc_autoreleasePoolPop(v45);

    ++v42;
    v47 = v44 == v41;
    v48 = v124;
    if (v47)
    {
      goto LABEL_35;
    }
  }

  v43 = v115;
  if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_77;
  }

  v44 = v42 + 1;
  if (!__OFADD__(v42, 1))
  {
    goto LABEL_24;
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
}

uint64_t sub_22F1D3828(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t static ImportantEntitiesTuning.evaluateImportantEntitiesInference(withDetectionType:inGraph:withParameter:andParameterName:truePositiveImportantEntitiesLocalIdentifiers:trueNegativeImportantEntitiesLocalIdentifiers:coreAnalyticsEventName:)(unsigned __int16 a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a1;
  v14 = *a3;
  v15 = a3[1];
  v16 = a3[2];
  v51 = *(a3 + 3);
  v17 = a3[5];
  aBlock[4] = GEOLocationCoordinate2DMake;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F1D3828;
  aBlock[3] = &block_descriptor_6;
  v18 = _Block_copy(aBlock);
  v54 = [objc_opt_self() progressReporterWithProgressBlock_];
  _Block_release(v18);

  type metadata accessor for ImportantEntitiesTuningEventFactory();
  inited = swift_initStackObject();
  *(inited + 16) = a2;
  *(inited + 24) = 0;
  type metadata accessor for ImportantEntitiesTuningSubject();
  v20 = swift_initStackObject();
  *(v20 + 40) = a1;
  *(v20 + 16) = a2;
  *(v20 + 24) = a6;
  *(v20 + 32) = a7;
  v21 = a7;
  type metadata accessor for ImportantEntitiesTuningParameter();
  v22 = swift_initStackObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  *(v22 + 32) = v14;
  *(v22 + 40) = v15;
  *(v22 + 48) = v16;
  *(v22 + 56) = v51;
  *(v22 + 72) = v17;
  v23 = v13 == 1;
  if (v13 == 1)
  {
    v24 = 0xD000000000000011;
  }

  else
  {
    v24 = 0x7265666E49746570;
  }

  if (v23)
  {
    v25 = 0x800000022F78F140;
  }

  else
  {
    v25 = 0xEC00000065636E65;
  }

  type metadata accessor for ImportantEntitiesTuningEvaluator();
  v26 = swift_allocObject();
  v26[2] = v24;
  v26[3] = v25;
  v26[4] = a4;
  v26[5] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2340, &unk_22F7796D0);
  swift_initStackObject();
  v27 = a2;
  swift_bridgeObjectRetain_n();
  v49 = v27;

  v28 = v21;

  v29 = v54;
  v30 = sub_22F1D51B4(inited, v29);
  if (v55)
  {
  }

  else
  {
    v48 = inited;
    v52 = v29;
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1560, &qword_22F772170);
    swift_initStackObject();
    v59 = MEMORY[0x277D84F90];
    swift_beginAccess();
    v32 = *(v31 + 16);
    if (v32 >> 62)
    {
      goto LABEL_33;
    }

    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:

    if (v33)
    {
      v34 = 0;
      while (1)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2319016F0](v34, v32);
          v35 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v35 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            v33 = sub_22F741A00();
            goto LABEL_11;
          }
        }

        v36 = objc_autoreleasePoolPush();
        sub_22F165D18(v22);

        MEMORY[0x231900D00](v37);
        if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22F7411C0();
        }

        sub_22F741220();
        v38 = v59;
        if (*(v31 + 16) >> 62)
        {
          sub_22F741A00();
        }

        sub_22F741690();

        objc_autoreleasePoolPop(v36);

        ++v34;
        if (v35 == v33)
        {
          goto LABEL_26;
        }
      }
    }

    v38 = MEMORY[0x277D84F90];
LABEL_26:

    sub_22F163B1C(v38, &v56);
    if (a9)
    {
      v39 = v57;
      v40 = v58;
      __swift_project_boxed_opaque_existential_1(&v56, v57);
      v41 = *((*(v40 + 8))(v39, v40) + 16);

      if (v41)
      {
        v42 = sub_22F740DF0();
        v43 = v57;
        v44 = v58;
        __swift_project_boxed_opaque_existential_1(&v56, v57);
        (*(v44 + 8))(v43, v44);
        sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
        v45 = sub_22F740C80();

        AnalyticsSendEvent();
      }
    }

    sub_22F7416A0();

    sub_22F100260(&v56, aBlock);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2348, &unk_22F7796E0);
    type metadata accessor for ImportantEntitiesTuningMetrics();
    swift_dynamicCast();
    v28 = v56;
    sub_22F1D9CAC(v56);

    swift_setDeallocating();
    v47 = *(v48 + 16);
  }

  return v28;
}

uint64_t sub_22F1D3FDC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  if (*(result + 16))
  {
    result = sub_22F1229E8(0xD000000000000036, 0x800000022F791400);
    if (v11)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v5 = *&v23 * 2629800.0;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_22F1229E8(0xD000000000000036, 0x800000022F791400);
    if (v12)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v5 = v23 * 2629800.0;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_22F1229E8(0xD000000000000014, 0x800000022F791440);
    if (v13)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v6 = *&v23 * 31557600.0;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_22F1229E8(0xD000000000000014, 0x800000022F791440);
    if (v14)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v6 = v23 * 31557600.0;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_22F1229E8(0xD000000000000016, 0x800000022F791460);
    if (v15)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v7 = *&v23;
      }
    }
  }

  if (!*(v3 + 16))
  {
    goto LABEL_28;
  }

  result = sub_22F1229E8(0xD000000000000016, 0x800000022F791460);
  if ((v16 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_22F13A100(*(v3 + 56) + 32 * result, v24);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_28;
  }

  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_55:
    __break(1u);
    return result;
  }

  v7 = v23;
LABEL_28:
  if (*(v3 + 16))
  {
    result = sub_22F1229E8(0xD00000000000002FLL, 0x800000022F791480);
    if (v17)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v8 = *&v23;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_22F1229E8(0xD00000000000002FLL, 0x800000022F791480);
    if (v18)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v8 = v23;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_22F1229E8(0xD000000000000031, 0x800000022F7914B0);
    if (v19)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v9 = *&v23;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_22F1229E8(0xD000000000000031, 0x800000022F7914B0);
    if (v20)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v9 = v23;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_22F1229E8(0xD00000000000003FLL, 0x800000022F7914F0);
    if (v21)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v10 = *&v23;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_22F1229E8(0xD00000000000003FLL, 0x800000022F7914F0);
    if (v22)
    {
      sub_22F13A100(*(v3 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v10 = v23;
      }
    }
  }

  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  return result;
}