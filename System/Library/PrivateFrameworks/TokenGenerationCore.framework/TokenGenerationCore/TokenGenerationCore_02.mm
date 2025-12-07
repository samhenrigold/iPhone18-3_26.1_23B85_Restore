void (**flattenGrammar(grammar:vocabularyManager:)(void *a1, void *a2))(char *, char *, uint64_t)
{
  v538 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14TerminalSymbolO3key_Si5valuetSgMd, &_s19TokenGenerationCore14TerminalSymbolO3key_Si5valuetSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v479 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v495 = &v479 - v7;
  v528 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  MEMORY[0x1EEE9AC00](v528);
  v525 = (&v479 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v503 = (&v479 - v10);
  v11 = type metadata accessor for CharacterSet();
  v520 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v526 = &v479 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v527 = &v479 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v500 = &v479 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v501 = &v479 - v18;
  v19 = type metadata accessor for TerminalSymbol(0);
  v536 = *(v19 - 8);
  v537 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v504 = &v479 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v494 = (&v479 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v493 = &v479 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v482 = &v479 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v532 = &v479 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v523 = &v479 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v519 = &v479 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v522 = &v479 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v540 = &v479 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v529 = (&v479 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v479 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v507 = &v479 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v506 = &v479 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v502 = &v479 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v515 = &v479 - v49;
  v509 = type metadata accessor for Symbol(0);
  v486 = *(v509 - 8);
  MEMORY[0x1EEE9AC00](v509);
  v508 = (&v479 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = a1[2];
  v484 = a1[1];
  v483 = v51;
  v52 = a1[4];
  v53 = MEMORY[0x1E69E7CC0];
  v546 = MEMORY[0x1E69E7CC0];
  v54 = *(v52 + 16);
  v524 = v11;
  v541 = v41;
  v485 = v52;
  if (v54)
  {
    v544[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54, 0);
    v53 = v544[0];
    v55 = (v52 + 40);
    do
    {
      v57 = *(v55 - 1);
      v56 = *v55;
      v544[0] = v53;
      v58 = *(v53 + 16);
      v59 = *(v53 + 24);

      if (v58 >= v59 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v58 + 1, 1);
        v53 = v544[0];
      }

      *(v53 + 16) = v58 + 1;
      v60 = v53 + 16 * v58;
      *(v60 + 32) = v57;
      *(v60 + 40) = v56;
      v55 += 3;
      --v54;
    }

    while (v54);
    v11 = v524;
    v41 = v541;
  }

  v61 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC19TokenGenerationCore17NonTerminalSymbolV_SayAFGTt0g5Tf4g_n(v53);

  v62 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC19TokenGenerationCore17NonTerminalSymbolV_ShyAFGTt0g5(v61);
  v63 = v62[2];
  v64 = MEMORY[0x1E69E7CC0];
  v496 = v5;
  v498 = v62;
  if (v63)
  {
    v544[0] = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray.reserveCapacity(_:)(v63);
    v65 = v498;
    v66 = 0;
    v67 = v498[2];
    v68 = v498 + 5;
    while (1)
    {
      if (v67 == v66)
      {
        goto LABEL_362;
      }

      if (v66 >= v65[2])
      {
        break;
      }

      v70 = *(v68 - 1);
      v69 = *v68;
      v64 = v544[0];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v64 + 16) + 1, 1);
        v65 = v498;
        v64 = v544[0];
      }

      v72 = *(v64 + 16);
      v71 = *(v64 + 24);
      if (v72 >= v71 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1);
        v65 = v498;
        v64 = v544[0];
      }

      *(v64 + 16) = v72 + 1;
      v73 = (v64 + 24 * v72);
      v73[5] = v69;
      v73[6] = v66;
      v73[4] = v70;
      v68 += 2;
      ++v66;
      v11 = v524;
      v41 = v541;
      if (v63 == v66)
      {

        goto LABEL_17;
      }
    }

LABEL_363:
    __break(1u);
LABEL_364:
    __break(1u);
LABEL_365:
    __break(1u);
LABEL_366:
    __break(1u);
LABEL_367:
    __break(1u);
LABEL_368:
    __break(1u);
LABEL_369:
    __break(1u);
LABEL_370:
    __break(1u);
LABEL_371:
    __break(1u);
LABEL_372:
    __break(1u);
LABEL_373:
    __break(1u);
LABEL_374:
    __break(1u);
LABEL_375:
    __break(1u);
LABEL_376:
    __break(1u);
LABEL_377:
    __break(1u);
LABEL_378:
    __break(1u);
LABEL_379:
    __break(1u);
LABEL_380:
    __break(1u);
LABEL_381:
    __break(1u);
LABEL_382:
    __break(1u);
LABEL_383:
    __break(1u);
LABEL_384:
    __break(1u);
LABEL_385:
    __break(1u);
LABEL_386:
    __break(1u);
LABEL_387:
    __break(1u);
LABEL_388:

    __break(1u);
LABEL_389:
    __break(1u);
    goto LABEL_390;
  }

LABEL_17:
  v74 = MEMORY[0x1E69E7CC8];
  v75 = v538;
  if (*(v64 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19TokenGenerationCore17NonTerminalSymbolVSiGMd, &_ss18_DictionaryStorageCy19TokenGenerationCore17NonTerminalSymbolVSiGMR);
    v76 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v76 = MEMORY[0x1E69E7CC8];
  }

  v544[0] = v76;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v77, 1, v544);
  v518 = 0;

  v505 = v544[0];
  v545 = v74;
  v78 = MEMORY[0x1E69E7CC0];
  v531 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_10Foundation12CharacterSetVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v79 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v78);
  v80 = v485;
  v81 = *(v485 + 16);
  if (!v81)
  {
    v84 = v78;
    v535 = v78;
    goto LABEL_249;
  }

  v82 = 0;
  v83 = v485 + 32;
  v530 = (v520 + 32);
  v513 = v520 + 40;
  v84 = MEMORY[0x1E69E7CC0];
  v535 = MEMORY[0x1E69E7CC0];
  v480 = v81;
  v479 = v485 + 32;
  do
  {
    if (v82 >= *(v80 + 16))
    {
      goto LABEL_386;
    }

    v85 = (v83 + 24 * v82);
    v86 = v85[2];
    v487 = *(v86 + 16);
    if (!v487)
    {
      goto LABEL_246;
    }

    v481 = v82;
    v499 = v79;
    v87 = v85[1];
    v489 = *v85;
    v488 = v86 + 32;
    v490 = v87;
    v88 = v84;

    v491 = v86;
    swift_bridgeObjectRetain_n();
    v89 = v88;
    v90 = 0;
    v521 = 0;
    v91 = 0;
    do
    {
      if (v91 >= *(v491 + 16))
      {
        goto LABEL_376;
      }

      v497 = v89;
      v492 = v91;
      v92 = *(v488 + 8 * v91);
      v93 = *(v92 + 16);
      v514 = v92;
      v512 = v93;
      if (v93)
      {
        v94 = v486;
        v511 = v92 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
        swift_bridgeObjectRetain_n();
        v95 = 0;
        v510 = *(v94 + 72);
        v96 = MEMORY[0x1E69E7CC0];
        v97 = v508;
        while (1)
        {
          v517 = v95 + 1;
          outlined init with copy of TerminalSymbol(v511 + v510 * v95, v97, type metadata accessor for Symbol);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (!EnumCaseMultiPayload)
          {
            break;
          }

          if (EnumCaseMultiPayload == 1)
          {
            v101 = *v97;
            v535 = *(*v97 + 16);
            if (v535)
            {
              v102 = 0;
              v103 = *(v536 + 80);
              v533 = v101;
              v534 = v101 + ((v103 + 32) & ~v103);
              while (1)
              {
                if (v102 >= *(v101 + 16))
                {
                  __break(1u);
                  goto LABEL_326;
                }

                v542 = v96;
                v104 = *(v536 + 72);
                outlined init with copy of TerminalSymbol(v534 + v104 * v102, v41, type metadata accessor for TerminalSymbol);
                if (!v75)
                {
                  v113 = (v74 + 16);
                  if (*(v74 + 16))
                  {
                    v114 = specialized __RawDictionaryStorage.find<A>(_:)(v41);
                    if (v115)
                    {
                      v113 = (*(v74 + 56) + 8 * v114);
                    }
                  }

                  v116 = *v113;
                  v117 = v532;
                  outlined init with copy of TerminalSymbol(v41, v532, type metadata accessor for TerminalSymbol);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v119 = v545;
                  v544[0] = v545;
                  v120 = specialized __RawDictionaryStorage.find<A>(_:)(v117);
                  v122 = *(v119 + 16);
                  v123 = (v121 & 1) == 0;
                  v124 = __OFADD__(v122, v123);
                  v125 = v122 + v123;
                  if (v124)
                  {
                    goto LABEL_350;
                  }

                  v126 = v121;
                  if (*(v119 + 24) >= v125)
                  {
                    if (isUniquelyReferenced_nonNull_native)
                    {
                      goto LABEL_55;
                    }

                    v236 = v120;
                    specialized _NativeDictionary.copy()();
                    v120 = v236;
                    v74 = v544[0];
                    if ((v126 & 1) == 0)
                    {
                      goto LABEL_137;
                    }

LABEL_56:
                    *(*(v74 + 56) + 8 * v120) = v116;
                    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v532, type metadata accessor for TerminalSymbol);
                  }

                  else
                  {
                    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v125, isUniquelyReferenced_nonNull_native);
                    v120 = specialized __RawDictionaryStorage.find<A>(_:)(v532);
                    if ((v126 & 1) != (v127 & 1))
                    {
                      goto LABEL_399;
                    }

LABEL_55:
                    v74 = v544[0];
                    if (v126)
                    {
                      goto LABEL_56;
                    }

LABEL_137:
                    *(v74 + 8 * (v120 >> 6) + 64) |= 1 << v120;
                    v237 = v120;
                    v238 = v532;
                    outlined init with copy of TerminalSymbol(v532, *(v74 + 48) + v120 * v104, type metadata accessor for TerminalSymbol);
                    *(*(v74 + 56) + 8 * v237) = v116;
                    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v238, type metadata accessor for TerminalSymbol);
                    v239 = *(v74 + 16);
                    v124 = __OFADD__(v239, 1);
                    v240 = v239 + 1;
                    if (v124)
                    {
                      goto LABEL_354;
                    }

                    *(v74 + 16) = v240;
                  }

                  v545 = v74;
                  v96 = v542;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v96 + 2) + 1, 1, v96);
                  }

                  v242 = *(v96 + 2);
                  v241 = *(v96 + 3);
                  v243 = v242 + 1;
                  if (v242 >= v241 >> 1)
                  {
                    v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v241 > 1), v242 + 1, 1, v96);
                  }

                  goto LABEL_158;
                }

                v105 = v529;
                outlined init with copy of TerminalSymbol(v41, v529, type metadata accessor for TerminalSymbol);
                v106 = swift_getEnumCaseMultiPayload();
                if ((v106 - 1) < 2)
                {
                  v107 = *v530;
                  (*v530)(v527, v105, v11);
                  v109 = (v74 + 16);
                  v108 = *(v74 + 16);

                  if (v108)
                  {
                    v110 = specialized __RawDictionaryStorage.find<A>(_:)(v41);
                    v111 = v519;
                    if (v112)
                    {
                      v109 = (*(v74 + 56) + 8 * v110);
                    }
                  }

                  else
                  {
                    v111 = v519;
                  }

                  v149 = *v109;
                  outlined init with copy of TerminalSymbol(v41, v111, type metadata accessor for TerminalSymbol);
                  v150 = swift_isUniquelyReferenced_nonNull_native();
                  v151 = v545;
                  v544[0] = v545;
                  v152 = specialized __RawDictionaryStorage.find<A>(_:)(v111);
                  v154 = *(v151 + 16);
                  v155 = (v153 & 1) == 0;
                  v124 = __OFADD__(v154, v155);
                  v156 = v154 + v155;
                  if (v124)
                  {
                    goto LABEL_351;
                  }

                  v157 = v153;
                  if (*(v151 + 24) >= v156)
                  {
                    if ((v150 & 1) == 0)
                    {
                      v245 = v152;
                      specialized _NativeDictionary.copy()();
                      v152 = v245;
                    }
                  }

                  else
                  {
                    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v156, v150);
                    v152 = specialized __RawDictionaryStorage.find<A>(_:)(v111);
                    if ((v157 & 1) != (v158 & 1))
                    {
                      goto LABEL_399;
                    }
                  }

                  v11 = v524;
                  v159 = v544[0];
                  if (v157)
                  {
                    *(*(v544[0] + 56) + 8 * v152) = v149;
                    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v111, type metadata accessor for TerminalSymbol);
                  }

                  else
                  {
                    *(v544[0] + 8 * (v152 >> 6) + 64) |= 1 << v152;
                    v160 = v152;
                    outlined init with copy of TerminalSymbol(v111, v159[6] + v152 * v104, type metadata accessor for TerminalSymbol);
                    *(v159[7] + 8 * v160) = v149;
                    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v111, type metadata accessor for TerminalSymbol);
                    v161 = v159[2];
                    v124 = __OFADD__(v161, 1);
                    v162 = v161 + 1;
                    if (v124)
                    {
                      goto LABEL_356;
                    }

                    v159[2] = v162;
                  }

                  v163 = v159;
                  v545 = v159;
                  v164 = v542;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v164 + 2) + 1, 1, v164);
                  }

                  v166 = *(v164 + 2);
                  v165 = *(v164 + 3);
                  if (v166 >= v165 >> 1)
                  {
                    v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v165 > 1), v166 + 1, 1, v164);
                  }

                  *(v164 + 2) = v166 + 1;
                  v167 = v164;
                  v168 = &v164[16 * v166];
                  *(v168 + 4) = v149;
                  v168[40] = 0;
                  v107(v526, v527, v11);
                  v169 = v531;
                  v170 = swift_isUniquelyReferenced_nonNull_native();
                  v544[0] = v169;
                  v171 = specialized __RawDictionaryStorage.find<A>(_:)(v149);
                  v173 = *(v169 + 16);
                  v174 = (v172 & 1) == 0;
                  v124 = __OFADD__(v173, v174);
                  v175 = v173 + v174;
                  if (v124)
                  {
                    goto LABEL_352;
                  }

                  v176 = v172;
                  if (*(v169 + 24) >= v175)
                  {
                    if ((v170 & 1) == 0)
                    {
                      v246 = v171;
                      specialized _NativeDictionary.copy()();
                      v171 = v246;
                    }
                  }

                  else
                  {
                    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v175, v170);
                    v171 = specialized __RawDictionaryStorage.find<A>(_:)(v149);
                    if ((v176 & 1) != (v177 & 1))
                    {
                      goto LABEL_400;
                    }
                  }

                  v96 = v167;
                  v178 = v544[0];
                  v531 = v544[0];
                  if (v176)
                  {
                    (*(v520 + 40))(*(v544[0] + 56) + *(v520 + 72) * v171, v526, v11);

                    v41 = v541;
                    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v541, type metadata accessor for TerminalSymbol);
                  }

                  else
                  {
                    *(v544[0] + 8 * (v171 >> 6) + 64) |= 1 << v171;
                    *(*(v178 + 48) + 8 * v171) = v149;
                    v107((*(v178 + 56) + *(v520 + 72) * v171), v526, v11);

                    v41 = v541;
                    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v541, type metadata accessor for TerminalSymbol);
                    v179 = *(v531 + 16);
                    v124 = __OFADD__(v179, 1);
                    v180 = v179 + 1;
                    if (v124)
                    {
                      goto LABEL_357;
                    }

                    *(v531 + 16) = v180;
                  }

                  v90 = 1;
                  v521 = 1;
                  v74 = v163;
                  v75 = v538;
                  goto LABEL_159;
                }

                if (!v106)
                {
                  v539 = v74;
                  v128 = *v529;
                  v129 = v75[12];
                  __swift_project_boxed_opaque_existential_1(v75 + 8, v75[11]);
                  v516 = v90;
                  if (v128 > 0x7F)
                  {
                    v244 = (v128 & 0x3F) << 8;
                    if (v128 >= 0x800)
                    {
                      v259 = (v244 | (v128 >> 6) & 0x3F) << 8;
                      v260 = (((v259 | (v128 >> 12) & 0x3F) << 8) | (v128 >> 18)) - 2122219023;
                      v130 = (v128 >> 12) + v259 + 8487393;
                      if (HIWORD(v128))
                      {
                        v130 = v260;
                      }
                    }

                    else
                    {
                      v130 = (v128 >> 6) + v244 + 33217;
                    }
                  }

                  else
                  {
                    v130 = v128 + 1;
                  }

                  v544[0] = (v130 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v130) >> 3))));
                  v75 = v538;

                  v131 = static String._uncheckedFromUTF8(_:)();
                  v132 = v518;
                  v133 = (*(v129 + 24))(v131);
                  if (v132)
                  {

                    v518 = 0;
                    v134 = v539;
                  }

                  else
                  {
                    v182 = v133;
                    v518 = 0;

                    v183 = v503;
                    VocabularyManager.prefixLookUp.getter(v503);
                    v184 = *(v183 + *(v528 + 52));

                    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v183, type metadata accessor for VocabularyManager.PrefixLookup);
                    v185 = MEMORY[0x1AC57C380](*(v182 + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
                    v544[0] = v185;
                    v186 = *(v182 + 16);
                    v187 = v182;
                    v134 = v539;
                    if (v186)
                    {
                      v188 = v187;
                      v189 = (v187 + 32);
                      v190 = v186;
                      do
                      {
                        v191 = *v189++;
                        specialized Set._Variant.insert(_:)(&v543, v191);
                        --v190;
                      }

                      while (v190);
                      v192 = v544[0];
                    }

                    else
                    {
                      v192 = v185;
                      v188 = v187;
                    }

                    v75 = v538;
                    v193 = specialized Set.isDisjoint(with:)(v192, v184);

                    if ((v193 & 1) == 0)
                    {
                      if (v186)
                      {
                        v208 = v75[13];
                        v209 = (v188 + 32);
                        v210 = MEMORY[0x1E69E7CC0];
                        do
                        {
                          v214 = *v209++;
                          v213 = v214;
                          if (v208 != v214)
                          {
                            v215 = swift_isUniquelyReferenced_nonNull_native();
                            v544[0] = v210;
                            if ((v215 & 1) == 0)
                            {
                              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v210 + 16) + 1, 1);
                              v210 = v544[0];
                            }

                            v212 = *(v210 + 16);
                            v211 = *(v210 + 24);
                            if (v212 >= v211 >> 1)
                            {
                              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v211 > 1), v212 + 1, 1);
                              v210 = v544[0];
                            }

                            *(v210 + 16) = v212 + 1;
                            *(v210 + 8 * v212 + 32) = v213;
                          }

                          --v186;
                        }

                        while (v186);
                      }

                      else
                      {
                        v210 = MEMORY[0x1E69E7CC0];
                      }

                      v216 = *(v210 + 16);
                      if (v216)
                      {
                        v217 = 0;
                        while (v217 < *(v210 + 16))
                        {
                          v218 = *(v210 + 32 + 8 * v217);
                          v219 = v525;
                          VocabularyManager.prefixLookUp.getter(v525);
                          v220 = *(v219 + *(v528 + 48));

                          outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v219, type metadata accessor for VocabularyManager.PrefixLookup);
                          if (!*(v220 + 16))
                          {
                            goto LABEL_388;
                          }

                          v221 = specialized __RawDictionaryStorage.find<A>(_:)(v218);
                          if ((v222 & 1) == 0)
                          {
                            goto LABEL_388;
                          }

                          v223 = *(*(v220 + 56) + v221);

                          v224 = v540;
                          *v540 = v223;
                          swift_storeEnumTagMultiPayload();
                          v225 = v539;
                          v226 = v539 + 2;
                          if (v539[2])
                          {
                            v227 = specialized __RawDictionaryStorage.find<A>(_:)(v224);
                            if (v228)
                            {
                              v226 = (v225[7] + 8 * v227);
                            }
                          }

                          v229 = *v226;
                          v230 = swift_isUniquelyReferenced_nonNull_native();
                          v544[0] = v545;
                          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v229, v540, v230);
                          v539 = v544[0];
                          v545 = v544[0];
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v542 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v542 + 16) + 1, 1, v542);
                          }

                          v232 = *(v542 + 16);
                          v231 = *(v542 + 24);
                          v233 = v540;
                          if (v232 >= v231 >> 1)
                          {
                            v542 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v231 > 1), v232 + 1, 1, v542);
                            v233 = v540;
                          }

                          ++v217;
                          outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v233, type metadata accessor for TerminalSymbol);
                          v234 = v542;
                          *(v542 + 16) = v232 + 1;
                          v235 = v234 + 16 * v232;
                          *(v235 + 32) = v229;
                          *(v235 + 40) = 0;
                          v41 = v541;
                          if (v216 == v217)
                          {
                            goto LABEL_135;
                          }
                        }

                        __break(1u);
LABEL_350:
                        __break(1u);
LABEL_351:
                        __break(1u);
LABEL_352:
                        __break(1u);
LABEL_353:
                        __break(1u);
LABEL_354:
                        __break(1u);
LABEL_355:
                        __break(1u);
LABEL_356:
                        __break(1u);
LABEL_357:
                        __break(1u);
LABEL_358:
                        __break(1u);
LABEL_359:
                        __break(1u);
LABEL_360:
                        __break(1u);
LABEL_361:
                        __break(1u);
LABEL_362:
                        __break(1u);
                        goto LABEL_363;
                      }

                      v41 = v541;
