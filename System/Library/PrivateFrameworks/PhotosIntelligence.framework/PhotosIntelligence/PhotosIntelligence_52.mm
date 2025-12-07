uint64_t PromptSuggestionPersister.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence25PromptSuggestionPersister_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PromptSuggestionPersister.__deallocating_deinit()
{
  PromptSuggestionPersister.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1C7343B20()
{
  result = qword_1EDD0B058;
  if (!qword_1EDD0B058)
  {
    v3 = type metadata accessor for PromptSuggestion(255);
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion, v3, v0, v1);
    atomic_store(result, &qword_1EDD0B058);
  }

  return result;
}

unint64_t sub_1C7343B78()
{
  result = qword_1EDD0CF08;
  if (!qword_1EDD0CF08)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC219300, &unk_1C7577770);
    result = swift_getWitnessTable(MEMORY[0x1E6969E28], v3, v0, v1);
    atomic_store(result, &qword_1EDD0CF08);
  }

  return result;
}

unint64_t sub_1C7343BDC()
{
  result = qword_1EC21AC30;
  if (!qword_1EC21AC30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestionPersister.Error, &type metadata for PromptSuggestionPersister.Error, v0, v1);
    atomic_store(result, &qword_1EC21AC30);
  }

  return result;
}

void sub_1C7343C30()
{
  v1 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_17_67();
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + v5);

  sub_1C734283C(v3, v4, v0 + v2, v6);
}

unint64_t sub_1C7343CBC()
{
  result = qword_1EC21AC38;
  if (!qword_1EC21AC38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestionPersister.Error, &type metadata for PromptSuggestionPersister.Error, v0, v1);
    atomic_store(result, &qword_1EC21AC38);
  }

  return result;
}

uint64_t type metadata accessor for PromptSuggestionPersister(uint64_t a1)
{
  result = qword_1EDD091C0;
  if (!qword_1EDD091C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7343D64(uint64_t a1)
{
  result = sub_1C754FF1C();
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

_BYTE *storeEnumTagSinglePayload for PromptSuggestionPersister.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C7343F0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C755065C();

  [a3 setContext_];
}

void sub_1C7343F70()
{
  v1 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_17_67();
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1C7340414(v6, (v0 + v2), v7, v8, v9, v10);
}

uint64_t OUTLINED_FUNCTION_21_51(uint64_t result)
{
  *(result + 32) = 1701869940;
  *(result + 40) = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_37(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

id sub_1C734406C(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSuggestion:a1 queryToken:a2];

  return v4;
}

uint64_t QueryGenerator.groundedQueryTokens(forAnnotation:userSuggestionByRange:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C73440F0, 0, 0);
}

uint64_t sub_1C73440F0()
{
  v1 = *(v0 + 40);
  v2 = QueryGenerator.groundedQueryTokens(forAnnotation:userSuggestionByRange:eventRecorder:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1C754F2FC();
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v1);
  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t QueryGenerator.groundedQueryTokens(forAnnotation:userSuggestionByRange:eventRecorder:)(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FD8, &unk_1C7575C30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v399 = &v396 - v7;
  OUTLINED_FUNCTION_37_3();
  v440 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v414 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v439 = v11 - v10;
  OUTLINED_FUNCTION_37_3();
  v438 = sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v413 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_0();
  v437 = v15 - v14;
  v16 = OUTLINED_FUNCTION_37_3();
  v403 = type metadata accessor for QueryGenerator.AnnotatedQueryComponents(v16);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_0();
  v443 = v19 - v18;
  OUTLINED_FUNCTION_37_3();
  sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v406 = v21;
  v407 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_14_0();
  v24 = v23 - v22;
  v25 = *a1;
  v441 = *(a1 + 8);
  v442 = v25;
  v26 = *(a1 + 16);
  v27 = *(a1 + 24);
  v476 = v27;
  v28 = *(a1 + 25);
  v475 = v28;
  v412 = *(a1 + 26);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v405 = v24;
  sub_1C754F1CC();
  v432 = v26;
  v433 = *(v26 + 16);
  if (!v433 && a2[2])
  {
    v142 = sub_1C754FEEC();
    v143 = sub_1C755117C();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      *v144 = 0;
      _os_log_impl(&dword_1C6F5C000, v142, v143, "Applied the user suggestions directly since there is no query annotation", v144, 2u);
      OUTLINED_FUNCTION_109();
    }

    *__dst = v442;
    *&__dst[8] = v441;
    *&__dst[16] = v432;
    __dst[24] = v27;
    __dst[25] = v28;
    __dst[26] = v412;
    *&__dst[27] = *(a1 + 27);
    *&__dst[43] = *(a1 + 43);
    *&__dst[59] = *(a1 + 59);
    *&__dst[73] = *(a1 + 73);
    sub_1C73469F4(__dst, a2);
    v146 = v145;
    v147 = 0;
LABEL_256:
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v394 = v405;
    sub_1C754F1AC();
    (*(v406 + 8))(v394, v407);
    sub_1C6F6E5B4(v147, 0);
    return v146;
  }

  v400 = a3;
  v29 = swift_allocObject();
  v30 = MEMORY[0x1E69E7CC0];
  v411 = v29;
  *(v29 + 16) = MEMORY[0x1E69E7CC0];
  v429 = (v29 + 16);
  v31 = a2 + 8;
  OUTLINED_FUNCTION_11();
  v34 = v33 & v32;
  v36 = (v35 + 63) >> 6;
  v37 = HIBYTE(v441) & 0xF;
  if ((v441 & 0x2000000000000000) == 0)
  {
    v37 = v442;
  }

  v38 = 11;
  if (((v441 >> 60) & ((v442 & 0x800000000000000) == 0)) == 0)
  {
    v38 = 7;
  }

  v435 = a2;
  v436 = (v38 | (v37 << 16));
  sub_1C75504FC();
  v39 = 0;
  v426 = 0;
  v416 = v30;
LABEL_7:
  if (v34)
  {
    v40 = v435;
    goto LABEL_14;
  }

  v40 = v435;
  while (1)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      goto LABEL_258;
    }

    if (v41 >= v36)
    {
      break;
    }

    v34 = v31[v41];
    ++v39;
    if (v34)
    {
      v39 = v41;
LABEL_14:
      v42 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v43 = v42 | (v39 << 6);
      v44 = (v40[6] + 16 * v43);
      v45 = *v44;
      v46 = v44[1];
      v47 = *(v40[7] + 8 * v43);
      sub_1C755090C();
      if ((v48 & 1) == 0)
      {
        if (__OFADD__(v45, v46))
        {
          goto LABEL_271;
        }

        sub_1C755090C();
        if (v49)
        {
          goto LABEL_7;
        }

        v434 = v46;
        v50 = v47;
        sub_1C75504FC();
        v51 = sub_1C75507EC();
        if (v52 & 1) != 0 || (v53 = v51, sub_1C75504FC(), v54 = sub_1C75507EC(), (v55))
        {

          goto LABEL_7;
        }

        if (v54 >> 14 < v53 >> 14)
        {
          goto LABEL_272;
        }

        v56 = sub_1C755098C();
        v57 = MEMORY[0x1CCA5CC40](v56);
        v431 = v58;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1CD0(0, v416[2] + 1, 1, v416);
          v416 = v87;
        }

        v60 = v416[2];
        v59 = v416[3];
        if (v60 >= v59 >> 1)
        {
          v88 = OUTLINED_FUNCTION_15(v59);
          sub_1C6FB1CD0(v88, v60 + 1, 1, v416);
          v416 = v89;
        }

        v61 = v416;
        v416[2] = v60 + 1;
        v62 = v61 + 16 * v60;
        v63 = v434;
        *(v62 + 32) = v45;
        *(v62 + 40) = v63;
        sub_1C6F65BE8(0, &qword_1EDD0CDB0, 0x1E6978A50);
        v428 = v50;
        v64 = sub_1C734406C(v428, 0);
        v65 = [v64 suggestion];
        v430 = v64;
        if (v65)
        {
          v66 = v65;
          v67 = [objc_opt_self() PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType_];
          static StoryGenerationUtilities.queryTokenCategoryTypeString(for:)(v67, __dst);
          sub_1C72D5B04();
          goto LABEL_29;
        }

        v69 = [v64 QUToken];
        if (v69)
        {
          v66 = v69;
          sub_1C72D5FAC(v69, v57, v431, MEMORY[0x1E69E7CC0], v70, v71, v72, v73, v396, v397, v398, *(&v398 + 1), v399, v400, v401, *(&v401 + 1), v402, v403, v404, *(&v404 + 1));
LABEL_29:
          v74 = v68;
        }

        else
        {
          v74 = MEMORY[0x1E69E7CC0];
        }

        sub_1C72D533C();
        v76 = v75;
        v78 = v77;

        LOBYTE(v460[0]) = 0;

        v445[0] = v76;
        v445[1] = v78;
        v445[2] = v57;
        v445[3] = v431;
        v446 = 1;
        *v447 = *__dst;
        *&v447[3] = *&__dst[3];
        v448 = v45;
        v449 = v434;
        v450 = v460[0];
        *v451 = v473[0];
        *&v451[3] = *(v473 + 3);
        v452 = MEMORY[0x1E69E7CC0];
        v453 = 0;
        v454 = v74;
        v455 = 0;
        *v456 = v472[0];
        *&v456[3] = *(v472 + 3);
        v458 = 0;
        v459 = 0;
        v457 = 0;
        v79 = v429;
        sub_1C6FB0BCC();
        v80 = *(*v79 + 16);
        sub_1C6FB1410(v80, v81, v82, v83, v84, v85, v86);

        sub_1C745838C(v80, v445);
      }

      goto LABEL_7;
    }
  }

  if (!v433)
  {
    v434 = 0;
    v92 = MEMORY[0x1E69E7CC8];
    v441 = MEMORY[0x1E69E7CC8];
    v135 = v429;
    v136 = v443;
LABEL_62:
    v410 = v441 + 64;
    OUTLINED_FUNCTION_11();
    v150 = (v149 & v148);
    v409 = (v151 + 63) >> 6;
    v435 = (v413 + 16);
    v436 = (v414 + 16);
    sub_1C75504FC();
    v152 = v150;
    v153 = 0;
    v397 = v416 + 5;
    *&v154 = 136642819;
    v401 = v154;
    *(&v154 + 1) = 12;
    v404 = xmmword_1C755D200;
    *&v154 = 136315394;
    v398 = v154;
    *&v154 = 138412290;
    v415 = v154;
    v442 = v92;
    while (1)
    {
      while (1)
      {
        if (!v152)
        {
          while (1)
          {
            v156 = v153 + 1;
            if (__OFADD__(v153, 1))
            {
              break;
            }

            if (v156 >= v409)
            {

              if (v476)
              {
                sub_1C74A8498(0, __dst);
                v356 = sub_1C6FB0BCC();
                OUTLINED_FUNCTION_19_61(v356, v357, v358, v359, v360, v361, v362);
                sub_1C745838C(v150, __dst);
              }

              if (v475 == 1)
              {
                sub_1C7348660(v473);
                v363 = sub_1C6FB0BCC();
                OUTLINED_FUNCTION_19_61(v363, v364, v365, v366, v367, v368, v369);
                sub_1C745838C(v150, v473);
              }

              if (v412)
              {
                if (v412 == 1)
                {
                  v370 = 0x7473726966;
                }

                else
                {
                  v370 = 1953718636;
                }

                v371 = OUTLINED_FUNCTION_18_51(v370);

                if ((v371 & 1) == 0)
                {
                  LOBYTE(v444[0]) = v412;
                  sub_1C73488F8(v444, v472);
                  v372 = sub_1C6FB0BCC();
                  OUTLINED_FUNCTION_19_61(v372, v373, v374, v375, v376, v377, v378);
                  sub_1C745838C(v371, v472);
                }
              }

              else
              {
              }

              sub_1C7348ACC(v135, sub_1C70E4308, &type metadata for QueryToken, sub_1C7349D70, sub_1C7349C88);

              OUTLINED_FUNCTION_30();
              v379 = swift_allocObject();
              *(v379 + 16) = sub_1C734A668;
              *(v379 + 24) = v411;

              v380 = sub_1C754FEEC();
              v381 = sub_1C75511BC();
              OUTLINED_FUNCTION_7_71();
              v382 = swift_allocObject();
              *(v382 + 16) = 37;
              OUTLINED_FUNCTION_7_71();
              v383 = swift_allocObject();
              *(v383 + 16) = 8;
              OUTLINED_FUNCTION_30();
              v384 = swift_allocObject();
              *(v384 + 16) = sub_1C734A670;
              *(v384 + 24) = v379;
              OUTLINED_FUNCTION_30();
              v385 = swift_allocObject();
              *(v385 + 16) = sub_1C734A780;
              *(v385 + 24) = v384;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC60, &unk_1C758B6B0);
              v386 = swift_allocObject();
              *(v386 + 16) = xmmword_1C755BAA0;
              *(v386 + 32) = sub_1C734A788;
              *(v386 + 40) = v382;
              *(v386 + 48) = sub_1C734A788;
              *(v386 + 56) = v383;
              *(v386 + 64) = sub_1C734A77C;
              *(v386 + 72) = v385;
              swift_setDeallocating();
              sub_1C6FDE6C8();
              if (os_log_type_enabled(v380, v381))
              {
                v387 = swift_slowAlloc();
                v388 = swift_slowAlloc();
                v444[0] = v388;
                *v387 = v401;
                swift_beginAccess();
                v389 = sub_1C75504FC();
                v390 = MEMORY[0x1CCA5D090](v389, &type metadata for QueryToken);
                v392 = v391;

                v393 = sub_1C6F765A4(v390, v392, v444);

                *(v387 + 4) = v393;
                _os_log_impl(&dword_1C6F5C000, v380, v381, "Grounded query tokens = %{sensitive}s", v387, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v388);
                OUTLINED_FUNCTION_109();
                OUTLINED_FUNCTION_109();
              }

              a3 = v400;
              v147 = v434;
              swift_beginAccess();
              v146 = *(v411 + 16);
              sub_1C75504FC();

              goto LABEL_256;
            }

            v155 = *(v410 + 8 * v156);
            ++v153;
            if (v155)
            {
              v153 = v156;
              goto LABEL_69;
            }
          }

LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
          goto LABEL_260;
        }

        v155 = v152;
LABEL_69:
        v152 = (v155 - 1) & v155;
        if (*(v92 + 16))
        {
          v157 = __clz(__rbit64(v155)) | (v153 << 6);
          v158 = (*(v441 + 48) + 16 * v157);
          v159 = *v158;
          v160 = v158[1];
          v432 = *(*(v441 + 56) + 8 * v157);
          v417 = v159;
          v418 = v160;
          v419 = v152;
          v420 = v153;
          v161 = sub_1C6FC31EC(v159, v160);
          v152 = v419;
          v153 = v420;
          v92 = v442;
          if (v162)
          {
            break;
          }
        }
      }

      v163 = (*(v442 + 56) + 16 * v161);
      v165 = *v163;
      v164 = v163[1];
      v423 = v165;
      v424 = v164;
      v166 = v416[2];
      if (v166)
      {
        v167 = __OFADD__(v417, v418);
        v168 = v397;
        v169 = v432;
        while (1)
        {
          v170 = *(v168 - 1);
          if (v417 >= v170)
          {
            if (v167)
            {
              goto LABEL_268;
            }

            v111 = __OFADD__(v170, *v168);
            v171 = v170 + *v168;
            if (v111)
            {
              goto LABEL_269;
            }

            if (v171 >= v417 + v418)
            {
              break;
            }
          }

          v168 += 2;
          if (!--v166)
          {
            goto LABEL_83;
          }
        }

        v316 = v417;
        v317 = v418;
        OUTLINED_FUNCTION_30();
        v318 = swift_allocObject();
        v319 = v424;
        *(v318 + 16) = v423;
        *(v318 + 24) = v319;
        OUTLINED_FUNCTION_30();
        v320 = swift_allocObject();
        *(v320 + 16) = v316;
        *(v320 + 24) = v317;
        OUTLINED_FUNCTION_30();
        v321 = swift_allocObject();
        *(v321 + 16) = sub_1C734A5D8;
        *(v321 + 24) = v320;
        swift_bridgeObjectRetain_n();
        v150 = sub_1C754FEEC();
        LODWORD(v433) = sub_1C755117C();
        OUTLINED_FUNCTION_7_71();
        v322 = swift_allocObject();
        *(v322 + 16) = 32;
        OUTLINED_FUNCTION_7_71();
        v323 = swift_allocObject();
        *(v323 + 16) = 8;
        OUTLINED_FUNCTION_30();
        v324 = swift_allocObject();
        *(v324 + 16) = sub_1C734A5D0;
        *(v324 + 24) = v318;
        OUTLINED_FUNCTION_30();
        v325 = swift_allocObject();
        *(v325 + 16) = sub_1C734A5F4;
        *(v325 + 24) = v324;
        OUTLINED_FUNCTION_7_71();
        v326 = swift_allocObject();
        *(v326 + 16) = 32;
        OUTLINED_FUNCTION_7_71();
        v327 = swift_allocObject();
        *(v327 + 16) = 8;
        OUTLINED_FUNCTION_30();
        v328 = swift_allocObject();
        *(v328 + 16) = sub_1C734A5E4;
        *(v328 + 24) = v321;
        OUTLINED_FUNCTION_30();
        v329 = swift_allocObject();
        *(v329 + 16) = sub_1C734A780;
        *(v329 + 24) = v328;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC60, &unk_1C758B6B0);
        v330 = swift_allocObject();
        *(v330 + 16) = v404;
        *(v330 + 32) = sub_1C734A5EC;
        *(v330 + 40) = v322;
        *(v330 + 48) = sub_1C734A788;
        *(v330 + 56) = v323;
        v331 = v433;
        *(v330 + 64) = sub_1C734A5FC;
        *(v330 + 72) = v325;
        *(v330 + 80) = sub_1C734A788;
        *(v330 + 88) = v326;
        *(v330 + 96) = sub_1C734A788;
        *(v330 + 104) = v327;
        *(v330 + 112) = sub_1C734A77C;
        *(v330 + 120) = v329;
        swift_setDeallocating();
        sub_1C6FDE6C8();
        if (os_log_type_enabled(v150, v331))
        {
          v332 = swift_slowAlloc();
          *__dst = swift_slowAlloc();
          *v332 = v398;
          v333 = sub_1C6F765A4(v423, v424, __dst);

          *(v332 + 4) = v333;
          *(v332 + 12) = 2080;
          v334 = sub_1C755142C();
          v336 = sub_1C6F765A4(v334, v335, __dst);

          *(v332 + 14) = v336;
          _os_log_impl(&dword_1C6F5C000, v150, v331, "Skip substring %s with range (%s) since user has disambiguated", v332, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        else
        {
        }

        v135 = v429;
        v136 = v443;
      }

      else
      {
        v169 = v432;
LABEL_83:
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C754E2EC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219750, &qword_1C756A310);
        v172 = MEMORY[0x1E69E7CC0];
        v173 = sub_1C75504DC();
        v174 = v403;
        v175 = *(v403 + 24);
        v430 = *(v403 + 20);
        *(v430 + v136) = v173;
        v422 = v175;
        *(v136 + v175) = 0;
        v396 = *(v174 + 28);
        *(v136 + v396) = v172;
        v428 = *(v169 + 16);
        if (v428)
        {
          v431 = objc_opt_self();
          v176 = 0;
          v425 = 0;
          v427 = v169 + 32;
          while (1)
          {
            if (v176 >= *(v169 + 16))
            {
              goto LABEL_263;
            }

            v433 = v176;
            memcpy(__dst, (v427 + 72 * v176), 0x48uLL);
            OUTLINED_FUNCTION_30_37();
            sub_1C75504FC();
            if ([v431 enableQueryAnnotationPipelineInPhotos])
            {
              v177 = sub_1C7551B2C();

              v178 = 1;
              v179 = 1;
              v180 = OUTLINED_FUNCTION_0_144();
              v181 = 3;
              switch(v177)
              {
                case 0:
                case 1:
                  goto LABEL_111;
                case 2:
                  goto LABEL_90;
                case 3:
                  goto LABEL_92;
                case 4:
                  goto LABEL_89;
                case 5:
                  goto LABEL_98;
                case 6:
                  goto LABEL_95;
                case 7:
                  goto LABEL_93;
                case 8:
                  goto LABEL_94;
                case 9:
                  goto LABEL_91;
                default:
                  goto LABEL_96;
              }
            }

            v182 = objc_opt_self();
            v183 = sub_1C755065C();

            v178 = [v182 PHSearchEntityCategoryTypeFromCSAttributedEntityType_];

            v179 = 1;
            v180 = OUTLINED_FUNCTION_0_144();
            v181 = v178;
            switch(v178)
            {
              case 0:
LABEL_96:
                OUTLINED_FUNCTION_30_37();
                v184 = sub_1C754FEEC();
                v185 = sub_1C75511BC();
                sub_1C7316F68(__dst);
                if (os_log_type_enabled(v184, v185))
                {
                  v186 = swift_slowAlloc();
                  v187 = swift_slowAlloc();
                  v444[0] = v187;
                  *v186 = v401;
                  memcpy(v472, __dst, 0x48uLL);
                  v188 = QueryAttribute.description.getter();
                  v190 = v189;
                  memcpy(v473, v472, 0x48uLL);
                  sub_1C7316F68(v473);
                  v191 = sub_1C6F765A4(v188, v190, v444);

                  *(v186 + 4) = v191;
                  _os_log_impl(&dword_1C6F5C000, v184, v185, "Attribute %{sensitive}s has undefined search entity category type", v186, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v187);
                  OUTLINED_FUNCTION_109();
                  OUTLINED_FUNCTION_109();
                }

                else
                {

                  sub_1C7316F68(__dst);
                }

                goto LABEL_201;
              case 1:
              case 2:
LABEL_89:
                v179 = 3;
                v180 = 1702125924;
                goto LABEL_110;
              case 3:
                goto LABEL_111;
              case 4:
LABEL_92:
                v179 = 7;
                v180 = 0x6E6F697461636F6CLL;
                v181 = 4;
                goto LABEL_111;
              case 5:
                v179 = 8;
                v180 = OUTLINED_FUNCTION_25_40();
                goto LABEL_110;
              case 6:
LABEL_98:
                v179 = 9;
                v180 = 1952540791;
                v181 = 6;
                goto LABEL_111;
              case 7:
                v179 = 10;
                v180 = OUTLINED_FUNCTION_22_56();
                goto LABEL_110;
              case 8:
                v179 = 11;
                v180 = OUTLINED_FUNCTION_0_144() & 0xFFFFFFFFFFFFLL | 0x6C61000000000000;
                goto LABEL_110;
              case 9:
LABEL_93:
                v179 = 12;
                v180 = OUTLINED_FUNCTION_34_0() | 0x7469546300000000;
                v181 = 9;
                goto LABEL_111;
              case 10:
LABEL_95:
                OUTLINED_FUNCTION_207();
                v179 = 13;
                v180 = OUTLINED_FUNCTION_34_0() | 0x7472416300000000;
                v181 = 10;
                goto LABEL_111;
              case 11:
LABEL_94:
                OUTLINED_FUNCTION_437();
                v179 = 14;
                v180 = OUTLINED_FUNCTION_34_0() | 0x6E65476300000000;
                v181 = 11;
                goto LABEL_111;
              case 12:
LABEL_91:
                v179 = 15;
                v180 = 1685024621;
                v181 = 12;
                goto LABEL_111;
              case 13:
                v179 = 16;
                v180 = 0x6E6F697461727564;
                goto LABEL_110;
              case 14:
                v179 = 17;
                v180 = 0x706972547369;
                goto LABEL_110;
              case 15:
LABEL_90:
                v179 = 2;
                v180 = OUTLINED_FUNCTION_0_144() & 0xFFFFFFFFFFFFLL | 0x6741000000000000;
                v181 = 15;
                goto LABEL_111;
              case 16:
                v179 = 18;
                v180 = OUTLINED_FUNCTION_26_42();
                goto LABEL_110;
              case 17:
                OUTLINED_FUNCTION_188();
                v179 = 19;
                v180 = OUTLINED_FUNCTION_21_5();
                goto LABEL_110;
              case 18:
                OUTLINED_FUNCTION_188();
                v179 = 4;
                v180 = OUTLINED_FUNCTION_4_82() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
                goto LABEL_110;
              case 19:
                OUTLINED_FUNCTION_437();
                v179 = 5;
                v180 = OUTLINED_FUNCTION_4_82() & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
                goto LABEL_110;
              case 20:
                v179 = 6;
                v180 = 0x6E6F73616573;
LABEL_110:
                v181 = v178;
LABEL_111:
                v192 = OUTLINED_FUNCTION_18_51(v180);

                if (v192)
                {
                  goto LABEL_150;
                }

                v193 = 0xE600000000000000;
                v194 = 0x6E6F73726570;
                v421 = (v179 - 1);
                v195 = v426;
                switch(v179)
                {
                  case 2:
                    v194 = 0x67416E6F73726570;
                    v196 = 0x6570795465;
                    goto LABEL_131;
                  case 3:
                    v193 = 0xE400000000000000;
                    v194 = 1702125924;
                    break;
                  case 4:
                    OUTLINED_FUNCTION_188();
                    v193 = v200 + 20;
                    v194 = 0x6144664F74726170;
                    break;
                  case 5:
                    OUTLINED_FUNCTION_437();
                    v193 = v197 + 1529;
                    v194 = 0x6557664F74726170;
                    break;
                  case 6:
                    v194 = 0x6E6F73616573;
                    break;
                  case 7:
                    v193 = 0xE800000000000000;
                    v199 = 1633906540;
                    goto LABEL_128;
                  case 8:
                    v194 = 0x4C636972656E6567;
                    v193 = 0xEF6E6F697461636FLL;
                    break;
                  case 9:
                    v193 = 0xE400000000000000;
                    v194 = 1952540791;
                    break;
                  case 10:
                    v194 = 0x764563696C627570;
                    v193 = 0xEB00000000746E65;
                    break;
                  case 11:
                    v194 = 0x6C616E6F73726570;
                    v196 = 0x746E657645;
LABEL_131:
                    v193 = v196 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                    break;
                  case 12:
                    v194 = 0x746954636973756DLL;
                    v193 = 0xEA0000000000656CLL;
                    break;
                  case 13:
                    OUTLINED_FUNCTION_207();
                    v193 = v198 + 1284;
                    v194 = 0x747241636973756DLL;
                    break;
                  case 14:
                    OUTLINED_FUNCTION_437();
                    v193 = v201 + 6;
                    v194 = 0x6E6547636973756DLL;
                    break;
                  case 15:
                    v193 = 0xE400000000000000;
                    v194 = 1685024621;
                    break;
                  case 16:
                    v193 = 0xE800000000000000;
                    v199 = 1634891108;
LABEL_128:
                    v194 = v199 | 0x6E6F697400000000;
                    break;
                  case 17:
                    v194 = 0x706972547369;
                    break;
                  case 18:
                    v194 = 0x6D69546C6C417369;
                    v193 = 0xE900000000000065;
                    break;
                  case 19:
                    OUTLINED_FUNCTION_188();
                    v193 = v202 + 13;
                    v194 = 0x6564724F74726F73;
                    break;
                  default:
                    break;
                }

                v203 = type metadata accessor for OptionalizedTokensDataSource();
                v205 = static OptionalizedTokensDataSource.optionalizedTokensByCategoryType.getter(v203, v204);
                if (v195)
                {
                  if (qword_1EDD0F3C0 != -1)
                  {
                    swift_once();
                  }

                  v206 = sub_1C754FF1C();
                  __swift_project_value_buffer(v206, qword_1EDD28DB0);
                  v207 = v195;
                  v208 = sub_1C754FEEC();
                  v209 = v195;
                  v210 = sub_1C755119C();

                  if (os_log_type_enabled(v208, v210))
                  {
                    v211 = swift_slowAlloc();
                    v212 = swift_slowAlloc();
                    *v211 = v415;
                    v213 = v209;
                    v214 = _swift_stdlib_bridgeErrorToNSError();
                    *(v211 + 4) = v214;
                    *v212 = v214;
                    _os_log_impl(&dword_1C6F5C000, v208, v210, "Unable to get the optionalizedTokensByCategoryType, error=%@", v211, 0xCu);
                    sub_1C6FD7FC8(v212, &qword_1EC215190, &qword_1C755C730);
                    OUTLINED_FUNCTION_109();
                    OUTLINED_FUNCTION_109();
                  }

                  else
                  {
                  }

                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
                  v215 = sub_1C75504DC();
                }

                else
                {
                  v215 = v205;
                }

                v426 = 0;
                if (!*(v215 + 16))
                {

LABEL_148:
                  v178 = v181;
                  v136 = v443;
LABEL_149:

                  v181 = v178;
LABEL_150:
                  v243 = *&__dst[48];
                  if (v181 != 1)
                  {
                    if (v181 == 3)
                    {
                      sub_1C7316F68(__dst);
                      v245 = sub_1C7347A3C(v423, v424, v432);
                      v246 = *(v245 + 16);
                      if (!v246)
                      {

                        v247 = MEMORY[0x1E69E7CC0];
                        goto LABEL_190;
                      }

                      v444[0] = MEMORY[0x1E69E7CC0];
                      sub_1C716D6A4(0, v246, 0);
                      v247 = v444[0];
                      v248 = (v245 + 40);
                      do
                      {
                        v249 = *v248;
                        v472[0] = *(v248 - 1);
                        v472[1] = v249;
                        sub_1C75504FC();
                        swift_dynamicCast();
                        v444[0] = v247;
                        v251 = *(v247 + 16);
                        v250 = *(v247 + 24);
                        if (v251 >= v250 >> 1)
                        {
                          OUTLINED_FUNCTION_15(v250);
                          OUTLINED_FUNCTION_116_0();
                          sub_1C716D6A4(v252, v253, v254);
                          v247 = v444[0];
                        }

                        *(v247 + 16) = v251 + 1;
                        sub_1C6F9ED18(v473, (v247 + 32 * v251 + 32));
                        v248 += 2;
                        --v246;
                      }

                      while (v246);

                      v136 = v443;
                    }

                    else
                    {
                      if (v181 == 4)
                      {
                        sub_1C75504FC();
                        sub_1C7316F68(__dst);
                        if (*(v243 + 16))
                        {
                          sub_1C75504FC();
                          v244 = v243;
                        }

                        else
                        {
                          v244 = 0;
                        }

                        v267 = v423;
                        *(v136 + v422) = v244;
                        sub_1C7348240(v267, v424, v243);
                        v269 = v268;

                        v247 = sub_1C71BB47C(v269);

                        v425 = v244;
                        goto LABEL_190;
                      }

                      v261 = 0;
                      while (v261 != 40)
                      {
                        v262 = *(&unk_1F46A8880 + v261 + 32);
                        v261 += 8;
                        if (v262 == v181)
                        {
                          v247 = sub_1C71BA98C(*&__dst[48]);
                          sub_1C7316F68(__dst);
                          goto LABEL_186;
                        }
                      }

                      sub_1C7316F68(__dst);
                      v247 = MEMORY[0x1E69E7CC0];
                    }

LABEL_186:
                    if (v181 < 0)
                    {
                      goto LABEL_264;
                    }

LABEL_190:
                    sub_1C754E2AC();
                    v270 = [objc_opt_self() entityCategoryTypeKeyForEntityTypeCategory_];
                    if (v270)
                    {
                      v271 = v270;
                      v272 = sub_1C755068C();
                      v274 = v273;

                      v275 = v430;
                      swift_isUniquelyReferenced_nonNull_native();
                      *&v473[0] = *&v275[v136];
                      sub_1C6F78124(v272, v274);
                      OUTLINED_FUNCTION_31_1();
                      if (__OFADD__(v278, v279))
                      {
                        goto LABEL_265;
                      }

                      v280 = v276;
                      v281 = v277;
                      v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152A0, &unk_1C7579E30);
                      if (OUTLINED_FUNCTION_27_42(v282))
                      {
                        v283 = sub_1C6F78124(v272, v274);
                        if ((v281 & 1) != (v284 & 1))
                        {
                          goto LABEL_273;
                        }

                        v280 = v283;
                      }

                      if (v281)
                      {

                        v285 = *&v473[0];
                        *(*(*&v473[0] + 56) + 8 * v280) = v247;
                      }

                      else
                      {
                        v285 = *&v473[0];
                        OUTLINED_FUNCTION_2_27(*&v473[0] + 8 * (v280 >> 6));
                        v287 = (v286 + 16 * v280);
                        *v287 = v272;
                        v287[1] = v274;
                        *(*(v285 + 56) + 8 * v280) = v247;
                        v288 = *(v285 + 16);
                        v111 = __OFADD__(v288, 1);
                        v289 = v288 + 1;
                        if (v111)
                        {
                          goto LABEL_270;
                        }

                        *(v285 + 16) = v289;
                      }

                      v136 = v443;
                      *(v430 + v443) = v285;
                    }

                    else
                    {
                    }

                    goto LABEL_201;
                  }

                  if ([v431 enableQueryAnnotationPipelineInPhotos])
                  {
                    v247 = MEMORY[0x1E69E7CC0];
                    if (*(*&__dst[64] + 16))
                    {
                      OUTLINED_FUNCTION_16_57();
                      v247 = v472[0];
                      OUTLINED_FUNCTION_11_60();
                      do
                      {
                        (v243)(v437, v136, v438);
                        OUTLINED_FUNCTION_28_31();
                        OUTLINED_FUNCTION_23_42();
                        if (v256)
                        {
                          OUTLINED_FUNCTION_15(v255);
                          OUTLINED_FUNCTION_116_0();
                          sub_1C716D6A4(v258, v259, v260);
                          v247 = v472[0];
                        }

                        OUTLINED_FUNCTION_31_38();
                      }

                      while (!v257);
                      goto LABEL_180;
                    }
                  }

                  else
                  {
                    v247 = MEMORY[0x1E69E7CC0];
                    if (*(*&__dst[56] + 16))
                    {
                      OUTLINED_FUNCTION_16_57();
                      v247 = v472[0];
                      OUTLINED_FUNCTION_11_60();
                      do
                      {
                        (v243)(v439, v136, v440);
                        OUTLINED_FUNCTION_28_31();
                        OUTLINED_FUNCTION_23_42();
                        if (v256)
                        {
                          OUTLINED_FUNCTION_15(v263);
                          OUTLINED_FUNCTION_116_0();
                          sub_1C716D6A4(v264, v265, v266);
                          v247 = v472[0];
                        }

                        OUTLINED_FUNCTION_31_38();
                      }

                      while (!v257);
LABEL_180:
                      v243 = v421;
                    }
                  }

                  sub_1C75504FC();
                  sub_1C7316F68(__dst);
                  v136 = v443;
                  if (*(v243 + 16))
                  {
                  }

                  else
                  {

                    v243 = 0;
                  }

                  v425 = v243;
                  *(v136 + v422) = v243;
                  goto LABEL_186;
                }

                sub_1C6F78124(v194, v193);
                v217 = v216;

                if ((v217 & 1) == 0)
                {
                  goto LABEL_148;
                }

                sub_1C75504FC();

                sub_1C706D154();
                v219 = v218;
                v221 = v423;
                v220 = v424;
                v222 = sub_1C75506FC();
                v224 = sub_1C7009C30(v222, v223, v219);

                if ((v224 & 1) == 0)
                {
                  v136 = v443;
                  goto LABEL_150;
                }

                sub_1C7316F68(__dst);
                OUTLINED_FUNCTION_7_71();
                v225 = swift_allocObject();
                *(v225 + 16) = v179;
                OUTLINED_FUNCTION_30();
                v226 = swift_allocObject();
                *(v226 + 16) = v221;
                *(v226 + 24) = v220;
                sub_1C75504FC();
                v408 = sub_1C754FEEC();
                v227 = sub_1C75511BC();
                OUTLINED_FUNCTION_7_71();
                v228 = swift_allocObject();
                *(v228 + 16) = 32;
                OUTLINED_FUNCTION_7_71();
                v229 = swift_allocObject();
                *(v229 + 16) = 8;
                OUTLINED_FUNCTION_30();
                v230 = swift_allocObject();
                *(v230 + 16) = sub_1C734A660;
                *(v230 + 24) = v225;
                OUTLINED_FUNCTION_30();
                v231 = swift_allocObject();
                *(v231 + 16) = sub_1C734A780;
                *(v231 + 24) = v230;
                OUTLINED_FUNCTION_7_71();
                v232 = swift_allocObject();
                *(v232 + 16) = 32;
                OUTLINED_FUNCTION_7_71();
                v233 = swift_allocObject();
                *(v233 + 16) = 8;
                v234 = v227;
                OUTLINED_FUNCTION_30();
                v235 = swift_allocObject();
                *(v235 + 16) = sub_1C734A784;
                *(v235 + 24) = v226;
                OUTLINED_FUNCTION_30();
                v236 = swift_allocObject();
                *(v236 + 16) = sub_1C734A780;
                *(v236 + 24) = v235;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC60, &unk_1C758B6B0);
                v237 = swift_allocObject();
                *(v237 + 16) = v404;
                *(v237 + 32) = sub_1C734A788;
                *(v237 + 40) = v228;
                *(v237 + 48) = sub_1C734A788;
                *(v237 + 56) = v229;
                *(v237 + 64) = sub_1C734A77C;
                *(v237 + 72) = v231;
                *(v237 + 80) = sub_1C734A788;
                *(v237 + 88) = v232;
                v238 = v408;
                *(v237 + 96) = sub_1C734A788;
                *(v237 + 104) = v233;
                *(v237 + 112) = sub_1C734A77C;
                *(v237 + 120) = v236;
                swift_setDeallocating();
                sub_1C6FDE6C8();
                if (!os_log_type_enabled(v238, v234))
                {

                  v136 = v443;
LABEL_201:
                  v169 = v432;
                  goto LABEL_202;
                }

                v239 = swift_slowAlloc();
                *&v473[0] = swift_slowAlloc();
                *v239 = v398;
                v240 = 0xE600000000000000;
                v169 = v432;
                v241 = OUTLINED_FUNCTION_0_144();
                switch(v421)
                {
                  case 1:
                    v241 = OUTLINED_FUNCTION_0_144() & 0xFFFFFFFFFFFFLL | 0x6741000000000000;
                    v242 = 0x6570795465;
                    goto LABEL_223;
                  case 2:
                    v240 = 0xE400000000000000;
                    v241 = 1702125924;
                    break;
                  case 3:
                    OUTLINED_FUNCTION_188();
                    v240 = v293 + 20;
                    v241 = OUTLINED_FUNCTION_4_82() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
                    break;
                  case 4:
                    OUTLINED_FUNCTION_437();
                    v240 = v290 + 1529;
                    v241 = OUTLINED_FUNCTION_4_82() & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
                    break;
                  case 5:
                    v241 = 0x6E6F73616573;
                    break;
                  case 6:
                    v240 = 0xE800000000000000;
                    v292 = 1633906540;
                    goto LABEL_220;
                  case 7:
                    v241 = OUTLINED_FUNCTION_25_40();
                    v240 = 0xEF6E6F697461636FLL;
                    break;
                  case 8:
                    v240 = 0xE400000000000000;
                    v241 = 1952540791;
                    break;
                  case 9:
                    v241 = OUTLINED_FUNCTION_22_56();
                    v240 = 0xEB00000000746E65;
                    break;
                  case 10:
                    v241 = OUTLINED_FUNCTION_0_144() & 0xFFFFFFFFFFFFLL | 0x6C61000000000000;
                    v242 = 0x746E657645;
LABEL_223:
                    v240 = v242 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                    break;
                  case 11:
                    v241 = OUTLINED_FUNCTION_34_0() | 0x7469546300000000;
                    v240 = 0xEA0000000000656CLL;
                    break;
                  case 12:
                    OUTLINED_FUNCTION_207();
                    v240 = v291 + 1284;
                    v241 = OUTLINED_FUNCTION_34_0() | 0x7472416300000000;
                    break;
                  case 13:
                    OUTLINED_FUNCTION_437();
                    v240 = v294 + 6;
                    v241 = OUTLINED_FUNCTION_34_0() | 0x6E65476300000000;
                    break;
                  case 14:
                    v240 = 0xE400000000000000;
                    v241 = 1685024621;
                    break;
                  case 15:
                    v240 = 0xE800000000000000;
                    v292 = 1634891108;
LABEL_220:
                    v241 = v292 | 0x6E6F697400000000;
                    break;
                  case 16:
                    v241 = 0x706972547369;
                    break;
                  case 17:
                    v241 = OUTLINED_FUNCTION_26_42();
                    v240 = 0xE900000000000065;
                    break;
                  case 18:
                    OUTLINED_FUNCTION_188();
                    v240 = v295 + 13;
                    v241 = OUTLINED_FUNCTION_21_5();
                    break;
                  default:
                    break;
                }

                v296 = sub_1C6F765A4(v241, v240, v473);

                *(v239 + 4) = v296;
                *(v239 + 12) = 2080;
                *(v239 + 14) = sub_1C6F765A4(v423, v424, v473);
                _os_log_impl(&dword_1C6F5C000, v238, v234, "Skip this %s attribute (%s) because it is present in optionalized token list", v239, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_109();
                OUTLINED_FUNCTION_109();

                v136 = v443;
LABEL_202:
                v176 = (v433 + 1);
                if (v433 + 1 == v428)
                {
                  goto LABEL_226;
                }

                break;
              default:
                goto LABEL_149;
            }
          }
        }

LABEL_226:

        v297 = v423;
        v298 = v424;
        QueryGenerator.rewrite(annotatedQueryComponents:substring:range:)(v136, v423);
        v299 = *(v430 + v136);
        if (*(v299 + 16))
        {
          v300 = sub_1C754E2FC();
          OUTLINED_FUNCTION_12();
          v302 = v399;
          (*(v301 + 16))(v399, v136, v300);
          __swift_storeEnumTagSinglePayload(v302, 0, 1, v300);
          v303 = objc_allocWithZone(MEMORY[0x1E6978A78]);
          sub_1C75504FC();
          sub_1C75504FC();
          v304 = sub_1C7349A54(v297, v298, v302, v299);
          v305 = objc_allocWithZone(MEMORY[0x1E6978A50]);
          v433 = v304;
          v306 = [v305 initWithQueryToken_];
          v307 = *(v136 + v422);
          v150 = *(v136 + v396);
          sub_1C75504FC();
          v308 = v306;
          sub_1C75504FC();
          v309 = [v308 suggestion];
          if (v309)
          {
            v310 = v309;
            v311 = [objc_opt_self() PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType_];
            static StoryGenerationUtilities.queryTokenCategoryTypeString(for:)(v311, __dst);
            sub_1C72D5B04();
            v313 = v312;

            goto LABEL_236;
          }

          v337 = [v308 QUToken];
          if (v337)
          {
            v342 = v337;
            v297 = v423;
            v298 = v424;
            sub_1C72D5FAC(v337, v423, v424, v307, v338, v339, v340, v341, v396, v397, v398, *(&v398 + 1), v399, v400, v401, *(&v401 + 1), v402, v403, v404, *(&v404 + 1));
            v313 = v343;

LABEL_236:
            v136 = v443;
          }

          else
          {
            v313 = MEMORY[0x1E69E7CC0];
            v136 = v443;
            v297 = v423;
            v298 = v424;
          }

          sub_1C72D533C();
          v345 = v344;
          v347 = v346;

          __dst[0] = 0;

          v460[0] = v345;
          v460[1] = v347;
          v460[2] = v297;
          v460[3] = v298;
          v461 = 0;
          v462 = v417;
          v463 = v418;
          v464 = __dst[0];
          v465 = v307;
          v466 = v150;
          v467 = v313;
          v468 = 0;
          v470 = 0;
          v471 = 0;
          v469 = 0;
          v348 = v429;
          sub_1C6FB0BCC();
          v349 = *(*v348 + 16);
          sub_1C6FB1410(v349, v350, v351, v352, v353, v354, v355);

          v135 = v348;
          sub_1C745838C(v349, v460);
          sub_1C734A604(v136);
          goto LABEL_240;
        }

        v314 = sub_1C754FEEC();
        v150 = sub_1C755119C();
        if (os_log_type_enabled(v314, v150))
        {
          v315 = swift_slowAlloc();
          *v315 = 0;
          _os_log_impl(&dword_1C6F5C000, v314, v150, "Unable to create a QueryToken object because there is no suggestion nor metadata", v315, 2u);
          OUTLINED_FUNCTION_109();
        }

        sub_1C734A604(v136);
        v135 = v429;
      }

