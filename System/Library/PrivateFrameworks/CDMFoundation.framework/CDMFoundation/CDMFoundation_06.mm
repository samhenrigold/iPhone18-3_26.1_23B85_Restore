uint64_t sub_1DC31FFA4(uint64_t a1, unint64_t a2, uint64_t a3, char a4, char a5)
{
  sub_1DC51514C();
  OUTLINED_FUNCTION_0();
  v63 = v9;
  v64 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v62 = v10;
  OUTLINED_FUNCTION_12();
  v11 = sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v67 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v17 = sub_1DC3990B0();
  v18 = *v17;
  v19 = v17[1];
  v20 = *(v17 + 16);
  v21 = sub_1DC296DBC();
  v66 = v16;
  sub_1DC2A2ED0(v18, v19, v20, v21, 1, v16);

  if (a4)
  {

    v22 = a1;
    if (a5)
    {
      goto LABEL_28;
    }
  }

  else
  {
    type metadata accessor for NLRouterBypassUtils();
    v23 = sub_1DC2BA4FC();
    (*(*v23 + 88))(a3);
    v25 = v24;

    if (a5)
    {
      v59 = v23;
      v60 = v11;
      v29 = 0;
      v30 = *(v25 + 16);
      v61 = MEMORY[0x1E69E7CC0];
      v31 = v25 + 48;
LABEL_6:
      for (i = (v31 + 24 * v29); ; i += 3)
      {
        if (v30 == v29)
        {

          v11 = v60;
          v22 = a1;
          v23 = v59;
          v25 = v61;
          goto LABEL_20;
        }

        if (v29 >= *(v25 + 16))
        {
          break;
        }

        v33 = *i;
        if (*i)
        {
          v34 = *(i - 1);
          v35 = *(i - 2);
          sub_1DC2A32B0(result, v27, v28);

          if (sub_1DC517E5C())
          {
            v36 = v61;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              OUTLINED_FUNCTION_78_2();
              v37 = OUTLINED_FUNCTION_31_9();
              result = sub_1DC324228(v37, v38, v39);
              v36 = v61;
            }

            v41 = *(v36 + 16);
            v40 = *(v36 + 24);
            if (v41 >= v40 >> 1)
            {
              v43 = OUTLINED_FUNCTION_26(v40);
              result = sub_1DC324228(v43, v41 + 1, 1);
              v36 = v61;
            }

            *(v36 + 16) = v41 + 1;
            v61 = v36;
            v42 = (v36 + 24 * v41);
            v42[4] = v35;
            ++v29;
            v42[5] = v34;
            v42[6] = v33;
            v31 = v25 + 48;
            goto LABEL_6;
          }
        }

        ++v29;
      }

      __break(1u);
      goto LABEL_34;
    }

    v22 = a1;
LABEL_20:
    if (*(v25 + 16) && (sub_1DC3226C4(), (v44 & 1) == 0))
    {
      v22 = (*(*v23 + 80))(v22, a2, v25);
      a2 = v45;

      if (a5)
      {
LABEL_28:
        v50 = 0;
        v52 = 0;
        goto LABEL_29;
      }
    }

    else
    {

      if (a5)
      {
        goto LABEL_28;
      }
    }
  }

  sub_1DC51515C();
  v46 = sub_1DC51513C();
  (*(v63 + 8))(v62, v64);
  if (v46 < 513)
  {
    goto LABEL_28;
  }

  result = sub_1DC51783C();
  if ((result - 0x40000000000000) >> 55 != 511)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v47 = OUTLINED_FUNCTION_46_6();
  v49 = sub_1DC303DF0(v47, v48, a2);
  v50 = MEMORY[0x1E1296060](v49);
  v52 = v51;

LABEL_29:
  sub_1DC428688(5);
  MEMORY[0x1E1296160]();

  v53 = OUTLINED_FUNCTION_15_5();
  MEMORY[0x1E1296160](v53);

  if (v52)
  {

    a2 = v52;
  }

  else
  {
    v50 = v22;
  }

  MEMORY[0x1E1296160](v50, a2);

  sub_1DC30D6EC(v54, v55, v56);
  v57 = sub_1DC51823C();
  MEMORY[0x1E1296160](v57);

  v58 = sub_1DC296DBC();
  OUTLINED_FUNCTION_68_1();

  (*(v67 + 8))(v66, v11);
  return OUTLINED_FUNCTION_63_0();
}

void sub_1DC320514()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = sub_1DC51728C();
  OUTLINED_FUNCTION_0();
  v199 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v203 = sub_1DC51724C();
  OUTLINED_FUNCTION_0();
  v198 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v13);
  v204 = sub_1DC5172AC();
  OUTLINED_FUNCTION_0();
  v217 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v216 = v16 - v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  v221 = v20;
  OUTLINED_FUNCTION_12();
  v219 = sub_1DC516AFC();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v195 - v28;
  v225 = sub_1DC516C3C();
  OUTLINED_FUNCTION_0();
  v220 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_8();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_62();
  v218 = v37;
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if ((sub_1DC332550() & 1) == 0)
  {
    goto LABEL_88;
  }

  v38 = *(v1 + *(type metadata accessor for NLRouterServiceRequest(0) + 36));
  if (!v38)
  {
    goto LABEL_88;
  }

  v205 = v2;
  v39 = v38;
  v40 = sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v41 = sub_1DC296DBC();
  sub_1DC516F0C(v40, &dword_1DC287000, v41, "QD output received and foreground app prompt is enabled. Embedding foreground app in prompt", 91, 2, MEMORY[0x1E69E7CC0]);

  v42 = v39;
  v43 = sub_1DC516D8C();

  if (!v43)
  {

    goto LABEL_88;
  }

  v197 = v34;
  v206 = v7;
  v201 = v42;
  v44 = 0;
  v215 = *(v43 + 16);
  v223 = (v220 + 16);
  v224 = 0;
  LODWORD(v212) = *MEMORY[0x1E69A9008];
  v211 = (v22 + 104);
  v210 = (v22 + 8);
  v222 = v220 + 8;
  v196 = (v220 + 32);
  v200 = MEMORY[0x1E69E7CC0];
  v45 = v218;
  v213 = v43;
  while (1)
  {
    v46 = v219;
    if (v215 == v44)
    {

      v69 = *(v200 + 2);
      if (v69)
      {
        OUTLINED_FUNCTION_22_0();
        v72 = v70 + v71;
        v219 = *(v73 + 72);
        v74 = *(v73 + 16);
        v75 = v216;
        v76 = (v217 + 32);
        v77 = MEMORY[0x1E69E7CC0];
        v78 = v204;
        do
        {
          v79 = v77;
          v80 = v207;
          v81 = OUTLINED_FUNCTION_31_0();
          v82 = v225;
          v74(v81);
          v83 = v209;
          sub_1DC516C1C();
          (*v222)(v80, v82);
          OUTLINED_FUNCTION_39(v83, 1, v78);
          if (v51)
          {
            sub_1DC28EB30(v83, &qword_1ECC7BFF8, &qword_1DC522580);
            v77 = v79;
          }

          else
          {
            v84 = *v76;
            (*v76)(v208, v83, v78);
            v77 = v79;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v90 = OUTLINED_FUNCTION_13_0();
              v77 = sub_1DC323F08(v90, v91, v92, v79);
            }

            v87 = *(v77 + 2);
            v86 = *(v77 + 3);
            if (v87 >= v86 >> 1)
            {
              v93 = OUTLINED_FUNCTION_26(v86);
              v77 = sub_1DC323F08(v93, v87 + 1, 1, v77);
            }

            *(v77 + 2) = v87 + 1;
            OUTLINED_FUNCTION_22_0();
            v84(&v77[v88 + *(v89 + 72) * v87], v208, v78);
            v75 = v216;
          }

          v72 += v219;
          v69 = (v69 - 1);
        }

        while (v69);
      }

      else
      {

        v77 = MEMORY[0x1E69E7CC0];
        v78 = v204;
        v75 = v216;
      }

      v94 = *(v77 + 2);
      v95 = v206;
      if (v94)
      {
        v96 = *(v217 + 16);
        OUTLINED_FUNCTION_24();
        v208 = v77;
        v98 = &v77[v97];
        v222 = *(v99 + 56);
        LODWORD(v225) = *MEMORY[0x1E69DAE70];
        v217 = v99;
        v219 = v99 + 80;
        v218 = v199 + 16;
        v215 = v199 + 88;
        LODWORD(v214) = *MEMORY[0x1E69DADA8];
        v212 = v199 + 96;
        v213 = v199 + 8;
        v211 = (v198 + 32);
        v100 = MEMORY[0x1E69E7CC0];
        v210 = (v198 + 8);
        v209 = xmmword_1DC522F20;
        v223 = (v99 - 8);
        v220 = (v99 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        while (1)
        {
          v101 = v221;
          v96(v221, v98, v78);
          v96(v75, v101, v78);
          v102 = OUTLINED_FUNCTION_45_2();
          v104 = v103(v102);
          if (v104 != v225)
          {
            break;
          }

          v105 = OUTLINED_FUNCTION_45_2();
          v106(v105);
          swift_projectBox();
          v107 = OUTLINED_FUNCTION_59();
          v108 = v205;
          v109(v107);
          v110 = OUTLINED_FUNCTION_59();
          v112 = v111(v110, v108);
          if (v112 != v214)
          {
            v123 = OUTLINED_FUNCTION_59();
            v124(v123, v108);

            v121 = *v223;
            goto LABEL_41;
          }

          v113 = OUTLINED_FUNCTION_59();
          v114(v113, v108);
          v115 = v202;
          v116 = v203;
          (*v211)(v202, v95, v203);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
          v117 = swift_allocObject();
          *(v117 + 16) = v209;
          *(v117 + 32) = sub_1DC51723C();
          *(v117 + 40) = v118;
          OUTLINED_FUNCTION_37();
          v119 = v115;
          v78 = v204;
          v120(v119, v116);
          (*v223)(v221, v78);
LABEL_42:
          v125 = *(v117 + 16);
          v126 = *(v100 + 2);
          v127 = v126 + v125;
          if (__OFADD__(v126, v125))
          {
            goto LABEL_91;
          }

          v128 = swift_isUniquelyReferenced_nonNull_native();
          if (!v128 || v127 > *(v100 + 3) >> 1)
          {
            if (v126 <= v127)
            {
              v129 = v126 + v125;
            }

            else
            {
              v129 = v126;
            }

            v100 = sub_1DC2ACCD4(v128, v129, 1, v100);
          }

          v95 = v206;
          v75 = v216;
          if (*(v117 + 16))
          {
            if ((*(v100 + 3) >> 1) - *(v100 + 2) < v125)
            {
              goto LABEL_93;
            }

            swift_arrayInitWithCopy();

            if (v125)
            {
              v130 = *(v100 + 2);
              v131 = __OFADD__(v130, v125);
              v132 = v130 + v125;
              if (v131)
              {
                goto LABEL_95;
              }

              *(v100 + 2) = v132;
            }
          }

          else
          {

            if (v125)
            {
              goto LABEL_92;
            }
          }

          v98 += v222;
          if (!--v94)
          {

            goto LABEL_58;
          }
        }

        v121 = *v223;
        v122 = OUTLINED_FUNCTION_45_2();
        v121(v122);
LABEL_41:
        (v121)(v221, v78);
        v117 = MEMORY[0x1E69E7CC0];
        goto LABEL_42;
      }

      v100 = MEMORY[0x1E69E7CC0];
LABEL_58:
      v134 = 0;
      v135 = *(v100 + 2);
      v136 = v100 + 40;
      v225 = MEMORY[0x1E69E7CC0];
      v223 = v100 + 40;
LABEL_59:
      v137 = &v136[16 * v134];
      while (v135 != v134)
      {
        if (v134 >= *(v100 + 2))
        {
          goto LABEL_90;
        }

        v139 = *(v137 - 1);
        v138 = *v137;
        v228 = v139;
        v229 = v138;
        MEMORY[0x1EEE9AC00](v133);
        *(&v195 - 2) = &v228;

        v140 = v224;
        v141 = sub_1DC2CF098(sub_1DC327C74, (&v195 - 4), &unk_1F57F6FE8);
        v224 = v140;
        if (v141)
        {
          v142 = v225;
          v133 = swift_isUniquelyReferenced_nonNull_native();
          v226 = v142;
          if ((v133 & 1) == 0)
          {
            OUTLINED_FUNCTION_78_2();
            v143 = OUTLINED_FUNCTION_31_9();
            v133 = sub_1DC2DF6FC(v143, v144, v145);
            v142 = v226;
          }

          v147 = *(v142 + 16);
          v146 = *(v142 + 24);
          if (v147 >= v146 >> 1)
          {
            v149 = OUTLINED_FUNCTION_26(v146);
            v133 = sub_1DC2DF6FC(v149, v147 + 1, 1);
            v142 = v226;
          }

          ++v134;
          *(v142 + 16) = v147 + 1;
          v225 = v142;
          v148 = v142 + 16 * v147;
          *(v148 + 32) = v139;
          *(v148 + 40) = v138;
          v136 = v223;
          goto LABEL_59;
        }

        v137 += 16;
        ++v134;
      }

      v153 = v225;
      if (*(v225 + 16))
      {
        LOBYTE(v226) = 9;
        sub_1DC30D6EC(v150, v151, v152);
        v228 = sub_1DC51823C();
        v229 = v154;
        v155 = OUTLINED_FUNCTION_15_5();
        MEMORY[0x1E1296160](v155);
        v156 = *(v153 + 16);
        v157 = v201;
        if (v156)
        {
          v230 = MEMORY[0x1E69E7CC0];
          v158 = sub_1DC2DF6FC(0, v156, 0);
          v161 = 0;
          v162 = v230;
          v220 = v153 + 32;
          v221 = v156;
          while (v161 < *(v153 + 16))
          {
            v163 = (v220 + 16 * v161);
            v164 = v163[1];
            v226 = *v163;
            v227 = v164;
            sub_1DC2A32B0(v158, v159, v160);

            v165 = sub_1DC517E6C();
            v166 = *(v165 + 16);
            if (v166)
            {
              v222 = v164;
              v223 = v162;
              v226 = MEMORY[0x1E69E7CC0];
              sub_1DC2DF6FC(0, v166, 0);
              v167 = v226;
              v168 = v165 + 56;
              do
              {

                OUTLINED_FUNCTION_74();
                v169 = sub_1DC517D9C();
                v171 = v170;

                v226 = v167;
                v173 = v167[2];
                v172 = v167[3];
                if (v173 >= v172 >> 1)
                {
                  v175 = OUTLINED_FUNCTION_26(v172);
                  sub_1DC2DF6FC(v175, v173 + 1, 1);
                  v167 = v226;
                }

                v167[2] = (v173 + 1);
                v174 = &v167[2 * v173];
                v174[4] = v169;
                v174[5] = v171;
                v168 += 32;
                --v166;
              }

              while (v166);

              v157 = v201;
              v162 = v223;
            }

            else
            {

              v167 = MEMORY[0x1E69E7CC0];
            }

            v226 = v167;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
            OUTLINED_FUNCTION_1_6();
            OUTLINED_FUNCTION_59_2();
            sub_1DC327B3C(v176, v177, v178, v179);
            v180 = sub_1DC5176AC();
            v182 = v181;

            v230 = v162;
            v184 = *(v162 + 2);
            v183 = *(v162 + 3);
            if (v184 >= v183 >> 1)
            {
              v186 = OUTLINED_FUNCTION_26(v183);
              v158 = sub_1DC2DF6FC(v186, v184 + 1, 1);
              v162 = v230;
            }

            ++v161;
            *(v162 + 2) = v184 + 1;
            v185 = &v162[16 * v184];
            *(v185 + 4) = v180;
            *(v185 + 5) = v182;
            v153 = v225;
            if (v161 == v221)
            {

              goto LABEL_87;
            }
          }

          goto LABEL_94;
        }

        v162 = MEMORY[0x1E69E7CC0];
LABEL_87:
        v226 = v162;
        v188 = OUTLINED_FUNCTION_43();
        __swift_instantiateConcreteTypeFromMangledNameV2(v188, v189);
        OUTLINED_FUNCTION_1_6();
        OUTLINED_FUNCTION_59_2();
        sub_1DC327B3C(v190, v191, v192, v193);
        sub_1DC5176AC();

        v194 = OUTLINED_FUNCTION_46_6();
        MEMORY[0x1E1296160](v194);
      }

      else
      {

        OUTLINED_FUNCTION_70_2();
      }

LABEL_88:
      OUTLINED_FUNCTION_34();
      return;
    }

    if (v44 >= *(v43 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_22_0();
    v214 = v47;
    v49 = *(v48 + 72);
    v50 = v44;
    (*(v48 + 16))(v45, v43 + v47 + v49 * v44, v225);
    sub_1DC516C2C();
    (*v211)(v26, v212, v46);
    sub_1DC327C2C(&qword_1ECC7BAE0, MEMORY[0x1E69A9090], MEMORY[0x1E69A90A0]);
    sub_1DC5179EC();
    sub_1DC5179EC();
    v51 = v228 == v226 && v229 == v227;
    if (v51)
    {
      v58 = *v210;
      (*v210)(v26, v46);
      v58(v29, v46);

LABEL_14:
      v59 = *v196;
      (*v196)(v197, v45, v225);
      v60 = v200;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v230 = v60;
      v195 = v59;
      if ((v61 & 1) == 0)
      {
        OUTLINED_FUNCTION_78_2();
        v62 = OUTLINED_FUNCTION_31_9();
        sub_1DC30BCB8(v62, v63, v64);
        v60 = v230;
      }

      v65 = v214;
      v67 = *(v60 + 2);
      v66 = *(v60 + 3);
      if (v67 >= v66 >> 1)
      {
        v68 = OUTLINED_FUNCTION_26(v66);
        sub_1DC30BCB8(v68, v67 + 1, 1);
        v60 = v230;
      }

      v44 = v50 + 1;
      *(v60 + 2) = v67 + 1;
      v200 = v60;
      v195(&v60[v65 + v67 * v49], v197, v225);
      v43 = v213;
    }

    else
    {
      v52 = sub_1DC51825C();
      v53 = v29;
      v54 = v26;
      v55 = *v210;
      (*v210)(v54, v46);
      v55(v53, v46);
      v26 = v54;
      v29 = v53;
      v45 = v218;

      if (v52)
      {
        goto LABEL_14;
      }

      v56 = OUTLINED_FUNCTION_59();
      v57(v56, v225);
      v44 = v50 + 1;
      v43 = v213;
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
}

uint64_t sub_1DC3215D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_54_0();
  v7 = type metadata accessor for QDContextState(v6);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  if (((*(*a2 + 96))(3) & 1) == 0)
  {
    sub_1DC517B8C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v12 = sub_1DC296DBC();
    v13 = OUTLINED_FUNCTION_40_1();
    v17 = 72;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_30_6();
  sub_1DC2DB2AC();
  v9 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v9, v10, v7);
  if (v11)
  {
    sub_1DC28EB30(v2, &qword_1ECC7BEB8, &unk_1DC527150);
    sub_1DC517B8C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v12 = sub_1DC296DBC();
    v13 = OUTLINED_FUNCTION_40_1();
    v17 = 32;
LABEL_6:
    sub_1DC516F0C(v13, v14, v15, v16, v17, 2);

    return OUTLINED_FUNCTION_43();
  }

  OUTLINED_FUNCTION_63_0();
  sub_1DC327B84();
  v18 = OUTLINED_FUNCTION_62_2();
  sub_1DC3EA4C4(v18, v19);
  sub_1DC327BD8();
  return OUTLINED_FUNCTION_43();
}

int64_t sub_1DC3217EC(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1DC2DAEF4(v3, -result, 0);
    if (v4)
    {
      result = 0;
    }

    if (v3 >= result)
    {
      sub_1DC2DAE88(result, v3, a2);

      return OUTLINED_FUNCTION_56_0();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC321880(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

void sub_1DC3218C8()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_55();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_54_0();
  v6 = type metadata accessor for NLRouterTurnContext(v5);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_31_0();
  sub_1DC2DB2AC();
  v8 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v8, v9, v6);
  if (v10)
  {
    sub_1DC28EB30(v0, &qword_1ECC7BFD0, &unk_1DC522550);
LABEL_12:
    OUTLINED_FUNCTION_34();
    return;
  }

  OUTLINED_FUNCTION_25_6();
  sub_1DC327B84();
  sub_1DC321E1C();
  v14 = v11;
  v15 = *(v11 + 16);
  if (v15 < 2)
  {
    OUTLINED_FUNCTION_4_9();
    sub_1DC327BD8();

    goto LABEL_12;
  }

  v16 = 0;
  for (i = (v11 + 40); ; i += 2)
  {
    if (v15 == v16)
    {

      sub_1DC30D6EC(v22, v23, v24);
      v25 = sub_1DC51823C();
      MEMORY[0x1E1296160](v25);

      MEMORY[0x1E1296160](0, 0xE000000000000000);

      OUTLINED_FUNCTION_4_9();
      sub_1DC327BD8();
      goto LABEL_12;
    }

    if (v16 >= *(v14 + 16))
    {
      break;
    }

    ++v16;
    v19 = *(i - 1);
    v18 = *i;
    sub_1DC30D6EC(v11, v12, v13);

    v26 = sub_1DC51823C();
    v27 = v20;
    v21 = sub_1DC51823C();
    MEMORY[0x1E1296160](v21);

    MEMORY[0x1E1296160](8250, 0xE200000000000000);
    MEMORY[0x1E1296160](v19, v18);

    MEMORY[0x1E1296160](v26, v27);
  }

  __break(1u);
}

unint64_t sub_1DC321B58(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v33 = sub_1DC5118BC();
  v5 = *(v33 - 8);
  v6 = MEMORY[0x1EEE9AC00](v33);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = 0;
  v32 = *(a3 + 16);
  v29 = v5 + 16;
  v12 = (v5 + 8);
  v26 = (v5 + 32);
  v28 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v32 == v11)
    {

      return v28;
    }

    if (v11 >= *(a3 + 16))
    {
      break;
    }

    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = *(v5 + 72);
    v15 = a3;
    (*(v5 + 16))(v10, a3 + v13 + v14 * v11, v33);
    v16 = v30(v10);
    if (v3)
    {
      (*v12)(v10, v33);
      v23 = v28;

      return v23;
    }

    if (v16)
    {
      v25 = *v26;
      v25(v27, v10, v33);
      v17 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v17;
      if (isUniquelyReferenced_nonNull_native)
      {
        v19 = v17;
      }

      else
      {
        sub_1DC3241D0(0, *(v17 + 16) + 1, 1);
        v19 = v34;
      }

      a3 = v15;
      v21 = *(v19 + 16);
      v20 = *(v19 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v28 = v21 + 1;
        v24 = v21;
        sub_1DC3241D0(v20 > 1, v21 + 1, 1);
        v22 = v28;
        v21 = v24;
        a3 = v15;
        v19 = v34;
      }

      ++v11;
      *(v19 + 16) = v22;
      v28 = v19;
      result = (v25)(v19 + v13 + v21 * v14, v27, v33);
    }

    else
    {
      result = (*v12)(v10, v33);
      ++v11;
    }
  }

  __break(1u);
  return result;
}

void sub_1DC321E1C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_155();
  v98 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v88 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v92 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8E0, &unk_1DC523750);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  v94 = v7;
  OUTLINED_FUNCTION_12();
  v101 = sub_1DC5118BC();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v95 = (v11 - v12);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_1();
  v91 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_23_1();
  v90 = v16;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_38_3();
  v18 = sub_1DC5119DC();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v25 = 0;
  v96 = v0;
  v26 = *(v0 + 2);
  v99 = *(v26 + 16);
  v100 = v20 + 16;
  do
  {
    v27 = v25;
    if (v99 == v25)
    {
      break;
    }

    if (v25 >= *(v26 + 16))
    {
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_24();
    (*(v20 + 16))(v24, v26 + v28 + *(v20 + 72) * v25, v18);
    if (sub_1DC51191C())
    {
      v32 = OUTLINED_FUNCTION_55_7();
      v33(v32);
      break;
    }

    ++v25;
    v29 = sub_1DC51195C();
    v30 = OUTLINED_FUNCTION_55_7();
    v31(v30);
  }

  while ((v29 & 1) == 0);
  v93 = v27;
  v20 = 0;
  v34 = *&v96[*(type metadata accessor for NLRouterTurnContext(0) + 36)];
  v35 = *(v34 + 16);
  v100 = v9 + 16;
  v36 = (v9 + 8);
  v37 = (v9 + 32);
  v97 = MEMORY[0x1E69E7CC0];
  v38 = v101;
  while (1)
  {
    if (v35 == v20)
    {
      v102 = v97;

      sub_1DC324454(&v102, sub_1DC325F84, sub_1DC324F8C);

      v54 = v102;
      sub_1DC323010(v102, MEMORY[0x1E69D0B08], v94);
      OUTLINED_FUNCTION_39(v94, 1, v101);
      v55 = v95;
      if (v68)
      {

        sub_1DC28EB30(v94, &qword_1ECC7C8E0, &unk_1DC523750);
      }

      else
      {
        v56 = (*v37)(v91, v94, v101);
        if (v99 == v93)
        {
          sub_1DC3230B8();
          v89 = v56;
          v90 = v57;
        }

        else
        {
          v89 = 0;
          v90 = 0xE000000000000000;
        }

        MEMORY[0x1EEE9AC00](v56);
        *(&v86 - 2) = v91;
        v102 = sub_1DC321B58(sub_1DC324520, (&v86 - 4), v54);

        sub_1DC324454(&v102, sub_1DC325348, sub_1DC324BE0);

        v58 = v102;
        v59 = *(v102 + 16);
        if (v59)
        {
          OUTLINED_FUNCTION_24();
          v87 = v58;
          v61 = v58 + v60;
          v62 = *(v9 + 72);
          v96 = *(v9 + 16);
          v97 = v62;
          v63 = (v88 + 8);
          v94 = MEMORY[0x1E69E7CC0];
          v64 = v92;
          while (1)
          {
            (v96)(v55, v61, v101);
            sub_1DC51182C();
            sub_1DC5138FC();
            (*v63)(v64, v98);
            v65 = type metadata accessor for NLRouterUsoGraphPromptHelper();

            v66 = sub_1DC449FD8();
            if (v66)
            {
              break;
            }

            v71 = OUTLINED_FUNCTION_73_1();
            v65(v71);

LABEL_29:
            v61 += v97;
            if (!--v59)
            {

              goto LABEL_49;
            }
          }

          v55 = v66;
          if (v99 == v93)
          {
            v68 = sub_1DC514F0C() == v89 && v67 == v90;
            if (v68)
            {
            }

            else
            {
              v69 = sub_1DC51825C();

              if ((v69 & 1) == 0)
              {
                v65 = *v36;
                v70 = v95;
                (*v36)(v95, v101);

                v55 = v70;

LABEL_47:
                v64 = v92;
                goto LABEL_29;
              }
            }
          }

          v65 = v55;
          v72 = (*(*v55 + 96))(v66);
          v74 = v73;

          v75 = OUTLINED_FUNCTION_73_1();
          v55(v75);
          if (v74)
          {
            v76 = v94;
            v77 = v72;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v82 = OUTLINED_FUNCTION_13_0();
              v76 = sub_1DC2ACCD4(v82, v83, v84, v76);
            }

            v79 = *(v76 + 2);
            v78 = *(v76 + 3);
            v94 = v76;
            if (v79 >= v78 >> 1)
            {
              v85 = OUTLINED_FUNCTION_26(v78);
              v94 = sub_1DC2ACCD4(v85, v79 + 1, 1, v94);
            }

            v80 = v94;
            *(v94 + 2) = v79 + 1;
            v81 = &v80[16 * v79];
            *(v81 + 4) = v77;
            *(v81 + 5) = v74;
            v64 = v92;
            v55 = v95;
            goto LABEL_29;
          }

          goto LABEL_47;
        }

        v65 = *v36;
LABEL_49:
        (v65)(v91, v101);
      }

      OUTLINED_FUNCTION_34();
      return;
    }

    if (v20 >= *(v34 + 16))
    {
      break;
    }

    v39 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v40 = *(v9 + 72);
    (*(v9 + 16))(v1, v34 + v39 + v40 * v20, v38);
    if (sub_1DC5117CC() & 1) != 0 && (sub_1DC51188C() & 1) != 0 && (sub_1DC5117BC())
    {
      v41 = *v37;
      v38 = v101;
      v89 = v37;
      v87 = v41;
      v41(v90, v1, v101);
      v42 = v97;
      v102 = v97;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = OUTLINED_FUNCTION_31_9();
        sub_1DC3241D0(v43, v44, v45);
        v38 = v101;
        v42 = v102;
      }

      v47 = *(v42 + 16);
      v46 = *(v42 + 24);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        v50 = OUTLINED_FUNCTION_26(v46);
        v52 = v51;
        v97 = v53;
        sub_1DC3241D0(v50, v51, 1);
        v48 = v52;
        v47 = v97;
        v38 = v101;
        v42 = v102;
      }

      ++v20;
      *(v42 + 16) = v48;
      v97 = v42;
      v49 = v42 + v39 + v47 * v40;
      v37 = v89;
      v87(v49, v90, v38);
    }

    else
    {
      v38 = v101;
      (*v36)(v1, v101);
      ++v20;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);

  __break(1u);
}

