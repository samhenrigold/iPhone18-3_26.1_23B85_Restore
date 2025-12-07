uint64_t sub_2239DEAB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2239CDC74(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_2239DAF30();
      goto LABEL_7;
    }

    sub_2239D9194(v15, a4 & 1);
    v26 = sub_2239CDC74(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_223A21910();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_223A20680();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_2239DEC38(v12, a2, a3, a1, v18);
}

uint64_t sub_2239DEC38(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_223A20680();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_2239DECE8(uint64_t a1, int a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v26 - v6);
  v8 = sub_223A20B90();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 3)
  {
    result = swift_beginAccess();
    v13 = *(v2 + 16);
    v14 = *(v13 + 16);
    if (v14)
    {
      v26[2] = a1;
      v27 = v2;
      v15 = *MEMORY[0x277CEF9B0];
      v16 = *(v9 + 104);
      v26[1] = v12;
      v16(v12, v15, v8);
      v17 = sub_2239D83E0(v14, 0);
      v18 = sub_2239D86F4(&v29, v17 + 4, v14, v13);
      swift_bridgeObjectRetain_n();
      sub_2239CE254();
      if (v18 == v14)
      {
        v29 = v17;
        sub_2239D8090(&v29);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A90, &unk_223A233A0);
        sub_2239D18A4();
        v19 = sub_223A211D0();
        v21 = v20;

        *v7 = v19;
        v7[1] = v21;
        v22 = *MEMORY[0x277CEF860];
        v23 = sub_223A20680();
        v24 = *(v23 - 8);
        (*(v24 + 104))(v7, v22, v23);
        (*(v24 + 56))(v7, 0, 1, v23);
        sub_223A21160();
        v25 = v27;
        swift_beginAccess();
        if (*(*(v25 + 16) + 16))
        {
          swift_isUniquelyReferenced_nonNull_native();
          v28 = *(v25 + 16);
          *(v25 + 16) = 0x8000000000000000;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B68, &unk_223A23710);
          sub_223A21670();
          *(v25 + 16) = v28;
        }

        return swift_endAccess();
      }

      else
      {
        __break(1u);

        __break(1u);
      }
    }
  }

  return result;
}

void *sub_2239DF02C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

unint64_t sub_2239DF230()
{
  result = qword_2813336F8;
  if (!qword_2813336F8)
  {
    sub_223A20680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813336F8);
  }

  return result;
}

void SummaryDecoratorWorker.addDecoratorData(_:operatingSystem:)(uint64_t a1, uint64_t a2)
{
  v193 = a2;
  v205 = sub_223A207D0();
  v4 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v204 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_223A20900();
  v6 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v210 = &v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v180 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v192 = (&v169 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v174 = &v169 - v14;
  MEMORY[0x28223BE20](v13);
  v195 = &v169 - v15;
  v218 = sub_223A20B90();
  v190 = *(v218 - 8);
  v16 = MEMORY[0x28223BE20](v218);
  v18 = (&v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v16);
  v176 = &v169 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v177 = &v169 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v179 = &v169 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v191 = &v169 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v173 = &v169 - v28;
  MEMORY[0x28223BE20](v27);
  v194 = &v169 - v29;
  v232 = sub_223A20680();
  v233 = *(v232 - 8);
  v30 = MEMORY[0x28223BE20](v232);
  v32 = (&v169 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v228 = (&v169 - v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  MEMORY[0x28223BE20](v34 - 8);
  v223 = &v169 - v35;
  v36 = sub_223A20D20();
  v225 = *(v36 - 8);
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v169 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v212 = &v169 - v40;
  *&v41 = COERCE_DOUBLE(sub_2239E1088());
  if ((v44 & 1) == 0)
  {
    v45 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_summaryDecoratorStates);
    v239 = v36;
    if (v45 >> 62)
    {
      goto LABEL_101;
    }

    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v171 = v18;
    v172 = a1;
    v47 = *&v41;
    v48 = v42;
    if (v46)
    {
      v175 = 0;
      v200 = v2;
      v199 = (v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_session);
      v198 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_logger;
      v222 = v45 & 0xC000000000000001;
      v202 = v45 & 0xFFFFFFFFFFFFFF8;
      v216 = v45;
      v201 = v45 + 4;
      v220 = (v225 + 48);
      v207 = v225 + 32;
      v18 = (v225 + 8);
      v240 = "decoratorRunningMessage";
      v237 = v233 + 2;
      v238 = v233 + 11;
      LODWORD(v236) = *MEMORY[0x277CEF858];
      v231 = (v233 + 1);
      v230 = (v233 + 12);
      v188 = *MEMORY[0x277CEF958];
      v215 = (v190 + 104);
      v178 = *MEMORY[0x277CEF848];
      v169 = *MEMORY[0x277CEF930];
      v187 = (v6 + 104);
      v41 = v6 + 8;
      v186 = (v6 + 8);
      v6 = 0;
      v181 = *MEMORY[0x277CEF860];
      v197 = (v4 + 16);
      v196 = (v4 + 8);
      v185 = *MEMORY[0x277CEF980];
      *&v43 = 136381187;
      v182 = v43;
      v206 = xmmword_223A23280;
      v184 = *MEMORY[0x277CEF8C0];
      v49 = 0.0;
      v170 = *MEMORY[0x277CEF968];
      v50 = 0.0;
      v214 = (v190 + 8);
      v213 = (v233 + 6);
      a1 = v232;
      v219 = v32;
      v32 = (v225 + 16);
      v45 = v228;
      v2 = v223;
      v221 = v46;
      v234 = v225 + 16;
      while (1)
      {
        if (v222)
        {
          *&v41 = COERCE_DOUBLE(MEMORY[0x223DF07F0](v6, v216));
          v4 = v41;
          v51 = __OFADD__(v6++, 1);
          if (v51)
          {
            goto LABEL_99;
          }
        }

        else
        {
          if (v6 >= *(v202 + 16))
          {
            goto LABEL_100;
          }

          v4 = *&v201[v6];
          *&v41 = COERCE_DOUBLE();
          v51 = __OFADD__(v6++, 1);
          if (v51)
          {
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            v166 = v41;
            v167 = v42;
            v168 = sub_223A21780();
            v42 = v167;
            v36 = v239;
            v46 = v168;
            v41 = v166;
            goto LABEL_4;
          }
        }

        v52 = OBJC_IVAR____TtC22AudioAnalyticsExternal29DurationSummaryDecoratorState_decoratorRunningMessage;
        swift_beginAccess();
        sub_2239E1310(v4 + v52, v2);
        v53 = (*v220)(v2, 1, v36);
        v226 = v6;
        v227 = v4;
        if (v53 == 1)
        {
          sub_2239CDCEC(v2, &qword_27D0A4B38, " >");
          swift_beginAccess();

          v4 = *(v54 + 16);
          if (v4)
          {
            break;
          }

          goto LABEL_83;
        }

        v104 = v225;
        v105 = v212;
        (*(v225 + 32))(v212, v2, v36);
        v106 = OBJC_IVAR____TtC22AudioAnalyticsExternal29DurationSummaryDecoratorState_completeDecoratorMessages;
        swift_beginAccess();
        v107 = *(v4 + v106);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BE0, &unk_223A23A10);
        v108 = (*(v104 + 80) + 32) & ~*(v104 + 80);
        v109 = swift_allocObject();
        *(v109 + 16) = v206;
        (*(v104 + 16))(v109 + v108, v105, v239);
        v244 = v107;

        v110 = v109;
        v36 = v239;
        sub_223A15F7C(v110, sub_2239DF208, MEMORY[0x277CEFA10]);
        v111 = v105;
        a1 = v232;
        (*(v104 + 8))(v111, v36);
        v54 = v244;
        v4 = *(v244 + 16);
        if (v4)
        {
          break;
        }

LABEL_83:

        v112 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_config;
        v241 = *v197;
        v113 = v227;
        v114 = v204;
        v115 = v205;
        (v241)(v204, v227 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_config, v205);

        v116 = sub_223A20700();
        v117 = *v196;
        (*v196)(v114, v115);
        v229 = MEMORY[0x223DEFF80](v116);
        v235 = v118;
        (v241)(v114, v113 + v112, v115);

        v119 = sub_223A20740();
        v120 = v115;
        v121 = v235;
        v117(v114, v120);
        v122 = MEMORY[0x223DEFFA0](v119);
        v4 = v123;
        __swift_project_boxed_opaque_existential_1(v199, v199[3]);
        v124 = sub_223A20950();

        v125 = sub_223A20FB0();
        v126 = sub_223A214D0();

        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v241 = v124;
          v128 = v127;
          v129 = swift_slowAlloc();
          v244 = v129;
          *v128 = v182;
          v130 = sub_2239E1910(v229, v121, &v244);

          *(v128 + 4) = v130;
          *(v128 + 12) = 2081;
          v131 = sub_2239E1910(v122, v4, &v244);

          *(v128 + 14) = v131;
          *(v128 + 22) = 2048;
          *(v128 + 24) = v241;
          _os_log_impl(&dword_2239C7000, v125, v126, "No decorator data found. { audioEventType=%{private}s, audioEventCategory=%{private}s, reporterID=%lld }", v128, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x223DF1300](v129, -1, -1);
          MEMORY[0x223DF1300](v128, -1, -1);
        }

        else
        {
        }

        a1 = v232;
        v45 = v228;
        v36 = v239;
        v32 = v234;
LABEL_7:
        v6 = v226;
        v2 = v223;
        if (v226 == v221)
        {
          goto LABEL_88;
        }
      }

      v55 = (*(v225 + 80) + 32) & ~*(v225 + 80);
      v224 = v54;
      v56 = v54 + v55;
      v57 = *(v225 + 72);
      v241 = *(v225 + 16);
      v235 = v57;
      (v241)(v39, v54 + v55, v36);
      while (1)
      {
        v58 = sub_223A20C40();
        if (!*(v58 + 16) || (v59 = sub_2239CDC74(0xD000000000000011, v240 | 0x8000000000000000), (v60 & 1) == 0))
        {

          (*v18)(v39, v36);
          goto LABEL_18;
        }

        v61 = v233;
        v62 = v233[9];
        v63 = v233[2];
        v63(v45, *(v58 + 56) + v62 * v59, a1);

        v64 = v61[11];
        v65 = v64(v45, a1);
        if (v65 != v236)
        {
          v36 = v239;
          (*v18)(v39, v239);
          (*v231)(v45, a1);
          goto LABEL_37;
        }

        v229 = *v230;
        v229(v45, a1);
        v66 = *v45;
        v67 = sub_223A20C40();
        if (!*(v67 + 16) || (v68 = sub_2239CDC74(0x7972616D6D75735FLL, 0xEF656D6954646E45), (v69 & 1) == 0))
        {

          v36 = v239;
          (*v18)(v39, v239);
          a1 = v232;
          goto LABEL_36;
        }

        v70 = *(v67 + 56) + v68 * v62;
        v71 = v219;
        a1 = v232;
        v63(v219, v70, v232);

        v72 = v64(v71, a1);
        if (v72 != v236)
        {
          v36 = v239;
          (*v18)(v39, v239);
          (*v231)(v71, a1);
          goto LABEL_36;
        }

        v229(v71, a1);
        v73 = *v71;
        if (v66 < v47)
        {
          v74 = v47;
        }

        else
        {
          v74 = v66;
        }

        if (v73 >= v48)
        {
          v73 = v48;
        }

        if (v74 >= v73)
        {
          v36 = v239;
          (*v18)(v39, v239);
LABEL_36:
          v45 = v228;
LABEL_37:
          v32 = v234;
LABEL_38:
          v57 = v235;
          goto LABEL_18;
        }

        v75 = v73 - v74;
        v76 = sub_223A20C40();
        v77 = v194;
        v78 = v218;
        v209 = *v215;
        v209(v194, v188, v218);
        v79 = v195;
        v217 = v76;
        sub_223A21150();
        v80 = *v214;
        (*v214)(v77, v78);
        v208 = *v213;
        if (v208(v79, 1, a1) == 1)
        {
LABEL_33:
          sub_2239CDCEC(v79, &qword_27D0A4928, &qword_223A22B40);
          goto LABEL_52;
        }

        v81 = v64(v79, a1);
        if (v81 != v178)
        {
          goto LABEL_51;
        }

        v229(v79, a1);
        if (*v79 != 1)
        {
          goto LABEL_52;
        }

        v82 = v173;
        v83 = v218;
        v209(v173, v169, v218);
        v79 = v174;
        sub_223A21150();
        v80(v82, v83);
        if (v208(v79, 1, a1) == 1)
        {
          goto LABEL_33;
        }

        v84 = v64(v79, a1);
        if (v84 == v181)
        {
          v229(v79, a1);
          v85 = *v79;
          v86 = *(v79 + 8);
          if (v85 == 28271 && v86 == 0xE200000000000000)
          {
            v87 = 1;
          }

          else
          {
            v87 = sub_223A218F0();
            if (v85 == 6710895 && v86 == 0xE300000000000000)
            {

              if (v87)
              {
LABEL_80:
                v36 = v239;
                (*v18)(v39, v239);

                v45 = v228;
                v32 = v234;
                v57 = v235;
                goto LABEL_64;
              }

LABEL_81:
              v36 = v239;
              (*v18)(v39, v239);

              v45 = v228;
              v32 = v234;
              v57 = v235;
              goto LABEL_73;
            }
          }

          v88 = sub_223A218F0();

          if (v87)
          {
            goto LABEL_80;
          }

          if (v88)
          {
            goto LABEL_81;
          }
        }

        else
        {
LABEL_51:
          (*v231)(v79, a1);
        }

LABEL_52:
        v89 = v191;
        v90 = v218;
        v209(v191, v185, v218);
        v91 = v192;
        sub_223A21150();
        v80(v89, v90);
        v92 = v208(v91, 1, a1);
        v189 = v80;
        if (v92 == 1)
        {
          sub_2239CDCEC(v91, &qword_27D0A4928, &qword_223A22B40);
        }

        else
        {
          v93 = v64(v91, a1);
          if (v93 == v181)
          {
            v94 = (v229)(v91, a1);
            v95 = v91[1];
            v244 = *v91;
            v245 = v95;
            MEMORY[0x28223BE20](v94);
            *(&v169 - 2) = &v244;
            v96 = v175;
            v203 = sub_2239CF3F4(sub_2239D9828, (&v169 - 8), &unk_283702C40);
            v175 = v96;
            swift_arrayDestroy();

            a1 = v232;
            goto LABEL_58;
          }

          (*v231)(v91, a1);
        }

        v203 = 0;
LABEL_58:
        (*v187)(v210, v184, v211);
        sub_223A16444(&qword_2813336F0, MEMORY[0x277CEF8C8], MEMORY[0x277CEF8D0]);
        sub_223A21350();
        sub_223A21350();
        if (v244 == v242 && v245 == v243)
        {
          (*v186)(v210, v211);

          v45 = v228;
          v32 = v234;
LABEL_62:
          v36 = v239;
          (*v18)(v39, v239);

LABEL_63:
          v57 = v235;
          if ((v203 & 1) == 0)
          {
            goto LABEL_18;
          }

LABEL_64:
          v50 = v50 + v75;
          goto LABEL_18;
        }

        v183 = sub_223A218F0();
        (*v186)(v210, v211);

        v45 = v228;
        v32 = v234;
        if (v183)
        {
          goto LABEL_62;
        }

        v97 = v179;
        v98 = v218;
        v209(v179, v170, v218);
        v99 = v180;
        sub_223A21150();

        v100 = v98;
        v101 = v99;
        v189(v97, v100);
        if (v208(v99, 1, a1) == 1)
        {
          v36 = v239;
          (*v18)(v39, v239);
          sub_2239CDCEC(v101, &qword_27D0A4928, &qword_223A22B40);
          v45 = v228;
          v32 = v234;
          goto LABEL_72;
        }

        v102 = v64(v99, a1);
        v45 = v228;
        v36 = v239;
        v32 = v234;
        if (v102 != v181)
        {
          (*v18)(v39, v239);
          (*v231)(v101, a1);
LABEL_72:
          v57 = v235;
          if ((v203 & 1) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_73;
        }

        v229(v101, a1);
        if (*v101 == 49 && *(v101 + 1) == 0xE100000000000000)
        {

          (*v18)(v39, v36);
          goto LABEL_63;
        }

        v103 = sub_223A218F0();

        (*v18)(v39, v36);
        if ((v203 & 1) == 0)
        {
          goto LABEL_38;
        }

        v57 = v235;
        if (v103)
        {
          goto LABEL_64;
        }

LABEL_73:
        v49 = v49 + v75;
LABEL_18:
        v56 += v57;
        if (!--v4)
        {

          *&v41 = COERCE_DOUBLE();
          goto LABEL_7;
        }

        (v241)(v39, v56, v36);
      }
    }

    v49 = 0.0;
    v50 = 0.0;
LABEL_88:
    v132 = round(v48 - v47 - v50 - v49);
    if ((*&v132 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v132 > -9.22337204e18)
    {
      if (v132 < 9.22337204e18)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DA0, &unk_223A24290);
        v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
        v134 = (*(*(v133 - 8) + 80) + 32) & ~*(*(v133 - 8) + 80);
        v241 = *(*(v133 - 8) + 72);
        v135 = swift_allocObject();
        *(v135 + 16) = xmmword_223A224A0;
        v136 = (v135 + v134);
        v137 = *(v133 + 48);
        v138 = *MEMORY[0x277CEF998];
        v139 = v190;
        v140 = v177;
        v141 = v218;
        v240 = *(v190 + 104);
        (v240)(v177, v138, v218);
        v142 = sub_223A20B80();
        v144 = v143;
        v145 = *(v139 + 8);
        v190 = v139 + 8;
        v239 = v145;
        v145(v140, v141);
        *v136 = v142;
        v136[1] = v144;
        v146 = round(v50);
        if ((*&v146 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v146 > -9.22337204e18)
          {
            if (v146 < 9.22337204e18)
            {
              v237 = v135;
              *(v136 + v137) = v146;
              v147 = *MEMORY[0x277CEF840];
              v235 = v233[13];
              v235(v136 + v137, v147, v232);
              v236 = v136;
              v148 = (v136 + v241);
              v238 = v133;
              v149 = *(v133 + 48);
              v150 = v176;
              v151 = v218;
              (v240)(v176, *MEMORY[0x277CEF990], v218);
              v152 = sub_223A20B80();
              v154 = v153;
              v239(v150, v151);
              *v148 = v152;
              v148[1] = v154;
              v155 = round(v49);
              if ((*&v155 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v155 > -9.22337204e18)
                {
                  if (v155 < 9.22337204e18)
                  {
                    v234 = v132;
                    *(v148 + v149) = v155;
                    v156 = v147;
                    v157 = v232;
                    LODWORD(v233) = v147;
                    v158 = v235;
                    v235(v148 + v149, v156, v232);
                    v159 = (v236 + 2 * v241);
                    v160 = *(v238 + 12);
                    v161 = v171;
                    v162 = v218;
                    (v240)(v171, *MEMORY[0x277CEF978], v218);
                    v163 = sub_223A20B80();
                    v165 = v164;
                    v239(v161, v162);
                    *v159 = v163;
                    v159[1] = v165;
                    *(v159 + v160) = v234;
                    v158(v159 + v160, v233, v157);
                    sub_2239D4EE0(v237);
                    swift_setDeallocating();
                    swift_arrayDestroy();
                    swift_deallocClassInstance();
                    sub_223A20C00();

                    return;
                  }

LABEL_110:
                  __break(1u);
                  return;
                }

LABEL_109:
                __break(1u);
                goto LABEL_110;
              }

LABEL_108:
              __break(1u);
              goto LABEL_109;
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

    __break(1u);
    goto LABEL_104;
  }
}

uint64_t sub_2239E1088()
{
  v0 = sub_223A20680();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = (v20 - v5);
  v7 = sub_223A20C40();
  if (!*(v7 + 16))
  {
    goto LABEL_8;
  }

  v8 = sub_2239CDC74(0xD000000000000011, 0x8000000223A25560);
  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(v1 + 72);
  v11 = *(v7 + 56) + v10 * v8;
  v22 = *(v1 + 16);
  v22(v6, v11, v0);

  v12 = *(v1 + 88);
  v13 = v12(v6, v0);
  if (v13 != *MEMORY[0x277CEF858])
  {
    (*(v1 + 8))(v6, v0);
    return 0;
  }

  v21 = v13;
  v20[0] = *(v1 + 96);
  v20[1] = v1 + 96;
  (v20[0])(v6, v0);
  v14 = *v6;
  v15 = sub_223A20C40();
  if (*(v15 + 16) && (v16 = sub_2239CDC74(0x7972616D6D75735FLL, 0xEF656D6954646E45), (v17 & 1) != 0))
  {
    v22(v4, *(v15 + 56) + v16 * v10, v0);

    v18 = v12(v4, v0);
    if (v18 == v21)
    {
      (v20[0])(v4, v0);
      return v14;
    }

    (*(v1 + 8))(v4, v0);
  }

  else
  {
LABEL_8:
  }

  return 0;
}

uint64_t sub_2239E1310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2239E13A4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isAVSession;
  swift_beginAccess();
  if (*(v1 + v2) & 1) != 0 || (v3 = sub_2239EFF04(), *(v1 + v2) = v3 & 1, (v3))
  {
    v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isStarted;
    swift_beginAccess();
    if (*(v1 + v4) == 1)
    {
      v5 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_hasMarkedAVSessionStart;
      swift_beginAccess();
      if (*(v1 + v5))
      {
        sub_2239F01FC();
        if ((v6 & 1) == 0)
        {
          if (qword_27D0A47C0 != -1)
          {
            swift_once();
          }

          sub_223A20F30();
        }
      }

      else
      {

        v7 = sub_223A20FB0();
        v8 = sub_223A214D0();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 134217984;
          __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
          *(v9 + 4) = sub_223A20950();

          _os_log_impl(&dword_2239C7000, v7, v8, "Found AV device, starting AV session. { reporterID=%lld }", v9, 0xCu);
          MEMORY[0x223DF1300](v9, -1, -1);
        }

        else
        {
        }

        if (qword_27D0A47C0 != -1)
        {
          swift_once();
        }

        __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
        v10 = sub_223A20950();
        __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
        v11 = sub_223A209C0();
        sub_2239ECD44(v10, v11, v12);

        *(v1 + v5) = 1;
      }
    }
  }
}

uint64_t sub_2239E1670@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_2239E16FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_workerConfig;
  v5 = sub_223A20BC0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_2239E1778@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

char *sub_2239E1804(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AA0, &unk_223A23390);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2239E1910(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2239E19DC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2239D17A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2239E19DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2239E6EC8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_223A21720();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

Swift::Void __swiftcall InferenceSummaryWorker.stop()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A80, &qword_223A23270);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v62 - v3;
  v5 = sub_223A20D20();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x28223BE20](v5);
  v64 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_223A20B90();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v71 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v62 - v11;
  v13 = type metadata accessor for InferenceSummaryState(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v62 - v17;
  swift_beginAccess();
  *(v1 + 16) = 0;
  v19 = (v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_summaryState);
  swift_beginAccess();
  sub_2239CF7E0(v19, v18);
  if ((v18[16] & 1) != 0 || *(v18 + 3))
  {
    sub_2239D62FC(v18, type metadata accessor for InferenceSummaryState);
  }

  else
  {
    v61 = *(*(v18 + 5) + 16);
    sub_2239D62FC(v18, type metadata accessor for InferenceSummaryState);
    if (!v61)
    {
      goto LABEL_28;
    }
  }

  v69 = v8;
  v70 = v7;
  v63 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E8, &unk_223A22E10);
  inited = swift_initStackObject();
  v21 = inited;
  *(inited + 16) = xmmword_223A23B90;
  *(inited + 32) = 0x65646F6D5F757063;
  v68 = inited + 32;
  *(inited + 40) = 0xE90000000000006CLL;
  v22 = *v19;
  v23 = v19[1];
  v24 = MEMORY[0x277D837D0];
  if (!v23)
  {
    v22 = 0x6E776F6E6B6E75;
  }

  v25 = 0xE700000000000000;
  if (v23)
  {
    v25 = v19[1];
  }

  *(inited + 48) = v22;
  *(inited + 56) = v25;
  *(inited + 72) = v24;
  *(inited + 80) = 0xD000000000000019;
  *(inited + 88) = 0x8000000223A25CE0;
  v26 = MEMORY[0x277D839F8];
  *(inited + 96) = v19[4];
  *(inited + 120) = v26;
  *(inited + 128) = 0xD000000000000017;
  *(inited + 136) = 0x8000000223A25D00;
  v27 = MEMORY[0x277D84D38];
  *(inited + 144) = v19[3];
  *(inited + 168) = v27;
  *(inited + 176) = 0xD000000000000016;
  *(inited + 184) = 0x8000000223A25D20;
  sub_2239CF7E0(v19, v16);
  v28 = *(v16 + 3);
  v72 = v1;
  if (v28)
  {
    v29 = *(v16 + 4);

    sub_2239D62FC(v16, type metadata accessor for InferenceSummaryState);
    v30 = 0.0;
    if (v29 > 0.0)
    {
      v30 = v28 / v29;
    }
  }

  else
  {

    sub_2239D62FC(v16, type metadata accessor for InferenceSummaryState);
    v30 = 0.0;
  }

  *(v21 + 192) = v30;
  *(v21 + 216) = v26;
  *(v21 + 224) = 0xD00000000000001ALL;
  *(v21 + 232) = 0x8000000223A25D40;
  *(v21 + 240) = v19[6];
  *(v21 + 264) = v26;
  *(v21 + 272) = 0xD000000000000012;
  *(v21 + 280) = 0x8000000223A25D60;
  *(v21 + 288) = v19[7];
  *(v21 + 312) = v26;
  *(v21 + 320) = 0xD00000000000001ELL;
  *(v21 + 328) = 0x8000000223A25D80;
  v31 = v19[8];
  *(v21 + 360) = v26;
  *(v21 + 336) = v31;
  v32 = *MEMORY[0x277CEF910];
  v34 = v69;
  v33 = v70;
  v67 = *(v69 + 104);
  v67(v12, v32, v70);
  v35 = sub_223A20B80();
  v37 = v36;
  v69 = *(v34 + 8);
  (v69)(v12, v33);
  *(v21 + 368) = v35;
  *(v21 + 376) = v37;
  v38 = (v72 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_session);
  __swift_project_boxed_opaque_existential_1((v72 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_session), *(v72 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_session + 24));
  v39 = sub_223A209C0();
  *(v21 + 408) = MEMORY[0x277D837D0];
  *(v21 + 384) = v39;
  *(v21 + 392) = v40;
  v41 = v71;
  v67(v71, *MEMORY[0x277CEF900], v33);
  v42 = sub_223A20B80();
  v44 = v43;
  (v69)(v41, v33);
  *(v21 + 416) = v42;
  *(v21 + 424) = v44;
  v46 = v19[9];
  v45 = v19[10];
  *(v21 + 456) = MEMORY[0x277D837D0];
  if (!v45)
  {
    v46 = 0x6E776F6E6B6E75;
  }

  v47 = 0xE700000000000000;
  if (v45)
  {
    v47 = v45;
  }

  *(v21 + 432) = v46;
  *(v21 + 440) = v47;

  v48 = sub_2239DC6E4(v21);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48F0, &qword_223A22810);
  swift_arrayDestroy();

  v50 = sub_2239E23D0(v49);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73[0] = v48;
  sub_2239E2618(v50, sub_223A10484, 0, isUniquelyReferenced_nonNull_native, v73);

  v52 = sub_223A21170();

  if (v52)
  {
    v53 = sub_223A20CA0();
    (*(*(v53 - 8) + 56))(v63, 1, 1, v53);
    v54 = v64;
    sub_223A20CB0();
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    if ((sub_223A20980() & 1) == 0)
    {

      v55 = sub_223A20FB0();
      v56 = sub_223A214E0();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 134217984;
        __swift_project_boxed_opaque_existential_1(v38, v38[3]);
        *(v57 + 4) = sub_223A20950();

        _os_log_impl(&dword_2239C7000, v55, v56, "Summary message dropped { reporterID=%lld }", v57, 0xCu);
        MEMORY[0x223DF1300](v57, -1, -1);
      }

      else
      {
      }
    }

    (*(v65 + 8))(v54, v66);
  }

  else
  {

    v58 = sub_223A20FB0();
    v59 = sub_223A214E0();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      __swift_project_boxed_opaque_existential_1(v38, v38[3]);
      *(v60 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v58, v59, "Could not convert summary contents to SimpleType! Dropping. { reporterID=%lld }", v60, 0xCu);
      MEMORY[0x223DF1300](v60, -1, -1);
    }

    else
    {
    }
  }