LABEL_240:
      v92 = v442;
      v152 = v419;
      v153 = v420;
    }
  }

  type metadata accessor for _NSRange(0);
  v431 = v90;
  v434 = 0;
  v91 = 0;
  v92 = MEMORY[0x1E69E7CC8];
  v93 = (v432 + 32);
  v441 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v91 >= *(v432 + 16))
    {
      goto LABEL_259;
    }

    memcpy(__dst, v93, 0x48uLL);
    v94 = *&__dst[16];
    v95 = *&__dst[24] - *&__dst[16];
    if (__OFSUB__(*&__dst[24], *&__dst[16]))
    {
      break;
    }

    v436 = v93;
    v442 = v92;
    OUTLINED_FUNCTION_30_37();
    sub_1C6F6E5B4(v434, 0);
    v96 = v441;
    swift_isUniquelyReferenced_nonNull_native();
    *&v473[0] = v96;
    OUTLINED_FUNCTION_29_35();
    OUTLINED_FUNCTION_31_1();
    if (__OFADD__(v99, v100))
    {
      goto LABEL_261;
    }

    v101 = v97;
    v102 = v98;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC50, &qword_1C7584318);
    v104 = OUTLINED_FUNCTION_27_42(v103);
    v105 = *&v473[0];
    if (v104)
    {
      v106 = OUTLINED_FUNCTION_29_35();
      if ((v102 & 1) != (v107 & 1))
      {
        goto LABEL_273;
      }

      v101 = v106;
    }

    if ((v102 & 1) == 0)
    {
      OUTLINED_FUNCTION_2_27(v105 + 8 * (v101 >> 6));
      v109 = (v108 + 16 * v101);
      *v109 = v94;
      v109[1] = v95;
      *(*(v105 + 56) + 8 * v101) = MEMORY[0x1E69E7CC0];
      v110 = *(v105 + 16);
      v111 = __OFADD__(v110, 1);
      v112 = v110 + 1;
      if (v111)
      {
        goto LABEL_266;
      }

      *(v105 + 16) = v112;
    }

    v113 = *(v105 + 56);
    v114 = *(v113 + 8 * v101);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v113 + 8 * v101) = v114;
    v441 = v105;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C6FB2420(0, *(v114 + 16) + 1, 1, v114);
      v114 = v137;
      *(v113 + 8 * v101) = v137;
    }

    v117 = *(v114 + 16);
    v116 = *(v114 + 24);
    v435 = v91;
    if (v117 >= v116 >> 1)
    {
      OUTLINED_FUNCTION_15(v116);
      OUTLINED_FUNCTION_116_0();
      sub_1C6FB2420(v138, v139, v140, v114);
      v114 = v141;
      *(v113 + 8 * v101) = v141;
    }

    v119 = *&__dst[32];
    v118 = *&__dst[40];
    *(v114 + 16) = v117 + 1;
    memcpy((v114 + 72 * v117 + 32), __dst, 0x48uLL);
    OUTLINED_FUNCTION_30_37();
    sub_1C75504FC();
    v120 = v442;
    swift_isUniquelyReferenced_nonNull_native();
    *&v473[0] = v120;
    OUTLINED_FUNCTION_29_35();
    OUTLINED_FUNCTION_31_1();
    if (__OFADD__(v123, v124))
    {
      goto LABEL_262;
    }

    v125 = v121;
    v126 = v122;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC58, &qword_1C7584320);
    if (sub_1C7551A2C())
    {
      v127 = OUTLINED_FUNCTION_29_35();
      if ((v126 & 1) != (v128 & 1))
      {
        goto LABEL_273;
      }

      v125 = v127;
    }

    v92 = *&v473[0];
    if (v126)
    {
      v129 = (*(*&v473[0] + 56) + 16 * v125);
      *v129 = v119;
      v129[1] = v118;
    }

    else
    {
      OUTLINED_FUNCTION_2_27(*&v473[0] + 8 * (v125 >> 6));
      v131 = (v130 + 16 * v125);
      *v131 = v94;
      v131[1] = v95;
      v132 = (*(v92 + 56) + 16 * v125);
      *v132 = v119;
      v132[1] = v118;
      v133 = *(v92 + 16);
      v111 = __OFADD__(v133, 1);
      v134 = v133 + 1;
      if (v111)
      {
        goto LABEL_267;
      }

      *(v92 + 16) = v134;
    }

    v91 = v435 + 1;
    sub_1C7316F68(__dst);
    v93 = v436 + 72;
    v434 = sub_1C6F86C50;
    v135 = v429;
    v136 = v443;
    if (v433 == v91)
    {
      goto LABEL_62;
    }
  }

LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
LABEL_268:
  __break(1u);
LABEL_269:
  __break(1u);
LABEL_270:
  __break(1u);
LABEL_271:
  __break(1u);
LABEL_272:
  __break(1u);
