uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ15TokenGeneration16PromptCompletionV10ModerationV8CategoryV_AG11ProbabilityOTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v21 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 56) + v12);
    v17 = v14 == 0;

    if (v14)
    {
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
      v20 = v19;

      if ((v20 & 1) != 0 && v16 == *(*(a2 + 56) + v18))
      {
        continue;
      }
    }

    return v17;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v21 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_Prompt(0);
  v190 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v146 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v10);
  v170 = &v146 - v11;
  v164 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  v12 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v158 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v159 = &v146 - v15;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSg_ADtMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v162);
  v163 = &v146 - v16;
  v181 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt(0);
  v17 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v173 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v174 = &v146 - v20;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSg_ADtMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v176);
  v182 = &v146 - v21;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumO_ACtMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumO_ACtMR);
  MEMORY[0x1EEE9AC00](v175);
  v185 = &v146 - v22;
  v188 = type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum(0);
  v23 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v186 = &v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v191 = &v146 - v26;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v187);
  v28 = &v146 - v27;
  v184 = type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt(0);
  v193 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v196 = &v146 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v192 = &v146 - v31;
  v165 = type metadata accessor for Promptkit_Wireformat_ChatPromptV1(0);
  v183 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v194 = (&v146 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33);
  v195 = &v146 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v169 = &v146 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1V5valuetSgMd, &_sSS3key_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1V5valuetSgMR);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v178 = &v146 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v177 = (&v146 - v40);
  if (a1 == a2 || *(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v154 = v10;
  v149 = v9;
  v148 = v6;
  v161 = v4;
  v41 = 0;
  v42 = *(a1 + 64);
  v147 = a1 + 64;
  v43 = 1 << *(a1 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & v42;
  v146 = (v43 + 63) >> 6;
  v179 = (v23 + 48);
  v155 = (v17 + 48);
  v150 = (v12 + 48);
  v153 = (v190 + 48);
  v152 = a2;
  v151 = a1;
  while (1)
  {
    if (v45)
    {
      v157 = (v45 - 1) & v45;
      v46 = __clz(__rbit64(v45)) | (v41 << 6);
      v47 = v178;
LABEL_16:
      v52 = (*(a1 + 48) + 16 * v46);
      v53 = *v52;
      v54 = v52[1];
      v55 = v169;
      outlined init with copy of PromptCompletion.Content(*(a1 + 56) + *(v183 + 72) * v46, v169, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1V5valuetMd, &_sSS3key_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1V5valuetMR);
      v57 = *(v56 + 48);
      *v47 = v53;
      v47[1] = v54;
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v55, v47 + v57, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
      (*(*(v56 - 8) + 56))(v47, 0, 1, v56);
    }

    else
    {
      v48 = v146 <= v41 + 1 ? v41 + 1 : v146;
      v49 = v48 - 1;
      v47 = v178;
      while (1)
      {
        v50 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          return;
        }

        if (v50 >= v146)
        {
          break;
        }

        v51 = *(v147 + 8 * v50);
        ++v41;
        if (v51)
        {
          v157 = (v51 - 1) & v51;
          v46 = __clz(__rbit64(v51)) | (v50 << 6);
          v41 = v50;
          goto LABEL_16;
        }
      }

      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1V5valuetMd, &_sSS3key_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1V5valuetMR);
      (*(*(v143 - 8) + 56))(v47, 1, 1, v143);
      v157 = 0;
      v41 = v49;
    }

    v58 = v177;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v47, v177, &_sSS3key_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1V5valuetSgMd, &_sSS3key_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1V5valuetSgMR);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1V5valuetMd, &_sSS3key_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1V5valuetMR);
    v60 = (*(*(v59 - 8) + 48))(v58, 1, v59);
    v61 = v60 == 1;
    if (v60 == 1)
    {
      return;
    }

    v62 = *(v59 + 48);
    v63 = *v58;
    v64 = v58[1];
    v65 = v58 + v62;
    v66 = v195;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v65, v195, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
    v67 = specialized __RawDictionaryStorage.find<A>(_:)(v63, v64);
    v69 = v68;

    if ((v69 & 1) == 0)
    {
      goto LABEL_78;
    }

    v156 = v61;
    v70 = *(a2 + 56) + *(v183 + 72) * v67;
    v71 = v194;
    outlined init with copy of PromptCompletion.Content(v70, v194, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
    v72 = *v71;
    v73 = *v66;
    v74 = *(v72 + 16);
    v75 = v191;
    v76 = v192;
    if (v74 != *(*v66 + 16))
    {
      goto LABEL_77;
    }

    if (v74 && v72 != v73)
    {
      break;
    }

LABEL_57:
    _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VTt1g5(v194[1], *(v195 + 8));
    if ((v138 & 1) == 0)
    {
      goto LABEL_77;
    }

    _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVTt1g5(v194[2], *(v195 + 16));
    if ((v139 & 1) == 0)
    {
      goto LABEL_77;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v140 = v194;
    v141 = v195;
    v142 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v140, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
    outlined destroy of PromptCompletion.FileContent(v141, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
    a2 = v152;
    a1 = v151;
    v45 = v157;
    if ((v142 & 1) == 0)
    {
      return;
    }
  }

  v77 = 0;
  v78 = (*(v193 + 80) + 32) & ~*(v193 + 80);
  v172 = v72 + v78;
  v171 = v73 + v78;
  v180 = v28;
  v168 = v72;
  v167 = v73;
  v166 = v74;
  while (1)
  {
    if (v77 >= *(v72 + 16))
    {
      goto LABEL_81;
    }

    v79 = v28;
    v80 = v77;
    v81 = *(v193 + 72) * v77;
    outlined init with copy of PromptCompletion.Content(v172 + v81, v76, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
    v82 = *(v73 + 16);
    v190 = v80;
    if (v80 >= v82)
    {
      goto LABEL_82;
    }

    v83 = v196;
    outlined init with copy of PromptCompletion.Content(v171 + v81, v196, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
    v84 = *(v187 + 48);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v76, v79, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v83, v79 + v84, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
    v85 = *v179;
    v86 = v188;
    if ((*v179)(v79, 1, v188) == 1)
    {
      if (v85(v79 + v84, 1, v86) == 1)
      {
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v79, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
        v28 = v79;
        goto LABEL_55;
      }

      outlined destroy of PromptCompletion.FileContent(v196, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
      v145 = v76;
      v144 = type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt;
LABEL_65:
      outlined destroy of PromptCompletion.FileContent(v145, v144);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v79, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMR);
      goto LABEL_77;
    }

    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v79, v75, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
    if (v85(v79 + v84, 1, v86) == 1)
    {
      outlined destroy of PromptCompletion.FileContent(v196, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
      outlined destroy of PromptCompletion.FileContent(v76, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
      v144 = type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum;
      v145 = v75;
      goto LABEL_65;
    }

    v87 = v79 + v84;
    v88 = v186;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v87, v186, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
    v89 = v185;
    v90 = v185 + *(v175 + 48);
    outlined init with copy of PromptCompletion.Content(v75, v185, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
    outlined init with copy of PromptCompletion.Content(v88, v90, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
    v91 = *(v176 + 48);
    v92 = v182;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v89, v182, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
    v189 = v90;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v90, v92 + v91, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
    v93 = *v155;
    v94 = v181;
    if ((*v155)(v92, 1, v181) != 1)
    {
      break;
    }

    v95 = v93(v92 + v91, 1, v94) == 1;
    v96 = v92;
    v76 = v192;
    if (!v95)
    {
      goto LABEL_67;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v92, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
LABEL_41:
    v160 = type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1(0);
    v114 = *(v160 + 20);
    v115 = *(v154 + 48);
    v116 = v89 + v114;
    v117 = v170;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v116, v170, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v189 + v114, v117 + v115, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
    v118 = *v153;
    v119 = v161;
    if ((*v153)(v117, 1, v161) == 1)
    {
      v120 = v118(v117 + v115, 1, v119);
      v104 = v180;
      v113 = v191;
      if (v120 != 1)
      {
        goto LABEL_69;
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v117, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
      v89 = v185;
      v121 = v160;
    }

    else
    {
      v122 = v117;
      v123 = v117;
      v124 = v149;
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v122, v149, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
      if (v118(v123 + v115, 1, v119) == 1)
      {
        outlined destroy of PromptCompletion.FileContent(v124, type metadata accessor for Promptkit_Wireformat_Prompt);
        v117 = v123;
        v113 = v191;
        v76 = v192;
        v104 = v180;
LABEL_69:
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v117, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMR);
        v89 = v185;
        goto LABEL_75;
      }

      v125 = v148;
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v123 + v115, v148, type metadata accessor for Promptkit_Wireformat_Prompt);
      v126 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration36Promptkit_Wireformat_PromptComponentV_Tt1g5(*v124, *v125);
      v104 = v180;
      if ((v126 & 1) == 0)
      {
        outlined destroy of PromptCompletion.FileContent(v125, type metadata accessor for Promptkit_Wireformat_Prompt);
        outlined destroy of PromptCompletion.FileContent(v124, type metadata accessor for Promptkit_Wireformat_Prompt);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v123, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
        v89 = v185;
        goto LABEL_74;
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v127 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PromptCompletion.FileContent(v125, type metadata accessor for Promptkit_Wireformat_Prompt);
      outlined destroy of PromptCompletion.FileContent(v124, type metadata accessor for Promptkit_Wireformat_Prompt);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v123, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
      v89 = v185;
      v113 = v191;
      v76 = v192;
      v121 = v160;
      if ((v127 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    v128 = *(v121 + 24);
    v129 = (v89 + v128);
    v130 = *(v89 + v128 + 8);
    v131 = (v189 + v128);
    v132 = v131[1];
    if (v130)
    {
      if (!v132 || (*v129 != *v131 || v130 != v132) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    else if (v132)
    {
      goto LABEL_75;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v133 = v189;
    v134 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v186, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
    v135 = v133;
    v28 = v180;
    outlined destroy of PromptCompletion.FileContent(v135, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
    v75 = v113;
    outlined destroy of PromptCompletion.FileContent(v89, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
    outlined destroy of PromptCompletion.FileContent(v113, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
    if ((v134 & 1) == 0)
    {
      goto LABEL_76;
    }

LABEL_55:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v136 = v196;
    v137 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v136, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
    outlined destroy of PromptCompletion.FileContent(v76, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
    v72 = v168;
    v73 = v167;
    if ((v137 & 1) == 0)
    {
      goto LABEL_77;
    }

    v77 = v190 + 1;
    if (v166 == v190 + 1)
    {
      goto LABEL_57;
    }
  }

  v97 = v174;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v92, v174, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
  if (v93(v92 + v91, 1, v94) == 1)
  {
    outlined destroy of PromptCompletion.FileContent(v97, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
    v76 = v192;
    v96 = v92;
LABEL_67:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v96, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSg_ADtMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSg_ADtMR);
    v104 = v180;
    v113 = v191;
    goto LABEL_75;
  }

  v98 = v173;
  _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v92 + v91, v173, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
  v99 = *(v162 + 48);
  v100 = v163;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v97, v163, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v98, v100 + v99, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v101 = *v150;
  v102 = v164;
  if ((*v150)(v100, 1, v164) == 1)
  {
    v95 = v101(v100 + v99, 1, v102) == 1;
    v103 = v100;
    v104 = v180;
    if (!v95)
    {
      goto LABEL_72;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v100, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    v105 = v174;
    goto LABEL_40;
  }

  v106 = v159;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v100, v159, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v107 = v101(v100 + v99, 1, v102);
  v104 = v180;
  if (v107 != 1)
  {
    v108 = v100 + v99;
    v109 = v158;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v108, v158, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    v110 = static Promptkit_Wireformat_ChatMessageRoleEnum.== infix(_:_:)(v106, v109);
    outlined destroy of PromptCompletion.FileContent(v109, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    outlined destroy of PromptCompletion.FileContent(v106, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v100, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    v105 = v174;
    if ((v110 & 1) == 0)
    {
      goto LABEL_73;
    }

LABEL_40:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v111 = v173;
    v112 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v111, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
    outlined destroy of PromptCompletion.FileContent(v105, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v182, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
    v113 = v191;
    v76 = v192;
    if ((v112 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_41;
  }

  outlined destroy of PromptCompletion.FileContent(v106, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  v103 = v100;
LABEL_72:
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v103, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSg_ADtMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSg_ADtMR);
  v105 = v174;
LABEL_73:
  outlined destroy of PromptCompletion.FileContent(v173, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
  outlined destroy of PromptCompletion.FileContent(v105, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v182, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
LABEL_74:
  v113 = v191;
  v76 = v192;
LABEL_75:
  outlined destroy of PromptCompletion.FileContent(v186, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
  outlined destroy of PromptCompletion.FileContent(v189, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
  outlined destroy of PromptCompletion.FileContent(v89, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
  outlined destroy of PromptCompletion.FileContent(v113, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v104, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
LABEL_76:
  outlined destroy of PromptCompletion.FileContent(v196, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
  outlined destroy of PromptCompletion.FileContent(v76, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
LABEL_77:
  outlined destroy of PromptCompletion.FileContent(v194, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
  v66 = v195;
LABEL_78:
  outlined destroy of PromptCompletion.FileContent(v66, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVTt1g5(uint64_t a1, uint64_t a2)
{
  v80 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v4 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v66 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v63 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v73);
  v10 = &v63 - v9;
  v72 = type metadata accessor for Promptkit_Wireformat_PromptComponentValue(0);
  v78 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v79 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v63 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v63 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueV5valuetSgMd, &_sSS3key_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueV5valuetSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (&v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v74 = (&v63 - v21);
  v75 = a2;
  if (a1 == a2)
  {
    v76 = 1;
    return;
  }

  if (*(a1 + 16) != *(v75 + 16))
  {
    goto LABEL_33;
  }

  v22 = 0;
  v67 = a1;
  v68 = v19;
  v23 = *(a1 + 64);
  v64 = a1 + 64;
  v65 = v8;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v27 = (v24 + 63) >> 6;
  v69 = v27;
  v70 = (v4 + 48);
  while (1)
  {
    if (!v26)
    {
      if (v27 <= v22 + 1)
      {
        v31 = v22 + 1;
      }

      else
      {
        v31 = v27;
      }

      v32 = v31 - 1;
      v33 = v74;
      while (1)
      {
        v34 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v34 >= v27)
        {
          v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueV5valuetMd, &_sSS3key_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueV5valuetMR);
          (*(*(v59 - 8) + 56))(v19, 1, 1, v59);
          v77 = 0;
          v22 = v32;
          goto LABEL_18;
        }

        v35 = *(v64 + 8 * v34);
        ++v22;
        if (v35)
        {
          v77 = (v35 - 1) & v35;
          v30 = __clz(__rbit64(v35)) | (v34 << 6);
          v22 = v34;
          goto LABEL_17;
        }
      }

      __break(1u);
      return;
    }

    v77 = (v26 - 1) & v26;
    v30 = __clz(__rbit64(v26)) | (v22 << 6);
LABEL_17:
    v36 = (*(v67 + 48) + 16 * v30);
    v38 = *v36;
    v37 = v36[1];
    v39 = v71;
    outlined init with copy of PromptCompletion.Content(*(v67 + 56) + *(v78 + 72) * v30, v71, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueV5valuetMd, &_sSS3key_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueV5valuetMR);
    v41 = *(v40 + 48);
    *v19 = v38;
    v19[1] = v37;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v39, v19 + v41, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    (*(*(v40 - 8) + 56))(v19, 0, 1, v40);

    v33 = v74;
LABEL_18:
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v19, v33, &_sSS3key_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueV5valuetSgMd, &_sSS3key_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueV5valuetSgMR);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueV5valuetMd, &_sSS3key_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueV5valuetMR);
    v43 = (*(*(v42 - 8) + 48))(v33, 1, v42);
    v76 = v43 == 1;
    if (v43 == 1)
    {
      return;
    }

    v44 = v80;
    v45 = *(v42 + 48);
    v46 = *v33;
    v47 = v33[1];
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v33 + v45, v14, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    v48 = v14;
    v49 = v75;
    v50 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v47);
    v52 = v51;

    if ((v52 & 1) == 0)
    {
      break;
    }

    v53 = v79;
    outlined init with copy of PromptCompletion.Content(*(v49 + 56) + *(v78 + 72) * v50, v79, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    v54 = *(v73 + 48);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v53, v10, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v48, &v10[v54], &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v55 = *v70;
    v14 = v48;
    if ((*v70)(v10, 1, v44) == 1)
    {
      if (v55(&v10[v54], 1, v80) != 1)
      {
        outlined destroy of PromptCompletion.FileContent(v79, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
        v61 = v48;
        v60 = type metadata accessor for Promptkit_Wireformat_PromptComponentValue;
        goto LABEL_31;
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    }

    else
    {
      v56 = v65;
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v65, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
      if (v55(&v10[v54], 1, v80) == 1)
      {
        outlined destroy of PromptCompletion.FileContent(v79, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
        outlined destroy of PromptCompletion.FileContent(v48, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
        v60 = type metadata accessor for Promptkit_Wireformat_ValueEnum;
        v61 = v56;
LABEL_31:
        outlined destroy of PromptCompletion.FileContent(v61, v60);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMR);
        goto LABEL_33;
      }

      v57 = v66;
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(&v10[v54], v66, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v58 = static Promptkit_Wireformat_ValueEnum.== infix(_:_:)(v56, v57);
      outlined destroy of PromptCompletion.FileContent(v57, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      outlined destroy of PromptCompletion.FileContent(v56, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
      v14 = v48;
      if ((v58 & 1) == 0)
      {
        outlined destroy of PromptCompletion.FileContent(v79, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
        v62 = v48;
        goto LABEL_32;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v28 = v79;
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v28, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    outlined destroy of PromptCompletion.FileContent(v14, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    v19 = v68;
    v27 = v69;
    v26 = v77;
    if ((v29 & 1) == 0)
    {
      return;
    }
  }

  v62 = v48;
LABEL_32:
  outlined destroy of PromptCompletion.FileContent(v62, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
LABEL_33:
  v76 = 0;
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingG0VTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope(0);
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v10 = 0;
    v11 = *(a1 + 64);
    v37 = a1 + 64;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v11;
    v15 = (v12 + 63) >> 6;
    v38 = v15;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v39 = (v14 - 1) & v14;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = (*(a1 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(*(a1 + 56) + 8 * v19);

      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
      v26 = v25;

      if ((v26 & 1) == 0 || (v27 = *(*(a2 + 56) + 8 * v24), v28 = *(v27 + 16), v28 != *(v23 + 16)))
      {
LABEL_26:

        return;
      }

      if (v28 && v27 != v23)
      {
        v35 = a1;
        v36 = a2;
        v29 = (*(v41 + 80) + 32) & ~*(v41 + 80);
        v40 = v27 + v29;
        v30 = v23 + v29;

        v31 = 0;
        while (v31 < *(v27 + 16))
        {
          v32 = *(v41 + 72) * v31;
          outlined init with copy of PromptCompletion.Content(v40 + v32, v9, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
          if (v31 >= *(v23 + 16))
          {
            goto LABEL_30;
          }

          outlined init with copy of PromptCompletion.Content(v30 + v32, v6, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
          v33 = specialized static PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.== infix(_:_:)(v9, v6);
          outlined destroy of PromptCompletion.FileContent(v6, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
          outlined destroy of PromptCompletion.FileContent(v9, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
          if ((v33 & 1) == 0)
          {

            goto LABEL_26;
          }

          if (v28 == ++v31)
          {

            a1 = v35;
            a2 = v36;
            goto LABEL_6;
          }
        }

        goto LABEL_29;
      }

LABEL_6:

      v15 = v38;
      v14 = v39;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        return;
      }

      v18 = *(v37 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

Swift::Int PromptCompletion.Moderation.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletion.Moderation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletion.Moderation(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t static PromptCompletion.collecting<A>(events:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v4[17] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[18] = AssociatedTypeWitness;
  v4[19] = *(AssociatedTypeWitness - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = *(a3 - 8);
  v4[23] = swift_task_alloc();
  v7 = swift_getAssociatedTypeWitness();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = type metadata accessor for PromptCompletion.Aggregator(0);
  v4[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static PromptCompletion.collecting<A>(events:), 0, 0);
}

uint64_t static PromptCompletion.collecting<A>(events:)()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 120);
  v6 = *(v0 + 112);
  v7 = MEMORY[0x1E69E7CC0];
  *v1 = MEMORY[0x1E69E7CC0];
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *(v1 + 3) = -1;
  *(v1 + 4) = -1;
  *(v1 + 5) = 0;
  *(v1 + 6) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVTt0g5Tf4g_n(v7);
  v8 = *(v2 + 32);
  *(v0 + 280) = v8;
  v9 = type metadata accessor for Prompt.Rendering();
  *(v0 + 232) = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  *(v0 + 240) = v11;
  *(v0 + 248) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(&v1[v8], 1, 1, v9);
  v12 = *(v2 + 36);
  *(v0 + 284) = v12;
  *&v1[v12] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v7);
  (*(v4 + 16))(v3, v6, v5);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 256) = AssociatedConformanceWitness;
  v14 = swift_task_alloc();
  *(v0 + 264) = v14;
  *v14 = v0;
  v14[1] = static PromptCompletion.collecting<A>(events:);
  v15 = *(v0 + 192);
  v16 = *(v0 + 168);

  return MEMORY[0x1EEE6D8D0](v0 + 16, 0, 0, v16, v15, AssociatedConformanceWitness);
}

{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = static PromptCompletion.collecting<A>(events:);
  }

  else
  {
    v2 = static PromptCompletion.collecting<A>(events:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  if (*(v0 + 40))
  {
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>((v0 + 16), v0 + 56);
    PromptCompletion.Aggregator.receive(event:)(v0 + 56);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 256) = AssociatedConformanceWitness;
    v2 = swift_task_alloc();
    *(v0 + 264) = v2;
    *v2 = v0;
    v2[1] = static PromptCompletion.collecting<A>(events:);
    v3 = *(v0 + 192);
    v4 = *(v0 + 168);
    v5 = v0 + 16;
    v6 = 0;
    v7 = 0;
    v8 = AssociatedConformanceWitness;

    return MEMORY[0x1EEE6D8D0](v5, v6, v7, v4, v3, v8);
  }

  v9 = *(v0 + 280);
  v10 = *(v0 + 224);
  v11 = *(v0 + 136);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  v12 = *v10;
  v34 = v10[1];
  v13 = v10[2];
  v14 = v10[6];
  v36 = v10[5];

  v37 = v12;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateI033_D174D4387BF6B304FA76AEBF3D593BFDLLV_G_AJ0J0Vs5NeverOTg504_s15e12Generation16gh3V10i15V6finishACyFAC9j10VAE0gE033_klmnopQ11BFDLLVXEfU_Tf1cn_n(v14);
  v35 = v15;

  v32 = v10[4];
  v33 = v10[3];
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10 + v9, v11, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v16 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 96) = 0;
  v18 = [v16 dataWithJSONObject:isa options:0 error:v0 + 96];

  v19 = *(v0 + 96);
  if (!v18)
  {
    v31 = v19;

    _convertNSErrorToError(_:)();

    v5 = swift_willThrow();
    __break(1u);
    return MEMORY[0x1EEE6D8D0](v5, v6, v7, v4, v3, v8);
  }

  v20 = *(v0 + 240);
  v22 = *(v0 + 224);
  v21 = *(v0 + 232);
  v23 = *(v0 + 136);
  v24 = *(v0 + 104);
  v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  *(v24 + 3) = 0;
  v28 = *(type metadata accessor for PromptCompletion(0) + 36);
  v20(&v24[v28], 1, 1, v21);
  *v24 = v37;
  *(v24 + 1) = v34;
  *(v24 + 2) = v13;

  *(v24 + 3) = v36;
  *(v24 + 4) = v35;
  *(v24 + 5) = v33;
  *(v24 + 6) = v32;
  *(v24 + 7) = v25;
  *(v24 + 8) = v27;
  outlined assign with take of Prompt.Rendering?(v23, &v24[v28]);
  outlined destroy of PromptCompletion.FileContent(v22, type metadata accessor for PromptCompletion.Aggregator);

  v29 = *(v0 + 8);

  return v29();
}

{
  v1 = *(v0[19] + 32);
  v1(v0[20], v0[21], v0[18]);
  swift_getAssociatedConformanceWitness();
  v2 = _getErrorEmbeddedNSError<A>(_:)();
  v3 = v0[20];
  if (v2)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
  }

  else
  {
    v4 = v0[18];
    swift_allocError();
    v1(v5, v3, v4);
  }

  v6 = v0[28];
  (*(v0[25] + 8))(v0[26], v0[24]);
  outlined destroy of PromptCompletion.FileContent(v6, type metadata accessor for PromptCompletion.Aggregator);

  v7 = v0[1];

  return v7();
}

unint64_t PromptCompletion.Aggregator.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = -1;
  *(a1 + 4) = -1;
  *(a1 + 5) = 0;
  *(a1 + 6) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVTt0g5Tf4g_n(v2);
  v3 = type metadata accessor for PromptCompletion.Aggregator(0);
  v4 = *(v3 + 32);
  v5 = type metadata accessor for Prompt.Rendering();
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = *(v3 + 36);
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v2);
  *&a1[v6] = result;
  return result;
}

uint64_t PromptCompletion.Aggregator.receive(event:)(uint64_t a1)
{
  v192[5] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for PromptCompletionEventCandidateFileGeneration(0);
  LOBYTE(v4) = v3;
  MEMORY[0x1EEE9AC00](v3);
  v171 = &v170 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v170 - v7;
  v9 = type metadata accessor for PromptCompletionEventCandidateAnnotation(0);
  MEMORY[0x1EEE9AC00](v9);
  *&v172 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v170 - v12;
  v14 = type metadata accessor for PromptCompletionEventRenderedPrompt(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v170 - v18;
  v170 = a1;
  outlined init with copy of PromptCompletionEvent(a1, v192);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
  if (swift_dynamicCast())
  {
    v172 = v187;
    v21 = v188;

    *v1 = v172;
    *(v1 + 2) = v21;
    return __swift_destroy_boxed_opaque_existential_0(v192);
  }

  if (swift_dynamicCast())
  {
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v19, v16, type metadata accessor for PromptCompletionEventRenderedPrompt);
    v22 = *(type metadata accessor for PromptCompletion.Aggregator(0) + 32);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v1[v22], &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    v23 = *(v14 + 20);
    v24 = type metadata accessor for Prompt.Rendering();
    v25 = *(v24 - 8);
    (*(v25 + 16))(&v1[v22], &v16[v23], v24);
    outlined destroy of PromptCompletion.FileContent(v16, type metadata accessor for PromptCompletionEventRenderedPrompt);
    (*(v25 + 56))(&v1[v22], 0, 1, v24);
    return __swift_destroy_boxed_opaque_existential_0(v192);
  }

  if (swift_dynamicCast())
  {
    v26 = v187;

    *(v1 + 24) = v26;
    return __swift_destroy_boxed_opaque_existential_0(v192);
  }

  if (swift_dynamicCast())
  {
    v27 = v187;

    *(v1 + 5) = v27;
    return __swift_destroy_boxed_opaque_existential_0(v192);
  }

  if (swift_dynamicCast())
  {
    v28 = *(&v186 + 1);
    v29 = *(&v187 + 1);
    v19 = v187;
    v20 = v188;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v1;
    v31 = *(v1 + 6);
    *&v180 = v31;
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v29);
    v34 = v31[2];
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (!v36)
    {
      LOBYTE(v4) = v33;
      if (v31[3] < v37)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, isUniquelyReferenced_nonNull_native);
        v31 = v180;
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v29);
        if ((v4 & 1) != (v38 & 1))
        {
          goto LABEL_135;
        }

LABEL_25:
        *(v9 + 48) = v31;
        if (v4)
        {
LABEL_26:
          v52 = v32;

          v53 = 56 * v52;
LABEL_89:
          *(v31[7] + v53 + 16) = v20;

          return __swift_destroy_boxed_opaque_existential_0(v192);
        }

        goto LABEL_87;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_25;
      }

LABEL_86:
      isUniquelyReferenced_nonNull_native = v32;
      specialized _NativeDictionary.copy()();
      v32 = isUniquelyReferenced_nonNull_native;
      v31 = v180;
      *(v9 + 48) = v180;
      if (v4)
      {
        goto LABEL_26;
      }

LABEL_87:
      v31[(v32 >> 6) + 8] |= 1 << v32;
      v126 = (v31[6] + 16 * v32);
      *v126 = v19;
      v126[1] = v29;
      v53 = 56 * v32;
      v127 = v31[7] + 56 * v32;
      v128 = MEMORY[0x1E69E7CC8];
      *v127 = MEMORY[0x1E69E7CC8];
      *(v127 + 8) = v128;
      *(v127 + 16) = 0;
      *(v127 + 24) = 0;
      *(v127 + 32) = 3;
      *(v127 + 40) = v128;
      *(v127 + 48) = 0;
      v129 = v31[2];
      v36 = __OFADD__(v129, 1);
      v130 = v129 + 1;
      if (!v36)
      {
        v31[2] = v130;
        goto LABEL_89;
      }

      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      v4 = v32;
      specialized _NativeDictionary.copy()();
      v32 = v4;
      v39 = v173;
      *(isUniquelyReferenced_nonNull_native + 48) = v173;
      if ((v19 & 1) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (swift_dynamicCast())
  {
    v182 = v188;
    v183 = v189;
    *&v184 = v190;
    v180 = v186;
    v181 = v187;
    v28 = *(&v187 + 1);
    v29 = v187;
    v176 = v188;
    v177 = v189;
    *&v178 = v190;
    v174 = v186;
    v175 = v187;

    v4 = swift_isUniquelyReferenced_nonNull_native();
    isUniquelyReferenced_nonNull_native = v1;
    v39 = *(v1 + 6);
    v173 = v39;
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28);
    v41 = v39[2];
    v42 = (v40 & 1) == 0;
    v36 = __OFADD__(v41, v42);
    v43 = v41 + v42;
    if (!v36)
    {
      LOBYTE(v19) = v40;
      if (v39[3] >= v43)
      {
        if ((v4 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, v4);
        v39 = v173;
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28);
        if ((v19 & 1) != (v44 & 1))
        {
          goto LABEL_135;
        }
      }

      *(isUniquelyReferenced_nonNull_native + 48) = v39;
      if ((v19 & 1) == 0)
      {
LABEL_93:
        v39[(v32 >> 6) + 8] |= 1 << v32;
        v131 = (v39[6] + 16 * v32);
        *v131 = v29;
        v131[1] = v28;
        v132 = v39[7] + 56 * v32;
        v133 = MEMORY[0x1E69E7CC8];
        *v132 = MEMORY[0x1E69E7CC8];
        *(v132 + 8) = v133;
        *(v132 + 16) = 0;
        *(v132 + 24) = 0;
        *(v132 + 32) = 3;
        *(v132 + 40) = v133;
        *(v132 + 48) = 0;
        v134 = v39[2];
        v36 = __OFADD__(v134, 1);
        v135 = v134 + 1;
        if (!v36)
        {
          v39[2] = v135;
          goto LABEL_95;
        }

        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        v19 = v32;
        specialized _NativeDictionary.copy()();
        v32 = v19;
        v45 = v186;
        *(isUniquelyReferenced_nonNull_native + 48) = v186;
        if ((v4 & 1) == 0)
        {
          goto LABEL_99;
        }

        goto LABEL_42;
      }

LABEL_34:

LABEL_95:
      PromptCompletion.Aggregator.CandidateAggregator.consume(event:)(&v174);
      outlined destroy of PromptCompletionEventCandidateTextDelta(&v180);
      return __swift_destroy_boxed_opaque_existential_0(v192);
    }

    goto LABEL_85;
  }

  if (swift_dynamicCast())
  {
    v20 = v172;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v13, v172, type metadata accessor for PromptCompletionEventCandidateAnnotation);
    v29 = *(v20 + 16);
    v28 = *(v20 + 24);

    v19 = swift_isUniquelyReferenced_nonNull_native();
    isUniquelyReferenced_nonNull_native = v1;
    v45 = *(v1 + 6);
    *&v186 = v45;
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28);
    v48 = v45[2];
    v49 = (v46 & 1) == 0;
    v36 = __OFADD__(v48, v49);
    v50 = v48 + v49;
    if (!v36)
    {
      LOBYTE(v4) = v46;
      if (v45[3] >= v50)
      {
        if ((v19 & 1) == 0)
        {
          goto LABEL_98;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v50, v19);
        v45 = v186;
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28);
        if ((v4 & 1) != (v51 & 1))
        {
          goto LABEL_135;
        }
      }

      *(isUniquelyReferenced_nonNull_native + 48) = v45;
      if ((v4 & 1) == 0)
      {
LABEL_99:
        v45[(v32 >> 6) + 8] |= 1 << v32;
        v136 = (v45[6] + 16 * v32);
        *v136 = v29;
        v136[1] = v28;
        v137 = v45[7] + 56 * v32;
        v138 = MEMORY[0x1E69E7CC8];
        *v137 = MEMORY[0x1E69E7CC8];
        *(v137 + 8) = v138;
        *(v137 + 16) = 0;
        *(v137 + 24) = 0;
        *(v137 + 32) = 3;
        *(v137 + 40) = v138;
        *(v137 + 48) = 0;
        v139 = v45[2];
        v36 = __OFADD__(v139, 1);
        v140 = v139 + 1;
        if (!v36)
        {
          v45[2] = v140;
          goto LABEL_101;
        }

        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        v4 = v32;
        specialized _NativeDictionary.copy()();
        v32 = v4;
        v54 = v173;
        *(isUniquelyReferenced_nonNull_native + 48) = v173;
        if ((v19 & 1) == 0)
        {
          goto LABEL_106;
        }

        goto LABEL_50;
      }

LABEL_42:

LABEL_101:
      PromptCompletion.Aggregator.CandidateAggregator.consume(event:)(v20, v47);
      v141 = type metadata accessor for PromptCompletionEventCandidateAnnotation;
LABEL_102:
      outlined destroy of PromptCompletion.FileContent(v20, v141);
      return __swift_destroy_boxed_opaque_existential_0(v192);
    }

    goto LABEL_91;
  }

  if (swift_dynamicCast())
  {
    v182 = v188;
    v183 = v189;
    v184 = v190;
    v185 = v191;
    v180 = v186;
    v181 = v187;
    v28 = *(&v187 + 1);
    v29 = v187;
    v176 = v188;
    v177 = v189;
    v178 = v190;
    v179 = v191;
    v174 = v186;
    v175 = v187;

    v4 = swift_isUniquelyReferenced_nonNull_native();
    isUniquelyReferenced_nonNull_native = v1;
    v54 = *(v1 + 6);
    v173 = v54;
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28);
    v56 = v54[2];
    v57 = (v55 & 1) == 0;
    v36 = __OFADD__(v56, v57);
    v58 = v56 + v57;
    if (!v36)
    {
      v19 = v55;
      if (v54[3] >= v58)
      {
        if ((v4 & 1) == 0)
        {
          goto LABEL_105;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v58, v4);
        v54 = v173;
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28);
        if ((v19 & 1) != (v59 & 1))
        {
          goto LABEL_135;
        }
      }

      *(isUniquelyReferenced_nonNull_native + 48) = v54;
      if ((v19 & 1) == 0)
      {
LABEL_106:
        v54[(v32 >> 6) + 8] |= 1 << v32;
        v142 = (v54[6] + 16 * v32);
        *v142 = v29;
        v142[1] = v28;
        v143 = v54[7] + 56 * v32;
        v144 = MEMORY[0x1E69E7CC8];
        *v143 = MEMORY[0x1E69E7CC8];
        *(v143 + 8) = v144;
        *(v143 + 16) = 0;
        *(v143 + 24) = 0;
        *(v143 + 32) = 3;
        *(v143 + 40) = v144;
        *(v143 + 48) = 0;
        v145 = v54[2];
        v36 = __OFADD__(v145, 1);
        v146 = v145 + 1;
        if (!v36)
        {
          v54[2] = v146;
          goto LABEL_108;
        }

        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        v147 = v32;
        specialized _NativeDictionary.copy()();
        v32 = v147;
        v61 = v174;
        *(v13 + 6) = v174;
        if ((v20 & 1) == 0)
        {
          goto LABEL_112;
        }

        goto LABEL_58;
      }

LABEL_50:

LABEL_108:
      PromptCompletion.Aggregator.CandidateAggregator.consume(event:)(&v174);
      outlined destroy of PromptCompletionEventCandidateToolCallDelta(&v180);
      return __swift_destroy_boxed_opaque_existential_0(v192);
    }

    goto LABEL_97;
  }

  if (swift_dynamicCast())
  {
    v28 = *(&v186 + 1);
    v4 = *(&v187 + 1);
    isUniquelyReferenced_nonNull_native = v187;
    v29 = *(&v188 + 1);
    v19 = v189;
    v180 = v186;
    v181 = v187;
    v182 = v188;
    *&v183 = v189;

    v60 = swift_isUniquelyReferenced_nonNull_native();
    v13 = v1;
    v61 = *(v1 + 6);
    *&v174 = v61;
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(isUniquelyReferenced_nonNull_native, v4);
    v63 = v61[2];
    v64 = (v62 & 1) == 0;
    v36 = __OFADD__(v63, v64);
    v65 = v63 + v64;
    if (!v36)
    {
      v20 = v62;
      if (v61[3] >= v65)
      {
        if ((v60 & 1) == 0)
        {
          goto LABEL_111;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v65, v60);
        v61 = v174;
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(isUniquelyReferenced_nonNull_native, v4);
        if ((v20 & 1) != (v66 & 1))
        {
          goto LABEL_135;
        }
      }

      *(v13 + 6) = v61;
      if ((v20 & 1) == 0)
      {
LABEL_112:
        v61[(v32 >> 6) + 8] |= 1 << v32;
        v148 = (v61[6] + 16 * v32);
        *v148 = isUniquelyReferenced_nonNull_native;
        v148[1] = v4;
        v149 = v61[7] + 56 * v32;
        v150 = MEMORY[0x1E69E7CC8];
        *v149 = MEMORY[0x1E69E7CC8];
        *(v149 + 8) = v150;
        *(v149 + 16) = 0;
        *(v149 + 24) = 0;
        *(v149 + 32) = 3;
        *(v149 + 40) = v150;
        *(v149 + 48) = 0;
        v151 = v61[2];
        v36 = __OFADD__(v151, 1);
        v152 = v151 + 1;
        if (!v36)
        {
          v61[2] = v152;
          goto LABEL_114;
        }

        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        v155 = v32;
        specialized _NativeDictionary.copy()();
        v32 = v155;
        v68 = v174;
        *(v13 + 6) = v174;
        if ((v20 & 1) == 0)
        {
          goto LABEL_118;
        }

        goto LABEL_68;
      }

LABEL_58:

LABEL_114:
      v153 = "Received an image segment with index %ld, but there is already a segment existed for that index. \nThis indicates a bug in the inference provider.";
      v154 = 1;
LABEL_121:
      PromptCompletion.Aggregator.CandidateAggregator.consume(event:)(&v180, v154, v153);

      v124 = v29;
      v125 = v19;
      goto LABEL_122;
    }

    goto LABEL_104;
  }

  if (swift_dynamicCast())
  {
    v28 = *(&v186 + 1);
    v4 = *(&v187 + 1);
    isUniquelyReferenced_nonNull_native = v187;
    v29 = *(&v188 + 1);
    v19 = v189;
    v180 = v186;
    v181 = v187;
    v182 = v188;
    *&v183 = v189;

    v67 = swift_isUniquelyReferenced_nonNull_native();
    v13 = v1;
    v68 = *(v1 + 6);
    *&v174 = v68;
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(isUniquelyReferenced_nonNull_native, v4);
    v70 = v68[2];
    v71 = (v69 & 1) == 0;
    v36 = __OFADD__(v70, v71);
    v72 = v70 + v71;
    if (!v36)
    {
      v20 = v69;
      if (v68[3] >= v72)
      {
        if ((v67 & 1) == 0)
        {
          goto LABEL_117;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v72, v67);
        v68 = v174;
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(isUniquelyReferenced_nonNull_native, v4);
        if ((v20 & 1) != (v73 & 1))
        {
          goto LABEL_135;
        }
      }

      *(v13 + 6) = v68;
      if ((v20 & 1) == 0)
      {
LABEL_118:
        v68[(v32 >> 6) + 8] |= 1 << v32;
        v156 = (v68[6] + 16 * v32);
        *v156 = isUniquelyReferenced_nonNull_native;
        v156[1] = v4;
        v157 = v68[7] + 56 * v32;
        v158 = MEMORY[0x1E69E7CC8];
        *v157 = MEMORY[0x1E69E7CC8];
        *(v157 + 8) = v158;
        *(v157 + 16) = 0;
        *(v157 + 24) = 0;
        *(v157 + 32) = 3;
        *(v157 + 40) = v158;
        *(v157 + 48) = 0;
        v159 = v68[2];
        v36 = __OFADD__(v159, 1);
        v160 = v159 + 1;
        if (!v36)
        {
          v68[2] = v160;
          goto LABEL_120;
        }

        __break(1u);
        goto LABEL_125;
      }

LABEL_68:

LABEL_120:
      v153 = "Received an audio segment with index %ld, but there is already a segment existed for that index. \nThis indicates a bug in the inference provider.";
      v154 = 3;
      goto LABEL_121;
    }

    goto LABEL_110;
  }

  if (swift_dynamicCast())
  {
    v20 = v171;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v8, v171, type metadata accessor for PromptCompletionEventCandidateFileGeneration);
    v29 = *(v20 + 16);
    v28 = *(v20 + 24);

    v4 = swift_isUniquelyReferenced_nonNull_native();
    isUniquelyReferenced_nonNull_native = v1;
    v74 = *(v1 + 6);
    *&v186 = v74;
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28);
    v76 = v74[2];
    v77 = (v75 & 1) == 0;
    v36 = __OFADD__(v76, v77);
    v78 = v76 + v77;
    if (!v36)
    {
      LOBYTE(v19) = v75;
      if (v74[3] >= v78)
      {
        if ((v4 & 1) == 0)
        {
          goto LABEL_126;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v78, v4);
        v74 = v186;
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28);
        if ((v19 & 1) != (v79 & 1))
        {
          goto LABEL_135;
        }
      }

      *(isUniquelyReferenced_nonNull_native + 48) = v74;
      if ((v19 & 1) == 0)
      {
LABEL_127:
        v74[(v32 >> 6) + 8] |= 1 << v32;
        v163 = (v74[6] + 16 * v32);
        *v163 = v29;
        v163[1] = v28;
        v164 = v74[7] + 56 * v32;
        v165 = MEMORY[0x1E69E7CC8];
        *v164 = MEMORY[0x1E69E7CC8];
        *(v164 + 8) = v165;
        *(v164 + 16) = 0;
        *(v164 + 24) = 0;
        *(v164 + 32) = 3;
        *(v164 + 40) = v165;
        *(v164 + 48) = 0;
        v166 = v74[2];
        v36 = __OFADD__(v166, 1);
        v167 = v166 + 1;
        if (!v36)
        {
          v74[2] = v167;
          goto LABEL_129;
        }

        __break(1u);
LABEL_131:
        swift_once();
LABEL_76:
        v104 = type metadata accessor for Logger();
        __swift_project_value_buffer(v104, static Log.generator);
        outlined init with copy of PromptCompletionEvent(v170, &v186);
        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          *&v180 = v108;
          *v107 = 136315138;
          __swift_project_boxed_opaque_existential_1(&v186, *(&v187 + 1));
          swift_getDynamicType();
          v109 = _typeName(_:qualified:)();
          v111 = v110;
          __swift_destroy_boxed_opaque_existential_0(&v186);
          v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v111, &v180);

          *(v107 + 4) = v112;
          _os_log_impl(&dword_1AB828000, v105, v106, "Unhandled event: %s", v107, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v108);
          MEMORY[0x1AC5A6CD0](v108, -1, -1);
          MEMORY[0x1AC5A6CD0](v107, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(&v186);
        }

        return __swift_destroy_boxed_opaque_existential_0(v192);
      }

LABEL_74:

LABEL_129:
      PromptCompletion.Aggregator.CandidateAggregator.consume(event:)(v20);
      v141 = type metadata accessor for PromptCompletionEventCandidateFileGeneration;
      goto LABEL_102;
    }

    goto LABEL_116;
  }

  if (swift_dynamicCast())
  {
    v80 = *(&v187 + 1);
    v28 = v187;
    isUniquelyReferenced_nonNull_native = *(&v188 + 1);
    v81 = v188;
    *&v172 = v189;
    v170 = *(&v186 + 1);
    v171 = *(&v189 + 1);

    v29 = swift_isUniquelyReferenced_nonNull_native();
    v19 = v1;
    v82 = *(v1 + 6);
    *&v180 = v82;
    v84 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v80);
    v85 = v82[2];
    v86 = (v83 & 1) == 0;
    v32 = v85 + v86;
    if (__OFADD__(v85, v86))
    {
LABEL_125:
      __break(1u);
LABEL_126:
      v162 = v32;
      specialized _NativeDictionary.copy()();
      v32 = v162;
      v74 = v186;
      *(isUniquelyReferenced_nonNull_native + 48) = v186;
      if ((v19 & 1) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_74;
    }

    v87 = v83;
    if (v82[3] >= v32)
    {
      if ((v29 & 1) == 0)
      {
        goto LABEL_133;
      }

      *(v19 + 48) = v82;
      if ((v83 & 1) == 0)
      {
LABEL_64:
        while (1)
        {
          v82[(v84 >> 6) + 8] |= 1 << v84;
          v90 = (v82[6] + 16 * v84);
          *v90 = v28;
          v90[1] = v80;
          v91 = 56 * v84;
          v92 = v82[7] + 56 * v84;
          v93 = MEMORY[0x1E69E7CC8];
          *v92 = MEMORY[0x1E69E7CC8];
          *(v92 + 8) = v93;
          *(v92 + 16) = 0;
          *(v92 + 24) = 0;
          *(v92 + 32) = 3;
          *(v92 + 40) = v93;
          *(v92 + 48) = 0;
          v94 = v82[2];
          v36 = __OFADD__(v94, 1);
          v95 = v94 + 1;
          if (!v36)
          {
            break;
          }

          __break(1u);
LABEL_133:
          specialized _NativeDictionary.copy()();
          v82 = v180;
          *(v19 + 48) = v180;
          if (v87)
          {
            goto LABEL_80;
          }
        }

        v82[2] = v95;
        goto LABEL_81;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, v29);
      v82 = v180;
      v88 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v80);
      if ((v87 & 1) != (v89 & 1))
      {
LABEL_135:
        v121 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_136;
      }

      v84 = v88;
      *(v19 + 48) = v82;
      if ((v87 & 1) == 0)
      {
        goto LABEL_64;
      }
    }

LABEL_80:

    v91 = 56 * v84;
LABEL_81:
    v114 = v171;
    v113 = v172;
    v115 = (v82[7] + v91);
    v116 = v115[3];
    v117 = v115[4];
    v115[3] = v81;
    v115[4] = isUniquelyReferenced_nonNull_native;
    outlined copy of FinishReason(v81, isUniquelyReferenced_nonNull_native);
    outlined consume of FinishReason?(v116, v117);
    v118 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    *&v174 = 0;
    v120 = [v118 JSONObjectWithData:isa options:0 error:&v174];

    v121 = v174;
    if (!v120)
    {
LABEL_136:
      v168 = v121;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v100 = swift_unexpectedError();
      __break(1u);
      goto LABEL_137;
    }

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    swift_dynamicCast();
    v122 = v174;
    v123 = swift_isUniquelyReferenced_nonNull_native();
    *&v180 = v115[5];
    v115[5] = 0x8000000000000000;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v122, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v123, &v180);

    v115[5] = v180;

    outlined consume of FinishReason(v81, isUniquelyReferenced_nonNull_native);
    v124 = v113;
    v125 = v114;
LABEL_122:
    outlined consume of Data._Representation(v124, v125);
    return __swift_destroy_boxed_opaque_existential_0(v192);
  }

  if (!swift_dynamicCast())
  {
    if (one-time initialization token for generator == -1)
    {
      goto LABEL_76;
    }

    goto LABEL_131;
  }

  v96 = v187;
  v97 = objc_opt_self();
  v98 = Data._bridgeToObjectiveC()().super.isa;
  *&v174 = 0;
  v99 = [v97 JSONObjectWithData:v98 options:0 error:&v174];

  v100 = v174;
  if (v99)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    swift_dynamicCast();
    v101 = v174;
    v102 = *(type metadata accessor for PromptCompletion.Aggregator(0) + 36);
    v103 = swift_isUniquelyReferenced_nonNull_native();
    *&v180 = *&v1[v102];
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v101, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v103, &v180);

    outlined consume of Data._Representation(v96, *(&v96 + 1));
    *&v1[v102] = v180;
    return __swift_destroy_boxed_opaque_existential_0(v192);
  }

LABEL_137:
  v169 = v100;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t PromptCompletion.Aggregator.finish()@<X0>(char *a1@<X8>)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  v6 = *v1;
  v28 = v1[1];
  v7 = v1[2];
  v8 = v1[5];
  v9 = v1[6];

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateI033_D174D4387BF6B304FA76AEBF3D593BFDLLV_G_AJ0J0Vs5NeverOTg504_s15e12Generation16gh3V10i15V6finishACyFAC9j10VAE0gE033_klmnopQ11BFDLLVXEfU_Tf1cn_n(v9);
  v29 = v10;

  v11 = v1[3];
  v27 = v1[4];
  v12 = type metadata accessor for PromptCompletion.Aggregator(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1 + *(v12 + 32), v5, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v13 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v30[0] = 0;
  v15 = [v13 dataWithJSONObject:isa options:0 error:v30];

  v16 = v30[0];
  if (!v15)
  {
    v26 = v16;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(a1 + 3) = 0;
  v20 = *(type metadata accessor for PromptCompletion(0) + 36);
  v21 = type metadata accessor for Prompt.Rendering();
  (*(*(v21 - 8) + 56))(&a1[v20], 1, 1, v21);
  v22 = v28;
  *a1 = v6;
  *(a1 + 1) = v22;
  *(a1 + 2) = v7;

  v23 = v29;
  *(a1 + 3) = v8;
  *(a1 + 4) = v23;
  v24 = v27;
  *(a1 + 5) = v11;
  *(a1 + 6) = v24;
  *(a1 + 7) = v17;
  *(a1 + 8) = v19;
  return outlined assign with take of Prompt.Rendering?(v5, &a1[v20]);
}

TokenGeneration::ModelInformation __swiftcall ModelInformation.init(assets:systemVersion:)(Swift::OpaquePointer assets, Swift::String_optional systemVersion)
{
  *v2 = assets;
  *(v2 + 8) = systemVersion;
  result.systemVersion = systemVersion;
  result.assets = assets;
  return result;
}

TokenGeneration::Usage __swiftcall Usage.init(promptTokenCount:completionTokenCount:)(Swift::Int promptTokenCount, Swift::Int completionTokenCount)
{
  *v2 = promptTokenCount;
  v2[1] = completionTokenCount;
  result.completionTokenCount = completionTokenCount;
  result.promptTokenCount = promptTokenCount;
  return result;
}

uint64_t PromptCompletion.Aggregator.CandidateAggregator.consume(event:)(void *a1)
{
  v2 = v1;
  v90 = type metadata accessor for PromptCompletion.Content(0);
  MEMORY[0x1EEE9AC00](v90);
  v85 = (&v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v76 - v6);
  v8 = type metadata accessor for PromptCompletion.Segment(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v89 = &v76 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v76 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v79 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v76 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v76 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v76 - v25;
  v27 = a1[1];
  v28 = a1[4];
  v83 = a1[3];
  v84 = v27;
  v29 = a1[6];
  v82 = a1[5];
  v30 = a1[7];
  v31 = a1[8];
  v87 = v29;
  v88 = v30;
  v91 = v2;
  v32 = *v2;
  if (*(*v2 + 16) && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(v28), (v34 & 1) != 0))
  {
    outlined init with copy of PromptCompletion.Content(*(v32 + 56) + *(v9 + 72) * v33, v26, type metadata accessor for PromptCompletion.Segment);
    v80 = *(v9 + 56);
    (v80)(v26, 0, 1, v8);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
    v35 = v91;
  }

  else
  {
    v36 = *(v9 + 56);
    v36(v26, 1, 1, v8, v24);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    *(v15 + 2) = MEMORY[0x1E69E7CC0];
    *(v15 + 24) = xmmword_1ABA1D8C0;
    swift_storeEnumTagMultiPayload();
    outlined init with copy of PromptCompletion.Content(v15, v22, type metadata accessor for PromptCompletion.Segment);
    v80 = v36;
    (v36)(v22, 0, 1, v8);
    v35 = v91;
    specialized Dictionary.subscript.setter(v22, v28);
    outlined destroy of PromptCompletion.FileContent(v15, type metadata accessor for PromptCompletion.Segment);
  }

  v37 = *v35;
  v38 = v89;
  if (!*(v37 + 16))
  {
    __break(1u);
    goto LABEL_28;
  }

  v39 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
  if ((v40 & 1) == 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v78 = v8;
  v86 = v28;
  v41 = v9;
  v42 = *(v9 + 72);
  outlined init with copy of PromptCompletion.Content(*(v37 + 56) + v42 * v39, v38, type metadata accessor for PromptCompletion.Segment);
  outlined init with copy of PromptCompletion.Content(v38, v7, type metadata accessor for PromptCompletion.Content);
  if (swift_getEnumCaseMultiPayload())
  {
    *(v91 + 48) = 1;
    v28 = v88;
    if (one-time initialization token for generator == -1)
    {
LABEL_9:
      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Log.generator);

      outlined copy of Data?(v28, v31);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 134217984;
        *(v46 + 4) = v86;

        outlined consume of Data?(v28, v31);
        _os_log_impl(&dword_1AB828000, v44, v45, "Segment %ld should have been a text segment, but wasn't! This indicates a bug in the inference provider.", v46, 0xCu);
        MEMORY[0x1AC5A6CD0](v46, -1, -1);
      }

      else
      {

        outlined consume of Data?(v28, v31);
      }

      outlined destroy of PromptCompletion.FileContent(v7, type metadata accessor for PromptCompletion.Content);
      return outlined destroy of PromptCompletion.FileContent(v38, type metadata accessor for PromptCompletion.Segment);
    }

LABEL_29:
    swift_once();
    goto LABEL_9;
  }

  v47 = *v7;
  v49 = v7[2];
  v48 = v7[3];
  v50 = v7[4];
  v83 = v7[1];
  v84 = v50;
  v92 = v47;
  v93 = v83;

  MEMORY[0x1AC5A5BC0](v82, v87);
  v51 = v92;
  v52 = v93;
  v53 = v88;
  v54 = v88;
  v55 = v31;
  if (v31 >> 60 == 15)
  {
    v55 = v84;
    outlined copy of Data?(v48, v84);
    v54 = v48;
  }

  v87 = v48;
  v56 = v54;

  outlined copy of Data?(v53, v31);
  outlined consume of Data?(0, 0xF000000000000000);
  v57 = v85;
  *v85 = v51;
  v57[1] = v52;
  v57[2] = v49;
  v57[3] = v56;
  v57[4] = v55;
  swift_storeEnumTagMultiPayload();

  v90 = v56;
  outlined copy of Data?(v56, v55);
  v58 = v91;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v58;
  v60 = v92;
  v62 = specialized __RawDictionaryStorage.find<A>(_:)(v86);
  v63 = *(v60 + 16);
  v64 = (v61 & 1) == 0;
  v65 = v63 + v64;
  if (__OFADD__(v63, v64))
  {
    __break(1u);
    goto LABEL_31;
  }

  LOBYTE(v56) = v61;
  if (*(v60 + 24) >= v65)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v68 = v81;
      if (v61)
      {
        goto LABEL_22;
      }

LABEL_32:
      (v80)(v68, 1, 1, v78);
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    specialized _NativeDictionary.copy()();
    v68 = v81;
    if (v56)
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v65, isUniquelyReferenced_nonNull_native);
  v66 = specialized __RawDictionaryStorage.find<A>(_:)(v86);
  if ((v56 & 1) == (v67 & 1))
  {
    v62 = v66;
    v68 = v81;
    if ((v56 & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_22:
    v69 = v92;
    v70 = v62 * v42;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(*(v92 + 56) + v62 * v42, v68, type metadata accessor for PromptCompletion.Segment);
    v71 = v78;
    (v80)(v68, 0, 1, v78);
    outlined assign with take of PromptCompletion.Content(v85, v68, type metadata accessor for PromptCompletion.Content);
    v72 = v79;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v68, v79, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
    if ((*(v41 + 48))(v72, 1, v71) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v72, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
      specialized _NativeDictionary._delete(at:)(v62, v69);
    }

    else
    {
      v73 = v77;
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v72, v77, type metadata accessor for PromptCompletion.Segment);
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v73, *(v69 + 56) + v70, type metadata accessor for PromptCompletion.Segment);
    }

    v38 = v89;
    v74 = v91;

    outlined consume of Data?(v87, v84);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v68, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
    *v74 = v69;

    outlined consume of Data?(v90, v55);
    return outlined destroy of PromptCompletion.FileContent(v38, type metadata accessor for PromptCompletion.Segment);
  }

LABEL_33:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v2 = v1;
  v59 = type metadata accessor for Prompt.ToolCall.Kind();
  v56 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Prompt.ToolCall.Function();
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV8ToolCallVSgMd, &_s15TokenGeneration6PromptV8ToolCallVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v60 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  v18 = type metadata accessor for Prompt.ToolCall();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v58 = &v50 - v24;
  v26 = a1[4];
  v25 = a1[5];
  v27 = a1[7];
  v57 = a1[6];
  v28 = a1[9];
  v52 = a1[8];
  v50 = v27;
  v51 = v28;
  v29 = a1[10];
  v54 = a1[11];
  v55 = v29;
  v30 = *(v2 + 8);
  v61 = v2 + 8;
  if (*(v30 + 16))
  {

    v31 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v25);
    if (v32)
    {
      (*(v19 + 16))(v17, *(v30 + 56) + *(v19 + 72) * v31, v18);
      v33 = *(v19 + 56);
      v34 = v17;
      v35 = 0;
    }

    else
    {
      v33 = *(v19 + 56);
      v34 = v17;
      v35 = 1;
    }

    v53 = v33;
    (v33)(v34, v35, 1, v18);
  }

  else
  {
    v53 = *(v19 + 56);
    v53(v17, 1, 1, v18, v23);
  }

  v36 = v58;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v17, v14, &_s15TokenGeneration6PromptV8ToolCallVSgMd, &_s15TokenGeneration6PromptV8ToolCallVSgMR);
  if ((*(v19 + 48))(v14, 1, v18) == 1)
  {

    v37 = v62;
    Prompt.ToolCall.Function.init(name:arguments:)();
    MEMORY[0x1AC5A36F0](v26, v25, v37);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration6PromptV8ToolCallVSgMd, &_s15TokenGeneration6PromptV8ToolCallVSgMR);
  }

  else
  {
    (*(v19 + 32))(v36, v14, v18);
  }

  v57 = v25;
  v58 = v26;
  Prompt.ToolCall.kind.getter();
  v38 = v56;
  v39 = v59;
  if ((*(v56 + 88))(v5, v59) == *MEMORY[0x1E69DA808])
  {
    (*(v38 + 96))(v5, v39);
    (*(v64 + 32))(v63, v5, v65);
    v40 = Prompt.ToolCall.id.getter();
    v42 = v41;
    Prompt.ToolCall.Function.name.getter();
    v66 = Prompt.ToolCall.Function.arguments.getter();
    v67 = v43;

    MEMORY[0x1AC5A5BC0](v52, v51);

    v44 = v62;
    Prompt.ToolCall.Function.init(name:arguments:)();
    MEMORY[0x1AC5A36F0](v40, v42, v44);
    v46 = v54;
    v45 = v55;
    if (v54 >> 60 == 15)
    {
      Prompt.ToolCall._userInfo.getter();
    }

    outlined copy of Data?(v45, v46);
    Prompt.ToolCall._userInfo.setter();
    v47 = v60;
    (*(v19 + 16))(v60, v21, v18);
    (v53)(v47, 0, 1, v18);
    specialized Dictionary.subscript.setter(v47, v58, v57);
    v48 = *(v19 + 8);
    v48(v21, v18);
    (*(v64 + 8))(v63, v65);
    return (v48)(v36, v18);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

void PromptCompletion.Aggregator.CandidateAggregator.consume(event:)(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for PromptCompletionEventCandidateAnnotation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v71 - v8;
  v10 = type metadata accessor for PromptCompletion.Annotation(0);
  v79 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PromptCompletion.Content(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v80 = (&v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v71 - v17;
  v83 = type metadata accessor for PromptCompletion.Segment(0);
  v19 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v75 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v81 = &v71 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v77 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v78 = &v71 - v26;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v71 - v29;
  v82 = v2;
  v31 = *v2;
  if (*(v31 + 16))
  {
    v76 = *(a1 + 32);
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(v76);
    if (v33)
    {
      v34 = *(v31 + 56);
      v74 = *(v19 + 72);
      outlined init with copy of PromptCompletion.Content(v34 + v74 * v32, v30, type metadata accessor for PromptCompletion.Segment);
      v73 = *(v19 + 56);
      v73(v30, 0, 1, v83);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v30, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
      if (*(v31 + 16))
      {
        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v76);
        if (v36)
        {
          v30 = v81;
          outlined init with copy of PromptCompletion.Content(*(v31 + 56) + v35 * v74, v81, type metadata accessor for PromptCompletion.Segment);
          outlined init with copy of PromptCompletion.Content(v30, v18, type metadata accessor for PromptCompletion.Content);
          if (swift_getEnumCaseMultiPayload())
          {
            *(v82 + 48) = 1;
            if (one-time initialization token for generator == -1)
            {
LABEL_7:
              v37 = type metadata accessor for Logger();
              __swift_project_value_buffer(v37, static Log.generator);
              outlined init with copy of PromptCompletion.Content(a1, v9, type metadata accessor for PromptCompletionEventCandidateAnnotation);
              v38 = Logger.logObject.getter();
              v39 = static os_log_type_t.fault.getter();
              if (os_log_type_enabled(v38, v39))
              {
                v40 = swift_slowAlloc();
                *v40 = 134217984;
                v41 = *(v9 + 4);
                outlined destroy of PromptCompletion.FileContent(v9, type metadata accessor for PromptCompletionEventCandidateAnnotation);
                *(v40 + 4) = v41;
                _os_log_impl(&dword_1AB828000, v38, v39, "Received an annotation for segment %ld, but that segment\nwas not a text segment! This indicates a bug in the inference provider.", v40, 0xCu);
                MEMORY[0x1AC5A6CD0](v40, -1, -1);
              }

              else
              {
                outlined destroy of PromptCompletion.FileContent(v9, type metadata accessor for PromptCompletionEventCandidateAnnotation);
              }

              outlined destroy of PromptCompletion.FileContent(v18, type metadata accessor for PromptCompletion.Content);
LABEL_32:
              outlined destroy of PromptCompletion.FileContent(v30, type metadata accessor for PromptCompletion.Segment);
              return;
            }

LABEL_35:
            swift_once();
            goto LABEL_7;
          }

          v30 = *v18;
          v48 = *(v18 + 2);
          v47 = *(v18 + 3);
          v71 = *(v18 + 1);
          v72 = v47;
          v49 = *(v18 + 4);
          outlined init with copy of PromptCompletion.Content(a1 + *(v4 + 28), v12, type metadata accessor for PromptCompletion.Annotation);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
          }

          v51 = *(v48 + 2);
          v50 = *(v48 + 3);
          if (v51 >= v50 >> 1)
          {
            v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v48);
          }

          *(v48 + 2) = v51 + 1;
          _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v12, &v48[((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v51], type metadata accessor for PromptCompletion.Annotation);
          v52 = v80;
          v54 = v71;
          v53 = v72;
          *v80 = v30;
          v52[1] = v54;
          v52[2] = v48;
          v52[3] = v53;
          v52[4] = v49;
          swift_storeEnumTagMultiPayload();

          outlined copy of Data?(v53, v49);
          v55 = v82;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v57 = *v55;
          v84 = v57;
          v59 = specialized __RawDictionaryStorage.find<A>(_:)(v76);
          v60 = *(v57 + 16);
          v61 = (v58 & 1) == 0;
          v62 = v60 + v61;
          if (__OFADD__(v60, v61))
          {
            __break(1u);
          }

          else
          {
            v14 = v58;
            v30 = v81;
            if (*(v57 + 24) < v62)
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v62, isUniquelyReferenced_nonNull_native);
              v63 = specialized __RawDictionaryStorage.find<A>(_:)(v76);
              if ((v14 & 1) != (v64 & 1))
              {
LABEL_39:
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return;
              }

              v59 = v63;
              v65 = v78;
              if ((v14 & 1) == 0)
              {
LABEL_38:
                v73(v65, 1, 1, v83);
                __break(1u);
                goto LABEL_39;
              }

LABEL_28:
              v66 = v84;
              v67 = v59 * v74;
              _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(*(v84 + 56) + v59 * v74, v65, type metadata accessor for PromptCompletion.Segment);
              v68 = v83;
              v73(v65, 0, 1, v83);
              outlined assign with take of PromptCompletion.Content(v80, v65, type metadata accessor for PromptCompletion.Content);
              v69 = v77;
              outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v65, v77, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
              if ((*(v19 + 48))(v69, 1, v68) == 1)
              {
                outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v69, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
                specialized _NativeDictionary._delete(at:)(v59, v66);
              }

              else
              {
                v70 = v75;
                _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v69, v75, type metadata accessor for PromptCompletion.Segment);
                _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v70, *(v66 + 56) + v67, type metadata accessor for PromptCompletion.Segment);
              }

              outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v65, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
              *v82 = v66;

              outlined consume of Data?(v72, v49);
              goto LABEL_32;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              v65 = v78;
              if ((v58 & 1) == 0)
              {
                goto LABEL_38;
              }

              goto LABEL_28;
            }
          }

          specialized _NativeDictionary.copy()();
          v65 = v78;
          if ((v14 & 1) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_28;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_35;
    }
  }

  (*(v19 + 56))(v30, 1, 1, v83, v28);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v30, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
  *(v82 + 48) = 1;
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Log.generator);
  outlined init with copy of PromptCompletion.Content(a1, v6, type metadata accessor for PromptCompletionEventCandidateAnnotation);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134217984;
    v46 = *(v6 + 4);
    outlined destroy of PromptCompletion.FileContent(v6, type metadata accessor for PromptCompletionEventCandidateAnnotation);
    *(v45 + 4) = v46;
    _os_log_impl(&dword_1AB828000, v43, v44, "Received an annotation for segment %ld, but there weren't that segment! This indicates a bug in the inference provider.", v45, 0xCu);
    MEMORY[0x1AC5A6CD0](v45, -1, -1);
  }

  else
  {
    outlined destroy of PromptCompletion.FileContent(v6, type metadata accessor for PromptCompletionEventCandidateAnnotation);
  }
}

void PromptCompletion.Aggregator.CandidateAggregator.consume(event:)(void *a1, uint64_t a2, const char *a3)
{
  v29 = a3;
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v13 = a1[4];
  v12 = a1[5];
  v14 = a1[6];
  v15 = *v3;
  if (*(v15 + 16) && (v28 = a1[1], v16 = specialized __RawDictionaryStorage.find<A>(_:)(v13), (v17 & 1) != 0))
  {
    v18 = v16;
    v19 = *(v15 + 56);
    v20 = type metadata accessor for PromptCompletion.Segment(0);
    v21 = *(v20 - 8);
    outlined init with copy of PromptCompletion.Content(v19 + *(v21 + 72) * v18, v11, type metadata accessor for PromptCompletion.Segment);
    (*(v21 + 56))(v11, 0, 1, v20);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
    *(v4 + 48) = 1;
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.generator);

    outlined copy of Data._Representation(v12, v14);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = v13;

      outlined consume of Data._Representation(v12, v14);
      _os_log_impl(&dword_1AB828000, v23, v24, v29, v25, 0xCu);
      MEMORY[0x1AC5A6CD0](v25, -1, -1);
    }

    else
    {

      outlined consume of Data._Representation(v12, v14);
    }
  }

  else
  {
    v26 = type metadata accessor for PromptCompletion.Segment(0);
    v27 = *(*(v26 - 8) + 56);
    v27(v11, 1, 1, v26);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
    *v8 = v12;
    v8[1] = v14;
    type metadata accessor for PromptCompletion.Content(0);
    swift_storeEnumTagMultiPayload();
    v27(v8, 0, 1, v26);
    outlined copy of Data._Representation(v12, v14);
    specialized Dictionary.subscript.setter(v8, v13);
  }
}

void PromptCompletion.Aggregator.CandidateAggregator.consume(event:)(uint64_t a1)
{
  v3 = type metadata accessor for PromptCompletionEventCandidateFileGeneration(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = *(a1 + 32);
  v13 = *v1;
  if (*(*v1 + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32)), (v15 & 1) != 0))
  {
    v16 = v14;
    v17 = *(v13 + 56);
    v18 = type metadata accessor for PromptCompletion.Segment(0);
    v19 = *(v18 - 8);
    outlined init with copy of PromptCompletion.Content(v17 + *(v19 + 72) * v16, v11, type metadata accessor for PromptCompletion.Segment);
    (*(v19 + 56))(v11, 0, 1, v18);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
    v1[48] = 1;
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.generator);
    outlined init with copy of PromptCompletion.Content(a1, v5, type metadata accessor for PromptCompletionEventCandidateFileGeneration);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      v24 = *(v5 + 4);
      outlined destroy of PromptCompletion.FileContent(v5, type metadata accessor for PromptCompletionEventCandidateFileGeneration);
      *(v23 + 4) = v24;
      _os_log_impl(&dword_1AB828000, v21, v22, "Received an file segment with index %ld, but there is already a segment existed for that index. \nThis indicates a bug in the inference provider.", v23, 0xCu);
      MEMORY[0x1AC5A6CD0](v23, -1, -1);
    }

    else
    {
      outlined destroy of PromptCompletion.FileContent(v5, type metadata accessor for PromptCompletionEventCandidateFileGeneration);
    }
  }

  else
  {
    v25 = type metadata accessor for PromptCompletion.Segment(0);
    v26 = *(*(v25 - 8) + 56);
    v26(v11, 1, 1, v25);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
    outlined init with copy of PromptCompletion.Content(a1 + *(v3 + 28), v8, type metadata accessor for PromptCompletion.FileContent);
    type metadata accessor for PromptCompletion.Content(0);
    swift_storeEnumTagMultiPayload();
    v26(v8, 0, 1, v25);
    specialized Dictionary.subscript.setter(v8, v12);
  }
}

void PromptCompletion.Aggregator.CandidateAggregator.finish()(char **a1@<X8>)
{
  v50[5] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for PromptCompletion.Segment(0);
  v49 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 24);
  v48 = *(v1 + 16);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  if (*(v1 + 48))
  {
    v9 = MEMORY[0x1E69E7CC0];
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v43[2] = *(v1 + 40);
  v44 = v7;
  v45 = v6;
  v46 = a1;
  v11 = *v1;
  v47 = *(v1 + 8);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v14 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(*(v11 + 16), 0);
    v15 = specialized Sequence._copySequenceContents(initializing:)(v50, v14 + 4, v12, v11);
    v16 = v50[0];
    v8 = v50[3];
    v43[1] = v50[4];

    outlined consume of [String : String].Iterator._Variant(v16);
    if (v15 == v12)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v14 = v13;
LABEL_7:
  v50[0] = v14;
  specialized MutableCollection<>.sort(by:)(v50);
  v17 = v50[0];
  v18 = *(v50[0] + 2);
  if (v18)
  {
    v50[0] = v13;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v19 = 32;
    v10 = v50[0];
    while (*(v11 + 16))
    {
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(*&v17[v19]);
      if ((v21 & 1) == 0)
      {
        goto LABEL_27;
      }

      v22 = v17;
      v23 = v49;
      v24 = *(v49 + 72);
      outlined init with copy of PromptCompletion.Content(*(v11 + 56) + v24 * v20, v5, type metadata accessor for PromptCompletion.Segment);
      v50[0] = v10;
      v26 = *(v10 + 2);
      v25 = *(v10 + 3);
      v8 = (v26 + 1);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v23 = v49;
        v10 = v50[0];
      }

      *(v10 + 2) = v8;
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v5, &v10[((*(v23 + 80) + 32) & ~*(v23 + 80)) + v26 * v24], type metadata accessor for PromptCompletion.Segment);
      v19 += 8;
      --v18;
      v17 = v22;
      if (!v18)
      {

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v42 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v27 = v47;
  v28 = *(v47 + 16);
  if (!v28)
  {
    goto LABEL_19;
  }

  v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15TokenGeneration6PromptV8ToolCallV_Tt1g5(*(v47 + 16), 0);
  v29 = *(type metadata accessor for Prompt.ToolCall() - 8);
  specialized Sequence._copySequenceContents(initializing:)(v50, &v9[(*(v29 + 80) + 32) & ~*(v29 + 80)], v28, v27);
  v31 = v30;
  v32 = v50[0];

  outlined consume of [String : String].Iterator._Variant(v32);
  if (v31 != v28)
  {
    __break(1u);
LABEL_19:
    v9 = MEMORY[0x1E69E7CC0];
  }

  v6 = v45;
  a1 = v46;
  v7 = v44;
LABEL_21:
  v33 = objc_opt_self();
  v34 = v48;

  outlined copy of FinishReason?(v6, v7);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v50[0] = 0;
  v36 = [v33 dataWithJSONObject:isa options:0 error:v50];

  v8 = v50[0];
  if (!v36)
  {
    goto LABEL_28;
  }

  if (v7 == 3)
  {
    v7 = 0;
    v37 = 0;
  }

  else
  {
    v37 = v6;
  }

  v38 = v50[0];
  v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  *a1 = v10;
  a1[1] = v9;
  a1[2] = v34;
  a1[3] = v37;
  a1[4] = v7;
  a1[5] = v39;
  a1[6] = v41;
}

uint64_t static ModelInformation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration16ModelInformationV5AssetV_Tt1g5(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

void PromptCompletion.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Prompt.Rendering();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = v2[2];
  specialized Array<A>.hash(into:)(a1, *v2);
  if (v11)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    v12 = v2[3];
    if (v12)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v12);
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v12 = v2[3];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  specialized Array<A>.hash(into:)(a1, v2[4]);
  v13 = v2[6];
  MEMORY[0x1AC5A6570](v2[5]);
  MEMORY[0x1AC5A6570](v13);
  Data.hash(into:)();
  v14 = type metadata accessor for PromptCompletion(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + *(v14 + 36), v10, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type Prompt.Rendering and conformance Prompt.Rendering, MEMORY[0x1E69DA838], MEMORY[0x1E69DA840]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }
}

Swift::Int PromptCompletion.Segment.hashValue.getter(void (*a1)(void *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletion.Segment(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletion.Segment(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t ModelInformation.identifier.getter()
{
  if (!*(*v0 + 16))
  {
    return 0;
  }

  v1 = *(*v0 + 32);

  return v1;
}

uint64_t (*ModelInformation.identifier.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  if (*(*v1 + 16))
  {
    v3 = *(*v1 + 32);
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  *a1 = v3;
  a1[1] = v4;
  return ModelInformation.identifier.modify;
}

uint64_t ModelInformation.version.getter()
{
  v1 = *v0;
  if (*(*v0 + 16) && *(v1 + 56))
  {
    v2 = *(v1 + 48);
  }

  else
  {

    return 0;
  }

  return v2;
}

void ModelInformation.identifier.setter(uint64_t a1, uint64_t a2)
{

  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.assets);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AB828000, oslog, v3, "Using deprecated setter. No change made.", v4, 2u);
    MEMORY[0x1AC5A6CD0](v4, -1, -1);
  }
}

uint64_t (*ModelInformation.version.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = *v1;
  if (*(*v1 + 16) && *(v3 + 56))
  {
    v4 = *(v3 + 48);
  }

  else
  {

    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a1 = v4;
  a1[1] = v5;
  return ModelInformation.version.modify;
}

uint64_t ModelInformation.identifier.modify(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *(a1 + 8);
  if ((a2 & 1) == 0)
  {
    return (a3)();
  }

  a3(v5, v4);
}

uint64_t ModelInformation.assets.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ModelInformation.systemVersion.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ModelInformation.systemVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

TokenGeneration::ModelInformation __swiftcall ModelInformation.init(identifier:version:systemVersion:)(Swift::String identifier, Swift::String version, Swift::String_optional systemVersion)
{
  object = version._object;
  countAndFlagsBits = version._countAndFlagsBits;
  v6 = identifier._object;
  v7 = identifier._countAndFlagsBits;
  v8 = v3;
  v22[1] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration16ModelInformationV5AssetVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16ModelInformationV5AssetVGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1ABA1D930;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v10 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v22[0] = 0;
  v12 = [v10 dataWithJSONObject:isa options:0 error:v22];

  if (!v12)
  {
    v20 = v22[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v13 = v22[0];

  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(v9 + 32) = v7;
  *(v9 + 40) = v6;
  *(v9 + 48) = countAndFlagsBits;
  *(v9 + 56) = object;
  *(v9 + 64) = v14;
  *(v9 + 72) = v16;
  *v8 = v9;
  *(v8 + 8) = systemVersion;
  result.systemVersion.value._object = v19;
  result.systemVersion.value._countAndFlagsBits = v18;
  result.assets._rawValue = v17;
  return result;
}

void ModelInformation.Asset.init(identifier:version:metadata:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a6@<X8>)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v11 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v19[0] = 0;
  v13 = [v11 dataWithJSONObject:isa options:0 error:v19];

  v14 = v19[0];
  if (!v13)
  {
    v18 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = v15;
  a6[5] = v17;
}

uint64_t ModelInformation.Asset.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ModelInformation.Asset.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ModelInformation.Asset.version.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ModelInformation.Asset.version.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

id ModelInformation.Asset.metadata.getter()
{
  v6[5] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6[0] = 0;
  v2 = [v0 JSONObjectWithData:isa options:0 error:v6];

  v3 = v6[0];
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    swift_dynamicCast();
    return v6[0];
  }

  else
  {
    v5 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t ModelInformation.Asset.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Data.hash(into:)();
}

Swift::Int ModelInformation.Asset.hashValue.getter()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ModelInformation.Asset()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModelInformation.Asset(uint64_t a1)
{
  v2 = *(v1 + 24);
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Data.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ModelInformation.Asset(uint64_t a1)
{
  v2 = *(v1 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Data.hash(into:)();
  return Hasher._finalize()();
}

void ModelInformation.hash(into:)(uint64_t a1, __n128 a2)
{
  v3 = v2[2];
  specialized Array<A>.hash(into:)(a1, *v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int ModelInformation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ModelInformation()
{
  v1 = *v0;
  v2 = v0[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ModelInformation(uint64_t a1, __n128 a2)
{
  v3 = v2[2];
  specialized Array<A>.hash(into:)(a1, *v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ModelInformation(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ModelInformation(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration16ModelInformationV5AssetV_Tt1g5(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Usage.totalTokenCount.getter()
{
  v1 = v0[1];
  result = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t Usage.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1AC5A6570](*v0);
  return MEMORY[0x1AC5A6570](v1);
}

Swift::Int Usage.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](v1);
  MEMORY[0x1AC5A6570](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Usage()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](v1);
  MEMORY[0x1AC5A6570](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Usage()
{
  v1 = v0[1];
  MEMORY[0x1AC5A6570](*v0);
  return MEMORY[0x1AC5A6570](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Usage(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](v2);
  MEMORY[0x1AC5A6570](v3);
  return Hasher._finalize()();
}

uint64_t FinishReason.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  switch(v2)
  {
    case 0:
      v3 = 0;
      return MEMORY[0x1AC5A6570](v3);
    case 1:
      v3 = 2;
      return MEMORY[0x1AC5A6570](v3);
    case 2:
      v3 = 3;
      return MEMORY[0x1AC5A6570](v3);
  }

  MEMORY[0x1AC5A6570](1);

  return String.hash(into:)();
}

Swift::Int FinishReason.hashValue.getter()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 2;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1AC5A6570](1);
        String.hash(into:)();
        return Hasher._finalize()();
      }

      v2 = 3;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1AC5A6570](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FinishReason()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 2;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1AC5A6570](1);
        String.hash(into:)();
        return Hasher._finalize()();
      }

      v2 = 3;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1AC5A6570](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FinishReason(uint64_t a1)
{
  v2 = *(v1 + 8);
  switch(v2)
  {
    case 0:
      v3 = 0;
      return MEMORY[0x1AC5A6570](v3);
    case 1:
      v3 = 2;
      return MEMORY[0x1AC5A6570](v3);
    case 2:
      v3 = 3;
      return MEMORY[0x1AC5A6570](v3);
  }

  MEMORY[0x1AC5A6570](1);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FinishReason(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 2;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x1AC5A6570](1);
        String.hash(into:)();
        return Hasher._finalize()();
      }

      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1AC5A6570](v3);
  return Hasher._finalize()();
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
      result = MEMORY[0x1AC5A2EC0]();
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
  result = MEMORY[0x1AC5A2EC0]();
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15TokenGeneration6PromptV8ToolCallV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV8ToolCallVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV8ToolCallVGMR);
  v4 = *(type metadata accessor for Prompt.ToolCall() - 8);
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

double specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  outlined init with copy of Any((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x1E69DA8C0], &_ss18_DictionaryStorageCySS19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVGMd, &_ss18_DictionaryStorageCySS19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMd, &_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x1E69DA810], &_ss18_DictionaryStorageCySS15TokenGeneration6PromptV8ToolCallVGMd, &_ss18_DictionaryStorageCySS15TokenGeneration6PromptV8ToolCallVGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        outlined init with take of Any(v24, v34);
      }

      else
      {
        outlined init with copy of Any(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of Any(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVGMd, &_ss18_DictionaryStorageCySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVGMR);
  v46 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v42 = v2;
    v43 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v44 = v5;
    v45 = v6;
    while (v11)
    {
      v20 = __clz(__rbit64(v11));
      v48 = (v11 - 1) & v11;
LABEL_15:
      v24 = v20 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v50 = *v25;
      v27 = *(v5 + 56) + 56 * v24;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      v31 = *(v27 + 24);
      v32 = *(v27 + 32);
      v33 = *(v27 + 40);
      v47 = *(v27 + 48);
      if ((v46 & 1) == 0)
      {

        outlined copy of FinishReason?(v31, v32);
      }

      v49 = v32;
      v7 = v45;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v34 = -1 << *(v45 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v13 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v16 = v33;
        v15 = v31;
        v17 = v49;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v13 + 8 * v36);
          if (v40 != -1)
          {
            v14 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v35) & ~*(v13 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v16 = v33;
      v15 = v31;
      v17 = v49;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v18 = (*(v45 + 48) + 16 * v14);
      *v18 = v50;
      v18[1] = v26;
      v19 = *(v45 + 56) + 56 * v14;
      *v19 = v28;
      *(v19 + 8) = v29;
      *(v19 + 16) = v30;
      *(v19 + 24) = v15;
      *(v19 + 32) = v17;
      *(v19 + 40) = v16;
      *(v19 + 48) = v47;
      ++*(v45 + 16);
      v5 = v44;
      v11 = v48;
    }

    v21 = v8;
    result = v43;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v12)
      {
        break;
      }

      v23 = v43[v8];
      ++v21;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v48 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_33;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v43, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v43 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo13OS_xpc_object_pGMd, &_ss18_DictionaryStorageCySSSo13OS_xpc_object_pGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration0C9GeneratorC9Dimension33_A936FA3DA371934822B1D42BF6B4011ALLOSo8NSObjectCGMd, &_ss18_DictionaryStorageCy15TokenGeneration0C9GeneratorC9Dimension33_A936FA3DA371934822B1D42BF6B4011ALLOSo8NSObjectCGMR);
  v31 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v31 & 1) == 0)
      {
        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v15) >> 6;
        while (++v17 != v27 || (v26 & 1) == 0)
        {
          v28 = v17 == v27;
          if (v17 == v27)
          {
            v17 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v17);
          if (v29 != -1)
          {
            v18 = __clz(__rbit64(~v29)) + (v17 << 6);
            goto LABEL_9;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v31)
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

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = type metadata accessor for InferenceResponse.Moderation.Probability();
  v5 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InferenceResponse.Moderation.Category();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9PromptKit17InferenceResponseV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy9PromptKit17InferenceResponseV10ModerationV8CategoryVAG11ProbabilityOGMR);
  v47 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type InferenceResponse.Moderation.Category and conformance InferenceResponse.Moderation.Category, MEMORY[0x1E69C6478], MEMORY[0x1E69C6480]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PromptCompletion.Segment(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15TokenGeneration16PromptCompletionV7SegmentVGMd, &_ss18_DictionaryStorageCySi15TokenGeneration16PromptCompletionV7SegmentVGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
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
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v25, v7, type metadata accessor for PromptCompletion.Segment);
      }

      else
      {
        outlined init with copy of PromptCompletion.Content(v25, v7, type metadata accessor for PromptCompletion.Segment);
      }

      result = MEMORY[0x1AC5A6550](*(v10 + 40), v23);
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v7, *(v10 + 56) + v24 * v18, type metadata accessor for PromptCompletion.Segment);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v50 = a3(0);
  v10 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v42 - v11;
  v12 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v47 = v9;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v43 = v5;
    v44 = (v10 + 16);
    v45 = v12;
    v46 = v10;
    v48 = (v10 + 32);
    v21 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v46 + 72);
      v33 = v28 + v32 * v27;
      if (v47)
      {
        (*v48)(v49, v33, v50);
      }

      else
      {
        (*v44)(v49, v33, v50);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      result = (*v48)(*(v14 + 56) + v32 * v22, v49, v50);
      ++*(v14 + 16);
      v12 = v45;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v8 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v8 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
  return result;
}

void specialized _NativeDictionary.copy()()
{
  specialized _NativeDictionary.copy()(MEMORY[0x1E69DA8C0], &_ss18_DictionaryStorageCySS19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVGMd, &_ss18_DictionaryStorageCySS19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMd, &_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  specialized _NativeDictionary.copy()(MEMORY[0x1E69DA810], &_ss18_DictionaryStorageCySS15TokenGeneration6PromptV8ToolCallVGMd, &_ss18_DictionaryStorageCySS15TokenGeneration6PromptV8ToolCallVGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVGMd, &_ss18_DictionaryStorageCySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVGMR);
  v29 = v0;
  v1 = *v0;
  v30 = static _DictionaryStorage.copy(original:)();
  v31 = v1;
  if (*(v1 + 16))
  {
    v2 = (v30 + 64);
    v3 = v1 + 64;
    v4 = ((1 << *(v30 + 32)) + 63) >> 6;
    if (v30 != v1 || v2 >= v1 + 64 + 8 * v4)
    {
      memmove(v2, (v1 + 64), 8 * v4);
    }

    v6 = 0;
    *(v30 + 16) = *(v31 + 16);
    v7 = 1 << *(v31 + 32);
    v8 = *(v31 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      do
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_17:
        v15 = v12 | (v6 << 6);
        v16 = 16 * v15;
        v17 = (*(v31 + 48) + 16 * v15);
        v18 = *v17;
        v19 = v17[1];
        v15 *= 56;
        v20 = *(v31 + 56) + v15;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        v25 = *(v20 + 32);
        v26 = *(v20 + 40);
        LOBYTE(v20) = *(v20 + 48);
        v27 = (*(v30 + 48) + v16);
        *v27 = v18;
        v27[1] = v19;
        v28 = *(v30 + 56) + v15;
        *v28 = v21;
        *(v28 + 8) = v22;
        *(v28 + 16) = v23;
        *(v28 + 24) = v24;
        *(v28 + 32) = v25;
        *(v28 + 40) = v26;
        *(v28 + 48) = v20;

        outlined copy of FinishReason?(v24, v25);
      }

      while (v10);
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_19;
      }

      v14 = *(v3 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v29 = v30;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v41 = type metadata accessor for InferenceResponse.Moderation.Probability();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for InferenceResponse.Moderation.Category();
  v43 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9PromptKit17InferenceResponseV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy9PromptKit17InferenceResponseV10ModerationV8CategoryVAG11ProbabilityOGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for PromptCompletion.Segment(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15TokenGeneration16PromptCompletionV7SegmentVGMd, &_ss18_DictionaryStorageCySi15TokenGeneration16PromptCompletionV7SegmentVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        outlined init with copy of PromptCompletion.Content(*(v5 + 56) + v22, v4, type metadata accessor for PromptCompletion.Segment);
        *(*(v7 + 48) + 8 * v20) = v21;
        result = _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v4, *(v7 + 56) + v22, type metadata accessor for PromptCompletion.Segment);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo13OS_xpc_object_pGMd, &_ss18_DictionaryStorageCySSSo13OS_xpc_object_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void specialized _NativeDictionary.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v43 = a1(0);
  v45 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v38 = v6;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v44 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v8;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = *(v8 + 56);
        v27 = (*(v8 + 48) + 16 * v24);
        v28 = *v27;
        v29 = v27[1];
        v30 = v45;
        v31 = *(v45 + 72) * v24;
        v32 = v42;
        v33 = v43;
        (*(v45 + 16))(v42, v26 + v31, v43);
        v34 = v44;
        v35 = (*(v44 + 48) + v25);
        *v35 = v28;
        v35[1] = v29;
        v36 = *(v34 + 56) + v31;
        v8 = v41;
        (*(v30 + 32))(v36, v32, v33);

        v19 = v46;
      }

      while (v46);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v38;
        v10 = v44;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v46 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration0C9GeneratorC9Dimension33_A936FA3DA371934822B1D42BF6B4011ALLOSo8NSObjectCGMd, &_ss18_DictionaryStorageCy15TokenGeneration0C9GeneratorC9Dimension33_A936FA3DA371934822B1D42BF6B4011ALLOSo8NSObjectCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, a5, MEMORY[0x1E69DA8C0]);
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, a5, MEMORY[0x1E69DA810]);
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for PromptCompletion.Segment(0);
  result = _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for PromptCompletion.Segment);
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

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
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

void specialized Dictionary<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      v12 = *(*(a2 + 48) + 16 * v11 + 8);
      v13 = *(*(a2 + 56) + v11);

      if (!v12)
      {
        break;
      }

      v6 &= v6 - 1;

      String.hash(into:)();
      swift_bridgeObjectRelease_n();
      MEMORY[0x1AC5A6570](v13);
      v8 ^= Hasher._finalize()();
      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    MEMORY[0x1AC5A6570](v8);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_11;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  for (i = 0; v7; v9 ^= Hasher._finalize()())
  {
    v11 = i;
LABEL_9:
    v12 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v7)) | (v11 << 6)));
    v7 &= v7 - 1;
    v13 = *(a1 + 48);
    v15[2] = *(a1 + 32);
    v15[3] = v13;
    v16 = *(a1 + 64);
    v14 = *(a1 + 16);
    v15[0] = *a1;
    v15[1] = v14;

    String.hash(into:)();

    specialized Array<A>.hash(into:)(v15, v12);
    swift_bridgeObjectRelease_n();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      MEMORY[0x1AC5A6570](v9);
      return;
    }

    v7 = *(v4 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x1AC5A6570](v7);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        String.hash(into:)();

        String.hash(into:)();

        v7 ^= Hasher._finalize()();
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1AC5A6570](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;

      outlined copy of Data._Representation(v7, v8);
      String.hash(into:)();
      if (v6)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v5 += 6;
      Data.hash(into:)();

      result = outlined consume of Data._Representation(v7, v8);
      --v3;
    }

    while (v3);
  }

  return result;
}

{
  v43 = type metadata accessor for Prompt.PreprocessedImageData();
  v36 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Prompt.ImageEmbeddingData();
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Prompt.ImageData();
  v7 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  result = MEMORY[0x1AC5A6570](v17, v14);
  if (v17)
  {
    v19 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v20 = v36;
    v21 = v7;
    v22 = *(v13 + 72);
    ++v36;
    v37 = (v20 + 4);
    v34 = (v5 + 8);
    v35 = (v5 + 32);
    v32 = (v21 + 8);
    v33 = (v21 + 32);
    do
    {
      outlined init with copy of PromptCompletion.Content(v19, v16, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
      outlined init with copy of PromptCompletion.Content(v16, v11, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v27 = a1;
          v28 = v22;
          v29 = v9;
          v30 = v11[16];
          MEMORY[0x1AC5A6570](0);
          String.hash(into:)();
          v31 = v30;
          v9 = v29;
          v22 = v28;
          a1 = v27;
          Hasher._combine(_:)(v31);
LABEL_13:

          goto LABEL_5;
        }

        v24 = v38;
        v23 = v39;
        (*v33)(v38, v11, v39);
        MEMORY[0x1AC5A6570](1);
        lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type Prompt.ImageData and conformance Prompt.ImageData, MEMORY[0x1E69C6368], MEMORY[0x1E69C6378]);
        dispatch thunk of Hashable.hash(into:)();
        v25 = v32;
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
          MEMORY[0x1AC5A6570](2);
          String.hash(into:)();
          goto LABEL_13;
        }

        if (EnumCaseMultiPayload == 3)
        {
          v24 = v40;
          v23 = v41;
          (*v35)(v40, v11, v41);
          MEMORY[0x1AC5A6570](3);
          lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type Prompt.ImageEmbeddingData and conformance Prompt.ImageEmbeddingData, MEMORY[0x1E69C6268], MEMORY[0x1E69C6278]);
          dispatch thunk of Hashable.hash(into:)();
          v25 = v34;
        }

        else
        {
          v24 = v42;
          v23 = v43;
          (*v37)(v42, v11, v43);
          MEMORY[0x1AC5A6570](4);
          lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type Prompt.PreprocessedImageData and conformance Prompt.PreprocessedImageData, MEMORY[0x1E69C6288], MEMORY[0x1E69C6298]);
          dispatch thunk of Hashable.hash(into:)();
          v25 = v36;
        }
      }

      (*v25)(v24, v23);
LABEL_5:
      result = outlined destroy of PromptCompletion.FileContent(v16, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
      v19 += v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

{
  v37 = type metadata accessor for Prompt.ToolCall();
  v34 = *(v37 - 8);
  v4 = MEMORY[0x1EEE9AC00](v37);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x1AC5A6570](v7, v4);
  v38 = v7;
  if (v7)
  {
    v9 = 0;
    v10 = a2 + 32;
    v11 = (v34 + 8);
    v35 = v34 + 16;
    v36 = v10;
    do
    {
      v44 = v9;
      v15 = (v36 + 56 * v9);
      v16 = *v15;
      v17 = v15[1];
      v18 = v6;
      v19 = a1;
      v20 = v15[3];
      v22 = v15[4];
      v21 = v15[5];
      v23 = v15[6];
      v39 = v15[2];

      v41 = v20;
      v46 = v22;
      outlined copy of FinishReason(v20, v22);
      v42 = v23;
      v43 = v21;
      outlined copy of Data._Representation(v21, v23);
      v40 = v16;
      specialized Array<A>.hash(into:)(v19, v16);
      MEMORY[0x1AC5A6570](*(v17 + 16));
      v45 = v17;
      v24 = *(v17 + 16);
      v25 = v37;
      v26 = v18;
      v27 = v19;
      if (v24)
      {
        v28 = v45 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
        v29 = *(v34 + 72);
        v30 = *(v34 + 16);
        do
        {
          v30(v26, v28, v25);
          lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type Prompt.ToolCall and conformance Prompt.ToolCall, MEMORY[0x1E69DA810], MEMORY[0x1E69DA818]);
          dispatch thunk of Hashable.hash(into:)();
          (*v11)(v26, v25);
          v28 += v29;
          --v24;
        }

        while (v24);
      }

      v6 = v26;
      a1 = v27;
      v31 = v39;
      if (v39)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v31);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v32 = v41;
      if (v46)
      {
        if (v46 == 1)
        {
          v12 = 2;
        }

        else
        {
          if (v46 != 2)
          {
            MEMORY[0x1AC5A6570](1);
            String.hash(into:)();
            goto LABEL_5;
          }

          v12 = 3;
        }
      }

      else
      {
        v12 = 0;
      }

      MEMORY[0x1AC5A6570](v12);
LABEL_5:
      v13 = v43;
      v9 = v44 + 1;
      v14 = v42;
      Data.hash(into:)();

      outlined consume of FinishReason(v32, v46);
      result = outlined consume of Data._Representation(v13, v14);
    }

    while (v9 != v38);
  }

  return result;
}

{
  v57 = type metadata accessor for PromptCompletion.FileContent(0);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PromptCompletion.DocumentCitation(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v69 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for PromptCompletion.URLCitation(0);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  MEMORY[0x1EEE9AC00](v70);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PromptCompletion.Annotation(0);
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PromptCompletion.Content(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for PromptCompletion.Segment(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + 16);
  result = MEMORY[0x1AC5A6570](v20, v17);
  if (v20)
  {
    v22 = v20;
    v23 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v66 = *(v16 + 72);
    v24 = 0;
    v61 = v22;
    v63 = v23;
    v64 = v12;
    v54 = v19;
    v55 = v14;
    do
    {
      outlined init with copy of PromptCompletion.Content(v23 + v66 * v24, v19, type metadata accessor for PromptCompletion.Segment);
      outlined init with copy of PromptCompletion.Content(v19, v14, type metadata accessor for PromptCompletion.Content);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v43 = v56;
          _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v14, v56, type metadata accessor for PromptCompletion.FileContent);
          MEMORY[0x1AC5A6570](2);
          type metadata accessor for URL();
          lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
          dispatch thunk of Hashable.hash(into:)();
          v44 = v57;
          String.hash(into:)();
          String.hash(into:)();
          MEMORY[0x1AC5A65A0](*(v43 + *(v44 + 28)));
          outlined destroy of PromptCompletion.FileContent(v19, type metadata accessor for PromptCompletion.Segment);
          v29 = type metadata accessor for PromptCompletion.FileContent;
          v30 = v43;
          v22 = v61;
        }

        else
        {
          v25 = v24;
          v26 = *v14;
          v27 = v14[1];
          MEMORY[0x1AC5A6570](3);
          Data.hash(into:)();
          v28 = v27;
          v24 = v25;
          v23 = v63;
          outlined consume of Data._Representation(v26, v28);
          v29 = type metadata accessor for PromptCompletion.Segment;
          v30 = v19;
        }

        result = outlined destroy of PromptCompletion.FileContent(v30, v29);
        v12 = v64;
      }

      else
      {
        v65 = v24;
        if (EnumCaseMultiPayload)
        {
          v45 = v12;
          v46 = *v14;
          v47 = v14[1];
          MEMORY[0x1AC5A6570](1);
          Data.hash(into:)();
          v48 = v46;
          v12 = v45;
          v23 = v63;
          outlined consume of Data._Representation(v48, v47);
          result = outlined destroy of PromptCompletion.FileContent(v19, type metadata accessor for PromptCompletion.Segment);
          v24 = v65;
        }

        else
        {
          v32 = v14[1];
          v34 = v14[2];
          v33 = v14[3];
          v59 = v14[4];
          v60 = v33;
          MEMORY[0x1AC5A6570](0);
          v58 = v32;
          String.hash(into:)();
          MEMORY[0x1AC5A6570](*(v34 + 16));
          v62 = v34;
          v35 = *(v34 + 16);
          if (v35)
          {
            v36 = *(v53 + 20);
            v37 = v62 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
            v38 = *(v52 + 72);
            do
            {
              outlined init with copy of PromptCompletion.Content(v37, v11, type metadata accessor for PromptCompletion.Annotation);
              MEMORY[0x1AC5A6570](*v11);
              outlined init with copy of PromptCompletion.Content(v11 + v36, v8, type metadata accessor for PromptCompletion.Annotation.Type);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v39 = v69;
                _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v8, v69, type metadata accessor for PromptCompletion.DocumentCitation);
                MEMORY[0x1AC5A6570](1);
                type metadata accessor for DocumentResourceIdentifier();
                lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178], MEMORY[0x1E69C6188]);
                dispatch thunk of Hashable.hash(into:)();
                outlined destroy of PromptCompletion.FileContent(v39, type metadata accessor for PromptCompletion.DocumentCitation);
                v40 = type metadata accessor for PromptCompletion.Annotation;
                v41 = v11;
              }

              else
              {
                v42 = v67;
                _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v8, v67, type metadata accessor for PromptCompletion.URLCitation);
                MEMORY[0x1AC5A6570](0);
                String.hash(into:)();
                type metadata accessor for URL();
                lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
                dispatch thunk of Hashable.hash(into:)();
                outlined destroy of PromptCompletion.FileContent(v11, type metadata accessor for PromptCompletion.Annotation);
                v40 = type metadata accessor for PromptCompletion.URLCitation;
                v41 = v42;
              }

              outlined destroy of PromptCompletion.FileContent(v41, v40);
              v37 += v38;
              --v35;
            }

            while (v35);
          }

          v49 = v59;
          if (v59 >> 60 == 15)
          {
            Hasher._combine(_:)(0);
            v12 = v64;
            v24 = v65;
            v19 = v54;
            v14 = v55;
            v50 = v63;
            v51 = v60;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v51 = v60;
            Data.hash(into:)();
            v12 = v64;
            v24 = v65;
            v19 = v54;
            v14 = v55;
            v50 = v63;
          }

          outlined consume of Data?(v51, v49);
          result = outlined destroy of PromptCompletion.FileContent(v19, type metadata accessor for PromptCompletion.Segment);
          v23 = v50;
          v22 = v61;
        }
      }

      ++v24;
    }

    while (v24 != v22);
  }

  return result;
}

{
  v3 = type metadata accessor for PromptCompletion.DocumentCitation(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PromptCompletion.URLCitation(0);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PromptCompletion.Annotation(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a2 + 16);
  result = MEMORY[0x1AC5A6570](v15, v12);
  if (v15)
  {
    v23 = *(v10 + 20);
    v17 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = *(v11 + 72);
    do
    {
      outlined init with copy of PromptCompletion.Content(v17, v14, type metadata accessor for PromptCompletion.Annotation);
      MEMORY[0x1AC5A6570](*v14);
      outlined init with copy of PromptCompletion.Content(v14 + v23, v9, type metadata accessor for PromptCompletion.Annotation.Type);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v9, v5, type metadata accessor for PromptCompletion.DocumentCitation);
        MEMORY[0x1AC5A6570](1);
        type metadata accessor for DocumentResourceIdentifier();
        lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178], MEMORY[0x1E69C6188]);
        dispatch thunk of Hashable.hash(into:)();
        outlined destroy of PromptCompletion.FileContent(v5, type metadata accessor for PromptCompletion.DocumentCitation);
        v19 = type metadata accessor for PromptCompletion.Annotation;
        v20 = v14;
      }

      else
      {
        _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v9, v7, type metadata accessor for PromptCompletion.URLCitation);
        MEMORY[0x1AC5A6570](0);
        String.hash(into:)();
        type metadata accessor for URL();
        lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
        dispatch thunk of Hashable.hash(into:)();
        outlined destroy of PromptCompletion.FileContent(v14, type metadata accessor for PromptCompletion.Annotation);
        v19 = type metadata accessor for PromptCompletion.URLCitation;
        v20 = v7;
      }

      result = outlined destroy of PromptCompletion.FileContent(v20, v19);
      v17 += v18;
      --v15;
    }

    while (v15);
  }

  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for Prompt.ToolCall();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void specialized LazyMapSequence.Iterator.next()(_OWORD *a1@<X8>)
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
    outlined init with copy of Any(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    outlined init with take of Any(v20, &v22);

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
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v20, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
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

  MEMORY[0x1AC5A2EC0]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL specialized static Data.== infix(_:_:)(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized static FinishReason.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (!v5)
      {
        outlined consume of FinishReason(*a1, 0);
        v6 = v4;
        v7 = 0;
        goto LABEL_15;
      }

      goto LABEL_11;
    case 1uLL:
      if (v5 == 1)
      {
        v8 = 1;
        outlined consume of FinishReason(*a1, 1uLL);
        outlined consume of FinishReason(v4, 1uLL);
        return v8;
      }

      goto LABEL_11;
    case 2uLL:
      if (v5 == 2)
      {
        outlined consume of FinishReason(*a1, 2uLL);
        v6 = v4;
        v7 = 2;
LABEL_15:
        outlined consume of FinishReason(v6, v7);
        return 1;
      }

      goto LABEL_11;
  }

  if (v5 < 3)
  {
LABEL_11:
    outlined copy of FinishReason(*a2, *(a2 + 8));
    outlined copy of FinishReason(v2, v3);
    outlined consume of FinishReason(v2, v3);
    outlined consume of FinishReason(v4, v5);
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    outlined copy of FinishReason(*a1, v3);
    outlined copy of FinishReason(v2, v3);
    outlined consume of FinishReason(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_15;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of FinishReason(v4, v5);
  outlined copy of FinishReason(v2, v3);
  outlined consume of FinishReason(v2, v3);
  outlined consume of FinishReason(v4, v5);
  return v10 & 1;
}

BOOL specialized static ModelInformation.Asset.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (v6 && (v2 == v7 && v4 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_9:

  return specialized static Data.== infix(_:_:)(v3, v5, v8, v9);
}

uint64_t specialized static PromptCompletion.Annotation.Type.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptCompletion.DocumentCitation(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PromptCompletion.URLCitation(0);
  MEMORY[0x1EEE9AC00](v26);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v25 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16PromptCompletionV10AnnotationV4TypeO_AGtMd, &_s15TokenGeneration16PromptCompletionV10AnnotationV4TypeO_AGtMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v25 - v16;
  v19 = *(v18 + 56);
  outlined init with copy of PromptCompletion.Content(a1, &v25 - v16, type metadata accessor for PromptCompletion.Annotation.Type);
  outlined init with copy of PromptCompletion.Content(a2, &v17[v19], type metadata accessor for PromptCompletion.Annotation.Type);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of PromptCompletion.Content(v17, v14, type metadata accessor for PromptCompletion.Annotation.Type);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(&v17[v19], v8, type metadata accessor for PromptCompletion.URLCitation);
      v23 = *v14 == *v8 && v14[1] == v8[1];
      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static URL.== infix(_:_:)())
      {
        outlined destroy of PromptCompletion.FileContent(v8, type metadata accessor for PromptCompletion.URLCitation);
        outlined destroy of PromptCompletion.FileContent(v14, type metadata accessor for PromptCompletion.URLCitation);
        outlined destroy of PromptCompletion.FileContent(v17, type metadata accessor for PromptCompletion.Annotation.Type);
        v20 = 1;
        return v20 & 1;
      }

      outlined destroy of PromptCompletion.FileContent(v8, type metadata accessor for PromptCompletion.URLCitation);
      outlined destroy of PromptCompletion.FileContent(v14, type metadata accessor for PromptCompletion.URLCitation);
      outlined destroy of PromptCompletion.FileContent(v17, type metadata accessor for PromptCompletion.Annotation.Type);
LABEL_16:
      v20 = 0;
      return v20 & 1;
    }

    v21 = type metadata accessor for PromptCompletion.URLCitation;
    v22 = v14;
LABEL_7:
    outlined destroy of PromptCompletion.FileContent(v22, v21);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration16PromptCompletionV10AnnotationV4TypeO_AGtMd, &_s15TokenGeneration16PromptCompletionV10AnnotationV4TypeO_AGtMR);
    goto LABEL_16;
  }

  outlined init with copy of PromptCompletion.Content(v17, v11, type metadata accessor for PromptCompletion.Annotation.Type);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21 = type metadata accessor for PromptCompletion.DocumentCitation;
    v22 = v11;
    goto LABEL_7;
  }

  _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(&v17[v19], v6, type metadata accessor for PromptCompletion.DocumentCitation);
  v20 = static DocumentResourceIdentifier.== infix(_:_:)();
  outlined destroy of PromptCompletion.FileContent(v6, type metadata accessor for PromptCompletion.DocumentCitation);
  outlined destroy of PromptCompletion.FileContent(v11, type metadata accessor for PromptCompletion.DocumentCitation);
  outlined destroy of PromptCompletion.FileContent(v17, type metadata accessor for PromptCompletion.Annotation.Type);
  return v20 & 1;
}

BOOL specialized static PromptCompletion.FileContent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static URL.== infix(_:_:)() & 1) != 0 && ((v4 = type metadata accessor for PromptCompletion.FileContent(0), v5 = v4[5], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v10 = v4[6], v11 = *(a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v11 == *v13) ? (v14 = v12 == v13[1]) : (v14 = 0), v14 || (_stringCompareWithSmolCheck(_:_:expecting:)())))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