LABEL_28:
  sub_2239E4AB4();
}

unint64_t sub_2239E23D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C18, &qword_223A23910);
    v2 = sub_223A217C0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_2239DA0A8(&v22, v24);
        sub_2239DA0A8(v24, v25);
        sub_2239DA0A8(v25, &v23);
        result = sub_2239CDC74(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_2239DA0A8(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_2239DA0A8(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_2239E2618(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;

  sub_2239E4954(&v46);
  v12 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    goto LABEL_25;
  }

  v13 = v46;
  sub_2239DA0A8(v47, v45);
  v14 = *a5;
  result = sub_2239CDC74(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_223A08DF4(v20, a4 & 1);
    result = sub_2239CDC74(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_223A21910();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_223A096DC();
    result = v26;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_2239D17A8(*(*a5 + 56) + 32 * result, v44);
    __swift_destroy_boxed_opaque_existential_0(v45);

    v25 = *(v23 + 56);
    __swift_destroy_boxed_opaque_existential_0((v25 + v24));
    sub_2239DA0A8(v44, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v28 = (v27[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_2239DA0A8(v45, (v27[7] + 32 * result));
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v27[2] = v30;
LABEL_15:
    sub_2239E4954(&v46);
    v12 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v46;
        sub_2239DA0A8(v47, v45);
        v34 = *a5;
        result = sub_2239CDC74(v13, v12);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (*(v34 + 24) < v38)
        {
          sub_223A08DF4(v38, 1);
          result = sub_2239CDC74(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 32 * result;
          sub_2239D17A8(*(*a5 + 56) + 32 * result, v44);
          __swift_destroy_boxed_opaque_existential_0(v45);

          v33 = *(v31 + 56);
          __swift_destroy_boxed_opaque_existential_0((v33 + v32));
          sub_2239DA0A8(v44, (v33 + v32));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_2239DA0A8(v45, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_2239E4954(&v46);
        v12 = *(&v46 + 1);
      }

      while (*(&v46 + 1));
    }

LABEL_25:
    sub_2239CE254();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2239E2978()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isStarted;
  result = swift_beginAccess();
  if (*(v0 + v2) == 1)
  {
    v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_hasMarkedAVSessionStart;
    result = swift_beginAccess();
    if (*(v0 + v4) == 1)
    {

      v5 = sub_223A20FB0();
      v6 = sub_223A214D0();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 134217984;
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        *(v7 + 4) = sub_223A20950();

        _os_log_impl(&dword_2239C7000, v5, v6, "Stopping AV session. { reporterID=%lld }", v7, 0xCu);
        MEMORY[0x223DF1300](v7, -1, -1);
      }

      else
      {
      }

      if (qword_27D0A47C0 != -1)
      {
        swift_once();
      }

      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v8 = sub_223A20950();
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v9 = sub_223A209C0();
      sub_2239ED638(v8, v9, v10);

      v11 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isAVSession;
      result = swift_beginAccess();
      *(v1 + v11) = 0;
      *(v1 + v4) = 0;
    }

    *(v1 + v2) = 0;
  }

  return result;
}

uint64_t sub_2239E2BC0()
{
  result = swift_beginAccess();
  if (*(v0 + 16) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_isAirPodSession) == 1)
    {
      if (qword_27D0A47D8 != -1)
      {
        result = swift_once();
      }

      if (qword_27D0A4E18)
      {
        __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_session), *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_session + 24));
        v2 = sub_223A20950();
        result = sub_2239F137C(v2);
      }
    }

    *(v0 + 16) = 0;
  }

  return result;
}

uint64_t sub_2239E2CA0()
{
  v1 = *v0;
  __swift_project_boxed_opaque_existential_1((*v0 + 24), *(*v0 + 48));
  if ((sub_223A20940() & 1) == 0)
  {
    sub_2239E2D20(1886352499, 0xE400000000000000);
  }

  result = swift_beginAccess();
  *(v1 + 16) = 0;
  return result;
}

uint64_t sub_2239E2D20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A80, &qword_223A23270);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = sub_223A20D20();
  result = MEMORY[0x28223BE20](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_rmsState;
  if ((*(v3 + 82) & 1) == 0)
  {
    v15 = *(*(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_rmsState) + 80);
    v16 = (v15 * 10) >> 64;
    v17 = 10 * v15;
    if (v16 != v17 >> 63)
    {
      __break(1u);
      return result;
    }

    if (v17 >= 60)
    {
      v37 = v13;
      v38 = v8;
      v39 = v11;
      v40 = result;
      v41 = *(v3 + 80);
      __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
      sub_223A20970();
      v18 = sub_223A20E50();
      v20 = v19;

      __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
      v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
      v22 = sub_223A11188(v18, v20, v21, a1, a2);

      if (v22)
      {

        v23 = sub_223A20FB0();
        v24 = sub_223A214D0();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v42 = v26;
          *v25 = 134218243;
          __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
          *(v25 + 4) = sub_223A20950();

          *(v25 + 12) = 2081;
          v27 = sub_223A21120();
          v29 = sub_2239E1910(v27, v28, &v42);

          *(v25 + 14) = v29;
          _os_log_impl(&dword_2239C7000, v23, v24, "Sending RMS message to PowerLog. { reporterID=%lld, message=%{private}s }", v25, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v26);
          MEMORY[0x223DF1300](v26, -1, -1);
          MEMORY[0x223DF1300](v25, -1, -1);
        }

        else
        {
        }

        v31 = sub_223A211F0();
        v32 = sub_223A21100();
        PLLogRegisteredEvent();

        v33 = sub_223A21170();

        if (v33)
        {
          sub_223A20E70();
          v34 = sub_223A20CA0();
          (*(*(v34 - 8) + 56))(v38, 1, 1, v34);
          v35 = v37;
          sub_223A20CB0();
          __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
          sub_223A20980();
          (*(v39 + 8))(v35, v40);
        }

        v36 = *(v3 + v14);
        *(v36 + 16) = 0;
        *(v36 + 24) = 0;
        *(v36 + 32) = 0;
        *(v36 + 40) = 0xFF7FFFFF7F7FFFFFLL;
        *(v36 + 48) = 0;
        *(v36 + 56) = 0xE000000000000000;

        *(v36 + 64) = 0;
        *(v36 + 72) = 1;
        *(v36 + 80) = 0;
      }

      v14 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_rmsState;
    }
  }

  v30 = *(v3 + v14);
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  *(v30 + 40) = 0xFF7FFFFF7F7FFFFFLL;
  *(v30 + 48) = 0;
  *(v30 + 56) = 0xE000000000000000;

  *(v30 + 64) = 0;
  *(v30 + 72) = 1;
  *(v30 + 80) = 0;
}

