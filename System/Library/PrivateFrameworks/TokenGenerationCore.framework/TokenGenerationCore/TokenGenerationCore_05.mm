uint64_t GuidedGenerationConstraints.init(schema:enableDeterministicTokenRuns:vocabularyManager:numberOfParallelTasks:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v50 = a4;
  v10 = type metadata accessor for Schema();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  (*(v11 + 16))(v14, a1, v10, v12);
  Grammar.init(_:)(v14, v83);
  if (v5)
  {
    (*(v11 + 8))(a1, v10);
  }

  else
  {
    v44 = 0;
    v45 = v11;
    v46 = v10;
    v47 = a1;
    v85 = a2;
    v48 = a5;
    v17 = v84;
    v79[0] = v83[0];
    v43 = v83[0];
    v79[1] = v83[1];
    v79[2] = v83[2];
    v80 = v83[3];
    v81 = v83[4];
    v82 = v84;
    type metadata accessor for EarleyRecognizer.RecognizerGrammar();
    swift_allocObject();
    swift_retain_n();

    v18 = EarleyRecognizer.RecognizerGrammar.init(grammar:vocabularyManager:)(v79, v15);
    v19 = specialized static EarleyRecognizer.createRootItems(recognizerGrammar:)(v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMd, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMR);
    v20 = swift_allocObject();
    v49 = xmmword_1A8FC9400;
    *(v20 + 16) = xmmword_1A8FC9400;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
    v21 = swift_allocObject();
    *(v21 + 16) = v49;
    *(v21 + 32) = v19;
    *(v20 + 32) = v21;
    type metadata accessor for EarleyRecognizer();
    v22 = swift_allocObject();
    *(v22 + 16) = v17;
    *(v22 + 28) = -1;
    *(v22 + 24) = 0;
    *(v22 + 32) = v18;
    *(v22 + 40) = v20;
    *(v22 + 48) = MEMORY[0x1E69E7CC0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMd, &_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMR);
    swift_allocObject();

    v24 = specialized TokenGrammarRecognizer.init(inputRecognizer:vocabManager:lastConsumedTokenID:)(v23, v15, 0, 1);

    GuidedGenerationOverrides.init()(v79);
    LODWORD(v43) = _s19TokenGenerationCore27SpaceLookaheadMaskGeneratorVACyxGycfCAA16EarleyRecognizerC_Ttg5(v25);
    if (one-time initialization token for isInternalInstall != -1)
    {
      swift_once();
    }

    if (isInternalInstall)
    {
      v80(&v66, v79[0]);
      v26 = v66;
      v27 = v66;
      GuidedGenerationOverrides.init()(&v53);
      v76 = v63;
      v77 = v64;
      v78 = v65;
      v72 = v59;
      v73 = v60;
      v74 = v61;
      v75 = v62;
      v68 = v55;
      v69 = v56;
      v70 = v57;
      v71 = v58;
      v66 = v53;
      v67 = v54;
      v28 = v85;
      if (v27 != 2)
      {
        v28 = v26;
      }

      (*(&v77 + 1))(&v51, v76);
      outlined destroy of GuidedGenerationOverrides(&v66);
      v29 = v51;
      if (v52)
      {
        v29 = 2000;
      }

      v42 = v29;
    }

    else
    {
      GuidedGenerationOverrides.init()(&v53);
      v76 = v63;
      v77 = v64;
      v78 = v65;
      v72 = v59;
      v73 = v60;
      v74 = v61;
      v75 = v62;
      v68 = v55;
      v69 = v56;
      v70 = v57;
      v71 = v58;
      v66 = v53;
      v67 = v54;
      outlined destroy of GuidedGenerationOverrides(&v66);
      v51 = 0;
      v42 = 2000;
      v28 = v85;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC27SpaceLookaheadMaskGeneratorVyAKG__GGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC27SpaceLookaheadMaskGeneratorVyAKG__GGMR);
    v30 = swift_allocObject();
    *(v30 + 16) = v49;
    v31 = MEMORY[0x1E69E7CC0];
    v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v30 + 32) = v24;
    *(v30 + 40) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerCyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAGG_GMd, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerCyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAGG_GMR);
    v33 = swift_allocObject();
    type metadata accessor for Lock();
    v34 = swift_allocObject();
    swift_retain_n();
    v35 = swift_slowAlloc();
    *(v34 + 16) = v35;
    pthread_mutex_init(v35, 0);

    *(v33 + 16) = v34;
    *(v33 + 24) = v30;
    type metadata accessor for MaskCache();
    v36 = swift_allocObject();
    *(v36 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictTt0g5Tf4g_n(v31);
    v37 = swift_allocObject();
    v38 = swift_slowAlloc();
    *(v37 + 16) = v38;
    pthread_mutex_init(v38, 0);
    outlined destroy of GuidedGenerationOverrides(v79);

    result = (*(v45 + 8))(v47, v46);
    *(v36 + 24) = v37;
    v39 = v43 & 1;
    v40 = v48;
    *v48 = v24;
    v40[1] = 0;
    v40[2] = v33;
    v40[3] = v36;
    v40[4] = v24;
    *(v40 + 40) = v39;
    *(v40 + 41) = v28 & 1;
    v40[6] = v50;
    *(v40 + 56) = 0;
    v40[8] = v42;
  }

  return result;
}

uint64_t Grammar.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31[0] = a2;
  v3 = type metadata accessor for GenerationSchema();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecursiveSchema();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for JSONSchema();
  v11 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1E69E7CC8];
  v33 = a1;
  Schema.type.getter();
  GenerationSchema.recursiveSchema()();
  (*(v4 + 8))(v6, v3);
  RecursiveSchema.jsonSchema()();
  (*(v8 + 8))(v10, v7);
  v14 = v31[1];
  v15 = closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:)(v13, 0, &v39);
  if (v14)
  {
    v16 = type metadata accessor for Schema();
    (*(*(v16 - 8) + 8))(v33, v16);
    (*(v11 + 8))(v13, v32);
  }

  else
  {
    v18 = v15;
    v19 = v31[0];
    v20 = v33;

    v21 = v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v21;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    (*(v11 + 8))(v13, v32);

    if (*(v18 + 2))
    {
      v23 = *(v18 + 4);
      v24 = *(v18 + 5);

      v34 = static JSONSchema.Reference.root.getter();
      v35 = v25;
      v38[0] = v23;
      v38[1] = v24;
      v26 = Array<A>.updatingReferences(from:to:)(&v34, v38, v18);

      Grammar.init(rules:prependSpaceToRootRule:cacheableResursiveNonTerminals:)(v26, 1, &outlined read-only object #0 of Grammar.init(_:), &v34);
      v27 = type metadata accessor for Schema();
      result = (*(*(v27 - 8) + 8))(v20, v27);
      v28 = v35;
      v29 = v36;
      v30 = v37;
      *v19 = v34;
      *(v19 + 8) = v28;
      *(v19 + 16) = v29;
      *(v19 + 32) = v30;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t static Grammar.rules(for:with:wrapStringsInQuotes:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *a2;
  if (*(*a2 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v9 & 1) != 0))
  {
    a3 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:)(a1, a3 & 1, a2);
    if (!v3)
    {
      a3 = v10;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *a2;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, a1, isUniquelyReferenced_nonNull_native);
      *a2 = v13;
    }
  }

  return a3;
}

char *closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:)(uint64_t a1, int a2, void *a3)
{
  v172 = a3;
  LODWORD(v181) = a2;
  v158 = type metadata accessor for JSONSchema.Reference();
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v156 = &v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for JSONSchema.AnyOf();
  v170 = *(v5 - 8);
  v171 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v169 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for JSONSchema.Array();
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v163 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for JSONSchema.Dictionary();
  v167 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v168 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for JSONSchema.Object();
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v159 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for JSONSchema.String();
  v180 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for JSONSchema.Number();
  v175 = *(v13 - 8);
  v176 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v174 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for JSONSchema.Integer();
  v178 = *(v15 - 8);
  v179 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v177 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for JSONSchema.Constant();
  v173 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for JSONSchema();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v162 = &v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v155 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = (&v155 - v28);
  v30 = *(v21 + 16);
  v155 = a1;
  v30(&v155 - v28, a1, v20, v27);
  v31 = (*(v21 + 88))(v29, v20);
  if (v31 != *MEMORY[0x1E69A0AB8])
  {
    if (v31 == *MEMORY[0x1E69A0AC0])
    {
      (*(v21 + 8))(v29, v20);
      return specialized static Grammar.BOOLean()();
    }

    if (v31 == *MEMORY[0x1E69A0AC8])
    {
      (*(v21 + 96))(v29, v20);
      v41 = swift_projectBox();
      v10 = v177;
      v42 = v178;
      v43 = v179;
      (*(v178 + 16))(v177, v41, v179);
      v44 = JSONSchema.Number.minimum.getter();
      v46 = v45;
      v47 = MEMORY[0x1AC57B430]();
      v49 = wholeNumberRule(min:max:)(&v183, v44, v46 & 1, v47, v48 & 1);
      v50 = v183;
      v181 = v184;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      v12 = swift_allocObject();
      *(v12 + 1) = xmmword_1A8FC9400;
      *(v12 + 4) = v50;
      *(v12 + 40) = v181;
      v51 = *(v49 + 16);
      if (v51)
      {
        v52 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19TokenGenerationCore4RuleV_Tt1g5(*(v49 + 16), 0);
        v33 = specialized Sequence._copySequenceContents(initializing:)(&v183, v52 + 4, v51, v49);
        outlined consume of Set<NonTerminalSymbol>.Iterator._Variant(v183);
        if (v33 != v51)
        {
          __break(1u);
          goto LABEL_10;
        }
      }

      else
      {

        v52 = MEMORY[0x1E69E7CC0];
      }

      v183 = v12;
      specialized Array.append<A>(contentsOf:)(v52);
      (*(v42 + 8))(v10, v43);

      return v183;
    }

    if (v31 == *MEMORY[0x1E69A0AA8])
    {
      (*(v21 + 96))(v29, v20);
      v33 = *v29;
      v57 = swift_projectBox();
      v10 = v174;
      v58 = v175;
      v59 = v176;
      (*(v175 + 16))(v174, v57, v176);
      v60 = JSONSchema.Number.minimum.getter();
      v62 = v61;
      v63 = MEMORY[0x1AC57B340]();
      v65 = decimalNumberRule(min:max:significantFigures:)(&v183, v60, v62 & 1, v63, v64 & 1, 3);
      v66 = v183;
      v181 = v184;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1A8FC9400;
      *(v67 + 32) = v66;
      *(v67 + 40) = v181;
      v68 = *(v65 + 16);
      if (v68)
      {
        v69 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19TokenGenerationCore4RuleV_Tt1g5(*(v65 + 16), 0);
        v12 = specialized Sequence._copySequenceContents(initializing:)(&v183, v69 + 4, v68, v65);
        outlined consume of Set<NonTerminalSymbol>.Iterator._Variant(v183);
        if (v12 != v68)
        {
          __break(1u);
          goto LABEL_18;
        }
      }

      else
      {

        v69 = MEMORY[0x1E69E7CC0];
      }

      v183 = v67;
      specialized Array.append<A>(contentsOf:)(v69);
      (*(v58 + 8))(v10, v59);

      return v183;
    }

    if (v31 == *MEMORY[0x1E69A0AE8])
    {
      (*(v21 + 96))(v29, v20);
      v71 = swift_projectBox();
      v72 = v173;
      (*(v173 + 16))(v19, v71, v17);
      v73 = JSONSchema.Constant.const.getter();
      v75 = specialized static Grammar.constant(value:)(v73, v74);

      (*(v72 + 8))(v19, v17);

      return v75;
    }

    if (v31 == *MEMORY[0x1E69A0A90])
    {
      (*(v21 + 8))(v29, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      v77 = swift_allocObject();
      v181 = xmmword_1A8FC9400;
      *(v77 + 16) = xmmword_1A8FC9400;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      v78 = swift_allocObject();
      *(v78 + 16) = v181;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v79 = *(type metadata accessor for Symbol(0) - 8);
      v80 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v81 = swift_allocObject();
      *(v81 + 16) = v181;
      *(v81 + v80) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x6C6C756EuLL, 0xE400000000000000);
      swift_storeEnumTagMultiPayload();
      result = v77;
      *(v78 + 32) = v81;
      *(v77 + 32) = 0x6C6C754E5F5FLL;
      *(v77 + 40) = 0xE600000000000000;
      *(v77 + 48) = v78;
      return result;
    }

    if (v31 == *MEMORY[0x1E69A0A98])
    {
      (*(v21 + 96))(v29, v20);
      v82 = swift_projectBox();
      v83 = v169;
      v84 = v170;
      v85 = v171;
      (*(v170 + 16))(v169, v82, v171);
      v86 = JSONSchema.AnyOf.definitions.getter();
      v87 = v172;
      if (!v86)
      {
        v86 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_29GenerativeFunctionsFoundation10JSONSchemaOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      }

      v88 = v182;
      v89 = static Grammar.definitions(for:with:)(v86, v87);
      if (v88)
      {
        (*(v84 + 8))(v83, v85);
LABEL_38:
      }

      v182 = v89;

      v107 = JSONSchema.AnyOf.title.getter();
      v109 = v108;
      v110 = MEMORY[0x1AC57B2B0]();
      v120 = static Grammar.anyOf(name:schemas:with:)(v107, v109, v110, v87);

      v183 = v120;
      specialized Array.append<A>(contentsOf:)(v182);
      (*(v84 + 8))(v83, v85);
    }

    else
    {
      v90 = v172;
      if (v31 != *MEMORY[0x1E69A0A88])
      {
        if (v31 == *MEMORY[0x1E69A0AA0])
        {
          (*(v21 + 96))(v29, v20);
          v99 = swift_projectBox();
          v100 = v164;
          v101 = v163;
          v102 = v165;
          v103 = (*(v164 + 16))(v163, v99, v165);
          v104 = MEMORY[0x1AC57B2F0](v103);
          if (!v104)
          {
            v104 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_29GenerativeFunctionsFoundation10JSONSchemaOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          }

          v105 = v182;
          v106 = static Grammar.definitions(for:with:)(v104, v90);
          if (v105)
          {
            (*(v100 + 8))(v101, v102);
          }

          v182 = v106;

          v129 = v162;
          v130 = MEMORY[0x1AC57B300](v128);
          v131 = MEMORY[0x1AC57B320](v130);
          LODWORD(v133) = v132;
          *&v181 = JSONSchema.Array.maxItems.getter();
          LODWORD(v180) = v134;
          v135 = *v90;
          if (*(*v90 + 16) && (v136 = specialized __RawDictionaryStorage.find<A>(_:)(v129), (v137 & 1) != 0))
          {
            v138 = *(*(v135 + 56) + 8 * v136);
          }

          else
          {
            LODWORD(v179) = v133;
            v133 = v131;
            v140 = closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:)(v129, 1, v90);
            v141 = v129;
            v146 = v90;
            v138 = v140;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v183 = *v146;
            *v146 = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v138, v141, isUniquelyReferenced_nonNull_native);
            *v146 = v183;
            v131 = v133;
            LOBYTE(v133) = v179;
          }

          if (*(v138 + 16))
          {
            v148 = *(v138 + 40);
            v183 = *(v138 + 32);
            *&v184 = v148;

            static Grammar.arrayRules(itemSymbol:minItems:maxItems:)(&v183, v131, v133 & 1, v181, v180 & 1);
            v149 = v164;
            v151 = v150;

            v185 = v151;
            specialized Array.append<A>(contentsOf:)(v138);
            (*(v21 + 8))(v162, v20);
            specialized Array.append<A>(contentsOf:)(v182);
            (*(v149 + 8))(v163, v165);

            return v185;
          }

          __break(1u);
        }

        else
        {
          if (v31 == *MEMORY[0x1E69A0AB0])
          {
            (*(v21 + 96))(v29, v20);
            v111 = swift_projectBox();
            v112 = v160;
            v113 = v159;
            v114 = v161;
            (*(v160 + 16))(v159, v111, v161);
            v115 = JSONSchema.Object.definitions.getter();
            if (!v115)
            {
              v115 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_29GenerativeFunctionsFoundation10JSONSchemaOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
            }

            v116 = v182;
            v117 = static Grammar.definitions(for:with:)(v115, v90);
            if (v116)
            {

              (*(v112 + 8))(v113, v114);
            }

            else
            {
              v182 = v117;

              v142 = JSONSchema.Object.order.getter();
              MEMORY[0x1EEE9AC00](v142);
              v154 = v113;
              v143 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:), (&v155 - 4), v142);

              v144 = JSONSchema.Object.title.getter();
              v152 = static Grammar.jsonObject(name:fields:with:)(v144, v145, v143, v90);

              v183 = v152;
              specialized Array.append<A>(contentsOf:)(v182);
              v153 = v183;
              (*(v112 + 8))(v113, v114);

              return v153;
            }
          }

          if (v31 == *MEMORY[0x1E69A0AF0])
          {
            (*(v21 + 96))(v29, v20);
            v121 = swift_projectBox();
            v122 = v157;
            v123 = v156;
            v124 = v158;
            (*(v157 + 16))(v156, v121, v158);
            v125 = JSONSchema.Reference.reference.getter();
            v127 = specialized static Grammar.reference(to:)(v125, v126);

            (*(v122 + 8))(v123, v124);

            return v127;
          }
        }

        v183 = 0;
        *&v184 = 0xE000000000000000;
        _StringGuts.grow(_:)(25);
        MEMORY[0x1AC57C120](0xD000000000000017, 0x80000001A8FD9000);
        _print_unlocked<A, B>(_:_:)();
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v91 = v20;
      (*(v21 + 96))(v29);
      v92 = swift_projectBox();
      v93 = v167;
      v94 = v166;
      v95 = (*(v167 + 16))(v168, v92, v166);
      v96 = MEMORY[0x1AC57B260](v95);
      if (!v96)
      {
        v96 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_29GenerativeFunctionsFoundation10JSONSchemaOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      }

      v97 = v182;
      v98 = static Grammar.definitions(for:with:)(v96, v90);
      if (v97)
      {
        (*(v93 + 8))(v168, v94);
        goto LABEL_38;
      }

      v182 = v98;

      v119 = v168;
      MEMORY[0x1AC57B270](v118);
      v139 = static Grammar.dictionary(schema:with:)(v25, v90);
      (*(v21 + 8))(v25, v91);
      v183 = v139;
      specialized Array.append<A>(contentsOf:)(v182);
      (*(v167 + 8))(v119, v94);
    }

    return v183;
  }

  (*(v21 + 96))(v29, v20);
  v32 = swift_projectBox();
  v33 = v180;
  v34 = (*(v180 + 16))(v12, v32, v10);
  v35 = MEMORY[0x1AC57B3D0](v34);
  if (v35)
  {
    v36 = v35;
    v37 = JSONSchema.String.title.getter();
    v39 = static Grammar.enumerator(name:cases:wrapInQuotes:)(v37, v38, v36, v181 & 1);

    (v33[1])(v12, v10);

    return v39;
  }

LABEL_10:
  v53 = JSONSchema.String.pattern.getter();
  v55 = v182;
  if (!v54)
  {
LABEL_18:
    v70 = specialized static Grammar.string(wrapInQuotes:)(v181 & 1);
    (v33[1])(v12, v10);

    return v70;
  }

  v56 = specialized static Grammar.regexRules(pattern:wrapInQuotes:)(v53, v54, v181 & 1);
  if (v55)
  {
    (v33[1])(v12, v10);
  }

  v76 = v56;
  (v33[1])(v12, v10);

  return v76;
}

void *static Grammar.enumerator(name:cases:wrapInQuotes:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a1;
  if (a2)
  {
    v58[0] = a1;
    v58[1] = a2;
    lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v9 = v8;
    v11 = v10;
    if (a4)
    {
      result = static Grammar.enumerator(name:cases:wrapInQuotes:)(v6, a2, a3, 0);
      v13 = result;
      if (v11)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    v6 = v8;
  }

  else
  {
    if (a4)
    {
      result = static Grammar.enumerator(name:cases:wrapInQuotes:)(a1, 0, a3, 0);
      v13 = result;
LABEL_7:
      strcpy(v58, "__Quoted");
      BYTE1(v58[1]) = 0;
      WORD1(v58[1]) = 0;
      HIDWORD(v58[1]) = -402653184;
      if (!*(v13 + 16))
      {
LABEL_29:
        __break(1u);
        return result;
      }

      v14 = *(v13 + 32);
      v15 = *(v13 + 40);

      MEMORY[0x1AC57C120](v14, v15);

      v9 = v58[0];
      v11 = v58[1];
LABEL_9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1A8FC9400;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1A8FC9400;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v18 = *(type metadata accessor for Symbol(0) - 8);
      v19 = *(v18 + 72);
      v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1A8FCB600;
      v22 = (v21 + v20);
      *v22 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x22uLL, 0xE100000000000000);
      result = swift_storeEnumTagMultiPayload();
      if (*(v13 + 16))
      {
        v23 = (v22 + v19);
        v55 = v11;
        v24 = v9;
        v25 = *(v13 + 40);
        *v23 = *(v13 + 32);
        v23[1] = v25;
        swift_storeEnumTagMultiPayload();

        *(v22 + 2 * v19) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x22uLL, 0xE100000000000000);
        swift_storeEnumTagMultiPayload();
        *(v17 + 32) = v21;
        *(v16 + 32) = v24;
        *(v16 + 40) = v55;
        *(v16 + 48) = v17;
        specialized Array.append<A>(contentsOf:)(v13);
        return v16;
      }

      __break(1u);
      goto LABEL_29;
    }

    v11 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1A8FC9400;
  v53 = v26;
  if (v11)
  {
    v58[0] = v6;
    v58[1] = v11;

    MEMORY[0x1AC57C120](0x5174756F68746957, 0xED00007365746F75);
  }

  else
  {
    strcpy(v58, "__Enumerator_");
    HIWORD(v58[1]) = -4864;
    v27 = *(a3 + 16);
    if (v27)
    {
      v56 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
      v28 = v56;
      lazy protocol witness table accessor for type String and conformance String();
      v29 = a3 + 40;
      do
      {
        v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v57 = v28;
        v33 = *(v28 + 16);
        v32 = *(v28 + 24);
        if (v33 >= v32 >> 1)
        {
          v54 = v30;
          v35 = v31;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
          v31 = v35;
          v30 = v54;
          v28 = v57;
        }

        *(v28 + 16) = v33 + 1;
        v34 = v28 + 16 * v33;
        *(v34 + 32) = v30;
        *(v34 + 40) = v31;
        v29 += 16;
        --v27;
      }

      while (v27);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v36 = BidirectionalCollection<>.joined(separator:)();
    v38 = v37;

    MEMORY[0x1AC57C120](v36, v38);
  }

  v39 = v58[0];
  v40 = v58[1];
  v41 = *(a3 + 16);
  v42 = MEMORY[0x1E69E7CC0];
  if (v41)
  {
    v51 = v58[1];
    v52 = v58[0];
    v58[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41, 0);
    v42 = v58[0];
    v43 = *(type metadata accessor for Symbol(0) - 8);
    v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v45 = (a3 + 40);
    do
    {
      v46 = *(v45 - 1);
      v47 = *v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1A8FC9400;

      *(v48 + v44) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v46, v47);
      swift_storeEnumTagMultiPayload();

      v58[0] = v42;
      v50 = *(v42 + 16);
      v49 = *(v42 + 24);
      if (v50 >= v49 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
        v42 = v58[0];
      }

      *(v42 + 16) = v50 + 1;
      *(v42 + 8 * v50 + 32) = v48;
      v45 += 2;
      --v41;
    }

    while (v41);
    v40 = v51;
    v39 = v52;
  }

  result = v53;
  v53[4] = v39;
  v53[5] = v40;
  v53[6] = v42;
  return result;
}

