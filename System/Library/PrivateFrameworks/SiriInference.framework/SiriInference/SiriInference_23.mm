uint64_t storeEnumTagSinglePayload for NLSemanticRelationLabel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 375 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 375 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE89)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE88)
  {
    v6 = ((a2 - 65161) >> 16) + 1;
    *result = a2 + 375;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 375;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD53AC5C()
{
  result = qword_1ECCDE640;
  if (!qword_1ECCDE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE640);
  }

  return result;
}

uint64_t type metadata accessor for NLv4SpeechAlternativeFetcher(uint64_t a1)
{
  result = qword_1EE160EC0;
  if (!qword_1EE160EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *sub_1DD53AD24@<X0>(unint64_t a1@<X8>, void *__src@<X0>)
{
  memcpy(v237, __src, 0x108uLL);
  LOBYTE(v236[0]) = BYTE8(v237[15]);
  if (sub_1DD422BD0())
  {
    if (qword_1EE165FB0 != -1)
    {
      goto LABEL_115;
    }

    while (1)
    {
      v3 = sub_1DD63F9F8();
      v4 = __swift_project_value_buffer(v3, qword_1EE16F068);
      v5 = sub_1DD63F9D8();
      v6 = sub_1DD640368();
      if (OUTLINED_FUNCTION_4_0(v6))
      {
        v7 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_16_38(v7);
        OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v8, v9, "fetching NLv4 speech alternatives");
        OUTLINED_FUNCTION_25_12();
      }

      v10 = *(v220 + *(type metadata accessor for NLv4SpeechAlternativeFetcher(0) + 20));
      if (!v10)
      {
        v168 = sub_1DD63F9D8();
        v182 = sub_1DD640378();
        if (!OUTLINED_FUNCTION_4_0(v182))
        {
          goto LABEL_105;
        }

        v183 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_16_38(v183);
        v173 = "could not fetch speech lattice";
LABEL_103:
        OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v171, v172, v173);
        OUTLINED_FUNCTION_25_12();
        goto LABEL_105;
      }

      v215 = v10;
      v11 = [v215 recognition];
      if (!v11 || (v12 = sub_1DD3CA4C0(v11)) == 0)
      {
        v174 = v215;
        v168 = sub_1DD63F9D8();
        v175 = sub_1DD640378();

        if (os_log_type_enabled(v168, v175))
        {
          v176 = OUTLINED_FUNCTION_54();
          v177 = swift_slowAlloc();
          v236[0] = v177;
          *v176 = 136315138;
          v229 = sub_1DD3CA538(v174);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFA8, &unk_1DD6444A0);
          v178 = sub_1DD63FE38();
          v180 = a1;
          v181 = sub_1DD39565C(v178, v179, v236);

          *(v176 + 4) = v181;
          a1 = v180;
          _os_log_impl(&dword_1DD38D000, v168, v175, "speech lattice does not contain any phrases: %s", v176, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v177);
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_0_1();

          goto LABEL_106;
        }

        goto LABEL_105;
      }

      v13 = v12;
      v206 = *(&v237[5] + 1);
      v207 = *&v237[6];
      v208 = *(&v237[4] + 1);
      v209 = *&v237[5];
      v204 = a1;
      v205 = *&v237[4];
      v210 = *(&v237[3] + 1);
      v211 = *&v237[2];
      v212 = *(&v237[1] + 1);
      v235 = *&v237[1];
      v233 = *(&v237[2] + 8);
      v234 = v237[0];
      memcpy(v232, &v237[6] + 8, sizeof(v232));
      v14 = sub_1DD3CC020();
      sub_1DD3C9478(v237, v236);
      a1 = 0;
      v203 = 0;
      v15 = v13 & 0xC000000000000001;
      v226 = v13 & 0xFFFFFFFFFFFFFF8;
      *&v16 = 134349056;
      v221 = v16;
      *&v16 = 136315650;
      v213 = v16;
      v219 = v4;
      v201 = v14;
      v202 = v13;
      v200 = v13 & 0xC000000000000001;
      while (1)
      {
LABEL_9:
        if (v14 == a1)
        {

          v185 = sub_1DD63F9D8();
          v186 = sub_1DD640358();
          if (OUTLINED_FUNCTION_4_0(v186))
          {
            v187 = OUTLINED_FUNCTION_9();
            OUTLINED_FUNCTION_16_38(v187);
            OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v188, v189, "successfully fetched NLv4 speech alternatives");
            OUTLINED_FUNCTION_25_12();
          }

          v190 = v233;
          v191 = v204;
          *v204 = v234;
          v192 = v211;
          v193 = v212;
          *(v191 + 2) = v235;
          *(v191 + 3) = v193;
          *(v191 + 4) = v192;
          *(v191 + 40) = v190;
          v194 = v205;
          *(v191 + 7) = v210;
          *(v191 + 8) = v194;
          v195 = v209;
          *(v191 + 9) = v208;
          *(v191 + 10) = v195;
          v196 = v207;
          *(v191 + 11) = v206;
          *(v191 + 12) = v196;
          return memcpy(v191 + 104, v232, 0xA0uLL);
        }

        if (v15)
        {
          v17 = MEMORY[0x1E12B2C10](a1, v13);
        }

        else
        {
          if (a1 >= *(v226 + 16))
          {
            goto LABEL_113;
          }

          v17 = *(v13 + 8 * a1 + 32);
        }

        v18 = v17;
        if (__OFADD__(a1, 1))
        {
          goto LABEL_112;
        }

        v19 = sub_1DD3CA3B4(v17);
        if (v19)
        {
          break;
        }

        v22 = sub_1DD63F9D8();
        v29 = sub_1DD640368();
        if (!OUTLINED_FUNCTION_2_4(v29))
        {
          goto LABEL_23;
        }

        v24 = v18;
        v30 = OUTLINED_FUNCTION_54();
        OUTLINED_FUNCTION_9_44(v30);
        v27 = v22;
        v28 = "interpretations is nil for phrase %{public}ld, skipping phrase";
LABEL_22:
        _os_log_impl(&dword_1DD38D000, v27, v26, v28, v18, 0xCu);
        OUTLINED_FUNCTION_0_1();
        v18 = v24;
LABEL_23:

        ++a1;
      }

      v20 = v19;
      v21 = v19 >> 62 ? sub_1DD6407B8() : *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21 <= 1)
      {
        break;
      }

      v198 = a1 + 1;
      v229 = MEMORY[0x1E69E7CC0];
      v216 = v21;
      sub_1DD42BB50(0, v21, 0);
      v31 = 0;
      v32 = v229;
      v217 = v20;
      v218 = v20 & 0xC000000000000001;
      v214 = v20 + 32;
      v199 = v18;
LABEL_25:
      v33 = v218;
      sub_1DD408BFC();
      v225 = v32;
      if (v33)
      {
        v34 = MEMORY[0x1E12B2C10](v31, v20);
      }

      else
      {
        v34 = *(v214 + 8 * v31);
      }

      v35 = v34;
      v224 = v31 + 1;
      v36 = [v34 averageConfidenceScore];
      v223 = v35;
      v37 = sub_1DD3CA3D0(v35);
      v38 = MEMORY[0x1E69E7CC0];
      if (v37)
      {
        v39 = v37;
      }

      else
      {
        v39 = MEMORY[0x1E69E7CC0];
      }

      v40 = sub_1DD3CC020();
      v41 = 0;
      while (1)
      {
        if (v40 == v41)
        {

          v227 = v38;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
          sub_1DD4477A4();
          v54 = sub_1DD63FD58();
          v56 = v55;

          v32 = v225;
          v229 = v225;
          v58 = *(v225 + 16);
          v57 = *(v225 + 24);
          if (v58 >= v57 >> 1)
          {
            v60 = OUTLINED_FUNCTION_1_0(v57);
            sub_1DD42BB50(v60, v58 + 1, 1);
            v32 = v229;
          }

          *(v32 + 16) = v58 + 1;
          v59 = v32 + 24 * v58;
          *(v59 + 32) = v36;
          *(v59 + 40) = v54;
          *(v59 + 48) = v56;
          v20 = v217;
          v31 = v224;
          if (v224 == v216)
          {

            v231 = v32;
            v61 = sub_1DD63F9D8();
            v62 = sub_1DD640368();
            if (OUTLINED_FUNCTION_4_0(v62))
            {
              v63 = OUTLINED_FUNCTION_54();
              LOBYTE(v20) = v63;
              *v63 = v221;
              *(v63 + 4) = *(v32 + 16);
              _os_log_impl(&dword_1DD38D000, v61, v54, "number of alternatives before filtering: %{public}ld", v63, 0xCu);
              OUTLINED_FUNCTION_25_12();
            }

            v64 = *(v32 + 16);
            v65 = 0.0;
            v66 = v64;
            for (i = 32; v66; --v66)
            {
              if (v65 <= *(v32 + i))
              {
                v65 = *(v32 + i);
              }

              i += 24;
            }

            v68 = 0;
            v69 = MEMORY[0x1E69E7CC0];
LABEL_55:
            v70 = 24 * v68;
            while (v64 != v68)
            {
              if (v68 >= *(v32 + 16))
              {
                goto LABEL_114;
              }

              ++v68;
              v71 = v70 + 24;
              v72 = *(v32 + v70 + 32);
              v70 += 24;
              if (v72 / v65 >= 0.2)
              {
                v73 = *(v32 + v71 + 16);
                v54 = *(v32 + v71 + 24);

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v229 = v69;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1DD42BB50(0, *(v69 + 16) + 1, 1);
                  v69 = v229;
                }

                a1 = *(v69 + 16);
                v75 = *(v69 + 24);
                v20 = a1 + 1;
                if (a1 >= v75 >> 1)
                {
                  v77 = OUTLINED_FUNCTION_1_0(v75);
                  sub_1DD42BB50(v77, a1 + 1, 1);
                  v69 = v229;
                }

                *(v69 + 16) = v20;
                v76 = v69 + 24 * a1;
                *(v76 + 32) = v72;
                *(v76 + 40) = v73;
                *(v76 + 48) = v54;
                goto LABEL_55;
              }
            }

            swift_beginAccess();
            v231 = v69;

            v78 = sub_1DD63F9D8();
            v79 = sub_1DD640368();
            if (OUTLINED_FUNCTION_4_0(v79))
            {
              v80 = OUTLINED_FUNCTION_54();
              LOBYTE(v20) = v80;
              *v80 = v221;
              *(v80 + 4) = *(v69 + 16);
              _os_log_impl(&dword_1DD38D000, v78, v54, "number of alternatives after filtering: %{public}ld", v80, 0xCu);
              OUTLINED_FUNCTION_25_12();
            }

            v82 = *(v69 + 16);
            if (v82)
            {

              v225 = v69;
              v83 = (v69 + 48);
              v84 = v83;
              do
              {
                v85 = *(v84 - 2);
                v87 = *(v84 - 1);
                v86 = *v84;

                v88 = sub_1DD63F9D8();
                v89 = sub_1DD640368();
                if (OUTLINED_FUNCTION_2_4(v89))
                {
                  v90 = swift_slowAlloc();
                  v91 = swift_slowAlloc();
                  v229 = v91;
                  *v90 = v213;
                  v92 = sub_1DD39565C(v87, v86, &v229);

                  *(v90 + 4) = v92;
                  *(v90 + 12) = 2048;
                  *(v90 + 14) = v85;
                  *(v90 + 22) = 2048;
                  *(v90 + 24) = v85 / v65;
                  _os_log_impl(&dword_1DD38D000, v88, v20, "speech alternative. token=%s score=%f relativescore=%f", v90, 0x20u);
                  __swift_destroy_boxed_opaque_existential_1(v91);
                  OUTLINED_FUNCTION_0_1();
                  OUTLINED_FUNCTION_0_1();
                }

                else
                {
                }

                v84 += 3;
                --v82;
              }

              while (v82);
              v93 = v225;

              v94 = *(v93 + 16);
              if (v94)
              {
                v229 = MEMORY[0x1E69E7CC0];

                sub_1DD42A2D4(0, v94, 0, v95, v96, v97, v98);
                v99 = v229;
                v13 = v202;
                do
                {
                  v101 = *(v83 - 1);
                  v100 = *v83;
                  v229 = v99;
                  v103 = *(v99 + 16);
                  v102 = *(v99 + 24);

                  if (v103 >= v102 >> 1)
                  {
                    sub_1DD42A2D4(v102 > 1, v103 + 1, 1, v104, v105, v106, v107);
                    v99 = v229;
                  }

                  *(v99 + 16) = v103 + 1;
                  v108 = v99 + 16 * v103;
                  *(v108 + 32) = v101;
                  *(v108 + 40) = v100;
                  v83 += 3;
                  --v94;
                }

                while (v94);
              }

              else
              {
                v99 = MEMORY[0x1E69E7CC0];
                v13 = v202;
              }
            }

            else
            {
              v99 = MEMORY[0x1E69E7CC0];
              v13 = v202;
            }

            v109 = &v197;
            v229 = v212;
            v230 = v211;
            MEMORY[0x1EEE9AC00](v81);
            OUTLINED_FUNCTION_31_0();
            *(v110 - 16) = &v229;
            OUTLINED_FUNCTION_15_37();
            v111 = v203;
            v112 = sub_1DD450388();
            if (v112 || (v109 = &v197, v229 = v210, v230 = v205, MEMORY[0x1EEE9AC00](v112), OUTLINED_FUNCTION_31_0(), *(v113 - 16) = &v229, OUTLINED_FUNCTION_15_37(), v114 = sub_1DD450388()) || (v109 = &v197, v229 = v208, v230 = v209, MEMORY[0x1EEE9AC00](v114), OUTLINED_FUNCTION_31_0(), *(v115 - 16) = &v229, OUTLINED_FUNCTION_15_37(), v116 = sub_1DD450388()))
            {
              v203 = v111;
              goto LABEL_84;
            }

            v109 = &v197;
            v229 = v206;
            v230 = v207;
            MEMORY[0x1EEE9AC00](v116);
            OUTLINED_FUNCTION_31_0();
            *(v137 - 16) = &v229;
            OUTLINED_FUNCTION_15_37();
            v138 = sub_1DD450388();
            v203 = v111;
            if (!v138)
            {
              v109 = v220;
              if (sub_1DD4F9BB8(v138) & 1) != 0 || (v229 = sub_1DD63D118(), v230 = v139, v227 = 24938, v228 = 0xE200000000000000, sub_1DD3B52B8(), sub_1DD3B530C(), v109 = sub_1DD63FD48(), , (v109) || (v229 = sub_1DD63D118(), v230 = v140, v227 = 28523, v228 = 0xE200000000000000, v109 = sub_1DD63FD48(), , (v109))
              {
                OUTLINED_FUNCTION_4_62();
                v144 = sub_1DD53BD44(v141, v142, v143);
                OUTLINED_FUNCTION_12_33(v144);
                v145 = OUTLINED_FUNCTION_7_48();
                v210 = sub_1DD53BD44(v145, v146, v147);
                v125 = v148;

                OUTLINED_FUNCTION_4_62();
                v208 = sub_1DD53BD44(v149, v150, v151);
                v130 = v152;

                OUTLINED_FUNCTION_4_62();
                v134 = sub_1DD53BD44(v153, v154, v155);
LABEL_85:
                v206 = v134;
                v136 = v135;
              }

              else
              {
                OUTLINED_FUNCTION_4_62();
                v159 = sub_1DD53BF3C(v156, v157, v158);
                OUTLINED_FUNCTION_12_33(v159);
                v160 = OUTLINED_FUNCTION_7_48();
                v163 = sub_1DD53BF3C(v160, v161, v162);
                v125 = v164;

                v208 = sub_1DD53BF3C(v163, v125, v99);
                v130 = v165;

                v210 = v163;
                v206 = sub_1DD53BF3C(v163, v125, v99);
                v136 = v166;
              }

              v211 = v109;
              v205 = v125;
              v209 = v130;
              v207 = v136;
              v15 = v200;
              v14 = v201;
              a1 = v198;
              goto LABEL_9;
            }

LABEL_84:
            OUTLINED_FUNCTION_4_62();
            v120 = sub_1DD53BC5C(v117, v118, v119);
            OUTLINED_FUNCTION_12_33(v120);
            v121 = OUTLINED_FUNCTION_7_48();
            v210 = sub_1DD53BC5C(v121, v122, v123);
            v125 = v124;

            OUTLINED_FUNCTION_4_62();
            v208 = sub_1DD53BC5C(v126, v127, v128);
            v130 = v129;

            OUTLINED_FUNCTION_4_62();
            v134 = sub_1DD53BC5C(v131, v132, v133);
            goto LABEL_85;
          }

          goto LABEL_25;
        }

        if ((v39 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x1E12B2C10](v41, v39);
        }

        else
        {
          if (v41 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_111;
          }

          v42 = *(v39 + 8 * v41 + 32);
        }

        v43 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        a1 = v42;
        v44 = [a1 text];
        if (v44)
        {
          v45 = v44;
          v46 = sub_1DD63FDD8();
          v222 = v47;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DD3BE2A4();
            v38 = v52;
          }

          v49 = *(v38 + 16);
          v48 = *(v38 + 24);
          a1 = v49 + 1;
          if (v49 >= v48 >> 1)
          {
            OUTLINED_FUNCTION_1_0(v48);
            sub_1DD3BE2A4();
            v38 = v53;
          }

          *(v38 + 16) = a1;
          v50 = v38 + 16 * v49;
          v51 = v222;
          *(v50 + 32) = v46;
          *(v50 + 40) = v51;
          v41 = v43;
        }

        else
        {

          ++v41;
        }
      }

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
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v22 = sub_1DD63F9D8();
    v23 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_2_4(v23))
    {
      goto LABEL_23;
    }

    v24 = v18;
    v25 = OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_9_44(v25);
    v27 = v22;
    v28 = "interpretations < 2 for phrase %{public}ld, skipping phrase";
    goto LABEL_22;
  }

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
  }

  v167 = sub_1DD63F9F8();
  __swift_project_value_buffer(v167, qword_1EE16F068);
  v168 = sub_1DD63F9D8();
  v169 = sub_1DD640378();
  if (OUTLINED_FUNCTION_4_0(v169))
  {
    v170 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_16_38(v170);
    v173 = "no need to fetch speech alternatives for NLv3 person";
    goto LABEL_103;
  }

LABEL_105:

LABEL_106:
  memcpy(a1, v237, 0x108uLL);
  return sub_1DD3C9478(v237, v236);
}

