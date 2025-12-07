uint64_t TokenizerRunner.tokenize(promptModules:tokenTable:attachmentTokenizer:promptPreprocessingTemplateVersion:)()
{
  v70 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(*(v0 + 328) + 24) == 0;
  v69[0] = *(v0 + 289);
  v4 = TokenizerRunner.tokenize(promptModules:tokenTable:shouldInsertImageStartEndTokens:promptPreprocessingTemplateVersion:)(v1, v2, v3, v69);
  *(v0 + 400) = v4;
  v7 = *(v4 + 2);
  *(v0 + 408) = v7;
  v64 = v7;
  if (v7)
  {
    v8 = 0;
    v9 = *(v0 + 360);
    v66 = v4 + 32;
    v68 = v4;
    v62 = (v0 + 176);
    v63 = (v0 + 96);
    while (1)
    {
      if (v8 >= *(v4 + 2))
      {
LABEL_59:
        __break(1u);
LABEL_60:
        swift_once();
        goto LABEL_29;
      }

      v10 = *&v66[16 * v8 + 8];
      v11 = *(v10 + 16);

      if (v11)
      {
        break;
      }

LABEL_7:
      ++v8;

      v4 = v68;
      if (v8 == v64)
      {
        goto LABEL_24;
      }
    }

    v12 = 0;
    while (1)
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_57;
      }

      v14 = *(v0 + 384);
      v13 = *(v0 + 392);
      v15 = *(v9 + 80);
      *(v0 + 292) = v15;
      v16 = *(v9 + 72);
      *(v0 + 416) = v16;
      outlined init with copy of TokenizationResult(v10 + ((v15 + 32) & ~v15) + v16 * v12, v13, type metadata accessor for TokenizationResult);
      outlined init with take of TokenizationResult(v13, v14, type metadata accessor for TokenizationResult);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v18 = *(v0 + 384);
      if (EnumCaseMultiPayload == 1)
      {
        break;
      }

      ++v12;
      outlined destroy of TokenizationResult(v18, type metadata accessor for TokenizationResult);
      if (v11 == v12)
      {
        goto LABEL_7;
      }
    }

    v19 = *(v0 + 328);
    outlined destroy of TokenizationResult(v18, type metadata accessor for TokenizationResult);

    outlined init with copy of (String, Any)(v19, v0 + 56, &_s19TokenGenerationCore19AttachmentTokenizer_pSgMd, &_s19TokenGenerationCore19AttachmentTokenizer_pSgMR);
    if (*(v0 + 80))
    {
      outlined init with take of PromptComponentValueConvertible((v0 + 56), v0 + 16);

      specialized UnresolvedImageTokenizationConfiguration.init(tokenTable:)(v20, v0 + 256);
      v21 = *(v0 + 288);
      if (v21 == 255)
      {
        v22 = 0;
        v23 = 0;
      }

      else
      {
        v22 = *(v0 + 256);
        v23 = *(v0 + 264);
        if ((v21 & 1) == 0)
        {
          v65 = *(v0 + 272);
          v67 = *(v0 + 280);
          v24 = *(v0 + 336);
          if (*(v0 + 289))
          {
            v25 = &type metadata for PromptPreprocessingTemplateV6Convention;
          }

          else
          {
            v25 = &type metadata for PromptPreprocessingTemplateV5Convention;
          }

          v26 = &protocol witness table for PromptPreprocessingTemplateV6Convention;
          if (!*(v0 + 289))
          {
            v26 = &protocol witness table for PromptPreprocessingTemplateV5Convention;
          }

          *(v0 + 160) = v25;
          *(v0 + 168) = v26;
          outlined init with take of PromptComponentValueConvertible((v0 + 136), v63);
          v28 = *(v0 + 120);
          v27 = *(v0 + 128);
          __swift_project_boxed_opaque_existential_1(v63, v28);
          v29 = *(v24 + 104);
          v22 = (*(v27 + 16))(v22, v23, *(v24 + 104), v24 + 16, v28, v27);
          v55 = *(v0 + 289);

          __swift_destroy_boxed_opaque_existential_0(v63);
          v56 = &type metadata for PromptPreprocessingTemplateV5Convention;
          if (v55)
          {
            v56 = &type metadata for PromptPreprocessingTemplateV6Convention;
          }

          v57 = &protocol witness table for PromptPreprocessingTemplateV5Convention;
          if (v55)
          {
            v57 = &protocol witness table for PromptPreprocessingTemplateV6Convention;
          }

          *(v0 + 240) = v56;
          *(v0 + 248) = v57;
          outlined init with take of PromptComponentValueConvertible((v0 + 216), v62);
          v58 = *(v0 + 200);
          v59 = *(v0 + 208);
          __swift_project_boxed_opaque_existential_1(v62, v58);
          v23 = (*(v59 + 16))(v65, v67, v29, v24 + 16, v58, v59);

          __swift_destroy_boxed_opaque_existential_0(v62);
        }
      }

      *(v0 + 424) = v22;
      *(v0 + 432) = v23;
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v68 + 2), 0, MEMORY[0x1E69E7CC0]);
      *(v0 + 440) = 0;
      *(v0 + 448) = v36;
      v37 = *(v0 + 400);
      if (*(v37 + 16))
      {
        v38 = 0;
        while (1)
        {
          v39 = v36;
          v40 = v37 + 16 * v38;
          *(v0 + 456) = *(v40 + 32);
          v41 = *(v40 + 40);
          *(v0 + 464) = v41;
          v42 = *(v41 + 16);
          *(v0 + 472) = v42;

          if (v42)
          {
            break;
          }

          v36 = v39;
LABEL_42:
          v46 = *(v36 + 2);
          v45 = *(v36 + 3);
          if (v46 >= v45 >> 1)
          {
            v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v36);
          }

          v47 = *(v0 + 456);
          v48 = *(v0 + 408);
          v49 = *(v0 + 440) + 1;
          *(v36 + 2) = v46 + 1;
          v50 = &v36[16 * v46];
          *(v50 + 4) = v47;
          *(v50 + 5) = v41;
          if (v49 == v48)
          {
            v30 = v36;
            v61 = *(v0 + 424);
            v60 = *(v0 + 432);

            outlined consume of ImageTokenizationConfiguration?(v61, v60);
            __swift_destroy_boxed_opaque_existential_0((v0 + 16));
            goto LABEL_25;
          }

          v38 = *(v0 + 440) + 1;
          *(v0 + 440) = v38;
          *(v0 + 448) = v36;
          v37 = *(v0 + 400);
          if (v38 >= *(v37 + 16))
          {
            goto LABEL_58;
          }
        }

        v43 = 0;
        while (1)
        {
          *(v0 + 488) = v43;
          *(v0 + 496) = v41;
          *(v0 + 480) = v41;
          v44 = *(v0 + 464);
          if (v43 >= *(v44 + 16))
          {
            break;
          }

          outlined init with copy of TokenizationResult(v44 + ((*(v0 + 292) + 32) & ~*(v0 + 292)) + *(v0 + 416) * v43, *(v0 + 376), type metadata accessor for TokenizationResult);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v51 = *(v0 + 424);
            v52 = *(v0 + 432);
            outlined init with take of TokenizationResult(*(v0 + 376), *(v0 + 344), type metadata accessor for Prompt.AttachmentContent);
            *(v0 + 296) = v51;
            *(v0 + 304) = v52;
            outlined copy of ImageTokenizationConfiguration?(v51, v52);
            v53 = swift_task_alloc();
            *(v0 + 504) = v53;
            *v53 = v0;
            v53[1] = TokenizerRunner.tokenize(promptModules:tokenTable:attachmentTokenizer:promptPreprocessingTemplateVersion:);
            v54 = *(v0 + 344);

            return specialized static TokenizerRunner.tokenize(attachment:using:configuration:)(v54, v0 + 16, (v0 + 296));
          }

          outlined destroy of TokenizationResult(*(v0 + 376), type metadata accessor for TokenizationResult);
          v43 = *(v0 + 488) + 1;
          if (v43 == *(v0 + 472))
          {

            v36 = *(v0 + 448);
            goto LABEL_42;
          }
        }

LABEL_57:
        __break(1u);
      }

LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    outlined destroy of [Regex2BNF.CharacterPredicate](v0 + 56, &_s19TokenGenerationCore19AttachmentTokenizer_pSgMd, &_s19TokenGenerationCore19AttachmentTokenizer_pSgMR);
    if (one-time initialization token for tokenization != -1)
    {
      goto LABEL_60;
    }

LABEL_29:
    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Log.tokenization);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1A8E85000, v33, v34, "Attachments were remaining in the prompt but no attachment tokenizer present.", v35, 2u);
      MEMORY[0x1AC57DBF0](v35, -1, -1);
    }

    type metadata accessor for GenerationError(0);
    _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
LABEL_24:
    v30 = v4;
LABEL_25:

    v31 = *(v0 + 8);

    return v31(v30);
  }
}

{
  **(v0 + 368) = *(v0 + 520);
  swift_storeEnumTagMultiPayload();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 496);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_23:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v0 + 488);
  result = outlined destroy of TokenizationResult(*(v0 + 344), type metadata accessor for Prompt.AttachmentContent);
  if (v3 >= v2[2])
  {
    __break(1u);
  }

  else
  {
    outlined assign with take of TokenizationResult(*(v0 + 368), v2 + ((*(v0 + 292) + 32) & ~*(v0 + 292)) + *(v0 + 416) * *(v0 + 488));
    while (1)
    {
      v5 = *(v0 + 488) + 1;
      v6 = *(v0 + 464);
      if (v5 == *(v0 + 472))
      {
        break;
      }

LABEL_12:
      *(v0 + 488) = v5;
      *(v0 + 496) = v2;
      *(v0 + 480) = v2;
      if (v5 >= v6[2])
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      outlined init with copy of TokenizationResult(v6 + ((*(v0 + 292) + 32) & ~*(v0 + 292)) + *(v0 + 416) * v5, *(v0 + 376), type metadata accessor for TokenizationResult);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = *(v0 + 424);
        v22 = *(v0 + 432);
        outlined init with take of TokenizationResult(*(v0 + 376), *(v0 + 344), type metadata accessor for Prompt.AttachmentContent);
        *(v0 + 296) = v21;
        *(v0 + 304) = v22;
        outlined copy of ImageTokenizationConfiguration?(v21, v22);
        v23 = swift_task_alloc();
        *(v0 + 504) = v23;
        *v23 = v0;
        v23[1] = TokenizerRunner.tokenize(promptModules:tokenTable:attachmentTokenizer:promptPreprocessingTemplateVersion:);
        v24 = *(v0 + 344);

        return specialized static TokenizerRunner.tokenize(attachment:using:configuration:)(v24, v0 + 16, (v0 + 296));
      }

      outlined destroy of TokenizationResult(*(v0 + 376), type metadata accessor for TokenizationResult);
    }

    v7 = *(v0 + 448);
    v6 = v2;
    while (1)
    {
      v9 = *(v7 + 2);
      v8 = *(v7 + 3);
      v2 = (v9 + 1);
      if (v9 >= v8 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
      }

      v10 = *(v0 + 456);
      v11 = *(v0 + 408);
      v12 = *(v0 + 440) + 1;
      *(v7 + 2) = v2;
      v13 = &v7[16 * v9];
      *(v13 + 4) = v10;
      *(v13 + 5) = v6;
      if (v12 == v11)
      {
        break;
      }

      v14 = *(v0 + 440) + 1;
      *(v0 + 440) = v14;
      *(v0 + 448) = v7;
      v15 = *(v0 + 400);
      if (v14 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      v16 = v15 + 16 * v14;
      *(v0 + 456) = *(v16 + 32);
      v6 = *(v16 + 40);
      *(v0 + 464) = v6;
      v17 = v6[2];
      *(v0 + 472) = v17;

      if (v17)
      {

        v5 = 0;
        v2 = v6;
        goto LABEL_12;
      }
    }

    v19 = *(v0 + 424);
    v18 = *(v0 + 432);

    outlined consume of ImageTokenizationConfiguration?(v19, v18);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v20 = *(v0 + 8);

    return v20(v7);
  }

  return result;
}