Swift::Void __swiftcall SummaryDecoratorWorker.stop()()
{
  v1 = sub_223A20680();
  v87 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v88 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v81 = &v68 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC0, &unk_223A23780);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v68 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B80, &unk_223A23730);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v68 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v68 - v15;
  v17 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_summaryDecoratorStates);
  if (v17 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_223A21780())
  {
    v19 = 0;
    v73 = v17 & 0xC000000000000001;
    v69 = v17 & 0xFFFFFFFFFFFFFF8;
    v68 = v17 + 32;
    v86 = (v87 + 16);
    v20 = (v87 + 32);
    v79 = v87 + 40;
    v83 = v13;
    v70 = i;
    v80 = (v87 + 32);
    v84 = v10;
    v85 = v8;
    v72 = v16;
    v71 = v17;
    while (1)
    {
      if (v73)
      {
        v21 = MEMORY[0x223DF07F0](v19, v17);
      }

      else
      {
        if (v19 >= *(v69 + 16))
        {
          goto LABEL_50;
        }
      }

      v22 = __OFADD__(v19, 1);
      v23 = v19 + 1;
      if (v22)
      {
        break;
      }

      v24 = *(v21 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning) == 1;
      v76 = v23;
      v25 = v21;
      if (v24)
      {
        sub_2239DD3B0(0, v16);
      }

      else
      {
        v26 = sub_223A20D20();
        (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
      }

      sub_2239CDCEC(v16, &qword_27D0A4B38, " >");
      v13 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_config;
      v27 = *(sub_223A206F0() + 16);

      if (v27 + 0x4000000000000000 < 0)
      {
        goto LABEL_49;
      }

      v28 = MEMORY[0x223DF0210](2 * v27, MEMORY[0x277D837D0], v1, MEMORY[0x277D837E0]);
      v8 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_previousValues;
      swift_beginAccess();
      *(v25 + v8) = v28;

      v29 = sub_223A206F0();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(v25 + v8);
      v75 = v25;
      v74 = v8;
      *(v25 + v8) = 0x8000000000000000;
      v92 = v31;
      v32 = *(v29 + 64);
      v78 = v29 + 64;
      v33 = 1 << *(v29 + 32);
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      else
      {
        v34 = -1;
      }

      v17 = v34 & v32;
      v77 = (v33 + 63) >> 6;
      v82 = v29;
      v13 = v31;

      for (j = 0; ; j = v89)
      {
        v91 = v13;
        v90 = isUniquelyReferenced_nonNull_native;
        if (!v17)
        {
          if (v77 <= j + 1)
          {
            v37 = j + 1;
          }

          else
          {
            v37 = v77;
          }

          while (1)
          {
            v16 = j + 1;
            if (__OFADD__(j, 1))
            {
              break;
            }

            if (v16 >= v77)
            {
              v89 = v37 - 1;
              v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
              v46 = v84;
              (*(*(v67 - 8) + 56))(v84, 1, 1, v67);
              v17 = 0;
              goto LABEL_29;
            }

            v17 = *(v78 + 8 * v16);
            ++j;
            if (v17)
            {
              goto LABEL_28;
            }
          }

          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v16 = j;
LABEL_28:
        v38 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v39 = v38 | (v16 << 6);
        v40 = v81;
        v41 = (*(v82 + 48) + 16 * v39);
        v43 = *v41;
        v42 = v41[1];
        v44 = v87;
        (*(v87 + 16))(v81, *(v82 + 56) + *(v87 + 72) * v39, v1);
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
        v45 = *(v10 + 12);
        v46 = v84;
        *v84 = v43;
        *(v46 + 8) = v42;
        v47 = v40;
        v20 = v80;
        (*(v44 + 32))(v46 + v45, v47, v1);
        (*(*(v10 - 1) + 56))(v46, 0, 1, v10);

        v89 = v16;
LABEL_29:
        v48 = v85;
        sub_2239D0F08(v46, v85);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
        if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
        {
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
          v13 = v83;
          (*(*(v50 - 8) + 56))(v83, 1, 1, v50);
        }

        else
        {
          v51 = *(v49 + 48);
          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
          v53 = *v48;
          v10 = *(v48 + 1);
          v13 = v83;
          (*v86)(v83 + *(v52 + 48), &v48[v51], v1);
          *v13 = v53;
          v13[1] = v10;

          sub_2239CDCEC(v48, &qword_27D0A4B60, &qword_223A23760);
          (*(*(v52 - 8) + 56))(v13, 0, 1, v52);
        }

        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
        if ((*(*(v8 - 8) + 48))(v13, 1, v8) == 1)
        {
          break;
        }

        v10 = *v13;
        v16 = v13[1];
        v54 = *v20;
        v55 = v1;
        (*v20)(v88, v13 + *(v8 + 48), v1);
        v56 = v91;
        v1 = sub_2239CDC74(v10, v16);
        v58 = v56[2];
        v59 = (v57 & 1) == 0;
        v60 = v58 + v59;
        if (__OFADD__(v58, v59))
        {
          goto LABEL_46;
        }

        v8 = v57;
        if (v56[3] >= v60)
        {
          if (v90)
          {
            v13 = v92;
            if (v57)
            {
              goto LABEL_18;
            }
          }

          else
          {
            sub_2239DAF30();
            v13 = v92;
            if (v8)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
          sub_2239D9194(v60, v90 & 1);
          v61 = sub_2239CDC74(v10, v16);
          if ((v8 & 1) != (v62 & 1))
          {
            sub_223A21910();
            __break(1u);
            return;
          }

          v1 = v61;
          v13 = v92;
          if (v8)
          {
LABEL_18:

            v36 = v13[7] + *(v87 + 72) * v1;
            v1 = v55;
            (*(v87 + 40))(v36, v88, v55);
            goto LABEL_19;
          }
        }

        v13[(v1 >> 6) + 8] |= 1 << v1;
        v63 = (v13[6] + 16 * v1);
        *v63 = v10;
        v63[1] = v16;
        v64 = v13[7] + *(v87 + 72) * v1;
        v1 = v55;
        v54(v64, v88, v55);
        v65 = v13[2];
        v22 = __OFADD__(v65, 1);
        v66 = v65 + 1;
        if (v22)
        {
          goto LABEL_47;
        }

        v13[2] = v66;
LABEL_19:
        isUniquelyReferenced_nonNull_native = 1;
      }

      v13 = v75;
      *(v75 + v74) = v91;
      swift_endAccess();

      v19 = v76;
      v16 = v72;
      v17 = v71;
      if (v76 == v70)
      {
        return;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }
}

Swift::Void __swiftcall DurationSummaryWorker.stop()()
{
  v112 = sub_223A20680();
  v107 = *(v112 - 8);
  v1 = MEMORY[0x28223BE20](v112);
  v108 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v100 = &v78 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC0, &unk_223A23780);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v78.n128_u64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v105 = (v78.n128_u64 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B80, &unk_223A23730);
  MEMORY[0x28223BE20](v9 - 8);
  v102 = (&v78 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v78 - v12;
  v14 = sub_223A20D20();
  v15 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v88 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_summaryStates;
  swift_beginAccess();
  v18 = *(v0 + v17);
  v80 = v0;
  if (v18 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v0 = v80)
  {
    v86 = (v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_session);
    v91 = v18 & 0xC000000000000001;
    v79 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_logger;
    v82 = v18 & 0xFFFFFFFFFFFFFF8;
    v81 = v18 + 32;
    v85 = (v15 + 56);
    v106 = (v107 + 16);
    v101 = (v107 + 32);
    v99 = v107 + 40;
    v89 = (v15 + 48);
    v84 = (v15 + 32);
    v83 = (v15 + 8);
    v87 = v18;

    v15 = 0;
    v20.n128_u64[0] = 134217984;
    v78 = v20;
    v90 = i;
    v104 = v7;
    v93 = v13;
    v92 = v14;
    while (v91)
    {
      v18 = MEMORY[0x223DF07F0](v15, v87);
      v21 = v18;
      v22 = __OFADD__(v15++, 1);
      if (v22)
      {
        goto LABEL_60;
      }

LABEL_12:
      v23 = *(v21 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning) == 1;
      v95 = v15;
      if (v23)
      {
        sub_2239DD3B0(0, v13);
      }

      else
      {
        (*v85)(v13, 1, 1, v14);
      }

      v24 = v21;
      v15 = *(sub_223A206F0() + 16);

      if ((v15 + 0x4000000000000000) < 0)
      {
        goto LABEL_61;
      }

      v25 = MEMORY[0x223DF0210](2 * v15, MEMORY[0x277D837D0], v112, MEMORY[0x277D837E0]);
      v26 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_previousValues;
      swift_beginAccess();
      *(v21 + v26) = v25;

      v27 = sub_223A206F0();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *(v21 + v26);
      v96 = v24;
      v94 = v26;
      *(v24 + v26) = 0x8000000000000000;
      v113 = v29;
      v30 = *(v27 + 64);
      v98 = v27 + 64;
      v31 = 1 << *(v27 + 32);
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v7 = v32 & v30;
      v97 = (v31 + 63) >> 6;
      v103 = v27;

      v33 = 0;
      v34 = v102;
      v14 = v101;
      while (1)
      {
        v111 = v29;
        v110 = isUniquelyReferenced_nonNull_native;
        if (!v7)
        {
          if (v97 <= v33 + 1)
          {
            v37 = v33 + 1;
          }

          else
          {
            v37 = v97;
          }

          while (1)
          {
            v36 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              break;
            }

            if (v36 >= v97)
            {
              v109 = v37 - 1;
              v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
              v72 = v105;
              (*(*(v71 - 8) + 56))(v105, 1, 1, v71);
              v49 = v72;
              v7 = 0;
              goto LABEL_32;
            }

            v7 = *(v98 + 8 * v36);
            ++v33;
            if (v7)
            {
              v35 = v112;
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_56:

          v0 = v80;
          goto LABEL_57;
        }

        v35 = v112;
        v36 = v33;
LABEL_31:
        v38 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v39 = v38 | (v36 << 6);
        v40 = (*(v103 + 48) + 16 * v39);
        v42 = *v40;
        v41 = v40[1];
        v43 = v107;
        v44 = v100;
        (*(v107 + 16))(v100, *(v103 + 56) + *(v107 + 72) * v39, v35);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
        v46 = *(v45 + 48);
        v47 = v105;
        *v105 = v42;
        *(v47 + 1) = v41;
        v48 = v44;
        v14 = v101;
        (*(v43 + 32))(&v47[v46], v48, v35);
        (*(*(v45 - 8) + 56))(v47, 0, 1, v45);

        v109 = v36;
        v49 = v47;
        v34 = v102;
LABEL_32:
        v50 = v104;
        sub_2239CE130(v49, v104, &qword_27D0A4BC0, &unk_223A23780);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
        if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
        {
          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
          (*(*(v52 - 8) + 56))(v34, 1, 1, v52);
        }

        else
        {
          v53 = *(v51 + 48);
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
          v56 = *v50;
          v55 = v50[1];
          (*v106)(v34 + *(v54 + 48), v50 + v53, v112);
          *v34 = v56;
          v34[1] = v55;

          sub_2239CDCEC(v50, &qword_27D0A4B60, &qword_223A23760);
          (*(*(v54 - 8) + 56))(v34, 0, 1, v54);
        }

        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
        if ((*(*(v57 - 8) + 48))(v34, 1, v57) == 1)
        {
          break;
        }

        v58 = *v34;
        v13 = v34[1];
        v15 = *v14;
        v59 = v112;
        (*v14)(v108, v34 + *(v57 + 48));
        v60 = v111;
        v62 = sub_2239CDC74(v58, v13);
        v63 = v60[2];
        v64 = (v61 & 1) == 0;
        v18 = v63 + v64;
        if (__OFADD__(v63, v64))
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v65 = v61;
        if (v60[3] >= v18)
        {
          if (v110)
          {
            v29 = v113;
            if (v61)
            {
              goto LABEL_20;
            }
          }

          else
          {
            sub_2239DAF30();
            v29 = v113;
            if (v65)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
          sub_2239D9194(v18, v110 & 1);
          v66 = sub_2239CDC74(v58, v13);
          if ((v65 & 1) != (v67 & 1))
          {
            sub_223A21910();
            __break(1u);
            return;
          }

          v62 = v66;
          v29 = v113;
          if (v65)
          {
LABEL_20:

            (*(v107 + 40))(v29[7] + *(v107 + 72) * v62, v108, v59);
            goto LABEL_21;
          }
        }

        v29[(v62 >> 6) + 8] |= 1 << v62;
        v68 = (v29[6] + 16 * v62);
        *v68 = v58;
        v68[1] = v13;
        v18 = (v15)(v29[7] + *(v107 + 72) * v62, v108, v59);
        v69 = v29[2];
        v22 = __OFADD__(v69, 1);
        v70 = v69 + 1;
        if (v22)
        {
          goto LABEL_59;
        }

        v29[2] = v70;
LABEL_21:
        isUniquelyReferenced_nonNull_native = 1;
        v33 = v109;
      }

      *(v96 + v94) = v111;
      swift_endAccess();
      v13 = v93;
      v14 = v92;
      if ((*v89)(v93, 1, v92) == 1)
      {

        v18 = sub_2239CDCEC(v13, &qword_27D0A4B38, " >");
      }

      else
      {
        v73 = v88;
        (*v84)(v88, v13, v14);
        __swift_project_boxed_opaque_existential_1(v86, v86[3]);
        if (sub_223A20980())
        {
          (*v83)(v73, v14);
        }

        else
        {

          v74 = sub_223A20FB0();
          v75 = sub_223A214E0();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            *v76 = v78.n128_u32[0];
            __swift_project_boxed_opaque_existential_1(v86, v86[3]);
            v14 = v92;
            v13 = v93;
            *(v76 + 4) = sub_223A20950();

            _os_log_impl(&dword_2239C7000, v74, v75, "Summary message dropped { reporterID=%lld }", v76, 0xCu);
            MEMORY[0x223DF1300](v76, -1, -1);
          }

          else
          {
          }

          v18 = (*v83)(v88, v14);
        }
      }

      v15 = v95;
      if (v95 == v90)
      {
        goto LABEL_56;
      }
    }

    if (v15 >= *(v82 + 16))
    {
      goto LABEL_62;
    }

    v21 = *(v81 + 8 * v15);

    v22 = __OFADD__(v15++, 1);
    if (!v22)
    {
      goto LABEL_12;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v77 = v18;
    i = sub_223A21780();
    v18 = v77;
  }

LABEL_57:
  swift_beginAccess();
  *(v0 + 16) = 0;
}

void sub_2239E4954(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2239D17A8(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_2239DA0A8(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_2239CDCEC(v20, &qword_27D0A4AA8, &unk_223A23930);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2239E4AB4()
{
  v1 = type metadata accessor for InferenceSummaryState(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = MEMORY[0x277D84F98];
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 11) = 0xD000000000000026;
  *(v4 + 12) = 0x8000000223A25CB0;
  sub_223A20F70();
  v4[*(v2 + 68)] = 0;
  v5 = &v4[*(v2 + 72)];
  *v5 = 0;
  v5[8] = 1;
  v6 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_summaryState;
  swift_beginAccess();
  sub_2239D5D3C(v4, v0 + v6);
  return swift_endAccess();
}

unint64_t sub_2239E4BE4()
{
  result = qword_281332770;
  if (!qword_281332770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281332770);
  }

  return result;
}

unint64_t sub_2239E4C38()
{
  result = qword_281332768;
  if (!qword_281332768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281332768);
  }

  return result;
}

void sub_2239E4C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_223A20680();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_2239CDCEC(a1, &qword_27D0A4928, &qword_223A22B40);
    sub_223A12940(a2, a3, v9);

    sub_2239CDCEC(v9, &qword_27D0A4928, &qword_223A22B40);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_2239DEAB8(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v16;
  }
}

uint64_t PowerLogWorker.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_logger;
  v2 = sub_223A20FC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_workerConfig;
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_2239E4F58()
{

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall SessionSummaryWorker.stop()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A80, &qword_223A23270);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v79 - v3;
  v5 = sub_223A20D20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_223A20B90();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v98 = &v79 - v14;
  swift_beginAccess();
  *(v1 + 16) = 0;
  v15 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalMessageCount;
  if (*(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalMessageCount))
  {
    v92 = v10;
    v94 = v13;
    v95 = v9;
    v80 = v4;
    v81 = v8;
    v16 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_activeCount;
    v17 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_activeCount);
    v82 = v6;
    v83 = v5;
    if (v17)
    {
      v18 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalActiveTime) / v17;
    }

    else
    {
      v18 = 0.0;
    }

    v20 = (v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_session);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_session), *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_session + 24));
    sub_223A20960();
    sub_223A20EB0();
    v21 = sub_223A21250();
    v93 = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E8, &unk_223A22E10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_223A24030;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 40) = 0x8000000223A26240;
    v24 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalActiveTime;
    v25 = MEMORY[0x277D839F8];
    *(inited + 48) = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalActiveTime);
    *(inited + 72) = v25;
    strcpy((inited + 80), "active_count");
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    v26 = MEMORY[0x277D84D38];
    *(inited + 96) = *(v1 + v16);
    *(inited + 120) = v26;
    strcpy((inited + 128), "overload_count");
    *(inited + 143) = -18;
    v27 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_overloadCount;
    *(inited + 144) = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_overloadCount);
    *(inited + 168) = v26;
    *(inited + 176) = 0xD000000000000016;
    *(inited + 184) = 0x8000000223A26260;
    v28 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_audibleOverloadCount;
    v29 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_audibleOverloadCount);
    *(inited + 192) = v29;
    *(inited + 216) = v26;
    *(inited + 224) = 0xD000000000000018;
    *(inited + 232) = 0x8000000223A26280;
    v30 = MEMORY[0x277D839B0];
    *(inited + 240) = v29 != 0;
    *(inited + 264) = v30;
    *(inited + 272) = 0xD000000000000018;
    *(inited + 280) = 0x8000000223A262A0;
    *(inited + 288) = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_audiblePageFaultCount);
    *(inited + 312) = v26;
    *(inited + 320) = 0xD000000000000013;
    *(inited + 328) = 0x8000000223A262C0;
    *(inited + 336) = v18;
    *(inited + 360) = v25;
    strcpy((inited + 368), "num_messages");
    *(inited + 381) = 0;
    *(inited + 382) = -5120;
    v31 = *(v1 + v15);
    *(inited + 384) = v31;
    *(inited + 408) = v26;
    *(inited + 416) = 0xD000000000000013;
    *(inited + 424) = 0x8000000223A262E0;
    v32 = (v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_uniqueMessageCount);
    v33 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_uniqueMessageCount);
    *(inited + 432) = v33;
    *(inited + 456) = v26;
    *(inited + 464) = 0xD000000000000016;
    *(inited + 472) = 0x8000000223A26300;
    v34 = v31 >= v33;
    v35 = v31 - v33;
    if (!v34)
    {
      __break(1u);
      return;
    }

    v87 = v1;
    v88 = v32;
    v89 = v28;
    v90 = v27;
    v91 = v24;
    v96 = v16;
    v97 = v15;
    *(inited + 480) = v35;
    *(inited + 504) = v26;
    *(inited + 512) = 0xD000000000000014;
    *(inited + 520) = 0x8000000223A26320;
    v84 = v21;
    v85 = inited + 32;
    v36 = v30;
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v37 = sub_223A20940();
    *(inited + 552) = v36;
    *(inited + 528) = v37 & 1;
    v38 = *MEMORY[0x277CEF938];
    v39 = v92;
    v86 = v20;
    v40 = *(v92 + 104);
    v41 = v98;
    v42 = v95;
    v40(v98, v38, v95);
    v43 = sub_223A20B80();
    v45 = v44;
    v46 = *(v39 + 8);
    v46(v41, v42);
    *(inited + 560) = v43;
    *(inited + 568) = v45;
    *(inited + 600) = MEMORY[0x277D837D0];
    *(inited + 576) = v84;
    v47 = v94;
    *(inited + 584) = v93;
    v40(v47, *MEMORY[0x277CEF910], v42);
    v48 = v86;
    v49 = sub_223A20B80();
    v51 = v50;
    v46(v47, v42);
    *(inited + 608) = v49;
    *(inited + 616) = v51;
    __swift_project_boxed_opaque_existential_1(v48, v48[3]);
    v52 = sub_223A209C0();
    v53 = MEMORY[0x277D837D0];
    *(inited + 648) = MEMORY[0x277D837D0];
    *(inited + 624) = v52;
    *(inited + 632) = v54;
    *(inited + 656) = 0xD000000000000011;
    *(inited + 664) = 0x8000000223A26340;
    __swift_project_boxed_opaque_existential_1(v48, v48[3]);
    v55 = sub_223A20990();
    *(inited + 696) = v53;
    *(inited + 672) = v55;
    *(inited + 680) = v56;
    strcpy((inited + 704), "thermal_state");
    *(inited + 718) = -4864;
    sub_223A208A0();
    v57 = sub_223A208E0();
    *(inited + 744) = v53;
    *(inited + 720) = v57;
    *(inited + 728) = v58;
    *(inited + 752) = 0xD000000000000011;
    *(inited + 760) = 0x8000000223A26360;
    v59 = sub_223A20890();
    *(inited + 792) = MEMORY[0x277D83B88];
    *(inited + 768) = v59 & 1;
    sub_2239DC6E4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48F0, &qword_223A22810);
    swift_arrayDestroy();
    v60 = sub_223A21170();

    if (v60)
    {
      v61 = sub_223A20CA0();
      (*(*(v61 - 8) + 56))(v80, 1, 1, v61);
      v62 = v81;
      sub_223A20CB0();
      v63 = sub_223A20CD0();
      sub_223A20C90();
      v63(&v99, 0);
      __swift_project_boxed_opaque_existential_1(v48, v48[3]);
      v64 = sub_223A20980();
      v66 = v96;
      v65 = v97;
      v67 = v87;
      if ((v64 & 1) == 0)
      {

        v68 = sub_223A20FB0();
        v69 = sub_223A214E0();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 134217984;
          __swift_project_boxed_opaque_existential_1(v48, v48[3]);
          v66 = v96;
          v65 = v97;
          *(v70 + 4) = sub_223A20950();

          _os_log_impl(&dword_2239C7000, v68, v69, "Summary message dropped { reporterID=%lld }", v70, 0xCu);
          MEMORY[0x223DF1300](v70, -1, -1);
        }

        else
        {
        }
      }

      (*(v82 + 8))(v62, v83);
      v78 = v90;
      *(v67 + v91) = 0;
      *(v67 + v66) = 0;
      *(v67 + v78) = 0;
      v19 = v88;
      *(v67 + v89) = 0;
      *(v67 + v65) = 0;
    }

    else
    {
      v71 = v87;

      v72 = sub_223A20FB0();
      v73 = sub_223A214E0();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 134217984;
        __swift_project_boxed_opaque_existential_1(v48, v48[3]);
        *(v74 + 4) = sub_223A20950();

        _os_log_impl(&dword_2239C7000, v72, v73, "Could not convert summary contents to SimpleType! Dropping. { reporterID=%lld }", v74, 0xCu);
        MEMORY[0x223DF1300](v74, -1, -1);
      }

      else
      {
      }

      v76 = v96;
      v75 = v97;
      *(v71 + v91) = 0;
      *(v71 + v76) = 0;
      v77 = v89;
      *(v71 + v90) = 0;
      *(v71 + v77) = 0;
      *(v71 + v75) = 0;
      v19 = v88;
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalActiveTime) = 0;
    *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_activeCount) = 0;
    *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_overloadCount) = 0;
    *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_audibleOverloadCount) = 0;
    *(v1 + v15) = 0;
    v19 = (v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_uniqueMessageCount);
  }

  *v19 = 0;
}

uint64_t sub_2239E5950()
{
  v1 = *v0;
  result = swift_beginAccess();
  *(v1 + 16) = 0;
  return result;
}