LABEL_273:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void sub_1C73469F4(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FD8, &unk_1C7575C30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v138 = &v122 - v5;
  v141 = sub_1C754E2FC();
  v6 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v140 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1C754DF6C();
  v8 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v148 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  v133 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v143 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v147 = &v122 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v135 = &v122 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v134 = &v122 - v17;
  v18 = *a1;
  v19 = a1[1];
  v20 = a2 + 64;
  v21 = 1 << *(a2 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a2 + 64);
  v24 = (v21 + 63) >> 6;
  v25 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v25 = *a1;
  }

  v26 = 7;
  if (((v19 >> 60) & ((v18 & 0x800000000000000) == 0)) != 0)
  {
    v26 = 11;
  }

  v151 = v26 | (v25 << 16);
  v152 = v18;
  v142 = v8;
  v146 = (v8 + 32);
  v137 = (v6 + 16);
  v136 = (v6 + 8);
  v150 = a2;
  sub_1C75504FC();
  v27 = 0;
  v132 = xmmword_1C75604F0;
  v139 = xmmword_1C755BAB0;
  v149 = MEMORY[0x1E69E7CC0];
  while (v23)
  {
LABEL_13:
    v29 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v30 = v29 | (v27 << 6);
    v31 = (*(v150 + 48) + 16 * v30);
    v33 = *v31;
    v32 = v31[1];
    v34 = *(*(v150 + 56) + 8 * v30);
    sub_1C755090C();
    if ((v35 & 1) == 0)
    {
      if (__OFADD__(v33, v32))
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        return;
      }

      sub_1C755090C();
      if ((v36 & 1) == 0)
      {
        v145 = v32;
        v37 = v34;
        sub_1C75504FC();
        v38 = sub_1C75507EC();
        if (v39 & 1) != 0 || (v40 = v38, sub_1C75504FC(), v41 = sub_1C75507EC(), (v42))
        {
LABEL_33:
        }

        else
        {
          if (v41 >> 14 < v40 >> 14)
          {
            goto LABEL_74;
          }

          v43 = sub_1C755098C();
          v131 = MEMORY[0x1CCA5CC40](v43);
          v45 = v44;

          v46 = [v37 categoriesType];
          if ((v46 - 1) < 3)
          {
            goto LABEL_28;
          }

          if (v46 == 4)
          {
            v48 = 1;
          }

          else
          {
            if (v46 != 7 && v46 != 9)
            {
              if (v46 != 13)
              {
                if (v46 != 44)
                {
                  goto LABEL_32;
                }

                v48 = 8;
                goto LABEL_31;
              }

LABEL_28:
              v48 = 4;
              goto LABEL_31;
            }

            v48 = 3;
          }

LABEL_31:
          v49 = [objc_opt_self() entityCategoryTypeKeyForEntityTypeCategory_];
          if (!v49)
          {
LABEL_32:

            goto LABEL_33;
          }

          v50 = v49;
          v124 = sub_1C755068C();
          v123 = v51;

          v52 = v131;
          v127 = v37;
          v125 = v48;
          v126 = v45;
          if (v48 == 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC70, &unk_1C7584330);
            v56 = (*(v133 + 80) + 32) & ~*(v133 + 80);
            v129 = *(v133 + 72);
            v122 = swift_allocObject();
            *(v122 + 16) = v132;
            v57 = [v37 startDate];
            if (v57)
            {
              v58 = v57;
              v59 = v134;
              sub_1C754DF2C();

              v60 = v59;
              v61 = 0;
              v62 = v143;
            }

            else
            {
              v61 = 1;
              v62 = v143;
              v60 = v134;
            }

            v63 = (v122 + v56);
            v64 = 1;
            v65 = v60;
            __swift_storeEnumTagSinglePayload(v60, v61, 1, v144);
            v128 = v63;
            sub_1C6FF51C8(v65, v63);
            v66 = [v127 endDate];
            if (v66)
            {
              v67 = v66;
              v68 = v135;
              sub_1C754DF2C();

              v64 = 0;
            }

            else
            {
              v68 = v135;
            }

            v69 = v144;
            __swift_storeEnumTagSinglePayload(v68, v64, 1, v144);
            sub_1C6FF51C8(v68, v128 + v129);
            v70 = 0;
            v71 = 0;
            v72 = MEMORY[0x1E69E7CC0];
            do
            {
              LODWORD(v130) = v70;
              v73 = v147;
              sub_1C7033844(v128 + v71 * v129, v147);
              sub_1C6FF51C8(v73, v62);
              if (__swift_getEnumTagSinglePayload(v62, 1, v69) == 1)
              {
                sub_1C6FD7FC8(v62, &unk_1EC219230, &unk_1C7563720);
              }

              else
              {
                v74 = v62;
                v75 = *v146;
                (*v146)(v148, v74, v69);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1C6FB3608(0, *(v72 + 16) + 1, 1, v72);
                  v72 = v78;
                }

                v77 = *(v72 + 16);
                v76 = *(v72 + 24);
                if (v77 >= v76 >> 1)
                {
                  sub_1C6FB3608(v76 > 1, v77 + 1, 1, v72);
                  v72 = v79;
                }

                *(v72 + 16) = v77 + 1;
                v69 = v144;
                v75((v72 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v77), v148, v144);
                v62 = v143;
              }

              v70 = 1;
              v71 = 1;
            }

            while ((v130 & 1) == 0);
            swift_setDeallocating();
            sub_1C6FDCAFC();
            sub_1C71BB320();
            v54 = v80;

            v55 = v126;
          }

          else if (v48 == 4)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
            v54 = swift_allocObject();
            *(v54 + 16) = v139;
            *(v54 + 56) = MEMORY[0x1E69E6158];
            *(v54 + 32) = v52;
            *(v54 + 40) = v45;
            v55 = v45;
            sub_1C75504FC();
          }

          else
          {
            if (v48 == 3 && (v53 = sub_1C71CCABC(v37)) != 0)
            {
              v54 = sub_1C71BA98C(v53);
            }

            else
            {
              v54 = MEMORY[0x1E69E7CC0];
            }

            v55 = v45;
          }

          v81 = v140;
          sub_1C754E2CC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC68, &qword_1C7584328);
          inited = swift_initStackObject();
          *(inited + 16) = v139;
          v83 = v123;
          *(inited + 32) = v124;
          *(inited + 40) = v83;
          *(inited + 48) = v54;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219750, &qword_1C756A310);
          v130 = sub_1C75504DC();
          v84 = v138;
          v85 = v141;
          (*v137)(v138, v81, v141);
          __swift_storeEnumTagSinglePayload(v84, 0, 1, v85);
          v86 = objc_allocWithZone(MEMORY[0x1E6978A78]);
          sub_1C75504FC();
          v87 = sub_1C7349A54(v131, v55, v84, v130);
          sub_1C6F65BE8(0, &qword_1EDD0CDB0, 0x1E6978A50);
          v88 = v127;
          v128 = v87;
          v129 = v88;
          v89 = sub_1C734406C(v88, v87);
          v90 = [v89 suggestion];
          if (v90)
          {
            v91 = v90;
            v92 = [objc_opt_self() PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType_];
            static StoryGenerationUtilities.queryTokenCategoryTypeString(for:)(v92, &v153);
            v130 = v89;
            sub_1C72D5B04();
            v94 = v93;

            v89 = v130;
          }

          else
          {
            v95 = [v89 QUToken];
            if (v95)
            {
              v100 = v95;
              sub_1C72D5FAC(v95, v131, v55, 0, v96, v97, v98, v99, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, *(&v132 + 1));
              v130 = v101;

              v94 = v130;
            }

            else
            {
              v94 = MEMORY[0x1E69E7CC0];
            }
          }

          sub_1C72D533C();
          v127 = v102;
          v125 = v103;

          v159 = 0;

          v156[0] = v153;
          *(v156 + 3) = *(&v153 + 3);
          LODWORD(v124) = v159;
          v155[0] = *v158;
          *(v155 + 3) = *&v158[3];
          v154[0] = *v157;
          *(v154 + 3) = *&v157[3];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v130 = v94;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C6FB3514();
            v149 = v111;
          }

          v105 = *(v149 + 16);
          if (v105 >= *(v149 + 24) >> 1)
          {
            sub_1C6FB3514();
            v149 = v112;
          }

          (*v136)(v140, v141);
          v106 = v149;
          *(v149 + 16) = v105 + 1;
          v107 = v106 + 120 * v105;
          v108 = v125;
          *(v107 + 32) = v127;
          *(v107 + 40) = v108;
          v109 = v126;
          *(v107 + 48) = v131;
          *(v107 + 56) = v109;
          *(v107 + 64) = 1;
          LODWORD(v109) = *(v156 + 3);
          *(v107 + 65) = v156[0];
          *(v107 + 68) = v109;
          v110 = v145;
          *(v107 + 72) = v33;
          *(v107 + 80) = v110;
          *(v107 + 88) = v124;
          LODWORD(v110) = *(v155 + 3);
          *(v107 + 89) = v155[0];
          *(v107 + 92) = v110;
          *(v107 + 96) = 0;
          *(v107 + 104) = 0;
          *(v107 + 112) = v130;
          *(v107 + 120) = 0;
          LODWORD(v110) = v154[0];
          *(v107 + 124) = *(v154 + 3);
          *(v107 + 121) = v110;
          *(v107 + 128) = 0;
          *(v107 + 136) = 0;
          *(v107 + 144) = 0;
        }
      }
    }
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (v28 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v28);
    ++v27;
    if (v23)
    {
      v27 = v28;
      goto LABEL_13;
    }
  }

  v113 = sub_1C754FEEC();
  v114 = sub_1C75511BC();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v153 = v116;
    *v115 = 136642819;
    v117 = sub_1C75504FC();
    v118 = MEMORY[0x1CCA5D090](v117, &type metadata for QueryToken);
    v120 = v119;

    v121 = sub_1C6F765A4(v118, v120, &v153);

    *(v115 + 4) = v121;
    _os_log_impl(&dword_1C6F5C000, v113, v114, "User grounded query tokens = %{sensitive}s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v116);
    MEMORY[0x1CCA5F8E0](v116, -1, -1);
    MEMORY[0x1CCA5F8E0](v115, -1, -1);
  }
}

uint64_t sub_1C734781C(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      v3 = 1936876912;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
    case 2:
      return 0x67416E6F73726570;
    case 3:
      return 1702125924;
    case 4:
      return 0x6144664F74726170;
    case 5:
      return 0x6557664F74726170;
    case 6:
      v3 = 1935762803;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
    case 7:
      v4 = 1633906540;
      goto LABEL_13;
    case 8:
      return 0x4C636972656E6567;
    case 9:
      return 1952540791;
    case 10:
      return 0x764563696C627570;
    case 11:
      return 0x6C616E6F73726570;
    case 12:
      return 0x746954636973756DLL;
    case 13:
      return 0x747241636973756DLL;
    case 14:
      return 0x6E6547636973756DLL;
    case 15:
      return 1685024621;
    case 16:
      v4 = 1634891108;
LABEL_13:
      result = v4 | 0x6E6F697400000000;
      break;
    case 17:
      result = 0x706972547369;
      break;
    case 18:
      result = 0x6D69546C6C417369;
      break;
    case 19:
      result = 0x6564724F74726F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7347A3C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v6 = v3;
    v7 = *(&unk_1F46A8858 + v4 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C75604F0;
    v9 = inited;
    v10 = 0xEC00000065636E61;
    v11 = 0x746E696175716361;
    switch(v7)
    {
      case 1:
        v10 = 0xE700000000000000;
        v12 = 0x6568746F7262;
        goto LABEL_6;
      case 2:
        v10 = 0xE500000000000000;
        v11 = 0x646C696863;
        break;
      case 3:
        v11 = 0xD000000000000015;
        v10 = 0x80000001C7596B70;
        break;
      case 4:
        v10 = 0xE800000000000000;
        v14 = 0x6B726F776F63;
        goto LABEL_17;
      case 5:
        v10 = 0xE800000000000000;
        v14 = 0x746867756164;
LABEL_17:
        v11 = v14 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
        break;
      case 6:
        v11 = 0xD000000000000013;
        v10 = 0x80000001C7596BA0;
        break;
      case 7:
        v10 = 0xE600000000000000;
        v11 = 0x796C696D6166;
        break;
      case 8:
        v10 = 0xE600000000000000;
        v13 = 1752457574;
        goto LABEL_22;
      case 9:
        v10 = 0xE600000000000000;
        v11 = 0x646E65697266;
        break;
      case 10:
        v11 = 0xD000000000000010;
        v10 = 0x80000001C7596BD0;
        break;
      case 11:
        v10 = 0xE200000000000000;
        v11 = 25965;
        break;
      case 12:
        v11 = 0x726568746F6DLL;
        v10 = 0xE600000000000000;
        break;
      case 13:
        v10 = 0xE600000000000000;
        v11 = 0x746E65726170;
        break;
      case 14:
        v10 = 0xE700000000000000;
        v12 = 0x656E74726170;
LABEL_6:
        v11 = v12 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
        break;
      case 15:
        v10 = 0xE300000000000000;
        v11 = 7237491;
        break;
      case 16:
        v10 = 0xE600000000000000;
        v13 = 1953720691;
LABEL_22:
        v11 = v13 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
        break;
      case 17:
        v10 = 0xE300000000000000;
        v11 = 7367030;
        break;
      default:
        break;
    }

    *(inited + 32) = v11;
    *(inited + 40) = v10;
    LOBYTE(v59[0]) = v7;
    *(inited + 48) = StoryPersonRelationshipType.pluralValue.getter();
    *(v9 + 56) = v15;
    v16 = *(v5 + 16);
    if (__OFADD__(v16, 2))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || (v17 = *(v5 + 24) >> 1, v17 < v16 + 2))
    {
      sub_1C6FB1814();
      v5 = v18;
      v17 = *(v18 + 24) >> 1;
    }

    if (v17 - *(v5 + 16) < 2)
    {
      goto LABEL_53;
    }

    swift_arrayInitWithCopy();

    v19 = *(v5 + 16);
    v20 = __OFADD__(v19, 2);
    v21 = v19 + 2;
    if (v20)
    {
      goto LABEL_54;
    }

    *(v5 + 16) = v21;
    v3 = 1;
    v4 = 1u;
    if (v6)
    {
      v59[0] = sub_1C75506FC();
      v59[1] = v22;
      MEMORY[0x1EEE9AC00](v59[0]);
      v23 = sub_1C70735F4();

      if (v23)
      {
        sub_1C75504FC();
        v24 = sub_1C754FEEC();
        v25 = sub_1C755117C();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v59[0] = v27;
          *v26 = 136642819;
          *(v26 + 4) = sub_1C6F765A4(a1, a2, v59);
          _os_log_impl(&dword_1C6F5C000, v24, v25, "Person not disambiguated because the substring '%{sensitive}s' refers to a relationship group, not an individual", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v27);
          MEMORY[0x1CCA5F8E0](v27, -1, -1);
          MEMORY[0x1CCA5F8E0](v26, -1, -1);
        }

        return MEMORY[0x1E69E7CC0];
      }

      v29 = *(a3 + 16);
      v30 = MEMORY[0x1E69E7CC8];
      v31 = a3 + 96;
      if (v29)
      {
        do
        {
          v58 = v29;
          v32 = *(v31 - 64);
          v33 = *(v31 - 56);
          v34 = *(v31 - 16);
          swift_bridgeObjectRetain_n();
          sub_1C75504FC();
          swift_bridgeObjectRetain_n();
          sub_1C75504FC();
          sub_1C75504FC();
          swift_isUniquelyReferenced_nonNull_native();
          v59[0] = v30;
          v35 = sub_1C6F78124(v32, v33);
          if (__OFADD__(v30[2], (v36 & 1) == 0))
          {
            goto LABEL_55;
          }

          v37 = v35;
          v38 = v36;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DC0, &qword_1C755CB70);
          if (sub_1C7551A2C())
          {
            v39 = sub_1C6F78124(v32, v33);
            if ((v38 & 1) != (v40 & 1))
            {
              goto LABEL_57;
            }

            v37 = v39;
          }

          if (v38)
          {

            v30 = v59[0];
            *(*(v59[0] + 56) + 8 * v37) = v34;
          }

          else
          {
            v30 = v59[0];
            *(v59[0] + 8 * (v37 >> 6) + 64) |= 1 << v37;
            v41 = (v30[6] + 16 * v37);
            *v41 = v32;
            v41[1] = v33;
            *(v30[7] + 8 * v37) = v34;

            v42 = v30[2];
            v20 = __OFADD__(v42, 1);
            v43 = v42 + 1;
            if (v20)
            {
              goto LABEL_56;
            }

            v30[2] = v43;
          }

          v29 = v58 - 1;
          v31 += 72;
        }

        while (v58 != 1);
      }

      v44 = *(v55 + *(type metadata accessor for QueryGenerator(0) + 24));
      if ([objc_opt_self() enableQueryAnnotationPipelineInPhotos])
      {
        v45 = sub_1C6FE3768();
        if (v45)
        {
          v46 = v45;

LABEL_50:
          v28 = sub_1C7348BB4(v46);

          return v28;
        }

        sub_1C6FE3768();

        v51 = objc_opt_self();
        v48 = sub_1C755065C();
        v49 = sub_1C7550B3C();

        v50 = [v51 performDisambiguationForPerson:v48 usingGroundedNames:v49 photoLibrary:v44];
      }

      else
      {
        v47 = objc_opt_self();
        v48 = sub_1C755065C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
        v49 = sub_1C755048C();

        v50 = [v47 performDisambiguationForPersonName:v48 expansionStringValuesByCSAttributedEntityType:v49 photoLibrary:v44];
      }

      v52 = v50;

      v46 = sub_1C7550B5C();
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void sub_1C7348240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = sub_1C755065C();
  v6 = sub_1C7550B3C();
  v7 = [v4 performDisambiguationForLocationName:v5 expansionStringValues:v6 allowedSearchIndexCategories:0 photoLibrary:*(v3 + *(type metadata accessor for QueryGenerator(0) + 24))];

  sub_1C6F65BE8(0, &qword_1EDD06918, 0x1E6978A48);
  sub_1C71AFF48();
  v8 = sub_1C7550F8C();

  v43 = MEMORY[0x1E69E7CD0];
  if ((v8 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C755165C();
    sub_1C7550FEC();
    v8 = v44;
    v9 = v45;
    v11 = v46;
    v10 = v47;
    v12 = v48;
  }

  else
  {
    v13 = -1 << *(v8 + 32);
    v9 = v8 + 56;
    v11 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v8 + 56);
    sub_1C75504FC();
    v10 = 0;
  }

  v16 = (v11 + 64) >> 6;
  v37 = v8;
  v38 = v9;
  if (v8 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v17 = v10;
    v18 = v12;
    v19 = v10;
    if (!v12)
    {
      break;
    }

LABEL_12:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v8 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v21)
    {
LABEL_24:
      sub_1C6F61E88(v8);

      *&v42[0] = sub_1C71CDA68(v43);
      sub_1C75504FC();
      sub_1C7348ACC(v42, sub_1C7422D44, &type metadata for GroundedLocation, sub_1C701BF68, sub_1C70190D8);

      return;
    }

    while (1)
    {
      v40 = v20;
      v39 = [v21 matchType];
      v23 = [v21 text];
      v24 = sub_1C755068C();
      v26 = v25;

      v27 = [v21 normalizedText];
      v28 = sub_1C755068C();
      v30 = v29;

      v31 = sub_1C734A718(v21);
      v33 = v32;
      if (v32)
      {
        v34 = v31;
        v35 = HIBYTE(v32) & 0xF;
        if ((v32 & 0x2000000000000000) == 0)
        {
          v35 = v31 & 0xFFFFFFFFFFFFLL;
        }

        if (!v35)
        {

          v34 = 0;
          v33 = 0;
        }
      }

      else
      {
        v34 = 0;
      }

      *&v42[0] = v24;
      *(&v42[0] + 1) = v26;
      *&v41[0] = 8236;
      *(&v41[0] + 1) = 0xE200000000000000;
      sub_1C6FB5E8C();
      v36 = sub_1C755152C();
      *&v49 = v24;
      *(&v49 + 1) = v26;
      v50 = v28;
      v51 = v30;
      v52 = v36;
      v53 = v34;
      v54 = v33;
      v55 = v39;
      sub_1C70F4DB8(v41, &v49);

      v42[0] = v41[0];
      v42[1] = v41[1];
      v42[2] = v41[2];
      v42[3] = v41[3];
      sub_1C7080348(v42);
      v10 = v19;
      v12 = v40;
      v8 = v37;
      v9 = v38;
      if ((v37 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v22 = sub_1C75516FC();
      if (v22)
      {
        *&v41[0] = v22;
        swift_dynamicCast();
        v21 = *&v42[0];
        v19 = v10;
        v20 = v12;
        if (*&v42[0])
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_24;
    }

    v18 = *(v9 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_12;
    }
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1C7348660@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FD8, &unk_1C7575C30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  if (qword_1EC213FB0 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC21A140;
  v6 = *algn_1EC21A148;
  sub_1C75504FC();
  sub_1C754E2CC();
  v7 = sub_1C754E2FC();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219750, &qword_1C756A310);
  v8 = sub_1C75504DC();
  objc_allocWithZone(MEMORY[0x1E6978A78]);
  sub_1C75504FC();
  v9 = sub_1C7349A54(v5, v6, v4, v8);
  v10 = [objc_allocWithZone(MEMORY[0x1E6978A50]) initWithQueryToken_];
  v11 = [v10 suggestion];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType_];
    static StoryGenerationUtilities.queryTokenCategoryTypeString(for:)(v13, &v27 + 7);
    sub_1C72D5B04();
  }

  else
  {
    v15 = [v10 QUToken];
    if (!v15)
    {
      v20 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v12 = v15;
    sub_1C72D5FAC(v15, v5, v6, 0, v16, v17, v18, v19, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, vars0, vars8);
  }

  v20 = v14;

LABEL_8:
  sub_1C72D533C();
  v22 = v21;
  v24 = v23;

  LOBYTE(v28) = 1;

  v26 = v28;
  *a1 = v22;
  *(a1 + 8) = v24;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v26;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v20;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  return result;
}

uint64_t sub_1C73488F8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = 0xE500000000000000;
  v5 = 0x7473726966;
  if (v3 != 1)
  {
    v5 = 1953718636;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701736302;
  }

  if (*a1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2172D0, &qword_1C75710C0);
  v8 = *(type metadata accessor for QueryTokenSuggestion(0) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C755BAB0;
  *(v10 + v9) = v3;
  type metadata accessor for QueryTokenCategoryType(0);
  swift_storeEnumTagMultiPayload();
  sub_1C72D533C();
  v12 = v11;
  v14 = v13;

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = v10;
  *(a2 + 88) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  return result;
}

uint64_t sub_1C7348ACC(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1C7349B7C(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_1C7348B68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 16);
  return sub_1C75504FC();
}

uint64_t sub_1C7348BB4(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C7348C0C(a1, v1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

void sub_1C7348C0C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!*(a1 + 16))
  {
    *a3 = a1;
    sub_1C75504FC();
    return;
  }

  sub_1C6F65BE8(0, &qword_1EDD100F0, 0x1E6978980);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1C75504FC();
  sub_1C706D154();
  v6 = sub_1C734A678(v5, ObjCClassFromMetadata);
  if (!v6)
  {
    goto LABEL_49;
  }

  v7 = v6;
  v8 = a2 + *(type metadata accessor for QueryGenerator(0) + 24);
  v9 = *(v8 + 8);
  v10 = *v8;

  v11 = [v10 librarySpecificFetchOptions];
  [v11 setSharingFilter_];

  v93 = MEMORY[0x1E69E7CC0];
  sub_1C755195C();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  sub_1C755192C();
  sub_1C755196C();
  sub_1C755197C();
  sub_1C755193C();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  sub_1C755192C();
  sub_1C755196C();
  sub_1C755197C();
  sub_1C755193C();
  sub_1C7082AAC(v93, v11);
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C75604F0;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1C6F6D524();
  v14 = MEMORY[0x1E69E6530];
  v15 = MEMORY[0x1E69E65A8];
  strcpy((v12 + 32), "verifiedType");
  *(v12 + 45) = 0;
  *(v12 + 46) = -5120;
  *(v12 + 96) = v14;
  *(v12 + 104) = v15;
  *(v12 + 64) = v13;
  *(v12 + 72) = -2;
  v16 = sub_1C755112C();
  [v11 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C755BAB0;
  *(v17 + 32) = sub_1C755068C();
  *(v17 + 40) = v18;
  sub_1C6FCA0EC(v17, v11);
  [v11 setIsExclusivePredicate_];
  v19 = objc_opt_self();
  sub_1C71CD85C(v7);
  v20 = sub_1C7550B3C();

  v85 = v19;
  v79 = v11;
  v21 = [v19 fetchPersonsWithLocalIdentifiers:v20 options:v11];

  v22 = [v21 fetchedObjects];
  if (!v22)
  {
LABEL_46:
    v75 = sub_1C754FEEC();
    v76 = sub_1C755117C();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_1C6F5C000, v75, v76, "No tombstoned person uuids, immediately return the current grounded person uuids", v77, 2u);
      MEMORY[0x1CCA5F8E0](v77, -1, -1);
    }

LABEL_49:
    *a3 = a1;
    sub_1C75504FC();
    return;
  }

  v23 = sub_1C7550B5C();

  v24 = sub_1C6FB6304();
  v25 = 0;
  v91 = MEMORY[0x1E69E7CC0];
  while (v24 != v25)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1CCA5DDD0](v25, v23);
    }

    else
    {
      if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v26 = *(v23 + 8 * v25 + 32);
    }

    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      return;
    }

    v28 = v26;
    v29 = [v28 uuid];
    if (v29)
    {
      v30 = v29;
      v31 = sub_1C755068C();
      v88 = v32;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v91 = v35;
      }

      v33 = *(v91 + 16);
      if (v33 >= *(v91 + 24) >> 1)
      {
        sub_1C6FB1814();
        v91 = v36;
      }

      *(v91 + 16) = v33 + 1;
      v34 = v91 + 16 * v33;
      *(v34 + 32) = v31;
      *(v34 + 40) = v88;
      v25 = v27;
    }

    else
    {

      ++v25;
    }
  }

  v37 = v91;
  if (!*(v91 + 16))
  {

    goto LABEL_46;
  }

  sub_1C75504FC();
  sub_1C706D154();
  sub_1C74C3924();
  v93 = v38;
  v83 = *(v91 + 16);
  if (v83)
  {
    v39 = 0;
    v82 = *v8;
    v81 = *(v8 + 8);
    v40 = MEMORY[0x1E69E7CC0];
    while (v39 < *(v37 + 16))
    {
      v41 = (v91 + 32 + 16 * v39);
      v43 = *v41;
      v42 = v41[1];
      sub_1C75504FC();
      v44 = v82;

      v45 = [v44 librarySpecificFetchOptions];
      [v45 setSharingFilter_];

      v92[0] = v40;
      sub_1C755195C();
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
      sub_1C7082AAC(v92[0], v45);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1C755BAB0;
      *(v46 + 32) = sub_1C755068C();
      *(v46 + 40) = v47;
      sub_1C6FCA0EC(v46, v45);
      v89 = v43;
      v48 = sub_1C755065C();
      v49 = [v85 fetchFinalMergeTargetPersonsForPersonWithUUID:v48 options:v45];

      v50 = [v49 fetchedObjects];
      if (v50)
      {
        v86 = v45;
        v87 = v39;
        v51 = sub_1C7550B5C();

        v52 = sub_1C6FB6304();
        v53 = 0;
        v54 = MEMORY[0x1E69E7CC0];
        while (v52 != v53)
        {
          if ((v51 & 0xC000000000000001) != 0)
          {
            v55 = MEMORY[0x1CCA5DDD0](v53, v51);
          }

          else
          {
            if (v53 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_53;
            }

            v55 = *(v51 + 8 * v53 + 32);
          }

          v56 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          v57 = v55;
          v58 = [v57 uuid];
          if (v58)
          {
            v59 = v58;
            v60 = sub_1C755068C();
            v84 = v61;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C6FB1814();
              v54 = v64;
            }

            v62 = *(v54 + 16);
            if (v62 >= *(v54 + 24) >> 1)
            {
              sub_1C6FB1814();
              v54 = v65;
            }

            *(v54 + 16) = v62 + 1;
            v63 = v54 + 16 * v62;
            *(v63 + 32) = v60;
            *(v63 + 40) = v84;
            v53 = v56;
          }

          else
          {

            ++v53;
          }
        }

        sub_1C75504FC();
        sub_1C75504FC();
        v66 = sub_1C754FEEC();
        v67 = sub_1C75511BC();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v92[0] = v69;
          *v68 = 136315394;
          v70 = sub_1C6F765A4(v89, v42, v92);

          *(v68 + 4) = v70;
          *(v68 + 12) = 2080;
          v71 = MEMORY[0x1CCA5D090](v54, MEMORY[0x1E69E6158]);
          v73 = sub_1C6F765A4(v71, v72, v92);

          *(v68 + 14) = v73;
          _os_log_impl(&dword_1C6F5C000, v66, v67, "Tombstoned person uuid = %s, final merge target person uuids = %s", v68, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1CCA5F8E0](v69, -1, -1);
          MEMORY[0x1CCA5F8E0](v68, -1, -1);
        }

        else
        {
        }

        v37 = v91;
        v45 = v86;
        v39 = v87;
        sub_1C73978C4(v54);
      }

      else
      {

        v37 = v91;
      }

      v40 = MEMORY[0x1E69E7CC0];
      ++v39;

      if (v39 == v83)
      {

        v74 = v93;
        goto LABEL_51;
      }
    }

    goto LABEL_56;
  }

  v74 = v38;