{
  v1 = v0[43];
  outlined consume of ImageTokenizationConfiguration?(v0[53], v0[54]);

  outlined destroy of TokenizationResult(v1, type metadata accessor for Prompt.AttachmentContent);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t TokenizerRunner.tokenize(promptModules:tokenTable:attachmentTokenizer:promptPreprocessingTemplateVersion:)(uint64_t a1)
{
  v4 = *v2;
  (*v2)[64] = v1;

  if (v1)
  {
    outlined consume of ImageTokenizationConfiguration?(v4[37], v4[38]);
    v5 = TokenizerRunner.tokenize(promptModules:tokenTable:attachmentTokenizer:promptPreprocessingTemplateVersion:);
  }

  else
  {
    v4[65] = a1;
    outlined consume of ImageTokenizationConfiguration?(v4[37], v4[38]);
    v5 = TokenizerRunner.tokenize(promptModules:tokenTable:attachmentTokenizer:promptPreprocessingTemplateVersion:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

char *TokenizerRunner.tokenize(promptModules:tokenTable:shouldInsertImageStartEndTokens:promptPreprocessingTemplateVersion:)(_UNKNOWN **a1, uint64_t a2, int a3, unsigned __int8 *a4)
{
  v229 = a3;
  v233 = a1;
  v6 = type metadata accessor for Prompt.AttachmentContent(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v258 = &v223 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v257 = &v223 - v9;
  v269 = type metadata accessor for TokenizationResult(0);
  v230 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269);
  v224 = &v223 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v247 = &v223 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v242 = (&v223 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v241 = &v223 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v240 = (&v223 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v250 = &v223 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v254 = &v223 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v253 = &v223 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v223 = &v223 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v246 = &v223 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v239 = (&v223 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v238 = &v223 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v237 = (&v223 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v249 = &v223 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v252 = &v223 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v251 = &v223 - v40;
  v228 = type metadata accessor for Prompt.SpecialToken(0);
  v248 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v234 = (&v223 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v223 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v245 = &v223 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetSgMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetSgMR);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v49 = &v223 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v255 = &v223 - v51;
  LODWORD(v227) = *a4;
  v236 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15TokenGeneration6PromptV07SpecialC0V_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v52 = a2 + 64;
  v53 = 1 << *(a2 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(a2 + 64);
  v56 = (v53 + 63) >> 6;
  v243 = a2;

  v57 = 0;
  v244 = v44;
  v256 = v49;
  while (1)
  {
    v58 = v57;
    if (!v55)
    {
      if (v56 <= v57 + 1)
      {
        v60 = v57 + 1;
      }

      else
      {
        v60 = v56;
      }

      v57 = v60 - 1;
      while (1)
      {
        v59 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          break;
        }

        if (v59 >= v56)
        {
          v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMR);
          v69 = v256;
          (*(*(v74 - 8) + 56))(v256, 1, 1, v74);
          v55 = 0;
          goto LABEL_14;
        }

        v55 = *(v52 + 8 * v59);
        ++v58;
        if (v55)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v59 = v57;
LABEL_13:
    v61 = __clz(__rbit64(v55));
    v55 &= v55 - 1;
    v62 = v61 | (v59 << 6);
    v63 = v243;
    v64 = v245;
    outlined init with copy of TokenizationResult(*(v243 + 48) + *(v248 + 72) * v62, v245, type metadata accessor for Prompt.SpecialToken);
    outlined init with copy of Any(*(v63 + 56) + 32 * v62, &v262);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMR);
    v66 = *(v65 + 48);
    v67 = v64;
    v68 = v256;
    outlined init with take of TokenizationResult(v67, v256, type metadata accessor for Prompt.SpecialToken);
    outlined init with take of Any(&v262, (v68 + v66));
    (*(*(v65 - 8) + 56))(v68, 0, 1, v65);
    v57 = v59;
    v69 = v68;
    v44 = v244;
LABEL_14:
    v70 = v255;
    outlined init with take of (key: Prompt.SpecialToken, value: Any)?(v69, v255);
    v71 = v70;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMR);
    if ((*(*(v72 - 8) + 48))(v71, 1, v72) == 1)
    {
      break;
    }

    v73 = *(v72 + 48);
    outlined init with take of TokenizationResult(v71, v44, type metadata accessor for Prompt.SpecialToken);
    outlined init with take of Any((v71 + v73), &v262);
    if (swift_dynamicCast())
    {
      v232 = v259;
      v75 = v234;
      outlined init with copy of TokenizationResult(v44, v234, type metadata accessor for Prompt.SpecialToken);
      v76 = v236;
      LODWORD(v231) = swift_isUniquelyReferenced_nonNull_native();
      *&v262 = v76;
      v78 = specialized __RawDictionaryStorage.find<A>(_:)(v75);
      v79 = *(v76 + 16);
      v80 = (v77 & 1) == 0;
      v81 = v79 + v80;
      if (__OFADD__(v79, v80))
      {
        goto LABEL_142;
      }

      if (*(v76 + 24) >= v81)
      {
        if ((v231 & 1) == 0)
        {
          v236 = v78;
          v94 = v77;
          specialized _NativeDictionary.copy()();
          v77 = v94;
          v78 = v236;
        }
      }

      else
      {
        v82 = v77;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v81, v231);
        v83 = specialized __RawDictionaryStorage.find<A>(_:)(v234);
        if ((v82 & 1) != (v84 & 1))
        {
          goto LABEL_144;
        }

        v78 = v83;
        v77 = v82;
      }

      v85 = v262;
      v236 = v262;
      if (v77)
      {
        v86 = (*(v262 + 56) + 16 * v78);
        v87 = *(&v232 + 1);
        *v86 = v232;
        v86[1] = v87;

        outlined destroy of TokenizationResult(v234, type metadata accessor for Prompt.SpecialToken);
        outlined destroy of TokenizationResult(v44, type metadata accessor for Prompt.SpecialToken);
      }

      else
      {
        *(v262 + 8 * (v78 >> 6) + 64) |= 1 << v78;
        v88 = v234;
        outlined init with copy of TokenizationResult(v234, v85[6] + *(v248 + 72) * v78, type metadata accessor for Prompt.SpecialToken);
        v89 = (v85[7] + 16 * v78);
        v90 = *(&v232 + 1);
        *v89 = v232;
        v89[1] = v90;
        outlined destroy of TokenizationResult(v88, type metadata accessor for Prompt.SpecialToken);
        outlined destroy of TokenizationResult(v44, type metadata accessor for Prompt.SpecialToken);
        v91 = v85[2];
        v92 = __OFADD__(v91, 1);
        v93 = v91 + 1;
        if (v92)
        {
          goto LABEL_143;
        }

        v85[2] = v93;
      }
    }

    else
    {
      outlined destroy of TokenizationResult(v44, type metadata accessor for Prompt.SpecialToken);
    }
  }

  if (v229)
  {

    specialized UnresolvedImageTokenizationConfiguration.init(tokenTable:)(v96, v265);
    v248 = v265[0];
    v256 = v265[1];
    v244 = v266[0];
    v245 = v266[1];
    v97 = v267;
  }

  else
  {
    v248 = 0;
    v256 = 0;
    v244 = 0;
    v245 = 0;
    v97 = 255;
  }

  v98 = v235;
  v99 = v233[2];
  v100 = MEMORY[0x1E69E7CC0];
  if (!v99)
  {
LABEL_138:
    outlined consume of UnresolvedImageTokenizationConfiguration?(v248, v256, v244, v245, v97);
    return v100;
  }

  v101 = 0;
  v102 = &type metadata for PromptPreprocessingTemplateV5Convention;
  v228 = (v233 + 4);
  if (v227)
  {
    v102 = &type metadata for PromptPreprocessingTemplateV6Convention;
  }

  v234 = v102;
  if (v227)
  {
    v103 = &protocol witness table for PromptPreprocessingTemplateV6Convention;
  }

  else
  {
    v103 = &protocol witness table for PromptPreprocessingTemplateV5Convention;
  }

  v233 = v103;
  v104 = 1;
  *&v95 = 136643075;
  v225 = v95;
  LODWORD(v255) = v97;
  v227 = v99;
  while (1)
  {
    v105 = v228 + 16 * v101;
    v106 = *v105;
    LOBYTE(v105) = *(v105 + 8);
    v236 = v106;
    *(&v232 + 1) = v100;
    *&v232 = v101 + 1;
    if (v105)
    {
      v260 = v234;
      v261 = v233;
      outlined init with take of PromptComponentValueConvertible(&v259, &v262);
      v108 = v263;
      v107 = v264;
      __swift_project_boxed_opaque_existential_1(&v262, v263);
      v235 = v108;
      if ((v229 & 1) == 0 || v97 == 255)
      {
      }

      else
      {
        if ((v97 & 1) == 0)
        {

          v220 = v248;
          v123 = v256;
          v124 = v244;
          v100 = v245;
          outlined copy of UnresolvedImageTokenizationConfiguration?(v248, v256, v244, v245, v97);
          v122 = v220;
          v106 = v236;
LABEL_49:
          v125 = (*(v107 + 24))(v106, v122, v123, v124, v100, v235, v107);
          if (v98)
          {
            break;
          }

          v126 = v125;
          outlined consume of (start: String, end: String)?(v122, v123, v124, v100);
          __swift_destroy_boxed_opaque_existential_0(&v262);
          v260 = v234;
          v261 = v233;
          outlined init with take of PromptComponentValueConvertible(&v259, &v262);
          v231 = v126;
          v127 = TokenizerRunner.tokenize(renderedPromptFragments:tokenTable:shouldAppendBeginPromptToken:promptPreprocessingTemplateConvention:)(v126, v243, v104 & 1, &v262);
          __swift_destroy_boxed_opaque_existential_0(&v262);
          v128 = v127[2];
          v235 = 0;
          if (v128)
          {
            v129 = (*(v230 + 80) + 32) & ~*(v230 + 80);
            v226 = v127;
            v130 = v127 + v129;
            v131 = *(v230 + 72);
            v132 = MEMORY[0x1E69E7CC0];
            v133 = v253;
            v134 = v254;
            while (1)
            {
              outlined init with copy of TokenizationResult(v130, v133, type metadata accessor for TokenizationResult);
              outlined init with copy of TokenizationResult(v133, v134, type metadata accessor for TokenizationResult);
              if (swift_getEnumCaseMultiPayload() != 1)
              {
                outlined destroy of TokenizationResult(v134, type metadata accessor for TokenizationResult);
                outlined init with copy of TokenizationResult(v133, v250, type metadata accessor for TokenizationResult);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v132 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v132[2] + 1, 1, v132);
                }

                v143 = v132[2];
                v146 = v132[3];
                v145 = v143 + 1;
                if (v143 >= v146 >> 1)
                {
                  v132 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v146 > 1), v143 + 1, 1, v132);
                }

                v135 = &v273;
                goto LABEL_53;
              }

              outlined init with take of TokenizationResult(v134, v258, type metadata accessor for Prompt.AttachmentContent);
              v137 = v255;
              if (v255 == 255)
              {
                goto LABEL_71;
              }

              if ((v255 & 1) == 0)
              {
                break;
              }

              v138 = v248;
              *v240 = v248;
              swift_storeEnumTagMultiPayload();
              outlined copy of UnresolvedImageTokenizationConfiguration?(v138, v256, v244, v245, v137);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v132 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v132[2] + 1, 1, v132);
              }

              v140 = v132[2];
              v139 = v132[3];
              v141 = v140 + 1;
              if (v140 >= v139 >> 1)
              {
                v132 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v139 > 1), v140 + 1, 1, v132);
              }

              v132[2] = v141;
              outlined init with take of TokenizationResult(v240, v132 + v129 + v140 * v131, type metadata accessor for TokenizationResult);
              outlined init with copy of TokenizationResult(v258, v241, type metadata accessor for Prompt.AttachmentContent);
              swift_storeEnumTagMultiPayload();
              v142 = v132[3];
              v143 = v140 + 2;
              if ((v140 + 2) > (v142 >> 1))
              {
                v132 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v142 > 1), v140 + 2, 1, v132);
              }

              v132[2] = v143;
              outlined init with take of TokenizationResult(v241, v132 + v129 + v141 * v131, type metadata accessor for TokenizationResult);
              *v242 = v256;
              swift_storeEnumTagMultiPayload();
              v144 = v132[3];
              v145 = v140 + 3;

              if ((v140 + 3) > (v144 >> 1))
              {
                v132 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v144 > 1), v140 + 3, 1, v132);
              }

              outlined destroy of TokenizationResult(v258, type metadata accessor for Prompt.AttachmentContent);
              v135 = &v268;
LABEL_53:
              v136 = *(v135 - 32);
              v133 = v253;
              outlined destroy of TokenizationResult(v253, type metadata accessor for TokenizationResult);
              v132[2] = v145;
              outlined init with take of TokenizationResult(v136, v132 + v129 + v143 * v131, type metadata accessor for TokenizationResult);
              v130 += v131;
              --v128;
              v134 = v254;
              if (!v128)
              {

                v98 = v235;
                v172 = MEMORY[0x1E69E7CC0];
                goto LABEL_108;
              }
            }

            outlined copy of UnresolvedImageTokenizationConfiguration.ImageStartAndEnd(v248, v256, v244, v245, 0);

LABEL_71:
            outlined init with copy of TokenizationResult(v258, v247, type metadata accessor for Prompt.AttachmentContent);
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v132 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v132[2] + 1, 1, v132);
            }

            v143 = v132[2];
            v147 = v132[3];
            v145 = v143 + 1;
            if (v143 >= v147 >> 1)
            {
              v132 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v147 > 1), v143 + 1, 1, v132);
            }

            outlined destroy of TokenizationResult(v258, type metadata accessor for Prompt.AttachmentContent);
            v135 = &v271;
            goto LABEL_53;
          }

          v172 = MEMORY[0x1E69E7CC0];
          v132 = MEMORY[0x1E69E7CC0];
LABEL_108:
          if (one-time initialization token for tokenization != -1)
          {
            swift_once();
          }

          v173 = type metadata accessor for Logger();
          __swift_project_value_buffer(v173, static Log.tokenization);
          v174 = v231;

          v175 = Logger.logObject.getter();
          v176 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v175, v176))
          {
            v177 = swift_slowAlloc();
            v178 = swift_slowAlloc();
            *&v262 = v178;
            *v177 = v225;
            v179 = type metadata accessor for Prompt.RenderedPromptFragment(0);
            v180 = MEMORY[0x1AC57C2C0](v174, v179);
            v182 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v181, &v262);

            *(v177 + 4) = v182;
            *(v177 + 12) = 2085;
            v183 = MEMORY[0x1AC57C2C0](v132, v269);
            v185 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v184, &v262);

            *(v177 + 14) = v185;
            _os_log_impl(&dword_1A8E85000, v175, v176, "Tokenized full attention module %{sensitive}s to %{sensitive}s", v177, 0x16u);
            swift_arrayDestroy();
            v186 = v178;
            v172 = MEMORY[0x1E69E7CC0];
            MEMORY[0x1AC57DBF0](v186, -1, -1);
            MEMORY[0x1AC57DBF0](v177, -1, -1);
          }

          v187 = v132[2];
          if (v187)
          {
            *&v262 = v172;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v187, 0);
            v172 = v262;
            v188 = (*(v230 + 80) + 32) & ~*(v230 + 80);
            v189 = v132 + v188;
            v190 = *(v230 + 72);
            v191 = v224;
            do
            {
              outlined init with copy of TokenizationResult(v189, v191, type metadata accessor for TokenizationResult);
              *&v262 = v172;
              v193 = *(v172 + 16);
              v192 = *(v172 + 24);
              if (v193 >= v192 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v192 > 1), v193 + 1, 1);
                v191 = v224;
                v172 = v262;
              }

              *(v172 + 16) = v193 + 1;
              outlined init with take of TokenizationResult(v191, v172 + v188 + v193 * v190, type metadata accessor for TokenizationResult);
              v189 += v190;
              --v187;
            }

            while (v187);
LABEL_128:

            v98 = v235;
            goto LABEL_130;
          }

          goto LABEL_129;
        }

        v109 = v248;
        v110 = v256;
        v111 = v244;
        v112 = v245;
        outlined copy of UnresolvedImageTokenizationConfiguration?(v248, v256, v244, v245, v97);

        outlined copy of UnresolvedImageTokenizationConfiguration?(v109, v110, v111, v112, v97);

        v113 = v109;
        v106 = v236;
        outlined consume of UnresolvedImageTokenizationConfiguration?(v113, v110, v111, v112, v97);
      }

      v122 = 0;
      v123 = 0;
      v124 = 0;
      v100 = 0;
      goto LABEL_49;
    }

    LODWORD(v231) = v104;
    v114 = v106;
    v260 = v234;
    v261 = v233;
    outlined init with take of PromptComponentValueConvertible(&v259, &v262);
    v116 = v263;
    v115 = v264;
    __swift_project_boxed_opaque_existential_1(&v262, v263);
    v235 = v116;
    if ((v229 & 1) == 0 || v97 == 255)
    {
      v121 = v114;

      goto LABEL_77;
    }

    if (v97)
    {
      v117 = v248;
      v118 = v256;
      v119 = v244;
      v120 = v245;
      outlined copy of UnresolvedImageTokenizationConfiguration?(v248, v256, v244, v245, v97);

      outlined copy of UnresolvedImageTokenizationConfiguration?(v117, v118, v119, v120, v97);

      v121 = v236;
      outlined consume of UnresolvedImageTokenizationConfiguration?(v117, v118, v119, v120, v97);
LABEL_77:
      v122 = 0;
      v123 = 0;
      v124 = 0;
      v100 = 0;
      goto LABEL_78;
    }

    v221 = v248;
    v123 = v256;
    v124 = v244;
    v100 = v245;
    outlined copy of UnresolvedImageTokenizationConfiguration?(v248, v256, v244, v245, v97);
    v122 = v221;
    v121 = v236;
LABEL_78:
    v148 = (*(v115 + 24))(v121, v122, v123, v124, v100, v235, v115);
    if (v98)
    {
      break;
    }

    v149 = v148;
    outlined consume of (start: String, end: String)?(v122, v123, v124, v100);
    __swift_destroy_boxed_opaque_existential_0(&v262);
    v260 = v234;
    v261 = v233;
    outlined init with take of PromptComponentValueConvertible(&v259, &v262);
    v150 = v231 & 1;
    v231 = v149;
    v151 = TokenizerRunner.tokenize(renderedPromptFragments:tokenTable:shouldAppendBeginPromptToken:promptPreprocessingTemplateConvention:)(v149, v243, v150, &v262);
    __swift_destroy_boxed_opaque_existential_0(&v262);
    v152 = v151[2];
    v235 = 0;
    if (v152)
    {
      v153 = (*(v230 + 80) + 32) & ~*(v230 + 80);
      v226 = v151;
      v154 = v151 + v153;
      v155 = *(v230 + 72);
      v156 = MEMORY[0x1E69E7CC0];
      v157 = v252;
      v158 = v251;
      while (1)
      {
        outlined init with copy of TokenizationResult(v154, v158, type metadata accessor for TokenizationResult);
        outlined init with copy of TokenizationResult(v158, v157, type metadata accessor for TokenizationResult);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          outlined destroy of TokenizationResult(v157, type metadata accessor for TokenizationResult);
          outlined init with copy of TokenizationResult(v158, v249, type metadata accessor for TokenizationResult);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v156[2] + 1, 1, v156);
          }

          v167 = v156[2];
          v170 = v156[3];
          v169 = v167 + 1;
          if (v167 >= v170 >> 1)
          {
            v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v170 > 1), v167 + 1, 1, v156);
          }

          v159 = &v272;
          goto LABEL_82;
        }

        outlined init with take of TokenizationResult(v157, v257, type metadata accessor for Prompt.AttachmentContent);
        v161 = v255;
        if (v255 == 255)
        {
          goto LABEL_100;
        }

        if ((v255 & 1) == 0)
        {
          break;
        }

        v162 = v248;
        *v237 = v248;
        swift_storeEnumTagMultiPayload();
        outlined copy of UnresolvedImageTokenizationConfiguration?(v162, v256, v244, v245, v161);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v156[2] + 1, 1, v156);
        }

        v164 = v156[2];
        v163 = v156[3];
        v165 = v164 + 1;
        if (v164 >= v163 >> 1)
        {
          v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v163 > 1), v164 + 1, 1, v156);
        }

        v156[2] = v165;
        outlined init with take of TokenizationResult(v237, v156 + v153 + v164 * v155, type metadata accessor for TokenizationResult);
        outlined init with copy of TokenizationResult(v257, v238, type metadata accessor for Prompt.AttachmentContent);
        swift_storeEnumTagMultiPayload();
        v166 = v156[3];
        v167 = v164 + 2;
        if ((v164 + 2) > (v166 >> 1))
        {
          v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v166 > 1), v164 + 2, 1, v156);
        }

        v156[2] = v167;
        outlined init with take of TokenizationResult(v238, v156 + v153 + v165 * v155, type metadata accessor for TokenizationResult);
        *v239 = v256;
        swift_storeEnumTagMultiPayload();
        v168 = v156[3];
        v169 = v164 + 3;

        if ((v164 + 3) > (v168 >> 1))
        {
          v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v168 > 1), v164 + 3, 1, v156);
        }

        outlined destroy of TokenizationResult(v257, type metadata accessor for Prompt.AttachmentContent);
        v159 = v266;
LABEL_82:
        v160 = *(v159 - 32);
        v158 = v251;
        outlined destroy of TokenizationResult(v251, type metadata accessor for TokenizationResult);
        v156[2] = v169;
        outlined init with take of TokenizationResult(v160, v156 + v153 + v167 * v155, type metadata accessor for TokenizationResult);
        v154 += v155;
        --v152;
        v157 = v252;
        if (!v152)
        {

          v98 = v235;
          v172 = MEMORY[0x1E69E7CC0];
          goto LABEL_119;
        }
      }

      outlined copy of UnresolvedImageTokenizationConfiguration.ImageStartAndEnd(v248, v256, v244, v245, 0);

LABEL_100:
      outlined init with copy of TokenizationResult(v257, v246, type metadata accessor for Prompt.AttachmentContent);
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v156[2] + 1, 1, v156);
      }

      v167 = v156[2];
      v171 = v156[3];
      v169 = v167 + 1;
      if (v167 >= v171 >> 1)
      {
        v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v171 > 1), v167 + 1, 1, v156);
      }

      outlined destroy of TokenizationResult(v257, type metadata accessor for Prompt.AttachmentContent);
      v159 = &v270;
      goto LABEL_82;
    }

    v172 = MEMORY[0x1E69E7CC0];
    v156 = MEMORY[0x1E69E7CC0];