BOOL specialized static PromptCompletion.TextContent.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration16PromptCompletionV10AnnotationV_Tt1g5(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v3 >> 60 == 15)
  {
    if (v7 >> 60 == 15)
    {
      outlined copy of Data?(v4, v3);
      outlined copy of Data?(v5, v7);
      outlined consume of Data?(v4, v3);
      return 1;
    }

    goto LABEL_11;
  }

  if (v7 >> 60 == 15)
  {
LABEL_11:
    outlined copy of Data?(v4, v3);
    outlined copy of Data?(v5, v7);
    outlined consume of Data?(v4, v3);
    outlined consume of Data?(v5, v7);
    return 0;
  }

  outlined copy of Data?(v4, v3);
  outlined copy of Data?(v5, v7);
  v10 = specialized static Data.== infix(_:_:)(v4, v3, v5, v7);
  outlined consume of Data?(v5, v7);
  outlined consume of Data?(v4, v3);
  return v10;
}

BOOL specialized static PromptCompletion.Content.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v60 = type metadata accessor for PromptCompletion.FileContent(0);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PromptCompletion.Content(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v60 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v60 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16PromptCompletionV7ContentO_AEtMd, &_s15TokenGeneration16PromptCompletionV7ContentO_AEtMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v60 - v18;
  v21 = (&v60 + *(v20 + 56) - v18);
  outlined init with copy of PromptCompletion.Content(a1, &v60 - v18, type metadata accessor for PromptCompletion.Content);
  outlined init with copy of PromptCompletion.Content(a2, v21, type metadata accessor for PromptCompletion.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with copy of PromptCompletion.Content(v19, v16, type metadata accessor for PromptCompletion.Content);
      v23 = v16[1];
      v24 = v16[2];
      v26 = v16[3];
      v25 = v16[4];
      if (swift_getEnumCaseMultiPayload())
      {

        outlined consume of Data?(v26, v25);
LABEL_29:
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s15TokenGeneration16PromptCompletionV7ContentO_AEtMd, &_s15TokenGeneration16PromptCompletionV7ContentO_AEtMR);
        return 0;
      }

      v53 = *v16;
      v54 = *v21;
      v55 = v21[1];
      v56 = v21[2];
      v57 = v21[3];
      v58 = v21[4];
      v63[0] = v53;
      v63[1] = v23;
      v63[2] = v24;
      v63[3] = v26;
      v63[4] = v25;
      v62[0] = v54;
      v62[1] = v55;
      v62[2] = v56;
      v62[3] = v57;
      v62[4] = v58;
      v40 = specialized static PromptCompletion.TextContent.== infix(_:_:)(v63, v62);

      outlined consume of Data?(v57, v58);

      outlined consume of Data?(v26, v25);
LABEL_33:
      outlined destroy of PromptCompletion.FileContent(v19, type metadata accessor for PromptCompletion.Content);
      return v40;
    }

    outlined init with copy of PromptCompletion.Content(v19, v13, type metadata accessor for PromptCompletion.Content);
    v42 = *v13;
    v41 = v13[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = *v21;
      v44 = v21[1];
      v40 = specialized static Data.== infix(_:_:)(v42, v41, v43, v44);
      outlined consume of Data._Representation(v43, v44);
      v45 = v42;
      v46 = v41;
LABEL_24:
      outlined consume of Data._Representation(v45, v46);
      goto LABEL_33;
    }

    v51 = v42;
    v52 = v41;
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload != 2)
  {
    outlined init with copy of PromptCompletion.Content(v19, v7, type metadata accessor for PromptCompletion.Content);
    v47 = *v7;
    v48 = v7[1];
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v49 = *v21;
      v50 = v21[1];
      v40 = specialized static Data.== infix(_:_:)(v47, v48, v49, v50);
      outlined consume of Data._Representation(v49, v50);
      v45 = v47;
      v46 = v48;
      goto LABEL_24;
    }

    v51 = v47;
    v52 = v48;