LABEL_135:
                      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v41, type metadata accessor for TerminalSymbol);

                      swift_bridgeObjectRelease_n();
                      v75 = v538;

                      v11 = v524;
                      v74 = v539;
                      v96 = v542;
                      v101 = v533;
                      v90 = v516;
                      goto LABEL_160;
                    }

                    swift_bridgeObjectRelease_n();
                    v11 = v524;
                  }

                  v90 = v516;
                  v194 = v134 + 2;
                  v195 = v541;
                  if (v134[2])
                  {
                    v196 = specialized __RawDictionaryStorage.find<A>(_:)(v541);
                    if (v197)
                    {
                      v194 = (v134[7] + 8 * v196);
                    }
                  }

                  v116 = *v194;
                  v198 = v522;
                  outlined init with copy of TerminalSymbol(v195, v522, type metadata accessor for TerminalSymbol);
                  v199 = swift_isUniquelyReferenced_nonNull_native();
                  v200 = v545;
                  v544[0] = v545;
                  v201 = specialized __RawDictionaryStorage.find<A>(_:)(v198);
                  v203 = *(v200 + 16);
                  v204 = (v202 & 1) == 0;
                  v124 = __OFADD__(v203, v204);
                  v205 = v203 + v204;
                  if (v124)
                  {
                    goto LABEL_359;
                  }

                  v206 = v202;
                  if (*(v200 + 24) >= v205)
                  {
                    if (v199)
                    {
                      goto LABEL_108;
                    }

                    v252 = v201;
                    specialized _NativeDictionary.copy()();
                    v201 = v252;
                    v74 = v544[0];
                    if ((v206 & 1) == 0)
                    {
                      goto LABEL_149;
                    }

LABEL_109:
                    *(*(v74 + 56) + 8 * v201) = v116;
                  }

                  else
                  {
                    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v205, v199);
                    v201 = specialized __RawDictionaryStorage.find<A>(_:)(v522);
                    if ((v206 & 1) != (v207 & 1))
                    {
                      goto LABEL_399;
                    }

LABEL_108:
                    v74 = v544[0];
                    if (v206)
                    {
                      goto LABEL_109;
                    }

LABEL_149:
                    *(v74 + 8 * (v201 >> 6) + 64) |= 1 << v201;
                    v253 = v201;
                    outlined init with copy of TerminalSymbol(v522, *(v74 + 48) + v201 * v104, type metadata accessor for TerminalSymbol);
                    *(*(v74 + 56) + 8 * v253) = v116;
                    v254 = *(v74 + 16);
                    v124 = __OFADD__(v254, 1);
                    v255 = v254 + 1;
                    if (v124)
                    {
                      goto LABEL_364;
                    }

                    *(v74 + 16) = v255;
                  }

                  v181 = &v547;
                  goto LABEL_152;
                }

                v136 = (v74 + 16);
                v135 = *(v74 + 16);

                if (v135)
                {
                  v137 = specialized __RawDictionaryStorage.find<A>(_:)(v41);
                  if (v138)
                  {
                    v136 = (*(v74 + 56) + 8 * v137);
                  }
                }

                v116 = *v136;
                v139 = v523;
                outlined init with copy of TerminalSymbol(v41, v523, type metadata accessor for TerminalSymbol);
                v140 = swift_isUniquelyReferenced_nonNull_native();
                v141 = v545;
                v544[0] = v545;
                v142 = specialized __RawDictionaryStorage.find<A>(_:)(v139);
                v144 = *(v141 + 16);
                v145 = (v143 & 1) == 0;
                v124 = __OFADD__(v144, v145);
                v146 = v144 + v145;
                if (v124)
                {
                  goto LABEL_355;
                }

                v147 = v143;
                if (*(v141 + 24) >= v146)
                {
                  if ((v140 & 1) == 0)
                  {
                    v247 = v142;
                    specialized _NativeDictionary.copy()();
                    v142 = v247;
                    v74 = v544[0];
                    if ((v147 & 1) == 0)
                    {
LABEL_146:
                      *(v74 + 8 * (v142 >> 6) + 64) |= 1 << v142;
                      v248 = v142;
                      v249 = v523;
                      outlined init with copy of TerminalSymbol(v523, *(v74 + 48) + v142 * v104, type metadata accessor for TerminalSymbol);
                      *(*(v74 + 56) + 8 * v248) = v116;
                      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v249, type metadata accessor for TerminalSymbol);
                      v250 = *(v74 + 16);
                      v124 = __OFADD__(v250, 1);
                      v251 = v250 + 1;
                      if (v124)
                      {
                        goto LABEL_361;
                      }

                      *(v74 + 16) = v251;
                      goto LABEL_153;
                    }

                    goto LABEL_92;
                  }
                }

                else
                {
                  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v146, v140);
                  v142 = specialized __RawDictionaryStorage.find<A>(_:)(v523);
                  if ((v147 & 1) != (v148 & 1))
                  {
                    goto LABEL_399;
                  }
                }

                v74 = v544[0];
                if ((v147 & 1) == 0)
                {
                  goto LABEL_146;
                }

LABEL_92:
                *(*(v74 + 56) + 8 * v142) = v116;
                v181 = &v548;
LABEL_152:
                outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(*(v181 - 32), type metadata accessor for TerminalSymbol);
LABEL_153:
                v545 = v74;
                v96 = v542;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v96 + 2) + 1, 1, v96);
                }

                v242 = *(v96 + 2);
                v256 = *(v96 + 3);
                v243 = v242 + 1;
                if (v242 >= v256 >> 1)
                {
                  v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v256 > 1), v242 + 1, 1, v96);
                }

LABEL_158:
                v257 = v541;
                outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v541, type metadata accessor for TerminalSymbol);
                *(v96 + 2) = v243;
                v258 = &v96[16 * v242];
                v41 = v257;
                *(v258 + 4) = v116;
                v258[40] = 0;
LABEL_159:
                v101 = v533;
LABEL_160:
                if (++v102 == v535)
                {

                  goto LABEL_28;
                }
              }
            }

            goto LABEL_29;
          }

          v279 = v505;
          if (!*(v505 + 16))
          {
            goto LABEL_365;
          }

          v280 = specialized __RawDictionaryStorage.find<A>(_:)(*v97, v97[1]);
          v282 = v281;

          if ((v282 & 1) == 0)
          {
            goto LABEL_366;
          }

          v283 = *(*(v279 + 56) + 8 * v280);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v96 + 2) + 1, 1, v96);
          }

          v41 = v541;
          v285 = *(v96 + 2);
          v284 = *(v96 + 3);
          v98 = v514;
          v99 = v517;
          if (v285 >= v284 >> 1)
          {
            v323 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v284 > 1), v285 + 1, 1, v96);
            v99 = v517;
            v96 = v323;
            v98 = v514;
          }

          *(v96 + 2) = v285 + 1;
          v286 = &v96[16 * v285];
          *(v286 + 4) = v283;
          v286[40] = 1;
          v97 = v508;
LABEL_30:
          if (v99 == v512)
          {

            if ((v521 & 1) == 0)
            {
              v335 = 0;
              goto LABEL_226;
            }

LABEL_228:
            v336 = v499;
            v337 = v505;
            if (*(v96 + 2) == 1 && !v96[40])
            {
              if (!*(v505 + 16))
              {
                goto LABEL_392;
              }

              v338 = *(v96 + 4);
              v339 = specialized __RawDictionaryStorage.find<A>(_:)(v489, v490);
              if ((v340 & 1) == 0)
              {
                goto LABEL_393;
              }

              v341 = *(*(v337 + 56) + 8 * v339);
              v342 = v499;
              v343 = swift_isUniquelyReferenced_nonNull_native();
              v544[0] = v342;
              v337 = v505;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v338, v341, v343);
              v336 = v544[0];
            }

            v335 = 1;
            goto LABEL_234;
          }

LABEL_31:
          v95 = v99;
          if (v99 >= *(v98 + 16))
          {
            goto LABEL_358;
          }
        }

        v261 = v97;
        v262 = v515;
        outlined init with take of TerminalSymbol(v261, v515, type metadata accessor for TerminalSymbol);
        v263 = v502;
        outlined init with copy of TerminalSymbol(v262, v502, type metadata accessor for TerminalSymbol);
        if (swift_getEnumCaseMultiPayload() - 1 <= 1)
        {
          v264 = *v530;
          (*v530)(v501, v263, v11);
          v265 = (v74 + 16);
          if (*(v74 + 16))
          {
            v266 = specialized __RawDictionaryStorage.find<A>(_:)(v515);
            if (v267)
            {
              v265 = (*(v74 + 56) + 8 * v266);
            }
          }

          v268 = *v265;
          v269 = v506;
          outlined init with copy of TerminalSymbol(v515, v506, type metadata accessor for TerminalSymbol);
          v270 = swift_isUniquelyReferenced_nonNull_native();
          v271 = v545;
          v544[0] = v545;
          v272 = specialized __RawDictionaryStorage.find<A>(_:)(v269);
          v274 = *(v271 + 16);
          v275 = (v273 & 1) == 0;
          v124 = __OFADD__(v274, v275);
          v276 = v274 + v275;
          if (v124)
          {
            goto LABEL_369;
          }

          v277 = v273;
          if (*(v271 + 24) >= v276)
          {
            if ((v270 & 1) == 0)
            {
              v324 = v272;
              specialized _NativeDictionary.copy()();
              v272 = v324;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v276, v270);
            v272 = specialized __RawDictionaryStorage.find<A>(_:)(v506);
            if ((v277 & 1) != (v278 & 1))
            {
              goto LABEL_399;
            }
          }

          v11 = v524;
          v301 = v544[0];
          if (v277)
          {
            *(*(v544[0] + 56) + 8 * v272) = v268;
            outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v506, type metadata accessor for TerminalSymbol);
          }

          else
          {
            *(v544[0] + 8 * (v272 >> 6) + 64) |= 1 << v272;
            v302 = v272;
            v303 = v506;
            outlined init with copy of TerminalSymbol(v506, v301[6] + *(v536 + 72) * v272, type metadata accessor for TerminalSymbol);
            *(v301[7] + 8 * v302) = v268;
            outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v303, type metadata accessor for TerminalSymbol);
            v304 = v301[2];
            v124 = __OFADD__(v304, 1);
            v305 = v304 + 1;
            if (v124)
            {
              goto LABEL_373;
            }

            v301[2] = v305;
          }

          v306 = v301;
          v545 = v301;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v96 + 2) + 1, 1, v96);
          }

          v308 = *(v96 + 2);
          v307 = *(v96 + 3);
          if (v308 >= v307 >> 1)
          {
            v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v307 > 1), v308 + 1, 1, v96);
          }

          *(v96 + 2) = v308 + 1;
          v309 = v96;
          v310 = &v96[16 * v308];
          *(v310 + 4) = v268;
          v310[40] = 0;
          v264(v500, v501, v11);
          v311 = v531;
          v312 = swift_isUniquelyReferenced_nonNull_native();
          v544[0] = v311;
          v313 = specialized __RawDictionaryStorage.find<A>(_:)(v268);
          v315 = *(v311 + 16);
          v316 = (v314 & 1) == 0;
          v124 = __OFADD__(v315, v316);
          v317 = v315 + v316;
          if (v124)
          {
            goto LABEL_371;
          }

          v318 = v314;
          if (*(v311 + 24) >= v317)
          {
            if ((v312 & 1) == 0)
            {
              v334 = v313;
              specialized _NativeDictionary.copy()();
              v313 = v334;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v317, v312);
            v313 = specialized __RawDictionaryStorage.find<A>(_:)(v268);
            if ((v318 & 1) != (v319 & 1))
            {
              goto LABEL_400;
            }
          }

          v96 = v309;
          v320 = v544[0];
          v531 = v544[0];
          if (v318)
          {
            (*(v520 + 40))(*(v544[0] + 56) + *(v520 + 72) * v313, v500, v11);
            outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v515, type metadata accessor for TerminalSymbol);
          }

          else
          {
            *(v544[0] + 8 * (v313 >> 6) + 64) |= 1 << v313;
            *(*(v320 + 48) + 8 * v313) = v268;
            v264((*(v320 + 56) + *(v520 + 72) * v313), v500, v11);
            outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v515, type metadata accessor for TerminalSymbol);
            v321 = *(v531 + 16);
            v124 = __OFADD__(v321, 1);
            v322 = v321 + 1;
            if (v124)
            {
              goto LABEL_375;
            }

            *(v531 + 16) = v322;
          }

          v99 = v517;
          v74 = v306;
          v41 = v541;
          v97 = v508;
          v98 = v514;
          if (v517 == v512)
          {

            v90 = 1;
            goto LABEL_228;
          }

          v90 = 1;
          v521 = 1;
          goto LABEL_31;
        }

        v287 = (v74 + 16);
        if (*(v74 + 16))
        {
          v288 = specialized __RawDictionaryStorage.find<A>(_:)(v515);
          if (v289)
          {
            v287 = (*(v74 + 56) + 8 * v288);
          }
        }

        v290 = *v287;
        v291 = v507;
        outlined init with copy of TerminalSymbol(v515, v507, type metadata accessor for TerminalSymbol);
        v292 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v545;
        v544[0] = v545;
        v294 = specialized __RawDictionaryStorage.find<A>(_:)(v291);
        v296 = *(v293 + 16);
        v297 = (v295 & 1) == 0;
        v124 = __OFADD__(v296, v297);
        v298 = v296 + v297;
        if (v124)
        {
          goto LABEL_370;
        }

        v299 = v295;
        if (*(v293 + 24) >= v298)
        {
          if ((v292 & 1) == 0)
          {
            v325 = v294;
            specialized _NativeDictionary.copy()();
            v294 = v325;
            v74 = v544[0];
            if (v299)
            {
              goto LABEL_194;
            }

            goto LABEL_214;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v298, v292);
          v294 = specialized __RawDictionaryStorage.find<A>(_:)(v507);
          if ((v299 & 1) != (v300 & 1))
          {
            goto LABEL_399;
          }
        }

        v74 = v544[0];
        if (v299)
        {
LABEL_194:
          *(*(v74 + 56) + 8 * v294) = v290;
          outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v507, type metadata accessor for TerminalSymbol);
LABEL_216:
          v545 = v74;
          v330 = swift_isUniquelyReferenced_nonNull_native();
          v41 = v541;
          if ((v330 & 1) == 0)
          {
            v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v96 + 2) + 1, 1, v96);
          }

          v332 = *(v96 + 2);
          v331 = *(v96 + 3);
          if (v332 >= v331 >> 1)
          {
            v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v331 > 1), v332 + 1, 1, v96);
          }

          outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v515, type metadata accessor for TerminalSymbol);
          *(v96 + 2) = v332 + 1;
          v333 = &v96[16 * v332];
          *(v333 + 4) = v290;
          v333[40] = 0;
LABEL_28:
          v97 = v508;
LABEL_29:
          v98 = v514;
          v99 = v517;
          goto LABEL_30;
        }

LABEL_214:
        *(v74 + 8 * (v294 >> 6) + 64) |= 1 << v294;
        v326 = v294;
        v327 = v507;
        outlined init with copy of TerminalSymbol(v507, *(v74 + 48) + *(v536 + 72) * v294, type metadata accessor for TerminalSymbol);
        *(*(v74 + 56) + 8 * v326) = v290;
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v327, type metadata accessor for TerminalSymbol);
        v328 = *(v74 + 16);
        v124 = __OFADD__(v328, 1);
        v329 = v328 + 1;
        if (v124)
        {
          goto LABEL_374;
        }

        *(v74 + 16) = v329;
        goto LABEL_216;
      }

      if (v521)
      {
        v96 = MEMORY[0x1E69E7CC0];
        goto LABEL_228;
      }

      v335 = 0;
      v96 = MEMORY[0x1E69E7CC0];
LABEL_226:
      v336 = v499;
      v337 = v505;
LABEL_234:
      if (!*(v337 + 16))
      {
        goto LABEL_377;
      }

      v499 = v336;
      v344 = specialized __RawDictionaryStorage.find<A>(_:)(v489, v490);
      v346 = v345;

      if ((v346 & 1) == 0)
      {
        goto LABEL_378;
      }

      v347 = *(*(v337 + 56) + 8 * v344);
      if (*(v96 + 2))
      {
        v544[0] = v489;
        v544[1] = v490;
        v544[2] = v491;
        v348 = Rule.isRecursiveRule()();
      }

      else
      {
        v348 = 0;
      }

      v349 = swift_isUniquelyReferenced_nonNull_native();
      v521 = v335;
      if (v349)
      {
        v89 = v497;
      }

      else
      {
        v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v497 + 2) + 1, 1, v497, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC0H4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC0H4RuleVGMR, &type metadata for EarleyRecognizer.RecognizerRule);
      }

      v351 = *(v89 + 2);
      v350 = *(v89 + 3);
      v352 = v492;
      if (v351 >= v350 >> 1)
      {
        v354 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v350 > 1), v351 + 1, 1, v89, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC0H4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC0H4RuleVGMR, &type metadata for EarleyRecognizer.RecognizerRule);
        v352 = v492;
        v89 = v354;
      }

      v91 = v352 + 1;
      *(v89 + 2) = v351 + 1;
      v353 = &v89[24 * v351];
      *(v353 + 4) = v347;
      *(v353 + 5) = v96;
      v353[48] = v348;
      v353[49] = v90 & 1;
      v546 = v89;
      v41 = v541;
    }

    while (v91 != v487);
    v355 = v89;

    swift_bridgeObjectRelease_n();
    v84 = v355;
    v535 = v355;
    v79 = v499;
    v80 = v485;
    v81 = v480;
    v82 = v481;
    v83 = v479;
LABEL_246:
    ++v82;
  }

  while (v82 != v81);
LABEL_249:
  v356 = v505;
  if (!*(v505 + 16))
  {
LABEL_390:
    __break(1u);
    goto LABEL_391;
  }

  v102 = v84;
  v499 = v79;
  v357 = specialized __RawDictionaryStorage.find<A>(_:)(v484, v483);
  if ((v358 & 1) == 0)
  {
LABEL_391:
    __break(1u);
LABEL_392:
    __break(1u);
LABEL_393:
    __break(1u);
    goto LABEL_394;
  }

  v530 = *(*(v356 + 56) + 8 * v357);

  v359 = v535;
  v360 = *(v535 + 16);

  if (!v360)
  {
LABEL_326:
    v365 = v102;
    goto LABEL_327;
  }

  v361 = 0;
  v362 = v359 + 32;
  v540 = (v520 + 16);
  v363 = v359;
  v364 = v499;
  v365 = v102;
  v533 = v360;
  v534 = v359 + 32;
  while (2)
  {
    v542 = v363 + 32;
    v539 = v74;
    v497 = v365;
    while (2)
    {
      if (v361 >= *(v359 + 16))
      {
        goto LABEL_372;
      }

      v366 = v361;
      v367 = 24 * v361;
      v368 = v362 + 24 * v361++;
      if (*(v368 + 16) != 1 || (v369 = *(v368 + 8), (v370 = *(v369 + 16)) == 0) || (v371 = 16 * v370 - 16, v372 = v369 + v371, *(v372 + 40) != 1))
      {
LABEL_254:
        if (v361 == v360)
        {
          goto LABEL_327;
        }

        continue;
      }

      break;
    }

    v538 = v361;
    v373 = *(v372 + 32);
    if (*(v364 + 16))
    {
      v374 = specialized __RawDictionaryStorage.find<A>(_:)(v373);
      if (v375)
      {
        v435 = v531;
        if (*(v531 + 16))
        {
          v436 = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v499 + 56) + 8 * v374));
          v437 = v482;
          if (v438)
          {
            (*(v520 + 16))(v482, *(v435 + 56) + *(v520 + 72) * v436, v524);
            swift_storeEnumTagMultiPayload();
            v439 = v539;
            v440 = v539 + 2;
            if (v539[2])
            {
              v441 = specialized __RawDictionaryStorage.find<A>(_:)(v437);
              if (v442)
              {
                v440 = (v439[7] + 8 * v441);
              }
            }

            v443 = *v440;
            swift_beginAccess();
            v444 = swift_isUniquelyReferenced_nonNull_native();
            v543 = v545;
            v545 = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v443, v437, v444);
            v445 = v543;
            v545 = v543;
            swift_endAccess();
            if (v366 < *(v363 + 16))
            {
              v446 = *(v542 + v367);
              v447 = *(v542 + v367 + 8);
              LODWORD(v542) = *(v542 + v367 + 16);
              swift_bridgeObjectRetain_n();
              v448 = v447;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v448 = specialized _ArrayBuffer._consumeAndCreateNew()(v447);
              }

              if (v370 <= *(v448 + 2))
              {
                v449 = &v448[v371];
                *(v449 + 4) = v443;
                v449[40] = 0;

                swift_beginAccess();
                v450 = swift_isUniquelyReferenced_nonNull_native();
                v546 = v363;
                if (v450)
                {
                  v451 = v363;
                }

                else
                {
                  v451 = specialized _ArrayBuffer._consumeAndCreateNew()(v363);
                  v546 = v451;
                }

                v74 = v445;
                v359 = v535;
                if (v366 < *(v451 + 2))
                {
                  v452 = &v451[v367];
                  *(v452 + 4) = v446;
                  *(v452 + 5) = v448;
                  v452[48] = v542;
                  v452[49] = 1;
                  v546 = v451;
                  v453 = v451;
                  swift_endAccess();

                  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v482, type metadata accessor for TerminalSymbol);
                  v365 = v453;
                  v363 = v453;
                  goto LABEL_322;
                }

LABEL_398:
                __break(1u);
LABEL_399:
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
LABEL_400:
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                result = swift_unexpectedError();
                __break(1u);
                return result;
              }

LABEL_397:
              __break(1u);
              goto LABEL_398;
            }

LABEL_396:
            __break(1u);
            goto LABEL_397;
          }

LABEL_395:
          __break(1u);
          goto LABEL_396;
        }

LABEL_394:
        __break(1u);
        goto LABEL_395;
      }
    }

    v376 = 0;
    v377 = MEMORY[0x1E69E7CC0];
    v544[0] = MEMORY[0x1E69E7CC0];
    v378 = *(v363 + 16);