char *static Grammar.definitions(for:with:)(uint64_t a1, void *a2)
{
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_29GenerativeFunctionsFoundation10JSONSchemaO5valuetMd, &_sSS3key_29GenerativeFunctionsFoundation10JSONSchemaO5valuetMR);
  MEMORY[0x1EEE9AC00](v76);
  v86 = (&v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v70 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
LABEL_36:
    v57 = *(v8 + 16);
    if (!v57)
    {
      v23 = MEMORY[0x1E69E7CC0];
LABEL_55:

      return v23;
    }

    v58 = 0;
    v59 = v8 + 32;
    v23 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v58 >= *(v8 + 16))
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v60 = v8;
      v61 = *(v59 + 8 * v58);
      v62 = *(v61 + 16);
      v63 = *(v23 + 2);
      v64 = v63 + v62;
      if (__OFADD__(v63, v62))
      {
        goto LABEL_59;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v64 <= *(v23 + 3) >> 1)
      {
        if (*(v61 + 16))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v63 <= v64)
        {
          v66 = v63 + v62;
        }

        else
        {
          v66 = v63;
        }

        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v66, 1, v23);
        if (*(v61 + 16))
        {
LABEL_50:
          if ((*(v23 + 3) >> 1) - *(v23 + 2) < v62)
          {
            goto LABEL_67;
          }

          swift_arrayInitWithCopy();

          if (v62)
          {
            v67 = *(v23 + 2);
            v46 = __OFADD__(v67, v62);
            v68 = v67 + v62;
            if (v46)
            {
              goto LABEL_69;
            }

            *(v23 + 2) = v68;
          }

          goto LABEL_39;
        }
      }

      if (v62)
      {
        goto LABEL_60;
      }

LABEL_39:
      ++v58;
      v8 = v60;
      if (v57 == v58)
      {
        goto LABEL_55;
      }
    }
  }

  v88 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v8 = v88;
  v9 = a1 + 64;
  v10 = _HashTable.startBucket.getter();
  v11 = 0;
  v12 = *(a1 + 36);
  v70 = a1 + 72;
  v71 = v7;
  v81 = a2;
  v73 = a1 + 64;
  v74 = a1;
  v72 = v12;
  while (1)
  {
    if (v10 < 0 || v10 >= 1 << *(a1 + 32))
    {
      goto LABEL_61;
    }

    if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      break;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_63;
    }

    v83 = 1 << v10;
    v84 = v10 >> 6;
    v82 = v11;
    v85 = v8;
    v15 = v76;
    v16 = *(v76 + 48);
    v17 = *(a1 + 56);
    v18 = (*(a1 + 48) + 16 * v10);
    v20 = *v18;
    v19 = v18[1];
    v21 = type metadata accessor for JSONSchema();
    v22 = *(v21 - 8);
    v77 = *(v22 + 72);
    v23 = v75;
    v78 = *(v22 + 16);
    v79 = v22 + 16;
    v78(&v75[v16], v17 + v77 * v10, v21);
    v24 = v86;
    *v86 = v20;
    *(v24 + 8) = v19;
    v25 = *(v15 + 48);
    (*(v22 + 32))(v24 + v25, &v23[v16], v21);
    v26 = v81;
    v27 = *v81;
    v28 = *(*v81 + 16);

    if (v28)
    {
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v24 + v25);
      if (v30)
      {
        v31 = *(*(v27 + 56) + 8 * v29);

        goto LABEL_24;
      }
    }

    v32 = v80;
    v33 = closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:)(v24 + v25, 1, v26);
    v80 = v32;
    if (v32)
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v24, &_sSS3key_29GenerativeFunctionsFoundation10JSONSchemaO5valuetMd, &_sSS3key_29GenerativeFunctionsFoundation10JSONSchemaO5valuetMR);

      return v23;
    }

    v31 = v33;

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v87 = *v26;
    v35 = v87;
    v37 = specialized __RawDictionaryStorage.find<A>(_:)(v24 + v25);
    v38 = v35[2];
    v39 = (v36 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      goto LABEL_68;
    }

    v41 = v36;
    if (v35[3] >= v40)
    {
      if (v34)
      {
        v44 = v87;
        if (v36)
        {
          goto LABEL_20;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v44 = v87;
        if (v41)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v40, v34);
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v86 + v25);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_71;
      }

      v37 = v42;
      v44 = v87;
      if (v41)
      {
LABEL_20:
        *(v44[7] + 8 * v37) = v31;

        *v81 = v44;
        v24 = v86;
        goto LABEL_24;
      }
    }

    v44[(v37 >> 6) + 8] |= 1 << v37;
    v24 = v86;
    v78((v44[6] + v37 * v77), v86 + v25, v21);
    *(v44[7] + 8 * v37) = v31;
    v45 = v44[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_70;
    }

    v44[2] = v47;
    *v81 = v44;
LABEL_24:
    outlined destroy of [Regex2BNF.CharacterPredicate](v24, &_sSS3key_29GenerativeFunctionsFoundation10JSONSchemaO5valuetMd, &_sSS3key_29GenerativeFunctionsFoundation10JSONSchemaO5valuetMR);
    v8 = v85;
    v88 = v85;
    v49 = *(v85 + 16);
    v48 = *(v85 + 24);
    a1 = v74;
    if (v49 >= v48 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
      v8 = v88;
    }

    *(v8 + 16) = v49 + 1;
    *(v8 + 8 * v49 + 32) = v31;
    v13 = 1 << *(a1 + 32);
    if (v10 >= v13)
    {
      goto LABEL_64;
    }

    v9 = v73;
    v50 = *(v73 + 8 * v84);
    if ((v50 & v83) == 0)
    {
      goto LABEL_65;
    }

    LODWORD(v12) = v72;
    if (v72 != *(a1 + 36))
    {
      goto LABEL_66;
    }

    v51 = v50 & (-2 << (v10 & 0x3F));
    if (v51)
    {
      v13 = __clz(__rbit64(v51)) | v10 & 0x7FFFFFFFFFFFFFC0;
      v14 = v82;
    }

    else
    {
      v52 = v84 << 6;
      v53 = v84 + 1;
      v54 = (v70 + 8 * v84);
      while (v53 < (v13 + 63) >> 6)
      {
        v56 = *v54++;
        v55 = v56;
        v52 += 64;
        ++v53;
        if (v56)
        {
          outlined consume of [String : JSONSchema].Index._Variant(v10, v72, 0);
          v13 = __clz(__rbit64(v55)) + v52;
          goto LABEL_35;
        }
      }

      outlined consume of [String : JSONSchema].Index._Variant(v10, v72, 0);
LABEL_35:
      v14 = v82;
    }

    v11 = v14 + 1;
    v10 = v13;
    if (v11 == v71)
    {
      goto LABEL_36;
    }
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10JSONSchemaOSgMd, &_s29GenerativeFunctionsFoundation10JSONSchemaOSgMR);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v24 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = MEMORY[0x1AC57B370](v8);
  if (*(v13 + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12), (v15 & 1) != 0))
  {
    v16 = v14;
    v24[1] = v3;
    v17 = *(v13 + 56);
    v18 = type metadata accessor for JSONSchema();
    v19 = *(v18 - 8);
    v24[0] = a3;
    v20 = v19;
    (*(v19 + 16))(v10, v17 + *(v19 + 72) * v16, v18);

    v21 = (*(v20 + 56))(v10, 0, 1, v18);
    a3 = v24[0];
  }

  else
  {

    v22 = type metadata accessor for JSONSchema();
    v21 = (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  }

  MEMORY[0x1EEE9AC00](v21);
  v24[-4] = v11;
  v24[-3] = v12;
  v24[-2] = a2;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF29GenerativeFunctionsFoundation10JSONSchemaO_s5NeverOAF8PropertyVTg5(partial apply for closure #1 in closure #1 in closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:), &v24[-6], a3);
  return outlined destroy of [Regex2BNF.CharacterPredicate](v10, &_s29GenerativeFunctionsFoundation10JSONSchemaOSgMd, &_s29GenerativeFunctionsFoundation10JSONSchemaOSgMR);
}

uint64_t closure #1 in closure #1 in closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[3] = a4;
  v7 = type metadata accessor for JSONSchema();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];

  v13 = JSONSchema.description.getter();
  (*(v8 + 16))(v10, a1, v7);
  v11 = JSONSchema.Object.required.getter();
  v16[0] = a2;
  v16[1] = a3;
  v15 = v16;
  specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v14, v11);

  JSONSchema.isNullable.getter();
  return JSONSchema.Property.init(name:description:schema:isOptional:isNullable:)();
}

uint64_t static Grammar.jsonObject(name:fields:with:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v80 = a2;
  v81 = a1;
  v91 = type metadata accessor for Symbol(0);
  v85 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v97 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v90 = (&v79 - v8);
  v9 = type metadata accessor for JSONSchema();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v79 - v13;
  v92 = type metadata accessor for JSONSchema.Property();
  MEMORY[0x1EEE9AC00](v92);
  v84 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v79 - v17;
  v103 = MEMORY[0x1E69E7CC8];
  v21 = *(a3 + 16);
  v79 = a3;
  if (v21)
  {
    v23 = *(v18 + 16);
    v22 = v18 + 16;
    v94 = v23;
    v24 = a3 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v82 = (v10 + 16);
    v88 = (v22 - 8);
    v89 = (v10 + 8);
    v87 = *(v22 + 56);
    v98 = MEMORY[0x1E69E7CD0];
    v99 = &v79 - v17;
    v25 = v92;
    v93 = v22;
    v86 = v14;
    while (1)
    {
      v96 = v21;
      v31 = v94(v20, v24, v25, v19);
      MEMORY[0x1AC57B4C0](v31);
      v32 = *a4;
      if (*(*a4 + 16))
      {
        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
        if (v34)
        {
          v35 = *(*(v32 + 56) + 8 * v33);

          goto LABEL_19;
        }
      }

      v36 = v95;
      v37 = closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:)(v14, 1, a4);
      v95 = v36;
      if (v36)
      {

        (*v89)(v14, v9);
        (*v88)(v99, v92);
      }

      v35 = v37;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100 = *a4;
      v39 = v100;
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
      v42 = *(v39 + 16);
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        goto LABEL_43;
      }

      v46 = v41;
      if (*(v39 + 24) < v45)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v49 = v40;
      specialized _NativeDictionary.copy()();
      v40 = v49;
      v48 = v100;
      if ((v46 & 1) == 0)
      {
LABEL_17:
        v50 = v40;
        v51 = v83;
        (*v82)(v83, v14, v9);
        specialized _NativeDictionary._insert(at:key:value:)(v50, v51, v35, v48);
        goto LABEL_18;
      }

LABEL_15:
      *(v48[7] + 8 * v40) = v35;

LABEL_18:
      *a4 = v48;
LABEL_19:
      (*v89)(v14, v9);
      if (!v35[2])
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_46:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_47;
      }

      v52 = v9;
      v53 = a4;
      v54 = v35[5];
      v55 = v90;
      *v90 = v35[4];
      *(v55 + 8) = v54;
      swift_storeEnumTagMultiPayload();
      outlined init with take of Prompt.SpecialToken(v55, v97, type metadata accessor for Symbol);

      v56 = v103;
      v57 = swift_isUniquelyReferenced_nonNull_native();
      v100 = v56;
      v59 = specialized __RawDictionaryStorage.find<A>(_:)(v99);
      v60 = *(v56 + 16);
      v61 = (v58 & 1) == 0;
      v62 = v60 + v61;
      if (__OFADD__(v60, v61))
      {
        goto LABEL_42;
      }

      v63 = v58;
      if (*(v56 + 24) >= v62)
      {
        v25 = v92;
        if (v57)
        {
          goto LABEL_26;
        }

        specialized _NativeDictionary.copy()();
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v62, v57);
        v64 = specialized __RawDictionaryStorage.find<A>(_:)(v99);
        if ((v63 & 1) != (v65 & 1))
        {
          goto LABEL_45;
        }

        v59 = v64;
      }

      v25 = v92;
LABEL_26:
      v30 = v100;
      if (v63)
      {
        outlined assign with take of Symbol(v97, *(v100 + 56) + *(v85 + 72) * v59);
        v20 = v99;
      }

      else
      {
        v26 = v24;
        v27 = v100;
        v28 = v84;
        v20 = v99;
        (v94)(v84, v99, v25);
        v29 = v28;
        v30 = v27;
        v24 = v26;
        specialized _NativeDictionary._insert(at:key:value:)(v59, v29, v97, v30);
      }

      v103 = v30;
      v98 = specialized Set.union<A>(_:)(v35, v98);

      (*v88)(v20, v25);
      v24 += v87;
      v21 = v96 - 1;
      a4 = v53;
      v9 = v52;
      v14 = v86;
      if (v96 == 1)
      {
        goto LABEL_30;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, isUniquelyReferenced_nonNull_native);
    v40 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
    if ((v46 & 1) != (v47 & 1))
    {
      goto LABEL_46;
    }

LABEL_14:
    v48 = v100;
    if ((v46 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v98 = MEMORY[0x1E69E7CD0];
LABEL_30:
  v66 = specialized static Grammar.fieldCombinations(for:)(v79);
  v67 = v95;
  v68 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySay29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGG_19TokenGenerationCore6ChoiceVs5NeverOTg504_s19ij101Core7GrammarV10jsonObject33_DD88DD49DE63EB9CBD61CBF820251C8ALL4name6fields4withSayAA4RuleVGSSSg_Say29de12Foundation10g2O8h17VGSDyAoKGztKFZAA6L8VARXEfU_SDyAjM6SymbolOGTf1cn_n(v66, &v103);
  v69 = v67;

  if (v80)
  {
    v70 = v80;
  }

  else
  {
    v100 = 0x7463656A624F5F5FLL;
    v101 = 0xE90000000000002DLL;
    v102 = *(*a4 + 16) + 1;
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v71);

    v70 = v101;
    v81 = v100;
  }

  v72 = v98;
  v35 = *(v98 + 16);
  if (v35)
  {
    v96 = v70;
    v97 = v67;
    v99 = v68;
    v73 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19TokenGenerationCore4RuleV_Tt1g5(v35, 0);
    v74 = specialized Sequence._copySequenceContents(initializing:)(&v100, v73 + 4, v35, v72);
    v75 = v100;

    outlined consume of Set<NonTerminalSymbol>.Iterator._Variant(v75);
    if (v74 != v35)
    {
      goto LABEL_44;
    }

    v68 = v99;
    v70 = v96;
    v69 = v97;
  }

  else
  {

    v73 = MEMORY[0x1E69E7CC0];
  }

  v100 = v73;
  specialized MutableCollection<>.sort(by:)(&v100);
  v35 = v69;
  if (v69)
  {
LABEL_47:

    __break(1u);
  }

  else
  {

    v76 = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1A8FC9400;
    *(v77 + 32) = v81;
    *(v77 + 40) = v70;
    *(v77 + 48) = v68;
    v100 = v77;
    specialized Array.append<A>(contentsOf:)(v76);

    return v100;
  }

  return result;
}

char *static Grammar.dictionary(schema:with:)(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  if (*(*a2 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);

    if (*(v8 + 2))
    {
LABEL_4:
      v41 = v8;
      v10 = *(v8 + 4);
      v11 = *(v8 + 5);
      swift_bridgeObjectRetain_n();
      MEMORY[0x1AC57C120](v10, v11);

      MEMORY[0x1AC57C120](1919508816, 0xE400000000000000);
      HIWORD(v44[1]) = 0;
      _StringGuts.grow(_:)(17);

      v40 = v10;
      MEMORY[0x1AC57C120](v10, v11);

      MEMORY[0x1AC57C120](1919508816, 0xE400000000000000);
      strcpy(v44, "__ListOf__Key");
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      v43 = swift_allocObject();
      v45 = xmmword_1A8FCB600;
      *(v43 + 16) = xmmword_1A8FCB600;
      v46 = 0x664F746369445F5FLL;
      v47 = 0xE800000000000000;
      v39 = v11;

      MEMORY[0x1AC57C120](v10, v11);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      v12 = swift_allocObject();
      *(v12 + 16) = v45;
      v13 = v12;
      v42 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v14 = *(type metadata accessor for Symbol(0) - 8);
      v15 = *(v14 + 72);
      v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v44[2] = *(v14 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1A8FC9400;
      *(v17 + v16) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x7D7BuLL, 0xE200000000000000);
      swift_storeEnumTagMultiPayload();
      *(v13 + 32) = v17;
      v18 = swift_allocObject();
      *(v18 + 16) = v45;
      v19 = (v18 + v16);
      *v19 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x7BuLL, 0xE100000000000000);
      swift_storeEnumTagMultiPayload();
      v20 = (v18 + v16 + v15);
      v21 = v44[1];
      *v20 = v44[1];
      v20[1] = 0xE500000000000000;
      swift_storeEnumTagMultiPayload();
      swift_bridgeObjectRetain_n();
      *(v19 + 2 * v15) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x7DuLL, 0xE100000000000000);
      swift_storeEnumTagMultiPayload();
      *(v42 + 40) = v18;
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1A8FCB620;
      v23 = (v22 + v16);
      *v23 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x7BuLL, 0xE100000000000000);
      swift_storeEnumTagMultiPayload();
      v24 = (v22 + v16 + v15);
      *v24 = v21;
      v24[1] = 0xE500000000000000;
      swift_storeEnumTagMultiPayload();

      *(v23 + 2 * v15) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x202CuLL, 0xE200000000000000);
      swift_storeEnumTagMultiPayload();
      v25 = (v22 + v16 + 3 * v15);
      *v25 = v44[0];
      v25[1] = 0xEB0000000079654BLL;
      swift_storeEnumTagMultiPayload();
      swift_bridgeObjectRetain_n();
      *(v23 + 4 * v15) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x7DuLL, 0xE100000000000000);
      swift_storeEnumTagMultiPayload();
      *(v42 + 48) = v22;
      *(v43 + 32) = 0x664F746369445F5FLL;
      *(v43 + 40) = 0xE800000000000000;
      *(v43 + 48) = v42;
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1A8FC9400;
      v27 = swift_allocObject();
      *(v27 + 16) = v45;
      strcpy((v27 + v16), "__QuotedString");
      *(v27 + v16 + 15) = -18;
      swift_storeEnumTagMultiPayload();
      *(v27 + v16 + v15) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x203AuLL, 0xE200000000000000);
      swift_storeEnumTagMultiPayload();
      v28 = (v27 + v16 + 2 * v15);
      *v28 = v40;
      v28[1] = v39;
      swift_storeEnumTagMultiPayload();
      *(v26 + 32) = v27;
      v29 = v44[1];
      *(v43 + 56) = v44[1];
      *(v43 + 64) = 0xE500000000000000;
      *(v43 + 72) = v26;
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1A8FC9410;
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1A8FC9400;
      v32 = (v31 + v16);
      *v32 = v29;
      v32[1] = 0xE500000000000000;
      swift_storeEnumTagMultiPayload();
      *(v30 + 32) = v31;
      v33 = swift_allocObject();
      *(v33 + 16) = v45;
      v34 = (v33 + v16);
      v35 = v44[0];
      *v34 = v44[0];
      v34[1] = 0xEB0000000079654BLL;
      swift_storeEnumTagMultiPayload();

      *(v34 + v15) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x202CuLL, 0xE200000000000000);
      swift_storeEnumTagMultiPayload();
      v36 = (v33 + v16 + 2 * v15);
      *v36 = v44[1];
      v36[1] = 0xE500000000000000;
      swift_storeEnumTagMultiPayload();
      *(v30 + 40) = v33;
      *(v43 + 80) = v35;
      *(v43 + 88) = 0xEB0000000079654BLL;
      *(v43 + 96) = v30;
      specialized Array.append<A>(contentsOf:)(v41);
      v37 = specialized static Grammar.string(wrapInQuotes:)(1);
      specialized Array.append<A>(contentsOf:)(v37);
      return v43;
    }
  }

  else
  {
    result = closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:)(a1, 1, a2);
    if (v2)
    {
      return result;
    }

    v8 = result;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *a2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a1, isUniquelyReferenced_nonNull_native);
    *a2 = v46;
    if (*(v8 + 2))
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Grammar.anyOf(name:schemas:with:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay29GenerativeFunctionsFoundation10JSONSchemaOG_Say19TokenGenerationCore4RuleVGsAE_pTg504_s19hi80Core7GrammarV5anyOf33_DD88DD49DE63EB9CBD61CBF820251C8ALL4name7schemas4withSayAA4k12VGSSSg_Say29de12Foundation10G23OGSDyAoKGztKFZAkOKXEfU_AJ0N0VXMtSDyAhMGTf1cn_n(a3, a4);
  if (v4)
  {
    return result;
  }

  v8 = result;
  v9 = *(result + 16);
  v10 = MEMORY[0x1E69E7CC0];
  v57 = result;
  v54 = a1;
  if (!v9)
  {
    v18 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v18)
    {
      v55 = a2;
      v12 = MEMORY[0x1E69E7CC0];
      goto LABEL_11;
    }

    v38 = MEMORY[0x1E69E7CC0];

    v27 = v38;
    if (!a2)
    {
      goto LABEL_22;
    }

LABEL_20:

    v37 = v54;
LABEL_23:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1A8FC9400;
    *(result + 32) = v37;
    *(result + 40) = a2;
    v61 = result;
    *(result + 48) = v27;
    v42 = *(v8 + 16);
    if (!v42)
    {
      v45 = MEMORY[0x1E69E7CC0];
LABEL_42:

      specialized Array.append<A>(contentsOf:)(v45);
      return v61;
    }

    v43 = 0;
    v44 = v8 + 32;
    v45 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v43 >= *(v8 + 16))
      {
        goto LABEL_45;
      }

      v46 = *(v44 + 8 * v43);
      v47 = *(v46 + 16);
      v48 = *(v45 + 16);
      v49 = v48 + v47;
      if (__OFADD__(v48, v47))
      {
        goto LABEL_46;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v49 <= *(v45 + 24) >> 1)
      {
        if (!*(v46 + 16))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v48 <= v49)
        {
          v50 = v48 + v47;
        }

        else
        {
          v50 = v48;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v50, 1, v45);
        v45 = result;
        if (!*(v46 + 16))
        {
LABEL_25:

          if (v47)
          {
            goto LABEL_47;
          }

          goto LABEL_26;
        }
      }

      if ((*(v45 + 24) >> 1) - *(v45 + 16) < v47)
      {
        goto LABEL_48;
      }

      swift_arrayInitWithCopy();

      if (v47)
      {
        v51 = *(v45 + 16);
        v52 = __OFADD__(v51, v47);
        v53 = v51 + v47;
        if (v52)
        {
          goto LABEL_49;
        }

        *(v45 + 16) = v53;
      }