uint64_t sub_1DD53BC5C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 && (v11[0] = a1, v11[1] = a2, MEMORY[0x1EEE9AC00](a1), OUTLINED_FUNCTION_31_0(), *(v6 - 16) = v11, sub_1DD450388()))
  {
    v11[0] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    v7 = sub_1DD4477A4();
    return OUTLINED_FUNCTION_11_42(v7, v8, v9, v7);
  }

  else
  {
  }

  return v3;
}

uint64_t sub_1DD53BD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  swift_bridgeObjectRetain_n();
  v7 = (a3 + 40);
  v8 = v6;
  if (v6)
  {
    while (1)
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v45 = a1;
      v46 = a2;
      v43 = v10;
      v44 = v9;
      sub_1DD3B7F10();

      if (sub_1DD6406D8())
      {
        break;
      }

      v7 += 2;
      if (!--v8)
      {
        goto LABEL_4;
      }
    }

    swift_bridgeObjectRelease_n();
    v42 = MEMORY[0x1E69E7CC0];
    sub_1DD42A2D4(0, v6, 0, v11, v12, v13, v14);
    v19 = v42;
    v20 = (a3 + 40);
    v39 = a1;
    v40 = a2;
    v38 = v10;
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v45 = a1;
      v46 = a2;
      v43 = v10;
      v44 = v9;
      v41[0] = v21;
      v41[1] = v22;
      v23 = OUTLINED_FUNCTION_8_51(&v43, v41, v15, v16, v17, v18, MEMORY[0x1E69E6158]);
      v25 = v24;
      v42 = v19;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        v29 = OUTLINED_FUNCTION_1_0(v26);
        sub_1DD42A2D4(v29, v27 + 1, 1, v30, v31, v32, v33);
        v19 = v42;
      }

      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v20 += 2;
      --v6;
      a1 = v39;
      a2 = v40;
      v10 = v38;
    }

    while (v6);

    v45 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    v34 = sub_1DD4477A4();
    a1 = OUTLINED_FUNCTION_11_42(v34, v35, v36, v34);
  }

  else
  {
LABEL_4:
    swift_bridgeObjectRelease_n();
  }

  return a1;
}

uint64_t sub_1DD53BF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v44 - v7;
  v8 = *(a3 + 16);
  v44 = v8;
  v45 = a3;
  v9 = (a3 + 40);
  if (v8)
  {
    while (1)
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v53 = a1;
      v54 = a2;
      v51 = 25180;
      v52 = 0xE200000000000000;

      MEMORY[0x1E12B2260](v11, v10);
      MEMORY[0x1E12B2260](25180, 0xE200000000000000);
      v12 = sub_1DD63D168();
      v13 = v48;
      __swift_storeEnumTagSinglePayload(v48, 1, 1, v12);
      sub_1DD3B7F10();
      sub_1DD6406A8();
      v15 = v14;
      sub_1DD401EB8(v13);

      if ((v15 & 1) == 0)
      {
        break;
      }

      v9 += 2;
      if (!--v8)
      {
        goto LABEL_4;
      }
    }

    v48 = a1;
    v50 = MEMORY[0x1E69E7CC0];
    v20 = v44;
    sub_1DD42A2D4(0, v44, 0, v16, v17, v18, v19);
    v25 = v50;
    v26 = (v45 + 40);
    v46 = v11;
    v47 = a2;
    do
    {
      v27 = *(v26 - 1);
      v28 = *v26;
      v53 = v48;
      v54 = a2;
      v51 = v11;
      v52 = v10;
      v49[0] = v27;
      v49[1] = v28;
      v29 = OUTLINED_FUNCTION_8_51(&v51, v49, v21, v22, v23, v24, MEMORY[0x1E69E6158]);
      v31 = v30;
      v50 = v25;
      v33 = *(v25 + 16);
      v32 = *(v25 + 24);
      if (v33 >= v32 >> 1)
      {
        v35 = OUTLINED_FUNCTION_1_0(v32);
        sub_1DD42A2D4(v35, v33 + 1, 1, v36, v37, v38, v39);
        v25 = v50;
      }

      *(v25 + 16) = v33 + 1;
      v34 = v25 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v31;
      v26 += 2;
      --v20;
      v11 = v46;
      a2 = v47;
    }

    while (v20);

    v53 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    v40 = sub_1DD4477A4();
    a1 = OUTLINED_FUNCTION_11_42(v40, v41, v42, v40);
  }

  else
  {
LABEL_4:
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_11_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DD63FD58();
}

uint64_t OUTLINED_FUNCTION_12_33(uint64_t a1)
{
  *(v1 + 120) = a1;
}

uint64_t sub_1DD53C21C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE648, &unk_1DD6586A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6504B0;
  *(inited + 32) = 0x746C7561666564;
  *(inited + 40) = 0xE700000000000000;
  v41 = 1;
  type metadata accessor for DateTime();
  swift_allocObject();
  *(inited + 48) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:)(12, 0, 0, &v41);
  *(inited + 56) = 21569;
  *(inited + 64) = 0xE200000000000000;
  OUTLINED_FUNCTION_1_90();
  v1 = OUTLINED_FUNCTION_0_109();
  *(inited + 72) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v1, v2, v3, v4, 1, 59, 59, v5);
  *(inited + 80) = 20035;
  *(inited + 88) = 0xE200000000000000;
  OUTLINED_FUNCTION_1_90();
  v6 = OUTLINED_FUNCTION_0_109();
  *(inited + 96) = OUTLINED_FUNCTION_2_78(v6, v7, v8, v9, v10, v11, v12, v13);
  *(inited + 104) = 17732;
  *(inited + 112) = 0xE200000000000000;
  OUTLINED_FUNCTION_1_90();
  v14 = OUTLINED_FUNCTION_0_109();
  *(inited + 120) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v14, v15, v16, v17, 1, 59, 59, v18);
  *(inited + 128) = 19272;
  *(inited + 136) = 0xE200000000000000;
  OUTLINED_FUNCTION_1_90();
  v19 = OUTLINED_FUNCTION_0_109();
  *(inited + 144) = OUTLINED_FUNCTION_2_78(v19, v20, v21, v22, v23, v24, v25, v26);
  *(inited + 152) = 21317;
  *(inited + 160) = 0xE200000000000000;
  OUTLINED_FUNCTION_1_90();
  v27 = OUTLINED_FUNCTION_0_109();
  *(inited + 168) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v27, v28, v29, v30, 2, 59, 59, v31);
  *(inited + 176) = 22356;
  *(inited + 184) = 0xE200000000000000;
  v41 = 1;
  swift_allocObject();
  v32 = OUTLINED_FUNCTION_0_109();
  *(inited + 192) = OUTLINED_FUNCTION_2_78(v32, v33, v34, v35, v36, v37, v38, v39);
  return sub_1DD63FC88();
}