Swift::Void __swiftcall RTCWorker.stop()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A80, &qword_223A23270);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v68 - v3;
  v5 = sub_223A20D20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v68 - v10;
  v86 = sub_223A20680();
  v12 = *(v86 - 8);
  v13 = MEMORY[0x28223BE20](v86);
  v85 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v68 - v15);
  v17 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_isStarted;
  swift_beginAccess();
  if (*(v1 + v17) != 1 || (v18 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReporting)) == 0)
  {

    v30 = sub_223A20FB0();
    v31 = sub_223A214D0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
      *(v32 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v30, v31, "RTC worker not started, skipping stop. { reporterID=%lld }", v32, 0xCu);
      MEMORY[0x223DF1300](v32, -1, -1);
    }

    else
    {
    }

    goto LABEL_31;
  }

  v82 = v16;
  v83 = v12;
  v19 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24);
  v74 = (v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), v19);
  v80 = v18;
  if ((sub_223A20940() & 1) != 0 || (v20 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_summaryEvents, swift_beginAccess(), v21 = *(v1 + v20), !*(v21 + 16)))
  {
LABEL_30:
    v67 = v80;
    [v80 flushMessages];

LABEL_31:
    sub_2239E889C();
    return;
  }

  v68 = v11;
  v69 = v8;
  v70 = v6;
  v71 = v4;
  v72 = v5;
  v22 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 64);
  v84 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_summaryEvent;
  v26 = (v23 + 63) >> 6;
  v78 = *MEMORY[0x277CEF860];
  v27 = v83;
  v79 = (v83 + 104);
  v81 = (v83 + 32);
  v73 = v83 + 40;

  v29 = 0;
  v76 = v22;
  v75 = v26;
  v77 = v28;
  while (v25)
  {
LABEL_18:
    v35 = __clz(__rbit64(v25)) | (v29 << 6);
    v36 = (*(v28 + 48) + 16 * v35);
    v38 = *v36;
    v37 = v36[1];
    v88 = *(*(v28 + 56) + 8 * v35);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A90, &unk_223A233A0);
    sub_2239D18A4();
    v39 = sub_223A211D0();
    v41 = v40;

    v42 = v82;
    *v82 = v39;
    v42[1] = v41;
    v43 = v86;
    (*v79)(v42, v78, v86);
    v44 = v84;
    swift_beginAccess();
    v45 = *v81;
    (*v81)(v85, v42, v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = *(v1 + v44);
    v47 = v87;
    *(v1 + v44) = 0x8000000000000000;
    v49 = sub_2239CDC74(v38, v37);
    v50 = v47[2];
    v51 = (v48 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_33;
    }

    v53 = v48;
    if (v47[3] >= v52)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v48)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_2239DAF30();
        if (v53)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_2239D9194(v52, isUniquelyReferenced_nonNull_native);
      v54 = sub_2239CDC74(v38, v37);
      if ((v53 & 1) != (v55 & 1))
      {
        goto LABEL_35;
      }

      v49 = v54;
      if (v53)
      {
LABEL_11:

        v33 = v87;
        v27 = v83;
        (*(v83 + 40))(v87[7] + *(v83 + 72) * v49, v85, v86);
        goto LABEL_12;
      }
    }

    v56 = v86;
    v33 = v87;
    v87[(v49 >> 6) + 8] |= 1 << v49;
    v57 = (v33[6] + 16 * v49);
    *v57 = v38;
    v57[1] = v37;
    v27 = v83;
    v45((v33[7] + *(v83 + 72) * v49), v85, v56);
    v58 = v33[2];
    v59 = __OFADD__(v58, 1);
    v60 = v58 + 1;
    if (v59)
    {
      goto LABEL_34;
    }

    v33[2] = v60;
LABEL_12:
    v26 = v75;
    v25 &= v25 - 1;
    *(v1 + v84) = v33;

    swift_endAccess();
    v22 = v76;
    v28 = v77;
  }

  while (1)
  {
    v34 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v34 >= v26)
    {

      v61 = v27;
      __swift_project_boxed_opaque_existential_1(v74, v74[3]);
      v62 = sub_223A20960();
      v63 = v68;
      *v68 = v62;
      v64 = v86;
      (*(v61 + 104))(v63, *MEMORY[0x277CEF850], v86);
      (*(v61 + 56))(v63, 0, 1, v64);
      swift_beginAccess();
      sub_2239E4C8C(v63, 0xD000000000000018, 0x8000000223A26110);
      swift_endAccess();
      v65 = sub_223A20CA0();
      (*(*(v65 - 8) + 56))(v71, 1, 1, v65);

      v66 = v69;
      sub_223A20CB0();
      sub_2239D7728(v66);
      (*(v70 + 8))(v66, v72);
      goto LABEL_30;
    }

    v25 = *(v22 + 8 * v34);
    ++v29;
    if (v25)
    {
      v29 = v34;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  sub_223A21910();
  __break(1u);
}

uint64_t DurationSummaryWorker.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_session));

  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_logger;
  v4 = sub_223A20FC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t DurationSummaryState.__deallocating_deinit()
{
  DurationSummaryState.deinit();

  return swift_deallocClassInstance();
}

uint64_t DurationSummaryState.deinit()
{

  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_config;
  v2 = sub_223A207D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session));
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_logger;
  v4 = sub_223A20FC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_2239CDCEC(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentMessage, &qword_27D0A4B38, " >");

  return v0;
}

uint64_t InferenceSummaryWorker.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_session));
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_logger;
  v4 = sub_223A20FC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_2239D62FC(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_summaryState, type metadata accessor for InferenceSummaryState);

  return swift_deallocClassInstance();
}

uint64_t SessionSummaryWorker.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_session));
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_logger;
  v4 = sub_223A20FC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t CoreAnalyticsWorker.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_session));
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_nonAlphaNumerics;
  v4 = sub_223A20290();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t SummaryDecoratorWorker.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_session));

  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_logger;
  v4 = sub_223A20FC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall DriverSnapshotWorker.start()()
{
  v1 = v0;
  if (qword_281332DD8 != -1)
  {
    swift_once();
  }

  v2 = (v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_session);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_session), *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_session + 24));
  v3 = sub_223A20960();
  if ((sub_2239E8BFC(v3) & 1) == 0)
  {
    swift_retain_n();
    v8 = sub_223A20FB0();
    v17 = sub_223A214D0();
    if (os_log_type_enabled(v8, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33[0] = v19;
      *v18 = 136446466;
      __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      sub_223A20960();
      v20 = sub_223A20EB0();
      v22 = sub_2239E1910(v20, v21, v33);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2048;
      __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      v23 = sub_223A20950();

      *(v18 + 14) = v23;

      _os_log_impl(&dword_2239C7000, v8, v17, "DriverSnapshotManager.shouldRun == false. { serviceType=%{public}s, reporterID=%lld }", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x223DF1300](v19, -1, -1);
      v24 = v18;
LABEL_11:
      MEMORY[0x223DF1300](v24, -1, -1);

      return 0;
    }

LABEL_12:

    return 0;
  }

  v4 = sub_2239E9454();
  v5 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_startSample;
  v6 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_startSample);
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_startSample) = v4;

  v7 = *(v1 + v5);
  swift_retain_n();
  v8 = sub_223A20FB0();
  v9 = sub_223A214D0();
  v10 = os_log_type_enabled(v8, v9);
  if (!v7)
  {
    if (v10)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33[0] = v26;
      *v25 = 136446466;
      __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      sub_223A20960();
      v27 = sub_223A20EB0();
      v29 = sub_2239E1910(v27, v28, v33);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2048;
      __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      v30 = sub_223A20950();

      *(v25 + 14) = v30;

      _os_log_impl(&dword_2239C7000, v8, v9, "Retrieving initial snapshot failed. { serviceType=%{public}s, reporterID=%lld }", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x223DF1300](v26, -1, -1);
      v24 = v25;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (v10)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33[0] = v12;
    *v11 = 136446466;
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_223A20960();
    v13 = sub_223A20EB0();
    v15 = sub_2239E1910(v13, v14, v33);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v16 = sub_223A20950();

    *(v11 + 14) = v16;

    _os_log_impl(&dword_2239C7000, v8, v9, "Snapshot retrieved. { serviceType=%{public}s, reporterID=%lld }", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223DF1300](v12, -1, -1);
    MEMORY[0x223DF1300](v11, -1, -1);
  }

  else
  {
  }

  v31 = 1;
  swift_beginAccess();
  *(v1 + 16) = 1;
  return v31;
}

void *sub_2239E6D24(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A98, &unk_223A23470);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_2239E6D98(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2239E6D24(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_223A21720();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_223A212C0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2239E6D24(v10, 0);
        result = sub_223A216E0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_2239E6EC8(uint64_t a1, unint64_t a2)
{
  v3 = sub_2239E6D98(a1, a2);
  sub_2239E6F14(&unk_283702878);
  return v3;
}

void sub_2239E6F14(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_223A02BC8(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_2239E7000()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_startAttempted) = 1;
  v2 = [objc_opt_self() newHierarchyTokenFromParentToken_];
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReportingToken);
  *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReportingToken) = v2;

  v4 = sub_2239E733C();
  v6 = v5;
  sub_2239E85C4(v4);

  sub_2239E85C4(v6);

  v7 = objc_allocWithZone(MEMORY[0x277D43FE8]);
  v8 = sub_223A21100();

  v9 = sub_223A21100();

  v10 = [v7 initWithSessionInfo:v8 userInfo:v9 frameworksToCheck:0];

  v11 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReporting);
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReporting) = v10;
  v17 = v10;

  if (v17)
  {
    [v17 startConfigurationWithCompletionHandler:0];

    v12 = sub_223A20FB0();
    v13 = sub_223A214D0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
      *(v14 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v12, v13, "RTC started { reporterID=%lld }", v14, 0xCu);
      MEMORY[0x223DF1300](v14, -1, -1);

LABEL_6:

      return;
    }
  }

  else
  {

    v17 = sub_223A20FB0();
    v15 = sub_223A214E0();
    if (os_log_type_enabled(v17, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
      *(v16 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v17, v15, "Failed to unwrap RTC Reporting object { reporterID=%lld }", v16, 0xCu);
      MEMORY[0x223DF1300](v16, -1, -1);
      goto LABEL_6;
    }
  }
}

uint64_t sub_2239E733C()
{
  v102 = sub_223A20680();
  v104 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v101 = v94 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReportingToken);
  if (!v2)
  {

    v40 = sub_223A20FB0();
    v41 = sub_223A214E0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
      *(v42 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v40, v41, "Failed to unwrap RTC reporting token { reporterID=%lld }", v42, 0xCu);
      MEMORY[0x223DF1300](v42, -1, -1);
    }

    else
    {
    }

    v92 = MEMORY[0x277D84F90];
    v93 = sub_2239E7FBC(MEMORY[0x277D84F90]);
    sub_2239E7FBC(v92);
    return v93;
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D48, "j8");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A234B0;
  if (!*MEMORY[0x277D44038])
  {
    goto LABEL_57;
  }

  v5 = inited;
  v6 = sub_2239E7EF4(0, &qword_2813326E0, 0x277CCACA8);
  v7 = v2;
  v5[4] = sub_223A215C0();
  v8 = sub_2239E7EF4(0, &qword_2813326F8, 0x277CCABB0);
  v9 = sub_223A21590();
  v5[8] = v8;
  v5[5] = v9;
  if (!*MEMORY[0x277D44048])
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  *(&v106 + 1) = v7;
  v105 = v3;
  v5[9] = sub_223A215C0();
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v5[13] = v8;
  v5[10] = v10;
  if (!*MEMORY[0x277D44078])
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v5[14] = sub_223A215C0();
  v11 = (v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  v5[18] = v8;
  v5[15] = v12;
  if (!*MEMORY[0x277D44018])
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v5[19] = sub_223A215C0();
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v5[23] = v8;
  v5[20] = v13;
  v14 = *(&v106 + 1);
  if (!*MEMORY[0x277D44060])
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v5[24] = sub_223A215C0();
  v5[28] = sub_2239E7EF4(0, &qword_2813326E8, 0x277D82BB8);
  v5[25] = v14;
  if (!*MEMORY[0x277D44020])
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v103 = v8;
  v96 = v14;
  v5[29] = sub_223A215C0();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_223A209C0();
  v15 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v16 = sub_223A211F0();

  v17 = [v15 initWithString_];

  v5[33] = v6;
  v5[30] = v17;
  v95 = sub_2239E7FBC(v5);
  swift_setDeallocating();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C28, &qword_223A23920);
  swift_arrayDestroy();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_223A20960();
  sub_223A20EB0();
  *&v106 = sub_223A21250();
  *(&v106 + 1) = v18;

  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_223A224A0;
  if (*MEMORY[0x277D44088])
  {
    *(v19 + 32) = sub_223A215C0();
    v20 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v21 = sub_223A211F0();
    v22 = [v20 initWithString_];

    *(v19 + 64) = v6;
    *(v19 + 40) = v22;
    v23 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v24 = sub_223A211F0();
    v25 = [v23 initWithString_];

    *(v19 + 72) = v25;
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    v27 = v103;
    *(v19 + 104) = v103;
    *(v19 + 80) = v26;
    v28 = *MEMORY[0x277D440A0];
    if (*MEMORY[0x277D440A0])
    {
      *(v19 + 112) = sub_223A215C0();
      *&v109 = 0x6E6F69737365735FLL;
      *(&v109 + 1) = 0xE800000000000000;
      v108[0] = v106;

      v29 = MEMORY[0x277D837D0];
      *&v108[0] = sub_223A21330();
      *(&v108[0] + 1) = v30;
      sub_223A212A0();
      v31 = v108[0];
      *(v19 + 144) = v29;
      *(v19 + 120) = v31;
      v32 = sub_2239E7FBC(v19);
      swift_setDeallocating();
      swift_arrayDestroy();
      if (sub_223A208C0())
      {
        v33 = sub_223A211F0();
        __swift_project_boxed_opaque_existential_1(v11, v11[3]);
        v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
        v111 = v27;
        *&v109 = v34;
        sub_2239DA0A8(&v109, v108);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v107 = v32;
        sub_2239E81FC(v108, v33, isUniquelyReferenced_nonNull_native);

        v32 = v107;
      }

      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      v36 = sub_223A20940();
      v94[1] = v6;
      if (v36)
      {
        v37 = v28;
        v38 = sub_223A211F0();

        v111 = v6;
        *&v109 = v38;
        sub_2239DA0A8(&v109, v108);
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v107 = v32;
        sub_2239E81FC(v108, v37, v39);

        v32 = v107;
      }

      else
      {
      }

      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      v43 = sub_223A20970();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C18, &qword_223A23910);
      v44 = sub_223A217A0();
      v45 = v44;
      v46 = 0;
      v48 = v43 + 64;
      v47 = *(v43 + 64);
      v103 = v43;
      v49 = 1 << *(v43 + 32);
      v50 = -1;
      if (v49 < 64)
      {
        v50 = ~(-1 << v49);
      }

      v51 = v50 & v47;
      v52 = (v49 + 63) >> 6;
      v98 = v104 + 8;
      v99 = v104 + 16;
      v53 = v44 + 64;
      v100 = v44;
      *(&v106 + 1) = v44 + 64;
      v97 = v32;
      if (v51)
      {
LABEL_20:
        v54 = __clz(__rbit64(v51));
        v105 = (v51 - 1) & v51;
        goto LABEL_26;
      }

LABEL_21:
      v55 = v46;
      while (1)
      {
        v46 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          __break(1u);
          goto LABEL_53;
        }

        if (v46 >= v52)
        {
          break;
        }

        v56 = *(v48 + 8 * v46);
        ++v55;
        if (v56)
        {
          v54 = __clz(__rbit64(v56));
          v105 = (v56 - 1) & v56;
LABEL_26:
          v57 = v54 | (v46 << 6);
          v58 = v104;
          v59 = *(v103 + 56);
          v60 = (*(v103 + 48) + 16 * v57);
          v61 = v60[1];
          *&v106 = *v60;
          v62 = v101;
          v63 = v102;
          (*(v104 + 16))(v101, v59 + *(v104 + 72) * v57, v102);

          sub_223A20670();
          (*(v58 + 8))(v62, v63);
          v53 = *(&v106 + 1);
          *(*(&v106 + 1) + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
          v45 = v100;
          v64 = (*(v100 + 48) + 16 * v57);
          *v64 = v106;
          v64[1] = v61;
          sub_2239DA0A8(&v109, (*(v45 + 56) + 32 * v57));
          v65 = *(v45 + 16);
          v66 = __OFADD__(v65, 1);
          v67 = v65 + 1;
          if (v66)
          {
            goto LABEL_54;
          }

          *(v45 + 16) = v67;
          v32 = v97;
          v51 = v105;
          if (v105)
          {
            goto LABEL_20;
          }

          goto LABEL_21;
        }
      }

      v68 = 1 << *(v45 + 32);
      v69 = -1;
      if (v68 < 64)
      {
        v69 = ~(-1 << v68);
      }

      v70 = v69 & *(v45 + 64);
      v71 = (v68 + 63) >> 6;

      v72 = 0;
      while (1)
      {
        if (!v70)
        {
          while (1)
          {
            v74 = v72 + 1;
            if (__OFADD__(v72, 1))
            {
              break;
            }

            if (v74 >= v71)
            {

              return v95;
            }

            v70 = *(v53 + 8 * v74);
            ++v72;
            if (v70)
            {
              v72 = v74;
              goto LABEL_39;
            }
          }

LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_39:
        v75 = __clz(__rbit64(v70)) | (v72 << 6);
        v76 = (*(v45 + 48) + 16 * v75);
        v77 = *v76;
        v78 = v76[1];
        sub_2239D17A8(*(v45 + 56) + 32 * v75, &v110);
        *&v109 = v77;
        *(&v109 + 1) = v78;

        v79 = sub_223A211F0();
        sub_2239D17A8(&v110, v108);
        v80 = swift_isUniquelyReferenced_nonNull_native();
        v107 = v32;
        v81 = sub_2239E80E4(v79);
        v83 = v32[2];
        v84 = (v82 & 1) == 0;
        v66 = __OFADD__(v83, v84);
        v85 = v83 + v84;
        if (v66)
        {
          goto LABEL_55;
        }

        v86 = v82;
        if (v32[3] < v85)
        {
          break;
        }

        if (v80)
        {
          goto LABEL_44;
        }

        v90 = v81;
        sub_223A09C50();
        v81 = v90;
        v32 = v107;
        if (v86)
        {
LABEL_32:
          v73 = (v32[7] + 32 * v81);
          __swift_destroy_boxed_opaque_existential_0(v73);
          sub_2239DA0A8(v108, v73);

          goto LABEL_33;
        }

LABEL_45:
        v32[(v81 >> 6) + 8] |= 1 << v81;
        *(v32[6] + 8 * v81) = v79;
        sub_2239DA0A8(v108, (v32[7] + 32 * v81));
        v88 = v32[2];
        v66 = __OFADD__(v88, 1);
        v89 = v88 + 1;
        if (v66)
        {
          goto LABEL_56;
        }

        v32[2] = v89;
LABEL_33:
        v70 &= v70 - 1;
        sub_2239CDCEC(&v109, &qword_27D0A4AA8, &unk_223A23930);
        v53 = *(&v106 + 1);
      }

      sub_2239E834C(v85, v80);
      v81 = sub_2239E80E4(v79);
      if ((v86 & 1) != (v87 & 1))
      {
        goto LABEL_65;
      }

LABEL_44:
      v32 = v107;
      if (v86)
      {
        goto LABEL_32;
      }

      goto LABEL_45;
    }

    goto LABEL_64;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_223A21910();
  __break(1u);
  return result;
}