void sub_1DC3226C4()
{
  OUTLINED_FUNCTION_33();
  v90 = v1;
  v85 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v89 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v84 = v4;
  OUTLINED_FUNCTION_12();
  v91 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v76 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v79 = v14;
  v80 = v15;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_1();
  v78 = v16;
  v17 = OUTLINED_FUNCTION_30_6();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_10(v19);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v71 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v23);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v71 - v25;
  v27 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1();
  v31 = (v30 - v29);
  sub_1DC2DB2AC();
  v32 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v22, 1, v32);
  if (v33)
  {
    sub_1DC28EB30(v22, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v26, 1, 1, v27);
LABEL_6:
    sub_1DC28EB30(v26, &qword_1ECC7C160, qword_1DC5233B0);
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v34 = sub_1DC296DBC();
    v35 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v35, v36, v37, v38, 45, 2);

    goto LABEL_7;
  }

  sub_1DC2DB2AC();
  sub_1DC327BD8();
  OUTLINED_FUNCTION_39(v26, 1, v27);
  if (v33)
  {
    goto LABEL_6;
  }

  sub_1DC327B84();
  v71[1] = v31;
  v39 = v6;
  v40 = *v31;
  v74 = v80 + 16;
  v73 = v80 + 8;
  v75 = *(v40 + 16);
  v87 = v76 + 16;
  v41 = (v76 + 8);
  v90 = (v39 + 8);
  v83 = (v89 + 8);

  v42 = 0;
  v86 = 0;
  v82 = v11;
  v72 = v40;
  v88 = v41;
LABEL_8:
  while (v42 != v75)
  {
    if (v42 >= *(v40 + 16))
    {
      __break(1u);
      return;
    }

    v43 = v79;
    v44 = v80;
    OUTLINED_FUNCTION_24();
    v47 = v46;
    (*(v44 + 16))(v78, v40 + v45 + *(v44 + 72) * v46, v43);
    v81 = v47 + 1;
    v48 = sub_1DC5111AC();
    v49 = OUTLINED_FUNCTION_31_0();
    v50(v49);
    v51 = *(v48 + 16);
    if (v51)
    {
      OUTLINED_FUNCTION_22_0();
      v77 = v48;
      v53 = v48 + v52;
      v55 = *(v54 + 72);
      v56 = *(v54 + 16);
      v89 = v56;
      while (1)
      {
        (v56)(v0, v53, v11);
        if (sub_1DC5114CC())
        {
          sub_1DC51154C();
          v57 = sub_1DC51177C();
          v58 = *v90;
          (*v90)(v10, v91);
          if ((v57 & 1) != 0 && (type metadata accessor for NLRouterBypassUtils(), sub_1DC51154C(), v59 = v10, v60 = v84, sub_1DC51178C(), v58(v59, v91), v61 = sub_1DC307E5C(v60), v62 = v60, v10 = v59, (*v83)(v62, v85), v61))
          {
            v92[0] = sub_1DC514F1C();
            v92[1] = v63;
            MEMORY[0x1EEE9AC00](v92[0]);
            v71[-2] = v92;
            v64 = v86;
            v65 = sub_1DC2CF098(sub_1DC2CF174, &v71[-4], &unk_1F57F6EF0);

            if (v65)
            {
              sub_1DC517B9C();
              sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
              v66 = sub_1DC296DBC();
              v67 = OUTLINED_FUNCTION_40_1();
              sub_1DC516F0C(v67, v68, v69, v70, 63, 2);

              (*v88)(v0, v82);

              OUTLINED_FUNCTION_29_3();

              goto LABEL_7;
            }

            v86 = v64;
            v41 = v88;
            v11 = v82;
            (*v88)(v0, v82);
          }

          else
          {
            v41 = v88;
            (*v88)(v0, v11);
          }

          v56 = v89;
        }

        else
        {
          (*v41)(v0, v11);
        }

        v53 += v55;
        if (!--v51)
        {

          v40 = v72;
          v42 = v81;
          goto LABEL_8;
        }
      }
    }

    v42 = v81;
  }

  OUTLINED_FUNCTION_29_3();