LABEL_26:
      ++v43;
      v8 = v57;
      if (v42 == v43)
      {
        goto LABEL_42;
      }
    }
  }

  v55 = a2;
  v58 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
  v11 = v8 + 32;
  v12 = v58;
  while (1)
  {
    v13 = *v11;
    if (!*(*v11 + 16))
    {
      break;
    }

    v15 = *(v13 + 32);
    v14 = *(v13 + 40);
    v16 = *(v58 + 16);
    v17 = *(v58 + 24);
    v18 = v16 + 1;

    if (v16 >= v17 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v16 + 1, 1);
    }

    *(v58 + 16) = v18;
    v19 = v58 + 16 * v16;
    *(v19 + 32) = v15;
    *(v19 + 40) = v14;
    v11 += 8;
    if (!--v9)
    {
      v10 = MEMORY[0x1E69E7CC0];
LABEL_11:
      v59 = v10;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
      v56 = v12;
      v20 = (v12 + 40);
      v21 = v18;
      do
      {
        v22 = *(v20 - 1);
        v23 = *v20;
        v25 = *(v59 + 16);
        v24 = *(v59 + 24);

        if (v25 >= v24 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        }

        *(v59 + 16) = v25 + 1;
        v26 = v59 + 16 * v25;
        *(v26 + 32) = v22;
        *(v26 + 40) = v23;
        v20 += 2;
        --v21;
      }

      while (v21);
      v60 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
      v27 = v60;
      v28 = *(type metadata accessor for Symbol(0) - 8);
      v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v30 = (v56 + 40);
      do
      {
        v31 = *(v30 - 1);
        v32 = *v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1A8FC9400;
        v34 = (v33 + v29);
        *v34 = v31;
        v34[1] = v32;
        swift_storeEnumTagMultiPayload();
        v36 = *(v60 + 16);
        v35 = *(v60 + 24);

        if (v36 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
        }

        *(v60 + 16) = v36 + 1;
        *(v60 + 8 * v36 + 32) = v33;
        v30 += 2;
        --v18;
      }

      while (v18);

      v8 = v57;
      a2 = v55;
      if (v55)
      {
        goto LABEL_20;
      }

LABEL_22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v39 = BidirectionalCollection<>.joined(separator:)();
      v41 = v40;

      MEMORY[0x1AC57C120](v39, v41);

      v37 = 0x5F664F796E415F5FLL;
      a2 = 0xE800000000000000;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t closure #1 in static Grammar.jsonObject(name:fields:with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v39 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_29GenerativeFunctionsFoundation10JSONSchemaO8PropertyV7elementtMd, &_sSi6offset_29GenerativeFunctionsFoundation10JSONSchemaO8PropertyV7elementtMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v34 - v8);
  v10 = type metadata accessor for Symbol(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v38 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v34 - v14);
  v16 = *a1;
  *v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x7BuLL, 0xE100000000000000);
  v37 = v15;
  *&v36 = v10;
  swift_storeEnumTagMultiPayload();
  v17 = MEMORY[0x1E69E7CC0];
  v41 = MEMORY[0x1E69E7CC0];
  v18 = *(v16 + 16);

  if (v18)
  {
    v34 = v3;
    v35 = v11;
    v20 = 0;
    while (v20 < *(v16 + 16))
    {
      v21 = type metadata accessor for JSONSchema.Property();
      v22 = *(v21 - 8);
      v23 = *(v22 + 16);
      v24 = v16 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v20;
      v25 = *(v7 + 48);
      *v9 = v20;
      v23(v9 + v25, v24, v21);
      closure #1 in closure #1 in static Grammar.jsonObject(name:fields:with:)(v20, v9 + v25, a2);
      v27 = v26;
      outlined destroy of [Regex2BNF.CharacterPredicate](v9, &_sSi6offset_29GenerativeFunctionsFoundation10JSONSchemaO8PropertyV7elementtMd, &_sSi6offset_29GenerativeFunctionsFoundation10JSONSchemaO8PropertyV7elementtMR);
      result = specialized Array.append<A>(contentsOf:)(v27);
      if (v18 == ++v20)
      {
        v17 = v41;
        v4 = v34;
        v11 = v35;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x7DuLL, 0xE100000000000000);
    v35 = v4;
    v29 = v38;
    *v38 = v28;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
    v30 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v31 = swift_allocObject();
    v36 = xmmword_1A8FC9400;
    *(v31 + 16) = xmmword_1A8FC9400;
    v32 = v37;
    outlined init with copy of Prompt.SpecialToken(v37, v31 + v30, type metadata accessor for Symbol);
    v40 = v31;
    specialized Array.append<A>(contentsOf:)(v17);
    v33 = swift_allocObject();
    *(v33 + 16) = v36;
    outlined init with copy of Prompt.SpecialToken(v29, v33 + v30, type metadata accessor for Symbol);
    specialized Array.append<A>(contentsOf:)(v33);
    outlined destroy of Symbol(v29);
    result = outlined destroy of Symbol(v32);
    *v39 = v40;
  }

  return result;
}

void closure #1 in closure #1 in static Grammar.jsonObject(name:fields:with:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore6SymbolOSgMd, &_s19TokenGenerationCore6SymbolOSgMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v45 - v14);
  v16 = type metadata accessor for Symbol(0);
  v53 = *(v16 - 8);
  v54 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v45 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  v24 = *a3;
  if (!*(v24 + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v26 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v27 = *(v24 + 56);
  v52 = *(v53 + 72);
  outlined init with copy of Prompt.SpecialToken(v27 + v52 * v25, v23, type metadata accessor for Symbol);
  v48 = v6;
  v51 = v23;
  if (a1)
  {
    *v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x202CuLL, 0xE200000000000000);
    v28 = v54;
    swift_storeEnumTagMultiPayload();
    v29 = 0;
  }

  else
  {
    v29 = 1;
    v28 = v54;
  }

  v30 = v53 + 56;
  v50 = *(v53 + 56);
  v50(v15, v29, 1, v28);
  v56 = 34;
  v57 = 0xE100000000000000;
  v31 = JSONSchema.Property.name.getter();
  MEMORY[0x1AC57C120](v31);

  MEMORY[0x1AC57C120](2112034, 0xE300000000000000);
  v32 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v56, v57);

  *v20 = v32;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOSgGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOSgGMR);
  v33 = v20;
  v34 = *(v7 + 72);
  v35 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v49 = swift_allocObject();
  v36 = v49 + v35;
  v47 = v15;
  outlined init with copy of (String, Any)(v15, v36, &_s19TokenGenerationCore6SymbolOSgMd, &_s19TokenGenerationCore6SymbolOSgMR);
  v46 = v33;
  outlined init with copy of Prompt.SpecialToken(v33, v36 + v34, type metadata accessor for Symbol);
  v37 = v54;
  v38 = v50;
  v50((v36 + v34), 0, 1, v54);
  outlined init with copy of Prompt.SpecialToken(v51, v36 + 2 * v34, type metadata accessor for Symbol);
  v39 = v37;
  v38((v36 + 2 * v34), 0, 1, v37);
  v40 = (v30 - 8);
  v41 = MEMORY[0x1E69E7CC0];
  v42 = 3;
  v50 = v36;
  do
  {
    outlined init with copy of (String, Any)(v36, v12, &_s19TokenGenerationCore6SymbolOSgMd, &_s19TokenGenerationCore6SymbolOSgMR);
    outlined init with take of Symbol?(v12, v9);
    if ((*v40)(v9, 1, v39) == 1)
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v9, &_s19TokenGenerationCore6SymbolOSgMd, &_s19TokenGenerationCore6SymbolOSgMR);
    }

    else
    {
      outlined init with take of Prompt.SpecialToken(v9, v55, type metadata accessor for Symbol);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41[2] + 1, 1, v41);
      }

      v44 = v41[2];
      v43 = v41[3];
      if (v44 >= v43 >> 1)
      {
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v41);
      }

      v41[2] = v44 + 1;
      outlined init with take of Prompt.SpecialToken(v55, v41 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v44 * v52, type metadata accessor for Symbol);
      v39 = v54;
    }

    v36 += v34;
    --v42;
  }

  while (v42);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  outlined destroy of Symbol(v46);
  outlined destroy of [Regex2BNF.CharacterPredicate](v47, &_s19TokenGenerationCore6SymbolOSgMd, &_s19TokenGenerationCore6SymbolOSgMR);
  outlined destroy of Symbol(v51);
}

uint64_t recurse #1 (node:path:) in static Grammar.fieldCombinations(for:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVSgMd, &_s29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v31 - v7);
  v9 = type metadata accessor for JSONSchema.Property();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCZFV19TokenGenerationCore7GrammarP33_DD88DD49DE63EB9CBD61CBF820251C8A17fieldCombinationsFT3forGSaVO29GenerativeFunctionsFoundation10JSONSchema8Property__GSaGSaS3___L_4Node_children;
  swift_beginAccess();
  v14 = *(a1 + v13);
  if (v14 >> 62)
  {
    if (v14 < 0)
    {
      v24 = *(a1 + v13);
    }

    else
    {
      v24 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    if (MEMORY[0x1AC57C730](v24))
    {
LABEL_3:
      (*(v10 + 16))(v12, a1 + OBJC_IVAR____TtCZFV19TokenGenerationCore7GrammarP33_DD88DD49DE63EB9CBD61CBF820251C8A17fieldCombinationsFT3forGSaVO29GenerativeFunctionsFoundation10JSONSchema8Property__GSaGSaS3___L_4Node_field, v9);
      v15 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
      }

      v18 = v15[2];
      v17 = v15[3];
      if (v18 >= v17 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
      }

      v15[2] = v18 + 1;
      (*(v10 + 32))(v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v12, v9);
      *a2 = v15;
      v19 = *(a1 + v13);
      if (v19 >> 62)
      {
        if (v19 < 0)
        {
          v30 = v19;
        }

        else
        {
          v30 = v19 & 0xFFFFFFFFFFFFFF8;
        }

        v20 = MEMORY[0x1AC57C730](v30);
        v8 = v32;
        if (v20)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v8 = v32;
        if (v20)
        {
LABEL_9:
          if (v20 >= 1)
          {

            for (i = 0; i != v20; ++i)
            {
              if ((v19 & 0xC000000000000001) != 0)
              {
                v22 = MEMORY[0x1AC57C620](i, v19);
              }

              else
              {
                v22 = *(v19 + 8 * i + 32);
              }

              recurse #1 (node:path:) in static Grammar.fieldCombinations(for:)(v22, a2, a3);
            }

            goto LABEL_16;
          }

          __break(1u);
          goto LABEL_32;
        }
      }

LABEL_16:
      specialized RangeReplaceableCollection<>.popLast()(v8);
      return outlined destroy of [Regex2BNF.CharacterPredicate](v8, &_s29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVSgMd, &_s29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVSgMR);
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v25 = *(*a2 + 16);
  if (!v25)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  specialized _copyCollectionToContiguousArray<A>(_:)(*a2, *a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), 1, (2 * v25) | 1);
  a2 = v26;
  swift_beginAccess();
  v8 = *(a3 + 16);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v8;
  if ((v27 & 1) == 0)
  {
LABEL_33:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    *(a3 + 16) = v8;
  }

  v29 = v8[2];
  v28 = v8[3];
  if (v29 >= v28 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v8);
  }

  v8[2] = v29 + 1;
  v8[v29 + 4] = a2;
  *(a3 + 16) = v8;
  return swift_endAccess();
}

uint64_t __deallocating_deinit in Node #1 in static Grammar.fieldCombinations(for:)()
{
  v1 = OBJC_IVAR____TtCZFV19TokenGenerationCore7GrammarP33_DD88DD49DE63EB9CBD61CBF820251C8A17fieldCombinationsFT3forGSaVO29GenerativeFunctionsFoundation10JSONSchema8Property__GSaGSaS3___L_4Node_field;
  v2 = type metadata accessor for JSONSchema.Property();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s19TokenGenerationCore27SpaceLookaheadMaskGeneratorVACyxGycfCAA16EarleyRecognizerC_Ttg5(uint64_t a1)
{
  GuidedGenerationOverrides.init()((v3 + 1));
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  if (isInternalInstall)
  {
    (*(&v3[18] + 1))(v3, *(&v3[15] + 1));
    outlined destroy of GuidedGenerationOverrides(v3 + 1);
    v1 = v3[0];
  }

  else
  {
    outlined destroy of GuidedGenerationOverrides(v3 + 1);
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t specialized TokenGrammarRecognizer.init(inputRecognizer:vocabManager:lastConsumedTokenID:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  *(v4 + 16) = 0;
  type metadata accessor for Lock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *(v10 + 16) = v11;
  pthread_mutex_init(v11, 0);
  *(v5 + 24) = v10;
  if (one-time initialization token for guided != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.guided);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136315138;

    v26 = a4;
    v18 = MEMORY[0x1AC57C2C0](v17, MEMORY[0x1E69E6530]);
    v25 = a1;
    v19 = a2;
    v20 = a3;
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v22, &v27);
    a3 = v20;
    a2 = v19;
    a1 = v25;

    *(v15 + 4) = v23;
    a4 = v26;
    _os_log_impl(&dword_1A8E85000, v13, v14, "Building token grammar recognizer with stop tokens: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1AC57DBF0](v16, -1, -1);
    MEMORY[0x1AC57DBF0](v15, -1, -1);
  }

  *(v5 + 56) = a1;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4 & 1;
  return v5;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a1, v21);
  }

  return result;
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v17)
  {
    *(*(*v5 + 56) + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)();
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + result) = v7;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, v7, v19);
  }

  return result;
}