LABEL_119:
    if (one-time initialization token for tokenization != -1)
    {
      swift_once();
    }

    v194 = type metadata accessor for Logger();
    __swift_project_value_buffer(v194, static Log.tokenization);
    v195 = v231;

    v196 = Logger.logObject.getter();
    v197 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v196, v197))
    {
      v198 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      *&v262 = v199;
      *v198 = v225;
      v200 = type metadata accessor for Prompt.RenderedPromptFragment(0);
      v201 = MEMORY[0x1AC57C2C0](v195, v200);
      v203 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v201, v202, &v262);

      *(v198 + 4) = v203;
      *(v198 + 12) = 2085;
      v204 = MEMORY[0x1AC57C2C0](v156, v269);
      v206 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v204, v205, &v262);

      *(v198 + 14) = v206;
      _os_log_impl(&dword_1A8E85000, v196, v197, "Tokenized self attention module %{sensitive}s to %{sensitive}s", v198, 0x16u);
      swift_arrayDestroy();
      v207 = v199;
      v172 = MEMORY[0x1E69E7CC0];
      MEMORY[0x1AC57DBF0](v207, -1, -1);
      MEMORY[0x1AC57DBF0](v198, -1, -1);
    }

    v208 = v156[2];
    if (v208)
    {
      *&v262 = v172;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v208, 0);
      v172 = v262;
      v209 = (*(v230 + 80) + 32) & ~*(v230 + 80);
      v210 = v156 + v209;
      v211 = *(v230 + 72);
      v212 = v223;
      do
      {
        outlined init with copy of TokenizationResult(v210, v212, type metadata accessor for TokenizationResult);
        *&v262 = v172;
        v214 = *(v172 + 16);
        v213 = *(v172 + 24);
        if (v214 >= v213 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v213 > 1), v214 + 1, 1);
          v212 = v223;
          v172 = v262;
        }

        *(v172 + 16) = v214 + 1;
        outlined init with take of TokenizationResult(v212, v172 + v209 + v214 * v211, type metadata accessor for TokenizationResult);
        v210 += v211;
        --v208;
      }

      while (v208);
      goto LABEL_128;
    }

LABEL_129:

LABEL_130:
    v100 = *(&v232 + 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v216 = v227;
    v101 = v232;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v100 + 2) + 1, 1, v100);
    }

    v218 = *(v100 + 2);
    v217 = *(v100 + 3);
    if (v218 >= v217 >> 1)
    {
      v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v217 > 1), v218 + 1, 1, v100);
    }

    *(v100 + 2) = v218 + 1;
    v219 = &v100[16 * v218];
    *(v219 + 4) = v231;
    *(v219 + 5) = v172;
    v97 = v255;
    if (v101 == v216)
    {
      goto LABEL_138;
    }

    v104 = 0;
  }

  outlined consume of (start: String, end: String)?(v122, v123, v124, v100);

  outlined consume of UnresolvedImageTokenizationConfiguration?(v248, v256, v244, v245, v255);

  __swift_destroy_boxed_opaque_existential_0(&v262);
  return v100;
}

char *TokenizerRunner.tokenizeModularPrompt(prompt:tokenTable:localizationOverrideMap:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = a1[3];
  v11 = *a1;
  v12 = *(a1 + 1);
  v13 = v7;
  v10 = 0;
  v8 = Prompt.renderPromptModules(tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:substitutionTextForInputTokenText:)(a2, a3, &v10, *(v3 + 104));
  if (!v4)
  {
    LOBYTE(v11) = 0;
    v5 = TokenizerRunner.tokenize(promptModules:tokenTable:shouldInsertImageStartEndTokens:promptPreprocessingTemplateVersion:)(v8, a2, 1, &v11);
  }

  return v5;
}

__int128 *TokenizerRunner.tokenizeModularPrompt(prompt:tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:)(char *a1, int64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v133 = a3;
  v135 = a2;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMd, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMR);
  MEMORY[0x1EEE9AC00](v132);
  v143 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v116 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v116 - v11;
  v144 = type metadata accessor for Prompt.SpecialToken(0);
  v140 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v14 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v116 - v16;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit12SpecialTokenV3key_yp5valuetMd, &_s9PromptKit12SpecialTokenV3key_yp5valuetMR);
  MEMORY[0x1EEE9AC00](v134);
  v19 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v116 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v116 - v24;
  v26 = *a4;
  v27 = v142;
  PromptVariant.tgPrompt.getter(&v145);
  if (v27)
  {
    return a1;
  }

  v141 = v25;
  v128 = v22;
  v130 = v17;
  v124 = v14;
  v121 = v26;
  v131 = v12;
  v125 = v9;
  v122 = 0;
  v120 = *(&v145 + 1);
  v117 = v145;
  v119 = v146;
  v118 = v147;
  v28 = v135;
  v29 = v135 + 64;
  v30 = 1 << *(v135 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v135 + 64);
  v33 = (v30 + 63) >> 6;

  v34 = 0;
  v35 = MEMORY[0x1E69E7CC8];
  v36 = v134;
  v127 = v29;
  v126 = v33;
  v129 = v19;
  while (1)
  {
    v142 = v35;
    if (!v32)
    {
      break;
    }

LABEL_12:
    v39 = __clz(__rbit64(v32)) | (v34 << 6);
    v40 = *(v28 + 48);
    v41 = type metadata accessor for SpecialToken();
    v42 = *(v41 - 8);
    v43 = v141;
    (*(v42 + 16))(v141, v40 + *(v42 + 72) * v39, v41);
    outlined init with copy of Any(*(v28 + 56) + 32 * v39, v43 + *(v36 + 48));
    v44 = v128;
    outlined init with copy of (String, Any)(v43, v128, &_s9PromptKit12SpecialTokenV3key_yp5valuetMd, &_s9PromptKit12SpecialTokenV3key_yp5valuetMR);
    v139 = *(v36 + 48);
    v45 = SpecialToken.identifier.getter();
    v137 = v41;
    v138 = v46;
    v136 = *(v42 + 8);
    v136(v44, v41);
    v47 = v144;
    v48 = *(v144 + 20);
    v49 = type metadata accessor for Locale();
    v50 = v130 + v48;
    v51 = v130;
    (*(*(v49 - 8) + 56))(v50, 1, 1, v49);
    v52 = v138;
    *v51 = v45;
    v51[1] = v52;
    v53 = (v51 + *(v47 + 24));
    *v53 = 0;
    v53[1] = 0;
    *(v51 + *(v47 + 28)) = 0;
    __swift_destroy_boxed_opaque_existential_0((v44 + v139));
    v54 = v43;
    v55 = v129;
    outlined init with copy of (String, Any)(v54, v129, &_s9PromptKit12SpecialTokenV3key_yp5valuetMd, &_s9PromptKit12SpecialTokenV3key_yp5valuetMR);
    outlined init with take of Any((v55 + *(v36 + 48)), &v145);
    v56 = v142;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v148 = v56;
    v59 = specialized __RawDictionaryStorage.find<A>(_:)(v51);
    v60 = *(v56 + 16);
    v61 = (v58 & 1) == 0;
    v62 = v60 + v61;
    if (__OFADD__(v60, v61))
    {
      goto LABEL_50;
    }

    v63 = v58;
    if (*(v56 + 24) < v62)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v62, isUniquelyReferenced_nonNull_native);
      v64 = specialized __RawDictionaryStorage.find<A>(_:)(v51);
      if ((v63 & 1) != (v65 & 1))
      {
        goto LABEL_54;
      }

      v59 = v64;
      goto LABEL_16;
    }

    v66 = v140;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
LABEL_16:
      v66 = v140;
    }

    v35 = v148;
    if (v63)
    {
      v37 = (v148[7] + 32 * v59);
      __swift_destroy_boxed_opaque_existential_0(v37);
      outlined init with take of Any(&v145, v37);
      outlined destroy of TokenizationResult(v51, type metadata accessor for Prompt.SpecialToken);
      outlined destroy of [Regex2BNF.CharacterPredicate](v141, &_s9PromptKit12SpecialTokenV3key_yp5valuetMd, &_s9PromptKit12SpecialTokenV3key_yp5valuetMR);
    }

    else
    {
      v148[(v59 >> 6) + 8] |= 1 << v59;
      outlined init with copy of TokenizationResult(v51, v35[6] + *(v66 + 72) * v59, type metadata accessor for Prompt.SpecialToken);
      outlined init with take of Any(&v145, (v35[7] + 32 * v59));
      outlined destroy of TokenizationResult(v51, type metadata accessor for Prompt.SpecialToken);
      outlined destroy of [Regex2BNF.CharacterPredicate](v141, &_s9PromptKit12SpecialTokenV3key_yp5valuetMd, &_s9PromptKit12SpecialTokenV3key_yp5valuetMR);
      v67 = v35[2];
      v68 = __OFADD__(v67, 1);
      v69 = v67 + 1;
      if (v68)
      {
        goto LABEL_52;
      }

      v35[2] = v69;
    }

    v32 &= v32 - 1;
    v136(v55, v137);
    v36 = v134;
    v28 = v135;
    v29 = v127;
    v33 = v126;
  }

  while (1)
  {
    v38 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v38 >= v33)
    {
      break;
    }

    v32 = *(v29 + 8 * v38);
    ++v34;
    if (v32)
    {
      v34 = v38;
      goto LABEL_12;
    }
  }

  v70 = v133;
  v71 = (v133 + 64);
  v72 = 1 << *(v133 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & *(v133 + 64);
  v75 = (v72 + 63) >> 6;

  v76 = 0;
  v77 = MEMORY[0x1E69E7CC8];
  v78 = v131;
  v135 = v75;
  v136 = v71;
  while (2)
  {
    if (v74)
    {
      v141 = v77;
LABEL_33:
      v80 = __clz(__rbit64(v74)) | (v76 << 6);
      v81 = *(v70 + 48);
      v82 = type metadata accessor for SpecialToken();
      v83 = *(v82 - 8);
      (*(v83 + 16))(v78, v81 + *(v83 + 72) * v80, v82);
      v84 = v132;
      *(v78 + *(v132 + 48)) = *(*(v70 + 56) + 8 * v80);
      v85 = v125;
      outlined init with copy of (String, Any)(v78, v125, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMd, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMR);

      v86 = SpecialToken.identifier.getter();
      v138 = v82;
      v139 = v86;
      v88 = v87;
      v137 = *(v83 + 8);
      v137(v85, v82);
      v89 = v144;
      v90 = *(v144 + 20);
      v91 = type metadata accessor for Locale();
      v92 = v124;
      (*(*(v91 - 8) + 56))(v124 + v90, 1, 1, v91);
      *v92 = v139;
      v92[1] = v88;
      v93 = (v92 + *(v89 + 24));
      *v93 = 0;
      v93[1] = 0;
      *(v92 + *(v89 + 28)) = 0;
      v94 = v143;
      outlined init with copy of (String, Any)(v78, v143, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMd, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMR);
      v95 = *(v94 + *(v84 + 48));
      v96 = v141;
      v97 = swift_isUniquelyReferenced_nonNull_native();
      *&v145 = v96;
      v98 = specialized __RawDictionaryStorage.find<A>(_:)(v92);
      v100 = *(v96 + 16);
      v101 = (v99 & 1) == 0;
      v68 = __OFADD__(v100, v101);
      v102 = v100 + v101;
      if (v68)
      {
        goto LABEL_51;
      }

      v103 = v99;
      if (*(v96 + 24) >= v102)
      {
        if (v97)
        {
          goto LABEL_38;
        }

        v108 = v98;
        specialized _NativeDictionary.copy()();
        v98 = v108;
        v77 = v145;
        if (v103)
        {
          goto LABEL_25;
        }

LABEL_39:
        v77[(v98 >> 6) + 8] |= 1 << v98;
        v105 = v98;
        outlined init with copy of TokenizationResult(v92, v77[6] + *(v140 + 72) * v98, type metadata accessor for Prompt.SpecialToken);
        *(v77[7] + 8 * v105) = v95;
        outlined destroy of TokenizationResult(v92, type metadata accessor for Prompt.SpecialToken);
        v78 = v131;
        outlined destroy of [Regex2BNF.CharacterPredicate](v131, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMd, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMR);
        v106 = v77[2];
        v68 = __OFADD__(v106, 1);
        v107 = v106 + 1;
        if (v68)
        {
          goto LABEL_53;
        }

        v77[2] = v107;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v102, v97);
        v98 = specialized __RawDictionaryStorage.find<A>(_:)(v92);
        if ((v103 & 1) != (v104 & 1))
        {
          goto LABEL_55;
        }

LABEL_38:
        v77 = v145;
        if ((v103 & 1) == 0)
        {
          goto LABEL_39;
        }

LABEL_25:
        *(v77[7] + 8 * v98) = v95;

        outlined destroy of TokenizationResult(v92, type metadata accessor for Prompt.SpecialToken);
        v78 = v131;
        outlined destroy of [Regex2BNF.CharacterPredicate](v131, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMd, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMR);
      }

      v74 &= v74 - 1;
      v137(v143, v138);
      v70 = v133;
      v75 = v135;
      v71 = v136;
      continue;
    }

    break;
  }

  while (1)
  {
    v79 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      break;
    }

    if (v79 >= v75)
    {

      *&v145 = v117;
      *(&v145 + 1) = v120;
      v109 = v77;
      v146 = v119;
      v147 = v118;
      v110 = v121;
      LOBYTE(v148) = v121;
      a1 = &v145;
      v111 = v142;
      v112 = v122;
      v113 = Prompt.renderPromptModules(tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:substitutionTextForInputTokenText:)(v142, v109, &v148, *(v123 + 104));
      if (v112)
      {
      }

      else
      {
        v114 = v113;

        LOBYTE(v145) = v110;
        a1 = TokenizerRunner.tokenize(promptModules:tokenTable:shouldInsertImageStartEndTokens:promptPreprocessingTemplateVersion:)(v114, v111, 1, &v145);
      }

      return a1;
    }

    v74 = *(v71 + v79);
    ++v76;
    if (v74)
    {
      v141 = v77;
      v76 = v79;
      goto LABEL_33;
    }
  }