LABEL_51:
  v78 = sub_1C71CD85C(v74);

  *a3 = v78;
}

void *sub_1C7349674@<X0>(void *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  memcpy(__dst, __src, 0x78uLL);
  v6 = __dst[5];
  v7 = __dst[6];
  v8 = __dst[7];
  memcpy(__srca, __src, sizeof(__srca));
  sub_1C6FCA6E4(__dst, &v12[1]);

  __srca[12] = 0;
  __srca[13] = 0;

  __srca[14] = 0;
  if ((v8 & 1) == 0)
  {
    v9 = sub_1C6FE1538(v6, v7, a2);
    if (v9)
    {
      v10 = v9;
      memcpy(&v12[1], __dst, 0x78uLL);
      sub_1C7349790(v12, &v12[1], v10);
      QueryToken.disambiguate(withUserSuggestion:categoryType:)();
    }
  }

  return memcpy(a3, __srca, 0x78uLL);
}

uint64_t *sub_1C7349790@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>, void *a3@<X1>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v5 = [objc_opt_self() PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType_];
  static StoryGenerationUtilities.queryTokenCategoryTypeString(for:)(v5, v19);
  v6 = LOBYTE(v19[0]);
  if (qword_1EDD0E0A0 != -1)
  {
    swift_once();
  }

  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040, &qword_1C7570ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  v9 = memcpy((inited + 32), __dst, 0x78uLL);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C6FCA6E4(__dst, v19);
  v10 = sub_1C707351C();
  swift_setDeallocating();
  result = sub_1C6FDC98C();
  if (v10)
  {
    sub_1C6FCA6E4(__dst, v19);
    v12 = sub_1C754FEEC();
    v13 = sub_1C755117C();
    sub_1C6FDD548(__dst);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19[0] = v15;
      *v14 = 136643075;
      *(v14 + 4) = sub_1C6F765A4(__dst[2], __dst[3], v19);
      *(v14 + 12) = 2080;
      v16 = QueryTokenCategoryTypeString.rawValue.getter();
      v18 = sub_1C6F765A4(v16, v17, v19);

      *(v14 + 14) = v18;
      _os_log_impl(&dword_1C6F5C000, v12, v13, "Personal event query token %{sensitive}s is disambiguated to %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v15, -1, -1);
      MEMORY[0x1CCA5F8E0](v14, -1, -1);
    }

    result = sub_1C6F9FCE4(v6, 3);
    if (result)
    {
      LOBYTE(v6) = 11;
    }
  }

  *a1 = v6;
  return result;
}

id sub_1C7349A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_1C755065C();

  v9 = sub_1C754E2FC();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v9) != 1)
  {
    v10 = sub_1C754E28C();
    (*(*(v9 - 8) + 8))(a3, v9);
  }

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219750, &qword_1C756A310);
    v11 = sub_1C755048C();
  }

  else
  {
    v11 = 0;
  }

  v12 = [v5 initWithText:v8 entityCategoryTypes:v10 metadata:v11];

  return v12;
}

uint64_t sub_1C7349B7C(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1C7551D7C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v11 = sub_1C7550BBC();
        *(v11 + 16) = v10;
      }

      v12[0] = v11 + 32;
      v12[1] = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

char *sub_1C7349C88(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 120 * a3 - 120;
    v8 = &result[-a3];
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        if ((*(v10 + 176) & 1) == 0 && (*(v10 + 56) & 1) == 0 && *(v10 + 160) >= *(v10 + 40))
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, (v10 + 120), sizeof(__dst));
        memcpy((v10 + 120), v10, 0x78uLL);
        result = memcpy(v10, __dst, 0x78uLL);
        v10 -= 120;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 120;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C7349D70(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 >= v5)
      {
        goto LABEL_28;
      }

      v9 = *a3;
      v10 = *a3 + 120 * v6;
      v11 = (*(v10 + 56) & 1) != 0 ? 1 : *(v9 + 120 * v8 + 56) | (*(v10 + 40) < *(v9 + 120 * v8 + 40));
      v6 = v5 <= v8 + 2 ? v8 + 2 : v5;
      v12 = 120 * v8;
      v13 = (v9 + 120 * v8 + 296);
      for (i = 2; ; ++i)
      {
        if (v8 + i >= v5)
        {
          goto LABEL_19;
        }

        if ((*v13 & 1) == 0 && (*(v13 - 120) & 1) == 0)
        {
          break;
        }

        if ((v11 & 1) == 0)
        {
          v6 = v8 + i;
          goto LABEL_28;
        }

LABEL_17:
        v13 += 120;
      }

      if ((v11 ^ (*(v13 - 2) >= *(v13 - 17))))
      {
        goto LABEL_17;
      }

      v6 = v8 + i;
LABEL_19:
      if (v11)
      {
        if (v6 >= v8)
        {
          if (v8 < v6)
          {
            v15 = 120 * v6 - 120;
            v16 = v6;
            v17 = v8;
            do
            {
              if (v17 != --v16)
              {
                v18 = *a3;
                if (!*a3)
                {
                  goto LABEL_125;
                }

                memcpy(__dst, (v18 + v12), sizeof(__dst));
                memmove((v18 + v12), (v18 + v15), 0x78uLL);
                memcpy((v18 + v15), __dst, 0x78uLL);
              }

              ++v17;
              v15 -= 120;
              v12 += 120;
            }

            while (v17 < v16);
            v5 = a3[1];
          }

          goto LABEL_28;
        }

LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
        break;
      }

LABEL_28:
      if (v6 < v5)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_119;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_120;
          }

          if (v8 + a4 >= v5)
          {
            v19 = v5;
          }

          else
          {
            v19 = v8 + a4;
          }

          if (v19 < v8)
          {
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (v6 != v19)
          {
            v20 = v7;
            v21 = *a3;
            v22 = *a3 + 120 * v6 - 120;
            v23 = v8 - v6;
            do
            {
              v24 = v23;
              v25 = v22;
              do
              {
                if ((*(v25 + 176) & 1) == 0 && (*(v25 + 56) & 1) == 0 && *(v25 + 160) >= *(v25 + 40))
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_122;
                }

                memcpy(__dst, (v25 + 120), sizeof(__dst));
                memcpy((v25 + 120), v25, 0x78uLL);
                memcpy(v25, __dst, 0x78uLL);
                v25 -= 120;
              }

              while (!__CFADD__(v24++, 1));
              ++v6;
              v22 += 120;
              --v23;
            }

            while (v6 != v19);
            v6 = v19;
            v7 = v20;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_118;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, v7[2] + 1, 1, v7);
        v7 = v70;
      }

      v28 = v7[2];
      v27 = v7[3];
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        sub_1C6FB17EC(v27 > 1, v28 + 1, 1, v7);
        v7 = v71;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v8;
      v31[1] = v6;
      v74 = *result;
      if (!*result)
      {
        break;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_67:
            if (v38)
            {
              goto LABEL_108;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_111;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_114;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_116;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_89;
            }

            goto LABEL_82;
          }

          if (v29 < 2)
          {
            goto LABEL_110;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_82:
          if (v53)
          {
            goto LABEL_113;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_115;
          }

          if (v60 < v52)
          {
            goto LABEL_96;
          }

LABEL_89:
          if (v32 - 1 >= v29)
          {
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
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
            goto LABEL_121;
          }

          if (!*a3)
          {
            goto LABEL_124;
          }

          v64 = v7;
          v65 = &v30[2 * v32 - 2];
          v66 = *v65;
          v67 = &v30[2 * v32];
          v68 = v67[1];
          sub_1C734A410((*a3 + 120 * *v65), (*a3 + 120 * *v67), (*a3 + 120 * v68), v74);
          if (v4)
          {
            goto LABEL_101;
          }

          if (v68 < v66)
          {
            goto LABEL_103;
          }

          v69 = v64[2];
          if (v32 > v69)
          {
            goto LABEL_104;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v32 >= v69)
          {
            goto LABEL_105;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v67 + 2, 16 * (v69 - 1 - v32));
          v7 = v64;
          v64[2] = v69 - 1;
          if (v69 <= 2)
          {
            goto LABEL_96;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_106;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_107;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_109;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_112;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_117;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_89;
        }

        goto LABEL_67;
      }

LABEL_96:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v77 = v7;
        goto LABEL_99;
      }
    }

    __break(1u);
    goto LABEL_127;
  }

LABEL_99:
  if (!*result)
  {
LABEL_127:
    __break(1u);
    return;
  }

  sub_1C734A2D8(&v77, *result, a3);
LABEL_101:
}

uint64_t sub_1C734A2D8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1C734A410((*a3 + 120 * *v4), (*a3 + 120 * *v9), (*a3 + 120 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1C734A410(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 120;
  v9 = (a3 - a2) / 120;
  if (v8 < v9)
  {
    sub_1C741E370(a1, (a2 - a1) / 120, a4);
    v10 = &v4[120 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v14 = v7;
        goto LABEL_32;
      }

      if ((v6[56] & 1) != 0 || (v4[56] & 1) != 0 || *(v6 + 5) < *(v4 + 5))
      {
        break;
      }

      v12 = v4;
      v13 = v7 == v4;
      v4 += 120;
      if (!v13)
      {
        goto LABEL_9;
      }

LABEL_10:
      v7 += 120;
    }

    v12 = v6;
    v13 = v7 == v6;
    v6 += 120;
    if (v13)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v7, v12, 0x78uLL);
    goto LABEL_10;
  }

  sub_1C741E370(a2, (a3 - a2) / 120, a4);
  v10 = &v4[120 * v9];
LABEL_17:
  v14 = v6;
  for (v5 -= 120; v10 > v4 && v6 > v7; v5 -= 120)
  {
    if ((*(v10 - 64) & 1) != 0 || (*(v6 - 64) & 1) != 0 || *(v10 - 10) < *(v6 - 10))
    {
      v6 -= 120;
      if (v5 + 120 != v14)
      {
        memmove(v5, v14 - 120, 0x78uLL);
      }

      goto LABEL_17;
    }

    if (v10 != v5 + 120)
    {
      memmove(v5, v10 - 120, 0x78uLL);
    }

    v10 -= 120;
  }

LABEL_32:
  v16 = (v10 - v4) / 120;
  if (v14 != v4 || v14 >= &v4[120 * v16])
  {
    memmove(v14, v4, 120 * v16);
  }

  return 1;
}

__n128 sub_1C734A5D8@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t sub_1C734A604(uint64_t a1)
{
  v2 = type metadata accessor for QueryGenerator.AnnotatedQueryComponents(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C734A678(uint64_t a1, void *a2)
{
  v3 = sub_1C7550F7C();

  v4 = [a2 localIdentifiersWithUUIDs_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1C7550F8C();

  return v5;
}

uint64_t sub_1C734A718(void *a1)
{
  v1 = [a1 lookupIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

id sub_1C734A78C(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 count] < 1)
  {
    return a1;
  }

  sub_1C6FDEC1C();
  v7 = MEMORY[0x1E69E7CC0];
  v8 = sub_1C75504DC();
  v69.n128_u64[0] = [a1 count];
  if ((v69.n128_u64[0] & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    v62 = a2;
    v63 = a3;
    v66 = v7;
    v67 = a1;
    v65 = v3;
    for (i = 0; v69.n128_u64[0] != i; ++i)
    {
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v19 = [v67 objectAtIndexedSubscript_];
      v20 = sub_1C6FCA214(v19);
      if (!v21)
      {
        goto LABEL_40;
      }

      v22 = v20;
      v23 = v21;
      v24 = v19;
      swift_isUniquelyReferenced_nonNull_native();
      v72 = v8;
      v25 = sub_1C6F78124(v22, v23);
      if (__OFADD__(v8[2], (v26 & 1) == 0))
      {
        goto LABEL_37;
      }

      v27 = v25;
      v28 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215188, &unk_1C755C720);
      if (sub_1C7551A2C())
      {
        v29 = sub_1C6F78124(v22, v23);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_41;
        }

        v27 = v29;
      }

      if (v28)
      {

        v8 = v72;
        v31 = *(v72 + 56);
        v32 = *(v31 + 8 * v27);
        *(v31 + 8 * v27) = v24;
      }

      else
      {
        v8 = v72;
        *(v72 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        v33 = (v8[6] + 16 * v27);
        *v33 = v22;
        v33[1] = v23;
        *(v8[7] + 8 * v27) = v24;

        v34 = v8[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_38;
        }

        v8[2] = v36;
      }
    }

    v72 = MEMORY[0x1E69E7CC0];
    v37 = *(v62 + 16);
    if (v37)
    {
      v66 = MEMORY[0x1E69E7CC0];
      v38 = (v62 + 40);
      v39 = &qword_1EC214000;
      v16.n128_u64[0] = 136315138;
      v69 = v16;
      do
      {
        v41 = *(v38 - 1);
        v40 = *v38;
        v42 = v8[2];
        sub_1C75504FC();
        if (v42 && (v43 = sub_1C6F78124(v41, v40), (v44 & 1) != 0))
        {
          v45 = v43;

          v46 = *(v8[7] + 8 * v45);
          MEMORY[0x1CCA5D040]();
          if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C7550B9C();
          }

          sub_1C7550BEC();

          v66 = v72;
        }

        else
        {
          if (v39[6] != -1)
          {
            OUTLINED_FUNCTION_5_77();
            swift_once();
          }

          v47 = sub_1C754FF1C();
          __swift_project_value_buffer(v47, qword_1EC21AC78);
          sub_1C75504FC();
          v48 = sub_1C754FEEC();
          v49 = sub_1C755119C();

          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v71[0] = v51;
            *v50 = v69.n128_u32[0];
            v52 = sub_1C6F765A4(v41, v40, v71);

            *(v50 + 4) = v52;
            _os_log_impl(&dword_1C6F5C000, v48, v49, "Asset %s not found in the fetch result and is part of the orderedUUIDs", v50, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v51);
            OUTLINED_FUNCTION_109();
            v39 = &qword_1EC214000;
            OUTLINED_FUNCTION_109();
          }

          else
          {
          }
        }

        v38 += 2;
        --v37;
      }

      while (v37);
    }

    sub_1C71BA830(v66, v16, v17, v9, v10, v11, v12, v13, v14, v15, v61, v62, v63, v65, v66, v67, v69.n128_i64[0], v69.n128_i64[1], v70, v71[0], v71[1], v72, v73, v74, v75, v76);
    OUTLINED_FUNCTION_98_5();

    v53 = [v68 fetchType];
    if (v53)
    {
      v54 = v53;
      sub_1C755068C();
    }

    v56 = [v68 fetchPropertySets];
    if (v56)
    {
      v57 = v56;
      sub_1C7550F8C();
    }

    objc_allocWithZone(MEMORY[0x1E69788E0]);
    v58 = v64;
    sub_1C71C8A5C();
    v60 = v59;

    return v60;
  }

  return result;
}

uint64_t sub_1C734ACA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C75504FC();
  v5 = sub_1C755097C();
  sub_1C755083C();
  return v5;
}

void sub_1C734AD20()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = sub_1C754DC1C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  v10 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_0();
  v14 = v13 - v12;
  static FreeformStoryDiagnosticsUtils.temporaryDiagnosticsDirectory(_:)();
  if (v0)
  {
LABEL_10:
    OUTLINED_FUNCTION_125();
  }

  else
  {
    v30 = v14;
    v31 = v9;
    v32 = v3;
    v15 = v2 + 64;
    OUTLINED_FUNCTION_11();
    v18 = v17 & v16;
    v20 = (v19 + 63) >> 6;
    v29 = *MEMORY[0x1E6968F70];
    sub_1C75504FC();
    v21 = 0;
    v28 = v20;
    if (!v18)
    {
      goto LABEL_4;
    }

    do
    {
      v22 = v21;
LABEL_7:
      (*(v5 + 104))(v31, v29, v32);
      sub_1C75504FC();
      v23 = OUTLINED_FUNCTION_2_56();
      sub_1C6FEB1B0(v23, v24);
      sub_1C6FB5E8C();
      sub_1C754DD1C();
      (*(v5 + 8))(v31, v32);

      sub_1C754DE1C();
      v18 &= v18 - 1;
      OUTLINED_FUNCTION_7_72();
      v25(v30, v10);
      v26 = OUTLINED_FUNCTION_2_56();
      sub_1C6FC1640(v26, v27);
      v21 = v22;
      v20 = v28;
      v15 = v2 + 64;
    }

    while (v18);
LABEL_4:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {

        goto LABEL_10;
      }

      v18 = *(v15 + 8 * v22);
      ++v21;
      if (v18)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C734B044()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21AC78);
  __swift_project_value_buffer(v0, qword_1EC21AC78);
  return sub_1C754FEFC();
}

void static FreeformStoryDiagnosticsUtils.diagnosticFiles(for:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_78();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v35 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  v19 = sub_1C70CAC04(v2);
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    sub_1C734B404();
    if (v0)
    {
    }

    else if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {

      sub_1C7030CDC(v9, &qword_1EC215BD8, &unk_1C7564890);
    }

    else
    {
      v34 = v12;
      v24 = v9;
      v25 = *(v12 + 32);
      v25(v18, v24, v10);
      sub_1C734BB18(v21, v22, v6);
      v26 = v25;
      v27 = v34;

      if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
      {
        sub_1C7030CDC(v6, &qword_1EC215BD8, &unk_1C7564890);
      }

      else
      {
        v30 = v35;
        v31 = v26;
        v26(v35, v6, v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217270, &unk_1C75710A0);
        v32 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1C755BAB0;
        v31((v33 + v32), v30, v10);
      }

      v28 = OUTLINED_FUNCTION_18_52();
      v29(v28);
    }
  }

  else
  {
    sub_1C734E3A4();
    swift_allocError();
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 2;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_125();
}