uint64_t sub_1DD53C3D8@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2;
  v60 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  MEMORY[0x1EEE9AC00](v67);
  v8 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57[-v10];
  sub_1DD4BF298(a1, &v57[-v10]);
  v12 = v11[3];
  OUTLINED_FUNCTION_0_110();
  if (v13)
  {

    v15 = OUTLINED_FUNCTION_1_91(v14);
    v5 = v12;
    if (v12)
    {

      return sub_1DD3D40D8(v11, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v3 = v15;
    v4 = v16;
    swift_bridgeObjectRelease_n();
    v11[3] = v3;
    v11[4] = v4;
  }

  OUTLINED_FUNCTION_0_110();
  if (v17)
  {

    OUTLINED_FUNCTION_1_91(v18);
    OUTLINED_FUNCTION_2_79();
    if (v5)
    {
      return sub_1DD3D40D8(v11, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v11[5] = v3;
    v11[6] = v4;
  }

  OUTLINED_FUNCTION_0_110();
  if (v19)
  {

    OUTLINED_FUNCTION_1_91(v20);
    OUTLINED_FUNCTION_2_79();
    if (v5)
    {
      return sub_1DD3D40D8(v11, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v11[7] = v3;
    v11[8] = v4;
  }

  OUTLINED_FUNCTION_0_110();
  if (v21)
  {

    OUTLINED_FUNCTION_1_91(v22);
    OUTLINED_FUNCTION_2_79();
    if (v5)
    {
      return sub_1DD3D40D8(v11, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v11[9] = v3;
    v11[10] = v4;
  }

  OUTLINED_FUNCTION_0_110();
  if (v23)
  {

    OUTLINED_FUNCTION_1_91(v24);
    OUTLINED_FUNCTION_2_79();
    if (v5)
    {
      return sub_1DD3D40D8(v11, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v11[11] = v3;
    v11[12] = v4;
  }

  OUTLINED_FUNCTION_0_110();
  if (v25)
  {

    OUTLINED_FUNCTION_1_91(v26);
    OUTLINED_FUNCTION_2_79();
    if (v5)
    {
      return sub_1DD3D40D8(v11, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v11[15] = v3;
    v11[16] = v4;
  }

  OUTLINED_FUNCTION_0_110();
  if (v27)
  {

    OUTLINED_FUNCTION_1_91(v28);
    OUTLINED_FUNCTION_2_79();
    if (v5)
    {
      return sub_1DD3D40D8(v11, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v11[17] = v3;
    v11[18] = v4;
  }

  OUTLINED_FUNCTION_0_110();
  if (v29)
  {

    OUTLINED_FUNCTION_1_91(v30);
    OUTLINED_FUNCTION_2_79();
    if (v5)
    {
      return sub_1DD3D40D8(v11, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v11[19] = v3;
    v11[20] = v4;
  }

  if (v11[23])
  {
    v31 = v11[22];

    v33 = OUTLINED_FUNCTION_1_91(v32);
    v35 = v34;

    if (v31)
    {
      return sub_1DD3D40D8(v11, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v11[22] = v33;
    v11[23] = v35;
  }

  v36 = v67;
  v37 = v11 + *(v67 + 36);
  v37[*(type metadata accessor for ContactResolver.SignalSet(0) + 184)] = 1;
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v38 = sub_1DD63F9F8();
  __swift_project_value_buffer(v38, qword_1EE16F068);
  sub_1DD4BF298(a1, v8);
  v39 = sub_1DD63F9D8();
  v40 = sub_1DD640368();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v61[0] = v59;
    *v41 = 136315394;
    memcpy(v63, v8, sizeof(v63));
    memcpy(v66, v8, 0x108uLL);
    v42 = sub_1DD3C9478(v63, v65);
    v58 = v40;
    v43 = ContactQuery.description.getter(v42);
    v45 = v44;
    memcpy(v64, v66, sizeof(v64));
    sub_1DD3C9580(v64);
    sub_1DD3D40D8(v8, &qword_1ECCDBC18, &unk_1DD6459A0);
    v46 = sub_1DD39565C(v43, v45, v61);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2080;
    swift_beginAccess();
    OUTLINED_FUNCTION_5_65(v65);
    OUTLINED_FUNCTION_5_65(v62);
    v47 = sub_1DD3C9478(v65, v66);
    v48 = ContactQuery.description.getter(v47);
    v50 = v49;
    memcpy(v66, v62, 0x108uLL);
    sub_1DD3C9580(v66);
    v51 = sub_1DD39565C(v48, v50, v61);

    *(v41 + 14) = v51;
    _os_log_impl(&dword_1DD38D000, v39, v58, "Original Query: %s\n\nNormalized Query: %s", v41, 0x16u);
    v52 = v59;
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v52, -1, -1);
    v36 = v67;
    MEMORY[0x1E12B3DA0](v41, -1, -1);
  }

  else
  {

    sub_1DD3D40D8(v8, &qword_1ECCDBC18, &unk_1DD6459A0);
  }

  swift_beginAccess();
  OUTLINED_FUNCTION_5_65(v63);
  OUTLINED_FUNCTION_5_65(v62);
  memcpy(v64, a1, sizeof(v64));
  memcpy(v61, a1, sizeof(v61));
  sub_1DD3C9478(v63, v66);
  sub_1DD3C9478(v64, v66);
  v53 = static ContactQuery.== infix(_:_:)(v62, v61);
  memcpy(v65, v61, sizeof(v65));
  sub_1DD3C9580(v65);
  memcpy(v66, v62, 0x108uLL);
  sub_1DD3C9580(v66);
  if (v53)
  {
    v54 = 1;
    v55 = v60;
  }

  else
  {
    v55 = v60;
    sub_1DD4BF298(v11, v60);
    v54 = 0;
  }

  __swift_storeEnumTagSinglePayload(v55, v54, 1, v36);
  return sub_1DD3D40D8(v11, &qword_1ECCDBC18, &unk_1DD6459A0);
}

uint64_t sub_1DD53C9B4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE658, &qword_1DD664070);
  sub_1DD63DA78();
  OUTLINED_FUNCTION_4_63();
  v5 = v4;
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DD643F90;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x1E69B2898], v2);
  sub_1DD63DAA8();
  swift_allocObject();
  sub_1DD63DA98();
  if (v1)
  {
    sub_1DD63D168();
    OUTLINED_FUNCTION_2_0();
    (*(v8 + 8))(a1);
  }

  else
  {
    v2 = sub_1DD63DA88();
    sub_1DD63D168();
    OUTLINED_FUNCTION_2_0();
    (*(v10 + 8))(a1);
  }

  return v2;
}

unint64_t sub_1DD53CB80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE650, &unk_1DD658720);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_1DD63DAE8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v29 = a1;
  sub_1DD63DA58();
  sub_1DD53D0F0(&qword_1EE165CB0, MEMORY[0x1E69B2888], v11);
  sub_1DD640068();
  sub_1DD53D0F0(&qword_1EE165CA8, MEMORY[0x1E69B2890], v12);
  v13 = (v6 + 32);
  v25 = v6;
  v14 = (v6 + 8);
  v27 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1DD640628();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      break;
    }

    v15 = *v13;
    (*v13)(v10, v4, v5);
    if (sub_1DD63DAD8())
    {
      v15(v26, v10, v5);
      v16 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD42B9B0(0, *(v16 + 16) + 1, 1);
        v16 = v28;
      }

      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v27 = v19 + 1;
        v24 = v19;
        sub_1DD42B9B0(v18 > 1, v19 + 1, 1);
        v20 = v27;
        v19 = v24;
        v16 = v28;
      }

      *(v16 + 16) = v20;
      v21 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v27 = v16;
      v15((v16 + v21 + *(v25 + 72) * v19), v26, v5);
    }

    else
    {
      (*v14)(v10, v5);
    }
  }

  sub_1DD3D40D8(v4, &qword_1ECCDE650, &unk_1DD658720);
  return v27;
}

uint64_t sub_1DD53CE90(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = v3;
  sub_1DD63DAE8();
  OUTLINED_FUNCTION_4_63();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DD63DA68();
  if (!v3)
  {
    v16 = sub_1DD53CB80(v11);
    v17 = *(v16 + 16);
    if (v17)
    {
      v40 = v10;
      v36[2] = 0;
      v42 = MEMORY[0x1E69E7CC0];
      sub_1DD42A2D4(0, v17, 0, v12, v13, v14, v15);
      v18 = v42;
      v20 = *(v7 + 16);
      v19 = v7 + 16;
      v21 = *(v19 + 64);
      v36[1] = v16;
      v22 = v16 + ((v21 + 32) & ~v21);
      v38 = *(v19 + 56);
      v39 = v20;
      v37 = (v19 - 8);
      v41 = v19;
      do
      {
        v23 = v40;
        v39(v40, v22, v4);
        v24 = sub_1DD63DAC8();
        v26 = v25;
        v27 = v4;
        (*v37)(v23, v4);
        v42 = v18;
        v33 = *(v18 + 16);
        v32 = *(v18 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1DD42A2D4(v32 > 1, v33 + 1, 1, v28, v29, v30, v31);
          v18 = v42;
        }

        *(v18 + 16) = v33 + 1;
        v34 = v18 + 16 * v33;
        *(v34 + 32) = v24;
        *(v34 + 40) = v26;
        v22 += v38;
        --v17;
        v4 = v27;
      }

      while (v17);
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    v42 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4477A4();
    v5 = sub_1DD63FD58();
  }

  return v5;
}

uint64_t sub_1DD53D0F0(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DD63DA58();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DD53D150(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1DD53D190(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD53D1F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x1E69E7CC0];
  sub_1DD42B3E4(0, v1, 0);
  v2 = v31;
  result = sub_1DD55B198();
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v25 = v3 + 64;
  v26 = v3 + 56;
  v27 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v30 = v6;
      v28 = v8;
      v29 = v5;
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v15 = *(v31 + 16);
      v14 = *(v31 + 24);

      if (v15 >= v14 >> 1)
      {
        result = sub_1DD42B3E4(v14 > 1, v15 + 1, 1);
      }

      *(v31 + 16) = v15 + 1;
      v16 = (v31 + 24 * v15);
      v16[4] = v12;
      v16[5] = v13;
      v16[6] = 0;
      if (v30)
      {
        goto LABEL_29;
      }

      v9 = v26;
      v3 = v27;
      v17 = 1 << *(v27 + 32);
      if (v7 >= v17)
      {
        goto LABEL_26;
      }

      v18 = *(v26 + 8 * v10);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v27 + 36) != v29)
      {
        goto LABEL_28;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (v25 + 8 * v10);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1DD3AA558(v7, v29, 0);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        result = sub_1DD3AA558(v7, v29, 0);
      }

LABEL_19:
      v8 = v28 + 1;
      if (v28 + 1 == v1)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v27 + 36);
      v7 = v17;
      if (v17 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1DD53D430(uint64_t a1, uint64_t a2)
{
  v10 = *v2;
  v9 = *(v2 + 2);
  v5 = swift_allocObject();
  v6 = v2[1];
  *(v5 + 16) = *v2;
  *(v5 + 32) = v6;
  *(v5 + 48) = v2[2];
  *(v5 + 64) = *(v2 + 6);
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  sub_1DD406EC4(&v10, v8);
  sub_1DD53DB8C(&v9, v8);

  sub_1DD63D9C8();
}

void sub_1DD53D50C(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v51 = a4;
  v52 = a3;
  v50 = sub_1DD63D4F8();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = (v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = sub_1DD63D078();
  v7 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v12 = *a1;
  v13 = *(a2 + 32);
  v56 = v47 - v14;
  v13(v11);
  v54 = a2;
  v15 = *(a2 + 16);
  v16 = sub_1DD53D1F0(v15);
  v17 = sub_1DD3B80F8(v16);
  v18 = sub_1DD3CC020();
  if (!v18)
  {
LABEL_34:
    v44 = v48;
    *v48 = v17;
    v45 = v49;
    v46 = v50;
    (*(v49 + 104))(v44, *MEMORY[0x1E69D2B60], v50);

    v52(v44);
    (*(v45 + 8))(v44, v46);
    (*(v7 + 8))(v56, v55);

    return;
  }

  v19 = v18;
  v20 = 0;
  v62 = v12 & 0xC000000000000001;
  v59 = v12 & 0xFFFFFFFFFFFFFF8;
  v60 = v18;
  v57 = v9;
  v58 = v12 + 32;
  v53 = (v7 + 8);
  while (1)
  {
    if (v62)
    {
      v21 = MEMORY[0x1E12B2C10](v20, v12);
    }

    else
    {
      if (v20 >= *(v59 + 16))
      {
        goto LABEL_36;
      }

      v21 = *(v58 + 8 * v20);
    }

    v22 = v21;
    v23 = __OFADD__(v20++, 1);
    if (v23)
    {
      break;
    }

    v24 = sub_1DD4EF3B8(v21);
    if (!v25)
    {
      goto LABEL_25;
    }

    v26 = v25;
    if (!*(v15 + 16))
    {

LABEL_25:

      goto LABEL_30;
    }

    v27 = v24;
    v61 = v17;
    v28 = v12;
    sub_1DD640E28();
    sub_1DD63FD28();
    v29 = sub_1DD640E78();
    v30 = ~(-1 << *(v15 + 32));
    do
    {
      v31 = v29 & v30;
      if (((*(v15 + 56 + (((v29 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v30)) & 1) == 0)
      {
        goto LABEL_28;
      }

      v32 = (*(v15 + 48) + 16 * v31);
      if (*v32 == v27 && v26 == v32[1])
      {
        break;
      }

      v34 = sub_1DD640CD8();
      v29 = v31 + 1;
    }

    while ((v34 & 1) == 0);
    v35 = [v22 absoluteTimestamp];
    if (!v35)
    {
      goto LABEL_28;
    }

    v36 = v35;
    v37 = v57;
    sub_1DD63D048();

    sub_1DD63CF88();
    if (v38 >= *(v54 + 24))
    {
      (*v53)(v37, v55);
LABEL_28:

      v12 = v28;
      v17 = v61;
      goto LABEL_29;
    }

    if ([v22 playbackState] != 1)
    {
      (*v53)(v57, v55);
      goto LABEL_28;
    }

    v39 = v61;
    v12 = v28;
    if (*(v61 + 16))
    {
      v40 = sub_1DD3978DC();
      v17 = v39;
      if (v41)
      {
        v42 = *(*(v39 + 56) + 8 * v40);
        v23 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v23)
        {
          goto LABEL_37;
        }

        v47[1] = v43;
        swift_isUniquelyReferenced_nonNull_native();
        v63[0] = v39;
        sub_1DD3FFCE8();

        (*v53)(v57, v55);
        v17 = v63[0];
      }

      else
      {
        (*v53)(v57, v55);
      }
    }

    else
    {
      (*v53)(v57, v55);

      v17 = v39;
    }

LABEL_29:
    v19 = v60;
LABEL_30:
    if (v20 == v19)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_1DD53DA28()
{
  v0 = qword_1ECCDE660;

  return v0;
}

uint64_t sub_1DD53DA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD53DB2C();

  return MEMORY[0x1EEE40138](a1, a2, a3, a4, v8);
}

uint64_t sub_1DD53DAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD53DB2C();

  return MEMORY[0x1EEE40118](a1, a2, a3, a4, v8);
}

unint64_t sub_1DD53DB2C()
{
  result = qword_1ECCDE670;
  if (!qword_1ECCDE670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE670);
  }

  return result;
}

uint64_t sub_1DD53DB8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFD10, &qword_1DD6589F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD53DC10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1DD42B3E4(0, v3, 0);
    v5 = v41;
    result = sub_1DD55B198();
    v8 = result;
    v10 = v9;
    v11 = 0;
    v40 = v4 + 56;
    v33 = v4 + 64;
    v34 = v3;
    v35 = v4;
    v36 = a2;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v8 < 1 << *(v4 + 32))
      {
        v12 = v8 >> 6;
        if ((*(v40 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          goto LABEL_33;
        }

        if (*(v4 + 36) != v7)
        {
          goto LABEL_34;
        }

        v37 = v11;
        v38 = v7;
        v13 = (*(v4 + 48) + 16 * v8);
        v15 = *v13;
        v14 = v13[1];
        v16 = *(a2 + 16);

        if (v16)
        {

          v17 = sub_1DD3978DC();
          if (v18)
          {
            v19 = *(*(a2 + 56) + 8 * v17);
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 0;
        }

        v21 = *(v5 + 16);
        v20 = *(v5 + 24);
        v22 = v38;
        if (v21 >= v20 >> 1)
        {
          result = sub_1DD42B3E4(v20 > 1, v21 + 1, 1);
          v22 = v38;
        }

        *(v5 + 16) = v21 + 1;
        v23 = (v5 + 24 * v21);
        v23[4] = v15;
        v23[5] = v14;
        v23[6] = v19;
        if (v10)
        {
          goto LABEL_38;
        }

        v4 = v35;
        a2 = v36;
        v24 = 1 << *(v35 + 32);
        if (v8 >= v24)
        {
          goto LABEL_35;
        }

        v25 = *(v40 + 8 * v12);
        if ((v25 & (1 << v8)) == 0)
        {
          goto LABEL_36;
        }

        if (*(v35 + 36) != v22)
        {
          goto LABEL_37;
        }

        v26 = v25 & (-2 << (v8 & 0x3F));
        if (v26)
        {
          v24 = __clz(__rbit64(v26)) | v8 & 0x7FFFFFFFFFFFFFC0;
          v27 = v34;
        }

        else
        {
          v39 = v5;
          v28 = v12 << 6;
          v29 = v12 + 1;
          v27 = v34;
          v30 = (v33 + 8 * v12);
          while (v29 < (v24 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              result = sub_1DD3AA558(v8, v22, 0);
              v24 = __clz(__rbit64(v31)) + v28;
              goto LABEL_25;
            }
          }

          result = sub_1DD3AA558(v8, v22, 0);
LABEL_25:
          v5 = v39;
        }

        v11 = v37 + 1;
        if (v37 + 1 == v27)
        {

          return v5;
        }

        v10 = 0;
        v7 = *(v35 + 36);
        v8 = v24;
        if (v24 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1DD53DEE4(uint64_t a1, uint64_t a2)
{
  v10 = *v2;
  v9 = *(v2 + 2);
  v5 = swift_allocObject();
  v6 = v2[1];
  *(v5 + 16) = *v2;
  *(v5 + 32) = v6;
  *(v5 + 48) = v2[2];
  *(v5 + 64) = *(v2 + 6);
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  sub_1DD406EC4(&v10, v8);
  sub_1DD53DB8C(&v9, v8);

  sub_1DD63D9C8();
}

void *sub_1DD53DFC0(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v68 = a4;
  v69 = a3;
  v6 = sub_1DD63D4F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v66 = (v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1DD63D078();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v59 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v59 - v18;
  v20 = *a1;
  (*(a2 + 32))(v17);
  sub_1DD63CF98();
  v64 = v15;
  v71 = v15;
  sub_1DD5E82F0(sub_1DD53EB88, v70, v20);
  sub_1DD63CF98();
  v63 = *(a2 + 16);
  v21 = sub_1DD63D8E8();

  v22 = *(v10 + 8);
  v67 = v9;
  v65 = v10 + 8;
  result = v22(v12, v9);
  v24 = 0;
  v25 = v21 + 64;
  v26 = 1 << *(v21 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v21 + 64);
  v29 = (v26 + 63) >> 6;
  v30 = 0.0;
  if (v28)
  {
    while (1)
    {
      v31 = v24;
LABEL_9:
      v32 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v30 = v30 + *(*(v21 + 56) + ((v31 << 9) | (8 * v32)));
      if (!v28)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v31 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v31 >= v29)
    {
      break;
    }

    v28 = *(v25 + 8 * v31);
    ++v24;
    if (v28)
    {
      v24 = v31;
      goto LABEL_9;
    }
  }

  v59[1] = 0;
  v60 = v22;
  v61 = v7;
  v62 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB58, &qword_1DD65E1B0);
  result = sub_1DD640A58();
  v33 = result;
  v34 = 0;
  v35 = 1 << *(v21 + 32);
  v36 = *(v21 + 64);
  v37 = -1;
  if (v35 < 64)
  {
    v37 = ~(-1 << v35);
  }

  v38 = v37 & v36;
  v39 = (v35 + 63) >> 6;
  v40 = result + 8;
  if ((v37 & v36) == 0)
  {
LABEL_15:
    v42 = v34;
    while (1)
    {
      v34 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_28;
      }

      if (v34 >= v39)
      {

        v52 = sub_1DD53DC10(v63, v33);

        v53 = sub_1DD3B80F8(v52);
        v54 = v66;
        *v66 = v53;
        v56 = v61;
        v55 = v62;
        (*(v61 + 104))(v54, *MEMORY[0x1E69D2B60], v62);
        v69(v54);
        (*(v56 + 8))(v54, v55);
        v57 = v67;
        v58 = v60;
        v60(v19, v67);
        return v58(v64, v57);
      }

      v43 = *(v25 + 8 * v34);
      ++v42;
      if (v43)
      {
        v41 = __clz(__rbit64(v43));
        v38 = (v43 - 1) & v43;
        goto LABEL_20;
      }
    }
  }

  while (1)
  {
    v41 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
LABEL_20:
    v44 = v41 | (v34 << 6);
    v45 = round(*(*(v21 + 56) + 8 * v44) * 1000.0 / v30);
    if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v45 <= -9.22337204e18)
    {
      goto LABEL_30;
    }

    if (v45 >= 9.22337204e18)
    {
      goto LABEL_31;
    }

    v46 = (*(v21 + 48) + 16 * v44);
    v47 = *v46;
    result = v46[1];
    *(v40 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
    v48 = (v33[6] + 16 * v44);
    *v48 = v47;
    v48[1] = result;
    *(v33[7] + 8 * v44) = v45;
    v49 = v33[2];
    v50 = __OFADD__(v49, 1);
    v51 = v49 + 1;
    if (v50)
    {
      goto LABEL_32;
    }

    v33[2] = v51;

    if (!v38)
    {
      goto LABEL_15;
    }
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DD53E4C0@<X0>(void **a1@<X0>, void (*a2)(uint64_t, char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v6 = sub_1DD63D918();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v56 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DD63D8F8();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v51 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v50 = v49 - v11;
  v12 = sub_1DD63D078();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v49 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v49 - v20;
  v22 = *a1;
  v23 = sub_1DD4EF3B8(*a1);
  if (!v24)
  {
    goto LABEL_13;
  }

  v49[1] = v23;
  v57 = a3;
  v25 = [v22 absoluteTimestamp];
  if (!v25)
  {

LABEL_12:
    a3 = v57;
LABEL_13:
    v35 = sub_1DD63D8D8();
    v36 = a3;
    return __swift_storeEnumTagSinglePayload(v36, 1, 1, v35);
  }

  v26 = v25;
  v49[2] = v3;
  sub_1DD63D048();

  v27 = *(v13 + 32);
  v27(v21, v18, v12);
  if ((sub_1DD63CFB8() & 1) == 0)
  {
    (*(v13 + 8))(v21, v12);

    goto LABEL_12;
  }

  v58 = v27;
  v28 = sub_1DD4EF3B8(v22);
  if (v29)
  {
    v30 = v28;
    v31 = v29;

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (!v32)
    {
      goto LABEL_15;
    }
  }

  v33 = [v22 bundleID];
  if (v33)
  {

    v34 = &selRef_setUnderlyingQueue_;
  }

  else
  {
LABEL_15:
    v34 = &selRef_setUnderlyingQueue_;
    if (![v22 playbackState])
    {

      v44 = v57;
      v58(v57, v21, v12);
      v45 = MEMORY[0x1E69D2C58];
      goto LABEL_22;
    }
  }

  v38 = [v22 v34[19]];
  v39 = v57;
  if (v38 - 2 < 4)
  {
    v40 = MEMORY[0x1E69D2C68];
LABEL_18:
    v41 = v52;
    v42 = v53;
    v43 = v50;
    (*(v52 + 104))(v50, *v40, v53);
    (*(v13 + 16))(v15, v21, v12);
    (*(v41 + 16))(v51, v43, v42);
    sub_1DD63D908();
    (*(v41 + 8))(v43, v42);
    (*(v13 + 8))(v21, v12);
    v44 = v57;
    (*(v54 + 32))(v57, v56, v55);
    v45 = MEMORY[0x1E69D2C50];
LABEL_22:
    v47 = *v45;
    v48 = sub_1DD63D8D8();
    (*(*(v48 - 8) + 104))(v44, v47, v48);
    return __swift_storeEnumTagSinglePayload(v44, 0, 1, v48);
  }

  v46 = v38;
  if (v38 == 1)
  {
    v40 = MEMORY[0x1E69D2C70];
    goto LABEL_18;
  }

  if (!v38)
  {
    (*(v13 + 8))(v21, v12);

    v35 = sub_1DD63D8D8();
    v36 = v39;
    return __swift_storeEnumTagSinglePayload(v36, 1, 1, v35);
  }

  type metadata accessor for BMMediaNowPlayingPlaybackState(0);
  v59 = v46;
  result = sub_1DD640D38();
  __break(1u);
  return result;
}

uint64_t sub_1DD53EA24()
{
  v0 = qword_1ECCDE678;

  return v0;
}

uint64_t sub_1DD53EA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD53EB28();

  return MEMORY[0x1EEE40138](a1, a2, a3, a4, v8);
}

uint64_t sub_1DD53EAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD53EB28();

  return MEMORY[0x1EEE40118](a1, a2, a3, a4, v8);
}

unint64_t sub_1DD53EB28()
{
  result = qword_1ECCDE688;
  if (!qword_1ECCDE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE688);
  }

  return result;
}

uint64_t DateTime.Date.Holiday.ObservanceType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD53EBCC()
{
  result = qword_1ECCDE690;
  if (!qword_1ECCDE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE690);
  }

  return result;
}

uint64_t sub_1DD53EC28@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Date.Holiday.ObservanceType.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s14ObservanceTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD53EDDC()
{
  result = qword_1ECCDE698;
  if (!qword_1ECCDE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE698);
  }

  return result;
}

__n128 Occupant.init(firstName:lastName:fullName:nickName:relationship:selfReference:company:namePrefix:namePostfix:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __n128 *a7@<X6>, __int16 *a8@<X7>, uint64_t a9@<X8>, __int16 *a10)
{
  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  v12 = *(a3 + 16);
  v13 = *(a4 + 16);
  v14 = *(a5 + 16);
  v15 = *(a6 + 16);
  v16 = a7[1].n128_u16[0];
  v17 = *a8;
  v18 = *a10;
  *a9 = *a1;
  *(a9 + 16) = v10;
  *(a9 + 24) = *a2;
  *(a9 + 40) = v11;
  *(a9 + 48) = *a3;
  *(a9 + 64) = v12;
  *(a9 + 72) = *a4;
  *(a9 + 88) = v13;
  *(a9 + 96) = *a5;
  *(a9 + 112) = v14;
  *(a9 + 120) = *a6;
  *(a9 + 136) = v15;
  result = *a7;
  *(a9 + 144) = *a7;
  *(a9 + 160) = v16;
  *(a9 + 162) = v17;
  *(a9 + 164) = v18;
  return result;
}

double sub_1DD53EEB8@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[4];
  v24 = v1[3];
  v25 = *v1;
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[10];
  v23 = v1[9];
  v8 = v1[13];
  v10 = v1[18];
  v9 = v1[19];
  if (v8)
  {
    v11 = v1[12];

    sub_1DD4178B4(0, 0, 0);
  }

  else
  {

    v11 = 0;
  }

  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  if (v9)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 16) = 0;
  if (v5)
  {
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

  if (v5)
  {
    v15 = v5;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  if (v7)
  {
    v16 = v7;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  v17 = v23;
  v18 = v24;
  if (!v7)
  {
    v17 = 0;
  }

  if (v4)
  {
    v19 = v4;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  if (!v4)
  {
    v18 = 0;
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  v20 = v25;
  if (v3)
  {
    v21 = v3;
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  *(a1 + 56) = v20;
  *(a1 + 64) = v21;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xE000000000000000;
  *(a1 + 88) = v18;
  *(a1 + 96) = v19;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0xE000000000000000;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0xE000000000000000;
  *(a1 + 136) = v17;
  *(a1 + 144) = v16;
  *(a1 + 152) = v13;
  *(a1 + 160) = v12;
  *(a1 + 168) = 0;
  *(a1 + 176) = v11;
  *(a1 + 184) = v8;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 240) = MEMORY[0x1E69E7CC0];
  *(a1 + 248) = 1;
  *(a1 + 256) = 0;
  return result;
}

uint64_t Occupant.relationship.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t static Occupant.== infix(_:_:)(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v43 = a1[7];
  v42 = a1[10];
  v3 = *(a2 + 8);
  v4 = *(a2 + 32);
  v5 = *(a2 + 56);
  v41 = *(a2 + 80);
  v39 = *(a2 + 88);
  v40 = *(a2 + 104);
  if (a1[1])
  {
    v38 = HIBYTE(*(a2 + 136));
    if (!v3)
    {
      goto LABEL_21;
    }

    v36 = a1[16];
    v37 = a1[13];
    v34 = a1[19];
    v35 = *(a2 + 128);
    v32 = HIBYTE(*(a2 + 160));
    v33 = *(a2 + 152);
    v31 = *(a2 + 162);
    v30 = *(a2 + 164);
    swift_bridgeObjectRetain_n();

    v6 = OUTLINED_FUNCTION_7_49();
    v8 = static OccupantName.== infix(_:_:)(v6, v7);

    if ((v8 & 1) == 0)
    {
      goto LABEL_22;
    }

    if (v2)
    {
LABEL_5:
      if (!v4)
      {
        goto LABEL_21;
      }

      swift_bridgeObjectRetain_n();

      v9 = OUTLINED_FUNCTION_7_49();
      v11 = static OccupantName.== infix(_:_:)(v9, v10);

      if ((v11 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }
  }

  else
  {
    if (v3)
    {
      goto LABEL_21;
    }

    v38 = HIBYTE(*(a2 + 136));
    v36 = a1[16];
    v37 = a1[13];
    v34 = a1[19];
    v35 = *(a2 + 128);
    v32 = HIBYTE(*(a2 + 160));
    v33 = *(a2 + 152);
    v31 = *(a2 + 162);
    v30 = *(a2 + 164);

    if (v2)
    {
      goto LABEL_5;
    }
  }

  if (v4)
  {
    goto LABEL_21;
  }

LABEL_16:
  if (v43)
  {
    if (!v5)
    {
      goto LABEL_21;
    }

    swift_bridgeObjectRetain_n();

    v12 = OUTLINED_FUNCTION_7_49();
    static OccupantName.== infix(_:_:)(v12, v13);
    OUTLINED_FUNCTION_9_45();

    if ((v2 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v5)
    {
      goto LABEL_21;
    }
  }

  if (v42)
  {
    if (!v41)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_8_52(SHIBYTE(v39));
    swift_bridgeObjectRetain_n();

    v16 = OUTLINED_FUNCTION_7_49();
    static OccupantName.== infix(_:_:)(v16, v17);
    OUTLINED_FUNCTION_9_45();

    if ((v41 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v41)
    {
      goto LABEL_21;
    }
  }

  if (v37)
  {
    if (!v40)
    {
      goto LABEL_21;
    }

    swift_bridgeObjectRetain_n();

    v18 = OUTLINED_FUNCTION_7_49();
    static OccupantRelationship.== infix(_:_:)(v18, v19);
    OUTLINED_FUNCTION_9_45();

    if ((v40 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v40)
    {
      goto LABEL_21;
    }
  }

  if (v36)
  {
    if (!v35)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_8_52(v38);
    swift_bridgeObjectRetain_n();

    v20 = OUTLINED_FUNCTION_7_49();
    static OccupantName.== infix(_:_:)(v20, v21);
    OUTLINED_FUNCTION_9_45();

    if ((v35 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v35)
    {
      goto LABEL_21;
    }
  }

  if (v34)
  {
    if (v33)
    {
      OUTLINED_FUNCTION_8_52(v32);
      swift_bridgeObjectRetain_n();

      v22 = OUTLINED_FUNCTION_7_49();
      static OccupantName.== infix(_:_:)(v22, v23);
      OUTLINED_FUNCTION_9_45();

      if ((v33 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_53;
    }

LABEL_21:

    goto LABEL_22;
  }

  if (v33)
  {
    goto LABEL_21;
  }

LABEL_53:
  OUTLINED_FUNCTION_10_41();
  if (v24)
  {
    if ((v31 & 0xFF00) != 0x300)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_41();
    if (v24)
    {
      goto LABEL_22;
    }

    v25 = OUTLINED_FUNCTION_7_49();
    if ((static OccupantNamePrefix.== infix(_:_:)(v25, v26) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_10_41();
  if (v24)
  {
    v14 = (v30 & 0xFF00) == 768;
    return v14 & 1;
  }

  OUTLINED_FUNCTION_10_41();
  if (!v27)
  {
    v28 = OUTLINED_FUNCTION_7_49();
    v14 = static OccupantNamePostfix.== infix(_:_:)(v28, v29);
    return v14 & 1;
  }

LABEL_22:
  v14 = 0;
  return v14 & 1;
}

uint64_t sub_1DD53F67C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D614E7473616CLL && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D614E6B63696ELL && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F6974616C6572 && a2 == 0xEC00000070696873;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65666552666C6573 && a2 == 0xED000065636E6572;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x796E61706D6F63 && a2 == 0xE700000000000000;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x66657250656D616ELL && a2 == 0xEA00000000007869;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x74736F50656D616ELL && a2 == 0xEB00000000786966)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1DD640CD8();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD53F968(char a1)
{
  result = 0x6D614E7473726966;
  switch(a1)
  {
    case 1:
      v3 = 1953718636;
      goto LABEL_6;
    case 2:
      v3 = 1819047270;
      goto LABEL_6;
    case 3:
      v3 = 1801677166;
LABEL_6:
      result = v3 | 0x656D614E00000000;
      break;
    case 4:
      result = 0x6E6F6974616C6572;
      break;
    case 5:
      result = 0x65666552666C6573;
      break;
    case 6:
      result = 0x796E61706D6F63;
      break;
    case 7:
      result = 0x66657250656D616ELL;
      break;
    case 8:
      result = 0x74736F50656D616ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD53FA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD53F67C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD53FAA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD53F960();
  *a1 = result;
  return result;
}

uint64_t sub_1DD53FAD0(uint64_t a1)
{
  v2 = sub_1DD5405F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD53FB0C(uint64_t a1)
{
  v2 = sub_1DD5405F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Occupant.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE6A0, &qword_1DD658B08);
  OUTLINED_FUNCTION_0();
  v44 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 8);
  v11 = v1[4];
  v41 = v1[3];
  v42 = v11;
  v48 = *(v1 + 20);
  v12 = v1[6];
  v39 = v1[7];
  v40 = v12;
  LODWORD(v12) = *(v1 + 32);
  v13 = v1[10];
  v35 = v1[9];
  v36 = v13;
  v37 = *(v1 + 44);
  v38 = v12;
  v14 = v1[13];
  v32 = v1[12];
  v33 = v14;
  v34 = *(v1 + 112);
  v15 = v1[16];
  v29 = v1[15];
  v30 = v15;
  v31 = *(v1 + 68);
  v16 = v1[19];
  v26 = v1[18];
  v27 = v16;
  v28 = *(v1 + 80);
  v25 = *(v1 + 81);
  v24 = *(v1 + 82);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5405F0();

  sub_1DD640EF8();
  v45 = v8;
  v46 = v9;
  v47 = v10;
  v49 = 0;
  sub_1DD540644();
  OUTLINED_FUNCTION_1_92();
  v17 = v43;
  sub_1DD640C08();
  if (v17)
  {

    return (*(v44 + 8))(v7, v3);
  }

  else
  {
    v19 = v38;
    v20 = v39;
    v21 = v40;
    v22 = v44;

    v45 = v41;
    v46 = v42;
    v47 = v48;
    v49 = 1;

    OUTLINED_FUNCTION_1_92();
    sub_1DD640C08();

    v45 = v21;
    v46 = v20;
    v47 = v19;
    v49 = 2;

    OUTLINED_FUNCTION_1_92();
    sub_1DD640C08();

    v45 = v35;
    v46 = v36;
    v47 = v37;
    v49 = 3;

    OUTLINED_FUNCTION_1_92();
    sub_1DD640C08();

    v45 = v32;
    v46 = v33;
    LOBYTE(v47) = v34;
    v49 = 4;
    sub_1DD540698();

    OUTLINED_FUNCTION_3_64();
    sub_1DD640C08();

    v45 = v29;
    v46 = v30;
    v47 = v31;
    v49 = 5;

    OUTLINED_FUNCTION_1_92();
    sub_1DD640C08();

    v45 = v26;
    v46 = v27;
    v47 = v28;
    v49 = 6;

    OUTLINED_FUNCTION_1_92();
    sub_1DD640C08();

    LOWORD(v45) = v25;
    v49 = 7;
    sub_1DD5406EC();
    OUTLINED_FUNCTION_3_64();
    sub_1DD640C08();
    LOWORD(v45) = v24;
    v49 = 8;
    sub_1DD540740();
    OUTLINED_FUNCTION_3_64();
    sub_1DD640C08();
    return (*(v22 + 8))(v7, v3);
  }
}

uint64_t Occupant.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE6D0, &qword_1DD658B10);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v6);
  sub_1DD5405F0();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  sub_1DD540794();
  OUTLINED_FUNCTION_6_59();
  sub_1DD640B18();
  v32 = v35;
  OUTLINED_FUNCTION_2_80();
  OUTLINED_FUNCTION_6_59();
  sub_1DD640B18();
  v24 = v36;
  v25 = v34;
  v26 = v34;
  v31 = v35;
  OUTLINED_FUNCTION_2_80();
  OUTLINED_FUNCTION_6_59();
  sub_1DD640B18();
  v23 = v36;
  v30 = v35;
  OUTLINED_FUNCTION_2_80();
  OUTLINED_FUNCTION_6_59();
  sub_1DD640B18();
  v21 = v36;
  v22 = v34;
  v29 = v35;
  sub_1DD5407E8();
  OUTLINED_FUNCTION_2_80();
  sub_1DD640B18();
  v19 = v34;
  v18 = v36;
  v28 = v35;
  OUTLINED_FUNCTION_2_80();
  OUTLINED_FUNCTION_6_59();
  sub_1DD640B18();
  v16 = v36;
  v17 = v34;
  v7 = v34;
  v27 = v35;
  OUTLINED_FUNCTION_2_80();
  OUTLINED_FUNCTION_6_59();
  sub_1DD640B18();
  v8 = v35;
  v15 = v34;
  v14 = v36;
  LOBYTE(v33[0]) = 7;
  sub_1DD54083C();
  OUTLINED_FUNCTION_2_80();
  sub_1DD640B18();
  v13 = v36;
  v12 = v34;
  v60 = 8;
  sub_1DD540890();
  sub_1DD640B18();
  v9 = OUTLINED_FUNCTION_4_64();
  v10(v9);
  v20 = v61;
  v33[0] = v26;
  v33[1] = v32;
  LOWORD(v33[2]) = v24;
  v33[3] = v25;
  v33[4] = v31;
  LOWORD(v33[5]) = v23;
  v33[6] = v22;
  v33[7] = v30;
  LOWORD(v33[8]) = v21;
  v33[9] = v19;
  v33[10] = v29;
  LOWORD(v33[11]) = v18;
  v33[12] = v17;
  v33[13] = v28;
  LOBYTE(v33[14]) = v16;
  v33[15] = v7;
  v33[16] = v27;
  LOWORD(v33[17]) = v13;
  v33[18] = v15;
  v33[19] = v8;
  LOWORD(v33[20]) = v14;
  WORD1(v33[20]) = v12;
  WORD2(v33[20]) = v61;
  memcpy(a2, v33, 0xA6uLL);
  sub_1DD5408E4(v33, &v34);
  __swift_destroy_boxed_opaque_existential_1(v65);
  v34 = v26;
  v35 = v32;
  v36 = v24;
  v37 = v25;
  v38 = v31;
  v39 = v23;
  v40 = v22;
  v41 = v30;
  v42 = v21;
  v43 = v19;
  v44 = v29;
  v45 = v18;
  v46 = v17;
  v47 = v28;
  v48 = v16;
  *v49 = v64[0];
  *&v49[3] = *(v64 + 3);
  v50 = v7;
  v51 = v27;
  v52 = v13;
  v53 = v62;
  v54 = v63;
  v55 = v15;
  v56 = v8;
  v57 = v14;
  v58 = v12;
  v59 = v20;
  return sub_1DD54091C(&v34);
}

unint64_t sub_1DD5405F0()
{
  result = qword_1ECCDE6A8;
  if (!qword_1ECCDE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE6A8);
  }

  return result;
}

unint64_t sub_1DD540644()
{
  result = qword_1ECCDE6B0;
  if (!qword_1ECCDE6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE6B0);
  }

  return result;
}

unint64_t sub_1DD540698()
{
  result = qword_1ECCDE6B8;
  if (!qword_1ECCDE6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE6B8);
  }

  return result;
}

unint64_t sub_1DD5406EC()
{
  result = qword_1ECCDE6C0;
  if (!qword_1ECCDE6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE6C0);
  }

  return result;
}

unint64_t sub_1DD540740()
{
  result = qword_1ECCDE6C8;
  if (!qword_1ECCDE6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE6C8);
  }

  return result;
}

unint64_t sub_1DD540794()
{
  result = qword_1ECCDE6D8;
  if (!qword_1ECCDE6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE6D8);
  }

  return result;
}

unint64_t sub_1DD5407E8()
{
  result = qword_1ECCDE6E0;
  if (!qword_1ECCDE6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE6E0);
  }

  return result;
}

unint64_t sub_1DD54083C()
{
  result = qword_1ECCDE6E8;
  if (!qword_1ECCDE6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE6E8);
  }

  return result;
}

unint64_t sub_1DD540890()
{
  result = qword_1ECCDE6F0;
  if (!qword_1ECCDE6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE6F0);
  }

  return result;
}

uint64_t sub_1DD540954(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 166))
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

uint64_t sub_1DD5409A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 164) = 0;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 166) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 166) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonPlaceName.BoundedValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Occupant.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD540BA4()
{
  result = qword_1ECCDE6F8;
  if (!qword_1ECCDE6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE6F8);
  }

  return result;
}

unint64_t sub_1DD540BFC()
{
  result = qword_1ECCDE700;
  if (!qword_1ECCDE700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE700);
  }

  return result;
}

unint64_t sub_1DD540C54()
{
  result = qword_1ECCDE708;
  if (!qword_1ECCDE708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE708);
  }

  return result;
}

SiriInference::OccupantName __swiftcall OccupantName.init(name:prefix:suffix:)(SiriInference::OccupantName name, SiriInference::OccupantName::Prefix_optional prefix, SiriInference::OccupantName::Suffix_optional suffix)
{
  v4 = *prefix.value;
  v5 = *suffix.value;
  *v3 = name.name;
  *(v3 + 16) = v4;
  *(v3 + 17) = v5;
  name.prefix = prefix;
  return name;
}

uint64_t OccupantName.Prefix.rawValue.getter()
{
  if (*v0)
  {
    return 1918985582;
  }

  else
  {
    return 29793;
  }
}

uint64_t OccupantName.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static OccupantName.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }
  }

  else if (v4 == 2 || (sub_1DD3B2D98() & 1) == 0)
  {
    return 0;
  }

  result = v5 == 2 && v3 == 2;
  if (v3 != 2 && v5 != 2)
  {

    return sub_1DD3B2D98();
  }

  return result;
}