LABEL_262:
    v379 = 24 * v376;
    v380 = v524;
    v381 = v493;
    while (v378 != v376)
    {
      if (v376 >= *(v363 + 16))
      {
        goto LABEL_360;
      }

      v382 = *(v363 + v379 + 32);
      ++v376;
      v379 += 24;
      if (v382 == v373)
      {
        v383 = v363 + v379;
        v384 = *(v383 + 16);
        v385 = *(v383 + 24);
        v386 = *(v383 + 25);

        v387 = swift_isUniquelyReferenced_nonNull_native();
        v544[0] = v377;
        if ((v387 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v377 + 16) + 1, 1);
          v377 = v544[0];
        }

        v389 = *(v377 + 16);
        v388 = *(v377 + 24);
        if (v389 >= v388 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v388 > 1), v389 + 1, 1);
          v377 = v544[0];
        }

        *(v377 + 16) = v389 + 1;
        v390 = v377 + 32 * v389;
        *(v390 + 32) = v376 - 1;
        *(v390 + 40) = v373;
        *(v390 + 48) = v384;
        *(v390 + 56) = v385;
        *(v390 + 57) = v386;
        v74 = v539;
        goto LABEL_262;
      }
    }

    v391 = *(v377 + 16);
    if (!v391)
    {

      v364 = v499;
      v365 = v497;
      v362 = v534;
      v359 = v535;
      v360 = v533;
      v361 = v538;
      goto LABEL_254;
    }

    v392 = 0;
    v529 = (v377 + 32);
    v528 = v377;
    v527 = v391;
    while (2)
    {
      if (v392 >= *(v377 + 16))
      {
        goto LABEL_389;
      }

      v393 = &v529[8 * v392];
      v394 = v393[2];
      v395 = *(v394 + 16);
      if (v395)
      {
        v532 = v392;
        v539 = v74;
        v396 = *v393;
        v542 = 24 * *v393;

        v397 = 0;
        v398 = 0;
        v399 = v499;
        v400 = v497;
        v541 = v395;
        while (1)
        {
          if (v398 >= *(v394 + 16))
          {
            goto LABEL_367;
          }

          if (*(v394 + v397 + 40) == 1 && *(v399 + 16))
          {
            v401 = v400;
            v402 = specialized __RawDictionaryStorage.find<A>(_:)(*(v394 + v397 + 32));
            if (v403)
            {
              v404 = v531;
              if (!*(v531 + 16))
              {
                goto LABEL_379;
              }

              v405 = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v499 + 56) + 8 * v402));
              if ((v406 & 1) == 0)
              {
                goto LABEL_380;
              }

              (*(v520 + 16))(v381, *(v404 + 56) + *(v520 + 72) * v405, v380);
              swift_storeEnumTagMultiPayload();
              v407 = v539;
              v408 = v539 + 2;
              if (v539[2])
              {
                v409 = specialized __RawDictionaryStorage.find<A>(_:)(v381);
                if (v410)
                {
                  v408 = (v407[7] + 8 * v409);
                }
              }

              v411 = *v408;
              swift_beginAccess();
              v412 = swift_isUniquelyReferenced_nonNull_native();
              v413 = v545;
              v543 = v545;
              v545 = 0x8000000000000000;
              v414 = specialized __RawDictionaryStorage.find<A>(_:)(v493);
              v416 = v415;
              v417 = *(v413 + 16);
              v418 = (v415 & 1) == 0;
              if (__OFADD__(v417, v418))
              {
                goto LABEL_381;
              }

              v419 = v414;
              if (specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v412, v417 + v418))
              {
                v420 = v493;
                v421 = specialized __RawDictionaryStorage.find<A>(_:)(v493);
                if ((v416 & 1) != (v422 & 1))
                {
                  goto LABEL_399;
                }

                v419 = v421;
                v423 = v543;
                if ((v416 & 1) == 0)
                {
LABEL_294:
                  v423[(v419 >> 6) + 8] |= 1 << v419;
                  outlined init with copy of TerminalSymbol(v420, v423[6] + *(v536 + 72) * v419, type metadata accessor for TerminalSymbol);
                  *(v423[7] + 8 * v419) = v411;
                  v424 = v423[2];
                  v124 = __OFADD__(v424, 1);
                  v425 = v424 + 1;
                  if (v124)
                  {
                    goto LABEL_387;
                  }

                  v423[2] = v425;
                  goto LABEL_298;
                }
              }

              else
              {
                v420 = v493;
                v423 = v543;
                if ((v416 & 1) == 0)
                {
                  goto LABEL_294;
                }
              }

              *(v423[7] + 8 * v419) = v411;
LABEL_298:
              v539 = v423;
              v545 = v423;
              swift_endAccess();
              if ((v396 & 0x8000000000000000) != 0)
              {
                goto LABEL_382;
              }

              if (v396 >= *(v363 + 16))
              {
                goto LABEL_383;
              }

              v427 = *(v363 + v542 + 32);
              v426 = *(v363 + v542 + 40);
              v428 = *(v363 + v542 + 48);
              swift_bridgeObjectRetain_n();
              v429 = v426;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v429 = specialized _ArrayBuffer._consumeAndCreateNew()(v426);
              }

              if (v398 >= *(v429 + 2))
              {
                goto LABEL_384;
              }

              v430 = &v429[v397];
              *(v430 + 4) = v411;
              v430[40] = 0;

              swift_beginAccess();
              v431 = swift_isUniquelyReferenced_nonNull_native();
              v546 = v363;
              if (v431)
              {
                v432 = v363;
              }

              else
              {
                v432 = specialized _ArrayBuffer._consumeAndCreateNew()(v363);
                v546 = v432;
              }

              if (v396 >= *(v432 + 2))
              {
                goto LABEL_385;
              }

              v433 = &v432[v542];
              *(v433 + 4) = v427;
              *(v433 + 5) = v429;
              v433[48] = v428;
              v433[49] = 1;
              v546 = v432;
              v434 = v432;
              swift_endAccess();

              v381 = v493;
              outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v493, type metadata accessor for TerminalSymbol);
              v400 = v434;
              v363 = v434;
              v380 = v524;
              v399 = v499;
              v395 = v541;
              goto LABEL_280;
            }

            v399 = v499;
            v400 = v401;
          }

LABEL_280:
          ++v398;
          v397 += 16;
          if (v395 == v398)
          {
            v497 = v400;

            v74 = v539;
            v377 = v528;
            v391 = v527;
            v392 = v532;
            break;
          }
        }
      }

      if (++v392 != v391)
      {
        continue;
      }

      break;
    }

    v365 = v497;
    v359 = v535;
LABEL_322:
    v360 = v533;
    v362 = v534;
    v361 = v538;
    v364 = v499;
    if (v538 != v533)
    {
      continue;
    }

    break;
  }

LABEL_327:
  v497 = v365;

  v454 = v494;
  *v494 = 46;
  swift_storeEnumTagMultiPayload();
  v542 = _sSa9repeating5countSayxGx_SitcfC19TokenGenerationCore14TerminalSymbolO_Tt1g5(v454, *(v74 + 16));
  v455 = v74 + 64;
  v456 = 1 << *(v74 + 32);
  v457 = -1;
  if (v456 < 64)
  {
    v457 = ~(-1 << v456);
  }

  v458 = v457 & *(v74 + 64);
  v459 = v74;
  v460 = (v456 + 63) >> 6;
  v539 = v459;

  v461 = 0;
  if (!v458)
  {
LABEL_331:
    if (v460 <= v461 + 1)
    {
      v463 = v461 + 1;
    }

    else
    {
      v463 = v460;
    }

    v464 = v463 - 1;
    while (1)
    {
      v462 = v461 + 1;
      if (__OFADD__(v461, 1))
      {
        goto LABEL_353;
      }

      if (v462 >= v460)
      {
        v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14TerminalSymbolO3key_Si5valuetMd, &_s19TokenGenerationCore14TerminalSymbolO3key_Si5valuetMR);
        v473 = v496;
        (*(*(v477 - 8) + 56))(v496, 1, 1, v477);
        v458 = 0;
        goto LABEL_339;
      }

      v458 = *(v455 + 8 * v462);
      ++v461;
      if (v458)
      {
        goto LABEL_338;
      }
    }
  }

  while (1)
  {
    v462 = v461;
LABEL_338:
    v465 = __clz(__rbit64(v458));
    v458 &= v458 - 1;
    v466 = v465 | (v462 << 6);
    v467 = v539;
    v468 = v494;
    outlined init with copy of TerminalSymbol(v539[6] + *(v536 + 72) * v466, v494, type metadata accessor for TerminalSymbol);
    v469 = *(v467[7] + 8 * v466);
    v470 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14TerminalSymbolO3key_Si5valuetMd, &_s19TokenGenerationCore14TerminalSymbolO3key_Si5valuetMR);
    v471 = *(v470 + 48);
    v472 = v468;
    v473 = v496;
    outlined init with take of TerminalSymbol(v472, v496, type metadata accessor for TerminalSymbol);
    *(v473 + v471) = v469;
    (*(*(v470 - 8) + 56))(v473, 0, 1, v470);
    v464 = v462;
LABEL_339:
    v474 = v495;
    outlined init with take of (key: TerminalSymbol, value: Int)?(v473, v495);
    v475 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14TerminalSymbolO3key_Si5valuetMd, &_s19TokenGenerationCore14TerminalSymbolO3key_Si5valuetMR);
    if ((*(*(v475 - 8) + 48))(v474, 1, v475) == 1)
    {
      break;
    }

    v476 = *(v474 + *(v475 + 48));
    outlined init with take of TerminalSymbol(v474, v504, type metadata accessor for TerminalSymbol);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v476 & 0x8000000000000000) != 0)
      {
        goto LABEL_347;
      }
    }

    else
    {
      v542 = specialized _ArrayBuffer._consumeAndCreateNew()(v542);
      if ((v476 & 0x8000000000000000) != 0)
      {
LABEL_347:
        __break(1u);
        break;
      }
    }

    if (v476 >= *(v542 + 16))
    {
      goto LABEL_368;
    }

    outlined assign with take of TerminalSymbol(v504, v542 + ((*(v536 + 80) + 32) & ~*(v536 + 80)) + *(v536 + 72) * v476);
    v461 = v464;
    if (!v458)
    {
      goto LABEL_331;
    }
  }

  return v530;
}

void *EarleyRecognizer.RecognizerGrammar.deinit()
{

  return v0;
}

uint64_t EarleyRecognizer.RecognizerGrammar.__deallocating_deinit()
{
  EarleyRecognizer.RecognizerGrammar.deinit();

  return swift_deallocClassInstance();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EarleyRecognizer.RecognizerRule()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  specialized Array<A>.hash(into:)(v6, v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance EarleyRecognizer.RecognizerRule(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  MEMORY[0x1AC57CB80](*v1);
  specialized Array<A>.hash(into:)(a1, v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EarleyRecognizer.RecognizerRule(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v2);
  specialized Array<A>.hash(into:)(v7, v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EarleyRecognizer.RecognizerRule(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 17);
  v3 = *(a2 + 17);
  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  v6 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore16EarleyRecognizerC0F6SymbolO_Tt1g5(*(a1 + 8), *(a2 + 8));
  if ((v4 ^ v5))
  {
    v7 = 0;
  }

  else
  {
    v7 = v2 ^ v3 ^ 1;
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

void EarleyRecognizer.Item.getDescription(grammar:)(uint64_t a1)
{
  v3 = type metadata accessor for TerminalSymbol(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

  v8 = *(a1 + 56);
  if (v7 >= *(v8 + 16))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = v8 + 24 * v7;
  v10 = *(v9 + 32);
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v11 = *(a1 + 16);
  if (v10 >= *(v11 + 16))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = *(v9 + 40);
  v43 = v11 + 32;
  v13 = (v11 + 32 + 16 * v10);
  v14 = v13[1];
  v38 = *v13;
  v15 = *(v12 + 16);
  v39 = v14;
  v40 = v1;
  if (v15)
  {
    v41 = v11;
    v42 = a1;
    v44 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v16 = v44;
    v37 = v12;
    v17 = (v12 + 40);
    while (1)
    {
      v18 = *(v17 - 1);
      if (*v17)
      {
        if (*v17 == 1)
        {
          if ((v18 & 0x8000000000000000) != 0)
          {
            goto LABEL_28;
          }

          if (v18 >= *(v41 + 16))
          {
            goto LABEL_30;
          }

          v19 = (v43 + 16 * v18);
          v20 = *v19;
          v21 = v19[1];
          v46 = 60;
          v47 = 0xE100000000000000;

          MEMORY[0x1AC57C120](v20, v21);
          MEMORY[0x1AC57C120](62, 0xE100000000000000);

          v23 = v46;
          v22 = v47;
        }

        else
        {
          v23 = 0;
          v22 = 0xE000000000000000;
        }
      }

      else
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v24 = *(v42 + 24);
        if (v18 >= *(v24 + 16))
        {
          goto LABEL_29;
        }

        outlined init with copy of TerminalSymbol(v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18, v6, type metadata accessor for TerminalSymbol);
        v23 = TerminalSymbol.description.getter();
        v22 = v25;
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v6, type metadata accessor for TerminalSymbol);
      }

      v44 = v16;
      v27 = *(v16 + 2);
      v26 = *(v16 + 3);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v16 = v44;
      }

      v17 += 16;
      *(v16 + 2) = v27 + 1;
      v28 = &v16[16 * v27];
      *(v28 + 4) = v23;
      *(v28 + 5) = v22;
      if (!--v15)
      {

        goto LABEL_21;
      }
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v29 = v40;
  v30 = v40[1];
  v31 = *(v16 + 2);
  if (v31 < v30)
  {
    goto LABEL_35;
  }

  if (v30 < 0)
  {
LABEL_36:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = v16;
  if (!isUniquelyReferenced_nonNull_native || v31 >= *(v16 + 3) >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v31 + 1, 1, v16);
    v48 = v16;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v30, v30, 1, 12226530, 0xA300000000000000);
  v46 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v33 = BidirectionalCollection<>.joined(separator:)();
  v35 = v34;

  v46 = 0;
  v47 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v44 = 60;
  v45 = 0xE100000000000000;
  MEMORY[0x1AC57C120](v38, v39);
  MEMORY[0x1AC57C120](62, 0xE100000000000000);

  MEMORY[0x1AC57C120](v44, v45);

  MEMORY[0x1AC57C120](0x203D3A3A20, 0xE500000000000000);
  MEMORY[0x1AC57C120](v33, v35);

  MEMORY[0x1AC57C120](31520, 0xE200000000000000);
  v44 = v29[2];
  v36 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v36);

  MEMORY[0x1AC57C120](8069245, 0xE300000000000000);
  v44 = v29[3];
  LOBYTE(v45) = *(v29 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1AC57C120](125, 0xE100000000000000);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EarleyRecognizer.Item()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  MEMORY[0x1AC57CB80](v2);
  MEMORY[0x1AC57CB80](v4);
  if (v5 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1AC57CB80](v3);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance EarleyRecognizer.Item()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  MEMORY[0x1AC57CB80](*v0);
  MEMORY[0x1AC57CB80](v1);
  MEMORY[0x1AC57CB80](v3);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1AC57CB80](v2);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EarleyRecognizer.Item(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = *(v1 + 32);
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v2);
  MEMORY[0x1AC57CB80](v3);
  MEMORY[0x1AC57CB80](v5);
  if (v6 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1AC57CB80](v4);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EarleyRecognizer.Item(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
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
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
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

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore4RuleV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v5 = *v3;
      v6 = *i;
      v7 = *(v3 - 2) == *(i - 2) && *(v3 - 1) == *(i - 1);
      if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      swift_bridgeObjectRetain_n();

      swift_bridgeObjectRetain_n();
      _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore6ChoiceV_Tt1g5(v5, v6);
      v9 = v8;

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      if ((v9 & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore6ChoiceV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v149 = type metadata accessor for CharacterSet();
  v154 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v5 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v113 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v130 = &v113 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v113 - v12;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14TerminalSymbolO_ACtMd, &_s19TokenGenerationCore14TerminalSymbolO_ACtMR);
  MEMORY[0x1EEE9AC00](v155);
  v159 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v113 - v15;
  v156 = type metadata accessor for TerminalSymbol(0);
  v134 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v148 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v141 = &v113 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v142 = &v113 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v147 = (&v113 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v151 = &v113 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v113 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v137 = &v113 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v131 = &v113 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v113 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v136 = (&v113 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v144 = &v113 - v39;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore6SymbolO_ACtMd, &_s19TokenGenerationCore6SymbolO_ACtMR);
  MEMORY[0x1EEE9AC00](v150);
  v146 = &v113 - v40;
  v157 = type metadata accessor for Symbol(0);
  v152 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  MEMORY[0x1EEE9AC00](v41);
  MEMORY[0x1EEE9AC00](v42);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v113 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v158 = &v113 - v50;
  v51 = *(a1 + 16);
  if (v51 != *(a2 + 16) || !v51 || a1 == a2)
  {
    return;
  }

  v52 = 0;
  v53 = a1 + 32;
  v54 = a2 + 32;
  v132 = (v154 + 32);
  v133 = (v154 + 8);
  v127 = v45;
  v119 = v35;
  v121 = v5;
  v120 = v8;
  v124 = v16;
  v128 = v47;
  v123 = v48;
  v122 = v49;
  v116 = v51;
  v115 = a1 + 32;
  v114 = a2 + 32;
  while (1)
  {
    if (v52 == v51)
    {
      goto LABEL_81;
    }

    v55 = *(v53 + 8 * v52);
    v56 = *(v55 + 16);
    v153 = *(v54 + 8 * v52);
    v57 = *(v153 + 16);
    if (v56 != v57)
    {
      return;
    }

    if (v56 && v55 != v153)
    {
      break;
    }

LABEL_7:
    if (++v52 == v51)
    {
      return;
    }
  }

  v135 = v56;
  v117 = v56 == v57;
  v118 = v52;
  v58 = (*(v152 + 80) + 32) & ~*(v152 + 80);
  v139 = v153 + v58;
  v140 = v55 + v58;

  v59 = 0;
  v60 = v146;
  v61 = v151;
  v138 = v55;
  while (1)
  {
    if (v59 >= *(v55 + 16))
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      return;
    }

    v62 = *(v152 + 72) * v59;
    outlined init with copy of TerminalSymbol(v140 + v62, v158, type metadata accessor for Symbol);
    if (v59 >= *(v153 + 16))
    {
      goto LABEL_80;
    }

    outlined init with copy of TerminalSymbol(v139 + v62, v45, type metadata accessor for Symbol);
    v63 = (v60 + *(v150 + 48));
    outlined init with copy of TerminalSymbol(v158, v60, type metadata accessor for Symbol);
    outlined init with copy of TerminalSymbol(v45, v63, type metadata accessor for Symbol);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v86 = v60;
      v87 = v128;
      outlined init with copy of TerminalSymbol(v86, v128, type metadata accessor for Symbol);
      v88 = swift_getEnumCaseMultiPayload();
      v89 = v124;
      v90 = v144;
      if (v88)
      {
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v87, type metadata accessor for TerminalSymbol);
        v60 = v146;
        goto LABEL_71;
      }

      outlined init with take of TerminalSymbol(v63, v144, type metadata accessor for TerminalSymbol);
      v91 = *(v155 + 48);
      outlined init with copy of TerminalSymbol(v87, v89, type metadata accessor for TerminalSymbol);
      outlined init with copy of TerminalSymbol(v90, v89 + v91, type metadata accessor for TerminalSymbol);
      v92 = swift_getEnumCaseMultiPayload();
      if (v92 > 1)
      {
        if (v92 != 2)
        {
          outlined init with copy of TerminalSymbol(v89, v137, type metadata accessor for TerminalSymbol);
          v110 = swift_getEnumCaseMultiPayload();
          v60 = v146;
          if (v110 != 3)
          {
            goto LABEL_77;
          }

          v94 = *v137;
          v95 = *(v89 + v91);
          goto LABEL_59;
        }

        v101 = v131;
        outlined init with copy of TerminalSymbol(v89, v131, type metadata accessor for TerminalSymbol);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_76;
        }

        v102 = *v132;
        v103 = v89 + v91;
        v104 = &v161;
      }

      else
      {
        if (!v92)
        {
          outlined init with copy of TerminalSymbol(v89, v136, type metadata accessor for TerminalSymbol);
          v93 = swift_getEnumCaseMultiPayload();
          v60 = v146;
          if (v93)
          {
            goto LABEL_77;
          }

          v94 = *v136;
          v95 = *(v89 + v91);
LABEL_59:
          if (v94 == v95)
          {
LABEL_60:
            outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v89, type metadata accessor for TerminalSymbol);
            outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v90, type metadata accessor for TerminalSymbol);
            outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v128, type metadata accessor for TerminalSymbol);
            v45 = v127;
            v61 = v151;
            goto LABEL_14;
          }

LABEL_75:
          outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v89, type metadata accessor for TerminalSymbol);
LABEL_78:
          v45 = v127;
          outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v90, type metadata accessor for TerminalSymbol);
          outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v128, type metadata accessor for TerminalSymbol);
          goto LABEL_68;
        }

        v101 = v119;
        outlined init with copy of TerminalSymbol(v89, v119, type metadata accessor for TerminalSymbol);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
LABEL_76:
          (*v133)(v101, v149);
          v60 = v146;
LABEL_77:
          outlined destroy of [Regex2BNF.CharacterPredicate](v89, &_s19TokenGenerationCore14TerminalSymbolO_ACtMd, &_s19TokenGenerationCore14TerminalSymbolO_ACtMR);
          goto LABEL_78;
        }

        v102 = *v132;
        v103 = v89 + v91;
        v104 = &v160;
      }

      v106 = *(v104 - 32);
      v107 = v149;
      v102(v106, v103, v149);
      v108 = static CharacterSet.== infix(_:_:)();
      v109 = *v133;
      (*v133)(v106, v107);
      v109(v101, v107);
      v90 = v144;
      v60 = v146;
      if ((v108 & 1) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_60;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v96 = v123;
      outlined init with copy of TerminalSymbol(v60, v123, type metadata accessor for Symbol);
      v98 = *v96;
      v97 = v96[1];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v99 = *v63;
        v100 = v63[1];
        if (v98 == v99 && v97 == v100)
        {
        }

        else
        {
          v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v105 & 1) == 0)
          {
            goto LABEL_68;
          }
        }

        goto LABEL_14;
      }