uint64_t sub_2239E7EF4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2239E7F3C()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker____lazy_storage___shouldBatch;
  v2 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker____lazy_storage___shouldBatch);
  if (v2 == 2)
  {
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
    LOBYTE(v2) = sub_223A20960() != 12;
    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

unint64_t sub_2239E7FBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C20, &qword_223A23918);
    v3 = sub_223A217C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2239D8C48(v4, &v11, &qword_27D0A4C28, &qword_223A23920);
      v5 = v11;
      result = sub_2239E80E4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2239DA0A8(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2239E80E4(uint64_t a1)
{
  v2 = sub_223A215A0();

  return sub_2239E8128(a1, v2);
}

unint64_t sub_2239E8128(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2239E7EF4(0, &qword_2813326E0, 0x277CCACA8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_223A215B0();

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

_OWORD *sub_2239E81FC(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2239E80E4(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_223A09C50();
      v8 = v16;
      goto LABEL_8;
    }

    sub_2239E834C(v13, a3 & 1);
    v8 = sub_2239E80E4(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_2239E7EF4(0, &qword_2813326E0, 0x277CCACA8);
      result = sub_223A21910();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_2239DA0A8(a1, v19);
  }

  else
  {
    sub_223A13360(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_2239E834C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C20, &qword_223A23918);
  result = sub_223A217B0();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_2239DA0A8(v21, v32);
      }

      else
      {
        sub_2239D17A8(v21, v32);
        v22 = v20;
      }

      result = sub_223A215A0();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_2239DA0A8(v32, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void sub_2239E85C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D18, "R;");
    v2 = sub_223A217C0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    sub_2239D17A8(*(a1 + 56) + 32 * v12, v34 + 8);
    *&v34[0] = v13;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v13;
    sub_2239E7EF4(0, &qword_2813326E0, 0x277CCACA8);
    v14 = v13;
    swift_dynamicCast();
    sub_2239DA0A8((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_2239DA0A8(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_2239DA0A8(v30, v31);
    v15 = sub_223A21680();
    v16 = -1 << *(v2 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v23;
    *(v10 + 16) = v24;
    *(v10 + 32) = v25;
    sub_2239DA0A8(v31, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_2239E889C()
{
  v1 = MEMORY[0x277D84F98];
  if ((*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_underTest) & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_summaryEvent;
    swift_beginAccess();
    *(v0 + v2) = v1;
  }

  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_summaryEvents;
  swift_beginAccess();
  *(v0 + v3) = v1;

  v4 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReporting);
  *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReporting) = 0;

  v5 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReportingToken);
  *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReportingToken) = 0;

  v6 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_isStarted;
  result = swift_beginAccess();
  *(v0 + v6) = 0;
  *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_startAttempted) = 0;
  return result;
}

uint64_t AirPodWorker.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_session));
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_logger;
  v4 = sub_223A20FC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_2239E8A80()
{
  v0 = DurationSummaryState.deinit();

  sub_2239CDCEC(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal29DurationSummaryDecoratorState_decoratorRunningMessage, &qword_27D0A4B38, " >");

  return swift_deallocClassInstance();
}

void sub_2239E8B24(uint64_t a1)
{
  if (qword_281332DC8 != -1)
  {
    swift_once();
  }

  v3 = qword_281332DD0;
  os_unfair_lock_lock((qword_281332DD0 + 16));
  if ((*(v1 + 17) & 1) == 0)
  {
    *(v1 + 24) = a1;

    *(v1 + 17) = 1;
    *(v1 + 16) = sub_223A0042C(v4) & 1;
  }

  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_2239E8BFC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B50, &qword_223A23558);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_223A203C0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (qword_281332DC8 != -1)
  {
    swift_once();
  }

  v14 = qword_281332DD0;
  os_unfair_lock_lock((qword_281332DD0 + 16));
  swift_beginAccess();
  v15 = *(v1 + 32);
  if (*(v15 + 16) && (v16 = sub_2239C9110(a1), (v17 & 1) != 0))
  {
    (*(v8 + 16))(v13, *(v15 + 56) + *(v8 + 72) * v16, v7);
    sub_223A203B0();
    sub_223A20380();
    v19 = v18;
    v20 = v11;
    v21 = *(v8 + 8);
    v21(v20, v7);
    if (v19 >= *(v2 + 40))
    {
      v32 = *(v8 + 56);
      v34 = v21;
      v30 = 1;
      v32(v6, 1, 1, v7);
      swift_beginAccess();
      sub_2239E8FF0(v6, a1);
      swift_endAccess();
      v34(v13, v7);
    }

    else
    {
      v22 = sub_223A20FB0();
      v23 = sub_223A214D0();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v34 = v21;
        v35[0] = v25;
        v26 = v25;
        *v24 = 136446210;
        v27 = sub_223A20EB0();
        v29 = sub_2239E1910(v27, v28, v35);

        *(v24 + 4) = v29;
        _os_log_impl(&dword_2239C7000, v22, v23, "Skipping IOReporting, as has run recently. { serviceType=%{public}s }", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x223DF1300](v26, -1, -1);
        MEMORY[0x223DF1300](v24, -1, -1);

        v34(v13, v7);
      }

      else
      {

        v21(v13, v7);
      }

      v30 = 0;
    }
  }

  else
  {
    sub_223A203B0();
    v30 = 1;
    (*(v8 + 56))(v6, 0, 1, v7);
    swift_beginAccess();
    sub_2239E8FF0(v6, a1);
    swift_endAccess();
  }

  os_unfair_lock_unlock(v14 + 4);
  return v30;
}

uint64_t sub_2239E8FF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B50, &qword_223A23558);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_223A203C0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2239CDCEC(a1, &qword_27D0A4B50, &qword_223A23558);
    v13 = sub_2239C9110(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_223A09880();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_223A12C60(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_2239CDCEC(v8, &qword_27D0A4B50, &qword_223A23558);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_2239E9240(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_2239E9240(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2239C9110(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_223A09880();
      goto LABEL_7;
    }

    sub_223A090AC(v13, a3 & 1);
    v24 = sub_2239C9110(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for AudioServiceType(0);
    result = sub_223A21910();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_223A203C0();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_2239E93A8(v10, a2, a1, v16);
}

uint64_t sub_2239E93A8(unint64_t a1, __int16 a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 2 * a1) = a2;
  v7 = a4[7];
  v8 = sub_223A203C0();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_2239E9454()
{
  if (*(v0 + 16) == 1)
  {
    return IOReportCreateSamples();
  }

  else
  {
    return 0;
  }
}

uint64_t DriverSnapshotWorker.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_session));
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_logger;
  v4 = sub_223A20FC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

double sub_2239E9614@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_neededPreviousFields;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t sub_2239E9684()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2239E96DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2239E97A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49C0, &qword_223A22C78);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 60);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2239E9870(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49C0, &qword_223A22C78);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2239E9928@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_2239E9970(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

double sub_2239E99BC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_neededPreviousFields;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t sub_2239E9A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_223A20FC0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AC0, &qword_223A233C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2239E9B4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_223A20FC0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AC0, &qword_223A233C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2239E9C8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2239E9CCC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2239E9D04()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2239E9D54(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2239E9D64(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2239E9D74()
{
  v1 = sub_223A20350();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2239E9E08()
{
  v1 = sub_223A20350();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2239E9E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_223A20350();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2239E9F3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_223A20350();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2239E9FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_223A20FC0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2239EA08C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_223A20FC0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_2239EA134@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  result = sub_223A205F0();
  *a1 = v3;
  return result;
}

uint64_t sub_2239EA184()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2239EA1BC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t get_enum_tag_for_layout_string_22AudioAnalyticsExternal15TailspinRequestV12NotificationV08InternalF0O_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2239EA210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C98, &qword_223A239F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CA8, &unk_223A23A00);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_2239EA374(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C98, &qword_223A239F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CA8, &unk_223A23A00);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2239EA4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2239EA5BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

void *sub_2239EA690(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_2239EA6B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2239EA6E8()
{
  v1 = sub_223A20D20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  if (*(v0 + v5 + 16))
  {
  }

  v6 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v3 | 7);
}

double sub_2239EA81C@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = qword_281334130;

  return result;
}

uint64_t sub_2239EA8A8()
{
  v0 = sub_223A20FC0();
  __swift_allocate_value_buffer(v0, qword_27D0A47A8);
  __swift_project_value_buffer(v0, qword_27D0A47A8);
  return sub_223A20F50();
}

uint64_t sub_2239EA8F4()
{
  type metadata accessor for AdaptiveVolumeManager(0);
  v0 = swift_allocObject();
  result = AdaptiveVolumeManager.init()();
  qword_27D0A4E10 = v0;
  return result;
}

uint64_t AdaptiveVolumeManager.__allocating_init()()
{
  v0 = swift_allocObject();
  AdaptiveVolumeManager.init()();
  return v0;
}

uint64_t AdaptiveVolumeManager.init()()
{
  v1 = v0;
  v2 = sub_223A21520();
  MEMORY[0x28223BE20](v2);
  v3 = sub_223A21540();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_223A21090();
  MEMORY[0x28223BE20](v7 - 8);
  v22[0] = sub_2239E7EF4(0, &qword_281332718, 0x277D85C78);
  sub_223A21080();
  (*(v4 + 104))(v6, *MEMORY[0x277D85268], v3);
  v22[1] = MEMORY[0x277D84F90];
  sub_2239CA1D0(&qword_281332720, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4818, &qword_223A224B0);
  sub_2239C9B30(&qword_281332738, &qword_27D0A4818, &qword_223A224B0);
  sub_223A21640();
  *(v0 + 16) = sub_223A21570();
  sub_223A20F50();
  v8 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_hidManager;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x277D0EEF8]) initWithOptions_];
  v9 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_biomeStreamSource;
  v10 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v11 = [v10 Audio];
  swift_unknownObjectRelease();
  v12 = [v11 AdaptiveVolume];
  swift_unknownObjectRelease();
  v13 = [v12 source];

  *(v1 + v9) = v13;
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_hidDevice) = 0;
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_notificationPointer) = 0;
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_iter) = 0;
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_currentMatchedService) = 0;
  v14 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_cancelHIDTeardown;
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_cancelHIDTeardown) = 1;
  v15 = (v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_sessionRegistry);
  v16 = MEMORY[0x277D84F90];
  *v15 = MEMORY[0x277D84F90];
  v15[1] = v16;
  v17 = (v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_activeAirPodSerialNumber);
  *v17 = 0;
  v17[1] = 0;
  v18 = v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_currentDrcPacket;
  *v18 = 0;
  *(v18 + 2) = 0;
  *(v18 + 8) = 0;
  v19 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_currentOutputGain;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4880, &qword_223A224B8);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = 0x406FE00000000000;
  *(v1 + v19) = v20;
  *(v1 + v14) = 1;
  sub_2239EAD74(v20);
  return v1;
}

uint64_t sub_2239EAD74(uint64_t a1)
{
  v2 = v1;
  v3 = sub_223A20FB0();
  v4 = sub_223A214D0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2239C7000, v3, v4, "Starting IO Kit operations", v5, 2u);
    MEMORY[0x223DF1300](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_notificationPointer;
  if (!*(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_notificationPointer))
  {
    v7 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
    *(v2 + v6) = v7;
    IONotificationPortSetDispatchQueue(v7, v2[2]);
  }

  v8 = sub_223A20FB0();
  v9 = sub_223A214D0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2239C7000, v8, v9, "Add matching notifications", v10, 2u);
    MEMORY[0x223DF1300](v10, -1, -1);
  }

  v11 = *(v2 + v6);
  if (qword_27D0A47C8 != -1)
  {
    swift_once();
  }

  v12 = sub_223A21100();
  v13 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_iter;
  swift_beginAccess();
  IOServiceAddMatchingNotification(v11, "IOServiceMatched", v12, sub_2239EB07C, v2, (v2 + v13));
  swift_endAccess();
  v14 = sub_223A20FB0();
  v15 = sub_223A214D0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2239C7000, v14, v15, "Kicking off service matching", v16, 2u);
    MEMORY[0x223DF1300](v16, -1, -1);
  }

  return sub_2239EB0EC(*(v2 + v13));
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2239EB07C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_iter;

    swift_beginAccess();
    *(v3 + v4) = a2;
    sub_2239EB0EC(a2);
  }

  return result;
}

uint64_t sub_2239EB0EC(uint64_t a1)
{
  v2 = v1;
  entryID[4] = *MEMORY[0x277D85DE8];
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_logger;
  v5 = sub_223A20FB0();
  v6 = sub_223A214D0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2239C7000, v5, v6, "Iterating through services", v7, 2u);
    MEMORY[0x223DF1300](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_currentMatchedService;
  result = IOIteratorNext(a1);
  if (result)
  {
    v10 = result;
    v11 = *MEMORY[0x277CD2898];
    v30 = v2;
    while (1)
    {
      entryID[0] = 0;
      IORegistryEntryGetRegistryEntryID(v10, entryID);
      v13 = IORegistryEntryIDMatching(entryID[0]);
      if (!v13)
      {
        break;
      }

      v14 = v13;
      MatchingService = IOServiceGetMatchingService(v11, v14);
      if (MatchingService)
      {
        v16 = MatchingService;
        if (*(v2 + v8) == MatchingService)
        {

          return IOObjectRelease(v10);
        }

        v17 = sub_223A20FB0();
        v18 = sub_223A214D0();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = v11;
          v20 = a1;
          v21 = v8;
          v22 = v4;
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_2239C7000, v17, v18, "Found matching service.", v23, 2u);
          v24 = v23;
          v4 = v22;
          v8 = v21;
          a1 = v20;
          v11 = v19;
          v2 = v30;
          MEMORY[0x223DF1300](v24, -1, -1);
        }

        v12 = sub_2239EB3E8(v16);
        if (v12)
        {
          v28 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_hidDevice);
          *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_hidDevice) = v12;
          v29 = v12;

          *(v2 + v8) = v16;
          sub_2239EB56C();

          return IOObjectRelease(v10);
        }
      }

      IOObjectRelease(v10);
      result = IOIteratorNext(a1);
      v10 = result;
      if (!result)
      {
        return result;
      }
    }

    v25 = sub_223A20FB0();
    v26 = sub_223A214D0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134283521;
      swift_beginAccess();
      *(v27 + 4) = entryID[0];
      _os_log_impl(&dword_2239C7000, v25, v26, "Couldn't find IO Registry Entry ID. { regID=%{private}llu }", v27, 0xCu);
      MEMORY[0x223DF1300](v27, -1, -1);
    }

    return IOObjectRelease(v10);
  }

  return result;
}

id sub_2239EB3E8(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD2850]) initWithService_];
  if (!v1)
  {
    v4 = sub_223A20FB0();
    v9 = sub_223A214D0();
    if (!os_log_type_enabled(v4, v9))
    {
      v2 = 0;
      goto LABEL_8;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2239C7000, v4, v9, "Couldn't create HID device from matching service", v6, 2u);
    v2 = 0;
    goto LABEL_6;
  }

  v2 = v1;
  v3 = v1;
  v4 = sub_223A20FB0();
  v5 = sub_223A214D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138477827;
    *(v6 + 4) = v3;
    *v7 = v2;
    v8 = v3;
    _os_log_impl(&dword_2239C7000, v4, v5, "Created HID device. { hidDevice=%{private}@ }", v6, 0xCu);
    sub_2239EEFC8(v7);
    MEMORY[0x223DF1300](v7, -1, -1);
LABEL_6:
    MEMORY[0x223DF1300](v6, -1, -1);
  }

LABEL_8:

  return v2;
}

void sub_2239EB56C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_hidDevice);
  if (v1)
  {
    v2 = v0;
    v12 = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v14 = sub_2239EBFE4;
    v15 = &block_descriptor_66;
    v3 = _Block_copy(&v12);
    v4 = v1;

    [v4 setInputReportHandler_];
    _Block_release(v3);
    v16 = sub_2239EF07C;
    v17 = v2;
    v12 = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v14 = sub_2239EC158;
    v15 = &block_descriptor_69;
    v5 = _Block_copy(&v12);

    [v4 setCancelHandler_];
    _Block_release(v5);
    v6 = sub_223A20FB0();
    v7 = sub_223A214D0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2239C7000, v6, v7, "Setting dispatch queue and opening HID device", v8, 2u);
      MEMORY[0x223DF1300](v8, -1, -1);
    }

    [v4 setDispatchQueue_];
    [v4 activate];
    [v4 open];
    v9 = sub_223A20FB0();
    v10 = sub_223A214D0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2239C7000, v9, v10, "Turning on Non-DRC HID packet streaming.", v11, 2u);
      MEMORY[0x223DF1300](v11, -1, -1);
    }

    sub_2239EC19C(0xC801uLL);
  }
}

void sub_2239EB808(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v9 = sub_223A21040();
  isa = v9[-1].isa;
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v43 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_223A21090();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_223A21030();
  v40 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_223A210B0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_26:
    __break(1u);
  }

  if (a4 > 0xFF)
  {
    goto LABEL_26;
  }

  v22 = sub_223A20360();
  if (a4 > 2u)
  {
    if (a4 == 3)
    {
      LOWORD(aBlock[0]) = 0;
      BYTE2(aBlock[0]) = 0;
      v47 = v22;
      [v22 getBytes:aBlock length:3];
      v31 = aBlock[0];
      v32 = BYTE2(aBlock[0]);
      sub_223A21410();
      v34 = v33;

      v35 = a7 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_currentDrcPacket;
      *v35 = v31;
      *(v35 + 2) = v32;
      *(v35 + 8) = v34;
      return;
    }

    if (a4 != 4)
    {
LABEL_11:
      v47 = v22;
      v46 = sub_223A20FB0();
      v29 = sub_223A214F0();
      if (os_log_type_enabled(v46, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134283521;
        *(v30 + 4) = a4;
        _os_log_impl(&dword_2239C7000, v46, v29, "Unexpected AVClientReportID received { reportID=%{private}ld }", v30, 0xCu);
        MEMORY[0x223DF1300](v30, -1, -1);
      }

      v22 = v46;
    }
  }

  else
  {
    if (a4 != 1)
    {
      if (a4 == 2)
      {
        v47 = v22;
        v23 = sub_2239EDC1C(v22);
        if (v23)
        {
          if (v23 == 1)
          {
            sub_223A210A0();
            *v14 = 1;
            v24 = v40;
            (*(v40 + 104))(v14, *MEMORY[0x277D85188], v12);
            MEMORY[0x223DF01B0](v19, v14);
            (*(v24 + 8))(v14, v12);
            v40 = *(v16 + 8);
            (v40)(v19, v15);
            v39 = *(a7 + 16);
            aBlock[4] = sub_2239EF0D8;
            aBlock[5] = a7;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_2239EC158;
            aBlock[3] = &block_descriptor_72;
            v25 = _Block_copy(aBlock);

            v26 = v41;
            sub_223A21050();
            v48 = MEMORY[0x277D84F90];
            sub_2239CA1D0(&qword_27D0A48C8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48D0, &qword_223A22BE0);
            sub_2239C9B30(&qword_27D0A48D8, &qword_27D0A48D0, &qword_223A22BE0);
            v27 = v43;
            v28 = v46;
            sub_223A21640();
            MEMORY[0x223DF0610](v21, v26, v27, v25);

            _Block_release(v25);
            (*(isa + 1))(v27, v28);
            (*(v42 + 8))(v26, v44);
            (v40)(v21, v15);

            return;
          }

          v36 = sub_223A20FB0();
          v37 = sub_223A214D0();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&dword_2239C7000, v36, v37, "Report ID 2. Trying to turn on Non-DRC HID packet streaming", v38, 2u);
            MEMORY[0x223DF1300](v38, -1, -1);
          }

          sub_2239EC19C(0xC801uLL);
        }

        else
        {
          *(a7 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_cancelHIDTeardown) = 1;
          sub_2239EC470(v23);
        }

        v22 = v47;
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    v47 = v22;
    sub_2239ECB24(v22);
    v22 = v47;
  }

LABEL_22:
}

void sub_2239EBF38(uint64_t a1)
{
  v1 = sub_223A20FB0();
  v2 = sub_223A214D0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2239C7000, v1, v2, "Report ID 2. Trying to turn on Non-DRC HID packet streaming", v3, 2u);
    MEMORY[0x223DF1300](v3, -1, -1);
  }

  sub_2239EC19C(0xC801uLL);
}

uint64_t sub_2239EBFE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = *(a1 + 32);

  v12 = a2;
  v13 = a6;
  v14 = sub_223A20370();
  v16 = v15;

  v11(v12, a3, a4, a5, v14, v16);
  sub_2239EF084(v14, v16);
}

void sub_2239EC0AC(uint64_t a1)
{
  oslog = sub_223A20FB0();
  v1 = sub_223A214D0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2239C7000, oslog, v1, "The HID device has been cancelled", v2, 2u);
    MEMORY[0x223DF1300](v2, -1, -1);
  }
}

uint64_t sub_2239EC158(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_2239EC19C(unint64_t a1)
{
  v2 = v1;
  v23[3] = *MEMORY[0x277D85DE8];
  v21 = a1;
  v22 = a1 >> 8;
  v3 = sub_223A20FB0();
  v4 = sub_223A214D0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 16843265;
    swift_beginAccess();
    *(v5 + 4) = v21;
    *(v5 + 5) = 1025;
    *(v5 + 7) = v22;
    _os_log_impl(&dword_2239C7000, v3, v4, "Firing packet { reportID=%{private}hhu, interval=%{private}u }", v5, 0xBu);
    MEMORY[0x223DF1300](v5, -1, -1);
  }

  v6 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_hidDevice);
  if (v6)
  {
    swift_beginAccess();
    v20 = 0;
    v7 = v6;
    v8 = [v7 setReport:&v21 reportLength:5 withIdentifier:v21 forType:2 error:&v20];
    v9 = v20;
    swift_endAccess();
    v10 = v9;

    if (!v8)
    {
      v11 = sub_223A202A0();

      swift_willThrow();
      v12 = v11;
      v13 = sub_223A20FB0();
      v14 = sub_223A214E0();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v23[0] = v16;
        *v15 = 16843523;
        *(v15 + 4) = v21;
        *(v15 + 5) = 1025;
        *(v15 + 7) = v22;
        *(v15 + 11) = 2081;
        swift_getErrorValue();
        v17 = sub_223A21920();
        v19 = sub_2239E1910(v17, v18, v23);

        *(v15 + 13) = v19;
        _os_log_impl(&dword_2239C7000, v13, v14, "Error setting HID report. { reportID=%{private}hhu, interval=%{private}u, error=%{private}s }", v15, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x223DF1300](v16, -1, -1);
        MEMORY[0x223DF1300](v15, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_2239EC470(uint64_t a1)
{
  v2 = v1;
  v3 = sub_223A20FB0();
  v4 = sub_223A214D0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2239C7000, v3, v4, "Turning off Non-DRC HID packet streaming.", v5, 2u);
    MEMORY[0x223DF1300](v5, -1, -1);
  }

  sub_2239EC19C(1uLL);
  v6 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_hidDevice;
  [*(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_hidDevice) cancel];
  [*(v2 + v6) close];
  v7 = *(v2 + v6);
  *(v2 + v6) = 0;

  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_currentMatchedService) = 0;
  v8 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_notificationPointer;
  v9 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_notificationPointer);
  if (v9)
  {
    IONotificationPortDestroy(v9);
    *(v2 + v8) = 0;
  }
}