void sub_1C734B404()
{
  OUTLINED_FUNCTION_124();
  v96 = v0;
  v2 = v1;
  v4 = v3;
  v99 = *MEMORY[0x1E69E9840];
  v5 = sub_1C754DC1C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v11 = v10 - v9;
  v12 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_78();
  v18 = v16 - v17;
  *&v20 = MEMORY[0x1EEE9AC00](v19).n128_u64[0];
  v22 = v78 - v21;
  v23 = [v2 photoLibrary];
  if (v23)
  {
    v88 = v4;
    v94 = v5;
    v95 = v18;
    v97 = 0;
    v24 = v23;
    v25 = [v23 urlForApplicationDataFolderIdentifier:11 error:&v97];
    v26 = v97;
    if (v25)
    {
      v27 = v25;
      v90 = v14;
      v91 = v12;
      v92 = v11;
      v89 = v24;
      sub_1C754DCCC();
      v28 = v26;

      v29 = [v2 localIdentifier];
      v87 = sub_1C755068C();
      v93 = v30;

      v31 = v22;
      if (qword_1EDD0D280 != -1)
      {
        goto LABEL_22;
      }

      while (1)
      {
        v97 = qword_1EDD0D288;
        v98 = unk_1EDD0D290;
        v33 = v7 + 13;
        v32 = v7[13];
        v34 = v92;
        v86 = *MEMORY[0x1E6968F70];
        v35 = v94;
        v85 = v32;
        v32(v92);
        v36 = sub_1C6FB5E8C();
        sub_1C75504FC();
        v37 = v95;
        sub_1C754DD1C();
        v38 = v7[1];
        v39 = v35;
        v40 = v7 + 1;
        v38(v34, v39);

        v41 = v96;
        v42 = sub_1C754DD6C();
        v7 = v41;
        if (v41)
        {

          v44 = v91;
          v45 = *(v90 + 8);
          v45(v37, v91);
          v45(v31, v44);
          goto LABEL_9;
        }

        v48 = v43;
        v84 = v31;
        v80 = v33;
        v81 = v36;
        v82 = v38;
        v49 = v42;
        v50 = sub_1C754D73C();
        OUTLINED_FUNCTION_137(v50);
        v51 = sub_1C754D72C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217588, &unk_1C756A840);
        OUTLINED_FUNCTION_4_83();
        sub_1C734E400(v52, v53, v54, MEMORY[0x1E69E5E58]);
        sub_1C754D71C();
        v78[1] = v51;
        v79 = v49;
        v78[0] = v40;
        v55 = v97 + 64;
        OUTLINED_FUNCTION_11();
        v31 = v57 & v56;
        v59 = (v58 + 63) >> 6;
        v61 = v60;
        v62 = sub_1C75504FC();
        v63 = 0;
        v83 = v48;
        v64 = v95;
        if (v31)
        {
          break;
        }

LABEL_12:
        while (1)
        {
          v65 = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            break;
          }

          if (v65 >= v59)
          {

            sub_1C6FC1640(v79, v48);

            v69 = v64;
            v70 = v91;
            v71 = *(v90 + 8);
            v71(v69, v91);
            v71(v84, v70);
            v72 = 1;
            v73 = v88;
            goto LABEL_19;
          }

          v31 = *&v55[8 * v65];
          ++v63;
          if (v31)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_22:
        OUTLINED_FUNCTION_6_84(&qword_1EDD0D280);
      }

      while (1)
      {
        v65 = v63;
LABEL_15:
        v96 = v78;
        v66 = *(v61 + 48) + ((v65 << 10) | (16 * __clz(__rbit64(v31))));
        v68 = *v66;
        v67 = *(v66 + 8);
        v97 = v87;
        v98 = v93;
        MEMORY[0x1EEE9AC00](v62);
        v78[-2] = &v97;
        sub_1C75504FC();
        sub_1C75504FC();
        if (sub_1C70735F4())
        {
          break;
        }

        v31 &= v31 - 1;

        v63 = v65;
        v64 = v95;
        v48 = v83;
        if (!v31)
        {
          goto LABEL_12;
        }
      }

      v97 = v68;
      v98 = v67;
      v74 = v92;
      v75 = v94;
      v85(v92, v86, v94);
      v73 = v88;
      v76 = v84;
      sub_1C754DD1C();

      sub_1C6FC1640(v79, v83);

      v82(v74, v75);
      v70 = v91;
      v77 = *(v90 + 8);
      v77(v95, v91);
      v77(v76, v70);

      v72 = 0;
LABEL_19:
      __swift_storeEnumTagSinglePayload(v73, v72, 1, v70);
    }

    else
    {
      v47 = v97;
      sub_1C754DBEC();

      swift_willThrow();
    }
  }

  else
  {
    sub_1C734E3A4();
    swift_allocError();
    *v46 = 1;
    *(v46 + 8) = 0;
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    *(v46 + 32) = 2;
    swift_willThrow();
  }

LABEL_9:
  OUTLINED_FUNCTION_125();
}

void sub_1C734BB18(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v72 = a2;
  v62 = a1;
  v55 = a3;
  v75[2] = *MEMORY[0x1E69E9840];
  v69 = sub_1C754DC1C();
  v56 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C754DD2C();
  v70 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v67 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v66 = v54 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v71 = v54 - v10;
  v63 = sub_1C754DF6C();
  v11 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v15 = sub_1C754DC8C();
  v75[0] = 0;
  v16 = [v14 contentsOfDirectoryAtURL:v15 includingPropertiesForKeys:0 options:0 error:v75];

  v17 = v75[0];
  if (v16)
  {
    v18 = sub_1C7550B5C();
    v19 = v17;

    v64 = *(v18 + 16);
    if (v64)
    {
      v65 = v18;
      strcpy(v75, "StoryDiagnose");
      HIWORD(v75[1]) = -4864;
      if (v72)
      {
        v73 = 95;
        v74 = 0xE100000000000000;
        MEMORY[0x1CCA5CD70](v62);
        MEMORY[0x1CCA5CD70](v73, v74);
      }

      v20 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      sub_1C7069CE4(0xD000000000000011, 0x80000001C75AB700, v20);
      v73 = 95;
      v74 = 0xE100000000000000;
      sub_1C754DF5C();
      v21 = sub_1C754DECC();
      (*(v11 + 8))(v13, v63);
      v22 = [v20 stringFromDate_];

      v23 = sub_1C755068C();
      v25 = v24;

      MEMORY[0x1CCA5CD70](v23, v25);

      MEMORY[0x1CCA5CD70](v73, v74);

      v26 = NSTemporaryDirectory();
      v27 = sub_1C755068C();
      v29 = v28;

      sub_1C734ACA0(v75[0], v75[1], v27, v29);

      v30 = sub_1C755065C();
      v73 = 0;
      LODWORD(v27) = [v14 createDirectoryAtPath:v30 withIntermediateDirectories:1 attributes:0 error:&v73];

      if (v27)
      {
        v63 = v5;
        v54[1] = v3;
        v31 = v73;
        sub_1C754DC5C();

        v32 = 0;
        v59 = v70 + 16;
        v62 = v70 + 8;
        v58 = *MEMORY[0x1E6968F70];
        v57 = (v56 + 13);
        ++v56;
        v33 = v65;
        v60 = v20;
        v61 = v14;
        v34 = v68;
        while (1)
        {
          if (v64 == v32)
          {

            v51 = v55;
            v52 = v63;
            (*(v70 + 32))(v55, v71, v63);
            __swift_storeEnumTagSinglePayload(v51, 0, 1, v52);
            return;
          }

          if (v32 >= *(v33 + 16))
          {
            __break(1u);
          }

          v35 = v70;
          v36 = v32;
          v37 = v66;
          v38 = v63;
          (*(v70 + 16))(v66, v33 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v32, v63);
          v72 = sub_1C754DC8C();
          v39 = sub_1C754DC7C();
          v41 = v40;
          v42 = *(v35 + 8);
          v42(v37, v38);
          v73 = v39;
          v74 = v41;
          v43 = v69;
          (*v57)(v34, v58, v69);
          sub_1C6FB5E8C();
          v44 = v67;
          sub_1C754DD1C();
          (*v56)(v34, v43);

          v45 = sub_1C754DC8C();
          v46 = v38;
          v14 = v61;
          v42(v44, v46);
          v73 = 0;
          v47 = v72;
          LODWORD(v41) = [v14 copyItemAtURL:v72 toURL:v45 error:&v73];

          v48 = v73;
          if (!v41)
          {
            break;
          }

          v32 = v36 + 1;
          v33 = v65;
          v20 = v60;
        }

        v53 = v48;

        sub_1C754DBEC();

        swift_willThrow();
        v42(v71, v63);
      }

      else
      {
        v50 = v73;

        sub_1C754DBEC();

        swift_willThrow();
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v55, 1, 1, v5);
    }
  }

  else
  {
    v49 = v75[0];
    sub_1C754DBEC();

    swift_willThrow();
  }
}

void sub_1C734C3B4()
{
  OUTLINED_FUNCTION_124();
  v33 = v1;
  v34 = v2;
  v39 = v3;
  v40[2] = *MEMORY[0x1E69E9840];
  sub_1C754DC1C();
  OUTLINED_FUNCTION_3_0();
  v35 = v5;
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v37 = v10;
  v38 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v32 = v12 - v11;
  OUTLINED_FUNCTION_37_3();
  v13 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14_0();
  v19 = v18 - v17;
  v20 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v21 = NSTemporaryDirectory();
  v22 = sub_1C755068C();
  v24 = v23;

  sub_1C754DF5C();
  sub_1C734E650(&qword_1EDD0F9D8, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v25 = sub_1C7551D8C();
  v27 = v26;
  (*(v15 + 8))(v19, v13);
  sub_1C734ACA0(v25, v27, v22, v24);

  OUTLINED_FUNCTION_294();
  v28 = sub_1C755065C();
  v40[0] = 0;
  LODWORD(v24) = [v20 createDirectoryAtPath:v28 withIntermediateDirectories:1 attributes:0 error:v40];

  if (!v24)
  {
    v31 = v40[0];
    OUTLINED_FUNCTION_98_5();

    sub_1C754DBEC();

    swift_willThrow();
LABEL_6:

    goto LABEL_7;
  }

  v29 = v40[0];
  OUTLINED_FUNCTION_294();
  sub_1C754DC5C();

  v40[0] = v33;
  v40[1] = v34;
  (*(v35 + 104))(v8, *MEMORY[0x1E6968F70], v36);
  sub_1C6FB5E8C();
  sub_1C754DD1C();
  (*(v35 + 8))(v8, v36);
  sub_1C754DE1C();
  if (!v0)
  {
    (*(v37 + 8))(v32, v38);
    goto LABEL_6;
  }

  v30 = *(v37 + 8);
  v30(v39, v38);
  v30(v32, v38);
LABEL_7:
  OUTLINED_FUNCTION_125();
}

void static FreeformStoryDiagnosticsUtils.cleanUpDiagnosticsFiles(photoLibrary:oldestAllowedDate:)()
{
  OUTLINED_FUNCTION_124();
  v93 = v1;
  v3 = v2;
  v105[4] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v97 = &v89 - v5;
  OUTLINED_FUNCTION_37_3();
  v98 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v92 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v95 = (v9 - v8);
  OUTLINED_FUNCTION_37_3();
  v101 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_78();
  v100 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v96 = &v89 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v89 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v89 - v21;
  v23 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v105[0] = 0;
  v24 = [v3 urlForApplicationDataFolderIdentifier:11 error:v105];
  v25 = v105[0];
  if (v24)
  {
    v26 = v24;
    v99 = v23;
    v89 = v0;
    sub_1C754DCCC();
    v27 = v25;

    v28 = [objc_opt_self() defaultManager];
    v29 = sub_1C754DC8C();
    v105[0] = 0;
    v30 = [v28 contentsOfDirectoryAtURL:v29 includingPropertiesForKeys:0 options:0 error:v105];

    v31 = v105[0];
    if (v30)
    {
      v90 = v22;
      v32 = v101;
      v33 = sub_1C7550B5C();
      v34 = v31;
      v35 = v32;

      v36 = 0;
      v37 = *(v33 + 16);
      v103 = (v11 + 8);
      v104 = v11 + 16;
      v94 = (v11 + 32);
      v102 = MEMORY[0x1E69E7CC0];
      while (v37 != v36)
      {
        if (v36 >= *(v33 + 16))
        {
          __break(1u);
LABEL_37:
          __break(1u);
        }

        v38 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v39 = *(v11 + 72);
        v40 = OUTLINED_FUNCTION_15_67();
        v41(v40);
        v42 = v35;
        if (sub_1C754DC6C())
        {
          v91 = *v94;
          (v91)(v96, v19, v35);
          v44 = v102;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = v44;
          v105[0] = v44;
          if (isUniquelyReferenced_nonNull_native)
          {
            v35 = v42;
          }

          else
          {
            sub_1C716EBF4(0, v44[2] + 1, 1);
            v35 = v101;
            v46 = v105[0];
          }

          v48 = v46[2];
          v47 = v46[3];
          v49 = (v48 + 1);
          if (v48 >= v47 >> 1)
          {
            v102 = (v48 + 1);
            sub_1C716EBF4(v47 > 1, v48 + 1, 1);
            v35 = v101;
            v49 = v102;
            v46 = v105[0];
          }

          ++v36;
          v46[2] = v49;
          v102 = v46;
          (v91)(v46 + v38 + v48 * v39, v96, v35);
        }

        else
        {
          OUTLINED_FUNCTION_7_72();
          v43(v19, v35);
          ++v36;
        }
      }

      v50 = 0;
      v51 = v102;
      v52 = v102[2];
      v96 = *MEMORY[0x1E696A308];
      v91 = (v92 + 4);
      ++v92;
      v53 = v90;
      v54 = v99;
      v94 = v52;
      while (1)
      {
        if (v52 == v50)
        {
          OUTLINED_FUNCTION_7_72();
          v81(v53, v35);

          goto LABEL_34;
        }

        if (v50 >= v51[2])
        {
          goto LABEL_37;
        }

        v55 = OUTLINED_FUNCTION_15_67();
        v56(v55);
        sub_1C754DCEC();
        v57 = sub_1C755065C();

        v105[0] = 0;
        v58 = [v54 attributesOfItemAtPath:v57 error:v105];

        v59 = v105[0];
        if (!v58)
        {
          v82 = v105[0];

          sub_1C754DBEC();

          swift_willThrow();
          v83 = v53;
          v84 = *v103;
          v85 = v101;
          (*v103)(v100, v101);
          v84(v83, v85);
          goto LABEL_34;
        }

        type metadata accessor for FileAttributeKey(0);
        sub_1C734E650(&qword_1EC214698, type metadata accessor for FileAttributeKey, byte_1C755AD20);
        v35 = sub_1C75504AC();
        v60 = v59;

        if (!v35[2])
        {
          break;
        }

        v61 = sub_1C6FC33F0();
        if ((v62 & 1) == 0)
        {
          break;
        }

        sub_1C6F774EC(v35[7] + 32 * v61, v105);

        v63 = v97;
        v64 = v98;
        v65 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v63, v65 ^ 1u, 1, v64);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v63, 1, v64);
        v54 = v99;
        v67 = v100;
        v51 = v102;
        if (EnumTagSinglePayload == 1)
        {
          v68 = OUTLINED_FUNCTION_3_93();
          v69(v68);
          v52 = v94;
LABEL_23:
          sub_1C7030CDC(v63, &unk_1EC219230, &unk_1C7563720);
          goto LABEL_24;
        }

        v35 = v95;
        (*v91)(v95, v63, v64);
        if (sub_1C754DEDC())
        {
          v71 = sub_1C754DC8C();
          v105[0] = 0;
          v72 = [v54 removeItemAtURL:v71 error:v105];

          v35 = v105[0];
          if (!v72)
          {
            v86 = v105[0];

            sub_1C754DBEC();

            swift_willThrow();
            (*v92)(v95, v64);
            v87 = *v103;
            v88 = v101;
            (*v103)(v67, v101);
            v87(v90, v88);
            goto LABEL_34;
          }

          v73 = *v92;
          v74 = v105[0];
          v73(v95, v64);
          v75 = OUTLINED_FUNCTION_3_93();
          v76(v75);
          v53 = v90;
          v51 = v102;
        }

        else
        {
          (*v92)(v35, v64);
          v77 = OUTLINED_FUNCTION_3_93();
          v78(v77);
        }

        v52 = v94;
LABEL_24:
        ++v50;
      }

      OUTLINED_FUNCTION_7_72();
      v35 = v101;
      v70(v100, v101);
      v63 = v97;
      __swift_storeEnumTagSinglePayload(v97, 1, 1, v98);
      v54 = v99;
      v51 = v102;
      goto LABEL_23;
    }

    v80 = v105[0];
    OUTLINED_FUNCTION_98_5();
    sub_1C754DBEC();

    swift_willThrow();
    (*(v11 + 8))(v22, v101);
  }

  else
  {
    v79 = v105[0];
    sub_1C754DBEC();

    swift_willThrow();
  }

LABEL_34:
  OUTLINED_FUNCTION_125();
}

void static FreeformStoryDiagnosticsUtils.cleanUpIndexFile(photoLibrary:oldestAllowedDate:)()
{
  OUTLINED_FUNCTION_124();
  v43 = v1;
  v3 = v2;
  v45[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1C754DC1C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v10 = v9 - v8;
  v44 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_78();
  v45[0] = 0;
  v13 = [v3 urlForApplicationDataFolderIdentifier:11 error:{v45, MEMORY[0x1EEE9AC00](v12).n128_f64[0]}];
  v14 = v45[0];
  if (v13)
  {
    v15 = v13;
    sub_1C754DCCC();
    v16 = v14;

    if (qword_1EDD0D280 != -1)
    {
      OUTLINED_FUNCTION_6_84(&qword_1EDD0D280);
    }

    v45[0] = qword_1EDD0D288;
    v45[1] = unk_1EDD0D290;
    v6[13](v10, *MEMORY[0x1E6968F70], v4);
    sub_1C6FB5E8C();
    sub_1C75504FC();
    sub_1C754DD1C();
    v17 = (v6 + 1);
    v18 = OUTLINED_FUNCTION_55_0();
    v19(v18);

    sub_1C754DD6C();
    if (!v0)
    {
      v20 = sub_1C754D73C();
      OUTLINED_FUNCTION_137(v20);
      v21 = sub_1C754D72C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217588, &unk_1C756A840);
      OUTLINED_FUNCTION_4_83();
      sub_1C734E400(v22, v23, v24, MEMORY[0x1E69E5E58]);
      OUTLINED_FUNCTION_2_56();
      sub_1C754D71C();
      v42 = v21;
      v40 = v45[0];
      v30 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      v31 = sub_1C755065C();
      [v30 setDateFormat_];

      v39[1] = v39;
      MEMORY[0x1EEE9AC00](v32);
      v41 = v30;
      v33 = v43;
      v39[-2] = v30;
      v39[-1] = v33;
      v34 = sub_1C734E008(v40, sub_1C734E3F8, &v39[-4]);

      OUTLINED_FUNCTION_37_3();
      v35 = sub_1C754D7AC();
      OUTLINED_FUNCTION_137(v35);
      v36 = sub_1C754D79C();
      v43 = v34;
      v45[0] = v34;
      sub_1C734E400(&qword_1EDD06C68, sub_1C70E1230, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
      v17 = sub_1C754D78C();
      v38 = v37;
      v40 = v36;

      sub_1C754DE1C();

      sub_1C6FC1640(v17, v38);

      v25 = OUTLINED_FUNCTION_55_0();
      sub_1C6FC1640(v25, v26);
    }

    v27 = OUTLINED_FUNCTION_17_68();
    v17(v27);
    v28 = OUTLINED_FUNCTION_294();
    v17(v28);
  }

  else
  {
    v29 = v45[0];
    OUTLINED_FUNCTION_98_5();
    sub_1C754DBEC();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C734D56C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = sub_1C754DF6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  v13 = sub_1C755065C();
  v14 = [a4 dateFromString_];

  if (v14)
  {
    sub_1C754DF2C();

    (*(v7 + 32))(v12, v9, v6);
    v15 = sub_1C754DEDC();
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void static FreeformStoryDiagnosticsUtils.temporaryDiagnosticsDirectory(_:)()
{
  OUTLINED_FUNCTION_124();
  v23 = v0;
  v2 = v1;
  v26 = *MEMORY[0x1E69E9840];
  v3 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  v10 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C7069CE4(0xD000000000000011, 0x80000001C75AB700, v10);
  v11 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v12 = NSTemporaryDirectory();
  v13 = sub_1C755068C();
  v15 = v14;

  v24 = v23;
  v25 = v2;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](95, 0xE100000000000000);
  sub_1C754DF5C();
  v16 = sub_1C754DECC();
  (*(v5 + 8))(v9, v3);
  v17 = [v10 stringFromDate_];

  v18 = sub_1C755068C();
  v20 = v19;

  MEMORY[0x1CCA5CD70](v18, v20);

  sub_1C734ACA0(v23, v25, v13, v15);

  OUTLINED_FUNCTION_294();
  v21 = sub_1C755065C();
  v24 = 0;
  LOBYTE(v9) = [v11 createDirectoryAtPath:v21 withIntermediateDirectories:1 attributes:0 error:&v24];

  v22 = v24;
  if (v9)
  {
    OUTLINED_FUNCTION_294();
    sub_1C754DC5C();
  }

  else
  {
    OUTLINED_FUNCTION_98_5();

    sub_1C754DBEC();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_125();
}

void static FreeformStoryDiagnosticsUtils.debugAlbumInfo(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  sub_1C754DC1C();
  OUTLINED_FUNCTION_3_0();
  v54 = v3;
  v55 = v4;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50 - v9;
  v11 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v53 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v16 = v14 - v15;
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v20 = (&v50 - v19);
  v21 = [v2 localIdentifier];
  v22 = sub_1C755068C();
  v24 = v23;

  sub_1C734B404();
  if (v0)
  {
  }

  else
  {
    v50 = v22;
    v51 = 0;
    v25 = v54;
    v26 = v55;
    v52 = v16;
    v57 = v20;
    v27 = v53;
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_1C7030CDC(v10, &qword_1EC215BD8, &unk_1C7564890);
      sub_1C734E3A4();
      swift_allocError();
      *v28 = v50;
      *(v28 + 8) = v24;
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      *(v28 + 32) = 1;
      swift_willThrow();
    }

    else
    {

      v29 = v27;
      v30 = *(v27 + 32);
      v50 = v11;
      v30(v20, v10, v11);
      v56[0] = 0xD000000000000012;
      v56[1] = 0x80000001C75A4500;
      (*(v26 + 104))(v7, *MEMORY[0x1E6968F70], v25);
      sub_1C6FB5E8C();
      v31 = v52;
      sub_1C754DD1C();
      (*(v26 + 8))(v7, v25);
      v32 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
      sub_1C754DCDC();
      v33 = sub_1C755065C();

      v34 = [v32 fileExistsAtPath_];

      if (v34)
      {
        v35 = v51;
        sub_1C754DD6C();
        if (v35)
        {

          v36 = *(v29 + 8);
          v37 = v50;
          v36(v31, v50);
          v36(v57, v37);
        }

        else
        {
          v45 = sub_1C754DB8C();
          OUTLINED_FUNCTION_137(v45);
          v46 = sub_1C754DB7C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FF0, &unk_1C7584340);
          sub_1C734E484();
          OUTLINED_FUNCTION_18_52();
          sub_1C754DB5C();

          v47 = OUTLINED_FUNCTION_55_0();
          sub_1C6FC1640(v47, v48);

          v49 = OUTLINED_FUNCTION_19_62();
          v57(v49);
          (v57)(v57, v46);
        }
      }

      else
      {
        if (qword_1EC214030 != -1)
        {
          OUTLINED_FUNCTION_5_77();
          swift_once();
        }

        v38 = sub_1C754FF1C();
        __swift_project_value_buffer(v38, qword_1EC21AC78);
        v39 = sub_1C754FEEC();
        v40 = sub_1C75511BC();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v56[0] = v42;
          *v41 = 136315138;
          *(v41 + 4) = sub_1C6F765A4(0xD000000000000012, 0x80000001C75A4500, v56);
          _os_log_impl(&dword_1C6F5C000, v39, v40, "Missing %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          v31 = v52;
          OUTLINED_FUNCTION_109();
          v43 = v50;
          OUTLINED_FUNCTION_109();
        }

        else
        {

          v43 = v50;
        }

        v44 = *(v29 + 8);
        v44(v31, v43);
        v44(v57, v43);
      }
    }
  }

  OUTLINED_FUNCTION_125();
}

id FreeformStoryDiagnosticsUtils.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FreeformStoryDiagnosticsUtils.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FreeformStoryDiagnosticsUtils();
  return objc_msgSendSuper2(&v3, sel_init);
}

id FreeformStoryDiagnosticsUtils.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FreeformStoryDiagnosticsUtils();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_1C734E008(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void *), void *a3)
{
  v6 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_1C734E314(v12, v8, v6, a2);
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      return a3;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v9 = v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v8, v9);
  sub_1C734E18C(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

void sub_1C734E18C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *))
{
  v25 = a3;
  v22 = 0;
  v4 = 0;
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
    v14 = (*(v25 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(v25 + 56) + 16 * v13);
    v18 = v17[1];
    v24[0] = *v17;
    v24[1] = v18;
    sub_1C75504FC();
    sub_1C75504FC();
    LOBYTE(v18) = a4(v15, v16, v24);

    if (v18)
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C7484DDC(result, a2, v22, v25);
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

void *sub_1C734E314(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *))
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

    sub_1C734E18C(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t sub_1C734E3A4()
{
  result = qword_1EC21AC90;
  if (!qword_1EC21AC90)
  {
    result = swift_getWitnessTable(byte_1C7584400, &type metadata for FreeformStoryDiagnosticsUtils.Error, v0, v1);
    atomic_store(result, &qword_1EC21AC90);
  }

  return result;
}

uint64_t sub_1C734E400(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217588, &unk_1C756A840);
    v10[0] = a3;
    v10[1] = a2();
    result = swift_getWitnessTable(a4, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C734E484()
{
  result = qword_1EC21AC98;
  if (!qword_1EC21AC98)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217FF0, &unk_1C7584340);
    v4[0] = sub_1C734E508();
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EC21AC98);
  }

  return result;
}