LABEL_28:
    outlined consume of Data._Representation(v51, v52);
    goto LABEL_29;
  }

  outlined init with copy of PromptCompletion.Content(v19, v10, type metadata accessor for PromptCompletion.Content);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of PromptCompletion.FileContent(v10, type metadata accessor for PromptCompletion.FileContent);
    goto LABEL_29;
  }

  v27 = v61;
  _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v21, v61, type metadata accessor for PromptCompletion.FileContent);
  v28 = static URL.== infix(_:_:)();
  v29 = v60;
  if ((v28 & 1) == 0 || ((v30 = *(v60 + 20), v31 = *&v10[v30], v32 = *&v10[v30 + 8], v33 = (v27 + v30), v31 == *v33) ? (v34 = v32 == v33[1]) : (v34 = 0), !v34 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v35 = *(v29 + 24), v36 = *&v10[v35], v37 = *&v10[v35 + 8], v38 = (v27 + v35), v36 == *v38) ? (v39 = v37 == v38[1]) : (v39 = 0), !v39 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *&v10[*(v29 + 28)] != *(v27 + *(v29 + 28)))))
  {
    outlined destroy of PromptCompletion.FileContent(v27, type metadata accessor for PromptCompletion.FileContent);
    outlined destroy of PromptCompletion.FileContent(v10, type metadata accessor for PromptCompletion.FileContent);
    outlined destroy of PromptCompletion.FileContent(v19, type metadata accessor for PromptCompletion.Content);
    return 0;
  }

  outlined destroy of PromptCompletion.FileContent(v27, type metadata accessor for PromptCompletion.FileContent);
  outlined destroy of PromptCompletion.FileContent(v10, type metadata accessor for PromptCompletion.FileContent);
  outlined destroy of PromptCompletion.FileContent(v19, type metadata accessor for PromptCompletion.Content);
  return 1;
}