LABEL_70:

LABEL_71:
      outlined destroy of [Regex2BNF.CharacterPredicate](v60, &_s19TokenGenerationCore6SymbolO_ACtMd, &_s19TokenGenerationCore6SymbolO_ACtMR);
      goto LABEL_72;
    }

    v65 = v122;
    outlined init with copy of TerminalSymbol(v60, v122, type metadata accessor for Symbol);
    v154 = *v65;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_70;
    }

    v66 = *v63;
    v67 = *(v154 + 16);
    if (v67 != *(v66 + 16))
    {

      v45 = v127;
      goto LABEL_68;
    }

    if (v67 && v154 != v66)
    {
      break;
    }

    v45 = v127;
LABEL_14:
    ++v59;
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v60, type metadata accessor for Symbol);
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v45, type metadata accessor for Symbol);
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v158, type metadata accessor for Symbol);
    v55 = v138;
    if (v59 == v135)
    {

      v51 = v116;
      v52 = v118;
      v53 = v115;
      v54 = v114;
      goto LABEL_7;
    }
  }

  v68 = (*(v134 + 80) + 32) & ~*(v134 + 80);
  v143 = *(v134 + 72);
  v69 = v142;
  v126 = v66;
  v145 = v28;
  while (1)
  {
    outlined init with copy of TerminalSymbol(v154 + v68, v28, type metadata accessor for TerminalSymbol);
    outlined init with copy of TerminalSymbol(v66 + v68, v61, type metadata accessor for TerminalSymbol);
    v70 = v28;
    v71 = *(v155 + 48);
    v72 = v159;
    outlined init with copy of TerminalSymbol(v70, v159, type metadata accessor for TerminalSymbol);
    outlined init with copy of TerminalSymbol(v61, v72 + v71, type metadata accessor for TerminalSymbol);
    v73 = swift_getEnumCaseMultiPayload();
    if (v73 > 1)
    {
      break;
    }

    if (!v73)
    {
      outlined init with copy of TerminalSymbol(v159, v147, type metadata accessor for TerminalSymbol);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_66;
      }

      v74 = *v147;
      v75 = *(v159 + v71);
LABEL_24:
      if (v74 != v75)
      {
        goto LABEL_62;
      }

      goto LABEL_25;
    }

    outlined init with copy of TerminalSymbol(v159, v69, type metadata accessor for TerminalSymbol);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v111 = v69;
      goto LABEL_65;
    }

    v81 = v120;
    v82 = v149;
    (*v132)(v120, v159 + v71, v149);
    v83 = static CharacterSet.== infix(_:_:)();
    v84 = *v133;
    v85 = v81;
    v61 = v151;
    (*v133)(v85, v82);
    v84(v69, v82);
    v66 = v126;
    if ((v83 & 1) == 0)
    {
LABEL_62:
      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v159, type metadata accessor for TerminalSymbol);
      goto LABEL_67;
    }

LABEL_25:
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v159, type metadata accessor for TerminalSymbol);
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v61, type metadata accessor for TerminalSymbol);
    v28 = v145;
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v145, type metadata accessor for TerminalSymbol);
    v68 += v143;
    if (!--v67)
    {

      v45 = v127;
      v60 = v146;
      goto LABEL_14;
    }
  }

  if (v73 != 2)
  {
    outlined init with copy of TerminalSymbol(v159, v148, type metadata accessor for TerminalSymbol);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_66;
    }

    v74 = *v148;
    v75 = *(v159 + v71);
    goto LABEL_24;
  }

  v76 = v141;
  outlined init with copy of TerminalSymbol(v159, v141, type metadata accessor for TerminalSymbol);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v77 = v121;
    v78 = v149;
    (*v132)(v121, v159 + v71, v149);
    v125 = static CharacterSet.== infix(_:_:)();
    v79 = *v133;
    v80 = v77;
    v61 = v151;
    (*v133)(v80, v78);
    v79(v76, v78);
    v69 = v142;
    v66 = v126;
    if ((v125 & 1) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_25;
  }

  v111 = v76;
LABEL_65:
  (*v133)(v111, v149);
LABEL_66:
  outlined destroy of [Regex2BNF.CharacterPredicate](v159, &_s19TokenGenerationCore14TerminalSymbolO_ACtMd, &_s19TokenGenerationCore14TerminalSymbolO_ACtMR);
LABEL_67:
  v112 = v145;
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v61, type metadata accessor for TerminalSymbol);
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v112, type metadata accessor for TerminalSymbol);

  v45 = v127;
  v60 = v146;
LABEL_68:
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v60, type metadata accessor for Symbol);
LABEL_72:
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v45, type metadata accessor for Symbol);
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v158, type metadata accessor for Symbol);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore6SymbolO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v82 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14TerminalSymbolO_ACtMd, &_s19TokenGenerationCore14TerminalSymbolO_ACtMR);
  MEMORY[0x1EEE9AC00](v107);
  v11 = &v82 - v10;
  v110 = type metadata accessor for TerminalSymbol(0);
  v94 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v105 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v82 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v102 = &v82 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v104 = (&v82 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v111 = &v82 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v106 = &v82 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v99 = &v82 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore6SymbolO_ACtMd, &_s19TokenGenerationCore6SymbolO_ACtMR);
  MEMORY[0x1EEE9AC00](v25);
  v112 = &v82 - v26;
  v109 = type metadata accessor for Symbol(0);
  MEMORY[0x1EEE9AC00](v109);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  MEMORY[0x1EEE9AC00](&v82 - v29);
  v31 = &v82 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v38 = &v82 - v35;
  v39 = *(a1 + 16);
  if (v39 != *(a2 + 16))
  {
    return 0;
  }

  if (!v39 || a1 == a2)
  {
    return 1;
  }

  v84 = v33;
  v85 = v37;
  v86 = v36;
  v83 = v7;
  v40 = 0;
  v41 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v98 = a1 + v41;
  v96 = a2 + v41;
  v90 = (v5 + 32);
  v93 = (v5 + 8);
  v97 = *(v34 + 72);
  v89 = &v82 - v35;
  v95 = v25;
  v91 = v31;
  while (1)
  {
    v42 = v97 * v40;
    result = outlined init with copy of TerminalSymbol(v98 + v97 * v40, v38, type metadata accessor for Symbol);
    if (v40 == v39)
    {
      __break(1u);
      return result;
    }

    outlined init with copy of TerminalSymbol(v96 + v42, v31, type metadata accessor for Symbol);
    v44 = (v112 + *(v25 + 48));
    outlined init with copy of TerminalSymbol(v38, v112, type metadata accessor for Symbol);
    outlined init with copy of TerminalSymbol(v31, v44, type metadata accessor for Symbol);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v67 = v40;
      v68 = v4;
      v69 = v112;
      v70 = v39;
      v71 = v84;
      outlined init with copy of TerminalSymbol(v112, v84, type metadata accessor for Symbol);
      if (!swift_getEnumCaseMultiPayload())
      {
        v72 = v99;
        outlined init with take of TerminalSymbol(v44, v99, type metadata accessor for TerminalSymbol);
        v73 = specialized static TerminalSymbol.== infix(_:_:)(v71, v72);
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v72, type metadata accessor for TerminalSymbol);
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v71, type metadata accessor for TerminalSymbol);
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v69, type metadata accessor for Symbol);
        v39 = v70;
        v4 = v68;
        v40 = v67;
        v31 = v91;
        if ((v73 & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_7;
      }

      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v71, type metadata accessor for TerminalSymbol);
      v31 = v91;
      goto LABEL_54;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v74 = v86;
      outlined init with copy of TerminalSymbol(v112, v86, type metadata accessor for Symbol);
      v76 = *v74;
      v75 = v74[1];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v77 = *v44;
        v78 = v44[1];
        if (v76 == v77 && v75 == v78)
        {
        }

        else
        {
          v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v80 & 1) == 0)
          {
            outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v112, type metadata accessor for Symbol);
            v38 = v89;
            goto LABEL_55;
          }
        }

        goto LABEL_6;
      }

      v38 = v89;
LABEL_54:
      outlined destroy of [Regex2BNF.CharacterPredicate](v112, &_s19TokenGenerationCore6SymbolO_ACtMd, &_s19TokenGenerationCore6SymbolO_ACtMR);
      goto LABEL_55;
    }

    v46 = v85;
    outlined init with copy of TerminalSymbol(v112, v85, type metadata accessor for Symbol);
    v108 = *v46;
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      goto LABEL_54;
    }

    v47 = *v44;
    v48 = *(v108 + 16);
    if (v48 != *(v47 + 16))
    {

      v31 = v91;
      goto LABEL_50;
    }

    if (v48)
    {
      v49 = v106;
      if (v108 != v47)
      {
        break;
      }
    }

    v31 = v91;
LABEL_6:
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v112, type metadata accessor for Symbol);
    v38 = v89;
LABEL_7:
    ++v40;
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v31, type metadata accessor for Symbol);
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v38, type metadata accessor for Symbol);
    v25 = v95;
    if (v40 == v39)
    {
      return 1;
    }
  }

  v82 = v39;
  v92 = v4;
  v50 = (*(v94 + 80) + 32) & ~*(v94 + 80);
  v103 = *(v94 + 72);
  v51 = v102;
  v88 = v47;
  while (1)
  {
    outlined init with copy of TerminalSymbol(v108 + v50, v49, type metadata accessor for TerminalSymbol);
    v52 = v111;
    outlined init with copy of TerminalSymbol(v47 + v50, v111, type metadata accessor for TerminalSymbol);
    v53 = *(v107 + 48);
    outlined init with copy of TerminalSymbol(v49, v11, type metadata accessor for TerminalSymbol);
    outlined init with copy of TerminalSymbol(v52, &v11[v53], type metadata accessor for TerminalSymbol);
    v54 = swift_getEnumCaseMultiPayload();
    if (v54 > 1)
    {
      break;
    }

    if (!v54)
    {
      outlined init with copy of TerminalSymbol(v11, v104, type metadata accessor for TerminalSymbol);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_48;
      }

      v55 = *v104;
      v56 = *&v11[v53];
LABEL_16:
      if (v55 != v56)
      {
        goto LABEL_44;
      }

      goto LABEL_17;
    }

    outlined init with copy of TerminalSymbol(v11, v51, type metadata accessor for TerminalSymbol);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v81 = v51;
      goto LABEL_47;
    }

    v62 = v100;
    v63 = v92;
    (*v90)(v100, &v11[v53], v92);
    v64 = static CharacterSet.== infix(_:_:)();
    v65 = *v93;
    v66 = v62;
    v49 = v106;
    (*v93)(v66, v63);
    v65(v51, v63);
    v47 = v88;
    if ((v64 & 1) == 0)
    {
LABEL_44:
      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v11, type metadata accessor for TerminalSymbol);
      goto LABEL_49;
    }

LABEL_17:
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v11, type metadata accessor for TerminalSymbol);
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v111, type metadata accessor for TerminalSymbol);
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v49, type metadata accessor for TerminalSymbol);
    v50 += v103;
    if (!--v48)
    {

      v4 = v92;
      v31 = v91;
      v39 = v82;
      goto LABEL_6;
    }
  }

  if (v54 != 2)
  {
    outlined init with copy of TerminalSymbol(v11, v105, type metadata accessor for TerminalSymbol);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_48;
    }

    v55 = *v105;
    v56 = v11[v53];
    goto LABEL_16;
  }

  v57 = v101;
  outlined init with copy of TerminalSymbol(v11, v101, type metadata accessor for TerminalSymbol);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v58 = v83;
    v59 = v92;
    (*v90)(v83, &v11[v53], v92);
    v87 = static CharacterSet.== infix(_:_:)();
    v60 = *v93;
    v61 = v58;
    v49 = v106;
    (*v93)(v61, v59);
    v60(v57, v59);
    v51 = v102;
    v47 = v88;
    if ((v87 & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_17;
  }

  v81 = v57;
LABEL_47:
  (*v93)(v81, v92);
LABEL_48:
  outlined destroy of [Regex2BNF.CharacterPredicate](v11, &_s19TokenGenerationCore14TerminalSymbolO_ACtMd, &_s19TokenGenerationCore14TerminalSymbolO_ACtMR);
LABEL_49:
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v111, type metadata accessor for TerminalSymbol);
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v49, type metadata accessor for TerminalSymbol);

  v31 = v91;
  v38 = v89;
LABEL_50:
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v112, type metadata accessor for Symbol);
LABEL_55:
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v31, type metadata accessor for Symbol);
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v38, type metadata accessor for Symbol);
  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore4JSONO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 3)
  {
    v9 = *(i - 2);
    v10 = *(i - 1);
    v11 = *i;
    v12 = *(v3 - 2);
    v13 = *(v3 - 1);
    v14 = *v3;
    if (v11 > 2)
    {
      if (v11 == 3)
      {
        v17 = *(v3 - 2);
        v18 = *(v3 - 1);
        if (v14 != 3)
        {
          outlined copy of JSON(v17, v18, *v3);
          v23 = v9;
          v24 = v10;
          v25 = 3;
          goto LABEL_36;
        }

        outlined copy of JSON(v17, v18, 3);
        outlined copy of JSON(v9, v10, 3);
        outlined copy of JSON(v12, v13, 3);
        outlined copy of JSON(v9, v10, 3);
        v5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore4JSONO_Tt1g5(v9, v12);
        outlined consume of JSON(v9, v10, 3);
        outlined consume of JSON(v12, v13, 3);
        outlined consume of JSON(v12, v13, 3);
        v6 = v9;
        v7 = v10;
        v8 = 3;
        goto LABEL_6;
      }

      if (v11 == 4)
      {
        v15 = *(v3 - 2);
        v16 = *(v3 - 1);
        if (v14 != 4)
        {
          outlined copy of JSON(v15, v16, *v3);
          v23 = v9;
          v24 = v10;
          v25 = 4;
          goto LABEL_36;
        }

        outlined copy of JSON(v15, v16, 4);
        outlined copy of JSON(v9, v10, 4);
        outlined copy of JSON(v12, v13, 4);
        outlined copy of JSON(v9, v10, 4);
        v5 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_19TokenGenerationCore4JSONOTt1g5(v9, v12);
        outlined consume of JSON(v9, v10, 4);
        outlined consume of JSON(v12, v13, 4);
        outlined consume of JSON(v12, v13, 4);
        v6 = v9;
        v7 = v10;
        v8 = 4;
        goto LABEL_6;
      }

      if (v14 != 5 || v13 | v12)
      {
LABEL_32:
        v23 = *(v3 - 2);
        v24 = *(v3 - 1);
        v25 = *v3;
        goto LABEL_36;
      }

      outlined consume of JSON(*(i - 2), *(i - 1), 5);
      v19 = 0;
      v20 = 0;
      v21 = 5;
      goto LABEL_30;
    }

    if (*i)
    {
      break;
    }

    if (*v3)
    {
      goto LABEL_32;
    }

    outlined consume of JSON(*(i - 2), *(i - 1), 0);
    outlined consume of JSON(v12, v13, 0);
    if ((v12 ^ v9))
    {
      return 0;
    }

LABEL_7:
    v3 += 24;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v11 == 1)
  {
    if (v14 != 1)
    {
      goto LABEL_32;
    }

    outlined consume of JSON(*(i - 2), *(i - 1), 1);
    outlined consume of JSON(v12, v13, 1);
    if (*&v9 != *&v12)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (v14 == 2)
  {
    if (v9 != v12 || v10 != v13)
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of JSON(v12, v13, 2);
      outlined copy of JSON(v9, v10, 2);
      outlined consume of JSON(v9, v10, 2);
      v6 = v12;
      v7 = v13;
      v8 = 2;
LABEL_6:
      outlined consume of JSON(v6, v7, v8);
      if ((v5 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_7;
    }

    outlined copy of JSON(*(i - 2), *(i - 1), 2);
    outlined copy of JSON(v9, v10, 2);
    outlined consume of JSON(v9, v10, 2);
    v19 = v9;
    v20 = v10;
    v21 = 2;
LABEL_30:
    outlined consume of JSON(v19, v20, v21);
    goto LABEL_7;
  }

  outlined copy of JSON(*(v3 - 2), *(v3 - 1), *v3);
  v23 = v9;
  v24 = v10;
  v25 = 2;
LABEL_36:
  outlined copy of JSON(v23, v24, v25);
  outlined consume of JSON(v9, v10, v11);
  outlined consume of JSON(v12, v13, v14);
  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore14TerminalSymbolO_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        outlined init with copy of TerminalSymbol(v20, v17, a4);
        outlined init with copy of TerminalSymbol(v21, v13, a4);
        v23 = a5(v17, v13);
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v13, a6);
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore18TokenizationResultO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.AttachmentContent(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18TokenizationResultO_ACtMd, &_s19TokenGenerationCore18TokenizationResultO_ACtMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = type metadata accessor for TokenizationResult(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v41 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v41 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    return 0;
  }

  if (!v23 || a1 == a2)
  {
    return 1;
  }

  v41 = v15;
  v42 = v6;
  v24 = 0;
  v25 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v43 = a2 + v25;
  v44 = *(v20 + 72);
  v45 = a1 + v25;
  v46 = v23;
  while (1)
  {
    v26 = v44 * v24;
    result = outlined init with copy of TerminalSymbol(v45 + v44 * v24, v22, type metadata accessor for TokenizationResult);
    if (v24 == v46)
    {
      break;
    }

    outlined init with copy of TerminalSymbol(v43 + v26, v18, type metadata accessor for TokenizationResult);
    v28 = *(v7 + 48);
    outlined init with copy of TerminalSymbol(v22, v9, type metadata accessor for TokenizationResult);
    outlined init with copy of TerminalSymbol(v18, &v9[v28], type metadata accessor for TokenizationResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with copy of TerminalSymbol(v9, v12, type metadata accessor for TokenizationResult);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v12, type metadata accessor for Prompt.AttachmentContent);
        goto LABEL_25;
      }

      v29 = v22;
      v30 = v18;
      v31 = v10;
      v32 = v7;
      v33 = v42;
      outlined init with take of TerminalSymbol(&v9[v28], v42, type metadata accessor for Prompt.AttachmentContent);
      v34 = static Prompt.AttachmentContent.== infix(_:_:)(v12, v33);
      v35 = v33;
      v7 = v32;
      v10 = v31;
      v18 = v30;
      v22 = v29;
      v15 = v41;
      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v35, type metadata accessor for Prompt.AttachmentContent);
      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v12, type metadata accessor for Prompt.AttachmentContent);
      if ((v34 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      outlined init with copy of TerminalSymbol(v9, v15, type metadata accessor for TokenizationResult);
      v36 = *v15;
      if (swift_getEnumCaseMultiPayload() == 1)
      {

LABEL_25:
        outlined destroy of [Regex2BNF.CharacterPredicate](v9, &_s19TokenGenerationCore18TokenizationResultO_ACtMd, &_s19TokenGenerationCore18TokenizationResultO_ACtMR);
        goto LABEL_26;
      }

      v37 = *&v9[v28];
      v38 = *(v36 + 16);
      if (v38 != *(v37 + 16))
      {
        goto LABEL_21;
      }

      if (v38 && v36 != v37)
      {
        v39 = (v36 + 32);
        v40 = (v37 + 32);
        while (*v39 == *v40)
        {
          ++v39;
          ++v40;
          if (!--v38)
          {
            goto LABEL_5;
          }
        }

LABEL_21:

LABEL_22:
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v9, type metadata accessor for TokenizationResult);
LABEL_26:
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v18, type metadata accessor for TokenizationResult);
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v22, type metadata accessor for TokenizationResult);
        return 0;
      }