uint64_t sub_1DD540FD8(uint64_t a1)
{
  v2 = sub_1DD54144C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD541014(uint64_t a1)
{
  v2 = sub_1DD54144C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OccupantName.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE710, &qword_1DD658D30);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = *(v1 + 16);
  v17 = *(v1 + 17);
  v18 = v9;
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_1DD54144C();
  sub_1DD640EF8();
  v23 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v14 = v17;
    v22 = v18;
    v21 = 1;
    sub_1DD5414A0();
    sub_1DD640C08();
    v20 = v14;
    v19 = 2;
    sub_1DD5414F4();
    sub_1DD640C08();
  }

  return (*(v5 + 8))(v8, v13);
}

uint64_t OccupantName.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE730, &qword_1DD658D38);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD54144C();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15[2] = 0;
  v6 = sub_1DD640B28();
  v8 = v7;
  v15[0] = 1;
  sub_1DD541548();
  OUTLINED_FUNCTION_3_4(&type metadata for OccupantName.Prefix, v15);
  v13 = v15[1];
  v14[0] = 2;
  sub_1DD54159C();
  OUTLINED_FUNCTION_3_4(&type metadata for OccupantName.Suffix, v14);
  v10 = OUTLINED_FUNCTION_0_0();
  v11(v10);
  v12 = v14[1];
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v13;
  *(a2 + 17) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD54144C()
{
  result = qword_1ECCDE718;
  if (!qword_1ECCDE718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE718);
  }

  return result;
}

unint64_t sub_1DD5414A0()
{
  result = qword_1ECCDE720;
  if (!qword_1ECCDE720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE720);
  }

  return result;
}

unint64_t sub_1DD5414F4()
{
  result = qword_1ECCDE728;
  if (!qword_1ECCDE728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE728);
  }

  return result;
}

unint64_t sub_1DD541548()
{
  result = qword_1ECCDE738;
  if (!qword_1ECCDE738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE738);
  }

  return result;
}

unint64_t sub_1DD54159C()
{
  result = qword_1ECCDE740;
  if (!qword_1ECCDE740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE740);
  }

  return result;
}

unint64_t sub_1DD5415F4()
{
  result = qword_1ECCDE748;
  if (!qword_1ECCDE748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE748);
  }

  return result;
}

unint64_t sub_1DD54164C()
{
  result = qword_1ECCDE750;
  if (!qword_1ECCDE750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE750);
  }

  return result;
}

_BYTE *sub_1DD5416B8(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for OccupantName.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD541870()
{
  result = qword_1ECCDE758;
  if (!qword_1ECCDE758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE758);
  }

  return result;
}

unint64_t sub_1DD5418C8()
{
  result = qword_1ECCDE760;
  if (!qword_1ECCDE760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE760);
  }

  return result;
}

unint64_t sub_1DD541920()
{
  result = qword_1ECCDE768;
  if (!qword_1ECCDE768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE768);
  }

  return result;
}

unint64_t sub_1DD541974()
{
  result = qword_1ECCDE770;
  if (!qword_1ECCDE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE770);
  }

  return result;
}

unint64_t sub_1DD5419C8()
{
  result = qword_1ECCDE778;
  if (!qword_1ECCDE778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE778);
  }

  return result;
}

SiriInference::OccupantNamePostfix::Value_optional __swiftcall OccupantNamePostfix.Value.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640D18();

  v5 = 0;
  v6 = 17;
  switch(v3)
  {
    case 0:
      goto LABEL_27;
    case 1:
      v5 = 1;
      goto LABEL_27;
    case 2:
      v5 = 2;
      goto LABEL_27;
    case 3:
      v5 = 3;
      goto LABEL_27;
    case 4:
      v5 = 4;
      goto LABEL_27;
    case 5:
      v5 = 5;
      goto LABEL_27;
    case 6:
      v5 = 6;
      goto LABEL_27;
    case 7:
      v5 = 7;
      goto LABEL_27;
    case 8:
      v5 = 8;
      goto LABEL_27;
    case 9:
      v5 = 9;
      goto LABEL_27;
    case 10:
      v5 = 10;
      goto LABEL_27;
    case 11:
      v5 = 11;
      goto LABEL_27;
    case 12:
      v5 = 12;
      goto LABEL_27;
    case 13:
      v5 = 13;
      goto LABEL_27;
    case 14:
      v5 = 14;
      goto LABEL_27;
    case 15:
      v5 = 15;
      goto LABEL_27;
    case 16:
      v5 = 16;
LABEL_27:
      v6 = v5;
      break;
    case 17:
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    default:
      v6 = 35;
      break;
  }

  *v2 = v6;
  return result;
}

SiriInference::OccupantNamePostfix __swiftcall OccupantNamePostfix.init(value:prefix:)(SiriInference::OccupantNamePostfix::Value value, SiriInference::OccupantNamePostfix::Prefix_optional prefix)
{
  v3 = *prefix.value;
  *v2 = *value;
  v2[1] = v3;
  result.value = value;
  return result;
}