uint64_t sub_2239EC574()
{
  v1 = sub_223A21040();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x28223BE20](v1);
  v23 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_223A21090();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_223A210B0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v13 = sub_223A210C0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v0 + 16);
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v22[1] = v17;
  LOBYTE(v17) = sub_223A210F0();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    sub_223A210A0();
    sub_223A21440();
    sub_223A210E0();
    v22[0] = *(v7 + 8);
    (v22[0])(v10, v6);
    aBlock[4] = sub_2239EF06C;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2239EC158;
    aBlock[3] = &block_descriptor;
    v19 = _Block_copy(aBlock);

    sub_223A21050();
    v28 = MEMORY[0x277D84F90];
    sub_2239CA1D0(&qword_27D0A48C8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48D0, &qword_223A22BE0);
    sub_2239C9B30(&qword_27D0A48D8, &qword_27D0A48D0, &qword_223A22BE0);
    v20 = v23;
    v21 = v27;
    sub_223A21640();
    MEMORY[0x223DF0610](v12, v5, v20, v19);
    _Block_release(v19);
    (*(v26 + 8))(v20, v21);
    (*(v24 + 8))(v5, v25);
    (v22[0])(v12, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2239EC9E0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_cancelHIDTeardown;
  v3 = *(a1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_cancelHIDTeardown);
  oslog = sub_223A20FB0();
  v4 = sub_223A214D0();
  v5 = os_log_type_enabled(oslog, v4);
  if (v3 == 1)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2239C7000, oslog, v4, "HID device teardown cancelled", v6, 2u);
      MEMORY[0x223DF1300](v6, -1, -1);
    }
  }

  else
  {
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2239C7000, oslog, v4, "Tearing down HID device", v7, 2u);
      MEMORY[0x223DF1300](v7, -1, -1);
    }

    sub_2239EC470(v8);
    *(a1 + v2) = 1;
  }
}

void sub_2239ECB24(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_sessionRegistry;
  swift_beginAccess();
  if (*(*(v1 + v3) + 16))
  {
    if ((sub_223A208C0() & 1) == 0 || *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_activeAirPodSerialNumber + 8))
    {
      v14 = 0u;
      memset(v15, 0, 22);
      v12 = 0u;
      v13 = 0u;
      [a1 getBytes:&v12 length:70];
      v17[0] = v15[0];
      *(v17 + 14) = *(v15 + 14);
      v16[1] = v13;
      v16[2] = v14;
      v16[0] = v12;
      v4 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_currentDrcPacket + 2);
      v5 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_currentDrcPacket + 8);
      v6 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_currentDrcPacket);

      sub_223A20F10();

      sub_2239EDD58(v16, v6 | (v4 << 16), v5, v11);
      return;
    }

    v7 = sub_223A20FB0();
    v8 = sub_223A214D0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Dropping HID report. { reason=unknown serial number }";
      goto LABEL_9;
    }
  }

  else
  {
    v7 = sub_223A20FB0();
    v8 = sub_223A214D0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Dropping HID report. { reason=no active sessions }";
LABEL_9:
      _os_log_impl(&dword_2239C7000, v7, v8, v10, v9, 2u);
      MEMORY[0x223DF1300](v9, -1, -1);
    }
  }
}