{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

{
  v4 = v3;
  v8 = type metadata accessor for TerminalSymbol(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      *(v19[7] + 8 * v13) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v18 >= result && (a3 & 1) == 0)
  {
    result = specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, a3 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = result;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  outlined init with copy of Prompt.SpecialToken(a2, v10, type metadata accessor for TerminalSymbol);
  return specialized _NativeDictionary._insert(at:key:value:)(v13, v10, a1, v19);
}

{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

{
  v4 = v3;
  v8 = type metadata accessor for JSONSchema();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v26 = a1[1];
  v27 = *a1;
  v7 = a1[2];
  v8 = *(a1 + 24);
  v9 = a1[4];
  v10 = *(a1 + 40);
  v11 = *(a1 + 41);
  v12 = *v3;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v4;
  if (v19)
  {
    v24 = v23[7] + 48 * v13;
    *v24 = v27;
    *(v24 + 8) = v26;
    *(v24 + 16) = v7;
    *(v24 + 24) = v8;
    *(v24 + 32) = v9;
    *(v24 + 40) = v10;
    *(v24 + 41) = v11;
  }

  else
  {
    v28[0] = v27;
    v28[1] = v26;
    v28[2] = v7;
    v29 = v8;
    v30 = v9;
    v31 = v10;
    v32 = v11;
    return specialized _NativeDictionary._insert(at:key:value:)(v13, a2, v28, v23);
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Prompt.SpecialToken(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of Prompt.SpecialToken(a2, v10, type metadata accessor for Prompt.SpecialToken);
      return specialized _NativeDictionary._insert(at:key:value:)(v13, v10, a1, v19);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = (v19[7] + 32 * v13);
  __swift_destroy_boxed_opaque_existential_0(v20);

  return _sypWOb_0(a1, v20);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return _sypWOb_0(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
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
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
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
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
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
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 32);
      v15 = *(v12 + 16);
      result = *(v12 + 24);
      *(v12 + 24) = *v12;
      *(v12 + 40) = v15;
      *v12 = result;
      *(v12 + 8) = v14;
      v10 = v14;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(v7 + 16) >= *(*v9 + 16))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v17 -= 24;
      v20 = v18 == *(v6 - 3) && v19 == *(v6 - 2);
      if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v22 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v12)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v21;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v23 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t specialized static Grammar.constant(value:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A8FC9400;
  MEMORY[0x1AC57C120](a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A8FC9400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
  v6 = *(type metadata accessor for Symbol(0) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A8FC9400;
  MEMORY[0x1AC57C120](a1, a2);

  MEMORY[0x1AC57C120](34, 0xE100000000000000);

  *(v8 + v7) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x22uLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();

  *(v5 + 32) = v8;
  *(v4 + 32) = 0x6174736E6F435F5FLL;
  *(v4 + 40) = 0xEB000000005F746ELL;
  *(v4 + 48) = v5;
  return v4;
}

uint64_t specialized static Grammar.BOOLean()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A8FC9400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A8FC9410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
  v2 = *(type metadata accessor for Symbol(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A8FC9400;
  *(v4 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x65757274uLL, 0xE400000000000000);
  swift_storeEnumTagMultiPayload();
  *(v1 + 32) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A8FC9400;
  *(v5 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x65736C6166uLL, 0xE500000000000000);
  swift_storeEnumTagMultiPayload();
  *(v1 + 40) = v5;
  *(v0 + 32) = 0x61656C6F6F425F5FLL;
  *(v0 + 40) = 0xE90000000000006ELL;
  *(v0 + 48) = v1;
  return v0;
}

void *specialized static Grammar.string(wrapInQuotes:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
  if (a1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1A8FCB610;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1A8FC9400;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
    v4 = *(type metadata accessor for Symbol(0) - 8);
    v5 = *(v4 + 72);
    v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1A8FCB600;
    v8 = (v7 + v6);
    *v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x22uLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    v9 = (v7 + v6 + v5);
    *v9 = 0xD00000000000001BLL;
    v9[1] = 0x80000001A8FD82A0;
    swift_storeEnumTagMultiPayload();
    *(v8 + 2 * v5) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x22uLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    *(v3 + 32) = v7;
    strcpy((v2 + 32), "__QuotedString");
    *(v2 + 47) = -18;
    *(v2 + 48) = v3;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1A8FC9410;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A8FC9400;
    *(v11 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0, 0xE000000000000000);
    swift_storeEnumTagMultiPayload();
    *(v10 + 32) = v11;
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1A8FC9410;
    v13 = (v12 + v6);
    *v13 = 0xD00000000000001BLL;
    v13[1] = 0x80000001A8FD82A0;
    swift_storeEnumTagMultiPayload();
    v14 = (v12 + v6 + v5);
    *v14 = 0xD000000000000015;
    v14[1] = 0x80000001A8FD9020;
    swift_storeEnumTagMultiPayload();
    *(v10 + 40) = v12;
    *(v2 + 56) = 0xD00000000000001BLL;
    *(v2 + 64) = 0x80000001A8FD82A0;
    *(v2 + 72) = v10;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1A8FC9410;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1A8FC9400;
    v17 = (v16 + v6);
    *v17 = 0xD000000000000029;
    v17[1] = 0x80000001A8FD8B40;
    swift_storeEnumTagMultiPayload();
    *(v15 + 32) = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1A8FC9410;
    *(v18 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5CuLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    v19 = (v18 + v6 + v5);
    *v19 = 0x6570616373455F5FLL;
    v19[1] = 0xE800000000000000;
    swift_storeEnumTagMultiPayload();
    *(v15 + 40) = v18;
    v20 = v2;
    *(v2 + 80) = 0xD000000000000015;
    *(v2 + 88) = 0x80000001A8FD9020;
    *(v2 + 96) = v15;
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1A8FCB640;
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1A8FC9400;
    *(v22 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x22uLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    *(v21 + 32) = v22;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1A8FC9400;
    *(v23 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5CuLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    *(v21 + 40) = v23;
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1A8FC9400;
    *(v24 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2FuLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    *(v21 + 48) = v24;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1A8FC9400;
    *(v25 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x62uLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    *(v21 + 56) = v25;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1A8FC9400;
    *(v26 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x66uLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    *(v21 + 64) = v26;
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1A8FC9400;
    *(v27 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x6EuLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    *(v21 + 72) = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1A8FC9400;
    *(v28 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x72uLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    *(v21 + 80) = v28;
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1A8FC9400;
    *(v29 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x74uLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    *(v21 + 88) = v29;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1A8FCB620;
    *(v30 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x75uLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    v31 = (v30 + v6 + v5);
    *v31 = 0xD000000000000010;
    v31[1] = 0x80000001A8FD8B20;
    swift_storeEnumTagMultiPayload();
    v32 = (v30 + v6 + 2 * v5);
    *v32 = 0xD000000000000010;
    v32[1] = 0x80000001A8FD8B20;
    swift_storeEnumTagMultiPayload();
    v33 = (v30 + v6 + 3 * v5);
    *v33 = 0xD000000000000010;
    v33[1] = 0x80000001A8FD8B20;
    swift_storeEnumTagMultiPayload();
    v34 = (v30 + v6 + 4 * v5);
    *v34 = 0xD000000000000010;
    v34[1] = 0x80000001A8FD8B20;
    swift_storeEnumTagMultiPayload();
    result = v20;
    *(v21 + 96) = v30;
    v20[13] = 0x6570616373455F5FLL;
    v20[14] = 0xE800000000000000;
    v20[15] = v21;
  }

  else
  {
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1A8FC9400;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1A8FC9410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
    v38 = *(type metadata accessor for Symbol(0) - 8);
    v39 = *(v38 + 72);
    v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1A8FC9400;
    *(v41 + v40) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0, 0xE000000000000000);
    swift_storeEnumTagMultiPayload();
    *(v37 + 32) = v41;
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1A8FC9410;
    v43 = (v42 + v40);
    *v43 = 0xD000000000000011;
    v43[1] = 0x80000001A8FD82C0;
    swift_storeEnumTagMultiPayload();
    v44 = (v42 + v40 + v39);
    *v44 = 0x48435F4C4147454CLL;
    v44[1] = 0xEF52455443415241;
    swift_storeEnumTagMultiPayload();
    result = v36;
    *(v37 + 40) = v42;
    *(v36 + 32) = 0xD000000000000011;
    *(v36 + 40) = 0x80000001A8FD82C0;
    *(v36 + 48) = v37;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation12CharacterSetVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation12CharacterSetVtMd, &_sSS_10Foundation12CharacterSetVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation12CharacterSetVGMd, _ss18_DictionaryStorageCySS10Foundation12CharacterSetVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Any)(v9, v5, &_sSS_10Foundation12CharacterSetVtMd, &_sSS_10Foundation12CharacterSetVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for CharacterSet();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t specialized static Grammar.regexRules(pattern:wrapInQuotes:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = specialized static Regex2BNF._printAsBNF(inputRegex:)(a1, a2);
  v7 = v3;
  if (v3)
  {
    if (one-time initialization token for guided != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.guided);
    v9 = v3;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28[0] = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v28);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1A8E85000, v10, v11, "Grammar.regexRules(pattern:): error: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1AC57DBF0](v13, -1, -1);
      MEMORY[0x1AC57DBF0](v12, -1, -1);
    }

    type metadata accessor for GenerationError(0);
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return v7;
  }

  v7 = static BackusNaurParser.parsedRules(_:)(v5, v6);

  if ((a3 & 1) == 0)
  {
    return v7;
  }

  if (*(v7 + 16))
  {
    v18 = *(v7 + 32);
    v19 = *(v7 + 40);
    v28[0] = 0x6465746F7551;
    v28[1] = 0xE600000000000000;

    MEMORY[0x1AC57C120](v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1A8FC9400;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
    v21 = *(type metadata accessor for Symbol(0) - 8);
    v22 = *(v21 + 72);
    v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1A8FCB600;
    v25 = (v24 + v23);
    *v25 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x22uLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    v26 = (v25 + v22);
    *v26 = v18;
    v26[1] = v19;
    swift_storeEnumTagMultiPayload();
    *(v25 + 2 * v22) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x22uLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    *(v20 + 32) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1A8FC9400;
    *(v27 + 32) = 0x6465746F7551;
    *(v27 + 40) = 0xE600000000000000;
    *(v27 + 48) = v20;
    v28[0] = v27;
    specialized Array.append<A>(contentsOf:)(v7);
    return v28[0];
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_29GenerativeFunctionsFoundation10JSONSchemaOTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_29GenerativeFunctionsFoundation10JSONSchemaOtMd, &_sSS_29GenerativeFunctionsFoundation10JSONSchemaOtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS29GenerativeFunctionsFoundation10JSONSchemaOGMd, &_ss18_DictionaryStorageCySS29GenerativeFunctionsFoundation10JSONSchemaOGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Any)(v9, v5, &_sSS_29GenerativeFunctionsFoundation10JSONSchemaOtMd, &_sSS_29GenerativeFunctionsFoundation10JSONSchemaOtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for JSONSchema();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t specialized static Grammar.fieldCombinations(for:)(uint64_t a1)
{
  v61 = a1;
  v1 = type metadata accessor for JSONSchema.Property();
  v66 = *(v1 - 8);
  v67 = v1 - 8;
  v2 = v66;
  MEMORY[0x1EEE9AC00](v1);
  v69 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v47 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v47 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  v12 = type metadata accessor for JSONSchema();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v47 - v17);
  type metadata accessor for JSONSchema.Boolean();
  v19 = swift_allocBox();
  JSONSchema.Boolean.init(description:)();
  *v18 = v19;
  (*(v13 + 104))(v18, *MEMORY[0x1E69A0AC0], v12);
  v51 = v13;
  v20 = *(v13 + 16);
  v20(v15, v18, v12);
  JSONSchema.Property.init(name:description:schema:isOptional:)();
  v50 = v18;
  v53 = v12;
  v20(v15, v18, v12);
  JSONSchema.Property.init(name:description:schema:isOptional:)();
  v21 = *(v2 + 2);
  v52 = v11;
  v21(v6, v11, v1);
  v65 = type metadata accessor for Node #1 in static Grammar.fieldCombinations(for:)(0);
  v22 = swift_allocObject();
  v23 = *(v2 + 4);
  v68 = v6;
  v63 = v23;
  v64 = (v2 + 32);
  v23(v22 + OBJC_IVAR____TtCZFV19TokenGenerationCore7GrammarP33_DD88DD49DE63EB9CBD61CBF820251C8A17fieldCombinationsFT3forGSaVO29GenerativeFunctionsFoundation10JSONSchema8Property__GSaGSaS3___L_4Node_field, v6, v1);
  *(v22 + OBJC_IVAR____TtCZFV19TokenGenerationCore7GrammarP33_DD88DD49DE63EB9CBD61CBF820251C8A17fieldCombinationsFT3forGSaVO29GenerativeFunctionsFoundation10JSONSchema8Property__GSaGSaS3___L_4Node_children) = MEMORY[0x1E69E7CC0];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v24 = swift_allocObject();
  v55 = xmmword_1A8FCB6B0;
  *(v24 + 16) = xmmword_1A8FCB6B0;
  *(v24 + 32) = v22;
  v72 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGMR);
  v25 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v62 = *(v66 + 9);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1A8FC9400;
  v66 = v21;
  v67 = v2 + 16;
  v21((v26 + v25), v54, v1);
  v71 = v61;
  v49 = v22;

  result = specialized Array.append<A>(contentsOf:)(v26);
  v28 = v71;
  v61 = *(v71 + 16);
  if (!v61)
  {

LABEL_27:

    v42 = swift_allocObject();
    v43 = MEMORY[0x1E69E7CC0];
    *(v42 + 16) = MEMORY[0x1E69E7CC0];
    v44 = (v42 + 16);
    v70 = v43;
    recurse #1 (node:path:) in static Grammar.fieldCombinations(for:)(v49, &v70, v42);

    v45 = *(v2 + 1);
    v45(v54, v1);
    v45(v52, v1);
    (*(v51 + 8))(v50, v53);
    swift_beginAccess();
    v46 = *v44;

    return v46;
  }

  v29 = v2;
  v30 = 0;
  v60 = v71 + v25;
  v48 = v29;
  v57 = (v29 + 8);
  v58 = v71;
  v31 = v69;
  v59 = v1;
  while (v30 < *(v28 + 16))
  {
    v32 = v66;
    v66(v31, (v60 + v30 * v62), v1);
    v33 = v68;
    v32(v68, v31, v1);
    v34 = swift_allocObject();
    result = v63(v34 + OBJC_IVAR____TtCZFV19TokenGenerationCore7GrammarP33_DD88DD49DE63EB9CBD61CBF820251C8A17fieldCombinationsFT3forGSaVO29GenerativeFunctionsFoundation10JSONSchema8Property__GSaGSaS3___L_4Node_field, v33, v1);
    *(v34 + OBJC_IVAR____TtCZFV19TokenGenerationCore7GrammarP33_DD88DD49DE63EB9CBD61CBF820251C8A17fieldCombinationsFT3forGSaVO29GenerativeFunctionsFoundation10JSONSchema8Property__GSaGSaS3___L_4Node_children) = MEMORY[0x1E69E7CC0];
    if (v24 >> 62)
    {
      if (v24 < 0)
      {
        v40 = v24;
      }

      else
      {
        v40 = v24 & 0xFFFFFFFFFFFFFF8;
      }

      result = MEMORY[0x1AC57C730](v40);
      v35 = result;
      if (!result)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v35 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v35)
      {
        goto LABEL_21;
      }
    }

    if (v35 < 1)
    {
      goto LABEL_29;
    }

    v36 = 0;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x1AC57C620](v36, v24);
      }

      else
      {
        v37 = *(v24 + 8 * v36 + 32);
      }

      v38 = OBJC_IVAR____TtCZFV19TokenGenerationCore7GrammarP33_DD88DD49DE63EB9CBD61CBF820251C8A17fieldCombinationsFT3forGSaVO29GenerativeFunctionsFoundation10JSONSchema8Property__GSaGSaS3___L_4Node_children;
      swift_beginAccess();

      MEMORY[0x1AC57C290](v39);
      if (*((*(v37 + v38) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v37 + v38) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v36;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }

    while (v35 != v36);
LABEL_21:
    v31 = v69;
    if (JSONSchema.Property.isOptional.getter())
    {

      MEMORY[0x1AC57C290](v41);
      v28 = v58;
      v1 = v59;
      if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      result = (*v57)(v31, v1);
      v24 = v72;
    }

    else
    {

      v24 = swift_allocObject();
      *(v24 + 16) = v55;
      *(v24 + 32) = v34;
      v1 = v59;
      result = (*v57)(v31, v59);
      v72 = v24;
      v28 = v58;
    }

    if (++v30 == v61)
    {

      v2 = v48;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t specialized static Grammar.reference(to:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A8FC9400;
  strcpy(v13, "__ReferenceTo");
  HIWORD(v13[1]) = -4864;
  MEMORY[0x1AC57C120](a1, a2);
  v5 = v13[0];
  v6 = v13[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A8FC9400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
  v8 = *(type metadata accessor for Symbol(0) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A8FC9400;
  v11 = (v10 + v9);
  *v11 = a1;
  v11[1] = a2;
  swift_storeEnumTagMultiPayload();
  *(v7 + 32) = v10;
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  *(v4 + 48) = v7;

  return v4;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_10Foundation12CharacterSetVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_10Foundation12CharacterSetVtMd, &_sSi_10Foundation12CharacterSetVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation12CharacterSetVGMd, &_ss18_DictionaryStorageCySi10Foundation12CharacterSetVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      outlined init with copy of (String, Any)(v9, v5, &_sSi_10Foundation12CharacterSetVtMd, &_sSi_10Foundation12CharacterSetVtMR);
      v11 = *v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for CharacterSet();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2iGMd, &_ss18_DictionaryStorageCyS2iGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_SaySiGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySJSaySiGGMd, &_ss18_DictionaryStorageCySJSaySiGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = result;
    *(v3[7] + 8 * v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v17 = *(v11 - 1);
    v18 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v17);
    v11 = v16;
    v6 = v18;
    result = v17;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation12CharacterSetV_ShySiGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = static _DictionaryStorage.allocate(capacity:)();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      outlined init with copy of (String, Any)(v16, v12, a2, v27);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = type metadata accessor for CharacterSet();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs5UInt8V_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys5UInt8VSiGMd, &_ss18_DictionaryStorageCys5UInt8VSiGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_s5UInt8VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySis5UInt8VGMd, &_ss18_DictionaryStorageCySis5UInt8VGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictGMd, &_ss18_DictionaryStorageCySi19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v23 = a1;
  v11 = *(a1 + 81);
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v13)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v14 = v12;
  result = v5;
  v16 = (v23 + 137);
  while (1)
  {
    *(v3 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
    *(v3[6] + 8 * v14) = v4;
    v17 = v3[7] + 48 * v14;
    *v17 = result;
    *(v17 + 8) = v6;
    *(v17 + 16) = v7;
    *(v17 + 24) = v8 & 1;
    *(v17 + 32) = v9;
    *(v17 + 40) = v10 & 1;
    *(v17 + 41) = v11 & 1;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = v16 + 56;
    v4 = *(v16 - 49);
    v24 = *(v16 - 41);
    v6 = *(v16 - 33);
    v7 = *(v16 - 25);
    v8 = *(v16 - 17);
    v9 = *(v16 - 9);
    v10 = *(v16 - 1);
    v11 = *v16;

    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v16 = v21;
    result = v24;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for Node #1 in static Grammar.fieldCombinations(for:)(uint64_t a1)
{
  result = type metadata singleton initialization cache for Node #1 in static Grammar.fieldCombinations(for:);
  if (!type metadata singleton initialization cache for Node #1 in static Grammar.fieldCombinations(for:))
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Node #1 in static Grammar.fieldCombinations(for:)(uint64_t a1)
{
  result = type metadata accessor for JSONSchema.Property();
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = _sypWOb_0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo20IOSurfacePropertyKeya_s8Sendable_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo20IOSurfacePropertyKeyas8Sendable_pGMd, &_ss18_DictionaryStorageCySo20IOSurfacePropertyKeyas8Sendable_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v11, &_sSo20IOSurfacePropertyKeya_s8Sendable_ptMd, &_sSo20IOSurfacePropertyKeya_s8Sendable_ptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = _sypWOb_0(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15TokenGeneration6PromptV07SpecialC0V_SSTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V_SStMd, &_s15TokenGeneration6PromptV07SpecialA0V_SStMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSSGMd, &_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSSGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Any)(v9, v5, &_s15TokenGeneration6PromptV07SpecialA0V_SStMd, &_s15TokenGeneration6PromptV07SpecialA0V_SStMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Prompt.SpecialToken(0);
      result = outlined init with take of Prompt.SpecialToken(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for Prompt.SpecialToken);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9PromptKit12SpecialTokenV_SSTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit12SpecialTokenV_SStMd, &_s9PromptKit12SpecialTokenV_SStMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9PromptKit12SpecialTokenVSSGMd, &_ss18_DictionaryStorageCy9PromptKit12SpecialTokenVSSGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Any)(v9, v5, &_s9PromptKit12SpecialTokenV_SStMd, &_s9PromptKit12SpecialTokenV_SStMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for SpecialToken();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9PromptKit0C25ComponentValueConvertible_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9PromptKit0C25ComponentValueConvertible_pGMd, &_ss18_DictionaryStorageCySS9PromptKit0C25ComponentValueConvertible_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13, &_sSS_9PromptKit0A25ComponentValueConvertible_ptMd, &_sSS_9PromptKit0A25ComponentValueConvertible_ptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of PromptComponentValueConvertible(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15TokenGeneration6PromptV07SpecialC0V_SDyS2SGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V_SDyS2SGtMd, &_s15TokenGeneration6PromptV07SpecialA0V_SDyS2SGtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSDyS2SGGMd, &_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSDyS2SGGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Any)(v9, v5, &_s15TokenGeneration6PromptV07SpecialA0V_SDyS2SGtMd, &_s15TokenGeneration6PromptV07SpecialA0V_SDyS2SGtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Prompt.SpecialToken(0);
      result = outlined init with take of Prompt.SpecialToken(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for Prompt.SpecialToken);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = _sypWOb_0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t outlined init with take of Prompt.SpecialToken(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Symbol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore6SymbolOSgMd, &_s19TokenGenerationCore6SymbolOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Prompt.SpecialToken(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t Grammar.init(tools:version:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 16))
  {
    v4 = static Grammar.toolCallFormatV4(for:)(&v11, result);

    if (!v2)
    {
      v5 = v11;
      v10 = *v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1A8FC9400;
      *(v6 + 32) = v5;
      *(v6 + 40) = v10;
      v11 = v6;
      specialized Array.append<A>(contentsOf:)(v4);
      result = Grammar.init(rules:prependSpaceToRootRule:cacheableResursiveNonTerminals:)(v11, 0, MEMORY[0x1E69E7CC0], &v11);
      v7 = v12[0];
      v8 = *&v12[1];
      v9 = *&v12[3];
      *a2 = v11;
      *(a2 + 8) = v7;
      *(a2 + 16) = v8;
      *(a2 + 32) = v9;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Grammar.toolCallFormatV4(for:)(void *a1, uint64_t a2)
{
  result = static Grammar.anyToolCallRules(for:)(a2);
  if (!v2)
  {
    if (*(result + 16))
    {
      v18 = result;
      v6 = *(result + 32);
      v5 = *(result + 40);
      v17[0] = v6;
      v17[1] = v5;

      static Grammar.arrayRules(itemSymbol:minItems:maxItems:)(v17, 1, 0, 0, 1);
      v8 = v7;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1A8FC9400;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v9 = *(type metadata accessor for Symbol(0) - 8);
      v10 = *(v9 + 72);
      v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1A8FCB600;
      v13 = (v12 + v11);
      *v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0xD00000000000001FLL, 0x80000001A8FD9060);
      result = swift_storeEnumTagMultiPayload();
      if (v8[2])
      {
        v14 = (v13 + v10);
        v15 = v8[5];
        *v14 = v8[4];
        v14[1] = v15;
        swift_storeEnumTagMultiPayload();

        *(v13 + 2 * v10) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0xD000000000000013, 0x80000001A8FD9080);
        swift_storeEnumTagMultiPayload();
        *(v16 + 32) = v12;
        *a1 = 0xD000000000000012;
        a1[1] = 0x80000001A8FD9040;
        a1[2] = v16;
        v17[0] = v8;
        specialized Array.append<A>(contentsOf:)(v18);
        return v17[0];
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t static Grammar.anyToolCallRules(for:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(type metadata accessor for Tool.Function() - 8);
    v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v23 = *(v5 + 72);
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = static Grammar.singleToolRules(for:cache:)(&v25, v6, &v27);
      if (v1)
      {
        break;
      }

      v9 = v8;
      v10 = v25;
      v24 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v11 = *(type metadata accessor for Symbol(0) - 8);
      v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1A8FC9400;
      v14 = (v13 + v12);
      *v14 = v10;
      v14[1] = v24;
      swift_storeEnumTagMultiPayload();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v16 = *(v7 + 2);
      v15 = *(v7 + 3);
      if (v16 >= v15 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v7);
      }

      *(v7 + 2) = v16 + 1;
      *&v7[8 * v16 + 32] = v13;
      v17 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
      }

      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      if (v19 >= v18 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
      }

      *(v17 + 2) = v19 + 1;
      v20 = &v17[24 * v19];
      *(v20 + 4) = v10;
      *(v20 + 40) = v24;
      v28 = v17;
      specialized Array.append<A>(contentsOf:)(v9);
      v6 += v23;
      if (!--v4)
      {
        v3 = v28;
        goto LABEL_16;
      }
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_16:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1A8FC9400;
    *(v22 + 32) = 0x61436C6F6F545F5FLL;
    *(v22 + 40) = 0xEA00000000006C6CLL;
    *(v22 + 48) = v7;
    v25 = v22;
    specialized Array.append<A>(contentsOf:)(v3);
    return v25;
  }
}

void *static Grammar.singleToolRules(for:cache:)(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = a3;
  v30[0] = a1;
  v31 = type metadata accessor for GenerationSchema();
  v4 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecursiveSchema();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for JSONSchema();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[1] = a2;
  Tool.Function.parameters.getter();
  GenerationSchema.recursiveSchema()();
  (*(v4 + 8))(v6, v31);
  RecursiveSchema.jsonSchema()();
  (*(v8 + 8))(v10, v7);
  v15 = v35;
  v16 = static Grammar.rules(for:with:wrapStringsInQuotes:)(v14, v32, 1);
  if (v15)
  {
    (*(v12 + 8))(v14, v11);
    return v16;
  }

  (*(v12 + 8))(v14, v11);
  v33 = 24415;
  v34 = 0xE200000000000000;
  v17 = Tool.Function.name.getter();
  MEMORY[0x1AC57C120](v17);

  MEMORY[0x1AC57C120](0x6C6C61436C6F6F54, 0xE800000000000000);
  v35 = v33;
  v32 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1A8FC9400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
  v18 = *(type metadata accessor for Symbol(0) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1A8FCB600;
  v22 = v21 + v20;
  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v33 = 0x3A22656D616E227BLL;
  v34 = 0xEA00000000002220;
  v23 = Tool.Function.name.getter();
  MEMORY[0x1AC57C120](v23);

  MEMORY[0x1AC57C120](0xD000000000000010, 0x80000001A8FD90A0);
  *(v21 + v20) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v33, v34);
  swift_storeEnumTagMultiPayload();

  if (v16[2])
  {
    v25 = (v22 + v19);
    v26 = v16[5];
    *v25 = v16[4];
    v25[1] = v26;
    swift_storeEnumTagMultiPayload();

    *(v22 + 2 * v19) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x7DuLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    v27 = v31;
    *(v31 + 32) = v21;
    v28 = v30[0];
    v29 = v32;
    *v30[0] = v35;
    *(v28 + 8) = v29;
    *(v28 + 16) = v27;
    return v16;
  }

  __break(1u);
  return result;
}

uint64_t dispatch thunk of TokenizerAwareGrammarRecognizer.accepts(tokenID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of TokenizerAwareGrammarRecognizer.accepts(tokenID:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of TokenizerAwareGrammarRecognizer.accepts(tokenID:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of TokenizerAwareGrammarRecognizer.accepts(tokenIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of TokenizerAwareGrammarRecognizer.accepts(tokenID:);

  return v9(a1, a2, a3);
}

Swift::Bool __swiftcall TokenizerAwareGrammarRecognizer.accepts(tokenID:)(Swift::Int tokenID)
{
  v3 = v2;
  v4 = v1;
  v5 = *(v1 - 8);
  v6 = MEMORY[0x1EEE9AC00](tokenID);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 24))(v6);
  LOBYTE(v3) = (*(v3 + 8))(v4, v3);
  (*(v5 + 8))(v8, v4);
  return v3 & 1;
}

char *TokenizerAwareGrammarRecognizer.accepts(tokenIDs:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = *v2++;
    v4 = v5;
    if (TokenizerAwareGrammarRecognizer.accepts(tokenID:)(v5))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
      }

      v7 = *(v3 + 2);
      v6 = *(v3 + 3);
      if (v7 >= v6 >> 1)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v3);
      }

      *(v3 + 2) = v7 + 1;
      *&v3[8 * v7 + 32] = v4;
    }

    --v1;
  }

  while (v1);
  return v3;
}

uint64_t protocol witness for TokenizerAwareGrammarRecognizer.accepts(tokenID:) in conformance TokenGrammarRecognizer<A>(Swift::Int a1)
{
  v2 = TokenizerAwareGrammarRecognizer.accepts(tokenID:)(a1);
  v3 = *(v1 + 8);
  v4 = v2;

  return v3(v4);
}

uint64_t protocol witness for TokenizerAwareGrammarRecognizer.accepts(tokenIDs:) in conformance TokenGrammarRecognizer<A>(uint64_t a1)
{
  v2 = TokenizerAwareGrammarRecognizer.accepts(tokenIDs:)(a1);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t Lock.__deallocating_deinit()
{
  pthread_mutex_destroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t MaskCache.__deallocating_deinit(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for ConstraintsProvider(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConstraintsProvider(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for ConstraintsProvider(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t type metadata instantiation function for SpaceLookaheadMaskGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for SpaceLookaheadMaskGenerator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void type metadata completion function for RecognizerGuidedGenerationConstraints(void *a1)
{
  v1 = a1[2];
  type metadata accessor for RecognizerGuidedGenerationConstraints.TokenRecognizerManager(319, v1, a1[3], a1[4]);
  if (v2 <= 0x3F)
  {
    type metadata accessor for MaskCache();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for TokenGrammarRecognizer(319, v1, AssociatedConformanceWitness, v4);
    if (v5 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        type metadata accessor for Int?();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for RecognizerGuidedGenerationConstraints(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 24) & ~v6) + *(*(*(a3 + 24) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 32;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *storeEnumTagSinglePayload for RecognizerGuidedGenerationConstraints(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((v8 + 24) & ~v8) + *(*(*(a4 + 24) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 24) & ~v8) + *(*(*(a4 + 24) - 8) + 64)) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (((((result + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((((v8 + 24) & ~v8) + *(*(*(a4 + 24) - 8) + 64)) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 24) & ~v8) + *(*(*(a4 + 24) - 8) + 64)) & 0xFFFFFFF8) != 0xFFFFFFE0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void type metadata accessor for Int?()
{
  if (!lazy cache variable for type metadata for Int?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Int?);
    }
  }
}

uint64_t type metadata instantiation function for RecognizerGuidedGenerationConstraints.TokenRecognizerManager.TokenRecognizerCache(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_SJs5NeverOTg5166_s19TokenGenerationCore27SpaceLookaheadMaskGeneratorV29generateValidSearchCandidates8prefixes12vocabManager05allowD6PrefixSaySiGShySSG_AA010VocabularyN0CSbtFSJSSXEfU_Tf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v34 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v33 = v34;
  v4 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v29 = a1 + 64;
  v30 = a1;
  v7 = a1;
  v31 = v2;
  v32 = a1 + 56;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v7 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_28;
    }

    v11 = *(v7 + 36);
    v12 = (*(v7 + 48) + 16 * v5);
    v13 = *v12;
    v14 = v12[1];
    if ((v14 & 0x2000000000000000) != 0)
    {
      if ((v14 & 0xF00000000000000) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if ((v13 & 0xFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_32;
      }

      if ((v13 & 0x1000000000000000) == 0)
      {

        v13 = static String._copying(_:)(v13, v14);
        v16 = v15;

        v7 = v30;
        v14 = v16;
        goto LABEL_14;
      }
    }

LABEL_14:
    v17 = v33;
    v19 = *(v33 + 16);
    v18 = *(v33 + 24);
    v20 = v11;
    if (v19 >= v18 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      v20 = v11;
      v7 = v30;
      v17 = v33;
    }

    *(v17 + 16) = v19 + 1;
    v21 = v17 + 16 * v19;
    *(v21 + 32) = v13;
    *(v21 + 40) = v14;
    v8 = 1 << *(v7 + 32);
    if (v5 >= v8)
    {
      goto LABEL_29;
    }

    v4 = v32;
    v22 = *(v32 + 8 * v10);
    if ((v22 & (1 << v5)) == 0)
    {
      goto LABEL_30;
    }

    if (v20 != *(v7 + 36))
    {
      goto LABEL_31;
    }

    v33 = v17;
    v23 = v22 & (-2 << (v5 & 0x3F));
    if (v23)
    {
      v8 = __clz(__rbit64(v23)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v31;
    }

    else
    {
      v24 = v10 << 6;
      v25 = v10 + 1;
      v26 = (v29 + 8 * v10);
      v9 = v31;
      while (v25 < (v8 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = outlined consume of [String : JSONSchema].Index._Variant(v5, v20, 0);
          v7 = v30;
          v8 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = outlined consume of [String : JSONSchema].Index._Variant(v5, v20, 0);
      v7 = v30;
    }

LABEL_4:
    ++v6;
    v5 = v8;
    if (v6 == v9)
    {
      return v33;
    }
  }

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
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t GuidedGenerationConstraints.init(grammar:vocabularyManager:enableDeterministicTokenRuns:numberOfParallelTasks:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v9 = a1[5];
  v11 = *a2;
  v64[0] = *a1;
  v64[1] = v6;
  v64[2] = v7;
  v65 = v8;
  v66 = v10;
  v67 = v9;
  type metadata accessor for EarleyRecognizer.RecognizerGrammar();
  swift_allocObject();
  swift_retain_n();

  v12 = EarleyRecognizer.RecognizerGrammar.init(grammar:vocabularyManager:)(v64, v11);
  v13 = specialized static EarleyRecognizer.createRootItems(recognizerGrammar:)(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMd, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A8FC9400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1A8FC9400;
  *(v15 + 32) = v13;
  *(v14 + 32) = v15;
  type metadata accessor for EarleyRecognizer();
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  *(v16 + 28) = -1;
  *(v16 + 24) = 0;
  *(v16 + 32) = v12;
  *(v16 + 40) = v14;
  *(v16 + 48) = MEMORY[0x1E69E7CC0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMd, &_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMR);
  swift_allocObject();

  v18 = specialized TokenGrammarRecognizer.init(inputRecognizer:vocabManager:lastConsumedTokenID:)(v17, v11, 0, 1);

  GuidedGenerationOverrides.init()(v64);
  v34 = _s19TokenGenerationCore27SpaceLookaheadMaskGeneratorVACyxGycfCAA16EarleyRecognizerC_Ttg5(v19);
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  if (!isInternalInstall)
  {
    GuidedGenerationOverrides.init()(&v38);
    v61 = v48;
    v62 = v49;
    v63 = v50;
    v57 = v44;
    v58 = v45;
    v59 = v46;
    v60 = v47;
    v53 = v40;
    v54 = v41;
    v55 = v42;
    v56 = v43;
    v51 = v38;
    v52 = v39;
    outlined destroy of GuidedGenerationOverrides(&v51);
    v22 = 2000;
LABEL_10:
    v20 = a3;
    goto LABEL_11;
  }

  v65(&v51, v64[0]);
  v20 = v51;
  v21 = v51;
  GuidedGenerationOverrides.init()(&v38);
  v61 = v48;
  v62 = v49;
  v63 = v50;
  v57 = v44;
  v58 = v45;
  v59 = v46;
  v60 = v47;
  v53 = v40;
  v54 = v41;
  v55 = v42;
  v56 = v43;
  v51 = v38;
  v52 = v39;
  (*(&v49 + 1))(&v36, v48);
  outlined destroy of GuidedGenerationOverrides(&v51);
  if (v37)
  {
    v22 = 2000;
  }

  else
  {
    v22 = v36;
  }

  if (v21 == 2)
  {
    goto LABEL_10;
  }

LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC27SpaceLookaheadMaskGeneratorVyAKG__GGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC27SpaceLookaheadMaskGeneratorVyAKG__GGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1A8FC9400;
  v24 = MEMORY[0x1E69E7CC0];
  v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v23 + 32) = v18;
  *(v23 + 40) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerCyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAGG_GMd, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerCyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAGG_GMR);
  v26 = swift_allocObject();
  type metadata accessor for Lock();
  v27 = swift_allocObject();
  swift_retain_n();
  v28 = swift_slowAlloc();
  *(v27 + 16) = v28;
  pthread_mutex_init(v28, 0);

  *(v26 + 16) = v27;
  *(v26 + 24) = v23;
  type metadata accessor for MaskCache();
  v29 = swift_allocObject();
  *(v29 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictTt0g5Tf4g_n(v24);
  v30 = swift_allocObject();
  v31 = swift_slowAlloc();
  *(v30 + 16) = v31;
  pthread_mutex_init(v31, 0);
  outlined destroy of GuidedGenerationOverrides(v64);

  *(v29 + 24) = v30;
  *a5 = v18;
  *(a5 + 8) = 0;
  *(a5 + 16) = v26;
  *(a5 + 24) = v29;
  *(a5 + 32) = v18;
  *(a5 + 40) = v34 & 1;
  *(a5 + 41) = v20 & 1;
  *(a5 + 48) = a4;
  *(a5 + 56) = 0;
  *(a5 + 64) = v22;
  return result;
}

uint64_t specialized RecognizerGuidedGenerationConstraints.TokenRecognizerManager.childRecognizerIndexInternal(for:tokenID:)(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v10 = v4;
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = *(v4 + 24);
  if (*(v13 + 16) <= a1)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    v7 = a3(v7);
    *(v10 + 24) = v7;
    goto LABEL_7;
  }

  v14 = v13 + 16 * a1;
  v15 = *(v14 + 40);
  if (*(v15 + 16))
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v17)
    {
      v5 = *(*(v15 + 56) + 8 * v16);
      swift_endAccess();
      return v5;
    }
  }

  swift_endAccess();
  v4 = *(v14 + 32);

  v6 = specialized TokenGrammarRecognizer.childRecognizer(consumingTokenID:)(a2);

  v7 = *(v10 + 24);
  v5 = *(v7 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 24) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (*(v7 + 16) <= a1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v7 + 16 * a1;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v19 + 40);
  *(v19 + 40) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v5, a2, v20);
  *(v19 + 40) = v26;

  *(v10 + 24) = v7;
  swift_endAccess();
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  a2 = *(v10 + 24);

  v21 = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 24) = a2;
  if ((v21 & 1) == 0)
  {
LABEL_17:
    a2 = a4(0, *(a2 + 16) + 1, 1, a2);
    *(v10 + 24) = a2;
  }

  v23 = *(a2 + 16);
  v22 = *(a2 + 24);
  if (v23 >= v22 >> 1)
  {
    a2 = a4(v22 > 1, v23 + 1, 1, a2);
  }

  *(a2 + 16) = v23 + 1;
  v24 = a2 + 16 * v23;
  *(v24 + 32) = v6;
  *(v24 + 40) = v4;
  *(v10 + 24) = a2;
  swift_endAccess();

  return v5;
}

uint64_t specialized TokenGrammarRecognizer.childRecognizer(consumingTokenID:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v23 - v8);
  v10 = *(v1 + 32);
  VocabularyManager.prefixLookUp.getter((&v23 - v8));
  v11 = *(v9 + *(v4 + 52));

  outlined destroy of VocabularyManager.PrefixLookup(v9, type metadata accessor for VocabularyManager.PrefixLookup);
  v12 = specialized Set.contains(_:)(a1, v11);

  if (v12)
  {
    VocabularyManager.prefixLookUp.getter(v6);
    v13 = *(v6 + *(v4 + 48));

    outlined destroy of VocabularyManager.PrefixLookup(v6, type metadata accessor for VocabularyManager.PrefixLookup);
    if (*(v13 + 16))
    {
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
      if (v15)
      {
        v16 = *(*(v13 + 56) + v14);

        v17 = *(v2 + 56);
        if (v17)
        {
          v24 = v16;
          v25 = 1;
          v17 = EarleyRecognizer.childRecognizer(consumingElement:)(&v24);
        }

LABEL_11:
        swift_allocObject();

        return specialized TokenGrammarRecognizer.init(inputRecognizer:vocabManager:lastConsumedTokenID:)(v17, v10, a1, 0);
      }
    }
  }

  else
  {
    VocabularyManager.prefixLookUp.getter(v9);
    v18 = v9[10];

    outlined destroy of VocabularyManager.PrefixLookup(v9, type metadata accessor for VocabularyManager.PrefixLookup);
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v18 + 16) > a1)
    {
      v19 = v18 + 16 * a1;
      v21 = *(v19 + 32);
      v20 = *(v19 + 40);

      v17 = *(v2 + 56);
      if (v17)
      {
        v17 = EarleyRecognizer.childRecognizer(consumingString:)(v21, v20);
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t specialized RecognizerGuidedGenerationConstraints.TokenRecognizerManager.tokenRecognizerIndex(following:vocabularySize:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v36 = *(v4 + 16);
  pthread_mutex_lock(*(v36 + 16));
  v6 = *(a1 + 16);
  swift_beginAccess();
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v10 = 32;
    v37 = a1;
    while (1)
    {
      v11 = *(a1 + v10);
      if (v11 < 0 || v11 >= a2)
      {
        break;
      }

      v12 = specialized RecognizerGuidedGenerationConstraints.TokenRecognizerManager.childRecognizerIndexInternal(for:tokenID:)(v8, *(a1 + v10), a3, a4);
      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v8 = v12;
      v13 = *(v4 + 24);
      if (v12 >= *(v13 + 16))
      {
        goto LABEL_31;
      }

      v14 = *(v13 + 16 * v12 + 32);
      v15 = *(v14 + 56);

      if (!v15)
      {

        if (one-time initialization token for guided != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, static Log.guided);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1A8E85000, v25, v26, "contextTokenIDs fail to match grammar", v27, 2u);
          MEMORY[0x1AC57DBF0](v27, -1, -1);
        }

        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v41 = v31;
          *v30 = 136642819;
          v32 = MEMORY[0x1AC57C2C0](a1, MEMORY[0x1E69E6530]);
          v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v41);

          *(v30 + 4) = v8;
          _os_log_impl(&dword_1A8E85000, v28, v29, "contextTokenIDs fail to match grammar with contextTokenIDs %{sensitive}s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
          MEMORY[0x1AC57DBF0](v31, -1, -1);
          MEMORY[0x1AC57DBF0](v30, -1, -1);
        }

        v23 = v36;
        lazy protocol witness table accessor for type GuidedGenerationError and conformance GuidedGenerationError();
        swift_allocError();
        *v34 = 0;
        swift_willThrow();

        goto LABEL_28;
      }

      if ((v7 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
        }

        v17 = *(v9 + 2);
        v16 = *(v9 + 3);
        if (v17 >= v16 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v9);
        }

        *(v9 + 2) = v17 + 1;
        *&v9[8 * v17 + 32] = v11;
        a1 = v37;
      }

      pthread_mutex_lock(*(*(v14 + 24) + 16));
      v7 = *(v14 + 16);
      pthread_mutex_unlock(*(*(v14 + 24) + 16));

      v10 += 8;
      if (!--v6)
      {
        goto LABEL_16;
      }
    }

    if (one-time initialization token for guided == -1)
    {
      goto LABEL_18;
    }

LABEL_32:
    swift_once();
LABEL_18:
    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.guided);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v11;
      _os_log_impl(&dword_1A8E85000, v19, v20, "Out-of-vocabulary token ID (%ld) passed to generateNextTokenIDMask", v21, 0xCu);
      MEMORY[0x1AC57DBF0](v21, -1, -1);
    }

    lazy protocol witness table accessor for type GuidedGenerationError and conformance GuidedGenerationError();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
    v23 = v36;
LABEL_28:
    pthread_mutex_unlock(*(v23 + 16));
  }

  else
  {
    v8 = 0;
LABEL_16:
    Array<A>.hashValue.getter();

    pthread_mutex_unlock(*(v36 + 16));
  }

  return v8;
}

uint64_t specialized RecognizerGuidedGenerationConstraints.possiblyDeterministicTokens(follow:)(uint64_t a1)
{
  v4 = type metadata accessor for TerminalSymbol(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 56;
  if ((*(v1 + 25) & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = *v1;
  outlined init with copy of GuidedGenerationTokenizer(*(v1[2] + 32) + 64, v26);
  v9 = v27;
  v10 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v11 = (*(v10 + 56))(v9, v10);
  v12 = specialized RecognizerGuidedGenerationConstraints.TokenRecognizerManager.tokenRecognizerIndex(following:vocabularySize:)(a1, v11, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  __swift_destroy_boxed_opaque_existential_0(v26);
  if (v2)
  {
    return v13 & 1;
  }

  v14 = *(v8 + 16);
  pthread_mutex_lock(*(v14 + 16));
  result = swift_beginAccess();
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v16 = *(v8 + 24);
    if (v12 < *(v16 + 16))
    {
      v17 = *(v16 + 16 * v12 + 32);
      v18 = *(v14 + 16);

      pthread_mutex_unlock(v18);
      if (*(v17 + 56))
      {
        v29 = EarleyRecognizer.nextValidTerminalsWithCacheKey()();
        rawValue = v29.nextValidTerminals._rawValue;
      }

      else
      {
        rawValue = MEMORY[0x1E69E7CC0];
      }

      if (rawValue[2] > 1uLL || specialized Collection<>.containsCharacterSetTerminal()(rawValue))
      {
LABEL_10:

LABEL_11:
        v13 = 0;
        return v13 & 1;
      }

      v20 = rawValue[2];
      if (v20)
      {
        _s19TokenGenerationCore14TerminalSymbolOWOcTm_1(rawValue + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v20 - 1), v7, type metadata accessor for TerminalSymbol);

        if (TerminalSymbol.contains(_:)(32))
        {
          v21 = *(v17 + 56);
          if (v21)
          {
            v21 = EarleyRecognizer.childRecognizer(consumingString:)(32, 0xE100000000000000);
          }

          v22 = *(v17 + 32);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMd, &_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMR);
          swift_initStackObject();

          if (*(specialized TokenGrammarRecognizer.init(inputRecognizer:vocabManager:lastConsumedTokenID:)(v21, v22, 0, 1) + 56))
          {
            v30 = EarleyRecognizer.nextValidTerminalsWithCacheKey()();
            v23 = v30.nextValidTerminals._rawValue;
          }

          else
          {

            v23 = MEMORY[0x1E69E7CC0];
          }

          if (v23[2] <= 1uLL)
          {
            v24 = specialized Collection<>.containsCharacterSetTerminal()(v23);

            outlined destroy of VocabularyManager.PrefixLookup(v7, type metadata accessor for TerminalSymbol);
            v13 = !v24;
            return v13 & 1;
          }

          outlined destroy of VocabularyManager.PrefixLookup(v7, type metadata accessor for TerminalSymbol);
          goto LABEL_10;
        }

        outlined destroy of VocabularyManager.PrefixLookup(v7, type metadata accessor for TerminalSymbol);
      }

      else
      {
      }

      v13 = 1;
      return v13 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized RecognizerGuidedGenerationConstraints.nextTokenIDMaskComputation(follow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized RecognizerGuidedGenerationConstraints.possiblyDeterministicTokens(follow:)(a1);
  if (!v3)
  {
    if (result)
    {
      result = specialized RecognizerGuidedGenerationConstraints.generateNextTokenIDMask(from:)(a1, v13);
      v7 = v14;
      v8 = v13[1];
      v9 = v13[2];
      *a2 = v13[0];
      *(a2 + 16) = v8;
      *(a2 + 32) = v9;
      *(a2 + 48) = v7;
    }

    else
    {
      v10 = swift_allocObject();
      v11 = *(v2 + 16);
      *(v10 + 16) = *v2;
      *(v10 + 32) = v11;
      *(v10 + 48) = *(v2 + 32);
      *(v10 + 64) = *(v2 + 48);
      *(v10 + 72) = a1;
      v12 = swift_allocObject();
      *(v12 + 16) = partial apply for specialized closure #1 in RecognizerGuidedGenerationConstraints.nextTokenIDMaskComputation(follow:);
      *(v12 + 24) = v10;
      *a2 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> (@out TokenIDMaskResponse, @error @owned Error);
      *(a2 + 8) = v12;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      *(a2 + 40) = xmmword_1A8FCBAD0;
      outlined init with copy of (String, Any)(v2, v13, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsVyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAEGGMd, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsVyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAEGGMR);
    }
  }

  return result;
}

uint64_t specialized RecognizerGuidedGenerationConstraints.generateNextTokenIDMask(from:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2;
  v7 = *v2;
  v8 = *(v2[2] + 32);
  outlined init with copy of GuidedGenerationTokenizer(v8 + 64, v50);
  v9 = *&v50[24];
  __swift_project_boxed_opaque_existential_1(v50, *&v50[24]);
  v10 = (*(*(&v9 + 1) + 56))(v9, *(&v9 + 1));
  v11 = specialized RecognizerGuidedGenerationConstraints.TokenRecognizerManager.tokenRecognizerIndex(following:vocabularySize:)(a1, v10, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v13 = v12;
  result = __swift_destroy_boxed_opaque_existential_0(v50);
  if (v3)
  {
    return result;
  }

  pthread_mutex_lock(*(*(v7 + 16) + 16));
  swift_beginAccess();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = *(v7 + 24);
  if (v11 >= *(v15 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v46 = a1;
  v54 = a2;
  v47 = v11;
  v16 = *(v15 + 16 * v11 + 32);
  v17 = *(*(&v9 + 1) + 16);

  pthread_mutex_unlock(v17);
  v18 = *(v8 + 112);
  v19 = v4[1];
  v7 = v4[4];
  v20 = *(v4 + 40);
  v21 = *(v4 + 24);

  LOBYTE(v7) = specialized SpaceLookaheadMaskGenerator.nextLogitMask(from:with:stopTokenIDs:leftContextCacheKey:maskCache:numParallelTasks:)(v50, v16, v8, v18, v13, 0, v19, v7, v20, v21);

  v52 = *v50;
  *v53 = *&v50[16];
  *&v53[9] = *&v50[25];
  if (!*&v50[8])
  {
    if (one-time initialization token for guided == -1)
    {
LABEL_6:
      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Log.guided);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v50 = v45;
        *v25 = 136642819;
        v26 = MEMORY[0x1AC57C2C0](v46, MEMORY[0x1E69E6530]);
        v28 = v7;
        v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v50);

        *(v25 + 4) = v7;
        LOBYTE(v7) = v28;
        _os_log_impl(&dword_1A8E85000, v23, v24, "Generated an empty mask after %{sensitive}s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x1AC57DBF0](v45, -1, -1);
        MEMORY[0x1AC57DBF0](v25, -1, -1);
      }

      goto LABEL_9;
    }

LABEL_21:
    swift_once();
    goto LABEL_6;
  }

LABEL_9:
  if ((*(v4 + 25) & v7 & 1) == 0)
  {
    outlined init with copy of GuidedGenerationTokenizer(v8 + 64, v50);
    v33 = *&v50[32];
    v32 = *&v50[24];
    __swift_project_boxed_opaque_existential_1(v50, *&v50[24]);
    v34 = (*(v33 + 56))(v32, v33);

    v48 = v52;
    v35 = *v53;
    LOBYTE(v32) = v53[8];
    v36 = *&v53[16];
    v37 = v53[24];
    result = __swift_destroy_boxed_opaque_existential_0(v50);
    v38 = v54;
    *v54 = v48;
    v38[2] = v35;
    v38[3] = v32 & 1;
    v38[4] = v36;
    v38[5] = v37 & 1 | 0x8000000000000000;
    v38[6] = v34;
    return result;
  }

  v29 = specialized RecognizerGuidedGenerationConstraints.performDeterministicRunLookaheadFallback(nextMask:recognizerIndex:)(v50, &v52, v47);
  v31 = v30;

  outlined destroy of ContiguousBitSet(&v52);
  v39 = *v50;
  v40 = v50[24];
  v41 = *&v50[32];
  v42 = v50[40];
  v43 = v51;
  if (v29)
  {
    v44 = v54;
    if (*(v31 + 16))
    {

      *v44 = v31;
      *(v44 + 8) = 0u;
      *(v44 + 24) = 0u;
      *(v44 + 40) = 0u;
      return result;
    }

    v49 = *&v50[8];
  }

  else
  {
    v49 = *&v50[8];

    v44 = v54;
  }

  *v44 = v39;
  *(v44 + 8) = v49;
  *(v44 + 3) = v40;
  *(v44 + 4) = v41;
  *(v44 + 5) = v42 | 0x8000000000000000;
  *(v44 + 6) = v43;
  return result;
}

uint64_t specialized RecognizerGuidedGenerationConstraints.generateNextTokenIDMask(from:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v2;
  v11 = *(v2[2] + 32);
  outlined init with copy of GuidedGenerationTokenizer((v11 + 8), &v82);
  v12 = v85;
  v13 = v86;
  __swift_project_boxed_opaque_existential_1(&v82, v85);
  v14 = (v13[7])(v12, v13);
  v15 = specialized RecognizerGuidedGenerationConstraints.TokenRecognizerManager.tokenRecognizerIndex(following:vocabularySize:)(a1, v14, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  result = __swift_destroy_boxed_opaque_existential_0(&v82);
  if (!v3)
  {
    v69 = a1;
    v88 = v11;
    v17 = *(v10 + 16);
    pthread_mutex_lock(*(v17 + 16));
    swift_beginAccess();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v18 = *(v10 + 24);
      if (v15 >= *(v18 + 16))
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v68 = 0;
      v19 = *(v18 + 16 * v15 + 32);
      v20 = *(v17 + 16);

      pthread_mutex_unlock(v20);
      a1 = *(v88 + 112);
      v4 = *(v88 + 88);
      v21 = *(v88 + 96);
      __swift_project_boxed_opaque_existential_1((v88 + 64), v4);
      v22 = *(v21 + 56);

      v71 = a1;

      v12 = v22(v4, v21);
      v84 = 0;
      LOBYTE(v85) = 1;
      v86 = 0;
      v87 = 1;
      v82 = MEMORY[0x1E69E7CC0];
      v83 = 0;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v67 = a2;
      if (v12)
      {
        v23 = 0;
        v24 = v71;
        v25 = v71 + 4;
        v26 = MEMORY[0x1E69E7CC0];
        do
        {
          v28 = v24[2];
          v29 = v25;
          while (v28)
          {
            v30 = *v29++;
            --v28;
            if (v30 == v23)
            {
              goto LABEL_10;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v77 = v26;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 16) + 1, 1);
            v24 = v71;
            v26 = v77;
          }

          v4 = *(v26 + 16);
          v27 = *(v26 + 24);
          if (v4 >= v27 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v4 + 1, 1);
            v24 = v71;
            v26 = v77;
          }

          *(v26 + 16) = v4 + 1;
          *(v26 + 8 * v4 + 32) = v23;
LABEL_10:
          ++v23;
        }

        while (v23 != v12);
      }

      else
      {
        v26 = MEMORY[0x1E69E7CC0];
      }

      v70 = v19;
      v32 = specialized TokenGrammarRecognizer.accepts(tokenIDs:spaceLookAhead:)(v26, 0);

      v33 = *(v32 + 2);
      v66 = v32;
      if (!v33)
      {
        v12 = MEMORY[0x1E69E7CC0];
LABEL_35:

        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
        v74 = v43;
        v44 = lazy protocol witness table accessor for type [Int] and conformance [A]();
        v75 = v44;
        v72 = v12;
        ContiguousBitSet.init(_:)(&v72, &v77);
        v72 = v77;
        v73 = v78;
        LOBYTE(v74) = v79;
        v75 = v80;
        v76 = v81;
        ContiguousBitSet.formUnion(_:)(&v72);

        if (*(v70 + 56))
        {
          v45 = EarleyRecognizer.fullMatch.getter();
          v4 = v88;
          a2 = v69;
          if (v45)
          {
            v74 = v43;
            v75 = v44;
            v72 = v71;
            ContiguousBitSet.init(_:)(&v72, &v77);
            v72 = v77;
            v73 = v78;
            LOBYTE(v74) = v79;
            v75 = v80;
            v76 = v81;
            ContiguousBitSet.formUnion(_:)(&v72);
          }

          else
          {
          }
        }

        else
        {

          v4 = v88;

          a2 = v69;
        }

        v12 = v82;
        a1 = v83;
        v46 = v84;
        v88 = v85;
        v47 = v86;
        v48 = v87;
        if (v83)
        {
          goto LABEL_46;
        }

        v66 = v87;
        v69 = v86;
        v71 = v84;
        if (one-time initialization token for guided == -1)
        {
LABEL_43:
          v49 = type metadata accessor for Logger();
          __swift_project_value_buffer(v49, static Log.guided);

          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v65 = v12;
            v53 = v52;
            v54 = swift_slowAlloc();
            v82 = v54;
            *v53 = 136642819;
            v55 = MEMORY[0x1AC57C2C0](a2, MEMORY[0x1E69E6530]);
            v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v82);

            *(v53 + 4) = v57;
            _os_log_impl(&dword_1A8E85000, v50, v51, "Generated an empty mask after %{sensitive}s", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v54);
            MEMORY[0x1AC57DBF0](v54, -1, -1);
            v58 = v53;
            v12 = v65;
            MEMORY[0x1AC57DBF0](v58, -1, -1);
          }

          v46 = v71;
          v47 = v69;
          v48 = v66;
LABEL_46:
          outlined init with copy of GuidedGenerationTokenizer(v4 + 64, &v82);
          v59 = v85;
          v60 = v86;
          __swift_project_boxed_opaque_existential_1(&v82, v85);
          v61 = (v60[7])(v59, v60);

          result = __swift_destroy_boxed_opaque_existential_0(&v82);
          v62 = v67;
          *v67 = v12;
          v62[1] = a1;
          v63 = v88;
          v62[2] = v46;
          v62[3] = v63;
          v62[4] = v47;
          v62[5] = v48 | 0x8000000000000000;
          v62[6] = v61;
          return result;
        }

LABEL_53:
        swift_once();
        goto LABEL_43;
      }

      a1 = (v32 + 32);
      v12 = MEMORY[0x1E69E7CC0];
      a2 = 0xE000000000000000;
      while (1)
      {
        v35 = *a1++;
        v34 = v35;
        VocabularyManager.prefixLookUp.getter(v9);
        v36 = v9[10];

        outlined destroy of VocabularyManager.PrefixLookup(v9, type metadata accessor for VocabularyManager.PrefixLookup);
        if ((v35 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v34 >= *(v36 + 16))
        {
          goto LABEL_49;
        }

        v37 = v36 + 16 * v34;
        v4 = *(v37 + 32);
        v38 = *(v37 + 40);

        if (v4)
        {
          v39 = 0;
        }

        else
        {
          v39 = v38 == 0xE000000000000000;
        }

        if (v39)
        {
        }

        else
        {
          v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v40 & 1) == 0)
          {
            v41 = swift_isUniquelyReferenced_nonNull_native();
            v77 = v12;
            if ((v41 & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1);
              v12 = v77;
            }

            v4 = *(v12 + 16);
            v42 = *(v12 + 24);
            if (v4 >= v42 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v4 + 1, 1);
              v12 = v77;
            }

            *(v12 + 16) = v4 + 1;
            *(v12 + 8 * v4 + 32) = v34;
          }
        }

        if (!--v33)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
    }

    __break(1u);
    goto LABEL_51;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> (@out TokenIDMaskResponse, @error @owned Error)(uint64_t a1, void (*a2)(void))
{
  a2();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t specialized RecognizerGuidedGenerationConstraints.performDeterministicRunLookaheadFallback(nextMask:recognizerIndex:)(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = *v6;
  v11 = *(*v6 + 16);
  pthread_mutex_lock(*(v11 + 16));
  swift_beginAccess();
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_100;
  }

  v12 = *(v10 + 24);
  if (*(v12 + 16) <= a3)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:

    v106 = *(v10 + 16);
    if (v106)
    {
      *&v132 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v106, 0);
      v107 = v132;
      v108 = *(v132 + 16);
      v109 = 32;
      do
      {
        v110 = *(v10 + v109);
        *&v132 = v107;
        v111 = *(v107 + 24);
        if (v108 >= v111 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v111 > 1), v108 + 1, 1);
          v107 = v132;
        }

        *(v107 + 16) = v108 + 1;
        *(v107 + 8 * v108 + 32) = v110;
        v109 += 16;
        ++v108;
        --v106;
      }

      while (v106);
    }

    *v125 = v119;
    v125[1] = v120;
    v125[2] = v121;
    *(v125 + 24) = v114 & 1;
    v125[4] = v112;
    *(v125 + 40) = v113 & 1;
    result = 1;
    v125[6] = v122;
    return result;
  }

  v125 = a1;
  v13 = *(v12 + 16 * a3 + 32);
  v14 = *(v11 + 16);

  pthread_mutex_unlock(v14);
  v15 = *(v13 + 32);

  v123 = a2;
  _s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV013selectLongestA6Prefix07allowedA3IDs12vocabManagerAA16ContiguousBitSetVAH_AA010VocabularyM0CtFAA06EarleyD0C_AA27SpaceLookaheadMaskGeneratorVyALGTt2B5(a2, v15, &v134);

  v127 = v13;
  outlined init with copy of GuidedGenerationTokenizer(*(v13 + 32) + 64, &v132);
  v16 = *&v133[8];
  v17 = *&v133[16];
  __swift_project_boxed_opaque_existential_1(&v132, *&v133[8]);
  v18 = (*(v17 + 56))(v16, v17);
  if (v18 < 0)
  {
    goto LABEL_101;
  }

  *v140 = 0;
  v139 = MEMORY[0x1E69E7CC0];
  v140[8] = 1;
  *&v140[16] = 0;
  v140[24] = 1;
  ContiguousBitSet.formUnion(_:)(0, v18);

  result = __swift_destroy_boxed_opaque_existential_0(&v132);
  v20 = *(&v134 + 1);
  v126 = v5;
  if (*(&v134 + 1) != 1)
  {
    v27 = v134;
    v141._rawValue = v135;
    v28 = v136;
    v29 = v137;
    v30 = v138;
    outlined init with copy of GuidedGenerationTokenizer(*(v127 + 32) + 64, &v139);
    v31 = *&v140[8];
    v32 = *&v140[16];
    __swift_project_boxed_opaque_existential_1(&v139, *&v140[8]);
    v33 = (*(v32 + 56))(v31, v32);
    *v125 = v27;
    v125[1] = v20;
    v125[2] = v141._rawValue;
    *(v125 + 24) = v28;
    v125[4] = v29;
    *(v125 + 40) = v30;
    v125[6] = v33;
    __swift_destroy_boxed_opaque_existential_0(&v139);

    return 0;
  }

  if (v136)
  {
    __break(1u);
    return result;
  }

  v21 = v135;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A8FC9400;
  v141._rawValue = v22;
  *(v22 + 32) = v21;
  pthread_mutex_lock(*(v11 + 16));
  v23 = *(v10 + 24);
  if (*(v23 + 16) <= a3)
  {
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v24 = *(v23 + 16 * a3 + 32);
  v25 = *(v11 + 16);

  pthread_mutex_unlock(v25);
  v115 = v6;
  if (!*(v24 + 56) || (EarleyRecognizer.fullMatch.getter() & 1) == 0)
  {
    v5 = v6[24];
    pthread_mutex_lock(*(v11 + 16));
    v34 = specialized RecognizerGuidedGenerationConstraints.TokenRecognizerManager.childRecognizerIndexInternal(for:tokenID:)(a3, v21, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
    pthread_mutex_unlock(*(v11 + 16));
    pthread_mutex_lock(*(v11 + 16));
    if ((v34 & 0x8000000000000000) != 0)
    {
LABEL_68:
      __break(1u);
    }

    else
    {
      v35 = &v139;
      while (1)
      {
        v36 = *(v10 + 24);
        if (v34 >= *(v36 + 16))
        {
          break;
        }

        v37 = *(v36 + 16 * v34 + 32);
        v38 = *(v11 + 16);

        pthread_mutex_unlock(v38);

        v39 = *(v37 + 32);
        v40 = *(v39 + 112);

        v41 = specialized SpaceLookaheadMaskGenerator.nextLogitMask(from:with:stopTokenIDs:leftContextCacheKey:maskCache:numParallelTasks:)(&v132, v37, v39, v40, 0, 1, 0, 0, 1, v5);

        v139 = v132;
        *v140 = *v133;
        *&v140[9] = *&v133[9];
        v26 = *(&v132 + 1);
        v128 = v132;
        if (*(&v132 + 1) != 1 && (v41 & 1) == 0)
        {
          goto LABEL_24;
        }

        v42 = *(v37 + 32);

        _s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV013selectLongestA6Prefix07allowedA3IDs12vocabManagerAA16ContiguousBitSetVAH_AA010VocabularyM0CtFAA06EarleyD0C_AA27SpaceLookaheadMaskGeneratorVyALGTt2B5(&v139, v42, &v132);

        v43 = *v133;
        v134 = v132;
        v135 = *v133;
        v136 = v133[8];
        v137 = *&v133[16];
        v138 = v133[24];
        if (*(&v132 + 1) != 1)
        {
          goto LABEL_24;
        }

        if (v133[8])
        {
          __break(1u);
          goto LABEL_116;
        }

        outlined destroy of ContiguousBitSet(&v139);
        rawValue = v141._rawValue;
        v46 = *(v141._rawValue + 2);
        v45 = *(v141._rawValue + 3);
        if (v46 >= v45 >> 1)
        {
          rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v141._rawValue);
        }

        rawValue[2] = v46 + 1;
        v141._rawValue = rawValue;
        rawValue[v46 + 4] = v43;
        if (*(v37 + 56) && (EarleyRecognizer.fullMatch.getter() & 1) != 0)
        {
          v128 = 0;
          v26 = 0;
          goto LABEL_24;
        }

        pthread_mutex_lock(*(v11 + 16));
        v34 = specialized RecognizerGuidedGenerationConstraints.TokenRecognizerManager.childRecognizerIndexInternal(for:tokenID:)(v34, v43, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
        pthread_mutex_unlock(*(v11 + 16));
        pthread_mutex_lock(*(v11 + 16));
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }
      }
    }

    __break(1u);
LABEL_70:

LABEL_72:

    v5 = v122;
    LOBYTE(v35) = v113;
    LOBYTE(v34) = v114;
    if (one-time initialization token for guided == -1)
    {
      goto LABEL_73;
    }

    goto LABEL_118;
  }

  v128 = 0;
  v26 = 0;
LABEL_24:
  v47 = *(v127 + 48);
  outlined init with copy of GuidedGenerationTokenizer(*(v127 + 32) + 64, v129);
  a3 = v130;
  v48 = v131;
  __swift_project_boxed_opaque_existential_1(v129, v130);
  v49 = *(v48 + 56);
  outlined init with copy of ContiguousBitSet(v123, &v132);
  v50 = v49(a3, v48);
  v119 = *v123;
  v120 = *(v123 + 8);
  v121 = *(v123 + 16);
  v122 = v50;
  LOBYTE(a3) = *(v123 + 24);
  v6 = *(v123 + 32);
  LOBYTE(v5) = *(v123 + 40);
  __swift_destroy_boxed_opaque_existential_0(v129);

  v51 = VocabularyManager.retokenize(tokenIDs:isFirstDecodedToken:)(v141, v47);
  if (v52)
  {

    goto LABEL_26;
  }

  v124 = v51;

  if (!v124)
  {

LABEL_26:

    if (one-time initialization token for guided == -1)
    {
LABEL_27:
      v53 = type metadata accessor for Logger();
      __swift_project_value_buffer(v53, static Log.guided);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v54, v55))
      {
LABEL_30:

        result = 0;
        *v125 = v119;
        v125[1] = v120;
        v125[2] = v121;
        *(v125 + 24) = a3 & 1;
        v125[4] = v6;
        *(v125 + 40) = v5 & 1;
        v125[6] = v122;
        return result;
      }

      v56 = a3;
      a3 = swift_slowAlloc();
      *a3 = 0;
      v57 = "Deterministic run retokenization failed. Emitting a regular mask.";
LABEL_29:
      _os_log_impl(&dword_1A8E85000, v54, v55, v57, a3, 2u);
      v58 = a3;
      LOBYTE(a3) = v56;
      MEMORY[0x1AC57DBF0](v58, -1, -1);
      goto LABEL_30;
    }

LABEL_111:
    swift_once();
    goto LABEL_27;
  }

  if ((specialized TokenGrammarRecognizer.isValidDeterministicRun(tokenRun:)(v124) & 1) == 0)
  {

    if (one-time initialization token for guided != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Log.guided);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v54, v55))
    {
      goto LABEL_30;
    }

    v56 = a3;
    a3 = swift_slowAlloc();
    *a3 = 0;
    v57 = "isValidDeterministicRun check failed. Emitting a regular mask.";
    goto LABEL_29;
  }

  v59 = v128;
  if (v128)
  {
    if (v26 >= *(v115 + 6))
    {

      if (one-time initialization token for guided != -1)
      {
LABEL_114:
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      __swift_project_value_buffer(v73, static Log.guided);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v54, v55))
      {
        goto LABEL_30;
      }

      v56 = a3;
      a3 = swift_slowAlloc();
      *a3 = 0;
      v57 = "nextMaskResult has too many valid tokens to check stability. Emitting a regular mask.";
      goto LABEL_29;
    }

    v112 = v6;
    v113 = v5;
    v114 = a3;
    v60 = 0;
    v61 = 0;
LABEL_37:
    v62 = *(v59 + 16);
    if (v61 > v62)
    {
      v62 = v61;
    }

    v63 = 0x200000000000000;
    if (v61 > 0x200000000000000)
    {
      v63 = v61;
    }

    v6 = ((v61 << 6) - 64);
    v64 = v61;
    do
    {
      if (v62 == v64)
      {
        v117 = v60;

        if (one-time initialization token for guided != -1)
        {
          swift_once();
        }

        v74 = type metadata accessor for Logger();
        __swift_project_value_buffer(v74, static Log.guided);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.info.getter();
        LOBYTE(v5) = v113;
        v6 = v112;
        if (os_log_type_enabled(v75, v76))
        {
          v77 = a3;
          a3 = swift_slowAlloc();
          *a3 = 134217984;
          *(a3 + 4) = v117;
          _os_log_impl(&dword_1A8E85000, v75, v76, "Run Stable after checking %ld tokens", a3, 0xCu);
          v78 = a3;
          LOBYTE(a3) = v77;
          MEMORY[0x1AC57DBF0](v78, -1, -1);
        }

        goto LABEL_67;
      }

      if ((v61 & 0x8000000000000000) != 0)
      {
        goto LABEL_109;
      }

      if (v63 == v64)
      {
        goto LABEL_110;
      }

      v65 = *(v59 + 8 * v64++ + 32);
      v6 += 64;
    }

    while (!v65);
    while (1)
    {
      v66 = __clz(__rbit64(v65));
      v67 = &v6[v66];
      if (__OFADD__(v6, v66))
      {
        __break(1u);
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      v116 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        goto LABEL_113;
      }

      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A8FC9400;
      *(inited + 32) = v67;
      *&v132 = v124;

      specialized Array.append<A>(contentsOf:)(inited);
      v69 = v132;

      v70 = VocabularyManager.retokenize(tokenIDs:isFirstDecodedToken:)(v69, v47);
      v126 = v71;
      if (v71)
      {
        goto LABEL_70;
      }

      v5 = v70;

      if (!v5)
      {

        goto LABEL_72;
      }

      v59 = v128;
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v5, v69) & 1) == 0)
      {
        break;
      }

      v65 &= v65 - 1;

      v61 = v64;
      LOBYTE(a3) = v114;
      v60 = v116;
      if (!v65)
      {
        goto LABEL_37;
      }
    }

    if (one-time initialization token for guided != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    __swift_project_value_buffer(v83, static Log.guided);

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *&v132 = v118;
      *v86 = 136643075;
      v87 = MEMORY[0x1AC57C2C0](v5, MEMORY[0x1E69E6530]);
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, &v132);

      *(v86 + 4) = v89;
      *(v86 + 12) = 2085;
      v90 = MEMORY[0x1AC57C2C0](v69, MEMORY[0x1E69E6530]);
      v92 = v91;

      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, &v132);

      *(v86 + 14) = v93;
      _os_log_impl(&dword_1A8E85000, v84, v85, "Lookahead tokenization stability check failed. retokenizedTokenRunWithNextAcceptedToken: %{sensitive}s != tokenRunWithNextAcceptedToken: %{sensitive}s", v86, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC57DBF0](v118, -1, -1);
      MEMORY[0x1AC57DBF0](v86, -1, -1);
    }

    else
    {
    }

    LOBYTE(v34) = v114;
    if (*(v124 + 16) < 2uLL)
    {

      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v34 = swift_slowAlloc();
        *v34 = 134217984;
        *(v34 + 4) = v116;
        _os_log_impl(&dword_1A8E85000, v103, v104, "Failed lookahead tokenizer stability check after checking %ld tokens. Run too short. Emitting a regular mask.", v34, 0xCu);
        v105 = v34;
        LOBYTE(v34) = v114;
        MEMORY[0x1AC57DBF0](v105, -1, -1);
      }

      result = 0;
      *v125 = v119;
      v125[1] = v120;
      v125[2] = v121;
      *(v125 + 24) = v34 & 1;
      v125[4] = v112;
      *(v125 + 40) = v113 & 1;
      v125[6] = v122;
      return result;
    }

    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      *(v34 + 4) = v116;
      _os_log_impl(&dword_1A8E85000, v94, v95, "Failed lookahead tokenizer stability check after checking %ld tokens. Droping last token in the run", v34, 0xCu);
      MEMORY[0x1AC57DBF0](v34, -1, -1);
    }

    v96 = v124;
    v35 = *(v124 + 16);
    v10 = MEMORY[0x1E69E7CC0];
    if (!v35)
    {
      goto LABEL_102;
    }

    v97 = 0;
    while (v97 < *(v96 + 16))
    {
      v98 = *(v5 + 16);
      if (v97 == v98)
      {
        goto LABEL_102;
      }

      if (v97 >= v98)
      {
        goto LABEL_117;
      }

      v99 = *(v124 + 32 + 8 * v97);
      if (v99 == *(v5 + 32 + 8 * v97))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v132 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
          v10 = v132;
        }

        v102 = *(v10 + 16);
        v101 = *(v10 + 24);
        v34 = v102 + 1;
        v96 = v124;
        if (v102 >= v101 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1);
          v96 = v124;
          v10 = v132;
        }

        ++v97;
        *(v10 + 16) = v34;
        *(v10 + 16 * v102 + 32) = vdupq_n_s64(v99);
        if (v35 != v97)
        {
          continue;
        }
      }

      goto LABEL_102;
    }

LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    swift_once();
LABEL_73:
    v79 = type metadata accessor for Logger();
    __swift_project_value_buffer(v79, static Log.guided);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1A8E85000, v80, v81, "Failed to retokenize lookahead stability check. Emitting a regular mask.", v34, 2u);
      v82 = v34;
      LOBYTE(v34) = v114;
      MEMORY[0x1AC57DBF0](v82, -1, -1);
    }

    result = 0;
    *v125 = v119;
    v125[1] = v120;
    v125[2] = v121;
    *(v125 + 24) = v34 & 1;
    v125[4] = v112;
    *(v125 + 40) = v35 & 1;
    v125[6] = v5;
    return result;
  }

LABEL_67:

  *v125 = v119;
  v125[1] = v120;
  v125[2] = v121;
  *(v125 + 24) = a3 & 1;
  v125[4] = v6;
  *(v125 + 40) = v5 & 1;
  result = 1;
  v125[6] = v122;
  return result;
}

uint64_t _s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV013selectLongestA6Prefix07allowedA3IDs12vocabManagerAA16ContiguousBitSetVAH_AA010VocabularyM0CtFAA06EarleyD0C_AA27SpaceLookaheadMaskGeneratorVyALGTt2B5@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X8>)
{
  v3 = a1;
  if (*(a1 + 8) == 1)
  {
LABEL_26:
    v27 = *(v3 + 16);
    *a3 = *v3;
    *(a3 + 16) = v27;
    *(a3 + 25) = *(v3 + 25);
    return outlined init with copy of ContiguousBitSet(v3, v37);
  }

  v6 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF19TokenGenerationCore16ContiguousBitSetV_Si7tokenID_SS0J4Textts5NeverOTB504_s19de94Core016RecognizerGuidedB11ConstraintsV013selectLongestA6Prefix07allowedA3IDs12vocabManagerAA16ghi32VAH_AA010VocabularyM0CtFSi7tokenK18_SS0R4TexttSiXEfU_AF010VocabularyZ0CTf1cn_nTf4ng_n(v3, a2);

  v7 = v6[2];
  if (!v7)
  {

    if (one-time initialization token for guided != -1)
    {
LABEL_34:
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.guided);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1A8E85000, v13, v14, "allowedTokenIDs is empty. Something is likely wrong with the tokenizer", v15, 2u);
      MEMORY[0x1AC57DBF0](v15, -1, -1);
    }

    goto LABEL_26;
  }

  v35 = v3;
  v36 = a3;
  v8 = v6[4];
  v9 = v6[5];
  v10 = v6[6];

  if (v7 == 1)
  {
    v11 = v8;
    goto LABEL_21;
  }

  v16 = v6 + 6;
  v17 = 1;
  while (2)
  {
    v34 = v8;
    v18 = v9;
    v19 = v10;
    v3 = &v16[3 * v17];
    a3 = v17;
    while (1)
    {
      if (a3 >= v6[2])
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v11 = *(v3 - 16);
      v9 = *(v3 - 8);
      v10 = *v3;

      v21 = String.count.getter();
      if (v21 == String.count.getter())
      {
        break;
      }

      v20 = String.count.getter();
      if (v20 < String.count.getter())
      {
        goto LABEL_18;
      }

LABEL_12:
      ++a3;

      v3 += 24;
      if (v7 == a3)
      {
        v11 = v34;
        goto LABEL_21;
      }
    }

    if (v18 == v9 && v19 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:

    v17 = a3 + 1;
    v8 = v11;
    v16 = v6 + 6;
    if (v7 - 1 != a3)
    {
      continue;
    }

    break;
  }

LABEL_21:
  v22 = (v6 + 6);
  a3 = -v7;
  v3 = -1;
  while (v3 - v7 != -1)
  {
    if (++v3 >= v6[2])
    {
      goto LABEL_33;
    }

    v23 = v22 + 3;
    v25 = *(v22 - 1);
    v24 = *v22;

    v26._countAndFlagsBits = v25;
    v26._object = v24;
    LOBYTE(v25) = String.hasPrefix(_:)(v26);

    v22 = v23;
    if ((v25 & 1) == 0)
    {

      v3 = v35;
      a3 = v36;
      goto LABEL_26;
    }
  }

  if (one-time initialization token for guided != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Log.guided);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1A8E85000, v30, v31, "All allowedTokens are prefixes of the longest token. Picking the longest token.", v32, 2u);
    MEMORY[0x1AC57DBF0](v32, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1A8FC9400;

  *(v33 + 32) = v11;
  v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  v37[4] = lazy protocol witness table accessor for type [Int] and conformance [A]();
  v37[0] = v33;
  return ContiguousBitSet.init(_:)(v37, v36);
}

uint64_t TokenIDMask.init(vocabularySize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v4 = MEMORY[0x1E69E7CC0];
    result = ContiguousBitSet.formUnion(_:)(0, result);
    *a2 = v4;
    *(a2 + 8) = 0uLL;
    *(a2 + 24) = 1;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
    *(a2 + 48) = v2;
  }

  return result;
}

uint64_t specialized TokenGrammarRecognizer.isValidDeterministicRun(tokenRun:)(uint64_t a1)
{
  v3 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v53 - v5);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v53 - v9);
  v11 = *(a1 + 16);
  v12 = 1;
  if (!v11)
  {
    return v12 & 1;
  }

  v54 = v8;
  v13 = *(v1 + 56);
  v57 = v11 - 1;
  v14 = *(v1 + 32);
  v15 = a1 + 32;

  v16 = 0;
  v55 = v15;
  v56 = v11;
  v58 = v14;
  while (1)
  {
    v17 = *(v15 + 8 * v16);
    VocabularyManager.prefixLookUp.getter(v10);
    v18 = *(v10 + *(v3 + 52));

    outlined destroy of VocabularyManager.PrefixLookup(v10, type metadata accessor for VocabularyManager.PrefixLookup);
    if (!*(v18 + 16))
    {
      break;
    }

    v19 = MEMORY[0x1AC57CB60](*(v18 + 40), v17);
    v20 = -1 << *(v18 + 32);
    v21 = v19 & ~v20;
    if (((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      break;
    }

    v22 = ~v20;
    while (*(*(v18 + 48) + 8 * v21) != v17)
    {
      v21 = (v21 + 1) & v22;
      if (((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v42 = v54;
    VocabularyManager.prefixLookUp.getter(v54);
    v43 = *(v42 + *(v3 + 48));

    outlined destroy of VocabularyManager.PrefixLookup(v42, type metadata accessor for VocabularyManager.PrefixLookup);
    if (!*(v43 + 16) || (v44 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v45 & 1) == 0))
    {
LABEL_59:

      __break(1u);
      return result;
    }

    v46 = *(*(v43 + 56) + v44);

    if (!v13)
    {
      goto LABEL_51;
    }

    LODWORD(v59) = v46;
    BYTE4(v59) = 1;
    v47 = EarleyRecognizer.childRecognizer(consumingElement:)(&v59);

    if (!v47)
    {
      goto LABEL_51;
    }

    v61 = EarleyRecognizer.nextValidTerminalsWithCacheKey()();
    rawValue = v61.nextValidTerminals._rawValue;
    v49 = specialized Collection<>.containsCharacterSetTerminal()(v61.nextValidTerminals._rawValue);

    if (v49)
    {
LABEL_49:

LABEL_50:

      goto LABEL_51;
    }

    v50 = rawValue[2];

    if (v50 >= 2 || v57 == v16)
    {

LABEL_51:
      v12 = 0;
      return v12 & 1;
    }

    v13 = v47;
LABEL_44:
    ++v16;
    v15 = v55;
    if (v16 == v56)
    {

      v12 = 1;
      return v12 & 1;
    }
  }

LABEL_8:

  v23 = *(v58 + 112);
  v24 = *(v23 + 16);
  v25 = (v23 + 32);
  do
  {
    if (!v24)
    {
      VocabularyManager.prefixLookUp.getter(v6);
      v27 = v6[10];

      outlined destroy of VocabularyManager.PrefixLookup(v6, type metadata accessor for VocabularyManager.PrefixLookup);
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_56;
      }

      if (v17 >= *(v27 + 16))
      {
        goto LABEL_57;
      }

      v53 = v3;
      v28 = v27 + 16 * v17;
      v30 = *(v28 + 32);
      v29 = *(v28 + 40);

      if (v57 == v16)
      {
        v31 = specialized Sequence.dropLast(_:)(1, v30, v29);
        v32 = v31[2];
        if (v32)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v38 = specialized Collection.count.getter(v30, v29);
        if (v38)
        {
          v39 = v38;
          if (v38 < 1)
          {
            v31 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMR);
            v31 = swift_allocObject();
            v40 = _swift_stdlib_malloc_size(v31);
            v41 = v40 - 32;
            if (v40 < 32)
            {
              v41 = v40 - 29;
            }

            v31[2] = v39;
            v31[3] = 2 * (v41 >> 2);
          }

          v51 = specialized Sequence._copySequenceContents(initializing:)(&v59, (v31 + 4), v39, v30, v29);

          if (v51 != v39)
          {
            goto LABEL_58;
          }

          v32 = v31[2];
          if (v32)
          {
LABEL_16:
            v33 = 0;
            while (v33 < v31[2])
            {
              if (!v13)
              {
                goto LABEL_50;
              }

              LODWORD(v59) = *(v31 + v33 + 8);
              BYTE4(v59) = 0;
              v34 = EarleyRecognizer.childRecognizer(consumingElement:)(&v59);

              if (!v34)
              {
                goto LABEL_50;
              }

              v60 = EarleyRecognizer.nextValidTerminalsWithCacheKey()();
              v35 = v60.nextValidTerminals._rawValue;
              v36 = specialized Collection<>.containsCharacterSetTerminal()(v60.nextValidTerminals._rawValue);

              if (v36)
              {

                goto LABEL_50;
              }

              v37 = v35[2];

              if (v37 >= 2)
              {
                goto LABEL_49;
              }

              ++v33;
              v13 = v34;
              if (v32 == v33)
              {

                v13 = v34;
                goto LABEL_43;
              }
            }

            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }
        }

        else
        {

          v31 = MEMORY[0x1E69E7CC0];
          v32 = *(MEMORY[0x1E69E7CC0] + 16);
          if (v32)
          {
            goto LABEL_16;
          }
        }
      }

LABEL_43:
      v3 = v53;
      goto LABEL_44;
    }

    v26 = *v25++;
    --v24;
  }

  while (v26 != v17);
  if (!v13)
  {
    goto LABEL_51;
  }

  v12 = EarleyRecognizer.fullMatch.getter();

  return v12 & 1;
}

uint64_t specialized RecognizerGuidedGenerationConstraints.validateTokens(from:candidateTokenIDs:)(uint64_t a1, unint64_t a2)
{
  v6 = *v2;
  outlined init with copy of GuidedGenerationTokenizer(*(v2[2] + 32) + 64, v19);
  v7 = v20;
  v8 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v9 = (*(v8 + 56))(v7, v8);
  v10 = specialized RecognizerGuidedGenerationConstraints.TokenRecognizerManager.tokenRecognizerIndex(following:vocabularySize:)(a1, v9, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  __swift_destroy_boxed_opaque_existential_0(v19);
  if (v3)
  {
    return a2;
  }

  v11 = *(v6 + 16);
  pthread_mutex_lock(*(v11 + 16));
  result = swift_beginAccess();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v10 < *(*(v6 + 24) + 16))
  {
    v13 = *(v11 + 16);

    pthread_mutex_unlock(v13);
    v14 = *(a2 + 16);
    v15 = (a2 + 32);
    while (1)
    {
      v16 = v14;
      if (!v14)
      {
        break;
      }

      v17 = *v15++;
      a2 = v17;
      v18 = *(specialized TokenGrammarRecognizer.childRecognizer(consumingTokenID:)(v17) + 56);

      v14 = v16 - 1;
      if (v18)
      {
        goto LABEL_9;
      }
    }

    a2 = 0;
LABEL_9:

    return a2;
  }

  __break(1u);
  return result;
}

void specialized RecognizerGuidedGenerationConstraints.validate(tokenIDs:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *v2;
  outlined init with copy of GuidedGenerationTokenizer(*(v2[2] + 32) + 64, v16);
  v6 = v17;
  v7 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v8 = (*(v7 + 56))(v6, v7);
  v9 = specialized RecognizerGuidedGenerationConstraints.TokenRecognizerManager.tokenRecognizerIndex(following:vocabularySize:)(a1, v8, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  __swift_destroy_boxed_opaque_existential_0(v16);
  v10 = *(v5 + 16);
  pthread_mutex_lock(*(v10 + 16));
  swift_beginAccess();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v5 + 24);
    if (v9 < *(v11 + 16))
    {
      v12 = *(v11 + 16 * v9 + 32);
      v13 = *(v10 + 16);

      pthread_mutex_unlock(v13);
      if (*(v12 + 56))
      {
        v14 = EarleyRecognizer.fullMatch.getter();

        if (v14)
        {
          v15 = 0;
LABEL_8:
          *a2 = v15;
          return;
        }
      }

      else
      {
      }

      v15 = 1;
      goto LABEL_8;
    }
  }

  __break(1u);
  if (v11 == 1)
  {

    __break(1u);
  }

  __break(1u);
}

char *specialized TokenGrammarRecognizer.accepts(tokenIDs:spaceLookAhead:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  v5 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = (v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v38 - v8);
  v10 = *(v2 + 32);
  VocabularyManager.prefixLookUp.getter((v38 - v8));
  v11 = v9[10];

  outlined destroy of VocabularyManager.PrefixLookup(v9, type metadata accessor for VocabularyManager.PrefixLookup);
  v38[2] = v10;
  VocabularyManager.prefixLookUp.getter(v9);
  v40 = v5;
  v12 = *(v9 + *(v5 + 52));

  outlined destroy of VocabularyManager.PrefixLookup(v9, type metadata accessor for VocabularyManager.PrefixLookup);
  v13 = *(v3 + 56);
  if (!v13)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v15 = v13[5];
  v14 = v13[6];
  v46 = v13[4];
  v47 = v15;
  v48 = v14;
  v49 = MEMORY[0x1E69E7CC0];
  v50 = MEMORY[0x1E69E7CC0];
  if (*(v14 + 16))
  {
    goto LABEL_31;
  }

  v16 = *(a1 + 16);
  if (!v16)
  {

    v19 = MEMORY[0x1E69E7CC0];
LABEL_27:

    return v19;
  }

  v43 = a1 + 32;
  v17 = v12 + 56;
  v41 = v11 + 32;
  v38[1] = v13;

  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v20 = *(v43 + 8 * v18);
    if (*(v12 + 16))
    {
      v21 = MEMORY[0x1AC57CB60](*(v12 + 40), *(v43 + 8 * v18));
      v22 = -1 << *(v12 + 32);
      v23 = v21 & ~v22;
      if ((*(v17 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
      {
        v24 = ~v22;
        while (*(*(v12 + 48) + 8 * v23) != v20)
        {
          v23 = (v23 + 1) & v24;
          if (((*(v17 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v30 = v39;
        VocabularyManager.prefixLookUp.getter(v39);
        v31 = *(v30 + *(v40 + 48));

        outlined destroy of VocabularyManager.PrefixLookup(v30, type metadata accessor for VocabularyManager.PrefixLookup);
        if (!*(v31 + 16))
        {
          goto LABEL_32;
        }

        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
        if ((v33 & 1) == 0)
        {
          goto LABEL_32;
        }

        v34 = *(*(v31 + 56) + v32);

        v44 = v34;
        v45 = 1;
        if (!EarleyRecognizer.childRecognizer(consumingElement:)(&v44))
        {
          goto LABEL_6;
        }

LABEL_20:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
        }

        v36 = *(v19 + 2);
        v35 = *(v19 + 3);
        if (v36 >= v35 >> 1)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v19);
        }

        *(v19 + 2) = v36 + 1;
        *&v19[8 * v36 + 32] = v20;
        goto LABEL_6;
      }
    }

LABEL_12:
    if ((v20 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v20 >= *(v11 + 16))
    {
      goto LABEL_30;
    }

    v25 = (v41 + 16 * v20);
    v26 = *v25;
    v27 = v25[1];

    v28._countAndFlagsBits = v26;
    v28._object = v27;
    v29 = EarleyRecognizer.RecognizerValidatorCache.parse(string:skipFirst:)(v28, v42 & 1);

    if (v29)
    {
      goto LABEL_20;
    }

LABEL_6:
    if (++v18 == v16)
    {

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:

  __break(1u);
  return result;
}

uint64_t specialized SpaceLookaheadMaskGenerator.nextLogitMask(from:with:stopTokenIDs:leftContextCacheKey:maskCache:numParallelTasks:)(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, char a9, unsigned __int8 a10)
{
  LODWORD(v173) = a6;
  v157 = a4;
  v158 = a5;
  v170 = a3;
  v165 = a1;
  v12 = a10;
  v169 = type metadata accessor for CharacterSet();
  v13 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v168 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  MEMORY[0x1EEE9AC00](v15);
  v163 = (&v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v167 = (&v154 - v18);
  *&v174 = type metadata accessor for TerminalSymbol(0);
  v19 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v21 = (&v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v171 = &v154 - v23;
  v166 = a2;
  v161 = *(a2 + 56);
  v164 = v15;
  if (v161)
  {
    v201 = EarleyRecognizer.nextValidTerminalsWithCacheKey()();
    value = v201.cacheKey.value;
    rawValue = v201.nextValidTerminals._rawValue;
  }

  else
  {
    value = 0;
    v201.cacheKey.is_nil = 0;
    rawValue = 0;
  }

  if (rawValue)
  {
    v26 = rawValue;
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  v162 = a10 | (a7 == 0);
  v172 = v26;
  v160 = a7;
  if (a10 & 1 | (a7 == 0))
  {
    v159 = 0;
    v27 = 1;
  }

  else
  {
    v159 = 0;
    v27 = 1;
    if (rawValue != 0 && !v201.cacheKey.is_nil && (v173 & 1) == 0)
    {
      v156 = a10;
      Hasher.init()();
      MEMORY[0x1AC57CB80](value);
      MEMORY[0x1AC57CB80](v158);
      v198 = v176;
      v199 = v177;
      v200 = v178;
      v196 = v175[0];
      v197 = v175[1];
      v44 = Hasher.finalize()();
      v45 = a7;
      v46 = v166;
      v47 = *(v166 + 24);
      v48 = *(v47 + 16);

      pthread_mutex_lock(v48);
      *(v46 + 16) = 1;
      pthread_mutex_unlock(*(v47 + 16));
      v49 = *(v45 + 24);
      pthread_mutex_lock(*(v49 + 16));
      swift_beginAccess();
      v50 = *(v45 + 16);
      v51 = *(v50 + 16);
      v159 = v44;
      if (v51 && (v52 = specialized __RawDictionaryStorage.find<A>(_:)(v44), (v53 & 1) != 0))
      {
        v54 = *(v50 + 56) + 48 * v52;
        v55 = *v54;
        v173 = *(v54 + 8);
        v158 = *(v54 + 16);
        LODWORD(v155) = *(v54 + 24);
        v56 = *(v54 + 32);
        v57 = *(v54 + 40);
        v58 = *(v54 + 41);
      }

      else
      {
        v55 = 0;
        v173 = 0;
        v158 = 0;
        LODWORD(v155) = 0;
        v56 = 0;
        v57 = 0;
        v58 = 0;
      }

      swift_endAccess();
      pthread_mutex_unlock(*(v49 + 16));

      if (v55)
      {

        v134 = v165;
        v135 = v173;
        *v165 = v55;
        v134[1] = v135;
        v134[2] = v158;
        *(v134 + 24) = v155;
        v134[4] = v56;
        *(v134 + 40) = v57;
        return v58 & 1;
      }

      v27 = 0;
      v26 = v172;
      v12 = v156;
    }
  }

  LODWORD(v158) = v27;
  v28 = VocabularyManager.extractCandidates(nextValidTerminals:afterStartWord:)(&v190, v26, 0);
  v30 = v29;
  *&v175[0] = v190;
  *(v175 + 8) = v191;
  BYTE8(v175[1]) = v192;
  *&v176 = v193;
  BYTE8(v176) = v194;
  v195 = v28;
  v173 = *(v26 + 16);
  if (!v173)
  {
    v59 = 1;
    goto LABEL_28;
  }

  v155 = v29;
  v156 = v12;
  v31 = 0;
  v32 = v26 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v33 = (v13 + 32);
  v34 = (v13 + 8);
  v35 = v171;
  while (1)
  {
    if (v31 >= *(v172 + 16))
    {
      goto LABEL_137;
    }

    _s19TokenGenerationCore14TerminalSymbolOWOcTm_1(v32 + *(v19 + 72) * v31, v35, type metadata accessor for TerminalSymbol);
    _s19TokenGenerationCore14TerminalSymbolOWOcTm_1(v35, v21, type metadata accessor for TerminalSymbol);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 1) < 2)
    {
      v36 = v168;
      v37 = v21;
      v38 = v21;
      v39 = v19;
      v40 = v169;
      (*v33)(v168, v37, v169);
      v41 = CharacterSet.contains(_:)();
      v42 = v40;
      v19 = v39;
      v21 = v38;
      v35 = v171;
      (*v34)(v36, v42);
      outlined destroy of VocabularyManager.PrefixLookup(v35, type metadata accessor for TerminalSymbol);
      if (v41)
      {
        break;
      }

      goto LABEL_12;
    }

    if (EnumCaseMultiPayload)
    {
      outlined destroy of VocabularyManager.PrefixLookup(v35, type metadata accessor for TerminalSymbol);
      goto LABEL_12;
    }

    outlined destroy of VocabularyManager.PrefixLookup(v35, type metadata accessor for TerminalSymbol);
    if (*v21 == 32)
    {
      break;
    }

LABEL_12:
    if (v173 == ++v31)
    {
      v59 = 1;
      goto LABEL_27;
    }
  }

  v59 = specialized SpaceLookaheadMaskGenerator.performWhiteSpaceTokenLookAhead(from:vocabManager:stopTokenIDs:)(&v190, v166, v170);
  ContiguousBitSet.formUnion(_:)(&v190);

LABEL_27:
  v30 = v155;
LABEL_28:
  valid = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_SJs5NeverOTg5166_s19TokenGenerationCore27SpaceLookaheadMaskGeneratorV29generateValidSearchCandidates8prefixes12vocabManager05allowD6PrefixSaySiGShySSG_AA010VocabularyN0CSbtFSJSSXEfU_Tf1cn_n(v30);
  v61 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSJ_SaySJGTt0g5Tf4g_n(valid);

  v62 = *(v61 + 16);
  if (v62)
  {
    v63 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSJ_Tt1g5(*(v61 + 16), 0);
    v64 = specialized Sequence._copySequenceContents(initializing:)(&v190, v63 + 4, v62, v61);
    outlined consume of Set<NonTerminalSymbol>.Iterator._Variant(v190);
    if (v64 != v62)
    {
      __break(1u);
      goto LABEL_31;
    }
  }

  else
  {
LABEL_31:

    v63 = MEMORY[0x1E69E7CC0];
  }

  LODWORD(v169) = v59;
  v190 = v63;

  specialized MutableCollection<>.sort(by:)(&v190);
  v173 = 0;

  v65 = *(v190 + 2);
  v66 = MEMORY[0x1E69E7CC0];
  v171 = v190;
  if (v65)
  {
    v67 = (v190 + 40);
    while (2)
    {
      v68 = *(v67 - 1);
      v69 = *v67;
      v70 = v68 == 32 && v69 == 0xE100000000000000;
      if (v70 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_35;
      }

      v71 = v167;
      VocabularyManager.prefixLookUp.getter(v167);
      v72 = *v71;

      outlined destroy of VocabularyManager.PrefixLookup(v71, type metadata accessor for VocabularyManager.PrefixLookup);
      if (*(v72 + 16))
      {
        v73 = specialized __RawDictionaryStorage.find<A>(_:)(v68, v69);
        v75 = v74;

        if (v75)
        {
          v76 = *(*(v72 + 56) + 8 * v73);

          goto LABEL_46;
        }
      }

      else
      {
      }

      v76 = MEMORY[0x1E69E7CC0];
LABEL_46:
      v77 = *(v76 + 16);
      v78 = *(v66 + 2);
      v79 = v78 + v77;
      if (__OFADD__(v78, v77))
      {
        goto LABEL_140;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v79 <= *(v66 + 3) >> 1)
      {
        if (!*(v76 + 16))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v78 <= v79)
        {
          v81 = v78 + v77;
        }

        else
        {
          v81 = v78;
        }

        v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v81, 1, v66);
        if (!*(v76 + 16))
        {
LABEL_34:

          if (v77)
          {
            goto LABEL_141;
          }

          goto LABEL_35;
        }
      }

      v82 = *(v66 + 2);
      if ((*(v66 + 3) >> 1) - v82 < v77)
      {
        goto LABEL_142;
      }

      memcpy(&v66[8 * v82 + 32], (v76 + 32), 8 * v77);

      if (v77)
      {
        v83 = *(v66 + 2);
        v84 = __OFADD__(v83, v77);
        v85 = v83 + v77;
        if (v84)
        {
          goto LABEL_143;
        }

        *(v66 + 2) = v85;
      }

LABEL_35:
      v67 += 2;
      if (!--v65)
      {
        break;
      }

      continue;
    }
  }

  specialized static VocabularyManager.mergeSortedRanks(_:_:)(&v195, v66);

  specialized MutableCollection<>.sort(by:)(&v195);
  if (one-time initialization token for guided != -1)
  {
    goto LABEL_144;
  }

  while (1)
  {
    v86 = type metadata accessor for Logger();
    v87 = __swift_project_value_buffer(v86, static Log.guided);
    v171 = v195;

    v88 = v172;

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.info.getter();

    v91 = os_log_type_enabled(v89, v90);
    v168 = v87;
    if (v91)
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v190 = v93;
      *v92 = 134218243;
      *(v92 + 4) = *(v171 + 2);

      *(v92 + 12) = 2085;
      v94 = MEMORY[0x1AC57C2C0](v88, v174);
      v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, &v190);

      *(v92 + 14) = v96;
      _os_log_impl(&dword_1A8E85000, v89, v90, "Checking candidates: %ld with nextValidTerminals: %{sensitive}s", v92, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v93);
      MEMORY[0x1AC57DBF0](v93, -1, -1);
      MEMORY[0x1AC57DBF0](v92, -1, -1);
    }

    else
    {
    }

    v98 = v163;
    v97 = v164;
    VocabularyManager.prefixLookUp.getter(v163);
    v99 = *(v98 + *(v97 + 36));

    outlined destroy of VocabularyManager.PrefixLookup(v98, type metadata accessor for VocabularyManager.PrefixLookup);
    v100 = *(v171 + 2);
    if (!v100)
    {
      break;
    }

    v190 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v100, 0);
    v101 = v190;
    v102 = (v171 + 32);
    while (1)
    {
      v104 = *v102++;
      v103 = v104;
      if ((v104 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v103 >= *(v99 + 16))
      {
        goto LABEL_133;
      }

      v105 = *(v99 + 32 + 8 * v103);
      v190 = v101;
      v107 = *(v101 + 2);
      v106 = *(v101 + 3);
      if (v107 >= v106 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v106 > 1), v107 + 1, 1);
        v101 = v190;
      }

      *(v101 + 2) = v107 + 1;
      *&v101[8 * v107 + 32] = v105;
      if (!--v100)
      {

        goto LABEL_72;
      }
    }

    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
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
    swift_once();
  }

  v101 = MEMORY[0x1E69E7CC0];
LABEL_72:
  v108 = specialized TokenGrammarRecognizer.accepts(tokenIDs:spaceLookAhead:)(v101, 0);

  v170 = v108;
  v109 = *(v108 + 2);
  if (v109)
  {
    v110 = (v170 + 32);
    v112 = *(&v175[0] + 1);
    v111 = *&v175[0];
    v113 = *&v175[1];
    v114 = BYTE8(v175[1]);
    v115 = v176;
    v116 = BYTE8(v176);
    do
    {
      v118 = *v110++;
      v117 = v118;
      v119 = v118 + 63;
      if (v118 >= 0)
      {
        v119 = v117;
      }

      v120 = v119 >> 6;
      v121 = v117 - (v119 & 0xFFFFFFFFFFFFFFC0);
      v122 = *(v111 + 2);
      v84 = __OFSUB__(v120, v122);
      v123 = v120 - v122;
      if (v123 < 0 != v84)
      {
        if (v117 < -63)
        {
          goto LABEL_138;
        }

        v124 = 1 << v121;
        if (v121 >= 0)
        {
          v125 = 1 << v121;
        }

        else
        {
          v125 = 0;
        }

        if ((*&v111[8 * v120 + 32] & v125) != 0)
        {
          goto LABEL_74;
        }

        v173 = v115;
        *&v174 = v110;
      }

      else
      {
        if (v123 + 1 < 0)
        {
          goto LABEL_139;
        }

        v173 = v115;
        *&v174 = v110;
        specialized ContiguousArray.append<A>(contentsOf:)((v123 + 1), 0);
        v111 = *&v175[0];
        v124 = 1 << v121;
      }

      if (v121 >= 0)
      {
        v126 = v124;
      }

      else
      {
        v126 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v111 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v111);
      }

      if (v117 < -63)
      {
        goto LABEL_134;
      }

      if (v120 >= *(v111 + 2))
      {
        goto LABEL_135;
      }

      *&v111[8 * v120 + 32] |= v126;
      *&v175[0] = v111;
      v84 = __OFADD__(v112++, 1);
      if (v84)
      {
        goto LABEL_136;
      }

      if (v114)
      {
        v127 = v117;
      }

      else
      {
        v127 = v113;
      }

      if (v117 >= v127)
      {
        v113 = v127;
      }

      else
      {
        v113 = v117;
      }

      *(&v175[0] + 1) = v112;
      *&v175[1] = v113;
      BYTE8(v175[1]) = 0;
      v128 = v173;
      v110 = v174;
      if (v116)
      {
        v128 = v117;
      }

      if (v117 <= v128)
      {
        v115 = v128;
      }

      else
      {
        v115 = v117;
      }

      *&v176 = v115;
      BYTE8(v176) = 0;
      v116 = 0;
      v114 = 0;
LABEL_74:
      --v109;
    }

    while (v109);
  }

  if (!v161)
  {

    v133 = v162;
    v130 = v172;
    if (v169)
    {
      goto LABEL_124;
    }

    goto LABEL_125;
  }

  v129 = EarleyRecognizer.fullMatch.getter();
  v130 = v172;
  v131 = v169;
  if ((v129 & 1) == 0)
  {

    v133 = v162;
    if (v131)
    {
      goto LABEL_124;
    }

    goto LABEL_125;
  }

  v132 = v157;
  if (*(v157 + 16))
  {
  }

  else
  {
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      *v138 = 0;

      _os_log_impl(&dword_1A8E85000, v136, v137, "Full match on tokenRecognizer, but missing stop token IDs", v138, 2u);
      v139 = v138;
      v130 = v172;
      MEMORY[0x1AC57DBF0](v139, -1, -1);
    }

    else
    {
    }
  }

  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  v182 = lazy protocol witness table accessor for type [Int] and conformance [A]();
  v179 = v132;

  ContiguousBitSet.init(_:)(&v179, &v190);
  v179 = v190;
  v180 = v191;
  LOBYTE(v181) = v192;
  v182 = v193;
  v183 = v194;
  ContiguousBitSet.formUnion(_:)(&v179);

  v133 = v162;
  if ((v131 & 1) == 0)
  {
LABEL_125:

    v58 = 0;
    goto LABEL_127;
  }

LABEL_124:
  if (*(v130 + 16) > 1uLL)
  {
    goto LABEL_125;
  }

  v140 = specialized Collection<>.containsCharacterSetTerminal()(v130);

  v58 = !v140;
LABEL_127:
  if ((v133 | v158))
  {
    v141 = *&v175[0];
    v142 = *(v175 + 8);
    v143 = BYTE8(v175[1]);
    v144 = v176;
    v145 = BYTE8(v176);
  }

  else
  {
    v146 = v166;
    v147 = *(v166 + 24);
    v148 = *(v147 + 16);
    v149 = v160;

    pthread_mutex_lock(v148);
    *(v146 + 16) = 1;
    pthread_mutex_unlock(*(v147 + 16));
    v141 = *&v175[0];
    v174 = *(v175 + 8);
    v143 = BYTE8(v175[1]);
    v144 = v176;
    v145 = BYTE8(v176);
    v150 = *(v149 + 24);
    pthread_mutex_lock(*(v150 + 16));
    swift_beginAccess();

    v151 = swift_isUniquelyReferenced_nonNull_native();
    v179 = *(v149 + 16);
    *(v149 + 16) = 0x8000000000000000;
    v184 = v141;
    v185 = v174;
    v186 = v143;
    v187 = v144;
    v188 = v145;
    v189 = v58 & 1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v184, v159, v151);
    *(v149 + 16) = v179;
    swift_endAccess();
    pthread_mutex_unlock(*(v150 + 16));

    v142 = v174;
  }

  v152 = v165;
  *v165 = v141;
  *(v152 + 1) = v142;
  *(v152 + 24) = v143;
  v152[4] = v144;
  *(v152 + 40) = v145;
  return v58 & 1;
}

uint64_t specialized SpaceLookaheadMaskGenerator.performWhiteSpaceTokenLookAhead(from:vocabManager:stopTokenIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v81 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A8FC9400;
  v88 = a3;
  *(v12 + 32) = *(a3 + 104);
  v90[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  v90[4] = lazy protocol witness table accessor for type [Int] and conformance [A]();
  v90[0] = v12;
  ContiguousBitSet.init(_:)(v90, &v92);
  if (*(a2 + 56))
  {
    v13 = EarleyRecognizer.childRecognizer(consumingString:)(32, 0xE100000000000000);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMd, &_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMR);
  swift_initStackObject();

  v87 = specialized TokenGrammarRecognizer.init(inputRecognizer:vocabManager:lastConsumedTokenID:)(v13, v14, 0, 1);
  v15 = *(v87 + 56);
  v89 = v14;
  if (v15)
  {
    v97 = EarleyRecognizer.nextValidTerminalsWithCacheKey()();
    rawValue = v97.nextValidTerminals._rawValue;
  }

  else
  {
    rawValue = MEMORY[0x1E69E7CC0];
  }

  v17 = VocabularyManager.extractCandidates(nextValidTerminals:afterStartWord:)(v90, rawValue, 1);
  v19 = v18;
  v91 = v17;
  ContiguousBitSet.formUnion(_:)(v90);

  valid = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_SJs5NeverOTg5166_s19TokenGenerationCore27SpaceLookaheadMaskGeneratorV29generateValidSearchCandidates8prefixes12vocabManager05allowD6PrefixSaySiGShySSG_AA010VocabularyN0CSbtFSJSSXEfU_Tf1cn_n(v19);
  v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSJ_SaySJGTt0g5Tf4g_n(valid);

  v22 = *(v21 + 16);
  if (!v22)
  {
    goto LABEL_10;
  }

  v23 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSJ_Tt1g5(*(v21 + 16), 0);
  v24 = specialized Sequence._copySequenceContents(initializing:)(v90, v23 + 4, v22, v21);
  outlined consume of Set<NonTerminalSymbol>.Iterator._Variant(v90[0]);
  if (v24 != v22)
  {
    __break(1u);
LABEL_10:

    v23 = MEMORY[0x1E69E7CC0];
  }

  v85 = v11;
  v90[0] = v23;

  specialized MutableCollection<>.sort(by:)(v90);
  v86 = v6;
  v82._rawValue = rawValue;
  v83 = a1;

  v25 = *(v90[0] + 2);
  v26 = MEMORY[0x1E69E7CC0];
  v84 = v90[0];
  if (v25)
  {
    v27 = (v90[0] + 40);
    v28 = MEMORY[0x1E69E7CC0];
    v26 = MEMORY[0x1E69E7CC0];
    do
    {
      v29 = *(v27 - 1);
      v30 = *v27;

      VocabularyManager.prefixLookUp.getter(v8);
      v31 = v8[1];

      outlined destroy of VocabularyManager.PrefixLookup(v8, type metadata accessor for VocabularyManager.PrefixLookup);
      if (*(v31 + 16))
      {
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30);
        v34 = v33;

        if (v34)
        {
          v35 = *(*(v31 + 56) + 8 * v32);

          goto LABEL_20;
        }
      }

      else
      {
      }

      v35 = v28;
LABEL_20:
      v36 = *(v35 + 16);
      v37 = *(v26 + 2);
      v38 = v37 + v36;
      if (__OFADD__(v37, v36))
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);

        __break(1u);
        return result;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v38 <= *(v26 + 3) >> 1)
      {
        if (!*(v35 + 16))
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (v37 <= v38)
        {
          v40 = v37 + v36;
        }

        else
        {
          v40 = v37;
        }

        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v40, 1, v26);
        if (!*(v35 + 16))
        {
LABEL_13:

          if (v36)
          {
            goto LABEL_85;
          }

          goto LABEL_14;
        }
      }

      v41 = *(v26 + 2);
      if ((*(v26 + 3) >> 1) - v41 < v36)
      {
        goto LABEL_90;
      }

      memcpy(&v26[8 * v41 + 32], (v35 + 32), 8 * v36);

      if (v36)
      {
        v42 = *(v26 + 2);
        v43 = __OFADD__(v42, v36);
        v44 = v42 + v36;
        if (v43)
        {
          goto LABEL_93;
        }

        *(v26 + 2) = v44;
      }

LABEL_14:
      v27 += 2;
      --v25;
    }

    while (v25);
  }

  specialized static VocabularyManager.mergeSortedRanks(_:_:)(&v91, v26);

  v45 = v85;
  VocabularyManager.prefixLookUp.getter(v85);
  v46 = *(v45 + *(v86 + 36));

  outlined destroy of VocabularyManager.PrefixLookup(v45, type metadata accessor for VocabularyManager.PrefixLookup);
  v86 = v91;
  v47 = *(v91 + 16);
  if (v47)
  {
    v90[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47, 0);
    v48 = v90[0];
    v28 = v86 + 32;
    do
    {
      v50 = *v28;
      v28 += 8;
      v49 = v50;
      if ((v50 & 0x8000000000000000) != 0)
      {
        goto LABEL_86;
      }

      if (v49 >= *(v46 + 16))
      {
        goto LABEL_87;
      }

      v51 = *(v46 + 32 + 8 * v49);
      v90[0] = v48;
      v53 = *(v48 + 2);
      v52 = *(v48 + 3);
      if (v53 >= v52 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
        v48 = v90[0];
      }

      *(v48 + 2) = v53 + 1;
      *&v48[8 * v53 + 32] = v51;
      --v47;
    }

    while (v47);
  }

  else
  {

    v48 = MEMORY[0x1E69E7CC0];
  }

  v54 = specialized TokenGrammarRecognizer.accepts(tokenIDs:spaceLookAhead:)(v48, 1);

  v55 = v54[2];
  if (!v55)
  {
    goto LABEL_80;
  }

  v85 = v54;
  v56 = v54 + 4;
  v57 = v92;
  v59 = *(&v93 + 1);
  v58 = v93;
  v60 = v94;
  v61 = v95;
  v62 = v96;
  while (1)
  {
    v66 = *v56++;
    v65 = v66;
    v67 = v66 + 63;
    if (v66 >= 0)
    {
      v67 = v65;
    }

    v68 = v67 >> 6;
    v28 = v65 - (v67 & 0xFFFFFFFFFFFFFFC0);
    v69 = *(v57 + 2);
    v43 = __OFSUB__(v68, v69);
    v70 = v68 - v69;
    if (v70 < 0 == v43)
    {
      break;
    }

    if (v65 < -63)
    {
      goto LABEL_91;
    }

    v71 = 1 << v28;
    if (v28 >= 0)
    {
      v72 = 1 << v28;
    }

    else
    {
      v72 = 0;
    }

    if ((*&v57[8 * v68 + 32] & v72) == 0)
    {
      v89 = v56;
      goto LABEL_70;
    }

LABEL_57:
    if (!--v55)
    {
      goto LABEL_80;
    }
  }

  if (v70 + 1 < 0)
  {
    goto LABEL_92;
  }

  v89 = v56;
  specialized ContiguousArray.append<A>(contentsOf:)((v70 + 1), 0);
  v57 = v92;
  v71 = 1 << v28;
LABEL_70:
  if (v28 >= 0)
  {
    v28 = v71;
  }

  else
  {
    v28 = 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v57 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v57);
  }

  if (v65 < -63)
  {
    goto LABEL_88;
  }

  if (v68 >= *(v57 + 2))
  {
    goto LABEL_89;
  }

  *&v57[8 * v68 + 32] |= v28;
  v92 = v57;
  v43 = __OFADD__(v58++, 1);
  if (!v43)
  {
    if (v60)
    {
      v63 = v65;
    }

    else
    {
      v63 = v59;
    }

    if (v65 >= v63)
    {
      v59 = v63;
    }

    else
    {
      v59 = v65;
    }

    *&v93 = v58;
    *(&v93 + 1) = v59;
    v94 = 0;
    if (v62)
    {
      v64 = v65;
    }

    else
    {
      v64 = v61;
    }

    if (v65 <= v64)
    {
      v61 = v64;
    }

    else
    {
      v61 = v65;
    }

    v95 = v61;
    v96 = 0;
    v62 = 0;
    v60 = 0;
    v56 = v89;
    goto LABEL_57;
  }

  __break(1u);
LABEL_80:

  v73 = v82._rawValue;
  VocabularyManager.allPrefixesHaveStartOfWordTokenPair(terminals:)(v82);
  v74 = v83;
  if (v73[2] >= 2uLL)
  {

    v76 = 0;
  }

  else
  {
    v75 = specialized Collection<>.containsCharacterSetTerminal()(v73);

    v76 = !v75;
  }

  v77 = v94;
  v78 = v95;
  v79 = v96;
  *v74 = v92;
  *(v74 + 8) = v93;
  *(v74 + 24) = v77;
  *(v74 + 32) = v78;
  *(v74 + 40) = v79;
  return v76;
}