uint64_t OccupantNamePostfix.Value.rawValue.getter()
{
  result = 0x726F696E756ALL;
  switch(*v0)
  {
    case 1:
      result = 0x726F696E6573;
      break;
    case 2:
      result = 0x746361746E6F63;
      break;
    case 3:
      result = 7237491;
      break;
    case 4:
      result = 0x6E6F73646E617267;
      break;
    case 5:
      result = 0x77656870656ELL;
      break;
    case 6:
      result = 29293;
      break;
    case 7:
      result = 7565933;
      break;
    case 8:
      result = 29549;
      break;
    case 9:
      result = 29284;
      break;
    case 0xA:
      result = 1718579824;
      break;
    case 0xB:
      result = 0x636F737361;
      break;
    case 0xC:
      result = 7759218;
      break;
    case 0xD:
      result = 29286;
      break;
    case 0xE:
      result = 2037675105;
      break;
    case 0xF:
      result = 7237480;
      break;
    case 0x10:
      result = 1936028272;
      break;
    case 0x11:
      result = 7761767;
      break;
    case 0x12:
      result = 0x6863616F63;
      break;
    case 0x13:
      result = 6514287;
      break;
    case 0x14:
      result = 1953522019;
      break;
    case 0x15:
      result = 7106403;
      break;
    case 0x16:
      result = 0x6C6F6320746CLL;
      break;
    case 0x17:
      result = 6971757;
      break;
    case 0x18:
      result = 29804;
      break;
    case 0x19:
      result = 7628659;
      break;
    case 0x1A:
      result = 7499892;
      break;
    case 0x1B:
      result = 1919184227;
      break;
    case 0x1C:
      result = 0x72646D6320746CLL;
      break;
    case 0x1D:
      result = 7106659;
      break;
    case 0x1E:
      v2 = 25956;
      goto LABEL_30;
    case 0x1F:
      result = 7234919;
      break;
    case 0x20:
      v2 = 30320;
LABEL_30:
      result = v2 | 0x740000u;
      break;
    case 0x21:
      result = 7169121;
      break;
    case 0x22:
      result = 29299;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD541E6C@<X0>(uint64_t *a1@<X8>)
{
  result = OccupantNamePostfix.Value.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriInference::OccupantNamePostfix::Prefix_optional __swiftcall OccupantNamePostfix.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t OccupantNamePostfix.Prefix.rawValue.getter()
{
  if (*v0)
  {
    return 1918985582;
  }

  else
  {
    return 29793;
  }
}

uint64_t sub_1DD541FEC@<X0>(uint64_t *a1@<X8>)
{
  result = OccupantNamePostfix.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static OccupantNamePostfix.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1DD3B0024(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  result = v3 == 2 && v2 == 2;
  if (v2 != 2 && v3 != 2)
  {

    return sub_1DD3B2D98();
  }

  return result;
}

uint64_t sub_1DD542158(uint64_t a1)
{
  v2 = sub_1DD542544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD542194(uint64_t a1)
{
  v2 = sub_1DD542544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OccupantNamePostfix.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE780, &qword_1DD659110);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = *v1;
  v13 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD542544();
  sub_1DD640EF8();
  v17 = v10;
  v16 = 0;
  sub_1DD542598();
  sub_1DD640C68();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1DD5425EC();
    sub_1DD640C08();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t OccupantNamePostfix.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE7A0, &qword_1DD659118);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD542544();
  sub_1DD640ED8();
  if (!v2)
  {
    v17 = 0;
    sub_1DD542640();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B78();
    v11 = v18;
    v15 = 1;
    sub_1DD542694();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B18();
    (*(v7 + 8))(v10, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD542544()
{
  result = qword_1ECCDE788;
  if (!qword_1ECCDE788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE788);
  }

  return result;
}

unint64_t sub_1DD542598()
{
  result = qword_1ECCDE790;
  if (!qword_1ECCDE790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE790);
  }

  return result;
}

unint64_t sub_1DD5425EC()
{
  result = qword_1ECCDE798;
  if (!qword_1ECCDE798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE798);
  }

  return result;
}

unint64_t sub_1DD542640()
{
  result = qword_1ECCDE7A8;
  if (!qword_1ECCDE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE7A8);
  }

  return result;
}

unint64_t sub_1DD542694()
{
  result = qword_1ECCDE7B0;
  if (!qword_1ECCDE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE7B0);
  }

  return result;
}

unint64_t sub_1DD5426EC()
{
  result = qword_1ECCDE7B8;
  if (!qword_1ECCDE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE7B8);
  }

  return result;
}

unint64_t sub_1DD542744()
{
  result = qword_1ECCDE7C0;
  if (!qword_1ECCDE7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDE7C8, &qword_1DD6591C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE7C0);
  }

  return result;
}

unint64_t sub_1DD5427AC()
{
  result = qword_1ECCDE7D0;
  if (!qword_1ECCDE7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE7D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OccupantNamePrefix(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (v4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = a1[1];
        if (!a1[1])
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 16)) - 65283;
        return (v5 + 1);
      }

      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OccupantNamePostfix(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OccupantNamePrefix.Value(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDE)
  {
    if (a2 + 34 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 34) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 35;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v5 = v6 - 35;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OccupantNamePostfix.Value(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
          *result = a2 + 34;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD542AE0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD542BC0()
{
  result = qword_1ECCDE7D8;
  if (!qword_1ECCDE7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE7D8);
  }

  return result;
}

unint64_t sub_1DD542C18()
{
  result = qword_1ECCDE7E0;
  if (!qword_1ECCDE7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE7E0);
  }

  return result;
}

unint64_t sub_1DD542C70()
{
  result = qword_1ECCDE7E8;
  if (!qword_1ECCDE7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE7E8);
  }

  return result;
}

unint64_t sub_1DD542CC4()
{
  result = qword_1ECCDE7F0;
  if (!qword_1ECCDE7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE7F0);
  }

  return result;
}

unint64_t sub_1DD542D18()
{
  result = qword_1ECCDE7F8;
  if (!qword_1ECCDE7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE7F8);
  }

  return result;
}

SiriInference::OccupantNamePrefix::Value_optional __swiftcall OccupantNamePrefix.Value.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640D18();

  v5 = 0;
  v6 = 17;
  switch(v3)
  {
    case 0:
      goto LABEL_27;
    case 1:
      v5 = 1;
      goto LABEL_27;
    case 2:
      v5 = 2;
      goto LABEL_27;
    case 3:
      v5 = 3;
      goto LABEL_27;
    case 4:
      v5 = 4;
      goto LABEL_27;
    case 5:
      v5 = 5;
      goto LABEL_27;
    case 6:
      v5 = 6;
      goto LABEL_27;
    case 7:
      v5 = 7;
      goto LABEL_27;
    case 8:
      v5 = 8;
      goto LABEL_27;
    case 9:
      v5 = 9;
      goto LABEL_27;
    case 10:
      v5 = 10;
      goto LABEL_27;
    case 11:
      v5 = 11;
      goto LABEL_27;
    case 12:
      v5 = 12;
      goto LABEL_27;
    case 13:
      v5 = 13;
      goto LABEL_27;
    case 14:
      v5 = 14;
      goto LABEL_27;
    case 15:
      v5 = 15;
      goto LABEL_27;
    case 16:
      v5 = 16;
LABEL_27:
      v6 = v5;
      break;
    case 17:
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    default:
      v6 = 35;
      break;
  }

  *v2 = v6;
  return result;
}

SiriInference::OccupantNamePrefix __swiftcall OccupantNamePrefix.init(value:prefix:)(SiriInference::OccupantNamePrefix::Value value, SiriInference::OccupantNamePrefix::Prefix_optional prefix)
{
  v3 = *prefix.value;
  *v2 = *value;
  v2[1] = v3;
  result.value = value;
  return result;
}

uint64_t OccupantNamePrefix.Value.rawValue.getter()
{
  result = 29293;
  switch(*v0)
  {
    case 1:
      result = 7565933;
      break;
    case 2:
      result = 29549;
      break;
    case 3:
      result = 29284;
      break;
    case 4:
      result = 1718579824;
      break;
    case 5:
      result = 0x636F737361;
      break;
    case 6:
      result = 7759218;
      break;
    case 7:
      result = 29286;
      break;
    case 8:
      result = 2037675105;
      break;
    case 9:
      result = 7237480;
      break;
    case 0xA:
      result = 1936028272;
      break;
    case 0xB:
      result = 7761767;
      break;
    case 0xC:
      result = 0x6863616F63;
      break;
    case 0xD:
      result = 6514287;
      break;
    case 0xE:
      result = 1953522019;
      break;
    case 0xF:
      result = 7106403;
      break;
    case 0x10:
      result = 0x6C6F6320746CLL;
      break;
    case 0x11:
      result = 6971757;
      break;
    case 0x12:
      result = 29804;
      break;
    case 0x13:
      result = 7628659;
      break;
    case 0x14:
      result = 7499892;
      break;
    case 0x15:
      result = 1919184227;
      break;
    case 0x16:
      result = 0x72646D6320746CLL;
      break;
    case 0x17:
      result = 7106659;
      break;
    case 0x18:
      v2 = 25956;
      goto LABEL_37;
    case 0x19:
      result = 7234919;
      break;
    case 0x1A:
      v2 = 30320;
LABEL_37:
      result = v2 | 0x740000u;
      break;
    case 0x1B:
      result = 7169121;
      break;
    case 0x1C:
      result = 29299;
      break;
    case 0x1D:
      result = 0x726F696E756ALL;
      break;
    case 0x1E:
      result = 0x726F696E6573;
      break;
    case 0x1F:
      result = 0x746361746E6F63;
      break;
    case 0x20:
      result = 7237491;
      break;
    case 0x21:
      result = 0x6E6F73646E617267;
      break;
    case 0x22:
      result = 0x77656870656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5431A8@<X0>(uint64_t *a1@<X8>)
{
  result = OccupantNamePrefix.Value.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriInference::OccupantNamePrefix::Prefix_optional __swiftcall OccupantNamePrefix.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t OccupantNamePrefix.Prefix.rawValue.getter()
{
  if (*v0)
  {
    return 1918985582;
  }

  else
  {
    return 29793;
  }
}

uint64_t sub_1DD543318@<X0>(uint64_t *a1@<X8>)
{
  result = OccupantNamePrefix.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static OccupantNamePrefix.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1DD3B0164(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  result = v3 == 2 && v2 == 2;
  if (v2 != 2 && v3 != 2)
  {

    return sub_1DD3B2D98();
  }

  return result;
}

uint64_t sub_1DD543484(uint64_t a1)
{
  v2 = sub_1DD543870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5434C0(uint64_t a1)
{
  v2 = sub_1DD543870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OccupantNamePrefix.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE800, &qword_1DD6595B0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = *v1;
  v13 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD543870();
  sub_1DD640EF8();
  v17 = v10;
  v16 = 0;
  sub_1DD5438C4();
  sub_1DD640C68();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1DD543918();
    sub_1DD640C08();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t OccupantNamePrefix.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE820, &qword_1DD6595B8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD543870();
  sub_1DD640ED8();
  if (!v2)
  {
    v17 = 0;
    sub_1DD54396C();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B78();
    v11 = v18;
    v15 = 1;
    sub_1DD5439C0();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B18();
    (*(v7 + 8))(v10, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD543870()
{
  result = qword_1ECCDE808;
  if (!qword_1ECCDE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE808);
  }

  return result;
}

unint64_t sub_1DD5438C4()
{
  result = qword_1ECCDE810;
  if (!qword_1ECCDE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE810);
  }

  return result;
}

unint64_t sub_1DD543918()
{
  result = qword_1ECCDE818;
  if (!qword_1ECCDE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE818);
  }

  return result;
}

unint64_t sub_1DD54396C()
{
  result = qword_1ECCDE828;
  if (!qword_1ECCDE828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE828);
  }

  return result;
}

unint64_t sub_1DD5439C0()
{
  result = qword_1ECCDE830;
  if (!qword_1ECCDE830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE830);
  }

  return result;
}

unint64_t sub_1DD543A18()
{
  result = qword_1ECCDE838;
  if (!qword_1ECCDE838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE838);
  }

  return result;
}

unint64_t sub_1DD543A70()
{
  result = qword_1ECCDE840;
  if (!qword_1ECCDE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE840);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for OccupantNamePrefix(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OccupantNamePrefix.Value(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
          *result = a2 + 34;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD543C80(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD543D60()
{
  result = qword_1ECCDE848;
  if (!qword_1ECCDE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE848);
  }

  return result;
}

unint64_t sub_1DD543DB8()
{
  result = qword_1ECCDE850;
  if (!qword_1ECCDE850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE850);
  }

  return result;
}

unint64_t sub_1DD543E10()
{
  result = qword_1ECCDE858;
  if (!qword_1ECCDE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE858);
  }

  return result;
}

unint64_t sub_1DD543E64()
{
  result = qword_1ECCDE860;
  if (!qword_1ECCDE860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE860);
  }

  return result;
}

unint64_t sub_1DD543EB8()
{
  result = qword_1ECCDE868;
  if (!qword_1ECCDE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE868);
  }

  return result;
}

SiriInference::OccupantRelationship __swiftcall OccupantRelationship.init(name:prefix:)(SiriInference::OccupantRelationship name, SiriInference::OccupantRelationship::Prefix_optional prefix)
{
  v3 = *prefix.value;
  *v2 = name.name;
  *(v2 + 16) = v3;
  name.prefix = prefix;
  return name;
}

SiriInference::OccupantRelationship::Prefix_optional __swiftcall OccupantRelationship.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t OccupantRelationship.Prefix.rawValue.getter()
{
  v1 = 29545;
  if (*v0 != 1)
  {
    v1 = 1918985582;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 29793;
  }
}

uint64_t sub_1DD543FE8@<X0>(uint64_t *a1@<X8>)
{
  result = OccupantRelationship.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t OccupantRelationship.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static OccupantRelationship.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = sub_1DD640CD8(), result = 0, (v5 & 1) != 0))
  {
    result = v3 == 3 && (v2 == 3);
    if (v2 != 3 && v3 != 3)
    {

      return sub_1DD3B14A0(v2, v3);
    }
  }

  return result;
}

uint64_t sub_1DD544198(uint64_t a1)
{
  v2 = sub_1DD54459C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5441D4(uint64_t a1)
{
  v2 = sub_1DD54459C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OccupantRelationship.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE870, &qword_1DD659A10);
  OUTLINED_FUNCTION_0();
  v11 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD54459C();
  sub_1DD640EF8();
  v15 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_1DD5445F0();
    sub_1DD640C08();
  }

  return (*(v11 + 8))(v8, v4);
}

uint64_t OccupantRelationship.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE888, &qword_1DD659A18);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD54459C();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_1DD640B28();
  v8 = v7;
  sub_1DD544644();
  sub_1DD640B18();
  v9 = OUTLINED_FUNCTION_41();
  v10(v9);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD54459C()
{
  result = qword_1ECCDE878;
  if (!qword_1ECCDE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE878);
  }

  return result;
}

unint64_t sub_1DD5445F0()
{
  result = qword_1ECCDE880;
  if (!qword_1ECCDE880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE880);
  }

  return result;
}

unint64_t sub_1DD544644()
{
  result = qword_1ECCDE890;
  if (!qword_1ECCDE890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE890);
  }

  return result;
}

unint64_t sub_1DD54469C()
{
  result = qword_1ECCDE898;
  if (!qword_1ECCDE898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE898);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OccupantRelationship.Prefix(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OccupantRelationship.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD5448BC()
{
  result = qword_1ECCDE8A0;
  if (!qword_1ECCDE8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE8A0);
  }

  return result;
}

unint64_t sub_1DD544914()
{
  result = qword_1ECCDE8A8;
  if (!qword_1ECCDE8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE8A8);
  }

  return result;
}

unint64_t sub_1DD54496C()
{
  result = qword_1ECCDE8B0;
  if (!qword_1ECCDE8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE8B0);
  }

  return result;
}

unint64_t sub_1DD5449C0()
{
  result = qword_1ECCDE8B8;
  if (!qword_1ECCDE8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE8B8);
  }

  return result;
}

uint64_t sub_1DD544A14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v3 = 0;
  v2 = 1;
  type metadata accessor for DateTime();
  swift_allocObject();
  *(inited + 56) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(6, 0, 0, &v3, 9, 0, 0, &v2);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