LABEL_5:
    }

    ++v24;
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v9, type metadata accessor for TokenizationResult);
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v18, type metadata accessor for TokenizationResult);
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v22, type metadata accessor for TokenizationResult);
    if (v24 == v46)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore16EarleyRecognizerC0F4RuleV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = v4 + 24 * v3;
    v7 = v5 + 24 * v3;
    if (*v6 != *v7)
    {
      return 0;
    }

    v8 = *(v6 + 8);
    v9 = *(v7 + 8);
    v10 = *(v8 + 16);
    if (v10 != *(v9 + 16))
    {
      return 0;
    }

    v11 = *(v6 + 16);
    v12 = *(v6 + 17);
    v13 = *(v7 + 16);
    v14 = *(v7 + 17);
    if (v10)
    {
      v15 = v8 == v9;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = (v8 + 40);
      result = v9 + 40;
      while (v10)
      {
        v18 = *(v16 - 1);
        v19 = *(result - 8);
        v20 = *result;
        if (*v16)
        {
          if (*v16 == 1)
          {
            if (v20 != 1 || v18 != v19)
            {
              return 0;
            }
          }

          else if (v20 != 2 || v19 != 0)
          {
            return 0;
          }
        }

        else
        {
          if (*result)
          {
            v17 = 0;
          }

          else
          {
            v17 = v18 == v19;
          }

          if (!v17)
          {
            return 0;
          }
        }

        v16 += 16;
        result += 16;
        if (!--v10)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      break;
    }

LABEL_13:
    result = 0;
    if (v11 == v13 && ((v12 ^ v14) & 1) == 0)
    {
      ++v3;
      result = 1;
      if (v3 != v2)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore16EarleyRecognizerC0F6SymbolO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v6 = *(v3 - 1);
      v7 = *(v4 - 1);
      v8 = *v4;
      if (*v3)
      {
        if (*v3 == 1)
        {
          if (v8 != 1 || v6 != v7)
          {
            return 0;
          }
        }

        else if (v8 != 2 || v7 != 0)
        {
          return 0;
        }
      }

      else
      {
        if (*v4)
        {
          v5 = 0;
        }

        else
        {
          v5 = v6 == v7;
        }

        if (!v5)
        {
          return 0;
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSay19TokenGenerationCore16EarleyRecognizerC5StateVG_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = *(v4 + 8 * v3);
    v7 = *(v5 + 8 * v3);
    v8 = *(v6 + 16);
    v9 = *(v7 + 16);
    result = v8 == v9;
    if (v8 != v9)
    {
      return result;
    }

    if (v8)
    {
      v10 = v6 == v7;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = 0;
      v12 = v6 + 32;
      v13 = v7 + 32;
      while (v11 != v8)
      {
        v14 = *(v12 + 8 * v11);
        v15 = *(v13 + 8 * v11);
        v16 = *(v14 + 16);
        if (v16 != *(v15 + 16))
        {
          return 0;
        }

        if (v16)
        {
          v17 = v14 == v15;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          v18 = (v15 + 64);
          v19 = (v14 + 64);
          while (v16)
          {
            if (*(v19 - 4) != *(v18 - 4) || *(v19 - 3) != *(v18 - 3) || *(v19 - 2) != *(v18 - 2))
            {
              return 0;
            }

            v20 = *v18;
            if (*v19)
            {
              if (!*v18)
              {
                return 0;
              }
            }

            else
            {
              if (*(v19 - 1) != *(v18 - 1))
              {
                v20 = 1;
              }

              if (v20)
              {
                return 0;
              }
            }

            v18 += 40;
            v19 += 40;
            if (!--v16)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          break;
        }

LABEL_14:
        if (++v11 == v8)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      break;
    }

LABEL_12:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore16EarleyRecognizerC5StateV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  while (v3 != v2)
  {
    v5 = *(v4 + 8 * v3);
    v6 = *(a2 + 32 + 8 * v3);
    v7 = *(v5 + 16);
    v8 = *(v6 + 16);
    result = v7 == v8;
    if (v7 != v8)
    {
      return result;
    }

    if (v7)
    {
      v9 = v5 == v6;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = (v6 + 64);
      v11 = (v5 + 64);
      while (v7)
      {
        if (*(v11 - 4) != *(v10 - 4) || *(v11 - 3) != *(v10 - 3) || *(v11 - 2) != *(v10 - 2))
        {
          return 0;
        }

        v12 = *v10;
        if (*v11)
        {
          if (!*v10)
          {
            return 0;
          }
        }

        else
        {
          if (*(v11 - 1) != *(v10 - 1))
          {
            v12 = 1;
          }

          if (v12)
          {
            return 0;
          }
        }

        v10 += 40;
        v11 += 40;
        if (!--v7)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore16EarleyRecognizerC4ItemV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 40)
    {
      v6 = *(i - 4) == *(v3 - 4) && *(i - 3) == *(v3 - 3);
      if (!v6 || *(i - 2) != *(v3 - 2))
      {
        break;
      }

      v5 = *v3;
      if (*i)
      {
        if (!*v3)
        {
          return 0;
        }
      }

      else
      {
        if (*(i - 1) != *(v3 - 1))
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 40;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZShySiG_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;
        v8 = _sSh2eeoiySbShyxG_ABtFZSi_Tt1g5(v5, v7);
        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV9DelimiterV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v44 - v11;
  v52 = type metadata accessor for Prompt.Delimiter(0);
  MEMORY[0x1EEE9AC00](v52);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v44 - v17);
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      return 1;
    }

    v48 = v10;
    v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v21 = a1 + v20;
    v22 = a2 + v20;
    v23 = (v5 + 48);
    v45 = (v5 + 32);
    v46 = v7;
    v47 = (v5 + 8);
    v24 = v22;
    v50 = *(v16 + 72);
    v51 = v23;
    v25 = v52;
    while (1)
    {
      outlined init with copy of TerminalSymbol(v21, v18, type metadata accessor for Prompt.Delimiter);
      v53 = v24;
      outlined init with copy of TerminalSymbol(v24, v14, type metadata accessor for Prompt.Delimiter);
      v26 = *v18 == *v14 && v18[1] == v14[1];
      if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v55 = type metadata accessor for Prompt.SpecialToken(0);
      v27 = *(v55 + 20);
      v28 = *(v54 + 48);
      outlined init with copy of Locale?(v18 + v27, v12);
      outlined init with copy of Locale?(v14 + v27, &v12[v28]);
      v29 = *v23;
      if ((*v23)(v12, 1, v4) == 1)
      {
        if (v29(&v12[v28], 1, v4) != 1)
        {
          goto LABEL_29;
        }

        outlined destroy of [Regex2BNF.CharacterPredicate](v12, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        v30 = v55;
      }

      else
      {
        v49 = v21;
        v31 = v48;
        outlined init with copy of Locale?(v12, v48);
        if (v29(&v12[v28], 1, v4) == 1)
        {
          (*v47)(v31, v4);
LABEL_29:
          outlined destroy of [Regex2BNF.CharacterPredicate](v12, &_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
          break;
        }

        v32 = v46;
        (*v45)(v46, &v12[v28], v4);
        lazy protocol witness table accessor for type EarleyRecognizer and conformance EarleyRecognizer(&lazy protocol witness table cache variable for type Locale and conformance Locale, 255, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        v34 = *v47;
        v35 = v32;
        v25 = v52;
        (*v47)(v35, v4);
        v34(v31, v4);
        outlined destroy of [Regex2BNF.CharacterPredicate](v12, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        v21 = v49;
        v30 = v55;
        if ((v33 & 1) == 0)
        {
          break;
        }
      }

      v36 = *(v30 + 24);
      v37 = (v18 + v36);
      v38 = *(v18 + v36 + 8);
      v39 = (v14 + v36);
      v40 = v39[1];
      if (v38)
      {
        if (!v40 || (*v37 != *v39 || v38 != v40) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }
      }

      else if (v40)
      {
        break;
      }

      if (*(v18 + *(v30 + 28)) != *(v14 + *(v30 + 28)) || *(v18 + *(v25 + 20)) != *(v14 + *(v25 + 20)))
      {
        break;
      }

      v41 = *(v18 + *(v25 + 24));
      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v18, type metadata accessor for Prompt.Delimiter);
      v42 = *(v14 + *(v25 + 24));
      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v14, type metadata accessor for Prompt.Delimiter);
      result = v41 == v42;
      if (v41 == v42)
      {
        v23 = v51;
        v24 = v53 + v50;
        v21 += v50;
        if (--v19)
        {
          continue;
        }
      }

      return result;
    }

    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v14, type metadata accessor for Prompt.Delimiter);
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v18, type metadata accessor for Prompt.Delimiter);
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV10AttachmentV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.Attachment(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    result = outlined init with copy of TerminalSymbol(v13, v10, type metadata accessor for Prompt.Attachment);
    if (!v11)
    {
      break;
    }

    outlined init with copy of TerminalSymbol(v14, v6, type metadata accessor for Prompt.Attachment);
    if ((static Prompt.AttachmentContent.== infix(_:_:)(v10, v6) & 1) == 0 || *&v10[*(v4 + 20)] != *&v6[*(v4 + 20)])
    {
      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v6, type metadata accessor for Prompt.Attachment);
      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v10, type metadata accessor for Prompt.Attachment);
      return 0;
    }

    v17 = *&v10[*(v4 + 24)];
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v10, type metadata accessor for Prompt.Attachment);
    v18 = *&v6[*(v4 + 24)];
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v6, type metadata accessor for Prompt.Attachment);
    result = v17 == v18;
    v19 = v17 != v18 || v11-- == 1;
    v14 += v15;
    v13 += v15;
    if (v19)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation12CharacterSetV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8, v13);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v11, v19, v8);
    lazy protocol witness table accessor for type EarleyRecognizer and conformance EarleyRecognizer(v32, 255, v33, v34);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27 = *v22;
    (*v22)(v11, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV4TurnV7SegmentO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v3 = (a2 + 80);
      v4 = a1 + 40;
      do
      {
        v5 = *v4;
        v6 = *(v4 + 8);
        v7 = *(v4 + 16);
        v8 = *(v4 + 24);
        v9 = *(v4 + 32);
        v10 = *(v4 + 40);
        v27 = *(v4 - 8);
        v28 = v5;
        v29 = v6;
        v30 = v7;
        v31 = v8;
        v32 = v9;
        v33 = v10;
        v12 = *(v3 - 5);
        v13 = *(v3 - 4);
        v14 = *(v3 - 3);
        v15 = *(v3 - 2);
        v16 = *(v3 - 1);
        v17 = *v3;
        v20 = *(v3 - 6);
        v11 = v20;
        v21 = v12;
        v22 = v13;
        v23 = v14;
        v24 = v15;
        v25 = v16;
        v26 = v17;
        outlined copy of Prompt.Turn.Segment(v27, v5, v6, v7, v8, v9, v10);
        outlined copy of Prompt.Turn.Segment(v11, v12, v13, v14, v15, v16, v17);
        v18 = specialized static Prompt.Turn.Segment.== infix(_:_:)(&v27, &v20);
        outlined consume of Prompt.Turn.Segment(v20, v21, v22, v23, v24, v25, v26);
        outlined consume of Prompt.Turn.Segment(v27, v28, v29, v30, v31, v32, v33);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v4 += 56;
        v3 += 56;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV8ToolCallV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v40 = 0;
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    for (i = v2 - 1; ; --i)
    {
      v6 = v3[1];
      v43 = *v3;
      v44 = v6;
      v7 = v3[3];
      v45 = v3[2];
      v8 = *v4;
      v9 = v4[1];
      v46 = v7;
      v47 = v8;
      v10 = v4[2];
      v11 = v4[3];
      v48 = v9;
      v49 = v10;
      v50 = v11;
      if (v43 != v47 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v12 = v45;
      v13 = v49;
      if (v44 != v48 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      if (v12 != v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v14 = *(&v46 + 1);
      v15 = v46;
      v16 = v50;
      if (*(&v46 + 1) >> 60 == 15)
      {
        if (*(&v50 + 1) >> 60 != 15)
        {
          goto LABEL_66;
        }

        outlined copy of Data?(v46, *(&v46 + 1));
        outlined copy of Data?(v16, *(&v16 + 1));
        outlined consume of Data?(v15, v14);
        goto LABEL_63;
      }

      if (*(&v50 + 1) >> 60 == 15)
      {
LABEL_66:
        outlined copy of Data?(v46, *(&v46 + 1));
        outlined copy of Data?(v16, *(&v16 + 1));
        outlined consume of Data?(v15, v14);
        outlined consume of Data?(v16, *(&v16 + 1));
        return 0;
      }

      v17 = *(&v46 + 1) >> 62;
      v18 = *(&v50 + 1) >> 62;
      if (*(&v46 + 1) >> 62 == 3)
      {
        break;
      }

      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v27 = *(v46 + 16);
          v26 = *(v46 + 24);
          v24 = __OFSUB__(v26, v27);
          v19 = v26 - v27;
          if (v24)
          {
            goto LABEL_70;
          }

          goto LABEL_29;
        }

        v19 = 0;
        if (v18 <= 1)
        {
          goto LABEL_30;
        }
      }

      else if (v17)
      {
        LODWORD(v19) = DWORD1(v46) - v46;
        if (__OFSUB__(DWORD1(v46), v46))
        {
          goto LABEL_71;
        }

        v19 = v19;
        if (v18 <= 1)
        {
LABEL_30:
          if (v18)
          {
            LODWORD(v25) = DWORD1(v50) - v50;
            if (__OFSUB__(DWORD1(v50), v50))
            {
              goto LABEL_69;
            }

            v25 = v25;
          }

          else
          {
            v25 = BYTE14(v50);
          }

          goto LABEL_36;
        }
      }

      else
      {
        v19 = BYTE14(v46);
        if (v18 <= 1)
        {
          goto LABEL_30;
        }
      }

LABEL_23:
      if (v18 != 2)
      {
        if (v19)
        {
          goto LABEL_68;
        }

LABEL_41:
        outlined init with copy of Prompt.ToolCall(&v43, v42);
        outlined init with copy of Prompt.ToolCall(&v47, v42);
        outlined copy of Data?(v15, v14);
        outlined copy of Data?(v16, *(&v16 + 1));
        v21 = *(&v16 + 1);
        v20 = v16;
LABEL_42:
        outlined consume of Data?(v20, v21);
        outlined consume of Data?(v15, v14);
        outlined destroy of Prompt.ToolCall(&v47);
        outlined destroy of Prompt.ToolCall(&v43);
        goto LABEL_63;
      }

      v23 = *(v50 + 16);
      v22 = *(v50 + 24);
      v24 = __OFSUB__(v22, v23);
      v25 = v22 - v23;
      if (v24)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
      }

LABEL_36:
      if (v19 != v25)
      {
LABEL_68:
        outlined init with copy of Prompt.ToolCall(&v43, v42);
        outlined init with copy of Prompt.ToolCall(&v47, v42);
        outlined copy of Data?(v15, v14);
        outlined copy of Data?(v16, *(&v16 + 1));
        outlined consume of Data?(v16, *(&v16 + 1));
        outlined consume of Data?(v15, v14);
        outlined destroy of Prompt.ToolCall(&v47);
        outlined destroy of Prompt.ToolCall(&v43);
        return 0;
      }

      if (v19 < 1)
      {
        goto LABEL_41;
      }

      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v28 = *(v46 + 16);
          v39 = *(v46 + 24);
          outlined init with copy of Prompt.ToolCall(&v43, v42);
          outlined init with copy of Prompt.ToolCall(&v47, v42);
          outlined copy of Data?(v15, v14);
          outlined copy of Data?(v16, *(&v16 + 1));
          outlined copy of Data?(v16, *(&v16 + 1));
          v29 = __DataStorage._bytes.getter();
          if (v29)
          {
            v30 = __DataStorage._offset.getter();
            if (__OFSUB__(v28, v30))
            {
              goto LABEL_74;
            }

            v29 += v28 - v30;
          }

          if (__OFSUB__(v39, v28))
          {
            goto LABEL_73;
          }

          MEMORY[0x1AC57AAA0]();
          v31 = v29;
          v33 = *(&v16 + 1);
          v32 = v16;
          v34 = v40;
          goto LABEL_59;
        }

        memset(v41, 0, 14);
        outlined init with copy of Prompt.ToolCall(&v43, v42);
        outlined init with copy of Prompt.ToolCall(&v47, v42);
        outlined copy of Data?(v15, v14);
        outlined copy of Data?(v16, *(&v16 + 1));
        outlined copy of Data?(v16, *(&v16 + 1));
      }

      else
      {
        if (v17)
        {
          if (v46 >> 32 < v46)
          {
            goto LABEL_72;
          }

          outlined init with copy of Prompt.ToolCall(&v43, v42);
          outlined init with copy of Prompt.ToolCall(&v47, v42);
          outlined copy of Data?(v15, v14);
          outlined copy of Data?(v16, *(&v16 + 1));
          outlined copy of Data?(v16, *(&v16 + 1));
          v35 = __DataStorage._bytes.getter();
          if (v35)
          {
            v36 = __DataStorage._offset.getter();
            if (__OFSUB__(v15, v36))
            {
              goto LABEL_75;
            }

            v35 += v15 - v36;
          }

          v34 = v40;
          MEMORY[0x1AC57AAA0]();
          v31 = v35;
          v33 = *(&v16 + 1);
          v32 = v16;
LABEL_59:
          closure #1 in static Data.== infix(_:_:)(v31, v32, v33, v42);
          v40 = v34;
          outlined consume of Data?(v16, *(&v16 + 1));
          outlined consume of Data?(v16, *(&v16 + 1));
          v37 = v42[0];
          goto LABEL_62;
        }

        v41[0] = v46;
        LODWORD(v41[1]) = DWORD2(v46);
        WORD2(v41[1]) = WORD6(v46);
        outlined init with copy of Prompt.ToolCall(&v43, v42);
        outlined init with copy of Prompt.ToolCall(&v47, v42);
        outlined copy of Data?(v15, v14);
        outlined copy of Data?(v16, *(&v16 + 1));
        outlined copy of Data?(v16, *(&v16 + 1));
      }

      closure #1 in static Data.== infix(_:_:)(v41, v16, *(&v16 + 1), v42);
      outlined consume of Data?(v16, *(&v16 + 1));
      outlined consume of Data?(v16, *(&v16 + 1));
      v37 = v42[0];
LABEL_62:
      outlined consume of Data?(v15, v14);
      outlined destroy of Prompt.ToolCall(&v47);
      outlined destroy of Prompt.ToolCall(&v43);
      if ((v37 & 1) == 0)
      {
        return 0;
      }

LABEL_63:
      if (!i)
      {
        return 1;
      }

      v4 += 4;
      v3 += 4;
    }

    v19 = 0;
    if (v46 == __PAIR128__(0xC000000000000000, 0) && *(&v50 + 1) >> 62 == 3)
    {
      v19 = 0;
      if (v50 == __PAIR128__(0xC000000000000000, 0))
      {
        outlined init with copy of Prompt.ToolCall(&v43, v42);
        outlined init with copy of Prompt.ToolCall(&v47, v42);
        outlined copy of Data?(0, 0xC000000000000000);
        outlined copy of Data?(0, 0xC000000000000000);
        v20 = 0;
        v21 = 0xC000000000000000;
        goto LABEL_42;
      }
    }

LABEL_29:
    if (v18 <= 1)
    {
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs7Float16V_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void EarleyRecognizer.State.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  MEMORY[0x1AC57CB80](v2);
  if (v2)
  {
    v3 = (v1 + 64);
    do
    {
      v4 = *(v3 - 3);
      v6 = *(v3 - 2);
      v5 = *(v3 - 1);
      v7 = *v3;
      MEMORY[0x1AC57CB80](*(v3 - 4));
      MEMORY[0x1AC57CB80](v4);
      MEMORY[0x1AC57CB80](v6);
      if (v7 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1AC57CB80](v5);
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }
}

Swift::Int EarleyRecognizer.State.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EarleyRecognizer.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EarleyRecognizer.State(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

void EarleyRecognizer.lastConsumedElement.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *(a1 + 4) = *(v1 + 28);
  *a1 = v2;
}

TokenGenerationCore::EarleyRecognizer::State __swiftcall EarleyRecognizer.Chart.state(at:)(TokenGenerationCore::EarleyRecognizer::State at)
{
  rawValue = *(v1 + 16);
  if (!rawValue)
  {
    goto LABEL_9;
  }

  v5 = 100 * (rawValue - 1);
  if (((rawValue - 1) * 100) >> 64 != v5 >> 63)
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = *(*(v1 + 8 * (rawValue - 1) + 32) + 16);
  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v8 <= at.items._rawValue)
  {
    rawValue = at.items._rawValue - v8;
    if (!__OFSUB__(at.items._rawValue, v8))
    {
      while ((rawValue & 0x8000000000000000) == 0)
      {
        if (rawValue < *(v2 + 16))
        {
          goto LABEL_16;
        }

        __break(1u);
LABEL_9:
        if ((at.items._rawValue & 0x8000000000000000) != 0)
        {
          goto LABEL_12;
        }

        rawValue = at.items._rawValue;
      }

      goto LABEL_19;
    }

    __break(1u);
  }

LABEL_12:
  if (at.items._rawValue < -99 || at.items._rawValue / 100 >= rawValue)
  {
    goto LABEL_20;
  }

  rawValue = at.items._rawValue % 100;
  if (at.items._rawValue % 100 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v2 = *(v1 + 8 * (at.items._rawValue / 100) + 32);
  if (rawValue < *(v2 + 16))
  {
LABEL_16:
    *v3 = *(v2 + 8 * rawValue + 32);
  }

LABEL_22:
  __break(1u);
  return at;
}

uint64_t EarleyRecognizer.Chart.appending(states:)(uint64_t result, void *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v3 = a2;
  v4 = result;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = a2[2];

    if (v6)
    {
      v7 = *(v3[v6 + 3] + 16);
      if (v7 > 0x64)
      {
LABEL_22:
        __break(1u);
      }

      else
      {
        v8 = 0;
        v9 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v10 = 100 - v7;
          if (v5 - v8 < v10)
          {
            v10 = v5 - v8;
          }

          v11 = v8 + v10;
          if (__OFADD__(v8, v10))
          {
            break;
          }

          if (v11 < v8)
          {
            goto LABEL_24;
          }

          if (v5 < v8)
          {
            goto LABEL_25;
          }

          if (v5 < v11)
          {
            goto LABEL_26;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v3 = result;
          }

          if (v6 > v3[2])
          {
            goto LABEL_27;
          }

          result = specialized Array.append<A>(contentsOf:)(v4, v4 + 32, v8, (2 * v11) | 1);
          if (v11 >= v5)
          {
            return v3;
          }

          v13 = v3[2];
          v12 = v3[3];
          v6 = v13 + 1;
          if (v13 >= v12 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v3, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMd, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMR, &_sSay19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_sSay19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
            v3 = result;
          }

          v3[2] = v6;
          v3[v13 + 4] = v9;
          v7 = *(v9 + 16);
          v8 = v11;
          if (v7 > 0x64)
          {
            goto LABEL_22;
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
    }

    __break(1u);
    goto LABEL_29;
  }

  return v3;
}

uint64_t EarleyRecognizer.Chart.lastState.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 8 * v3;
LABEL_3:
    *a3 = *(v4 + 24);
  }

  v5 = *(result + 16);
  if (v5)
  {
    v6 = *(result + 8 * v5 + 24);
    v7 = *(v6 + 16);
    if (v7)
    {
      v4 = v6 + 8 * v7;
      goto LABEL_3;
    }
  }

  *a3 = 0;
  return result;
}

Swift::Int __swiftcall EarleyRecognizer.Chart.numberOfStates()()
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = 100 * v3;
    if ((v3 * 100) >> 64 != (100 * v3) >> 63)
    {
LABEL_7:
      __break(1u);
      goto LABEL_8;
    }

    v5 = *(*(result + 8 * v3 + 32) + 16);
    v6 = __OFADD__(v4, v5);
    v2 = v4 + v5;
    if (v6)
    {
LABEL_8:
      __break(1u);
      return result;
    }
  }

  v7 = *(v1 + 16);
  result = v2 + v7;
  if (__OFADD__(v2, v7))
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EarleyRecognizer.Chart()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  specialized Array<A>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance EarleyRecognizer.Chart(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  specialized Array<A>.hash(into:)(a1, v3);

  specialized Array<A>.hash(into:)(a1, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EarleyRecognizer.Chart(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  specialized Array<A>.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EarleyRecognizer.Chart(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSay19TokenGenerationCore16EarleyRecognizerC5StateVG_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore16EarleyRecognizerC5StateV_Tt1g5(v2, v3);
}

uint64_t EarleyRecognizer.childRecognizer(consumingElement:)(unsigned int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = v1[5];
  v5 = v1[6];
  v17 = MEMORY[0x1E69E7CC0];
  v18 = v4;
  v6 = v1[4];
  v19 = v5;
  v15 = v2;
  v16 = v3;

  specialized static EarleyRecognizer.parse(recognizerGrammar:element:with:items:)(v6, &v15, &v18, &v17);
  v7 = *(v17 + 2);

  if (v7)
  {
    v8 = v1[2];
    v9 = v3 != 0;
    v10 = v19;

    v11 = EarleyRecognizer.Chart.appending(states:)(v10, v4, MEMORY[0x1E69E7CC0]);
    v13 = v12;

    swift_bridgeObjectRelease_n();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(result + 28) = v9;
    *(result + 24) = v2;
    *(result + 32) = v6;
    *(result + 40) = v11;
    *(result + 48) = v13;
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t EarleyRecognizer.childRecognizer(consumingString:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v30 = v5;
  v31 = v6;
  v29 = MEMORY[0x1E69E7CC0];
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v27 = v5;
    v9 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;

    v11 = 0;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v14 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v16 = v15;
        goto LABEL_15;
      }

      if ((a2 & 0x2000000000000000) != 0)
      {
        v28[0] = a1;
        v28[1] = v9;
        v13 = v28 + v11;
      }

      else
      {
        v12 = v10;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v12 = _StringObject.sharedUTF8.getter();
        }

        v13 = (v12 + v11);
      }

      v14 = *v13;
      if ((*v13 & 0x80000000) == 0)
      {
        break;
      }

      v18 = (__clz(v14 ^ 0xFF) - 24);
      if (v18 > 2)
      {
        if (v18 == 3)
        {
          v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
          v16 = 3;
        }

        else
        {
          v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
          v16 = 4;
        }
      }

      else
      {
        if (v18 == 1)
        {
          break;
        }

        v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
        v16 = 2;
      }

LABEL_15:
      v17 = *(v3 + 32);
      LODWORD(v28[0]) = v14;
      BYTE4(v28[0]) = 0;
      specialized static EarleyRecognizer.parse(recognizerGrammar:element:with:items:)(v17, v28, &v30, &v29);
      if (!*(v29 + 2))
      {

        return 0;
      }

      v11 += v16;
      if (v11 >= v7)
      {

        v20 = v14;
        v6 = v31;
        v21 = v27;
        goto LABEL_25;
      }
    }

    v16 = 1;
    goto LABEL_15;
  }

  v21 = v5;

  v20 = 0xFF00000000;
LABEL_25:
  v22 = *(v3 + 16);
  v23 = *(v3 + 32);

  v24 = EarleyRecognizer.Chart.appending(states:)(v6, v21, MEMORY[0x1E69E7CC0]);
  v26 = v25;

  swift_bridgeObjectRelease_n();
  result = swift_allocObject();
  *(result + 16) = v22;
  *(result + 28) = BYTE4(v20);
  *(result + 24) = v20;
  *(result + 32) = v23;
  *(result + 40) = v24;
  *(result + 48) = v26;
  return result;
}

__n128 Array<A>.appendUnique(_:itemsSet:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 16);
  if (v6 < 0xA)
  {
    if (specialized Sequence<>.contains(_:)(a1, *v2))
    {
      return result;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_11;
    }

    v8 = v6 + 1;
    goto LABEL_16;
  }

  v10 = *a2;
  if (!*(v10 + 16))
  {
    v11 = v5 + 32;
    do
    {
      v12 = *(v11 + 1);
      v18[0] = *v11;
      v18[1] = v12;
      v19 = v11[32];
      specialized Set._Variant.insert(_:)(v17, v18);
      v11 += 40;
      --v6;
    }

    while (v6);
    v10 = *a2;
  }

  if ((specialized Set.contains(_:)(a1, v10) & 1) == 0)
  {
    specialized Set._Variant.insert(_:)(v17, a1);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_11:
      v14 = *(v5 + 2);
      v13 = *(v5 + 3);
      if (v14 >= v13 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v5);
      }

      *(v5 + 2) = v14 + 1;
      v15 = &v5[40 * v14];
      result = *a1;
      v16 = *(a1 + 16);
      v15[64] = *(a1 + 32);
      *(v15 + 2) = result;
      *(v15 + 3) = v16;
      *v3 = v5;
      return result;
    }

    v8 = *(v5 + 2) + 1;
LABEL_16:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 1, v5);
    goto LABEL_11;
  }

  return result;
}