uint64_t sub_2239ECD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223A21040();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_223A21090();
  v12 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v4 + 16);
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_2239EF1C8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2239EC158;
  aBlock[3] = &block_descriptor_81;
  v16 = _Block_copy(aBlock);

  sub_223A21050();
  v20 = MEMORY[0x277D84F90];
  sub_2239CA1D0(&qword_27D0A48C8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48D0, &qword_223A22BE0);
  sub_2239C9B30(&qword_27D0A48D8, &qword_27D0A48D0, &qword_223A22BE0);
  sub_223A21640();
  MEMORY[0x223DF0640](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

uint64_t sub_2239ED018(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_sessionRegistry;
  v9 = swift_beginAccess();
  if (!*(*(a1 + v8) + 16))
  {
    *(a1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_cancelHIDTeardown) = 1;
    if (*(a1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_hidDevice))
    {
      v10 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_iter;
      swift_beginAccess();
      sub_2239EB0EC(*(a1 + v10));
      if ((sub_223A208C0() & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_2239EAD74(v9);
      if ((sub_223A208C0() & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v11 = sub_2239ED1E8();
    if (v11[2])
    {
      v13 = v11[4];
      v12 = v11[5];
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    v14 = (a1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_activeAirPodSerialNumber);
    *v14 = v13;
    v14[1] = v12;

    if (!v14[1])
    {
      v15 = sub_223A20FB0();
      v16 = sub_223A214D0();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_2239C7000, v15, v16, "No supported AirPods found.", v17, 2u);
        MEMORY[0x223DF1300](v17, -1, -1);
      }
    }
  }

LABEL_13:
  swift_beginAccess();
  sub_2239ED3D0(a2, a3, a4);
  return swift_endAccess();
}

uint64_t sub_2239ED1E8()
{
  sub_223A209F0();
  sub_223A209E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E0, &unk_223A22800);
  sub_223A209D0();

  v0 = *&v25[0];
  v1 = *(*&v25[0] + 16);
  if (v1)
  {
    v38 = MEMORY[0x277D84F90];
    sub_2239D32E0(0, v1, 0);
    v2 = v38;
    v3 = v1 - 1;
    for (i = 32; ; i += 216)
    {
      v5 = *(v0 + i + 16);
      v25[0] = *(v0 + i);
      v25[1] = v5;
      v6 = *(v0 + i + 32);
      v7 = *(v0 + i + 48);
      v8 = *(v0 + i + 80);
      v28 = *(v0 + i + 64);
      v29 = v8;
      v26 = v6;
      v27 = v7;
      v9 = *(v0 + i + 96);
      v10 = *(v0 + i + 112);
      v11 = *(v0 + i + 144);
      v32 = *(v0 + i + 128);
      v33 = v11;
      v30 = v9;
      v31 = v10;
      v12 = *(v0 + i + 160);
      v13 = *(v0 + i + 176);
      v14 = *(v0 + i + 192);
      v37 = *(v0 + i + 208);
      v35 = v13;
      v36 = v14;
      v34 = v12;
      v15 = v30;
      v23 = *(&v26 + 1);
      v24 = v27;
      sub_2239EF1D4(v25, v22);

      MEMORY[0x223DF0390](95, 0xE100000000000000);
      MEMORY[0x223DF0390](v15, *(&v15 + 1));

      sub_2239EF230(v25);
      v16 = v23;
      v17 = v24;
      v38 = v2;
      v19 = *(v2 + 16);
      v18 = *(v2 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2239D32E0((v18 > 1), v19 + 1, 1);
        v2 = v38;
      }

      *(v2 + 16) = v19 + 1;
      v20 = v2 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      if (!v3)
      {
        break;
      }

      --v3;
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

void sub_2239ED3D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_223A0DE84(0, *(v7 + 2) + 1, 1, v7);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_223A0DE84((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  *&v7[8 * v9 + 32] = a1;
  *v3 = v7;
  v10 = v3[1];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_2239E1804(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_2239E1804((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[16 * v12];
  *(v13 + 4) = a2;
  *(v13 + 5) = a3;
  v3[1] = v10;
  v14 = *(v7 + 2);
  if (qword_27D0A47A0 != -1)
  {
    swift_once();
  }

  v15 = sub_223A20FC0();
  __swift_project_value_buffer(v15, qword_27D0A47A8);

  oslog = sub_223A20FB0();
  v16 = sub_223A214D0();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v17 = 134284035;
    *(v17 + 4) = a1;
    *(v17 + 12) = 2081;
    *(v17 + 14) = sub_2239E1910(a2, a3, &v20);
    *(v17 + 22) = 2048;
    *(v17 + 24) = v14;
    _os_log_impl(&dword_2239C7000, oslog, v16, "Registered session. { reporterID=%{private}lld, appName=%{private}s, numActiveSessions=%ld }", v17, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223DF1300](v18, -1, -1);
    MEMORY[0x223DF1300](v17, -1, -1);
  }
}

void sub_2239ED638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223A21040();
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_223A21090();
  v11 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v4 + 16);
  v14 = swift_allocObject();
  v14[2] = v4;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_2239EF0E0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2239EC158;
  aBlock[3] = &block_descriptor_75;
  v15 = _Block_copy(aBlock);

  sub_223A21050();
  v22 = MEMORY[0x277D84F90];
  sub_2239CA1D0(&qword_27D0A48C8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48D0, &qword_223A22BE0);
  sub_2239C9B30(&qword_27D0A48D8, &qword_27D0A48D0, &qword_223A22BE0);
  sub_223A21640();
  MEMORY[0x223DF0640](0, v13, v10, v15);
  _Block_release(v15);
  (*(v21 + 8))(v10, v8);
  (*(v11 + 8))(v13, v20);

  v16 = sub_223A20FB0();
  v17 = sub_223A214D0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2239C7000, v16, v17, "Stopping AV manager", v18, 2u);
    MEMORY[0x223DF1300](v18, -1, -1);
  }
}

uint64_t sub_2239ED988(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_sessionRegistry;
  swift_beginAccess();
  sub_2239EDA24(a2, a3, a4);
  result = swift_endAccess();
  if (!*(*(a1 + v8) + 16))
  {
    *(a1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_cancelHIDTeardown) = 0;
    return sub_2239EC574();
  }

  return result;
}

void sub_2239EDA24(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(*v3 + 16);
  if (v4)
  {
    v6 = 0;
    while (*(*v3 + 32 + 8 * v6) != a1)
    {
      if (v4 == ++v6)
      {
        return;
      }
    }

    sub_2239EE514(v6);
    sub_2239EE59C(v6);

    v9 = *(*v3 + 16);
    if (qword_27D0A47A0 != -1)
    {
      swift_once();
    }

    v10 = sub_223A20FC0();
    __swift_project_value_buffer(v10, qword_27D0A47A8);

    oslog = sub_223A20FB0();
    v11 = sub_223A214D0();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 134284035;
      *(v12 + 4) = a1;
      *(v12 + 12) = 2081;
      *(v12 + 14) = sub_2239E1910(a2, a3, &v15);
      *(v12 + 22) = 2048;
      *(v12 + 24) = v9;
      _os_log_impl(&dword_2239C7000, oslog, v11, "Unregistered session. { reporterID=%{private}lld, appName=%{private}s, numActiveSessions=%ld }", v12, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DF1300](v13, -1, -1);
      MEMORY[0x223DF1300](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2239EDC1C(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  [a1 getBytes:&v6 length:2];
  v1 = sub_223A20FB0();
  v2 = sub_223A214D0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 16843009;
    swift_beginAccess();
    v3[4] = HIBYTE(v6);
    _os_log_impl(&dword_2239C7000, v1, v2, "setReportInputHandler report contents { errorStatus=%{private}hhu }", v3, 5u);
    MEMORY[0x223DF1300](v3, -1, -1);
  }

  swift_beginAccess();
  v4 = sub_2239EF058(HIBYTE(v6));
  if (v4 == 3)
  {
    return 2;
  }

  else
  {
    return v4 == 2;
  }
}

void sub_2239EDD58(uint64_t a1, int a2, double a3, double a4)
{
  v5 = v4;
  v10 = v5 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_sessionRegistry;
  swift_beginAccess();
  v11 = *(v10 + 8);
  if (*(v5 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_activeAirPodSerialNumber + 8))
  {
    v12 = *(v5 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_activeAirPodSerialNumber);
    v13 = *(v5 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_activeAirPodSerialNumber + 8);
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  sub_2239E7EF4(0, &qword_27D0A48B8, 0x277CF1088);

  v14 = BMDeviceAdaptiveVolume.init(nonDrcPayload:drcPayload:sessionInfo:serialNumber:drcAVClientTimestamp:routedDrcGain:)(a1, a2 & 0xFFFFFF, v11, v12, v13, a3, a4);
  v15 = sub_223A20FB0();
  v16 = sub_223A214D0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138477827;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_2239C7000, v15, v16, "Writing event to biome. { event=%{private}@ }", v17, 0xCu);
    sub_2239EEFC8(v18);
    MEMORY[0x223DF1300](v18, -1, -1);
    MEMORY[0x223DF1300](v17, -1, -1);
  }

  [*(v5 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_biomeStreamSource) sendEvent_];
}

uint64_t sub_2239EDF2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E8, &unk_223A22E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A224A0;
  *(inited + 32) = 0x6469766F72504F49;
  v1 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xEF7373616C437265;
  *(inited + 48) = 0x7665444449484F49;
  *(inited + 56) = 0xEB00000000656369;
  v2 = MEMORY[0x277D83B88];
  *(inited + 72) = v1;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000223A24D30;
  *(inited + 96) = 65333;
  *(inited + 120) = v2;
  strcpy((inited + 128), "PrimaryUsage");
  *(inited + 168) = v2;
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = 1;
  v3 = sub_2239DC6E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48F0, &qword_223A22810);
  result = swift_arrayDestroy();
  qword_27D0A47D0 = v3;
  return result;
}

uint64_t AdaptiveVolumeManager.deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_logger;
  v2 = sub_223A20FC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AdaptiveVolumeManager.__deallocating_deinit()
{
  AdaptiveVolumeManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AdaptiveVolumeManager(uint64_t a1)
{
  result = qword_27D0A4888;
  if (!qword_27D0A4888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2239EE1F0(uint64_t a1)
{
  result = sub_223A20FC0();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_2239EE354(uint64_t a1)
{
  type metadata accessor for CFDictionary(255);
  *(a1 + 16) = v2;
  return 0;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AdaptiveVolumeManager.AVClientDrcReportTimestampAppended(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AdaptiveVolumeManager.AVClientDrcReportTimestampAppended(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2239EE418(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2239EE460(uint64_t result, int a2, int a3)
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

uint64_t sub_2239EE4B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2239EE4D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_2239EE514(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2239EF044(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2239EE59C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2239EF030(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void sub_2239EE628(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v4 = sub_2239F0844(a1);
    if (v4)
    {
      v5 = v4;
      v26 = a2;
      v57 = v2;
      *&v55[0] = MEMORY[0x277D84F90];
      v6 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v4 >> 62)
      {
        v7 = sub_223A21780();
        if (v7)
        {
LABEL_5:
          v8 = 0;
          do
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x223DF07F0](v8, v5);
            }

            else
            {
              if (v8 >= *(v6 + 16))
              {
                goto LABEL_24;
              }

              v9 = *(v5 + 8 * v8 + 32);
            }

            v10 = v9;
            a2 = (v8 + 1);
            if (__OFADD__(v8, 1))
            {
              __break(1u);
LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

            v11 = [v9 productId];
            if (v11 - 8212 > 0x10 || ((1 << (v11 - 20)) & 0x114A1) == 0)
            {
            }

            else
            {
              sub_223A21730();
              sub_223A21760();
              sub_223A21770();
              sub_223A21740();
            }

            ++v8;
          }

          while (a2 != v7);
          v18 = *&v55[0];
LABEL_28:

          if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
          {
            goto LABEL_48;
          }

          v19 = *(v18 + 16);
          if (v19)
          {
LABEL_31:
            v17 = MEMORY[0x277D84F90];
            v20 = 0;
            while (1)
            {
              if ((v18 & 0xC000000000000001) != 0)
              {
                v21 = MEMORY[0x223DF07F0](v20, v18);
                v22 = v20 + 1;
                if (__OFADD__(v20, 1))
                {
                  goto LABEL_46;
                }
              }

              else
              {
                if (v20 >= *(v18 + 16))
                {
                  goto LABEL_47;
                }

                v21 = *(v18 + 8 * v20 + 32);
                v22 = v20 + 1;
                if (__OFADD__(v20, 1))
                {
LABEL_46:
                  __break(1u);
LABEL_47:
                  __break(1u);
LABEL_48:
                  v19 = sub_223A21780();
                  if (!v19)
                  {
                    break;
                  }

                  goto LABEL_31;
                }
              }

              sub_2239F7144(v21, &v41);
              v37 = v51;
              v38 = v52;
              v39 = v53;
              v33 = v47;
              v34 = v48;
              v35 = v49;
              v36 = v50;
              v29 = v43;
              v30 = v44;
              v31 = v45;
              v32 = v46;
              v27 = v41;
              v28 = v42;
              v55[10] = v51;
              v55[11] = v52;
              v55[12] = v53;
              v55[6] = v47;
              v55[7] = v48;
              v55[8] = v49;
              v55[9] = v50;
              v55[2] = v43;
              v55[3] = v44;
              v55[4] = v45;
              v55[5] = v46;
              v40 = v54;
              v56 = v54;
              v55[0] = v41;
              v55[1] = v42;
              if (sub_2239EF284(v55) == 1)
              {
                ++v20;
                if (v22 == v19)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v17 = sub_223A0DF88(0, *(v17 + 2) + 1, 1, v17);
                }

                v24 = *(v17 + 2);
                v23 = *(v17 + 3);
                if (v24 >= v23 >> 1)
                {
                  v17 = sub_223A0DF88((v23 > 1), v24 + 1, 1, v17);
                }

                *(v17 + 2) = v24 + 1;
                v25 = &v17[216 * v24];
                *(v25 + 2) = v27;
                *(v25 + 3) = v28;
                *(v25 + 6) = v31;
                *(v25 + 7) = v32;
                *(v25 + 4) = v29;
                *(v25 + 5) = v30;
                *(v25 + 10) = v35;
                *(v25 + 11) = v36;
                *(v25 + 8) = v33;
                *(v25 + 9) = v34;
                *(v25 + 30) = v40;
                *(v25 + 13) = v38;
                *(v25 + 14) = v39;
                *(v25 + 12) = v37;
                if (v22 == v19)
                {
                  goto LABEL_50;
                }

                v20 = v22;
              }
            }
          }

          v17 = MEMORY[0x277D84F90];
LABEL_50:

          a2 = v26;
          goto LABEL_51;
        }
      }

      else
      {
        v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
          goto LABEL_5;
        }
      }

      v18 = MEMORY[0x277D84F90];
      goto LABEL_28;
    }
  }

  if (qword_27D0A47A0 != -1)
  {
LABEL_25:
    swift_once();
  }

  v13 = sub_223A20FC0();
  __swift_project_value_buffer(v13, qword_27D0A47A8);
  v14 = sub_223A20FB0();
  v15 = sub_223A214E0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2239C7000, v14, v15, "Failed to interpret connected bluetooth devices.", v16, 2u);
    MEMORY[0x223DF1300](v16, -1, -1);
  }

  v17 = MEMORY[0x277D84F90];
LABEL_51:
  *a2 = v17;
}

uint64_t sub_2239EEA9C()
{
  sub_223A21940();
  sub_223A21960();
  return sub_223A21970();
}

uint64_t sub_2239EEB10(uint64_t a1)
{
  sub_223A21940();
  sub_223A21960();
  return sub_223A21970();
}

_DWORD *sub_2239EEB54@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

_WORD *sub_2239EEBB8@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_2239EEC48(uint64_t a1, id *a2)
{
  v3 = sub_223A21210();
  *a2 = 0;
  return v3 & 1;
}

void sub_2239EECC8(uint64_t *a1@<X8>)
{
  sub_223A21220();
  v2 = sub_223A211F0();

  *a1 = v2;
}

uint64_t sub_2239EED0C()
{
  v0 = sub_223A21220();
  v1 = MEMORY[0x223DF0400](v0);

  return v1;
}

double sub_2239EED48(uint64_t a1)
{
  sub_223A21220();
  sub_223A21290();

  return result;
}

uint64_t sub_2239EED9C(uint64_t a1)
{
  sub_223A21220();
  sub_223A21940();
  sub_223A21290();
  v1 = sub_223A21970();

  return v1;
}

uint64_t sub_2239EEE10(void *a1, uint64_t *a2)
{
  v2 = sub_223A21220();
  v4 = v3;
  if (v2 == sub_223A21220() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_223A218F0();
  }

  return v7 & 1;
}

void sub_2239EEE98(uint64_t *a2@<X8>)
{
  v3 = sub_223A211F0();

  *a2 = v3;
}

uint64_t sub_2239EEEE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_223A21220();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2239EEF0C(uint64_t a1)
{
  v2 = sub_2239CA1D0(&qword_27D0A4918, type metadata accessor for FileAttributeKey, &unk_223A229D8);
  v3 = sub_2239CA1D0(&qword_27D0A4920, type metadata accessor for FileAttributeKey, &unk_223A2292C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2239EEFC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48C0, &unk_223A227F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2239EF058(uint64_t result)
{
  if (result >= 7u)
  {
    return 7;
  }

  else
  {
    return result;
  }
}

uint64_t sub_2239EF084(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2239EF284(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_2239EF2D8(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0x1FFFFFF) >> 24)
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 0xFFFFFF;
}

uint64_t sub_2239EF320(uint64_t result, int a2, int a3)
{
  if ((a3 + 0x1FFFFFF) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!a3)
  {
    v3 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v3)
    {
      v4 = ((a2 - 1) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else if (v3)
  {
    if (v3 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

void sub_2239EF3A8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t AdaptiveVolumeWorker.__allocating_init(with:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_223A20F50();
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isStarted) = 0;
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isAVSession) = 0;
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_hasMarkedAVSessionStart) = 0;
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_workerConfig;
  v4 = *MEMORY[0x277CEF9C8];
  v5 = sub_223A20BC0();
  (*(*(v5 - 8) + 104))(v2 + v3, v4, v5);
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_neededPreviousFields) = 0;
  sub_2239CB264(a1, v2 + 16);
  return v2;
}

uint64_t AdaptiveVolumeWorker.init(with:)(__int128 *a1)
{
  sub_223A20F50();
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isStarted) = 0;
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isAVSession) = 0;
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_hasMarkedAVSessionStart) = 0;
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_workerConfig;
  v4 = *MEMORY[0x277CEF9C8];
  v5 = sub_223A20BC0();
  (*(*(v5 - 8) + 104))(v1 + v3, v4, v5);
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_neededPreviousFields) = 0;
  sub_2239CB264(a1, v1 + 16);
  return v1;
}

uint64_t sub_2239EF6A0()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isStarted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2239EF6E4(char a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isStarted;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2239EF794()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isAVSession;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2239EF7D8(char a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isAVSession;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2239EF88C()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_hasMarkedAVSessionStart;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2239EF8D0(char a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_hasMarkedAVSessionStart;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2239EF980@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_2239EFA0C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_223A20BC0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_workerConfig;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_2239EFB24@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2239EFBAC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

double sub_2239EFC9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_neededPreviousFields;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_2239EFD04()
{
  swift_beginAccess();

  return result;
}

double sub_2239EFD4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_neededPreviousFields;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t AdaptiveVolumeWorker.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_logger;
  v2 = sub_223A20FC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_workerConfig;
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_2239EFEBC()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isStarted;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_2239EFF04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (v21 - v1);
  v3 = sub_223A20B90();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223A20C40();
  (*(v4 + 104))(v6, *MEMORY[0x277CEF900], v3);
  sub_223A21150();

  (*(v4 + 8))(v6, v3);
  v7 = sub_223A20680();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_2239C9F88(v2);
  }

  else if ((*(v8 + 88))(v2, v7) == *MEMORY[0x277CEF860])
  {
    (*(v8 + 96))(v2, v7);
    v10 = *v2;
    v9 = v2[1];
    if (qword_281332B28 != -1)
    {
LABEL_14:
      swift_once();
    }

    v11 = qword_2813359C0;
    v12 = qword_2813359C0 + 40;
    v13 = -*(qword_2813359C0 + 16);
    v14 = -1;
    while (v13 + v14 != -1)
    {
      if (++v14 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }

      v15 = v12 + 16;
      v18 = v12 - 8;
      v16 = *(v12 - 8);
      v17 = *(v18 + 8);
      v21[2] = v10;
      v21[3] = v9;
      v21[0] = v16;
      v21[1] = v17;
      sub_2239D1804();
      v19 = sub_223A21630();
      v12 = v15;
      if (v19)
      {

        return 1;
      }
    }
  }

  else
  {
    (*(v8 + 8))(v2, v7);
  }

  return 0;
}

uint64_t sub_2239F01FC()
{
  v0 = sub_223A20680();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_223A20C40();
  if (*(v4 + 16) && (v5 = sub_2239CDC74(0x757074754F435244, 0xED00006E69614774), (v6 & 1) != 0))
  {
    (*(v1 + 16))(v3, *(v4 + 56) + *(v1 + 72) * v5, v0);

    v7 = sub_223A20640();
    (*(v1 + 8))(v3, v0);
    return v7;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_2239F0358()
{
  result = qword_281333138[0];
  if (!qword_281333138[0])
  {
    type metadata accessor for AdaptiveVolumeWorker(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281333138);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_2239F045C(uint64_t a1)
{
  result = sub_223A20FC0();
  if (v2 <= 0x3F)
  {
    result = sub_223A20BC0();
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

uint64_t sub_2239F0844(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_223A21750();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_2239D17A8(i, v5);
    sub_2239E7EF4(0, &qword_27D0A49A0, 0x277CF3240);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_223A21730();
    sub_223A21760();
    sub_223A21770();
    sub_223A21740();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_2239F0950()
{
  type metadata accessor for AirPodManager(0);
  swift_allocObject();
  result = AirPodManager.init()();
  qword_27D0A4E18 = result;
  return result;
}

uint64_t AirPodManager.init()()
{
  v1 = v0;
  v2 = sub_223A20FC0();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x28223BE20](v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_223A21520();
  MEMORY[0x28223BE20](v4);
  v5 = sub_223A21540();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_223A21090();
  MEMORY[0x28223BE20](v9 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4938, &unk_223A22B80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v0 + 16) = v10;
  v31 = sub_2239E7EF4(0, &qword_281332718, 0x277D85C78);
  sub_223A21070();
  (*(v6 + 104))(v8, *MEMORY[0x277D85268], v5);
  v32 = MEMORY[0x277D84F90];
  sub_2239CA218(&qword_281332720, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4818, &qword_223A224B0);
  sub_2239C9B30(&qword_281332738, &qword_27D0A4818, &qword_223A224B0);
  sub_223A21640();
  *(v0 + 24) = sub_223A21570();
  v11 = OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_logger;
  sub_223A20FA0();
  v12 = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_sampledAirPodInformation) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_lastSampledAirPodInformation) = v12;
  v13 = OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_periodicSample;
  sub_223A20930();
  sub_223A21440();
  *(v0 + v13) = sub_223A20910();
  v32 = sub_223A20A30();
  v33 = v14;
  MEMORY[0x223DF0390](0x65726F696475612ELL, 0xE900000000000067);
  v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v16 = sub_223A211F0();

  v17 = [v15 initWithSuiteName_];

  if (v17)
  {
    *(v1 + 32) = v17;
  }

  else
  {
    v18 = v28;
    v19 = v29;
    v20 = v30;
    (*(v29 + 16))(v28, v1 + v11, v30);
    v21 = sub_223A20FB0();
    v22 = sub_223A214E0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v18;
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2239C7000, v21, v22, "Unable to initialize AudioRegistrationWorker userDefaults.", v24, 2u);
      v25 = v24;
      v18 = v23;
      MEMORY[0x223DF1300](v25, -1, -1);
    }

    v26 = *(v19 + 8);
    v26(v18, v20);

    v26((v1 + v11), v20);

    type metadata accessor for AirPodManager(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t type metadata accessor for AirPodManager(uint64_t a1)
{
  result = qword_27D0A4960;
  if (!qword_27D0A4960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2239F0F2C()
{
  v1 = v0;
  v2 = sub_223A21040();
  v15 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_223A21090();
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_223A20FB0();
  v9 = sub_223A214D0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2239C7000, v8, v9, "Marking start of AirPod session.", v10, 2u);
    MEMORY[0x223DF1300](v10, -1, -1);
  }

  aBlock[4] = sub_2239F3E70;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2239EC158;
  aBlock[3] = &block_descriptor_26;
  v11 = _Block_copy(aBlock);

  sub_223A21050();
  v16 = MEMORY[0x277D84F90];
  sub_2239CA218(&qword_27D0A48C8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48D0, &qword_223A22BE0);
  sub_2239C9B30(&qword_27D0A48D8, &qword_27D0A48D0, &qword_223A22BE0);
  sub_223A21640();
  MEMORY[0x223DF0640](0, v7, v4, v11);
  _Block_release(v11);
  (*(v15 + 8))(v4, v2);
  (*(v5 + 8))(v7, v14);
}

uint64_t sub_2239F1248(uint64_t a1)
{

  sub_223A20EE0();

  if (!v2)
  {
    sub_2239F1808();

    sub_223A20920();
  }

  return result;
}

double sub_2239F12F4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_sampledAirPodInformation;
  swift_beginAccess();
  if (*(*(a1 + v2) + 16))
  {

    v5 = sub_2239F2018(v4);

    if (v5)
    {
      *(a1 + v2) = MEMORY[0x277D84FA0];
    }
  }

  return result;
}

uint64_t sub_2239F137C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_223A21040();
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_223A21090();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_223A20FB0();
  v11 = sub_223A214D0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2239C7000, v10, v11, "Marking end of AirPod session.", v12, 2u);
    MEMORY[0x223DF1300](v12, -1, -1);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_2239F3E68;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2239EC158;
  aBlock[3] = &block_descriptor_23;
  v14 = _Block_copy(aBlock);

  sub_223A21050();
  v19 = MEMORY[0x277D84F90];
  sub_2239CA218(&qword_27D0A48C8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48D0, &qword_223A22BE0);
  sub_2239C9B30(&qword_27D0A48D8, &qword_27D0A48D0, &qword_223A22BE0);
  sub_223A21640();
  MEMORY[0x223DF0640](0, v9, v6, v14);
  _Block_release(v14);
  (*(v18 + 8))(v6, v4);
  (*(v7 + 8))(v9, v17);
}

void sub_2239F16B4(uint64_t a1, uint64_t a2)
{

  sub_223A20EF0();

  v4 = *(a1 + 32);
  v5 = sub_223A211F0();
  [v4 doubleForKey_];
  v7 = v6;

  sub_223A21410();
  if (v7 <= v8)
  {
    if (sub_2239F28D0(a2))
    {
      sub_2239F2580();
      sub_223A21430();
    }

    else
    {
      sub_223A21450();
    }

    v10 = v9;
    sub_223A21410();
    v12 = v10 + v11;
    v13 = sub_223A211F0();
    [v4 setDouble:v13 forKey:v12];
  }
}

double sub_2239F17E0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_lastSampledAirPodInformation);

  return result;
}

double sub_2239F1808()
{
  v1 = v0;
  sub_223A209F0();
  sub_223A209E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E0, &unk_223A22800);
  sub_223A209D0();

  v2 = v13[0];

  v3 = sub_223A20FB0();
  v4 = sub_223A214D0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136380675;
    v7 = MEMORY[0x223DF0470](v2, &type metadata for AirPodInformation);
    v9 = sub_2239E1910(v7, v8, v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2239C7000, v3, v4, "sampleConnectedDevices() { sampledAirPods=%{private}s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223DF1300](v6, -1, -1);
    MEMORY[0x223DF1300](v5, -1, -1);
  }

  v10 = sub_2239F3BFC(v2);

  v11 = OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_sampledAirPodInformation;
  swift_beginAccess();
  sub_2239F1E88(v10);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_lastSampledAirPodInformation) = *(v1 + v11);

  return result;
}

void sub_2239F19F0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  if (!a1 || (v5 = sub_2239F0844(a1)) == 0)
  {
    v17 = sub_223A20FB0();
    v18 = sub_223A214E0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2239C7000, v17, v18, "Failed to interpret connected bluetooth devices.", v19, 2u);
      MEMORY[0x223DF1300](v19, -1, -1);
    }

    v20 = MEMORY[0x277D84F90];
    goto LABEL_50;
  }

  v32 = a2;
  *&v62[0] = MEMORY[0x277D84F90];
  v6 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
LABEL_26:
    v22 = v5;
    v7 = sub_223A21780();
    v5 = v22;
    if (v7)
    {
LABEL_5:
      v30 = v3;
      v8 = 0;
      v64 = v5 & 0xC000000000000001;
      v31 = v5;
      v33 = v5 + 32;
      v3 = 0x2784EB000uLL;
      do
      {
        if (v64)
        {
          v5 = MEMORY[0x223DF07F0](v8, v31);
        }

        else
        {
          if (v8 >= *(v6 + 16))
          {
            goto LABEL_25;
          }

          v5 = *(v33 + 8 * v8);
        }

        v9 = v5;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v11 = v7;
        if (qword_27D0A47E0 != -1)
        {
          swift_once();
        }

        v12 = off_27D0A4930;
        v13 = [v9 productId];
        v14 = *(v12 + 2);
        v15 = (v12 + 32);
        do
        {
          if (!v14)
          {

            goto LABEL_7;
          }

          v16 = *v15++;
          --v14;
        }

        while (v16 != v13);
        sub_223A21730();
        sub_223A21760();
        sub_223A21770();
        v5 = sub_223A21740();
LABEL_7:
        v7 = v11;
      }

      while (v8 != v11);
      v21 = *&v62[0];

      if ((*&v62[0] & 0x8000000000000000) != 0)
      {
        goto LABEL_47;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }
  }

  v21 = MEMORY[0x277D84F90];

  if (v21 < 0)
  {
    goto LABEL_47;
  }

LABEL_28:
  if ((v21 & 0x4000000000000000) != 0)
  {
    goto LABEL_47;
  }

  v23 = *(v21 + 16);
  if (!v23)
  {
    goto LABEL_48;
  }

  do
  {
    v20 = MEMORY[0x277D84F90];
    v24 = 0;
    while ((v21 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x223DF07F0](v24, v21);
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_45;
      }

LABEL_34:
      sub_2239F7144(v25, &v48);
      v44 = v58;
      v45 = v59;
      v46 = v60;
      v40 = v54;
      v41 = v55;
      v42 = v56;
      v43 = v57;
      v36 = v50;
      v37 = v51;
      v38 = v52;
      v39 = v53;
      v34 = v48;
      v35 = v49;
      v62[10] = v58;
      v62[11] = v59;
      v62[12] = v60;
      v62[6] = v54;
      v62[7] = v55;
      v62[8] = v56;
      v62[9] = v57;
      v62[2] = v50;
      v62[3] = v51;
      v62[4] = v52;
      v62[5] = v53;
      v47 = v61;
      v63 = v61;
      v62[0] = v48;
      v62[1] = v49;
      if (sub_2239EF284(v62) == 1)
      {
        ++v24;
        if (v26 == v23)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_223A0DF88(0, *(v20 + 2) + 1, 1, v20);
        }

        v28 = *(v20 + 2);
        v27 = *(v20 + 3);
        if (v28 >= v27 >> 1)
        {
          v20 = sub_223A0DF88((v27 > 1), v28 + 1, 1, v20);
        }

        *(v20 + 2) = v28 + 1;
        v29 = &v20[216 * v28];
        *(v29 + 2) = v34;
        *(v29 + 3) = v35;
        *(v29 + 6) = v38;
        *(v29 + 7) = v39;
        *(v29 + 4) = v36;
        *(v29 + 5) = v37;
        *(v29 + 10) = v42;
        *(v29 + 11) = v43;
        *(v29 + 8) = v40;
        *(v29 + 9) = v41;
        *(v29 + 30) = v47;
        *(v29 + 13) = v45;
        *(v29 + 14) = v46;
        *(v29 + 12) = v44;
        if (v26 == v23)
        {
          goto LABEL_49;
        }

        v24 = v26;
      }
    }

    if (v24 >= *(v21 + 16))
    {
      goto LABEL_46;
    }

    v25 = *(v21 + 8 * v24 + 32);
    v26 = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      goto LABEL_34;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v23 = sub_223A21780();
  }

  while (v23);
LABEL_48:
  v20 = MEMORY[0x277D84F90];
LABEL_49:

  a2 = v32;
LABEL_50:
  *a2 = v20;
}

uint64_t sub_2239F1E88(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_2239EF230(v23))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v1 + 48) + 216 * (v9 | (v8 << 6));
    v11 = *(v10 + 16);
    v25[0] = *v10;
    v25[1] = v11;
    v12 = *(v10 + 80);
    v14 = *(v10 + 32);
    v13 = *(v10 + 48);
    v25[4] = *(v10 + 64);
    v25[5] = v12;
    v25[2] = v14;
    v25[3] = v13;
    v15 = *(v10 + 144);
    v17 = *(v10 + 96);
    v16 = *(v10 + 112);
    v25[8] = *(v10 + 128);
    v25[9] = v15;
    v25[6] = v17;
    v25[7] = v16;
    v19 = *(v10 + 176);
    v18 = *(v10 + 192);
    v20 = *(v10 + 160);
    v26 = *(v10 + 208);
    v25[11] = v19;
    v25[12] = v18;
    v25[10] = v20;
    sub_2239EF1D4(v25, v23);
    sub_223A04AB0(v21, v25);
    v23[10] = v21[10];
    v23[11] = v21[11];
    v23[12] = v21[12];
    v24 = v22;
    v23[6] = v21[6];
    v23[7] = v21[7];
    v23[8] = v21[8];
    v23[9] = v21[9];
    v23[2] = v21[2];
    v23[3] = v21[3];
    v23[4] = v21[4];
    v23[5] = v21[5];
    v23[0] = v21[0];
    v23[1] = v21[1];
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2239F2018(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2239F2670();

  v5 = sub_2239F3BFC(v4);

  v6 = sub_2239F23DC(v5, a1);
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = sub_223A04790(*(v6 + 16), 0);
    v10 = sub_223A0742C(&v28, v9 + 32, v8, v7);
    sub_2239CE254();
    if (v10 == v8)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = MEMORY[0x277D84F90];
LABEL_5:

  v11 = sub_223A20FB0();
  v12 = sub_223A214D0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136380675;
    v15 = MEMORY[0x223DF0470](v9, &type metadata for AirPodInformation);
    v17 = sub_2239E1910(v15, v16, &v28);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2239C7000, v11, v12, "storeConnectedAirPodsInDefaults() { airPodInformationList=%{private}s }", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x223DF1300](v14, -1, -1);
    MEMORY[0x223DF1300](v13, -1, -1);
  }

  sub_223A20260();
  swift_allocObject();
  sub_223A20250();
  v28 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E0, &unk_223A22800);
  sub_2239F3D2C(&qword_27D0A4988, sub_2239F3DA4, MEMORY[0x277D83948]);
  v18 = sub_223A20240();
  v20 = v19;

  v21 = *(v2 + 32);
  v22 = sub_223A20360();
  v23 = sub_223A211F0();
  [v21 setObject:v22 forKey:v23];

  v24 = sub_223A20FB0();
  v25 = sub_223A214D0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2239C7000, v24, v25, "Succesfully stored AirPodInformation in defaults", v26, 2u);
    MEMORY[0x223DF1300](v26, -1, -1);
  }

  sub_2239EF084(v18, v20);

  return 1;
}