void *sub_1DD544AE4(void *a1, uint64_t a2, uint64_t a3)
{
  v102 = a3;
  v85 = sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v107 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v84 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v78 - v10;
  v12 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v106 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v17 = v16 - v15;
  v99 = sub_1DD63D328();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2();
  v98 = v22 - v21;
  v23 = sub_1DD63D2D8();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2();
  v97 = v28 - v27;
  v96 = sub_1DD63CBB8();
  OUTLINED_FUNCTION_0();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2();
  v34 = v33 - v32;
  if (*(a2 + 17) == 1)
  {
    v95 = v11;
    v35 = a1[2];
    if (v35)
    {
      v94 = v23;
      v86 = v17;
      v101 = v12;
      v36 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
      v92 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_timeZone;
      v82 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat;
      v81 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_hemisphere;
      v37 = (a1 + 4);
      swift_beginAccess();
      v38 = (v25 + 16);
      v91 = (v19 + 16);
      v90 = v19 + 8;
      v89 = (v25 + 8);
      v80 = v106 + 32;
      v79 = (v107 + 16);
      v78[1] = v107 + 8;
      v78[0] = v106 + 8;
      v88 = v30 + 8;
      a1 = MEMORY[0x1E69E7CC0];
      v39 = v35;
      v83 = v34;
      v93 = v35;
      v100 = (v25 + 16);
      v87 = v36;
      while (1)
      {
        memcpy(__dst, v37, 0x49uLL);
        if (v35 == 1 || LOBYTE(__dst[9]))
        {
          sub_1DD474708(__dst, v109);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_4_65();
            a1 = v74;
          }

          v57 = a1[2];
          v58 = v57 + 1;
          if (v57 >= a1[3] >> 1)
          {
            OUTLINED_FUNCTION_3_65();
            a1 = v59;
          }
        }

        else
        {
          v105 = v37;
          v106 = v39;
          v107 = a1;
          v40 = type metadata accessor for DateTime();
          v103 = __dst[0];
          v104 = *v38;
          v41 = v34;
          v42 = v102;
          v43 = v97;
          v44 = v94;
          v104(v97, v102 + v36, v94);
          v45 = v36;
          v46 = v98;
          v47 = v99;
          (*v91)(v98, v42 + v92, v99);
          sub_1DD474708(__dst, v109);
          sub_1DD474708(__dst, v109);
          v48 = v103;
          v103 = v40;
          sub_1DD488550(v48, v43, v46);
          sub_1DD3ADFD0(__dst, &qword_1ECCDBCF0, &qword_1DD649E60);
          OUTLINED_FUNCTION_16_0();
          v49(v46, v47);
          v50 = *v89;
          (*v89)(v43, v44);
          v51 = v42 + v45;
          v52 = v41;
          v38 = v100;
          v53 = v104;
          v104(v43, v51, v44);
          v54 = v95;
          sub_1DD63D248();
          v50(v43, v44);
          v55 = v101;
          if (__swift_getEnumTagSinglePayload(v54, 1, v101) == 1)
          {
            OUTLINED_FUNCTION_16_0();
            v56(v52, v96);
            sub_1DD3ADFD0(__dst, &qword_1ECCDBCF0, &qword_1DD649E60);
            sub_1DD3ADFD0(v54, &qword_1ECCDEBC0, &qword_1DD6445A0);
            a1 = v107;
            v34 = v52;
            v35 = v93;
            v36 = v87;
            v39 = v106;
LABEL_20:
            v37 = v105;
            goto LABEL_21;
          }

          OUTLINED_FUNCTION_16_0();
          v60 = v86;
          v61(v86, v54, v55);
          v109[0] = 36;
          v36 = v87;
          v62 = v102;
          v53(v43, v102 + v87, v44);
          v63 = v60;
          v64 = v84;
          v65 = v85;
          (*v79)(v84, v62 + v82, v85);
          v108 = *(v62 + v81);
          sub_1DD41B2C8();
          v66 = sub_1DD63FC88();
          v67 = DefinedDateTimeRangeStore.isDateInDefinedDateTimeRange(_:dateTimeRange:calendar:locale:hemisphere:overrides:)(v63, v109, v43, v64, &v108, v66);

          OUTLINED_FUNCTION_16_0();
          v68(v64, v65);
          v50(v43, v44);
          v39 = v106;
          if ((v67 & 1) == 0)
          {
            sub_1DD3ADFD0(__dst, &qword_1ECCDBCF0, &qword_1DD649E60);
            OUTLINED_FUNCTION_16_0();
            v72(v63, v101);
            OUTLINED_FUNCTION_16_0();
            v34 = v83;
            v73(v83, v96);
            a1 = v107;
            v35 = v93;
            v38 = v100;
            goto LABEL_20;
          }

          a1 = v107;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v35 = v93;
          v37 = v105;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_4_65();
            a1 = v75;
          }

          v38 = v100;
          v57 = a1[2];
          v58 = v57 + 1;
          v34 = v83;
          if (v57 >= a1[3] >> 1)
          {
            OUTLINED_FUNCTION_3_65();
            a1 = v76;
          }

          OUTLINED_FUNCTION_16_0();
          v70(v86, v101);
          OUTLINED_FUNCTION_16_0();
          v71(v34, v96);
        }

        a1[2] = v58;
        memcpy(&a1[10 * v57 + 4], __dst, 0x49uLL);
LABEL_21:
        v37 += 80;
        if (!--v39)
        {
          return a1;
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  return a1;
}

void OUTLINED_FUNCTION_3_65()
{

  sub_1DD3C0098();
}

uint64_t Logger.asyncBackground(_:)(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v35 = a2;
  v37 = sub_1DD63FB78();
  OUTLINED_FUNCTION_0();
  v40 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v36 = v5 - v4;
  sub_1DD63FBD8();
  OUTLINED_FUNCTION_0();
  v38 = v7;
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1DD63FB88();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2();
  v23 = v22 - v21;
  sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
  (*(v19 + 104))(v23, *MEMORY[0x1E69E7FA0], v17);
  v24 = sub_1DD6404B8();
  (*(v19 + 8))(v23, v17);
  (*(v13 + 16))(v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v33[1], v11);
  v25 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v26 = swift_allocObject();
  (*(v13 + 32))(v26 + v25, v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v27 = (v26 + ((v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  v28 = v35;
  *v27 = v34;
  v27[1] = v28;
  aBlock[4] = sub_1DD545A7C;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD3CBCD0;
  aBlock[3] = &block_descriptor_13;
  v29 = _Block_copy(aBlock);

  sub_1DD63FBA8();
  v41 = MEMORY[0x1E69E7CC0];
  sub_1DD52DA40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFE8, &qword_1DD64F0F0);
  sub_1DD44FA38();
  v31 = v36;
  v30 = v37;
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v10, v31, v29);
  _Block_release(v29);

  (*(v40 + 8))(v31, v30);
  (*(v38 + 8))(v10, v39);
}

uint64_t sub_1DD5458DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1DD39638C(0, &unk_1EE166450, 0x1E69E9BF8);
  result = sub_1DD6405E8();
  *a4 = result;
  return result;
}

void sub_1DD545954(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{

  oslog = sub_1DD63F9D8();
  v4 = sub_1DD640368();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = a2();
    v9 = sub_1DD39565C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DD38D000, oslog, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E12B3DA0](v6, -1, -1);
    MEMORY[0x1E12B3DA0](v5, -1, -1);
  }
}

void sub_1DD545A7C()
{
  v1 = *(sub_1DD63F9F8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  sub_1DD545954(v0 + v2, v4, v5);
}

double block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t type metadata accessor for Signpost(uint64_t a1)
{
  result = qword_1EE1664F8;
  if (!qword_1EE1664F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD545B98(uint64_t a1)
{
  result = sub_1DD63F9C8();
  if (v2 <= 0x3F)
  {
    result = sub_1DD39638C(319, &unk_1EE166450, 0x1E69E9BF8);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD545C68()
{
  v0 = sub_1DD63F9F8();
  __swift_allocate_value_buffer(v0, qword_1EE16F0C8);
  OUTLINED_FUNCTION_4_66();
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE16F0C0;
  return sub_1DD63FA08();
}

uint64_t sub_1DD545D30()
{
  v0 = sub_1DD63F9F8();
  __swift_allocate_value_buffer(v0, qword_1ECD0DDA8);
  OUTLINED_FUNCTION_4_66();
  return OUTLINED_FUNCTION_2_81();
}

uint64_t sub_1DD545D88()
{
  v0 = sub_1DD63F9F8();
  __swift_allocate_value_buffer(v0, qword_1ECD0DDC0);
  OUTLINED_FUNCTION_4_66();
  return OUTLINED_FUNCTION_2_81();
}

uint64_t sub_1DD545E60()
{
  v0 = sub_1DD63F9F8();
  __swift_allocate_value_buffer(v0, qword_1EE16EF28);
  OUTLINED_FUNCTION_4_66();
  return sub_1DD63F9E8();
}

uint64_t sub_1DD545EF8()
{
  v0 = sub_1DD63F9F8();
  __swift_allocate_value_buffer(v0, qword_1ECD0DDF0);
  OUTLINED_FUNCTION_4_66();
  return sub_1DD63F9E8();
}

uint64_t sub_1DD545F88(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DD63F9F8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1DD63F9E8();
}

uint64_t type metadata accessor for PartialNameQueryExpander(uint64_t a1)
{
  result = qword_1EE161600;
  if (!qword_1EE161600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD546074(uint64_t a1)
{
  result = type metadata accessor for StringTokenizer(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD5460E0()
{
  sub_1DD63D4A8();
  swift_allocObject();
  result = sub_1DD63D498();
  qword_1ECD0DE08 = result;
  return result;
}

uint64_t sub_1DD546120(void *a1, char *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v81 = a4;
  v82 = a3;
  v79 = a2;
  v84 = sub_1DD63D368();
  OUTLINED_FUNCTION_0();
  v70 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v69 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v71 = v68 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v68 - v11;
  v80 = sub_1DD63D358();
  OUTLINED_FUNCTION_0();
  v78 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v83 = v16 - v15;
  v17 = OUTLINED_FUNCTION_6_2();
  v18 = type metadata accessor for Signpost(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  v21 = v20 - v19;
  OUTLINED_FUNCTION_57();
  v22 = swift_allocObject();
  v76 = v22;
  *(v22 + 16) = 0;
  v73 = v22 + 16;
  OUTLINED_FUNCTION_57();
  v23 = swift_allocObject();
  v75 = v23;
  *(v23 + 16) = MEMORY[0x1E69E7CC0];
  v68[1] = v23 + 16;
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v24 = qword_1EE16F0C0;
  v25 = v21 + *(v18 + 20);
  *v25 = "Geocoding POI with Pegasus";
  *(v25 + 8) = 26;
  *(v25 + 16) = 2;
  v26 = v24;
  sub_1DD63F9B8();
  *(v21 + *(v18 + 24)) = v26;
  v27 = v26;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1DD643F90;
  v29 = sub_1DD6408F8();
  v31 = v30;
  *(v28 + 56) = MEMORY[0x1E69E6158];
  *(v28 + 64) = sub_1DD392BD8();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  v72 = v27;
  v77 = v21;
  sub_1DD63F998();

  v87[5] = MEMORY[0x1E69E7CD0];
  if (qword_1ECCDB0F0 != -1)
  {
    swift_once();
  }

  v32 = sub_1DD63D458();
  v34 = v33;
  swift_isUniquelyReferenced_nonNull_native();
  v85[0] = *v34;
  sub_1DD3FFBC0();
  *v34 = v85[0];
  v32(v87, 0);
  v35 = dispatch_group_create();
  dispatch_group_enter(v35);
  sub_1DD63D348();
  v36 = sub_1DD547860(v79);
  sub_1DD63D338();

  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  (*(v38 + 8))(v37, v38);
  sub_1DD63D468();

  v39 = v12;
  v40 = v71;
  if (qword_1ECCDB0B8 != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v41 = sub_1DD63F9F8();
  __swift_project_value_buffer(v41, qword_1ECD0DDA8);
  v42 = v70;
  v43 = *(v70 + 16);
  v79 = v39;
  v44 = v84;
  v43(v40, v39, v84);
  sub_1DD3C2388(a1, v87);
  v45 = sub_1DD63F9D8();
  v46 = sub_1DD640368();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v68[0] = swift_slowAlloc();
    v86[0] = v68[0];
    *v47 = 136315394;
    v43(v69, v40, v84);
    v48 = sub_1DD63FE38();
    v50 = v49;
    v71 = *(v42 + 8);
    (v71)(v40, v84);
    v51 = sub_1DD39565C(v48, v50, v86);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    sub_1DD3C2388(v87, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE8D8, &qword_1DD659DB8);
    v52 = sub_1DD63FE38();
    v54 = v53;
    __swift_destroy_boxed_opaque_existential_1(v87);
    v55 = sub_1DD39565C(v52, v54, v86);

    *(v47 + 14) = v55;
    _os_log_impl(&dword_1DD38D000, v45, v46, "Constructed Pegasus Search Request: %s with query value: %s", v47, 0x16u);
    swift_arrayDestroy();
    v44 = v84;
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v87);
    v71 = *(v42 + 8);
    (v71)(v40, v44);
  }

  v56 = v79;
  v87[0] = sub_1DD63D478();
  v57 = swift_allocObject();
  v58 = v75;
  v57[2] = v35;
  v57[3] = v58;
  v59 = v76;
  v57[4] = v74;
  v57[5] = v59;
  v60 = v35;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE8C8, &qword_1DD659DB0);
  sub_1DD547A84();
  sub_1DD63FB28();

  sub_1DD63FB18();

  sub_1DD546F00();
  swift_bridgeObjectRelease_n();
  swift_beginAccess();
  v61 = *(v59 + 16);
  if (v61)
  {
    v62 = v61;
    v63 = sub_1DD6404C8();
    OUTLINED_FUNCTION_3_66(v63);
    v64 = v61;
    v82(v61, 1);
  }

  else
  {
    v65 = sub_1DD6404C8();
    OUTLINED_FUNCTION_3_66(v65);
    swift_beginAccess();

    v82(v66, 0);
  }

  (v71)(v56, v44);
  (*(v78 + 8))(v83, v80);
  sub_1DD41BFFC(0);
}

void sub_1DD546A38(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v45 = a2;
  v42 = a3;
  v6 = sub_1DD63D488();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = sub_1DD63D3A8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE8E0, &qword_1DD659DC0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - v20;
  sub_1DD547AE8(a1, &v40 - v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *(v7 + 32);
    v22(v14, v21, v6);
    if (qword_1ECCDB0B8 != -1)
    {
      swift_once();
    }

    v23 = sub_1DD63F9F8();
    __swift_project_value_buffer(v23, qword_1ECD0DDA8);
    v24 = *(v7 + 16);
    v24(v11, v14, v6);
    v25 = sub_1DD63F9D8();
    v26 = sub_1DD640378();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v42 = v7 + 32;
      v28 = v27;
      v40 = swift_slowAlloc();
      v41 = v22;
      v46[0] = v40;
      *v28 = 136315138;
      v24(v43, v11, v6);
      v29 = sub_1DD63FE38();
      v31 = v30;
      (*(v7 + 8))(v11, v6);
      v32 = sub_1DD39565C(v29, v31, v46);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1DD38D000, v25, v26, "error getting searchResponse: %s", v28, 0xCu);
      v33 = v40;
      __swift_destroy_boxed_opaque_existential_1(v40);
      v22 = v41;
      MEMORY[0x1E12B3DA0](v33, -1, -1);
      MEMORY[0x1E12B3DA0](v28, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    sub_1DD547B58();
    v34 = swift_allocError();
    v22(v35, v14, v6);
    v36 = v44;
    swift_beginAccess();
    v37 = *(v36 + 16);
    *(v36 + 16) = v34;
  }

  else
  {
    (*(v16 + 32))(v18, v21, v15);
    v38 = sub_1DD547068();
    (*(v16 + 8))(v18, v15);
    v39 = v42;
    swift_beginAccess();
    *(v39 + 16) = v38;
  }

  dispatch_group_leave(v45);
}

void sub_1DD546F00()
{
  if (qword_1ECCDB0B8 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD63F9F8();
  __swift_project_value_buffer(v0, qword_1ECD0DDA8);
  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DD38D000, v1, v2, "Waiting for pegasus response", v3, 2u);
    MEMORY[0x1E12B3DA0](v3, -1, -1);
  }

  sub_1DD640418();
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640368();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DD38D000, v4, v5, "Done waiting for pegasus response", v6, 2u);
    MEMORY[0x1E12B3DA0](v6, -1, -1);
  }
}

uint64_t sub_1DD547068()
{
  v68 = sub_1DD63D3C8();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v5 = v4 - v3;
  v65 = sub_1DD63D428();
  OUTLINED_FUNCTION_0();
  v69 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v64 = v9 - v8;
  OUTLINED_FUNCTION_6_2();
  sub_1DD63D3E8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_2();
  v63 = sub_1DD63D408();
  OUTLINED_FUNCTION_0();
  v66 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v62 = v14 - v13;
  OUTLINED_FUNCTION_6_2();
  v71 = sub_1DD63D448();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  v21 = sub_1DD63D388();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  v27 = v26 - v25;
  sub_1DD63D398();
  sub_1DD63D378();
  (*(v23 + 8))(v27, v21);
  v28 = sub_1DD63D438();
  (*(v16 + 8))(v20, v71);
  v58 = *(v28 + 16);
  if (v58)
  {
    v29 = 0;
    v61 = v28 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
    v60 = (v69 + 8);
    v30 = MEMORY[0x1E69E7CC0];
    v59 = v28;
    v31 = v66;
    while (v29 < *(v28 + 16))
    {
      v67 = v29;
      v32 = v31;
      (*(v31 + 16))(v62, v61 + *(v31 + 72) * v29, v63);
      sub_1DD63D3F8();
      (*(v32 + 8))(v62, v63);
      sub_1DD63D418();
      (*v60)(v64, v65);
      v33 = sub_1DD63D3D8();
      v72 = *(v33 + 16);
      if (v72)
      {
        sub_1DD39638C(0, &qword_1ECCDE0B0, 0x1E69A21E0);
        v34 = 0;
        v70 = v33 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
        while (v34 < *(v33 + 16))
        {
          (*(v1 + 16))(v5, v70 + *(v1 + 72) * v34, v68);
          v35 = sub_1DD63D3B8();
          v37 = v36;
          (*(v1 + 8))(v5, v68);
          v38 = sub_1DD5477E0(v35, v37);
          if (v38)
          {
            v39 = v38;
            v40 = v75;
            sub_1DD4FDE9C(v39, v74);
            if (v40)
            {

              v51 = OUTLINED_FUNCTION_5_67();
              v52(v51);

              return v30;
            }

            memcpy(v73, v74, sizeof(v73));
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v75 = 0;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1DD3C0504();
              v30 = v47;
            }

            v42 = *(v30 + 16);
            if (v42 >= *(v30 + 24) >> 1)
            {
              sub_1DD3C0504();
              v30 = v48;
            }

            *(v30 + 16) = v42 + 1;
            memcpy((v30 + 712 * v42 + 32), v73, 0x2C8uLL);
          }

          else
          {
            if (qword_1ECCDB0B8 != -1)
            {
              OUTLINED_FUNCTION_0_8();
              swift_once();
            }

            v43 = sub_1DD63F9F8();
            __swift_project_value_buffer(v43, qword_1ECD0DDA8);
            v44 = sub_1DD63F9D8();
            v45 = sub_1DD640368();
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              *v46 = 0;
              _os_log_impl(&dword_1DD38D000, v44, v45, "Couldn't deserialize geomapitem", v46, 2u);
              OUTLINED_FUNCTION_13_0();
              MEMORY[0x1E12B3DA0]();
            }
          }

          if (v72 == ++v34)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        break;
      }

LABEL_20:
      v29 = v67 + 1;

      v49 = OUTLINED_FUNCTION_5_67();
      v50(v49);
      v31 = v66;
      v28 = v59;
      if (v67 + 1 == v58)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_24:
  if (qword_1ECCDB0B8 != -1)
  {
LABEL_32:
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v53 = sub_1DD63F9F8();
  __swift_project_value_buffer(v53, qword_1ECD0DDA8);

  v54 = sub_1DD63F9D8();
  v55 = sub_1DD640368();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 134217984;
    *(v56 + 4) = *(v30 + 16);

    _os_log_impl(&dword_1DD38D000, v54, v55, "Returning %ld locations", v56, 0xCu);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  else
  {
  }

  return v30;
}

id sub_1DD5477E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_1DD63CF08();
    sub_1DD3AD77C(a1, a2);
  }

  v5 = [swift_getObjCClassFromMetadata() mapItemStorageForSerializedPlaceData_];

  return v5;
}

id sub_1DD547860(uint64_t a1)
{
  v2 = sub_1DD63D078();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_2();
  v5 = v4 - v3;
  v6 = type metadata accessor for LocationResolutionContext(0);
  v7 = a1 + *(v6 + 32);
  v8 = 0.0;
  if (*(v7 + 8))
  {
    v9 = 0.0;
  }

  else
  {
    v10 = a1 + *(v6 + 36);
    v9 = 0.0;
    if ((*(v10 + 8) & 1) == 0)
    {
      v8 = *v10;
      v9 = *v7;
    }
  }

  v11 = CLLocationCoordinate2DMake(v9, v8);
  sub_1DD39638C(0, &qword_1ECCDE8C0, 0x1E6985C40);
  sub_1DD63CF58();
  return sub_1DD547954(v5, v11.latitude, v11.longitude, 0.0, 0.0, 0.0);
}

id sub_1DD547954(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = sub_1DD63CFA8();
  v14 = [v12 initWithCoordinate:v13 altitude:a2 horizontalAccuracy:a3 verticalAccuracy:a4 timestamp:{a5, a6}];

  v15 = sub_1DD63D078();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

unint64_t sub_1DD547A84()
{
  result = qword_1ECCDE8D0;
  if (!qword_1ECCDE8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDE8C8, &qword_1DD659DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE8D0);
  }

  return result;
}

uint64_t sub_1DD547AE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE8E0, &qword_1DD659DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD547B58()
{
  result = qword_1ECCDE8E8;
  if (!qword_1ECCDE8E8)
  {
    sub_1DD63D488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE8E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_66(uint64_t a1)
{

  return sub_1DD63F9A8();
}

uint64_t sub_1DD547BD8()
{
  OUTLINED_FUNCTION_4_67();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = OUTLINED_FUNCTION_0_111(v2, v11);
  v4(v3);
  v5 = OUTLINED_FUNCTION_3_67();
  result = v6(v5);
  if (result == *MEMORY[0x1E69D1890])
  {
    v8 = 4;
LABEL_7:
    *v0 = v8;
    return result;
  }

  if (result == *MEMORY[0x1E69D1880])
  {
    v8 = 3;
    goto LABEL_7;
  }

  if (result == *MEMORY[0x1E69D1A00])
  {
    v8 = 2;
    goto LABEL_7;
  }

  if (result == *MEMORY[0x1E69D18E8])
  {
    *v0 = 0;
  }

  else
  {
    if (result == *MEMORY[0x1E69D19C0])
    {
      v8 = 1;
      goto LABEL_7;
    }

    if (result == *MEMORY[0x1E69D1878])
    {
      v8 = 5;
      goto LABEL_7;
    }

    if (result == *MEMORY[0x1E69D1888])
    {
      v8 = 6;
      goto LABEL_7;
    }

    v9 = OUTLINED_FUNCTION_2_82(7);
    return v10(v9);
  }

  return result;
}

uint64_t sub_1DD547D58()
{
  OUTLINED_FUNCTION_4_67();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = OUTLINED_FUNCTION_0_111(v2, v11);
  v4(v3);
  v5 = OUTLINED_FUNCTION_3_67();
  result = v6(v5);
  if (result == *MEMORY[0x1E69D18A0])
  {
    *v0 = 0;
    return result;
  }

  if (result == *MEMORY[0x1E69D19A0])
  {
    v8 = 1;
LABEL_7:
    *v0 = v8;
    return result;
  }

  if (result == *MEMORY[0x1E69D18B8])
  {
    v8 = 2;
    goto LABEL_7;
  }

  v9 = OUTLINED_FUNCTION_2_82(3);
  return v10(v9);
}

uint64_t sub_1DD547E68@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v4 = v3;
  v66 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE8F0, &qword_1DD659DD8);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2B0, &qword_1DD64F430);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v60 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v60 - v16;
  v67 = sub_1DD63E1B8();
  OUTLINED_FUNCTION_0();
  v65 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v64 = &v60 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v60 - v25;
  v27 = sub_1DD63E118();
  OUTLINED_FUNCTION_0();
  v29 = v28;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v60 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v33, v4, v27, v31);
  result = (*(v29 + 88))(v33, v27);
  if (result == *MEMORY[0x1E69D1910])
  {
    v35 = (a2 & 1) == 0;
    v36 = 32;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D18B0])
  {
    v35 = (a2 & 1) == 0;
    v36 = 31;
    goto LABEL_5;
  }

  if (result != *MEMORY[0x1E69D1970])
  {
    if (result == *MEMORY[0x1E69D19D0])
    {
      v36 = 2;
      goto LABEL_7;
    }

    if (result == *MEMORY[0x1E69D18F0])
    {
      v36 = 3;
      goto LABEL_7;
    }

    if (result == *MEMORY[0x1E69D18D0])
    {
      v36 = 14;
      goto LABEL_7;
    }

    if (result == *MEMORY[0x1E69D19C8])
    {
      *a3 = 0;
      return result;
    }

    if (result == *MEMORY[0x1E69D1968])
    {
      sub_1DD5493B4(v66, v17);
      v43 = v67;
      if (__swift_getEnumTagSinglePayload(v17, 1, v67) == 1)
      {
        result = sub_1DD3ADFD0(v17, &qword_1ECCDD2B0, &qword_1DD64F430);
      }

      else
      {
        v44 = v65;
        (*(v65 + 32))(v26, v17, v43);
        v45 = OUTLINED_FUNCTION_6_60();
        v46(v45);
        v47 = sub_1DD63E1A8();
        v48 = *(v44 + 8);
        v48(v17, v43);
        result = (v48)(v26, v43);
        if (v47)
        {
          v36 = 7;
          goto LABEL_7;
        }
      }

      v36 = 12;
      goto LABEL_7;
    }

    if (result == *MEMORY[0x1E69D19E8])
    {
      v36 = 22;
      goto LABEL_7;
    }

    if (result == *MEMORY[0x1E69D1900])
    {
      v36 = 6;
      goto LABEL_7;
    }

    if (result == *MEMORY[0x1E69D1950])
    {
      v36 = 23;
      goto LABEL_7;
    }

    if (result == *MEMORY[0x1E69D1960])
    {
      v36 = 5;
      goto LABEL_7;
    }

    if (result == *MEMORY[0x1E69D18E0])
    {
      v49 = v65;
      v50 = v62;
      v51 = v67;
      (*(v65 + 104))(v62, *MEMORY[0x1E69D1A60], v67);
      __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
      v52 = *(v61 + 48);
      v53 = v63;
      sub_1DD5493B4(v66, v63);
      sub_1DD5493B4(v50, v53 + v52);
      OUTLINED_FUNCTION_11_5(v53);
      if (v35)
      {
        sub_1DD3ADFD0(v50, &qword_1ECCDD2B0, &qword_1DD64F430);
        OUTLINED_FUNCTION_11_5(v53 + v52);
        if (v35)
        {
          result = sub_1DD3ADFD0(v53, &qword_1ECCDD2B0, &qword_1DD64F430);
          goto LABEL_44;
        }
      }

      else
      {
        v54 = v60;
        sub_1DD5493B4(v53, v60);
        OUTLINED_FUNCTION_11_5(v53 + v52);
        if (!v55)
        {
          v56 = v64;
          v57.n128_f64[0] = (*(v49 + 32))(v64, v53 + v52, v51);
          sub_1DD549424(v57);
          v58 = sub_1DD63FD98();
          v59 = *(v49 + 8);
          v59(v56, v51);
          sub_1DD3ADFD0(v50, &qword_1ECCDD2B0, &qword_1DD64F430);
          v59(v54, v51);
          result = sub_1DD3ADFD0(v53, &qword_1ECCDD2B0, &qword_1DD64F430);
          if ((v58 & 1) == 0)
          {
            goto LABEL_49;
          }

LABEL_44:
          v36 = 24;
          goto LABEL_7;
        }

        sub_1DD3ADFD0(v50, &qword_1ECCDD2B0, &qword_1DD64F430);
        (*(v49 + 8))(v54, v51);
      }

      result = sub_1DD3ADFD0(v53, &qword_1ECCDE8F0, &qword_1DD659DD8);
LABEL_49:
      v36 = 16;
      goto LABEL_7;
    }

    if (result != *MEMORY[0x1E69D1980])
    {
      if (result == *MEMORY[0x1E69D1890] || result == *MEMORY[0x1E69D1880] || result == *MEMORY[0x1E69D1A00] || result == *MEMORY[0x1E69D18E8] || result == *MEMORY[0x1E69D19C0] || result == *MEMORY[0x1E69D1878] || result == *MEMORY[0x1E69D1888])
      {
        result = __swift_getEnumTagSinglePayload(v66, 1, v67);
        if (result == 1)
        {
          v36 = 38;
        }

        else
        {
          v36 = 8;
        }

        goto LABEL_7;
      }

      if (result == *MEMORY[0x1E69D1898])
      {
        v35 = (a2 & 1) == 0;
        v36 = 8;
      }

      else
      {
        if (result == *MEMORY[0x1E69D1998])
        {
          v36 = 19;
          goto LABEL_7;
        }

        if (result == *MEMORY[0x1E69D18C0])
        {
          v35 = (a2 & 1) == 0;
          v36 = 10;
        }

        else
        {
          if (result != *MEMORY[0x1E69D18D8])
          {
            if (result == *MEMORY[0x1E69D1930])
            {
              v36 = 17;
            }

            else if (result == *MEMORY[0x1E69D1938])
            {
              v36 = 18;
            }

            else if (result == *MEMORY[0x1E69D1948])
            {
              v36 = 20;
            }

            else
            {
              if (result != *MEMORY[0x1E69D18A8])
              {
                if (result != *MEMORY[0x1E69D18C8])
                {
                  *a3 = 38;
                  return (*(v29 + 8))(v33, v27);
                }

                v35 = (a2 & 1) == 0;
                v36 = 11;
                goto LABEL_5;
              }

              v36 = 1;
            }

            goto LABEL_7;
          }

          v35 = (a2 & 1) == 0;
          v36 = 9;
        }
      }

LABEL_5:
      if (!v35)
      {
        v36 = 38;
      }

      goto LABEL_7;
    }

    goto LABEL_44;
  }

  sub_1DD5493B4(v66, v14);
  v37 = v67;
  if (__swift_getEnumTagSinglePayload(v14, 1, v67) == 1)
  {
    result = sub_1DD3ADFD0(v14, &qword_1ECCDD2B0, &qword_1DD64F430);
LABEL_16:
    v36 = 15;
    goto LABEL_7;
  }

  v38 = v65;
  (*(v65 + 32))(v21, v14, v37);
  v39 = OUTLINED_FUNCTION_6_60();
  v40(v39);
  v41 = sub_1DD63E1A8();
  v42 = *(v38 + 8);
  v42(v17, v37);
  result = (v42)(v21, v37);
  if ((v41 & 1) == 0)
  {
    goto LABEL_16;
  }

  v36 = 4;
LABEL_7:
  *a3 = v36;
  return result;
}

uint64_t sub_1DD5487FC()
{
  v1 = v0;
  v2 = sub_1DD63E118();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v1, v2, v6);
  v9 = (*(v4 + 88))(v8, v2);
  if (v9 == *MEMORY[0x1E69D1940])
  {
    v26 = 6;
    v10 = type metadata accessor for DateTime.Date();
    OUTLINED_FUNCTION_16_29(v10);
    v11 = &v26;
  }

  else if (v9 == *MEMORY[0x1E69D1918])
  {
    v20 = 0;
    v12 = type metadata accessor for DateTime.Date();
    OUTLINED_FUNCTION_16_29(v12);
    v11 = &v20;
  }

  else if (v9 == *MEMORY[0x1E69D1988])
  {
    v21 = 1;
    v13 = type metadata accessor for DateTime.Date();
    OUTLINED_FUNCTION_16_29(v13);
    v11 = &v21;
  }

  else if (v9 == *MEMORY[0x1E69D19F8])
  {
    v22 = 2;
    v14 = type metadata accessor for DateTime.Date();
    OUTLINED_FUNCTION_16_29(v14);
    v11 = &v22;
  }

  else if (v9 == *MEMORY[0x1E69D19B8])
  {
    v23 = 3;
    v15 = type metadata accessor for DateTime.Date();
    OUTLINED_FUNCTION_16_29(v15);
    v11 = &v23;
  }

  else if (v9 == *MEMORY[0x1E69D1908])
  {
    v24 = 4;
    v16 = type metadata accessor for DateTime.Date();
    OUTLINED_FUNCTION_16_29(v16);
    v11 = &v24;
  }

  else
  {
    if (v9 != *MEMORY[0x1E69D19A8])
    {
      (*(v4 + 8))(v8, v2);
      return 0;
    }

    v25 = 5;
    v17 = type metadata accessor for DateTime.Date();
    OUTLINED_FUNCTION_16_29(v17);
    v11 = &v25;
  }

  return DateTime.Date.init(withDayOfWeek:)(v11);
}

uint64_t sub_1DD548A5C()
{
  OUTLINED_FUNCTION_4_67();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = OUTLINED_FUNCTION_0_111(v2, v19);
  v4(v3);
  v5 = OUTLINED_FUNCTION_3_67();
  result = v6(v5);
  if (result == *MEMORY[0x1E69D18A0])
  {
    goto LABEL_2;
  }

  if (result == *MEMORY[0x1E69D19A0])
  {
    goto LABEL_4;
  }

  if (result == *MEMORY[0x1E69D1870])
  {
    v8 = 5;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1928])
  {
    v8 = 10;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1910])
  {
    v8 = 6;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D18B0])
  {
    v8 = 4;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1970] || result == *MEMORY[0x1E69D18F0] || result == *MEMORY[0x1E69D18D0] || result == *MEMORY[0x1E69D19C8] || result == *MEMORY[0x1E69D1968] || result == *MEMORY[0x1E69D19E8] || result == *MEMORY[0x1E69D1900] || result == *MEMORY[0x1E69D1950] || result == *MEMORY[0x1E69D1960] || result == *MEMORY[0x1E69D18E0])
  {
    goto LABEL_4;
  }

  if (result == *MEMORY[0x1E69D19F0] || result == *MEMORY[0x1E69D1980])
  {
    goto LABEL_2;
  }

  if (result == *MEMORY[0x1E69D1860])
  {
LABEL_4:
    v8 = 1;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1890] || result == *MEMORY[0x1E69D1880] || result == *MEMORY[0x1E69D1A00] || result == *MEMORY[0x1E69D18E8] || result == *MEMORY[0x1E69D19C0] || result == *MEMORY[0x1E69D1878] || result == *MEMORY[0x1E69D1888])
  {
LABEL_2:
    v8 = 13;
LABEL_13:
    *v0 = v8;
    return result;
  }

  if (result == *MEMORY[0x1E69D1898] || result == *MEMORY[0x1E69D1940] || result == *MEMORY[0x1E69D1918] || result == *MEMORY[0x1E69D1988] || result == *MEMORY[0x1E69D19F8] || result == *MEMORY[0x1E69D19B8] || result == *MEMORY[0x1E69D1908] || result == *MEMORY[0x1E69D19A8] || result == *MEMORY[0x1E69D19D8])
  {
    goto LABEL_4;
  }

  if (result == *MEMORY[0x1E69D18C0])
  {
    v8 = 11;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D19E0])
  {
    v8 = 3;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D18D8])
  {
    v8 = 7;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1978])
  {
    v8 = 8;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1920])
  {
    v8 = 9;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D18C8])
  {
    v8 = 12;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D18F8])
  {
    v8 = 2;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1958])
  {
    *v0 = 0;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_2_82(13);
    return v18(v17);
  }

  return result;
}