BOOL specialized static PromptCompletion.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Prompt.Rendering();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSg_AFtMd, &_s15TokenGeneration6PromptV9RenderingVSg_AFtMR);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v32 - v10;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v15 = *a2;
  v14 = a2[1];
  v16 = a2[2];

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration16ModelInformationV5AssetV_Tt1g5(v12, v15) & 1) == 0)
  {
    goto LABEL_7;
  }

  if (!v13)
  {

    if (!v16)
    {
      goto LABEL_13;
    }

LABEL_8:

LABEL_9:

    return 0;
  }

  if (!v16)
  {
LABEL_7:

    goto LABEL_8;
  }

  if (v11 == v14 && v13 == v16)
  {

LABEL_13:

    goto LABEL_15;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v19 = a2[3];
  if (!a1[3])
  {
    if (!v19)
    {

      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v20 = a1[3];
  if (!v19)
  {
LABEL_20:

    goto LABEL_9;
  }

  swift_bridgeObjectRetain_n();

  v21 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ15TokenGeneration16PromptCompletionV10ModerationV8CategoryV_AG11ProbabilityOTt1g5(v20, v19);
  swift_bridgeObjectRelease_n();

  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration16PromptCompletionV9CandidateV_Tt1g5(a1[4], a2[4]) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (a1[5] == a2[5] && a1[6] == a2[6])
  {
    if (specialized static Data.== infix(_:_:)(a1[7], a1[8], a2[7], a2[8]))
    {
      v22 = *(type metadata accessor for PromptCompletion(0) + 36);
      v23 = *(v9 + 48);
      v24 = v33;
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v22, v33, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2 + v22, v24 + v23, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
      v26 = v34;
      v25 = v35;
      v27 = *(v34 + 48);
      if (v27(v24, 1, v35) == 1)
      {
        if (v27(v24 + v23, 1, v25) == 1)
        {
          outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
          return 1;
        }
      }

      else
      {
        outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, v8, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
        if (v27(v24 + v23, 1, v25) != 1)
        {
          v28 = v24 + v23;
          v29 = v32;
          (*(v26 + 32))(v32, v28, v25);
          lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type Prompt.Rendering and conformance Prompt.Rendering, MEMORY[0x1E69DA838], MEMORY[0x1E69DA848]);
          v30 = dispatch thunk of static Equatable.== infix(_:_:)();
          v31 = *(v26 + 8);
          v31(v29, v25);
          v31(v8, v25);
          outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
          return (v30 & 1) != 0;
        }

        (*(v26 + 8))(v8, v25);
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_s15TokenGeneration6PromptV9RenderingVSg_AFtMd, &_s15TokenGeneration6PromptV9RenderingVSg_AFtMR);
    }

    return 0;
  }

  return result;
}

BOOL specialized static PromptCompletion.Candidate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v15 = a1[6];
  v16 = a1[5];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration31Promptkit_Wireformat_ToolResultV_Tt1g5Tm(*a1, *a2, type metadata accessor for PromptCompletion.Segment, type metadata accessor for PromptCompletion.Segment, specialized static PromptCompletion.Content.== infix(_:_:), type metadata accessor for PromptCompletion.Segment) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration11ModelBundleV_Tt1g5Tm(v2, v6, MEMORY[0x1E69DA810], &lazy protocol witness table cache variable for type Prompt.ToolCall and conformance Prompt.ToolCall, MEMORY[0x1E69DA810], MEMORY[0x1E69DA820]) & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    if (!v8)
    {

      goto LABEL_10;
    }

LABEL_8:

    return 0;
  }

  if (!v8)
  {
    goto LABEL_8;
  }

  swift_bridgeObjectRetain_n();

  v12 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ15TokenGeneration16PromptCompletionV10ModerationV8CategoryV_AG11ProbabilityOTt1g5(v4, v8);
  swift_bridgeObjectRelease_n();

  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v19 = v3;
  v20 = v5;
  v17 = v7;
  v18 = v10;
  outlined copy of FinishReason(v3, v5);
  outlined copy of FinishReason(v7, v10);
  v13 = specialized static FinishReason.== infix(_:_:)(&v19, &v17);
  outlined consume of FinishReason(v17, v18);
  outlined consume of FinishReason(v19, v20);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  return specialized static Data.== infix(_:_:)(v16, v15, v9, v11);
}

uint64_t _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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