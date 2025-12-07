void sub_25C815754(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, void *a5, void *a6, char a7)
{
  v114 = a4;
  v115 = a6;
  v113 = a3;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v111 = *(v118 - 1);
  v9 = MEMORY[0x28223BE20](v118);
  v117 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v112 = &v93 - v12;
  MEMORY[0x28223BE20](v11);
  v116 = &v93 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  v120 = *(v14 - 8);
  v121 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v119 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v93 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v93 - v20;
  v22 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v23 = qword_281559838;
  v24 = MEMORY[0x277D84F90];
  sub_25C82E00C(v22, &dword_25C7D2000, v23, "Start generatePETReportAndLog", 29, 2, MEMORY[0x277D84F90]);

  v25 = [objc_allocWithZone(ODCurareReportFillerReport) init];
  if (v25)
  {
    v26 = v25;
    v27 = sub_25C82E07C();
    [v26 setBundleIdentifier_];

    v28 = [objc_opt_self() sharedInstance];
    if (!v28)
    {
      v34 = sub_25C82E28C();
      v33 = qword_281559838;
      sub_25C82E00C(v34, &dword_25C7D2000, v33, "Unable to get petLogger object", 30, 2, MEMORY[0x277D84F90]);

      goto LABEL_9;
    }

    v29 = v28;
    if (a7)
    {
      v30 = sub_25C82E28C();
      v31 = qword_281559838;
      sub_25C82E00C(v30, &dword_25C7D2000, v31, "Reporting failure because framework failed too many times", 57, 2, MEMORY[0x277D84F90]);

      [v26 setFrameworkFailure_];
      [v29 logMessage_];
LABEL_7:
      v32 = sub_25C82E25C();
      v33 = qword_281559838;
      sub_25C82E00C(v32, &dword_25C7D2000, v33, "End generatePETReportAndLog", 27, 2, MEMORY[0x277D84F90]);

LABEL_9:
      return;
    }

    v35 = *__swift_project_boxed_opaque_existential_1(a5, a5[3]);
    v124 = v24;
    v36 = objc_autoreleasePoolPush();
    v37 = v122;
    sub_25C807AF8(v35, &v124, &v123);
    if (!v37)
    {
      objc_autoreleasePoolPop(v36);
      v38 = v124;
      v39 = v115;
      __swift_project_boxed_opaque_existential_1(v115, v115[3]);
      v40 = sub_25C8131CC(1);
      __swift_project_boxed_opaque_existential_1(v39, v39[3]);
      v41 = sub_25C8131CC(0);
      __swift_project_boxed_opaque_existential_1(v114, *(v114 + 3));
      v96 = sub_25C81EF2C();
      v94 = v41;
      v95 = v40;
      v93 = v29;
      v122 = 0;
      v114 = *(v38 + 16);
      v115 = v26;
      v104 = v38;
      if (v114)
      {
        v42 = 0;
        do
        {
          if (v42 >= *(v38 + 16))
          {
            __break(1u);
            goto LABEL_27;
          }

          sub_25C7E92DC(v38 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v42++, v21, &qword_27FC16090, qword_25C8304A0);
          v43 = v121;
          v44 = *(v121 + 48);
          v45 = *&v21[v44];
          v46 = sub_25C82DEAC();
          v47 = *(v46 - 8);
          (*(v47 + 32))(v19, v21, v46);
          *&v19[v44] = v45;
          v48 = v119;
          sub_25C7E92DC(v19, v119, &qword_27FC16090, qword_25C8304A0);
          v49 = *(v48 + *(v43 + 48));
          v50 = v115;
          [v50 addMetadataList_];

          v38 = v104;
          sub_25C7E97F4(v19, &qword_27FC16090, qword_25C8304A0);
          (*(v47 + 8))(v48, v46);
        }

        while (v114 != v42);
      }

      v42 = v95;
      if (v95 >> 62)
      {
        goto LABEL_29;
      }

      for (i = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25C82E43C())
      {
        v52 = 0;
        while (1)
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            v53 = MEMORY[0x25F88F6D0](v52, v42);
          }

          else
          {
            if (v52 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v53 = *(v42 + 8 * v52 + 32);
          }

          v54 = v53;
          v55 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            break;
          }

          [v115 addModelEvaluationSummaries_];

          ++v52;
          if (v55 == i)
          {
            goto LABEL_30;
          }
        }

LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        ;
      }

LABEL_30:
      v56 = v94;
      if (v94 >> 62)
      {
        goto LABEL_42;
      }

      for (j = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_25C82E43C())
      {
        v58 = 0;
        while (1)
        {
          if ((v56 & 0xC000000000000001) != 0)
          {
            v59 = MEMORY[0x25F88F6D0](v58, v56);
          }

          else
          {
            if (v58 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_41;
            }

            v59 = *(v56 + 8 * v58 + 32);
          }

          v60 = v59;
          v61 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            break;
          }

          [v115 addModelEvaluationSummaries_];

          ++v58;
          if (v61 == j)
          {
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        ;
      }

LABEL_43:
      v62 = *(v96 + 16);
      v63 = v112;
      if (v62)
      {
        v103 = v118[12];
        v102 = v118[16];
        v101 = v118[20];
        v100 = (v116 + v118[24]);
        v99 = (v116 + v118[28]);
        v64 = v96 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
        v98 = *(v111 + 72);
        v97 = v117 + 8;
        do
        {
          v120 = v64;
          v121 = v62;
          v65 = v116;
          sub_25C7E92DC(v64, v116, &qword_27FC16080, &qword_25C830490);
          v114 = *(v65 + v102);
          v112 = *(v65 + v101);
          v66 = *v100;
          v110 = v100[1];
          v111 = v66;
          v67 = *v99;
          v108 = v99[1];
          v109 = v67;
          v68 = v118;
          v69 = v118[16];
          v106 = v118[12];
          v107 = v69;
          v70 = (v63 + v118[24]);
          v71 = (v63 + v118[28]);
          v105 = v118[20];
          v72 = sub_25C82DFBC();
          v73 = *(v72 - 8);
          v74 = *(v73 + 32);
          v119 = v72;
          v74(v63, v65);
          v75 = sub_25C82DEAC();
          v76 = *(v75 - 8);
          (*(v76 + 32))(v63 + v106, v65 + v103, v75);
          *(v63 + v107) = v114;
          v77 = v111;
          *(v63 + v105) = v112;
          v79 = v109;
          v78 = v110;
          *v70 = v77;
          v70[1] = v78;
          v80 = v108;
          *v71 = v79;
          v71[1] = v80;
          v81 = v117;
          sub_25C7E92DC(v63, v117, &qword_27FC16080, &qword_25C830490);
          v114 = v68[12];
          v82 = *(v81 + v68[16]);

          if (v82)
          {
            (*(v76 + 8))(&v114[v81], v75);
            (*(v73 + 8))(v81, v119);
            [v115 addModelInformationList_];

            sub_25C7E97F4(v63, &qword_27FC16080, &qword_25C830490);
          }

          else
          {
            sub_25C7E97F4(v63, &qword_27FC16080, &qword_25C830490);
            (*(v76 + 8))(&v114[v81], v75);
            (*(v73 + 8))(v81, v119);
          }

          v64 = v120 + v98;
          v62 = v121 - 1;
        }

        while (v121 != 1);
      }

      v83 = v113;
      if (v113)
      {
        if (v113 >> 62)
        {
          goto LABEL_62;
        }

        for (k = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = sub_25C82E43C())
        {
          v85 = 0;
          while (1)
          {
            if ((v83 & 0xC000000000000001) != 0)
            {
              v86 = MEMORY[0x25F88F6D0](v85, v83);
            }

            else
            {
              if (v85 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_61;
              }

              v86 = *(v83 + 8 * v85 + 32);
            }

            v87 = v86;
            v88 = v85 + 1;
            if (__OFADD__(v85, 1))
            {
              break;
            }

            [v115 addPersonalizationEvaluationSummaries_];

            ++v85;
            if (v88 == k)
            {
              goto LABEL_63;
            }
          }

          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          ;
        }
      }

LABEL_63:
      v89 = sub_25C82E25C();
      v90 = qword_281559838;
      sub_25C82E00C(v89, &dword_25C7D2000, v90, "Sending pet report message", 26, 2, MEMORY[0x277D84F90]);

      v26 = v115;
      v91 = v115;
      v29 = v93;
      v92 = v93;

      [v92 logMessage_];

      goto LABEL_7;
    }

    objc_autoreleasePoolPop(v36);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_25C8163D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v325 = a3;
  v314 = a2;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162D8, &qword_25C830BD8);
  v12 = MEMORY[0x28223BE20](v322);
  v333 = &v312 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v318 = &v312 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v326 = &v312 - v17;
  MEMORY[0x28223BE20](v16);
  v317 = &v312 - v18;
  v343 = sub_25C82DEAC();
  v19 = *(v343 - 8);
  v20 = MEMORY[0x28223BE20](v343);
  v340 = &v312 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v328 = &v312 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162E0, &qword_25C830BE0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v334 = &v312 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v312 - v26;
  v321 = sub_25C803FE0();
  type metadata accessor for ODCurareEvaluationResultStore();
  inited = swift_initStackObject();
  *&v357 = a7;
  *(&v357 + 1) = a8;

  MEMORY[0x25F88F460](0x525F524543444F2DLL, 0xEE0073746C757365);
  v29 = objc_allocWithZone(ODCurareCoreDuetStorage);
  v30 = sub_25C82E07C();

  v31 = [v29 init_];

  v315 = inited;
  v316 = v31;
  *(inited + 16) = v31;
  v32 = *(a1 + 64);
  v320 = a1 + 64;
  v33 = 1 << *(a1 + 32);
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  else
  {
    v34 = -1;
  }

  v35 = v34 & v32;
  v319 = (v33 + 63) >> 6;
  v327 = v19 + 16;
  v341 = (v19 + 32);
  v331 = "o nil. Throwing error.";
  v344 = 0x800000025C833EB0;
  v345 = 0x800000025C833E90;
  v335 = "evaluateWithModel:]";
  v329 = v19;
  v323 = (v19 + 8);
  v324 = "numberOfSamplesPositive";
  v312 = a6;
  v313 = a6;
  v330 = a1;

  v36 = 0;
  v37 = MEMORY[0x277D84F98];
  v342 = MEMORY[0x277D84F98];
  v332 = v27;