unint64_t sub_1C734E508()
{
  result = qword_1EC21ACA0;
  if (!qword_1EC21ACA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryDiagnosticAlbumInfo, &type metadata for StoryDiagnosticAlbumInfo, v0, v1);
    atomic_store(result, &qword_1EC21ACA0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence29FreeformStoryDiagnosticsUtilsC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1C734E59C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C734E5DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C734E624(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1C734E650(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

id sub_1C734E698()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence31GenerativeMemoryPhotosGraphData____lazy_storage___storyTitleCategory;
  v2 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence31GenerativeMemoryPhotosGraphData____lazy_storage___storyTitleCategory);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence31GenerativeMemoryPhotosGraphData____lazy_storage___storyTitleCategory);
  }

  else
  {
    [objc_opt_self() generateNextStoryTitleStyleIndex];
    v4 = PFStoryTitleCategoryGenerateWithWrappedIndex();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id GenerativeMemoryPhotosGraphData.init(storyChapters:musicCuration:promptInformation:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  sub_1C754FEFC();
  *&v3[OBJC_IVAR____TtC18PhotosIntelligence31GenerativeMemoryPhotosGraphData____lazy_storage___storyTitleCategory] = 0;
  *&v3[OBJC_IVAR____TtC18PhotosIntelligence31GenerativeMemoryPhotosGraphData_storyChapters] = a1;
  sub_1C70ED210(a2, &v3[OBJC_IVAR____TtC18PhotosIntelligence31GenerativeMemoryPhotosGraphData_storyMusicCuration]);
  v3[OBJC_IVAR____TtC18PhotosIntelligence31GenerativeMemoryPhotosGraphData_promptInformation] = v6;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for GenerativeMemoryPhotosGraphData(0);
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_1C734E890(a2);
  return v7;
}

uint64_t type metadata accessor for GenerativeMemoryPhotosGraphData(uint64_t a1)
{
  result = qword_1EDD0C9E0;
  if (!qword_1EDD0C9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C734E890(uint64_t a1)
{
  v2 = type metadata accessor for StoryMusicCuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C734E8EC(__n128 a1)
{
  v2 = v1;
  v3 = 0;
  v4 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence31GenerativeMemoryPhotosGraphData_storyChapters);
  v155 = v4 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v157 = v4;
  v159 = *(v4 + 16);
  v151 = OBJC_IVAR____TtC18PhotosIntelligence31GenerativeMemoryPhotosGraphData_logger;
  a1.n128_u64[0] = 136315138;
  v145 = a1;
  v148 = xmmword_1C75604F0;
  while (v3 != v159)
  {
    if (v3 >= *(v157 + 16))
    {
      goto LABEL_78;
    }

    memcpy(__dst, (v155 + (v3 << 7)), 0x80uLL);
    if (__dst[14])
    {
      sub_1C6FBC6B8();
      swift_allocError();
      *v131 = 2;
      swift_willThrow();
    }

    v6 = __dst[13];
    sub_1C6FB7BB8(__dst, &v179);
    sub_1C6FBC70C(v6);
    v161 = v6;
    v7 = [v6 fetchedObjects];
    v165 = v5;
    if (v7)
    {
      v8 = v7;
      sub_1C6FDEC1C();
      v9 = sub_1C7550B5C();

      v10 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      v9 = MEMORY[0x1E69E7CC0];
    }

    v163 = v3 + 1;
    isUniquelyReferenced_nonNull_native = sub_1C6FB6304();
    v13 = isUniquelyReferenced_nonNull_native;
    v14 = 0;
    v15 = v9 & 0xC000000000000001;
    v171 = v10;
    while (v13 != v14)
    {
      if (v15)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x1CCA5DDD0](v14, v9);
      }

      else
      {
        if (v14 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        isUniquelyReferenced_nonNull_native = *(v9 + 8 * v14 + 32);
      }

      v16 = isUniquelyReferenced_nonNull_native;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v18 = sub_1C70CAC04(isUniquelyReferenced_nonNull_native);
      v20 = v19;

      ++v14;
      if (v20)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native)
        {
          v21 = v171;
        }

        else
        {
          sub_1C6FB1814();
          v21 = isUniquelyReferenced_nonNull_native;
        }

        v22 = *(v21 + 16);
        if (v22 >= *(v21 + 24) >> 1)
        {
          sub_1C6FB1814();
          v21 = isUniquelyReferenced_nonNull_native;
        }

        *(v21 + 16) = v22 + 1;
        v171 = v21;
        v23 = v21 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        v14 = v17;
      }
    }

    v24 = *(v171 + 16);
    v25 = MEMORY[0x1E69E7CC0];
    if (v24)
    {
      v182 = MEMORY[0x1E69E7CC0];
      v26 = __dst[15];
      sub_1C716E748(0, v24, 0);
      v27 = v171;
      v28 = 0;
      v29 = v182;
      v30 = (v171 + 40);
      v167 = v24;
      v169 = v26;
      while (v28 < *(v27 + 16))
      {
        v175 = v30;
        v176 = v28;
        v32 = *(v30 - 1);
        v31 = *v30;
        v33 = sub_1C755068C();
        v35 = v34;
        v180 = MEMORY[0x1E69E6158];
        *&v179 = v32;
        *(&v179 + 1) = v31;
        sub_1C6F9ED18(&v179, v178);
        *&v177 = v31;
        swift_bridgeObjectRetain_n();
        v36 = MEMORY[0x1E69E7CC8];
        swift_isUniquelyReferenced_nonNull_native();
        v37 = sub_1C6F78124(v33, v35);
        if (__OFADD__(v36[2], (v38 & 1) == 0))
        {
          goto LABEL_72;
        }

        v39 = v37;
        v40 = v38;
        v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACB0, &qword_1C755CC30);
        if (sub_1C7551A2C())
        {
          v41 = sub_1C6F78124(v33, v35);
          if ((v40 & 1) != (v42 & 1))
          {
            goto LABEL_79;
          }

          v39 = v41;
        }

        if (v40)
        {

          v43 = v36;
          v44 = (v36[7] + 32 * v39);
          __swift_destroy_boxed_opaque_existential_1(v44);
          sub_1C6F9ED18(v178, v44);
        }

        else
        {
          v43 = v36;
          OUTLINED_FUNCTION_0_145(&v36[v39 >> 6]);
          v45 = (v36[6] + 16 * v39);
          *v45 = v33;
          v45[1] = v35;
          sub_1C6F9ED18(v178, (v36[7] + 32 * v39));
          v46 = v36[2];
          v47 = __OFADD__(v46, 1);
          v48 = v46 + 1;
          if (v47)
          {
            goto LABEL_73;
          }

          v36[2] = v48;
        }

        if (*(v169 + 16))
        {
          v49 = v177;
          v50 = sub_1C6F78124(v32, v177);
          if (v51)
          {
            v52 = (*(v169 + 56) + 40 * v50);
            v54 = *v52;
            v53 = v52[1];
            v55 = sub_1C755068C();
            v57 = v56;
            v180 = MEMORY[0x1E69E6448];
            LODWORD(v179) = v54;
            sub_1C6F9ED18(&v179, v178);
            swift_isUniquelyReferenced_nonNull_native();
            v58 = OUTLINED_FUNCTION_35_0();
            v60 = sub_1C6F78124(v58, v59);
            v68 = v67;
            v69 = v43[2];
            v70 = (v67 & 1) == 0;
            if (__OFADD__(v69, v70))
            {
              goto LABEL_74;
            }

            if (OUTLINED_FUNCTION_2_99(v60, v69 + v70, v61, v62, v63, v64, v65, v66, v141, v143, v145.n128_i64[0], v145.n128_i64[1], v148, *(&v148 + 1), v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173))
            {
              v71 = OUTLINED_FUNCTION_35_0();
              v73 = sub_1C6F78124(v71, v72);
              if ((v68 & 1) != (v74 & 1))
              {
                goto LABEL_79;
              }

              v49 = v73;
            }

            if (v68)
            {

              v75 = v43;
              v49 = v43[7] + 32 * v49;
              __swift_destroy_boxed_opaque_existential_1(v49);
              sub_1C6F9ED18(v178, v49);
            }

            else
            {
              v75 = v43;
              OUTLINED_FUNCTION_0_145(&v43[v49 >> 6]);
              v76 = (v43[6] + 16 * v49);
              *v76 = v55;
              v76[1] = v57;
              sub_1C6F9ED18(v178, (v43[7] + 32 * v49));
              v77 = v43[2];
              v47 = __OFADD__(v77, 1);
              v78 = v77 + 1;
              if (v47)
              {
                goto LABEL_76;
              }

              v43[2] = v78;
            }

            v79 = sub_1C755068C();
            v81 = v80;
            v180 = MEMORY[0x1E69E6448];
            LODWORD(v179) = v53;
            sub_1C6F9ED18(&v179, v178);
            swift_isUniquelyReferenced_nonNull_native();
            v82 = OUTLINED_FUNCTION_35_0();
            v84 = sub_1C6F78124(v82, v83);
            v92 = v91;
            v93 = v75[2];
            v94 = (v91 & 1) == 0;
            if (__OFADD__(v93, v94))
            {
              goto LABEL_75;
            }

            if (OUTLINED_FUNCTION_2_99(v84, v93 + v94, v85, v86, v87, v88, v89, v90, v142, v144, v146, v147, v149, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174))
            {
              v95 = OUTLINED_FUNCTION_35_0();
              v97 = sub_1C6F78124(v95, v96);
              if ((v92 & 1) != (v98 & 1))
              {
                goto LABEL_79;
              }

              v49 = v97;
            }

            if (v92)
            {

              v43 = v75;
              v99 = (v75[7] + 32 * v49);
              __swift_destroy_boxed_opaque_existential_1(v99);
              sub_1C6F9ED18(v178, v99);
            }

            else
            {
              v43 = v75;
              OUTLINED_FUNCTION_0_145(&v75[v49 >> 6]);
              v100 = (v75[6] + 16 * v49);
              *v100 = v79;
              v100[1] = v81;
              sub_1C6F9ED18(v178, (v75[7] + 32 * v49));
              v101 = v75[2];
              v47 = __OFADD__(v101, 1);
              v102 = v101 + 1;
              if (v47)
              {
                goto LABEL_77;
              }

              v75[2] = v102;
            }
          }
        }

        v182 = v29;
        v104 = *(v29 + 16);
        v103 = *(v29 + 24);
        v27 = v171;
        v105 = v176;
        if (v104 >= v103 >> 1)
        {
          sub_1C716E748(v103 > 1, v104 + 1, 1);
          v105 = v176;
          v27 = v171;
          v29 = v182;
        }

        v28 = v105 + 1;
        *(v29 + 16) = v104 + 1;
        *(v29 + 8 * v104 + 32) = v43;
        v30 = v175 + 2;
        if (v167 == v28)
        {

          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      result = sub_1C7551E4C();
      __break(1u);
      return result;
    }

    v29 = v25;
LABEL_57:
    v107 = __dst[2];
    v106 = __dst[3];
    sub_1C6FB7BB8(__dst, &v179);
    v2 = v153;
    v108 = sub_1C754FEEC();
    v109 = sub_1C755118C();
    sub_1C6FBC664(__dst);
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = v29;
      v112 = swift_slowAlloc();
      *&v179 = v112;
      *v110 = v145.n128_u32[0];
      sub_1C75504FC();
      v113 = sub_1C6F765A4(v107, v106, &v179);

      *(v110 + 4) = v113;
      _os_log_impl(&dword_1C6F5C000, v108, v109, "Highlight dictionary generated for chapter %s.", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v112);
      v114 = v112;
      v29 = v111;
      MEMORY[0x1CCA5F8E0](v114, -1, -1);
      MEMORY[0x1CCA5F8E0](v110, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38, &qword_1C756D840);
    inited = swift_initStackObject();
    *(inited + 16) = v148;
    *(inited + 32) = sub_1C755068C();
    *(inited + 40) = v116;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v107;
    *(inited + 56) = v106;
    *(inited + 80) = sub_1C755068C();
    *(inited + 88) = v117;
    *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACC0, &qword_1C7574D30);
    *(inited + 96) = v29;
    sub_1C75504FC();
    v118 = sub_1C75504DC();
    v5 = v165;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB3B28();
      v5 = v120;
    }

    v119 = *(v5 + 16);
    if (v119 >= *(v5 + 24) >> 1)
    {
      sub_1C6FB3B28();
      v5 = v121;
    }

    sub_1C6FBC718(v161);
    sub_1C6FBC664(__dst);
    *(v5 + 16) = v119 + 1;
    *(v5 + 8 * v119 + 32) = v118;
    v3 = v163;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38, &qword_1C756D840);
  v122 = swift_initStackObject();
  v177 = xmmword_1C755BAA0;
  *(v122 + 16) = xmmword_1C755BAA0;
  *(v122 + 32) = sub_1C755068C();
  *(v122 + 40) = v123;
  *(v122 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACC0, &qword_1C7574D30);
  *(v122 + 48) = v5;
  *(v122 + 80) = sub_1C755068C();
  *(v122 + 88) = v124;
  v125 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence31GenerativeMemoryPhotosGraphData_promptInformation);
  v126 = swift_initStackObject();
  *(v126 + 16) = xmmword_1C755BAB0;
  *(v126 + 32) = sub_1C755068C();
  *(v126 + 40) = v127;
  *(v126 + 72) = MEMORY[0x1E69E6370];
  *(v126 + 48) = v125;
  v128 = sub_1C75504DC();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0, &unk_1C756DB10);
  *(v122 + 120) = v14;
  *(v122 + 96) = v128;
  *(v122 + 128) = sub_1C755068C();
  *(v122 + 136) = v129;
  v130 = StoryMusicCuration.dictionaryForSavingToPHMemory()();
  *(v122 + 168) = v14;
  *(v122 + 144) = v130;
  v15 = sub_1C75504DC();
  isUniquelyReferenced_nonNull_native = sub_1C734F42C();
  if (v143)
  {
  }

LABEL_70:
  v133 = isUniquelyReferenced_nonNull_native;
  v134 = v12;
  v135 = swift_initStackObject();
  *(v135 + 16) = v177;
  *(v135 + 32) = sub_1C755068C();
  *(v135 + 40) = v136;
  v137 = sub_1C734E698();
  type metadata accessor for PFStoryTitleCategory(0);
  *(v135 + 72) = v138;
  *(v135 + 48) = v137;
  *(v135 + 80) = sub_1C755068C();
  *(v135 + 88) = v139;
  *(v135 + 120) = v14;
  *(v135 + 96) = v15;
  *(v135 + 128) = sub_1C755068C();
  *(v135 + 136) = v140;
  *(v135 + 168) = MEMORY[0x1E6969080];
  *(v135 + 144) = v133;
  *(v135 + 152) = v134;
  return sub_1C75504DC();
}