uint64_t EarleyRecognizer.createValidatorCache()@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[5];
  v2 = v1[6];
  result = v1[4];
  *a1 = result;
  a1[1] = v3;
  v5 = MEMORY[0x1E69E7CC0];
  a1[2] = v2;
  a1[3] = v5;
  a1[4] = v5;
  if (*(v2 + 16))
  {
    __break(1u);
  }

  else
  {
  }

  return result;
}

Swift::Bool __swiftcall EarleyRecognizer.RecognizerValidatorCache.parse(string:skipFirst:)(Swift::String string, Swift::Int skipFirst)
{
  v3 = v2;
  v5 = HIBYTE(string._object) & 0xF;
  v41 = string;
  if ((string._object & 0x2000000000000000) == 0)
  {
    v5 = string._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v42 = 0;
  v43 = v5;
  v44 = 0;

  v6 = specialized EnumeratedSequence.Iterator.next()();
  if ((v7 & 0x100000000) != 0)
  {
LABEL_47:
    v35 = 1;
LABEL_48:

    LOBYTE(v6) = v35;
    return v6;
  }

  v8 = v7;
  v37 = skipFirst;
  while (1)
  {
    v10 = v6 - skipFirst;
    if (v6 < skipFirst)
    {
      goto LABEL_5;
    }

    if (__OFSUB__(v6, skipFirst))
    {
      break;
    }

    v11 = *(v3 + 16);
    v12 = *(v11 + 2);
    if (v12 > v10)
    {
      if (v10 < 0)
      {
        goto LABEL_51;
      }

      v13 = *(v3 + 24);
      v14 = *(v13 + 2);
      if (v10 >= v14)
      {
        goto LABEL_52;
      }

      v38 = 8 * v10;
      v15 = &v13[8 * v10];
      if ((v15[36] & 1) != 0 || *(v15 + 8) != v8)
      {
        if (v12 != v10)
        {
          if (v12 < v10)
          {
            goto LABEL_53;
          }

          v16 = v10 - v12;
          if (__OFADD__(v12, v10 - v12))
          {
            goto LABEL_54;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v10 > *(v11 + 3) >> 1)
          {
            if (v12 <= v10)
            {
              v18 = v10;
            }

            else
            {
              v18 = v12;
            }

            v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18, 1, v11, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMR, &type metadata for EarleyRecognizer.State);
          }

          swift_arrayDestroy();
          LOBYTE(v6) = memmove(&v11[8 * v10 + 32], &v11[8 * v12 + 32], 8 * (*(v11 + 2) - v12));
          v19 = *(v11 + 2);
          v20 = __OFADD__(v19, v16);
          v21 = v19 + v16;
          if (v20)
          {
            goto LABEL_56;
          }

          *(v11 + 2) = v21;
          *(v3 + 16) = v11;
          v14 = *(v13 + 2);
          skipFirst = v37;
        }

        v22 = v10 - v14;
        if (v10 != v14)
        {
          if (v10 > v14)
          {
            goto LABEL_55;
          }

          if (__OFADD__(v14, v22))
          {
            goto LABEL_57;
          }

          v23 = swift_isUniquelyReferenced_nonNull_native();
          if (!v23 || v10 > *(v13 + 3) >> 1)
          {
            if (v14 <= v10)
            {
              v24 = v10;
            }

            else
            {
              v24 = v14;
            }

            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23, v24, 1, v13);
          }

          v6 = &v13[v38 + 32];
          v25 = &v13[8 * v14 + 32];
          v26 = 8 * (*(v13 + 2) - v14);
          if (v38 != 8 * v14 || v6 >= &v25[v26])
          {
            LOBYTE(v6) = memmove(v6, v25, v26);
          }

          v27 = *(v13 + 2);
          v20 = __OFADD__(v27, v22);
          v28 = v27 + v22;
          if (v20)
          {
            goto LABEL_58;
          }

          *(v13 + 2) = v28;
          *(v3 + 24) = v13;
        }
      }
    }

    if (v10 == *(v11 + 2))
    {
      v29 = *v3;
      v39 = v8;
      v40 = 0;
      specialized static EarleyRecognizer.parse(recognizerGrammar:element:with:items:)(v29, &v39, (v3 + 8), (v3 + 32));
      v30 = *(v3 + 24);
      LOBYTE(v6) = swift_isUniquelyReferenced_nonNull_native();
      if ((v6 & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 16) + 1, 1, v30);
        v30 = v6;
      }

      v32 = *(v30 + 16);
      v31 = *(v30 + 24);
      if (v32 >= v31 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v30);
        v30 = v6;
      }

      *(v30 + 16) = v32 + 1;
      v33 = v30 + 8 * v32;
      *(v33 + 32) = v8;
      *(v33 + 36) = 0;
      *(v3 + 24) = v30;
    }

    v34 = *(v3 + 16);
    if (v10 >= *(v34 + 16))
    {
      goto LABEL_50;
    }

    if (!*(*(v34 + 8 * v10 + 32) + 16))
    {
      v35 = 0;
      goto LABEL_48;
    }

LABEL_5:
    v6 = specialized EnumeratedSequence.Iterator.next()();
    v8 = v9;
    if ((v9 & 0x100000000) != 0)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
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
  __break(1u);
LABEL_58:
  __break(1u);
  return v6;
}

Swift::Bool __swiftcall EarleyRecognizer.validate(byteTokenValue:)(Swift::UInt8 byteTokenValue)
{
  v3 = byteTokenValue;
  v4 = 1;
  v1 = EarleyRecognizer.childRecognizer(consumingElement:)(&v3);
  if (v1)
  {
  }

  return v1 != 0;
}

uint64_t EarleyRecognizer.fullMatch.getter()
{
  EarleyRecognizer.Chart.lastState.getter(v0[5], v0[6], &v12);
  result = v12;
  if (!v12)
  {
    return 0;
  }

  v2 = *(v12 + 16);
  if (!v2)
  {
LABEL_16:
    v11 = 0;
LABEL_17:

    return v11;
  }

  v3 = *(v0[4] + 56);
  v4 = (v12 + 48);
  while (1)
  {
    if (*v4)
    {
      goto LABEL_4;
    }

    v5 = *(v4 - 2);
    if ((v5 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v5 >= *(v3 + 16))
    {
      goto LABEL_21;
    }

    v6 = (v3 + 32 + 24 * v5);
    if (*v6 == *(v0[4] + 48))
    {
      v7 = *(v4 - 1);
      v8 = v6[1];
      if (v7 >= *(v8 + 16) || ((v9 = v8 + 16 * v7, *(v9 + 40) == 2) ? (v10 = *(v9 + 32) == 0) : (v10 = 0), v10))
      {
        v11 = 1;
        goto LABEL_17;
      }
    }

LABEL_4:
    v4 += 5;
    if (!--v2)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

Swift::tuple_cacheKey_Int_optional_nextValidTerminals_OpaquePointer __swiftcall EarleyRecognizer.nextValidTerminalsWithCacheKey()()
{
  v1 = type metadata accessor for TerminalSymbol(0);
  v55 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  EarleyRecognizer.Chart.lastState.getter(v0[5], v0[6], &v57);
  v4 = v57;
  if (!v57)
  {
    goto LABEL_42;
  }

  v5 = *(v57 + 16);
  if (!v5)
  {

LABEL_42:
    isUniquelyReferenced_nonNull_native = 0;
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

  v6 = v0[4];
  v7 = v6[7];
  v8 = v6[2];
  v9 = v6[3];

  v54 = v8;

  v13 = v7 + 32;
  v45 = 0;
  v14 = 0;
  v15 = -v5;
  v16 = v4 + 64;
  v17 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v49 = v3;
  v50 = v9;
  v52 = -v5;
  v53 = v7 + 32;
  v44 = v4 + 64;
  v51 = v7;
LABEL_4:
  v46 = v18;
  v18 = v16 + 40 * v14++;
  do
  {
    if ((v14 - 1) >= *(v4 + 16))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v19 = *(v18 - 32);
    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_47;
    }

    if (v19 >= *(v7 + 16))
    {
      goto LABEL_48;
    }

    v20 = *(v18 - 24);
    v21 = (v13 + 24 * v19);
    v22 = v21[1];
    if (v20 < *(v22 + 16))
    {
      v23 = *(v18 - 8);
      v24 = *v18;
      v25 = v22 + 16 * v20;
      if (*(v25 + 40))
      {
        if (*(v25 + 40) == 1)
        {
          v26 = v20 ? *v18 : 1;
          if ((v26 & 1) == 0)
          {
            v47 = *(v18 - 16);
            v48 = v23;
            v18 = v46;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v56 = v17;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_32;
          }
        }
      }

      else
      {
        v27 = *v21;
        if ((*v21 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v28 = *(v25 + 32);
        if ((v28 & 0x8000000000000000) != 0 || v27 >= *(v54 + 16))
        {
          goto LABEL_51;
        }

        if (v28 >= *(v9 + 16))
        {
          goto LABEL_52;
        }

        v47 = *(v18 - 16);
        v48 = v23;
        v29 = (*(v55 + 80) + 32) & ~*(v55 + 80);
        v30 = v9 + v29;
        v31 = *(v55 + 72);
        outlined init with copy of TerminalSymbol(v30 + v31 * v28, v3, type metadata accessor for TerminalSymbol);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore14TerminalSymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore14TerminalSymbolOGMR, type metadata accessor for TerminalSymbol);
        }

        v33 = v17[2];
        v32 = v17[3];
        v56 = v17;
        if (v33 >= v32 >> 1)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v56, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore14TerminalSymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore14TerminalSymbolOGMR, type metadata accessor for TerminalSymbol);
        }

        v34 = v56;
        v56[2] = v33 + 1;
        v17 = v34;
        v35 = v34 + v29 + v33 * v31;
        v3 = v49;
        isUniquelyReferenced_nonNull_native = outlined init with take of TerminalSymbol(v49, v35, type metadata accessor for TerminalSymbol);
        if (v20)
        {
          v36 = v24;
        }

        else
        {
          v36 = 1;
        }

        if ((v36 & 1) == 0)
        {
          v18 = v46;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v9 = v50;
          v7 = v51;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
LABEL_37:
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
            v18 = isUniquelyReferenced_nonNull_native;
          }

LABEL_32:
          v38 = v47;
          v37 = v48;
          v40 = *(v18 + 16);
          v39 = *(v18 + 24);
          v15 = v52;
          v13 = v53;
          v16 = v44;
          if (v40 >= v39 >> 1)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v18);
            v38 = v47;
            v37 = v48;
            v16 = v44;
            v15 = v52;
            v13 = v53;
            v18 = isUniquelyReferenced_nonNull_native;
          }

          *(v18 + 16) = v40 + 1;
          v41 = v18 + 40 * v40;
          *(v41 + 32) = v19;
          *(v41 + 40) = v20;
          *(v41 + 48) = v38;
          *(v41 + 56) = v37;
          *(v41 + 64) = 0;
          v45 = 1;
          v17 = v56;
          if (!(v15 + v14))
          {
LABEL_49:

            goto LABEL_40;
          }

          goto LABEL_4;
        }

        v9 = v50;
        v7 = v51;
        v15 = v52;
        v13 = v53;
      }
    }

    ++v14;
    v18 += 40;
  }

  while (v15 + v14 != 1);

  if (v45)
  {
    v56 = v17;
    v18 = v46;
LABEL_40:
    v42 = specialized Collection<>.itemCacheKey()(v18);

    isUniquelyReferenced_nonNull_native = v42;
    v11 = 0;
    v17 = v56;
    goto LABEL_45;
  }

  isUniquelyReferenced_nonNull_native = 0;
LABEL_44:
  v11 = 1;
LABEL_45:
  v12 = v17;
LABEL_53:
  result.nextValidTerminals._rawValue = v12;
  result.cacheKey.value = isUniquelyReferenced_nonNull_native;
  result.cacheKey.is_nil = v11;
  return result;
}

Swift::Int specialized Collection<>.itemCacheKey()(uint64_t a1)
{
  Hasher.init()();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 64);
    do
    {
      v4 = *(v3 - 3);
      v5 = *(v3 - 1);
      v6 = *v3;
      MEMORY[0x1AC57CB80](*(v3 - 4));
      if (v6)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1AC57CB80](v5);
      }

      MEMORY[0x1AC57CB80](v4);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return Hasher.finalize()();
}

void EarleyRecognizer.hash(into:)(uint64_t a1)
{
  specialized Array<A>.hash(into:)(a1, *(v1[4] + 56));
  v3 = v1[5];
  v4 = v1[6];
  specialized Array<A>.hash(into:)(a1, v3);

  specialized Array<A>.hash(into:)(a1, v4);
}

Swift::Bool __swiftcall EarleyRecognizer.nextTerminalsPotentiallyDeterministic()()
{
  v3 = EarleyRecognizer.nextValidTerminalsWithCacheKey()();
  rawValue = v3.nextValidTerminals._rawValue;
  if (specialized Collection<>.containsCharacterSetTerminal()(v3.nextValidTerminals._rawValue))
  {

    return 0;
  }

  else
  {
    v2 = rawValue[2];

    return v2 < 2;
  }
}

BOOL specialized Collection<>.containsCharacterSetTerminal()(uint64_t a1)
{
  v2 = type metadata accessor for TerminalSymbol(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return 0;
  }

  v13 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v14 = *(v9 + 72);
  v15 = v12 - 1;
  while (1)
  {
    v16 = v15;
    outlined init with copy of TerminalSymbol(v13, v11, type metadata accessor for TerminalSymbol);
    outlined init with copy of TerminalSymbol(v11, v7, type metadata accessor for TerminalSymbol);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v7, type metadata accessor for TerminalSymbol);
    outlined init with take of TerminalSymbol(v11, v4, type metadata accessor for TerminalSymbol);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v4, type metadata accessor for TerminalSymbol);
    result = EnumCaseMultiPayload == 2;
    if (EnumCaseMultiPayload != 2)
    {
      v15 = v16 - 1;
      v13 += v14;
      if (v16)
      {
        continue;
      }
    }

    return result;
  }

  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v11, type metadata accessor for TerminalSymbol);
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v7, type metadata accessor for TerminalSymbol);
  return 1;
}

void *EarleyRecognizer.deinit()
{

  return v0;
}

uint64_t EarleyRecognizer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int EarleyRecognizer.hashValue.getter()
{
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, *(v0[4] + 56));
  v1 = v0[6];
  specialized Array<A>.hash(into:)(v3, v0[5]);
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

void protocol witness for GrammarRecognizer.lastConsumedElement.getter in conformance EarleyRecognizer(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 24);
  *(a1 + 4) = *(*v1 + 28);
  *a1 = v2;
}