LABEL_6:
  v339 = v37;
  if (v35)
  {
    v56 = v36;
LABEL_15:
    v338 = (v35 - 1) & v35;
    v59 = __clz(__rbit64(v35)) | (v56 << 6);
    v61 = v329;
    v60 = v330;
    v62 = v328;
    v63 = v343;
    (*(v329 + 16))(v328, *(v330 + 48) + *(v329 + 72) * v59, v343);
    v64 = *(*(v60 + 56) + 8 * v59);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162E8, &qword_25C830BE8);
    v66 = *(v65 + 48);
    v67 = *(v61 + 32);
    v58 = v334;
    v67(v334, v62, v63);
    *(v58 + v66) = v64;
    (*(*(v65 - 8) + 56))(v58, 0, 1, v65);

    v337 = v56;
  }

  else
  {
    if (v319 <= v36 + 1)
    {
      v57 = v36 + 1;
    }

    else
    {
      v57 = v319;
    }

    v58 = v334;
    while (1)
    {
      v56 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_191;
      }

      if (v56 >= v319)
      {
        break;
      }

      v35 = *(v320 + 8 * v56);
      ++v36;
      if (v35)
      {
        goto LABEL_15;
      }
    }

    v337 = v57 - 1;
    v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162E8, &qword_25C830BE8);
    (*(*(v199 - 8) + 56))(v58, 1, 1, v199);
    v338 = 0;
  }

  v68 = v332;
  sub_25C8186DC(v58, v332);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162E8, &qword_25C830BE8);
  if ((*(*(v69 - 8) + 48))(v68, 1, v69) == 1)
  {
LABEL_109:

    v200 = v339;
    if (*(v339 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16298, &unk_25C830930);
      v201 = swift_allocObject();
      *(v201 + 16) = xmmword_25C830640;
      *(v201 + 32) = sub_25C818414(v200);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
      v202 = sub_25C82E1BC();

      v203 = sub_25C82DF4C();
      v204 = v316;
      [v316 saveDictionaries:v202 date:v203 eventIdentifier:0];

      sub_25C827FD8(v204, v312);
    }

    *&v357 = MEMORY[0x277D84F98];
    v205 = objc_autoreleasePoolPush();
    sub_25C80EA2C(v315, &v357);
    objc_autoreleasePoolPop(v205);
    v206 = v357 + 64;
    v207 = 1 << *(v357 + 32);
    if (v207 < 64)
    {
      v208 = ~(-1 << v207);
    }

    else
    {
      v208 = -1;
    }

    v209 = v208 & *(v357 + 64);
    v210 = (v207 + 63) >> 6;
    v349 = v357;

    v211 = 0;
    v347 = v210;
    v348 = v206;
LABEL_116:
    if (v209)
    {
      v212 = v211;
LABEL_121:
      v350 = v212;
      v351 = (v209 - 1) & v209;
      v213 = __clz(__rbit64(v209)) | (v212 << 6);
      v214 = v349;
      v215 = *(v349 + 48);
      v216 = sub_25C82DFBC();
      v217 = *(v216 - 8);
      v218 = v317;
      (*(v217 + 16))(v317, v215 + *(v217 + 72) * v213, v216);
      v219 = *(*(v214 + 56) + 8 * v213);
      v220 = v322;
      v221 = *(v322 + 48);
      v222 = v326;
      (*(v217 + 32))(v326, v218, v216);
      *(v222 + v221) = v219;
      v223 = v318;
      sub_25C7E92DC(v222, v318, &qword_27FC162D8, &qword_25C830BD8);
      v224 = *(v223 + *(v220 + 48));
      v225 = *(v217 + 8);

      v354 = v217 + 8;
      v355 = v216;
      v353 = v225;
      v225(v223, v216);
      v226 = v224 + 64;
      v227 = 1 << *(v224 + 32);
      if (v227 < 64)
      {
        v228 = ~(-1 << v227);
      }

      else
      {
        v228 = -1;
      }

      v229 = v228 & *(v224 + 64);
      v230 = (v227 + 63) >> 6;
      v356 = v224;

      v231 = 0;
      *&v352 = v230;
      if (!v229)
      {
        goto LABEL_125;
      }

      while (1)
      {
LABEL_129:
        v233 = (*(v356 + 48) + ((v231 << 10) | (16 * __clz(__rbit64(v229)))));
        v235 = *v233;
        v234 = v233[1];
        v236 = v342;
        v237 = *(v342 + 16);

        if (!v237 || (, sub_25C8139BC(v235, v234), v239 = v238, , (v239 & 1) == 0))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v357 = v236;
          v241 = sub_25C8139BC(v235, v234);
          v243 = *(v236 + 16);
          v244 = (v242 & 1) == 0;
          v103 = __OFADD__(v243, v244);
          v245 = v243 + v244;
          if (v103)
          {
            goto LABEL_199;
          }

          v246 = v242;
          if (*(v236 + 24) >= v245)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v269 = v241;
              sub_25C804BC4();
              v241 = v269;
            }
          }

          else
          {
            sub_25C7FBF24(v245, isUniquelyReferenced_nonNull_native);
            v241 = sub_25C8139BC(v235, v234);
            if ((v246 & 1) != (v247 & 1))
            {
              goto LABEL_206;
            }
          }

          v248 = v357;
          v342 = v357;
          if (v246)
          {
            *(*(v357 + 56) + 8 * v241) = MEMORY[0x277D84F90];
          }

          else
          {
            *(v357 + 8 * (v241 >> 6) + 64) |= 1 << v241;
            v249 = (v248[6] + 16 * v241);
            *v249 = v235;
            v249[1] = v234;
            *(v248[7] + 8 * v241) = MEMORY[0x277D84F90];
            v250 = v248[2];
            v103 = __OFADD__(v250, 1);
            v251 = v250 + 1;
            if (v103)
            {
              goto LABEL_200;
            }

            v248[2] = v251;
          }
        }

        v252 = v333;
        sub_25C7E92DC(v326, v333, &qword_27FC162D8, &qword_25C830BD8);
        v253 = *(v252 + *(v322 + 48));
        if (!*(v253 + 16))
        {
          goto LABEL_205;
        }

        v254 = sub_25C8139BC(v235, v234);
        if ((v255 & 1) == 0)
        {
          goto LABEL_205;
        }

        sub_25C7E9854(*(v253 + 56) + 32 * v254, &v357);

        v256 = v342;
        v257 = swift_isUniquelyReferenced_nonNull_native();
        *&v360[0] = v256;
        v259 = sub_25C8139BC(v235, v234);
        v260 = *(v256 + 16);
        v261 = (v258 & 1) == 0;
        v262 = v260 + v261;
        if (__OFADD__(v260, v261))
        {
          goto LABEL_197;
        }

        v263 = v258;
        if (*(v256 + 24) >= v262)
        {
          if (v257)
          {
            if ((v258 & 1) == 0)
            {
              goto LABEL_198;
            }
          }

          else
          {
            sub_25C804BC4();
            if ((v263 & 1) == 0)
            {
              goto LABEL_198;
            }
          }
        }

        else
        {
          sub_25C7FBF24(v262, v257);
          v264 = sub_25C8139BC(v235, v234);
          if ((v263 & 1) != (v265 & 1))
          {
            goto LABEL_206;
          }

          v259 = v264;
          if ((v263 & 1) == 0)
          {
            goto LABEL_198;
          }
        }

        v266 = *(*(*&v360[0] + 56) + 8 * v259);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v266 = sub_25C7E7444(0, *(v266 + 2) + 1, 1, v266);
        }

        v268 = *(v266 + 2);
        v267 = *(v266 + 3);
        if (v268 >= v267 >> 1)
        {
          v266 = sub_25C7E7444((v267 > 1), v268 + 1, 1, v266);
        }

        v229 &= v229 - 1;
        *(v266 + 2) = v268 + 1;
        sub_25C801F34(&v357, &v266[32 * v268 + 32]);

        *(*(*&v360[0] + 56) + 8 * v259) = v266;

        v342 = *&v360[0];
        v353(v333, v355);
        v230 = v352;
        if (!v229)
        {
LABEL_125:
          while (1)
          {
            v232 = v231 + 1;
            if (__OFADD__(v231, 1))
            {
              goto LABEL_192;
            }

            if (v232 >= v230)
            {
              sub_25C7E97F4(v326, &qword_27FC162D8, &qword_25C830BD8);

              v211 = v350;
              v209 = v351;
              v210 = v347;
              v206 = v348;
              goto LABEL_116;
            }

            v229 = *(v226 + 8 * v232);
            ++v231;
            if (v229)
            {
              v231 = v232;
              goto LABEL_129;
            }
          }
        }
      }
    }

    while (1)
    {
      v212 = v211 + 1;
      if (__OFADD__(v211, 1))
      {
        break;
      }

      if (v212 >= v210)
      {

        v270 = v321;
        if (v321 >> 62)
        {
          goto LABEL_201;
        }

        v271 = *((v321 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v271)
        {
          goto LABEL_202;
        }

        goto LABEL_160;
      }

      v209 = *(v206 + 8 * v212);
      ++v211;
      if (v209)
      {
        goto LABEL_121;
      }
    }
  }

  else
  {
    v70 = *(v68 + *(v69 + 48));
    (*v341)(v340, v68, v343);
    if (!*(v70 + 16))
    {
      goto LABEL_194;
    }

    v336 = 0xD000000000000011;
    v71 = sub_25C8139BC(0xD000000000000011, v331 | 0x8000000000000000);
    if (v72)
    {
      sub_25C7E9854(*(v70 + 56) + 32 * v71, v360);

      sub_25C801F34(v360, &v357);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC161D8, &unk_25C8307B8);
      swift_dynamicCast();
      v73 = v359;
      v348 = *(v359 + 16);
      if (!v348)
      {

        v75 = MEMORY[0x277D84F98];
LABEL_86:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16280, &unk_25C8308F8);
        v154 = sub_25C82E46C();
        v155 = v154;
        v156 = 0;
        v157 = *(v75 + 64);
        v347 = v75 + 64;
        v158 = 1 << *(v75 + 32);
        if (v158 < 64)
        {
          v159 = ~(-1 << v158);
        }

        else
        {
          v159 = -1;
        }

        v160 = v159 & v157;
        v161 = (v158 + 63) >> 6;
        v350 = v154 + 64;
        v351 = v154;
        v348 = v161;
        v349 = v75;
        if (!v160)
        {
LABEL_91:
          v163 = v156;
          while (1)
          {
            v156 = v163 + 1;
            if (__OFADD__(v163, 1))
            {
              goto LABEL_183;
            }

            if (v156 >= v161)
            {
              *(&v358[0] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16308, &qword_25C830C08);
              *&v357 = v155;
              sub_25C801F34(&v357, v360);
              v38 = MEMORY[0x277D84F98];
              v39 = swift_isUniquelyReferenced_nonNull_native();
              v359 = v38;
              sub_25C7FD1C0(v360, v336, v324 | 0x8000000000000000, v39);
              v40 = v359;
              v41 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
              v42 = sub_25C82E07C();
              [v41 setDateFormat_];

              v43 = sub_25C82DF4C();
              v44 = [v41 stringFromDate_];

              v45 = sub_25C82E0AC();
              v47 = v46;

              *(&v358[0] + 1) = MEMORY[0x277D837D0];
              *&v357 = v45;
              *(&v357 + 1) = v47;
              sub_25C801F34(&v357, v360);
              v48 = swift_isUniquelyReferenced_nonNull_native();
              v359 = v40;
              sub_25C7FD1C0(v360, 0x697461756C617665, 0xEE00657461446E6FLL, v48);
              v49 = v359;
              v50 = v340;
              v51 = sub_25C82DE1C();
              v53 = v52;
              *(&v358[0] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160C8, &qword_25C830580);
              *&v357 = v49;
              sub_25C801F34(&v357, v360);
              v54 = v339;
              v55 = swift_isUniquelyReferenced_nonNull_native();
              v359 = v54;
              sub_25C7FD1C0(v360, v51, v53, v55);

              (*v323)(v50, v343);

              v37 = v359;
              v36 = v337;
              v35 = v338;
              goto LABEL_6;
            }

            v164 = *(v347 + 8 * v156);
            ++v163;
            if (v164)
            {
              v162 = __clz(__rbit64(v164));
              *&v352 = (v164 - 1) & v164;
              goto LABEL_96;
            }
          }
        }

        while (1)
        {
          v162 = __clz(__rbit64(v160));
          *&v352 = (v160 - 1) & v160;
LABEL_96:
          v165 = v162 | (v156 << 6);
          v166 = *(v75 + 56);
          v167 = (*(v75 + 48) + 16 * v165);
          v168 = v167[1];
          v355 = *v167;
          v356 = v165;
          v169 = *(v166 + 8 * v165);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16158, &qword_25C830678);
          v170 = swift_allocObject();
          *(v170 + 32) = 0x63697274656DLL;
          *(v170 + 40) = 0xE600000000000000;
          v354 = v168;

          v171 = v169;
          v172 = [v171 numberOfSamplesPositive];
          v173 = [v171 numberOfSamplesTotal];
          *(v170 + 72) = MEMORY[0x277D83A90];
          *(v170 + 48) = v172 / v173;
          *(v170 + 80) = 0xD000000000000014;
          *(v170 + 88) = v345;
          v174 = [v171 numberOfSamplesTotal];
          v175 = MEMORY[0x277D83B88];
          *(v170 + 120) = MEMORY[0x277D83B88];
          *(v170 + 96) = v174;
          *(v170 + 128) = 0xD000000000000017;
          *(v170 + 136) = v344;
          v353 = v171;
          v176 = [v171 numberOfSamplesPositive];
          *(v170 + 168) = v175;
          *(v170 + 144) = v176;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16168, &unk_25C830910);
          v177 = sub_25C82E49C();

          sub_25C7E92DC(v170 + 32, &v357, &qword_27FC16160, &unk_25C8306A0);
          v178 = v357;
          v179 = sub_25C8139BC(v357, *(&v357 + 1));
          if (v180)
          {
            goto LABEL_188;
          }

          v181 = v177 + 8;
          *(v177 + ((v179 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v179;
          *(v177[6] + 16 * v179) = v178;
          sub_25C801F34(v358, (v177[7] + 32 * v179));
          v182 = v177[2];
          v103 = __OFADD__(v182, 1);
          v183 = v182 + 1;
          if (v103)
          {
            goto LABEL_189;
          }

          v177[2] = v183;
          sub_25C7E92DC(v170 + 80, &v357, &qword_27FC16160, &unk_25C8306A0);
          v184 = v357;
          v185 = sub_25C8139BC(v357, *(&v357 + 1));
          if (v186)
          {
            goto LABEL_188;
          }

          *(v181 + ((v185 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v185;
          *(v177[6] + 16 * v185) = v184;
          sub_25C801F34(v358, (v177[7] + 32 * v185));
          v187 = v177[2];
          v103 = __OFADD__(v187, 1);
          v188 = v187 + 1;
          if (v103)
          {
            goto LABEL_189;
          }

          v177[2] = v188;
          sub_25C7E92DC(v170 + 128, &v357, &qword_27FC16160, &unk_25C8306A0);
          v189 = v357;
          v190 = sub_25C8139BC(v357, *(&v357 + 1));
          if (v191)
          {
            goto LABEL_188;
          }

          *(v181 + ((v190 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v190;
          *(v177[6] + 16 * v190) = v189;
          sub_25C801F34(v358, (v177[7] + 32 * v190));
          v192 = v177[2];
          v103 = __OFADD__(v192, 1);
          v193 = v192 + 1;
          if (v103)
          {
            goto LABEL_189;
          }

          v177[2] = v193;

          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16160, &unk_25C8306A0);
          swift_arrayDestroy();
          swift_deallocClassInstance();

          v194 = v356;
          v155 = v351;
          *(v350 + ((v356 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v356;
          v195 = (v155[6] + 16 * v194);
          v196 = v354;
          *v195 = v355;
          v195[1] = v196;
          *(v155[7] + 8 * v194) = v177;
          v197 = v155[2];
          v103 = __OFADD__(v197, 1);
          v198 = v197 + 1;
          if (v103)
          {
            goto LABEL_193;
          }

          v155[2] = v198;
          v161 = v348;
          v75 = v349;
          v160 = v352;
          if (!v352)
          {
            goto LABEL_91;
          }
        }
      }

      v74 = 0;
      v347 = v359 + 32;
      v75 = MEMORY[0x277D84F98];
      v76 = &selRef__setBiomeFilter_fromInclusive_toDate_toInclusive_;
      v346 = v359;
      while (1)
      {
        if (v74 >= *(v73 + 16))
        {
          goto LABEL_187;
        }

        v77 = *(v347 + 8 * v74);
        if (!(v77 >> 62))
        {
          v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v78)
          {
            break;
          }

          goto LABEL_22;
        }

        v153 = v73;
        v78 = sub_25C82E43C();
        v73 = v153;
        if (v78)
        {
          break;
        }

LABEL_22:
        if (++v74 == v348)
        {

          goto LABEL_86;
        }
      }

      v349 = v74;
      v355 = v77 & 0xC000000000000001;
      *&v352 = v77 & 0xFFFFFFFFFFFFFF8;

      v79 = 0;
      v353 = v78;
      v354 = v77;
      while (1)
      {
        if (v355)
        {
          v82 = MEMORY[0x25F88F6D0](v79, v77);
        }

        else
        {
          if (v79 >= *(v352 + 16))
          {
            goto LABEL_108;
          }

          v82 = *(v77 + 8 * v79 + 32);
        }

        v83 = v82;
        if (__OFADD__(v79, 1))
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
          goto LABEL_109;
        }

        v356 = v79 + 1;
        v84 = [v82 v76[44]];
        v85 = sub_25C82E0AC();
        v87 = v86;

        if (*(v75 + 16))
        {
          sub_25C8139BC(v85, v87);
          v89 = v88;

          if (v89)
          {
            v90 = [v83 v76[44]];
            v91 = sub_25C82E0AC();
            v93 = v92;

            if (!*(v75 + 16))
            {

LABEL_67:

              goto LABEL_30;
            }

            v94 = sub_25C8139BC(v91, v93);
            v96 = v95;

            if ((v96 & 1) == 0)
            {
              goto LABEL_67;
            }

            v97 = *(*(v75 + 56) + 8 * v94);
            v98 = [v83 v76[44]];
            v350 = sub_25C82E0AC();
            v351 = v99;

            v100 = [v83 v76[44]];
            if (!v100)
            {
              sub_25C82E0AC();
              v100 = sub_25C82E07C();
            }

            v101 = [v97 numberOfSamplesPositive];
            v102 = [v83 numberOfSamplesPositive];
            v103 = __OFADD__(v101, v102);
            v104 = &v102[v101];
            if (v103)
            {
              goto LABEL_184;
            }

            v105 = [v97 numberOfSamplesTotal];
            v106 = [v83 &selRef_dictionaryRepresentation + 3];
            v103 = __OFADD__(v105, v106);
            v107 = &v106[v105];
            if (v103)
            {
              goto LABEL_185;
            }

            v108 = [objc_allocWithZone(ODCurareEvaluationResult) initWithEvaluationName:v100 numberOfSamplesPositive:v104 numberOfSamplesTotal:v107];

            if (!v108)
            {
              v141 = sub_25C8139BC(v350, v351);
              v143 = v142;

              if (v143)
              {
                v144 = swift_isUniquelyReferenced_nonNull_native();
                *&v357 = v75;
                v78 = v353;
                v77 = v354;
                if (!v144)
                {
                  sub_25C804D38();
                  v75 = v357;
                }

                sub_25C8043D0(v141, v75);
                goto LABEL_30;
              }

              goto LABEL_76;
            }

            v109 = v75;
            v110 = swift_isUniquelyReferenced_nonNull_native();
            *&v357 = v109;
            v111 = sub_25C8139BC(v350, v351);
            v113 = *(v109 + 16);
            v114 = (v112 & 1) == 0;
            v103 = __OFADD__(v113, v114);
            v115 = v113 + v114;
            if (v103)
            {
              goto LABEL_186;
            }

            v116 = v112;
            if (*(v109 + 24) < v115)
            {
              sub_25C7FC1D8(v115, v110);
              v111 = sub_25C8139BC(v350, v351);
              if ((v116 & 1) != (v117 & 1))
              {
                goto LABEL_206;
              }

              goto LABEL_73;
            }

            if (v110)
            {
LABEL_73:
              if ((v116 & 1) == 0)
              {
                goto LABEL_80;
              }
            }

            else
            {
              v148 = v111;
              sub_25C804D38();
              v111 = v148;
              if ((v116 & 1) == 0)
              {
LABEL_80:
                v75 = v357;
                *(v357 + 8 * (v111 >> 6) + 64) |= 1 << v111;
                v149 = (*(v75 + 48) + 16 * v111);
                v150 = v351;
                *v149 = v350;
                v149[1] = v150;
                *(*(v75 + 56) + 8 * v111) = v108;

                v151 = *(v75 + 16);
                v103 = __OFADD__(v151, 1);
                v152 = v151 + 1;
                if (v103)
                {
                  goto LABEL_190;
                }

                *(v75 + 16) = v152;
                goto LABEL_29;
              }
            }

            v145 = v111;

            v75 = v357;
            v146 = *(v357 + 56);
            v147 = *(v146 + 8 * v145);
            *(v146 + 8 * v145) = v108;

            goto LABEL_29;
          }
        }

        else
        {
        }

        v118 = [v83 v76[44]];
        v119 = sub_25C82E0AC();
        v121 = v120;

        v122 = [v83 v76[44]];
        if (!v122)
        {
          sub_25C82E0AC();
          v122 = sub_25C82E07C();
        }

        v123 = [objc_allocWithZone(ODCurareEvaluationResult) initWithEvaluationName:v122 numberOfSamplesPositive:objc_msgSend(v83 numberOfSamplesTotal:{sel_numberOfSamplesPositive), objc_msgSend(v83, sel_numberOfSamplesTotal)}];

        if (!v123)
        {
          v134 = sub_25C8139BC(v119, v121);
          v136 = v135;

          if (v136)
          {
            v137 = swift_isUniquelyReferenced_nonNull_native();
            *&v357 = v75;
            v78 = v353;
            v77 = v354;
            if (!v137)
            {
              sub_25C804D38();
              v75 = v357;
            }

            sub_25C8043D0(v134, v75);
            goto LABEL_30;
          }

LABEL_76:

          goto LABEL_29;
        }

        v124 = v75;
        v125 = swift_isUniquelyReferenced_nonNull_native();
        *&v357 = v124;
        v127 = sub_25C8139BC(v119, v121);
        v128 = *(v124 + 16);
        v129 = (v126 & 1) == 0;
        v130 = v128 + v129;
        if (__OFADD__(v128, v129))
        {
          goto LABEL_107;
        }

        v131 = v126;
        if (*(v124 + 24) >= v130)
        {
          if (v125)
          {
            if ((v126 & 1) == 0)
            {
              goto LABEL_64;
            }
          }

          else
          {
            sub_25C804D38();
            if ((v131 & 1) == 0)
            {
              goto LABEL_64;
            }
          }
        }

        else
        {
          sub_25C7FC1D8(v130, v125);
          v132 = sub_25C8139BC(v119, v121);
          if ((v131 & 1) != (v133 & 1))
          {
            goto LABEL_206;
          }

          v127 = v132;
          if ((v131 & 1) == 0)
          {
LABEL_64:
            v75 = v357;
            *(v357 + 8 * (v127 >> 6) + 64) |= 1 << v127;
            v138 = (*(v75 + 48) + 16 * v127);
            *v138 = v119;
            v138[1] = v121;
            *(*(v75 + 56) + 8 * v127) = v123;

            v139 = *(v75 + 16);
            v103 = __OFADD__(v139, 1);
            v140 = v139 + 1;
            if (v103)
            {
              __break(1u);
LABEL_183:
              __break(1u);
LABEL_184:
              __break(1u);
LABEL_185:
              __break(1u);
LABEL_186:
              __break(1u);
LABEL_187:
              __break(1u);
LABEL_188:
              __break(1u);
LABEL_189:
              __break(1u);
LABEL_190:
              __break(1u);
LABEL_191:
              __break(1u);
LABEL_192:
              __break(1u);
LABEL_193:
              __break(1u);
LABEL_194:
              __break(1u);
              break;
            }

            *(v75 + 16) = v140;
            goto LABEL_28;
          }
        }

        v75 = v357;
        v80 = *(v357 + 56);
        v81 = *(v80 + 8 * v127);
        *(v80 + 8 * v127) = v123;

LABEL_28:
        v76 = &selRef__setBiomeFilter_fromInclusive_toDate_toInclusive_;
LABEL_29:
        v78 = v353;
        v77 = v354;
LABEL_30:
        ++v79;
        if (v356 == v78)
        {

          v73 = v346;
          v74 = v349;
          goto LABEL_22;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  v271 = sub_25C82E43C();
  v270 = v321;
  if (!v271)
  {
LABEL_202:
    v273 = MEMORY[0x277D84F90];
LABEL_203:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16158, &qword_25C830678);
    v307 = swift_allocObject();
    *(v307 + 16) = xmmword_25C830A80;
    *(v307 + 32) = 0x74726F706572;
    *(v307 + 40) = 0xE600000000000000;
    v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162F0, &qword_25C830BF0);
    *(v307 + 48) = v342;
    *(v307 + 72) = v308;
    strcpy((v307 + 80), "selectedModels");
    *(v307 + 95) = -18;
    v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162F8, &qword_25C830BF8);
    *(v307 + 96) = v273;
    *(v307 + 120) = v309;
    *(v307 + 128) = 0x4D73746C75736572;
    *(v307 + 136) = 0xEF61746164617465;
    *(v307 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16300, &qword_25C830C00);
    *(v307 + 144) = v314;

    v310 = sub_25C801A1C(v307);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16160, &unk_25C8306A0);
    swift_arrayDestroy();
    swift_deallocClassInstance();

    return v310;
  }

LABEL_160:
  if (v271 >= 1)
  {
    v272 = 0;
    v353 = (v270 & 0xC000000000000001);
    v349 = "adaptedModelName";
    v350 = "nProtocol personalize]";
    v351 = "personalizationResultMetadata";
    v273 = MEMORY[0x277D84F90];
    v352 = xmmword_25C830650;
    v354 = v271;
    do
    {
      v355 = v272;
      v356 = v273;
      if (v353)
      {
        v274 = MEMORY[0x25F88F6D0](v272, v270);
      }

      else
      {
        v274 = *(v270 + 8 * v272 + 32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16158, &qword_25C830678);
      v275 = swift_initStackObject();
      *(v275 + 16) = v352;
      *(v275 + 32) = 0x7461447472617473;
      *(v275 + 40) = 0xE900000000000065;
      v276 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v277 = sub_25C82E07C();
      [v276 setDateFormat_];

      v278 = sub_25C82DF4C();
      v279 = [v276 stringFromDate_];

      v280 = sub_25C82E0AC();
      v282 = v281;

      *(v275 + 48) = v280;
      *(v275 + 56) = v282;
      v283 = MEMORY[0x277D837D0];
      *(v275 + 72) = MEMORY[0x277D837D0];
      *(v275 + 80) = 0x65746144646E65;
      *(v275 + 88) = 0xE700000000000000;
      v284 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v285 = sub_25C82E07C();
      [v284 setDateFormat_];

      v286 = sub_25C82DF4C();
      v287 = [v284 stringFromDate_];

      v288 = sub_25C82E0AC();
      v290 = v289;

      v291 = v283;
      *(v275 + 120) = v283;
      *(v275 + 96) = v288;
      *(v275 + 104) = v290;
      v292 = sub_25C801A1C(v275);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16160, &unk_25C8306A0);
      swift_arrayDestroy();
      v293 = *(v274 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelName + 8);
      if (v293)
      {
        v294 = *(v274 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelName);
        *(&v358[0] + 1) = v283;
        *&v357 = v294;
        *(&v357 + 1) = v293;
        sub_25C801F34(&v357, v360);

        v295 = swift_isUniquelyReferenced_nonNull_native();
        v359 = v292;
        sub_25C7FD1C0(v360, 0xD000000000000010, v351 | 0x8000000000000000, v295);
        v292 = v359;
      }

      v296 = *(v274 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelSelected);
      v297 = v355;
      if (v296 != 2)
      {
        *(&v358[0] + 1) = v291;
        if (v296)
        {
          v298 = 49;
        }

        else
        {
          v298 = 48;
        }

        *&v357 = v298;
        *(&v357 + 1) = 0xE100000000000000;
        sub_25C801F34(&v357, v360);
        v299 = swift_isUniquelyReferenced_nonNull_native();
        v359 = v292;
        sub_25C7FD1C0(v360, 0xD000000000000014, v349 | 0x8000000000000000, v299);
        v292 = v359;
      }

      v300 = *(v274 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_usedModelName + 8);
      if (v300)
      {
        v301 = *(v274 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_usedModelName);
        *(&v358[0] + 1) = v291;
        *&v357 = v301;
        *(&v357 + 1) = v300;
        sub_25C801F34(&v357, v360);

        v302 = swift_isUniquelyReferenced_nonNull_native();
        v359 = v292;
        sub_25C7FD1C0(v360, 0x65646F4D64657375, 0xED0000656D614E6CLL, v302);
        v292 = v359;
      }

      v273 = v356;
      v303 = *(v274 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_personalizationResultMetadata);
      if (v303)
      {
        *(&v358[0] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16278, &qword_25C8308F0);
        *&v357 = v303;
        sub_25C801F34(&v357, v360);

        v304 = swift_isUniquelyReferenced_nonNull_native();
        v359 = v292;
        sub_25C7FD1C0(v360, 0xD00000000000001ELL, v350 | 0x8000000000000000, v304);
        v292 = v359;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v273 = sub_25C7E72EC(0, v273[2] + 1, 1, v273);
      }

      v306 = v273[2];
      v305 = v273[3];
      if (v306 >= v305 >> 1)
      {
        v273 = sub_25C7E72EC((v305 > 1), v306 + 1, 1, v273);
      }

      v272 = v297 + 1;

      v273[2] = v306 + 1;
      v273[v306 + 4] = v292;
      v270 = v321;
    }

    while (v354 != v272);
    goto LABEL_203;
  }

  __break(1u);
LABEL_205:

  __break(1u);
LABEL_206:
  result = sub_25C82E51C();
  __break(1u);
  return result;
}

uint64_t sub_25C818414(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC161A0, &qword_25C830798);
    v2 = sub_25C82E49C();
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

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_25C7E9854(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_25C801F34(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_25C801F34(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_25C801F34(v31, v32);
    result = sub_25C82E33C();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_25C801F34(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_25C8186DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162E0, &qword_25C830BE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25C81874C()
{
  result = qword_27FC16320;
  if (!qword_27FC16320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC16318, &qword_25C830C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC16320);
  }

  return result;
}

unint64_t sub_25C8187B0()
{
  result = qword_281559480;
  if (!qword_281559480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281559480);
  }

  return result;
}

uint64_t sub_25C8187FC(void *a1, void *a2, uint64_t a3)
{
  v205 = a2;
  v213 = a1;
  v4 = sub_25C82DFBC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v200 = &v193 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v201 = &v193 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v202 = &v193 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v209 = &v193 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v204 = (&v193 - v15);
  MEMORY[0x28223BE20](v14);
  v210 = &v193 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v197 = &v193 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v199 = &v193 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v198 = &v193 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v208 = (&v193 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  *&v207 = &v193 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v193 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v193 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v193 - v34;
  sub_25C81C294(a3, &v193 - v34);
  v36 = *(v5 + 6);
  v37 = v36(v35, 1, v4);
  v211 = v36;
  if (v37 == 1)
  {
    sub_25C80E6F0(a3);
    sub_25C80E6F0(v35);
    v38 = sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v39 = qword_281559838;
    sub_25C82E00C(v38, &dword_25C7D2000, v39, "frameworkPersonalizationDate was nil, fetching default date.", 60, 2, MEMORY[0x277D84F90]);

    sub_25C82DF2C();
    (*(v5 + 7))(a3, 0, 1, v4);
    v36 = v211;
  }

  else
  {
    sub_25C80E6F0(v35);
  }

  sub_25C81C294(a3, v33);
  v40 = v36(v33, 1, v4);
  v41 = v213;
  if (v40 == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = sub_25C82DF4C();
    (*(v5 + 1))(v33, v4);
  }

  v43 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v41 setStreamFilter:0 fromInclusive:0 toDate:v42 toInclusive:v43];

  sub_25C81C294(a3, v30);
  v44 = v36(v30, 1, v4);
  v206 = v5 + 48;
  if (v44 == 1)
  {
    sub_25C80E6F0(v30);
    p_info = (ODCurareEvaluationAndReportingModule + 32);
  }

  else
  {
    v46 = v210;
    (*(v5 + 4))(v210, v30, v4);
    v47 = sub_25C82E25C();
    p_info = ODCurareEvaluationAndReportingModule.info;
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v48 = qword_281559838;
    v49 = v204;
    (*(v5 + 2))(v204, v46, v4);
    if (os_log_type_enabled(v48, v47))
    {
      v195 = v48;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v212[0] = v51;
      *v50 = 136315138;
      sub_25C81D650(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v52 = sub_25C82E4DC();
      v53 = v4;
      v55 = v54;
      v196 = a3;
      v56 = v49;
      v57 = *(v5 + 1);
      v57(v56, v53);
      v58 = sub_25C7E77E4(v52, v55, v212);
      v4 = v53;
      v36 = v211;

      *(v50 + 4) = v58;
      v59 = v195;
      _os_log_impl(&dword_25C7D2000, v195, v47, "Date for personalization filter %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x25F890110](v51, -1, -1);
      v60 = v50;
      p_info = (ODCurareEvaluationAndReportingModule + 32);
      MEMORY[0x25F890110](v60, -1, -1);

      v57(v210, v4);
      a3 = v196;
    }

    else
    {
      v61 = *(v5 + 1);
      v61(v49, v4);
      v61(v46, v4);
    }

    v41 = v213;
  }

  v62 = [v41 getDatesOfEventsForStream];
  if (!v62)
  {
    v68 = sub_25C82E27C();
    if (p_info[151] == -1)
    {
LABEL_21:
      v69 = qword_281559838;
      sub_25C82E00C(v68, &dword_25C7D2000, v69, "Failed to fetch dates from model for personalization.", 53, 2, MEMORY[0x277D84F90]);
LABEL_44:

      sub_25C7E7DEC();
      swift_allocError();
      *v113 = 20;
      swift_willThrow();
      return v111 & 1;
    }

LABEL_81:
    swift_once();
    goto LABEL_21;
  }

  v63 = v41;
  v210 = v5;
  v64 = v62;
  v65 = sub_25C82E1DC();

  v66 = v207;
  sub_25C81C294(a3, v207);
  if (v36(v66, 1, v4) == 1)
  {
    v67 = 0;
  }

  else
  {
    v67 = sub_25C82DF4C();
    (*(v210 + 1))(v66, v4);
  }

  v70 = v209;
  v71 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v63 setStreamFilter:v67 fromInclusive:v71 toDate:0 toInclusive:0];

  v72 = v208;
  sub_25C81C294(a3, v208);
  if (v211(v72, 1, v4) == 1)
  {
    sub_25C80E6F0(v72);
  }

  else
  {
    v73 = v210;
    (*(v210 + 4))(v70, v72, v4);
    v74 = sub_25C82E25C();
    if (p_info[151] != -1)
    {
      swift_once();
    }

    v75 = qword_281559838;
    v76 = v202;
    (*(v73 + 2))(v202, v70, v4);
    if (os_log_type_enabled(v75, v74))
    {
      v208 = v75;
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v196 = a3;
      v79 = v78;
      v212[0] = v78;
      *v77 = 136315138;
      sub_25C81D650(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v80 = sub_25C82E4DC();
      v209 = v65;
      v81 = v76;
      v82 = v4;
      v84 = v83;
      v85 = *(v73 + 1);
      v85(v81, v82);
      v86 = sub_25C7E77E4(v80, v84, v212);
      v4 = v82;

      *(v77 + 4) = v86;
      v87 = v208;
      _os_log_impl(&dword_25C7D2000, v208, v74, "Date for evaluation filter %s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v79);
      v88 = v79;
      a3 = v196;
      MEMORY[0x25F890110](v88, -1, -1);
      v89 = v77;
      p_info = (ODCurareEvaluationAndReportingModule + 32);
      MEMORY[0x25F890110](v89, -1, -1);

      v65 = v209;
      v85(v70, v82);
    }

    else
    {
      v90 = *(v73 + 1);
      v90(v76, v4);
      v90(v70, v4);
    }

    v63 = v213;
  }

  v91 = [v63 getDatesOfEventsForStream];
  if (!v91)
  {

    v112 = sub_25C82E27C();
    if (p_info[151] != -1)
    {
      swift_once();
    }

    v69 = qword_281559838;
    sub_25C82E00C(v112, &dword_25C7D2000, v69, "Failed to fetch dates from model for evaluation.", 48, 2, MEMORY[0x277D84F90]);
    goto LABEL_44;
  }

  v92 = v91;
  v93 = sub_25C82E1DC();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v194 = v4;
  v68 = a3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v93 = sub_25C7E916C(v93);
  }

  v95 = *(v93 + 2);
  v96 = &v93[(v210[80] + 32) & ~v210[80]];
  v212[0] = v96;
  v212[1] = v95;
  sub_25C81C304(v212);
  v97 = v205;
  v98 = [v205 minimumNumberOfSamplesForPersonalizationSelection];
  v99 = [v98 integerValue];

  v100 = [v97 minimumNumberOfSamplesForPersonalization];
  v101 = [v100 integerValue];

  v102 = __OFADD__(v99, v101);
  v103 = &v101[v99];
  if (v102)
  {
    __break(1u);
    goto LABEL_80;
  }

  v208 = v96;
  v104 = *(v65 + 16);

  v209 = v93;
  v105 = *(v93 + 2);
  v106 = &v105[v104];
  if (__OFADD__(v105, v104))
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v105 < v99)
  {
    v107 = sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v108 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v107))
    {
      v109 = v108;
      v110 = swift_slowAlloc();
      *v110 = 134218240;
      *(v110 + 4) = v99;
      *(v110 + 12) = 2048;
      *(v110 + 14) = v105;
      _os_log_impl(&dword_25C7D2000, v109, v107, "Skipping personalization for model because there were not enough samples for hyperparameter selection. Needed %ld, had %ld", v110, 0x16u);
      MEMORY[0x25F890110](v110, -1, -1);

      v111 = 0;
      return v111 & 1;
    }

LABEL_57:

    v111 = 0;
    return v111 & 1;
  }

  if (v106 < v103)
  {
    v115 = sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v116 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v115))
    {
      v117 = v116;
      v118 = swift_slowAlloc();
      *v118 = 134218240;
      *(v118 + 4) = v103;
      *(v118 + 12) = 2048;
      *(v118 + 14) = v106;
      _os_log_impl(&dword_25C7D2000, v117, v115, "Skipping personalization for model because there were not enough samples for personalization and evaluation. Needed %ld, had %ld", v118, 0x16u);
      MEMORY[0x25F890110](v118, -1, -1);

      v111 = 0;
      return v111 & 1;
    }

    goto LABEL_57;
  }

  v119 = [v205 minimumNumberOfSamplesForPersonalization];
  v120 = [v119 integerValue];

  if (v104 >= v120)
  {
    goto LABEL_58;
  }

  v121 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v122 = qword_281559838;
  sub_25C82E00C(v121, &dword_25C7D2000, v122, "We don't have enough samples for personalization, but re-allocating from the samples for evaluation.", 100, 2, MEMORY[0x277D84F90]);

  if (v105 == v99)
  {
    v123 = sub_25C82E27C();
    v124 = qword_281559838;
    sub_25C82E00C(v123, &dword_25C7D2000, v124, "Found that we had exactly the minimum number of samples for selection when trying to re-allocate some for personalization.", 122, 2, MEMORY[0x277D84F90]);
LABEL_74:

    sub_25C7E7DEC();
    swift_allocError();
    *v176 = 20;
    swift_willThrow();

    return v111 & 1;
  }

  v196 = a3;
  sub_25C80E6F0(a3);
  LODWORD(v204) = sub_25C82E25C();
  v125 = qword_281559838;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16150, &qword_25C830670);
  v127 = swift_allocObject();
  v207 = xmmword_25C830650;
  *(v127 + 16) = xmmword_25C830650;
  v203 = v125;
  v128 = v205;
  v202 = [v205 minimumNumberOfSamplesForPersonalizationSelection];
  v129 = sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
  *(v127 + 56) = v129;
  v130 = sub_25C801F44(&qword_27FC16178, &qword_281559488, 0x277CCABB0);
  *(v127 + 64) = v130;
  *(v127 + 32) = v202;
  v131 = [v128 minimumNumberOfSamplesForPersonalization];
  *(v127 + 96) = v129;
  *(v127 + 104) = v130;
  *(v127 + 72) = v131;
  v132 = v203;
  sub_25C82E00C(v204, &dword_25C7D2000, v203, "min number of samples for selection: %@, min number of samples for personalization: %@", 86, 2, v127);

  v133 = sub_25C82E25C();
  v134 = qword_281559838;
  v205 = v126;
  v135 = swift_allocObject();
  *(v135 + 16) = v207;
  v136 = MEMORY[0x277D83B88];
  v137 = MEMORY[0x277D83C10];
  *(v135 + 56) = MEMORY[0x277D83B88];
  *(v135 + 64) = v137;
  *(v135 + 32) = v105;
  *(v135 + 96) = v136;
  *(v135 + 104) = v137;
  *(v135 + 72) = v104;
  v138 = v134;
  sub_25C82E00C(v133, &dword_25C7D2000, v138, "Current number of samples for selection: %ld, current number of samples for personalization: %ld", v193, v194);

  if (v99 < 0)
  {
    __break(1u);
  }

  else
  {
    v139 = v210;
    v141 = v200;
    v140 = v201;
    if (v99 < *(v209 + 2))
    {
      v142 = v208 + *(v210 + 9) * v99;
      v143 = *(v210 + 2);
      v144 = v196;
      v145 = v194;
      v143(v196, v142, v194);
      (*(v139 + 7))(v144, 0, 1, v145);
      v146 = v144;
      v147 = v198;
      sub_25C81C294(v146, v198);
      if (v211(v147, 1, v145) == 1)
      {
        sub_25C80E6F0(v147);
      }

      else
      {
        (*(v139 + 4))(v140, v147, v145);
        v148 = sub_25C82E25C();
        v149 = qword_281559838;
        v143(v141, v140, v145);
        LODWORD(v208) = v148;
        if (os_log_type_enabled(v149, v148))
        {
          v204 = v149;
          v150 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          v212[0] = v151;
          *v150 = 136315138;
          sub_25C81D650(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v152 = sub_25C82E4DC();
          v154 = v153;
          v155 = *(v210 + 1);
          v155(v141, v145);
          v156 = sub_25C7E77E4(v152, v154, v212);
          v157 = (ODCurareEvaluationAndReportingModule + 32);

          *(v150 + 4) = v156;
          v158 = v204;
          _os_log_impl(&dword_25C7D2000, v204, v208, "Post-update date for personalization filter %s", v150, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v151);
          v159 = v151;
          v139 = v210;
          MEMORY[0x25F890110](v159, -1, -1);
          MEMORY[0x25F890110](v150, -1, -1);

          v155(v201, v145);
          v160 = v211;
LABEL_67:
          v162 = v199;
          sub_25C81C294(v196, v199);
          v163 = v160(v162, 1, v145);
          v164 = v213;
          if (v163 == 1)
          {
            v165 = v145;
            v166 = 0;
          }

          else
          {
            v166 = sub_25C82DF4C();
            v165 = v145;
            (*(v139 + 1))(v162, v145);
          }

          v167 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
          [v164 setStreamFilter:0 fromInclusive:0 toDate:v166 toInclusive:v167];

          v168 = [v164 getDatesOfEventsForStream];
          v169 = v196;
          if (!v168)
          {
            v175 = sub_25C82E27C();
            v124 = v157[263];
            sub_25C82E00C(v175, &dword_25C7D2000, v124, "Failed to fetch dates from model for personalization.", 53, 2, MEMORY[0x277D84F90]);
            goto LABEL_74;
          }

          v170 = v168;
          v171 = sub_25C82E1DC();

          v172 = v169;
          v173 = v197;
          sub_25C81C294(v172, v197);
          if (v211(v173, 1, v165) == 1)
          {
            v174 = 0;
          }

          else
          {
            v174 = sub_25C82DF4C();
            (*(v139 + 1))(v173, v165);
          }

          v177 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
          v178 = v213;
          [v213 setStreamFilter:v174 fromInclusive:v177 toDate:0 toInclusive:0];

          v179 = [v178 getDatesOfEventsForStream];
          if (!v179)
          {

            v190 = sub_25C82E27C();
            v191 = v157[263];
            sub_25C82E00C(v190, &dword_25C7D2000, v191, "Failed to fetch dates from model for evaluation.", 48, 2, MEMORY[0x277D84F90]);

            sub_25C7E7DEC();
            swift_allocError();
            *v192 = 20;
            swift_willThrow();

            return v111 & 1;
          }

          v180 = v179;
          v181 = sub_25C82E1DC();

          v182 = *(v171 + 16);

          v183 = *(v181 + 16);

          v184 = sub_25C82E25C();
          v185 = v157[263];
          v186 = swift_allocObject();
          *(v186 + 16) = v207;
          v187 = MEMORY[0x277D83B88];
          *(v186 + 56) = MEMORY[0x277D83B88];
          v188 = MEMORY[0x277D83C10];
          *(v186 + 64) = MEMORY[0x277D83C10];
          *(v186 + 72) = v182;
          *(v186 + 32) = v183;
          *(v186 + 96) = v187;
          *(v186 + 104) = v188;
          v189 = v185;
          sub_25C82E00C(v184, &dword_25C7D2000, v189, "Updated number of samples for selection: %ld, current number of samples for personalization: %ld", v193, v194);

LABEL_58:

          v111 = 1;
          return v111 & 1;
        }

        v161 = *(v139 + 1);
        v161(v141, v145);
        v161(v140, v145);
      }

      v160 = v211;
      v157 = ODCurareEvaluationAndReportingModule.info;
      goto LABEL_67;
    }
  }

  __break(1u);
  return result;
}

id sub_25C819EA4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v86 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v76 - v10;
  v12 = sub_25C82DEAC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = (v76 - v17);
  if (([a1 hasStreamFilter] & 1) == 0)
  {
    v41 = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v42 = qword_281559838;
    sub_25C82E00C(v41, &dword_25C7D2000, v42, "model does not have stream set.", 31, 2, MEMORY[0x277D84F90]);

    sub_25C7E7DEC();
    swift_allocError();
    v44 = 27;
    goto LABEL_15;
  }

  v85 = a3;
  if (([a2 respondsToSelector_] & 1) == 0 || (v19 = objc_msgSend(a2, sel_personalizeModel_, a1)) == 0)
  {
    v45 = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v46 = qword_281559838;
    sub_25C82E00C(v45, &dword_25C7D2000, v46, "personalizationInstance did not impelment [ODCurarePersonalizationProtocol personalizeModel:]", 93, 2, MEMORY[0x277D84F90]);

    sub_25C7E7DEC();
    swift_allocError();
    v44 = 28;
LABEL_15:
    *v43 = v44;
    return swift_willThrow();
  }

  v83 = v16;
  v84 = v19;
  LODWORD(v80) = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v82 = a4;
  v78 = v13;
  v79 = v12;
  v20 = qword_281559838;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16150, &qword_25C830670);
  v22 = swift_allocObject();
  v81 = xmmword_25C830640;
  *(v22 + 16) = xmmword_25C830640;
  v23 = v20;
  result = [a1 getDatesOfEventsForStream];
  if (!result)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  v25 = result;
  v77 = sub_25C82DFBC();
  v26 = sub_25C82E1DC();

  v27 = *(v26 + 16);

  v28 = MEMORY[0x277D83C10];
  *(v22 + 56) = MEMORY[0x277D83B88];
  *(v22 + 64) = v28;
  *(v22 + 32) = v27;
  sub_25C82E00C(v80, &dword_25C7D2000, v23, "Number of samples for personalization: %ld", v76[0]);

  v29 = v84;
  v30 = [v84 modelURL];
  sub_25C82DE7C();

  v80 = [v29 modelInformation];
  v31 = sub_25C82E25C();
  v32 = qword_281559838;
  v76[1] = v21;
  v33 = swift_allocObject();
  *(v33 + 16) = v81;
  v34 = v32;
  v35 = sub_25C82DE2C();
  *(v33 + 56) = sub_25C7E96B8(0, &qword_27FC16220, 0x277CBEBC0);
  *(v33 + 64) = sub_25C801F44(&qword_27FC16228, &qword_27FC16220, 0x277CBEBC0);
  *(v33 + 32) = v35;
  sub_25C82E00C(v31, &dword_25C7D2000, v34, "Post-personalize...modelinformation url %@", 42, 2, v33);

  v36 = [a1 modelTag];
  if (v36)
  {
    v37 = v36;
    v38 = sub_25C82E0AC();
    v40 = v39;
  }

  else
  {
    v89 = 0;
    v90 = 0xE000000000000000;
    v87 = sub_25C81AB48;
    v88 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16328, &qword_25C830C20);
    sub_25C82E41C();
    v38 = v89;
    v40 = v90;
  }

  v47 = v91;
  sub_25C81AB78(v18, v38, v40, v83);
  if (v47)
  {
    (*(v78 + 8))(v18, v79);
  }

  v48 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v91 = "evaluateWithModel:]";
  v49 = sub_25C82E07C();
  [v48 setDateFormat_];

  v50 = sub_25C82DF4C();
  v51 = [v48 stringFromDate_];

  v52 = v80;
  if (!v51)
  {
    sub_25C82E0AC();
    v51 = sub_25C82E07C();
  }

  [v52 setModelCreationDate_];
  sub_25C82DE1C();
  v53 = sub_25C82E07C();

  [v52 setModelName_];

  v54 = sub_25C82DE2C();
  [v84 setModelURL_];

  v55 = sub_25C82DE2C();
  [a1 setModelURL_];

  sub_25C81C294(v86, v11);
  v56 = v77;
  v57 = *(v77 - 8);
  if ((*(v57 + 48))(v11, 1, v77) == 1)
  {
    v58 = 0;
  }

  else
  {
    v58 = sub_25C82DF4C();
    (*(v57 + 8))(v11, v56);
  }

  v59 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [a1 setStreamFilter:v58 fromInclusive:v59 toDate:0 toInclusive:0];

  v60 = sub_25C80E88C(a1, v85);
  v61 = sub_25C82E25C();
  v62 = qword_281559838;
  v63 = swift_allocObject();
  *(v63 + 16) = v81;
  v64 = v62;
  result = [a1 getDatesOfEventsForStream];
  if (!result)
  {
    goto LABEL_29;
  }

  v65 = result;
  v66 = sub_25C82E1DC();

  v67 = *(v66 + 16);

  *(v63 + 56) = MEMORY[0x277D83B88];
  *(v63 + 64) = MEMORY[0x277D83C10];
  *(v63 + 32) = v67;
  sub_25C82E00C(v61, &dword_25C7D2000, v64, "Number of samples for evaluation: %ld", v76[0]);

  v68 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v69 = sub_25C82E07C();
  [v68 setDateFormat_];

  v70 = sub_25C82DF4C();
  v71 = [v68 stringFromDate_];

  if (!v71)
  {
    sub_25C82E0AC();
    v71 = sub_25C82E07C();
  }

  [v60 setEvaluationDate_];
  v72 = v80;
  v73 = [v80 modelName];
  [v60 setModelName_];

  v74 = v79;
  v75 = *(v78 + 8);
  v75(v83, v79);
  v75(v18, v74);
  return v84;
}