uint64_t sub_2239F23DC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v26 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_2239EF230(v24))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(v2 + 48) + 216 * (v10 | (v9 << 6));
    v12 = *(v11 + 16);
    v27[0] = *v11;
    v27[1] = v12;
    v13 = *(v11 + 80);
    v15 = *(v11 + 32);
    v14 = *(v11 + 48);
    v27[4] = *(v11 + 64);
    v27[5] = v13;
    v27[2] = v15;
    v27[3] = v14;
    v16 = *(v11 + 144);
    v18 = *(v11 + 96);
    v17 = *(v11 + 112);
    v27[8] = *(v11 + 128);
    v27[9] = v16;
    v27[6] = v18;
    v27[7] = v17;
    v20 = *(v11 + 176);
    v19 = *(v11 + 192);
    v21 = *(v11 + 160);
    v28 = *(v11 + 208);
    v27[11] = v20;
    v27[12] = v19;
    v27[10] = v21;
    sub_2239EF1D4(v27, v24);
    sub_223A04AB0(v22, v27);
    v24[10] = v22[10];
    v24[11] = v22[11];
    v24[12] = v22[12];
    v25 = v23;
    v24[6] = v22[6];
    v24[7] = v22[7];
    v24[8] = v22[8];
    v24[9] = v22[9];
    v24[2] = v22[2];
    v24[3] = v22[3];
    v24[4] = v22[4];
    v24[5] = v22[5];
    v24[0] = v22[0];
    v24[1] = v22[1];
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v26;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_2239F2580()
{
  v1 = *(v0 + 32);
  v2 = sub_223A211F0();
  [v1 removeObjectForKey_];

  oslog = sub_223A20FB0();
  v3 = sub_223A214D0();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2239C7000, oslog, v3, "Succesfully removed defaults", v4, 2u);
    MEMORY[0x223DF1300](v4, -1, -1);
  }
}

uint64_t sub_2239F2670()
{
  v1 = *(v0 + 32);
  v2 = sub_223A211F0();
  v3 = [v1 dataForKey_];

  if (v3)
  {
    v4 = sub_223A20370();
    v6 = v5;

    sub_223A20230();
    swift_allocObject();
    sub_223A20220();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E0, &unk_223A22800);
    sub_2239F3D2C(&qword_27D0A4978, sub_2239F3BA8, MEMORY[0x277D83978]);
    sub_223A20210();

    sub_2239EF084(v4, v6);
    return v11;
  }

  else
  {
    v7 = sub_223A20FB0();
    v8 = sub_223A214E0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2239C7000, v7, v8, "No airPodInformationList found in defaults.", v9, 2u);
      MEMORY[0x223DF1300](v9, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2239F28D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_223A21030();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_223A210B0();
  v58 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v52 - v12;
  v14 = sub_2239F2670();
  if (*(v14 + 16))
  {
    v15 = sub_2239F3408(a1);
    if (v15)
    {
      v53 = v15;
      v54 = v5;
      v55 = v4;
      v56 = v8;
      v57 = v13;
      v16 = OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_logger;

      v52[1] = v16;
      v17 = sub_223A20FB0();
      v18 = sub_223A214D0();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        aBlock[0] = v20;
        *v19 = 136380675;
        v21 = MEMORY[0x223DF0470](v14, &type metadata for AirPodInformation);
        v23 = sub_2239E1910(v21, v22, aBlock);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_2239C7000, v17, v18, "publishConnectedAirPods() { %{private}s }", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x223DF1300](v20, -1, -1);
        MEMORY[0x223DF1300](v19, -1, -1);
      }

      v24 = swift_allocObject();
      *(v24 + 16) = 1;
      v52[0] = v24 + 16;
      v25 = dispatch_group_create();
      dispatch_group_enter(v25);
      v26 = swift_allocObject();
      v26[2] = v25;
      v26[3] = v2;
      v26[4] = v24;
      v26[5] = v14;
      v27 = v53;
      v26[6] = v53;
      aBlock[4] = sub_2239F3B98;
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2239F3388;
      aBlock[3] = &block_descriptor_0;
      v28 = _Block_copy(aBlock);
      v29 = v25;

      v30 = v27;

      [v30 startConfigurationWithCompletionHandler_];
      _Block_release(v28);
      sub_223A210A0();
      *v7 = 10;
      v32 = v54;
      v31 = v55;
      (*(v54 + 104))(v7, *MEMORY[0x277D85188], v55);
      v33 = v57;
      MEMORY[0x223DF01B0](v11, v7);
      (*(v32 + 8))(v7, v31);
      v34 = *(v58 + 8);
      v35 = v11;
      v36 = v29;
      v37 = v56;
      v34(v35, v56);
      if ((sub_223A21510() & 1) == 0)
      {
        v34(v33, v37);

        swift_beginAccess();
        v51 = *(v24 + 16);

        return v51;
      }

      v38 = sub_223A20FB0();
      v39 = sub_223A214E0();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = v37;
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_2239C7000, v38, v39, "AirPodWorker RTC upload timed out.", v41, 2u);
        MEMORY[0x223DF1300](v41, -1, -1);

        v42 = v57;
        v43 = v40;
      }

      else
      {

        v42 = v57;
        v43 = v37;
      }

      v34(v42, v43);
    }

    else
    {

      v48 = sub_223A20FB0();
      v49 = sub_223A214E0();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 134217984;
        *(v50 + 4) = a1;
        _os_log_impl(&dword_2239C7000, v48, v49, "Unable to create RTCReportingSession. { sessionID=%lld }", v50, 0xCu);
        MEMORY[0x223DF1300](v50, -1, -1);
      }
    }

    return 0;
  }

  else
  {

    v44 = sub_223A20FB0();
    v45 = sub_223A214D0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2239C7000, v44, v45, "AirPodInformationList is empty. Returning early.", v46, 2u);
      MEMORY[0x223DF1300](v46, -1, -1);
    }

    return 1;
  }
}

void sub_2239F2EF8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  group = a2;
  v45 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    sub_223A20E80();
    v7 = *(a5 + 16);
    if (v7)
    {
      v8 = a5 + 32;
      swift_beginAccess();
      do
      {
        v10 = *(v8 + 176);
        v43[10] = *(v8 + 160);
        v43[11] = v10;
        v43[12] = *(v8 + 192);
        v44 = *(v8 + 208);
        v11 = *(v8 + 112);
        v43[6] = *(v8 + 96);
        v43[7] = v11;
        v12 = *(v8 + 144);
        v43[8] = *(v8 + 128);
        v43[9] = v12;
        v13 = *(v8 + 48);
        v43[2] = *(v8 + 32);
        v43[3] = v13;
        v14 = *(v8 + 80);
        v43[4] = *(v8 + 64);
        v43[5] = v14;
        v15 = *(v8 + 16);
        v43[0] = *v8;
        v43[1] = v15;
        sub_2239EF1D4(v43, v42);
        v16 = sub_2239F3E90();
        sub_2239EF230(v43);

        v17 = sub_223A20FB0();
        v18 = sub_223A214D0();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v42[0] = v20;
          *v19 = 136380675;
          v21 = sub_223A21120();
          v23 = sub_2239E1910(v21, v22, v42);

          *(v19 + 4) = v23;
          _os_log_impl(&dword_2239C7000, v17, v18, "Sending RTC message. { airPodInformation=%{private}s }", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v20);
          MEMORY[0x223DF1300](v20, -1, -1);
          MEMORY[0x223DF1300](v19, -1, -1);
        }

        sub_2239D6C54(v16);

        v24 = sub_223A21100();

        v42[0] = 0;
        v25 = [a6 sendMessageWithCategory:17 type:11 payload:v24 error:{v42, group}];

        if (v25)
        {
          v9 = v42[0];
        }

        else
        {
          v26 = v42[0];
          v27 = sub_223A202A0();

          swift_willThrow();
          v28 = v27;
          v29 = sub_223A20FB0();
          v30 = sub_223A214E0();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v42[0] = v32;
            *v31 = 136380675;
            swift_getErrorValue();
            v33 = sub_223A21920();
            v35 = sub_2239E1910(v33, v34, v42);

            *(v31 + 4) = v35;
            _os_log_impl(&dword_2239C7000, v29, v30, "Error sending RTC message. { error=%{private}s }", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v32);
            MEMORY[0x223DF1300](v32, -1, -1);
            MEMORY[0x223DF1300](v31, -1, -1);
          }

          else
          {
          }

          *(a4 + 16) = 0;
        }

        v8 += 216;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v36 = sub_223A20FB0();
    v37 = sub_223A214E0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2239C7000, v36, v37, "No RTC backends found. This iteration will not get sent to the server.", v38, 2u);
      MEMORY[0x223DF1300](v38, -1, -1);
    }

    swift_beginAccess();
    *(a4 + 16) = 0;
  }

  dispatch_group_leave(group);
}

double sub_2239F3388(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_223A21380();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);

  return result;
}

id sub_2239F3408(uint64_t a1)
{
  v2 = [objc_opt_self() newHierarchyTokenFromParentToken_];
  if (!v2)
  {
    v27 = sub_223A20FB0();
    v28 = sub_223A214E0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2239C7000, v27, v28, "Failed to unwrap RTC reporting token.", v29, 2u);
      MEMORY[0x223DF1300](v29, -1, -1);
    }

    return 0;
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E8, &unk_223A22E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A22B60;
  result = *MEMORY[0x277D44038];
  if (!*MEMORY[0x277D44038])
  {
    __break(1u);
    goto LABEL_15;
  }

  *(inited + 32) = sub_223A21220();
  *(inited + 40) = v6;
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v8 = sub_2239E7EF4(0, &qword_2813326F8, 0x277CCABB0);
  *(inited + 72) = v8;
  *(inited + 48) = v7;
  result = *MEMORY[0x277D44048];
  if (!*MEMORY[0x277D44048])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(inited + 80) = sub_223A21220();
  *(inited + 88) = v9;
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 120) = v8;
  *(inited + 96) = v10;
  result = *MEMORY[0x277D44078];
  if (!*MEMORY[0x277D44078])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(inited + 128) = sub_223A21220();
  *(inited + 136) = v11;
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  *(inited + 168) = v8;
  *(inited + 144) = v12;
  result = *MEMORY[0x277D44018];
  if (!*MEMORY[0x277D44018])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(inited + 176) = sub_223A21220();
  *(inited + 184) = v13;
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 216) = v8;
  *(inited + 192) = v14;
  result = *MEMORY[0x277D44060];
  if (!*MEMORY[0x277D44060])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(inited + 224) = sub_223A21220();
  *(inited + 232) = v15;
  *(inited + 264) = sub_2239E7EF4(0, &qword_27D0A4970, 0x277D43FE8);
  *(inited + 240) = v3;
  v16 = v3;
  v17 = sub_2239DC6E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48F0, &qword_223A22810);
  swift_arrayDestroy();
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_223A22B70;
  result = *MEMORY[0x277D44088];
  if (!*MEMORY[0x277D44088])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v18 + 32) = sub_223A21220();
  *(v18 + 40) = v19;
  v20 = MEMORY[0x277D837D0];
  *(v18 + 72) = MEMORY[0x277D837D0];
  *(v18 + 48) = 0xD000000000000011;
  *(v18 + 56) = 0x8000000223A24EE0;
  result = *MEMORY[0x277D440A0];
  if (*MEMORY[0x277D440A0])
  {
    *(v18 + 80) = sub_223A21220();
    *(v18 + 88) = v21;
    *(v18 + 120) = v20;
    *(v18 + 96) = 0xD000000000000014;
    *(v18 + 104) = 0x8000000223A24F00;
    v22 = sub_2239DC6E4(v18);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_2239D6C54(v17);

    sub_2239D6C54(v22);

    v23 = objc_allocWithZone(MEMORY[0x277D43FE8]);
    v24 = sub_223A21100();

    v25 = sub_223A21100();

    v26 = [v23 initWithSessionInfo:v24 userInfo:v25 frameworksToCheck:0];

    return v26;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t AirPodManager.deinit()
{

  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_logger;
  v2 = sub_223A20FC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AirPodManager.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_logger;
  v2 = sub_223A20FC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

char *sub_2239F39C4()
{
  v7 = MEMORY[0x277D84F90];
  result = sub_223A02CBC(0, 20, 0);
  v1 = 0;
  v2 = v7;
  v3 = *(v7 + 16);
  do
  {
    v4 = byte_2837028C8[v1 + 32];
    v8 = v2;
    v5 = *(v2 + 24);
    if (v3 >= v5 >> 1)
    {
      result = sub_223A02CBC((v5 > 1), v3 + 1, 1);
    }

    ++v1;
    v6 = dword_223A22BEC[v4];
    v2 = v8;
    *(v8 + 16) = v3 + 1;
    *(v8 + 4 * v3++ + 32) = v6;
  }

  while (v1 != 20);
  off_27D0A4930 = v8;
  return result;
}

uint64_t sub_2239F3AAC(uint64_t a1)
{
  result = sub_223A20FC0();
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

unint64_t sub_2239F3BA8()
{
  result = qword_27D0A4980;
  if (!qword_27D0A4980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4980);
  }

  return result;
}

uint64_t sub_2239F3BFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2239F3DF8();
  result = MEMORY[0x223DF0570](v2, &type metadata for AirPodInformation, v3);
  v16 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 176);
      v17[10] = *(v5 + 160);
      v17[11] = v6;
      v17[12] = *(v5 + 192);
      v18 = *(v5 + 208);
      v7 = *(v5 + 112);
      v17[6] = *(v5 + 96);
      v17[7] = v7;
      v8 = *(v5 + 144);
      v17[8] = *(v5 + 128);
      v17[9] = v8;
      v9 = *(v5 + 48);
      v17[2] = *(v5 + 32);
      v17[3] = v9;
      v10 = *(v5 + 80);
      v17[4] = *(v5 + 64);
      v17[5] = v10;
      v11 = *(v5 + 16);
      v17[0] = *v5;
      v17[1] = v11;
      sub_2239EF1D4(v17, v14);
      sub_223A04AB0(v12, v17);
      v14[10] = v12[10];
      v14[11] = v12[11];
      v14[12] = v12[12];
      v15 = v13;
      v14[6] = v12[6];
      v14[7] = v12[7];
      v14[8] = v12[8];
      v14[9] = v12[9];
      v14[2] = v12[2];
      v14[3] = v12[3];
      v14[4] = v12[4];
      v14[5] = v12[5];
      v14[0] = v12[0];
      v14[1] = v12[1];
      sub_2239EF230(v14);
      v5 += 216;
      --v2;
    }

    while (v2);
    return v16;
  }

  return result;
}

uint64_t sub_2239F3D2C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0A48E0, &unk_223A22800);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2239F3DA4()
{
  result = qword_27D0A4990;
  if (!qword_27D0A4990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4990);
  }

  return result;
}

unint64_t sub_2239F3DF8()
{
  result = qword_27D0A4998;
  if (!qword_27D0A4998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4998);
  }

  return result;
}

unint64_t sub_2239F3E90()
{
  v1 = v0;
  v2 = sub_223A20440();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_223A20400();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_223A20460();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_223A203C0();
  v12 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_223A208C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E8, &unk_223A22E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A22C40;
  *(inited + 32) = 0xD000000000000010;
  v42 = inited + 32;
  *(inited + 40) = 0x8000000223A24F60;
  v48 = *(v1 + 136);
  v16 = MEMORY[0x277D837D0];
  *(inited + 48) = v48;
  *(inited + 72) = v16;
  *(inited + 80) = 0x7372655665736143;
  *(inited + 88) = 0xEB000000006E6F69;
  v47 = *(v1 + 152);
  *(inited + 96) = v47;
  *(inited + 120) = v16;
  *(inited + 128) = 0x676E69737546;
  *(inited + 136) = 0xE600000000000000;
  v46 = *(v1 + 200);
  *(inited + 144) = *(v1 + 200);
  *(inited + 168) = v16;
  *(inited + 176) = 0x6E6E6F437473616CLL;
  *(inited + 184) = 0xEF57576465746365;
  sub_2239F8A08(&v48, &v45);
  sub_2239F8A08(&v47, &v45);
  sub_2239F8A08(&v46, &v45);
  sub_223A203A0();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9830], v5);
  sub_223A20410();
  (*(v6 + 8))(v8, v5);
  sub_223A20420();
  sub_223A20430();
  v18 = v40;
  v17 = v41;
  (*(v40 + 104))(v4, *MEMORY[0x277CC9940], v41);
  v19 = sub_223A20450();
  (*(v18 + 8))(v4, v17);
  (*(v38 + 8))(v11, v39);
  (*(v12 + 8))(v14, v36);
  v20 = MEMORY[0x277D83B88];
  *(inited + 192) = v19;
  *(inited + 216) = v20;
  *(inited + 224) = 0xD000000000000012;
  *(inited + 232) = 0x8000000223A24F80;
  v21 = *(v1 + 8);
  v45 = v21;
  v22 = (v1 + 24);
  v23 = *(v1 + 56);
  v24 = v37;
  if (v37)
  {
    v22 = (v1 + 40);
  }

  v25 = *v22;
  *(inited + 240) = v21;
  v26 = MEMORY[0x277D837D0];
  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 272) = 0xD000000000000019;
  v27 = MEMORY[0x277D83E88];
  *(inited + 280) = 0x8000000223A24FA0;
  *(inited + 288) = v23;
  *(inited + 312) = v27;
  strcpy((inited + 320), "LeftAudioUUID");
  *(inited + 334) = -4864;
  if (v24)
  {
    v28 = (v1 + 96);
  }

  else
  {
    v28 = (v1 + 80);
  }

  *(inited + 336) = v25;
  *(inited + 344) = v29;
  *(inited + 360) = v26;
  *(inited + 368) = 0xD000000000000013;
  *(inited + 376) = 0x8000000223A24FC0;
  v44 = *(v1 + 64);
  v30 = *(v1 + 112);
  v31 = *v28;
  *(inited + 384) = v44;
  *(inited + 408) = v26;
  *(inited + 416) = 0xD00000000000001ALL;
  *(inited + 424) = 0x8000000223A24FE0;
  *(inited + 432) = v30;
  *(inited + 456) = v27;
  strcpy((inited + 464), "RightAudioUUID");
  *(inited + 479) = -18;

  *(inited + 504) = v26;
  *(inited + 480) = v31;
  *(inited + 488) = v32;
  sub_2239F8A08(&v45, v43);
  sub_2239F8A08(&v44, v43);
  v33 = sub_2239DC6E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48F0, &qword_223A22810);
  swift_arrayDestroy();
  return v33;
}

uint64_t sub_2239F4488()
{
  v0 = 1885759585;
  v15 = MEMORY[0x277D84F90];
  sub_2239D32E0(0, 2, 0);
  v1 = byte_283702920;
  sub_223A21700();
  if (v1)
  {
    v2 = 1651533936;
  }

  else
  {
    v2 = 1114663024;
  }

  if (!v1)
  {
    v0 = 1681023329;
  }

  MEMORY[0x223DF0390](v2, 0xE400000000000000);

  MEMORY[0x223DF0390](2107424, 0xE300000000000000);
  MEMORY[0x223DF0390](v0, 0xE400000000000000);

  MEMORY[0x223DF0390](0x2028202920, 0xE500000000000000);
  v3 = sub_223A218E0();
  MEMORY[0x223DF0390](v3);

  MEMORY[0x223DF0390](10528, 0xE200000000000000);
  v5 = *(v15 + 16);
  v4 = *(v15 + 24);
  if (v5 >= v4 >> 1)
  {
    sub_2239D32E0((v4 > 1), v5 + 1, 1);
  }

  *(v15 + 16) = v5 + 1;
  v6 = v15 + 16 * v5;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0xE000000000000000;
  v7 = byte_283702921;
  sub_223A21700();
  if (v7)
  {
    v8 = 1651533936;
  }

  else
  {
    v8 = 1114663024;
  }

  if (v7)
  {
    v9 = 1885759585;
  }

  else
  {
    v9 = 1681023329;
  }

  MEMORY[0x223DF0390](v8, 0xE400000000000000);

  MEMORY[0x223DF0390](2107424, 0xE300000000000000);
  MEMORY[0x223DF0390](v9, 0xE400000000000000);

  MEMORY[0x223DF0390](0x2028202920, 0xE500000000000000);
  v10 = sub_223A218E0();
  MEMORY[0x223DF0390](v10);

  MEMORY[0x223DF0390](10528, 0xE200000000000000);
  v12 = *(v15 + 16);
  v11 = *(v15 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_2239D32E0((v11 > 1), v12 + 1, 1);
  }

  *(v15 + 16) = v12 + 1;
  v13 = v15 + 16 * v12;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  return v15;
}