LABEL_49:
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
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_55:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t TokenizerRunner.tokenizeCacheablePromptTemplatePrefix(promptTemplateString:locale:tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:)@<X0>(char *a1@<X0>, void (*a2)(void, void)@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t *a7@<X8>)
{
  v256 = a5;
  v257 = a4;
  j = a3;
  v270 = a2;
  v271 = a1;
  v236 = a7;
  v255 = type metadata accessor for TokenizationResult(0);
  v266 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v255);
  v237 = (&v226 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMd, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMR);
  MEMORY[0x1EEE9AC00](v251);
  v267 = &v226 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v250 = &v226 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v262 = &v226 - v13;
  v284 = type metadata accessor for Prompt.SpecialToken(0);
  v252 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v249 = (&v226 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v268 = (&v226 - v16);
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit12SpecialTokenV3key_yp5valuetMd, &_s9PromptKit12SpecialTokenV3key_yp5valuetMR);
  MEMORY[0x1EEE9AC00](v259);
  v253 = &v226 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v264 = &v226 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v263 = &v226 - v21;
  v244 = type metadata accessor for Prompt.Attachment(0);
  v243 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v248 = &v226 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v254 = &v226 - v24;
  v275 = type metadata accessor for Locale();
  v242 = *(v275 - 8);
  MEMORY[0x1EEE9AC00](v275);
  v246 = &v226 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v260 = &v226 - v27;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v272);
  v29 = &v226 - v28;
  v247 = type metadata accessor for Prompt.Delimiter(0);
  v273 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247);
  v245 = &v226 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v226 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = (&v226 - v35);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9DelimiterVSgMd, &_s15TokenGeneration6PromptV9DelimiterVSgMR);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = &v226 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v226 - v41;
  v43 = type metadata accessor for Prompt();
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v226 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a6;

  v48 = v274;
  result = Prompt.init(template:)();
  if (!v48)
  {
    i = v36;
    v227 = v39;
    v239 = v33;
    v240 = v47;
    v229 = v42;
    v232 = v44;
    v233 = v43;
    v50 = MEMORY[0x1E69E7CC0];
    v51 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9PromptKit0C25ComponentValueConvertible_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v278 = MEMORY[0x1E69E6158];
    v279 = MEMORY[0x1E69C6560];
    *&v276 = 0;
    *(&v276 + 1) = 0xE000000000000000;
    Prompt.renderToTokenGenerationPrompt(bindingVariables:customDataTransformers:locale:fallbackBindingVariable:isTopLevelRendering:)(v51, v50, j, &v276, 1, &v280);
    v231 = 0;
    v226 = v46;

    outlined destroy of [Regex2BNF.CharacterPredicate](&v276, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
    v52 = v281;
    v235 = v280;
    v53 = v282;
    v54 = v283;
    v55 = *(v282 + 16);
    v261 = v283;
    v270 = v55;
    v271 = v282;
    if (v55)
    {
      v258 = v29;
      v230 = v281;
      v56 = 0;
      v57 = v273;
      j = (v282 + ((*(v57 + 80) + 32) & ~*(v57 + 80)));
      v274 = v242 + 48;
      v228 = (v242 + 32);
      v238 = (v242 + 8);
      v36 = &_s10Foundation6LocaleVSgMd;
      v58 = v284;
      v59 = v260;
      v60 = v272;
      v61 = i;
      while (1)
      {
        if (v56 >= *(v53 + 2))
        {
          __break(1u);
          goto LABEL_128;
        }

        outlined init with copy of TokenizationResult(&j[*(v57 + 72) * v56], v61, type metadata accessor for Prompt.Delimiter);
        if (one-time initialization token for cacheablePrefixTerminator != -1)
        {
          swift_once();
        }

        v62 = __swift_project_value_buffer(v58, static Prompt.SpecialToken.cacheablePrefixTerminator);
        v63 = *v61 == *v62 && v61[1] == v62[1];
        if (v63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v64 = v59;
          v65 = v58[5];
          v66 = *(v60 + 12);
          v67 = v61 + v65;
          v68 = v258;
          outlined init with copy of (String, Any)(v67, v258, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          outlined init with copy of (String, Any)(v62 + v65, v68 + v66, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          v69 = v275;
          v70 = *v274;
          if ((*v274)(v68, 1, v275) == 1)
          {
            v71 = v70(v68 + v66, 1, v69);
            v58 = v284;
            v59 = v64;
            if (v71 != 1)
            {
              goto LABEL_5;
            }

            v36 = &_s10Foundation6LocaleVSgMd;
            outlined destroy of [Regex2BNF.CharacterPredicate](v68, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            v60 = v272;
            v61 = i;
          }

          else
          {
            outlined init with copy of (String, Any)(v68, v64, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            if (v70(v68 + v66, 1, v69) == 1)
            {
              (*v238)(v64, v69);
              v58 = v284;
              v59 = v64;
LABEL_5:
              outlined destroy of [Regex2BNF.CharacterPredicate](v68, &_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
              v60 = v272;
              v36 = &_s10Foundation6LocaleVSgMd;
              v61 = i;
              goto LABEL_6;
            }

            v72 = v68 + v66;
            v73 = v246;
            (*v228)(v246, v72, v69);
            _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
            v234 = dispatch thunk of static Equatable.== infix(_:_:)();
            v74 = *v238;
            v75 = v73;
            v59 = v260;
            (*v238)(v75, v69);
            v74(v59, v69);
            outlined destroy of [Regex2BNF.CharacterPredicate](v68, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            v58 = v284;
            v60 = v272;
            v61 = i;
            if ((v234 & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v76 = v58[6];
          v77 = (v61 + v76);
          v78 = *(v61 + v76 + 8);
          v79 = (v62 + v76);
          v80 = v79[1];
          if (v78)
          {
            if (v80 && (*v77 == *v79 && v78 == v80 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
            {
LABEL_27:
              if (*(v61 + v58[7]) == *(v62 + v58[7]))
              {
                v208 = v229;
                outlined init with take of TokenizationResult(v61, v229, type metadata accessor for Prompt.Delimiter);
                v209 = 0;
                v52 = v230;
                v54 = v261;
                goto LABEL_31;
              }
            }
          }

          else if (!v80)
          {
            goto LABEL_27;
          }
        }

LABEL_6:
        ++v56;
        outlined destroy of TokenizationResult(v61, type metadata accessor for Prompt.Delimiter);
        v53 = v271;
        v57 = v273;
        if (v270 == v56)
        {
          v209 = 1;
          v52 = v230;
          v208 = v229;
          v54 = v261;
          goto LABEL_32;
        }
      }
    }

    v209 = 1;
    v208 = v229;
LABEL_31:
    v57 = v273;
LABEL_32:
    v81 = v247;
    (*(v57 + 56))(v208, v209, 1, v247);
    v82 = v208;
    v83 = v227;
    outlined init with copy of (String, Any)(v82, v227, &_s15TokenGeneration6PromptV9DelimiterVSgMd, &_s15TokenGeneration6PromptV9DelimiterVSgMR);
    v84 = (*(v57 + 48))(v83, 1, v81);
    v85 = v266;
    v86 = v242;
    if (v84 == 1)
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v83, &_s15TokenGeneration6PromptV9DelimiterVSgMd, &_s15TokenGeneration6PromptV9DelimiterVSgMR);
      v260 = v271;
    }

    else
    {
      v36 = *(v83 + *(v81 + 20));
      outlined destroy of TokenizationResult(v83, type metadata accessor for Prompt.Delimiter);

      v87 = v271;

      v274 = v36;
      String.index(_:offsetBy:limitedBy:)();
      if ((v88 & 1) == 0)
      {
        v91 = String.subscript.getter();
        v235 = MEMORY[0x1AC57C040](v91);
        v270 = v92;
        v230 = v52;

        v272 = *(v87 + 2);
        if (v272)
        {
          v36 = 0;
          v93 = MEMORY[0x1E69E7CC0];
          v57 = v273;
          v94 = v245;
          while (v36 < *(v87 + 2))
          {
            v95 = (*(v57 + 80) + 32) & ~*(v57 + 80);
            v96 = *(v57 + 72);
            v97 = v239;
            outlined init with copy of TokenizationResult(&v87[v95 + v96 * v36], v239, type metadata accessor for Prompt.Delimiter);
            if (v274 < *(v97 + *(v81 + 20)))
            {
              outlined destroy of TokenizationResult(v97, type metadata accessor for Prompt.Delimiter);
            }

            else
            {
              outlined init with take of TokenizationResult(v97, v94, type metadata accessor for Prompt.Delimiter);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v276 = v93;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v93 + 2) + 1, 1);
                v93 = v276;
              }

              v100 = *(v93 + 2);
              v99 = *(v93 + 3);
              if (v100 >= v99 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v99 > 1), v100 + 1, 1);
                v93 = v276;
              }

              *(v93 + 2) = v100 + 1;
              v94 = v245;
              outlined init with take of TokenizationResult(v245, &v93[v95 + v100 * v96], type metadata accessor for Prompt.Delimiter);
              v81 = v247;
            }

            v36 = (v36 + 1);
            if (v272 == v36)
            {
              goto LABEL_49;
            }
          }

LABEL_128:
          __break(1u);
        }

        else
        {
          v93 = MEMORY[0x1E69E7CC0];
LABEL_49:
          v260 = v93;

          v101 = v261;
          v36 = *(v261 + 16);
          if (!v36)
          {
            v103 = MEMORY[0x1E69E7CC0];
LABEL_61:
            swift_bridgeObjectRelease_n();

            v54 = v103;
            v52 = v270;
            v85 = v266;
            v89 = v257;
            v90 = v259;
            v86 = v242;
            goto LABEL_62;
          }

          v102 = 0;
          v103 = MEMORY[0x1E69E7CC0];
          v57 = v244;
          v104 = v243;
          while (v102 < *(v101 + 16))
          {
            v105 = (*(v104 + 80) + 32) & ~*(v104 + 80);
            v106 = *(v104 + 72);
            v107 = v254;
            outlined init with copy of TokenizationResult(v101 + v105 + v106 * v102, v254, type metadata accessor for Prompt.Attachment);
            if (v274 < *(v107 + *(v57 + 20)))
            {
              outlined destroy of TokenizationResult(v107, type metadata accessor for Prompt.Attachment);
            }

            else
            {
              v108 = v248;
              outlined init with take of TokenizationResult(v107, v248, type metadata accessor for Prompt.Attachment);
              v109 = swift_isUniquelyReferenced_nonNull_native();
              *&v276 = v103;
              if ((v109 & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v103 + 16) + 1, 1);
                v108 = v248;
                v103 = v276;
              }

              v111 = *(v103 + 16);
              v110 = *(v103 + 24);
              if (v111 >= v110 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1);
                v108 = v248;
                v103 = v276;
              }

              *(v103 + 16) = v111 + 1;
              outlined init with take of TokenizationResult(v108, v103 + v105 + v111 * v106, type metadata accessor for Prompt.Attachment);
              v101 = v261;
              v57 = v244;
              v104 = v243;
            }

            if (v36 == ++v102)
            {
              goto LABEL_61;
            }
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
        swift_once();
LABEL_114:
        v210 = type metadata accessor for Logger();
        __swift_project_value_buffer(v210, static Log.tokenization);
        v211 = Logger.logObject.getter();
        v212 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v211, v212))
        {
          v213 = swift_slowAlloc();
          *v213 = 0;
          _os_log_impl(&dword_1A8E85000, v211, v212, "Unexpected multiple modules before cachable delimiter.", v213, 2u);
          MEMORY[0x1AC57DBF0](v213, -1, -1);
        }

        type metadata accessor for GenerationError(0);
        _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        outlined destroy of [Regex2BNF.CharacterPredicate](v229, &_s15TokenGeneration6PromptV9DelimiterVSgMd, &_s15TokenGeneration6PromptV9DelimiterVSgMR);
        (*(v57 + 8))(v226, v36);
LABEL_105:
      }

      v260 = v87;
    }

    v89 = v257;
    v90 = v259;
LABEL_62:
    v230 = v52;
    v112 = (v89 + 64);
    v113 = 1 << *(v89 + 32);
    v114 = -1;
    if (v113 < 64)
    {
      v114 = ~(-1 << v113);
    }

    v115 = v114 & *(v89 + 64);
    v116 = (v113 + 63) >> 6;
    v272 = (v86 + 56);

    v57 = 0;
    v117 = MEMORY[0x1E69E7CC8];
    v261 = v54;
    j = v112;
    for (i = v116; ; v116 = i)
    {
      v273 = v117;
      if (!v115)
      {
        break;
      }

      v120 = v90;
LABEL_73:
      v122 = __clz(__rbit64(v115)) | (v57 << 6);
      v123 = v257;
      v124 = *(v257 + 48);
      v125 = type metadata accessor for SpecialToken();
      v126 = *(v125 - 8);
      v127 = v263;
      (*(v126 + 16))(v263, v124 + *(v126 + 72) * v122, v125);
      v128 = *(v123 + 56) + 32 * v122;
      v129 = v120;
      outlined init with copy of Any(v128, v127 + *(v120 + 48));
      v130 = v264;
      outlined init with copy of (String, Any)(v127, v264, &_s9PromptKit12SpecialTokenV3key_yp5valuetMd, &_s9PromptKit12SpecialTokenV3key_yp5valuetMR);
      v274 = *(v129 + 48);
      v131 = SpecialToken.identifier.getter();
      v36 = v132;
      v270 = *(v126 + 8);
      v271 = v125;
      v270(v130, v125);
      v133 = v284;
      v134 = v268;
      (*v272)(v268 + *(v284 + 20), 1, 1, v275);
      *v134 = v131;
      v134[1] = v36;
      v135 = (v134 + *(v133 + 24));
      *v135 = 0;
      v135[1] = 0;
      v136 = *(v133 + 28);
      v137 = v264;
      *(v134 + v136) = 0;
      __swift_destroy_boxed_opaque_existential_0((v137 + v274));
      v138 = v127;
      v139 = v253;
      outlined init with copy of (String, Any)(v138, v253, &_s9PromptKit12SpecialTokenV3key_yp5valuetMd, &_s9PromptKit12SpecialTokenV3key_yp5valuetMR);
      outlined init with take of Any((v139 + *(v129 + 48)), &v276);
      v140 = v273;
      v141 = swift_isUniquelyReferenced_nonNull_native();
      v280 = v140;
      v142 = specialized __RawDictionaryStorage.find<A>(_:)(v134);
      v144 = *(v140 + 16);
      v145 = (v143 & 1) == 0;
      v146 = __OFADD__(v144, v145);
      v147 = v144 + v145;
      if (v146)
      {
        goto LABEL_130;
      }

      v148 = v143;
      if (*(v140 + 24) >= v147)
      {
        v90 = v259;
        if ((v141 & 1) == 0)
        {
          v156 = v142;
          specialized _NativeDictionary.copy()();
          v142 = v156;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v147, v141);
        v142 = specialized __RawDictionaryStorage.find<A>(_:)(v268);
        v90 = v259;
        if ((v148 & 1) != (v149 & 1))
        {
LABEL_135:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v85 = v266;
      v150 = v280;
      if (v148)
      {
        v36 = v280;
        v118 = (v280[7] + 32 * v142);
        __swift_destroy_boxed_opaque_existential_0(v118);
        v119 = v118;
        v117 = v36;
        outlined init with take of Any(&v276, v119);
        outlined destroy of TokenizationResult(v268, type metadata accessor for Prompt.SpecialToken);
        outlined destroy of [Regex2BNF.CharacterPredicate](v263, &_s9PromptKit12SpecialTokenV3key_yp5valuetMd, &_s9PromptKit12SpecialTokenV3key_yp5valuetMR);
      }

      else
      {
        v280[(v142 >> 6) + 8] |= 1 << v142;
        v36 = v150;
        v151 = v142;
        v152 = v268;
        outlined init with copy of TokenizationResult(v268, v150[6] + *(v252 + 72) * v142, type metadata accessor for Prompt.SpecialToken);
        v153 = (v36[7] + 32 * v151);
        v117 = v36;
        outlined init with take of Any(&v276, v153);
        outlined destroy of TokenizationResult(v152, type metadata accessor for Prompt.SpecialToken);
        outlined destroy of [Regex2BNF.CharacterPredicate](v263, &_s9PromptKit12SpecialTokenV3key_yp5valuetMd, &_s9PromptKit12SpecialTokenV3key_yp5valuetMR);
        v154 = v36[2];
        v146 = __OFADD__(v154, 1);
        v155 = v154 + 1;
        if (v146)
        {
          goto LABEL_132;
        }

        v36[2] = v155;
        v90 = v259;
      }

      v115 &= v115 - 1;
      v270(v139, v271);
      v54 = v261;
      v112 = j;
    }

    while (1)
    {
      v121 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        __break(1u);
        goto LABEL_118;
      }

      if (v121 >= v116)
      {
        break;
      }

      v115 = *&v112[8 * v121];
      ++v57;
      if (v115)
      {
        v120 = v90;
        v57 = v121;
        goto LABEL_73;
      }
    }

    v157 = v256;
    v158 = (v256 + 64);
    v159 = 1 << *(v256 + 32);
    v160 = -1;
    if (v159 < 64)
    {
      v160 = ~(-1 << v159);
    }

    v161 = v160 & *(v256 + 64);
    v162 = (v159 + 63) >> 6;

    v36 = 0;
    v274 = MEMORY[0x1E69E7CC8];
    v57 = v240;
    v268 = v162;
    for (j = v158; ; v158 = j)
    {
      v163 = v235;
      if (!v161)
      {
        break;
      }

LABEL_92:
      v165 = __clz(__rbit64(v161)) | (v36 << 6);
      v166 = *(v157 + 48);
      v167 = type metadata accessor for SpecialToken();
      v168 = *(v167 - 8);
      v57 = v262;
      (*(v168 + 16))(v262, v166 + *(v168 + 72) * v165, v167);
      v169 = *(*(v157 + 56) + 8 * v165);
      v170 = v251;
      *(v57 + *(v251 + 48)) = v169;
      v171 = v250;
      outlined init with copy of (String, Any)(v57, v250, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMd, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMR);

      v172 = SpecialToken.identifier.getter();
      v174 = v173;
      v270 = *(v168 + 8);
      v271 = v167;
      v270(v171, v167);
      v175 = v284;
      v176 = v249;
      (*v272)(v249 + *(v284 + 20), 1, 1, v275);
      *v176 = v172;
      v176[1] = v174;
      v177 = (v176 + *(v175 + 24));
      *v177 = 0;
      v177[1] = 0;
      *(v176 + *(v175 + 28)) = 0;
      v178 = v267;
      outlined init with copy of (String, Any)(v57, v267, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMd, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMR);
      v179 = *(v178 + *(v170 + 48));
      v180 = v274;
      v181 = swift_isUniquelyReferenced_nonNull_native();
      *&v276 = v180;
      v182 = specialized __RawDictionaryStorage.find<A>(_:)(v176);
      v184 = *(v180 + 16);
      v185 = (v183 & 1) == 0;
      v146 = __OFADD__(v184, v185);
      v186 = v184 + v185;
      if (v146)
      {
        goto LABEL_131;
      }

      v187 = v183;
      if (*(v180 + 24) >= v186)
      {
        v189 = v267;
        v57 = v240;
        if ((v181 & 1) == 0)
        {
          v194 = v182;
          specialized _NativeDictionary.copy()();
          v189 = v267;
          v182 = v194;
          v57 = v240;
        }

        v157 = v256;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v186, v181);
        v182 = specialized __RawDictionaryStorage.find<A>(_:)(v176);
        v57 = v240;
        if ((v187 & 1) != (v188 & 1))
        {
          goto LABEL_135;
        }

        v157 = v256;
        v189 = v267;
      }

      v190 = v276;
      v274 = v276;
      if (v187)
      {
        *(*(v276 + 56) + 8 * v182) = v179;

        outlined destroy of TokenizationResult(v176, type metadata accessor for Prompt.SpecialToken);
        outlined destroy of [Regex2BNF.CharacterPredicate](v262, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMd, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMR);
      }

      else
      {
        *(v276 + 8 * (v182 >> 6) + 64) |= 1 << v182;
        v191 = v182;
        outlined init with copy of TokenizationResult(v176, *(v190 + 48) + *(v252 + 72) * v182, type metadata accessor for Prompt.SpecialToken);
        *(*(v274 + 56) + 8 * v191) = v179;
        outlined destroy of TokenizationResult(v176, type metadata accessor for Prompt.SpecialToken);
        outlined destroy of [Regex2BNF.CharacterPredicate](v262, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMd, &_s9PromptKit12SpecialTokenV3key_SDyS2SG5valuetMR);
        v192 = *(v274 + 16);
        v146 = __OFADD__(v192, 1);
        v193 = v192 + 1;
        if (v146)
        {
          goto LABEL_133;
        }

        *(v274 + 16) = v193;
        v189 = v267;
      }

      v161 &= v161 - 1;
      v270(v189, v271);
      v54 = v261;
      v85 = v266;
      v162 = v268;
    }

    while (1)
    {
      v164 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v164 >= v162)
      {

        *&v276 = v163;
        *(&v276 + 1) = v230;
        v277 = v260;
        v278 = v54;
        LOBYTE(v280) = v57;
        v195 = v273;
        v196 = v231;
        v197 = Prompt.renderPromptModules(tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:substitutionTextForInputTokenText:)(v273, v274, &v280, *(v241 + 104));
        if (v196)
        {

          outlined destroy of [Regex2BNF.CharacterPredicate](v229, &_s15TokenGeneration6PromptV9DelimiterVSgMd, &_s15TokenGeneration6PromptV9DelimiterVSgMR);
          (*(v232 + 8))(v226, v233);
          goto LABEL_105;
        }

        v198 = v197;

        LOBYTE(v276) = v57;
        v199 = TokenizerRunner.tokenize(promptModules:tokenTable:shouldInsertImageStartEndTokens:promptPreprocessingTemplateVersion:)(v198, v195, 1, &v276);
        v36 = v233;
        v200 = v199;

        v201 = v200;
        v57 = v232;
        if (*(v200 + 2) != 1)
        {

          if (one-time initialization token for tokenization != -1)
          {
            goto LABEL_134;
          }

          goto LABEL_114;
        }

        v202 = *(v200 + 4);
        v203 = *(v201 + 5);

        *&v276 = v202;
        *(&v276 + 1) = v203;
        v204 = *(TokenizedPromptModule.tokenizationResults.getter() + 2);

        if (v204 != 1)
        {
          goto LABEL_120;
        }

        *&v276 = v202;
        *(&v276 + 1) = v203;
        v205 = TokenizedPromptModule.tokenizationResults.getter();
        if (!*(v205 + 2))
        {
          goto LABEL_119;
        }

        v206 = &v205[(*(v85 + 80) + 32) & ~*(v85 + 80)];
        v207 = v237;
        outlined init with copy of TokenizationResult(v206, v237, type metadata accessor for TokenizationResult);

        if (swift_getEnumCaseMultiPayload() == 1)
        {

          outlined destroy of TokenizationResult(v207, type metadata accessor for TokenizationResult);
          goto LABEL_121;
        }

        v220 = *v207;
        *&v276 = v202;
        *(&v276 + 1) = v203;
        v221 = TokenizedPromptModule.renderedString.getter();
        v222 = v57;
        v224 = v223;
        outlined destroy of [Regex2BNF.CharacterPredicate](v229, &_s15TokenGeneration6PromptV9DelimiterVSgMd, &_s15TokenGeneration6PromptV9DelimiterVSgMR);
        (*(v222 + 8))(v226, v36);

        v225 = v236;
        *v236 = v221;
        v225[1] = v224;
        v225[2] = v220;
        goto LABEL_105;
      }

      v161 = *&v158[8 * v164];
      v36 = (v36 + 1);
      if (v161)
      {
        v36 = v164;
        goto LABEL_92;
      }
    }

LABEL_118:
    __break(1u);
LABEL_119:

LABEL_120:

LABEL_121:
    v214 = v226;
    if (one-time initialization token for tokenization != -1)
    {
      swift_once();
    }

    v215 = type metadata accessor for Logger();
    __swift_project_value_buffer(v215, static Log.tokenization);
    v216 = Logger.logObject.getter();
    v217 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v216, v217))
    {
      v218 = swift_slowAlloc();
      *v218 = 0;
      _os_log_impl(&dword_1A8E85000, v216, v217, "Unexpected attachments before cachable delimiter.", v218, 2u);
      v219 = v218;
      v214 = v226;
      MEMORY[0x1AC57DBF0](v219, -1, -1);
    }

    type metadata accessor for GenerationError(0);
    _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of [Regex2BNF.CharacterPredicate](v229, &_s15TokenGeneration6PromptV9DelimiterVSgMd, &_s15TokenGeneration6PromptV9DelimiterVSgMR);
    (*(v57 + 8))(v214, v36);
    goto LABEL_105;
  }

  return result;
}