uint64_t sub_1DD548EC4()
{
  OUTLINED_FUNCTION_4_67();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = OUTLINED_FUNCTION_0_111(v2, v35);
  v4(v3);
  v5 = OUTLINED_FUNCTION_3_67();
  result = v6(v5);
  if (result == *MEMORY[0x1E69D18A0])
  {
    goto LABEL_2;
  }

  if (result == *MEMORY[0x1E69D19A0])
  {
    goto LABEL_4;
  }

  if (result == *MEMORY[0x1E69D1870])
  {
    v8 = 5;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1928])
  {
    v8 = 10;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1910])
  {
    v8 = 6;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D18B0])
  {
    v8 = 4;
    goto LABEL_13;
  }

  v9 = result == *MEMORY[0x1E69D1970] || result == *MEMORY[0x1E69D19D0];
  v10 = v9 || result == *MEMORY[0x1E69D18F0];
  v11 = v10 || result == *MEMORY[0x1E69D18D0];
  v12 = v11 || result == *MEMORY[0x1E69D18B8];
  v13 = v12 || result == *MEMORY[0x1E69D19C8];
  v14 = v13 || result == *MEMORY[0x1E69D1968];
  v15 = v14 || result == *MEMORY[0x1E69D19E8];
  v16 = v15 || result == *MEMORY[0x1E69D1900];
  v17 = v16 || result == *MEMORY[0x1E69D1950];
  v18 = v17 || result == *MEMORY[0x1E69D1960];
  if (v18 || result == *MEMORY[0x1E69D18E0])
  {
    goto LABEL_4;
  }

  if (result == *MEMORY[0x1E69D19F0] || result == *MEMORY[0x1E69D1980])
  {
    goto LABEL_2;
  }

  if (result == *MEMORY[0x1E69D1860])
  {
LABEL_4:
    v8 = 1;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1890] || result == *MEMORY[0x1E69D1880] || result == *MEMORY[0x1E69D1A00] || result == *MEMORY[0x1E69D18E8] || result == *MEMORY[0x1E69D19C0] || result == *MEMORY[0x1E69D1878] || result == *MEMORY[0x1E69D1888])
  {
LABEL_2:
    v8 = 13;
LABEL_13:
    *v0 = v8;
    return result;
  }

  if (result == *MEMORY[0x1E69D1898])
  {
    goto LABEL_4;
  }

  if (result == *MEMORY[0x1E69D1940] || result == *MEMORY[0x1E69D1918] || result == *MEMORY[0x1E69D1988] || result == *MEMORY[0x1E69D19F8] || result == *MEMORY[0x1E69D19B8] || result == *MEMORY[0x1E69D1908] || result == *MEMORY[0x1E69D19A8] || result == *MEMORY[0x1E69D19D8] || result == *MEMORY[0x1E69D1998] || result == *MEMORY[0x1E69D1990] || result == *MEMORY[0x1E69D18C0])
  {
    v8 = 11;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D19E0])
  {
    v8 = 3;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1868])
  {
    goto LABEL_4;
  }

  if (result == *MEMORY[0x1E69D18D8])
  {
    v8 = 7;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1978])
  {
    v8 = 8;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1930] || result == *MEMORY[0x1E69D1938] || result == *MEMORY[0x1E69D1948] || result == *MEMORY[0x1E69D18A8])
  {
    goto LABEL_110;
  }

  if (result == *MEMORY[0x1E69D1920])
  {
    v8 = 9;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D19B0])
  {
    goto LABEL_2;
  }

  if (result == *MEMORY[0x1E69D18C8])
  {
LABEL_110:
    v8 = 12;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D18F8])
  {
    v8 = 2;
    goto LABEL_13;
  }

  if (result == *MEMORY[0x1E69D1958])
  {
    *v0 = 0;
  }

  else
  {
    v33 = OUTLINED_FUNCTION_2_82(13);
    return v34(v33);
  }

  return result;
}