void sub_25C81A8E4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = 0;
  v19 = 0;
  v20 = 0;
  v5 = (a2 + 48);
  do
  {
    v6 = *(v5 - 1);
    v7 = *v5;
    v8 = *(v5 - 2);
    v9 = v6;
    v10 = v7;
    v11 = [v9 modelInformation];
    LODWORD(v7) = [v11 isDefaultModel];

    if (v7)
    {
LABEL_3:

      goto LABEL_4;
    }

    if (v4)
    {
      v12 = [a1 hyperparameterSelectionPolicy];
      sub_25C7E96B8(0, &qword_27FC16170, off_2799B97A0);
      v13 = sub_25C82E1DC();

      v14 = sub_25C80FAD4(v10, v4, v13, 0);
      if (v2)
      {

        return;
      }

      v15 = v14;

      if ((v15 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else if (v19 | v20)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    v4 = v10;
    v19 = v9;
    v20 = v8;
LABEL_4:
    v5 += 3;
    --v3;
  }

  while (v3);
  if (!v20)
  {
    goto LABEL_22;
  }

  if (!v19)
  {
    goto LABEL_23;
  }

  if (v4)
  {
    return;
  }

  __break(1u);
LABEL_16:
  v16 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v17 = qword_281559838;
  sub_25C82E00C(v16, &dword_25C7D2000, v17, "No personalized models to process. Returning nil.", 49, 2, MEMORY[0x277D84F90]);
}

char *sub_25C81AB48@<X0>(const char **a1@<X0>, int *a2@<X1>, char **a3@<X8>)
{
  result = index(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_25C81AB78@<X0>(NSObject *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, NSObject *a4@<X8>)
{
  v234 = a4;
  v242 = *MEMORY[0x277D85DE8];
  v235 = sub_25C82DEAC();
  v232 = *(v235 - 8);
  v7 = MEMORY[0x28223BE20](v235);
  v209 = &v207 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v211 = &v207 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v226 = &v207 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v223 = &v207 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v210 = &v207 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v219 = &v207 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v218 = &v207 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v217 = &v207 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v221 = &v207 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v222 = (&v207 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v229 = &v207 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v207 - v30;
  MEMORY[0x28223BE20](v29);
  v233 = &v207 - v32;
  v238 = 0x5F64657470616461;
  v239 = 0xE800000000000000;
  if (a3)
  {
    MEMORY[0x25F88F460](a2, a3);
    MEMORY[0x25F88F460](95, 0xE100000000000000);
  }

  v230 = a1;
  MEMORY[0x25F88F460](16421, 0xE200000000000000);
  v33 = NSTemporaryDirectory();
  sub_25C82E0AC();

  sub_25C82DDFC();

  v34 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v35 = sub_25C82E07C();
  [v34 setDateFormat_];

  v36 = sub_25C82DF4C();
  v37 = [v34 stringFromDate_];

  v38 = sub_25C82E0AC();
  v40 = v39;

  v240 = 0x6C65646F6D6C6D2ELL;
  v241 = 0xE900000000000063;
  v215 = v238;
  v236 = v238;
  v237 = v239;
  v225 = v239;

  v41 = MEMORY[0x277D837D0];
  v236 = sub_25C82E18C();
  v237 = v42;
  sub_25C82E12C();
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16150, &qword_25C830670);
  v43 = swift_allocObject();
  v213 = xmmword_25C830640;
  *(v43 + 16) = xmmword_25C830640;
  *(v43 + 56) = v41;
  v212 = sub_25C801F94();
  *(v43 + 64) = v212;
  v216 = v38;
  *(v43 + 32) = v38;
  *(v43 + 40) = v40;
  v224 = v40;

  sub_25C82E0CC();

  v44 = v234;
  sub_25C82DE4C();

  v231 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v45 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v46 = qword_281559838;
  v47 = v232;
  v48 = (v232 + 2);
  v49 = v232[2];
  v50 = v31;
  v51 = v235;
  v49(v31, v230, v235);
  v52 = v229;
  v228 = v48;
  v227 = v49;
  v49(v229, v44, v51);
  if (os_log_type_enabled(v46, v45))
  {
    v53 = v47;
    v208 = v46;
    v54 = v45;
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v240 = v56;
    *v55 = 136315394;
    v57 = sub_25C82DE8C();
    v59 = v58;
    v60 = v53[1];
    v60(v50, v235);
    v61 = sub_25C7E77E4(v57, v59, &v240);

    *(v55 + 4) = v61;
    *(v55 + 12) = 2080;
    v62 = sub_25C82DE8C();
    v64 = v63;
    v229 = v60;
    v60(v52, v235);
    v51 = v235;
    v65 = sub_25C7E77E4(v62, v64, &v240);

    *(v55 + 14) = v65;
    v66 = v208;
    _os_log_impl(&dword_25C7D2000, v208, v54, "Attempting to copy from %s to %s", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F890110](v56, -1, -1);
    MEMORY[0x25F890110](v55, -1, -1);

    v67 = v231;
    v68 = v226;
  }

  else
  {
    v69 = v47[1];
    v69(v52, v51);
    v229 = v69;
    v69(v50, v51);
    v68 = v226;
    v67 = v231;
  }

  sub_25C82DE8C();
  v70 = sub_25C82E07C();

  v71 = [v67 fileExistsAtPath_];

  v72 = v230;
  if ((v71 & 1) == 0)
  {
    sub_25C82DE8C();
    v73 = sub_25C82E07C();

    v240 = 0;
    v74 = [v67 createDirectoryAtPath:v73 withIntermediateDirectories:1 attributes:0 error:&v240];

    v75 = v240;
    v76 = v223;
    if (!v74)
    {
LABEL_16:
      v126 = v75;

      v127 = sub_25C82DDAC();

      v226 = v127;
      swift_willThrow();
      v128 = sub_25C82E27C();
      v129 = qword_281559838;
      v130 = v227;
      v227(v76, v72, v51);
      v130(v68, v234, v51);
      v131 = v129;
      LODWORD(v230) = v128;
      if (os_log_type_enabled(v131, v128))
      {
        v132 = swift_slowAlloc();
        v228 = swift_slowAlloc();
        v240 = v228;
        *v132 = 136315650;
        v133 = sub_25C82DE8C();
        v135 = v134;
        v136 = v76;
        v137 = v229;
        (v229)(v136, v235);
        v138 = sub_25C7E77E4(v133, v135, &v240);

        *(v132 + 4) = v138;
        *(v132 + 12) = 2080;
        v139 = sub_25C82DE8C();
        v141 = v140;
        v137(v68, v235);
        v51 = v235;
        v142 = sub_25C7E77E4(v139, v141, &v240);

        *(v132 + 14) = v142;
        *(v132 + 22) = 2080;
        v143 = v226;
        swift_getErrorValue();
        v144 = sub_25C82E52C();
        v146 = sub_25C7E77E4(v144, v145, &v240);

        *(v132 + 24) = v146;
        _os_log_impl(&dword_25C7D2000, v131, v230, "Failed to copy folder from %s to %s with error: %s", v132, 0x20u);
        v147 = v228;
        swift_arrayDestroy();
        v122 = v137;
        MEMORY[0x25F890110](v147, -1, -1);
        v148 = v132;
        v67 = v231;
        MEMORY[0x25F890110](v148, -1, -1);
      }

      else
      {

        v122 = v229;
        (v229)(v68, v51);
        v122(v76, v51);
        v143 = v226;
      }

      sub_25C7E7DEC();
      swift_allocError();
      *v149 = 10;
      swift_willThrow();

      goto LABEL_20;
    }

    v77 = v240;
  }

  sub_25C82DE8C();
  v78 = sub_25C82E07C();

  sub_25C82DE8C();
  v79 = sub_25C82E07C();

  v240 = 0;
  v80 = [v67 copyItemAtPath:v78 toPath:v79 error:&v240];

  v75 = v240;
  if (!v80)
  {
    v76 = v223;
    goto LABEL_16;
  }

  v81 = v240;
  v82 = sub_25C82DE1C();
  v240 = 46;
  v241 = 0xE100000000000000;
  MEMORY[0x28223BE20](v82);
  *(&v207 - 2) = &v240;
  v83 = v220;
  v86 = sub_25C7FAA3C(0x7FFFFFFFFFFFFFFFLL, 1, sub_25C81D630, (&v207 - 4), v84, v85, &v243);
  if (!v86[2])
  {
    __break(1u);
  }

  v226 = v83;
  v87 = v86[4];
  v88 = v86[5];
  v89 = v86[6];
  v90 = v86[7];

  v91 = MEMORY[0x25F88F420](v87, v88, v89, v90);
  v93 = v92;

  v240 = 0x74736F6F6267782ELL;
  v241 = 0xE800000000000000;
  v236 = v91;
  v237 = v93;
  v94 = MEMORY[0x277D837D0];
  v236 = sub_25C82E18C();
  v237 = v95;
  sub_25C82E12C();
  v96 = v222;
  v223 = v236;
  v230 = v237;
  sub_25C82DE4C();
  v97 = swift_allocObject();
  *(v97 + 16) = v213;
  v98 = v212;
  *(v97 + 56) = v94;
  *(v97 + 64) = v98;
  v99 = v224;
  *(v97 + 32) = v216;
  *(v97 + 40) = v99;
  v100 = sub_25C82E0CC();
  v102 = v101;

  v240 = 0x74736F6F6267782ELL;
  v241 = 0xE800000000000000;
  v236 = v100;
  v237 = v102;
  v236 = sub_25C82E18C();
  v237 = v103;
  sub_25C82E12C();
  v104 = v221;
  sub_25C82DE4C();

  v105 = sub_25C82E25C();
  v106 = qword_281559838;
  v107 = v217;
  v108 = v227;
  v227(v217, v96, v51);
  v109 = v218;
  v108(v218, v104, v51);
  if (os_log_type_enabled(v106, v105))
  {
    v225 = v106;
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v240 = v111;
    *v110 = 136315394;
    v112 = sub_25C82DE8C();
    v114 = v113;
    v115 = v107;
    v116 = v229;
    (v229)(v115, v235);
    v117 = sub_25C7E77E4(v112, v114, &v240);

    *(v110 + 4) = v117;
    *(v110 + 12) = 2080;
    v118 = sub_25C82DE8C();
    v120 = v119;
    v116(v109, v235);
    v121 = sub_25C7E77E4(v118, v120, &v240);

    *(v110 + 14) = v121;
    v122 = v116;
    v123 = v225;
    _os_log_impl(&dword_25C7D2000, v225, v105, "Attempting to copy file from %s to %s", v110, 0x16u);
    swift_arrayDestroy();
    v124 = v111;
    v96 = v222;
    MEMORY[0x25F890110](v124, -1, -1);
    v125 = v110;
    v51 = v235;
    MEMORY[0x25F890110](v125, -1, -1);
  }

  else
  {
    v151 = v109;
    v122 = v229;
    (v229)(v151, v51);
    v122(v107, v51);
  }

  v152 = v219;
  sub_25C82DE8C();
  v153 = sub_25C82E07C();

  v154 = [v231 fileExistsAtPath_];

  if (v154)
  {
    v155 = sub_25C82E25C();
    v156 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v155))
    {
      v225 = v156;
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v240 = v158;
      *v157 = 136315138;
      v159 = sub_25C7E77E4(v223, v230, &v240);

      *(v157 + 4) = v159;
      v160 = v225;
      _os_log_impl(&dword_25C7D2000, v225, v155, "Copying file from %s", v157, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v158);
      MEMORY[0x25F890110](v158, -1, -1);
      MEMORY[0x25F890110](v157, -1, -1);
    }

    else
    {
    }

    v161 = v210;
    v162 = sub_25C82E25C();
    v163 = qword_281559838;
    v164 = v227;
    v227(v152, v96, v51);
    v164(v161, v104, v51);
    if (os_log_type_enabled(v163, v162))
    {
      v230 = v163;
      v165 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v240 = v166;
      *v165 = 136315394;
      sub_25C81D650(&qword_27FC16098, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v167 = sub_25C82E4DC();
      v169 = v168;
      v170 = v152;
      v171 = v229;
      (v229)(v170, v235);
      v172 = sub_25C7E77E4(v167, v169, &v240);
      v51 = v235;

      *(v165 + 4) = v172;
      *(v165 + 12) = 2080;
      v173 = sub_25C82E4DC();
      v175 = v174;
      v171(v161, v51);
      v96 = v222;
      v176 = sub_25C7E77E4(v173, v175, &v240);

      *(v165 + 14) = v176;
      v177 = v230;
      _os_log_impl(&dword_25C7D2000, v230, v162, "Copying URL from %s, to %s", v165, 0x16u);
      swift_arrayDestroy();
      v122 = v171;
      MEMORY[0x25F890110](v166, -1, -1);
      MEMORY[0x25F890110](v165, -1, -1);

      v104 = v221;
    }

    else
    {
      v178 = v161;
      v122 = v229;
      (v229)(v178, v51);
      v122(v152, v51);
    }

    v179 = sub_25C82DE2C();
    v180 = sub_25C82DE2C();
    v240 = 0;
    v181 = v104;
    v182 = [v231 moveItemAtURL:v179 toURL:v180 error:&v240];

    if (v182)
    {
      v183 = v240;
      v104 = v181;
      goto LABEL_32;
    }

    v184 = v240;
    v185 = sub_25C82DDAC();

    v232 = v185;
    swift_willThrow();
    LODWORD(v185) = sub_25C82E27C();
    v186 = qword_281559838;
    v187 = v96;
    v188 = v227;
    v227(v211, v187, v51);
    v189 = v209;
    v188(v209, v181, v51);
    v190 = v186;
    LODWORD(v230) = v185;
    if (os_log_type_enabled(v190, v185))
    {
      v191 = swift_slowAlloc();
      v228 = swift_slowAlloc();
      v240 = v228;
      *v191 = 136315650;
      sub_25C81D650(&qword_27FC16098, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v192 = v211;
      v193 = sub_25C82E4DC();
      v195 = v194;
      (v229)(v192, v235);
      v196 = sub_25C7E77E4(v193, v195, &v240);

      *(v191 + 4) = v196;
      *(v191 + 12) = 2080;
      v197 = sub_25C82E4DC();
      v199 = v198;
      (v229)(v189, v235);
      v122 = v229;
      v200 = sub_25C7E77E4(v197, v199, &v240);

      *(v191 + 14) = v200;
      *(v191 + 22) = 2080;
      v51 = v235;
      v201 = v232;
      swift_getErrorValue();
      v202 = sub_25C82E52C();
      v204 = sub_25C7E77E4(v202, v203, &v240);

      *(v191 + 24) = v204;
      _os_log_impl(&dword_25C7D2000, v190, v230, "Failed to copy xgboost from %s to %s with error: %s", v191, 0x20u);
      v205 = v228;
      swift_arrayDestroy();
      MEMORY[0x25F890110](v205, -1, -1);
      MEMORY[0x25F890110](v191, -1, -1);
    }

    else
    {

      v122(v189, v51);
      v122(v211, v51);
      v201 = v232;
    }

    sub_25C7E7DEC();
    swift_allocError();
    *v206 = 10;
    swift_willThrow();

    v122(v221, v51);
    v122(v222, v51);
LABEL_20:
    v122(v234, v51);
    return (v122)(v233, v51);
  }

LABEL_32:

  v122(v104, v51);
  v122(v96, v51);
  return (v122)(v233, v51);
}

uint64_t sub_25C81C294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C81C304(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25C82E4CC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25C82DFBC();
        v6 = sub_25C82E1FC();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25C82DFBC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25C81C6B4(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25C81C430(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25C81C430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_25C82DFBC();
  v9 = MEMORY[0x28223BE20](v8);
  v40 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v44 = &v30 - v12;
  result = MEMORY[0x28223BE20](v11);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v14 + 16);
    v42 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v19 = v16 + v17 * (a3 - 1);
    v37 = -v17;
    v38 = (v14 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      v41(v43, v21, v8);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = sub_25C82DF5C();
      v26 = *v18;
      (*v18)(v24, v8);
      result = v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v27)(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25C81C6B4(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v121 = a1;
  v9 = sub_25C82DFBC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v124 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v132 = &v117 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v138 = &v117 - v16;
  result = MEMORY[0x28223BE20](v15);
  v137 = &v117 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_25C807028(a4);
    }

    v112 = v6;
    v140 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v113 = v10;
      v10 = a3;
      a3 = v113;
      while (*v10)
      {
        v114 = *(result + 16 * a4);
        v115 = result;
        v6 = *(result + 16 * (a4 - 1) + 40);
        sub_25C81D0A0(*v10 + a3[9] * v114, *v10 + a3[9] * *(result + 16 * (a4 - 1) + 32), *v10 + a3[9] * v6, v5);
        if (v112)
        {
        }

        if (v6 < v114)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_25C807028(v115);
        }

        if (a4 - 2 >= *(v115 + 2))
        {
          goto LABEL_124;
        }

        v116 = &v115[16 * a4];
        *v116 = v114;
        *(v116 + 1) = v6;
        v140 = v115;
        sub_25C806F9C(a4 - 1);
        result = v140;
        a4 = *(v140 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v20 = 0;
  v135 = (v10 + 1);
  v136 = v10 + 2;
  v134 = (v10 + 4);
  v21 = MEMORY[0x277D84F90];
  v122 = a3;
  v120 = a4;
  v139 = v9;
  while (1)
  {
    v22 = v20;
    v125 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v130 = v19;
      v119 = v6;
      v127 = *a3;
      v23 = v127;
      v24 = v10[9];
      v5 = v127 + v24 * (v20 + 1);
      v25 = v10[2];
      v26 = v137;
      v25(v137, v5, v9);
      v27 = v23 + v24 * v22;
      v28 = v138;
      v129 = v25;
      v25(v138, v27, v9);
      LODWORD(v131) = sub_25C82DF5C();
      v29 = v9;
      v30 = v10[1];
      v30(v28, v29);
      v128 = v30;
      result = (v30)(v26, v29);
      v118 = v22;
      v31 = v22 + 2;
      v133 = v24;
      v32 = v127 + v24 * (v22 + 2);
      while (1)
      {
        v33 = v130;
        if (v130 == v31)
        {
          break;
        }

        v34 = v10;
        v35 = v137;
        v36 = v139;
        v37 = v129;
        (v129)(v137, v32, v139);
        v38 = v138;
        v37(v138, v5, v36);
        v39 = sub_25C82DF5C() & 1;
        v40 = v128;
        (v128)(v38, v36);
        v41 = v35;
        v10 = v34;
        result = v40(v41, v36);
        ++v31;
        v32 += v133;
        v5 += v133;
        if ((v131 & 1) != v39)
        {
          v33 = v31 - 1;
          break;
        }
      }

      a3 = v122;
      v21 = v125;
      v6 = v119;
      a4 = v120;
      v9 = v139;
      v22 = v118;
      if (v131)
      {
        if (v33 < v118)
        {
          goto LABEL_127;
        }

        if (v118 < v33)
        {
          v117 = v10;
          v42 = v133 * (v33 - 1);
          v43 = v33 * v133;
          v44 = v33;
          v45 = v118;
          v46 = v118 * v133;
          do
          {
            if (v45 != --v44)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v49 = v33;
              v5 = v48 + v46;
              v131 = *v134;
              (v131)(v124, v48 + v46, v139, v21);
              if (v46 < v42 || v5 >= v48 + v43)
              {
                v47 = v139;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v47 = v139;
                if (v46 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v131)(v48 + v42, v124, v47);
              a3 = v122;
              v21 = v125;
              v33 = v49;
            }

            ++v45;
            v42 -= v133;
            v43 -= v133;
            v46 += v133;
          }

          while (v45 < v44);
          v6 = v119;
          a4 = v120;
          v10 = v117;
          v9 = v139;
          v22 = v118;
        }
      }
    }

    v50 = a3[1];
    if (v33 < v50)
    {
      if (__OFSUB__(v33, v22))
      {
        goto LABEL_126;
      }

      if (v33 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v22 + a4;
        }

        if (v51 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v51)
        {
          break;
        }
      }
    }

    v52 = v33;
    if (v33 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v125;
    }

    else
    {
      result = sub_25C7E6F4C(0, *(v125 + 2) + 1, 1, v125);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v53 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      result = sub_25C7E6F4C((v53 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v52;
    v55 = *v121;
    if (!*v121)
    {
      goto LABEL_135;
    }

    v126 = v52;
    if (a4)
    {
      while (1)
      {
        v56 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v57 = *(v21 + 4);
          v58 = *(v21 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_114;
          }

          v73 = &v21[16 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_117;
          }

          v79 = &v21[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_121;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v21[16 * v5];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_116;
        }

        v86 = &v21[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v56 - 1;
        if (v56 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v94 = v21;
        v95 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v56 + 40];
        sub_25C81D0A0(*a3 + v10[9] * v95, *a3 + v10[9] * *&v21[16 * v56 + 32], *a3 + v10[9] * v5, v55);
        if (v6)
        {
        }

        if (v5 < v95)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_25C807028(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_111;
        }

        v96 = &v94[16 * a4];
        *(v96 + 4) = v95;
        *(v96 + 5) = v5;
        v140 = v94;
        result = sub_25C806F9C(v56);
        v21 = v140;
        v5 = *(v140 + 16);
        v9 = v139;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v21[16 * v5 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_112;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_113;
      }

      v68 = &v21[16 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_115;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_118;
      }

      if (v72 >= v64)
      {
        v90 = &v21[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v93)
        {
          v56 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v126;
    a4 = v120;
    if (v126 >= v19)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v97 = *a3;
  v98 = v10[9];
  v117 = v10;
  v133 = v10[2];
  v99 = v97 + v98 * (v33 - 1);
  v100 = -v98;
  v118 = v22;
  v101 = (v22 - v33);
  v131 = v97;
  v123 = v98;
  v5 = v97 + v33 * v98;
  v126 = v51;
LABEL_85:
  v129 = v99;
  v130 = v33;
  v127 = v5;
  v128 = v101;
  v102 = v99;
  while (1)
  {
    v103 = v137;
    v104 = v133;
    (v133)(v137, v5, v9, v21);
    v105 = v138;
    v104(v138, v102, v139);
    v106 = sub_25C82DF5C();
    a4 = v135;
    v107 = *v135;
    v108 = v105;
    v9 = v139;
    (*v135)(v108, v139);
    result = v107(v103, v9);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v33 = v130 + 1;
      v99 = &v129[v123];
      v101 = v128 - 1;
      v5 = v127 + v123;
      v52 = v126;
      if (v130 + 1 != v126)
      {
        goto LABEL_85;
      }

      v6 = v119;
      a3 = v122;
      v10 = v117;
      v22 = v118;
      if (v126 < v118)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    a4 = v134;
    v109 = *v134;
    v110 = v132;
    (*v134)(v132, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v9);
    v102 += v100;
    v5 += v100;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_25C81D0A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = sub_25C82DFBC();
  v8 = *(v57 - 8);
  v9 = MEMORY[0x28223BE20](v57);
  v55 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v54 = &v45 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v56 = a3;
  v16 = (a2 - a1) / v14;
  v60 = a1;
  v59 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v18;
    if (v18 < 1)
    {
      v33 = a4 + v18;
    }

    else
    {
      v30 = -v14;
      v49 = (v8 + 8);
      v50 = (v8 + 16);
      v31 = a4 + v18;
      v32 = v56;
      v33 = v29;
      v47 = a1;
      v48 = a4;
      v51 = -v14;
      do
      {
        v45 = v33;
        v34 = a2;
        v35 = a2 + v30;
        v52 = v34;
        v53 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v60 = v34;
            v58 = v45;
            goto LABEL_59;
          }

          v37 = v32;
          v46 = v33;
          v56 = v32 + v30;
          v38 = v31 + v30;
          v39 = *v50;
          v40 = v54;
          v41 = v57;
          v42 = v31;
          (*v50)(v54, v38, v57);
          v43 = v55;
          (v39)(v55, v35, v41);
          LOBYTE(v39) = sub_25C82DF5C();
          v44 = *v49;
          (*v49)(v43, v41);
          v44(v40, v41);
          if (v39)
          {
            break;
          }

          v33 = v38;
          v32 = v56;
          if (v37 < v42 || v56 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v53;
            a1 = v47;
          }

          else
          {
            v35 = v53;
            a1 = v47;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v38;
          v36 = v38 > v48;
          v30 = v51;
          v34 = v52;
          if (!v36)
          {
            a2 = v52;
            goto LABEL_58;
          }
        }

        v45 = v42;
        v32 = v56;
        if (v37 < v52 || v56 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v46;
          a1 = v47;
          v30 = v51;
        }

        else
        {
          a2 = v53;
          v33 = v46;
          a1 = v47;
          v30 = v51;
          if (v37 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v31 = v45;
      }

      while (v45 > v48);
    }

LABEL_58:
    v60 = a2;
    v58 = v33;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = a4 + v17;
    v58 = a4 + v17;
    if (v17 >= 1 && a2 < v56)
    {
      v51 = *(v8 + 16);
      v52 = v8 + 16;
      v49 = v14;
      v50 = (v8 + 8);
      do
      {
        v20 = v54;
        v21 = v57;
        v22 = v51;
        (v51)(v54, a2, v57);
        v23 = a2;
        v24 = v55;
        v22(v55, a4, v21);
        v25 = sub_25C82DF5C();
        v26 = *v50;
        (*v50)(v24, v21);
        v26(v20, v21);
        if (v25)
        {
          v27 = v49;
          a2 = v49 + v23;
          if (a1 < v23 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v23)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v27 = v49;
          v28 = v49 + a4;
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v23;
          }

          else
          {
            a2 = v23;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = v28;
          a4 += v27;
        }

        a1 += v27;
        v60 = a1;
      }

      while (a4 < v53 && a2 < v56);
    }
  }

LABEL_59:
  sub_25C80703C(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_25C81D650(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25C81D698(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25C807780(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25C826550(v6);
  *a1 = v3;
  return result;
}

void *sub_25C81D74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;

  MEMORY[0x25F88F460](0x4D5F524543444F2DLL, 0xED0000736C65646FLL);
  v8 = objc_allocWithZone(ODCurareCoreDuetStorage);
  v9 = sub_25C82E07C();

  v10 = [v8 init_];

  v4[2] = v10;
  v16 = a2;

  MEMORY[0x25F88F460](0xD000000000000010, 0x800000025C8342D0);

  v11 = objc_allocWithZone(ODCurareCoreDuetStorage);
  v12 = sub_25C82E07C();

  v13 = [v11 init_];

  v4[3] = v13;
  v4[4] = a1;
  return v4;
}

void sub_25C81D89C(uint64_t a1, uint64_t a2, void *a3, void *a4, NSObject *a5, NSObject *a6, unint64_t a7, void *a8)
{
  v199 = a6;
  v200 = a8;
  v195 = a5;
  v196 = a7;
  v192 = a4;
  v197 = a3;
  v183 = sub_25C82DD8C();
  v201 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v11 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v170 - v13;
  v15 = sub_25C82DDCC();
  v193 = *(v15 - 8);
  v194 = v15;
  MEMORY[0x28223BE20](v15);
  v203 = &v170 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25C82DEAC();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v185 = &v170 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v182 = &v170 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v198 = &v170 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v170 - v25;
  v27 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v28 = qword_281559838;
  v187 = *(v18 + 16);
  v188 = v18 + 16;
  v187(v26, a1, v17);
  v29 = os_log_type_enabled(v28, v27);
  v202 = a1;
  v189 = v11;
  v191 = a2;
  if (v29)
  {
    *&v205 = v28;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v212[0] = v31;
    *v30 = 136315138;
    sub_25C826508(&qword_27FC16098, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v32 = sub_25C82E4DC();
    v34 = v33;
    v190 = *(v18 + 8);
    v190(v26, v17);
    v35 = sub_25C7E77E4(v32, v34, v212);

    *(v30 + 4) = v35;
    v36 = v205;
    _os_log_impl(&dword_25C7D2000, v205, v27, "Start save model, model path: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x25F890110](v31, -1, -1);
    MEMORY[0x25F890110](v30, -1, -1);
  }

  else
  {
    v190 = *(v18 + 8);
    v190(v26, v17);
  }

  v37 = [objc_opt_self() defaultManager];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16348, &unk_25C830CD0);
  v39 = swift_allocObject();
  v205 = xmmword_25C830640;
  *(v39 + 16) = xmmword_25C830640;
  v40 = *MEMORY[0x277CBE8A8];
  *(v39 + 32) = *MEMORY[0x277CBE8A8];
  v41 = v40;
  v42 = sub_25C82E24C();

  if (v42)
  {
    v43 = sub_25C82E25C();
    v44 = qword_281559838;
    sub_25C82E00C(v43, &dword_25C7D2000, v44, "Inside if let", 13, 2, MEMORY[0x277D84F90]);

    v186 = v42;
    sub_25C82E23C();
    sub_25C82DDBC();
    if (v213)
    {
      v178 = v41;
      v179 = v38;
      v184 = 0;
      v46 = (v18 + 56);
      v181 = v18 + 8;
      v176 = (v201 + 8);
      v177 = (v18 + 32);
      v47 = MEMORY[0x277D84F98];
      *&v45 = 136315138;
      v174 = v45;
      *&v45 = 136315394;
      v175 = v45;
      v48 = v198;
      v49 = v203;
      while (1)
      {
        v50 = swift_dynamicCast();
        v51 = *v46;
        if (v50)
        {
          v201 = v47;
          v51(v14, 0, 1, v17);
          (*v177)(v48, v14, v17);
          inited = swift_initStackObject();
          *(inited + 16) = v205;
          v53 = v178;
          *(inited + 32) = v178;
          v54 = v53;
          sub_25C82772C(inited);
          swift_setDeallocating();
          sub_25C827F28(inited + 32);
          v55 = v48;
          v56 = v184;
          sub_25C82DDEC();
          v180 = v56;
          if (v56)
          {
            v184 = 0;

            v57 = sub_25C82E27C();
            v58 = qword_281559838;
            v59 = v185;
            v187(v185, v55, v17);
            LODWORD(v173) = v57;
            if (os_log_type_enabled(v58, v57))
            {
              v172 = v58;
              v60 = swift_slowAlloc();
              v171 = swift_slowAlloc();
              v210 = v171;
              *v60 = v175;
              sub_25C826508(&qword_27FC16098, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
              v61 = sub_25C82E4DC();
              v62 = v59;
              v64 = v63;
              v190(v62, v17);
              v65 = sub_25C7E77E4(v61, v64, &v210);

              *(v60 + 4) = v65;
              *(v60 + 12) = 2080;
              swift_getErrorValue();
              v66 = sub_25C82E52C();
              v68 = sub_25C7E77E4(v66, v67, &v210);

              *(v60 + 14) = v68;
              v69 = v172;
              _os_log_impl(&dword_25C7D2000, v172, v173, "Handling file %s failed with error %s", v60, 0x16u);
              v70 = v171;
              swift_arrayDestroy();
              MEMORY[0x25F890110](v70, -1, -1);
              MEMORY[0x25F890110](v60, -1, -1);

              v48 = v198;
              v190(v48, v17);
            }

            else
            {
              v48 = v55;

              v83 = v190;
              v190(v59, v17);
              v83(v48, v17);
            }

            v47 = v201;
          }

          else
          {

            v71 = sub_25C82DD7C();
            if (v71 == 2)
            {
              goto LABEL_61;
            }

            v47 = v201;
            v72 = v182;
            if (v71)
            {
              v73 = sub_25C82E26C();
              v74 = qword_281559838;
              v187(v72, v198, v17);
              if (os_log_type_enabled(v74, v73))
              {
                v184 = v74;
                v75 = swift_slowAlloc();
                LODWORD(v172) = v73;
                v76 = v75;
                v173 = swift_slowAlloc();
                v210 = v173;
                *v76 = v174;
                v77 = sub_25C82DE8C();
                v79 = v78;
                v190(v72, v17);
                v80 = sub_25C7E77E4(v77, v79, &v210);
                v47 = v201;

                *(v76 + 4) = v80;
                v81 = v184;
                _os_log_impl(&dword_25C7D2000, v184, v172, "Handling file %s", v76, 0xCu);
                v82 = v173;
                __swift_destroy_boxed_opaque_existential_0Tm(v173);
                MEMORY[0x25F890110](v82, -1, -1);
                MEMORY[0x25F890110](v76, -1, -1);
              }

              else
              {
                v190(v72, v17);
              }

              v84 = v198;
              v86 = v180;
              v87 = sub_25C82DEBC();
              if (v86)
              {

                v85 = 0;
              }

              else
              {
                v184 = v88;
                v173 = v87;
                v180 = 0;
                v89 = sub_25C82DE8C();
                v91 = v90;
                v92 = sub_25C82DE8C();
                v94 = sub_25C81EDD0(0x657461766972702FLL, 0xE800000000000000, v92, v93);

                if (v94)
                {
                  v95 = sub_25C82DE8C();
                  v97 = sub_25C81EDD0(0x657461766972702FLL, 0xE800000000000000, v95, v96);

                  if ((v97 & 1) == 0)
                  {
                    v210 = v89;
                    v211 = v91;
                    v208 = 0x657461766972702FLL;
                    v209 = 0xE800000000000000;
                    v206 = 0;
                    v207 = 0xE000000000000000;
                    sub_25C827F84();
                    v89 = sub_25C82E30C();
                    v99 = v98;

                    v91 = v99;
                  }
                }

                v210 = v89;
                v211 = v91;
                v208 = sub_25C82DE8C();
                v209 = v100;
                v206 = 0;
                v207 = 0xE000000000000000;
                sub_25C827F84();
                v101 = sub_25C82E30C();
                v171 = v102;
                v172 = v101;

                v103 = v173;
                v104 = v184;
                v170 = sub_25C82DEFC();
                v106 = v105;
                v107 = v201;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v210 = v107;
                sub_25C7FC864(v170, v106, v172, v171, isUniquelyReferenced_nonNull_native);

                sub_25C808E3C(v103, v104);
                v47 = v210;
                v85 = v180;
                v84 = v198;
              }
            }

            else
            {
              v84 = v198;
              v85 = v180;
            }

            (*v176)(v189, v183);
            v190(v84, v17);
            v184 = v85;
            v48 = v84;
          }
        }

        else
        {
          v51(v14, 1, 1, v17);
          sub_25C7E97F4(v14, &qword_27FC16040, &unk_25C830480);
        }

        sub_25C82DDBC();
        if (!v213)
        {
          goto LABEL_33;
        }
      }
    }

    v47 = MEMORY[0x277D84F98];
    v49 = v203;
LABEL_33:
    (*(v193 + 8))(v49, v194);
  }

  else
  {
    v47 = MEMORY[0x277D84F98];
  }

  v109 = v204;
  if (!*(v47 + 16))
  {

LABEL_58:
    v169 = *(v109 + 32);
    sub_25C827FD8(*(v109 + 24), v169);
    sub_25C827FD8(*(v109 + 16), v169);
    return;
  }

  v110 = 7104878;
  if (v199)
  {
    v111 = v195;
  }

  else
  {
    v111 = 7104878;
  }

  if (v199)
  {
    v112 = v199;
  }

  else
  {
    v112 = 0xE300000000000000;
  }

  v195 = v112;
  if (v200)
  {
    v110 = v196;
  }

  v198 = v110;
  if (v200)
  {
    v113 = v200;
  }

  else
  {
    v113 = 0xE300000000000000;
  }

  v201 = v47;
  if (v197)
  {
    v114 = v197;

    v115 = sub_25C82E25C();
    v116 = qword_281559838;
    sub_25C82E00C(v115, &dword_25C7D2000, v116, "Saving model with model information", 35, 2, MEMORY[0x277D84F90]);

    v117 = [v114 data];
    if (!v117)
    {
      __break(1u);
      goto LABEL_60;
    }

    v118 = v117;
    v119 = sub_25C82DF0C();
    v121 = v120;

    v122 = objc_allocWithZone(MEMORY[0x277CBEA90]);
    v123 = sub_25C82DEEC();
    v124 = [v122 initWithData_];

    sub_25C808E3C(v119, v121);
  }

  else
  {
    sub_25C7E96B8(0, &qword_27FC16350, 0x277CCACA8);

    v124 = sub_25C82E2CC();
  }

  v203 = v124;
  v125 = v192;
  v196 = v113;
  v194 = v111;
  if (!v192)
  {
    sub_25C7E96B8(0, &qword_27FC16350, 0x277CCACA8);
    v149 = sub_25C82E2CC();
    goto LABEL_57;
  }

  v200 = v192;
  v126 = sub_25C82E25C();
  v127 = qword_281559838;
  sub_25C82E00C(v126, &dword_25C7D2000, v127, "Saving model with model metadata", 32, 2, MEMORY[0x277D84F90]);

  v128 = sub_25C82E25C();
  v129 = qword_281559838;
  if (!os_log_type_enabled(qword_281559838, v128))
  {
LABEL_55:
    v141 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    v142 = v200;
    [v200 encodeWithCoder_];
    [v141 finishEncoding];
    v143 = [v141 encodedData];
    v144 = sub_25C82DF0C();
    v146 = v145;

    v147 = objc_allocWithZone(MEMORY[0x277CBEA90]);
    v148 = sub_25C82DEEC();
    v149 = [v147 initWithData_];

    sub_25C808E3C(v144, v146);
LABEL_57:
    v150 = v149;
    v199 = *(v109 + 24);
    v200 = v150;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16298, &unk_25C830930);
    v151 = swift_allocObject();
    *(v151 + 16) = v205;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162A0, &unk_25C830BC0);
    v152 = swift_initStackObject();
    *(v152 + 16) = xmmword_25C830C30;
    v212[0] = 0xD000000000000010;
    v212[1] = 0x800000025C8340A0;
    v153 = MEMORY[0x277D837D0];
    sub_25C82E35C();
    v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16358, &unk_25C830CE0);
    *(v152 + 96) = v154;
    *(v152 + 72) = v203;
    v212[0] = 0xD000000000000012;
    v212[1] = 0x800000025C834150;
    sub_25C82E35C();
    *(v152 + 168) = v154;
    *(v152 + 144) = v150;
    strcpy(v212, "cdStreamString");
    HIBYTE(v212[1]) = -18;
    sub_25C82E35C();
    *(v152 + 240) = v153;
    v155 = v195;
    *(v152 + 216) = v194;
    *(v152 + 224) = v155;
    strcpy(v212, "bmStreamString");
    HIBYTE(v212[1]) = -18;
    sub_25C82E35C();
    *(v152 + 312) = v153;
    v156 = v196;
    *(v152 + 288) = v198;
    *(v152 + 296) = v156;
    v157 = sub_25C8009E0(v152);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC161A8, &unk_25C8307A0);
    swift_arrayDestroy();
    *(v151 + 32) = v157;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
    v158 = sub_25C82E1BC();

    v159 = sub_25C82DF4C();
    sub_25C82DE8C();
    v160 = sub_25C82E07C();

    [v199 saveDictionaries:v158 date:v159 eventIdentifier:v160];

    v109 = v204;
    v161 = *(v109 + 16);
    v162 = swift_allocObject();
    *(v162 + 16) = v205;
    v163 = swift_initStackObject();
    *(v163 + 16) = v205;
    v212[0] = sub_25C82DE8C();
    v212[1] = v164;
    sub_25C82E35C();
    *(v163 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16340, &unk_25C830CC0);
    *(v163 + 72) = v201;
    v165 = sub_25C8009E0(v163);
    swift_setDeallocating();
    sub_25C7E97F4(v163 + 32, &qword_27FC161A8, &unk_25C8307A0);
    *(v162 + 32) = v165;
    v166 = sub_25C82E1BC();

    v167 = sub_25C82DF4C();
    sub_25C82DE8C();
    v168 = sub_25C82E07C();

    [v161 saveDictionaries:v166 date:v167 eventIdentifier:v168];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_58;
  }

  v130 = v200;
  v199 = v129;
  v131 = swift_slowAlloc();
  v132 = swift_slowAlloc();
  v133 = swift_slowAlloc();
  v212[0] = v133;
  *v131 = 138412546;
  *(v131 + 4) = v130;
  *v132 = v125;
  *(v131 + 12) = 2080;
  v134 = v130;
  v135 = [v134 parameters];

  if (v135)
  {
    sub_25C7E96B8(0, &qword_27FC16360, 0x277CBFF58);
    sub_25C827EC0();
    sub_25C82E02C();

    v136 = sub_25C82E03C();
    v138 = v137;

    v139 = sub_25C7E77E4(v136, v138, v212);

    *(v131 + 14) = v139;
    v140 = v199;
    _os_log_impl(&dword_25C7D2000, v199, v128, "Saving model with config: %@ params: %s", v131, 0x16u);
    sub_25C7E97F4(v132, &qword_27FC16100, &qword_25C8305B8);
    MEMORY[0x25F890110](v132, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v133);
    MEMORY[0x25F890110](v133, -1, -1);
    MEMORY[0x25F890110](v131, -1, -1);

    v109 = v204;
    goto LABEL_55;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

uint64_t sub_25C81EDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_25C82E14C();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_25C82E14C();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_25C82E4EC();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_25C82E14C();
      v7 = v9;
    }

    while (v9);
  }

  sub_25C82E14C();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_25C81EF2C()
{
  v2 = v0;
  v6 = MEMORY[0x277D84F90];
  v3 = objc_autoreleasePoolPush();
  sub_25C81EFF8(v2, &v6, &v5);
  objc_autoreleasePoolPop(v3);
  if (v1)
  {
  }

  v5 = v6;

  sub_25C81D698(&v5);

  return v5;
}

id sub_25C81EFF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v185 = a3;
  v4 = v3;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v196 = *(v197 - 1);
  MEMORY[0x28223BE20](v197);
  v209 = (&v178 - v7);
  v203 = sub_25C82DFBC();
  v8 = *(v203 - 8);
  v9 = MEMORY[0x28223BE20](v203);
  v195 = &v178 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v184 = &v178 - v11;
  v12 = sub_25C82DEAC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v186 = &v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v183 = &v178 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v178 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v178 - v21;
  result = [*(a1 + 24) queryDataWithPredicate_];
  if (result)
  {
    v24 = result;
    sub_25C7E96B8(0, &qword_2815594A0, off_2799B9788);
    v25 = sub_25C82E1DC();

    if (v25 >> 62)
    {
      goto LABEL_100;
    }

    for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25C82E43C())
    {
      v192 = v25 & 0xC000000000000001;
      v191 = v25 & 0xFFFFFFFFFFFFFF8;
      v204 = "rage";
      v198 = " PET proto object.";
      v194 = (v13 + 16);
      v199 = (v13 + 8);
      v181 = (v8 + 8);
      v187 = (v8 + 32);
      v8 = 0;
      *&v26 = 136315138;
      v182 = v26;
      *&v26 = 136315394;
      v180 = v26;
      v193 = v12;
      v178 = v20;
      v189 = a2;
      v211 = v22;
      v190 = v25;
      v188 = i;
      while (1)
      {
        if (v192)
        {
          v28 = MEMORY[0x25F88F6D0](v8, v25);
        }

        else
        {
          if (v8 >= *(v191 + 16))
          {
            goto LABEL_99;
          }

          v28 = *(v25 + 8 * v8 + 32);
        }

        v25 = v28;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v205 = v8 + 1;
        v206 = v8;
        v29 = [v28 identifier];
        sub_25C82E0AC();

        sub_25C82DE0C();

        v30 = [v25 metadata];
        if (!v30)
        {

          v134 = sub_25C82E27C();
          v135 = v183;
          if (qword_2815594B8 != -1)
          {
            swift_once();
          }

          v136 = qword_281559838;
          (*v194)(v135, v22, v12);
          if (os_log_type_enabled(v136, v134))
          {
            v209 = v136;
            v137 = swift_slowAlloc();
            v138 = swift_slowAlloc();
            v215 = v138;
            *v137 = v180;
            sub_25C826508(&qword_27FC16098, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v139 = sub_25C82E4DC();
            v141 = v140;
            v210 = v25;
            v212 = *v199;
            v212(v135, v12);
            v142 = sub_25C7E77E4(v139, v141, &v215);

            *(v137 + 4) = v142;
            *(v137 + 12) = 2080;
            v143 = [v25 startDate];
            v144 = v184;
            sub_25C82DF8C();

            sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v145 = v203;
            v146 = sub_25C82E4DC();
            v148 = v147;
            (*v181)(v144, v145);
            v149 = sub_25C7E77E4(v146, v148, &v215);

            *(v137 + 14) = v149;
            v150 = v134;
            v151 = v209;
            _os_log_impl(&dword_25C7D2000, v209, v150, "Associated event with %s and date %s did not have any metadata!", v137, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x25F890110](v138, -1, -1);
            MEMORY[0x25F890110](v137, -1, -1);

            sub_25C7E7DEC();
            v127 = swift_allocError();
            *v152 = 15;
            swift_willThrow();

            result = v212(v211, v12);
LABEL_94:
            *v185 = v127;
            return result;
          }

          v176 = *v199;
          (*v199)(v135, v12);
LABEL_97:
          sub_25C7E7DEC();
          v127 = swift_allocError();
          *v177 = 15;
          swift_willThrow();

          result = v176(v22, v12);
          goto LABEL_94;
        }

        v31 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
        v32 = sub_25C82E1DC();

        if (*(v32 + 16) != 1)
        {

          v153 = sub_25C82E27C();
          if (qword_2815594B8 != -1)
          {
            swift_once();
          }

          v154 = qword_281559838;
          v155 = v178;
          (*v194)(v178, v22, v12);
          if (os_log_type_enabled(v154, v153))
          {
            v209 = v154;
            v156 = swift_slowAlloc();
            v157 = swift_slowAlloc();
            v215 = v157;
            *v156 = v180;
            sub_25C826508(&qword_27FC16098, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v158 = sub_25C82E4DC();
            v160 = v159;
            v212 = *v199;
            v212(v155, v12);
            v161 = sub_25C7E77E4(v158, v160, &v215);

            *(v156 + 4) = v161;
            *(v156 + 12) = 2080;
            v162 = v25;
            v163 = [v25 startDate];
            v164 = v184;
            sub_25C82DF8C();

            sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v165 = v203;
            v166 = sub_25C82E4DC();
            v168 = v167;
            (*v181)(v164, v165);
            v169 = sub_25C7E77E4(v166, v168, &v215);

            *(v156 + 14) = v169;
            v170 = v153;
            v171 = v209;
            _os_log_impl(&dword_25C7D2000, v209, v170, "Associated event with %s and date %s had metadata with more than one object!", v156, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x25F890110](v157, -1, -1);
            MEMORY[0x25F890110](v156, -1, -1);

            sub_25C7E7DEC();
            v127 = swift_allocError();
            *v172 = 15;
            swift_willThrow();

            result = v212(v211, v12);
            goto LABEL_94;
          }

          v176 = *v199;
          (*v199)(v155, v12);
          goto LABEL_97;
        }

        v33 = *(v32 + 32);

        v34 = sub_25C803374(v33);

        if (*(v34 + 16) && (v35 = sub_25C8139BC(0xD000000000000010, v204 | 0x8000000000000000), (v36 & 1) != 0) && (sub_25C7E9854(*(v34 + 56) + 32 * v35, &v215), (swift_dynamicCast() & 1) != 0))
        {

          v37 = sub_25C82E25C();
          if (qword_2815594B8 != -1)
          {
            swift_once();
          }

          v38 = qword_281559838;
          sub_25C82E00C(v37, &dword_25C7D2000, v38, "Model information was a string.", 31, 2, MEMORY[0x277D84F90]);

          v39 = 0;
        }

        else
        {
          if (!*(v34 + 16) || (v40 = sub_25C8139BC(0xD000000000000010, v204 | 0x8000000000000000), (v41 & 1) == 0) || (sub_25C7E9854(*(v34 + 56) + 32 * v40, &v215), sub_25C7E96B8(0, &qword_281559490, 0x277CBEA90), (swift_dynamicCast() & 1) == 0))
          {

            v124 = sub_25C82E27C();
            v125 = v211;
            if (qword_2815594B8 != -1)
            {
              swift_once();
            }

            v126 = qword_281559838;
            sub_25C82E00C(v124, &dword_25C7D2000, v126, "Model information was neither String nor NSData", 47, 2, MEMORY[0x277D84F90]);

            sub_25C7E7DEC();
            v127 = swift_allocError();
            *v128 = 15;
            swift_willThrow();

            result = (*v199)(v125, v12);
            goto LABEL_94;
          }

          v42 = v213;
          v43 = MEMORY[0x25F88F1F0](v213);
          v45 = v44;
          v46 = objc_allocWithZone(ODCurareReportFillerModelInformation);
          v47 = sub_25C82DEEC();
          sub_25C808E3C(v43, v45);
          v39 = [v46 initWithData_];

          if (!v39)
          {

            v173 = sub_25C82E27C();
            if (qword_2815594B8 != -1)
            {
              swift_once();
            }

            v174 = qword_281559838;
            sub_25C82E00C(v173, &dword_25C7D2000, v174, "Failed to convert NSData version of modelInformation back to the PET proto object.", 82, 2, MEMORY[0x277D84F90]);

            sub_25C7E7DEC();
            v127 = swift_allocError();
            *v175 = 11;
            swift_willThrow();

            result = (*v199)(v211, v12);
            goto LABEL_94;
          }
        }

        v48 = *(v34 + 16);
        v210 = v25;
        if (v48 && (v49 = sub_25C8139BC(0xD000000000000012, v198 | 0x8000000000000000), (v50 & 1) != 0) && (sub_25C7E9854(*(v34 + 56) + 32 * v49, &v215), (swift_dynamicCast() & 1) != 0))
        {

          v51 = sub_25C82E25C();
          if (qword_2815594B8 != -1)
          {
            swift_once();
          }

          v52 = qword_281559838;
          sub_25C82E00C(v51, &dword_25C7D2000, v52, "Model configuration was a string.", 33, 2, MEMORY[0x277D84F90]);

          v53 = 0;
          if (!*(v34 + 16))
          {
            goto LABEL_49;
          }
        }

        else
        {
          if (!*(v34 + 16) || (v54 = sub_25C8139BC(0xD000000000000012, v198 | 0x8000000000000000), (v55 & 1) == 0) || (sub_25C7E9854(*(v34 + 56) + 32 * v54, &v215), sub_25C7E96B8(0, &qword_281559490, 0x277CBEA90), (swift_dynamicCast() & 1) == 0))
          {
            v129 = v39;

            v130 = sub_25C82E27C();
            v131 = v211;
            if (qword_2815594B8 != -1)
            {
              swift_once();
            }

            v132 = qword_281559838;
            sub_25C82E00C(v130, &dword_25C7D2000, v132, "Model configuration was neither String nor NSData", 49, 2, MEMORY[0x277D84F90]);

            sub_25C7E7DEC();
            v127 = swift_allocError();
            *v133 = 15;
            swift_willThrow();

            result = (*v199)(v131, v12);
            goto LABEL_94;
          }

          v56 = v213;
          v57 = MEMORY[0x25F88F1F0](v213);
          v59 = v58;
          v60 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
          v61 = sub_25C827920(v57, v59);
          if (v4)
          {
            sub_25C808E3C(v57, v59);
            v62 = v4;
          }

          else
          {
            v74 = v61;
            sub_25C808E3C(v57, v59);
            [v74 setRequiresSecureCoding_];
            v75 = [objc_allocWithZone(MEMORY[0x277CBFF38]) initWithCoder_];
            if (v75)
            {
              v53 = v75;

              if (!*(v34 + 16))
              {
                goto LABEL_49;
              }

              goto LABEL_43;
            }

            v121 = sub_25C82E27C();
            if (qword_2815594B8 != -1)
            {
              swift_once();
            }

            v122 = qword_281559838;
            sub_25C82E00C(v121, &dword_25C7D2000, v122, "Failed to convert NSData version of modelMetadata back to NSCoding object", 73, 2, MEMORY[0x277D84F90]);

            sub_25C7E7DEC();
            v62 = swift_allocError();
            *v123 = 11;
            swift_willThrow();
          }

          v212 = 0;
          v63 = sub_25C82E27C();
          if (qword_2815594B8 != -1)
          {
            swift_once();
          }

          v64 = qword_281559838;
          if (os_log_type_enabled(qword_281559838, v63))
          {
            v65 = v64;
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v208 = v39;
            v68 = v67;
            v215 = v67;
            *v66 = v182;
            swift_getErrorValue();
            v69 = sub_25C82E52C();
            v71 = sub_25C7E77E4(v69, v70, &v215);

            *(v66 + 4) = v71;
            v12 = v193;
            _os_log_impl(&dword_25C7D2000, v65, v63, "Failed to unarchive model metadata using NSKeyedUnarchiver with error %s", v66, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v68);
            v72 = v68;
            v39 = v208;
            MEMORY[0x25F890110](v72, -1, -1);
            v73 = v66;
            v25 = v210;
            MEMORY[0x25F890110](v73, -1, -1);
          }

          else
          {
          }

          v53 = 0;
          v4 = v212;
          if (!*(v34 + 16))
          {
            goto LABEL_49;
          }
        }

LABEL_43:
        v76 = sub_25C8139BC(0x6D61657274536463, 0xEE00676E69727453);
        if ((v77 & 1) == 0)
        {
          goto LABEL_49;
        }

        sub_25C7E9854(*(v34 + 56) + 32 * v76, &v215);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_49;
        }

        v79 = v213;
        v78 = v214;
        if (v213 == 7104878 && v214 == 0xE300000000000000 || (sub_25C82E4EC() & 1) != 0)
        {

LABEL_49:
          v79 = 0;
          v201 = 0;
          goto LABEL_50;
        }

        v201 = v78;
LABEL_50:
        v80 = *(v34 + 16);
        v212 = v4;
        v202 = v53;
        v200 = v79;
        if (!v80)
        {
          goto LABEL_56;
        }

        v81 = sub_25C8139BC(0x6D61657274536D62, 0xEE00676E69727453);
        if ((v82 & 1) == 0)
        {
          goto LABEL_56;
        }

        sub_25C7E9854(*(v34 + 56) + 32 * v81, &v215);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_57;
        }

        if (v84 = v213, v83 = v214, v213 == 7104878) && v214 == 0xE300000000000000 || (sub_25C82E4EC())
        {
LABEL_56:

LABEL_57:
          v83 = 0;
          v85 = 0;
          v86 = v39;
          if (!v39)
          {
            goto LABEL_58;
          }

          goto LABEL_64;
        }

        v85 = v84;
        v86 = v39;
        if (!v39)
        {
LABEL_58:
          v207 = v83;
          v208 = v85;
          v87 = v86;
          v88 = sub_25C82E25C();
          if (qword_2815594B8 != -1)
          {
            swift_once();
          }

          v89 = qword_281559838;
          v90 = v186;
          (*v194)(v186, v211, v12);
          if (os_log_type_enabled(v89, v88))
          {
            v179 = v89;
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v215 = v92;
            *v91 = v180;
            sub_25C826508(&qword_27FC16098, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v93 = sub_25C82E4DC();
            v95 = v94;
            (*v199)(v90, v12);
            v96 = sub_25C7E77E4(v93, v95, &v215);

            *(v91 + 4) = v96;
            *(v91 + 12) = 2080;
            v97 = [v210 startDate];
            v98 = v184;
            sub_25C82DF8C();

            sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v99 = v203;
            v100 = sub_25C82E4DC();
            v102 = v101;
            (*v181)(v98, v99);
            v103 = sub_25C7E77E4(v100, v102, &v215);
            v25 = v210;

            *(v91 + 14) = v103;
            v104 = v179;
            _os_log_impl(&dword_25C7D2000, v179, v88, "Associated event with %s and date %s failed to extract modelInformation!", v91, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x25F890110](v92, -1, -1);
            MEMORY[0x25F890110](v91, -1, -1);
          }

          else
          {
            (*v199)(v90, v12);
          }

          v86 = v87;
          v83 = v207;
          v85 = v208;
        }

LABEL_64:
        v207 = v83;
        v208 = v85;
        v105 = [v25 startDate];
        v106 = v195;
        sub_25C82DF8C();

        v107 = v197[12];
        v108 = v197[16];
        v109 = v197[20];
        v110 = v209;
        v111 = (&v209->isa + v197[24]);
        v112 = v12;
        v113 = (&v209->isa + v197[28]);
        (*v187)(v209, v106, v203);
        (*v194)(v110 + v107, v211, v112);
        *(&v110->isa + v108) = v86;
        *(&v110->isa + v109) = v202;
        v114 = v207;
        *v111 = v208;
        v111[1] = v114;
        v115 = v201;
        *v113 = v200;
        v113[1] = v115;
        a2 = v189;
        v116 = *v189;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v116;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v116 = sub_25C7E7554(0, v116[2] + 1, 1, v116);
          *a2 = v116;
        }

        v22 = v211;
        v4 = v212;
        v25 = v190;
        v119 = v116[2];
        v118 = v116[3];
        v13 = v119 + 1;
        v12 = v193;
        v20 = v210;
        if (v119 >= v118 >> 1)
        {
          *a2 = sub_25C7E7554((v118 > 1), v119 + 1, 1, v116);
        }

        (*v199)(v22, v12);
        v120 = *a2;
        *(v120 + 16) = v13;
        sub_25C8276BC(v209, v120 + ((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v119);
        v8 = v206 + 1;
        if (v205 == v188)
        {
        }
      }

      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      ;
    }
  }

  return result;
}

uint64_t sub_25C820990(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, NSObject *a5)
{
  v62 = a2;
  v63 = a3;
  v64 = a1;
  v7 = sub_25C82DEAC();
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x28223BE20](v7);
  v66 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16330, &qword_25C830CB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v65 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v61 - v13;
  MEMORY[0x28223BE20](v12);
  v72 = &v61 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v61 - v17;
  v71 = a4;
  sub_25C82DE8C();
  v19 = sub_25C82E07C();

  v20 = a5;
  sub_25C7E92DC(a5, v18, &qword_27FC16048, qword_25C8309D0);
  v21 = sub_25C82DFBC();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v18, 1, v21) != 1)
  {
    v23 = sub_25C82DF4C();
    (*(v22 + 8))(v18, v21);
  }

  v61 = v22;
  v24 = [objc_opt_self() predicateWithIdentifier:v19 withDate:v23];

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v26 = *(v25 - 1);
  v27 = v72;
  (*(v26 + 56))(v72, 1, 1, v25);
  v28 = objc_autoreleasePoolPush();
  v29 = v69;
  v30 = v70;
  v69 = v24;
  sub_25C82102C(v29, v24, v20, v71, v27, &v73);
  if (v30)
  {
    objc_autoreleasePoolPop(v28);
LABEL_14:

    return sub_25C7E97F4(v27, &qword_27FC16330, &qword_25C830CB0);
  }

  objc_autoreleasePoolPop(v28);
  sub_25C7E92DC(v27, v14, &qword_27FC16330, &qword_25C830CB0);
  v31 = *(v26 + 48);
  v32 = v27;
  v33 = v31(v14, 1, v25);
  sub_25C7E97F4(v14, &qword_27FC16330, &qword_25C830CB0);
  if (v33 == 1)
  {
    v34 = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v35 = qword_281559838;
    v36 = v66;
    v37 = v67;
    v38 = v68;
    (*(v67 + 16))(v66, v71, v68);
    v39 = os_log_type_enabled(v35, v34);
    v27 = v72;
    if (v39)
    {
      v40 = v35;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v73.isa = v42;
      *v41 = 136315138;
      sub_25C826508(&qword_27FC16098, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v43 = sub_25C82E4DC();
      v44 = v36;
      v46 = v45;
      (*(v37 + 8))(v44, v38);
      v47 = sub_25C7E77E4(v43, v46, &v73);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_25C7D2000, v40, v34, "returnValue was somehow still nil at the end of searching for events assocaited with %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x25F890110](v42, -1, -1);
      MEMORY[0x25F890110](v41, -1, -1);
    }

    else
    {
      (*(v37 + 8))(v36, v38);
    }

    sub_25C7E7DEC();
    swift_allocError();
    *v60 = 16;
    swift_willThrow();
    goto LABEL_14;
  }

  v48 = v65;
  sub_25C7E92DC(v32, v65, &qword_27FC16330, &qword_25C830CB0);
  result = v31(v48, 1, v25);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_25C7E97F4(v32, &qword_27FC16330, &qword_25C830CB0);

    v50 = v25[12];
    v51 = *(v48 + v25[16]);
    v72 = *(v48 + v25[20]);
    v52 = (v48 + v25[24]);
    v53 = *v52;
    v54 = v52[1];
    v55 = (v48 + v25[28]);
    v56 = *v55;
    v57 = v55[1];
    (*(v61 + 32))(v62, v48, v21);
    result = (*(v67 + 32))(v63, v48 + v50, v68);
    v58 = v64;
    v59 = v72;
    *v64 = v51;
    v58[1] = v59;
    v58[2] = v53;
    v58[3] = v54;
    v58[4] = v56;
    v58[5] = v57;
  }

  return result;
}

id sub_25C82102C(uint64_t a1, uint64_t a2, NSObject *a3, NSObject *a4, uint64_t a5, NSObject *a6)
{
  v237 = a6;
  v225 = a5;
  v234 = a4;
  v239 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16330, &qword_25C830CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v224 = &v223 - v9;
  v10 = sub_25C82DFBC();
  v235 = *(v10 - 8);
  v236 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v229 = &v223 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v226 = &v223 - v14;
  MEMORY[0x28223BE20](v13);
  v227 = &v223 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v223 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v231 = &v223 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v223 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v223 - v25;
  v240 = sub_25C82DEAC();
  v238 = *(v240 - 1);
  v27 = MEMORY[0x28223BE20](v240);
  v230 = &v223 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v228 = &v223 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v232 = &v223 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v223 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v223 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v223 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v223 - v42;
  result = [*(a1 + 24) queryDataWithPredicate_];
  if (!result)
  {
    return result;
  }

  v45 = result;
  sub_25C7E96B8(0, &qword_2815594A0, off_2799B9788);
  v46 = sub_25C82E1DC();

  v47 = v46 >> 62;
  if (!(v46 >> 62))
  {
    v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
      goto LABEL_4;
    }

LABEL_90:

    v191 = *(v235 + 6);
    v192 = v191(v239, 1, v236);
    LODWORD(v38) = sub_25C82E27C();
    if (v192 != 1)
    {
      v202 = v238;
      if (qword_2815594B8 != -1)
      {
        swift_once();
      }

      v203 = qword_281559838;
      v204 = v240;
      (*(v202 + 16))(v43, v234, v240);
      sub_25C7E92DC(v239, v26, &qword_27FC16048, qword_25C8309D0);
      if (!os_log_type_enabled(v203, v38))
      {
        sub_25C7E97F4(v26, &qword_27FC16048, qword_25C8309D0);
        (*(v202 + 8))(v43, v204);
        goto LABEL_102;
      }

      LODWORD(v239) = v38;
      v234 = v203;
      v205 = swift_slowAlloc();
      v233 = swift_slowAlloc();
      *&v244[0] = v233;
      *v205 = 136315394;
      v206 = sub_25C82DE8C();
      v207 = v202;
      v209 = v208;
      (*(v207 + 8))(v43, v204);
      v210 = sub_25C7E77E4(v206, v209, v244);

      *(v205 + 4) = v210;
      *(v205 + 12) = 2080;
      sub_25C7E92DC(v26, v24, &qword_27FC16048, qword_25C8309D0);
      v211 = v236;
      result = v191(v24, 1, v236);
      if (result != 1)
      {
        v212 = v235;
        v213 = v227;
        (*(v235 + 4))(v227, v24, v211);
        sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v214 = sub_25C82E4DC();
        v216 = v215;
        (*(v212 + 1))(v213, v211);
        sub_25C7E97F4(v26, &qword_27FC16048, qword_25C8309D0);
        v217 = sub_25C7E77E4(v214, v216, v244);

        *(v205 + 14) = v217;
        v81 = v234;
        _os_log_impl(&dword_25C7D2000, v234, v239, "Unable to find model URL at %s with date %s", v205, 0x16u);
        v218 = v233;
        swift_arrayDestroy();
        MEMORY[0x25F890110](v218, -1, -1);
        v83 = v205;
        goto LABEL_99;
      }

      __break(1u);
      goto LABEL_117;
    }

    v47 = v238;
    if (qword_2815594B8 == -1)
    {
LABEL_92:
      v193 = qword_281559838;
      v194 = v240;
      (*(v47 + 16))(v41, v234, v240);
      if (!os_log_type_enabled(v193, v38))
      {
        (*(v47 + 8))(v41, v194);
        goto LABEL_102;
      }

      v81 = v193;
      v195 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      *&v244[0] = v196;
      *v195 = 136315138;
      v197 = v38;
      v198 = sub_25C82DE8C();
      v200 = v199;
      (*(v47 + 8))(v41, v194);
      v201 = sub_25C7E77E4(v198, v200, v244);

      *(v195 + 4) = v201;
      _os_log_impl(&dword_25C7D2000, v81, v197, "Unable to find model URL at %s", v195, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v196);
      MEMORY[0x25F890110](v196, -1, -1);
      v83 = v195;
      goto LABEL_99;
    }

LABEL_110:
    swift_once();
    goto LABEL_92;
  }

  v48 = sub_25C82E43C();
  if (!v48)
  {
    goto LABEL_90;
  }

LABEL_4:
  if (v48 >= 2)
  {

    v49 = *(v235 + 6);
    v50 = v49(v239, 1, v236);
    v51 = sub_25C82E27C();
    if (v50 == 1)
    {
      if (qword_2815594B8 != -1)
      {
        swift_once();
      }

      v52 = qword_281559838;
      v53 = v238;
      v54 = v240;
      (*(v238 + 16))(v35, v234, v240);
      if (os_log_type_enabled(v52, v51))
      {
        v55 = v52;
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *&v244[0] = v57;
        *v56 = 136315138;
        v58 = sub_25C82DE8C();
        v60 = v59;
        (*(v53 + 8))(v35, v54);
        v61 = sub_25C7E77E4(v58, v60, v244);

        *(v56 + 4) = v61;
        _os_log_impl(&dword_25C7D2000, v55, v51, "Found more than one model URL at %s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v57);
        MEMORY[0x25F890110](v57, -1, -1);
        MEMORY[0x25F890110](v56, -1, -1);
      }

      else
      {
        (*(v53 + 8))(v35, v54);
      }

      goto LABEL_102;
    }

    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v63 = qword_281559838;
    v64 = v238;
    v65 = v240;
    (*(v238 + 16))(v38, v234, v240);
    v66 = v231;
    sub_25C7E92DC(v239, v231, &qword_27FC16048, qword_25C8309D0);
    if (!os_log_type_enabled(v63, v51))
    {
      sub_25C7E97F4(v66, &qword_27FC16048, qword_25C8309D0);
      (*(v64 + 8))(v38, v65);
LABEL_102:
      sub_25C7E7DEC();
      v117 = swift_allocError();
      *v219 = 16;
      result = swift_willThrow();
      goto LABEL_103;
    }

    LODWORD(v233) = v51;
    v239 = v63;
    v67 = v66;
    v68 = swift_slowAlloc();
    v234 = swift_slowAlloc();
    *&v244[0] = v234;
    *v68 = 136315394;
    v69 = sub_25C82DE8C();
    v70 = v64;
    v72 = v71;
    (*(v70 + 8))(v38, v65);
    v73 = sub_25C7E77E4(v69, v72, v244);

    *(v68 + 4) = v73;
    *(v68 + 12) = 2080;
    sub_25C7E92DC(v67, v19, &qword_27FC16048, qword_25C8309D0);
    v74 = v236;
    result = v49(v19, 1, v236);
    if (result != 1)
    {
      v75 = v235;
      v76 = v226;
      (*(v235 + 4))(v226, v19, v74);
      sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v77 = sub_25C82E4DC();
      v79 = v78;
      (*(v75 + 1))(v76, v74);
      sub_25C7E97F4(v67, &qword_27FC16048, qword_25C8309D0);
      v80 = sub_25C7E77E4(v77, v79, v244);

      *(v68 + 14) = v80;
      v81 = v239;
      _os_log_impl(&dword_25C7D2000, v239, v233, "Found more than one model URL at %s with date %s", v68, 0x16u);
      v82 = v234;
      swift_arrayDestroy();
      MEMORY[0x25F890110](v82, -1, -1);
      v83 = v68;
LABEL_99:
      MEMORY[0x25F890110](v83, -1, -1);

      goto LABEL_102;
    }

LABEL_117:
    __break(1u);
    return result;
  }

  if (v47)
  {
    v62 = sub_25C82E43C();
  }

  else
  {
    v62 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v84 = v238;
  v85 = v240;
  v86 = v232;
  if (v62)
  {
    if ((v46 & 0xC000000000000001) == 0)
    {
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v87 = *(v46 + 32);
        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_110;
    }
  }

  else
  {
    __break(1u);
  }

  v87 = MEMORY[0x25F88F6D0](0, v46);
LABEL_22:
  v88 = v87;
  v89 = [v87 identifier];
  sub_25C82E0AC();

  sub_25C82DE0C();

  v90 = [v88 metadata];
  if (!v90)
  {

    v98 = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v99 = qword_281559838;
    v100 = v230;
    (*(v84 + 16))(v230, v86, v85);
    if (os_log_type_enabled(v99, v98))
    {
      v239 = v99;
      v101 = swift_slowAlloc();
      v238 = swift_slowAlloc();
      *&v244[0] = v238;
      *v101 = 136315394;
      sub_25C826508(&qword_27FC16098, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v102 = sub_25C82E4DC();
      v104 = v103;
      v240 = *(v84 + 8);
      (v240)(v100, v85);
      v105 = sub_25C7E77E4(v102, v104, v244);

      *(v101 + 4) = v105;
      *(v101 + 12) = 2080;
      v106 = v88;
      v107 = [v88 startDate];
      v108 = v229;
      sub_25C82DF8C();

      sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v109 = v236;
      v110 = sub_25C82E4DC();
      v112 = v111;
      (*(v235 + 1))(v108, v109);
      v113 = sub_25C7E77E4(v110, v112, v244);

      *(v101 + 14) = v113;
      v114 = v98;
      v115 = v239;
      _os_log_impl(&dword_25C7D2000, v239, v114, "Associated event with %s and date %s did not have any metadata!", v101, 0x16u);
      v116 = v238;
      swift_arrayDestroy();
      MEMORY[0x25F890110](v116, -1, -1);
      MEMORY[0x25F890110](v101, -1, -1);

      sub_25C7E7DEC();
      v117 = swift_allocError();
      *v118 = 16;
      swift_willThrow();

      result = (v240)(v232, v85);
LABEL_103:
      v237->isa = v117;
      return result;
    }

    v154 = *(v84 + 8);
    v154(v100, v85);
LABEL_53:
    sub_25C7E7DEC();
    v117 = swift_allocError();
    *v155 = 16;
    swift_willThrow();

    result = (v154)(v86, v85);
    goto LABEL_103;
  }

  v91 = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
  v92 = sub_25C82E1DC();

  if (v92[2].isa != 1)
  {

    v119 = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v120 = qword_281559838;
    v121 = v228;
    (*(v84 + 16))(v228, v86, v85);
    if (os_log_type_enabled(v120, v119))
    {
      v239 = v120;
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *&v244[0] = v123;
      *v122 = 136315394;
      sub_25C826508(&qword_27FC16098, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v124 = sub_25C82E4DC();
      v125 = v121;
      v127 = v126;
      v234 = v88;
      v240 = *(v84 + 8);
      (v240)(v125, v85);
      v128 = sub_25C7E77E4(v124, v127, v244);

      *(v122 + 4) = v128;
      *(v122 + 12) = 2080;
      v129 = [v88 startDate];
      v130 = v229;
      sub_25C82DF8C();

      sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v131 = v236;
      v132 = sub_25C82E4DC();
      v134 = v133;
      (*(v235 + 1))(v130, v131);
      v135 = sub_25C7E77E4(v132, v134, v244);

      *(v122 + 14) = v135;
      v136 = v239;
      _os_log_impl(&dword_25C7D2000, v239, v119, "Associated event with %s and date %s had metadata with more than one object!", v122, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F890110](v123, -1, -1);
      MEMORY[0x25F890110](v122, -1, -1);

      sub_25C7E7DEC();
      v117 = swift_allocError();
      *v137 = 16;
      swift_willThrow();

      result = (v240)(v232, v85);
      goto LABEL_103;
    }

    v154 = *(v84 + 8);
    v154(v121, v85);
    goto LABEL_53;
  }

  v94 = sub_25C803374(v93);

  if (*(v94 + 16) && (v95 = sub_25C8139BC(0xD000000000000010, 0x800000025C8340A0), (v96 & 1) != 0) && (sub_25C7E9854(*(v94 + 56) + 32 * v95, v244), (swift_dynamicCast() & 1) != 0))
  {

    v97 = 0;
  }

  else
  {
    if (!*(v94 + 16) || (v138 = sub_25C8139BC(0xD000000000000010, 0x800000025C8340A0), (v139 & 1) == 0) || (sub_25C7E9854(*(v94 + 56) + 32 * v138, v244), sub_25C7E96B8(0, &qword_281559490, 0x277CBEA90), (swift_dynamicCast() & 1) == 0))
    {

      v150 = sub_25C82E27C();
      v151 = v240;
      if (qword_2815594B8 != -1)
      {
        swift_once();
      }

      v152 = qword_281559838;
      sub_25C82E00C(v150, &dword_25C7D2000, v152, "Model information was neither String nor NSData", 47, 2, MEMORY[0x277D84F90]);

      sub_25C7E7DEC();
      v117 = swift_allocError();
      *v153 = 15;
      swift_willThrow();

      goto LABEL_50;
    }

    v239 = v92;
    v140 = *&v243[0];
    v141 = MEMORY[0x25F88F1F0](*&v243[0]);
    v143 = v142;
    v144 = objc_allocWithZone(ODCurareReportFillerModelInformation);
    v145 = sub_25C82DEEC();
    sub_25C808E3C(v141, v143);
    v97 = [v144 initWithData_];

    if (!v97)
    {

      v146 = sub_25C82E27C();
      v97 = v232;
      if (qword_2815594B8 == -1)
      {
LABEL_67:
        v175 = qword_281559838;
        sub_25C82E00C(v146, &dword_25C7D2000, v175, "Failed to convert NSData version of summary back to the PET proto object.", 73, 2, MEMORY[0x277D84F90]);

        sub_25C7E7DEC();
        v117 = swift_allocError();
        *v176 = 11;
        swift_willThrow();

        result = (*(v84 + 8))(v97, v240);
        goto LABEL_103;
      }

LABEL_115:
      swift_once();
      goto LABEL_67;
    }

    v86 = v232;
    v92 = v239;
  }

  v146 = " PET proto object.";
  if (*(v94 + 16))
  {
    v140 = v94;
    v147 = sub_25C8139BC(0xD000000000000012, 0x800000025C834150);
    if (v148)
    {
      sub_25C7E9854(*(v94 + 56) + 32 * v147, v244);
      if (swift_dynamicCast())
      {

        v149 = 0;
        goto LABEL_73;
      }
    }
  }

  if (!*(v94 + 16) || (v156 = sub_25C8139BC(0xD000000000000012, 0x800000025C834150), (v157 & 1) == 0) || (sub_25C7E9854(*(v94 + 56) + 32 * v156, v244), sub_25C7E96B8(0, &qword_281559490, 0x277CBEA90), (swift_dynamicCast() & 1) == 0))
  {

    v172 = sub_25C82E27C();
    v151 = v240;
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v173 = qword_281559838;
    sub_25C82E00C(v172, &dword_25C7D2000, v173, "Model configuration was neither String nor NSData", 49, 2, MEMORY[0x277D84F90]);

    sub_25C7E7DEC();
    v117 = swift_allocError();
    *v174 = 15;
    swift_willThrow();

LABEL_50:
    result = (*(v84 + 8))(v86, v151);
    goto LABEL_103;
  }

  v239 = v92;
  v236 = v97;
  v146 = *&v243[0];
  v158 = MEMORY[0x25F88F1F0](*&v243[0]);
  v160 = v159;
  v161 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  v162 = v233;
  v163 = sub_25C827920(v158, v160);
  v233 = v162;
  if (v162)
  {
    sub_25C808E3C(v158, v160);
    v164 = v233;
LABEL_59:
    v233 = 0;
    v165 = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v140 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v165))
    {
      v237 = v140;
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v234 = v88;
      v168 = v167;
      *&v244[0] = v167;
      *v166 = 136315138;
      swift_getErrorValue();
      v169 = sub_25C82E52C();
      v84 = sub_25C7E77E4(v169, v170, v244);

      *(v166 + 4) = v84;
      v140 = v237;
      _os_log_impl(&dword_25C7D2000, v237, v165, "Failed to unarchive model metadata using NSKeyedUnarchiver with error %s", v166, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v168);
      v171 = v168;
      v88 = v234;
      MEMORY[0x25F890110](v171, -1, -1);
      MEMORY[0x25F890110](v166, -1, -1);
    }

    else
    {
    }

    v149 = 0;
    goto LABEL_72;
  }

  v140 = v163;
  sub_25C808E3C(v158, v160);
  [v140 setRequiresSecureCoding_];
  v177 = [objc_allocWithZone(MEMORY[0x277CBFF38]) initWithCoder_];
  if (!v177)
  {
    v220 = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v221 = qword_281559838;
    sub_25C82E00C(v220, &dword_25C7D2000, v221, "Failed to convert NSData version of modelMetadata back to NSCoding object", 73, 2, MEMORY[0x277D84F90]);

    sub_25C7E7DEC();
    v164 = swift_allocError();
    *v222 = 11;
    swift_willThrow();

    goto LABEL_59;
  }

  v149 = v177;

LABEL_72:
  v97 = v236;
LABEL_73:
  v236 = v97;
  if (!*(v94 + 16))
  {
    __break(1u);
    goto LABEL_112;
  }

  v239 = v149;
  v97 = 0xEE00676E69727453;
  v140 = v94;
  v178 = sub_25C8139BC(0x6D61657274536463, 0xEE00676E69727453);
  if ((v179 & 1) == 0)
  {
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v84 = 7104878;
  sub_25C7E9854(*(v94 + 56) + 32 * v178, v243);
  sub_25C801F34(v243, v244);
  swift_dynamicCast();
  v140 = v241;
  v146 = v242;
  if (v241 == 7104878 && v242 == 0xE300000000000000 || (sub_25C82E4EC() & 1) != 0)
  {
    v140 = 0;
    v235 = 0;
  }

  else
  {

    v235 = v146;
  }

  v237 = v140;
  if (!*(v94 + 16))
  {
    goto LABEL_113;
  }

  v140 = sub_25C8139BC(0x6D61657274536D62, 0xEE00676E69727453);
  v97 = v180;

  if ((v97 & 1) == 0)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  sub_25C7E9854(*(v94 + 56) + 32 * v140, v243);

  sub_25C801F34(v243, v244);
  swift_dynamicCast();
  v182 = v241;
  v181 = v242;
  if (v241 == 7104878 && v242 == 0xE300000000000000 || (sub_25C82E4EC() & 1) != 0)
  {
    v183 = v88;

    v182 = 0;
    v181 = 0;
  }

  else
  {
    v183 = v88;
  }

  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v185 = v184[12];
  v231 = v184[16];
  v230 = v184[20];
  v186 = v224;
  v187 = &v224[v184[24]];
  v188 = &v224[v184[28]];
  v189 = [v183 startDate];
  sub_25C82DF8C();

  (*(v238 + 32))(v186 + v185, v232, v240);
  *(v186 + v231) = v236;
  *&v230[v186] = v239;
  *v187 = v182;
  *(v187 + 1) = v181;
  v190 = v235;
  *v188 = v237;
  *(v188 + 1) = v190;
  (*(*(v184 - 1) + 56))(v186, 0, 1, v184);
  return sub_25C8279E0(v186, v225);
}

uint64_t sub_25C822E90@<X0>(NSObject *a1@<X0>, NSObject *a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X8>)
{
  v180 = a3;
  v178 = a1;
  v161 = a4;
  v182[1] = *MEMORY[0x277D85DE8];
  v5 = sub_25C82DFBC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v157 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v164 = &v153 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v156 = &v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v160 = &v153 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v170 = (&v153 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v165 = &v153 - v18;
  MEMORY[0x28223BE20](v17);
  v173 = (&v153 - v19);
  v20 = sub_25C82DEAC();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v158 = &v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v159 = &v153 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v153 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v153 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v153 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v153 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v163 = &v153 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v166 = &v153 - v41;
  MEMORY[0x28223BE20](v40);
  v177 = v21;
  v42 = *(v21 + 56);
  v171 = &v153 - v43;
  v179 = v20;
  v42();
  v167 = v6;
  v44 = *(v6 + 48);
  v175 = v6 + 48;
  v176 = a2;
  v172 = v5;
  v174 = v44;
  LODWORD(v5) = v44(a2, 1, v5);
  v45 = sub_25C82E25C();
  v46 = v45;
  if (v5 == 1)
  {
    v47 = v45;
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v48 = qword_281559838;
    v49 = v177;
    v50 = *(v177 + 16);
    v51 = v179;
    v50(v31, v178, v179);
    v162 = v50;
    v50(v28, v180, v51);
    if (os_log_type_enabled(v48, v47))
    {
      v52 = v48;
      v53 = swift_slowAlloc();
      v155 = v47;
      v54 = v53;
      v55 = swift_slowAlloc();
      v182[0] = v55;
      *v54 = 136315394;
      v56 = sub_25C82DE8C();
      v58 = v57;
      v59 = *(v177 + 8);
      (v59)(v31, v179);
      v60 = sub_25C7E77E4(v56, v58, v182);
      v51 = v179;

      *(v54 + 4) = v60;
      *(v54 + 12) = 2080;
      v61 = sub_25C82DE8C();
      v63 = v62;
      v173 = v59;
      (v59)(v28, v51);
      v64 = sub_25C7E77E4(v61, v63, v182);

      *(v54 + 14) = v64;
      _os_log_impl(&dword_25C7D2000, v52, v155, "loading Model (%s) to (%s)", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F890110](v55, -1, -1);
      MEMORY[0x25F890110](v54, -1, -1);
    }

    else
    {
      v91 = *(v49 + 8);
      (v91)(v28, v51);
      v173 = v91;
      (v91)(v31, v51);
    }

    v90 = v172;
  }

  else
  {
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v65 = qword_281559838;
    v67 = v177;
    v66 = v178;
    v68 = *(v177 + 16);
    v51 = v179;
    v68(v36, v178, v179);
    sub_25C7E92DC(v176, v173, &qword_27FC16048, qword_25C8309D0);
    v162 = v68;
    v68(v34, v180, v51);
    if (!os_log_type_enabled(v65, v46))
    {
      v92 = *(v67 + 8);
      (v92)(v34, v51);
      sub_25C7E97F4(v173, &qword_27FC16048, qword_25C8309D0);
      v173 = v92;
      (v92)(v36, v51);
      v90 = v172;
      goto LABEL_15;
    }

    v155 = v46;
    v154 = v65;
    v69 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v182[0] = v153;
    *v69 = 136315650;
    v70 = sub_25C82DE8C();
    v72 = v71;
    v73 = *(v67 + 8);
    (v73)(v36, v51);
    v74 = sub_25C7E77E4(v70, v72, v182);

    *(v69 + 4) = v74;
    *(v69 + 12) = 2080;
    v75 = v165;
    sub_25C7E92DC(v173, v165, &qword_27FC16048, qword_25C8309D0);
    v76 = v172;
    result = v174(v75, 1, v172);
    if (result == 1)
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v78 = v167;
    v79 = v164;
    (*(v167 + 32))(v164, v75, v76);
    sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v80 = sub_25C82E4DC();
    v82 = v81;
    (*(v78 + 8))(v79, v76);
    sub_25C7E97F4(v173, &qword_27FC16048, qword_25C8309D0);
    v83 = sub_25C7E77E4(v80, v82, v182);

    *(v69 + 14) = v83;
    *(v69 + 22) = 2080;
    v84 = sub_25C82DE8C();
    v86 = v85;
    v51 = v179;
    v173 = v73;
    (v73)(v34, v179);
    v87 = sub_25C7E77E4(v84, v86, v182);

    *(v69 + 24) = v87;
    v88 = v154;
    _os_log_impl(&dword_25C7D2000, v154, v155, "loading Model (%s from date (%s) to (%s)", v69, 0x20u);
    v89 = v153;
    swift_arrayDestroy();
    MEMORY[0x25F890110](v89, -1, -1);
    MEMORY[0x25F890110](v69, -1, -1);

    v90 = v76;
  }

  v66 = v178;
LABEL_15:
  v93 = v176;
  v94 = v170;
  v95 = [objc_opt_self() defaultManager];
  v181 = 0;
  sub_25C82DE8C();
  v96 = sub_25C82E07C();

  v97 = [v95 fileExistsAtPath:v96 isDirectory:&v181];

  if (v97 && v181 == 1)
  {
    sub_25C82DE8C();
    v98 = sub_25C82E07C();

    v182[0] = 0;
    v99 = v95;
    v100 = [v95 removeItemAtPath:v98 error:v182];

    if (!v100)
    {
      v130 = v182[0];
      sub_25C82DDAC();

      swift_willThrow();
      v107 = v171;
      goto LABEL_41;
    }

    v101 = v182[0];
    v95 = v99;
  }

  sub_25C82DE8C();
  v102 = sub_25C82E07C();

  sub_25C7E92DC(v93, v94, &qword_27FC16048, qword_25C8309D0);
  if (v174(v94, 1, v90) == 1)
  {
    v103 = 0;
  }

  else
  {
    v103 = sub_25C82DF4C();
    (*(v167 + 8))(v94, v90);
  }

  v99 = [objc_opt_self() predicateWithIdentifier:v102 withDate:v103];

  v104 = objc_autoreleasePoolPush();
  v105 = v169;
  v106 = v93;
  v107 = v171;
  sub_25C824058(v168, v99, v106, v66, v180, v171, v182);
  if (v105)
  {
    objc_autoreleasePoolPop(v104);

LABEL_41:
    return sub_25C7E97F4(v107, &qword_27FC16040, &unk_25C830480);
  }

  v170 = v99;
  v180 = v95;
  objc_autoreleasePoolPop(v104);
  v108 = v166;
  sub_25C7E92DC(v107, v166, &qword_27FC16040, &unk_25C830480);
  v109 = v51;
  v110 = *(v177 + 48);
  v111 = v110(v108, 1, v109);
  sub_25C7E97F4(v108, &qword_27FC16040, &unk_25C830480);
  if (v111 != 1)
  {
    v129 = v163;
    sub_25C7E92DC(v107, v163, &qword_27FC16040, &unk_25C830480);
    result = v110(v129, 1, v109);
    if (result != 1)
    {
      sub_25C7E97F4(v107, &qword_27FC16040, &unk_25C830480);

      return (*(v177 + 32))(v161, v129, v109);
    }

    goto LABEL_43;
  }

  v112 = v107;
  v113 = v176;
  v114 = v172;
  v115 = v174(v176, 1, v172);
  v116 = sub_25C82E27C();
  if (v115 == 1)
  {
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v117 = qword_281559838;
    v118 = v158;
    v119 = v179;
    v162(v158, v178, v179);
    if (os_log_type_enabled(v117, v116))
    {
      v178 = v117;
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v182[0] = v121;
      *v120 = 136315138;
      v122 = sub_25C82DE8C();
      v123 = v116;
      v124 = v107;
      v126 = v125;
      (v173)(v118, v119);
      v127 = sub_25C7E77E4(v122, v126, v182);
      v107 = v124;

      *(v120 + 4) = v127;
      v128 = v178;
      _os_log_impl(&dword_25C7D2000, v178, v123, "returnURL for event associated with %s was nil...!", v120, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v121);
      MEMORY[0x25F890110](v121, -1, -1);
      MEMORY[0x25F890110](v120, -1, -1);
    }

    else
    {
      (v173)(v118, v119);
    }

    goto LABEL_40;
  }

  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v131 = qword_281559838;
  v132 = v159;
  v133 = v179;
  v162(v159, v178, v179);
  v134 = v113;
  v135 = v160;
  sub_25C7E92DC(v134, v160, &qword_27FC16048, qword_25C8309D0);
  if (!os_log_type_enabled(v131, v116))
  {
    sub_25C7E97F4(v135, &qword_27FC16048, qword_25C8309D0);
    (v173)(v132, v133);
    v107 = v112;
    goto LABEL_40;
  }

  v178 = v131;
  v136 = swift_slowAlloc();
  v176 = swift_slowAlloc();
  v182[0] = v176;
  *v136 = 136315394;
  v137 = sub_25C82DE8C();
  v138 = v132;
  v140 = v139;
  (v173)(v138, v133);
  v141 = sub_25C7E77E4(v137, v140, v182);

  *(v136 + 4) = v141;
  *(v136 + 12) = 2080;
  v142 = v156;
  sub_25C7E92DC(v135, v156, &qword_27FC16048, qword_25C8309D0);
  result = v174(v142, 1, v114);
  if (result != 1)
  {
    v143 = v167;
    v144 = v157;
    (*(v167 + 32))(v157, v142, v114);
    sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v145 = sub_25C82E4DC();
    v147 = v146;
    (*(v143 + 8))(v144, v114);
    sub_25C7E97F4(v135, &qword_27FC16048, qword_25C8309D0);
    v148 = sub_25C7E77E4(v145, v147, v182);

    *(v136 + 14) = v148;
    v149 = v178;
    _os_log_impl(&dword_25C7D2000, v178, v116, "returnURL for event associated with %s and date %s was nil...!", v136, 0x16u);
    v150 = v176;
    swift_arrayDestroy();
    MEMORY[0x25F890110](v150, -1, -1);
    MEMORY[0x25F890110](v136, -1, -1);

    v107 = v112;
LABEL_40:
    v151 = v180;
    sub_25C7E7DEC();
    swift_allocError();
    *v152 = 15;
    swift_willThrow();

    v99 = v170;
    goto LABEL_41;
  }

LABEL_44:
  __break(1u);
  return result;
}

void sub_25C824058(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v257 = a6;
  v256 = a5;
  v259 = a4;
  v263 = a3;
  v261 = sub_25C82DFBC();
  v258 = *(v261 - 1);
  v10 = MEMORY[0x28223BE20](v261);
  v244 = &v240 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v243 = &v240 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v253 = &v240 - v15;
  MEMORY[0x28223BE20](v14);
  v254 = &v240 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v245 = &v240 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v251 = &v240 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v242 = &v240 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v248 = &v240 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v252 = &v240 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v255 = (&v240 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v240 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v240 - v33;
  v266 = sub_25C82DEAC();
  v260 = *(v266 - 8);
  v35 = MEMORY[0x28223BE20](v266);
  v249 = &v240 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v250 = &v240 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v246 = &v240 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v247 = &v240 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v262 = &v240 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v264 = &v240 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v49 = (&v240 - v48);
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v240 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v240 - v54;
  MEMORY[0x28223BE20](v53);
  v57 = &v240 - v56;
  v58 = [*(a1 + 16) queryDataWithPredicate_];
  if (!v58)
  {
    return;
  }

  v59 = v58;
  sub_25C7E96B8(0, &qword_2815594A0, off_2799B9788);
  v60 = sub_25C82E1DC();

  v61 = v60 >> 62;
  if (v60 >> 62)
  {
    goto LABEL_85;
  }

  v62 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v62)
  {
    while (1)
    {
      v241 = a7;
      if (v62 >= 2)
      {

        v63 = *(v258 + 48);
        v64 = v63(v263, 1, v261);
        v65 = sub_25C82E27C();
        v66 = v266;
        if (v64 == 1)
        {
          if (qword_2815594B8 != -1)
          {
            swift_once();
          }

          v67 = qword_281559838;
          v68 = v260;
          (*(v260 + 16))(v49, v259, v66);
          v69 = os_log_type_enabled(v67, v65);
          a7 = v241;
          if (v69)
          {
            v265 = v67;
            v70 = v66;
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v272 = v72;
            *v71 = 136315138;
            v73 = sub_25C82DE8C();
            v75 = v74;
            (*(v68 + 8))(v49, v70);
            v76 = sub_25C7E77E4(v73, v75, &v272);

            *(v71 + 4) = v76;
            v77 = v65;
            v78 = v265;
            _os_log_impl(&dword_25C7D2000, v265, v77, "Found more than one model at %s", v71, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v72);
            v79 = v72;
            goto LABEL_90;
          }

          (*(v68 + 8))(v49, v66);
          goto LABEL_100;
        }

        if (qword_2815594B8 != -1)
        {
          swift_once();
        }

        v84 = qword_281559838;
        v85 = v260;
        (*(v260 + 16))(v52, v259, v66);
        v86 = v255;
        sub_25C7E92DC(v263, v255, &qword_27FC16048, qword_25C8309D0);
        if (!os_log_type_enabled(v84, v65))
        {
          sub_25C7E97F4(v86, &qword_27FC16048, qword_25C8309D0);
          (*(v85 + 8))(v52, v66);
          goto LABEL_97;
        }

        LODWORD(v263) = v65;
        v265 = v84;
        v87 = swift_slowAlloc();
        v264 = swift_slowAlloc();
        v272 = v264;
        *v87 = 136315394;
        v88 = sub_25C82DE8C();
        v90 = v89;
        (*(v85 + 8))(v52, v66);
        v91 = sub_25C7E77E4(v88, v90, &v272);
        v92 = v261;

        *(v87 + 4) = v91;
        v266 = v87;
        *(v87 + 12) = 2080;
        v93 = v252;
        sub_25C7E92DC(v86, v252, &qword_27FC16048, qword_25C8309D0);
        if (v63(v93, 1, v92) == 1)
        {
          goto LABEL_107;
        }

        v94 = v258;
        v95 = v253;
        (*(v258 + 32))(v253, v93, v92);
        sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v96 = sub_25C82E4DC();
        v98 = v97;
        (*(v94 + 8))(v95, v92);
        sub_25C7E97F4(v255, &qword_27FC16048, qword_25C8309D0);
        v99 = sub_25C7E77E4(v96, v98, &v272);

        v100 = v266;
        *(v266 + 14) = v99;
        v101 = v265;
        _os_log_impl(&dword_25C7D2000, v265, v263, "Found more than one model at %s with date %s", v100, 0x16u);
        v102 = v264;
        swift_arrayDestroy();
        MEMORY[0x25F890110](v102, -1, -1);
        v103 = v100;
LABEL_96:
        MEMORY[0x25F890110](v103, -1, -1);

LABEL_97:
        a7 = v241;
        goto LABEL_100;
      }

      v52 = v260;
      v80 = v260 + 16;
      a7 = *(v260 + 16);
      v81 = v264;
      v57 = v266;
      (a7)(v264, v256, v266);
      sub_25C82DE1C();
      v55 = v81;
      sub_25C82DE3C();

      v82 = v257;
      sub_25C7E97F4(v257, &qword_27FC16040, &unk_25C830480);
      v256 = v80;
      v255 = a7;
      (a7)(v82, v81, v57);
      v32 = v52;
      (*(v52 + 7))(v82, 0, 1, v57);
      v83 = v61 ? sub_25C82E43C() : *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v104 = v261;
      if (!v83)
      {
        break;
      }

      if ((v60 & 0xC000000000000001) != 0)
      {
        goto LABEL_103;
      }

      if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_105;
      }

      v105 = *(v60 + 32);
LABEL_22:
      v106 = v105;

      v107 = [v106 metadata];
      if (!v107)
      {
        v126 = *(v258 + 48);
        v127 = v126(v263, 1, v104);
        v128 = sub_25C82E27C();
        if (v127 == 1)
        {
          v129 = v260;
          if (qword_2815594B8 != -1)
          {
            swift_once();
          }

          v130 = qword_281559838;
          v131 = v249;
          (v255)(v249, v259, v57);
          if (os_log_type_enabled(v130, v128))
          {
            v132 = v130;
            LODWORD(v265) = v128;
            v133 = v132;
            v134 = swift_slowAlloc();
            v135 = v106;
            v136 = swift_slowAlloc();
            v272 = v136;
            *v134 = 136315138;
            v137 = sub_25C82DE8C();
            v138 = v131;
            v140 = v139;
            v141 = *(v129 + 8);
            v141(v138, v266);
            v142 = sub_25C7E77E4(v137, v140, &v272);

            *(v134 + 4) = v142;
            v143 = "Associated event with %s did not have any metadata!";
            goto LABEL_58;
          }

          goto LABEL_68;
        }

        if (qword_2815594B8 != -1)
        {
          swift_once();
        }

        v157 = qword_281559838;
        v158 = v250;
        (v255)(v250, v259, v57);
        v159 = v251;
        sub_25C7E92DC(v263, v251, &qword_27FC16048, qword_25C8309D0);
        if (os_log_type_enabled(v157, v128))
        {
          LODWORD(v265) = v128;
          v253 = v106;
          v263 = v157;
          v160 = swift_slowAlloc();
          v262 = swift_slowAlloc();
          v272 = v262;
          *v160 = 136315394;
          v161 = sub_25C82DE8C();
          v162 = v158;
          v164 = v163;
          v141 = *(v260 + 8);
          v141(v162, v57);
          v165 = sub_25C7E77E4(v161, v164, &v272);
          v166 = v261;

          *(v160 + 4) = v165;
          *(v160 + 12) = 2080;
          v167 = v245;
          sub_25C7E92DC(v159, v245, &qword_27FC16048, qword_25C8309D0);
          if (v126(v167, 1, v166) == 1)
          {
            goto LABEL_108;
          }

          v168 = v258;
          v169 = v244;
          (*(v258 + 32))(v244, v167, v166);
          sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v170 = sub_25C82E4DC();
          v172 = v171;
          (*(v168 + 8))(v169, v166);
          sub_25C7E97F4(v159, &qword_27FC16048, qword_25C8309D0);
          v173 = sub_25C7E77E4(v170, v172, &v272);

          *(v160 + 14) = v173;
          v174 = "Associated event with %s and date %s did not have any metadata!";
LABEL_74:
          v189 = v263;
          _os_log_impl(&dword_25C7D2000, v263, v265, v174, v160, 0x16u);
          v190 = v262;
          swift_arrayDestroy();
          MEMORY[0x25F890110](v190, -1, -1);
          MEMORY[0x25F890110](v160, -1, -1);

          a7 = v241;
          v57 = v266;
          v106 = v253;
          goto LABEL_77;
        }

LABEL_75:
        sub_25C7E97F4(v159, &qword_27FC16048, qword_25C8309D0);
        v141 = *(v260 + 8);
        v141(v158, v57);
        goto LABEL_76;
      }

      v108 = v107;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
      v55 = sub_25C82E1DC();

      if (*(v55 + 2) != 1)
      {

        v144 = *(v258 + 48);
        v145 = v144(v263, 1, v104);
        v146 = sub_25C82E27C();
        if (v145 == 1)
        {
          if (qword_2815594B8 != -1)
          {
            swift_once();
          }

          v147 = qword_281559838;
          v131 = v246;
          (v255)(v246, v259, v57);
          v148 = os_log_type_enabled(v147, v146);
          v129 = v260;
          if (v148)
          {
            v149 = v147;
            LODWORD(v265) = v146;
            v133 = v149;
            v134 = swift_slowAlloc();
            v135 = v106;
            v136 = swift_slowAlloc();
            v272 = v136;
            *v134 = 136315138;
            v150 = sub_25C82DE8C();
            v151 = v131;
            v153 = v152;
            v141 = *(v129 + 8);
            v141(v151, v266);
            v154 = sub_25C7E77E4(v150, v153, &v272);

            *(v134 + 4) = v154;
            v143 = "Associated event with %s had metadata with more than one object!";
LABEL_58:
            _os_log_impl(&dword_25C7D2000, v133, v265, v143, v134, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v136);
            v155 = v136;
            v106 = v135;
            MEMORY[0x25F890110](v155, -1, -1);
            v156 = v134;
            v57 = v266;
            MEMORY[0x25F890110](v156, -1, -1);

LABEL_76:
            a7 = v241;
LABEL_77:
            sub_25C7E7DEC();
            v191 = swift_allocError();
            *v192 = 15;
            swift_willThrow();

            v141(v264, v57);
            goto LABEL_101;
          }

LABEL_68:
          v141 = *(v129 + 8);
          v141(v131, v57);
          goto LABEL_76;
        }

        if (qword_2815594B8 != -1)
        {
          swift_once();
        }

        v175 = qword_281559838;
        v158 = v247;
        (v255)(v247, v259, v57);
        v159 = v248;
        sub_25C7E92DC(v263, v248, &qword_27FC16048, qword_25C8309D0);
        if (os_log_type_enabled(v175, v146))
        {
          LODWORD(v265) = v146;
          v253 = v106;
          v263 = v175;
          v160 = swift_slowAlloc();
          v262 = swift_slowAlloc();
          v272 = v262;
          *v160 = 136315394;
          v176 = sub_25C82DE8C();
          v177 = v158;
          v179 = v178;
          v141 = *(v260 + 8);
          v141(v177, v57);
          v180 = sub_25C7E77E4(v176, v179, &v272);
          v181 = v261;

          *(v160 + 4) = v180;
          *(v160 + 12) = 2080;
          v182 = v242;
          sub_25C7E92DC(v159, v242, &qword_27FC16048, qword_25C8309D0);
          if (v144(v182, 1, v181) == 1)
          {
            goto LABEL_109;
          }

          v183 = v258;
          v184 = v243;
          (*(v258 + 32))(v243, v182, v181);
          sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v185 = sub_25C82E4DC();
          v187 = v186;
          (*(v183 + 8))(v184, v181);
          sub_25C7E97F4(v159, &qword_27FC16048, qword_25C8309D0);
          v188 = sub_25C7E77E4(v185, v187, &v272);

          *(v160 + 14) = v188;
          v174 = "Associated event with %s and date %s had metadata with more than one object!";
          goto LABEL_74;
        }

        goto LABEL_75;
      }

      v253 = v106;
      v60 = *(v55 + 4);

      v34 = sub_25C803374(v60);

      v109 = 0;
      v111 = v34 + 64;
      v110 = *(v34 + 64);
      v258 = v34;
      v112 = 1 << *(v34 + 32);
      if (v112 < 64)
      {
        v113 = ~(-1 << v112);
      }

      else
      {
        v113 = -1;
      }

      v114 = v113 & v110;
      v115 = (v112 + 63) >> 6;
      v261 = (v52 + 8);
      v49 = &qword_27FC16338;
      v61 = &qword_25C830CB8;
      v257 = v34 + 64;
      v254 = v115;
LABEL_29:
      if (v114)
      {
        v116 = v109;
LABEL_34:
        v260 = (v114 - 1) & v114;
        v259 = v116;
        v117 = __clz(__rbit64(v114)) | (v116 << 6);
        v118 = (*(v258 + 48) + 16 * v117);
        v119 = *v118;
        v55 = v118[1];
        sub_25C7E9854(*(v258 + 56) + 32 * v117, &v273);
        v270[0] = v119;
        v270[1] = v55;
        sub_25C801F34(&v273, &v271);
        sub_25C7E92DC(v270, v267, &qword_27FC16338, &qword_25C830CB8);

        sub_25C801F34(&v268, &v269);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16340, &unk_25C830CC0);
        swift_dynamicCast();
        a7 = 0;
        v60 = v274 + 64;
        v120 = *(v274 + 64);
        v263 = v274;
        v121 = 1 << *(v274 + 32);
        if (v121 < 64)
        {
          v122 = ~(-1 << v121);
        }

        else
        {
          v122 = -1;
        }

        v34 = v122 & v120;
        v32 = ((v121 + 63) >> 6);
        while (v34)
        {
LABEL_45:
          v55 = v262;
          (v255)(v262, v264, v266);

          sub_25C82DE3C();
          v49 = sub_25C82DEDC();
          v61 = v124;

          if (v61 >> 60 == 15)
          {
            v57 = v266;
            v52 = v55;
          }

          else
          {
            sub_25C827A50();
            v125 = v265;
            sub_25C82DF1C();
            v57 = v266;
            v265 = v125;
            v52 = v55;
            if (v125)
            {
              v193 = sub_25C82E27C();
              if (qword_2815594B8 != -1)
              {
                swift_once();
              }

              v194 = qword_281559838;
              v195 = os_log_type_enabled(qword_281559838, v193);
              a7 = v241;
              if (v195)
              {
                v196 = v194;
                v197 = swift_slowAlloc();
                v198 = swift_slowAlloc();
                v260 = v49;
                v199 = v198;
                v200 = swift_slowAlloc();
                *&v269 = v200;
                *v197 = 136315394;
                swift_beginAccess();
                v201 = sub_25C82DE8C();
                v203 = sub_25C7E77E4(v201, v202, &v269);

                *(v197 + 4) = v203;
                v57 = v266;
                *(v197 + 12) = 2112;
                v204 = sub_25C82DD9C();
                *(v197 + 14) = v204;
                *v199 = v204;
                _os_log_impl(&dword_25C7D2000, v196, v193, "Could not write the file in model directory to %s, failed with error %@", v197, 0x16u);
                sub_25C7E97F4(v199, &qword_27FC16100, &qword_25C8305B8);
                v205 = v199;
                v49 = v260;
                MEMORY[0x25F890110](v205, -1, -1);
                __swift_destroy_boxed_opaque_existential_0Tm(v200);
                MEMORY[0x25F890110](v200, -1, -1);
                v206 = v197;
                v52 = v262;
                MEMORY[0x25F890110](v206, -1, -1);
              }

              sub_25C7E7DEC();
              v191 = swift_allocError();
              *v207 = 15;
              swift_willThrow();

              sub_25C827EAC(v49, v61);

              sub_25C7E97F4(v270, &qword_27FC16338, &qword_25C830CB8);
              v208 = *v261;
              (*v261)(v264, v57);
              v208(v52, v57);
              goto LABEL_101;
            }

            sub_25C827EAC(v49, v61);
          }

          v34 &= v34 - 1;
          (*v261)(v52, v57);
        }

        while (1)
        {
          v123 = (a7 + 1);
          if (__OFADD__(a7, 1))
          {
            break;
          }

          if (v123 >= v32)
          {
            v49 = &qword_27FC16338;
            v61 = &qword_25C830CB8;
            sub_25C7E97F4(v270, &qword_27FC16338, &qword_25C830CB8);

            v109 = v259;
            v111 = v257;
            v115 = v254;
            v114 = v260;
            goto LABEL_29;
          }

          v34 = *(v60 + 8 * v123);
          ++a7;
          if (v34)
          {
            a7 = v123;
            goto LABEL_45;
          }
        }

        __break(1u);
      }

      else
      {
        while (1)
        {
          v116 = v109 + 1;
          if (__OFADD__(v109, 1))
          {
            break;
          }

          if (v116 >= v115)
          {
            (*v261)(v264, v57);

            return;
          }

          v114 = *(v111 + 8 * v116);
          ++v109;
          if (v114)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_85:
      v62 = sub_25C82E43C();
      if (!v62)
      {
        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_103:
    v105 = MEMORY[0x25F88F6D0](0, v60);
    goto LABEL_22;
  }

LABEL_86:

  v209 = *(v258 + 48);
  v210 = v209(v263, 1, v261);
  v211 = sub_25C82E27C();
  LOBYTE(v104) = v211;
  if (v210 == 1)
  {
    if (qword_2815594B8 != -1)
    {
LABEL_105:
      swift_once();
    }

    v212 = qword_281559838;
    v213 = v260;
    v214 = v266;
    (*(v260 + 16))(v55, v259, v266);
    if (os_log_type_enabled(v212, v104))
    {
      v265 = v212;
      v71 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      v272 = v215;
      *v71 = 136315138;
      v216 = v104;
      v217 = sub_25C82DE8C();
      v219 = v218;
      (*(v213 + 8))(v55, v214);
      v220 = sub_25C7E77E4(v217, v219, &v272);

      *(v71 + 4) = v220;
      v221 = v216;
      v78 = v265;
      _os_log_impl(&dword_25C7D2000, v265, v221, "Unable to find model at %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v215);
      v79 = v215;
LABEL_90:
      MEMORY[0x25F890110](v79, -1, -1);
      MEMORY[0x25F890110](v71, -1, -1);
    }

    else
    {
      (*(v213 + 8))(v55, v214);
    }

    goto LABEL_100;
  }

  LODWORD(v265) = v211;
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v222 = qword_281559838;
  v223 = v260;
  v224 = v266;
  (*(v260 + 16))(v57, v259, v266);
  sub_25C7E92DC(v263, v34, &qword_27FC16048, qword_25C8309D0);
  if (!os_log_type_enabled(v222, v265))
  {
    sub_25C7E97F4(v34, &qword_27FC16048, qword_25C8309D0);
    (*(v223 + 8))(v57, v224);
LABEL_100:
    sub_25C7E7DEC();
    v191 = swift_allocError();
    *v239 = 15;
    swift_willThrow();
LABEL_101:
    *a7 = v191;
    return;
  }

  v241 = a7;
  v263 = v222;
  v225 = swift_slowAlloc();
  v264 = v225;
  v262 = swift_slowAlloc();
  v272 = v262;
  *v225 = 136315394;
  v226 = sub_25C82DE8C();
  v228 = v227;
  (*(v223 + 8))(v57, v224);
  v229 = sub_25C7E77E4(v226, v228, &v272);
  v230 = v264;

  *(v230 + 4) = v229;
  *(v230 + 6) = 2080;
  sub_25C7E92DC(v34, v32, &qword_27FC16048, qword_25C8309D0);
  v231 = v261;
  if (v209(v32, 1, v261) != 1)
  {
    v232 = v258;
    v233 = v254;
    (*(v258 + 32))(v254, v32, v231);
    sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v234 = sub_25C82E4DC();
    v236 = v235;
    (*(v232 + 8))(v233, v231);
    sub_25C7E97F4(v34, &qword_27FC16048, qword_25C8309D0);
    v237 = sub_25C7E77E4(v234, v236, &v272);

    *(v230 + 14) = v237;
    v101 = v263;
    _os_log_impl(&dword_25C7D2000, v263, v265, "Unable to find model at %s with date %s", v230, 0x16u);
    v238 = v262;
    swift_arrayDestroy();
    MEMORY[0x25F890110](v238, -1, -1);
    v103 = v230;
    goto LABEL_96;
  }

  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
}

void sub_25C826030(uint64_t a1, NSObject *a2)
{
  v4 = sub_25C82DFBC();
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25C82DEAC();
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v47 = a1;
  sub_25C82DE8C();
  v11 = sub_25C82E07C();

  v12 = a2;
  v13 = sub_25C82DF4C();
  v14 = [v10 predicateWithIdentifier:v11 withDate:v13];

  if (v14)
  {
    v15 = v48;
    [(objc_class *)v48[3].isa deleteDataWithPredicate:v14];
    [(objc_class *)v15[2].isa deleteDataWithPredicate:v14];
  }

  else
  {
    v17 = v46;
    v16 = v47;
    v48 = v12;
    v49 = v4;
    v18 = v9;
    v19 = v45;
    v20 = v6;
    v21 = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v22 = qword_281559838;
    v23 = v19;
    v24 = *(v19 + 16);
    v25 = v18;
    v24(v18, v16, v7);
    v26 = v49;
    (*(v17 + 16))(v20, v48, v49);
    if (os_log_type_enabled(v22, v21))
    {
      v27 = v21;
      v48 = v22;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      LODWORD(v47) = v27;
      v30 = v29;
      v50 = v29;
      *v28 = 136315394;
      sub_25C826508(&qword_27FC16098, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v31 = sub_25C82E4DC();
      v32 = v23;
      v33 = v20;
      v34 = v31;
      v36 = v35;
      (*(v32 + 8))(v25, v7);
      v37 = sub_25C7E77E4(v34, v36, &v50);

      *(v28 + 4) = v37;
      *(v28 + 12) = 2080;
      sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v38 = sub_25C82E4DC();
      v40 = v39;
      (*(v17 + 8))(v33, v26);
      v41 = sub_25C7E77E4(v38, v40, &v50);

      *(v28 + 14) = v41;
      v42 = v48;
      _os_log_impl(&dword_25C7D2000, v48, v47, "Unable to construct predicate to delete model. Provided parameters: %s, %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F890110](v30, -1, -1);
      MEMORY[0x25F890110](v28, -1, -1);
    }

    else
    {
      (*(v17 + 8))(v20, v26);
      (*(v23 + 8))(v18, v7);
    }

    sub_25C7E7DEC();
    swift_allocError();
    *v43 = 14;
    swift_willThrow();
  }
}

uint64_t sub_25C826508(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25C826550(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25C82E4CC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
        v6 = sub_25C82E1FC();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25C8268D4(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25C826694(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25C826694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v8 = MEMORY[0x28223BE20](v35);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_25C7E92DC(v22, v16, &qword_27FC16080, &qword_25C830490);
      sub_25C7E92DC(v19, v12, &qword_27FC16080, &qword_25C830490);
      v23 = sub_25C82DF5C();
      sub_25C7E97F4(v12, &qword_27FC16080, &qword_25C830490);
      result = sub_25C7E97F4(v16, &qword_27FC16080, &qword_25C830490);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_25C8276BC(v22, v34);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_25C8276BC(v24, v19);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25C8268D4(unint64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v5;
  v101 = a1;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v9 = *(v114 - 8);
  v10 = MEMORY[0x28223BE20](v114);
  v104 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v113 = &v97 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v116 = &v97 - v15;
  result = MEMORY[0x28223BE20](v14);
  v115 = &v97 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_94:
    a4 = *v101;
    if (!*v101)
    {
      goto LABEL_134;
    }

    v4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_128:
      result = sub_25C807028(v4);
    }

    v117 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      v93 = v9;
      while (*a3)
      {
        v94 = *(result + 16 * v4);
        v95 = result;
        v9 = *(result + 16 * (v4 - 1) + 40);
        sub_25C8271B8(*a3 + *(v93 + 72) * v94, *a3 + *(v93 + 72) * *(result + 16 * (v4 - 1) + 32), *a3 + *(v93 + 72) * v9, a4);
        if (v6)
        {
        }

        if (v9 < v94)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_25C807028(v95);
        }

        if (v4 - 2 >= *(v95 + 2))
        {
          goto LABEL_122;
        }

        v96 = &v95[16 * v4];
        *v96 = v94;
        *(v96 + 1) = v9;
        v117 = v95;
        sub_25C806F9C(v4 - 1);
        result = v117;
        v4 = *(v117 + 16);
        if (v4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v100 = a4;
  v102 = a3;
  v98 = v9;
  while (1)
  {
    v21 = v19 + 1;
    v105 = v20;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v22 = v19;
      v23 = *a3;
      v111 = v23;
      v24 = *(v9 + 72);
      v25 = v23 + v24 * v21;
      v26 = v115;
      sub_25C7E92DC(v25, v115, &qword_27FC16080, &qword_25C830490);
      v27 = v23 + v24 * v22;
      v28 = v116;
      sub_25C7E92DC(v27, v116, &qword_27FC16080, &qword_25C830490);
      LODWORD(v110) = sub_25C82DF5C();
      sub_25C7E97F4(v28, &qword_27FC16080, &qword_25C830490);
      result = sub_25C7E97F4(v26, &qword_27FC16080, &qword_25C830490);
      v99 = v22;
      v4 = v22 + 2;
      v112 = v24;
      v29 = v111 + v24 * (v22 + 2);
      while (v18 != v4)
      {
        v30 = v115;
        v111 = v6;
        sub_25C7E92DC(v29, v115, &qword_27FC16080, &qword_25C830490);
        v31 = v116;
        sub_25C7E92DC(v25, v116, &qword_27FC16080, &qword_25C830490);
        v32 = sub_25C82DF5C() & 1;
        sub_25C7E97F4(v31, &qword_27FC16080, &qword_25C830490);
        v6 = v111;
        result = sub_25C7E97F4(v30, &qword_27FC16080, &qword_25C830490);
        ++v4;
        v29 += v112;
        v25 += v112;
        if ((v110 & 1) != v32)
        {
          v18 = v4 - 1;
          break;
        }
      }

      v19 = v99;
      a4 = v100;
      a3 = v102;
      v9 = v98;
      if (v110)
      {
        if (v18 < v99)
        {
          goto LABEL_125;
        }

        if (v99 < v18)
        {
          v110 = v18;
          v111 = v6;
          v4 = v112 * (v18 - 1);
          v33 = v18 * v112;
          v34 = v18;
          v35 = v99;
          v36 = v99 * v112;
          do
          {
            if (v35 != --v34)
            {
              v37 = *v102;
              if (!*v102)
              {
                goto LABEL_131;
              }

              sub_25C8276BC(v37 + v36, v104);
              if (v36 < v4 || v37 + v36 >= (v37 + v33))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_25C8276BC(v104, v37 + v4);
            }

            ++v35;
            v4 -= v112;
            v33 -= v112;
            v36 += v112;
          }

          while (v35 < v34);
          v18 = v110;
          v6 = v111;
          a3 = v102;
          v9 = v98;
          v19 = v99;
          a4 = v100;
        }
      }
    }

    v38 = a3[1];
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v19))
      {
        goto LABEL_124;
      }

      if (v18 - v19 < a4)
      {
        if (__OFADD__(v19, a4))
        {
          goto LABEL_126;
        }

        if (v19 + a4 < v38)
        {
          v38 = v19 + a4;
        }

        if (v38 < v19)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v18 != v38)
        {
          break;
        }
      }
    }

LABEL_41:
    if (v18 < v19)
    {
      goto LABEL_123;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = v105;
    }

    else
    {
      result = sub_25C7E6F4C(0, *(v105 + 2) + 1, 1, v105);
      v20 = result;
    }

    v4 = *(v20 + 2);
    v49 = *(v20 + 3);
    a4 = v4 + 1;
    if (v4 >= v49 >> 1)
    {
      result = sub_25C7E6F4C((v49 > 1), v4 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = a4;
    v50 = &v20[16 * v4];
    *(v50 + 4) = v19;
    *(v50 + 5) = v18;
    v106 = v18;
    if (!*v101)
    {
      goto LABEL_133;
    }

    if (v4)
    {
      v51 = *v101;
      while (1)
      {
        v52 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v53 = *(v20 + 4);
          v54 = *(v20 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_62:
          if (v56)
          {
            goto LABEL_112;
          }

          v69 = &v20[16 * a4];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_115;
          }

          v75 = &v20[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_119;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = a4 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v79 = &v20[16 * a4];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_76:
        if (v74)
        {
          goto LABEL_114;
        }

        v82 = &v20[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_117;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_83:
        v4 = v52 - 1;
        if (v52 - 1 >= a4)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v90 = v20;
        a4 = *&v20[16 * v4 + 32];
        v91 = *&v20[16 * v52 + 40];
        sub_25C8271B8(*a3 + *(v9 + 72) * a4, *a3 + *(v9 + 72) * *&v20[16 * v52 + 32], *a3 + *(v9 + 72) * v91, v51);
        if (v6)
        {
        }

        if (v91 < a4)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_25C807028(v90);
        }

        if (v4 >= *(v90 + 2))
        {
          goto LABEL_109;
        }

        v92 = &v90[16 * v4];
        *(v92 + 4) = a4;
        *(v92 + 5) = v91;
        v117 = v90;
        v4 = &v117;
        result = sub_25C806F9C(v52);
        v20 = v117;
        a4 = *(v117 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v20[16 * a4 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_110;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_111;
      }

      v64 = &v20[16 * a4];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_113;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_116;
      }

      if (v68 >= v60)
      {
        v86 = &v20[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_120;
        }

        if (v55 < v89)
        {
          v52 = a4 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v106;
    a4 = v100;
    if (v106 >= v18)
    {
      goto LABEL_94;
    }
  }

  v106 = v38;
  v39 = *a3;
  v40 = *(v9 + 72);
  v41 = *a3 + v40 * (v18 - 1);
  v42 = -v40;
  v99 = v19;
  v43 = v19 - v18;
  v111 = v6;
  v112 = v39;
  v103 = v40;
  a4 = v39 + v18 * v40;
LABEL_33:
  v109 = v41;
  v110 = v18;
  v107 = a4;
  v108 = v43;
  v44 = v41;
  while (1)
  {
    v4 = v115;
    sub_25C7E92DC(a4, v115, &qword_27FC16080, &qword_25C830490);
    v45 = v116;
    sub_25C7E92DC(v44, v116, &qword_27FC16080, &qword_25C830490);
    v46 = sub_25C82DF5C();
    sub_25C7E97F4(v45, &qword_27FC16080, &qword_25C830490);
    result = sub_25C7E97F4(v4, &qword_27FC16080, &qword_25C830490);
    if ((v46 & 1) == 0)
    {
LABEL_32:
      v18 = v110 + 1;
      v41 = v109 + v103;
      v43 = v108 - 1;
      a4 = v107 + v103;
      if (v110 + 1 != v106)
      {
        goto LABEL_33;
      }

      v6 = v111;
      a3 = v102;
      v9 = v98;
      v19 = v99;
      v18 = v106;
      goto LABEL_41;
    }

    if (!v112)
    {
      break;
    }

    v47 = v113;
    sub_25C8276BC(a4, v113);
    swift_arrayInitWithTakeFrontToBack();
    sub_25C8276BC(v47, v44);
    v44 += v42;
    a4 += v42;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_25C8271B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v8 = MEMORY[0x28223BE20](v43);
  v45 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v44 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_58;
          }

          v29 = a3;
          v37 = v23;
          a3 += v24;
          v30 = v25 + v24;
          v31 = v44;
          sub_25C7E92DC(v30, v44, &qword_27FC16080, &qword_25C830490);
          v32 = v27;
          v33 = v45;
          sub_25C7E92DC(v32, v45, &qword_27FC16080, &qword_25C830490);
          v34 = sub_25C82DF5C();
          sub_25C7E97F4(v33, &qword_27FC16080, &qword_25C830490);
          sub_25C7E97F4(v31, &qword_27FC16080, &qword_25C830490);
          if (v34)
          {
            break;
          }

          v23 = v30;
          if (v29 < v25 || a3 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v42;
            a1 = v39;
          }

          else
          {
            v27 = v42;
            a1 = v39;
            if (v29 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_57;
          }
        }

        if (v29 < v41 || a3 >= v41)
        {
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (v29 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_57:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a3;
    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = v13;
        v20 = v44;
        sub_25C7E92DC(a2, v44, &qword_27FC16080, &qword_25C830490);
        v21 = v45;
        sub_25C7E92DC(a4, v45, &qword_27FC16080, &qword_25C830490);
        v22 = sub_25C82DF5C();
        sub_25C7E97F4(v21, &qword_27FC16080, &qword_25C830490);
        sub_25C7E97F4(v20, &qword_27FC16080, &qword_25C830490);
        v13 = v19;
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v19;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v19;
          a4 += v19;
        }

        a1 += v19;
        v48 = a1;
      }

      while (a4 < v42 && a2 < v41);
    }
  }

LABEL_58:
  sub_25C807120(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_25C8276BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C82772C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16378, &qword_25C830CF0);
    v3 = sub_25C82E38C();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_25C82E0AC();
      sub_25C82E57C();
      v27 = v7;
      sub_25C82E10C();
      v8 = sub_25C82E59C();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_25C82E0AC();
        v18 = v17;
        if (v16 == sub_25C82E0AC() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_25C82E4EC();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

id sub_25C827920(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_25C82DEEC();
  v8[0] = 0;
  v4 = [v2 initForReadingFromData:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_25C82DDAC();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_25C8279E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16330, &qword_25C830CB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_25C827A50()
{
  v32[1] = *MEMORY[0x277D85DE8];
  v0 = sub_25C82DEAC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - v5;
  sub_25C82DE6C();
  v7 = [objc_opt_self() defaultManager];
  sub_25C82DE8C();
  v8 = sub_25C82E07C();

  v9 = [v7 fileExistsAtPath_];

  if (v9)
  {
    (*(v1 + 8))(v6, v0);
LABEL_5:

    return;
  }

  sub_25C82DE8C();
  v10 = sub_25C82E07C();

  v32[0] = 0;
  v11 = [v7 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:v32];

  if (v11)
  {
    v12 = *(v1 + 8);
    v13 = v32[0];
    v12(v6, v0);
    goto LABEL_5;
  }

  v14 = v32[0];
  v15 = sub_25C82DDAC();

  swift_willThrow();
  v16 = sub_25C82E27C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v17 = qword_281559838;
  (*(v1 + 16))(v4, v6, v0);
  if (os_log_type_enabled(v17, v16))
  {
    v31 = v17;
    v18 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32[0] = v30;
    *v18 = 136315394;
    sub_25C826508(&qword_27FC16098, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v19 = sub_25C82E4DC();
    v21 = v20;
    v29 = *(v1 + 8);
    v29(v4, v0);
    v22 = sub_25C7E77E4(v19, v21, v32);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    swift_getErrorValue();
    v23 = sub_25C82E52C();
    v25 = sub_25C7E77E4(v23, v24, v32);

    *(v18 + 14) = v25;
    v26 = v31;
    _os_log_impl(&dword_25C7D2000, v31, v16, "could not create a directory %s. %s", v18, 0x16u);
    v27 = v30;
    swift_arrayDestroy();
    MEMORY[0x25F890110](v27, -1, -1);
    MEMORY[0x25F890110](v18, -1, -1);

    v29(v6, v0);
  }

  else
  {

    v28 = *(v1 + 8);
    v28(v4, v0);
    v28(v6, v0);
  }
}

uint64_t sub_25C827EAC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25C808E3C(result, a2);
  }

  return result;
}

unint64_t sub_25C827EC0()
{
  result = qword_27FC16368;
  if (!qword_27FC16368)
  {
    sub_25C7E96B8(255, &qword_27FC16360, 0x277CBFF58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC16368);
  }

  return result;
}

uint64_t sub_25C827F28(uint64_t a1)
{
  type metadata accessor for URLResourceKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25C827F84()
{
  result = qword_27FC16370;
  if (!qword_27FC16370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC16370);
  }

  return result;
}

void sub_25C827FD8(void *a1, void *a2)
{
  v87 = a1;
  v3 = sub_25C82DFBC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25C82DFEC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  MEMORY[0x28223BE20](v11);
  v83 = &v74 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16380, &qword_25C830D00);
  MEMORY[0x28223BE20](v13 - 8);
  v85 = &v74 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16388, &qword_25C830D08);
  MEMORY[0x28223BE20](v15 - 8);
  v84 = &v74 - v16;
  v17 = sub_25C82DD6C();
  v81 = *(v17 - 8);
  v82 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v20) = sub_25C82E25C();
  v88 = a2;
  if (a2)
  {
    v78 = v6;
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v21 = qword_281559838;
    v22 = os_log_type_enabled(qword_281559838, v20);
    v80 = v4;
    v86 = v7;
    v79 = v8;
    v77 = v10;
    if (v22)
    {
      v75 = v21;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v88;
      v76 = v3;
      v26 = v24;
      v27 = swift_slowAlloc();
      aBlock = v27;
      *v23 = 136315394;
      v28 = [v87 name];
      v29 = sub_25C82E0AC();
      v31 = v30;

      v32 = sub_25C7E77E4(v29, v31, &aBlock);

      *(v23 + 4) = v32;
      *(v23 + 12) = 2112;
      *(v23 + 14) = v25;
      *v26 = v25;
      v88 = v25;
      v33 = v75;
      _os_log_impl(&dword_25C7D2000, v75, v20, "Pruning storage %s} with policy: %@", v23, 0x16u);
      sub_25C7E97F4(v26, &qword_27FC16100, &qword_25C8305B8);
      v34 = v26;
      v3 = v76;
      v4 = v80;
      MEMORY[0x25F890110](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x25F890110](v27, -1, -1);
      MEMORY[0x25F890110](v23, -1, -1);
    }

    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    v20 = (v35 + 16);
    v36 = swift_allocBox();
    v38 = v37;
    (*(v4 + 56))(v37, 1, 1, v3);
    if (![v88 maximumNumberOfDays])
    {
LABEL_9:
      v44 = swift_allocObject();
      *(v44 + 16) = MEMORY[0x277D84F90];
      v45 = (v44 + 16);
      v46 = objc_autoreleasePoolPush();
      v47 = swift_allocObject();
      v47[2] = v36;
      v47[3] = v44;
      v47[4] = v35;
      v93 = sub_25C8290F8;
      v94 = v47;
      aBlock = MEMORY[0x277D85DD0];
      v90 = 1107296256;
      v91 = sub_25C828AA8;
      v92 = &block_descriptor;
      v48 = _Block_copy(&aBlock);

      [v87 deleteMultipleData_];
      _Block_release(v48);
      objc_autoreleasePoolPop(v46);
      swift_beginAccess();
      v49 = *(v35 + 16);
      v50 = 0x2799B9000uLL;
      if ([v88 maximumNumberOfEvents] >= v49)
      {

LABEL_26:

        return;
      }

      v86 = v36;
      v51 = *v20;
      v52 = [v88 maximumNumberOfEvents];
      v53 = __OFSUB__(v51, v52);
      v54 = v51 - v52;
      if (v53)
      {
        __break(1u);
      }

      else
      {
        swift_beginAccess();
        sub_25C802040(v45);
        swift_endAccess();
        v45 = sub_25C828FF4(v54, *v45);
        v50 = v55;
        v54 = v56;
        v49 = v57;
        if ((v57 & 1) == 0)
        {

LABEL_13:
          sub_25C82911C(v45, v50, v54, v49);
          v59 = v58;
          goto LABEL_24;
        }

        sub_25C82E4FC();
        swift_unknownObjectRetain_n();

        v69 = swift_dynamicCastClass();
        if (!v69)
        {
          swift_unknownObjectRelease();
          v69 = MEMORY[0x277D84F90];
        }

        v70 = *(v69 + 16);

        if (!__OFSUB__(v49 >> 1, v54))
        {
          if (v70 == (v49 >> 1) - v54)
          {
            v59 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (v59)
            {
LABEL_25:
              v71 = objc_autoreleasePoolPush();
              v72 = swift_allocObject();
              *(v72 + 16) = v59;
              v93 = sub_25C8292BC;
              v94 = v72;
              aBlock = MEMORY[0x277D85DD0];
              v90 = 1107296256;
              v91 = sub_25C828AA8;
              v92 = &block_descriptor_12;
              v73 = _Block_copy(&aBlock);

              [v87 deleteMultipleData_];
              _Block_release(v73);
              objc_autoreleasePoolPop(v71);

              goto LABEL_26;
            }

            v59 = MEMORY[0x277D84F90];
LABEL_24:
            swift_unknownObjectRelease();
            goto LABEL_25;
          }

          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_32:
      swift_unknownObjectRelease();
      goto LABEL_13;
    }

    v76 = v35;
    v39 = v79;
    (*(v79 + 56))(v84, 1, 1, v86);
    v40 = sub_25C82DFFC();
    (*(*(v40 - 8) + 56))(v85, 1, 1, v40);
    sub_25C82DD5C();
    if (!__OFSUB__(0, [v88 maximumNumberOfDays]))
    {
      sub_25C82DD4C();
      v41 = v77;
      sub_25C82DFDC();
      v42 = v78;
      sub_25C82DFAC();
      v43 = v83;
      sub_25C82DFCC();
      (*(v80 + 8))(v42, v3);
      (*(v39 + 8))(v41, v86);
      (*(v81 + 8))(v19, v82);
      sub_25C829088(v43, v38);
      v35 = v76;
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (qword_2815594B8 == -1)
  {
    goto LABEL_15;
  }

  swift_once();
LABEL_15:
  v60 = qword_281559838;
  if (os_log_type_enabled(qword_281559838, v20))
  {
    v61 = v60;
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock = v63;
    *v62 = 136315138;
    v64 = [v87 name];
    v65 = sub_25C82E0AC();
    v67 = v66;

    v68 = sub_25C7E77E4(v65, v67, &aBlock);

    *(v62 + 4) = v68;
    _os_log_impl(&dword_25C7D2000, v61, v20, "Not pruning storage %s because policy was nil.", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v63);
    MEMORY[0x25F890110](v63, -1, -1);
    MEMORY[0x25F890110](v62, -1, -1);
  }
}

uint64_t sub_25C828AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25C82DFBC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_25C82DF8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
  v9 = sub_25C82E1DC();

  v10 = v8(v7, v9);

  (*(v5 + 8))(v7, v4);
  return v10 & 1;
}

BOOL sub_25C828BE4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_25C82DFBC();
    ++v2;
    sub_25C8292C4();
  }

  while ((sub_25C82E06C() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_25C828CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  v33 = a1;
  v5 = sub_25C82DFBC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = swift_projectBox();
  swift_beginAccess();
  sub_25C81C294(v14, v13);
  v15 = *(v6 + 48);
  v16 = v15(v13, 1, v5);
  v17 = v33;
  sub_25C7E97F4(v13, &qword_27FC16048, qword_25C8309D0);
  if (v16 == 1)
  {
LABEL_4:
    v20 = v30;
    (*(v6 + 16))(v30, v17, v5);
    v21 = v31;
    swift_beginAccess();
    v22 = *(v21 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + 16) = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_25C7E6D74(0, v22[2] + 1, 1, v22);
      *(v21 + 16) = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_25C7E6D74((v24 > 1), v25 + 1, 1, v22);
    }

    v22[2] = v25 + 1;
    (*(v6 + 32))(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v25, v20, v5);
    *(v21 + 16) = v22;
    v26 = v32;
    result = swift_beginAccess();
    v27 = *(v26 + 16);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (!v28)
    {
      result = 0;
      *(v26 + 16) = v29;
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  swift_beginAccess();
  sub_25C81C294(v14, v11);
  result = v15(v11, 1, v5);
  if (result != 1)
  {
    v19 = sub_25C82DF9C();
    (*(v6 + 8))(v11, v5);
    if (v19 != 1)
    {
      return 1;
    }

    goto LABEL_4;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_25C828FF4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25C82DFBC();
    return a2;
  }

  return result;
}

uint64_t sub_25C829088(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25C82911C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160B8, &qword_25C830570);
      v7 = *(sub_25C82DFBC() - 8);
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
        sub_25C82DFBC();
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

unint64_t sub_25C8292C4()
{
  result = qword_27FC162D0;
  if (!qword_27FC162D0)
  {
    sub_25C82DFBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC162D0);
  }

  return result;
}

void sub_25C829324(uint64_t a1, uint64_t a2)
{
  v4 = sub_25C82950C(a1, a2);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = v4;
    v2 = sub_25C82E25C();
    if (qword_2815594B8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v6 = qword_281559838;
  if (os_log_type_enabled(qword_281559838, v2))
  {
    v7 = v6;
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = v3;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v5;
    _os_log_impl(&dword_25C7D2000, v7, v2, "Setting currentExecutionCount from %ld to %ld.", v8, 0x16u);
    MEMORY[0x25F890110](v8, -1, -1);
  }

  MEMORY[0x25F88F460](45, 0xE100000000000000);

  MEMORY[0x25F88F460](0xD00000000000002CLL, 0x800000025C831F10);

  v9 = [objc_opt_self() standardUserDefaults];
  v10 = sub_25C82E22C();
  v11 = sub_25C82E07C();

  [v9 setValue:v10 forKey:v11];
}

uint64_t sub_25C82950C(uint64_t a1, uint64_t a2)
{
  *&v13 = a1;
  *(&v13 + 1) = a2;

  MEMORY[0x25F88F460](45, 0xE100000000000000);

  MEMORY[0x25F88F460](0xD00000000000002CLL, 0x800000025C831F10);

  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_25C82E07C();
  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_25C82E31C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  sub_25C7E92DC(&v13, &v11, &qword_27FC16290, &qword_25C830908);
  v5 = *(&v12 + 1);
  sub_25C7E97F4(&v11, &qword_27FC16290, &qword_25C830908);
  if (!v5)
  {
    v6 = MEMORY[0x277D83B88];
    sub_25C7E97F4(&v13, &qword_27FC16290, &qword_25C830908);
    *&v13 = 0;
    *(&v14 + 1) = v6;
  }

  result = sub_25C7E92DC(&v13, &v9, &qword_27FC16290, &qword_25C830908);
  if (v10)
  {
    sub_25C7E97F4(&v13, &qword_27FC16290, &qword_25C830908);

    sub_25C801F34(&v9, &v11);
    swift_dynamicCast();
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25C8296F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v24 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  sub_25C7E92DC(a1, &v24 - v14, &qword_27FC16048, qword_25C8309D0);
  sub_25C7E92DC(v15, v13, &qword_27FC16048, qword_25C8309D0);
  v16 = sub_25C82DFBC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v18(v13, 1, v16);
  sub_25C7E97F4(v13, &qword_27FC16048, qword_25C8309D0);
  if (v19 == 1)
  {
    sub_25C82DF2C();
    sub_25C7E97F4(v15, &qword_27FC16048, qword_25C8309D0);
    (*(v17 + 56))(v10, 0, 1, v16);
    sub_25C80E758(v10, v15);
  }

  sub_25C7E92DC(v15, v7, &qword_27FC16048, qword_25C8309D0);
  result = v18(v7, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_25C82DF3C();
    (*(v17 + 8))(v7, v16);
    v26 = v24;
    v27 = v25;

    MEMORY[0x25F88F460](45, 0xE100000000000000);

    MEMORY[0x25F88F460](0xD000000000000022, 0x800000025C8343E0);

    v21 = [objc_opt_self() standardUserDefaults];
    v22 = sub_25C82E21C();
    v23 = sub_25C82E07C();

    [v21 setValue:v22 forKey:v23];

    return sub_25C7E97F4(v15, &qword_27FC16048, qword_25C8309D0);
  }

  return result;
}

uint64_t sub_25C829A28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25C82DFBC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([a1 hasStreamFilter] & 1) == 0)
  {
    v14 = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v15 = qword_281559838;
    v16 = 31;
    sub_25C82E00C(v14, &dword_25C7D2000, v15, "model does not have stream set.", 31, 2, MEMORY[0x277D84F90]);
    goto LABEL_13;
  }

  v8 = [a1 getDatesOfEventsForStream];
  if (!v8)
  {
    v17 = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v15 = qword_281559838;
    v16 = 32;
    sub_25C82E00C(v17, &dword_25C7D2000, v15, "Failed to fetch dates from model", 32, 2, MEMORY[0x277D84F90]);
LABEL_13:

    sub_25C7E7DEC();
    swift_allocError();
    *v18 = v16;
    return swift_willThrow();
  }

  v9 = v8;
  v10 = sub_25C82E1DC();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_25C7E916C(v10);
  }

  v11 = v10[2];
  v12 = v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v21[0] = v12;
  v21[1] = v11;
  sub_25C82C298(v21);
  if (v10[2])
  {
    (*(v5 + 16))(v7, v12, v4);

    (*(v5 + 32))(a2, v7, v4);
    return (*(v5 + 56))(a2, 0, 1, v4);
  }

  else
  {

    v19 = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v20 = qword_281559838;
    sub_25C82E00C(v19, &dword_25C7D2000, v20, "Failed to get first date for setting newEvaluationDate", 54, 2, MEMORY[0x277D84F90]);

    return (*(v5 + 56))(a2, 1, 1, v4);
  }
}

uint64_t sub_25C829D9C(void *a1, uint64_t a2)
{
  v189 = a2;
  v3 = sub_25C82DFBC();
  v208 = *(v3 - 8);
  v209 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  MEMORY[0x28223BE20](v6 - 8);
  v174 = (v161 - v7);
  v211 = sub_25C82DEAC();
  v207 = *(v211 - 8);
  v8 = MEMORY[0x28223BE20](v211);
  v192 = v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v197 = (v161 - v11);
  MEMORY[0x28223BE20](v10);
  v188 = v161 - v12;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v190 = *(v195 - 1);
  v13 = MEMORY[0x28223BE20](v195);
  v205 = v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v161 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v161 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v161 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v161 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v161 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = (v161 - v31);
  MEMORY[0x28223BE20](v30);
  v34 = v161 - v33;
  v213 = MEMORY[0x277D84F90];
  v35 = a1[3];
  v194 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  v36 = v210;
  result = sub_25C81EF2C();
  if (v36)
  {
    return result;
  }

  v187 = v34;
  v191 = v32;
  v172 = v29;
  v166 = v26;
  v173 = v23;
  v163 = v20;
  v185 = v17;
  v186 = *(result + 16);
  if (!v186)
  {

    return MEMORY[0x277D84F90];
  }

  v196 = 0;
  v38 = 0;
  v39 = v195;
  v40 = v187;
  v183 = &v187[v195[12]];
  v182 = &v187[v195[24]];
  v181 = &v187[v195[28]];
  v41 = v190;
  v180 = result + ((*(v41 + 80) + 32) & ~*(v41 + 80));
  v170 = v172 + 8;
  v165 = v166 + 8;
  v171 = v173 + 8;
  v179 = v195[16];
  v161[1] = v163 + 8;
  v204 = (v208 + 32);
  v178 = v195[20];
  v177 = (v207 + 32);
  v42 = (v207 + 8);
  v169 = (v208 + 56);
  v175 = (v208 + 8);
  *(&v43 + 1) = 2;
  v176 = xmmword_25C830640;
  *&v43 = 136315394;
  v167 = v43;
  *&v43 = 136315138;
  v162 = v43;
  v164 = MEMORY[0x277D84F90];
  v44 = v191;
  v45 = v209;
  v168 = v5;
  v184 = result;
  v193 = (v207 + 8);
  while (v38 < *(result + 16))
  {
    sub_25C7E92DC(v180 + *(v41 + 72) * v38, v40, &qword_27FC16080, &qword_25C830490);
    v206 = *(v40 + v179);
    v51 = v206;
    v210 = *(v40 + v178);
    v208 = v38;
    v52 = *v182;
    v201 = *(v182 + 1);
    v202 = v52;
    v53 = *v181;
    v199 = *(v181 + 1);
    v200 = v53;
    v54 = v39[12];
    v198 = v39[16];
    v55 = v45;
    v56 = v39[20];
    v57 = v44;
    v58 = v42;
    v59 = (v57 + v39[24]);
    v60 = v39;
    v61 = (v57 + v39[28]);
    v203 = *v204;
    v203(v57, v40, v55);
    v62 = *v177;
    v207 = v54;
    v62(v57 + v54, v183, v211);
    *(v57 + v198) = v51;
    *(v57 + v56) = v210;
    v63 = v201;
    *v59 = v202;
    v59[1] = v63;
    v64 = v199;
    *v61 = v200;
    v61[1] = v64;
    v65 = v188;
    sub_25C82DE5C();
    sub_25C82DE8C();
    v210 = *v58;
    v210(v65, v211);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16150, &qword_25C830670);
    v66 = swift_allocObject();
    *(v66 + 16) = v176;
    *(v66 + 56) = MEMORY[0x277D83B88];
    *(v66 + 64) = MEMORY[0x277D83C10];
    *(v66 + 32) = v208;
    sub_25C82E0CC();
    v68 = v67;

    v69 = v197;
    sub_25C82DDFC();
    if (!v206)
    {
      v45 = v209;

      v76 = sub_25C82E27C();
      v74 = v205;
      if (qword_2815594B8 != -1)
      {
        swift_once();
      }

      v77 = qword_281559838;
      sub_25C82E00C(v76, &dword_25C7D2000, v77, "Loaded model metadata did not contain modelInformation...pruning", 64, 2, MEMORY[0x277D84F90]);

      sub_25C7E7DEC();
      v78 = swift_allocError();
      *v79 = 20;
      v202 = v78;
      swift_willThrow();
      v201 = 0;
      v75 = v185;
      v44 = v191;
      goto LABEL_35;
    }

    v206 = v68;
    __swift_project_boxed_opaque_existential_1(v194, v194[3]);
    v70 = v172;
    sub_25C7E92DC(v57, v172, &qword_27FC16080, &qword_25C830490);
    v71 = v60[12];

    v72 = v174;
    v45 = v209;
    v203(v174, v70, v209);
    (*v169)(v72, 0, 1, v45);
    v73 = v196;
    sub_25C822E90((v57 + v207), v72, v69, v192);
    v74 = v205;
    if (!v73)
    {
      v196 = 0;
      sub_25C7E97F4(v72, &qword_27FC16048, qword_25C8309D0);
      v80 = v70 + v71;
      v81 = v210;
      v82 = v211;
      v83 = v193;
      v210(v80, v211);
      v84 = v166;
      sub_25C7E92DC(v57, v166, &qword_27FC16080, &qword_25C830490);
      v85 = v60[12];

      v86 = (v84 + v60[28]);
      v87 = v86[1];
      v88 = v57;
      if (v87)
      {
        v89 = *v86;
        v81(v84 + v85, v82);
        v202 = *v175;
        v202(v84, v209);
        v90 = sub_25C82E25C();
        v42 = v83;
        if (qword_2815594B8 != -1)
        {
          swift_once();
        }

        v91 = qword_281559838;
        v92 = v89;
        if (os_log_type_enabled(qword_281559838, v90))
        {
          v93 = v91;
          v94 = v88;
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v212 = v96;
          *v95 = v162;
          *(v95 + 4) = sub_25C7E77E4(v92, v87, &v212);
          _os_log_impl(&dword_25C7D2000, v93, v90, "Setting candidate model with coreduet stream %s", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v96);
          MEMORY[0x25F890110](v96, -1, -1);
          v88 = v94;
          MEMORY[0x25F890110](v95, -1, -1);
        }

        v97 = v173;
        sub_25C7E92DC(v88, v173, &qword_27FC16080, &qword_25C830490);
        v98 = v195;
        v201 = v195[12];

        v99 = *(v97 + v98[20]);

        v100 = objc_allocWithZone(ODCurareCandidateModel);
        v101 = sub_25C82DE2C();
        v102 = sub_25C82E07C();

        v103 = [v100 initWithModelURL:v101 withCoreDuetStreamIdentifier:v102 andMetadata:v99];

        v46 = v211;
        v210(v201 + v97, v211);
        v45 = v209;
        v202(v97, v209);
        goto LABEL_25;
      }

      v81(v84 + v85, v82);
      v202 = *v175;
      v202(v84, v209);
      v104 = v163;
      sub_25C7E92DC(v57, v163, &qword_27FC16080, &qword_25C830490);
      v105 = v60[12];

      v106 = (v104 + v60[24]);
      v107 = v106[1];
      v201 = *v106;

      v108 = v104 + v105;
      if (v107)
      {
        v81(v108, v82);
        v202(v104, v209);
        v109 = v173;
        sub_25C7E92DC(v57, v173, &qword_27FC16080, &qword_25C830490);
        v200 = v60[12];

        v199 = *(v109 + v60[20]);

        v110 = objc_allocWithZone(ODCurareCandidateModel);
        v111 = sub_25C82DE2C();
        v112 = sub_25C82E07C();

        v113 = v199;
        v103 = [v110 initWithModelURL:v111 withBiomeStreamIdentifier:v112 andMetadata:v199];

        v210(v200 + v109, v82);
        v114 = v109;
        v115 = v209;
        v202(v114, v209);
        v46 = v82;
        v42 = v83;
        v45 = v115;
LABEL_25:
        v75 = v185;
        v44 = v191;
        if (v103)
        {
          v116 = [v103 CDModelDataStreamIdentifier];
          if (v116)
          {
            v117 = v116;
            v118 = sub_25C82E0AC();
            v120 = v119;

            v121 = sub_25C82E25C();
            if (qword_2815594B8 != -1)
            {
              swift_once();
            }

            v122 = qword_281559838;
            if (os_log_type_enabled(qword_281559838, v121))
            {
              v123 = v122;
              v124 = swift_slowAlloc();
              v125 = swift_slowAlloc();
              v212 = v125;
              *v124 = v162;
              v126 = sub_25C7E77E4(v118, v120, &v212);

              *(v124 + 4) = v126;
              _os_log_impl(&dword_25C7D2000, v123, v121, "Candiate model has stream %s", v124, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v125);
              MEMORY[0x25F890110](v125, -1, -1);
              MEMORY[0x25F890110](v124, -1, -1);
            }

            else
            {
            }

            v46 = v211;
            v44 = v191;
            v42 = v193;
            v45 = v209;
          }

          [v103 setIsPersonalizableModel_];
          v47 = v103;

          MEMORY[0x25F88F4D0](v48);
          if (*((v213 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v213 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_25C82E1EC();
            v46 = v211;
          }

          sub_25C82E20C();

          v49 = v210;
          v210(v192, v46);
          v49(v197, v46);
          v164 = v213;
          v39 = v195;
          v50 = v208;
          goto LABEL_9;
        }
      }

      else
      {
        v81(v108, v82);
        v127 = v104;
        v128 = v209;
        v202(v127, v209);
        v75 = v185;
        v46 = v82;
        v44 = v57;
        v45 = v128;
      }

      v129 = sub_25C82E27C();
      if (qword_2815594B8 != -1)
      {
        swift_once();
      }

      v130 = qword_281559838;
      sub_25C82E00C(v129, &dword_25C7D2000, v130, "Candidate model was nil, this should not happen!", 48, 2, MEMORY[0x277D84F90]);

      sub_25C7E7DEC();
      v131 = swift_allocError();
      *v132 = 20;
      v202 = v131;
      swift_willThrow();
      v210(v192, v46);
      v201 = 0;
      v69 = v197;
      v74 = v205;
      goto LABEL_35;
    }

    sub_25C7E97F4(v72, &qword_27FC16048, qword_25C8309D0);

    v210(v70 + v71, v211);
    v201 = 0;
    v202 = v73;
    v75 = v185;
    v44 = v57;
LABEL_35:
    LODWORD(v206) = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v133 = qword_281559838;
    sub_25C7E92DC(v44, v75, &qword_27FC16080, &qword_25C830490);
    sub_25C7E92DC(v44, v74, &qword_27FC16080, &qword_25C830490);
    if (os_log_type_enabled(v133, v206))
    {
      v200 = v133;
      v134 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      v212 = v199;
      *v134 = v167;
      v135 = v173;
      sub_25C7E92DC(v75, v173, &qword_27FC16080, &qword_25C830490);
      v136 = v195;
      v137 = v75;
      v138 = v195[12];

      v139 = sub_25C82DE8C();
      v141 = v140;
      sub_25C7E97F4(v137, &qword_27FC16080, &qword_25C830490);
      v142 = v135 + v138;
      v143 = v211;
      v144 = v193;
      v210(v142, v211);
      v196 = *v175;
      v196(v135, v209);
      v145 = sub_25C7E77E4(v139, v141, &v212);

      v198 = v134;
      *(v134 + 4) = v145;
      *(v134 + 12) = 2080;
      sub_25C7E92DC(v205, v135, &qword_27FC16080, &qword_25C830490);
      v146 = v136[12];

      v147 = v168;
      v203(v168, v135, v209);
      v148 = v135 + v146;
      v149 = v143;
      v44 = v191;
      v45 = v209;
      v210(v148, v149);
      sub_25C82C240();
      v150 = sub_25C82E4DC();
      v152 = v151;
      v196(v147, v45);
      v153 = v144;
      sub_25C7E97F4(v205, &qword_27FC16080, &qword_25C830490);
      v154 = sub_25C7E77E4(v150, v152, &v212);

      v155 = v198;
      *(v198 + 14) = v154;
      v156 = v200;
      _os_log_impl(&dword_25C7D2000, v200, v206, "Pruning invalid model at: %s date: %s.", v155, 0x16u);
      v157 = v199;
      swift_arrayDestroy();
      v69 = v197;
      MEMORY[0x25F890110](v157, -1, -1);
      v158 = v155;
      v42 = v153;
      MEMORY[0x25F890110](v158, -1, -1);
    }

    else
    {
      sub_25C7E97F4(v74, &qword_27FC16080, &qword_25C830490);
      sub_25C7E97F4(v75, &qword_27FC16080, &qword_25C830490);
      v42 = v193;
    }

    v159 = v207;
    __swift_project_boxed_opaque_existential_1(v194, v194[3]);
    v160 = v201;
    sub_25C826030(v44 + v159, v44);
    v50 = v208;
    v196 = v160;
    if (v160)
    {
      goto LABEL_46;
    }

    v210(v69, v211);

    v39 = v195;
LABEL_9:
    v38 = v50 + 1;
    sub_25C7E97F4(v44, &qword_27FC16080, &qword_25C830490);
    v41 = v190;
    v40 = v187;
    result = v184;
    if (v186 == v38)
    {

      return v164;
    }
  }

  __break(1u);
LABEL_46:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}