char *TokenizerRunner.tokenizeModularPrompt(prompt:tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:)(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = v4;
  v8 = a1[3];
  v9 = *a4;
  v13 = *a1;
  v14 = *(a1 + 1);
  v15 = v8;
  v12 = v9;
  v10 = Prompt.renderPromptModules(tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:substitutionTextForInputTokenText:)(a2, a3, &v12, *(v4 + 104));
  if (!v5)
  {
    LOBYTE(v13) = v9;
    v6 = TokenizerRunner.tokenize(promptModules:tokenTable:shouldInsertImageStartEndTokens:promptPreprocessingTemplateVersion:)(v10, a2, 1, &v13);
  }

  return v6;
}

uint64_t TokenizerRunner.tokenize(prompt:tokenTable:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[3];
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = v3;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15TokenGeneration6PromptV07SpecialC0V_SDyS2SGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = TokenizerRunner.tokenize(prompt:tokenTable:localizationOverrideMap:)(&v7, a2, v4);

  return v5;
}

uint64_t TokenizerRunner.tokenize(prompt:tokenTable:localizationOverrideMap:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Prompt.AttachmentContent(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = type metadata accessor for TokenizerRunner.TokenizedItem(0);
  v48 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  v18 = a1[3];
  v49 = *a1;
  v50 = *(a1 + 1);
  v51 = v18;
  LOBYTE(v52) = 0;
  v19 = v47;
  v20 = TokenizerRunner.tokenizeKeepImageAttachment(prompt:tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:)(&v49, a2, a3, &v52);
  if (!v19)
  {
    v21 = v20;
    v47 = v12;
    v44 = 0;
    v22 = *(v20 + 16);
    if (v22)
    {
      v42 = v8;
      v43 = v11;
      v49 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
      v23 = 0;
      v24 = v48;
      a2 = v49;
      v25 = *(v48 + 80);
      v45 = v21;
      v46 = v21 + ((v25 + 32) & ~v25);
      while (1)
      {
        if (v23 >= *(v21 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        outlined init with copy of TokenizationResult(v46 + *(v24 + 72) * v23, v17, type metadata accessor for TokenizerRunner.TokenizedItem);
        outlined init with copy of TokenizationResult(v17, v14, type metadata accessor for TokenizerRunner.TokenizedItem);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        v26 = v22;
        v27 = *v14;
        outlined destroy of TokenizationResult(v17, type metadata accessor for TokenizerRunner.TokenizedItem);
        v49 = a2;
        v29 = *(a2 + 16);
        v28 = *(a2 + 24);
        if (v29 >= v28 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
          a2 = v49;
        }

        ++v23;
        *(a2 + 16) = v29 + 1;
        *(a2 + 8 * v29 + 32) = v27;
        v22 = v26;
        v21 = v45;
        v24 = v48;
        if (v26 == v23)
        {

          return a2;
        }
      }

      v22 = v43;
      outlined init with take of TokenizationResult(v14, v43, type metadata accessor for Prompt.AttachmentContent);
      if (one-time initialization token for tokenization == -1)
      {
        goto LABEL_12;
      }

LABEL_18:
      swift_once();
LABEL_12:
      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Log.tokenization);
      v31 = v42;
      outlined init with copy of TokenizationResult(v22, v42, type metadata accessor for Prompt.AttachmentContent);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v52 = v35;
        *v34 = 136315138;
        v36 = Prompt.AttachmentContent.description.getter();
        v38 = v37;
        outlined destroy of TokenizationResult(v31, type metadata accessor for Prompt.AttachmentContent);
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v52);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_1A8E85000, v32, v33, "Failed to tokenize the attachment specified in the prompt %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x1AC57DBF0](v35, -1, -1);
        MEMORY[0x1AC57DBF0](v34, -1, -1);
      }

      else
      {

        outlined destroy of TokenizationResult(v31, type metadata accessor for Prompt.AttachmentContent);
      }

      type metadata accessor for GenerationError(0);
      _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      outlined destroy of TokenizationResult(v43, type metadata accessor for Prompt.AttachmentContent);

      outlined destroy of TokenizationResult(v17, type metadata accessor for TokenizerRunner.TokenizedItem);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

uint64_t TokenizerRunner.TokenizedItem.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Prompt.AttachmentContent(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TokenizerRunner.TokenizedItem(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of TokenizationResult(v1, v7, type metadata accessor for TokenizerRunner.TokenizedItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of TokenizationResult(v7, v4, type metadata accessor for Prompt.AttachmentContent);
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    strcpy(v11, "<<attachment:");
    HIWORD(v11[1]) = -4864;
    v8 = Prompt.AttachmentContent.description.getter();
    MEMORY[0x1AC57C120](v8);

    MEMORY[0x1AC57C120](15934, 0xE200000000000000);
    v9 = v11[0];
    outlined destroy of TokenizationResult(v4, type metadata accessor for Prompt.AttachmentContent);
    return v9;
  }

  else
  {
    v11[0] = *v7;
    return dispatch thunk of CustomStringConvertible.description.getter();
  }
}

uint64_t TokenizerRunner.tokenizeKeepImageAttachment(prompt:tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v143 = a3;
  v7 = type metadata accessor for Prompt.AttachmentContent(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v132 = &v129[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v149 = type metadata accessor for TokenizerRunner.TokenizedItem(0);
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v135 = &v129[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v130 = &v129[-v11];
  v131 = type metadata accessor for TokenizationResult(0);
  v134 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v145 = &v129[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0VSgMd, &_s15TokenGeneration6PromptV07SpecialA0VSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v129[-v14];
  v142 = type metadata accessor for Prompt.SpecialToken(0);
  v154 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v146 = &v129[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v129[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v152 = &v129[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetSgMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v129[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v129[-v26];
  v141 = *a1;
  v140 = *(a1 + 8);
  v139 = *(a1 + 24);
  v133 = *a4;
  v147 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15TokenGeneration6PromptV07SpecialC0V_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v28 = a2 + 64;
  v29 = 1 << *(a2 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(a2 + 64);
  v32 = (v29 + 63) >> 6;
  v153 = a2;

  v34 = 0;
  v150 = v27;
  v151 = v24;
  v167 = v19;
  v138 = v15;
  while (1)
  {
    while (1)
    {
      v35 = v34;
      if (!v31)
      {
        if (v32 <= (v34 + 1))
        {
          v37 = v34 + 1;
        }

        else
        {
          v37 = v32;
        }

        v34 = v37 - 1;
        while (1)
        {
          v36 = (v35 + 1);
          if (__OFADD__(v35, 1))
          {
            break;
          }

          if (v36 >= v32)
          {
            v15 = &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMR;
            v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMR);
            (*(*(v49 - 8) + 56))(v24, 1, 1, v49);
            v31 = 0;
            goto LABEL_14;
          }

          v31 = *(v28 + 8 * v36);
          ++v35;
          if (v31)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_47;
      }

      v36 = v34;
LABEL_13:
      v38 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v39 = v38 | (v36 << 6);
      v40 = v153;
      v41 = v152;
      outlined init with copy of TokenizationResult(*(v153 + 48) + v154[4].Description * v39, v152, type metadata accessor for Prompt.SpecialToken);
      outlined init with copy of Any(*(v40 + 56) + 32 * v39, &v158);
      v15 = &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMR;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMR);
      v43 = *(v42 + 48);
      v44 = v41;
      v24 = v151;
      outlined init with take of TokenizationResult(v44, v151, type metadata accessor for Prompt.SpecialToken);
      outlined init with take of Any(&v158, &v24[v43]);
      (*(*(v42 - 8) + 56))(v24, 0, 1, v42);
      v34 = v36;
      v27 = v150;
LABEL_14:
      outlined init with take of (key: Prompt.SpecialToken, value: Any)?(v24, v27);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetMR);
      v46 = (*(*(v45 - 8) + 48))(v27, 1, v45);
      v47 = v167;
      if (v46 == 1)
      {

        specialized UnresolvedImageTokenizationConfiguration.init(tokenTable:)(v69, &v162);
        v70 = v162;
        v71 = v163;
        v72 = v164;
        v73 = v165;
        v15 = v166;
        v158 = v141;
        v159 = v140;
        v160 = v139;
        v74 = v138;
        (v154[3].Description)(v138, 1, 1, v142);
        v75 = v144;
        v76 = Prompt.renderPromptFragments(tokenTable:localizationOverrideMap:stopOnSpecialToken:)(v147, v143, v74);
        if (v75)
        {
          outlined destroy of [Regex2BNF.CharacterPredicate](v74, &_s15TokenGeneration6PromptV07SpecialA0VSgMd, &_s15TokenGeneration6PromptV07SpecialA0VSgMR);
          outlined destroy of [Regex2BNF.CharacterPredicate](&v162, &_s19TokenGenerationCore40UnresolvedImageTokenizationConfigurationVSgMd, &_s19TokenGenerationCore40UnresolvedImageTokenizationConfigurationVSgMR);

          return v15;
        }

        v77 = v76;
        v143 = v72;
        v144 = v71;
        v146 = v70;
        v150 = v73;
        v152 = 0;
        outlined destroy of [Regex2BNF.CharacterPredicate](v74, &_s15TokenGeneration6PromptV07SpecialA0VSgMd, &_s15TokenGeneration6PromptV07SpecialA0VSgMR);
        if (v133)
        {
          v78 = &type metadata for PromptPreprocessingTemplateV6Convention;
        }

        else
        {
          v78 = &type metadata for PromptPreprocessingTemplateV5Convention;
        }

        if (v133)
        {
          v79 = &protocol witness table for PromptPreprocessingTemplateV6Convention;
        }

        else
        {
          v79 = &protocol witness table for PromptPreprocessingTemplateV5Convention;
        }

        v156 = v78;
        v157 = v79;
        outlined init with take of PromptComponentValueConvertible(&v155, &v158);
        v167 = v161;
        v80 = v160;
        __swift_project_boxed_opaque_existential_1(&v158, v160);
        v154 = v78;
        v151 = v79;
        if (v166 == 255)
        {
          v81 = 0;
          v82 = 0;
          v84 = 0;
          v85 = 0;
          v86 = v80;
          v87 = v167;
          v83 = v77;
        }

        else
        {
          v81 = v162;
          v82 = v163;
          v83 = v77;
          if (v166)
          {
            outlined copy of UnresolvedImageTokenizationConfiguration.ImageStartAndEnd(v146, v144, v143, v150, v15 & 1);

            outlined destroy of [Regex2BNF.CharacterPredicate](&v162, &_s19TokenGenerationCore40UnresolvedImageTokenizationConfigurationVSgMd, &_s19TokenGenerationCore40UnresolvedImageTokenizationConfigurationVSgMR);
            v81 = 0;
            v82 = 0;
            v84 = 0;
            v85 = 0;
          }

          else
          {
            v84 = v164;
            v85 = v165;
          }

          v86 = v80;
          v87 = v167;
        }

        v88 = v152;
        v89 = (*(v87 + 24))(v83, v81, v82, v84, v85, v86);
        v31 = v135;
        v90 = v153;
        if (v88)
        {
          outlined consume of (start: String, end: String)?(v81, v82, v84, v85);

          __swift_destroy_boxed_opaque_existential_0(&v158);
          return v15;
        }

        v15 = v89;

        outlined consume of (start: String, end: String)?(v81, v82, v84, v85);
        __swift_destroy_boxed_opaque_existential_0(&v158);
        v156 = v154;
        v157 = v151;
        outlined init with take of PromptComponentValueConvertible(&v155, &v158);
        v33 = TokenizerRunner.tokenize(renderedPromptFragments:tokenTable:shouldAppendBeginPromptToken:promptPreprocessingTemplateConvention:)(v15, v90, 1, &v158);
        v34 = 0;
LABEL_47:
        v92 = v33;
        v151 = v15;
        __swift_destroy_boxed_opaque_existential_0(&v158);
        v167 = *(v92 + 16);
        if (v167)
        {
          v152 = v34;
          v93 = 0;
          v94 = v134;
          v154 = (v92 + ((*(v134 + 80) + 32) & ~*(v134 + 80)));
          v15 = MEMORY[0x1E69E7CC0];
          v95 = v132;
          v153 = v92;
          while (v93 < *(v92 + 16))
          {
            v96 = v145;
            outlined init with copy of TokenizationResult(v154 + *(v94 + 72) * v93, v145, type metadata accessor for TokenizationResult);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              outlined init with take of TokenizationResult(v96, v95, type metadata accessor for Prompt.AttachmentContent);
              outlined init with copy of TokenizationResult(v95, v31, type metadata accessor for Prompt.AttachmentContent);
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
              }

              v98 = *(v15 + 16);
              v97 = *(v15 + 24);
              if (v98 >= v97 >> 1)
              {
                v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1, v15);
              }

              outlined destroy of TokenizationResult(v95, type metadata accessor for Prompt.AttachmentContent);
              *(v15 + 16) = v98 + 1;
              outlined init with take of TokenizationResult(v31, v15 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v98, type metadata accessor for TokenizerRunner.TokenizedItem);
            }

            else
            {
              v99 = *v96;
              v100 = *(*v96 + 16);
              if (v100)
              {
                v158 = MEMORY[0x1E69E7CC0];
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v100, 0);
                v101 = v158;
                v102 = 32;
                v103 = v130;
                do
                {
                  *v103 = *(v99 + v102);
                  swift_storeEnumTagMultiPayload();
                  v158 = v101;
                  v105 = *(v101 + 16);
                  v104 = *(v101 + 24);
                  if (v105 >= v104 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v105 + 1, 1);
                    v101 = v158;
                  }

                  *(v101 + 16) = v105 + 1;
                  outlined init with take of TokenizationResult(v103, v101 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v105, type metadata accessor for TokenizerRunner.TokenizedItem);
                  v102 += 8;
                  --v100;
                }

                while (v100);

                v95 = v132;
                v31 = v135;
              }

              else
              {

                v101 = MEMORY[0x1E69E7CC0];
              }

              v106 = *(v101 + 16);
              v107 = *(v15 + 16);
              v108 = v107 + v106;
              if (__OFADD__(v107, v106))
              {
                goto LABEL_86;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || v108 > *(v15 + 24) >> 1)
              {
                if (v107 <= v108)
                {
                  v110 = v107 + v106;
                }

                else
                {
                  v110 = v107;
                }

                v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v110, 1, v15);
              }

              v94 = v134;
              v92 = v153;
              if (*(v101 + 16))
              {
                if ((*(v15 + 24) >> 1) - *(v15 + 16) < v106)
                {
                  goto LABEL_89;
                }

                swift_arrayInitWithCopy();

                if (v106)
                {
                  v111 = *(v15 + 16);
                  v66 = __OFADD__(v111, v106);
                  v112 = v111 + v106;
                  if (v66)
                  {
                    goto LABEL_90;
                  }

                  *(v15 + 16) = v112;
                }
              }

              else
              {

                if (v106)
                {
                  goto LABEL_87;
                }
              }
            }

            if (++v93 == v167)
            {

              goto LABEL_79;
            }
          }

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
        }

        else
        {

          v15 = MEMORY[0x1E69E7CC0];
LABEL_79:
          if (one-time initialization token for tokenization == -1)
          {
            goto LABEL_80;
          }
        }

        swift_once();
LABEL_80:
        v113 = type metadata accessor for Logger();
        __swift_project_value_buffer(v113, static Log.tokenization);
        v114 = v151;

        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v158 = v118;
          *v117 = 136643075;
          v119 = type metadata accessor for Prompt.RenderedPromptFragment(0);
          v120 = MEMORY[0x1AC57C2C0](v114, v119);
          v122 = v121;

          v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v122, &v158);

          *(v117 + 4) = v123;
          *(v117 + 12) = 2085;

          v125 = MEMORY[0x1AC57C2C0](v124, v149);
          v127 = v126;

          v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, &v158);

          *(v117 + 14) = v128;
          _os_log_impl(&dword_1A8E85000, v115, v116, "Tokenized %{sensitive}s to tokenItems %{sensitive}s", v117, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1AC57DBF0](v118, -1, -1);
          MEMORY[0x1AC57DBF0](v117, -1, -1);
        }

        else
        {
        }

        return v15;
      }

      v48 = *(v45 + 48);
      outlined init with take of TokenizationResult(v27, v167, type metadata accessor for Prompt.SpecialToken);
      outlined init with take of Any(&v27[v48], &v158);
      if (swift_dynamicCast())
      {
        break;
      }

      v33 = outlined destroy of TokenizationResult(v47, type metadata accessor for Prompt.SpecialToken);
    }

    v15 = *(&v155 + 1);
    v137 = v155;
    v50 = v47;
    v51 = v146;
    outlined init with copy of TokenizationResult(v50, v146, type metadata accessor for Prompt.SpecialToken);
    v52 = v147;
    v136 = swift_isUniquelyReferenced_nonNull_native();
    v158 = v52;
    v54 = specialized __RawDictionaryStorage.find<A>(_:)(v51);
    v55 = *(v52 + 16);
    v56 = (v53 & 1) == 0;
    v57 = v55 + v56;
    if (__OFADD__(v55, v56))
    {
      goto LABEL_85;
    }

    if (*(v52 + 24) >= v57)
    {
      if ((v136 & 1) == 0)
      {
        v147 = v54;
        v68 = v53;
        specialized _NativeDictionary.copy()();
        v53 = v68;
        v54 = v147;
      }

      goto LABEL_24;
    }

    v58 = v53;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v57, v136);
    v59 = specialized __RawDictionaryStorage.find<A>(_:)(v146);
    if ((v58 & 1) != (v60 & 1))
    {
      break;
    }

    v54 = v59;
    v53 = v58;
LABEL_24:
    v61 = v158;
    v147 = v158;
    if (v53)
    {
      v62 = (*(v158 + 56) + 16 * v54);
      *v62 = v137;
      v62[1] = v15;

      outlined destroy of TokenizationResult(v146, type metadata accessor for Prompt.SpecialToken);
      v33 = outlined destroy of TokenizationResult(v167, type metadata accessor for Prompt.SpecialToken);
    }

    else
    {
      v63 = v54;
      *(v158 + 8 * (v54 >> 6) + 64) |= 1 << v54;
      outlined init with copy of TokenizationResult(v146, v61[6] + v154[4].Description * v54, type metadata accessor for Prompt.SpecialToken);
      v64 = (v61[7] + 16 * v63);
      *v64 = v137;
      v64[1] = v15;
      outlined destroy of TokenizationResult(v146, type metadata accessor for Prompt.SpecialToken);
      v33 = outlined destroy of TokenizationResult(v167, type metadata accessor for Prompt.SpecialToken);
      v65 = v61[2];
      v66 = __OFADD__(v65, 1);
      v67 = v65 + 1;
      if (v66)
      {
        goto LABEL_88;
      }

      v61[2] = v67;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *TokenizerRunner.tokenize(renderedPromptFragments:tokenTable:shouldAppendBeginPromptToken:promptPreprocessingTemplateConvention:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v76 = a4;
  v8 = type metadata accessor for Prompt.RenderedSpecialToken(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v65 = (&v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Prompt.AttachmentContent(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v69 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  v12 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v14 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for TokenizationResult(0);
  v74 = *(v15 - 8);
  v75 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v67 = (&v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v66 = (&v64 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v64 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v64 - v22);
  v24 = v4[10];
  v70 = v4;
  v25 = __swift_project_boxed_opaque_existential_1(v4 + 7, v24)[3];
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  if (isInternalInstall && (v25(&v77), v78 != 1))
  {
    v30 = v77;
    v31 = &unk_1A8FC9000;
    if (v77 < 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (one-time initialization token for startPrompt != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Prompt.SpecialToken(0);
    v27 = __swift_project_value_buffer(v26, static Prompt.SpecialToken.startPrompt);
    if (*(a2 + 16) && (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v27), (v29 & 1) != 0) && (outlined init with copy of Any(*(a2 + 56) + 32 * v28, &v77), swift_dynamicCast()))
    {
      v30 = v79;
      v31 = &unk_1A8FC9000;
      if (v79 < 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v30 = 1;
      v31 = &unk_1A8FC9000;
    }
  }

  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v32 = swift_allocObject();
    *(v32 + 16) = v31[64];
    *(v32 + 32) = v30;
    goto LABEL_17;
  }

LABEL_16:
  v32 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    v33 = MEMORY[0x1E69E7CC0];

    v36 = *(a1 + 16);
    if (!v36)
    {
      return v33;
    }

    goto LABEL_20;
  }

LABEL_17:
  *v23 = v32;
  swift_storeEnumTagMultiPayload();
  v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v35 = v33[2];
  v34 = v33[3];
  if (v35 >= v34 >> 1)
  {
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v33);
  }

  v33[2] = v35 + 1;
  outlined init with take of TokenizationResult(v23, v33 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v35, type metadata accessor for TokenizationResult);
  v36 = *(a1 + 16);
  if (v36)
  {
LABEL_20:
    v37 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v72 = *(v12 + 72);
    v64 = v31[64];
    do
    {
      v39 = v76[3];
      v40 = v76[4];
      __swift_project_boxed_opaque_existential_1(v76, v39);
      v41 = (*(v40 + 8))(v37, v39, v40);
      outlined init with copy of TokenizationResult(v37, v14, type metadata accessor for Prompt.RenderedPromptFragment);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v61 = v69;
          outlined init with take of TokenizationResult(v14, v69, type metadata accessor for Prompt.AttachmentContent);
          outlined init with copy of TokenizationResult(v61, v68, type metadata accessor for Prompt.AttachmentContent);
          swift_storeEnumTagMultiPayload();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
          }

          v52 = v33[2];
          v62 = v33[3];
          v53 = v52 + 1;
          if (v52 >= v62 >> 1)
          {
            v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v52 + 1, 1, v33);
          }

          outlined destroy of TokenizationResult(v69, type metadata accessor for Prompt.AttachmentContent);
          v38 = v68;
          goto LABEL_22;
        }

        v43 = v65;
        outlined init with take of TokenizationResult(v14, v65, type metadata accessor for Prompt.RenderedSpecialToken);
        v44 = *v43;
        v45 = v43[1];

        outlined destroy of TokenizationResult(v43, type metadata accessor for Prompt.RenderedSpecialToken);
        v46 = v14;
        if (v41)
        {
LABEL_26:
          v47 = v70[5];
          v48 = v70[6];
          __swift_project_boxed_opaque_existential_1(v70 + 2, v47);
          v49 = (*(v48 + 8))(v44, v45, v47, v48);

          if (!v49)
          {

            type metadata accessor for GenerationError(0);
            _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
            swift_allocError();
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            return v33;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          v50 = swift_allocObject();
          *(v50 + 16) = v64;
          *(v50 + 32) = v49;
          *v66 = v50;
          swift_storeEnumTagMultiPayload();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
          }

          v14 = v46;
          v52 = v33[2];
          v51 = v33[3];
          v53 = v52 + 1;
          if (v52 >= v51 >> 1)
          {
            v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v33);
          }

          v38 = v66;
          goto LABEL_22;
        }
      }

      else
      {
        v44 = *v14;
        v45 = v14[1];
        v46 = v14;
        if (v41)
        {
          goto LABEL_26;
        }
      }

      v54 = v76[3];
      v55 = v76[4];
      __swift_project_boxed_opaque_existential_1(v76, v54);
      v56 = v71;
      v57 = (*(v55 + 16))(v44, v45, v70[13], v70 + 2, v54, v55);
      if (v56)
      {

        return v33;
      }

      v58 = v57;

      *v67 = v58;
      swift_storeEnumTagMultiPayload();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = 0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
      }

      v14 = v46;
      v52 = v33[2];
      v60 = v33[3];
      v53 = v52 + 1;
      if (v52 >= v60 >> 1)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v52 + 1, 1, v33);
      }

      v38 = v67;
LABEL_22:
      v33[2] = v53;
      outlined init with take of TokenizationResult(v38, v33 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v52, type metadata accessor for TokenizationResult);
      v37 += v72;
      --v36;
    }

    while (v36);
  }

  return v33;
}