LABEL_7:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC322E3C(uint64_t a1)
{
  result = MEMORY[0x1E12963F0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1DC2E5B58(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

BOOL sub_1DC322EFC()
{
  OUTLINED_FUNCTION_5_1();
  v2 = sub_1DC51663C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_54_8();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_56_1();
  sub_1DC51180C();
  sub_1DC51662C();
  v8 = v7;
  v9 = *(v4 + 8);
  v9(v1, v2);
  sub_1DC51180C();
  sub_1DC51662C();
  v11 = v10;
  v9(v0, v2);
  return v11 < v8;
}

uint64_t sub_1DC323010@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    OUTLINED_FUNCTION_7_1();
    (*(v7 + 16))(a3, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v6);
}

void sub_1DC3230B8()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C890, &qword_1DC5234B0);
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = sub_1DC510F1C();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_26_5();
  sub_1DC323010(v20, v21, v12);
  OUTLINED_FUNCTION_39(v12, 1, v16);
  if (v22)
  {
    OUTLINED_FUNCTION_26_5();
    sub_1DC323010(v23, v24, v15);
    OUTLINED_FUNCTION_39(v12, 1, v16);
    if (!v22)
    {
      sub_1DC28EB30(v12, &qword_1ECC7C890, &qword_1DC5234B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_40_11();
    v25();
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  }

  OUTLINED_FUNCTION_39(v15, 1, v16);
  if (v22)
  {
    sub_1DC28EB30(v15, &qword_1ECC7C890, &qword_1DC5234B0);
  }

  else
  {
    (*(v18 + 32))(v0, v15, v16);
    v26 = sub_1DC510EFC();
    if (v26)
    {
      sub_1DC510F0C();
      sub_1DC5138FC();
      (*(v3 + 8))(v7, v1);
      if (sub_1DC5146FC())
      {
        sub_1DC514F0C();

        v29 = OUTLINED_FUNCTION_52_6();
        v30(v29);
      }

      else
      {
        v31 = OUTLINED_FUNCTION_52_6();
        v32(v31);
      }
    }

    else
    {
      v27 = OUTLINED_FUNCTION_52_6();
      v28(v27);
    }
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3233E0()
{
  OUTLINED_FUNCTION_33();
  v30 = v2;
  v29 = sub_1DC51665C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_54_8();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = sub_1DC511B0C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_38_3();
  sub_1DC51184C();
  sub_1DC511ADC();
  v17 = *(v11 + 8);
  v17(v1, v9);
  v28 = sub_1DC51664C();
  v19 = v18;
  v20 = *(v4 + 8);
  v21 = v8;
  v22 = v29;
  v20(v21, v29);
  sub_1DC51184C();
  sub_1DC511ADC();
  v17(v15, v9);
  v23 = sub_1DC51664C();
  v25 = v24;
  v20(v0, v22);
  if (v28 != v23 || v19 != v25)
  {
    sub_1DC51825C();
  }

  OUTLINED_FUNCTION_34();
}

BOOL sub_1DC323600()
{
  OUTLINED_FUNCTION_5_1();
  v2 = sub_1DC511B0C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_54_8();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_56_1();
  sub_1DC51184C();
  v7 = sub_1DC511ABC();
  v8 = *(v4 + 8);
  v8(v1, v2);
  sub_1DC51184C();
  v9 = sub_1DC511ABC();
  v8(v0, v2);
  return v7 < v9;
}

uint64_t sub_1DC32370C(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1DC2DF6FC(0, v2, 0);
    v5 = v25;
    v6 = (a1 + 32);
    v7 = *(v25 + 16);
    v8 = 16 * v7;
    v9 = 0x65736C6146;
    do
    {
      if (*v6)
      {
        v10 = 1702195796;
      }

      else
      {
        v10 = v9;
      }

      if (*v6)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      if (*v6)
      {
        v12 = 84;
      }

      else
      {
        v12 = 70;
      }

      if (a2)
      {
        v13 = v10;
      }

      else
      {
        v13 = v12;
      }

      if (a2)
      {
        v14 = v11;
      }

      else
      {
        v14 = 0xE100000000000000;
      }

      v26 = v5;
      v15 = *(v5 + 24);
      v16 = v7 + 1;
      if (v7 >= v15 >> 1)
      {
        v18 = v9;
        sub_1DC2DF6FC((v15 > 1), v7 + 1, 1);
        v9 = v18;
        v5 = v26;
      }

      *(v5 + 16) = v16;
      v17 = v5 + v8;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v8 += 16;
      ++v6;
      v7 = v16;
      --v2;
    }

    while (v2);
  }

  v19 = OUTLINED_FUNCTION_56_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_1_6();
  sub_1DC327B3C(v21, &qword_1ECC7C130, &unk_1DC5240F0, v22);
  sub_1DC5176AC();

  v23 = OUTLINED_FUNCTION_65_1();
  MEMORY[0x1E1296160](v23);

  MEMORY[0x1E1296160](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1DC3238E4(char a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DC323920@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC3238E4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DC32394C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC323900(*v1);
  *a1 = result;
  return result;
}

void sub_1DC323978()
{
  OUTLINED_FUNCTION_33();
  v39[4] = v0;
  v40 = v1;
  v39[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_25();
  v39[2] = v3;
  v4 = OUTLINED_FUNCTION_12();
  v39[5] = type metadata accessor for QDContextStateOutput(v4);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v39[1] = v6 - v7;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_23_1();
  v39[0] = v9;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v39 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 1;
  type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC327C2C(&qword_1ECC7BC28, type metadata accessor for NLRouterServiceRequest, &protocol conformance descriptor for NLRouterServiceRequest);
  sub_1DC327C2C(&qword_1ECC7BC30, type metadata accessor for NLRouterServiceRequest, &protocol conformance descriptor for NLRouterServiceRequest);
  sub_1DC327C2C(&qword_1ECC7BC88, type metadata accessor for QDContextStateOutput, &unk_1DC528B18);
  sub_1DC327C2C(&qword_1ECC7BC90, type metadata accessor for QDContextStateOutput, &unk_1DC528B40);

  v14 = v12;
  sub_1DC510D4C();

  swift_beginAccess();
  v15 = *(v13 + 16);
  v16 = sub_1DC517B8C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v17 = sub_1DC296DBC();
  if (v15 != 1)
  {
    OUTLINED_FUNCTION_22_6();
    sub_1DC327A94();
    if (os_log_type_enabled(v17, v16))
    {
      v28 = v14;
      v29 = OUTLINED_FUNCTION_63();
      v30 = OUTLINED_FUNCTION_82();
      v41 = v30;
      *v29 = 136315138;
      sub_1DC2DB2AC();
      sub_1DC51777C();
      OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_3_10();
      sub_1DC327BD8();
      v31 = OUTLINED_FUNCTION_55();
      v34 = sub_1DC291244(v31, v32, v33);

      *(v29 + 4) = v34;
      OUTLINED_FUNCTION_28_8();
      _os_log_impl(v35, v36, v37, v38, v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      OUTLINED_FUNCTION_66();
      v14 = v28;
      goto LABEL_6;
    }

LABEL_7:

    OUTLINED_FUNCTION_3_10();
    sub_1DC327BD8();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_22_6();
  sub_1DC327A94();
  if (!os_log_type_enabled(v17, v16))
  {
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_63();
  v19 = OUTLINED_FUNCTION_82();
  v41 = v19;
  *v18 = 136315138;
  sub_1DC2DB2AC();
  sub_1DC51777C();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_3_10();
  sub_1DC327BD8();
  v20 = OUTLINED_FUNCTION_55();
  v23 = sub_1DC291244(v20, v21, v22);

  *(v18 + 4) = v23;
  OUTLINED_FUNCTION_28_8();
  _os_log_impl(v24, v25, v26, v27, v18, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  OUTLINED_FUNCTION_66();
LABEL_6:
  OUTLINED_FUNCTION_66();

LABEL_8:
  sub_1DC324550(v14, v40);

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC323E04()
{
  OUTLINED_FUNCTION_42_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_10(v1);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6 - v3;
  swift_beginAccess();
  *(v0 + 16) = 0;
  sub_1DC3EAD64(v4);
  return sub_1DC3ED548();
}

uint64_t sub_1DC323EA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0A0, &unk_1DC524070);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *sub_1DC323F08(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1DC324008(v8, v7);
  v10 = *(sub_1DC5172AC() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1DC324104(a4 + v11, v8, v9 + v11, MEMORY[0x1E69DAE88]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1DC324008(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CAE0, &unk_1DC524080);
  v4 = *(sub_1DC5172AC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DC324104(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_42_0();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_35(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_62_2();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_62_2();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_1DC324228(char *a1, int64_t a2, char a3)
{
  result = sub_1DC30BD10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DC3242A0()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = *(v7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((v20 - v18) / v17);
LABEL_19:
  v7(0);
  OUTLINED_FUNCTION_24();
  if (v10)
  {
    sub_1DC324104(v8 + v22, v14, v19 + v22, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC324454(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_155();
  v6 = sub_1DC5118BC();
  OUTLINED_FUNCTION_10(v6);
  v8 = v7;
  v9 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DC327A08();
    v9 = v10;
  }

  v11 = *(v9 + 16);
  v13[0] = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13[1] = v11;
  result = sub_1DC324A94(v13, MEMORY[0x1E69D0B08], a2, a3);
  *v3 = v9;
  return result;
}

uint64_t sub_1DC324550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DC3245C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7CAA8;
  if (!qword_1ECC7CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CAA8);
  }

  return result;
}

unint64_t sub_1DC324660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7CAC0;
  if (!qword_1ECC7CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CAC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NLRouterMessageRole(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_7_6(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DC32478C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DC3247E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DC324824(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BoolPromptFormat(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_7_6(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for NLRouterPromptSignals(uint64_t a1)
{
  result = qword_1ECC81A10;
  if (!qword_1ECC81A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DC3249D0(uint64_t a1)
{
  sub_1DC324A3C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DC324A3C(uint64_t a1)
{
  if (!qword_1ECC7BD20)
  {
    type metadata accessor for QDContextState(255);
    v1 = sub_1DC517D8C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECC7BD20);
    }
  }
}

uint64_t sub_1DC324A94(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1DC51822C();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1DC517A4C();
        *(v12 + 16) = v11;
      }

      v13 = a2(0);
      OUTLINED_FUNCTION_10(v13);
      OUTLINED_FUNCTION_24();
      v15[0] = v12 + v14;
      v15[1] = v11;
      a3(v15, v16, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_1DC324BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_1DC511B0C();
  v8 = *(v60 - 8);
  v9 = MEMORY[0x1EEE9AC00](v60);
  v59 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v40[-v11];
  v12 = sub_1DC5118BC();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v50 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v57 = &v40[-v16];
  result = MEMORY[0x1EEE9AC00](v15);
  v56 = &v40[-v19];
  v42 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v52 = (v8 + 8);
    v53 = v22;
    v51 = (v21 - 8);
    v54 = v12;
    v55 = v21;
    v24 = v20 + v23 * (a3 - 1);
    v47 = -v23;
    v48 = (v21 + 16);
    v25 = a1 - a3;
    v49 = v20;
    v41 = v23;
    v26 = v20 + v23 * a3;
    v27 = v56;
    while (2)
    {
      v45 = v24;
      v46 = a3;
      v43 = v26;
      v44 = v25;
      v61 = v25;
      do
      {
        v28 = v53;
        v53(v27, v26, v12);
        v29 = v57;
        v28(v57, v24, v12);
        v30 = v58;
        sub_1DC51184C();
        v62 = sub_1DC511ABC();
        v31 = *v52;
        v32 = v30;
        v33 = v60;
        (*v52)(v32, v60);
        v34 = v59;
        sub_1DC51184C();
        LODWORD(v28) = sub_1DC511ABC();
        v35 = v33;
        v12 = v54;
        v31(v34, v35);
        v36 = *v51;
        (*v51)(v29, v12);
        result = v36(v27, v12);
        if (v62 >= v28)
        {
          break;
        }

        if (!v49)
        {
          __break(1u);
          return result;
        }

        v37 = *v48;
        v38 = v50;
        (*v48)(v50, v26, v12);
        swift_arrayInitWithTakeFrontToBack();
        result = v37(v24, v38, v12);
        v24 += v47;
        v26 += v47;
      }

      while (!__CFADD__(v61++, 1));
      a3 = v46 + 1;
      v24 = v45 + v41;
      v25 = v44 - 1;
      v26 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DC324F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v63 = sub_1DC51663C();
  v8 = *(v63 - 8);
  v9 = MEMORY[0x1EEE9AC00](v63);
  v62 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v44 - v11;
  v12 = sub_1DC5118BC();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v54 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v60 = &v44 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v59 = &v44 - v19;
  v46 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v56 = (v8 + 8);
    v57 = v22;
    v55 = (v21 - 8);
    v58 = v21;
    v24 = v20 + v23 * (a3 - 1);
    v51 = -v23;
    v52 = (v21 + 16);
    v25 = a1 - a3;
    v53 = v20;
    v45 = v23;
    v26 = v20 + v23 * a3;
    v65 = v12;
    v27 = v62;
    while (2)
    {
      v49 = v24;
      v50 = a3;
      v47 = v26;
      v48 = v25;
      v64 = v25;
      do
      {
        v28 = v59;
        v29 = v57;
        v57(v59, v26, v12);
        v30 = v60;
        v29(v60, v24, v65);
        v31 = v61;
        sub_1DC51180C();
        sub_1DC51662C();
        v33 = v32;
        v34 = *v56;
        v35 = v31;
        v36 = v63;
        (*v56)(v35, v63);
        sub_1DC51180C();
        sub_1DC51662C();
        v38 = v37;
        v34(v27, v36);
        v39 = *v55;
        v40 = v30;
        v12 = v65;
        (*v55)(v40, v65);
        result = v39(v28, v12);
        if (v38 >= v33)
        {
          break;
        }

        if (!v53)
        {
          __break(1u);
          return result;
        }

        v41 = *v52;
        v42 = v54;
        (*v52)(v54, v26, v12);
        swift_arrayInitWithTakeFrontToBack();
        result = (v41)(v24, v42, v12);
        v24 += v51;
        v26 += v51;
      }

      while (!__CFADD__(v64++, 1));
      a3 = v50 + 1;
      v24 = v49 + v45;
      v25 = v48 - 1;
      v26 = v47 + v45;
      if (v50 + 1 != v46)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DC325348(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v140 = a1;
  v165 = sub_1DC511B0C();
  v8 = *(v165 - 8);
  v9 = MEMORY[0x1EEE9AC00](v165);
  v164 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v163 = &v138 - v11;
  v12 = sub_1DC5118BC();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v145 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v156 = &v138 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v162 = &v138 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v161 = &v138 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v138 - v22;
  result = MEMORY[0x1EEE9AC00](v21);
  v27 = &v138 - v26;
  v150 = v25;
  v151 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v169 = *v140;
    if (!v169)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_103;
    }

    goto LABEL_138;
  }

  v138 = a4;
  v29 = 0;
  v166 = v25 + 16;
  v167 = (v25 + 8);
  v158 = (v25 + 32);
  v159 = (v8 + 8);
  v30 = MEMORY[0x1E69E7CC0];
  v160 = v12;
  v148 = v23;
  v141 = v27;
  while (1)
  {
    v31 = v29 + 1;
    v142 = v29;
    if (v29 + 1 >= v28)
    {
      v57 = v29;
    }

    else
    {
      v32 = v27;
      v33 = *v151;
      v34 = *(v25 + 72);
      v35 = &(*v151)[v34 * v31];
      v36 = *(v25 + 16);
      v154 = v28;
      v155 = v36;
      (v36)(v32, v35, v12);
      v169 = v33;
      v37 = v34;
      (v155)(v23, &v33[v34 * v142], v12);
      LODWORD(v149) = sub_1DC323600();
      if (v5)
      {
        v137 = *v167;
        (*v167)(v23, v12);
        v137(v141, v12);
      }

      v139 = v30;
      v38 = *v167;
      (*v167)(v23, v12);
      v147 = v38;
      result = (v38)(v141, v12);
      v39 = (v142 + 2);
      v40 = &v169[v37 * (v142 + 2)];
      v41 = v37;
      v157 = v37;
      v42 = v154;
      while (1)
      {
        v43 = v39;
        v44 = v31 + 1;
        if (v44 >= v42)
        {
          break;
        }

        v153 = v44;
        v45 = v161;
        v46 = v155;
        v169 = v39;
        (v155)(v161, v40, v12);
        v47 = v162;
        (v46)(v162, v35, v12);
        v48 = v163;
        sub_1DC51184C();
        LODWORD(v168) = sub_1DC511ABC();
        v152 = v5;
        v49 = *v159;
        v50 = v48;
        v30 = v165;
        (*v159)(v50, v165);
        v51 = v164;
        sub_1DC51184C();
        v52 = sub_1DC511ABC();
        v53 = v51;
        v12 = v160;
        v49(v53, v30);
        v5 = v152;
        v54 = v47;
        v55 = v147;
        (v147)(v54, v12);
        v56 = v45;
        v31 = v153;
        result = v55(v56, v12);
        v43 = v169;
        v42 = v154;
        v41 = v157;
        v40 = &v157[v40];
        v35 = &v157[v35];
        v39 = v169 + 1;
        if (((v149 ^ (v168 >= v52)) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v31 = v42;
LABEL_11:
      if (v149)
      {
        v57 = v142;
        if (v31 < v142)
        {
          goto LABEL_137;
        }

        if (v142 >= v31)
        {
          v25 = v150;
          v30 = v139;
          v23 = v148;
          goto LABEL_32;
        }

        if (v42 >= v43)
        {
          v58 = v43;
        }

        else
        {
          v58 = v42;
        }

        v59 = v142;
        v60 = v41 * (v58 - 1);
        v61 = v41 * v58;
        v62 = v142 * v41;
        v63 = v31;
        v153 = v31;
        do
        {
          if (v59 != --v63)
          {
            v64 = *v151;
            if (!*v151)
            {
              goto LABEL_142;
            }

            v169 = *v158;
            (v169)(v145, &v64[v62], v12);
            v65 = v62 < v60 || &v64[v62] >= &v64[v61];
            if (v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v62 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v169)(&v64[v60], v145, v12);
            v31 = v153;
            v41 = v157;
          }

          ++v59;
          v60 -= v41;
          v61 -= v41;
          v62 += v41;
        }

        while (v59 < v63);
      }

      v25 = v150;
      v30 = v139;
      v23 = v148;
      v57 = v142;
    }

LABEL_32:
    v66 = v151[1];
    if (v31 < v66)
    {
      if (__OFSUB__(v31, v57))
      {
        goto LABEL_134;
      }

      if (v31 - v57 < v138)
      {
        break;
      }
    }

LABEL_48:
    if (v31 < v57)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DC30B0C0(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v88 = *(v30 + 16);
    v87 = *(v30 + 24);
    v89 = v88 + 1;
    if (v88 >= v87 >> 1)
    {
      result = sub_1DC30B0C0((v87 > 1), v88 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v89;
    v90 = v30 + 32;
    v91 = (v30 + 32 + 16 * v88);
    *v91 = v142;
    v91[1] = v31;
    v169 = *v140;
    if (!v169)
    {
      goto LABEL_143;
    }

    v153 = v31;
    if (v88)
    {
      v168 = v30 + 32;
      while (1)
      {
        v92 = v89 - 1;
        v93 = (v90 + 16 * (v89 - 1));
        v94 = (v30 + 16 * v89);
        if (v89 >= 4)
        {
          break;
        }

        if (v89 == 3)
        {
          v95 = *(v30 + 32);
          v96 = *(v30 + 40);
          v105 = __OFSUB__(v96, v95);
          v97 = v96 - v95;
          v98 = v105;
LABEL_69:
          if (v98)
          {
            goto LABEL_120;
          }

          v110 = *v94;
          v109 = v94[1];
          v111 = __OFSUB__(v109, v110);
          v112 = v109 - v110;
          v113 = v111;
          if (v111)
          {
            goto LABEL_123;
          }

          v114 = v93[1];
          v115 = v114 - *v93;
          if (__OFSUB__(v114, *v93))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v112, v115))
          {
            goto LABEL_128;
          }

          if (v112 + v115 >= v97)
          {
            if (v97 < v115)
            {
              v92 = v89 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v89 < 2)
        {
          goto LABEL_122;
        }

        v117 = *v94;
        v116 = v94[1];
        v105 = __OFSUB__(v116, v117);
        v112 = v116 - v117;
        v113 = v105;
LABEL_84:
        if (v113)
        {
          goto LABEL_125;
        }

        v119 = *v93;
        v118 = v93[1];
        v105 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v105)
        {
          goto LABEL_127;
        }

        if (v120 < v112)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v92 - 1 >= v89)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
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
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v151)
        {
          goto LABEL_140;
        }

        v124 = (v90 + 16 * (v92 - 1));
        v125 = *v124;
        v126 = v92;
        v127 = (v90 + 16 * v92);
        v128 = v127[1];
        sub_1DC326BB8(&(*v151)[*(v150 + 72) * *v124], &(*v151)[*(v150 + 72) * *v127], &(*v151)[*(v150 + 72) * v128], v169);
        if (v5)
        {
        }

        if (v128 < v125)
        {
          goto LABEL_115;
        }

        v5 = v30;
        v30 = *(v30 + 16);
        if (v126 > v30)
        {
          goto LABEL_116;
        }

        *v124 = v125;
        v124[1] = v128;
        if (v126 >= v30)
        {
          goto LABEL_117;
        }

        v89 = v30 - 1;
        result = memmove(v127, v127 + 2, 16 * (v30 - 1 - v126));
        *(v5 + 16) = v30 - 1;
        v129 = v30 > 2;
        v30 = v5;
        v5 = 0;
        v23 = v148;
        v90 = v168;
        if (!v129)
        {
          goto LABEL_98;
        }
      }

      v99 = v90 + 16 * v89;
      v100 = *(v99 - 64);
      v101 = *(v99 - 56);
      v105 = __OFSUB__(v101, v100);
      v102 = v101 - v100;
      if (v105)
      {
        goto LABEL_118;
      }

      v104 = *(v99 - 48);
      v103 = *(v99 - 40);
      v105 = __OFSUB__(v103, v104);
      v97 = v103 - v104;
      v98 = v105;
      if (v105)
      {
        goto LABEL_119;
      }

      v106 = v94[1];
      v107 = v106 - *v94;
      if (__OFSUB__(v106, *v94))
      {
        goto LABEL_121;
      }

      v105 = __OFADD__(v97, v107);
      v108 = v97 + v107;
      if (v105)
      {
        goto LABEL_124;
      }

      if (v108 >= v102)
      {
        v122 = *v93;
        v121 = v93[1];
        v105 = __OFSUB__(v121, v122);
        v123 = v121 - v122;
        if (v105)
        {
          goto LABEL_132;
        }

        if (v97 < v123)
        {
          v92 = v89 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v25 = v150;
    v28 = v151[1];
    v29 = v153;
    v27 = v141;
    if (v153 >= v28)
    {
      goto LABEL_101;
    }
  }

  v67 = (v57 + v138);
  if (__OFADD__(v57, v138))
  {
    goto LABEL_135;
  }

  if (v67 >= v66)
  {
    v67 = v151[1];
  }

  if (v67 < v57)
  {
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    result = sub_1DC30D6B0(v30);
    v30 = result;
LABEL_103:
    v130 = (v30 + 16);
    v131 = *(v30 + 16);
    while (v131 >= 2)
    {
      if (!*v151)
      {
        goto LABEL_141;
      }

      v132 = v30;
      v30 += 16 * v131;
      v133 = *v30;
      v134 = &v130[2 * v131];
      v135 = v134[1];
      sub_1DC326BB8(&(*v151)[*(v150 + 72) * *v30], &(*v151)[*(v150 + 72) * *v134], &(*v151)[*(v150 + 72) * v135], v169);
      if (v5)
      {
        break;
      }

      if (v135 < v133)
      {
        goto LABEL_129;
      }

      if (v131 - 2 >= *v130)
      {
        goto LABEL_130;
      }

      *v30 = v133;
      *(v30 + 8) = v135;
      v136 = *v130 - v131;
      if (*v130 < v131)
      {
        goto LABEL_131;
      }

      v131 = *v130 - 1;
      result = memmove(v134, v134 + 2, 16 * v136);
      *v130 = v131;
      v30 = v132;
    }
  }

  if (v31 == v67)
  {
    goto LABEL_48;
  }

  v139 = v30;
  v152 = v5;
  v68 = *v151;
  v69 = *(v25 + 72);
  v157 = *(v25 + 16);
  v70 = &v68[v69 * (v31 - 1)];
  v154 = -v69;
  v155 = v68;
  v71 = (v57 - v31);
  v143 = v69;
  v72 = &v68[v31 * v69];
  v144 = v67;
LABEL_41:
  v153 = v31;
  v146 = v72;
  v147 = v71;
  v73 = v71;
  v149 = v70;
  while (1)
  {
    v168 = v73;
    v74 = v161;
    v75 = v157;
    (v157)(v161, v72, v12);
    v76 = v162;
    v75(v162, v70, v12);
    v77 = v163;
    sub_1DC51184C();
    LODWORD(v169) = sub_1DC511ABC();
    v78 = *v159;
    v79 = v165;
    (*v159)(v77, v165);
    v80 = v164;
    sub_1DC51184C();
    v81 = sub_1DC511ABC();
    v82 = v79;
    v12 = v160;
    v78(v80, v82);
    v83 = *v167;
    (*v167)(v76, v12);
    result = (v83)(v74, v12);
    if (v169 >= v81)
    {
LABEL_46:
      v31 = v153 + 1;
      v70 = &v149[v143];
      v71 = v147 - 1;
      v72 = &v146[v143];
      if ((v153 + 1) == v144)
      {
        v31 = v144;
        v5 = v152;
        v30 = v139;
        v23 = v148;
        v57 = v142;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    v84 = v168;
    if (!v155)
    {
      break;
    }

    v85 = *v158;
    v86 = v156;
    (*v158)(v156, v72, v12);
    swift_arrayInitWithTakeFrontToBack();
    (v85)(v70, v86, v12);
    v70 += v154;
    v72 += v154;
    v65 = __CFADD__(v84, 1);
    v73 = (v84 + 1);
    if (v65)
    {
      goto LABEL_46;
    }
  }

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
  return result;
}

uint64_t sub_1DC325F84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v148 = a1;
  v168 = sub_1DC51663C();
  v6 = *(v168 - 8);
  v7 = MEMORY[0x1EEE9AC00](v168);
  v167 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v166 = &v142 - v9;
  v10 = sub_1DC5118BC();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v151 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v161 = &v142 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v165 = &v142 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v172 = &v142 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  result = MEMORY[0x1EEE9AC00](v19);
  v24 = &v142 - v21;
  v25 = *(a3 + 8);
  v152 = a3;
  v156 = v22;
  if (v25 < 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_102:
    v28 = *v148;
    if (!*v148)
    {
      goto LABEL_145;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_104;
    }

    goto LABEL_139;
  }

  v143 = a4;
  v26 = 0;
  v170 = v22 + 16;
  v171 = (v22 + 8);
  v164 = (v6 + 8);
  v163 = (v22 + 32);
  v27 = MEMORY[0x1E69E7CC0];
  v169 = v10;
  v144 = v23;
  v147 = &v142 - v21;
  while (1)
  {
    v28 = v26;
    v29 = v26 + 1;
    if (v26 + 1 < v25)
    {
      v160 = v25;
      v30 = *a3;
      v31 = *(v156 + 72);
      v158 = v26 + 1;
      v32 = *(v156 + 16);
      v33 = v23;
      v34 = v30 + v31 * (v26 + 1);
      (v32)(v24);
      v173 = v30;
      v162 = v31;
      v155 = v32;
      (v32)(v33, v30 + v31 * v28, v10);
      a3 = v147;
      LODWORD(v159) = sub_1DC322EFC();
      if (v157)
      {
        v141 = *v171;
        (*v171)(v33, v10);
        v141(a3, v10);
      }

      v145 = v27;
      v27 = *v171;
      (*v171)(v33, v10);
      v35 = v160;
      v154 = v27;
      result = (v27)(a3, v10);
      v146 = v28;
      v36 = v28 + 2;
      v37 = v162;
      v38 = v173 + v162 * v36;
      v29 = v158;
      while (1)
      {
        v39 = v36;
        v40 = v29 + 1;
        if (v40 >= v35)
        {
          break;
        }

        v173 = v38;
        v41 = v169;
        v42 = v155;
        v162 = v36;
        v155();
        v27 = v165;
        (v42)(v165, v34, v41);
        v43 = v166;
        v158 = v40;
        sub_1DC51180C();
        sub_1DC51662C();
        v45 = v44;
        a3 = *v164;
        v46 = v43;
        v47 = v37;
        v48 = v168;
        (*v164)(v46, v168);
        v49 = v167;
        sub_1DC51180C();
        sub_1DC51662C();
        v51 = v50;
        v52 = v48;
        v37 = v47;
        v35 = v160;
        (a3)(v49, v52);
        v53 = v154;
        v154(v27, v41);
        result = v53(v172, v41);
        v39 = v162;
        v29 = v158;
        v38 = v173 + v37;
        v34 += v37;
        v36 = v162 + 1;
        if (((v159 ^ (v51 >= v45)) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v29 = v35;
LABEL_10:
      if (v159)
      {
        v54 = v37;
        v28 = v146;
        v10 = v169;
        if (v29 < v146)
        {
          goto LABEL_138;
        }

        a3 = v152;
        if (v146 >= v29)
        {
          v27 = v145;
          goto LABEL_33;
        }

        if (v35 >= v39)
        {
          v55 = v39;
        }

        else
        {
          v55 = v35;
        }

        v56 = v54 * (v55 - 1);
        v57 = v54 * v55;
        v58 = v146;
        v59 = v54;
        v60 = v146 * v54;
        v158 = v29;
        do
        {
          if (v58 != --v29)
          {
            v61 = *a3;
            if (!v61)
            {
              goto LABEL_143;
            }

            v173 = *v163;
            v173(v151, v61 + v60, v10);
            v62 = v60 < v56 || v61 + v60 >= v61 + v57;
            if (v62)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v60 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v173)(v61 + v56, v151, v10);
            a3 = v152;
          }

          ++v58;
          v56 -= v59;
          v57 -= v59;
          v60 += v59;
        }

        while (v58 < v29);
        v27 = v145;
        v29 = v158;
      }

      else
      {
        a3 = v152;
        v27 = v145;
        v10 = v169;
      }

      v28 = v146;
    }

LABEL_33:
    v63 = *(a3 + 8);
    if (v29 < v63)
    {
      if (__OFSUB__(v29, v28))
      {
        goto LABEL_135;
      }

      if (v29 - v28 < v143)
      {
        break;
      }
    }

LABEL_49:
    if (v29 < v28)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v158 = v29;
    if ((result & 1) == 0)
    {
      result = sub_1DC30B0C0(0, *(v27 + 16) + 1, 1, v27);
      v27 = result;
    }

    v89 = *(v27 + 16);
    v88 = *(v27 + 24);
    v90 = v89 + 1;
    if (v89 >= v88 >> 1)
    {
      result = sub_1DC30B0C0((v88 > 1), v89 + 1, 1, v27);
      v27 = result;
    }

    *(v27 + 16) = v90;
    v91 = v27 + 32;
    v92 = (v27 + 32 + 16 * v89);
    v93 = v158;
    *v92 = v28;
    v92[1] = v93;
    v173 = *v148;
    if (!v173)
    {
      goto LABEL_144;
    }

    if (v89)
    {
      v162 = v27 + 32;
      while (1)
      {
        v94 = v90 - 1;
        v95 = (v91 + 16 * (v90 - 1));
        v96 = (v27 + 16 * v90);
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v27 + 32);
          v98 = *(v27 + 40);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_70:
          if (v100)
          {
            goto LABEL_121;
          }

          v112 = *v96;
          v111 = v96[1];
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_124;
          }

          v116 = v95[1];
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_129;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v90 < 2)
        {
          goto LABEL_123;
        }

        v119 = *v96;
        v118 = v96[1];
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_85:
        if (v115)
        {
          goto LABEL_126;
        }

        v121 = *v95;
        v120 = v95[1];
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_128;
        }

        if (v122 < v114)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v94 - 1 >= v90)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_141;
        }

        v126 = (v91 + 16 * (v94 - 1));
        v127 = *v126;
        v128 = v94;
        v129 = (v91 + 16 * v94);
        v130 = v129[1];
        v131 = v157;
        sub_1DC32726C(*a3 + *(v156 + 72) * *v126, *a3 + *(v156 + 72) * *v129, *a3 + *(v156 + 72) * v130, v173);
        v157 = v131;
        if (v131)
        {
        }

        if (v130 < v127)
        {
          goto LABEL_116;
        }

        v28 = a3;
        a3 = v27;
        v27 = *(v27 + 16);
        if (v128 > v27)
        {
          goto LABEL_117;
        }

        *v126 = v127;
        v126[1] = v130;
        if (v128 >= v27)
        {
          goto LABEL_118;
        }

        v90 = v27 - 1;
        result = memmove(v129, v129 + 2, 16 * (v27 - 1 - v128));
        *(a3 + 16) = v27 - 1;
        v132 = v27 > 2;
        v27 = a3;
        a3 = v28;
        v91 = v162;
        if (!v132)
        {
          goto LABEL_99;
        }
      }

      v101 = v91 + 16 * v90;
      v102 = *(v101 - 64);
      v103 = *(v101 - 56);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_119;
      }

      v106 = *(v101 - 48);
      v105 = *(v101 - 40);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_120;
      }

      v108 = v96[1];
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_122;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_125;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = v95[1];
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_133;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v25 = *(a3 + 8);
    v26 = v158;
    v23 = v144;
    v24 = v147;
    if (v158 >= v25)
    {
      goto LABEL_102;
    }
  }

  v64 = v28 + v143;
  if (__OFADD__(v28, v143))
  {
    goto LABEL_136;
  }

  if (v64 >= v63)
  {
    v64 = *(a3 + 8);
  }

  if (v64 < v28)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    result = sub_1DC30D6B0(v27);
    v27 = result;
LABEL_104:
    v133 = (v27 + 16);
    v134 = *(v27 + 16);
    while (v134 >= 2)
    {
      v135 = *a3;
      if (!*a3)
      {
        goto LABEL_142;
      }

      v136 = v27;
      v27 += 16 * v134;
      v137 = *v27;
      v138 = &v133[2 * v134];
      a3 = v138[1];
      v139 = v157;
      sub_1DC32726C(v135 + *(v156 + 72) * *v27, v135 + *(v156 + 72) * *v138, v135 + *(v156 + 72) * a3, v28);
      v157 = v139;
      if (v139)
      {
        break;
      }

      if (a3 < v137)
      {
        goto LABEL_130;
      }

      if (v134 - 2 >= *v133)
      {
        goto LABEL_131;
      }

      *v27 = v137;
      *(v27 + 8) = a3;
      v140 = *v133 - v134;
      if (*v133 < v134)
      {
        goto LABEL_132;
      }

      v134 = *v133 - 1;
      result = memmove(v138, v138 + 2, 16 * v140);
      *v133 = v134;
      a3 = v152;
      v27 = v136;
    }
  }

  if (v29 == v64)
  {
    goto LABEL_49;
  }

  v145 = v27;
  v65 = *a3;
  v66 = *(v156 + 72);
  v162 = *(v156 + 16);
  v67 = (v65 + v66 * (v29 - 1));
  v159 = -v66;
  v146 = v28;
  v68 = (v28 - v29);
  v160 = v65;
  v149 = v66;
  v69 = v65 + v29 * v66;
  v150 = v64;
LABEL_42:
  v158 = v29;
  v153 = v69;
  v154 = v68;
  v155 = v67;
  v70 = v68;
  while (1)
  {
    v173 = v70;
    v71 = v172;
    v72 = v162;
    (v162)(v172, v69, v10);
    v73 = v165;
    v72(v165, v67, v10);
    v74 = v166;
    sub_1DC51180C();
    sub_1DC51662C();
    v76 = v75;
    v77 = *v164;
    v78 = v74;
    v79 = v168;
    (*v164)(v78, v168);
    v80 = v167;
    sub_1DC51180C();
    sub_1DC51662C();
    v82 = v81;
    v83 = v80;
    v10 = v169;
    v77(v83, v79);
    v84 = *v171;
    (*v171)(v73, v10);
    result = v84(v71, v10);
    if (v82 >= v76)
    {
LABEL_47:
      v29 = v158 + 1;
      v67 = (v155 + v149);
      v68 = v154 - 1;
      v69 = v153 + v149;
      if (v158 + 1 == v150)
      {
        v29 = v150;
        a3 = v152;
        v27 = v145;
        v28 = v146;
        goto LABEL_49;
      }

      goto LABEL_42;
    }

    v85 = v173;
    if (!v160)
    {
      break;
    }

    v86 = *v163;
    v87 = v161;
    (*v163)(v161, v69, v10);
    swift_arrayInitWithTakeFrontToBack();
    (v86)(v67, v87, v10);
    v67 = (v67 + v159);
    v69 += v159;
    v62 = __CFADD__(v85, 1);
    v70 = v85 + 1;
    if (v62)
    {
      goto LABEL_47;
    }
  }

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
  return result;
}

uint64_t sub_1DC326BB8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v81 = a4;
  v75 = sub_1DC511B0C();
  v7 = *(v75 - 8);
  v8 = MEMORY[0x1EEE9AC00](v75);
  v74 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v62 - v10;
  v80 = sub_1DC5118BC();
  v11 = MEMORY[0x1EEE9AC00](v80);
  v72 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11);
  v78 = &v62 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v18 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v18)
  {
    goto LABEL_60;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v21 = (a2 - a1) / v17;
  v84 = a1;
  v83 = v81;
  v70 = (v7 + 8);
  v71 = (v14 + 16);
  v69 = (v14 + 8);
  v22 = v19 / v17;
  if (v21 >= v19 / v17)
  {
    v40 = v81;
    sub_1DC324104(a2, v19 / v17, v81, MEMORY[0x1E69D0B08]);
    v41 = v40 + v22 * v17;
    v42 = -v17;
    v43 = v41;
    v79 = a1;
    v65 = -v17;
    v44 = v80;
LABEL_36:
    v45 = a2 + v42;
    v46 = a3;
    v63 = v43;
    v47 = v43;
    v66 = a2 + v42;
    v67 = a2;
    while (1)
    {
      if (v41 <= v81)
      {
        v84 = a2;
        v82 = v47;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v64 = v47;
      v76 = v46;
      v77 = v46 + v42;
      v48 = v41 + v42;
      v49 = *v71;
      (*v71)();
      v50 = v72;
      (v49)(v72, v45, v44);
      v51 = v73;
      sub_1DC51184C();
      LODWORD(v68) = sub_1DC511ABC();
      v52 = *v70;
      v53 = v75;
      (*v70)(v51, v75);
      v54 = v74;
      sub_1DC51184C();
      v55 = sub_1DC511ABC();
      v52(v54, v53);
      v56 = *v69;
      (*v69)(v50, v44);
      v56(v78, v44);
      if (v68 < v55)
      {
        a3 = v77;
        if (v76 < v67 || v77 >= v67)
        {
          a2 = v66;
          swift_arrayInitWithTakeFrontToBack();
          v43 = v64;
          v42 = v65;
          a1 = v79;
        }

        else
        {
          v60 = v64;
          v43 = v64;
          v42 = v65;
          v61 = v66;
          a2 = v66;
          a1 = v79;
          if (v76 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v61;
            v43 = v60;
          }
        }

        goto LABEL_36;
      }

      v57 = v77;
      if (v76 < v41 || v77 >= v41)
      {
        swift_arrayInitWithTakeFrontToBack();
        v46 = v57;
        v41 = v48;
        v47 = v48;
        a1 = v79;
        v45 = v66;
        a2 = v67;
        v42 = v65;
      }

      else
      {
        v47 = v48;
        v18 = v41 == v76;
        v46 = v77;
        v41 = v48;
        a1 = v79;
        v45 = v66;
        a2 = v67;
        v42 = v65;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          v46 = v57;
          v41 = v48;
          v47 = v48;
        }
      }
    }

    v84 = a2;
    v82 = v63;
  }

  else
  {
    v23 = v81;
    sub_1DC324104(a1, (a2 - a1) / v17, v81, MEMORY[0x1E69D0B08]);
    v67 = v17;
    v68 = v23 + v21 * v17;
    v82 = v68;
    v77 = a3;
    v24 = v78;
    while (v81 < v68 && a2 < a3)
    {
      v79 = a1;
      v26 = *v71;
      v27 = v80;
      (*v71)(v24, a2, v80);
      v28 = v72;
      (v26)(v72, v81, v27);
      v29 = v73;
      sub_1DC51184C();
      LODWORD(v76) = sub_1DC511ABC();
      v30 = *v70;
      v31 = v75;
      (*v70)(v29, v75);
      v32 = a2;
      v33 = v74;
      sub_1DC51184C();
      LODWORD(v26) = sub_1DC511ABC();
      v30(v33, v31);
      v34 = *v69;
      (*v69)(v28, v27);
      v34(v24, v27);
      if (v76 >= v26)
      {
        a2 = v32;
        v35 = v67;
        v38 = v81 + v67;
        v36 = v79;
        if (v79 < v81 || v79 >= v38)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v77;
        }

        else
        {
          a3 = v77;
          if (v79 != v81)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v83 = v38;
        v81 = v38;
      }

      else
      {
        v35 = v67;
        a2 = v32 + v67;
        v36 = v79;
        if (v79 < v32 || v79 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v77;
        }

        else
        {
          a3 = v77;
          if (v79 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      a1 = v36 + v35;
      v84 = a1;
    }
  }

LABEL_58:
  sub_1DC327934(&v84, &v83, &v82, MEMORY[0x1E69D0B08]);
  return 1;
}

uint64_t sub_1DC32726C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v85 = a4;
  v80 = sub_1DC51663C();
  v7 = *(v80 - 8);
  v8 = MEMORY[0x1EEE9AC00](v80);
  v79 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v78 = v68 - v10;
  v84 = sub_1DC5118BC();
  v11 = MEMORY[0x1EEE9AC00](v84);
  v77 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11);
  v82 = v68 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v18 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v18)
  {
    goto LABEL_60;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v21 = (a2 - a1) / v17;
  v88 = a1;
  v87 = v85;
  v75 = (v7 + 8);
  v76 = (v14 + 16);
  v74 = (v14 + 8);
  v22 = v19 / v17;
  if (v21 >= v19 / v17)
  {
    v45 = v85;
    sub_1DC324104(a2, v19 / v17, v85, MEMORY[0x1E69D0B08]);
    v46 = v45 + v22 * v17;
    v47 = -v17;
    v48 = v46;
    v83 = a1;
    v70 = v47;
LABEL_36:
    v72 = a2 + v47;
    v68[0] = v48;
    v71 = a2;
    while (1)
    {
      if (v46 <= v85)
      {
        v88 = a2;
        v86 = v48;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v69 = v48;
      v81 = a3 + v47;
      v49 = v46 + v47;
      v50 = *v76;
      v51 = v84;
      v73 = a3;
      v50();
      v52 = v77;
      (v50)(v77, v72, v51);
      v53 = v78;
      sub_1DC51180C();
      sub_1DC51662C();
      v55 = v54;
      v56 = *v75;
      v57 = v53;
      v58 = v80;
      (*v75)(v57, v80);
      v59 = v79;
      sub_1DC51180C();
      sub_1DC51662C();
      v61 = v60;
      v56(v59, v58);
      v62 = *v74;
      (*v74)(v52, v51);
      v62(v82, v51);
      if (v61 < v55)
      {
        a3 = v81;
        if (v73 < v71 || v81 >= v71)
        {
          a2 = v72;
          swift_arrayInitWithTakeFrontToBack();
          v48 = v69;
          v47 = v70;
          a1 = v83;
        }

        else
        {
          v66 = v69;
          v47 = v70;
          v48 = v69;
          v67 = v72;
          a2 = v72;
          a1 = v83;
          if (v73 != v71)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v67;
            v48 = v66;
          }
        }

        goto LABEL_36;
      }

      v63 = v81;
      v64 = v73 < v46 || v81 >= v46;
      a2 = v71;
      if (v64)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v63;
        v46 = v49;
        v48 = v49;
        a1 = v83;
        v47 = v70;
      }

      else
      {
        v48 = v49;
        v18 = v46 == v73;
        a3 = v81;
        v46 = v49;
        a1 = v83;
        v47 = v70;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v63;
          v46 = v49;
          v48 = v49;
        }
      }
    }

    v88 = a2;
    v86 = v68[0];
  }

  else
  {
    v23 = v85;
    sub_1DC324104(a1, (a2 - a1) / v17, v85, MEMORY[0x1E69D0B08]);
    v72 = v17;
    v73 = v23 + v21 * v17;
    v86 = v73;
    v81 = a3;
    while (v85 < v73 && a2 < a3)
    {
      v83 = a1;
      v25 = *v76;
      v26 = v82;
      v27 = v84;
      (*v76)(v82, a2, v84);
      v28 = v77;
      (v25)(v77, v85, v27);
      v29 = v78;
      sub_1DC51180C();
      sub_1DC51662C();
      v31 = v30;
      v32 = *v75;
      v33 = v29;
      v34 = a2;
      v35 = v80;
      (*v75)(v33, v80);
      v36 = v79;
      sub_1DC51180C();
      sub_1DC51662C();
      v38 = v37;
      v32(v36, v35);
      v39 = *v74;
      (*v74)(v28, v27);
      v39(v26, v27);
      if (v38 >= v31)
      {
        v40 = v72;
        v43 = v85 + v72;
        v41 = v83;
        if (v83 < v85 || v83 >= v43)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v81;
          a2 = v34;
        }

        else
        {
          a3 = v81;
          a2 = v34;
          if (v83 != v85)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v87 = v43;
        v85 = v43;
      }

      else
      {
        v40 = v72;
        a2 = v34 + v72;
        v41 = v83;
        if (v83 < v34 || v83 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v81;
        }

        else
        {
          a3 = v81;
          if (v83 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      a1 = v41 + v40;
      v88 = a1;
    }
  }

LABEL_58:
  sub_1DC327934(&v88, &v87, &v86, MEMORY[0x1E69D0B08]);
  return 1;
}

void sub_1DC327934(unint64_t *a1, unint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  OUTLINED_FUNCTION_35();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  v10 = v5 + (v6 - v5) / v8 * v8;
  if (v4 < v5 || v4 >= v10)
  {
    OUTLINED_FUNCTION_31_0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    OUTLINED_FUNCTION_31_0();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1DC327A94()
{
  v1 = OUTLINED_FUNCTION_5_1();
  v2(v1);
  OUTLINED_FUNCTION_35();
  v3 = OUTLINED_FUNCTION_43();
  v4(v3);
  return v0;
}

unint64_t sub_1DC327AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7BA90;
  if (!qword_1ECC7BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BA90);
  }

  return result;
}

uint64_t sub_1DC327B3C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DC327B84()
{
  v1 = OUTLINED_FUNCTION_5_1();
  v2(v1);
  OUTLINED_FUNCTION_35();
  v3 = OUTLINED_FUNCTION_43();
  v4(v3);
  return v0;
}

uint64_t sub_1DC327BD8()
{
  v1 = OUTLINED_FUNCTION_155();
  v2(v1);
  OUTLINED_FUNCTION_35();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1DC327C2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_86_1()
{

  return sub_1DC2DB2AC();
}

uint64_t sub_1DC327CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v16 = type metadata accessor for NLRouterServiceUserDefaults(0, a8, a3, a4);
  result = (*(*(a8 - 8) + 32))(&a9[v16[7]], a3, a8);
  *&a9[v16[8]] = a4;
  v18 = &a9[v16[9]];
  *v18 = a5;
  *(v18 + 1) = a6;
  *&a9[v16[10]] = a7;
  return result;
}

uint64_t sub_1DC327DC8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v67 = a2;
  v4 = a1 - 8;
  v65 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_15();
  v64 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v53 - v7;
  v8 = *(v4 + 24);
  v9 = sub_1DC517D8C();
  OUTLINED_FUNCTION_2_3();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  OUTLINED_FUNCTION_2_3();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v62 = v18;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v53 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v53 - v23;
  v24 = *(v2 + *(v4 + 48));
  v25 = sub_1DC5176FC();
  v26 = [v24 objectForKey_];

  if (!v26)
  {
    return (*(v16 + 16))(v67, v2 + *(a1 + 28), v8);
  }

  sub_1DC517E8C();
  swift_unknownObjectRelease();
  sub_1DC291F78(v69, v68);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v8);
    (*(v11 + 8))(v14, v9);
    return (*(v16 + 16))(v67, v2 + *(a1 + 28), v8);
  }

  __swift_storeEnumTagSinglePayload(v14, 0, 1, v8);
  v27 = v66;
  v60 = *(v16 + 32);
  v61 = v16 + 32;
  v60(v66, v14, v8);
  v28 = sub_1DC517B9C();
  v29 = *(v2 + *(a1 + 32));
  v30 = *(v65 + 16);
  v30(v63, v2, a1);
  v58 = a1;
  v30(v64, v2, a1);
  v31 = *(v16 + 16);
  v59 = v22;
  v31(v22, v27, v8);
  v56 = v28;
  v57 = v29;
  if (os_log_type_enabled(v29, v28))
  {
    v32 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v68[0] = v55;
    *v32 = 136315650;
    v54 = v31;
    v33 = v58;
    v34 = v63;
    v35 = &v63[*(v58 + 36)];
    v36 = *v35;
    v37 = v35[1];
    v65 = *(v65 + 8);
    v38 = v65;

    v38(v34, v33);
    v39 = sub_1DC291244(v36, v37, v68);

    *(v32 + 4) = v39;
    *(v32 + 12) = 2080;
    v40 = v64;
    v41 = *v64;
    v42 = v64[1];

    (v65)(v40, v33);
    v43 = sub_1DC291244(v41, v42, v68);

    *(v32 + 14) = v43;
    *(v32 + 22) = 2080;
    v44 = v59;
    v54(v62, v59, v8);
    v45 = sub_1DC51777C();
    v47 = v46;
    (*(v16 + 8))(v44, v8);
    v48 = sub_1DC291244(v45, v47, v68);

    *(v32 + 24) = v48;
    _os_log_impl(&dword_1DC287000, v57, v56, "defaults read %s %s -> %s", v32, 0x20u);
    v49 = v55;
    swift_arrayDestroy();
    MEMORY[0x1E1298840](v49, -1, -1);
    MEMORY[0x1E1298840](v32, -1, -1);
  }

  else
  {
    (*(v16 + 8))(v59, v8);
    v51 = *(v65 + 8);
    v52 = v58;
    v51(v64, v58);
    v51(v63, v52);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  return (v60)(v67, v66, v8);
}

uint64_t sub_1DC328378(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 16) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((((*(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1DC3284D0(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v20 = (a1 + v10 + 16) & ~v10;

            __swift_storeEnumTagSinglePayload(v20, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            a1[1] = 0;
          }

          else
          {
            a1[1] = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = OUTLINED_FUNCTION_43();
      bzero(v18, v19);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        break;
      case 2:
        *(a1 + v11) = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v11) = v16;
        break;
      default:
        return;
    }
  }
}

id sub_1DC3286BC()
{
  type metadata accessor for RegexHelper();
  v1 = swift_allocObject();
  v2 = 0x1E696A000uLL;
  v3 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  *(v1 + 16) = sub_1DC333108(0x2E3D3F2B2E5C5C1BLL, 0xEC0000005C5C3F2ALL, 0);
  if (qword_1ECC82558 != -1)
  {
    OUTLINED_FUNCTION_20_9(&qword_1ECC82558);
  }

  v4 = sub_1DC43EA74();
  v5 = v4[2];
  if (v5)
  {
    v18 = v1;
    v19 = MEMORY[0x1E69E7CC0];
    sub_1DC2DF6FC(0, v5, 0);
    v6 = 32;
    v7 = v19;
    do
    {
      sub_1DC428688(*(v4 + v6));
      OUTLINED_FUNCTION_155_1();
      v9 = *(v19 + 16);
      v8 = *(v19 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1DC2DF6FC((v8 > 1), v9 + 1, 1);
      }

      *(v19 + 16) = v9 + 1;
      v10 = v19 + 16 * v9;
      *(v10 + 32) = 0x1E696A000uLL;
      *(v10 + 40) = v0;
      ++v6;
      --v5;
    }

    while (v5);

    v1 = v18;
    v2 = 0x1E696A000;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  sub_1DC3332AC(v7);
  v11 = OUTLINED_FUNCTION_48_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_1_6();
  sub_1DC333268(v13, &qword_1ECC7C130, &unk_1DC5240F0);
  sub_1DC5176AC();
  OUTLINED_FUNCTION_137();

  v14 = objc_allocWithZone(*(v2 + 3696));
  v15 = OUTLINED_FUNCTION_48_0();
  result = sub_1DC333108(v15, v16, 0);
  *(v1 + 24) = result;
  qword_1ECC8F6F0 = v1;
  return result;
}

uint64_t *sub_1DC328998()
{
  if (qword_1ECC85140 != -1)
  {
    OUTLINED_FUNCTION_58_5(&qword_1ECC85140);
  }

  return &qword_1ECC8F6F0;
}

uint64_t sub_1DC3289D8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_1DC51588C();
  v6 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1DC2AA348(0, v9, 0);
  v10 = v22;
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = a3 + v18;
  v17 = (v6 + 32);
  v12 = *(v6 + 72);
  while (1)
  {
    v20(v11);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1DC2AA348((v13 > 1), v14 + 1, 1);
      v10 = v22;
    }

    *(v10 + 16) = v14 + 1;
    (*v17)(v10 + v18 + v14 * v12, v8, v19);
    v11 += v12;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC328B94()
{
  OUTLINED_FUNCTION_144_0();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_73();
    v3 = sub_1DC5176FC();

    v4 = OUTLINED_FUNCTION_65_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
    v6 = sub_1DC333268(&qword_1ECC7CAF0, &qword_1ECC7CAE8, &unk_1DC5240C0);
    sub_1DC2A32B0(v6, v7, v8);
    v9 = sub_1DC517D5C();
    v11 = v10;
    v12 = sub_1DC5176FC();
    v13 = [v2 stringByReplacingMatchesInString:v3 options:0 range:v9 withTemplate:{v11, v12}];

    sub_1DC51772C();
  }

  else
  {
    sub_1DC517BAC();
    OUTLINED_FUNCTION_21_2();
    v14 = sub_1DC296DBC();
    v15 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v15, v16, v17, v18, 70, 2);
  }

  return OUTLINED_FUNCTION_73();
}

uint64_t sub_1DC328D20(uint64_t a1)
{
  if (*(v1 + 24))
  {
    OUTLINED_FUNCTION_140_0();
    v4 = v3;
    OUTLINED_FUNCTION_36();
    v5 = sub_1DC5176FC();
    v6 = OUTLINED_FUNCTION_36();
    v7 = [v4 firstMatchInString:v5 options:0 range:{0, MEMORY[0x1E12961D0](v6)}];

    if (!v7)
    {
      return 0;
    }

    v8 = 1;
  }

  else
  {
    sub_1DC517BAC();
    OUTLINED_FUNCTION_135();
    v7 = sub_1DC296DBC();
    sub_1DC516F0C(v2, &dword_1DC287000, v7, "Uninitialized regex for model special tokens, returning original text", 69, 2, MEMORY[0x1E69E7CC0]);
    v8 = 0;
  }

  return v8;
}

void sub_1DC328E00()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_144_0();
  sub_1DC51072C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v2;
    OUTLINED_FUNCTION_73();
    v4 = sub_1DC5176FC();
    v5 = OUTLINED_FUNCTION_73();
    v6 = MEMORY[0x1E12961D0](v5);
    v7 = sub_1DC5176FC();
    v8 = [v3 stringByReplacingMatchesInString:v4 options:0 range:0 withTemplate:{v6, v7}];

    sub_1DC51772C();
    v9 = sub_1DC51070C();
    sub_1DC2A32B0(v9, v10, v11);
    sub_1DC517E0C();

    v12 = OUTLINED_FUNCTION_29_0();
    v13(v12);
  }

  else
  {
    sub_1DC517BAC();
    OUTLINED_FUNCTION_21_2();
    v14 = sub_1DC296DBC();
    v15 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v15, v16, v17, v18, 69, 2);
  }

  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_154();
}

uint64_t sub_1DC328FE8()
{
  sub_1DC328FC0();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1DC32901C()
{
  OUTLINED_FUNCTION_33();
  v19 = sub_1DC51072C();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_4();
  v4 = sub_1DC31D128();
  v5 = v4[2];
  if (v5)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1DC2DF6FC(0, v5, 0);
    v6 = v20;
    v18 = (v2 + 8);
    v7 = 32;
    do
    {
      v8 = v4;
      sub_1DC31CF60(*(v4 + v7));
      v9 = sub_1DC51070C();
      sub_1DC2A32B0(v9, v10, v11);
      v12 = sub_1DC517E0C();
      v14 = v13;
      (*v18)(v0, v19);

      v16 = *(v20 + 16);
      v15 = *(v20 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1DC2DF6FC((v15 > 1), v16 + 1, 1);
      }

      *(v20 + 16) = v16 + 1;
      v17 = v20 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      ++v7;
      --v5;
      v4 = v8;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  qword_1ECC8F588 = v6;
  OUTLINED_FUNCTION_34();
}

BOOL sub_1DC3291C4(uint64_t a1, uint64_t a2)
{
  sub_1DC51808C();
  OUTLINED_FUNCTION_23_2();

  return v2 != 0;
}

uint64_t sub_1DC329230()
{
  sub_1DC5182FC();
  sub_1DC51769C();
  return sub_1DC51833C();
}

uint64_t sub_1DC3292B4(uint64_t a1)
{
  sub_1DC5182FC();
  sub_1DC51769C();
  return sub_1DC51833C();
}

BOOL sub_1DC32930C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC3291C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DC329340(uint64_t a1@<X8>)
{
  strcpy(a1, "[[Redacted]]");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_1DC329368(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DC51783C();
  if (v3 < a1)
  {
    a1 = v3;
  }

  OUTLINED_FUNCTION_31_0();
  result = sub_1DC51783C();
  if (result < a1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_57_2();

    return sub_1DC3293DC();
  }

  return result;
}

unint64_t sub_1DC3293DC()
{
  OUTLINED_FUNCTION_144_0();
  v2 = sub_1DC51783C();
  if (v2 >= v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3 & ~(v3 >> 63);
  OUTLINED_FUNCTION_31_0();
  v5 = sub_1DC51783C();
  if ((v0 & ~(v0 >> 63)) >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v0 & ~(v0 >> 63);
  }

  OUTLINED_FUNCTION_57_2();
  result = sub_1DC51786C();
  if (__OFSUB__(v6, v4))
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    OUTLINED_FUNCTION_57_2();
    result = sub_1DC51786C();
    if (result >> 14 >= v8 >> 14)
    {
      OUTLINED_FUNCTION_57_2();
      v9 = sub_1DC5179AC();
      MEMORY[0x1E1296060](v9);
      OUTLINED_FUNCTION_123_0();

      return OUTLINED_FUNCTION_56_0();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC3294B4()
{
  sub_1DC428688(6);
  sub_1DC2A32B0(v1, v2, v3);
  OUTLINED_FUNCTION_27_9();
  sub_1DC517E1C();
  OUTLINED_FUNCTION_137();

  v6 = &v6;
  v7 = v0;
  sub_1DC428688(7);
  OUTLINED_FUNCTION_27_9();
  sub_1DC517E1C();
  OUTLINED_FUNCTION_163();

  v6 = &v6;
  v7 = 0xE000000000000000;
  sub_1DC428688(2);
  v4 = sub_1DC517E6C();

  return v4;
}

void sub_1DC3295D4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_42_0();
  sub_1DC51072C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_1();
  v1 = sub_1DC43EAB8();
  v2 = v1[2];
  if (v2)
  {

    v3 = 32;
    do
    {
      sub_1DC428688(*(v1 + v3));
      sub_1DC2A32B0(v4, v5, v6);
      OUTLINED_FUNCTION_27_9();
      sub_1DC517E1C();

      ++v3;
      --v2;
    }

    while (v2);
  }

  else
  {
  }

  v7 = sub_1DC5106FC();
  sub_1DC2A32B0(v7, v8, v9);
  sub_1DC517E0C();
  OUTLINED_FUNCTION_137();
  v10 = OUTLINED_FUNCTION_73();
  v11(v10);

  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC32977C()
{
  sub_1DC428688(1);
  v0 = sub_1DC42867C();
  sub_1DC2A32B0(v0, v1, v2);
  OUTLINED_FUNCTION_27_9();
  sub_1DC517E1C();
  OUTLINED_FUNCTION_123_0();

  return OUTLINED_FUNCTION_56_0();
}

uint64_t sub_1DC329804@<X0>(uint64_t a1@<X8>)
{
  sub_1DC428688(4);
  v35 = v2;
  v5 = sub_1DC2A32B0(v2, v3, v4);
  OUTLINED_FUNCTION_32_7(v5, MEMORY[0x1E69E6158], v6, v7, v8, v9, v10, v11, v35);
  v12 = sub_1DC517E5C();

  if (v12)
  {
    v13 = MEMORY[0x1E69D02F8];
  }

  else
  {
    sub_1DC428688(26);
    OUTLINED_FUNCTION_32_7(v14, MEMORY[0x1E69E6158], v15, v16, v17, v18, v19, v20, v14);
    v21 = sub_1DC517E5C();

    if (v21)
    {
      v13 = MEMORY[0x1E69D02F0];
    }

    else
    {
      sub_1DC428688(27);
      OUTLINED_FUNCTION_32_7(v22, MEMORY[0x1E69E6158], v23, v24, v25, v26, v27, v28, v22);
      v29 = sub_1DC517E5C();

      if (v29)
      {
        sub_1DC515F3C();
        OUTLINED_FUNCTION_16_4();
        sub_1DC3339CC(v30, v31);
        OUTLINED_FUNCTION_56_7();
        sub_1DC51502C();
        sub_1DC51500C();

        v13 = MEMORY[0x1E69D02E0];
      }

      else
      {
        v13 = MEMORY[0x1E69D02D8];
      }
    }
  }

  v32 = *v13;
  sub_1DC5157EC();
  OUTLINED_FUNCTION_35();
  return (*(v33 + 104))(a1, v32);
}

BOOL sub_1DC3299B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  OUTLINED_FUNCTION_42_0();
  sub_1DC428688(27);
  sub_1DC329B0C();
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v11 = 0;
  v12 = v4 + 40;
  v13 = *(v4 + 16) + 1;
  while (--v13)
  {
    v14 = v12 + 16;
    sub_1DC2A32B0(v8, v9, v10);
    v8 = sub_1DC517E5C();
    v12 = v14;
    v15 = __OFADD__(v11, v8 & 1);
    v11 += v8 & 1;
    if (v15)
    {
      __break(1u);
      return 0;
    }
  }

  sub_1DC517B9C();
  OUTLINED_FUNCTION_135();
  v17 = sub_1DC296DBC();
  if (os_log_type_enabled(v17, v5))
  {
    v18 = OUTLINED_FUNCTION_63();
    *v18 = 134217984;
    *(v18 + 4) = v11;
    _os_log_impl(&dword_1DC287000, v17, v5, "Number of tools found in model output %ld", v18, 0xCu);
    OUTLINED_FUNCTION_66();
  }

  return v11 == 1;
}

void sub_1DC329B0C()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_97_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v1);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_35_0();
  v3 = sub_1DC51783C();
  OUTLINED_FUNCTION_47_0();
  if (v3 >= sub_1DC51783C())
  {
    OUTLINED_FUNCTION_47_0();
    sub_1DC51783C();
    sub_1DC51786C();
    v4 = sub_1DC510C8C();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_62_3();
    v9(v5, v6, v7, v8);
    OUTLINED_FUNCTION_61();
    v13 = __swift_storeEnumTagSinglePayload(v10, v11, v12, v4);
    sub_1DC2A32B0(v13, v14, v15);
    sub_1DC517E4C();
    sub_1DC28EB30(v0, &qword_1ECC7CD00, &unk_1DC5259F0);
  }

  OUTLINED_FUNCTION_154();
}

void sub_1DC329C6C()
{
  OUTLINED_FUNCTION_33();
  v26 = v1;
  v27 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CAF8, &qword_1DC5240D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_4();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB00, &qword_1DC5240D8);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DC522F20;
  v12 = (v11 + v10);
  v13 = *(v5 + 48);
  *v12 = 0x747067746168633CLL;
  *(v12 + 1) = 0xE90000000000003ELL;
  v14 = *MEMORY[0x1E69D0620];
  v15 = sub_1DC515F4C();
  v16 = *(v15 - 8);
  (*(v16 + 104))(&v12[v13], v14, v15);
  OUTLINED_FUNCTION_115();
  v17 = sub_1DC2DB2AC();
  v30 = v4;
  v31 = v26;
  v18 = v0[1];
  v28 = *v0;
  v29 = v18;
  v21 = sub_1DC2A32B0(v17, v19, v20);
  if (OUTLINED_FUNCTION_50_7(v21, MEMORY[0x1E69E6158], v22, v21))
  {
    swift_setDeallocating();
    sub_1DC3331E4();
    sub_1DC2DB254();

    v23 = v27;
    (*(v16 + 32))(v27, &v9[*(v5 + 48)], v15);
    v24 = 0;
    v25 = v23;
  }

  else
  {
    sub_1DC28EB30(v0, &qword_1ECC7CAF8, &qword_1DC5240D0);
    swift_setDeallocating();
    sub_1DC3331E4();
    v24 = 1;
    v25 = v27;
  }

  __swift_storeEnumTagSinglePayload(v25, v24, 1, v15);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC329EF0()
{
  OUTLINED_FUNCTION_144_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB08, &unk_1DC5240E0);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_148();
  v18 = v2;
  v19 = v1;
  sub_1DC428688(28);
  v17[0] = v5;
  v17[1] = v6;
  v8 = sub_1DC2A32B0(v5, v6, v7);
  v10 = OUTLINED_FUNCTION_110_0(v17, MEMORY[0x1E69E6158], v9, v8);

  if (v10)
  {
    return 1;
  }

  OUTLINED_FUNCTION_73();
  sub_1DC329C6C();
  sub_1DC515F4C();
  v12 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v12, v13, v14);
  if (v15)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  sub_1DC28EB30(v0, &qword_1ECC7CB08, &unk_1DC5240E0);
  return v11;
}

uint64_t sub_1DC329FF0()
{
  OUTLINED_FUNCTION_140_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DC523DA0;
  sub_1DC428688(3);
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  sub_1DC428688(27);
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_1DC428688(4);
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  sub_1DC428688(26);
  *(inited + 80) = v8;
  *(inited + 88) = v9;
  sub_1DC2A32B0(v8, v9, v10);
  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = v11 + 16;
    if (v11 == 64)
    {
      break;
    }

    v14 = sub_1DC517E5C();
    v11 = v13;
    v15 = __OFADD__(v12, v14 & 1);
    v12 += v14 & 1;
    if (v15)
    {
      __break(1u);
      break;
    }
  }

  swift_setDeallocating();
  sub_1DC2A180C();
  sub_1DC517B9C();
  OUTLINED_FUNCTION_135();
  v16 = sub_1DC296DBC();
  if (os_log_type_enabled(v16, v0))
  {
    v17 = OUTLINED_FUNCTION_63();
    *v17 = 134217984;
    *(v17 + 4) = v12;
    _os_log_impl(&dword_1DC287000, v16, v0, "Number of routing labels found in model output %ld", v17, 0xCu);
    OUTLINED_FUNCTION_66();
  }

  if (v12 <= 1)
  {
    v18 = 2;
  }

  else
  {
    v18 = 3;
  }

  if (v12 == 1)
  {
    return 5;
  }

  else
  {
    return v18;
  }
}

uint64_t sub_1DC32A17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DC428688(3);
  sub_1DC329B0C();
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_1DC428688(1);
  v38 = v9;
  v12 = sub_1DC2A32B0(v9, v10, v11);
  OUTLINED_FUNCTION_32_7(v12, MEMORY[0x1E69E6158], v13, v14, v15, v16, v17, v18, v38);
  v19 = sub_1DC517E5C();

  if ((v19 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1DC428688(1);
  v19 = v20;
  if (v21 == a4 && v20 == a5)
  {

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_36();
  v23 = sub_1DC51825C();

  if (v23)
  {
LABEL_11:
    sub_1DC428688(8);
    OUTLINED_FUNCTION_32_7(v30, MEMORY[0x1E69E6158], v31, v32, v33, v34, v35, v36, v30);
    sub_1DC517E5C();
    OUTLINED_FUNCTION_168();
    v29 = v19 ^ 1;
    return v29 & 1;
  }

  sub_1DC517B9C();
  OUTLINED_FUNCTION_21_2();
  v24 = sub_1DC296DBC();
  v25 = OUTLINED_FUNCTION_40_1();
  sub_1DC516F0C(v25, v26, v27, v28, 32, 2);

LABEL_9:
  v29 = 0;
  return v29 & 1;
}

void sub_1DC32A2FC()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_97_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v1);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_35_0();
  v3 = sub_1DC51783C();
  OUTLINED_FUNCTION_47_0();
  if (v3 >= sub_1DC51783C())
  {
    v4 = sub_1DC510C8C();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_62_3();
    v9(v5, v6, v7, v8);
    OUTLINED_FUNCTION_61();
    v13 = __swift_storeEnumTagSinglePayload(v10, v11, v12, v4);
    sub_1DC2A32B0(v13, v14, v15);
    sub_1DC517E2C();
    sub_1DC28EB30(v0, &qword_1ECC7CD00, &unk_1DC5259F0);
  }

  OUTLINED_FUNCTION_154();
}

void sub_1DC32A444()
{
  OUTLINED_FUNCTION_33();
  v62 = v2;
  sub_1DC5157CC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  v65 = v4;
  v66 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v63 = sub_1DC515F3C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_4();
  sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = (v11 - v10);
  v13 = OUTLINED_FUNCTION_54_4();
  v14(v13);
  v15 = OUTLINED_FUNCTION_75();
  v17 = v16(v15);
  if (v17 == *MEMORY[0x1E69D02E8])
  {
    v18 = OUTLINED_FUNCTION_75();
    v19(v18);
    OUTLINED_FUNCTION_42_5();
    v20 = OUTLINED_FUNCTION_47_6();
    v21(v20);
    sub_1DC5157AC();
    if (v22)
    {
      if (v62)
      {

        OUTLINED_FUNCTION_59_3();
      }

      else
      {
        OUTLINED_FUNCTION_100_1();
        sub_1DC517F4C();

        OUTLINED_FUNCTION_146_0();
        v43 = OUTLINED_FUNCTION_73();
        MEMORY[0x1E1296160](v43);

        OUTLINED_FUNCTION_132_0();
      }

      v23 = OUTLINED_FUNCTION_41();
      v24(v23);
    }

    else
    {
      OUTLINED_FUNCTION_143_0();
      v41 = OUTLINED_FUNCTION_119();
      v42(v41);
    }

LABEL_33:
    OUTLINED_FUNCTION_30_6();
    OUTLINED_FUNCTION_34();
    return;
  }

  if (v17 == *MEMORY[0x1E69D02D0])
  {
    v25 = OUTLINED_FUNCTION_75();
    v26(v25);
    v27 = *v12;
    if (v62)
    {

      OUTLINED_FUNCTION_59_3();
    }

    else
    {
      OUTLINED_FUNCTION_100_1();
      sub_1DC517F4C();

      OUTLINED_FUNCTION_146_0();
      v44 = *(v27 + 16);
      if (v44)
      {
        v68 = MEMORY[0x1E69E7CC0];
        sub_1DC2DF6FC(0, v44, 0);
        v45 = v68;
        v46 = v27 + 40;
        do
        {

          v47 = OUTLINED_FUNCTION_42_2();
          MEMORY[0x1E1296160](v47);
          OUTLINED_FUNCTION_132_0();

          v49 = *(v68 + 16);
          v48 = *(v68 + 24);
          if (v49 >= v48 >> 1)
          {
            v51 = OUTLINED_FUNCTION_26(v48);
            sub_1DC2DF6FC(v51, v49 + 1, 1);
          }

          *(v68 + 16) = v49 + 1;
          v50 = v68 + 16 * v49;
          *(v50 + 32) = 60;
          *(v50 + 40) = 0xE100000000000000;
          v46 += 16;
          --v44;
        }

        while (v44);
      }

      else
      {

        v45 = MEMORY[0x1E69E7CC0];
      }

      MEMORY[0x1E12962D0](v45, MEMORY[0x1E69E6158]);

      v59 = OUTLINED_FUNCTION_63_0();
      MEMORY[0x1E1296160](v59);
    }

    goto LABEL_33;
  }

  if (v17 != *MEMORY[0x1E69D02C8])
  {
    if (v17 == *MEMORY[0x1E69D02E0])
    {
      v52 = OUTLINED_FUNCTION_75();
      v53(v52);
      (*(v7 + 32))(v0, v12, v63);
      sub_1DC32ABA4();
      v54 = OUTLINED_FUNCTION_62_2();
      v55(v54);
    }

    else if (v17 == *MEMORY[0x1E69D02D8])
    {
      OUTLINED_FUNCTION_143_0();
    }

    else if (v17 != *MEMORY[0x1E69D02F8] && v17 != *MEMORY[0x1E69D02F0])
    {
      OUTLINED_FUNCTION_59_3();
      v60 = OUTLINED_FUNCTION_75();
      v61(v60);
    }

    goto LABEL_33;
  }

  v28 = OUTLINED_FUNCTION_75();
  v29(v28);
  v30 = *v12;
  v31 = *(*v12 + 16);
  if (!v31)
  {

    v33 = MEMORY[0x1E69E7CC0];
LABEL_30:
    OUTLINED_FUNCTION_100_1();
    sub_1DC517F4C();

    OUTLINED_FUNCTION_146_0();
    v56 = MEMORY[0x1E12962D0](v33, MEMORY[0x1E69E6158]);
    v58 = v57;

    MEMORY[0x1E1296160](v56, v58);

    OUTLINED_FUNCTION_132_0();
    goto LABEL_33;
  }

  v67 = MEMORY[0x1E69E7CC0];
  sub_1DC2DF6FC(0, v31, 0);
  v32 = 0;
  v33 = v67;
  OUTLINED_FUNCTION_24();
  v64 = v30 + v34;
  while (v32 < *(v30 + 16))
  {
    (*(v66 + 16))(v1, v64 + *(v66 + 72) * v32, v65);
    sub_1DC32AE40();
    v35 = OUTLINED_FUNCTION_107();
    v36(v35);
    v38 = *(v67 + 16);
    v37 = *(v67 + 24);
    if (v38 >= v37 >> 1)
    {
      v40 = OUTLINED_FUNCTION_26(v37);
      sub_1DC2DF6FC(v40, v38 + 1, 1);
    }

    ++v32;
    *(v67 + 16) = v38 + 1;
    v39 = v67 + 16 * v38;
    *(v39 + 32) = v69;
    *(v39 + 40) = v70;
    if (v31 == v32)
    {

      goto LABEL_30;
    }
  }

  __break(1u);
}

void sub_1DC32ABA4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  sub_1DC5161CC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  sub_1DC5162EC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4_6();
  sub_1DC515F2C();
  v2 = OUTLINED_FUNCTION_16();
  v4 = v3(v2);
  v5 = *MEMORY[0x1E69D08F0];
  v6 = OUTLINED_FUNCTION_16();
  v7(v6);
  sub_1DC515E2C();
  OUTLINED_FUNCTION_145_0();
  v8 = OUTLINED_FUNCTION_30_6();
  v10 = v9(v8);
  if (v10 == *MEMORY[0x1E69D0720] || v10 == *MEMORY[0x1E69D0730] || v10 == *MEMORY[0x1E69D0718] || v10 == *MEMORY[0x1E69D0728])
  {
    OUTLINED_FUNCTION_59_3();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_30_6();
    v14(v13);
  }

  if (v4 == v5)
  {
    v11 = 0x6963696C706D693CLL;
  }

  else
  {
    v11 = 0x6963696C7078653CLL;
  }

  MEMORY[0x1E1296160](v11, 0xEA00000000003E74);

  v12 = OUTLINED_FUNCTION_30_6();
  MEMORY[0x1E1296160](v12);

  OUTLINED_FUNCTION_34();
}

void sub_1DC32AE40()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  v6 = v5;
  v52 = v7;
  sub_1DC5158DC();
  OUTLINED_FUNCTION_0();
  v50 = v9;
  v51 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v49 = v10;
  OUTLINED_FUNCTION_12();
  v11 = sub_1DC51591C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v13 = sub_1DC51587C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v15 = sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  (*(v17 + 16))(v2, v6, v15);
  v19 = OUTLINED_FUNCTION_75_1();
  v21 = v20(v19);
  if (v21 != *MEMORY[0x1E69D0330])
  {
    if (v21 != *MEMORY[0x1E69D0340])
    {
      if (v21 != *MEMORY[0x1E69D0338])
      {
        OUTLINED_FUNCTION_146_0();
        *v52 = 0xD000000000000011;
        v52[1] = v43;
        v44 = OUTLINED_FUNCTION_75_1();
        v45(v44);
        goto LABEL_16;
      }

      v38 = OUTLINED_FUNCTION_75_1();
      v39(v38);
      (*(v50 + 32))(v49, v2, v51);
      if (v4)
      {
        OUTLINED_FUNCTION_59_3();
        v40 = OUTLINED_FUNCTION_77_1();
        v41(v40);
        v27 = 0xD000000000000011;
        goto LABEL_11;
      }

      v46 = sub_1DC5158AC();
      MEMORY[0x1E1296160](v46);

      OUTLINED_FUNCTION_132_0();
      v34 = 0x3E6863726165533CLL;
      v35 = 0xE90000000000003CLL;
      v47 = OUTLINED_FUNCTION_77_1();
      v48(v47);
LABEL_14:
      *v52 = v34;
      v52[1] = v35;
      goto LABEL_16;
    }

    v28 = OUTLINED_FUNCTION_75_1();
    v29(v28);
    OUTLINED_FUNCTION_128();
    v30(v0, v2, v11);
    if (v4)
    {
      OUTLINED_FUNCTION_59_3();
      v31 = OUTLINED_FUNCTION_16();
      v32(v31);
      v27 = 0xD000000000000012;
      goto LABEL_11;
    }

    v42 = sub_1DC5158EC();
    MEMORY[0x1E1296160](v42);

    OUTLINED_FUNCTION_132_0();
    v34 = 0x72656E6E616C503CLL;
    v35 = 0xEA00000000003C3ELL;
    v36 = OUTLINED_FUNCTION_16();
LABEL_13:
    v37(v36);
    goto LABEL_14;
  }

  v22 = OUTLINED_FUNCTION_75_1();
  v23(v22);
  OUTLINED_FUNCTION_128();
  v24(v1, v2, v13);
  if ((v4 & 1) == 0)
  {
    v33 = sub_1DC51582C();
    MEMORY[0x1E1296160](v33);

    OUTLINED_FUNCTION_132_0();
    v34 = 0x3C3E58697269533CLL;
    v35 = 0xE800000000000000;
    v36 = OUTLINED_FUNCTION_89();
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_59_3();
  v25 = OUTLINED_FUNCTION_89();
  v26(v25);
  v27 = 0xD000000000000010;
LABEL_11:
  *v52 = v27;
  v52[1] = v15;
LABEL_16:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC32B2D8()
{
  sub_1DC5106EC();
  swift_allocObject();
  sub_1DC5106DC();
  OUTLINED_FUNCTION_38_2();
  sub_1DC5157EC();
  sub_1DC3339CC(&qword_1ECC7BB70, MEMORY[0x1E69D0300]);
  OUTLINED_FUNCTION_63_0();
  v0 = sub_1DC5106CC();
  v2 = v1;

  v3 = OUTLINED_FUNCTION_30_6();
  sub_1DC2A6784(v3, v4);
  v5 = OUTLINED_FUNCTION_30_6();
  sub_1DC333790(v5, v6);
  if (v7)
  {
    OUTLINED_FUNCTION_137();
    v8 = OUTLINED_FUNCTION_30_6();
    sub_1DC2AD740(v8, v9);
LABEL_9:
    v21 = OUTLINED_FUNCTION_30_6();
    sub_1DC2AD740(v21, v22);
    return OUTLINED_FUNCTION_48_0();
  }

  v26 = v0;
  v27 = v2;
  v10 = OUTLINED_FUNCTION_30_6();
  sub_1DC2A6784(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB10, &unk_1DC52AA50);
  if (!swift_dynamicCast())
  {
    v17 = OUTLINED_FUNCTION_30_6();
    sub_1DC2AD740(v17, v18);
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_1DC28EB30(v24, &qword_1ECC7CB18, &unk_1DC524100);
LABEL_8:
    v19 = OUTLINED_FUNCTION_30_6();
    sub_1DC3333D4(v19, v20);
    OUTLINED_FUNCTION_137();
    goto LABEL_9;
  }

  sub_1DC28F9B0(v24, v28);
  __swift_project_boxed_opaque_existential_1(v28, v29);
  OUTLINED_FUNCTION_42_2();
  v12 = sub_1DC51806C();
  v13 = OUTLINED_FUNCTION_30_6();
  sub_1DC2AD740(v13, v14);
  if ((v12 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(v28, v29);
  sub_1DC51805C();
  v15 = OUTLINED_FUNCTION_30_6();
  sub_1DC2AD740(v15, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return OUTLINED_FUNCTION_48_0();
}

void sub_1DC32B52C()
{
  OUTLINED_FUNCTION_164();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB20, &unk_1DC529C40);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_24_1();
  v4 = sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_4();
  sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v7 = OUTLINED_FUNCTION_35_0();
  v8(v7);
  OUTLINED_FUNCTION_145_0();
  v9 = OUTLINED_FUNCTION_16();
  if (v10(v9) == *MEMORY[0x1E69D02C8])
  {
    v11 = OUTLINED_FUNCTION_16();
    v12(v11);
    if (*(*v1 + 16) < 2uLL)
    {
    }

    else
    {
      sub_1DC32B76C(*v1, v0);

      OUTLINED_FUNCTION_39(v0, 1, v4);
      if (v13)
      {
        sub_1DC28EB30(v0, &qword_1ECC7CB20, &unk_1DC529C40);
      }

      else
      {
        v16 = OUTLINED_FUNCTION_62_2();
        v17(v16);
        sub_1DC32B814();
        v18 = OUTLINED_FUNCTION_36();
        v19(v18);
      }
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_16();
    v15(v14);
  }

  OUTLINED_FUNCTION_154();
}

uint64_t sub_1DC32B76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DC51588C();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

void sub_1DC32B814()
{
  OUTLINED_FUNCTION_33();
  sub_1DC5158DC();
  OUTLINED_FUNCTION_0();
  v49 = v5;
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_4();
  v6 = sub_1DC51591C();
  OUTLINED_FUNCTION_0();
  v51 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  v9 = sub_1DC51587C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v13 = sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  (*(v15 + 16))(v18 - v17, v0, v13);
  v20 = OUTLINED_FUNCTION_74_0();
  v22 = v21(v20);
  if (v22 == *MEMORY[0x1E69D0330])
  {
    v23 = OUTLINED_FUNCTION_74_0();
    v24(v23);
    (*(v11 + 32))(v3, v19, v9);
    sub_1DC51582C();
    v25 = sub_1DC42867C();
    v28 = sub_1DC2A32B0(v25, v26, v27);
    OUTLINED_FUNCTION_50_7(v28, MEMORY[0x1E69E6158], v29, v28);
    OUTLINED_FUNCTION_168();
    v30 = OUTLINED_FUNCTION_41();
    v31(v30);
  }

  else if (v22 == *MEMORY[0x1E69D0340])
  {
    v32 = OUTLINED_FUNCTION_74_0();
    v33(v32);
    OUTLINED_FUNCTION_128();
    v34(v2, v19, v6);
    sub_1DC5158EC();
    v35 = sub_1DC42867C();
    v38 = sub_1DC2A32B0(v35, v36, v37);
    OUTLINED_FUNCTION_50_7(v38, MEMORY[0x1E69E6158], v39, v38);
    OUTLINED_FUNCTION_168();
    (*(v51 + 8))(v2, v6);
  }

  else
  {
    if (v22 == *MEMORY[0x1E69D0338])
    {
      v40 = OUTLINED_FUNCTION_74_0();
      v41(v40);
      (*(v49 + 32))(v1, v19, v50);
      sub_1DC5158AC();
      v42 = sub_1DC42867C();
      v45 = sub_1DC2A32B0(v42, v43, v44);
      OUTLINED_FUNCTION_50_7(v45, MEMORY[0x1E69E6158], v46, v45);

      v47 = OUTLINED_FUNCTION_36();
    }

    else
    {
      v47 = OUTLINED_FUNCTION_74_0();
    }

    v48(v47);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC32BBE0()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_1DC5158DC();
  OUTLINED_FUNCTION_0();
  v98 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v92 = sub_1DC51591C();
  OUTLINED_FUNCTION_0();
  v94 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  v91 = v6;
  OUTLINED_FUNCTION_12();
  v7 = sub_1DC51587C();
  OUTLINED_FUNCTION_0();
  v93 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v96 = v10;
  OUTLINED_FUNCTION_12();
  v11 = sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  v105 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - v18;
  sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v23 = (v22 - v21);
  v24 = OUTLINED_FUNCTION_56_0();
  v25(v24);
  v26 = OUTLINED_FUNCTION_74();
  if (v27(v26) != *MEMORY[0x1E69D02C8])
  {
    v82 = OUTLINED_FUNCTION_74();
    v83(v82);
LABEL_18:
    OUTLINED_FUNCTION_34();
    return;
  }

  v28 = OUTLINED_FUNCTION_74();
  v29(v28);
  v30 = *v23;
  v104 = *(*v23 + 16);
  if (!v104)
  {
LABEL_17:

    goto LABEL_18;
  }

  v85 = v0;
  v90 = v1;
  v31 = 0;
  OUTLINED_FUNCTION_24();
  v103 = v30 + v32;
  v102 = v33 + 16;
  v101 = v33 + 88;
  v100 = *MEMORY[0x1E69D0330];
  v95 = *MEMORY[0x1E69D0340];
  v88 = *MEMORY[0x1E69D0338];
  v99 = (v33 + 8);
  v97 = v33 + 96;
  OUTLINED_FUNCTION_87_0(v98);
  v87 = v94 + 4;
  v86 = v94 + 1;
  OUTLINED_FUNCTION_156();
  v93 = v34;
  v94 = v35;
  v98 = v30;
  v89 = v7;
  while (v31 < *(v30 + 16))
  {
    v36 = *(v105 + 16);
    v36(v19, v103 + *(v105 + 72) * v31, v11);
    v37 = OUTLINED_FUNCTION_75_1();
    (v36)(v37);
    v38 = OUTLINED_FUNCTION_51();
    v40 = v39(v38);
    if (v40 == v100)
    {
      v41 = OUTLINED_FUNCTION_57_7();
      v42(v41);
      (*v94)(v96, v16, v7);
      v108 = sub_1DC51582C();
      v109 = v43;
      v44 = sub_1DC42867C();
      v45 = *(v44 + 1);
      v106 = *v44;
      v107 = v45;
      sub_1DC2A32B0(v44, v46, v47);

      v48 = OUTLINED_FUNCTION_133_0(&v106, MEMORY[0x1E69E6158]);
      v49 = OUTLINED_FUNCTION_47_6();
      v50(v49);
      v51 = OUTLINED_FUNCTION_56_9();
      v52(v51);
      goto LABEL_7;
    }

    if (v40 == v95)
    {
      v53 = OUTLINED_FUNCTION_57_7();
      v54(v53);
      OUTLINED_FUNCTION_37();
      v56 = v91;
      v55 = v92;
      v57 = OUTLINED_FUNCTION_54_4();
      v58(v57);
      v108 = sub_1DC5158EC();
      v109 = v59;
      v60 = sub_1DC42867C();
      v61 = *(v60 + 1);
      v106 = *v60;
      v107 = v61;
      sub_1DC2A32B0(v60, v62, v63);

      v48 = OUTLINED_FUNCTION_133_0(&v106, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_37();
      v64 = v56;
      v7 = v89;
      v65(v64, v55);
      v66 = OUTLINED_FUNCTION_56_9();
      v67(v66);
      v30 = v98;

      goto LABEL_10;
    }

    if (v40 == v88)
    {
      v68 = OUTLINED_FUNCTION_57_7();
      v69(v68);
      OUTLINED_FUNCTION_37();
      v70 = v85;
      v71(v85, v16, v90);
      v108 = sub_1DC5158AC();
      v109 = v72;
      v73 = sub_1DC42867C();
      v74 = *(v73 + 1);
      v106 = *v73;
      v107 = v74;
      sub_1DC2A32B0(v73, v75, v76);

      v48 = OUTLINED_FUNCTION_133_0(&v106, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_37();
      v77(v70, v90);
      v78 = OUTLINED_FUNCTION_56_9();
      v79(v78);
LABEL_7:

      v30 = v98;
LABEL_10:

      if (v48)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    v80 = *v99;
    (*v99)(v19, v11);
    v81 = OUTLINED_FUNCTION_51();
    (v80)(v81);
LABEL_11:
    if (v104 == ++v31)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_1DC32C260()
{
  OUTLINED_FUNCTION_164();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB20, &unk_1DC529C40);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_24_1();
  v4 = sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_4();
  sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v7 = OUTLINED_FUNCTION_35_0();
  v8(v7);
  OUTLINED_FUNCTION_145_0();
  v9 = OUTLINED_FUNCTION_16();
  if (v10(v9) == *MEMORY[0x1E69D02C8])
  {
    v11 = OUTLINED_FUNCTION_16();
    v12(v11);
    if (*(*v1 + 16) < 2uLL)
    {
    }

    else
    {
      sub_1DC32B76C(*v1, v0);

      OUTLINED_FUNCTION_39(v0, 1, v4);
      if (v13)
      {
        sub_1DC28EB30(v0, &qword_1ECC7CB20, &unk_1DC529C40);
      }

      else
      {
        v16 = OUTLINED_FUNCTION_62_2();
        v17(v16);
        sub_1DC32B814();
        v18 = OUTLINED_FUNCTION_36();
        v19(v18);
      }
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_16();
    v15(v14);
  }

  OUTLINED_FUNCTION_154();
}

void sub_1DC32C49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  v147 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB20, &unk_1DC529C40);
  v26 = OUTLINED_FUNCTION_10(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_8();
  v144 = v27 - v28;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_62();
  v145 = v30;
  OUTLINED_FUNCTION_12();
  v154 = sub_1DC5158DC();
  OUTLINED_FUNCTION_0();
  v166 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_1();
  v153 = v33;
  OUTLINED_FUNCTION_12();
  v156 = sub_1DC51591C();
  OUTLINED_FUNCTION_0();
  v164 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_1();
  v155 = v36;
  OUTLINED_FUNCTION_12();
  v161 = sub_1DC51587C();
  OUTLINED_FUNCTION_0();
  v157 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_1();
  v160 = v39;
  OUTLINED_FUNCTION_12();
  v40 = sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_8();
  v149 = (v44 - v45);
  OUTLINED_FUNCTION_22();
  v47 = MEMORY[0x1EEE9AC00](v46);
  v49 = v140 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v51 = v140 - v50;
  v52 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v54 = v53;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v56 = *(v54 + 16);
  OUTLINED_FUNCTION_62_3();
  v56();
  v57 = (*(v54 + 88))(v21, v52);
  if (v57 == *MEMORY[0x1E69D02C8])
  {
    v141 = v57;
    v140[0] = v56;
    v140[1] = v54 + 16;
    v140[2] = v20;
    v142 = v54;
    v58 = *(v54 + 96);
    v143 = v52;
    v58(v21, v52);
    v59 = 0;
    v60 = *v21;
    v61 = *(*v21 + 16);
    v165 = v42 + 16;
    v168 = v42 + 88;
    v169 = v61;
    v167 = *MEMORY[0x1E69D0330];
    v159 = *MEMORY[0x1E69D0340];
    v152 = *MEMORY[0x1E69D0338];
    v162 = v42 + 8;
    v163 = v42 + 96;
    OUTLINED_FUNCTION_87_0(v166);
    v151 = v164 + 32;
    v150 = v164 + 8;
    OUTLINED_FUNCTION_156();
    v157 = v62;
    v158 = v63;
    v146 = (v42 + 32);
    v148 = MEMORY[0x1E69E7CC0];
    v164 = v60;
    while (1)
    {
      while (1)
      {
        if (v169 == v59)
        {
          v123 = v148;
          if (*(v148 + 16))
          {

            *v147 = v123;
            (*(v142 + 104))();
            goto LABEL_35;
          }

          v124 = v145;
          sub_1DC32B76C(v60, v145);

          v125 = OUTLINED_FUNCTION_44();
          OUTLINED_FUNCTION_39(v125, v126, v40);
          v127 = v147;
          v128 = v143;
          v129 = v140[0];
          if (!v130)
          {
            v132 = v144;
            sub_1DC2DB2AC();
            OUTLINED_FUNCTION_162_0();
            v134 = v133(v132, v40);
            if (v134 == v167)
            {
              v135 = *MEMORY[0x1E69D02D8];
              v136 = v142;
              goto LABEL_33;
            }

            v136 = v142;
            if (v134 == v159)
            {
              v137 = MEMORY[0x1E69D02F8];
LABEL_32:
              v135 = *v137;
LABEL_33:
              (*(v136 + 104))(v127, v135, v128);
              OUTLINED_FUNCTION_71_3();
              v138(v132, v40);
LABEL_34:
              sub_1DC28EB30(v124, &qword_1ECC7CB20, &unk_1DC529C40);
              goto LABEL_35;
            }

            if (v134 == v152)
            {
              v137 = MEMORY[0x1E69D02F0];
              goto LABEL_32;
            }

            OUTLINED_FUNCTION_71_3();
            v139(v132, v40);
          }

          v131 = OUTLINED_FUNCTION_74();
          v129(v131);
          goto LABEL_34;
        }

        if (v59 >= *(v60 + 16))
        {
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_24();
        v166 = v64;
        v65 = *(v42 + 72);
        v66 = *(v42 + 16);
        v66(v51, v60 + v64 + v65 * v59, v40);
        v66(v49, v51, v40);
        v67 = OUTLINED_FUNCTION_41();
        v69 = v68(v67);
        if (v69 == v167)
        {
          v70 = OUTLINED_FUNCTION_41();
          v71(v70);
          v73 = v160;
          v72 = v161;
          v74 = OUTLINED_FUNCTION_121_0();
          v75(v74);
          v172 = sub_1DC51582C();
          v173 = v76;
          v77 = sub_1DC42867C();
          v78 = *(v77 + 1);
          v170 = *v77;
          v171 = v78;
          sub_1DC2A32B0(v77, v79, v80);
          v81 = OUTLINED_FUNCTION_102_1();
          v84 = OUTLINED_FUNCTION_110_0(v81, MEMORY[0x1E69E6158], v82, v83);

          v85 = v157;
          goto LABEL_12;
        }

        if (v69 != v159)
        {
          break;
        }

        v86 = OUTLINED_FUNCTION_41();
        v87(v86);
        OUTLINED_FUNCTION_37();
        v73 = v155;
        v72 = v156;
        v88 = OUTLINED_FUNCTION_121_0();
        v89(v88);
        v172 = sub_1DC5158EC();
        v173 = v90;
        v91 = sub_1DC42867C();
        v92 = *(v91 + 1);
        v170 = *v91;
        v171 = v92;
        sub_1DC2A32B0(v91, v93, v94);
        v95 = OUTLINED_FUNCTION_102_1();
        v84 = OUTLINED_FUNCTION_110_0(v95, MEMORY[0x1E69E6158], v96, v97);

        v98 = &a15;
LABEL_11:
        v85 = *(v98 - 32);
LABEL_12:
        v111 = v72;
        v60 = v164;
        (*v85)(v73, v111);
        if ((v84 & 1) == 0)
        {
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_71_3();
        v112(v51, v40);
        ++v59;
      }

      if (v69 == v152)
      {
        v99 = OUTLINED_FUNCTION_41();
        v100(v99);
        OUTLINED_FUNCTION_37();
        v73 = v153;
        v101 = OUTLINED_FUNCTION_121_0();
        v72 = v154;
        v102(v101);
        v172 = sub_1DC5158AC();
        v173 = v103;
        v104 = sub_1DC42867C();
        v105 = *(v104 + 1);
        v170 = *v104;
        v171 = v105;
        sub_1DC2A32B0(v104, v106, v107);
        v108 = OUTLINED_FUNCTION_102_1();
        v84 = OUTLINED_FUNCTION_110_0(v108, MEMORY[0x1E69E6158], v109, v110);

        v98 = &a13;
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_71_3();
      v113 = OUTLINED_FUNCTION_41();
      v114(v113);
LABEL_15:
      v115 = *v146;
      (*v146)(v149, v51, v40);
      v116 = v148;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v174 = v116;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DC2AA348(0, *(v116 + 16) + 1, 1);
        v116 = v174;
      }

      v119 = *(v116 + 16);
      v118 = *(v116 + 24);
      v120 = v119 + 1;
      if (v119 >= v118 >> 1)
      {
        v121 = OUTLINED_FUNCTION_26(v118);
        v148 = v122;
        sub_1DC2AA348(v121, v122, 1);
        v120 = v148;
        v116 = v174;
      }

      ++v59;
      *(v116 + 16) = v120;
      v148 = v116;
      v115(v116 + v166 + v119 * v65, v149, v40);
    }
  }

  (*(v54 + 8))(v21, v52);
  OUTLINED_FUNCTION_62_3();
  v56();
LABEL_35:
  OUTLINED_FUNCTION_34();
}

void sub_1DC32CDF4()
{
  OUTLINED_FUNCTION_33();
  v65 = v2;
  sub_1DC515EDC();
  OUTLINED_FUNCTION_0();
  v61[7] = v4;
  v62 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v61[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB28, &unk_1DC524110);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  v61[5] = v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF98, &qword_1DC5224C0);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  v61[1] = v61 - v11;
  OUTLINED_FUNCTION_12();
  sub_1DC515F3C();
  OUTLINED_FUNCTION_0();
  v61[3] = v13;
  v61[4] = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  v61[2] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB20, &unk_1DC529C40);
  OUTLINED_FUNCTION_10(v15);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_31_3();
  v63 = sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  v61[0] = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_1();
  v19 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  v25 = (v23 - v24);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (v61 - v27);
  v29 = *(v21 + 16);
  v64 = v0;
  v29(v61 - v27, v0, v19);
  v30 = *(v21 + 88);
  v31 = OUTLINED_FUNCTION_120_0();
  if (v30(v31) == *MEMORY[0x1E69D02C8])
  {
    v32 = OUTLINED_FUNCTION_120_0();
    v33(v32);
    sub_1DC32B76C(*v28, v1);

    OUTLINED_FUNCTION_39(v1, 1, v63);
    if (!v34)
    {
      v57 = OUTLINED_FUNCTION_56_0();
      v58(v57);
      sub_1DC32D380();
      v59 = OUTLINED_FUNCTION_48_0();
      v60(v59);
      goto LABEL_9;
    }

    sub_1DC28EB30(v1, &qword_1ECC7CB20, &unk_1DC529C40);
  }

  else
  {
    v35 = OUTLINED_FUNCTION_120_0();
    v36(v35);
  }

  v37 = v64;
  v29(v25, v64, v19);
  v38 = (v30)(v25, v19);
  if (v38 == *MEMORY[0x1E69D02E0])
  {
    v39 = *(v21 + 96);
    LODWORD(v64) = v38;
    v39(v25, v19);
    OUTLINED_FUNCTION_42_5();
    v40 = OUTLINED_FUNCTION_75_1();
    v41(v40);
    OUTLINED_FUNCTION_16_4();
    sub_1DC3339CC(v42, v43);
    sub_1DC51502C();
    swift_getKeyPath();
    sub_1DC515E2C();
    sub_1DC5161CC();
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
    OUTLINED_FUNCTION_60();
    sub_1DC514FFC();
    swift_getKeyPath();
    sub_1DC515EFC();
    sub_1DC32D574();
    v48 = v62;
    v49 = OUTLINED_FUNCTION_19_6();
    v50(v49);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v48);
    OUTLINED_FUNCTION_77_1();
    sub_1DC514FFC();
    v54 = v65;
    sub_1DC51500C();

    v55 = OUTLINED_FUNCTION_121_0();
    v56(v55);
    (*(v21 + 104))(v54, v64, v19);
  }

  else
  {
    (*(v21 + 8))(v25, v19);
    v29(v65, v37, v19);
  }

LABEL_9:
  OUTLINED_FUNCTION_34();
}

void sub_1DC32D380()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v28 = v3;
  v4 = sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_54_8();
  MEMORY[0x1EEE9AC00](v8);
  v26 = v6[2];
  v27 = v2;
  v26(&v25 - v9, v2, v4);
  v10 = v6[11];
  v11 = OUTLINED_FUNCTION_19_6();
  v12 = v10(v11);
  v13 = *MEMORY[0x1E69D0340];
  v14 = v6[1];
  v15 = OUTLINED_FUNCTION_19_6();
  v14(v15);
  if (v12 == v13)
  {
    v16 = *MEMORY[0x1E69D02F8];
    sub_1DC5157EC();
    OUTLINED_FUNCTION_35();
    (*(v17 + 104))(v28, v16);
  }

  else
  {
    v18 = v28;
    v26(v1, v27, v4);
    v19 = OUTLINED_FUNCTION_72();
    v20 = v10(v19);
    v21 = *MEMORY[0x1E69D0338];
    v22 = OUTLINED_FUNCTION_72();
    v14(v22);
    sub_1DC5157EC();
    OUTLINED_FUNCTION_35();
    if (v20 == v21)
    {
      v24 = MEMORY[0x1E69D02F0];
    }

    else
    {
      v24 = MEMORY[0x1E69D02D8];
    }

    (*(v23 + 104))(v18, *v24);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC32D574()
{
  OUTLINED_FUNCTION_33();
  v54 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB08, &unk_1DC5240E0);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v49 - v5;
  OUTLINED_FUNCTION_12();
  sub_1DC515E7C();
  OUTLINED_FUNCTION_0();
  v51 = v7;
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  v49 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D090, &qword_1DC524180);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18();
  v11 = sub_1DC515EBC();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v15 = sub_1DC515EDC();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_148();
  v19 = *(v17 + 16);
  OUTLINED_FUNCTION_26_1();
  v19();
  v20 = OUTLINED_FUNCTION_63_0();
  v22 = v21(v20);
  if (v22 == *MEMORY[0x1E69D0608])
  {
    v53 = v22;
    v23 = OUTLINED_FUNCTION_63_0();
    v24(v23);
    v25 = OUTLINED_FUNCTION_75_1();
    v26(v25);
    OUTLINED_FUNCTION_44_6();
    sub_1DC3339CC(v27, v28);
    sub_1DC51502C();
    swift_getKeyPath();
    v29 = sub_1DC514FCC();

    sub_1DC515E8C();
    v29(v0);

    sub_1DC28EB30(v0, &qword_1ECC7D090, &qword_1DC524180);
    swift_getKeyPath();
    v30 = sub_1DC514FCC();

    v55[0] = sub_1DC515E9C();
    v55[1] = v31;
    v30(v55);

    v32 = v54;
    sub_1DC51500C();

    (*(v13 + 8))(v1, v11);
  }

  else
  {
    if (v22 != *MEMORY[0x1E69D0600])
    {
      OUTLINED_FUNCTION_26_1();
      v19();
      v47 = OUTLINED_FUNCTION_63_0();
      v48(v47);
      goto LABEL_7;
    }

    v53 = v22;
    v33 = OUTLINED_FUNCTION_63_0();
    v34(v33);
    v35 = OUTLINED_FUNCTION_107();
    v36(v35);
    OUTLINED_FUNCTION_43_9();
    sub_1DC3339CC(v37, v38);
    sub_1DC51502C();
    swift_getKeyPath();
    v39 = sub_1DC514FCC();

    sub_1DC515E3C();
    v39(v0);

    sub_1DC28EB30(v0, &qword_1ECC7D090, &qword_1DC524180);
    swift_getKeyPath();
    sub_1DC514FCC();
    OUTLINED_FUNCTION_155_1();

    v40 = sub_1DC515E4C();
    v42 = OUTLINED_FUNCTION_103(v40, v41);
    v0(v42);
    OUTLINED_FUNCTION_134_0();

    swift_getKeyPath();
    sub_1DC514FCC();
    OUTLINED_FUNCTION_155_1();

    v43 = v50;
    sub_1DC515E6C();
    v0(v43);
    OUTLINED_FUNCTION_134_0();
    sub_1DC28EB30(v43, &qword_1ECC7CB08, &unk_1DC5240E0);
    v32 = v54;
    sub_1DC51500C();

    v44 = OUTLINED_FUNCTION_16();
    v46(v44, v45);
  }

  (*(v17 + 104))(v32, v53, v15);
LABEL_7:
  OUTLINED_FUNCTION_34();
}

BOOL sub_1DC32DB10()
{
  sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_4();
  v1 = OUTLINED_FUNCTION_62_2();
  v2(v1);
  v3 = OUTLINED_FUNCTION_36();
  v5 = v4(v3) == *MEMORY[0x1E69D02E0];
  v6 = OUTLINED_FUNCTION_36();
  v7(v6);
  return v5;
}

void sub_1DC32DBF4()
{
  OUTLINED_FUNCTION_33();
  sub_1DC515EDC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_4();
  v2 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  sub_1DC515F3C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v7 = OUTLINED_FUNCTION_35_0();
  v8(v7);
  if ((*(v4 + 88))(v0, v2) == *MEMORY[0x1E69D02E0])
  {
    (*(v4 + 96))(v0, v2);
    v9 = OUTLINED_FUNCTION_41();
    v10(v9);
    sub_1DC515EFC();
    v11 = OUTLINED_FUNCTION_47_0();
    v12(v11);
    OUTLINED_FUNCTION_145_0();
    v13 = OUTLINED_FUNCTION_36();
    v14(v13);
    v15 = OUTLINED_FUNCTION_36();
    v16(v15);
  }

  else
  {
    (*(v4 + 8))(v0, v2);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC32DE40()
{
  OUTLINED_FUNCTION_33();
  v41 = v3;
  v42 = v0;
  OUTLINED_FUNCTION_38_2();
  v4 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_42_3();
  v9 = v6[13];
  v39 = *MEMORY[0x1E69D02D8];
  v9(v2);
  OUTLINED_FUNCTION_12_3();
  v10 = sub_1DC5157DC();
  v11 = v6[1];
  v12 = OUTLINED_FUNCTION_119();
  v11(v12);
  if ((v10 & 1) == 0)
  {
    (v9)(v2, *MEMORY[0x1E69D02F8], v4);
    OUTLINED_FUNCTION_12_3();
    v13 = sub_1DC5157DC();
    v14 = OUTLINED_FUNCTION_119();
    v11(v14);
    if ((v13 & 1) == 0)
    {
      (v9)(v2, *MEMORY[0x1E69D02F0], v4);
      OUTLINED_FUNCTION_12_3();
      v15 = sub_1DC5157DC();
      v16 = OUTLINED_FUNCTION_119();
      v11(v16);
      if ((v15 & 1) == 0)
      {
        sub_1DC517BAC();
        sub_1DC297814();
        v31 = sub_1DC296DBC();
        OUTLINED_FUNCTION_163_0(v31, &dword_1DC287000, v32, "Routing decision can only be updated with either .siriXFallback or .planner", v33, v34, MEMORY[0x1E69E7CC0]);

        v35 = OUTLINED_FUNCTION_141_0();
        v36(v35);
        goto LABEL_18;
      }
    }
  }

  v40 = v0;
  v17 = v6[2];
  v17(v1, v42, v4);
  OUTLINED_FUNCTION_117_1();
  v18 = OUTLINED_FUNCTION_29_0();
  v20 = v19(v18);
  if (v20 != *MEMORY[0x1E69D02C8])
  {
    if (v20 == *MEMORY[0x1E69D02E0])
    {
      v28 = OUTLINED_FUNCTION_29_0();
      v11(v28);
    }

    else if (v20 != v39 && v20 != *MEMORY[0x1E69D02F8] && v20 != *MEMORY[0x1E69D02F0])
    {
      v37 = OUTLINED_FUNCTION_141_0();
      (v17)(v37);
      v38 = OUTLINED_FUNCTION_29_0();
      v11(v38);
      goto LABEL_18;
    }

    v17(v41, v40, v4);
    goto LABEL_18;
  }

  v21 = OUTLINED_FUNCTION_29_0();
  v23 = v22(v21);
  v24 = *v1;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_66_1();
  *(v25 - 16) = v40;
  sub_1DC3289D8(sub_1DC33395C, v26, v24);

  v27 = OUTLINED_FUNCTION_139_0();
  v9(v27);
LABEL_18:
  OUTLINED_FUNCTION_34();
}

void sub_1DC32E170()
{
  OUTLINED_FUNCTION_33();
  v3 = v0;
  v5 = v4;
  v112 = v6;
  v99 = sub_1DC5158DC();
  OUTLINED_FUNCTION_0();
  v101 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v100 = v9;
  OUTLINED_FUNCTION_12();
  sub_1DC51587C();
  OUTLINED_FUNCTION_0();
  v110 = v11;
  v111 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_1();
  v109 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB20, &unk_1DC529C40);
  v14 = OUTLINED_FUNCTION_10(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_62();
  v103 = v17;
  OUTLINED_FUNCTION_12();
  v108 = sub_1DC51591C();
  OUTLINED_FUNCTION_0();
  v105 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_1();
  v104 = v20;
  OUTLINED_FUNCTION_12();
  v21 = sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  v25 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_8();
  v97 = v29 - v30;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_23_1();
  v102 = v32;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_23_1();
  v98 = v34;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_107_0();
  sub_1DC32D380();
  v36 = sub_1DC5157DC();
  v106 = v27;
  v107 = v25;
  v37 = *(v27 + 8);
  v38 = OUTLINED_FUNCTION_36();
  v37(v38);
  if (v36)
  {
    (*(v23 + 16))(v112, v3, v21);
    goto LABEL_24;
  }

  v39 = OUTLINED_FUNCTION_120_0();
  v96 = v40;
  (v40)(v39);
  v41 = (*(v23 + 88))(v1, v21);
  if (v41 == *MEMORY[0x1E69D0330])
  {
    v42 = OUTLINED_FUNCTION_55_8();
    v43(v42, v21);
    v44 = OUTLINED_FUNCTION_105();
    v45(v44);
    sub_1DC51582C();
    v47 = v46;
    sub_1DC51581C();
    sub_1DC32FF64();

    OUTLINED_FUNCTION_39(v2, 1, v21);
    if (!v48)
    {
      (*(v110 + 8))(v109, v111);
      (*(v23 + 32))(v112, v2, v21);
      goto LABEL_24;
    }

    sub_1DC28EB30(v2, &qword_1ECC7CB20, &unk_1DC529C40);
    sub_1DC517BAC();
    OUTLINED_FUNCTION_135();
    v49 = sub_1DC296DBC();
    (*(v106 + 16))(v102, v5, v107);
    if (os_log_type_enabled(v49, v47))
    {
      v50 = OUTLINED_FUNCTION_63();
      v113 = swift_slowAlloc();
      *v50 = 136315138;
      sub_1DC32A444();
      (v37)(v102, v107);
      v51 = OUTLINED_FUNCTION_12_3();
      v54 = sub_1DC291244(v51, v52, v53);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_1DC287000, v49, v47, "Failed to update SiriXRewrite routing label to %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v113);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }

    else
    {

      OUTLINED_FUNCTION_54_9();
      v86();
    }

    (*(v110 + 8))(v109, v111);
    v87 = v112;
    v88 = v3;
    v89 = v21;
LABEL_20:
    v96(v87, v88, v89);
    goto LABEL_24;
  }

  if (v41 != *MEMORY[0x1E69D0340])
  {
    if (v41 != *MEMORY[0x1E69D0338])
    {
      v96(v112, v3, v21);
      v90 = OUTLINED_FUNCTION_19_6();
      v91(v90);
      goto LABEL_24;
    }

    v68 = OUTLINED_FUNCTION_55_8();
    v69(v68, v21);
    v70 = OUTLINED_FUNCTION_105();
    v71(v70);
    sub_1DC5158AC();
    v73 = v72;
    sub_1DC5158AC();
    OUTLINED_FUNCTION_107();
    v75 = v74;
    sub_1DC32FF64();

    v76 = OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_39(v76, v77, v21);
    if (!v48)
    {
      (*(v101 + 8))(v100, v99);
      (*(v23 + 32))(v112, v75, v21);
      goto LABEL_24;
    }

    sub_1DC28EB30(v75, &qword_1ECC7CB20, &unk_1DC529C40);
    sub_1DC517BAC();
    OUTLINED_FUNCTION_135();
    v78 = sub_1DC296DBC();
    (*(v106 + 16))(v97, v5, v107);
    if (os_log_type_enabled(v78, v73))
    {
      v79 = OUTLINED_FUNCTION_63();
      v115 = swift_slowAlloc();
      *v79 = 136315138;
      sub_1DC32A444();
      OUTLINED_FUNCTION_163();
      OUTLINED_FUNCTION_54_9();
      v81(v80);
      v82 = OUTLINED_FUNCTION_151();
      v85 = sub_1DC291244(v82, v83, v84);

      *(v79 + 4) = v85;
      _os_log_impl(&dword_1DC287000, v78, v73, "Failed to update SearchRewrite routing label to %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v115);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }

    else
    {

      OUTLINED_FUNCTION_54_9();
      v94(v93);
    }

    (*(v101 + 8))(v100, v99);
    v87 = v112;
    v88 = v3;
    v89 = v21;
    goto LABEL_20;
  }

  v55 = OUTLINED_FUNCTION_55_8();
  v56(v55, v21);
  v57 = OUTLINED_FUNCTION_105();
  v58(v57);
  sub_1DC5158EC();
  sub_1DC5158EC();
  sub_1DC32FF64();

  v59 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v59, v60, v21);
  if (v48)
  {
    v95 = v37;
    sub_1DC28EB30(v103, &qword_1ECC7CB20, &unk_1DC529C40);
    v61 = sub_1DC517BAC();
    sub_1DC297814();
    v62 = sub_1DC296DBC();
    (*(v106 + 16))(v98, v5, v25);
    if (os_log_type_enabled(v62, v61))
    {
      v63 = OUTLINED_FUNCTION_63();
      v114 = swift_slowAlloc();
      *v63 = 136315138;
      sub_1DC32A444();
      (v95)(v98, v25);
      v64 = OUTLINED_FUNCTION_12_3();
      v67 = sub_1DC291244(v64, v65, v66);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_1DC287000, v62, v61, "Failed to update PlannerRewrite routing label to %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v114);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }

    else
    {

      OUTLINED_FUNCTION_54_9();
      v92();
    }

    (*(v105 + 8))(v104, v108);
    v96(v112, v3, v21);
  }

  else
  {
    (*(v105 + 8))(v104, v108);
    (*(v23 + 32))(v112, v103, v21);
  }

LABEL_24:
  OUTLINED_FUNCTION_34();
}

void sub_1DC32EC6C()
{
  OUTLINED_FUNCTION_33();
  sub_1DC515F3C();
  OUTLINED_FUNCTION_0();
  v111 = v2;
  v112 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_1();
  v110 = v3;
  OUTLINED_FUNCTION_12();
  sub_1DC5157CC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_1();
  v99 = sub_1DC5158DC();
  OUTLINED_FUNCTION_0();
  v101 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v98 = v9;
  OUTLINED_FUNCTION_12();
  v106 = sub_1DC51587C();
  OUTLINED_FUNCTION_0();
  v100 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_1();
  v105 = v12;
  OUTLINED_FUNCTION_12();
  v104 = sub_1DC51591C();
  OUTLINED_FUNCTION_0();
  v97 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_1();
  v103 = v15;
  OUTLINED_FUNCTION_12();
  v16 = sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  v113 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v95 - v20;
  v22 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v24 = OUTLINED_FUNCTION_119();
  v25(v24);
  v26 = OUTLINED_FUNCTION_41();
  v28 = v27(v26);
  if (v28 == *MEMORY[0x1E69D02E8])
  {
    v29 = OUTLINED_FUNCTION_41();
    v30(v29);
    OUTLINED_FUNCTION_128();
    v31 = OUTLINED_FUNCTION_12_3();
    v32(v31);
    v33 = sub_1DC5157AC();
    if (v34)
    {
      v35 = v33;
      v36 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1DC522F20;
      *(v37 + 32) = v35;
      *(v37 + 40) = v36;
    }

    v38 = OUTLINED_FUNCTION_151();
    v39(v38);
    goto LABEL_32;
  }

  if (v28 == *MEMORY[0x1E69D02D0])
  {
LABEL_6:
    v40 = OUTLINED_FUNCTION_41();
    v41(v40);
    goto LABEL_32;
  }

  if (v28 == *MEMORY[0x1E69D02C8])
  {
    v42 = OUTLINED_FUNCTION_41();
    v43(v42);
    v44 = *(*v0 + 16);
    if (!v44)
    {
LABEL_22:

      goto LABEL_32;
    }

    v112 = *(v113 + 16);
    OUTLINED_FUNCTION_24();
    v95[1] = v45;
    v47 = v45 + v46;
    v111 = *(v48 + 56);
    v110 = v48 + 72;
    v109 = *MEMORY[0x1E69D0330];
    v102 = *MEMORY[0x1E69D0340];
    v96 = *MEMORY[0x1E69D0338];
    v113 = v48;
    v107 = v48 + 80;
    v108 = (v48 - 8);
    OUTLINED_FUNCTION_156();
    v95[2] = v49;
    v95[3] = v50;
    v95[4] = v97 + 32;
    v97 += 8;
    OUTLINED_FUNCTION_156();
    v100 = v51;
    v101 = v52;
    v53 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v54 = v112;
      (v112)(v21, v47, v16);
      v55 = OUTLINED_FUNCTION_54_4();
      v54(v55);
      v56 = OUTLINED_FUNCTION_75();
      v58 = v57(v56);
      if (v58 == v109)
      {
        break;
      }

      if (v58 == v102)
      {
        OUTLINED_FUNCTION_162_0();
        v65 = OUTLINED_FUNCTION_75();
        v66(v65);
        v67 = v103;
        v68 = OUTLINED_FUNCTION_47_6();
        v69(v68);
        v64 = v67;
        sub_1DC5158EC();
        OUTLINED_FUNCTION_163();
        goto LABEL_16;
      }

      if (v58 == v96)
      {
        OUTLINED_FUNCTION_162_0();
        v70 = OUTLINED_FUNCTION_75();
        v71(v70);
        v72 = v98;
        v73 = OUTLINED_FUNCTION_47_6();
        v74(v73);
        v64 = v72;
        sub_1DC5158AC();
        OUTLINED_FUNCTION_163();
        goto LABEL_16;
      }

      v82 = *v108;
      v83 = OUTLINED_FUNCTION_51();
      v82(v83);
      v84 = OUTLINED_FUNCTION_75();
      v82(v84);
LABEL_21:
      v47 += v111;
      if (!--v44)
      {
        goto LABEL_22;
      }
    }

    OUTLINED_FUNCTION_162_0();
    v59 = OUTLINED_FUNCTION_75();
    v60(v59);
    OUTLINED_FUNCTION_71_3();
    v61 = v105;
    v62 = OUTLINED_FUNCTION_47_6();
    v63(v62);
    v64 = v61;
    sub_1DC51582C();
    OUTLINED_FUNCTION_163();
LABEL_16:
    v75 = OUTLINED_FUNCTION_149();
    v76(v75);
    v77 = OUTLINED_FUNCTION_51();
    v78(v77);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_1DC2ACCD4(0, *(v53 + 2) + 1, 1, v53);
    }

    v80 = *(v53 + 2);
    v79 = *(v53 + 3);
    if (v80 >= v79 >> 1)
    {
      v85 = OUTLINED_FUNCTION_26(v79);
      v53 = sub_1DC2ACCD4(v85, v80 + 1, 1, v53);
    }

    *(v53 + 2) = v80 + 1;
    v81 = &v53[16 * v80];
    *(v81 + 4) = v64;
    *(v81 + 5) = v22;
    goto LABEL_21;
  }

  if (v28 != *MEMORY[0x1E69D02E0])
  {
    goto LABEL_6;
  }

  v86 = OUTLINED_FUNCTION_41();
  v87(v86);
  v88 = v110;
  v89 = OUTLINED_FUNCTION_63_3();
  v90(v89);
  sub_1DC32F78C();
  if (v91)
  {
    OUTLINED_FUNCTION_123_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_1DC522F20;
    *(v92 + 32) = v88;
    *(v92 + 40) = v5;
  }

  v93 = OUTLINED_FUNCTION_98_0();
  v94(v93);
LABEL_32:
  OUTLINED_FUNCTION_34();
}

void sub_1DC32F444()
{
  OUTLINED_FUNCTION_33();
  sub_1DC5158DC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  sub_1DC51587C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  v3 = sub_1DC51591C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v8 = OUTLINED_FUNCTION_149();
  v9(v8);
  v10 = OUTLINED_FUNCTION_47_6();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x1E69D0330])
  {
    v13 = OUTLINED_FUNCTION_47_6();
    v14(v13);
    v15 = OUTLINED_FUNCTION_63_3();
    v16(v15);
    sub_1DC51582C();
    v17 = OUTLINED_FUNCTION_60();
    v18(v17);
  }

  else if (v12 == *MEMORY[0x1E69D0340])
  {
    v19 = OUTLINED_FUNCTION_47_6();
    v20(v19);
    v21 = OUTLINED_FUNCTION_89();
    v22(v21);
    sub_1DC5158EC();
    (*(v5 + 8))(v0, v3);
  }

  else
  {
    if (v12 == *MEMORY[0x1E69D0338])
    {
      v23 = OUTLINED_FUNCTION_47_6();
      v24(v23);
      OUTLINED_FUNCTION_128();
      v25 = OUTLINED_FUNCTION_12_3();
      v26(v25);
      sub_1DC5158AC();
      v27 = OUTLINED_FUNCTION_31_0();
    }

    else
    {
      v27 = OUTLINED_FUNCTION_47_6();
    }

    v28(v27);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC32F78C()
{
  OUTLINED_FUNCTION_33();
  v2 = sub_1DC515EBC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  sub_1DC515E7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  sub_1DC515EDC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  sub_1DC515EFC();
  OUTLINED_FUNCTION_117_1();
  v6 = OUTLINED_FUNCTION_41();
  v8 = v7(v6);
  if (v8 == *MEMORY[0x1E69D0608])
  {
    v9 = OUTLINED_FUNCTION_41();
    v10(v9);
    OUTLINED_FUNCTION_42_5();
    v11(v0, v1, v2);
    sub_1DC515EAC();
    OUTLINED_FUNCTION_163();
    v12 = OUTLINED_FUNCTION_30_6();
    v13(v12);
  }

  else
  {
    if (v8 == *MEMORY[0x1E69D0600])
    {
      v14 = OUTLINED_FUNCTION_41();
      v15(v14);
      v16 = OUTLINED_FUNCTION_63_3();
      v17(v16);
      sub_1DC515E5C();
      OUTLINED_FUNCTION_163();
      v18 = OUTLINED_FUNCTION_60();
    }

    else
    {
      v18 = OUTLINED_FUNCTION_41();
    }

    v19(v18);
  }

  OUTLINED_FUNCTION_151();
  OUTLINED_FUNCTION_34();
}

void sub_1DC32F9DC()
{
  OUTLINED_FUNCTION_33();
  v47 = v2;
  v48 = v0;
  v46 = v3;
  OUTLINED_FUNCTION_38_2();
  v4 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v11 = v6[13];
  v45 = *MEMORY[0x1E69D02D8];
  v11(&v44 - v9);
  OUTLINED_FUNCTION_152();
  v12 = sub_1DC5157DC();
  v13 = v6[1];
  v14 = OUTLINED_FUNCTION_147_0();
  v13(v14);
  if ((v12 & 1) == 0)
  {
    (v11)(v10, *MEMORY[0x1E69D02F8], v4);
    OUTLINED_FUNCTION_152();
    v15 = sub_1DC5157DC();
    v16 = OUTLINED_FUNCTION_147_0();
    v13(v16);
    if ((v15 & 1) == 0)
    {
      (v11)(v10, *MEMORY[0x1E69D02F0], v4);
      OUTLINED_FUNCTION_152();
      v17 = sub_1DC5157DC();
      v18 = OUTLINED_FUNCTION_147_0();
      v13(v18);
      if ((v17 & 1) == 0)
      {
        sub_1DC517BAC();
        sub_1DC297814();
        v34 = sub_1DC296DBC();
        OUTLINED_FUNCTION_163_0(v34, &dword_1DC287000, v35, "Routing decision can only be updated with either .siriXFallback or .planner", v36, v37, MEMORY[0x1E69E7CC0]);

        v38 = OUTLINED_FUNCTION_141_0();
        v39(v38);
        goto LABEL_21;
      }
    }
  }

  v44 = v11;
  sub_1DC32FD38();
  v19 = v6[2];
  if ((v20 & 1) == 0)
  {
    v31 = v47;
    v32 = v48;
    goto LABEL_20;
  }

  v19(v1, v48, v4);
  v21 = OUTLINED_FUNCTION_29_0();
  v23 = v22(v21);
  if (v23 != *MEMORY[0x1E69D02C8])
  {
    if (v23 == *MEMORY[0x1E69D02E0])
    {
      v33 = OUTLINED_FUNCTION_29_0();
      v13(v33);
    }

    else if (v23 != v45 && v23 != *MEMORY[0x1E69D02F8] && v23 != *MEMORY[0x1E69D02F0])
    {
      v42 = OUTLINED_FUNCTION_141_0();
      (v19)(v42);
      v43 = OUTLINED_FUNCTION_29_0();
      v13(v43);
      goto LABEL_21;
    }

    v31 = v47;
    v32 = v0;
LABEL_20:
    v19(v31, v32, v4);
    goto LABEL_21;
  }

  v24 = OUTLINED_FUNCTION_29_0();
  v26 = v25(v24);
  v27 = *v1;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_66_1();
  *(v28 - 16) = v0;
  sub_1DC3289D8(sub_1DC333C0C, v29, v27);

  v30 = OUTLINED_FUNCTION_139_0();
  v44(v30);
LABEL_21:
  OUTLINED_FUNCTION_34();
}

void sub_1DC32FD38()
{
  OUTLINED_FUNCTION_33();
  v3 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_4();
  v7 = OUTLINED_FUNCTION_74_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40_3();
  v11 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_12_3();
  sub_1DC2DB2AC();
  OUTLINED_FUNCTION_39(v2, 1, v11);
  if (v15)
  {
    sub_1DC28EB30(v2, &qword_1ECC7CD00, &unk_1DC5259F0);
  }

  else
  {
    (*(v13 + 32))(v1, v2, v11);
    (*(v5 + 104))(v0, *MEMORY[0x1E69D02F8], v3);
    v16 = sub_1DC5157DC();
    v17 = OUTLINED_FUNCTION_36();
    v18(v17);
    if (v16)
    {
      sub_1DC2D14F0();
    }

    v19 = OUTLINED_FUNCTION_35_0();
    v20(v19);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC32FF64()
{
  OUTLINED_FUNCTION_33();
  v81 = v1;
  v83 = v5;
  v84 = v6;
  v86 = v7;
  v87 = v8;
  v85 = v9;
  v88 = v10;
  v80 = sub_1DC5158DC();
  OUTLINED_FUNCTION_0();
  v75 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  v74[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF18, &qword_1DC522340);
  v15 = OUTLINED_FUNCTION_10(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v79 = v16 - v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62();
  v77 = v19;
  OUTLINED_FUNCTION_12();
  v82 = sub_1DC51591C();
  OUTLINED_FUNCTION_0();
  v78 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_1();
  v76 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF10, &unk_1DC522A50);
  v24 = OUTLINED_FUNCTION_10(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_107_0();
  v26 = sub_1DC51587C();
  OUTLINED_FUNCTION_0();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF00, &unk_1DC529C30);
  v31 = OUTLINED_FUNCTION_10(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_42_3();
  v33 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_148();
  (*(v35 + 16))(v0, v85, v33);
  OUTLINED_FUNCTION_117_1();
  v38 = v37(v0, v33);
  if (v38 == *MEMORY[0x1E69D02D8])
  {
    MEMORY[0x1EEE9AC00](v38);
    v39 = v87;
    v74[-4] = v86;
    v74[-3] = v39;
    v40 = v84;
    v74[-2] = v83;
    v74[-1] = v40;
    sub_1DC51583C();
    OUTLINED_FUNCTION_41();
    sub_1DC2DB254();
    OUTLINED_FUNCTION_39(v3, 1, v26);
    if (!v41)
    {
      v52 = *(v28 + 32);
      v53 = OUTLINED_FUNCTION_42_2();
      v52(v53);
      v54 = OUTLINED_FUNCTION_106_0();
      v52(v54);
      v55 = MEMORY[0x1E69D0330];
LABEL_15:
      v71 = *v55;
      v72 = sub_1DC51588C();
      OUTLINED_FUNCTION_35();
      (*(v73 + 104))(v2, v71, v72);
      OUTLINED_FUNCTION_61();
      v45 = v72;
      goto LABEL_16;
    }

    sub_1DC28EB30(v3, &qword_1ECC7BF00, &unk_1DC529C30);
    sub_1DC51588C();
    v42 = OUTLINED_FUNCTION_147_1();
LABEL_16:
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
    goto LABEL_17;
  }

  if (v38 == *MEMORY[0x1E69D02F8])
  {
    MEMORY[0x1EEE9AC00](v38);
    OUTLINED_FUNCTION_66_1();
    *(v46 - 16) = v48;
    *(v46 - 8) = v47;
    sub_1DC5158FC();
    sub_1DC2DB254();
    OUTLINED_FUNCTION_39(v4, 1, v82);
    if (!v41)
    {
      v61 = *(v78 + 32);
      v62 = OUTLINED_FUNCTION_120_0();
      v61(v62);
      v63 = OUTLINED_FUNCTION_106_0();
      v61(v63);
      v55 = MEMORY[0x1E69D0340];
      goto LABEL_15;
    }

    v49 = &qword_1ECC7BF10;
    v50 = &unk_1DC522A50;
    v51 = v4;
    goto LABEL_13;
  }

  if (v38 == *MEMORY[0x1E69D02F0])
  {
    MEMORY[0x1EEE9AC00](v38);
    OUTLINED_FUNCTION_66_1();
    *(v56 - 16) = v58;
    *(v56 - 8) = v57;
    sub_1DC5158BC();
    v2 = v79;
    sub_1DC2DB254();
    OUTLINED_FUNCTION_39(v79, 1, v80);
    if (!v41)
    {
      v68 = *(v75 + 32);
      v69 = OUTLINED_FUNCTION_60();
      v68(v69);
      v70 = OUTLINED_FUNCTION_106_0();
      v68(v70);
      v55 = MEMORY[0x1E69D0338];
      goto LABEL_15;
    }

    v49 = &qword_1ECC7BF18;
    v50 = &qword_1DC522340;
    v51 = v79;
LABEL_13:
    sub_1DC28EB30(v51, v49, v50);
    v59 = sub_1DC51588C();
    OUTLINED_FUNCTION_35();
    (*(v60 + 16))(v88, v81, v59);
    OUTLINED_FUNCTION_61();
    v45 = v59;
    goto LABEL_16;
  }

  sub_1DC51588C();
  v64 = OUTLINED_FUNCTION_147_1();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
  (*(v35 + 8))(v0, v33);
LABEL_17:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3305F4()
{
  OUTLINED_FUNCTION_33();
  v4 = v1;
  v51 = v5;
  v52 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF00, &unk_1DC529C30);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_42_3();
  v15 = sub_1DC51587C();
  OUTLINED_FUNCTION_0();
  v55 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v18 = sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_148();
  v53 = *(v20 + 16);
  v54 = v4;
  v53(v0, v4, v18);
  v22 = OUTLINED_FUNCTION_115();
  v24 = v23(v22);
  v25 = v24;
  if (v24 == *MEMORY[0x1E69D0330])
  {
    v50 = v8;
    v26 = OUTLINED_FUNCTION_115();
    v27(v26);
    v28 = OUTLINED_FUNCTION_107();
    v49[1] = v29;
    v30 = v29(v28);
    MEMORY[0x1EEE9AC00](v30);
    v32 = v51;
    v31 = v52;
    v49[-4] = v2;
    v49[-3] = v32;
    v49[-2] = v31;
    sub_1DC51583C();
    sub_1DC2DB2AC();
    OUTLINED_FUNCTION_39(v13, 1, v15);
    if (v40)
    {
      v33 = OUTLINED_FUNCTION_56_0();
      sub_1DC28EB30(v33, v34, &unk_1DC529C30);
      sub_1DC517BAC();
      OUTLINED_FUNCTION_21_2();
      v35 = sub_1DC296DBC();
      v36 = OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C(v36, v37, v38, v39, 29, 2);

      sub_1DC28EB30(v3, &qword_1ECC7BF00, &unk_1DC529C30);
      v53(v50, v54, v18);
    }

    else
    {
      sub_1DC28EB30(v3, &qword_1ECC7BF00, &unk_1DC529C30);
      v43 = v50;
      OUTLINED_FUNCTION_62_3();
      v44();
      (*(v20 + 104))(v43, v25, v18);
    }

    v45 = OUTLINED_FUNCTION_35_0();
    v46(v45);
  }

  else
  {
    v40 = v24 == *MEMORY[0x1E69D0340] || v24 == *MEMORY[0x1E69D0338];
    if (v40)
    {
      v41 = OUTLINED_FUNCTION_115();
      v42(v41);
      v53(v8, v54, v18);
    }

    else
    {
      v53(v8, v54, v18);
      v47 = OUTLINED_FUNCTION_115();
      v48(v47);
    }
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3309CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DC51582C();
  sub_1DC51586C();

  OUTLINED_FUNCTION_36();
  sub_1DC51585C();
  sub_1DC51580C();
  return sub_1DC51584C();
}

uint64_t sub_1DC330A88()
{
  OUTLINED_FUNCTION_140_0();
  sub_1DC5157CC();
  sub_1DC3339CC(&qword_1ECC7CB38, MEMORY[0x1E69D02C0]);
  return sub_1DC51501C();
}

void sub_1DC330B3C()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_42_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB90, &unk_1DC524420);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_31_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_40_3();
  swift_getKeyPath();
  sub_1DC5157AC();
  sub_1DC514FDC();
  swift_getKeyPath();

  sub_1DC514FDC();
  swift_getKeyPath();
  sub_1DC51578C();
  OUTLINED_FUNCTION_149();
  sub_1DC514FDC();
  swift_getKeyPath();
  sub_1DC5157BC();
  OUTLINED_FUNCTION_65_1();
  sub_1DC514FDC();
  OUTLINED_FUNCTION_154();
}

uint64_t sub_1DC330CA4@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1DC5157AC();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC330CD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC51579C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1DC330D44()
{
  OUTLINED_FUNCTION_33();
  v65 = v2;
  v66 = v3;
  v60 = sub_1DC515EBC();
  OUTLINED_FUNCTION_0();
  v64 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  v63 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D090, &qword_1DC524180);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB28, &unk_1DC524110);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40();
  v59 = sub_1DC515E7C();
  OUTLINED_FUNCTION_0();
  v62 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  v61 = v13;
  OUTLINED_FUNCTION_12();
  v14 = sub_1DC515EDC();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF98, &qword_1DC5224C0);
  OUTLINED_FUNCTION_10(v18);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_129();
  sub_1DC515F3C();
  OUTLINED_FUNCTION_16_4();
  sub_1DC3339CC(v20, v21);
  OUTLINED_FUNCTION_56_7();
  sub_1DC51502C();
  swift_getKeyPath();
  sub_1DC515E2C();
  sub_1DC5161CC();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OUTLINED_FUNCTION_121_0();
  sub_1DC514FFC();
  sub_1DC515EFC();
  v26 = OUTLINED_FUNCTION_75();
  v28 = v27(v26);
  v29 = v28;
  if (v28 == *MEMORY[0x1E69D0608])
  {
    v30 = OUTLINED_FUNCTION_54_4();
    v31(v30);
    v32 = OUTLINED_FUNCTION_74_0();
    v33(v32);
    swift_getKeyPath();
    OUTLINED_FUNCTION_44_6();
    sub_1DC3339CC(v34, v35);
    sub_1DC51502C();
    swift_getKeyPath();
    v36 = sub_1DC514FCC();

    v37 = sub_1DC515EAC();
    v39 = OUTLINED_FUNCTION_103(v37, v38);
    v36(v39);
    OUTLINED_FUNCTION_134_0();

    swift_getKeyPath();
    v40 = sub_1DC514FCC();

    sub_1DC515E8C();
    v40(v0);
    OUTLINED_FUNCTION_134_0();
    sub_1DC28EB30(v0, &qword_1ECC7D090, &qword_1DC524180);
    swift_getKeyPath();
    v41 = sub_1DC514FCC();

    v67 = v65;
    v68 = v66;
    v41(&v67);

    sub_1DC51500C();

    (*(v16 + 104))(v1, v29, v14);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v14);
    sub_1DC514FFC();
    (*(v64 + 8))(v63, v60);
LABEL_5:
    sub_1DC51500C();

    OUTLINED_FUNCTION_34();
    return;
  }

  if (v28 == *MEMORY[0x1E69D0600])
  {
    v45 = OUTLINED_FUNCTION_54_4();
    v46(v45);
    v47 = OUTLINED_FUNCTION_74_0();
    v48(v47);
    swift_getKeyPath();
    OUTLINED_FUNCTION_43_9();
    sub_1DC3339CC(v49, v50);
    sub_1DC51502C();
    swift_getKeyPath();
    v51 = sub_1DC514FCC();

    v52 = sub_1DC515E5C();
    v54 = OUTLINED_FUNCTION_103(v52, v53);
    v51(v54);
    OUTLINED_FUNCTION_134_0();

    swift_getKeyPath();
    v55 = sub_1DC514FCC();

    sub_1DC515E3C();
    v55(v0);

    sub_1DC28EB30(v0, &qword_1ECC7D090, &qword_1DC524180);
    swift_getKeyPath();
    sub_1DC514FCC();
    OUTLINED_FUNCTION_155_1();

    v67 = v65;
    v68 = v66;
    v61(&v67);
    OUTLINED_FUNCTION_134_0();
    sub_1DC51500C();

    (*(v16 + 104))(v1, v29, v14);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v14);
    sub_1DC514FFC();
    (*(v62 + 8))(v61, v59);
    goto LABEL_5;
  }

  sub_1DC51824C();
  __break(1u);
}

uint64_t sub_1DC331434@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1DC515E5C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC331484@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1DC515E4C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC3314B0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1DC515EAC();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC331500@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1DC515E9C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1DC33152C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB08, &unk_1DC5240E0);
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_54_8();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_107_0();
  v7 = sub_1DC515E7C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  sub_1DC515EDC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  sub_1DC515EFC();
  OUTLINED_FUNCTION_117_1();
  v15 = OUTLINED_FUNCTION_89();
  v17 = v16(v15);
  if (v17 != *MEMORY[0x1E69D0608])
  {
    if (v17 != *MEMORY[0x1E69D0600])
    {
      sub_1DC516E5C();
      v36 = OUTLINED_FUNCTION_60_0();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
      v40 = OUTLINED_FUNCTION_89();
      v41(v40);
      goto LABEL_14;
    }

    v24 = OUTLINED_FUNCTION_89();
    v25(v24);
    (*(v9 + 32))(v1, v14, v7);
    sub_1DC515E6C();
    v26 = OUTLINED_FUNCTION_16();
    v27(v26);
    v28 = sub_1DC515F4C();
    OUTLINED_FUNCTION_39(v0, 1, v28);
    if (!v32)
    {
      OUTLINED_FUNCTION_65_1();
      sub_1DC2DB2AC();
      v29 = OUTLINED_FUNCTION_72();
      v31 = v30(v29);
      v32 = v31 == *MEMORY[0x1E69D0620] || v31 == *MEMORY[0x1E69D0628];
      if (v32)
      {
        sub_1DC28EB30(v0, &qword_1ECC7CB08, &unk_1DC5240E0);
        v33 = *MEMORY[0x1E69A07D0];
        v34 = sub_1DC516E5C();
        OUTLINED_FUNCTION_35();
        (*(v35 + 104))(v3, v33, v34);
        OUTLINED_FUNCTION_61();
        v23 = v34;
        goto LABEL_3;
      }

      v42 = OUTLINED_FUNCTION_72();
      v43(v42);
    }

    sub_1DC516E5C();
    v44 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
    sub_1DC28EB30(v0, &qword_1ECC7CB08, &unk_1DC5240E0);
    goto LABEL_14;
  }

  v18 = OUTLINED_FUNCTION_89();
  v19(v18);
  sub_1DC516E5C();
  v20 = OUTLINED_FUNCTION_60_0();
LABEL_3:
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
LABEL_14:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3318A0()
{
  sub_1DC5161CC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_56_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_31_0();
  v5 = v4(v3);
  if (v5 == *MEMORY[0x1E69D0720])
  {
    v6 = 29;
  }

  else
  {
    if (v5 != *MEMORY[0x1E69D0730] && v5 != *MEMORY[0x1E69D0718])
    {
      v8 = OUTLINED_FUNCTION_31_0();
      v9(v8);
      return;
    }

    v6 = 30;
  }

  sub_1DC428688(v6);
}

void sub_1DC3319CC()
{
  OUTLINED_FUNCTION_33();
  v116 = v0;
  v114 = sub_1DC515E7C();
  OUTLINED_FUNCTION_0();
  v110 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  v113 = v6;
  OUTLINED_FUNCTION_12();
  v7 = sub_1DC515ECC();
  OUTLINED_FUNCTION_0();
  v117 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v107 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB40, &qword_1DC5242E0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v109 = v13 - v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v106 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D090, &qword_1DC524180);
  v19 = OUTLINED_FUNCTION_10(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  v106 = v20 - v21;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_23_1();
  v108 = v23;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_23_1();
  v111 = v25;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_23_1();
  v112 = v27;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_42_3();
  v30 = sub_1DC515EBC();
  OUTLINED_FUNCTION_0();
  v115 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v33 = sub_1DC515EDC();
  OUTLINED_FUNCTION_0();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  (*(v35 + 16))(v3, v116, v33);
  v37 = OUTLINED_FUNCTION_122();
  v39 = v38(v37);
  if (v39 == *MEMORY[0x1E69D0608])
  {
    v40 = OUTLINED_FUNCTION_122();
    v41(v40);
    (*(v115 + 32))(v1, v3, v30);
    sub_1DC515E8C();
    v42 = v117;
    (*(v117 + 104))(v2, *MEMORY[0x1E69D05E8], v7);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v7);
    v46 = *(v11 + 48);
    OUTLINED_FUNCTION_41();
    sub_1DC2DB2AC();
    sub_1DC2DB2AC();
    OUTLINED_FUNCTION_39(v17, 1, v7);
    if (v47)
    {
      OUTLINED_FUNCTION_62_3();
      sub_1DC28EB30(v48, v49, v50);
      OUTLINED_FUNCTION_62_3();
      sub_1DC28EB30(v51, v52, v53);
      v54 = OUTLINED_FUNCTION_147_0();
      v55(v54);
      OUTLINED_FUNCTION_39(&v17[v46], 1, v7);
      if (!v47)
      {
        goto LABEL_15;
      }

      v56 = v17;
    }

    else
    {
      v116 = v1;
      v73 = v115;
      sub_1DC2DB2AC();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v17[v46], 1, v7);
      if (EnumTagSinglePayload == 1)
      {
        OUTLINED_FUNCTION_62_3();
        sub_1DC28EB30(v75, v76, v77);
        OUTLINED_FUNCTION_62_3();
        sub_1DC28EB30(v78, v79, v80);
        (*(v73 + 8))(v116, v30);
        v81 = OUTLINED_FUNCTION_60();
        v82(v81);
LABEL_15:
        v83 = v17;
LABEL_20:
        sub_1DC28EB30(v83, &qword_1ECC7CB40, &qword_1DC5242E0);
        goto LABEL_24;
      }

      (*(v42 + 32))(v107, &v17[v46], v7);
      OUTLINED_FUNCTION_42_8();
      sub_1DC3339CC(v94, v95);
      OUTLINED_FUNCTION_48_0();
      sub_1DC5176CC();
      v96 = *(v42 + 8);
      v97 = OUTLINED_FUNCTION_60();
      v96(v97);
      sub_1DC28EB30(v2, &qword_1ECC7D090, &qword_1DC524180);
      v98 = OUTLINED_FUNCTION_47_6();
      sub_1DC28EB30(v98, v99, &qword_1DC524180);
      (*(v73 + 8))(v116, v30);
      (v96)(v112, v7);
      v56 = v17;
    }

LABEL_23:
    sub_1DC28EB30(v56, &qword_1ECC7D090, &qword_1DC524180);
    goto LABEL_24;
  }

  v57 = v117;
  if (v39 == *MEMORY[0x1E69D0600])
  {
    v58 = OUTLINED_FUNCTION_122();
    v59(v58);
    v60 = v110;
    v61 = v113;
    (*(v110 + 32))(v113, v3, v114);
    sub_1DC515E3C();
    v62 = v7;
    (*(v57 + 104))(v108, *MEMORY[0x1E69D05E8], v7);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v7);
    v66 = *(v11 + 48);
    v67 = v109;
    sub_1DC2DB2AC();
    sub_1DC2DB2AC();
    OUTLINED_FUNCTION_39(v67, 1, v7);
    if (v47)
    {
      v68 = OUTLINED_FUNCTION_72();
      sub_1DC28EB30(v68, v69, &qword_1DC524180);
      OUTLINED_FUNCTION_26_1();
      sub_1DC28EB30(v70, v71, v72);
      (*(v60 + 8))(v61, v114);
      OUTLINED_FUNCTION_39(v67 + v66, 1, v7);
      if (v47)
      {
        v56 = v67;
        goto LABEL_23;
      }
    }

    else
    {
      v86 = v114;
      v87 = v106;
      sub_1DC2DB2AC();
      v88 = __swift_getEnumTagSinglePayload(v67 + v66, 1, v7);
      if (v88 != 1)
      {
        v100 = v107;
        (*(v57 + 32))(v107, v67 + v66, v62);
        OUTLINED_FUNCTION_42_8();
        sub_1DC3339CC(v101, v102);
        OUTLINED_FUNCTION_56_0();
        sub_1DC5176CC();
        v103 = *(v57 + 8);
        v103(v100, v62);
        v104 = OUTLINED_FUNCTION_73();
        sub_1DC28EB30(v104, v105, &qword_1DC524180);
        sub_1DC28EB30(v111, &qword_1ECC7D090, &qword_1DC524180);
        (*(v60 + 8))(v113, v86);
        v103(v106, v62);
        v56 = v67;
        goto LABEL_23;
      }

      v89 = OUTLINED_FUNCTION_72();
      sub_1DC28EB30(v89, v90, &qword_1DC524180);
      OUTLINED_FUNCTION_26_1();
      sub_1DC28EB30(v91, v92, v93);
      (*(v60 + 8))(v113, v86);
      (*(v57 + 8))(v87, v7);
    }

    v83 = v67;
    goto LABEL_20;
  }

  v84 = OUTLINED_FUNCTION_122();
  v85(v84);
LABEL_24:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3322BC()
{
  OUTLINED_FUNCTION_33();
  sub_1DC515E7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_1();
  sub_1DC515EBC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  sub_1DC515EDC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v3 = OUTLINED_FUNCTION_149();
  v4(v3);
  OUTLINED_FUNCTION_117_1();
  v5 = OUTLINED_FUNCTION_41();
  v7 = v6(v5);
  if (v7 == *MEMORY[0x1E69D0608])
  {
    v8 = OUTLINED_FUNCTION_41();
    v9(v8);
    v10 = OUTLINED_FUNCTION_63_3();
    v11(v10);
    sub_1DC515EAC();
    v13 = v12;
    v14 = OUTLINED_FUNCTION_60();
    v15(v14);
    if (v13)
    {
LABEL_6:
    }
  }

  else
  {
    if (v7 != *MEMORY[0x1E69D0600])
    {
      v24 = OUTLINED_FUNCTION_41();
      v25(v24);
      goto LABEL_8;
    }

    v16 = OUTLINED_FUNCTION_41();
    v17(v16);
    OUTLINED_FUNCTION_42_5();
    v18 = OUTLINED_FUNCTION_12_3();
    v19(v18);
    sub_1DC515E5C();
    v21 = v20;
    v22 = OUTLINED_FUNCTION_31_0();
    v23(v22);
    if (v21)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC332550()
{
  if (_MergedGlobals_5 != -1)
  {
    OUTLINED_FUNCTION_10_11(&_MergedGlobals_5);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB50, &qword_1DC5242E8);
  OUTLINED_FUNCTION_167_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC3325C0()
{
  OUTLINED_FUNCTION_166();
  sub_1DC327CBC();
  OUTLINED_FUNCTION_23_2();
  sub_1DC313670();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_17_7(27, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC332630()
{
  if (qword_1EDAC8188 != -1)
  {
    OUTLINED_FUNCTION_21_8(&qword_1EDAC8188);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB58, &qword_1DC5242F0);
  OUTLINED_FUNCTION_167_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC3326A0()
{
  OUTLINED_FUNCTION_166();
  sub_1DC327CBC();
  OUTLINED_FUNCTION_23_2();
  sub_1DC313670();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_17_7(32, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC332714()
{
  if (qword_1EDAC8190 != -1)
  {
    OUTLINED_FUNCTION_14_6(&qword_1EDAC8190);
  }

  OUTLINED_FUNCTION_22_1();
  v3 = xmmword_1EDAC8358;
  v4 = unk_1EDAC8368;
  v5 = xmmword_1EDAC8378;
  v6 = unk_1EDAC8388;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB60, &qword_1DC5242F8);
  sub_1DC327DC8(v0, &v2);
  return v2;
}

void sub_1DC332798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_166();
  a17 = v18;
  a18 = v19;
  a9 = 0;
  a10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0A0, &unk_1DC524070);
  sub_1DC327CBC();
  OUTLINED_FUNCTION_23_2();
  sub_1DC313670();
  v20 = OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_17_7(32, 0x80000001DC53F730, &a9, v20, &xmmword_1EDAC8358);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC332818()
{
  if (qword_1EDAC8198 != -1)
  {
    OUTLINED_FUNCTION_13_8(&qword_1EDAC8198);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_94();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB68, &qword_1DC524300);
  sub_1DC327DC8(v0, &v2);
  return v2;
}

void sub_1DC332890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_166();
  a17 = v18;
  a18 = v19;
  a10 = 5;
  sub_1DC327CBC();
  OUTLINED_FUNCTION_23_2();
  sub_1DC313670();
  v20 = OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_17_7(35, 0x80000001DC53F700, &a10, v20, byte_1EDAC8240);
  OUTLINED_FUNCTION_165();
}

float sub_1DC332908()
{
  if (qword_1EDAC81A0 != -1)
  {
    OUTLINED_FUNCTION_12_9(&qword_1EDAC81A0);
  }

  OUTLINED_FUNCTION_22_1();
  v3 = qword_1EDAC8278;
  v4 = unk_1EDAC8280;
  v5 = dword_1EDAC8288;
  v6 = qword_1EDAC8290;
  v7 = unk_1EDAC8298;
  v8 = unk_1EDAC82A0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB70, &qword_1DC524308);
  sub_1DC327DC8(v0, &v2);
  return v2;
}

void sub_1DC33299C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_166();
  a18 = v19;
  a19 = v20;
  a11 = 0;
  sub_1DC327CBC();
  OUTLINED_FUNCTION_23_2();
  sub_1DC313670();
  v21 = OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_17_7(42, 0x80000001DC53F6D0, &a11, v21, &qword_1EDAC8278);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC332A10()
{
  if (qword_1EDAC81A8 != -1)
  {
    OUTLINED_FUNCTION_11_10(&qword_1EDAC81A8);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_94();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB78, &qword_1DC524310);
  sub_1DC327DC8(v0, &v2);
  return v2;
}

void sub_1DC332A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_166();
  a17 = v18;
  a18 = v19;
  a10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB88, &unk_1DC524410);
  sub_1DC327CBC();
  OUTLINED_FUNCTION_23_2();
  sub_1DC313670();
  v20 = OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_17_7(37, 0x80000001DC53F6A0, &a10, v20, byte_1EDAC82B0);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC332B08()
{
  if (qword_1EDAC81B0 != -1)
  {
    OUTLINED_FUNCTION_19_10(&qword_1EDAC81B0);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB58, &qword_1DC5242F0);
  OUTLINED_FUNCTION_167_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC332B78()
{
  OUTLINED_FUNCTION_166();
  nullsub_1();
  sub_1DC327CBC();
  OUTLINED_FUNCTION_23_2();
  sub_1DC313670();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_17_7(37, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC332BF0()
{
  if (qword_1EDAC81B8 != -1)
  {
    OUTLINED_FUNCTION_18_9(&qword_1EDAC81B8);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB58, &qword_1DC5242F0);
  OUTLINED_FUNCTION_167_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC332C60()
{
  OUTLINED_FUNCTION_166();
  sub_1DC323900(0);
  sub_1DC327CBC();
  OUTLINED_FUNCTION_23_2();
  sub_1DC313670();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_17_7(41, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC332CD8()
{
  sub_1DC51665C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_4();
  sub_1DC332DF0();
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    sub_1DC511E0C();
    v3 = sub_1DC51664C();
    v5 = v4;
    v6 = OUTLINED_FUNCTION_36();
    v7(v6);
    if (v3 == 0xD000000000000015 && 0x80000001DC53F440 == v5)
    {
      v2 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_72();
      v2 = sub_1DC51825C();
    }
  }

  return v2 & 1;
}

void sub_1DC332DF0()
{
  OUTLINED_FUNCTION_33();
  sub_1DC51665C();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_54_8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DC511E0C();
  v4 = sub_1DC51664C();
  v6 = v5;
  v7 = *(v1 + 8);
  v8 = OUTLINED_FUNCTION_77_1();
  v7(v8);
  if (v4 == 0xD000000000000014 && 0x80000001DC53F420 == v6)
  {
LABEL_12:

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_19_6();
  v10 = sub_1DC51825C();

  if ((v10 & 1) == 0)
  {
    sub_1DC511E0C();
    v11 = sub_1DC51664C();
    v13 = v12;
    v14 = OUTLINED_FUNCTION_73();
    v7(v14);
    if (v11 != 0x6D754E656E6F6870 || v13 != 0xEB00000000726562)
    {
      v16 = sub_1DC51825C();

      if ((v16 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
  if (qword_1EDAC81C0 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDAC81C8;
  v18 = sub_1DC511DEC();
  sub_1DC332FF4(v18, v19, v17);
  OUTLINED_FUNCTION_168();
LABEL_16:
  OUTLINED_FUNCTION_34();
}

BOOL sub_1DC332FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1DC5182FC();
  sub_1DC51769C();
  v6 = sub_1DC51833C();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_1DC51825C();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_1DC3330E0()
{
  result = sub_1DC33347C(&unk_1F57F7468);
  qword_1EDAC81C8 = result;
  return result;
}

id sub_1DC333108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1DC5176FC();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1DC51085C();

    swift_willThrow();
  }

  return v6;
}