uint64_t sub_1DD5493B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2B0, &qword_1DD64F430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD549424(__n128 a1)
{
  result = qword_1ECCDE8F8;
  if (!qword_1ECCDE8F8)
  {
    sub_1DD63E1B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE8F8);
  }

  return result;
}

SiriInference::PersonPlace::Value_optional __swiftcall PersonPlace.Value.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

void *PersonPlace.init(personPlaceName:personPlaceReference:personPlaceId:occupant:)@<X0>(void *__src@<X4>, uint64_t a2@<X0>, char *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 18);
  v8 = *a3;
  *a6 = *a2;
  *(a6 + 18) = v7;
  *(a6 + 16) = v6;
  *(a6 + 19) = v8;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return memcpy((a6 + 40), __src, 0xA6uLL);
}

uint64_t PersonPlace.Value.rawValue.getter()
{
  if (*v0)
  {
    return 31085;
  }

  else
  {
    return 6647407;
  }
}

uint64_t sub_1DD549580@<X0>(uint64_t *a1@<X8>)
{
  result = PersonPlace.Value.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PersonPlace.personPlaceName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 18);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 18) = v4;
  *(a1 + 16) = v3;
}

uint64_t PersonPlace.personPlaceId.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PersonPlace.occupant.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 40), 0xA6uLL);
  memcpy(a1, (v1 + 40), 0xA6uLL);
  return sub_1DD54A35C(__dst, v4);
}

uint64_t static PersonPlace.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 18);
  v6 = *(a1 + 8);
  v19 = *(a1 + 19);
  v17 = a1[3];
  v20 = a1[4];
  memcpy(__dst, a1 + 5, 0xA6uLL);
  v8 = *a2;
  v7 = a2[1];
  v9 = *(a2 + 18);
  v10 = *(a2 + 8);
  v18 = *(a2 + 19);
  v11 = a2[4];
  v16 = a2[3];
  memcpy(__src, a2 + 5, 0xA6uLL);
  if (v3)
  {
    v27[0] = v4;
    v27[1] = v3;
    LOWORD(v27[2]) = v6;
    BYTE2(v27[2]) = (v6 | (v5 << 16)) >> 16;
    if (v7)
    {
      v25[0] = v8;
      v25[1] = v7;
      LOWORD(v25[2]) = v10;
      BYTE2(v25[2]) = (v10 | (v9 << 16)) >> 16;
      swift_bridgeObjectRetain_n();

      v12 = static PersonPlaceName.== infix(_:_:)(v27, v25);

      if ((v12 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

LABEL_6:

    goto LABEL_7;
  }

  if (v7)
  {
    goto LABEL_6;
  }

LABEL_10:
  if (v20)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v15 = v17 == v16 && v20 == v11;
    if (!v15 && (sub_1DD640CD8() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v11)
  {
    goto LABEL_7;
  }

  if (v19 == 2)
  {
    if (v18 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v18 == 2 || (sub_1DD3B16A8(v19 & 1) & 1) == 0)
  {
    goto LABEL_7;
  }

  memcpy(v27, __dst, 0xA6uLL);
  memcpy(&v27[21], __src, 0xA6uLL);
  memcpy(v28, __dst, 0xA6uLL);
  if (OUTLINED_FUNCTION_0_99(v28) == 1)
  {
    memcpy(v25, &v27[21], 0xA6uLL);
    if (OUTLINED_FUNCTION_0_99(v25) == 1)
    {
      OUTLINED_FUNCTION_2_83(v26);
      sub_1DD54A35C(__dst, v24);
      sub_1DD54A35C(__src, v24);
      sub_1DD3ADFD0(v26, &qword_1ECCDE900, &qword_1DD659DE0);
      v13 = 1;
      return v13 & 1;
    }

    sub_1DD54A35C(__dst, v26);
    sub_1DD54A35C(__src, v26);
  }

  else
  {
    OUTLINED_FUNCTION_2_83(v26);
    OUTLINED_FUNCTION_2_83(v24);
    memcpy(v25, &v27[21], 0xA6uLL);
    if (OUTLINED_FUNCTION_0_99(v25) != 1)
    {
      memcpy(v23, &v27[21], 0xA6uLL);
      sub_1DD54A35C(__dst, v22);
      sub_1DD54A35C(__src, v22);
      sub_1DD54A35C(v26, v22);
      v13 = static Occupant.== infix(_:_:)(v24, v23);
      memcpy(v21, v23, 0xA6uLL);
      sub_1DD54091C(v21);
      memcpy(v22, v24, 0xA6uLL);
      sub_1DD54091C(v22);
      OUTLINED_FUNCTION_2_83(v23);
      sub_1DD3ADFD0(v23, &qword_1ECCDE900, &qword_1DD659DE0);
      return v13 & 1;
    }

    OUTLINED_FUNCTION_2_83(v23);
    sub_1DD54A35C(__dst, v22);
    sub_1DD54A35C(__src, v22);
    sub_1DD54A35C(v26, v22);
    sub_1DD54091C(v23);
  }

  memcpy(v25, v27, 0x14EuLL);
  sub_1DD3ADFD0(v25, &qword_1ECCDE908, &qword_1DD659DE8);
LABEL_7:
  v13 = 0;
  return v13 & 1;
}

uint64_t sub_1DD549AC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6C506E6F73726570 && a2 == 0xEF656D614E656361;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001DD672960 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C506E6F73726570 && a2 == 0xED00006449656361;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x746E61707563636FLL && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD640CD8();

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

unint64_t sub_1DD549C30(char a1)
{
  result = 0x6C506E6F73726570;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x746E61707563636FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD549CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD549AC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD549CF0(uint64_t a1)
{
  v2 = sub_1DD54A3CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD549D2C(uint64_t a1)
{
  v2 = sub_1DD54A3CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonPlace.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE910, &qword_1DD659DF0);
  OUTLINED_FUNCTION_0();
  v18 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v14 - v6;
  v8 = v1[1];
  v16 = *v1;
  v22 = *(v1 + 8);
  v9 = *(v1 + 18);
  v15 = *(v1 + 19);
  v10 = v1[3];
  v14[0] = v1[4];
  v14[1] = v10;
  memcpy(__dst, v1 + 5, 0xA6uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD54A3CC();

  sub_1DD640EF8();
  v20[0] = v16;
  v20[1] = v8;
  BYTE2(v20[2]) = v9;
  LOWORD(v20[2]) = v22;
  v19[0] = 0;
  sub_1DD54A420();
  v11 = v17;
  sub_1DD640C08();
  if (v11)
  {

    return (*(v18 + 8))(v7, v3);
  }

  else
  {
    v13 = v18;

    LOBYTE(v20[0]) = v15;
    v19[0] = 1;
    sub_1DD54A474();
    sub_1DD640C08();
    LOBYTE(v20[0]) = 2;
    sub_1DD640BC8();
    memcpy(v20, __dst, 0xA6uLL);
    v23 = 3;
    sub_1DD54A35C(__dst, v19);
    sub_1DD54A4C8();
    sub_1DD640C08();
    memcpy(v19, v20, 0xA6uLL);
    sub_1DD3ADFD0(v19, &qword_1ECCDE900, &qword_1DD659DE0);
    return (*(v13 + 8))(v7, v3);
  }
}

uint64_t PersonPlace.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE938, &qword_1DD659DF8);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD54A3CC();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = a2;
  LOBYTE(v19[0]) = 0;
  sub_1DD54A51C();
  OUTLINED_FUNCTION_1_94(&type metadata for PersonPlaceName, v19);
  v16 = v20;
  v17 = v21;
  v6 = v23;
  v7 = v22;
  LOBYTE(v19[0]) = 1;
  sub_1DD54A570();
  OUTLINED_FUNCTION_1_94(&type metadata for PersonPlace.Value, v19);
  v14 = v7;
  v30 = v6;
  LOBYTE(v7) = v20;
  LOBYTE(v20) = 2;
  v13 = sub_1DD640AD8();
  v15 = v8;
  v31 = 3;
  sub_1DD54A5C4();
  OUTLINED_FUNCTION_1_94(&type metadata for Occupant, &v31);
  v9 = v14 | (v30 << 16);
  v10 = OUTLINED_FUNCTION_7_2();
  v11(v10);
  memcpy(__dst, v28, sizeof(__dst));
  v19[0] = v16;
  v19[1] = v17;
  BYTE2(v19[2]) = BYTE2(v9);
  LOWORD(v19[2]) = v9;
  BYTE3(v19[2]) = v7;
  v19[3] = v13;
  v19[4] = v15;
  memcpy(&v19[5], v28, 0xA6uLL);
  memcpy(v18, v19, 0xCEuLL);
  sub_1DD54A618(v19, &v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v20 = v16;
  v21 = v17;
  v23 = BYTE2(v9);
  v22 = v9;
  v24 = v7;
  v25 = v13;
  v26 = v15;
  memcpy(v27, __dst, sizeof(v27));
  return sub_1DD54A650(&v20);
}

uint64_t sub_1DD54A35C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE900, &qword_1DD659DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD54A3CC()
{
  result = qword_1ECCDE918;
  if (!qword_1ECCDE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE918);
  }

  return result;
}

unint64_t sub_1DD54A420()
{
  result = qword_1ECCDE920;
  if (!qword_1ECCDE920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE920);
  }

  return result;
}

unint64_t sub_1DD54A474()
{
  result = qword_1ECCDE928;
  if (!qword_1ECCDE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE928);
  }

  return result;
}

unint64_t sub_1DD54A4C8()
{
  result = qword_1ECCDE930;
  if (!qword_1ECCDE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE930);
  }

  return result;
}

unint64_t sub_1DD54A51C()
{
  result = qword_1ECCDE940;
  if (!qword_1ECCDE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE940);
  }

  return result;
}

unint64_t sub_1DD54A570()
{
  result = qword_1ECCDE948;
  if (!qword_1ECCDE948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE948);
  }

  return result;
}

unint64_t sub_1DD54A5C4()
{
  result = qword_1ECCDE950;
  if (!qword_1ECCDE950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE950);
  }

  return result;
}

unint64_t sub_1DD54A684()
{
  result = qword_1ECCDE958;
  if (!qword_1ECCDE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE958);
  }

  return result;
}

uint64_t sub_1DD54A6E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 206))
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

uint64_t sub_1DD54A734(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 204) = 0;
    *(result + 200) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 206) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 206) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonPlace.Value(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PersonPlace.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD54A98C()
{
  result = qword_1ECCDE960;
  if (!qword_1ECCDE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE960);
  }

  return result;
}

unint64_t sub_1DD54A9E4()
{
  result = qword_1ECCDE968;
  if (!qword_1ECCDE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE968);
  }

  return result;
}

unint64_t sub_1DD54AA3C()
{
  result = qword_1ECCDE970;
  if (!qword_1ECCDE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE970);
  }

  return result;
}

unint64_t sub_1DD54AA90()
{
  result = qword_1ECCDE978;
  if (!qword_1ECCDE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE978);
  }

  return result;
}

SiriInference::PersonPlaceName __swiftcall PersonPlaceName.init(name:suffix:prefix:)(Swift::String name, SiriInference::PersonPlaceName::Suffix_optional suffix, SiriInference::PersonPlaceName::Prefix_optional prefix)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v6 = v3;
  v7 = *suffix.value;
  v8 = *prefix.value;
  *v6 = name;
  *(v6 + 17) = v7;
  *(v6 + 18) = v8;

  v9._countAndFlagsBits = countAndFlagsBits;
  v9._object = object;
  LOBYTE(v10) = PersonPlaceName.BoundedValue.init(rawValue:)(v9);
  *(v6 + 16) = v13;
  result.name._object = v11;
  result.name._countAndFlagsBits = v10;
  result.boundedValue = v12;
  result.suffix = SBYTE1(v12);
  result.prefix = SBYTE2(v12);
  return result;
}

uint64_t PersonPlaceName.BoundedValue.rawValue.getter()
{
  result = 0x64646120656D6F68;
  switch(*v0)
  {
    case 1:
      result = 0x646461206B726F77;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x79627261656ELL;
      break;
    case 4:
      result = 0x61206C6F6F686373;
      break;
    case 5:
      v2 = 544045415;
      goto LABEL_8;
    case 6:
      result = 0x646120726568746FLL;
      break;
    case 7:
      v2 = 544829025;
LABEL_8:
      result = v2 | 0x7264646100000000;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

SiriInference::PersonPlaceName::Prefix_optional __swiftcall PersonPlaceName.Prefix.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_32_1();
  v2 = sub_1DD640AA8();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t PersonPlaceName.Prefix.rawValue.getter()
{
  v1 = 0x6973736573736F70;
  if (*v0 != 1)
  {
    v1 = 1918985582;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28265;
  }
}

SiriInference::PersonPlaceName::Suffix_optional __swiftcall PersonPlaceName.Suffix.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_32_1();
  v2 = sub_1DD640AA8();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1DD54AEEC()
{
  v1 = 1701670728;
  switch(*v0)
  {
    case 1:
      v1 = 1802661719;
      break;
    case 2:
    case 3:
    case 6:
    case 7:
    case 8:
      sub_1DD3B7F10();
      v1 = sub_1DD640658();

      break;
    case 4:
      v1 = 0x6C6F6F686353;
      break;
    case 5:
      v1 = 7174471;
      break;
    default:
      return v1;
  }

  return v1;
}

SiriInference::PersonPlaceName::BoundedValue_optional __swiftcall PersonPlaceName.BoundedValue.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_32_1();
  v2 = sub_1DD640AA8();

  v4 = 9;
  if (v2 < 9)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1DD54B0A8@<X0>(uint64_t *a1@<X8>)
{
  result = PersonPlaceName.BoundedValue.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PersonPlaceName.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static PersonPlaceName.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 17);
  v3 = *(a1 + 18);
  v4 = *(a2 + 17);
  v5 = *(a2 + 18);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (v3 == 3)
  {
    if (v5 != 3)
    {
      return 0;
    }
  }

  else if (v5 == 3 || (sub_1DD3B2D9C() & 1) == 0)
  {
    return 0;
  }

  result = v4 == 3 && v2 == 3;
  if (v2 != 3 && v4 != 3)
  {

    return sub_1DD3B2D9C();
  }

  return result;
}

uint64_t sub_1DD54B2A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x566465646E756F62 && a2 == 0xEC00000065756C61;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x786966667573 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x786966657270 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD640CD8();

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

uint64_t sub_1DD54B3FC(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x566465646E756F62;
      break;
    case 2:
      result = 0x786966667573;
      break;
    case 3:
      result = 0x786966657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD54B480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD54B2A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD54B4A8(uint64_t a1)
{
  v2 = sub_1DD54B978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD54B4E4(uint64_t a1)
{
  v2 = sub_1DD54B978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonPlaceName.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE980, &qword_1DD65A138);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = v1[16];
  v24 = v1[17];
  v25 = v9;
  HIDWORD(v23) = v1[18];
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_1DD54B978();
  sub_1DD640EF8();
  v31[1] = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v14 = BYTE4(v23);
    v15 = v24;
    v31[0] = v25;
    v30 = 1;
    v16 = sub_1DD54B9CC();
    OUTLINED_FUNCTION_4_68(v31, &v30, v17, &type metadata for PersonPlaceName.BoundedValue, v16);
    v29 = v15;
    v28 = 2;
    v18 = sub_1DD54BA20();
    OUTLINED_FUNCTION_4_68(&v29, &v28, v19, &type metadata for PersonPlaceName.Suffix, v18);
    v27 = v14;
    v26 = 3;
    v20 = sub_1DD54BA74();
    OUTLINED_FUNCTION_4_68(&v27, &v26, v21, &type metadata for PersonPlaceName.Prefix, v20);
  }

  return (*(v5 + 8))(v8, v13);
}

uint64_t PersonPlaceName.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE9A8, &qword_1DD65A140);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD54B978();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17[2] = 0;
  v6 = sub_1DD640B28();
  v8 = v7;
  v17[0] = 1;
  sub_1DD54BAC8();
  OUTLINED_FUNCTION_3_4(&type metadata for PersonPlaceName.BoundedValue, v17);
  v14 = v17[1];
  v16[0] = 2;
  sub_1DD54BB1C();
  OUTLINED_FUNCTION_3_4(&type metadata for PersonPlaceName.Suffix, v16);
  v13 = v16[1];
  v15[0] = 3;
  sub_1DD54BB70();
  OUTLINED_FUNCTION_3_4(&type metadata for PersonPlaceName.Prefix, v15);
  v10 = OUTLINED_FUNCTION_0_0();
  v11(v10);
  v12 = v15[1];
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v14;
  *(a2 + 17) = v13;
  *(a2 + 18) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD54B978()
{
  result = qword_1ECCDE988;
  if (!qword_1ECCDE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE988);
  }

  return result;
}

unint64_t sub_1DD54B9CC()
{
  result = qword_1ECCDE990;
  if (!qword_1ECCDE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE990);
  }

  return result;
}

unint64_t sub_1DD54BA20()
{
  result = qword_1ECCDE998;
  if (!qword_1ECCDE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE998);
  }

  return result;
}

unint64_t sub_1DD54BA74()
{
  result = qword_1ECCDE9A0;
  if (!qword_1ECCDE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9A0);
  }

  return result;
}

unint64_t sub_1DD54BAC8()
{
  result = qword_1ECCDE9B0;
  if (!qword_1ECCDE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9B0);
  }

  return result;
}

unint64_t sub_1DD54BB1C()
{
  result = qword_1ECCDE9B8;
  if (!qword_1ECCDE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9B8);
  }

  return result;
}

unint64_t sub_1DD54BB70()
{
  result = qword_1ECCDE9C0;
  if (!qword_1ECCDE9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9C0);
  }

  return result;
}

unint64_t sub_1DD54BBC8()
{
  result = qword_1ECCDE9C8;
  if (!qword_1ECCDE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9C8);
  }

  return result;
}

unint64_t sub_1DD54BC20()
{
  result = qword_1ECCDE9D0;
  if (!qword_1ECCDE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9D0);
  }

  return result;
}

unint64_t sub_1DD54BC78()
{
  result = qword_1ECCDE9D8;
  if (!qword_1ECCDE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9D8);
  }

  return result;
}

_BYTE *sub_1DD54BCE4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}