Swift::String __swiftcall TokenizerRunner.text(forTokenID:)(Swift::Int forTokenID)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  (*(v4 + 16))(forTokenID, v3, v4);
  v5 = String.init<A>(_:)();
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::Int __swiftcall TokenizerRunner.tokenID(forText:)(Swift::String forText)
{
  object = forText._object;
  countAndFlagsBits = forText._countAndFlagsBits;
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  return (*(v5 + 8))(countAndFlagsBits, object, v4, v5);
}

Swift::Bool __swiftcall TokenizerRunner.isByte(tokenID:)(Swift::Int tokenID)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 64))(tokenID, v3, v4) & 1;
}

uint64_t TokenizerRunner.vocabulary()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 40))(v1, v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v15 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v15;
    v6 = v3 + 40;
    do
    {

      v7 = String.init<A>(_:)();
      v10 = *(v15 + 16);
      v9 = *(v15 + 24);
      if (v10 >= v9 >> 1)
      {
        v14 = v7;
        v12 = v8;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v8 = v12;
        v7 = v14;
      }

      *(v15 + 16) = v10 + 1;
      v11 = v15 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v6 += 16;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t TokenizerRunner.longestTokenLength.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t TokenizerRunner.prefixTokenIDs(forPrefix:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 72))(a1, a2, v5, v6);
}

uint64_t TokenizerRunner.tokenIDs(forRawPrefix:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 80))(a1, a2, v5, v6);
}

uint64_t TokenizerRunner.tokenIDs(forDecodedPrefix:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 88))(a1, a2, v5, v6);
}

void *TokenizerRunner.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return v0;
}

uint64_t TokenizerRunner.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return swift_deallocClassInstance();
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
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
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVSayAE6ChoiceVGGMd, &_ss18_DictionaryStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVSayAE6ChoiceVGGMR, MEMORY[0x1E69E60C8]);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVAE0J0OGMd, &_ss18_DictionaryStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVAE0J0OGMR);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v38 & 1) == 0)
      {

        outlined copy of Regex2BNF.Symbol(v25, v26, v27);
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
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
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySJSaySiGGMd, &_ss18_DictionaryStorageCySJSaySiGGMR, MEMORY[0x1E69E5ED0]);
}

{
  v3 = v2;
  v4 = a2;
  v49 = type metadata accessor for CharacterSet();
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TerminalSymbol(0);
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v44 - v10;
  v11 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19TokenGenerationCore14TerminalSymbolOSiGMd, &_ss18_DictionaryStorageCy19TokenGenerationCore14TerminalSymbolOSiGMR);
  v52 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v11 + 16))
  {
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v46 = (v5 + 32);
    v47 = v11;
    v44 = v2;
    v45 = (v5 + 8);
    v20 = result + 64;
    v21 = v53;
    while (1)
    {
      if (!v18)
      {
        v24 = v14;
        while (1)
        {
          v14 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            __break(1u);
            goto LABEL_44;
          }

          if (v14 >= v19)
          {
            break;
          }

          v25 = v15[v14];
          ++v24;
          if (v25)
          {
            v23 = __clz(__rbit64(v25));
            v18 = (v25 - 1) & v25;
            goto LABEL_15;
          }
        }

        if ((v52 & 1) == 0)
        {

          v3 = v44;
          goto LABEL_42;
        }

        v43 = 1 << *(v11 + 32);
        v3 = v44;
        if (v43 >= 64)
        {
          bzero(v15, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v15 = -1 << v43;
        }

        *(v11 + 16) = 0;
        goto LABEL_41;
      }

      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v14 << 6);
      v27 = *(v50 + 72);
      v28 = *(v11 + 48) + v27 * v26;
      if (v52)
      {
        outlined init with take of TokenizationResult(v28, v21, type metadata accessor for TerminalSymbol);
      }

      else
      {
        outlined init with copy of TokenizationResult(v28, v21, type metadata accessor for TerminalSymbol);
      }

      v54 = *(*(v11 + 56) + 8 * v26);
      Hasher.init(_seed:)();
      outlined init with copy of TokenizationResult(v21, v55, type metadata accessor for TerminalSymbol);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v32 = v48;
        v31 = v49;
        (*v46)(v48, v55, v49);
        v33 = 2;
LABEL_24:
        MEMORY[0x1AC57CB80](v33);
        _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680B8], MEMORY[0x1E69680C0]);
        dispatch thunk of Hashable.hash(into:)();
        v34 = v32;
        v11 = v47;
        (*v45)(v34, v31);
        goto LABEL_26;
      }

      v35 = *v55;
      MEMORY[0x1AC57CB80](3);
      Hasher._combine(_:)(v35);