uint64_t sub_1C734F42C()
{
  v40 = MEMORY[0x1E69E7CC0];
  v1 = StoryMusicCuration.flexMusicStoryRecipeKeySong()();
  if (v0)
  {
    v2 = v0;
    v3 = sub_1C754FEEC();
    v4 = sub_1C755119C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = v0;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_1C6F5C000, v3, v4, "No key Flex song found. Error: %@", v5, 0xCu);
      sub_1C6FC15D8(v6);
      MEMORY[0x1CCA5F8E0](v6, -1, -1);
      MEMORY[0x1CCA5F8E0](v5, -1, -1);
    }

    else
    {
    }

    v12 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    v9 = v1;
    v10 = swift_unknownObjectRetain();
    MEMORY[0x1CCA5D040](v10);
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C7550B9C();
    }

    sub_1C7550BEC();
    v11 = [v9 identifier];
    v12 = sub_1C755068C();
    v14 = v13;
    swift_unknownObjectRelease();
  }

  v37 = v12;
  v15 = StoryMusicCuration.appleMusicStoryRecipeKeySong()();
  v16 = swift_unknownObjectRetain();
  MEMORY[0x1CCA5D040](v16);
  if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C7550B9C();
  }

  sub_1C7550BEC();
  v38 = v40;
  v17 = [v15 identifier];
  v18 = sub_1C755068C();
  v20 = v19;
  swift_unknownObjectRelease();

  sub_1C75504FC();
  sub_1C75504FC();
  v21 = sub_1C754FEEC();
  v22 = sub_1C755117C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v39 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_1C6F765A4(v37, v14, &v39);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1C6F765A4(v18, v20, &v39);
    _os_log_impl(&dword_1C6F5C000, v21, v22, "Using key songs for story recipe: flex=%s  applemusic=%s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v24, -1, -1);
    MEMORY[0x1CCA5F8E0](v23, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21ACE0, qword_1C75844B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C75604F0;
  v26 = *MEMORY[0x1E69C0DD0];
  v27 = MEMORY[0x1E69C0DC8];
  *(inited + 32) = *MEMORY[0x1E69C0DD0];
  *(inited + 40) = v37;
  v28 = *v27;
  *(inited + 48) = v14;
  *(inited + 56) = v28;
  *(inited + 64) = v18;
  *(inited + 72) = v20;
  type metadata accessor for PFStoryRecipeSongCatalog(0);
  sub_1C7350024();
  v29 = v26;
  v30 = v28;
  v31 = sub_1C75504DC();
  v32 = sub_1C734FB4C(v38, v31);

  v33 = [objc_allocWithZone(MEMORY[0x1E69C08B0]) init];
  v34 = [v33 archivedDataWithRecipe_];

  v35 = sub_1C754DDEC();
  swift_unknownObjectRelease();

  return v35;
}

id GenerativeMemoryPhotosGraphData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GenerativeMemoryPhotosGraphData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeMemoryPhotosGraphData(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C734FB4C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() createRecipe];
  [v4 mutableCopyWithZone_];
  swift_unknownObjectRelease();
  sub_1C75515CC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21ACE8, &unk_1C75844D0);
  if (!swift_dynamicCast())
  {
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();
    if (os_log_type_enabled(v9, v10))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1C6F5C000, v9, v10, "PFStoryRecipeFactory.createRecipe().mutableCopy() failed", v4, 2u);
      MEMORY[0x1CCA5F8E0](v4, -1, -1);
    }

    sub_1C71B3D3C();
    swift_allocError();
    *v11 = xmmword_1C7569120;
    *(v11 + 16) = 2;
    swift_willThrow();
    return v4;
  }

  v4 = v18;
  if (sub_1C6FB6304() < 1)
  {
    v12 = sub_1C754FEEC();
    v13 = sub_1C755119C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C6F5C000, v12, v13, "No song assets to save to the recipe", v14, 2u);
      MEMORY[0x1CCA5F8E0](v14, -1, -1);
    }

    goto LABEL_17;
  }

  result = sub_1C6FB6304();
  if (!result)
  {
LABEL_17:
    if (*(a2 + 16))
    {
      type metadata accessor for PFStoryRecipeSongCatalog(0);
      sub_1C7350024();
      v15 = sub_1C755048C();
      [v18 setSeedSongIdentifiersByCatalog_];
    }

    else
    {
      v15 = sub_1C754FEEC();
      v16 = sub_1C755119C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1C6F5C000, v15, v16, "No seed songs to save to the recipe", v17, 2u);
        MEMORY[0x1CCA5F8E0](v17, -1, -1);
      }
    }

    return v4;
  }

  v6 = result;
  if (result >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1CCA5DDD0](i, a1);
      }

      else
      {
        v8 = *(a1 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v18 addAsset_];
      swift_unknownObjectRelease();
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C734FEC4(uint64_t a1)
{
  result = sub_1C754FF1C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StoryMusicCuration(319);
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

unint64_t sub_1C7350024()
{
  result = qword_1EDD06940;
  if (!qword_1EDD06940)
  {
    type metadata accessor for PFStoryRecipeSongCatalog(255);
    result = swift_getWitnessTable(byte_1C755BA20, v3, v0, v1);
    atomic_store(result, &qword_1EDD06940);
  }

  return result;
}

void sub_1C735007C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C755165C();
    sub_1C6F65BE8(0, &qword_1EDD0CE08, 0x1E6978A38);
    sub_1C7080178(&qword_1EDD0CE00, &qword_1EDD0CE08, 0x1E6978A38);
    sub_1C7550FEC();
    v6 = v37;
    v8 = v38;
    v9 = v39;
    v10 = v40;
    v11 = v41;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a1 + 56);
    sub_1C75504FC();
    v10 = 0;
  }

  v31 = MEMORY[0x1E69E7CC0];
  *&v7 = 134217984;
  v30 = v7;
  while (v6 < 0)
  {
    if (!sub_1C75516FC() || (sub_1C6F65BE8(0, &qword_1EDD0CE08, 0x1E6978A38), swift_dynamicCast(), (v17 = v36) == 0))
    {
LABEL_32:
      sub_1C6F61E88(v6);

      return;
    }

LABEL_17:
    v18 = [v17 extendedSceneIdentifier];
    if (![a2 isResponsibleForSignalIdentifier_])
    {
      goto LABEL_31;
    }

    swift_beginAccess();
    v19 = sub_1C7353840(v18, a4, a5, a6);
    swift_endAccess();
    if (!v19)
    {
      if (qword_1EDD07960 != -1)
      {
        swift_once();
      }

      v25 = sub_1C754FF1C();
      __swift_project_value_buffer(v25, qword_1EDD07968);
      v17 = v17;
      v19 = sub_1C754FEEC();
      v26 = sub_1C755119C();
      if (os_log_type_enabled(v19, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = v30;
        *(v27 + 4) = [v17 extendedSceneIdentifier];

        _os_log_impl(&dword_1C6F5C000, v19, v26, "Unable to fetch scene node for identifier %llu.", v27, 0xCu);
        MEMORY[0x1CCA5F8E0](v27, -1, -1);
      }

      else
      {

        v19 = v17;
      }

      goto LABEL_30;
    }

    [v17 confidence];
    v21 = v20;
    [v19 searchThreshold];
    if (v22 > v21)
    {
LABEL_30:

      v17 = v19;
LABEL_31:
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB47B4();
        v31 = v28;
      }

      v23 = *(v31 + 16);
      if (v23 >= *(v31 + 24) >> 1)
      {
        sub_1C6FB47B4();
        v31 = v29;
      }

      *(v31 + 16) = v23 + 1;
      v24 = v31 + 16 * v23;
      *(v24 + 32) = v17;
      *(v24 + 40) = v19;
    }
  }

  v15 = v10;
  v16 = v11;
  if (v11)
  {
LABEL_13:
    v11 = (v16 - 1) & v16;
    v17 = *(*(v6 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v17)
    {
      goto LABEL_32;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v10 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v10 >= ((v9 + 64) >> 6))
    {
      goto LABEL_32;
    }

    v16 = *(v8 + 8 * v10);
    ++v15;
    if (v16)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t PersonalTraitEntityNetDataSource.__allocating_init(configuration:storyPhotoLibraryContext:)(const void *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v5 = *a2;
  v6 = *(a2 + 4);
  v7 = a2[2];
  memcpy((v4 + 16), a1, 0xD8uLL);
  *(v4 + 232) = v5;
  *(v4 + 240) = v6;
  v8 = MEMORY[0x1E69E7CC8];
  *(v4 + 248) = v7;
  *(v4 + 256) = v8;
  return v4;
}

uint64_t PersonalTraitEntityNetDataSource.generateLibraryBasedPersonalTraits(assetSampler:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1C754F2FC();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C735060C, 0, 0);
}

void sub_1C735060C()
{
  v3 = v1[6];
  v4 = *(v3 + 184);
  v5 = *(v3 + 168);
  v6 = v4 * v5;
  if ((v4 * v5) >> 64 == (v4 * v5) >> 63)
  {
    v7 = v1[3];
    swift_getObjectType();
    v0 = (*(v7 + 24))();
    v2 = *(v0 + 16);
    if (v6 < v2)
    {

      sub_1C754F2BC();
      sub_1C754F2BC();
      sub_1C754F2CC();
      v14 = swift_task_alloc();
      v1[12] = v14;
      *v14 = v1;
      v14[1] = sub_1C73509A4;
      OUTLINED_FUNCTION_44_29();

      __asm { BRAA            X4, X16 }
    }

    if (qword_1EDD07960 == -1)
    {
LABEL_5:
      v8 = sub_1C754FF1C();
      __swift_project_value_buffer(v8, qword_1EDD07968);
      v9 = sub_1C754FEEC();
      v10 = sub_1C75511BC();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 134218240;
        *(v11 + 4) = v2;
        *(v11 + 12) = 2048;
        *(v11 + 14) = v6;
        _os_log_impl(&dword_1C6F5C000, v9, v10, "%ld assets provided, %ld needed for clustering. Returning each asset as its own sample.", v11, 0x16u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v12 = v1[5];
      v13 = v1[4];

      PersonalTraitEntityNetDataSource.generateExhaustiveLibraryBasedPersonalTraits(assetUUIDs:eventRecorder:progressReporter:)(v0, v13, v12);

      OUTLINED_FUNCTION_0_89();
      OUTLINED_FUNCTION_44_29();

      __asm { BRAA            X2, X16 }
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_18_53();
  swift_once();
  goto LABEL_5;
}

uint64_t sub_1C73509A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_1C7350C60;
  }

  else
  {
    v4 = sub_1C7350AB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C7350AB8(uint64_t a1)
{
  v2 = v1[14];
  sub_1C754F2EC();
  v3 = v1[13];
  if (v2)
  {
    v4 = v1[8];

    v5 = *(v4 + 8);
    (v5)(v1[10], v1[7]);
    v6 = OUTLINED_FUNCTION_90();
    v5(v6);

    v12 = v1[1];

    return v12();
  }

  else
  {
    v7 = v1[9];
    v8 = v1[7];
    v9 = v1[8];
    v10 = v1[5];
    v11 = v1[4];
    (*(v9 + 32))(v7, v1[10], v8);
    PersonalTraitEntityNetDataSource.generateLibraryBasedPersonalTraits(clustersWithSamples:eventRecorder:progressReporter:)(v3, v11, v7);

    (*(v9 + 8))(v10, v8);

    v14 = OUTLINED_FUNCTION_0_89();

    return v15(v14);
  }
}

uint64_t sub_1C7350C60()
{
  v1 = *(v0[8] + 8);
  v1(v0[10], v0[7]);
  v2 = v0[7];
  v3 = v0[5];
  v1(v0[11], v2);
  v1(v3, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C7350D44()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  result = sub_1C755146C();
  qword_1EDD07990 = result;
  return result;
}

uint64_t sub_1C7350DC0()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD07968);
  __swift_project_value_buffer(v0, qword_1EDD07968);
  if (qword_1EDD07988 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD07990;
  return sub_1C754FF2C();
}

uint64_t PersonalTraitEntityNetDataSource.init(configuration:storyPhotoLibraryContext:)(void *__src, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = a2[2];
  memcpy((v2 + 16), __src, 0xD8uLL);
  *(v2 + 232) = v3;
  *(v2 + 240) = v4;
  v6 = MEMORY[0x1E69E7CC8];
  *(v2 + 248) = v5;
  *(v2 + 256) = v6;
  return v2;
}

char *PersonalTraitEntityNetDataSource.generateExhaustiveLibraryBasedPersonalTraits(assetUUIDs:eventRecorder:progressReporter:)(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v16 = a2;
    v17 = a3;
    v18 = MEMORY[0x1E69E7CC0];
    sub_1C716DFEC();
    v4 = v18;
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C755BAB0;
      *(v9 + 32) = v8;
      *(v9 + 40) = v7;
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1C755BAB0;
      *(v10 + 32) = v8;
      *(v10 + 40) = v7;
      v11 = *(v18 + 16);
      v12 = *(v18 + 24);
      swift_bridgeObjectRetain_n();
      if (v11 >= v12 >> 1)
      {
        sub_1C716DFEC();
      }

      *(v18 + 16) = v11 + 1;
      v13 = v18 + 16 * v11;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v6 += 2;
      --v3;
    }

    while (v3);
    a2 = v16;
    a3 = v17;
  }

  v14 = PersonalTraitEntityNetDataSource.generateLibraryBasedPersonalTraits(clustersWithSamples:eventRecorder:progressReporter:)(v4, a2, a3);

  return v14;
}

char *PersonalTraitEntityNetDataSource.generateLibraryBasedPersonalTraits(clustersWithSamples:eventRecorder:progressReporter:)(char *a1, char *a2, uint64_t a3)
{
  v157 = a1;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD00, &qword_1C75844F0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v160 = &v138 - v6;
  v155 = type metadata accessor for PersonalTrait(0);
  OUTLINED_FUNCTION_3_0();
  v165 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_2();
  v159 = v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  v154 = &v138 - v11;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  v164 = &v138 - v13;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  v158 = (&v138 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD08, &qword_1C75844F8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  OUTLINED_FUNCTION_14_2();
  v166 = v17;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v138 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD10, &qword_1C7584500);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v138 - v22;
  v24 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, *(a2 + 3));
  sub_1C754F1CC();
  v30 = v167;
  sub_1C754F2CC();
  if (!v30)
  {
    v162 = v20;
    v163 = v23;
    v148 = a3;
    v147 = v29;
    v34 = sub_1C7351EAC(v157);
    sub_1C754F2DC();
    isUniquelyReferenced_nonNull_native = 0;
    v36 = a2;
    v37 = *(v34 + 16);
    v142 = v36;
    v150 = v24;
    v149 = v26;
    if (!v37)
    {

      v143 = MEMORY[0x1E69E7CC0];
      goto LABEL_13;
    }

    v176 = MEMORY[0x1E69E7CC0];
    v38 = &v176;
    sub_1C716E0EC(0, v37, 0);
    v23 = 0;
    v39 = v176;
    v40 = v34 + 48;
    v167 = v34;
    v157 = v37;
    while (v23 < *(v34 + 16))
    {
      v41 = *(v40 - 16);
      v42 = v39;
      sub_1C75504FC();
      sub_1C75504FC();
      v43 = sub_1C75504FC();
      v38 = v168;
      v44 = isUniquelyReferenced_nonNull_native;
      v45 = PersonalTraitEntityNetDataSource.personalTraitBySceneIdentifier(clusterRepresentativeAssets:clusterAssetUUIDs:)(v43, v41);

      v39 = v42;
      v176 = v42;
      v47 = *(v42 + 16);
      v46 = *(v42 + 24);
      if (v47 >= v46 >> 1)
      {
        v38 = &v176;
        sub_1C716E0EC(v46 > 1, v47 + 1, 1);
        v39 = v176;
      }

      ++v23;
      *(v39 + 16) = v47 + 1;
      *(v39 + 8 * v47 + 32) = v45;
      v40 += 24;
      isUniquelyReferenced_nonNull_native = v44;
      v34 = v167;
      if (v157 == v23)
      {
        v143 = v39;

        v36 = v142;
LABEL_13:
        sub_1C754F2DC();
        v48 = v163;
        v49 = 0;
        v50 = v143;
        v141 = *(v143 + 16);
        v51 = MEMORY[0x1E69E7CC8];
        v140 = v143 + 32;
        v139 = 0;
LABEL_14:
        if (v49 == v141)
        {
LABEL_50:

          sub_1C754F2EC();
          v82 = v51;
          if (isUniquelyReferenced_nonNull_native)
          {

            v23 = *(v36 + 3);
            OUTLINED_FUNCTION_10_3(v36);
            sub_1C754F1AC();
            v110 = OUTLINED_FUNCTION_48_24();
            v32(v110);
            return v23;
          }

LABEL_53:
          v23 = sub_1C71CD990(v82);
          if (qword_1EDD07960 != -1)
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (v49 < *(v50 + 16))
          {
            v52 = *(v140 + 8 * v49);
            v146 = v49 + 1;
            sub_1C75504FC();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v176 = v51;
            sub_1C6F78058(v52, sub_1C7355848, 0, v170);
            v156 = v170[0];
            v151 = v170[1];
            v53 = v172;
            v54 = v173;
            v152 = v174;
            v153 = v175;
            v144 = v171;
            v23 = ((v171 + 64) >> 6);
            v145 = v52;
            sub_1C75504FC();
            v55 = v165;
            while (1)
            {
              v56 = v54;
              v36 = v53;
              LODWORD(v168) = isUniquelyReferenced_nonNull_native;
              v157 = v53;
              if (!v54)
              {
                v57 = v53;
                v58 = v162;
                while (1)
                {
                  v36 = v57 + 1;
                  if (__OFADD__(v57, 1))
                  {
                    break;
                  }

                  if (v36 >= v23)
                  {
                    v167 = 0;
                    v65 = 1;
                    v63 = v161;
                    goto LABEL_23;
                  }

                  v56 = *(v151 + 8 * v36);
                  ++v57;
                  if (v56)
                  {
                    goto LABEL_22;
                  }
                }

                __break(1u);
                goto LABEL_50;
              }

LABEL_22:
              v167 = (v56 - 1) & v56;
              v59 = __clz(__rbit64(v56)) | (v36 << 6);
              v60 = *(*(v156 + 48) + 8 * v59);
              v61 = v158;
              sub_1C7355E5C(*(v156 + 56) + *(v55 + 72) * v59, v158);
              v63 = v161;
              v62 = v162;
              v64 = *(v161 + 48);
              *v162 = v60;
              sub_1C7355EB4(v61, v62 + v64);
              v58 = v62;
              v48 = v163;
              v65 = 0;
              v57 = v36;
LABEL_23:
              v66 = 1;
              v67 = v58;
              __swift_storeEnumTagSinglePayload(v58, v65, 1, v63);
              v68 = v67;
              v69 = v166;
              sub_1C72852E4(v68, v166, &qword_1EC21AD08, &qword_1C75844F8);
              EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v69, 1, v63);
              v71 = v160;
              if (EnumTagSinglePayload != 1)
              {
                sub_1C72852E4(v166, v160, &qword_1EC21AD00, &qword_1C75844F0);
                v152(v71);
                sub_1C6FD7FC8(v71, &qword_1EC21AD00, &qword_1C75844F0);
                v66 = 0;
              }

              isUniquelyReferenced_nonNull_native = &qword_1C7584508;
              v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD18, &qword_1C7584508);
              __swift_storeEnumTagSinglePayload(v48, v66, 1, v72);
              v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD18, &qword_1C7584508);
              v74 = __swift_getEnumTagSinglePayload(v48, 1, v73);
              v75 = v164;
              if (v74 == 1)
              {
                sub_1C6F61E88(v156);

                isUniquelyReferenced_nonNull_native = v139;
                v36 = v142;
                v50 = v143;
                v49 = v146;
                goto LABEL_14;
              }

              isa = v48->isa;
              OUTLINED_FUNCTION_2_100();
              sub_1C7355EB4(v48 + v77, v75);
              v79 = sub_1C6FCABD0(isa);
              v80 = v51[2];
              v81 = (v78 & 1) == 0;
              v82 = v80 + v81;
              if (__OFADD__(v80, v81))
              {
                __break(1u);
                goto LABEL_53;
              }

              v83 = v78;
              if (v51[3] >= v82)
              {
                v55 = v165;
                if (v168)
                {
                  goto LABEL_32;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD20, &unk_1C7584510);
                sub_1C7551A3C();
              }

              else
              {
                sub_1C7354548(v82, v168 & 1);
                v84 = sub_1C6FCABD0(isa);
                if ((v83 & 1) != (v85 & 1))
                {
                  result = sub_1C7551E4C();
                  __break(1u);
                  return result;
                }

                v79 = v84;
              }

              v55 = v165;
LABEL_32:
              v51 = v176;
              if (v83)
              {
                isUniquelyReferenced_nonNull_native = *(v55 + 72) * v79;
                OUTLINED_FUNCTION_2_100();
                v87 = v159;
                sub_1C7355E5C(v86 + isUniquelyReferenced_nonNull_native, v159);
                v88 = v87;
                v38 = *(v87 + 16);
                v89 = *(v75 + 16);
                v90 = v89[2];
                v48 = v38[2];
                if (__OFADD__(v48, v90))
                {
                  __break(1u);
LABEL_62:
                  __break(1u);
LABEL_63:
                  __break(1u);
                  goto LABEL_64;
                }

                v91 = *(v88 + 8);
                v168 = *v88;
                v157 = v91;
                sub_1C75504FC();
                sub_1C75504FC();
                sub_1C75504FC();
                if (!swift_isUniquelyReferenced_nonNull_native() || v48 + v90 > (v38[3] >> 1))
                {
                  sub_1C6FB1814();
                  v38 = v92;
                }

                v93 = v164;
                if (v89[2])
                {
                  if (((v38[3] >> 1) - v38[2]) < v90)
                  {
                    __break(1u);
                    goto LABEL_66;
                  }

                  swift_arrayInitWithCopy();

                  OUTLINED_FUNCTION_46_29();
                  if (v90)
                  {
                    v95 = v38[2];
                    v96 = __OFADD__(v95, v90);
                    v97 = (v95 + v90);
                    if (v96)
                    {
                      __break(1u);
                      break;
                    }

                    v38[2] = v97;
                  }
                }

                else
                {

                  OUTLINED_FUNCTION_46_29();
                  if (v90)
                  {
                    goto LABEL_63;
                  }
                }

                v101 = v94[7];
                v102 = v159;
                v103 = *(v159 + v101);
                v104 = v159 + v94[8];
                v105 = *v104;
                v106 = *(v104 + 8);
                v107 = *(v159 + v94[9]) + *(v93 + v94[9]);
                *v89 = v168;
                v89[1] = v157;
                v89[2] = v38;
                *(v89 + v101) = v103;
                v108 = v89 + v94[8];
                *v108 = v105;
                *(v108 + 1) = v106;
                v109 = *(v104 + 16);
                v108[16] = v109;
                *(v89 + v94[9]) = v107;
                *(v89 + v94[10]) = MEMORY[0x1E69E7CC0];
                sub_1C7244FF8(v105, v106, v109);
                sub_1C754DFEC();
                sub_1C7245414(v102);
                sub_1C7245414(v93);
                sub_1C718F5D4(v89, v51[7] + isUniquelyReferenced_nonNull_native);
                isUniquelyReferenced_nonNull_native = 1;
                v53 = v57;
                v54 = v167;
                v55 = v165;
                v48 = v163;
              }

              else
              {
                v176[(v79 >> 6) + 8] |= 1 << v79;
                *(v51[6] + 8 * v79) = isa;
                OUTLINED_FUNCTION_2_100();
                sub_1C7355EB4(v75, v98);
                v99 = v51[2];
                v96 = __OFADD__(v99, 1);
                v100 = v99 + 1;
                if (v96)
                {
                  goto LABEL_62;
                }

                v51[2] = v100;
                isUniquelyReferenced_nonNull_native = 1;
                v53 = v57;
                v54 = v167;
              }
            }
          }

          __break(1u);
LABEL_72:
          OUTLINED_FUNCTION_18_53();
          swift_once();
        }

        v111 = sub_1C754FF1C();
        __swift_project_value_buffer(v111, qword_1EDD07968);
        sub_1C75504FC();
        v48 = sub_1C754FEEC();
        v112 = sub_1C75511BC();

        v113 = os_log_type_enabled(v48, v112);
        v51 = v150;
        if (v113)
        {
          v114 = swift_slowAlloc();
          v168 = swift_slowAlloc();
          v176 = v168;
          *v114 = 136380675;
          v119 = *(v23 + 2);
          v38 = MEMORY[0x1E69E7CC0];
          if (v119)
          {
            v164 = v114;
            LODWORD(v166) = v112;
            v167 = v48;
            v139 = isUniquelyReferenced_nonNull_native;
            v169 = MEMORY[0x1E69E7CC0];
            sub_1C6F7ED9C(0, v119, 0, v115, v116, v117, v118);
            v38 = v169;
            v120 = &v23[(*(v165 + 80) + 32) & ~*(v165 + 80)];
            v121 = *(v165 + 72);
            v122 = v158;
            do
            {
              OUTLINED_FUNCTION_2_100();
              sub_1C7355E5C(v120, v122);
              v123 = *v122;
              v124 = v122[1];
              sub_1C75504FC();
              sub_1C7245414(v122);
              v169 = v38;
              v130 = v38[2];
              v129 = v38[3];
              if (v130 >= v129 >> 1)
              {
                sub_1C6F7ED9C(v129 > 1, v130 + 1, 1, v125, v126, v127, v128);
                v38 = v169;
              }

              v38[2] = (v130 + 1);
              v131 = &v38[2 * v130];
              v131[4] = v123;
              v131[5] = v124;
              v120 += v121;
              --v119;
              v122 = v158;
            }

            while (v119);
LABEL_67:
            v51 = v150;
            v48 = v167;
            LOBYTE(v112) = v166;
            v114 = v164;
          }

          v132 = MEMORY[0x1CCA5D090](v38, MEMORY[0x1E69E6158]);
          v134 = v133;

          v135 = sub_1C6F765A4(v132, v134, &v176);

          *(v114 + 4) = v135;
          _os_log_impl(&dword_1C6F5C000, v48, v112, "Generated VU based traits: %{private}s", v114, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v168);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        else
        {
LABEL_64:
        }

        __swift_project_boxed_opaque_existential_1(v142, *(v142 + 3));
        sub_1C754F1AC();
        v136 = OUTLINED_FUNCTION_48_24();
        v137(v136, v51);
        return v23;
      }
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v23 = *(a2 + 3);
  OUTLINED_FUNCTION_10_3(a2);
  sub_1C754F1AC();
  (*(v26 + 8))(v29, v24);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_12();
  (*(v31 + 8))(a3);
  return v23;
}

unint64_t sub_1C7351EAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v58 = v1;
  if (v1)
  {
    v68 = MEMORY[0x1E69E7CC0];
    sub_1C716D5B0(0, v1, 0);
    v2 = v68;
    v4 = (a1 + 40);
    do
    {
      v5 = *v4;
      v7 = *(v68 + 16);
      v6 = *(v68 + 24);
      v8 = v7 + 1;
      sub_1C75504FC();
      if (v7 >= v6 >> 1)
      {
        sub_1C716D5B0(v6 > 1, v7 + 1, 1);
      }

      *(v68 + 16) = v8;
      *(v68 + 8 * v7 + 32) = v5;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v8 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v8 == v9)
    {

      sub_1C73529C8(v10);
      if (!v64)
      {
        v19 = v18;

        v65 = sub_1C6FB6304();
        v20 = 0;
        v62 = v19 & 0xC000000000000001;
        v21 = MEMORY[0x1E69E7CC8];
        v59 = v19;
        v61 = v19 & 0xFFFFFFFFFFFFFF8;
        while (v65 != v20)
        {
          if (v62)
          {
            v22 = MEMORY[0x1CCA5DDD0](v20, v19);
          }

          else
          {
            if (v20 >= *(v61 + 16))
            {
              goto LABEL_67;
            }

            v22 = *(v19 + 8 * v20 + 32);
          }

          v23 = v22;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_66;
          }

          v24 = sub_1C70CAC04(v22);
          if (!v25)
          {
            goto LABEL_70;
          }

          v26 = v24;
          v27 = v25;
          v28 = v23;
          swift_isUniquelyReferenced_nonNull_native();
          v29 = sub_1C6F78124(v26, v27);
          if (__OFADD__(v21[2], (v30 & 1) == 0))
          {
            goto LABEL_68;
          }

          v31 = v29;
          v32 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215188, &unk_1C755C720);
          if (sub_1C7551A2C())
          {
            v33 = sub_1C6F78124(v26, v27);
            if ((v32 & 1) != (v34 & 1))
            {
              goto LABEL_71;
            }

            v31 = v33;
          }

          if (v32)
          {

            v35 = v21[7];
            v36 = *(v35 + 8 * v31);
            *(v35 + 8 * v31) = v28;
          }

          else
          {
            v21[(v31 >> 6) + 8] |= 1 << v31;
            v37 = (v21[6] + 16 * v31);
            *v37 = v26;
            v37[1] = v27;
            *(v21[7] + 8 * v31) = v28;

            v38 = v21[2];
            v16 = __OFADD__(v38, 1);
            v39 = v38 + 1;
            if (v16)
            {
              goto LABEL_69;
            }

            v21[2] = v39;
          }

          ++v20;
          v19 = v59;
        }

        if (!v58)
        {

          return MEMORY[0x1E69E7CC0];
        }

        v69 = MEMORY[0x1E69E7CC0];
        sub_1C716E0A0(0, v58, 0);
        v40 = 0;
        v8 = v69;
        v60 = a1 + 32;
        do
        {
          v66 = v40 + 1;
          v41 = MEMORY[0x1E69E7CC0];
          v67 = MEMORY[0x1E69E7CC0];
          v42 = *(v60 + 16 * v40 + 8);
          v43 = *(v42 + 16);
          v63 = *(v60 + 16 * v40);
          sub_1C75504FC();
          sub_1C75504FC();
          v44 = 0;
          v45 = v42 + 40;
LABEL_44:
          v46 = (v45 + 16 * v44);
          while (v43 != v44)
          {
            if (v44 >= *(v42 + 16))
            {
              __break(1u);
              goto LABEL_61;
            }

            if (v21[2])
            {
              v47 = *(v46 - 1);
              v48 = *v46;
              sub_1C75504FC();
              v49 = sub_1C6F78124(v47, v48);
              if (v50)
              {
                v51 = *(v21[7] + 8 * v49);

                MEMORY[0x1CCA5D040](v52);
                if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1C7550B9C();
                }

                ++v44;
                sub_1C7550BEC();
                v41 = v67;
                v45 = v42 + 40;
                goto LABEL_44;
              }
            }

            v46 += 2;
            ++v44;
          }

          v54 = *(v69 + 16);
          v53 = *(v69 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_1C716E0A0(v53 > 1, v54 + 1, 1);
          }

          *(v69 + 16) = v54 + 1;
          v55 = v69 + 24 * v54;
          *(v55 + 32) = v63;
          *(v55 + 48) = v41;
          v40 = v66;
        }

        while (v66 != v58);
      }

      return v8;
    }

    if (v9 >= *(v2 + 16))
    {
      break;
    }

    v11 = *(v2 + 8 * v9 + 32);
    v12 = *(v11 + 16);
    v13 = *(v10 + 16);
    if (__OFADD__(v13, v12))
    {
      goto LABEL_62;
    }

    sub_1C75504FC();
    if (!swift_isUniquelyReferenced_nonNull_native() || v13 + v12 > *(v10 + 24) >> 1)
    {
      sub_1C6FB1814();
      v10 = v14;
    }

    if (*(v11 + 16))
    {
      if ((*(v10 + 24) >> 1) - *(v10 + 16) < v12)
      {
        goto LABEL_64;
      }

      swift_arrayInitWithCopy();

      if (v12)
      {
        v15 = *(v10 + 16);
        v16 = __OFADD__(v15, v12);
        v17 = v15 + v12;
        if (v16)
        {
          goto LABEL_65;
        }

        *(v10 + 16) = v17;
      }
    }

    else
    {

      if (v12)
      {
        goto LABEL_63;
      }
    }

    ++v9;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t PersonalTraitEntityNetDataSource.personalTraitBySceneIdentifier(clusterRepresentativeAssets:clusterAssetUUIDs:)(uint64_t a1, uint64_t a2)
{
  v71 = type metadata accessor for PersonalTrait(0);
  OUTLINED_FUNCTION_3_0();
  v68 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_2();
  v66 = v7;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v8);
  v65 = (&v61 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A18, &unk_1C7577780);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v61 - v11;
  v12 = sub_1C7352D80(a1);
  v63 = *(a2 + 16);
  v64 = a2;
  v62 = sub_1C6FB6304();
  v13 = *(v2 + 176);
  v14 = v12;
  v15 = v13 * v62;
  v16 = v12 + 8;
  v17 = 1 << *(v12 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v12[8];
  v20 = (v17 + 63) >> 6;
  sub_1C75504FC();
  v21 = 0;
  v73 = MEMORY[0x1E69E7CC8];
  *&v22 = 134217984;
  v67 = v22;
  v69 = v12;
  while (v19)
  {
LABEL_9:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = (v21 << 9) | (8 * v24);
    v26 = *(v14[7] + v25);
    if (v15 <= v26)
    {
      v27 = *(v14[6] + v25);
      v28 = sub_1C7355C00(v27);
      if (!v29)
      {
        goto LABEL_18;
      }

      v30 = v28;
      v31 = v29;
      v72 = v27;
      v32 = [v27 extendedSceneClassId];
      v33 = v32;
      v34 = v73;
      if (*(v73 + 16) && (sub_1C6FCABD0(v32), v34 = v73, (v35 & 1) != 0))
      {
        OUTLINED_FUNCTION_2_100();
        v36 = v70;
        sub_1C7355E5C(v37, v70);
        __swift_storeEnumTagSinglePayload(v36, 0, 1, v71);

        sub_1C6FD7FC8(v36, &qword_1EC217A18, &unk_1C7577780);
        if (qword_1EDD07960 != -1)
        {
          OUTLINED_FUNCTION_18_53();
          swift_once();
        }

        v38 = sub_1C754FF1C();
        __swift_project_value_buffer(v38, qword_1EDD07968);
        v39 = sub_1C754FEEC();
        v40 = sub_1C755119C();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = v67;
          *(v41 + 4) = v33;
          _os_log_impl(&dword_1C6F5C000, v39, v40, "Encountered multiple sceneNodes for scene identifier %llu", v41, 0xCu);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        v14 = v69;
        v27 = v72;
LABEL_18:
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v70, 1, 1, v71);
        sub_1C6FD7FC8(v70, &qword_1EC217A18, &unk_1C7577780);
        v42 = static PersonalTraitScorer.calculateEntityNetScoreForCluster(clusterSize:numberOfRepresentativeAssetsWithTrait:numberOfRepresentativeAssetsForCluster:)(v63, v26, v62);
        v43 = v64;
        v44 = v65;
        *v65 = v30;
        v44[1] = v31;
        v44[2] = v43;
        v45 = v71;
        *(v44 + v71[7]) = 1;
        v46 = v44 + v45[8];
        *v46 = v33;
        *(v46 + 1) = 0;
        v46[16] = 0;
        *(v44 + v45[9]) = v42;
        *(v44 + v45[10]) = MEMORY[0x1E69E7CC0];
        sub_1C75504FC();
        sub_1C754DFEC();
        OUTLINED_FUNCTION_2_100();
        sub_1C7355E5C(v44, v66);
        swift_isUniquelyReferenced_nonNull_native();
        v73 = v33;
        v74 = v34;
        v47 = sub_1C6FCABD0(v33);
        if (__OFADD__(*(v34 + 16), (v48 & 1) == 0))
        {
          goto LABEL_30;
        }

        v49 = v47;
        v50 = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD20, &unk_1C7584510);
        v51 = sub_1C7551A2C();
        v52 = v72;
        if (v51)
        {
          v53 = v73;
          v54 = sub_1C6FCABD0(v73);
          if ((v50 & 1) != (v55 & 1))
          {
            goto LABEL_32;
          }

          v49 = v54;
          v14 = v69;
        }

        else
        {
          v14 = v69;
          v53 = v73;
        }

        v73 = v74;
        if (v50)
        {
          sub_1C718F5D4(v66, *(v74 + 56) + *(v68 + 72) * v49);

          sub_1C7245414(v65);
        }

        else
        {
          *(v74 + 8 * (v49 >> 6) + 64) |= 1 << v49;
          *(*(v73 + 48) + 8 * v49) = v53;
          OUTLINED_FUNCTION_2_100();
          sub_1C7355EB4(v66, v56);

          sub_1C7245414(v65);
          v57 = *(v73 + 16);
          v58 = __OFADD__(v57, 1);
          v59 = v57 + 1;
          if (v58)
          {
            goto LABEL_31;
          }

          *(v73 + 16) = v59;
        }
      }
    }
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v20)
    {

      return v73;
    }

    v19 = v16[v23];
    ++v21;
    if (v19)
    {
      v21 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void sub_1C73529C8(uint64_t a1)
{
  v2 = v1;
  v3 = objc_autoreleasePoolPush();
  sub_1C7352A7C(v2, &v4, &v5);
  objc_autoreleasePoolPop(v3);
}

void sub_1C7352A7C(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v44 = a2;
  if (qword_1EDD07988 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDD07990;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v6 = v5;
  PerformanceMeasure.init(name:log:)();
  v7 = *(a1 + 240);
  v8 = *(a1 + 232);

  v9 = [v8 librarySpecificFetchOptions];
  [v9 setSharingFilter_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C75604F0;
  *(v10 + 32) = sub_1C755068C();
  *(v10 + 40) = v11;
  *(v10 + 48) = sub_1C755068C();
  *(v10 + 56) = v12;
  sub_1C70B81C8(v10, v9);
  sub_1C75504FC();
  sub_1C706D154();
  v14 = v13;
  v15 = *(a1 + 232);
  v16 = *(a1 + 240);
  v17 = *(a1 + 248);
  v40 = v15;
  LOWORD(v41) = v16;
  v42 = v17;
  v18 = v15;

  v19 = static StoryGenerationUtilities.assetObjectIDs(for:storyPhotoLibraryContext:)(v14, &v40);

  v20 = v40;

  v21 = objc_opt_self();
  sub_1C71BA844(v19, v29, v30, v22, v23, v24, v25, v26, v27, v28, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, vars0, vars8);
  v32 = sub_1C740A230(v31, v9, v21);
  if (v32)
  {
    v33 = v32;

    v34 = [v33 fetchedObjects];

    if (v34)
    {
      sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
      v35 = sub_1C7550B5C();
      v36 = [objc_allocWithZone(CLSCurationSession) init];
      [v36 prepareAssets_];
      [v21 prefetchScenesOnAssets_];

      sub_1C6F85170();

      *a3 = v35;
    }

    else
    {
      sub_1C7355E08();
      v37 = swift_allocError();
      *v38 = 1;
      swift_willThrow();

      *v44 = v37;
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_1C7352D80(uint64_t a1)
{
  v28 = sub_1C6FB6304();
  v2 = 0;
  v26 = a1 & 0xC000000000000001;
  v3 = MEMORY[0x1E69E7CC8];
  v27 = a1;
  v25 = a1 + 32;
LABEL_2:
  if (v2 == v28)
  {
    return v3;
  }

  sub_1C6FB6330();
  if (v26)
  {
    v4 = MEMORY[0x1CCA5DDD0](v2, v27);
  }

  else
  {
    v4 = *(v25 + 8 * v2);
  }

  v5 = __OFADD__(v2++, 1);
  if (v5)
  {
    goto LABEL_31;
  }

  v29 = v4;
  sub_1C7352FFC(v4);
  v7 = v6;
  v8 = sub_1C6FB6304();
  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {

      goto LABEL_2;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1CCA5DDD0](i, v7);
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      break;
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_1C6FC3484();
    if (__OFADD__(v3[2], (v13 & 1) == 0))
    {
      goto LABEL_28;
    }

    v14 = v12;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD48, &qword_1C75845E8);
    if (sub_1C7551A2C())
    {
      sub_1C6F65BE8(0, &qword_1EDD06988, 0x1E69C0860);
      sub_1C6FC3484();
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_32;
      }

      v14 = v16;
      if (v15)
      {
        goto LABEL_20;
      }
    }

    else if (v15)
    {
      goto LABEL_20;
    }

    v3[(v14 >> 6) + 8] |= 1 << v14;
    *(v3[6] + 8 * v14) = v11;
    *(v3[7] + 8 * v14) = 0;
    v18 = v3[2];
    v5 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v5)
    {
      goto LABEL_30;
    }

    v3[2] = v19;
    v20 = v11;
LABEL_20:
    v21 = v3[7];
    v22 = *(v21 + 8 * v14);
    v5 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v5)
    {
      goto LABEL_29;
    }

    *(v21 + 8 * v14) = v23;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void sub_1C7352FFC(void *a1)
{
  if ([a1 hasCurationModel])
  {
    v2 = [a1 curationModel];
    v3 = [v2 entityNetModel];

    if (v3)
    {
      v4 = [a1 clsSceneClassifications];
      sub_1C6F65BE8(0, &qword_1EDD0CE08, 0x1E6978A38);
      sub_1C7080178(&qword_1EDD0CE00, &qword_1EDD0CE08, 0x1E6978A38);
      v5 = sub_1C7550F8C();

      sub_1C7353254(v5, v3);

      return;
    }
  }

  if (qword_1EDD07960 != -1)
  {
    swift_once();
  }

  v6 = sub_1C754FF1C();
  __swift_project_value_buffer(v6, qword_1EDD07968);
  v7 = a1;
  v8 = sub_1C754FEEC();
  v9 = sub_1C755118C();
  if (!os_log_type_enabled(v8, v9))
  {

    goto LABEL_10;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v16 = v11;
  *v10 = 136315138;
  v12 = sub_1C70CAC04(v7);
  v14 = v13;

  if (v14)
  {
    v15 = sub_1C6F765A4(v12, v14, &v16);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1C6F5C000, v8, v9, "Unknown scene model for asset %s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1CCA5F8E0](v11, -1, -1);
    MEMORY[0x1CCA5F8E0](v10, -1, -1);
LABEL_10:

    return;
  }

  __break(1u);
}

void sub_1C7353254(uint64_t a1, id a2)
{
  v3 = v2;
  v6 = [a2 sceneTaxonomy];
  [a2 version];
  v7 = sub_1C7551D8C();
  v9 = v8;
  v10 = a2;

  sub_1C75504FC();
  v72 = v3;
  v70 = v6;
  sub_1C735007C(a1, v10, v3, v7, v9, v70);
  v12 = v11;

  v13 = 0;
  v14 = *(v12 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v14 == v13)
    {
      v25 = *(v16 + 16);
      if (v25)
      {
        sub_1C755195C();
        v26 = 40;
        do
        {
          v27 = *(v16 + v26);
          sub_1C755192C();
          sub_1C755196C();
          sub_1C755197C();
          sub_1C755193C();
          v26 += 16;
          --v25;
        }

        while (v25);

        v35 = v15;
      }

      else
      {

        v35 = MEMORY[0x1E69E7CC0];
      }

      sub_1C706F690(v35, v28, v29, v30, v31, v32, v33, v34, v68);
      v71 = v36;
      v37 = *(v72 + 24);
      v38 = *(v12 + 16);
      if (v38)
      {
        sub_1C755195C();
        v39 = 40;
        do
        {
          v40 = *(v12 + v39);
          sub_1C755192C();
          sub_1C755196C();
          sub_1C755197C();
          sub_1C755193C();
          v39 += 16;
          --v38;
        }

        while (v38);

        v41 = v15;
      }

      else
      {

        v41 = MEMORY[0x1E69E7CC0];
      }

      v42 = sub_1C6FB6304();
      v43 = 0;
      v44 = v41 & 0xC000000000000001;
      v69 = v41;
      v74 = v41 + 32;
      v75 = v41 & 0xFFFFFFFFFFFFFF8;
      v45 = v72;
      for (i = v41 & 0xC000000000000001; ; v44 = i)
      {
        while (1)
        {
LABEL_23:
          if (v43 == v42)
          {

            return;
          }

          if (v44)
          {
            v46 = MEMORY[0x1CCA5DDD0](v43, v69);
          }

          else
          {
            if (v43 >= *(v75 + 16))
            {
              goto LABEL_56;
            }

            v46 = *(v74 + 8 * v43);
          }

          v47 = v46;
          if (__OFADD__(v43++, 1))
          {
            goto LABEL_55;
          }

          v49 = [v46 name];
          v50 = sub_1C755068C();
          v52 = v51;

          if ((*(v45 + 56) & 1) == 0)
          {
            break;
          }

LABEL_29:

LABEL_30:
          sub_1C755192C();
          sub_1C755196C();
          sub_1C755197C();
          sub_1C755193C();
        }

        v53 = v42;
        v54 = *(v45 + 16);
        if (*(v54 + 16))
        {
          sub_1C7551F3C();
          sub_1C75505AC();
          v55 = sub_1C7551FAC();
          v56 = ~(-1 << *(v54 + 32));
          do
          {
            v57 = v55 & v56;
            if (((*(v54 + 56 + (((v55 & v56) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v55 & v56)) & 1) == 0)
            {

              v45 = v72;
              goto LABEL_51;
            }

            v58 = (*(v54 + 48) + 16 * v57);
            if (*v58 == v50 && v58[1] == v52)
            {
              break;
            }

            v60 = sub_1C7551DBC();
            v55 = v57 + 1;
          }

          while ((v60 & 1) == 0);
          v42 = v53;
          v45 = v72;
          v44 = i;
          if (*(v37 + 16))
          {
            sub_1C7551F3C();
            sub_1C75505AC();
            v61 = sub_1C7551FAC();
            v62 = ~(-1 << *(v37 + 32));
            while (1)
            {
              v63 = v61 & v62;
              if (((*(v37 + 56 + (((v61 & v62) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v61 & v62)) & 1) == 0)
              {
                break;
              }

              v64 = (*(v37 + 48) + 16 * v63);
              if (*v64 != v50 || v64[1] != v52)
              {
                v66 = sub_1C7551DBC();
                v61 = v63 + 1;
                if ((v66 & 1) == 0)
                {
                  continue;
                }
              }

              sub_1C7353A30(v47, v71);
              if (v67)
              {
                goto LABEL_30;
              }

              goto LABEL_23;
            }
          }

          goto LABEL_29;
        }

LABEL_51:
        v42 = v53;
      }
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    v76 = *(v12 + 16 * v13 + 32);
    v17 = v76;
    v18 = *(&v76 + 1);
    [v17 boundingBox];
    x = v77.origin.x;
    y = v77.origin.y;
    width = v77.size.width;
    height = v77.size.height;
    if (CGRectGetHeight(v77) > 0.0 && (v78.origin.x = x, v78.origin.y = y, v78.size.width = width, v78.size.height = height, CGRectGetWidth(v78) > 0.0))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C716EC4C(0, *(v16 + 16) + 1, 1);
      }

      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1C716EC4C(v23 > 1, v24 + 1, 1);
      }

      ++v13;
      *(v16 + 16) = v24 + 1;
      *(v16 + 16 * v24 + 32) = v76;
    }

    else
    {

      ++v13;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

id sub_1C7353840(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  v5 = v4;
  v10 = *v4;
  if (*v4)[2] && (v11 = sub_1C6F78124(a2, a3), (v12) && (v13 = *(v10[7] + 8 * v11), *(v13 + 16)) && (v14 = sub_1C6FCABD0(a1), (v15))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    v17 = v16;
  }

  else
  {
    v16 = [a4 nodeForExtendedSceneClassId_];
    if (v16)
    {
      if (sub_1C6FE3768())
      {

        v19 = sub_1C7353DD8(v27, a2, a3);
        if (*v18)
        {
          v20 = v18;
          v21 = v16;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = *v20;
          sub_1C6FC97CC(v21, a1, isUniquelyReferenced_nonNull_native);
          *v20 = v26;
        }

        (v19)(v27, 0);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD50, &unk_1C75845F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C755BAB0;
        *(inited + 32) = a1;
        *(inited + 40) = v16;
        sub_1C6F65BE8(0, &qword_1EDD06988, 0x1E69C0860);
        v24 = v16;
        sub_1C75504DC();
        swift_isUniquelyReferenced_nonNull_native();
        v27[0] = *v5;
        sub_1C6FC97B8();
        *v5 = v27[0];
      }
    }
  }

  return v16;
}

void sub_1C7353A30(void *a1, uint64_t a2)
{
  sub_1C700A6EC(a1, a2);
  if (v4)
  {
    return;
  }

  v5 = [a1 parents];
  sub_1C6F65BE8(0, &qword_1EDD06988, 0x1E69C0860);
  sub_1C7080178(&qword_1EDD06980, &qword_1EDD06988, 0x1E69C0860);
  v6 = sub_1C7550F8C();

  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_1C755165C();
    sub_1C7550FEC();
    v6 = v29;
    v7 = v30;
    v8 = v31;
    v9 = v32;
    v10 = v33;
  }

  else
  {
    v9 = 0;
    v11 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v6 + 56);
  }

  v25 = v7;
  v14 = (v8 + 64) >> 6;
  v26 = v6;
  while (v6 < 0)
  {
    if (!sub_1C75516FC() || (swift_dynamicCast(), v17 = v28, v27 = v10, !v28))
    {
LABEL_27:
      sub_1C6F61E88(v6);
      return;
    }

LABEL_18:
    if ((a2 & 0xC000000000000001) != 0)
    {
      v18 = v17;
      v19 = sub_1C755170C();

      v10 = v27;
      if (v19)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (*(a2 + 16))
      {
        v20 = sub_1C75513DC();
        v21 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v22 = v20 & v21;
          if (((*(a2 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
          {
            break;
          }

          v23 = *(*(a2 + 48) + 8 * v22);
          v24 = sub_1C75513EC();

          v20 = v22 + 1;
          if (v24)
          {

            v6 = v26;
            goto LABEL_27;
          }
        }
      }

      v7 = v25;
      v6 = v26;
      v10 = v27;
    }
  }

  v15 = v9;
  v16 = v10;
  if (v10)
  {
LABEL_14:
    v27 = (v16 - 1) & v16;
    v17 = *(*(v6 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v17)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_27;
    }

    v16 = *(v7 + 8 * v9);
    ++v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t PersonalTraitEntityNetDataSource.deinit()
{
  memcpy(v3, (v0 + 16), 0xD8uLL);
  sub_1C7059364(v3);
  v1 = *(v0 + 232);

  return v0;
}

uint64_t PersonalTraitEntityNetDataSource.__deallocating_deinit()
{
  PersonalTraitEntityNetDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*sub_1C7353DD8(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1C73558B8(v6, a2, a3);
  return sub_1C7353E4C;
}

void sub_1C7353E4C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_1C7353E98()
{
  OUTLINED_FUNCTION_25_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A430, &qword_1C75804B0);
  OUTLINED_FUNCTION_39_35();
  v25 = v1;
  v3 = sub_1C7551AFC();
  if (!*(v2 + 16))
  {
LABEL_27:

    *v0 = v3;
    return;
  }

  v24 = v2;
  v4 = 0;
  v5 = v2;
  OUTLINED_FUNCTION_1_109();
  OUTLINED_FUNCTION_33_34();
  if (!v1)
  {
LABEL_4:
    v6 = v4;
    while (1)
    {
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v4 >= v0)
      {
        break;
      }

      ++v6;
      if (*(v5 + 8 * v4))
      {
        OUTLINED_FUNCTION_78_0();
        v1 = v8 & v7;
        goto LABEL_9;
      }
    }

    if (v25)
    {
      OUTLINED_FUNCTION_17_69();
      if (v20 != v21)
      {
        OUTLINED_FUNCTION_20_54(v19);
      }

      else
      {
        v22 = OUTLINED_FUNCTION_66_1();
        sub_1C71FAC38(v22, v23, v5);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_99_6();
LABEL_9:
    OUTLINED_FUNCTION_31_39();
    v11 = (v10 + 32 * v9);
    v12 = v11[1];
    v28 = v11[2];
    v29 = *v11;
    v26 = *(v11 + 25);
    v27 = *(v11 + 24);
    if ((v25 & 1) == 0)
    {
      sub_1C75504FC();
      sub_1C75504FC();
    }

    sub_1C7551F3C();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_6_85();
    OUTLINED_FUNCTION_20_6();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_19:
    OUTLINED_FUNCTION_28_32(v14);
    v18 = v17 + 32 * v16;
    *v18 = v29;
    *(v18 + 8) = v12;
    *(v18 + 16) = v28;
    *(v18 + 24) = v27;
    *(v18 + 25) = v26;
    OUTLINED_FUNCTION_47_1();
    v2 = v24;
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_95_2();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_34_33();
    if (!v13)
    {
      OUTLINED_FUNCTION_14_1();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C7354094(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_54_26();
  OUTLINED_FUNCTION_7_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2169F8, &qword_1C7565AD0);
  v8 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_38_31(v8, v9);
  OUTLINED_FUNCTION_102_10();
  if (!v10)
  {
LABEL_27:

    *v2 = v4;
    OUTLINED_FUNCTION_53_30();
    return;
  }

  OUTLINED_FUNCTION_0_146();
  if (!v5)
  {
LABEL_4:
    v11 = v7;
    while (1)
    {
      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v2)
      {
        break;
      }

      OUTLINED_FUNCTION_36_29();
      if (v12)
      {
        OUTLINED_FUNCTION_13_68();
        goto LABEL_9;
      }
    }

    if (v29)
    {
      OUTLINED_FUNCTION_12_63();
      if (v25 != v26)
      {
        OUTLINED_FUNCTION_20_54(v24);
      }

      else
      {
        v27 = OUTLINED_FUNCTION_66_1();
        sub_1C71FAC38(v27, v28, v6);
      }

      *(v3 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_44_1();
LABEL_9:
    OUTLINED_FUNCTION_21_52();
    v15 = *(v14 + 8 * v13);
    if ((v29 & 1) == 0)
    {
      sub_1C75504FC();
    }

    v16 = OUTLINED_FUNCTION_45_30();
    OUTLINED_FUNCTION_37_31(v16, v17, v18);
    sub_1C7551FAC();
    OUTLINED_FUNCTION_5_78();
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_19:
    OUTLINED_FUNCTION_3_94(v20);
    *(v23 + 8 * v22) = v15;
    OUTLINED_FUNCTION_47_1();
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_95_2();
    if (v19)
    {
      if (v21)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_23_43();
    if (!v19)
    {
      OUTLINED_FUNCTION_14_1();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C7354280(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v55 = a6;
  v9 = v6;
  v11 = OUTLINED_FUNCTION_19_1();
  v52 = *(v12(v11) - 8);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v49 - v14;
  v15 = *v6;
  if (*(*v6 + 24) > v6)
  {
    v6 = *(*v6 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v53 = a2;
  v16 = OUTLINED_FUNCTION_40_38(v15, v6);
  if (!v15[2])
  {
LABEL_32:

LABEL_33:
    *v9 = v16;
    return;
  }

  v50 = v9;
  v51 = v15;
  v17 = 0;
  v18 = v15 + 8;
  OUTLINED_FUNCTION_90_1();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;
  v24 = v16 + 8;
  if ((v20 & v19) == 0)
  {
LABEL_6:
    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v17 >= v23)
      {
        break;
      }

      ++v26;
      if (v18[v17])
      {
        OUTLINED_FUNCTION_78_0();
        v21 = v28 & v27;
        goto LABEL_11;
      }
    }

    if ((v53 & 1) == 0)
    {

      v9 = v50;
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_17_69();
    v9 = v50;
    if (v45 != v46)
    {
      *v18 = -1 << v44;
    }

    else
    {
      v47 = OUTLINED_FUNCTION_66_1();
      sub_1C71FAC38(v47, v48, v18);
    }

    v15[2] = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
LABEL_11:
    v29 = v25 | (v17 << 6);
    v30 = v15[7];
    v31 = (v15[6] + 16 * v29);
    v33 = *v31;
    v32 = v31[1];
    v34 = *(v52 + 72);
    v35 = v30 + v34 * v29;
    if (v53)
    {
      sub_1C7355EB4(v35, v54);
    }

    else
    {
      sub_1C7355E5C(v35, v54);
      sub_1C75504FC();
    }

    sub_1C7551F3C();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_20_6();
    if (v36)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_24:
    OUTLINED_FUNCTION_98_0();
    *(v24 + v40) |= v41;
    v43 = (v16[6] + 16 * v42);
    *v43 = v33;
    v43[1] = v32;
    sub_1C7355EB4(v54, v16[7] + v34 * v42);
    ++v16[2];
    v15 = v51;
    if (!v21)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_95_2();
    if (v36)
    {
      if (v38)
      {
        break;
      }
    }

    if (v37 == v39)
    {
      v37 = 0;
    }

    if (v24[v37] != -1)
    {
      OUTLINED_FUNCTION_14_1();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_1C7354548(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PersonalTrait(0);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD60, &unk_1C7584608);
  v38 = v4;
  v9 = sub_1C7551AFC();
  v10 = v9;
  if (!*(v8 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v10;
    return;
  }

  v36 = v3;
  v11 = 0;
  v12 = (v8 + 64);
  v13 = 1 << *(v8 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v8 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = v9 + 64;
  if (!v15)
  {
LABEL_7:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      sub_1C71FAC38(0, (v34 + 63) >> 6, v8 + 64);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_12:
    v21 = v18 | (v11 << 6);
    v22 = *(*(v8 + 48) + 8 * v21);
    v23 = *(v37 + 72);
    v24 = *(v8 + 56) + v23 * v21;
    if (v38)
    {
      sub_1C7355EB4(v24, v7);
    }

    else
    {
      sub_1C7355E5C(v24, v7);
    }

    v25 = sub_1C7551F2C();
    v26 = -1 << *(v10 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v17 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    *(*(v10 + 48) + 8 * v29) = v22;
    sub_1C7355EB4(v7, *(v10 + 56) + v23 * v29);
    ++*(v10 + 16);
    if (!v15)
    {
      goto LABEL_7;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v17 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_1C735488C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_54_26();
  OUTLINED_FUNCTION_7_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD78, &qword_1C7584620);
  v8 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_38_31(v8, v9);
  OUTLINED_FUNCTION_102_10();
  if (!v10)
  {
LABEL_27:

    *v2 = v4;
    OUTLINED_FUNCTION_53_30();
    return;
  }

  OUTLINED_FUNCTION_0_146();
  if (!v5)
  {
LABEL_4:
    v11 = v7;
    while (1)
    {
      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v2)
      {
        break;
      }

      OUTLINED_FUNCTION_36_29();
      if (v12)
      {
        OUTLINED_FUNCTION_13_68();
        goto LABEL_9;
      }
    }

    if (v29)
    {
      OUTLINED_FUNCTION_12_63();
      if (v25 != v26)
      {
        OUTLINED_FUNCTION_20_54(v24);
      }

      else
      {
        v27 = OUTLINED_FUNCTION_66_1();
        sub_1C71FAC38(v27, v28, v6);
      }

      *(v3 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_44_1();
LABEL_9:
    OUTLINED_FUNCTION_21_52();
    v15 = *(v14 + 4 * v13);
    if ((v29 & 1) == 0)
    {
      sub_1C75504FC();
    }

    v16 = OUTLINED_FUNCTION_45_30();
    OUTLINED_FUNCTION_37_31(v16, v17, v18);
    sub_1C7551FAC();
    OUTLINED_FUNCTION_5_78();
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_19:
    OUTLINED_FUNCTION_3_94(v20);
    *(v23 + 4 * v22) = v15;
    OUTLINED_FUNCTION_47_1();
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_95_2();
    if (v19)
    {
      if (v21)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_23_43();
    if (!v19)
    {
      OUTLINED_FUNCTION_14_1();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}