uint64_t protocol witness for GrammarRecognizer.childRecognizer(consumingElement:) in conformance EarleyRecognizer@<X0>(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  result = EarleyRecognizer.childRecognizer(consumingElement:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for GrammarRecognizer.childRecognizer(consumingString:) in conformance EarleyRecognizer@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = EarleyRecognizer.childRecognizer(consumingString:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for GrammarRecognizer.createValidatorCache() in conformance EarleyRecognizer@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v4 = *(*v1 + 40);
  v3 = *(v2 + 48);
  result = *(v2 + 32);
  *a1 = result;
  a1[1] = v4;
  v6 = MEMORY[0x1E69E7CC0];
  a1[2] = v3;
  a1[3] = v6;
  a1[4] = v6;
  if (*(v3 + 16))
  {
    __break(1u);
  }

  else
  {
  }

  return result;
}

BOOL protocol witness for GrammarRecognizer.nextTerminalsPotentiallyDeterministic() in conformance EarleyRecognizer()
{
  v3 = EarleyRecognizer.nextValidTerminalsWithCacheKey()();
  rawValue = v3.nextValidTerminals._rawValue;
  if (specialized Collection<>.containsCharacterSetTerminal()(v3.nextValidTerminals._rawValue))
  {

    return 0;
  }

  else
  {
    v2 = rawValue[2];

    return v2 < 2;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EarleyRecognizer()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, *(v1[4] + 56));
  v2 = v1[5];
  v3 = v1[6];
  specialized Array<A>.hash(into:)(v5, v2);
  specialized Array<A>.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance EarleyRecognizer(uint64_t a1)
{
  v3 = *v1;
  specialized Array<A>.hash(into:)(a1, *(v3[4] + 56));
  v4 = v3[5];
  v5 = v3[6];
  specialized Array<A>.hash(into:)(a1, v4);

  specialized Array<A>.hash(into:)(a1, v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EarleyRecognizer(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v6, *(v2[4] + 56));
  v3 = v2[5];
  v4 = v2[6];
  specialized Array<A>.hash(into:)(v6, v3);
  specialized Array<A>.hash(into:)(v6, v4);
  return Hasher._finalize()();
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufC19TokenGenerationCore17NonTerminalSymbolV_ShyAFGTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19TokenGenerationCore17NonTerminalSymbolV_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, a1);
  outlined consume of Set<NonTerminalSymbol>.Iterator._Variant(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t specialized Set.isDisjoint(with:)(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
      result = MEMORY[0x1AC57CB60](*(v6 + 40), v14);
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      if ((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (*(*(v6 + 48) + 8 * v16) != v14)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

char *EarleyRecognizer.Chart.getDebugDescription(recognizerGrammar:)(char *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 32);
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = *v5;
      v8 = *(*v5 + 16);
      v9 = *(v6 + 2);
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_39;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v10 <= *(v6 + 3) >> 1)
      {
        if (!*(v7 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v11 = v9 + v8;
        }

        else
        {
          v11 = v9;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v6, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMR, &type metadata for EarleyRecognizer.State);
        v6 = result;
        if (!*(v7 + 16))
        {
LABEL_3:

          if (v8)
          {
            goto LABEL_40;
          }

          goto LABEL_4;
        }
      }

      if ((*(v6 + 3) >> 1) - *(v6 + 2) < v8)
      {
        goto LABEL_41;
      }

      swift_arrayInitWithCopy();

      if (v8)
      {
        v12 = *(v6 + 2);
        v13 = __OFADD__(v12, v8);
        v14 = v12 + v8;
        if (v13)
        {
          goto LABEL_42;
        }

        *(v6 + 2) = v14;
      }

LABEL_4:
      ++v5;
      if (!--v4)
      {
        goto LABEL_19;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v45[0] = v6;
  v45[1] = a3;

  v15 = 0;
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v43 = v15;
    v18 = v45[v16];
    v19 = *(v18 + 16);

    if (v19)
    {
      break;
    }

LABEL_20:

    v15 = 1;
    v16 = 1;
    if (v43)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_sSay19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
      swift_arrayDestroy();
      v44[0] = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v39 = BidirectionalCollection<>.joined(separator:)();

      return v39;
    }
  }

  v20 = 0;
  while (v20 < v19)
  {
    v21 = *(v18 + 32 + 8 * v20);

    _StringGuts.grow(_:)(19);

    strcpy(v44, "==== State: ");
    BYTE5(v44[1]) = 0;
    HIWORD(v44[1]) = -5120;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v22);

    MEMORY[0x1AC57C120](0x3D3D3D3D20, 0xE500000000000000);
    v23 = v44[0];
    v24 = v44[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    }

    v26 = *(v17 + 2);
    v25 = *(v17 + 3);
    if (v26 >= v25 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v17);
    }

    *(v17 + 2) = v26 + 1;
    v27 = &v17[16 * v26];
    *(v27 + 4) = v23;
    *(v27 + 5) = v24;
    v28 = *(v21 + 16);
    if (v28)
    {
      v29 = (v21 + 32);
      do
      {
        v30 = v29[1];
        v46 = *v29;
        v47 = v30;
        v48 = *(v29 + 32);
        EarleyRecognizer.Item.getDescription(grammar:)(v3);
        v34 = *(v17 + 2);
        v33 = *(v17 + 3);
        if (v34 >= v33 >> 1)
        {
          v40 = v32;
          v41 = v31;
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v17);
          v32 = v40;
          v31 = v41;
        }

        *(v17 + 2) = v34 + 1;
        v35 = &v17[16 * v34];
        *(v35 + 4) = v31;
        *(v35 + 5) = v32;
        v29 = (v29 + 40);
        --v28;
      }

      while (v28);
    }

    v37 = *(v17 + 2);
    v36 = *(v17 + 3);
    if (v37 >= v36 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v17);
      v17 = result;
    }

    ++v20;
    *(v17 + 2) = v37 + 1;
    v38 = &v17[16 * v37];
    *(v38 + 4) = 0;
    *(v38 + 5) = 0xE000000000000000;
    v19 = *(v18 + 16);
    if (v20 == v19)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x1AC57AAA0]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x1AC57AAA0]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS6symbol_Si8positionSi8prioritytGMd, &_ss23_ContiguousArrayStorageCySS6symbol_Si8positionSi8prioritytGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS6symbol_Si8positionSi8prioritytMd, &_sSS6symbol_Si8positionSi8prioritytMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_SStGMd, &_ss23_ContiguousArrayStorageCySi_SStGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SStMd, &_sSi_SStMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A35ComponentValueCustomDataTransformer_pMd, &_s9PromptKit0A35ComponentValueCustomDataTransformer_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR, type metadata accessor for Symbol);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore14TerminalSymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore14TerminalSymbolOGMR, type metadata accessor for TerminalSymbol);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySiGGMd, &_ss23_ContiguousArrayStorageCySaySiGGMR, &_sSaySiGMd, &_sSaySiGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMd, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMR, &_sSay19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_sSay19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation12CharacterSetVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12CharacterSetVGMR, MEMORY[0x1E69680B8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGMR, MEMORY[0x1E69A0AD0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySay29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGGMd, &_ss23_ContiguousArrayStorageCySay29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGGMR, &_sSay29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGMd, &_sSay29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC27SpaceLookaheadMaskGeneratorVyAKG__GGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC27SpaceLookaheadMaskGeneratorVyAKG__GGMR, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerC0aD5CacheVyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAIG__GMd, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerC0aD5CacheVyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAIG__GMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC28ExhaustiveLogitMaskGeneratorVyAKG__GGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC28ExhaustiveLogitMaskGeneratorVyAKG__GGMR, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerC0aD5CacheVyAA06EarleyD0CAA28ExhaustiveLogitMaskGeneratorVyAIG__GMd, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerC0aD5CacheVyAA06EarleyD0CAA28ExhaustiveLogitMaskGeneratorVyAIG__GMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCyShySiGGMd, &_ss23_ContiguousArrayStorageCyShySiGGMR, &_sShySiGMd, &_sShySiGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV0dE4CoreE08RenderedF8FragmentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV0dE4CoreE08RenderedF8FragmentOGMR, type metadata accessor for Prompt.RenderedPromptFragment);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore18TokenizationResultOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore18TokenizationResultOGMR, type metadata accessor for TokenizationResult);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV9DelimiterVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV9DelimiterVGMR, type metadata accessor for Prompt.Delimiter);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV0dE4CoreE0F8FragmentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV0dE4CoreE0F8FragmentOGMR, type metadata accessor for Prompt.PromptFragment);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV0dE4CoreE0F6MarkerOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV0dE4CoreE0F6MarkerOGMR, type metadata accessor for Prompt.PromptMarker);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9PromptKit011ChatMessageD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit011ChatMessageD0VGMR, MEMORY[0x1E69C61C0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR, MEMORY[0x1E69C6360]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMR, type metadata accessor for Prompt.Turn);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV10AttachmentVGMR, type metadata accessor for Prompt.Attachment);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore15TokenizerRunnerC13TokenizedItemOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore15TokenizerRunnerC13TokenizedItemOGMR, type metadata accessor for TokenizerRunner.TokenizedItem);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation4ToolVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation4ToolVGMR, MEMORY[0x1E69A0DF0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV5turnsSayAE4TurnVGyF0H4SpanL_VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV5turnsSayAE4TurnVGyF0H4SpanL_VGMR, type metadata accessor for TurnSpan #1 in Prompt.turns());
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV5turnsSayAE4TurnVGyF0H9DelimiterL_VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV5turnsSayAE4TurnVGyF0H9DelimiterL_VGMR, type metadata accessor for TurnDelimiter #1 in Prompt.turns());
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 3);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[8 * v11])
    {
      memmove(v16, v17, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_23;
  }

  LOBYTE(v5) = a2;
  v7 = a1[5];
  v6 = a1[6];
  v8 = a1[4];

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v5 & 1);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v20 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  *(v21[7] + 8 * v10) = v6;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(30);
    MEMORY[0x1AC57C120](0xD00000000000001BLL, 0x80000001A8FD89D0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1AC57C120](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v6 = 1;
    while (v6 < a1[2])
    {
      v7 = *(v5 - 1);
      v25 = *v5;
      v8 = *(v5 - 2);

      if (!v7)
      {
        goto LABEL_23;
      }

      v26 = *a3;
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, 1);
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v8;
      v34[1] = v7;
      *(v33[7] + 8 * v27) = v25;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v6;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v6)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1AC57CB80](v4);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = *(a2 + 32 + 24 * i + 16);

      String.hash(into:)();
      MEMORY[0x1AC57CB80](*(v7 + 16));
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = (v7 + 32);
        do
        {
          v10 = *v9++;

          specialized Array<A>.hash(into:)(a1, v10);

          --v8;
        }

        while (v8);
      }
    }
  }

  return result;
}

{
  v3 = type metadata accessor for CharacterSet();
  v51 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for TerminalSymbol(0);
  v40 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v40 - v15;
  v48 = type metadata accessor for Symbol(0);
  v16 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = (&v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v18);
  v49 = &v40 - v20;
  v21 = *(a2 + 16);
  result = MEMORY[0x1AC57CB80](v21, v19);
  v47 = v21;
  if (v21)
  {
    v46 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v45 = *(v16 + 72);
    v23 = 0;
    v24 = v51++;
    v52 = (v24 + 4);
    v41 = v13;
    while (1)
    {
      v25 = v49;
      outlined init with copy of TerminalSymbol(v46 + v45 * v23, v49, type metadata accessor for Symbol);
      outlined init with copy of TerminalSymbol(v25, v50, type metadata accessor for Symbol);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload != 1)
      {
        MEMORY[0x1AC57CB80](2);
        String.hash(into:)();

LABEL_28:
        result = outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v49, type metadata accessor for Symbol);
        goto LABEL_4;
      }

      v42 = v23;
      v27 = *v50;
      MEMORY[0x1AC57CB80](1);
      MEMORY[0x1AC57CB80](*(v27 + 16));
      v44 = v27;
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = v44 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
        v30 = *(v40 + 72);
        do
        {
          outlined init with copy of TerminalSymbol(v29, v10, type metadata accessor for TerminalSymbol);
          outlined init with copy of TerminalSymbol(v10, v7, type metadata accessor for TerminalSymbol);
          v32 = swift_getEnumCaseMultiPayload();
          if (v32 > 1)
          {
            if (v32 == 2)
            {
              (*v52)(v5, v7, v3);
              v34 = 2;
LABEL_17:
              MEMORY[0x1AC57CB80](v34);
              lazy protocol witness table accessor for type EarleyRecognizer and conformance EarleyRecognizer(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, 255, MEMORY[0x1E69680B8], MEMORY[0x1E69680C0]);
              dispatch thunk of Hashable.hash(into:)();
              (*v51)(v5, v3);
              goto LABEL_10;
            }

            v31 = *v7;
            MEMORY[0x1AC57CB80](3);
            Hasher._combine(_:)(v31);
          }

          else
          {
            if (v32)
            {
              (*v52)(v5, v7, v3);
              v34 = 1;
              goto LABEL_17;
            }

            v33 = *v7;
            MEMORY[0x1AC57CB80](0);
            Hasher._combine(_:)(v33);
          }

LABEL_10:
          outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v10, type metadata accessor for TerminalSymbol);
          v29 += v30;
          --v28;
        }

        while (v28);
      }

      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v49, type metadata accessor for Symbol);

      v13 = v41;
      v23 = v42;
LABEL_4:
      if (++v23 == v47)
      {
        return result;
      }
    }

    v35 = v43;
    outlined init with take of TerminalSymbol(v50, v43, type metadata accessor for TerminalSymbol);
    MEMORY[0x1AC57CB80](0);
    outlined init with copy of TerminalSymbol(v35, v13, type metadata accessor for TerminalSymbol);
    v36 = swift_getEnumCaseMultiPayload();
    if (v36 > 1)
    {
      if (v36 != 2)
      {
        v39 = *v13;
        MEMORY[0x1AC57CB80](3);
        Hasher._combine(_:)(v39);
        goto LABEL_27;
      }

      (*v52)(v5, v13, v3);
      v38 = 2;
    }

    else
    {
      if (!v36)
      {
        v37 = *v13;
        MEMORY[0x1AC57CB80](0);
        Hasher._combine(_:)(v37);
LABEL_27:
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v43, type metadata accessor for TerminalSymbol);
        goto LABEL_28;
      }

      (*v52)(v5, v13, v3);
      v38 = 1;
    }

    MEMORY[0x1AC57CB80](v38);
    lazy protocol witness table accessor for type EarleyRecognizer and conformance EarleyRecognizer(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, 255, MEMORY[0x1E69680B8], MEMORY[0x1E69680C0]);
    dispatch thunk of Hashable.hash(into:)();
    (*v51)(v5, v3);
    goto LABEL_27;
  }

  return result;
}

{
  v3 = type metadata accessor for CharacterSet();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TerminalSymbol(0);
  v7 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *(a2 + 16);
  result = MEMORY[0x1AC57CB80](v14, v11);
  if (v14)
  {
    v16 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v17 = *(v7 + 72);
    v26 = (v4 + 32);
    v27 = v17;
    v18 = (v4 + 8);
    while (1)
    {
      outlined init with copy of TerminalSymbol(v16, v13, type metadata accessor for TerminalSymbol);
      outlined init with copy of TerminalSymbol(v13, v9, type metadata accessor for TerminalSymbol);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        break;
      }

      if (EnumCaseMultiPayload)
      {
        (*v26)(v6, v9, v3);
        v22 = 1;
LABEL_10:
        MEMORY[0x1AC57CB80](v22);
        lazy protocol witness table accessor for type EarleyRecognizer and conformance EarleyRecognizer(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, 255, MEMORY[0x1E69680B8], MEMORY[0x1E69680C0]);
        dispatch thunk of Hashable.hash(into:)();
        (*v18)(v6, v3);
        goto LABEL_4;
      }

      v19 = *v9;
      MEMORY[0x1AC57CB80](0);
      v20 = v19;
      v17 = v27;
      Hasher._combine(_:)(v20);
LABEL_4:
      result = outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v13, type metadata accessor for TerminalSymbol);
      v16 += v17;
      if (!--v14)
      {
        return result;
      }
    }

    if (EnumCaseMultiPayload != 2)
    {
      v23 = *v9;
      MEMORY[0x1AC57CB80](3);
      v24 = v23;
      v17 = v27;
      Hasher._combine(_:)(v24);
      goto LABEL_4;
    }

    (*v26)(v6, v9, v3);
    v22 = 2;
    goto LABEL_10;
  }

  return result;
}

{
  v3 = *(a2 + 16);
  result = MEMORY[0x1AC57CB80](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v7 = *(v5 - 1);
      if (*v5)
      {
        if (*v5 != 1)
        {
          v7 = 0;
          goto LABEL_5;
        }

        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      MEMORY[0x1AC57CB80](v6);
LABEL_5:
      v5 += 16;
      result = MEMORY[0x1AC57CB80](v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

{
  v4 = type metadata accessor for Prompt.Attachment(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  result = MEMORY[0x1AC57CB80](v9, v6);
  if (v9)
  {
    v12 = *(v4 + 20);
    v11 = *(v4 + 24);
    v13 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    do
    {
      outlined init with copy of TerminalSymbol(v13, v8, type metadata accessor for Prompt.Attachment);
      Prompt.AttachmentContent.hash(into:)(a1);
      MEMORY[0x1AC57CB80](*&v8[v12]);
      MEMORY[0x1AC57CB80](*&v8[v11]);
      result = outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v8, type metadata accessor for Prompt.Attachment);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  return result;
}

{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for Prompt.Delimiter(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  result = MEMORY[0x1AC57CB80](v14, v11);
  if (v14)
  {
    v16 = type metadata accessor for Prompt.SpecialToken(0);
    v17 = v16[5];
    v31 = &v13[v16[6]];
    v32 = v17;
    v18 = v16[7];
    v19 = *(v9 + 24);
    v29 = *(v9 + 20);
    v30 = v18;
    v20 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v27 = *(v10 + 72);
    v28 = v19;
    v21 = (v4 + 48);
    v24 = (v4 + 8);
    v25 = (v4 + 32);
    do
    {
      outlined init with copy of TerminalSymbol(v20, v13, type metadata accessor for Prompt.Delimiter);
      String.hash(into:)();
      outlined init with copy of Locale?(&v13[v32], v8);
      if ((*v21)(v8, 1, v3) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v22 = v26;
        (*v25)(v26, v8, v3);
        Hasher._combine(_:)(1u);
        lazy protocol witness table accessor for type EarleyRecognizer and conformance EarleyRecognizer(&lazy protocol witness table cache variable for type Locale and conformance Locale, 255, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
        dispatch thunk of Hashable.hash(into:)();
        (*v24)(v22, v3);
      }

      if (*(v31 + 1))
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(v13[v30]);
      MEMORY[0x1AC57CB80](*&v13[v29]);
      MEMORY[0x1AC57CB80](*&v13[v28]);
      result = outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v13, type metadata accessor for Prompt.Delimiter);
      v20 += v27;
      --v14;
    }

    while (v14);
  }

  return result;
}

{
  v3 = *(a2 + 16);
  result = MEMORY[0x1AC57CB80](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {
      v6 = *(v5 + 32);
      v7 = *(v5 + 40);

      outlined copy of Data?(v6, v7);
      String.hash(into:)();
      MEMORY[0x1AC57CB80](0);
      String.hash(into:)();
      String.hash(into:)();
      if (v7 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Data.hash(into:)();
      }

      result = outlined consume of Data?(v6, v7);
      v5 += 64;
      --v3;
    }

    while (v3);
  }

  return result;
}

void specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  MEMORY[0x1AC57CB80](v4);
  if (v4)
  {
    v5 = (a2 + 48);
    do
    {
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = *v5;
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          MEMORY[0x1AC57CB80](4);

          specialized Array<A>.hash(into:)(a1, v9);
          v6 = v9;
          v7 = v10;
          v8 = 3;
        }

        else
        {
          if (v11 != 4)
          {
            MEMORY[0x1AC57CB80](0);
            goto LABEL_5;
          }

          MEMORY[0x1AC57CB80](5);

          specialized Dictionary<>.hash(into:)(a1, v9);
          v6 = v9;
          v7 = v10;
          v8 = 4;
        }
      }

      else
      {
        if (!*v5)
        {
          MEMORY[0x1AC57CB80](1);
          Hasher._combine(_:)(v9 & 1);
          goto LABEL_5;
        }

        if (v11 == 1)
        {
          MEMORY[0x1AC57CB80](2);
          if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v12 = v9;
          }

          else
          {
            v12 = 0;
          }

          MEMORY[0x1AC57CBC0](v12);
          goto LABEL_5;
        }

        MEMORY[0x1AC57CB80](3);

        String.hash(into:)();
        v6 = v9;
        v7 = v10;
        v8 = 2;
      }

      outlined consume of JSON(v6, v7, v8);
LABEL_5:
      v5 += 24;
      --v4;
    }

    while (v4);
  }
}

{
  v3 = *(a2 + 16);
  MEMORY[0x1AC57CB80](v3);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 32;
    do
    {
      v6 = *(v5 + 8 * v4);
      MEMORY[0x1AC57CB80](*(v6 + 16));
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = (v6 + 64);
        do
        {
          v9 = *(v8 - 3);
          v11 = *(v8 - 2);
          v10 = *(v8 - 1);
          v12 = *v8;
          MEMORY[0x1AC57CB80](*(v8 - 4));
          MEMORY[0x1AC57CB80](v9);
          MEMORY[0x1AC57CB80](v11);
          if (v12 == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1AC57CB80](v10);
          }

          v8 += 40;
          --v7;
        }

        while (v7);
      }

      ++v4;
    }

    while (v4 != v3);
  }
}

{
  v3 = *(a2 + 16);
  MEMORY[0x1AC57CB80](v3);
  if (v3)
  {
    v4 = (a2 + 64);
    do
    {
      v5 = *(v4 - 3);
      v7 = *(v4 - 2);
      v6 = *(v4 - 1);
      v8 = *v4;
      MEMORY[0x1AC57CB80](*(v4 - 4));
      MEMORY[0x1AC57CB80](v5);
      MEMORY[0x1AC57CB80](v7);
      if (v8 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1AC57CB80](v6);
      }

      v4 += 40;
      --v3;
    }

    while (v3);
  }
}

{
  v3 = *(a2 + 16);
  MEMORY[0x1AC57CB80](v3);
  v17 = v3;
  if (v3)
  {
    v4 = 0;
    v16 = a2 + 32;
    do
    {
      v18 = v4;
      v5 = *(v16 + 8 * v4);
      MEMORY[0x1AC57CB80](*(v5 + 16));
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = 0;
        v8 = v5 + 32;
        do
        {
          v9 = *(v8 + 8 * v7);
          MEMORY[0x1AC57CB80](*(v9 + 16));
          v10 = *(v9 + 16);
          if (v10)
          {
            v11 = (v9 + 64);
            do
            {
              v12 = *(v11 - 3);
              v14 = *(v11 - 2);
              v13 = *(v11 - 1);
              v15 = *v11;
              MEMORY[0x1AC57CB80](*(v11 - 4));
              MEMORY[0x1AC57CB80](v12);
              MEMORY[0x1AC57CB80](v14);
              if (v15 == 1)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1AC57CB80](v13);
              }

              v11 += 40;
              --v10;
            }

            while (v10);
          }

          ++v7;
        }

        while (v7 != v6);
      }

      v4 = v18 + 1;
    }

    while (v18 + 1 != v17);
  }
}