LABEL_26:
      result = Hasher._finalize()();
      v36 = -1 << *(v13 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      v21 = v53;
      if (((-1 << v37) & ~*(v20 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v20 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v20 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = outlined init with take of TokenizationResult(v21, *(v13 + 48) + v27 * v22, type metadata accessor for TerminalSymbol);
      *(*(v13 + 56) + 8 * v22) = v54;
      ++*(v13 + 16);
    }

    if (!EnumCaseMultiPayload)
    {
      v30 = *v55;
      MEMORY[0x1AC57CB80](0);
      Hasher._combine(_:)(v30);
      goto LABEL_26;
    }

    v32 = v48;
    v31 = v49;
    (*v46)(v48, v55, v49);
    v33 = 1;
    goto LABEL_24;
  }

LABEL_41:

LABEL_42:
  *v3 = v13;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19TokenGenerationCore17NonTerminalSymbolVSiGMd, &_ss18_DictionaryStorageCy19TokenGenerationCore17NonTerminalSymbolVSiGMR);
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
  v52 = type metadata accessor for Locale();
  v5 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v54 = &v46 - v8;
  v59 = type metadata accessor for Prompt.SpecialToken(0);
  v53 = *(v59 - 1);
  MEMORY[0x1EEE9AC00](v59);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSSGMd, &_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSSGMR);
  v55 = v4;
  v12 = v11;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v2;
    v15 = 0;
    v16 = (v11 + 64);
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
    v50 = (v5 + 48);
    v48 = (v5 + 32);
    v47 = (v5 + 8);
    v21 = result + 64;
    v22 = v52;
    v51 = v12;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v29 = v26 | (v15 << 6);
      v30 = *(v12 + 48);
      v58 = *(v53 + 72);
      v31 = v30 + v58 * v29;
      if (v55)
      {
        outlined init with take of TokenizationResult(v31, v10, type metadata accessor for Prompt.SpecialToken);
        v32 = (*(v12 + 56) + 16 * v29);
        v33 = *v32;
        v56 = v32[1];
        v57 = v33;
      }

      else
      {
        outlined init with copy of TokenizationResult(v31, v10, type metadata accessor for Prompt.SpecialToken);
        v34 = (*(v12 + 56) + 16 * v29);
        v35 = *v34;
        v56 = v34[1];
        v57 = v35;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v36 = v54;
      outlined init with copy of (String, Any)(&v10[v59[5]], v54, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if ((*v50)(v36, 1, v22) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v37 = v49;
        (*v48)(v49, v36, v22);
        Hasher._combine(_:)(1u);
        _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
        dispatch thunk of Hashable.hash(into:)();
        (*v47)(v37, v22);
      }

      if (*&v10[v59[6] + 8])
      {
        Hasher._combine(_:)(1u);
        v22 = v52;
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v12 = v51;
      Hasher._combine(_:)(v10[v59[7]]);
      result = Hasher._finalize()();
      v38 = -1 << *(v14 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v21 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v21 + 8 * v40);
          if (v44 != -1)
          {
            v23 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v39) & ~*(v21 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = outlined init with take of TokenizationResult(v10, *(v14 + 48) + v58 * v23, type metadata accessor for Prompt.SpecialToken);
      v24 = (*(v14 + 56) + 16 * v23);
      v25 = v56;
      *v24 = v57;
      v24[1] = v25;
      ++*(v14 + 16);
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v19 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if (v55)
    {
      v45 = 1 << *(v12 + 32);
      if (v45 >= 64)
      {
        bzero(v16, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v16 = -1 << v45;
      }

      *(v12 + 16) = 0;
    }

    v3 = v46;
  }

  else
  {
  }

  *v3 = v14;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for Prompt.SpecialToken(0);
  v51 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VypGMd, &_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VypGMR);
  v14 = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    v43 = v2;
    v16 = 0;
    v17 = *(v13 + 64);
    v44 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v50 = (v6 + 48);
    v46 = (v6 + 32);
    v45 = (v6 + 8);
    v22 = v14 + 64;
    v23 = v54;
    v47 = v11;
    v49 = v21;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v26 = (v20 - 1) & v20;
LABEL_15:
      v30 = v25 | (v16 << 6);
      v31 = *(v13 + 48);
      v52 = *(v51 + 72);
      v53 = v26;
      v32 = v31 + v52 * v30;
      if (v4)
      {
        outlined init with take of TokenizationResult(v32, v23, type metadata accessor for Prompt.SpecialToken);
        outlined init with take of Any((*(v13 + 56) + 32 * v30), v55);
      }

      else
      {
        outlined init with copy of TokenizationResult(v32, v23, type metadata accessor for Prompt.SpecialToken);
        outlined init with copy of Any(*(v13 + 56) + 32 * v30, v55);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      outlined init with copy of (String, Any)(v23 + v11[5], v10, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if ((*v50)(v10, 1, v5) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v33 = v48;
        (*v46)(v48, v10, v5);
        Hasher._combine(_:)(1u);
        _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
        dispatch thunk of Hashable.hash(into:)();
        v34 = v33;
        v23 = v54;
        (*v45)(v34, v5);
      }

      if (*(v23 + v11[6] + 8))
      {
        Hasher._combine(_:)(1u);
        v11 = v47;
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v23 = v54;
      Hasher._combine(_:)(v54[v11[7]]);
      result = Hasher._finalize()();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      outlined init with take of TokenizationResult(v23, *(v15 + 48) + v52 * v24, type metadata accessor for Prompt.SpecialToken);
      outlined init with take of Any(v55, (*(v15 + 56) + 32 * v24));
      ++*(v15 + 16);
      v21 = v49;
      v20 = v53;
    }

    v27 = v16;
    result = v44;
    while (1)
    {
      v16 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v16 >= v21)
      {
        break;
      }

      v29 = v44[v16];
      ++v27;
      if (v29)
      {
        v25 = __clz(__rbit64(v29));
        v26 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_40;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v44, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v44 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_40:
  *v3 = v15;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v47 = type metadata accessor for Locale();
  v5 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = &v40 - v8;
  v53 = type metadata accessor for Prompt.SpecialToken(0);
  v48 = *(v53 - 1);
  MEMORY[0x1EEE9AC00](v53);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSDyS2SGGMd, &_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSDyS2SGGMR);
  v50 = v4;
  v12 = v11;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v41 = v2;
    v15 = 0;
    v16 = (v11 + 64);
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
    v45 = (v5 + 48);
    v46 = v12;
    v42 = (v5 + 8);
    v43 = (v5 + 32);
    v21 = result + 64;
    v22 = v47;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 48);
      v52 = *(v48 + 72);
      v29 = v28 + v52 * v27;
      if (v50)
      {
        outlined init with take of TokenizationResult(v29, v10, type metadata accessor for Prompt.SpecialToken);
        v51 = *(*(v12 + 56) + 8 * v27);
      }

      else
      {
        outlined init with copy of TokenizationResult(v29, v10, type metadata accessor for Prompt.SpecialToken);
        v51 = *(*(v12 + 56) + 8 * v27);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v30 = v49;
      outlined init with copy of (String, Any)(&v10[v53[5]], v49, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if ((*v45)(v30, 1, v22) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v31 = v44;
        (*v43)(v44, v30, v22);
        Hasher._combine(_:)(1u);
        _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
        dispatch thunk of Hashable.hash(into:)();
        (*v42)(v31, v22);
      }

      if (*&v10[v53[6] + 8])
      {
        Hasher._combine(_:)(1u);
        v22 = v47;
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v12 = v46;
      Hasher._combine(_:)(v10[v53[7]]);
      result = Hasher._finalize()();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = outlined init with take of TokenizationResult(v10, *(v14 + 48) + v52 * v23, type metadata accessor for Prompt.SpecialToken);
      *(*(v14 + 56) + 8 * v23) = v51;
      ++*(v14 + 16);
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_42;
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

    if (v50)
    {
      v39 = 1 << *(v12 + 32);
      if (v39 >= 64)
      {
        bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v16 = -1 << v39;
      }

      *(v12 + 16) = 0;
    }

    v3 = v41;
  }

  else
  {
  }

  *v3 = v14;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS19TokenGenerationCore4JSONOGMd, &_ss18_DictionaryStorageCySS19TokenGenerationCore4JSONOGMR);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v38 & 1) == 0)
      {

        outlined copy of JSON(v25, v26, v27);
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
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

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void *, uint64_t, uint64_t))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = v7;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v8;
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
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v8 + 56) + 8 * v23);
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      a5(v39, v25, v26);
      result = Hasher._finalize()();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v8 = v36;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_33;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_33:
  *v6 = v10;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation12CharacterSetVSaySiGGMd, &_ss18_DictionaryStorageCy10Foundation12CharacterSetVSaySiGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation12CharacterSetVShySiGGMd, &_ss18_DictionaryStorageCy10Foundation12CharacterSetVShySiGGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySis5UInt8VGMd, &_ss18_DictionaryStorageCySis5UInt8VGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      v21 = *(*(v5 + 56) + v19);
      result = MEMORY[0x1AC57CB60](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
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

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys5UInt8VSiGMd, &_ss18_DictionaryStorageCys5UInt8VSiGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = MEMORY[0x1AC57CB50](*(v7 + 40), v20, 1);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
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

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2iGMd, &_ss18_DictionaryStorageCyS2iGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      v21 = *(*(v5 + 56) + 8 * v19);
      result = MEMORY[0x1AC57CB60](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
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

{
  v3 = v2;
  v4 = a2;
  v39 = type metadata accessor for CharacterSet();
  v5 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation12CharacterSetVGMd, &_ss18_DictionaryStorageCySi10Foundation12CharacterSetVGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = MEMORY[0x1AC57CB60](*(v9 + 40), v23);
      v26 = -1 << *(v9 + 32);
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
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for JSONSchema();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy29GenerativeFunctionsFoundation10JSONSchemaOSay19TokenGenerationCore4RuleVGGMd, &_ss18_DictionaryStorageCy29GenerativeFunctionsFoundation10JSONSchemaOSay19TokenGenerationCore4RuleVGGMR);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type JSONSchema and conformance JSONSchema, MEMORY[0x1E69A0AF8], MEMORY[0x1E69A0B08]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Symbol(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for JSONSchema.Property();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy29GenerativeFunctionsFoundation10JSONSchemaO8PropertyV19TokenGenerationCore6SymbolOGMd, &_ss18_DictionaryStorageCy29GenerativeFunctionsFoundation10JSONSchemaO8PropertyV19TokenGenerationCore6SymbolOGMR);
  v43 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        outlined init with take of TokenizationResult(v27 + v28 * v24, v47, type metadata accessor for Symbol);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        outlined init with copy of TokenizationResult(v29 + v28 * v24, v47, type metadata accessor for Symbol);
      }

      _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type JSONSchema.Property and conformance JSONSchema.Property, MEMORY[0x1E69A0AD0], MEMORY[0x1E69A0AD8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = outlined init with take of TokenizationResult(v47, *(v12 + 56) + v28 * v20, type metadata accessor for Symbol);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
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
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictGMd, &_ss18_DictionaryStorageCySi19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictGMR);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 48 * v20;
      v23 = *v22;
      v39 = *(v22 + 8);
      v24 = *(v22 + 24);
      v25 = *(v22 + 32);
      v37 = *(v22 + 41);
      v38 = *(v22 + 40);
      if ((v36 & 1) == 0)
      {
      }

      result = MEMORY[0x1AC57CB60](*(v7 + 40), v21);
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 48 * v15;
      *v16 = v23;
      *(v16 + 8) = v39;
      *(v16 + 24) = v24;
      *(v16 + 32) = v25;
      *(v16 + 40) = v38;
      *(v16 + 41) = v37;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
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

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for CharacterSet();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680B8], MEMORY[0x1E69680C0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
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

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
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

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for TerminalSymbol(0);
  result = outlined init with take of TokenizationResult(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for TerminalSymbol);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, MEMORY[0x1E69A0AF8]);
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for JSONSchema.Property();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for Symbol(0);
  result = outlined init with take of TokenizationResult(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for Symbol);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
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

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t *a3, void *a4)
{
  v4 = *a3;
  v5 = *(a3 + 24);
  v6 = a3[4];
  v7 = *(a3 + 40);
  v8 = *(a3 + 41);
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v9 = a4[7] + 48 * result;
  *v9 = v4;
  *(v9 + 8) = *(a3 + 1);
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  *(v9 + 41) = v8;
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

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for Prompt.SpecialToken(0);
  outlined init with take of TokenizationResult(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for Prompt.SpecialToken);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
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

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVSayAE6ChoiceVGGMd, &_ss18_DictionaryStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVSayAE6ChoiceVGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVAE0J0OGMd, &_ss18_DictionaryStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVAE0J0OGMR);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        result = outlined copy of Regex2BNF.Symbol(v23, v24, v26);
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySJSaySiGGMd, &_ss18_DictionaryStorageCySJSaySiGGMR);
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69680B8], &_ss18_DictionaryStorageCy10Foundation12CharacterSetVSaySiGGMd, &_ss18_DictionaryStorageCy10Foundation12CharacterSetVSaySiGGMR);
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69680B8], &_ss18_DictionaryStorageCy10Foundation12CharacterSetVShySiGGMd, &_ss18_DictionaryStorageCy10Foundation12CharacterSetVShySiGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySis5UInt8VGMd, &_ss18_DictionaryStorageCySis5UInt8VGMR);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys5UInt8VSiGMd, &_ss18_DictionaryStorageCys5UInt8VSiGMR);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
  v2 = type metadata accessor for TerminalSymbol(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19TokenGenerationCore14TerminalSymbolOSiGMd, &_ss18_DictionaryStorageCy19TokenGenerationCore14TerminalSymbolOSiGMR);
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
        v21 = *(v24 + 72) * v20;
        outlined init with copy of TokenizationResult(*(v5 + 48) + v21, v4, type metadata accessor for TerminalSymbol);
        v22 = *(*(v5 + 56) + 8 * v20);
        result = outlined init with take of TokenizationResult(v4, *(v7 + 48) + v21, type metadata accessor for TerminalSymbol);
        *(*(v7 + 56) + 8 * v20) = v22;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2iGMd, &_ss18_DictionaryStorageCyS2iGMR);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
  v29 = type metadata accessor for CharacterSet();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation12CharacterSetVGMd, &_ss18_DictionaryStorageCySi10Foundation12CharacterSetVGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19TokenGenerationCore17NonTerminalSymbolVSiGMd, &_ss18_DictionaryStorageCy19TokenGenerationCore17NonTerminalSymbolVSiGMR);
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

  return result;
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69A0AF8], &_ss18_DictionaryStorageCy29GenerativeFunctionsFoundation10JSONSchemaOSay19TokenGenerationCore4RuleVGGMd, &_ss18_DictionaryStorageCy29GenerativeFunctionsFoundation10JSONSchemaOSay19TokenGenerationCore4RuleVGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictGMd, &_ss18_DictionaryStorageCySi19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictGMR);
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
        v18 = *(v2 + 56) + 48 * v17;
        v19 = *v18;
        v20 = *(v18 + 24);
        v21 = *(v18 + 32);
        v22 = *(v18 + 40);
        v23 = *(v18 + 41);
        v24 = *(v18 + 8);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v25 = *(v4 + 56) + 48 * v17;
        *v25 = v19;
        *(v25 + 8) = v24;
        *(v25 + 24) = v20;
        *(v25 + 32) = v21;
        *(v25 + 40) = v22;
        *(v25 + 41) = v23;
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
  v2 = type metadata accessor for Prompt.SpecialToken(0);
  v34 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSSGMd, &_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSSGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    v32 = v4;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v33;
        v22 = *(v34 + 72) * v20;
        outlined init with copy of TokenizationResult(*(v4 + 48) + v22, v33, type metadata accessor for Prompt.SpecialToken);
        v23 = *(v4 + 56);
        v24 = 16 * v20;
        v25 = (v23 + 16 * v20);
        v26 = *v25;
        v27 = v25[1];
        v28 = v35;
        outlined init with take of TokenizationResult(v21, *(v35 + 48) + v22, type metadata accessor for Prompt.SpecialToken);
        v29 = (*(v28 + 56) + v24);
        v4 = v32;
        *v29 = v26;
        v29[1] = v27;
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v31;
        v6 = v35;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for Prompt.SpecialToken(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VypGMd, &_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VypGMR);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        outlined init with copy of TokenizationResult(*(v6 + 48) + v22, v5, type metadata accessor for Prompt.SpecialToken);
        v21 *= 32;
        outlined init with copy of Any(*(v6 + 56) + v21, v25);
        outlined init with take of TokenizationResult(v5, *(v8 + 48) + v22, type metadata accessor for Prompt.SpecialToken);
        result = outlined init with take of Any(v25, (*(v8 + 56) + v21));
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for Prompt.SpecialToken(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSDyS2SGGMd, &_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSDyS2SGGMR);
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
        v21 = *(v24 + 72) * v20;
        outlined init with copy of TokenizationResult(*(v5 + 48) + v21, v4, type metadata accessor for Prompt.SpecialToken);
        v22 = *(*(v5 + 56) + 8 * v20);
        outlined init with take of TokenizationResult(v4, *(v7 + 48) + v21, type metadata accessor for Prompt.SpecialToken);
        *(*(v7 + 56) + 8 * v20) = v22;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS19TokenGenerationCore4JSONOGMd, &_ss18_DictionaryStorageCySS19TokenGenerationCore4JSONOGMR);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        result = outlined copy of JSON(v23, v24, v26);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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

  return result;
}

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v6;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
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

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for Symbol(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for JSONSchema.Property();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy29GenerativeFunctionsFoundation10JSONSchemaO8PropertyV19TokenGenerationCore6SymbolOGMd, &_ss18_DictionaryStorageCy29GenerativeFunctionsFoundation10JSONSchemaO8PropertyV19TokenGenerationCore6SymbolOGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        outlined init with copy of TokenizationResult(*(v5 + 56) + v26, v35, type metadata accessor for Symbol);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = outlined init with take of TokenizationResult(v25, *(v27 + 56) + v26, type metadata accessor for Symbol);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
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

uint64_t outlined assign with take of TokenizationResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TokenizationResult(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of TokenizationResult(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of TokenizationResult(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TokenizationResult(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5AKSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_AF_SsTG5SiTf1cn_n(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5AISg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_AF_SsTG5SiTf1nnc_nTf4xnn_n(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE1(result) & 1;
    v13 = result | ((BYTE1(result) & 1) << 8);
LABEL_8:
    LOBYTE(v14[0]) = (a4 & 0x1000000000000000) != 0;
    return v13 | (LOBYTE(v14[0]) << 16);
  }

  return result;
}

uint64_t specialized static TokenizationResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.AttachmentContent(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TokenizationResult(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v21 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18TokenizationResultO_ACtMd, &_s19TokenGenerationCore18TokenizationResultO_ACtMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - v14;
  v17 = *(v16 + 56);
  outlined init with copy of TokenizationResult(a1, &v21 - v14, type metadata accessor for TokenizationResult);
  outlined init with copy of TokenizationResult(a2, &v15[v17], type metadata accessor for TokenizationResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of TokenizationResult(v15, v9, type metadata accessor for TokenizationResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of TokenizationResult(&v15[v17], v6, type metadata accessor for Prompt.AttachmentContent);
      v18 = static Prompt.AttachmentContent.== infix(_:_:)(v9, v6);
      outlined destroy of TokenizationResult(v6, type metadata accessor for Prompt.AttachmentContent);
      outlined destroy of TokenizationResult(v9, type metadata accessor for Prompt.AttachmentContent);
LABEL_9:
      outlined destroy of TokenizationResult(v15, type metadata accessor for TokenizationResult);
      return v18 & 1;
    }

    outlined destroy of TokenizationResult(v9, type metadata accessor for Prompt.AttachmentContent);
  }

  else
  {
    outlined init with copy of TokenizationResult(v15, v12, type metadata accessor for TokenizationResult);
    v19 = *v12;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v18 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v19, *&v15[v17]);

      goto LABEL_9;
    }
  }

  outlined destroy of [Regex2BNF.CharacterPredicate](v15, &_s19TokenGenerationCore18TokenizationResultO_ACtMd, &_s19TokenGenerationCore18TokenizationResultO_ACtMR);
  v18 = 0;
  return v18 & 1;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5AISg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_AF_SsTG5SiTf1nnc_nTf4xnn_n(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 87;
        if (a6 > 10)
        {
          v40 = a6 + 55;
        }

        else
        {
          v39 = 97;
          v40 = 65;
        }

        if (a6 <= 10)
        {
          v41 = a6 + 48;
        }

        else
        {
          v41 = 58;
        }

        if (v27)
        {
          LOBYTE(v32) = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                v38 = 1;
                if (v44 < 0x61 || v44 >= v39)
                {
                  return v37 | (v38 << 8);
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (((v32 * a6) & 0xFF00) != 0)
            {
              goto LABEL_96;
            }

            v32 = (v32 * a6) + (v44 + v45);
            if ((v32 >> 8))
            {
              goto LABEL_96;
            }

            ++v42;
            --v43;
          }

          while (v43);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 8);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v46 = a6 + 87;
      if (a6 > 10)
      {
        v47 = a6 + 55;
      }

      else
      {
        v46 = 97;
        v47 = 65;
      }

      if (a6 <= 10)
      {
        v48 = a6 + 48;
      }

      else
      {
        v48 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        while (1)
        {
          v49 = *v27;
          if (v49 < 0x30 || v49 >= v48)
          {
            if (v49 < 0x41 || v49 >= v47)
            {
              v37 = 0;
              v38 = 1;
              if (v49 < 0x61 || v49 >= v46)
              {
                return v37 | (v38 << 8);
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) + (v49 + v50);
          if ((v32 >> 8))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 8);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 8);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) - (v35 + v36);
          if ((v32 & 0xFFFFFF00) != 0)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 8);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t outlined consume of ImageTokenizationConfiguration?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t specialized TokenizerRunner.convertByteTokenToUTF8CodeUnit(fromTokenText:)(uint64_t a1, unint64_t a2)
{
  lazy protocol witness table accessor for type String and conformance String();
  v22[0] = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v22[1] = v4;
  v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v7 = v6;

  v8 = specialized Collection.dropFirst(_:)(2uLL, v5, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (!((v8 ^ v10) >> 14))
  {

LABEL_5:
    if (one-time initialization token for tokenization != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.tokenization);

    v18 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v16))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v22);
      _os_log_impl(&dword_1A8E85000, v18, v16, "Invalid byte token passed to convertByteToken: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1AC57DBF0](v20, -1, -1);
      MEMORY[0x1AC57DBF0](v19, -1, -1);
    }

    type metadata accessor for GenerationError(0);
    _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v16;
  }

  v15 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5AKSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_AF_SsTG5SiTf1cn_n(v8, v10, v12, v14, 16);
  if ((v15 & 0x10000) != 0)
  {
    v15 = specialized _parseInteger<A, B>(ascii:radix:)(v8, v10, v12, v14, 16);
  }

  v16 = v15;

  if ((v16 & 0x100) != 0)
  {
    goto LABEL_5;
  }

  return v16;
}

uint64_t specialized static TokenizerRunner.tokenize(attachment:using:configuration:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  *(v3 + 128) = type metadata accessor for Prompt.AttachmentContent(0);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = *a3;

  return MEMORY[0x1EEE6DFA0](specialized static TokenizerRunner.tokenize(attachment:using:configuration:), 0, 0);
}

uint64_t specialized static TokenizerRunner.tokenize(attachment:using:configuration:)()
{
  v70 = v0;
  outlined init with copy of TokenizationResult(*(v0 + 112), *(v0 + 144), type metadata accessor for Prompt.AttachmentContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v51 = *(v0 + 152);
      v50 = *(v0 + 160);
      v52 = *(v0 + 144);
      v53 = *(v0 + 120);
      v54 = *v52;
      *(v0 + 208) = *v52;
      v55 = v53[3];
      v56 = v53[4];
      __swift_project_boxed_opaque_existential_1(v53, v55);
      *(v0 + 104) = v54;
      *(v0 + 72) = v51;
      *(v0 + 80) = v50;
      v64 = (*(v56 + 16) + **(v56 + 16));
      v57 = swift_task_alloc();
      *(v0 + 216) = v57;
      *v57 = v0;
      v57[1] = specialized static TokenizerRunner.tokenize(attachment:using:configuration:);
      v22 = v0 + 104;
      v23 = v0 + 72;
      v24 = v55;
      v25 = v56;
      v26 = v64;
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_12;
      }

      v14 = *(v0 + 152);
      v13 = *(v0 + 160);
      v15 = *(v0 + 144);
      v16 = *(v0 + 120);
      v17 = *v15;
      *(v0 + 240) = *v15;
      v18 = v15[1];
      *(v0 + 248) = v18;
      v19 = v16[3];
      v20 = v16[4];
      __swift_project_boxed_opaque_existential_1(v16, v19);
      *(v0 + 40) = v17;
      *(v0 + 48) = v18;
      *(v0 + 56) = v14;
      *(v0 + 64) = v13;
      v62 = (*(v20 + 32) + **(v20 + 32));
      v21 = swift_task_alloc();
      *(v0 + 256) = v21;
      *v21 = v0;
      v21[1] = specialized static TokenizerRunner.tokenize(attachment:using:configuration:);
      v22 = v0 + 40;
      v23 = v0 + 56;
      v24 = v19;
      v25 = v20;
      v26 = v62;
    }

    return v26(v22, v23, v24, v25);
  }

  if (!EnumCaseMultiPayload)
  {
    v41 = *(v0 + 152);
    v40 = *(v0 + 160);
    v42 = *(v0 + 144);
    v43 = *(v0 + 120);
    v44 = *v42;
    v45 = *(v42 + 1);
    *(v0 + 168) = v45;
    v46 = *(v42 + 2);
    *(v0 + 176) = v46;
    v47 = v43[3];
    v48 = v43[4];
    __swift_project_boxed_opaque_existential_1(v43, v47);
    *(v0 + 16) = v44;
    *(v0 + 24) = v45;
    *(v0 + 32) = v46;
    *(v0 + 88) = v41;
    *(v0 + 96) = v40;
    v63 = (*(v48 + 8) + **(v48 + 8));
    v49 = swift_task_alloc();
    *(v0 + 184) = v49;
    *v49 = v0;
    v49[1] = specialized static TokenizerRunner.tokenize(attachment:using:configuration:);
    v22 = v0 + 16;
    v23 = v0 + 88;
    v24 = v47;
    v25 = v48;
    v26 = v63;

    return v26(v22, v23, v24, v25);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v3 = *(v0 + 152);
    v2 = *(v0 + 160);
    v4 = *(v0 + 144);
    v5 = *(v0 + 120);
    v6 = *v4;
    v7 = *(v4 + 5);
    v8 = v5[3];
    v9 = v5[4];
    v60 = *(v4 + 24);
    v61 = *(v4 + 8);
    __swift_project_boxed_opaque_existential_1(v5, v8);
    LOBYTE(v65) = v6;
    v67 = v60;
    v66 = v61;
    v68 = v7;
    v69[0] = v3;
    v69[1] = v2;
    v10 = (*(v9 + 24))(&v65, v69, v8, v9);
    outlined consume of Data._Representation(v61, *(&v61 + 1));

    v11 = *(v0 + 8);

    return v11(v10);
  }

LABEL_12:
  if (one-time initialization token for tokenization != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 136);
  v28 = *(v0 + 112);
  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Log.tokenization);
  outlined init with copy of TokenizationResult(v28, v27, type metadata accessor for Prompt.AttachmentContent);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 136);
  if (v32)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v65 = v35;
    *v34 = 136315138;
    v36 = Prompt.AttachmentContent.description.getter();
    v38 = v37;
    outlined destroy of TokenizationResult(v33, type metadata accessor for Prompt.AttachmentContent);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v65);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_1A8E85000, v30, v31, "Unexpected attachment was remaining in the prompt after tokenization %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x1AC57DBF0](v35, -1, -1);
    MEMORY[0x1AC57DBF0](v34, -1, -1);
  }

  else
  {

    outlined destroy of TokenizationResult(v33, type metadata accessor for Prompt.AttachmentContent);
  }

  v58 = *(v0 + 144);
  type metadata accessor for GenerationError(0);
  _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  outlined destroy of TokenizationResult(v58, type metadata accessor for Prompt.AttachmentContent);

  v59 = *(v0 + 8);

  return v59();
}

{
  outlined consume of Data._Representation(v0[21], v0[22]);
  v1 = v0[25];

  v2 = v0[1];

  return v2(v1);
}

{

  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v1 = *(v0 + 272);

  v2 = *(v0 + 8);

  return v2(v1);
}

{
  outlined consume of Data._Representation(v0[21], v0[22]);

  v1 = v0[1];

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized static TokenizerRunner.tokenize(attachment:using:configuration:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = specialized static TokenizerRunner.tokenize(attachment:using:configuration:);
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = specialized static TokenizerRunner.tokenize(attachment:using:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = specialized static TokenizerRunner.tokenize(attachment:using:configuration:);
  }

  else
  {
    *(v4 + 232) = a1;
    v5 = specialized static TokenizerRunner.tokenize(attachment:using:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = specialized static TokenizerRunner.tokenize(attachment:using:configuration:);
  }

  else
  {

    *(v4 + 272) = a1;
    v5 = specialized static TokenizerRunner.tokenize(attachment:using:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t outlined copy of ImageTokenizationConfiguration?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined init with take of (key: Prompt.SpecialToken, value: Any)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetSgMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_yp5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of UnresolvedImageTokenizationConfiguration?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined consume of UnresolvedImageTokenizationConfiguration.ImageStartAndEnd(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t outlined consume of UnresolvedImageTokenizationConfiguration.ImageStartAndEnd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
}

uint64_t outlined copy of UnresolvedImageTokenizationConfiguration.ImageStartAndEnd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
}

uint64_t outlined copy of UnresolvedImageTokenizationConfiguration?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined copy of UnresolvedImageTokenizationConfiguration.ImageStartAndEnd(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

void type metadata completion function for TokenizationResult(uint64_t a1)
{
  type metadata accessor for [Int]();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Prompt.AttachmentContent(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t dispatch thunk of TokenizerRunner.tokenize(promptModules:tokenTable:attachmentTokenizer:promptPreprocessingTemplateVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 144) + **(*v4 + 144));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = dispatch thunk of AttachmentTokenizer.tokenize(imageSurfaceAttachment:configuration:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TokenizerRunner.tokenizeModularPrompt(prompt:tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:)()
{
  return (*(*v0 + 168))();
}

{
  return (*(*v0 + 184))();
}

uint64_t type metadata completion function for TokenizerRunner.TokenizedItem(uint64_t a1)
{
  result = type metadata accessor for Prompt.AttachmentContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenizerRunnerSentencePieceModel.tokenize(text:)(Swift::String text)
{
  v2 = v1;
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1AC57BF60](text._countAndFlagsBits, text._object);
  v25[0] = 0;
  v4 = [v2 encodeAsIDsFrom:v3 error:v25];

  v5 = v25[0];
  type metadata accessor for NSNumber();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v5;

  if (v7)
  {

    if (one-time initialization token for tokenization != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.tokenization);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v7;
      *v12 = v5;
      v13 = v7;
      _os_log_impl(&dword_1A8E85000, v9, v10, "Failed to tokenize text due to %@", v11, 0xCu);
      outlined destroy of NSObject?(v12);
      MEMORY[0x1AC57DBF0](v12, -1, -1);
      MEMORY[0x1AC57DBF0](v11, -1, -1);
    }

    v14 = type metadata accessor for GenerationError(0);
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_23;
  }

  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v23 = v6;
    }

    else
    {
      v23 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = MEMORY[0x1AC57C730](v23);
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_22:

    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_22;
  }

LABEL_9:
  v25[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    __break(1u);
  }

  v17 = 0;
  v14 = v25[0];
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1AC57C620](v17, v6);
    }

    else
    {
      v18 = *(v6 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = [v18 integerValue];

    v25[0] = v14;
    v22 = *(v14 + 16);
    v21 = *(v14 + 24);
    if (v22 >= v21 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
      v14 = v25[0];
    }

    ++v17;
    *(v14 + 16) = v22 + 1;
    *(v14 + 8 * v22 + 32) = v20;
  }

  while (v16 != v17);

LABEL_23:
  v24 = v14;
  result.value._rawValue = v24;
  result.is_nil = v15;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenizerRunnerSentencePieceModel.detokenize(tokenIDs:)(Swift::OpaquePointer tokenIDs)
{
  v2 = v1;
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = *(tokenIDs._rawValue + 2);
  if (v3)
  {
    v23[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = (tokenIDs._rawValue + 32);
    do
    {
      v6 = *v5++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
  }

  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v23[0] = 0;
  v8 = [v2 decodeFromIDs:isa error:v23];

  v9 = v23[0];
  v10 = v23[0];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v10)
  {

    if (one-time initialization token for tokenization != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.tokenization);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v10;
      *v18 = v9;
      v19 = v10;
      _os_log_impl(&dword_1A8E85000, v15, v16, "Failed to detokenize tokenIDs due to %@", v17, 0xCu);
      outlined destroy of NSObject?(v18);
      MEMORY[0x1AC57DBF0](v18, -1, -1);
      MEMORY[0x1AC57DBF0](v17, -1, -1);
    }

    type metadata accessor for GenerationError(0);
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v23[0] = v11;
    v23[1] = v13;
    v20 = String.init<A>(_:)();
  }

  result._object = v21;
  result._countAndFlagsBits = v20;
  return result;
}

unint64_t TokenizerRunnerSentencePieceModel.vocabulary()(void *a1)
{
  result = [a1 pieceSize];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = [a1 pieceFrom_];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v5);
      }

      ++v4;
      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v7;
      *(v12 + 5) = v9;
    }

    while (v3 != v4);
    return v5;
  }

  return result;
}

unint64_t TokenizerRunnerSentencePieceModel.longestTokenLength.getter(void *a1)
{
  result = [a1 pieceSize];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = result;
    if (result)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = [a1 pieceFrom_];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v8 = String.count.getter();

        if (v8 > v3)
        {
          v3 = v8;
        }

        v5 = v6;
      }

      while (v4 != v6);
    }

    return v3;
  }

  return result;
}

uint64_t TokenizerRunnerSentencePieceModel.prefixTokenIDs(forPrefix:)(uint64_t a1, unint64_t a2, id a3)
{
  result = [a3 pieceSize];
  if (result < 0)
  {
LABEL_32:
    __break(1u);
  }

  else
  {
    v7 = result;
    if (result)
    {
      v8 = 0;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(a2) & 0xF;
      }

      else
      {
        v9 = a1 & 0xFFFFFFFFFFFFLL;
      }

      v10 = 7;
      if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
      {
        v10 = 11;
      }

      v32 = v9;
      v11 = MEMORY[0x1E69E7CC0];
      for (i = [a3 pieceFrom_]; ; i = objc_msgSend(a3, sel_pieceFrom_, v8, v31))
      {
        v13 = i;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        if ((v16 & 0x2000000000000000) != 0)
        {
          v17 = HIBYTE(v16) & 0xF;
        }

        else
        {
          v17 = v14 & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          v18._countAndFlagsBits = a1;
          v18._object = a2;
          if (String.hasPrefix(_:)(v18))
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
            }

            v20 = v11[2];
            v19 = v11[3];
            if (v20 >= v19 >> 1)
            {
              v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v11);
            }

            v11[2] = v20 + 1;
            v21 = &v11[3 * v20];
            v21[4] = v8;
            v21[5] = 0;
            v21[6] = 0xE000000000000000;
          }

          else
          {
            v22._countAndFlagsBits = v14;
            v22._object = v16;
            v23 = String.hasPrefix(_:)(v22);

            if (v23)
            {
              if (v32 < v17)
              {
                __break(1u);
                goto LABEL_32;
              }

              v24 = String.subscript.getter();
              v25 = MEMORY[0x1AC57C040](v24);
              v27 = v26;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
              }

              v29 = v11[2];
              v28 = v11[3];
              if (v29 >= v28 >> 1)
              {
                v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v11);
              }

              v11[2] = v29 + 1;
              v30 = &v11[3 * v29];
              v30[4] = v8;
              v30[5] = v25;
              v30[6] = v27;
            }
          }
        }

        else
        {
        }

        if (v7 == ++v8)
        {
          return v11;
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t TokenizerRunnerSentencePieceModel.tokenIDs(forRawPrefix:)(uint64_t a1, unint64_t a2, id a3)
{
  v3 = a3;
  result = [a3 pieceSize];
  if (result < 0)
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v7 = result;
    if (result)
    {
      v8 = 0;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(a2) & 0xF;
      }

      else
      {
        v9 = a1 & 0xFFFFFFFFFFFFLL;
      }

      v34 = v9;
      v10 = MEMORY[0x1E69E7CC0];
      v33 = result;
      while (1)
      {
        v11 = [v3 pieceFrom_];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        if ((v14 & 0x2000000000000000) != 0)
        {
          v15 = HIBYTE(v14) & 0xF;
        }

        else
        {
          v15 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (v15 && (v16._countAndFlagsBits = a1, v16._object = a2, result = String.hasPrefix(_:)(v16), (result & 1) != 0))
        {
          if (v15 < v34)
          {
            __break(1u);
            goto LABEL_23;
          }

          v17 = v3;
          v18 = a2;
          v19 = a1;
          v20 = String.subscript.getter();
          v22 = v21;
          v24 = v23;
          v26 = v25;

          v27 = MEMORY[0x1AC57C040](v20, v22, v24, v26);
          v29 = v28;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
          }

          v31 = v10[2];
          v30 = v10[3];
          a1 = v19;
          if (v31 >= v30 >> 1)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v10);
          }

          a2 = v18;
          v10[2] = v31 + 1;
          v32 = &v10[3 * v31];
          v32[4] = v8;
          v32[5] = v27;
          v32[6] = v29;
          v3 = v17;
          v7 = v33;
        }

        else
        {
        }

        if (v7 == ++v8)
        {
          return v10;
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void *TokenizerRunnerSentencePieceModel.tokenIDs(forDecodedPrefix:)(uint64_t a1, unint64_t a2, id a3)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v6 = [a3 pieceSize];
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
  }

  v7 = v6;
  if (v6)
  {
    v8 = 0;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v9 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v37 = v9;
    v10 = MEMORY[0x1E69E7CC0];
    v36 = a1;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1A8FCB6B0;
      *(v11 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      type metadata accessor for NSNumber();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v38[0] = 0;
      v13 = [a3 decodeFromIDs:isa error:v38];

      v14 = v38[0];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      v18 = v14;

      if (v18)
      {
      }

      else
      {
        if ((v17 & 0x2000000000000000) != 0)
        {
          v19 = HIBYTE(v17) & 0xF;
        }

        else
        {
          v19 = v15 & 0xFFFFFFFFFFFFLL;
        }

        if (v19 && (v20._countAndFlagsBits = a1, v20._object = a2, String.hasPrefix(_:)(v20)))
        {
          if (v19 < v37)
          {
            __break(1u);
            goto LABEL_25;
          }

          v21 = a2;
          v22 = String.subscript.getter();
          v24 = v23;
          v26 = v25;
          v28 = v27;

          v29 = MEMORY[0x1AC57C040](v22, v24, v26, v28);
          v31 = v30;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
          }

          v33 = v10[2];
          v32 = v10[3];
          a2 = v21;
          if (v33 >= v32 >> 1)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v10);
          }

          a1 = v36;
          v10[2] = v33 + 1;
          v34 = &v10[3 * v33];
          v34[4] = v8;
          v34[5] = v29;
          v34[6] = v31;
        }

        else
        {
        }
      }

      if (v7 == ++v8)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}