{
  v3 = *(a2 + 16);
  MEMORY[0x1AC57CB80](v3);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 32;
    while (1)
    {
      v6 = v5 + 24 * v4;
      v7 = *(v6 + 8);
      v8 = *(v6 + 16);
      v9 = *(v6 + 17);
      MEMORY[0x1AC57CB80](*v6);
      MEMORY[0x1AC57CB80](*(v7 + 16));
      v10 = *(v7 + 16);
      if (v10)
      {
        break;
      }

LABEL_3:
      Hasher._combine(_:)(v8);
      ++v4;
      Hasher._combine(_:)(v9);
      if (v4 == v3)
      {
        return;
      }
    }

    v11 = (v7 + 40);
    while (1)
    {
      v13 = *(v11 - 1);
      if (*v11)
      {
        if (*v11 != 1)
        {
          v13 = 0;
          goto LABEL_8;
        }

        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      MEMORY[0x1AC57CB80](v12);
LABEL_8:
      v11 += 16;
      MEMORY[0x1AC57CB80](v13);
      if (!--v10)
      {
        goto LABEL_3;
      }
    }
  }
}

{
  v3 = *(a2 + 16);
  MEMORY[0x1AC57CB80](v3);
  v27 = v3;
  if (v3)
  {
    v4 = 0;
    v26 = a2 + 32;
    do
    {
      v6 = v26 + 56 * v4;
      v8 = *v6;
      v7 = *(v6 + 8);
      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
      v11 = *(v6 + 32);
      v12 = *(v6 + 40);
      v13 = *(v6 + 48);
      if (v13)
      {
        v14 = 4;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14 | (v9 >> 60) & 3;
      if (v15 <= 1)
      {
        if (v15)
        {
          MEMORY[0x1AC57CB80](1);
          MEMORY[0x1AC57CB80](v8 & 1);
          outlined copy of Data._Representation(v7, v9 & 0xCFFFFFFFFFFFFFFFLL);
          Data.hash(into:)();
        }

        else
        {
          MEMORY[0x1AC57CB80](0);

          String.hash(into:)();
        }
      }

      else if (v15 == 2)
      {
        MEMORY[0x1AC57CB80](2);
        v5 = v8;
        NSObject.hash(into:)();
      }

      else
      {
        if (v15 != 3)
        {
          MEMORY[0x1AC57CB80](4);
          MEMORY[0x1AC57CB80](v8[2]);
          v16 = v8[2];
          if (v16)
          {
            v17 = v8 + 4;
            do
            {
              v17 = (v17 + 2);
              __asm { FCMP            H0, #0 }

              if (_ZF)
              {
                _H0 = COERCE_SHORT_FLOAT(0);
              }

              Hasher._combine(_:)(LOWORD(_H0));
              --v16;
            }

            while (v16);
          }

          MEMORY[0x1AC57CB80](*(v7 + 16));
          v23 = *(v7 + 16);
          if (v23)
          {
            v24 = (v7 + 32);
            do
            {
              v25 = *v24++;
              MEMORY[0x1AC57CB80](v25);
              --v23;
            }

            while (v23);
          }

          goto LABEL_5;
        }

        MEMORY[0x1AC57CB80](3);
        MEMORY[0x1AC57CB80](v8 & 1);
        outlined copy of Prompt.Turn.Segment(v8, v7, v9, v10, v11, v12, v13);

        Data.hash(into:)();
        MEMORY[0x1AC57CB80](v10);
        String.hash(into:)();
      }

      outlined consume of Prompt.Turn.Segment(v8, v7, v9, v10, v11, v12, v13);
LABEL_5:
      ++v4;
    }

    while (v4 != v27);
  }
}

{
  v3 = *(a2 + 16);
  MEMORY[0x1AC57CB80](v3);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      v4 += 2;
      __asm { FCMP            H0, #0 }

      if (_ZF)
      {
        _H0 = COERCE_SHORT_FLOAT(0);
      }

      Hasher._combine(_:)(LOWORD(_H0));
      --v3;
    }

    while (v3);
  }
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x1AC57AAA0]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t specialized static EarleyRecognizer.== infix(_:_:)(void *a1, void *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore16EarleyRecognizerC0F4RuleV_Tt1g5(*(a1[4] + 56), *(a2[4] + 56)) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[5];
  v5 = a1[6];
  v6 = a2[5];
  v7 = a2[6];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSay19TokenGenerationCore16EarleyRecognizerC5StateVG_Tt1g5(v4, v6) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore16EarleyRecognizerC5StateV_Tt1g5(v5, v7);
}

void specialized static EarleyRecognizer.predictAndComplete(recognizerGrammar:chart:items:)(void *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v5 = a1[5];
  v7 = a1[7];
  v6 = a1[8];
  v8 = EarleyRecognizer.Chart.numberOfStates()();
  v178 = MEMORY[0x1E69E7CD0];
  v9 = *a4;
  v10 = *(*a4 + 2);
  if (v10)
  {
    v11 = 0;
    v147 = v5;
    v148 = v7 + 32;
    v143 = v5 + 32;
    v144 = (v6 + 32);
    v151 = v8;
    v152 = a4;
    v12 = v5;
    v164 = v7 + 40;
    v165 = v7;
    v13 = v6;
    v146 = v6;
    while (1)
    {
      if (v11 >= v10)
      {
        goto LABEL_206;
      }

      v14 = &v9[40 * v11];
      v15 = *(v14 + 4);
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_207;
      }

      if (v15 >= *(v7 + 16))
      {
        goto LABEL_208;
      }

      v17 = *(v14 + 5);
      v16 = *(v14 + 6);
      v18 = (v148 + 24 * v15);
      v20 = *v18;
      v19 = v18[1];
      if (v17 >= *(v19 + 16))
      {
        break;
      }

      v21 = v19 + 16 * v17;
      if (!*(v21 + 40))
      {
        goto LABEL_4;
      }

      if (*(v21 + 40) != 1)
      {
        break;
      }

      v22 = *(v14 + 7);
      v23 = v14[64];
      v24 = *(v21 + 32);
      v25 = v144;
      v26 = *(v13 + 16);
      while (v26)
      {
        v27 = *v25++;
        --v26;
        if (v27 == v24)
        {
          v28 = 0;
          v29 = v8;
          goto LABEL_109;
        }
      }

      v29 = v22;
      v28 = v23;
LABEL_109:
      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_209;
      }

      v91 = a1[9];
      if (v24 >= *(v91 + 16))
      {
        goto LABEL_210;
      }

      v92 = *(v91 + 8 * v24 + 32);
      v93 = *(v92 + 16);
      if (!v93)
      {
        goto LABEL_196;
      }

      v140 = v24;
      v141 = v23;
      v142 = v22;
      v150 = v17;
      v154 = v11;
      v156 = v15;
      v158 = v16;
      v169 = v92 + 32;
      v174 = v29;

      v94 = v174;
      v95 = 0;
      v171 = v28;
      v160 = v92;
      v163 = v93;
      while (2)
      {
        if (v95 >= *(v92 + 16))
        {
          goto LABEL_205;
        }

        v99 = *(v169 + 8 * v95);
        v186 = v99;
        *&v187 = v8;
        *(&v187 + 1) = v94;
        v188 = v28;
        v100 = *(v9 + 2);
        v176 = v100;
        if (v100 <= 9)
        {
          if (v100)
          {
            v101 = v9 + 64;
            do
            {
              if (*(v101 - 4) == v99 && *(v101 - 3) == 0 && *(v101 - 2) == v8)
              {
                if (*v101)
                {
                  if (v28)
                  {
                    goto LABEL_115;
                  }
                }

                else
                {
                  if (*(v101 - 1) == v94)
                  {
                    v102 = v28;
                  }

                  else
                  {
                    v102 = 1;
                  }

                  if ((v102 & 1) == 0)
                  {
                    goto LABEL_115;
                  }
                }
              }

              v101 += 40;
              --v100;
            }

            while (v100);
          }

          v106 = a4;
          v107 = v95;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v176 + 1, 1, v9);
          }

          v109 = *(v9 + 2);
          v108 = *(v9 + 3);
          v110 = v109 + 1;
          v94 = v174;
          if (v109 >= v108 >> 1)
          {
            v138 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v108 > 1), v109 + 1, 1, v9);
            v95 = v107;
            v94 = v174;
            v9 = v138;
          }

          else
          {
            v95 = v107;
          }

          a4 = v106;
          goto LABEL_114;
        }

        v105 = v178;
        v167 = v95;
        if (!*(v178 + 16))
        {
          v161 = v99;
          v111 = 0;
          v112 = v178 + 56;
          while (1)
          {
            while (1)
            {
              v113 = &v9[40 * v111 + 32];
              v114 = *(v113 + 32);
              v115 = *(v113 + 16);
              v189[0] = *v113;
              v189[1] = v115;
              v190 = v114;
              v116 = v189[0];
              v117 = v115;
              v118 = v114;
              Hasher.init(_seed:)();
              MEMORY[0x1AC57CB80](v116);
              MEMORY[0x1AC57CB80](*(&v116 + 1));
              MEMORY[0x1AC57CB80](v117);
              if (v118 == 1)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1AC57CB80](*(&v117 + 1));
              }

              ++v111;
              v119 = Hasher._finalize()();
              v120 = -1 << *(v105 + 32);
              v121 = v119 & ~v120;
              if ((*(v112 + ((v121 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v121))
              {
                break;
              }

LABEL_166:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v177[0] = v105;
              specialized _NativeSet.insertNew(_:at:isUnique:)(v189, v121, isUniquelyReferenced_nonNull_native);
              v105 = v177[0];
              if (v111 == v176)
              {
LABEL_168:
                v178 = v105;
                v8 = v151;
                a4 = v152;
                v28 = v171;
                v92 = v160;
                v99 = v161;
                if (*(v105 + 16))
                {
                  goto LABEL_169;
                }

LABEL_190:
                specialized Set._Variant.insert(_:)(v177, &v186);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
                }

                v109 = *(v9 + 2);
                v136 = *(v9 + 3);
                v110 = v109 + 1;
                v94 = v174;
                v93 = v163;
                v95 = v167;
                if (v109 >= v136 >> 1)
                {
                  v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v136 > 1), v109 + 1, 1, v9);
                  v95 = v167;
                  v94 = v174;
                  v9 = v137;
                }

                v7 = v165;
LABEL_114:
                *(v9 + 2) = v110;
                v96 = &v9[40 * v109];
                v97 = v186;
                v98 = v187;
                v96[64] = v188;
                *(v96 + 2) = v97;
                *(v96 + 3) = v98;
                *a4 = v9;
                v28 = v171;
                goto LABEL_115;
              }

              v112 = v177[0] + 56;
            }

            v122 = ~v120;
            while (1)
            {
              v124 = *(v105 + 48) + 40 * v121;
              if (*v124 != v116 || *(v124 + 8) != *(&v116 + 1) || *(v124 + 16) != v117)
              {
                goto LABEL_154;
              }

              if ((*(v124 + 32) & 1) == 0)
              {
                break;
              }

              if (v118)
              {
                goto LABEL_144;
              }

LABEL_154:
              v121 = (v121 + 1) & v122;
              if (((*(v112 + ((v121 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v121) & 1) == 0)
              {
                goto LABEL_166;
              }
            }

            if (*(v124 + 24) == *(&v117 + 1))
            {
              v123 = v118;
            }

            else
            {
              v123 = 1;
            }

            if (v123)
            {
              goto LABEL_154;
            }

LABEL_144:
            if (v111 == v176)
            {
              goto LABEL_168;
            }
          }
        }

LABEL_169:
        Hasher.init(_seed:)();
        MEMORY[0x1AC57CB80](v99);
        MEMORY[0x1AC57CB80](0);
        MEMORY[0x1AC57CB80](v8);
        if (v28)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          MEMORY[0x1AC57CB80](v174);
        }

        v128 = Hasher._finalize()();
        v129 = -1 << *(v105 + 32);
        v130 = v128 & ~v129;
        v94 = v174;
        if (((*(v105 + 56 + ((v130 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v130) & 1) == 0)
        {
          goto LABEL_190;
        }

        v131 = ~v129;
        while (1)
        {
          v132 = *(v105 + 48) + 40 * v130;
          if (*v132 != v99 || *(v132 + 8) != 0 || *(v132 + 16) != v8)
          {
            goto LABEL_175;
          }

          if ((*(v132 + 32) & 1) == 0)
          {
            break;
          }

          if (v28)
          {
            goto LABEL_189;
          }

LABEL_175:
          v130 = (v130 + 1) & v131;
          if (((*(v105 + 56 + ((v130 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v130) & 1) == 0)
          {
            goto LABEL_190;
          }
        }

        if (*(v132 + 24) == v174)
        {
          v135 = v28;
        }

        else
        {
          v135 = 1;
        }

        if (v135)
        {
          goto LABEL_175;
        }

LABEL_189:
        v93 = v163;
        v7 = v165;
        v95 = v167;
LABEL_115:
        if (++v95 != v93)
        {
          continue;
        }

        break;
      }

      v15 = v156;
      v16 = v158;
      v13 = v146;
      v12 = v147;
      v11 = v154;
      v17 = v150;
      v22 = v142;
      LOBYTE(v23) = v141;
      v24 = v140;
LABEL_196:
      if (v24 >= *(v12 + 16))
      {
        goto LABEL_211;
      }

      if (*(v143 + v24) == 1)
      {
        v184[0] = v15;
        v184[1] = v17 + 1;
        v184[2] = v16;
        v184[3] = v22;
        v185 = v23;
        v139 = v11;
        Array<A>.appendUnique(_:itemsSet:)(v184, &v178);
        v11 = v139;
        v13 = v146;
        v12 = v147;
      }

LABEL_4:
      ++v11;
      v9 = *a4;
      v10 = *(*a4 + 2);
      if (v11 >= v10)
      {
        goto LABEL_199;
      }
    }

    v153 = v11;
    if (v16 >= v8)
    {
    }

    else
    {
      EarleyRecognizer.Chart.state(at:)(v16);
      v30 = v177[0];
      v10 = *(v177[0] + 16);
      if (!v10)
      {
LABEL_3:

        v13 = v146;
        v12 = v147;
        v11 = v153;
        goto LABEL_4;
      }
    }

    v31 = 0;
    v32 = v30 + 32;
    v168 = v30 + 32;
    v170 = v30;
    v33 = v164;
    v34 = v20;
    v149 = v10;
    v162 = v20;
    while (v31 < *(v30 + 16))
    {
      v38 = v32 + 40 * v31;
      v39 = *v38;
      if ((*v38 & 0x8000000000000000) != 0)
      {
        goto LABEL_203;
      }

      if (v39 >= *(v7 + 16))
      {
        goto LABEL_204;
      }

      v40 = *(v38 + 8);
      v41 = *(v33 + 24 * v39);
      if (v40 < *(v41 + 16))
      {
        v42 = v41 + 16 * v40;
        v43 = *(v42 + 40) == 1 && *(v42 + 32) == v34;
        if (v43)
        {
          v44 = a4;
          v45 = *(v38 + 16);
          v46 = *(v38 + 24);
          v47 = *(v38 + 32);
          v48 = v40 + 1;
          *&v179 = *v38;
          *(&v179 + 1) = v40 + 1;
          *&v180 = v45;
          *(&v180 + 1) = v46;
          v181 = v47;
          v49 = *(v9 + 2);
          v175 = v49;
          if (v49 > 9)
          {
            v172 = v9;
            v54 = v178;
            v166 = v31;
            v173 = v47;
            if (*(v178 + 16))
            {
              goto LABEL_84;
            }

            v155 = v48;
            v157 = v46;
            v159 = v45;
            v63 = 0;
            v64 = v178 + 56;
LABEL_60:
            while (2)
            {
              v65 = &v172[40 * v63 + 32];
              v66 = *(v65 + 32);
              v67 = *(v65 + 16);
              v182[0] = *v65;
              v182[1] = v67;
              v183 = v66;
              v68 = v182[0];
              v69 = v67;
              v70 = v66;
              Hasher.init(_seed:)();
              MEMORY[0x1AC57CB80](v68);
              MEMORY[0x1AC57CB80](*(&v68 + 1));
              MEMORY[0x1AC57CB80](v69);
              if (v70 == 1)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1AC57CB80](*(&v69 + 1));
              }

              ++v63;
              v71 = Hasher._finalize()();
              v72 = -1 << *(v54 + 32);
              v73 = v71 & ~v72;
              if ((*(v64 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73))
              {
                v74 = ~v72;
                do
                {
                  v76 = *(v54 + 48) + 40 * v73;
                  if (*v76 == v68 && *(v76 + 8) == *(&v68 + 1) && *(v76 + 16) == v69)
                  {
                    if (*(v76 + 32))
                    {
                      if (v70)
                      {
                        goto LABEL_59;
                      }
                    }

                    else
                    {
                      if (*(v76 + 24) == *(&v69 + 1))
                      {
                        v75 = v70;
                      }

                      else
                      {
                        v75 = 1;
                      }

                      if ((v75 & 1) == 0)
                      {
LABEL_59:
                        if (v63 == v175)
                        {
                          goto LABEL_83;
                        }

                        goto LABEL_60;
                      }
                    }
                  }

                  v73 = (v73 + 1) & v74;
                }

                while (((*(v64 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) != 0);
              }

              v79 = swift_isUniquelyReferenced_nonNull_native();
              v177[0] = v54;
              specialized _NativeSet.insertNew(_:at:isUnique:)(v182, v73, v79);
              v54 = v177[0];
              if (v63 != v175)
              {
                v64 = v177[0] + 56;
                continue;
              }

              break;
            }

LABEL_83:
            v178 = v54;
            v8 = v151;
            v44 = v152;
            v10 = v149;
            v45 = v159;
            v48 = v155;
            v46 = v157;
            if (*(v54 + 16))
            {
LABEL_84:
              v80 = v48;
              Hasher.init(_seed:)();
              MEMORY[0x1AC57CB80](v39);
              MEMORY[0x1AC57CB80](v80);
              MEMORY[0x1AC57CB80](v45);
              if (v173)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1AC57CB80](v46);
              }

              v81 = Hasher._finalize()();
              v82 = -1 << *(v54 + 32);
              v83 = v81 & ~v82;
              if ((*(v54 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83))
              {
                v84 = ~v82;
                do
                {
                  v85 = *(v54 + 48) + 40 * v83;
                  if (*v85 == v39 && *(v85 + 8) == v80 && *(v85 + 16) == v45)
                  {
                    if (*(v85 + 32))
                    {
                      if (v173)
                      {
                        goto LABEL_103;
                      }
                    }

                    else
                    {
                      v43 = *(v85 + 24) == v46;
                      v88 = v173;
                      if (!v43)
                      {
                        v88 = 1;
                      }

                      if ((v88 & 1) == 0)
                      {
LABEL_103:
                        v30 = v170;
                        v9 = v172;
                        v31 = v166;
                        v32 = v168;
                        a4 = v44;
                        v34 = v162;
                        v33 = v164;
                        v7 = v165;
                        goto LABEL_23;
                      }
                    }
                  }

                  v83 = (v83 + 1) & v84;
                }

                while (((*(v54 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) != 0);
              }
            }

            specialized Set._Variant.insert(_:)(v177, &v179);
            v9 = v172;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v172 + 2) + 1, 1, v172);
            }

            a4 = v44;
            v60 = *(v9 + 2);
            v89 = *(v9 + 3);
            v61 = v60 + 1;
            v32 = v168;
            v30 = v170;
            v7 = v165;
            v31 = v166;
            v34 = v162;
            v33 = v164;
            if (v60 >= v89 >> 1)
            {
              v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v89 > 1), v60 + 1, 1, v9);
              v34 = v162;
              v33 = v164;
              v31 = v166;
              a4 = v44;
              v9 = v90;
              v32 = v168;
              v30 = v170;
            }
          }

          else
          {
            if (v49)
            {
              v50 = v9 + 64;
              do
              {
                if (*(v50 - 4) == v39 && *(v50 - 3) == v48 && *(v50 - 2) == v45)
                {
                  if (*v50)
                  {
                    if (v47)
                    {
                      goto LABEL_51;
                    }
                  }

                  else
                  {
                    if (*(v50 - 1) == v46)
                    {
                      v51 = v47;
                    }

                    else
                    {
                      v51 = 1;
                    }

                    if ((v51 & 1) == 0)
                    {
LABEL_51:
                      a4 = v44;
                      goto LABEL_23;
                    }
                  }
                }

                v50 += 40;
                --v49;
              }

              while (v49);
            }

            v55 = v34;
            v56 = v7;
            v57 = v33;
            v58 = v31;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v175 + 1, 1, v9);
            }

            v60 = *(v9 + 2);
            v59 = *(v9 + 3);
            v61 = v60 + 1;
            v32 = v168;
            v30 = v170;
            if (v60 < v59 >> 1)
            {
              v31 = v58;
              v34 = v55;
            }

            else
            {
              v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v9);
              v34 = v55;
              v31 = v58;
              v9 = v62;
              v32 = v168;
              v30 = v170;
            }

            a4 = v44;
            v33 = v57;
            v7 = v56;
          }

          *(v9 + 2) = v61;
          v35 = &v9[40 * v60];
          v36 = v179;
          v37 = v180;
          v35[64] = v181;
          *(v35 + 2) = v36;
          *(v35 + 3) = v37;
          *a4 = v9;
        }
      }

LABEL_23:
      if (++v31 == v10)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
  }

  else
  {
LABEL_199:
  }
}