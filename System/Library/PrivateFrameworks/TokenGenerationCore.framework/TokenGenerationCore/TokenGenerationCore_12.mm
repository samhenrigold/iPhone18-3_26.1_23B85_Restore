void type metadata completion function for Prompt.ResponseFormat.SchemaDetails(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Schema();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for Prompt.ResponseFormat.GrammarDetails(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for Prompt.ResponseFormat.GrammarDetails(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with take of (key: Prompt.SpecialToken, value: String)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V3key_SS5valuetMd, &_s15TokenGeneration6PromptV07SpecialA0V3key_SS5valuetMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of Prompt.PromptFragment(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.PromptFragment(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

Swift::String __swiftcall Prompt.RenderedPromptFragment.renderedText()()
{
  v1 = v0;
  v2 = type metadata accessor for Prompt.RenderedSpecialToken(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOWOcTm_0(v1, v7, type metadata accessor for Prompt.RenderedPromptFragment);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of Prompt.RenderedSpecialToken(v7, v4, type metadata accessor for Prompt.RenderedSpecialToken);
      v10 = *v4;
      v9 = v4[1];

      outlined destroy of Prompt.RenderedPromptFragment(v4, type metadata accessor for Prompt.RenderedSpecialToken);
      v11 = v9;
      v12 = v10;
    }

    else
    {
      outlined destroy of Prompt.RenderedPromptFragment(v7, type metadata accessor for Prompt.RenderedPromptFragment);
      v12 = 0;
      v11 = 0xE000000000000000;
    }
  }

  else
  {
    v12 = *v7;
    v11 = v7[1];
  }

  result._object = v11;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t outlined destroy of Prompt.RenderedPromptFragment(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Prompt.RenderedSpecialToken.specialToken.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Prompt.RenderedSpecialToken(0) + 20);

  return outlined assign with take of Prompt.SpecialToken(a1, v3);
}

uint64_t outlined assign with take of Prompt.SpecialToken(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.SpecialToken(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static Prompt.RenderedSpecialToken.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Prompt.RenderedSpecialToken(0) + 20);

  return specialized static Prompt.SpecialToken.== infix(_:_:)((a1 + v5), (a2 + v5));
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Prompt.RenderedSpecialToken(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return static Prompt.SpecialToken.== infix(_:_:)();
}

uint64_t specialized static Prompt.RenderedPromptFragment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.AttachmentContent(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Prompt.RenderedSpecialToken(0);
  MEMORY[0x1EEE9AC00](v33);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v33 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v33 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentO_AFtMd, &_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentO_AFtMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v33 - v18;
  v21 = (&v33 + *(v20 + 56) - v18);
  _s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOWOcTm_0(a1, &v33 - v18, type metadata accessor for Prompt.RenderedPromptFragment);
  _s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOWOcTm_0(a2, v21, type metadata accessor for Prompt.RenderedPromptFragment);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    _s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOWOcTm_0(v19, v16, type metadata accessor for Prompt.RenderedPromptFragment);
    v25 = *v16;
    v24 = v16[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v25 == *v21 && v24 == v21[1])
      {

        goto LABEL_30;
      }

      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

LABEL_18:
    outlined destroy of (Prompt.RenderedPromptFragment, Prompt.RenderedPromptFragment)(v19);
LABEL_19:
    v27 = 0;
    return v27 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    _s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOWOcTm_0(v19, v13, type metadata accessor for Prompt.RenderedPromptFragment);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of Prompt.RenderedSpecialToken(v21, v7, type metadata accessor for Prompt.RenderedSpecialToken);
      v23 = *v13 == *v7 && v13[1] == v7[1];
      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static Prompt.SpecialToken.== infix(_:_:)())
      {
        outlined destroy of Prompt.RenderedPromptFragment(v7, type metadata accessor for Prompt.RenderedSpecialToken);
        outlined destroy of Prompt.RenderedPromptFragment(v13, type metadata accessor for Prompt.RenderedSpecialToken);
LABEL_30:
        outlined destroy of Prompt.RenderedPromptFragment(v19, type metadata accessor for Prompt.RenderedPromptFragment);
        v27 = 1;
        return v27 & 1;
      }

      outlined destroy of Prompt.RenderedPromptFragment(v7, type metadata accessor for Prompt.RenderedSpecialToken);
      outlined destroy of Prompt.RenderedPromptFragment(v13, type metadata accessor for Prompt.RenderedSpecialToken);
LABEL_28:
      outlined destroy of Prompt.RenderedPromptFragment(v19, type metadata accessor for Prompt.RenderedPromptFragment);
      goto LABEL_19;
    }

    v28 = type metadata accessor for Prompt.RenderedSpecialToken;
    v29 = v13;
    goto LABEL_17;
  }

  _s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOWOcTm_0(v19, v10, type metadata accessor for Prompt.RenderedPromptFragment);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v28 = type metadata accessor for Prompt.AttachmentContent;
    v29 = v10;
LABEL_17:
    outlined destroy of Prompt.RenderedPromptFragment(v29, v28);
    goto LABEL_18;
  }

  v26 = v34;
  outlined init with take of Prompt.RenderedSpecialToken(v21, v34, type metadata accessor for Prompt.AttachmentContent);
  v27 = specialized static Prompt.AttachmentContent.== infix(_:_:)(v10, v26);
  outlined destroy of Prompt.RenderedPromptFragment(v26, type metadata accessor for Prompt.AttachmentContent);
  outlined destroy of Prompt.RenderedPromptFragment(v10, type metadata accessor for Prompt.AttachmentContent);
  outlined destroy of Prompt.RenderedPromptFragment(v19, type metadata accessor for Prompt.RenderedPromptFragment);
  return v27 & 1;
}

uint64_t type metadata completion function for Prompt.RenderedSpecialToken(uint64_t a1)
{
  result = type metadata accessor for Prompt.SpecialToken(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for Prompt.RenderedPromptFragment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t outlined destroy of (Prompt.RenderedPromptFragment, Prompt.RenderedPromptFragment)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentO_AFtMd, &_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentO_AFtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Prompt.RenderedSpecialToken(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata completion function for Prompt.PromptMarker(uint64_t a1)
{
  result = type metadata accessor for Prompt.Attachment(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Prompt.Delimiter(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *Prompt.renderPromptModules(tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:substitutionTextForInputTokenText:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v192 = a4;
  v183 = a2;
  v182 = a1;
  v6 = type metadata accessor for Prompt.ResponseFormat(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v194 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for Prompt.AttachmentContent(0);
  MEMORY[0x1EEE9AC00](v197);
  v217 = (&v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Prompt.Attachment(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v188 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for Prompt.RenderedSpecialToken(0);
  MEMORY[0x1EEE9AC00](v178);
  v177 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOSgMd, &_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v181 = &v159 - v13;
  v14 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  v15 = *(v14 - 8);
  v204 = v14;
  v205 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v196 = &v159 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v195 = (&v159 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v193 = (&v159 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v187 = (&v159 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v184 = (&v159 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v176 = (&v159 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v191 = (&v159 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v180 = &v159 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v179 = &v159 - v32;
  v33 = type metadata accessor for Prompt.Delimiter(0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = (&v159 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for Prompt.PromptFragment(0);
  v206 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = (&v159 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = *a3;
  v40 = *v4;
  v41 = v4[1];
  v42 = v4[2];
  v43 = v4[3];
  v213 = *v4;
  v214 = v41;
  v215 = v42;
  v216 = v43;
  v44 = v203;
  v45 = Prompt.promptFragments()();
  if (v44)
  {
    return v39;
  }

  v161 = v43;
  v162 = v42;
  v163 = v41;
  v164 = v40;
  v189 = v39;
  v203 = v38;
  v201 = v36;
  v172 = v35;
  v202 = 0;
  v47 = v45[2];
  if (!v47)
  {

    v52 = MEMORY[0x1E69E7CC0];
    v39 = MEMORY[0x1E69E7CC0];
    goto LABEL_105;
  }

  v48 = 0;
  v49 = v206;
  v200 = v45 + ((*(v206 + 80) + 32) & ~*(v206 + 80));
  v186 = partial apply for closure #4 in ToolCallingConvention.init(version:);
  v50 = closure #1 in ToolCallingConvention.init(version:)partial apply;
  if (v189)
  {
    v50 = closure #3 in ToolCallingConvention.init(version:)partial apply;
  }

  v185 = v50;
  v160 = (v205 + 56);
  v159 = (v205 + 48);
  v51 = v192;
  v175 = v192 + 64;
  v198 = v47;
  v166 = v47 - 1;
  v52 = MEMORY[0x1E69E7CC0];
  *&v46 = 136643331;
  v167 = v46;
  v39 = MEMORY[0x1E69E7CC0];
  v53 = v187;
  v54 = v188;
  v199 = v45;
LABEL_6:
  v165 = v39;
  v170 = 0;
  v55 = v48;
  v39 = v197;
  v56 = v217;
  while (1)
  {
    while (1)
    {
      if (v55 >= v45[2])
      {
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:

        _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v172, type metadata accessor for Prompt.Delimiter);
        goto LABEL_103;
      }

      v60 = v54;
      v61 = v203;
      _s15TokenGeneration6PromptV0aB4CoreE0C8FragmentOWOcTm_0(&v200[*(v49 + 72) * v55], v203, type metadata accessor for Prompt.PromptFragment);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 2)
      {
        break;
      }

      v63 = v61;
      v54 = v60;
      _s15TokenGeneration6PromptV10AttachmentVWObTm_1(v63, v60, type metadata accessor for Prompt.Attachment);
      _s15TokenGeneration6PromptV0aB4CoreE0C8FragmentOWOcTm_0(v60, v56, type metadata accessor for Prompt.AttachmentContent);
      v64 = swift_getEnumCaseMultiPayload();
      if (v64 == 6)
      {
        v80 = specialized ToolCallingConvention.render(toolCalls:)(*v56, v186);
        v82 = v81;

        v83 = v195;
        *v195 = v80;
        v83[1] = v82;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52[2] + 1, 1, v52);
        }

        v85 = v52[2];
        v84 = v52[3];
        v39 = v197;
        if (v85 >= v84 >> 1)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v52);
        }

        _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v60, type metadata accessor for Prompt.Attachment);
        v52[2] = v85 + 1;
        v57 = v52 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v85;
        v58 = &v219;
LABEL_8:
        v59 = *(v58 - 32);
        goto LABEL_9;
      }

      if (v64 == 5)
      {
        v72 = v202;
        v73 = v185(*v56);
        v202 = v72;
        if (v72)
        {

          goto LABEL_102;
        }

        v75 = v73;
        v76 = v74;

        v77 = v193;
        *v193 = v75;
        v77[1] = v76;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52[2] + 1, 1, v52);
        }

        v39 = v197;
        v79 = v52[2];
        v78 = v52[3];
        if (v79 >= v78 >> 1)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v52);
        }

        _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v60, type metadata accessor for Prompt.Attachment);
        v52[2] = v79 + 1;
        v57 = v52 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v79;
        v58 = &v218;
        goto LABEL_8;
      }

      if (v64 != 4)
      {
        _s15TokenGeneration6PromptV0aB4CoreE0C8FragmentOWOcTm_0(v60, v196, type metadata accessor for Prompt.AttachmentContent);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52[2] + 1, 1, v52);
        }

        v87 = v52[2];
        v86 = v52[3];
        if (v87 >= v86 >> 1)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v52);
        }

        _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v60, type metadata accessor for Prompt.Attachment);
        v52[2] = v87 + 1;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_1(v196, v52 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v87, type metadata accessor for Prompt.RenderedPromptFragment);
        v56 = v217;
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v217, type metadata accessor for Prompt.AttachmentContent);
        goto LABEL_10;
      }

      v65 = v56;
      v66 = v194;
      _s15TokenGeneration6PromptV10AttachmentVWObTm_1(v65, v194, type metadata accessor for Prompt.ResponseFormat);
      if ((v189 & 1) == 0)
      {

        type metadata accessor for GenerationError(0);
        v39 = v66;
        lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
        v153 = swift_allocError();
        *v154 = 0xD00000000000004ELL;
        v154[1] = 0x80000001A8FDA580;
        swift_storeEnumTagMultiPayload();
        v202 = v153;
        swift_willThrow();
        v155 = v66;
        goto LABEL_101;
      }

      v67 = v202;
      v68 = specialized ResponseFormatV6.render(format:)(v66);
      v202 = v67;
      if (v67)
      {

        v155 = v66;
LABEL_101:
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v155, type metadata accessor for Prompt.ResponseFormat);
LABEL_102:
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v60, type metadata accessor for Prompt.Attachment);

LABEL_103:

        return v39;
      }

      *v53 = v68;
      v53[1] = v69;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52[2] + 1, 1, v52);
      }

      v71 = v52[2];
      v70 = v52[3];
      if (v71 >= v70 >> 1)
      {
        v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v52);
      }

      _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v194, type metadata accessor for Prompt.ResponseFormat);
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v60, type metadata accessor for Prompt.Attachment);
      v52[2] = v71 + 1;
      v57 = v52 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v71;
      v59 = v53;
LABEL_9:
      _s15TokenGeneration6PromptV10AttachmentVWObTm_1(v59, v57, type metadata accessor for Prompt.RenderedPromptFragment);
      v56 = v217;
LABEL_10:
      ++v55;
      v45 = v199;
      v49 = v206;
      if (v198 == v55)
      {
        goto LABEL_104;
      }
    }

    if (!EnumCaseMultiPayload)
    {
      v88 = v203[1];
      v190 = *v203;
      v213 = v190;
      v214 = v88;
      v89 = 1 << *(v51 + 32);
      if (v89 < 64)
      {
        v90 = ~(-1 << v89);
      }

      else
      {
        v90 = -1;
      }

      v91 = v90 & *(v51 + 64);

      swift_beginAccess();
      v92 = 0;
      v93 = (v89 + 63) >> 6;
      v94 = v175;
      for (i = v93; ; v93 = i)
      {
        v95 = v191;
        if (!v91)
        {
          break;
        }

        v39 = v92;
LABEL_50:
        v96 = (v39 << 10) | (16 * __clz(__rbit64(v91)));
        v97 = *(v51 + 48) + v96;
        v98 = *v97;
        v99 = *(v97 + 8);
        v100 = (*(v51 + 56) + v96);
        v101 = *v100;
        v102 = v100[1];
        v211 = v190;
        v212 = v88;
        v173 = v98;
        v209 = v98;
        v210 = v99;
        v174 = v101;
        v207 = v101;
        v208 = v102;
        lazy protocol witness table accessor for type String and conformance String();

        v103 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v105 = v104;
        v190 = v103;
        v213 = v103;
        v214 = v104;

        if (one-time initialization token for tokenization != -1)
        {
          swift_once();
        }

        v91 &= v91 - 1;
        v106 = type metadata accessor for Logger();
        __swift_project_value_buffer(v106, static Log.tokenization);

        v107 = Logger.logObject.getter();
        v108 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v168 = v108;
          v110 = v109;
          v169 = swift_slowAlloc();
          v211 = v169;
          *v110 = v167;
          v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v173, v99, &v211);
          v173 = v107;
          v112 = v105;
          v113 = v111;

          *(v110 + 4) = v113;
          *(v110 + 12) = 2085;
          v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v174, v102, &v211);

          *(v110 + 14) = v114;
          *(v110 + 22) = 2085;

          v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v190, v112, &v211);

          *(v110 + 24) = v115;
          v116 = v173;
          _os_log_impl(&dword_1A8E85000, v173, v168, "Text after substituting %{sensitive}s with %{sensitive}s: %{sensitive}s", v110, 0x20u);
          v117 = v169;
          swift_arrayDestroy();
          MEMORY[0x1AC57DBF0](v117, -1, -1);
          MEMORY[0x1AC57DBF0](v110, -1, -1);

          v92 = v39;
          v88 = v112;
        }

        else
        {

          v92 = v39;
          v88 = v105;
        }

        v51 = v192;
        v94 = v175;
      }

      while (1)
      {
        v39 = (v92 + 1);
        if (__OFADD__(v92, 1))
        {
          goto LABEL_112;
        }

        if (v39 >= v93)
        {
          break;
        }

        v91 = *(v94 + 8 * v39);
        ++v92;
        if (v91)
        {
          goto LABEL_50;
        }
      }

      v54 = v188;
      v53 = v187;
      if (v170)
      {
        v123 = v52[2];
        if (v123)
        {
          v174 = v88;
          v124 = (*(v205 + 80) + 32) & ~*(v205 + 80);
          v125 = *(v205 + 72) * (v123 - 1);
          _s15TokenGeneration6PromptV0aB4CoreE0C8FragmentOWOcTm_0(v52 + v124 + v125, v95, type metadata accessor for Prompt.RenderedPromptFragment);
          if (!swift_getEnumCaseMultiPayload())
          {
            v143 = *v95;
            v144 = v95[1];
            v211 = v143;
            v212 = v144;

            MEMORY[0x1AC57C120](v190, v174);

            v145 = v212;
            v146 = v176;
            *v176 = v211;
            v146[1] = v145;
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v52 = specialized _ArrayBuffer._consumeAndCreateNew()(v52);
            }

            v56 = v217;
            result = v176;
            if (v123 > v52[2])
            {
              __break(1u);
              return result;
            }

            outlined assign with take of Prompt.RenderedPromptFragment(v176, v52 + v124 + v125);
            v51 = v192;
            v39 = v197;
            v54 = v188;
            goto LABEL_71;
          }

          _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v95, type metadata accessor for Prompt.RenderedPromptFragment);
          v51 = v192;
          v54 = v188;
          v88 = v174;
        }
      }

      v126 = v184;
      *v184 = v190;
      v126[1] = v88;
      swift_storeEnumTagMultiPayload();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52[2] + 1, 1, v52);
      }

      v39 = v197;
      v128 = v52[2];
      v127 = v52[3];
      v129 = v184;
      if (v128 >= v127 >> 1)
      {
        v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v127 > 1), v128 + 1, 1, v52);
        v129 = v184;
      }

      v52[2] = v128 + 1;
      _s15TokenGeneration6PromptV10AttachmentVWObTm_1(v129, v52 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v128, type metadata accessor for Prompt.RenderedPromptFragment);
      v56 = v217;
LABEL_71:

      if (v166 == v55)
      {
        goto LABEL_104;
      }

      v170 = 0;
      goto LABEL_86;
    }

    v118 = v172;
    _s15TokenGeneration6PromptV10AttachmentVWObTm_1(v203, v172, type metadata accessor for Prompt.Delimiter);
    v119 = *v118;
    v120 = v118[1];
    v54 = v60;
    if (one-time initialization token for promptModule != -1)
    {
      swift_once();
    }

    v121 = type metadata accessor for Prompt.SpecialToken(0);
    v122 = __swift_project_value_buffer(v121, static Prompt.SpecialToken.promptModule);
    if (v119 == *v122 && v120 == v122[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v148 = v165;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v148 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v148 + 2) + 1, 1, v148);
      }

      v150 = *(v148 + 2);
      v149 = *(v148 + 3);
      v151 = v148;
      if (v150 >= v149 >> 1)
      {
        v151 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v149 > 1), v150 + 1, 1, v148);
      }

      v48 = v55 + 1;
      *(v151 + 2) = v150 + 1;
      v152 = &v151[16 * v150];
      v39 = v151;
      *(v152 + 4) = v52;
      v152[40] = 0;
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v172, type metadata accessor for Prompt.Delimiter);
      v45 = v199;
      v49 = v206;
      v52 = MEMORY[0x1E69E7CC0];
      if (v166 == v55)
      {

        goto LABEL_105;
      }

      goto LABEL_6;
    }

    if (*(v172 + *(v121 + 28)))
    {
      _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v172, type metadata accessor for Prompt.Delimiter);
      v39 = v197;
      if (v166 == v55)
      {
        goto LABEL_104;
      }

      v170 = 1;
      v56 = v217;
      goto LABEL_86;
    }

    v213 = v164;
    v214 = v163;
    v215 = v162;
    v216 = v161;
    v130 = v202;
    v131 = Prompt.renderSpecialToken(delimiter:tokenTable:localizationOverrideMap:)(v172, v182, v183);
    v39 = v197;
    v202 = v130;
    if (v130)
    {
      goto LABEL_113;
    }

    v133 = v131;
    v134 = v132;
    v135 = v51;
    if (String.count.getter() <= 0)
    {
      v137 = v181;
      v138 = v204;
      (*v160)(v181, 1, 1, v204);
    }

    else
    {
      v136 = v177;
      _s15TokenGeneration6PromptV0aB4CoreE0C8FragmentOWOcTm_0(v172, &v177[*(v178 + 20)], type metadata accessor for Prompt.SpecialToken);
      *v136 = v133;
      v136[1] = v134;
      v137 = v181;
      _s15TokenGeneration6PromptV10AttachmentVWObTm_1(v136, v181, type metadata accessor for Prompt.RenderedSpecialToken);
      v138 = v204;
      swift_storeEnumTagMultiPayload();
      (*v160)(v137, 0, 1, v138);
    }

    v139 = (*v159)(v137, 1, v138);
    v56 = v217;
    if (v139 != 1)
    {
      break;
    }

    _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v172, type metadata accessor for Prompt.Delimiter);
    outlined destroy of Prompt.RenderedPromptFragment?(v137);
    if (v166 == v55)
    {
      goto LABEL_104;
    }

    v51 = v135;
    v170 = 0;
LABEL_86:
    v45 = v199;
    ++v55;
    v49 = v206;
  }

  v140 = v179;
  _s15TokenGeneration6PromptV10AttachmentVWObTm_1(v137, v179, type metadata accessor for Prompt.RenderedPromptFragment);
  _s15TokenGeneration6PromptV0aB4CoreE0C8FragmentOWOcTm_0(v140, v180, type metadata accessor for Prompt.RenderedPromptFragment);
  v51 = v135;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52[2] + 1, 1, v52);
  }

  v142 = v52[2];
  v141 = v52[3];
  if (v142 >= v141 >> 1)
  {
    v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v141 > 1), v142 + 1, 1, v52);
  }

  _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v179, type metadata accessor for Prompt.RenderedPromptFragment);
  v52[2] = v142 + 1;
  _s15TokenGeneration6PromptV10AttachmentVWObTm_1(v180, v52 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v142, type metadata accessor for Prompt.RenderedPromptFragment);
  _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(v172, type metadata accessor for Prompt.Delimiter);
  if (v166 != v55)
  {
    v170 = 0;
    v56 = v217;
    goto LABEL_86;
  }

LABEL_104:

  v39 = v165;
LABEL_105:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 16) + 1, 1, v39);
  }

  v157 = *(v39 + 16);
  v156 = *(v39 + 24);
  if (v157 >= v156 >> 1)
  {
    v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v156 > 1), v157 + 1, 1, v39);
  }

  *(v39 + 16) = v157 + 1;
  v158 = (v39 + 16 * v157);
  *(v158 + 4) = v52;
  v158[40] = 1;
  return v39;
}

uint64_t specialized static PromptModule.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1[1])
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (a2[1])
  {
    return 0;
  }

  v5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV0bC4CoreE08RenderedD8FragmentO_Tt1g5(v4, v2);

  return v5 & 1;
}

uint64_t _s15TokenGeneration6PromptV10AttachmentVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of Prompt.RenderedPromptFragment?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOSgMd, &_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s15TokenGeneration6PromptV0aB4CoreE0C8FragmentOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s15TokenGeneration6PromptV10AttachmentVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for PromptModule(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PromptModule(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void specialized MutableCollection<>.sort(by:)(void *a1)
{
  v2 = *(type metadata accessor for Prompt.Attachment(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

uint64_t Prompt.Turn.toolDefinitions.getter()
{
  type metadata accessor for Prompt.Turn(0);
}

uint64_t Prompt.Turn.toolDefinitions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Prompt.Turn(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t outlined assign with take of Prompt.ResponseFormat?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t Prompt.Turn.content.getter()
{
  v1 = *(v0 + *(type metadata accessor for Prompt.Turn(0) + 32));
  v2 = *(v1 + 16);
  if (v2)
  {
    v12 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v1 + 40;
    do
    {
      if (*(v3 + 40))
      {
        v4 = 4;
      }

      else
      {
        v4 = 0;
      }

      if ((*(v3 + 8) >> 60) & 3 | v4)
      {
        v5 = 0;
        v6 = 0xE000000000000000;
      }

      else
      {
        v5 = *(v3 - 8);
        v6 = *v3;
      }

      v8 = *(v12 + 16);
      v7 = *(v12 + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      *(v12 + 16) = v8 + 1;
      v9 = v12 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v3 += 56;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v10 = BidirectionalCollection<>.joined(separator:)();

  return v10;
}

uint64_t key path setter for Prompt.Turn.content : Prompt.Turn(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A8FC9400;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  v6 = type metadata accessor for Prompt.Turn(0);
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0;
  v7 = *(v6 + 32);

  *(a2 + v7) = v5;
  return result;
}

uint64_t Prompt.Turn.content.setter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A8FC9400;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v6 = type metadata accessor for Prompt.Turn(0);
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0;
  v7 = *(v6 + 32);

  *(v2 + v7) = v5;
  return result;
}

uint64_t (*Prompt.Turn.content.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = Prompt.Turn.content.getter();
  a1[1] = v3;
  return Prompt.Turn.content.modify;
}

uint64_t Prompt.Turn.content.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A8FC9400;
  *(v6 + 32) = v5;
  *(v6 + 40) = v3;
  v7 = type metadata accessor for Prompt.Turn(0);
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0;
  v8 = *(v7 + 32);
  if (a2)
  {

    *(v4 + v8) = v6;
  }

  else
  {

    *(v4 + v8) = v6;
  }

  return result;
}

uint64_t Prompt.Turn.segments.getter()
{
  type metadata accessor for Prompt.Turn(0);
}

uint64_t Prompt.Turn.segments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Prompt.Turn(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Prompt.Turn.toolCalls.getter()
{
  type metadata accessor for Prompt.Turn(0);
}

uint64_t Prompt.Turn.toolCalls.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Prompt.Turn(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

void Prompt.Turn.toolResult.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Prompt.Turn(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  outlined copy of Prompt.ToolCallResult?(v4, v5, v6, v7, v8);
}

__n128 Prompt.Turn.toolResult.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = (v1 + *(type metadata accessor for Prompt.Turn(0) + 44));
  outlined consume of Prompt.ToolCallResult?(*v4, v4[1], v4[2], v4[3], v4[4]);
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v4[4] = v3;
  return result;
}

uint64_t static Prompt.Turn.user(segments:locale:responseFormat:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v28 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  outlined init with copy of (String, Any)(a2, &v27 - v12, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of (String, Any)(a3, v10, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v14 = type metadata accessor for Prompt.Turn(0);
  v15 = v14[5];
  v27 = v15;
  v16 = type metadata accessor for Prompt.ResponseFormat(0);
  (*(*(v16 - 8) + 56))(&a4[v15], 1, 1, v16);
  v17 = v14[7];
  v18 = type metadata accessor for Locale();
  (*(*(v18 - 8) + 56))(&a4[v17], 1, 1, v18);
  v19 = &a4[v14[11]];
  *(v19 + 4) = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *a4 = 2;
  *&a4[v14[8]] = a1;
  v20 = MEMORY[0x1E69E7CC0];
  *&a4[v14[6]] = MEMORY[0x1E69E7CC0];
  *&a4[v14[10]] = v20;
  v22 = *v19;
  v21 = *(v19 + 1);
  v23 = *(v19 + 2);
  v24 = *(v19 + 3);
  v25 = *(v19 + 4);

  outlined consume of Prompt.ToolCallResult?(v22, v21, v23, v24, v25);
  *(v19 + 4) = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  a4[v14[9]] = 0;
  outlined assign with take of Prompt.ResponseFormat?(v13, &a4[v17], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return outlined assign with take of Prompt.ResponseFormat?(v28, &a4[v27], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
}

uint64_t static Prompt.Turn.user(segments:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v28 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  outlined init with copy of (String, Any)(a2, &v27 - v12, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v14 = type metadata accessor for Prompt.ResponseFormat(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v10, 1, 1, v14);
  v16 = type metadata accessor for Prompt.Turn(0);
  v27 = v16[5];
  v15(&a4[v27], 1, 1, v14);
  v17 = v16[7];
  v18 = type metadata accessor for Locale();
  (*(*(v18 - 8) + 56))(&a4[v17], 1, 1, v18);
  v19 = &a4[v16[11]];
  *(v19 + 4) = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *a4 = a3;
  *&a4[v16[8]] = a1;
  v20 = MEMORY[0x1E69E7CC0];
  *&a4[v16[6]] = MEMORY[0x1E69E7CC0];
  *&a4[v16[10]] = v20;
  v21 = *v19;
  v22 = *(v19 + 1);
  v23 = *(v19 + 2);
  v24 = *(v19 + 3);
  v25 = *(v19 + 4);

  outlined consume of Prompt.ToolCallResult?(v21, v22, v23, v24, v25);
  *(v19 + 4) = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  a4[v16[9]] = 0;
  outlined assign with take of Prompt.ResponseFormat?(v13, &a4[v17], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return outlined assign with take of Prompt.ResponseFormat?(v28, &a4[v27], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
}

uint64_t static Prompt.Turn.instructions(segments:toolDefinitions:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v27 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v28 = &v25 - v12;
  outlined init with copy of (String, Any)(a3, &v25 - v12, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v13 = type metadata accessor for Prompt.ResponseFormat(0);
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 1, 1, v13);
  v15 = type metadata accessor for Prompt.Turn(0);
  v26 = v15[5];
  v14(&a4[v26], 1, 1, v13);
  v16 = v15[7];
  v17 = type metadata accessor for Locale();
  (*(*(v17 - 8) + 56))(&a4[v16], 1, 1, v17);
  v18 = &a4[v15[11]];
  *(v18 + 4) = 0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *a4 = 0;
  *&a4[v15[8]] = a1;
  *&a4[v15[6]] = a2;
  *&a4[v15[10]] = MEMORY[0x1E69E7CC0];
  v19 = *v18;
  v20 = *(v18 + 1);
  v22 = *(v18 + 2);
  v21 = *(v18 + 3);
  v23 = *(v18 + 4);

  outlined consume of Prompt.ToolCallResult?(v19, v20, v22, v21, v23);
  *(v18 + 4) = 0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  a4[v15[9]] = 0;
  outlined assign with take of Prompt.ResponseFormat?(v28, &a4[v16], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return outlined assign with take of Prompt.ResponseFormat?(v27, &a4[v26], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
}

uint64_t static Prompt.Turn.user(segments:)(uint64_t a1, void (*a2)(uint64_t, char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for Locale();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  a2(a1, v6);
  return outlined destroy of [Regex2BNF.CharacterPredicate](v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
}

uint64_t static Prompt.Turn.toolCalls(_:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v26 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  outlined init with copy of (String, Any)(a2, &v25 - v10, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v12 = type metadata accessor for Prompt.ResponseFormat(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v8, 1, 1, v12);
  v14 = type metadata accessor for Prompt.Turn(0);
  v25 = v14[5];
  v13(&a3[v25], 1, 1, v12);
  v15 = v14[7];
  v16 = type metadata accessor for Locale();
  (*(*(v16 - 8) + 56))(&a3[v15], 1, 1, v16);
  v17 = &a3[v14[11]];
  *(v17 + 4) = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *a3 = 1;
  v18 = MEMORY[0x1E69E7CC0];
  *&a3[v14[8]] = MEMORY[0x1E69E7CC0];
  *&a3[v14[6]] = v18;
  *&a3[v14[10]] = a1;
  v20 = *v17;
  v19 = *(v17 + 1);
  v21 = *(v17 + 2);
  v22 = *(v17 + 3);
  v23 = *(v17 + 4);

  outlined consume of Prompt.ToolCallResult?(v20, v19, v21, v22, v23);
  *(v17 + 4) = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  a3[v14[9]] = 0;
  outlined assign with take of Prompt.ResponseFormat?(v11, &a3[v15], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return outlined assign with take of Prompt.ResponseFormat?(v26, &a3[v25], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
}

uint64_t static Prompt.Turn.toolCallResult(_:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v34 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[3];
  v39 = a1[2];
  v40 = v13;
  v35 = v15;
  v36 = a1[4];
  v16 = type metadata accessor for Locale();
  v17 = *(*(v16 - 8) + 56);
  v38 = v12;
  v17(v12, 1, 1, v16);
  outlined init with copy of (String, Any)(v12, v9, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v18 = type metadata accessor for Prompt.ResponseFormat(0);
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v20 = type metadata accessor for Prompt.Turn(0);
  v33 = v20[5];
  v19(&a2[v33], 1, 1, v18);
  v32 = v20[7];
  v17(&a2[v32], 1, 1, v16);
  v21 = &a2[v20[11]];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *a2 = 3;
  v22 = MEMORY[0x1E69E7CC0];
  *&a2[v20[8]] = MEMORY[0x1E69E7CC0];
  *&a2[v20[6]] = v22;
  *&a2[v20[10]] = v22;
  v23 = *v21;
  v24 = *(v21 + 1);
  v25 = *(v21 + 2);
  v31 = *(v21 + 3);
  v26 = *(v21 + 4);

  v27 = v35;

  v28 = v36;

  outlined consume of Prompt.ToolCallResult?(v23, v24, v25, v31, v26);
  v29 = v39;
  *v21 = v40;
  *(v21 + 1) = v14;
  *(v21 + 2) = v29;
  *(v21 + 3) = v27;
  *(v21 + 4) = v28;
  a2[v20[9]] = 0;
  outlined assign with take of Prompt.ResponseFormat?(v37, &a2[v32], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined assign with take of Prompt.ResponseFormat?(v34, &a2[v33], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  return outlined destroy of [Regex2BNF.CharacterPredicate](v38, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
}

uint64_t static Prompt.Turn.toolCallResult(_:locale:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  v37 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - v10;
  v12 = *a1;
  v13 = a1[1];
  v39 = v11;
  v40 = v12;
  v14 = a1[3];
  v38 = a1[2];
  v15 = a1[4];
  v35 = v14;
  v36 = v15;
  outlined init with copy of (String, Any)(a2, v11, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v16 = type metadata accessor for Prompt.ResponseFormat(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v8, 1, 1, v16);
  v18 = type metadata accessor for Prompt.Turn(0);
  v34 = v18[5];
  v17(&a3[v34], 1, 1, v16);
  v19 = v18[7];
  v33 = v19;
  v20 = type metadata accessor for Locale();
  (*(*(v20 - 8) + 56))(&a3[v19], 1, 1, v20);
  v21 = &a3[v18[11]];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *a3 = 3;
  v22 = MEMORY[0x1E69E7CC0];
  *&a3[v18[8]] = MEMORY[0x1E69E7CC0];
  *&a3[v18[6]] = v22;
  *&a3[v18[10]] = v22;
  v23 = *(v21 + 1);
  v32 = *v21;
  v25 = *(v21 + 2);
  v24 = *(v21 + 3);
  v26 = *(v21 + 4);

  v27 = v35;

  v28 = v36;

  outlined consume of Prompt.ToolCallResult?(v32, v23, v25, v24, v26);
  v29 = v39;
  *v21 = v40;
  *(v21 + 1) = v13;
  *(v21 + 2) = v38;
  *(v21 + 3) = v27;
  *(v21 + 4) = v28;
  a3[v18[9]] = 0;
  outlined assign with take of Prompt.ResponseFormat?(v29, &a3[v33], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return outlined assign with take of Prompt.ResponseFormat?(v37, &a3[v34], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
}

double Prompt.Turn.init(role:segments:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for Prompt.Turn(0);
  v7 = v6[5];
  v8 = type metadata accessor for Prompt.ResponseFormat(0);
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  v9 = v6[7];
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 56))(&a3[v9], 1, 1, v10);
  v11 = &a3[v6[11]];
  v11[4] = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *a3 = v5;
  *&a3[v6[8]] = a2;
  a3[v6[9]] = 0;
  v12 = MEMORY[0x1E69E7CC0];
  *&a3[v6[6]] = MEMORY[0x1E69E7CC0];
  *&a3[v6[10]] = v12;
  outlined consume of Prompt.ToolCallResult?(*v11, v11[1], v11[2], v11[3], v11[4]);
  v11[4] = 0;
  result = 0.0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  return result;
}

double Prompt.Turn.init(role:content:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for Prompt.Turn(0);
  v9 = v8[5];
  v10 = type metadata accessor for Prompt.ResponseFormat(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  v11 = v8[7];
  v12 = type metadata accessor for Locale();
  (*(*(v12 - 8) + 56))(&a4[v11], 1, 1, v12);
  v13 = &a4[v8[11]];
  v13[4] = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *a4 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A8FC9400;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0;
  *&a4[v8[8]] = v14;
  a4[v8[9]] = 0;
  v15 = MEMORY[0x1E69E7CC0];
  *&a4[v8[6]] = MEMORY[0x1E69E7CC0];
  *&a4[v8[10]] = v15;
  outlined consume of Prompt.ToolCallResult?(*v13, v13[1], v13[2], v13[3], v13[4]);
  v13[4] = 0;
  result = 0.0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  return result;
}

uint64_t one-time initialization function for defaultSystemInstructions()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v22 - v1;
  v23 = &v22 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for Prompt.Turn(0);
  __swift_allocate_value_buffer(v6, static Prompt.Turn.defaultSystemInstructions);
  v7 = __swift_project_value_buffer(v6, static Prompt.Turn.defaultSystemInstructions);
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 56);
  v9(v5, 1, 1, v8);
  v10 = type metadata accessor for Prompt.ResponseFormat(0);
  v11 = *(*(v10 - 8) + 56);
  v11(v2, 1, 1, v10);
  v12 = v6[5];
  v11(&v7[v12], 1, 1, v10);
  v13 = v6[7];
  v9(&v7[v13], 1, 1, v8);
  v14 = &v7[v6[11]];
  v14[4] = 0;
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *v7 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  *&v7[v6[8]] = MEMORY[0x1E69E7CC0];
  *&v7[v6[6]] = v15;
  *&v7[v6[10]] = v15;
  v16 = *v14;
  v17 = v14[1];
  v18 = v14[2];
  v19 = v14[3];
  v20 = v14[4];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[4] = 0;
  outlined consume of Prompt.ToolCallResult?(v16, v17, v18, v19, v20);
  v7[v6[9]] = 1;
  outlined assign with take of Prompt.ResponseFormat?(v5, &v7[v13], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return outlined assign with take of Prompt.ResponseFormat?(v23, &v7[v12], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
}

uint64_t static Prompt.Turn.defaultSystemInstructions.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultSystemInstructions != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Prompt.Turn(0);
  v3 = __swift_project_value_buffer(v2, static Prompt.Turn.defaultSystemInstructions);
  return outlined init with copy of Prompt.Turn(v3, a1, type metadata accessor for Prompt.Turn);
}

uint64_t static Prompt.Turn.defaultSystemInstructions(toolDefinitions:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v26 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  outlined init with copy of (String, Any)(a2, &v25 - v10, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v12 = type metadata accessor for Prompt.ResponseFormat(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v8, 1, 1, v12);
  v14 = type metadata accessor for Prompt.Turn(0);
  v25 = v14[5];
  v13(&a3[v25], 1, 1, v12);
  v15 = v14[7];
  v16 = type metadata accessor for Locale();
  (*(*(v16 - 8) + 56))(&a3[v15], 1, 1, v16);
  v17 = &a3[v14[11]];
  *(v17 + 4) = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *a3 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *&a3[v14[8]] = MEMORY[0x1E69E7CC0];
  *&a3[v14[6]] = a1;
  *&a3[v14[10]] = v18;
  v20 = *v17;
  v19 = *(v17 + 1);
  v21 = *(v17 + 2);
  v22 = *(v17 + 3);
  v23 = *(v17 + 4);

  outlined consume of Prompt.ToolCallResult?(v20, v19, v21, v22, v23);
  *(v17 + 4) = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  a3[v14[9]] = 1;
  outlined assign with take of Prompt.ResponseFormat?(v11, &a3[v15], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return outlined assign with take of Prompt.ResponseFormat?(v26, &a3[v25], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
}

uint64_t static Prompt.Turn.defaultSystemInstructions(toolDefinitions:segments:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v27 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v28 = &v25 - v12;
  outlined init with copy of (String, Any)(a3, &v25 - v12, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v13 = type metadata accessor for Prompt.ResponseFormat(0);
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 1, 1, v13);
  v15 = type metadata accessor for Prompt.Turn(0);
  v26 = v15[5];
  v14(&a4[v26], 1, 1, v13);
  v16 = v15[7];
  v17 = type metadata accessor for Locale();
  (*(*(v17 - 8) + 56))(&a4[v16], 1, 1, v17);
  v18 = &a4[v15[11]];
  *(v18 + 4) = 0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *a4 = 0;
  *&a4[v15[8]] = a2;
  *&a4[v15[6]] = a1;
  *&a4[v15[10]] = MEMORY[0x1E69E7CC0];
  v19 = *v18;
  v20 = *(v18 + 1);
  v22 = *(v18 + 2);
  v21 = *(v18 + 3);
  v23 = *(v18 + 4);

  outlined consume of Prompt.ToolCallResult?(v19, v20, v22, v21, v23);
  *(v18 + 4) = 0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  a4[v15[9]] = 1;
  outlined assign with take of Prompt.ResponseFormat?(v28, &a4[v16], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return outlined assign with take of Prompt.ResponseFormat?(v27, &a4[v26], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
}

Swift::Int Prompt.Turn.Role.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  return Hasher._finalize()();
}

uint64_t Prompt.Turn.Segment.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = *(v2 + 8);
  if (*(v2 + 48))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(v2 + 16) >> 60) & 3 | v6;
  if (v7 <= 1)
  {
    if (!v7)
    {
      MEMORY[0x1AC57CB80](0);
      goto LABEL_10;
    }

    MEMORY[0x1AC57CB80](1);
    MEMORY[0x1AC57CB80](v5 & 1);

    return Data.hash(into:)();
  }

  else
  {
    if (v7 == 2)
    {
      MEMORY[0x1AC57CB80](2);
      return NSObject.hash(into:)();
    }

    if (v7 == 3)
    {
      v8 = *(v2 + 24);
      MEMORY[0x1AC57CB80](3);
      MEMORY[0x1AC57CB80](v5 & 1);
      Data.hash(into:)();
      MEMORY[0x1AC57CB80](v8);
LABEL_10:

      return String.hash(into:)();
    }

    MEMORY[0x1AC57CB80](4);
    specialized Array<A>.hash(into:)(a1, v5);
    result = MEMORY[0x1AC57CB80](*(v4 + 16));
    v10 = *(v4 + 16);
    if (v10)
    {
      v11 = (v4 + 32);
      do
      {
        v12 = *v11++;
        result = MEMORY[0x1AC57CB80](v12);
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

Swift::Int Prompt.Turn.Segment.hashValue.getter()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  Hasher.init(_seed:)();
  Prompt.Turn.Segment.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.Turn.Segment()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  Hasher.init(_seed:)();
  Prompt.Turn.Segment.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.Turn.Segment(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v1[2];
  v9 = v2;
  Hasher.init(_seed:)();
  Prompt.Turn.Segment.hash(into:)(v5);
  return Hasher._finalize()();
}

void Prompt.Turn.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for Locale();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v39 = &v36 - v7;
  v8 = type metadata accessor for Tool();
  v38 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Prompt.ResponseFormat(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v36 - v17;
  MEMORY[0x1AC57CB80](*v1, v16);
  v42 = type metadata accessor for Prompt.Turn(0);
  v43 = v1;
  outlined init with copy of (String, Any)(&v1[v42[5]], v18, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v19 = (*(v12 + 48))(v18, 1, v11);
  v37 = v5;
  if (v19 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    outlined init with take of Prompt.ResponseFormat(v18, v14, type metadata accessor for Prompt.ResponseFormat);
    Hasher._combine(_:)(1u);
    Prompt.ResponseFormat.Kind.hash(into:)(a1);
    outlined destroy of Prompt.ResponseFormat(v14, type metadata accessor for Prompt.ResponseFormat);
  }

  v20 = *&v43[v42[6]];
  MEMORY[0x1AC57CB80](*(v20 + 16));
  v21 = *(v20 + 16);
  v22 = a1;
  if (v21)
  {
    v23 = *(v38 + 16);
    v24 = v20 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v25 = *(v38 + 72);
    v26 = (v38 + 8);
    do
    {
      v23(v10, v24, v8);
      lazy protocol witness table accessor for type Tool and conformance Tool(&lazy protocol witness table cache variable for type Tool and conformance Tool, MEMORY[0x1E69A0DF0], MEMORY[0x1E69A0DF8]);
      dispatch thunk of Hashable.hash(into:)();
      (*v26)(v10, v8);
      v24 += v25;
      --v21;
    }

    while (v21);
  }

  v27 = v39;
  outlined init with copy of (String, Any)(&v43[v42[7]], v39, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v29 = v40;
  v28 = v41;
  if ((*(v40 + 48))(v27, 1, v41) == 1)
  {
    v30 = v22;
    Hasher._combine(_:)(0);
  }

  else
  {
    v31 = v37;
    (*(v29 + 32))(v37, v27, v28);
    v30 = v22;
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Tool and conformance Tool(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v29 + 8))(v31, v28);
  }

  v33 = v42;
  v32 = v43;
  specialized Array<A>.hash(into:)(v30, *&v43[v42[8]]);
  Hasher._combine(_:)(v32[v33[9]]);
  specialized Array<A>.hash(into:)(v30, *&v32[v33[10]]);
  v34 = &v32[v33[11]];
  if (*(v34 + 1))
  {
    v35 = *(v34 + 4);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    String.hash(into:)();
    specialized Array<A>.hash(into:)(v30, v35);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int Prompt.Turn.hashValue.getter()
{
  Hasher.init(_seed:)();
  Prompt.Turn.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.Turn()
{
  Hasher.init(_seed:)();
  Prompt.Turn.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.Turn(uint64_t a1)
{
  Hasher.init(_seed:)();
  Prompt.Turn.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t Prompt.ToolCall.id.getter()
{
  v1 = *v0;

  return v1;
}

{
  return MEMORY[0x1EEE30158]();
}

uint64_t Prompt.ToolCall.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Prompt.ToolCall.kind.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 Prompt.ToolCall.kind.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  v1[1] = v5;
  v1[2].n128_u64[0] = v2;
  v1[2].n128_u64[1] = v3;
  return result;
}

uint64_t Prompt.ToolCall._userInfo.getter()
{
  v1 = *(v0 + 48);
  outlined copy of Data?(v1, *(v0 + 56));
  return v1;
}

uint64_t Prompt.ToolCall._userInfo.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

__n128 Prompt.ToolCall.init(id:kind:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  result = *a3;
  v5 = a3[1].n128_u64[0];
  v6 = a3[1].n128_u64[1];
  *(a4 + 48) = xmmword_1A8FD1F40;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = result;
  *(a4 + 32) = v5;
  *(a4 + 40) = v6;
  return result;
}

uint64_t static Prompt.ToolCall.Function.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t Prompt.ToolCall.Kind.hash(into:)(uint64_t a1)
{
  MEMORY[0x1AC57CB80](0);
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int Prompt.ToolCall.Kind.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](0);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.ToolCall.Kind()
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](0);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Prompt.ToolCall.Kind(uint64_t a1)
{
  MEMORY[0x1AC57CB80](0);
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.ToolCall.Kind(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](0);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Prompt.ToolCall.Function.name.getter()
{
  v1 = *v0;

  return v1;
}

{
  return MEMORY[0x1EEE30178]();
}

uint64_t Prompt.ToolCall.Function.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Prompt.ToolCall.Function.arguments.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

{
  return MEMORY[0x1EEE30180]();
}

uint64_t Prompt.ToolCall.Function.arguments.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Prompt.ToolCall.Function.init(name:arguments:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t Prompt.ToolCall.Function.hash(into:)(uint64_t a1)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int Prompt.ToolCall.Function.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void Prompt.ToolCall.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 56);
  String.hash(into:)();
  MEMORY[0x1AC57CB80](0);
  String.hash(into:)();
  String.hash(into:)();
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int Prompt.ToolCall.hashValue.getter()
{
  v1 = *(v0 + 56);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1AC57CB80](0);
  String.hash(into:)();
  String.hash(into:)();
  if (v1 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Prompt.ToolCall(uint64_t a1)
{
  v2 = *(v1 + 56);
  String.hash(into:)();
  MEMORY[0x1AC57CB80](0);
  String.hash(into:)();
  String.hash(into:)();
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.ToolCall(uint64_t a1)
{
  v2 = *(v1 + 56);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1AC57CB80](0);
  String.hash(into:)();
  String.hash(into:)();
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t Prompt.ToolCallResult.toolCallID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Prompt.ToolCallResult.toolCallID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Prompt.ToolCallResult.content.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Prompt.ToolCallResult.content.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Prompt.ToolCallResult.segments.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Prompt.ToolCallResult.init(toolCallID:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A8FC9400;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0;
  a5[4] = v8;
}

uint64_t Prompt.ToolCallResult.init(toolCallID:segments:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[2] = 0;
  a4[3] = 0xE000000000000000;
  *a4 = result;
  a4[1] = a2;
  a4[4] = a3;
  return result;
}

uint64_t static Prompt.ToolCallResult.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV4TurnV7SegmentO_Tt1g5(v3, v7);
}

void Prompt.ToolCallResult.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  String.hash(into:)();
  String.hash(into:)();

  specialized Array<A>.hash(into:)(a1, v3);
}

Swift::Int Prompt.ToolCallResult.hashValue.getter()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Prompt.ToolCallResult()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Prompt.ToolCallResult(uint64_t a1)
{
  v3 = *(v1 + 32);
  String.hash(into:)();
  String.hash(into:)();

  specialized Array<A>.hash(into:)(a1, v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Prompt.ToolCallResult(uint64_t a1)
{
  v2 = *(v1 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Prompt.ToolCallResult(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV4TurnV7SegmentO_Tt1g5(v3, v7);
}

uint64_t static Prompt.transcript(turns:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v214 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v213 - v4;
  v227 = type metadata accessor for Prompt.ResponseFormat(0);
  v271 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227);
  v216 = &v213 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Prompt.Attachment(0);
  v262 = *(v7 - 8);
  v263 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v256 = &v213 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v213 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v255 = &v213 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v213 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v254 = &v213 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v260 = &v213 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v253 = &v213 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v213 - v24;
  v26 = type metadata accessor for Locale();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v247 = &v213 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v29);
  v265 = &v213 - v30;
  v272 = type metadata accessor for Prompt.SpecialToken(0);
  v230 = *(v272 - 1);
  MEMORY[0x1EEE9AC00](v272);
  v231 = &v213 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v218 = &v213 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v217 = (&v213 - v35);
  MEMORY[0x1EEE9AC00](v36);
  v229 = &v213 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v266 = &v213 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v228 = &v213 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v273 = (&v213 - v43);
  v264 = type metadata accessor for Prompt.AttachmentContent(0);
  MEMORY[0x1EEE9AC00](v264);
  v233 = (&v213 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v248 = type metadata accessor for Prompt.Turn(0);
  v45 = *(v248 - 1);
  MEMORY[0x1EEE9AC00](v248);
  v245 = &v213 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v241 = &v213 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v213 - v50;
  v53 = MEMORY[0x1EEE9AC00](v52);
  v278 = 0;
  *&v279 = 0xE000000000000000;
  *(&v279 + 1) = MEMORY[0x1E69E7CC0];
  v280 = MEMORY[0x1E69E7CC0];
  v54 = *(v27 + 56);
  v232 = &v213 - v55;
  v240 = v27 + 56;
  v239 = v54;
  v54(v53);
  v226 = *(a1 + 16);
  if (!v226)
  {
    goto LABEL_102;
  }

  v250 = v25;
  v56 = 0;
  v225 = a1 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
  v221 = 0x80000001A8FDA350;
  v259 = (v27 + 48);
  v246 = (v27 + 32);
  v257 = (v27 + 8);
  v215 = 0x80000001A8FDA390;
  v220 = (v271 + 48);
  v224 = *(v45 + 72);
  v223 = xmmword_1A8FC9410;
  v222 = v5;
  v252 = v11;
  v251 = v16;
  v244 = v26;
  v57 = v272;
  v249 = v29;
  v58 = v266;
  v59 = v245;
  v258 = v51;
  v60 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v68 = v56;
    outlined init with copy of Prompt.Turn(v225 + v224 * v56, v59, type metadata accessor for Prompt.Turn);
    v69 = *(v59 + v248[6]);
    v274 = 0;
    v275 = 0xE000000000000000;

    MEMORY[0x1AC57C060](0);
    v276 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v60);
    v277 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v60);
    v70 = v233;
    *v233 = v69;
    swift_storeEnumTagMultiPayload();
    Prompt.StringInterpolation.appendInterpolation(attachment:)(v70);
    outlined destroy of Prompt.ResponseFormat(v70, type metadata accessor for Prompt.AttachmentContent);
    if (*(v69 + 16))
    {
      v235 = v277;
      v236 = v276;
      v237 = v275;
      v234 = v274;
    }

    else
    {

      v234 = 0;
      v237 = 0xE000000000000000;
      v236 = v60;
      v235 = v60;
    }

    v71 = &_s10Foundation6LocaleVSgMd;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV07SpecialD0VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV07SpecialD0VGMR);
    v72 = (*(v230 + 80) + 32) & ~*(v230 + 80);
    v271 = *(v230 + 72);
    v73 = swift_allocObject();
    *(v73 + 16) = v223;
    v74 = v244;
    if (one-time initialization token for user != -1)
    {
      v201 = v73;
      swift_once();
      v73 = v201;
    }

    v270 = v73;
    v75 = v73 + v72;
    v76 = __swift_project_value_buffer(v57, static Prompt.SpecialToken.Chat.user);
    outlined init with copy of Prompt.Turn(v76, v75, type metadata accessor for Prompt.SpecialToken);
    if (one-time initialization token for tool != -1)
    {
      swift_once();
    }

    v77 = __swift_project_value_buffer(v57, static Prompt.SpecialToken.Chat.tool);
    outlined init with copy of Prompt.Turn(v77, v75 + v271, type metadata accessor for Prompt.SpecialToken);
    v78 = *v245;
    v79 = v259;
    v268 = v77;
    v269 = v76;
    if (v78 > 1)
    {
      if (v78 == 2)
      {
        v82 = v76;
      }

      else
      {
        v82 = v77;
      }
    }

    else
    {
      if (v78)
      {
        if (one-time initialization token for response != -1)
        {
          swift_once();
        }

        v80 = v272;
        v81 = static Prompt.SpecialToken.Chat.response;
      }

      else
      {
        if (one-time initialization token for instructions != -1)
        {
          swift_once();
        }

        v80 = v272;
        v81 = static Prompt.SpecialToken.Chat.instructions;
      }

      v82 = __swift_project_value_buffer(v80, v81);
    }

    v238 = v68 + 1;
    v83 = v228;
    outlined init with copy of Prompt.Turn(v82, v228, type metadata accessor for Prompt.SpecialToken);
    outlined init with take of Prompt.ResponseFormat(v83, v273, type metadata accessor for Prompt.SpecialToken);
    v84 = 2;
    do
    {
      outlined init with copy of Prompt.Turn(v75, v58, type metadata accessor for Prompt.SpecialToken);
      v85 = *v58 == *v273 && v58[1] == v273[1];
      if (!v85 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_27;
      }

      v86 = v272[5];
      v87 = *(v29 + 48);
      v88 = v58 + v86;
      v89 = v265;
      outlined init with copy of (String, Any)(v88, v265, v71, &_s10Foundation6LocaleVSgMR);
      outlined init with copy of (String, Any)(v273 + v86, v89 + v87, v71, &_s10Foundation6LocaleVSgMR);
      v90 = *v79;
      if ((*v79)(v89, 1, v74) == 1)
      {
        if (v90(v89 + v87, 1, v74) != 1)
        {
          goto LABEL_26;
        }

        outlined destroy of [Regex2BNF.CharacterPredicate](v89, v71, &_s10Foundation6LocaleVSgMR);
        v58 = v266;
      }

      else
      {
        v91 = v71;
        v92 = v258;
        outlined init with copy of (String, Any)(v89, v258, v91, &_s10Foundation6LocaleVSgMR);
        if (v90(v89 + v87, 1, v74) == 1)
        {
          (*v257)(v92, v74);
          v79 = v259;
          v71 = v91;
LABEL_26:
          outlined destroy of [Regex2BNF.CharacterPredicate](v89, &_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
          v58 = v266;
LABEL_27:
          outlined destroy of Prompt.ResponseFormat(v58, type metadata accessor for Prompt.SpecialToken);
          goto LABEL_28;
        }

        v93 = v247;
        (*v246)(v247, v89 + v87, v74);
        lazy protocol witness table accessor for type Tool and conformance Tool(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
        v94 = dispatch thunk of static Equatable.== infix(_:_:)();
        v95 = *v257;
        v96 = v93;
        v29 = v249;
        (*v257)(v96, v74);
        v95(v92, v74);
        outlined destroy of [Regex2BNF.CharacterPredicate](v89, v91, &_s10Foundation6LocaleVSgMR);
        v58 = v266;
        v79 = v259;
        v71 = v91;
        if ((v94 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v97 = v272[6];
      v98 = (v58 + v97);
      v99 = *(v58 + v97 + 8);
      v100 = (v273 + v97);
      v101 = v100[1];
      if (v99)
      {
        if (!v101 || (*v98 != *v100 || v99 != v101) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else if (v101)
      {
        goto LABEL_27;
      }

      v102 = v272[7];
      v103 = *(v58 + v102);
      v104 = *(v273 + v102);
      outlined destroy of Prompt.ResponseFormat(v58, type metadata accessor for Prompt.SpecialToken);
      if (v103 == v104)
      {
        v219 = 0;
        goto LABEL_49;
      }

LABEL_28:
      v75 += v271;
      --v84;
    }

    while (v84);
    v219 = 1;
LABEL_49:

    outlined destroy of Prompt.ResponseFormat(v273, type metadata accessor for Prompt.SpecialToken);
    v105 = v232;
    outlined destroy of [Regex2BNF.CharacterPredicate](v232, v71, &_s10Foundation6LocaleVSgMR);
    v106 = v248;
    v107 = v248[7];
    v108 = v245;
    outlined init with copy of (String, Any)(&v245[v107], v105, v71, &_s10Foundation6LocaleVSgMR);
    v109 = v108[v106[9]];
    v110 = v229;
    v111 = v241;
    v242 = v107;
    if (v109)
    {
      outlined init with copy of (String, Any)(&v108[v107], v241, v71, &_s10Foundation6LocaleVSgMR);
      v112 = v272;
      v113 = v110 + v272[5];
      (v239)(v113, 1, 1, v244);
      v114 = v215;
      *v110 = 0xD000000000000018;
      v110[1] = v114;
      v115 = (v110 + v112[6]);
      *v115 = 0;
      v115[1] = 0;
    }

    else
    {
      if (*v108 > 1u)
      {
        v118 = v269;
        if (*v108 != 2)
        {
          v118 = v268;
        }
      }

      else
      {
        if (*v108)
        {
          v116 = v272;
          if (one-time initialization token for response != -1)
          {
            v203 = v272;
            swift_once();
            v116 = v203;
          }

          v117 = static Prompt.SpecialToken.Chat.response;
        }

        else
        {
          v116 = v272;
          if (one-time initialization token for instructions != -1)
          {
            v202 = v272;
            swift_once();
            v116 = v202;
          }

          v117 = static Prompt.SpecialToken.Chat.instructions;
        }

        v118 = __swift_project_value_buffer(v116, v117);
      }

      v119 = v218;
      outlined init with copy of Prompt.Turn(v118, v218, type metadata accessor for Prompt.SpecialToken);
      v120 = v217;
      outlined init with take of Prompt.ResponseFormat(v119, v217, type metadata accessor for Prompt.SpecialToken);
      v121 = v120[1];
      v271 = *v120;

      outlined destroy of Prompt.ResponseFormat(v120, type metadata accessor for Prompt.SpecialToken);
      v122 = &v108[v248[11]];
      v123 = v122[1];
      if (v123)
      {
        v124 = *v122;
      }

      else
      {
        v124 = 0;
      }

      v112 = v272;
      v71 = &_s10Foundation6LocaleVSgMd;
      outlined init with copy of (String, Any)(&v108[v242], v111, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      v113 = v110 + v112[5];
      (v239)(v113, 1, 1, v244);
      *v110 = v271;
      v110[1] = v121;
      v125 = (v110 + v112[6]);
      *v125 = v124;
      v125[1] = v123;
    }

    outlined assign with take of Prompt.ResponseFormat?(v111, v113, v71, &_s10Foundation6LocaleVSgMR);
    *(v110 + v112[7]) = 0;
    specialized static Prompt.+= infix(_:_:)(&v278, v110);
    outlined destroy of Prompt.ResponseFormat(v110, type metadata accessor for Prompt.SpecialToken);
    v126 = *&v108[v248[8]];
    v127 = &v108[v248[11]];
    if (*(v127 + 1))
    {
      v128 = *(v127 + 4);

      v60 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v60 = MEMORY[0x1E69E7CC0];
      v128 = MEMORY[0x1E69E7CC0];
    }

    v274 = v126;

    specialized Array.append<A>(contentsOf:)(v128);
    v243 = v274;
    v129 = *(v274 + 16);
    if (!v129)
    {
LABEL_97:

      v59 = v245;
      v197 = *&v245[v248[10]];
      if (*(v197 + 16))
      {
        v274 = 0;
        v275 = 0xE000000000000000;
        MEMORY[0x1AC57C060](0);
        v276 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v60);
        v277 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v60);
        v198 = v233;
        *v233 = v197;
        swift_storeEnumTagMultiPayload();

        Prompt.StringInterpolation.appendInterpolation(attachment:)(v198);
        outlined destroy of Prompt.ResponseFormat(v198, type metadata accessor for Prompt.AttachmentContent);
        specialized static Prompt.+= infix(_:_:)(&v278, &v274);
      }

      v199 = v222;
      outlined init with copy of (String, Any)(v59 + v248[5], v222, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
      v200 = (*v220)(v199, 1, v227);
      v57 = v272;
      v29 = v249;
      v58 = v266;
      if (v200 == 1)
      {
        outlined destroy of [Regex2BNF.CharacterPredicate](v199, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
      }

      else
      {
        v61 = v199;
        v62 = v216;
        outlined init with take of Prompt.ResponseFormat(v61, v216, type metadata accessor for Prompt.ResponseFormat);
        specialized static Prompt.+= infix(_:_:)(&v278, v62);
        outlined destroy of Prompt.ResponseFormat(v62, type metadata accessor for Prompt.ResponseFormat);
      }

      v274 = v234;
      v275 = v237;
      v276 = v236;
      v277 = v235;
      specialized static Prompt.+= infix(_:_:)(&v278, &v274);

      v63 = v241;
      outlined init with copy of (String, Any)(v59 + v242, v241, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      v64 = v57[5];
      v65 = v231;
      (v239)(&v231[v64], 1, 1, v244);
      v66 = v221;
      *v65 = 0xD000000000000016;
      v65[1] = v66;
      v67 = (v65 + v57[6]);
      *v67 = 0;
      v67[1] = 0;
      outlined assign with take of Prompt.ResponseFormat?(v63, v65 + v64, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      *(v65 + v57[7]) = 0;
      specialized static Prompt.+= infix(_:_:)(&v278, v65);
      outlined destroy of Prompt.ResponseFormat(v65, type metadata accessor for Prompt.SpecialToken);
      outlined destroy of Prompt.ResponseFormat(v59, type metadata accessor for Prompt.Turn);
      v56 = v238;
      if (v238 == v226)
      {
        v204 = v244;
        if ((v219 & 1) == 0)
        {
          v205 = v232;
          v206 = v241;
          outlined init with copy of (String, Any)(v232, v241, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          v207 = v272;
          v208 = v272[5];
          v209 = v231;
          (v239)(&v231[v208], 1, 1, v204);
          *v209 = 0xD000000000000013;
          v209[1] = 0x80000001A8FDA330;
          v210 = (v209 + v207[6]);
          *v210 = 0;
          v210[1] = 0;
          outlined assign with take of Prompt.ResponseFormat?(v206, v209 + v208, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          *(v209 + v207[7]) = 0;
          specialized static Prompt.+= infix(_:_:)(&v278, v209);
          outlined destroy of [Regex2BNF.CharacterPredicate](v205, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          result = outlined destroy of Prompt.ResponseFormat(v209, type metadata accessor for Prompt.SpecialToken);
          goto LABEL_104;
        }

LABEL_102:
        result = outlined destroy of [Regex2BNF.CharacterPredicate](v232, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
LABEL_104:
        v211 = v280;
        v212 = v214;
        *v214 = v278;
        *(v212 + 1) = v279;
        v212[3] = v211;
        return result;
      }

      continue;
    }

    break;
  }

  v130 = (v243 + 80);
  while (1)
  {
    v138 = *(v130 - 6);
    v139 = *(v130 - 5);
    v140 = *(v130 - 4);
    v141 = *(v130 - 3);
    v142 = *(v130 - 2);
    v143 = *(v130 - 1);
    v144 = *v130;
    v145 = *v130 ? 4 : 0;
    v146 = v145 | (v140 >> 60) & 3;
    if (v146 > 1)
    {
      break;
    }

    if (!v146)
    {
      v274 = *(v130 - 6);
      v275 = v139;
      v276 = v60;
      v277 = v60;
      outlined copy of Prompt.Turn.Segment(v138, v139, v140, v141, v142, v143, v144);
      specialized static Prompt.+= infix(_:_:)(&v278, &v274);

      goto LABEL_73;
    }

    v270 = *(v130 - 3);
    v271 = v142;
    v268 = v143;
    v269 = v140;
    v186 = v140 & 0xCFFFFFFFFFFFFFFFLL;
    v274 = 0;
    v275 = 0xE000000000000000;
    outlined copy of Data._Representation(v139, v140 & 0xCFFFFFFFFFFFFFFFLL);
    MEMORY[0x1AC57C060](0);
    v187 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v60);
    v188 = v60;
    v189 = v187;
    v276 = v187;
    v190 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v188);
    v277 = v190;
    v261 = v138;
    v191 = v250;
    *v250 = v138 & 1;
    *(v191 + 1) = v139;
    *(v191 + 2) = v186;
    swift_storeEnumTagMultiPayload();
    outlined copy of Data._Representation(v139, v186);
    result = String.count.getter();
    v192 = v189[2];
    v193 = v190[2];
    v159 = __OFADD__(v192, v193);
    v194 = v192 + v193;
    if (v159)
    {
      goto LABEL_108;
    }

    v195 = v263;
    *&v191[*(v263 + 20)] = result;
    *&v191[*(v195 + 24)] = v194;
    outlined init with copy of Prompt.Turn(v191, v253, type metadata accessor for Prompt.Attachment);
    v196 = v190[3];
    if (v193 >= v196 >> 1)
    {
      v190 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v196 > 1), v193 + 1, 1, v190);
    }

    v60 = MEMORY[0x1E69E7CC0];
    outlined destroy of Prompt.ResponseFormat(v250, type metadata accessor for Prompt.Attachment);
    v190[2] = v193 + 1;
    outlined init with take of Prompt.ResponseFormat(v253, v190 + ((*(v262 + 80) + 32) & ~*(v262 + 80)) + *(v262 + 72) * v193, type metadata accessor for Prompt.Attachment);
    v277 = v190;
    specialized static Prompt.+= infix(_:_:)(&v278, &v274);
    v131 = v261;
    v132 = v139;
    v133 = v269;
    v134 = v270;
    v135 = v271;
    v136 = v268;
    v137 = v144;
LABEL_72:
    outlined consume of Prompt.Turn.Segment(v131, v132, v133, v134, v135, v136, v137);

LABEL_73:
    v130 += 56;
    if (!--v129)
    {
      goto LABEL_97;
    }
  }

  v267 = *v130;
  v147 = v260;
  v270 = v141;
  v271 = v142;
  v269 = v140;
  if (v146 == 2)
  {
    v268 = v143;
    v274 = 0;
    v275 = 0xE000000000000000;
    v164 = v138;
    v165 = v138;
    MEMORY[0x1AC57C060](0);
    v166 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v60);
    v276 = v166;
    v167 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v60);
    v277 = v167;
    *v147 = v165;
    swift_storeEnumTagMultiPayload();
    v168 = v165;
    result = String.count.getter();
    v169 = v166[2];
    v170 = v167[2];
    v159 = __OFADD__(v169, v170);
    v171 = v169 + v170;
    if (v159)
    {
      goto LABEL_106;
    }

    v172 = v263;
    *(v147 + *(v263 + 20)) = result;
    *(v147 + *(v172 + 24)) = v171;
    outlined init with copy of Prompt.Turn(v147, v254, type metadata accessor for Prompt.Attachment);
    v173 = v167[3];
    if (v170 >= v173 >> 1)
    {
      v167 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v173 > 1), v170 + 1, 1, v167);
    }

    v60 = MEMORY[0x1E69E7CC0];
    outlined destroy of Prompt.ResponseFormat(v147, type metadata accessor for Prompt.Attachment);
    v167[2] = v170 + 1;
    outlined init with take of Prompt.ResponseFormat(v254, v167 + ((*(v262 + 80) + 32) & ~*(v262 + 80)) + *(v262 + 72) * v170, type metadata accessor for Prompt.Attachment);
    v277 = v167;
    specialized static Prompt.+= infix(_:_:)(&v278, &v274);
    v131 = v164;
    v132 = v139;
    v133 = v269;
    v134 = v270;
    v135 = v271;
    v136 = v268;
    v137 = v267;
    goto LABEL_72;
  }

  if (v146 != 3)
  {
    v268 = v143;
    v274 = 0;
    v275 = 0xE000000000000000;

    MEMORY[0x1AC57C060](0);
    v174 = v138;
    v175 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v60);
    v276 = v175;
    v176 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v60);
    v277 = v176;
    v177 = v252;
    *v252 = v174;
    v177[1] = v139;
    swift_storeEnumTagMultiPayload();
    v178 = v174;

    result = String.count.getter();
    v179 = v175[2];
    v180 = v176[2];
    v159 = __OFADD__(v179, v180);
    v181 = v179 + v180;
    if (v159)
    {
      goto LABEL_107;
    }

    v182 = v263;
    *(v177 + *(v263 + 20)) = result;
    *(v177 + *(v182 + 24)) = v181;
    outlined init with copy of Prompt.Turn(v177, v256, type metadata accessor for Prompt.Attachment);
    v184 = v176[2];
    v183 = v176[3];
    if (v184 >= v183 >> 1)
    {
      v176 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v183 > 1), v184 + 1, 1, v176);
    }

    v60 = MEMORY[0x1E69E7CC0];
    v185 = v267;
    outlined destroy of Prompt.ResponseFormat(v252, type metadata accessor for Prompt.Attachment);
    v176[2] = v184 + 1;
    outlined init with take of Prompt.ResponseFormat(v256, v176 + ((*(v262 + 80) + 32) & ~*(v262 + 80)) + *(v262 + 72) * v184, type metadata accessor for Prompt.Attachment);
    v277 = v176;
    specialized static Prompt.+= infix(_:_:)(&v278, &v274);
    v131 = v178;
    v132 = v139;
    v133 = v269;
    v134 = v270;
    v135 = v271;
    v136 = v268;
    v137 = v185;
    goto LABEL_72;
  }

  v148 = v138;
  v149 = v140 & 0xCFFFFFFFFFFFFFFFLL;
  v274 = 0;
  v275 = 0xE000000000000000;
  outlined copy of Data._Representation(v139, v140 & 0xCFFFFFFFFFFFFFFFLL);

  v150 = v143;
  MEMORY[0x1AC57C060](0);
  v151 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v60);
  v276 = v151;
  v152 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v60);
  v277 = v152;
  v261 = v148;
  v153 = v148 & 1;
  v154 = v251;
  *v251 = v153;
  v154[1] = v139;
  v154[2] = v149;
  v155 = v271;
  v154[3] = v270;
  v154[4] = v155;
  v154[5] = v150;
  swift_storeEnumTagMultiPayload();
  v268 = v139;
  outlined copy of Data._Representation(v139, v149);

  result = String.count.getter();
  v157 = v151[2];
  v158 = v152[2];
  v159 = __OFADD__(v157, v158);
  v160 = v157 + v158;
  if (!v159)
  {
    v161 = v263;
    *(v154 + *(v263 + 20)) = result;
    *(v154 + *(v161 + 24)) = v160;
    outlined init with copy of Prompt.Turn(v154, v255, type metadata accessor for Prompt.Attachment);
    v162 = v152[3];
    if (v158 >= v162 >> 1)
    {
      v152 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v162 > 1), v158 + 1, 1, v152);
    }

    v60 = MEMORY[0x1E69E7CC0];
    v163 = v267;
    outlined destroy of Prompt.ResponseFormat(v251, type metadata accessor for Prompt.Attachment);
    v152[2] = v158 + 1;
    outlined init with take of Prompt.ResponseFormat(v255, v152 + ((*(v262 + 80) + 32) & ~*(v262 + 80)) + *(v262 + 72) * v158, type metadata accessor for Prompt.Attachment);
    v277 = v152;
    specialized static Prompt.+= infix(_:_:)(&v278, &v274);
    v131 = v261;
    v132 = v268;
    v133 = v269;
    v134 = v270;
    v135 = v271;
    v136 = v150;
    v137 = v163;
    goto LABEL_72;
  }

  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
  return result;
}

void *Prompt.turns()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v247 = &v241 - v3;
  v245 = type metadata accessor for Prompt.Turn(0);
  v244 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245);
  v248 = &v241 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v242 = &v241 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v243 = &v241 - v8;
  v9 = type metadata accessor for Prompt.AttachmentContent(0);
  MEMORY[0x1EEE9AC00](v9);
  v250 = (&v241 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v272 = (&v241 - v12);
  v280 = type metadata accessor for Prompt.Attachment(0);
  v253 = *(v280 - 8);
  MEMORY[0x1EEE9AC00](v280);
  v249 = &v241 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v279 = &v241 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v268 = &v241 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v246 = &v241 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v269 = &v241 - v21;
  v252 = type metadata accessor for TurnSpan #1 in Prompt.turns()(0);
  v259 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  v258 = &v241 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v266 = &v241 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v271 = (&v241 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v270 = &v241 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV5turnsSayAC4TurnVGyF0E9DelimiterL_VSgMd, &_s15TokenGeneration6PromptV5turnsSayAC4TurnVGyF0E9DelimiterL_VSgMR);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v241 - v30;
  v282 = type metadata accessor for TurnDelimiter #1 in Prompt.turns()(0);
  v32 = *(v282 - 8);
  MEMORY[0x1EEE9AC00](v282);
  v34 = &v241 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v241 - v36;
  v38 = type metadata accessor for Prompt.Delimiter(0) - 8;
  MEMORY[0x1EEE9AC00](v38);
  v40 = (&v241 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v241 - v43;
  v45 = *v1;
  v276 = v1[1];
  v277 = v45;
  v46 = v1[2];
  v256 = v1[3];
  v47 = *(v46 + 16);
  v281 = v9;
  v273 = v32;
  if (v47)
  {
    v48 = v46 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v278 = *(v42 + 72);
    v49 = MEMORY[0x1E69E7CC0];
    v275 = v37;
    do
    {
      outlined init with copy of Prompt.Turn(v48, v44, type metadata accessor for Prompt.Delimiter);
      outlined init with copy of Prompt.Turn(v44, v40, type metadata accessor for Prompt.Delimiter);
      init(delimiter:) in TurnDelimiter #1 in Prompt.turns()(v40, v31);
      outlined destroy of Prompt.ResponseFormat(v44, type metadata accessor for Prompt.Delimiter);
      if ((*(v32 + 48))(v31, 1, v282) == 1)
      {
        outlined destroy of [Regex2BNF.CharacterPredicate](v31, &_s15TokenGeneration6PromptV5turnsSayAC4TurnVGyF0E9DelimiterL_VSgMd, &_s15TokenGeneration6PromptV5turnsSayAC4TurnVGyF0E9DelimiterL_VSgMR);
      }

      else
      {
        outlined init with take of Prompt.ResponseFormat(v31, v37, type metadata accessor for TurnDelimiter #1 in Prompt.turns());
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
        }

        v51 = *(v49 + 2);
        v50 = *(v49 + 3);
        if (v51 >= v50 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v49);
        }

        *(v49 + 2) = v51 + 1;
        v52 = v49 + ((*(v273 + 80) + 32) & ~*(v273 + 80)) + *(v273 + 72) * v51;
        v37 = v275;
        outlined init with take of Prompt.ResponseFormat(v275, v52, type metadata accessor for TurnDelimiter #1 in Prompt.turns());
      }

      v48 += v278;
      --v47;
    }

    while (v47);
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
  }

  v53 = *(v49 + 2);
  if (v53)
  {
    v274 = 0;
    v54 = 0;
    v55 = 0;
    v278 = 0;
    LODWORD(v275) = 0;
    v56 = v49 + ((*(v273 + 80) + 32) & ~*(v273 + 80));
    v57 = MEMORY[0x1E69E7CC0];
    v58 = *(v273 + 72);
    v59 = 1;
    v273 = v58;
    v267 = v49;
    while (1)
    {
      outlined init with copy of Prompt.Turn(v56, v34, type metadata accessor for TurnDelimiter #1 in Prompt.turns());
      if (v59 == 1)
      {
        v60 = *v34;
        if (v60 != 4)
        {
          v54 = *(v34 + 3);
          v59 = *(v34 + 4);
          v55 = *(v34 + 1);
          v278 = *(v34 + 2);
          LODWORD(v275) = v34[2];

          outlined destroy of Prompt.ResponseFormat(v34, type metadata accessor for TurnDelimiter #1 in Prompt.turns());
          v274 = v60;
          goto LABEL_15;
        }
      }

      else if (v34[1] == 1)
      {
        v61 = v57;
        v62 = *(v34 + 1);
        v63 = *(v34 + 2);
        v64 = v270;
        outlined init with copy of (String, Any)(&v34[*(v282 + 40)], v270 + *(v252 + 44), &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        *v64 = v274;
        *(v64 + 8) = v54;
        *(v64 + 16) = v59;
        *(v64 + 24) = v55;
        *(v64 + 32) = v62;
        *(v64 + 40) = v278;
        *(v64 + 48) = v63;
        v57 = v61;
        *(v64 + 56) = v275 & 1;
        outlined init with copy of Prompt.Turn(v64, v271, type metadata accessor for TurnSpan #1 in Prompt.turns());
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1, v61);
        }

        v66 = v57[2];
        v65 = v57[3];
        if (v66 >= v65 >> 1)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v57);
        }

        outlined destroy of Prompt.ResponseFormat(v270, type metadata accessor for TurnSpan #1 in Prompt.turns());
        outlined destroy of Prompt.ResponseFormat(v34, type metadata accessor for TurnDelimiter #1 in Prompt.turns());
        v57[2] = v66 + 1;
        outlined init with take of Prompt.ResponseFormat(v271, v57 + ((*(v259 + 80) + 32) & ~*(v259 + 80)) + *(v259 + 72) * v66, type metadata accessor for TurnSpan #1 in Prompt.turns());
        v274 = 0;
        v54 = 0;
        v55 = 0;
        v278 = 0;
        LODWORD(v275) = 0;
        v59 = 1;
        v58 = v273;
        goto LABEL_15;
      }

      outlined destroy of Prompt.ResponseFormat(v34, type metadata accessor for TurnDelimiter #1 in Prompt.turns());
LABEL_15:
      v56 += v58;
      if (!--v53)
      {

        outlined consume of PartialTurnSpan #1 in Prompt.turns()?(v274, v54, v59);
        goto LABEL_27;
      }
    }
  }

  v57 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v67 = v57[2];
  v68 = v272;
  v69 = v279;
  v70 = v268;
  v71 = v258;
  if (!v67)
  {
    v72 = String.count.getter();
    v73 = *(v252 + 44);
    v74 = type metadata accessor for Locale();
    v75 = v266;
    (*(*(v74 - 8) + 56))(v266 + v73, 1, 1, v74);
    *v75 = 2;
    *(v75 + 8) = 0;
    *(v75 + 16) = 0;
    *(v75 + 24) = 0;
    *(v75 + 32) = v72;
    *(v75 + 40) = xmmword_1A8FD1F50;
    *(v75 + 56) = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_29;
  }

LABEL_32:
  if (v67)
  {
    v78 = 0;
    v263 = 0;
    v241 = xmmword_1A8FD1F70;
    *(&v79 + 1) = 0x2000000000000000;
    v264 = xmmword_1A8FD1F60;
    *&v79 = 136315138;
    v260 = v79;
    v251 = MEMORY[0x1E69E7CC0];
    v257 = v57;
    v255 = v67;
    while (1)
    {
      while (1)
      {
        if (v78 >= v57[2])
        {
          goto LABEL_135;
        }

        v80 = v57 + ((*(v259 + 80) + 32) & ~*(v259 + 80));
        v81 = *(v259 + 72);
        v261 = v78;
        v82 = outlined init with copy of Prompt.Turn(&v80[v81 * v78], v71, type metadata accessor for TurnSpan #1 in Prompt.turns());
        MEMORY[0x1EEE9AC00](v82);
        *(&v241 - 2) = v71;
        v83 = v256;

        v84 = v83;
        v85 = v263;
        specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in Prompt.turns(), (&v241 - 2), v84);
        v283 = v86;

        specialized MutableCollection<>.sort(by:)(&v283);
        v263 = v85;
        if (v85)
        {

          __break(1u);
          return result;
        }

        v87 = v283;
        v88 = *(v71 + 3);
        v89 = type metadata accessor for Prompt.ResponseFormat(0);
        v90 = *(v89 - 8);
        v91 = *(v90 + 56);
        v266 = v89;
        v267 = v91;
        v265 = v90 + 56;
        (v91)(v269, 1, 1);
        v57 = *(v87 + 16);
        v262 = v87;
        v254 = v57;
        if (v57)
        {
          v71 = (v87 + ((*(v253 + 80) + 32) & ~*(v253 + 80)));
          v282 = *(v253 + 72);
          v278 = v88;
          v92 = v88;
          v93 = MEMORY[0x1E69E7CC0];
          v273 = MEMORY[0x1E69E7CC0];
          v274 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            v95 = v92;
            outlined init with copy of Prompt.Turn(v71, v70, type metadata accessor for Prompt.Attachment);
            v92 = *(v70 + *(v280 + 20));
            if (v95 != v92)
            {
              v96 = String.index(_:offsetBy:)();
              if (String.index(_:offsetBy:)() >> 14 < v96 >> 14)
              {
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
                v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1, v57);
LABEL_29:
                v77 = v57[2];
                v76 = v57[3];
                if (v77 >= v76 >> 1)
                {
                  v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v57);
                }

                v57[2] = v77 + 1;
                outlined init with take of Prompt.ResponseFormat(v266, v57 + ((*(v259 + 80) + 32) & ~*(v259 + 80)) + *(v259 + 72) * v77, type metadata accessor for TurnSpan #1 in Prompt.turns());
                v67 = v57[2];
                goto LABEL_32;
              }

              v97 = String.subscript.getter();
              v98 = MEMORY[0x1AC57C040](v97);
              v100 = v99;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v93 + 2) + 1, 1, v93);
              }

              v102 = *(v93 + 2);
              v101 = *(v93 + 3);
              v103 = v93;
              if (v102 >= v101 >> 1)
              {
                v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1, v93);
              }

              *(v103 + 2) = v102 + 1;
              v93 = v103;
              v104 = &v103[56 * v102];
              *(v104 + 4) = v98;
              *(v104 + 5) = v100;
              *(v104 + 3) = 0u;
              *(v104 + 4) = 0u;
              v104[80] = 0;
              v69 = v279;
            }

            outlined init with copy of Prompt.Turn(v70, v68, type metadata accessor for Prompt.AttachmentContent);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload <= 2)
            {
              if (EnumCaseMultiPayload)
              {
                if (EnumCaseMultiPayload != 1)
                {
                  v139 = *v68;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v93 + 2) + 1, 1, v93);
                  }

                  v140 = v93;
                  v141 = *(v93 + 2);
                  v142 = v140;
                  v143 = *(v140 + 3);
                  if (v141 >= v143 >> 1)
                  {
                    v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v143 > 1), v141 + 1, 1, v142);
                  }

                  outlined destroy of Prompt.ResponseFormat(v70, type metadata accessor for Prompt.Attachment);
                  *(v142 + 2) = v141 + 1;
                  v144 = &v142[56 * v141];
                  v93 = v142;
                  *(v144 + 4) = v139;
                  *(v144 + 40) = v264;
                  *(v144 + 8) = 0;
                  *(v144 + 9) = 0;
                  *(v144 + 7) = 0;
                  v144[80] = 0;
                  goto LABEL_41;
                }

                v119 = *v68;
                v121 = v68[1];
                v120 = v68[2];
                v122 = v68;
                v123 = v68[3];
                v124 = v68[4];
                v270 = v122[5];
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v275 = v123;
                v271 = v124;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v93 + 2) + 1, 1, v93);
                }

                v126 = v93;
                v127 = *(v93 + 2);
                v128 = v126;
                v129 = *(v126 + 3);
                if (v127 >= v129 >> 1)
                {
                  v128 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v129 > 1), v127 + 1, 1, v128);
                }

                outlined destroy of Prompt.ResponseFormat(v70, type metadata accessor for Prompt.Attachment);
                *(v128 + 2) = v127 + 1;
                v94 = &v128[56 * v127];
                v93 = v128;
                *(v94 + 4) = v119;
                *(v94 + 5) = v121;
                v130 = v275;
                *(v94 + 6) = v120 | 0x3000000000000000;
                *(v94 + 7) = v130;
                v131 = v270;
                *(v94 + 8) = v271;
                *(v94 + 9) = v131;
              }

              else
              {
                v132 = *v68;
                v133 = v93;
                v134 = v68[1];
                v135 = v68[2];
                v136 = v133;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v136 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v136 + 2) + 1, 1, v136);
                }

                v138 = *(v136 + 2);
                v137 = *(v136 + 3);
                if (v138 >= v137 >> 1)
                {
                  v136 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v137 > 1), v138 + 1, 1, v136);
                }

                outlined destroy of Prompt.ResponseFormat(v70, type metadata accessor for Prompt.Attachment);
                *(v136 + 2) = v138 + 1;
                v94 = &v136[56 * v138];
                *(v94 + 4) = v132;
                *(v94 + 5) = v134;
                v93 = v136;
                *(v94 + 6) = v135 | 0x1000000000000000;
                *(v94 + 7) = 0;
                *(v94 + 8) = 0;
                *(v94 + 9) = 0;
              }

              v94[80] = 0;
              v68 = v272;
              v69 = v279;
            }

            else if (EnumCaseMultiPayload > 4)
            {
              if (EnumCaseMultiPayload == 5)
              {
                outlined destroy of Prompt.ResponseFormat(v70, type metadata accessor for Prompt.Attachment);

                v273 = *v68;
              }

              else
              {
                outlined destroy of Prompt.ResponseFormat(v70, type metadata accessor for Prompt.Attachment);

                v274 = *v68;
              }
            }

            else if (EnumCaseMultiPayload == 3)
            {
              v275 = v93;
              if (one-time initialization token for prompt != -1)
              {
                swift_once();
              }

              v106 = type metadata accessor for Logger();
              __swift_project_value_buffer(v106, static Log.prompt);
              outlined init with copy of Prompt.Turn(v70, v69, type metadata accessor for Prompt.Attachment);
              v107 = v70;
              v108 = v69;
              v109 = Logger.logObject.getter();
              v110 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v109, v110))
              {
                v111 = swift_slowAlloc();
                v112 = swift_slowAlloc();
                v283 = v112;
                *v111 = v260;
                v113 = Prompt.AttachmentContent.description.getter();
                v115 = v114;
                v271 = type metadata accessor for Prompt.Attachment;
                outlined destroy of Prompt.ResponseFormat(v108, type metadata accessor for Prompt.Attachment);
                v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v115, &v283);
                v68 = v272;

                *(v111 + 4) = v116;
                _os_log_impl(&dword_1A8E85000, v109, v110, "Unknown prompt attachment type: %s", v111, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v112);
                MEMORY[0x1AC57DBF0](v112, -1, -1);
                MEMORY[0x1AC57DBF0](v111, -1, -1);

                v117 = v268;
                v118 = v271;
              }

              else
              {

                outlined destroy of Prompt.ResponseFormat(v108, type metadata accessor for Prompt.Attachment);
                v117 = v107;
                v118 = type metadata accessor for Prompt.Attachment;
              }

              outlined destroy of Prompt.ResponseFormat(v117, v118);
              v69 = v108;
              v93 = v275;
              outlined destroy of Prompt.ResponseFormat(v68, type metadata accessor for Prompt.AttachmentContent);
              v70 = v268;
            }

            else
            {
              outlined destroy of Prompt.ResponseFormat(v70, type metadata accessor for Prompt.Attachment);
              v145 = v269;
              outlined destroy of [Regex2BNF.CharacterPredicate](v269, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
              outlined init with take of Prompt.ResponseFormat(v68, v145, type metadata accessor for Prompt.ResponseFormat);
              v267(v145, 0, 1, v266);
            }

LABEL_41:
            v71 += v282;
            v57 = (v57 - 1);
            if (!v57)
            {
              goto LABEL_79;
            }
          }
        }

        v92 = v88;
        v93 = MEMORY[0x1E69E7CC0];
        v273 = MEMORY[0x1E69E7CC0];
        v274 = MEMORY[0x1E69E7CC0];
LABEL_79:
        v71 = v258;
        if (v92 == *(v258 + 4))
        {
          v275 = v93;
          v57 = v257;
        }

        else
        {
          v146 = String.index(_:offsetBy:)();
          v147 = String.index(_:offsetBy:)();
          v57 = v257;
          if (v147 >> 14 < v146 >> 14)
          {
            goto LABEL_136;
          }

          v148 = String.subscript.getter();
          v149 = MEMORY[0x1AC57C040](v148);
          v151 = v150;

          v152 = v93;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v152 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v93 + 2) + 1, 1, v93);
          }

          v154 = *(v152 + 2);
          v153 = *(v152 + 3);
          v275 = v152;
          if (v154 >= v153 >> 1)
          {
            v275 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v153 > 1), v154 + 1, 1, v275);
          }

          v155 = v275;
          *(v275 + 2) = v154 + 1;
          v156 = &v155[56 * v154];
          *(v156 + 4) = v149;
          *(v156 + 5) = v151;
          *(v156 + 3) = 0u;
          *(v156 + 4) = 0u;
          v156[80] = 0;
        }

        v78 = v261 + 1;
        v157 = *v71;
        if (v157 == 3)
        {
          break;
        }

        if (!*v71)
        {

          v177 = v247;
          v178 = v245;
          v179 = v246;
          if (v71[56] != 1)
          {

            outlined init with copy of (String, Any)(&v71[*(v252 + 44)], v177, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            v216 = v266;
            v215 = v267;
            v267(v179, 1, 1, v266);
            v217 = v179;
            v218 = v178;
            v219 = v178[5];
            v220 = v243;
            v215(v243 + v219, 1, 1, v216);
            v221 = v218[7];
            v222 = type metadata accessor for Locale();
            (*(*(v222 - 8) + 56))(&v220[v221], 1, 1, v222);
            v223 = &v220[v218[11]];
            v223[4] = 0;
            *v223 = 0u;
            *(v223 + 1) = 0u;
            *v220 = 0;
            *&v220[v218[8]] = v275;
            v198 = v220;
            *&v220[v218[6]] = v273;
            *&v220[v218[10]] = MEMORY[0x1E69E7CC0];
            outlined consume of Prompt.ToolCallResult?(*v223, v223[1], v223[2], v223[3], v223[4]);
            v223[4] = 0;
            *v223 = 0u;
            *(v223 + 1) = 0u;
            v220[v218[9]] = 0;
            outlined assign with take of Prompt.ResponseFormat?(v247, &v220[v221], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            v200 = &v220[v219];
LABEL_122:
            v201 = v217;
            goto LABEL_123;
          }

          v180 = MEMORY[0x1E69E7CC0];
          v70 = v254;
          if (!v254)
          {
LABEL_121:

            outlined init with copy of (String, Any)(&v71[*(v252 + 44)], v247, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            v217 = v246;
            v225 = v266;
            v224 = v267;
            v267(v246, 1, 1, v266);
            v226 = v245;
            v227 = *(v245 + 20);
            v228 = v243;
            v224(v243 + v227, 1, 1, v225);
            v229 = v226[7];
            v230 = type metadata accessor for Locale();
            (*(*(v230 - 8) + 56))(&v228[v229], 1, 1, v230);
            v231 = &v228[v226[11]];
            v231[4] = 0;
            *v231 = 0u;
            *(v231 + 1) = 0u;
            *v228 = 0;
            *&v228[v226[8]] = v275;
            v198 = v228;
            *&v228[v226[6]] = v180;
            *&v228[v226[10]] = MEMORY[0x1E69E7CC0];
            outlined consume of Prompt.ToolCallResult?(*v231, v231[1], v231[2], v231[3], v231[4]);
            v231[4] = 0;
            *v231 = 0u;
            *(v231 + 1) = 0u;
            v228[v226[9]] = 1;
            outlined assign with take of Prompt.ResponseFormat?(v247, &v228[v229], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            v200 = &v228[v227];
            goto LABEL_122;
          }

          v181 = v262 + ((*(v253 + 80) + 32) & ~*(v253 + 80));
          v282 = *(v253 + 72);
          while (2)
          {
            v182 = v249;
            outlined init with copy of Prompt.Turn(v181, v249, type metadata accessor for Prompt.Attachment);
            v183 = v250;
            outlined init with copy of Prompt.Turn(v182, v250, type metadata accessor for Prompt.AttachmentContent);
            if (swift_getEnumCaseMultiPayload() == 5)
            {
              outlined destroy of Prompt.ResponseFormat(v182, type metadata accessor for Prompt.Attachment);
              v69 = *v183;
            }

            else
            {
              outlined destroy of Prompt.ResponseFormat(v183, type metadata accessor for Prompt.AttachmentContent);
              outlined destroy of Prompt.ResponseFormat(v182, type metadata accessor for Prompt.Attachment);
              v69 = MEMORY[0x1E69E7CC0];
            }

            v184 = *(v69 + 16);
            v68 = v180[2];
            v185 = (v68 + v184);
            if (__OFADD__(v68, v184))
            {
              goto LABEL_137;
            }

            v186 = swift_isUniquelyReferenced_nonNull_native();
            if (v186 && v185 <= v180[3] >> 1)
            {
              if (!*(v69 + 16))
              {
LABEL_102:

                v68 = &_s10Foundation6LocaleVSgMd;
                if (v184)
                {
                  goto LABEL_138;
                }

LABEL_103:
                v181 += v282;
                if (!--v70)
                {
                  goto LABEL_121;
                }

                continue;
              }
            }

            else
            {
              if (v68 <= v185)
              {
                v187 = v68 + v184;
              }

              else
              {
                v187 = v68;
              }

              v180 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v186, v187, 1, v180);
              if (!*(v69 + 16))
              {
                goto LABEL_102;
              }
            }

            break;
          }

          v68 = v180[2];
          v188 = (v180[3] >> 1) - v68;
          type metadata accessor for Tool();
          if (v188 < v184)
          {
            goto LABEL_139;
          }

          swift_arrayInitWithCopy();

          v68 = &_s10Foundation6LocaleVSgMd;
          if (v184)
          {
            v189 = v180[2];
            v190 = __OFADD__(v189, v184);
            v191 = v189 + v184;
            if (v190)
            {
              goto LABEL_140;
            }

            v180[2] = v191;
          }

          goto LABEL_103;
        }

        v163 = v247;
        v164 = v245;
        v165 = v246;
        v166 = v274;
        if (v157 == 1)
        {

          v167 = v242;
          if (*(v166 + 16))
          {

            v168 = &v258[*(v252 + 44)];
            v274 = v166;
            outlined init with copy of (String, Any)(v168, v163, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            v170 = v266;
            v169 = v267;
            v267(v165, 1, 1, v266);
            v171 = &v167[v164[5]];
            v169(v171, 1, 1, v170);
            v172 = &v167[v164[7]];
            v173 = type metadata accessor for Locale();
            (*(*(v173 - 8) + 56))(v172, 1, 1, v173);
            v174 = v274;
            v175 = MEMORY[0x1E69E7CC0];
            v176 = MEMORY[0x1E69E7CC0];
          }

          else
          {

            v232 = type metadata accessor for Locale();
            v233 = *(v232 - 8);
            v278 = *(v233 + 56);
            v282 = v233 + 56;
            (v278)(v163, 1, 1, v232);
            v235 = v266;
            v234 = v267;
            v267(v165, 1, 1, v266);
            v171 = &v167[v164[5]];
            v234(v171, 1, 1, v235);
            v172 = &v167[v164[7]];
            (v278)(v172, 1, 1, v232);
            v175 = MEMORY[0x1E69E7CC0];
            v174 = MEMORY[0x1E69E7CC0];
            v176 = v275;
          }

          v236 = &v167[v164[11]];
          v236[4] = 0;
          *v236 = 0u;
          *(v236 + 1) = 0u;
          *v167 = 1;
          *&v167[v164[8]] = v176;
          *&v167[v164[6]] = v175;
          *&v167[v164[10]] = v174;
          outlined consume of Prompt.ToolCallResult?(*v236, v236[1], v236[2], v236[3], v236[4]);
          v236[4] = 0;
          *v236 = 0u;
          *(v236 + 1) = 0u;
          v167[v164[9]] = 0;
          outlined assign with take of Prompt.ResponseFormat?(v247, v172, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          outlined assign with take of Prompt.ResponseFormat?(v165, v171, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
          v198 = v243;
          outlined init with take of Prompt.ResponseFormat(v167, v243, type metadata accessor for Prompt.Turn);
          goto LABEL_126;
        }

        outlined init with copy of (String, Any)(&v71[*(v252 + 44)], v163, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        outlined init with copy of (String, Any)(v269, v165, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
        v192 = v164[5];
        v193 = v243;
        v267(v243 + v192, 1, 1, v266);
        v194 = v164[7];
        v195 = type metadata accessor for Locale();
        (*(*(v195 - 8) + 56))(&v193[v194], 1, 1, v195);
        v196 = &v193[v164[11]];
        v196[4] = 0;
        *v196 = 0u;
        *(v196 + 1) = 0u;
        *v193 = 2;
        *&v193[v164[8]] = v275;
        v197 = v165;
        v198 = v193;
        v199 = MEMORY[0x1E69E7CC0];
        *&v193[v164[6]] = MEMORY[0x1E69E7CC0];
        *&v193[v164[10]] = v199;
        outlined consume of Prompt.ToolCallResult?(*v196, v196[1], v196[2], v196[3], v196[4]);
        v196[4] = 0;
        *v196 = 0u;
        *(v196 + 1) = 0u;
        v193[v164[9]] = 0;
        outlined assign with take of Prompt.ResponseFormat?(v163, &v193[v194], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        v200 = &v193[v192];
        v201 = v197;
LABEL_123:
        outlined assign with take of Prompt.ResponseFormat?(v201, v200, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
LABEL_126:
        outlined init with copy of Prompt.Turn(v198, v248, type metadata accessor for Prompt.Turn);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v251 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v251[2] + 1, 1, v251);
        }

        v68 = v272;
        v69 = v279;
        v71 = v258;
        v238 = v251[2];
        v237 = v251[3];
        if (v238 >= v237 >> 1)
        {
          v251 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v237 > 1), v238 + 1, 1, v251);
        }

        outlined destroy of [Regex2BNF.CharacterPredicate](v269, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
        v239 = v251;
        v251[2] = v238 + 1;
        outlined init with take of Prompt.ResponseFormat(v248, v239 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v238, type metadata accessor for Prompt.Turn);
        outlined destroy of Prompt.ResponseFormat(v198, type metadata accessor for Prompt.Turn);
        outlined destroy of Prompt.ResponseFormat(v71, type metadata accessor for TurnSpan #1 in Prompt.turns());
        v70 = v268;
        if (v78 == v255)
        {
          goto LABEL_133;
        }
      }

      v158 = *(v71 + 2);
      if (v158)
      {
        v282 = *(v71 + 1);
        outlined init with copy of (String, Any)(&v71[*(v252 + 44)], v247, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        v203 = v266;
        v202 = v267;
        v267(v246, 1, 1, v266);
        v204 = v245;
        v278 = *(v245 + 20);
        v205 = v243;
        v202(&v278[v243], 1, 1, v203);
        v206 = v204[7];
        v274 = v206;
        v207 = type metadata accessor for Locale();
        (*(*(v207 - 8) + 56))(&v205[v206], 1, 1, v207);
        v208 = &v205[v204[11]];
        v208[4] = 0;
        *v208 = 0u;
        *(v208 + 1) = 0u;
        *v205 = 3;
        v209 = MEMORY[0x1E69E7CC0];
        *&v205[v204[8]] = MEMORY[0x1E69E7CC0];
        *&v205[v204[6]] = v209;
        *&v205[v204[10]] = v209;
        v210 = *v208;
        v211 = v208[1];
        v213 = v208[2];
        v212 = v208[3];
        v214 = v208[4];

        outlined consume of Prompt.ToolCallResult?(v210, v211, v213, v212, v214);
        *v208 = v282;
        v208[1] = v158;
        *(v208 + 1) = v241;
        v208[4] = v275;
        v198 = v205;
        v57 = v257;
        *(v198 + v204[9]) = 0;
        outlined assign with take of Prompt.ResponseFormat?(v247, v198 + v274, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        v200 = &v278[v198];
        v201 = v246;
        goto LABEL_123;
      }

      if (one-time initialization token for prompt != -1)
      {
        swift_once();
      }

      v159 = type metadata accessor for Logger();
      __swift_project_value_buffer(v159, static Log.prompt);
      v160 = Logger.logObject.getter();
      v161 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        *v162 = 0;
        _os_log_impl(&dword_1A8E85000, v160, v161, "Role was tool, but no tool result was found. Prompt is malformed.", v162, 2u);
        MEMORY[0x1AC57DBF0](v162, -1, -1);
      }

      outlined destroy of [Regex2BNF.CharacterPredicate](v269, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
      outlined destroy of Prompt.ResponseFormat(v71, type metadata accessor for TurnSpan #1 in Prompt.turns());
      if (v78 == v255)
      {
        goto LABEL_133;
      }
    }
  }

  v251 = MEMORY[0x1E69E7CC0];
LABEL_133:

  return v251;
}

uint64_t init(delimiter:) in TurnDelimiter #1 in Prompt.turns()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for TurnDelimiter #1 in Prompt.turns()(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = 4;
  v8 = *(v7 + 40);
  v9 = type metadata accessor for Locale();
  (*(*(v9 - 8) + 56))(&v6[v8], 1, 1, v9);
  v10 = type metadata accessor for Prompt.Delimiter(0);
  v11 = *(a1 + *(v10 + 24));
  *(v6 + 1) = *(a1 + *(v10 + 20));
  *(v6 + 2) = v11;
  v13 = *a1;
  v12 = a1[1];
  if (one-time initialization token for turnEnd != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Prompt.SpecialToken(0);
  v15 = __swift_project_value_buffer(v14, static Prompt.SpecialToken.Chat.turnEnd);
  if (v13 == *v15 && v12 == v15[1])
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v6[1] = v16 & 1;
  if (one-time initialization token for defaultInstructions != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v14, static Prompt.SpecialToken.Chat.defaultInstructions);
  v6[2] = specialized static Prompt.SpecialToken.== infix(_:_:)(a1, v17) & 1;
  v18 = (a1 + *(v14 + 24));
  v19 = v18[1];
  *(v6 + 3) = *v18;
  *(v6 + 4) = v19;
  v20 = *(v14 + 20);

  outlined assign with copy of Locale?(a1 + v20, &v6[v8]);
  v21 = one-time initialization token for instructions;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v14, static Prompt.SpecialToken.Chat.instructions);
  if (*v22 == v13 && v22[1] == v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || *v17 == v13 && v17[1] == v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    outlined destroy of Prompt.ResponseFormat(a1, type metadata accessor for Prompt.Delimiter);

    *v6 = 0;
  }

  else
  {
    if (one-time initialization token for user != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v14, static Prompt.SpecialToken.Chat.user);
    if (*v25 == v13 && v25[1] == v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      outlined destroy of Prompt.ResponseFormat(a1, type metadata accessor for Prompt.Delimiter);

      v26 = 2;
    }

    else
    {
      if (one-time initialization token for response != -1)
      {
        swift_once();
      }

      v27 = __swift_project_value_buffer(v14, static Prompt.SpecialToken.Chat.response);
      if (*v27 == v13 && v27[1] == v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        outlined destroy of Prompt.ResponseFormat(a1, type metadata accessor for Prompt.Delimiter);

        v26 = 1;
      }

      else
      {
        if (one-time initialization token for tool != -1)
        {
          swift_once();
        }

        v28 = __swift_project_value_buffer(v14, static Prompt.SpecialToken.Chat.tool);
        if (*v28 == v13 && v28[1] == v12)
        {

          outlined destroy of Prompt.ResponseFormat(a1, type metadata accessor for Prompt.Delimiter);
        }

        else
        {
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          outlined destroy of Prompt.ResponseFormat(a1, type metadata accessor for Prompt.Delimiter);
          if ((v29 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        v26 = 3;
      }
    }

    *v6 = v26;
  }

LABEL_18:
  v23 = v31;
  outlined init with copy of Prompt.Turn(v6, v31, type metadata accessor for TurnDelimiter #1 in Prompt.turns());
  (*(v4 + 56))(v23, 0, 1, v3);
  return outlined destroy of Prompt.ResponseFormat(v6, type metadata accessor for TurnDelimiter #1 in Prompt.turns());
}

void outlined copy of Prompt.ToolCallResult?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

void outlined consume of Prompt.ToolCallResult?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v112 = a1;
  v126 = type metadata accessor for Prompt.Attachment(0);
  v9 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v115 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v123 = &v107 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v125 = &v107 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v124 = &v107 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_136;
    }

    a4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v102 = a4;
LABEL_99:
      v127 = v102;
      a4 = *(v102 + 2);
      if (a4 >= 2)
      {
        v103 = v9;
        while (*a3)
        {
          v104 = *&v102[16 * a4];
          v105 = v102;
          v9 = *&v102[16 * a4 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + *(v103 + 72) * v104, *a3 + *(v103 + 72) * *&v102[16 * a4 + 16], *a3 + *(v103 + 72) * v9, v5);
          if (v6)
          {
            goto LABEL_108;
          }

          if (v9 < v104)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = specialized _ArrayBuffer._consumeAndCreateNew()(v105);
          }

          if (a4 - 2 >= *(v105 + 2))
          {
            goto LABEL_124;
          }

          v106 = &v105[16 * a4];
          *v106 = v104;
          *(v106 + 1) = v9;
          v127 = v105;
          specialized Array.remove(at:)(a4 - 1);
          v102 = v127;
          a4 = *(v127 + 2);
          if (a4 <= 1)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_134;
      }

LABEL_108:

      return;
    }

LABEL_130:
    v102 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    goto LABEL_99;
  }

  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v111 = a4;
  v113 = a3;
  v108 = v9;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v116 = v19;
    if (v21 >= v17)
    {
      v17 = v21;
    }

    else
    {
      v109 = v6;
      v22 = *a3;
      v23 = *(v9 + 72);
      v5 = *a3 + v23 * v21;
      v24 = v124;
      outlined init with copy of Prompt.Turn(v5, v124, type metadata accessor for Prompt.Attachment);
      v25 = v125;
      outlined init with copy of Prompt.Turn(v22 + v23 * v20, v125, type metadata accessor for Prompt.Attachment);
      v26 = *(v126 + 24);
      v27 = *(v24 + v26);
      v119 = *(v25 + v26);
      v120 = v27;
      outlined destroy of Prompt.ResponseFormat(v25, type metadata accessor for Prompt.Attachment);
      outlined destroy of Prompt.ResponseFormat(v24, type metadata accessor for Prompt.Attachment);
      v110 = v20;
      v28 = v20 + 2;
      v121 = v23;
      v29 = v22 + v23 * v28;
      while (v17 != v28)
      {
        LODWORD(v122) = v120 < v119;
        v30 = v124;
        outlined init with copy of Prompt.Turn(v29, v124, type metadata accessor for Prompt.Attachment);
        v31 = v125;
        outlined init with copy of Prompt.Turn(v5, v125, type metadata accessor for Prompt.Attachment);
        v32 = *(v126 + 24);
        v33 = *(v30 + v32);
        v34 = *(v31 + v32);
        outlined destroy of Prompt.ResponseFormat(v31, type metadata accessor for Prompt.Attachment);
        outlined destroy of Prompt.ResponseFormat(v30, type metadata accessor for Prompt.Attachment);
        ++v28;
        v29 += v121;
        v5 += v121;
        if (((v122 ^ (v33 >= v34)) & 1) == 0)
        {
          v17 = v28 - 1;
          break;
        }
      }

      a3 = v113;
      v9 = v108;
      v6 = v109;
      v20 = v110;
      a4 = v111;
      if (v120 < v119)
      {
        if (v17 < v110)
        {
          goto LABEL_127;
        }

        if (v110 < v17)
        {
          v35 = v121 * (v17 - 1);
          v36 = v17 * v121;
          v120 = v17;
          v37 = v17;
          v38 = v110;
          v39 = v110 * v121;
          do
          {
            if (v38 != --v37)
            {
              v40 = *v113;
              if (!*v113)
              {
                goto LABEL_133;
              }

              v5 = v40 + v39;
              outlined init with take of Prompt.ResponseFormat(v40 + v39, v115, type metadata accessor for Prompt.Attachment);
              if (v39 < v35 || v5 >= v40 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              outlined init with take of Prompt.ResponseFormat(v115, v40 + v35, type metadata accessor for Prompt.Attachment);
            }

            ++v38;
            v35 -= v121;
            v36 -= v121;
            v39 += v121;
          }

          while (v38 < v37);
          a3 = v113;
          v9 = v108;
          v20 = v110;
          a4 = v111;
          v17 = v120;
        }
      }
    }

    v41 = a3[1];
    if (v17 >= v41)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v17, v20))
    {
      goto LABEL_126;
    }

    if (v17 - v20 >= a4)
    {
LABEL_32:
      v43 = v17;
      if (v17 < v20)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v20, a4))
    {
      goto LABEL_128;
    }

    if ((v20 + a4) >= v41)
    {
      v42 = a3[1];
    }

    else
    {
      v42 = v20 + a4;
    }

    if (v42 < v20)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v17 == v42)
    {
      goto LABEL_32;
    }

    v88 = *a3;
    v89 = *(v9 + 72);
    v90 = *a3 + v89 * (v17 - 1);
    v91 = v20;
    v92 = -v89;
    v109 = v6;
    v110 = v91;
    v93 = v91 - v17;
    v122 = v88;
    v114 = v89;
    v5 = v88 + v17 * v89;
    v94 = v126;
    v117 = v42;
LABEL_86:
    v119 = v93;
    v120 = v17;
    v118 = v5;
    v121 = v90;
    v95 = v90;
LABEL_87:
    a4 = v124;
    outlined init with copy of Prompt.Turn(v5, v124, type metadata accessor for Prompt.Attachment);
    v96 = v125;
    outlined init with copy of Prompt.Turn(v95, v125, type metadata accessor for Prompt.Attachment);
    v97 = *(v94 + 24);
    v98 = *(a4 + v97);
    v99 = *(v96 + v97);
    outlined destroy of Prompt.ResponseFormat(v96, type metadata accessor for Prompt.Attachment);
    outlined destroy of Prompt.ResponseFormat(a4, type metadata accessor for Prompt.Attachment);
    if (v98 < v99)
    {
      break;
    }

    v94 = v126;
LABEL_85:
    v17 = v120 + 1;
    v90 = v121 + v114;
    v93 = v119 - 1;
    v5 = v118 + v114;
    v43 = v117;
    if (v120 + 1 != v117)
    {
      goto LABEL_86;
    }

    v9 = v108;
    v6 = v109;
    a3 = v113;
    v20 = v110;
    if (v117 < v110)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v19 = v116;
    }

    else
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v116 + 2) + 1, 1, v116);
    }

    a4 = *(v19 + 2);
    v44 = *(v19 + 3);
    v5 = a4 + 1;
    if (a4 >= v44 >> 1)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), a4 + 1, 1, v19);
    }

    *(v19 + 2) = v5;
    v45 = &v19[16 * a4];
    *(v45 + 4) = v20;
    *(v45 + 5) = v43;
    v46 = *v112;
    if (!*v112)
    {
      goto LABEL_135;
    }

    v117 = v43;
    if (a4)
    {
      while (2)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          v52 = &v19[16 * v5 + 32];
          v53 = *(v52 - 64);
          v54 = *(v52 - 56);
          v58 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          if (v58)
          {
            goto LABEL_112;
          }

          v57 = *(v52 - 48);
          v56 = *(v52 - 40);
          v58 = __OFSUB__(v56, v57);
          v50 = v56 - v57;
          v51 = v58;
          if (v58)
          {
            goto LABEL_113;
          }

          v59 = &v19[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v58 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v58)
          {
            goto LABEL_115;
          }

          v58 = __OFADD__(v50, v62);
          v63 = v50 + v62;
          if (v58)
          {
            goto LABEL_118;
          }

          if (v63 >= v55)
          {
            v81 = &v19[16 * v47 + 32];
            v83 = *v81;
            v82 = *(v81 + 1);
            v58 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v58)
            {
              goto LABEL_122;
            }

            if (v50 < v84)
            {
              v47 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v51)
            {
              goto LABEL_114;
            }

            v64 = &v19[16 * v5];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_117;
            }

            v70 = &v19[16 * v47 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_121;
            }

            if (v68 + v73 < v50)
            {
              goto LABEL_66;
            }

            if (v50 < v73)
            {
              v47 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v48 = *(v19 + 4);
            v49 = *(v19 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
            goto LABEL_52;
          }

          v74 = &v19[16 * v5];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_66:
          if (v69)
          {
            goto LABEL_116;
          }

          v77 = &v19[16 * v47];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_119;
          }

          if (v80 < v68)
          {
            break;
          }
        }

        a4 = v47 - 1;
        if (v47 - 1 >= v5)
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

        v85 = v19;
        v86 = *&v19[16 * a4 + 32];
        v5 = *&v19[16 * v47 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + *(v9 + 72) * v86, *a3 + *(v9 + 72) * *&v19[16 * v47 + 32], *a3 + *(v9 + 72) * v5, v46);
        if (v6)
        {
          goto LABEL_108;
        }

        if (v5 < v86)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew()(v85);
        }

        if (a4 >= *(v85 + 2))
        {
          goto LABEL_111;
        }

        v87 = &v85[16 * a4];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v127 = v85;
        specialized Array.remove(at:)(v47);
        v19 = v127;
        v5 = *(v127 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v17 = a3[1];
    v18 = v117;
    a4 = v111;
    if (v117 >= v17)
    {
      goto LABEL_96;
    }
  }

  if (v122)
  {
    v100 = v123;
    outlined init with take of Prompt.ResponseFormat(v5, v123, type metadata accessor for Prompt.Attachment);
    v94 = v126;
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of Prompt.ResponseFormat(v100, v95, type metadata accessor for Prompt.Attachment);
    v95 += v92;
    v5 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
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
}

uint64_t specialized static Prompt.Turn.Segment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v90[0] = v4;
  v90[1] = v3;
  v90[2] = v6;
  v90[3] = v5;
  v90[4] = v8;
  v90[5] = v7;
  v91 = v9;
  v92 = v10;
  v93 = v11;
  v94 = v12;
  v95 = v13;
  v96 = v14;
  v97 = v15;
  if (v9)
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 | (v6 >> 60) & 3;
  v98 = v16;
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      if (v16)
      {
        v31 = 4;
      }

      else
      {
        v31 = 0;
      }

      if ((v31 | (v12 >> 60) & 3) == 2)
      {
        v56 = v8;
        v57 = v3;
        v32 = v10;
        v73 = v10;
        v77 = v11;
        v33 = v16;
        v34 = v15;
        v35 = v14;
        v80 = v14;
        v85 = v12;
        v61 = v7;
        v36 = v13;
        v65 = v13;
        v37 = v12;
        v55 = v5;
        v38 = v11;
        type metadata accessor for NSObject();
        v39 = v35;
        LOBYTE(v35) = v33;
        outlined copy of Prompt.Turn.Segment(v32, v38, v37, v36, v39, v34, v33);
        outlined copy of Prompt.Turn.Segment(v4, v57, v6, v55, v56, v61, v9);
        outlined copy of Prompt.Turn.Segment(v73, v77, v85, v65, v80, v34, v33);
        outlined copy of Prompt.Turn.Segment(v4, v57, v6, v55, v56, v61, v9);
        v23 = static NSObject.== infix(_:_:)();
        outlined destroy of [Regex2BNF.CharacterPredicate](v90, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMd, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMR);
        outlined consume of Prompt.Turn.Segment(v73, v77, v85, v65, v80, v34, v35);
        v24 = v4;
        v25 = v57;
        v26 = v6;
        v27 = v55;
        v28 = v56;
        v29 = v61;
        goto LABEL_25;
      }

      goto LABEL_45;
    }

    if (v18 == 3)
    {
      if (v16)
      {
        v19 = 4;
      }

      else
      {
        v19 = 0;
      }

      if ((v19 | (v12 >> 60) & 3) == 3)
      {
        LOBYTE(v89[0]) = v4 & 1;
        v89[1] = v3;
        v89[2] = v6 & 0xCFFFFFFFFFFFFFFFLL;
        v89[3] = v5;
        v89[4] = v8;
        v89[5] = v7;
        LOBYTE(v88[0]) = v10 & 1;
        v88[1] = v11;
        v88[2] = v12 & 0xCFFFFFFFFFFFFFFFLL;
        v88[3] = v13;
        v88[4] = v14;
        v88[5] = v15;
        v72 = v10;
        v76 = v11;
        v79 = v14;
        v84 = v12;
        v20 = v13;
        v21 = v14;
        v22 = v15;
        v62 = v15;
        v68 = v16;
        outlined copy of Prompt.Turn.Segment(v10, v11, v12, v13, v14, v15, v16);
        outlined copy of Prompt.Turn.Segment(v4, v3, v6, v5, v8, v7, v9);
        outlined copy of Prompt.Turn.Segment(v72, v76, v84, v20, v21, v22, v68);
        outlined copy of Prompt.Turn.Segment(v4, v3, v6, v5, v8, v7, v9);
        v23 = specialized static Prompt.ImageEmbeddingAttachment.== infix(_:_:)(v89, v88);
        outlined destroy of [Regex2BNF.CharacterPredicate](v90, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMd, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMR);
        outlined consume of Prompt.Turn.Segment(v72, v76, v84, v20, v79, v62, v68);
        v24 = v4;
        v25 = v3;
        v26 = v6;
        v27 = v5;
        v28 = v8;
        v29 = v7;
LABEL_25:
        outlined consume of Prompt.Turn.Segment(v24, v25, v26, v27, v28, v29, v9);
        return v23 & 1;
      }

      goto LABEL_45;
    }

    if (v16)
    {
      v40 = 4;
    }

    else
    {
      v40 = 0;
    }

    if ((v40 | (v12 >> 60) & 3) == 4)
    {
      v41 = *(v4 + 2);
      if (v41 == *(v10 + 2))
      {
        if (v41 && v4 != v10)
        {
          v42 = v4 + 16;
          v43 = v10 + 16;
          while (*v42 == *v43)
          {
            ++v42;
            ++v43;
            if (!--v41)
            {
              goto LABEL_36;
            }
          }

          goto LABEL_45;
        }

LABEL_36:
        v74 = v10;
        v44 = v11;
        v69 = v16;
        v63 = v15;
        v81 = v14;
        v45 = v13;
        v46 = v12;
        v58 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v3, v11);
        outlined copy of Prompt.Turn.Segment(v74, v44, v46, v45, v81, v63, v69);
        outlined copy of Prompt.Turn.Segment(v4, v3, v6, v5, v8, v7, v9);
        outlined destroy of [Regex2BNF.CharacterPredicate](v90, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMd, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMR);
        if ((v58 & 1) == 0)
        {
          goto LABEL_46;
        }

LABEL_44:
        v23 = 1;
        return v23 & 1;
      }
    }

    goto LABEL_45;
  }

  if (v18)
  {
    if (v16)
    {
      v47 = 4;
    }

    else
    {
      v47 = 0;
    }

    if ((v47 | (v12 >> 60) & 3) == 1 && ((v10 ^ v4) & 1) == 0)
    {
      v48 = v10;
      v75 = v10;
      v78 = v11;
      v82 = v14;
      v86 = v12;
      v49 = v13;
      v64 = v15;
      v66 = v13;
      v50 = v15;
      v70 = v16;
      outlined copy of Prompt.Turn.Segment(v10, v11, v12, v13, v14, v15, v16);
      outlined copy of Prompt.Turn.Segment(v4, v3, v6, v5, v8, v7, v9);
      outlined copy of Prompt.Turn.Segment(v48, v78, v86, v49, v82, v50, v70);
      outlined copy of Prompt.Turn.Segment(v4, v3, v6, v5, v8, v7, v9);
      v59 = specialized static Data.== infix(_:_:)(v3, v6 & 0xCFFFFFFFFFFFFFFFLL, v78, v86 & 0xCFFFFFFFFFFFFFFFLL);
      outlined destroy of [Regex2BNF.CharacterPredicate](v90, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMd, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMR);
      outlined consume of Prompt.Turn.Segment(v75, v78, v86, v66, v82, v64, v70);
      outlined consume of Prompt.Turn.Segment(v4, v3, v6, v5, v8, v7, v9);
      if (!v59)
      {
LABEL_46:
        v23 = 0;
        return v23 & 1;
      }

      goto LABEL_44;
    }

LABEL_45:
    outlined copy of Prompt.Turn.Segment(v10, v11, v12, v13, v14, v15, v16);
    outlined copy of Prompt.Turn.Segment(v4, v3, v6, v5, v8, v7, v9);
    outlined destroy of [Regex2BNF.CharacterPredicate](v90, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMd, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMR);
    goto LABEL_46;
  }

  if (v16)
  {
    v30 = 4;
  }

  else
  {
    v30 = 0;
  }

  if (v30 | (v12 >> 60) & 3)
  {
    goto LABEL_45;
  }

  if (v4 == v10 && v3 == v11)
  {
    outlined copy of Prompt.Turn.Segment(v4, v3, v12, v13, v14, v15, v16);
    outlined copy of Prompt.Turn.Segment(v4, v3, v6, v5, v8, v7, v9);
    outlined destroy of [Regex2BNF.CharacterPredicate](v90, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMd, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMR);
    v23 = 1;
    return v23 & 1;
  }

  v52 = v10;
  v53 = v11;
  v83 = v14;
  v87 = v12;
  v67 = v13;
  v71 = v16;
  v54 = v15;
  v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of Prompt.Turn.Segment(v52, v53, v87, v67, v83, v54, v71);
  outlined copy of Prompt.Turn.Segment(v4, v3, v6, v5, v8, v7, v9);
  outlined destroy of [Regex2BNF.CharacterPredicate](v90, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMd, &_s15TokenGeneration6PromptV4TurnV7SegmentO_AGtMR);
  return v60 & 1;
}

BOOL specialized static Prompt.ToolCall.Kind.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = v2 == v4 && v3 == v5;
    if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL specialized static Prompt.ToolCall.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14 = a2[6];
  v15 = a1[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v7 || v4 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v3 != v9 || v5 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v6 >> 60 == 15)
  {
    if (v11 >> 60 == 15)
    {
      outlined copy of Data?(v15, v6);
      outlined copy of Data?(v14, v11);
      outlined consume of Data?(v15, v6);
      return 1;
    }

    goto LABEL_14;
  }

  if (v11 >> 60 == 15)
  {
LABEL_14:
    outlined copy of Data?(v15, v6);
    outlined copy of Data?(v14, v11);
    outlined consume of Data?(v15, v6);
    outlined consume of Data?(v14, v11);
    return 0;
  }

  outlined copy of Data?(v15, v6);
  outlined copy of Data?(v14, v11);
  v13 = specialized static Data.== infix(_:_:)(v15, v6, v14, v11);
  outlined consume of Data?(v14, v11);
  outlined consume of Data?(v15, v6);
  return v13;
}

BOOL specialized static Prompt.Turn.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v59 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v59 - v9;
  v10 = type metadata accessor for Prompt.ResponseFormat(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSg_AFtMd, &_s15TokenGeneration6PromptV14ResponseFormatVSg_AFtMR);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - v18;
  if (*a1 != *a2)
  {
    return 0;
  }

  v59 = v5;
  v60 = v4;
  v20 = type metadata accessor for Prompt.Turn(0);
  v21 = *(v20 + 20);
  v22 = *(v17 + 48);
  v61 = v20;
  v62 = a1;
  outlined init with copy of (String, Any)(&a1[v21], v19, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v23 = &a2[v21];
  v24 = a2;
  outlined init with copy of (String, Any)(v23, &v19[v22], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v25 = *(v11 + 48);
  if (v25(v19, 1, v10) != 1)
  {
    outlined init with copy of (String, Any)(v19, v16, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
    if (v25(&v19[v22], 1, v10) != 1)
    {
      outlined init with take of Prompt.ResponseFormat(&v19[v22], v13, type metadata accessor for Prompt.ResponseFormat);
      v26 = specialized static Prompt.ResponseFormat.Kind.== infix(_:_:)(v16, v13);
      outlined destroy of Prompt.ResponseFormat(v13, type metadata accessor for Prompt.ResponseFormat);
      outlined destroy of Prompt.ResponseFormat(v16, type metadata accessor for Prompt.ResponseFormat);
      outlined destroy of [Regex2BNF.CharacterPredicate](v19, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
      if ((v26 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    outlined destroy of Prompt.ResponseFormat(v16, type metadata accessor for Prompt.ResponseFormat);
LABEL_7:
    outlined destroy of [Regex2BNF.CharacterPredicate](v19, &_s15TokenGeneration6PromptV14ResponseFormatVSg_AFtMd, &_s15TokenGeneration6PromptV14ResponseFormatVSg_AFtMR);
    return 0;
  }

  if (v25(&v19[v22], 1, v10) != 1)
  {
    goto LABEL_7;
  }

  outlined destroy of [Regex2BNF.CharacterPredicate](v19, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
LABEL_9:
  v28 = v61;
  v27 = v62;
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ29GenerativeFunctionsFoundation4ToolV_Tt1g5(*&v62[v61[6]], *&a2[v61[6]]))
  {
    v29 = v28[7];
    v30 = v66;
    v31 = *(v65 + 48);
    outlined init with copy of (String, Any)(&v27[v29], v66, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    outlined init with copy of (String, Any)(&v24[v29], v30 + v31, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v33 = v59;
    v32 = v60;
    v34 = *(v59 + 48);
    if (v34(v30, 1, v60) == 1)
    {
      if (v34(v30 + v31, 1, v32) == 1)
      {
        outlined destroy of [Regex2BNF.CharacterPredicate](v30, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
LABEL_17:
        if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV4TurnV7SegmentO_Tt1g5(*&v27[v28[8]], *&v24[v28[8]]) & 1) == 0 || v27[v28[9]] != v24[v28[9]] || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV8ToolCallV_Tt1g5(*&v27[v28[10]], *&v24[v28[10]]) & 1) == 0)
        {
          return 0;
        }

        v39 = v28[11];
        v40 = &v27[v39];
        v41 = v24;
        v42 = *&v27[v39];
        v43 = *&v27[v39 + 8];
        v45 = v40[2];
        v44 = v40[3];
        v46 = v40[4];
        v47 = &v41[v39];
        v48 = *v47;
        v49 = v47[1];
        v51 = v47[2];
        v50 = v47[3];
        v52 = v47[4];
        if (v43)
        {
          if (v49)
          {
            if (v42 == v48 && v43 == v49 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v45 == v51 && v44 == v50 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
            {
              outlined copy of Prompt.ToolCallResult?(v42, v43, v45, v44, v46);
              outlined copy of Prompt.ToolCallResult?(v48, v49, v51, v50, v52);
              outlined copy of Prompt.ToolCallResult?(v42, v43, v45, v44, v46);
              LODWORD(v66) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV4TurnV7SegmentO_Tt1g5(v46, v52);
              outlined consume of Prompt.ToolCallResult?(v48, v49, v51, v50, v52);

              outlined consume of Prompt.ToolCallResult?(v42, v43, v45, v44, v46);
              return (v66 & 1) != 0;
            }

            outlined copy of Prompt.ToolCallResult?(v42, v43, v45, v44, v46);
            outlined copy of Prompt.ToolCallResult?(v48, v49, v51, v50, v52);
            outlined copy of Prompt.ToolCallResult?(v42, v43, v45, v44, v46);
            outlined consume of Prompt.ToolCallResult?(v48, v49, v51, v50, v52);

            v54 = v42;
            v55 = v43;
            v56 = v45;
            v57 = v44;
            v58 = v46;
            goto LABEL_35;
          }

          outlined copy of Prompt.ToolCallResult?(v42, v43, v40[2], v40[3], v40[4]);
          outlined copy of Prompt.ToolCallResult?(v48, 0, v51, v50, v52);
          outlined copy of Prompt.ToolCallResult?(v42, v43, v45, v44, v46);
        }

        else
        {
          outlined copy of Prompt.ToolCallResult?(v42, 0, v40[2], v40[3], v40[4]);
          if (!v49)
          {
            outlined copy of Prompt.ToolCallResult?(v48, 0, v51, v50, v52);
            outlined consume of Prompt.ToolCallResult?(v42, 0, v45, v44, v46);
            return 1;
          }

          outlined copy of Prompt.ToolCallResult?(v48, v49, v51, v50, v52);
        }

        outlined consume of Prompt.ToolCallResult?(v42, v43, v45, v44, v46);
        v54 = v48;
        v55 = v49;
        v56 = v51;
        v57 = v50;
        v58 = v52;
LABEL_35:
        outlined consume of Prompt.ToolCallResult?(v54, v55, v56, v57, v58);
        return 0;
      }

      goto LABEL_15;
    }

    v35 = v64;
    outlined init with copy of (String, Any)(v30, v64, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    if (v34(v30 + v31, 1, v32) == 1)
    {
      (*(v33 + 8))(v35, v32);
LABEL_15:
      outlined destroy of [Regex2BNF.CharacterPredicate](v30, &_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
      return 0;
    }

    v36 = v63;
    (*(v33 + 32))(v63, v30 + v31, v32);
    lazy protocol witness table accessor for type Tool and conformance Tool(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
    v37 = dispatch thunk of static Equatable.== infix(_:_:)();
    v38 = *(v33 + 8);
    v38(v36, v32);
    v38(v35, v32);
    outlined destroy of [Regex2BNF.CharacterPredicate](v30, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    if (v37)
    {
      goto LABEL_17;
    }
  }

  return 0;
}

uint64_t lazy protocol witness table accessor for type Tool and conformance Tool(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of Prompt.ResponseFormat(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of Prompt.Turn(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Prompt.ResponseFormat(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined consume of PartialTurnSpan #1 in Prompt.turns()?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

BOOL partial apply for closure #1 in Prompt.turns()(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + *(type metadata accessor for Prompt.Attachment(0) + 24));
  return *(v2 + 40) < v3 && v3 < *(v2 + 48);
}

unint64_t lazy protocol witness table accessor for type Prompt.Turn.Role and conformance Prompt.Turn.Role()
{
  result = lazy protocol witness table cache variable for type Prompt.Turn.Role and conformance Prompt.Turn.Role;
  if (!lazy protocol witness table cache variable for type Prompt.Turn.Role and conformance Prompt.Turn.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.Turn.Role and conformance Prompt.Turn.Role);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.Turn.Segment and conformance Prompt.Turn.Segment()
{
  result = lazy protocol witness table cache variable for type Prompt.Turn.Segment and conformance Prompt.Turn.Segment;
  if (!lazy protocol witness table cache variable for type Prompt.Turn.Segment and conformance Prompt.Turn.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.Turn.Segment and conformance Prompt.Turn.Segment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ToolCall.Kind and conformance Prompt.ToolCall.Kind()
{
  result = lazy protocol witness table cache variable for type Prompt.ToolCall.Kind and conformance Prompt.ToolCall.Kind;
  if (!lazy protocol witness table cache variable for type Prompt.ToolCall.Kind and conformance Prompt.ToolCall.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ToolCall.Kind and conformance Prompt.ToolCall.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ToolCall.Function and conformance Prompt.ToolCall.Function()
{
  result = lazy protocol witness table cache variable for type Prompt.ToolCall.Function and conformance Prompt.ToolCall.Function;
  if (!lazy protocol witness table cache variable for type Prompt.ToolCall.Function and conformance Prompt.ToolCall.Function)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ToolCall.Function and conformance Prompt.ToolCall.Function);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall()
{
  result = lazy protocol witness table cache variable for type Prompt.ToolCall and conformance Prompt.ToolCall;
  if (!lazy protocol witness table cache variable for type Prompt.ToolCall and conformance Prompt.ToolCall)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ToolCall and conformance Prompt.ToolCall);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Prompt.ToolCallResult and conformance Prompt.ToolCallResult()
{
  result = lazy protocol witness table cache variable for type Prompt.ToolCallResult and conformance Prompt.ToolCallResult;
  if (!lazy protocol witness table cache variable for type Prompt.ToolCallResult and conformance Prompt.ToolCallResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.ToolCallResult and conformance Prompt.ToolCallResult);
  }

  return result;
}

void type metadata completion function for Prompt.Turn(uint64_t a1)
{
  type metadata accessor for Prompt.ResponseFormat?(319, &lazy cache variable for type metadata for Prompt.ResponseFormat?, type metadata accessor for Prompt.ResponseFormat, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Prompt.ResponseFormat?(319, &lazy cache variable for type metadata for [Tool], MEMORY[0x1E69A0DF0], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Prompt.ResponseFormat?(319, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [Prompt.Turn.Segment](319, &lazy cache variable for type metadata for [Prompt.Turn.Segment], &type metadata for Prompt.Turn.Segment, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [Prompt.Turn.Segment](319, &lazy cache variable for type metadata for [Prompt.ToolCall], &type metadata for Prompt.ToolCall, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for [Prompt.Turn.Segment](319, &lazy cache variable for type metadata for Prompt.ToolCallResult?, &type metadata for Prompt.ToolCallResult, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Prompt.ResponseFormat?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Prompt.Turn.Segment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FC && *(a1 + 49))
  {
    return (*a1 + 1020);
  }

  v3 = ((*(a1 + 16) >> 60) & 3 | (4 * *(a1 + 48))) ^ 0x3FF;
  if (v3 >= 0x3FB)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Prompt.Turn.Segment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 1020;
    if (a3 >= 0x3FC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (-a2 & 3) << 60;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 48) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for Prompt.Turn.Segment(uint64_t result, char a2)
{
  *(result + 16) = *(result + 16) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
  *(result + 48) = (a2 & 4) != 0;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for Prompt.ToolCall(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for Prompt.ToolCall(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Prompt.ToolCallResult(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Prompt.ToolCallResult(uint64_t result, int a2, int a3)
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

void type metadata completion function for TurnDelimiter #1 in Prompt.turns()(uint64_t a1)
{
  type metadata accessor for [Prompt.Turn.Segment](319, &lazy cache variable for type metadata for Prompt.Turn.Role?, &type metadata for Prompt.Turn.Role, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Prompt.Turn.Segment](319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Prompt.ResponseFormat?(319, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [Prompt.Turn.Segment](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata completion function for TurnSpan #1 in Prompt.turns()(uint64_t a1)
{
  type metadata accessor for [Prompt.Turn.Segment](319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Prompt.ResponseFormat?(319, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t outlined assign with copy of Locale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t CompletionPrompt.init(_:)(uint64_t *a1)
{
  v2 = type metadata accessor for Prompt();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = a1[3];
  v6 = *a1;
  v7 = *(a1 + 1);
  v8 = v4;
  Prompt.init(_:)(&v6, &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return CompletionPrompt.init(_:)();
}

uint64_t Prompt.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v120 = &v99 - v4;
  v5 = type metadata accessor for Prompt.AttachmentContent(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v119 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV5ValueOSgMd, &_s9PromptKit0A0V9ComponentV5ValueOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v118 = &v99 - v8;
  v128 = type metadata accessor for Prompt.Component.Value();
  v121 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v117 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v116 = &v99 - v11;
  v12 = type metadata accessor for Prompt.Component();
  v13 = *(v12 - 8);
  v133 = v12;
  v134 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v115 = &v99 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v114 = &v99 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v126 = &v99 - v20;
  v132 = type metadata accessor for Prompt.Delimiter(0);
  v21 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v123 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v131 = &v99 - v24;
  v130 = type metadata accessor for Prompt.Attachment(0);
  v25 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v122 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v129 = &v99 - v28;
  v138 = type metadata accessor for Prompt.PromptMarker(0);
  v29 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v127 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v136 = &v99 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v99 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v99 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v99 - v40;
  v42 = a1[1];
  v137 = *a1;
  v124 = v42;
  v44 = a1[2];
  v43 = a1[3];
  v45 = *(v44 + 16);
  v112 = v43;
  v106 = v44;
  if (!v45)
  {
    v48 = MEMORY[0x1E69E7CC0];
    v51 = v124;
    v52 = *(v43 + 16);
    if (!v52)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  v135 = v25;
  v46 = v44 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v47 = *(v21 + 72);

  v48 = MEMORY[0x1E69E7CC0];
  do
  {
    _s15TokenGeneration6PromptV4TurnVWOcTm_0(v46, v41, type metadata accessor for Prompt.Delimiter);
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1, v48);
    }

    v50 = v48[2];
    v49 = v48[3];
    if (v50 >= v49 >> 1)
    {
      v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v48);
    }

    v48[2] = v50 + 1;
    _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v41, v48 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v50, type metadata accessor for Prompt.PromptMarker);
    v46 += v47;
    --v45;
  }

  while (v45);

  v51 = v124;
  v43 = v112;
  v25 = v135;
  v52 = *(v112 + 16);
  if (v52)
  {
LABEL_11:
    v53 = v43 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v54 = *(v25 + 72);

    do
    {
      _s15TokenGeneration6PromptV4TurnVWOcTm_0(v53, v38, type metadata accessor for Prompt.Attachment);
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1, v48);
      }

      v56 = v48[2];
      v55 = v48[3];
      if (v56 >= v55 >> 1)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v48);
      }

      v48[2] = v56 + 1;
      _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v38, v48 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v56, type metadata accessor for Prompt.PromptMarker);
      v53 += v54;
      --v52;
    }

    while (v52);
  }

LABEL_18:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = v136;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_69:
    v48 = specialized _ArrayBuffer._consumeAndCreateNew()(v48);
  }

  v59 = v48[2];
  v60 = v48 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
  v139[0] = v60;
  v139[1] = v59;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v139);
  v61 = v48[2];
  v62 = HIBYTE(v51) & 0xF;
  if (v61)
  {
    v102 = v51 & 0x2000000000000000;
    v101 = v51 & 0x1000000000000000;
    v63 = *(v29 + 72);
    v64 = v137 & 0xFFFFFFFFFFFFLL;
    v103 = HIBYTE(v51) & 0xF;
    v100 = v137 & 0xFFFFFFFFFFFFLL;
    if ((v51 & 0x2000000000000000) != 0)
    {
      v64 = HIBYTE(v51) & 0xF;
    }

    v99 = v137 & 0x800000000000000;
    v65 = 7;
    if (((v51 >> 60) & ((v137 & 0x800000000000000) == 0)) != 0)
    {
      v65 = 11;
    }

    v135 = v65 | (v64 << 16);
    v125 = v134 + 32;
    v113 = (v121 + 48);
    v111 = (v121 + 32);
    v110 = (v121 + 16);
    v109 = (v121 + 8);
    v108 = *MEMORY[0x1E69C62D8];
    v66 = MEMORY[0x1E69E7CC0];
    v107 = (v121 + 104);
    v29 = 15;
    v121 = v63;
    while (1)
    {
      _s15TokenGeneration6PromptV4TurnVWOcTm_0(v60, v35, type metadata accessor for Prompt.PromptMarker);
      _s15TokenGeneration6PromptV4TurnVWOcTm_0(v35, v58, type metadata accessor for Prompt.PromptMarker);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v67 = v58;
        v58 = v131;
        _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v67, v131, type metadata accessor for Prompt.Delimiter);
        v68 = type metadata accessor for Prompt.Delimiter;
      }

      else
      {
        v69 = v58;
        v58 = v129;
        _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v69, v129, type metadata accessor for Prompt.Attachment);
        v68 = type metadata accessor for Prompt.Attachment;
      }

      outlined destroy of Prompt.Turn(v58, v68);
      v70 = String.index(_:offsetBy:limitedBy:)();
      if (v71)
      {
        outlined destroy of Prompt.Turn(v35, type metadata accessor for Prompt.PromptMarker);
      }

      else
      {
        v72 = v70;
        if (v70 >> 14 != v29 >> 14)
        {
          if (v70 >> 14 < v29 >> 14)
          {
            __break(1u);
            goto LABEL_69;
          }

          v73 = String.subscript.getter();
          MEMORY[0x1AC57C040](v73);

          Prompt.Component.init(stringValue:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2] + 1, 1, v66);
          }

          v75 = v66[2];
          v74 = v66[3];
          v51 = v124;
          if (v75 >= v74 >> 1)
          {
            v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v66);
          }

          v66[2] = v75 + 1;
          (*(v134 + 32))(v66 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v75, v126, v133);
        }

        v76 = v127;
        _s15TokenGeneration6PromptV4TurnVWOcTm_0(v35, v127, type metadata accessor for Prompt.PromptMarker);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v79 = v122;
          _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v76, v122, type metadata accessor for Prompt.Attachment);
          v80 = v119;
          _s15TokenGeneration6PromptV4TurnVWOcTm_0(v79, v119, type metadata accessor for Prompt.AttachmentContent);
          v81 = v80;
          v82 = v118;
          Prompt.Component.Value.init(_:)(v81, v118);
          v83 = v128;
          if ((*v113)(v82, 1, v128) == 1)
          {
            outlined destroy of Prompt.Turn(v79, type metadata accessor for Prompt.Attachment);
            outlined destroy of Prompt.Turn(v35, type metadata accessor for Prompt.PromptMarker);
            outlined destroy of [Regex2BNF.CharacterPredicate](v82, &_s9PromptKit0A0V9ComponentV5ValueOSgMd, &_s9PromptKit0A0V9ComponentV5ValueOSgMR);
            v29 = v72;
            v58 = v136;
            v63 = v121;
            goto LABEL_27;
          }

          v88 = v116;
          (*v111)(v116, v82, v83);
          (*v110)(v117, v88, v83);
          v89 = type metadata accessor for Prompt.Component.Privacy();
          (*(*(v89 - 8) + 56))(v120, 1, 1, v89);
          Prompt.Component.init(value:priority:privacy:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2] + 1, 1, v66);
          }

          v63 = v121;
          v91 = v66[2];
          v90 = v66[3];
          v51 = v124;
          if (v91 >= v90 >> 1)
          {
            v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1, v66);
          }

          (*v109)(v116);
          outlined destroy of Prompt.Turn(v122, type metadata accessor for Prompt.Attachment);
          outlined destroy of Prompt.Turn(v35, type metadata accessor for Prompt.PromptMarker);
          v66[2] = v91 + 1;
          (*(v134 + 32))(v66 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v91, v114, v133);
          goto LABEL_55;
        }

        v77 = v76;
        v78 = v123;
        _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v77, v123, type metadata accessor for Prompt.Delimiter);
        if ((*(v78 + *(type metadata accessor for Prompt.SpecialToken(0) + 28)) & 1) == 0)
        {

          v84 = v117;
          SpecialToken.init(identifier:)();
          (*v107)(v84, v108, v128);
          v85 = type metadata accessor for Prompt.Component.Privacy();
          (*(*(v85 - 8) + 56))(v120, 1, 1, v85);
          Prompt.Component.init(value:priority:privacy:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2] + 1, 1, v66);
          }

          v87 = v66[2];
          v86 = v66[3];
          v63 = v121;
          if (v87 >= v86 >> 1)
          {
            v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v66);
          }

          outlined destroy of Prompt.Turn(v123, type metadata accessor for Prompt.Delimiter);
          outlined destroy of Prompt.Turn(v35, type metadata accessor for Prompt.PromptMarker);
          v66[2] = v87 + 1;
          (*(v134 + 32))(v66 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v87, v115, v133);
LABEL_55:
          v29 = v72;
          goto LABEL_26;
        }

        outlined destroy of Prompt.Turn(v78, type metadata accessor for Prompt.Delimiter);
        outlined destroy of Prompt.Turn(v35, type metadata accessor for Prompt.PromptMarker);
        v29 = v72;
      }

LABEL_26:
      v58 = v136;
LABEL_27:
      v60 += v63;
      if (!--v61)
      {

        v62 = v103;
        v92 = v102;
        v93 = v100;
        goto LABEL_58;
      }
    }
  }

  v92 = v51 & 0x2000000000000000;
  v93 = v137 & 0xFFFFFFFFFFFFLL;
  v66 = MEMORY[0x1E69E7CC0];
  v29 = 15;
LABEL_58:
  if (v92)
  {
    v94 = v62;
  }

  else
  {
    v94 = v93;
  }

  if (v29 >> 14 == 4 * v94)
  {

    return Prompt.init(components:)();
  }

  if (4 * v94 < v29 >> 14)
  {
    __break(1u);
    goto LABEL_71;
  }

  v95 = String.subscript.getter();
  MEMORY[0x1AC57C040](v95);

  v29 = v104;
  Prompt.Component.init(stringValue:)();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_71:
    v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2] + 1, 1, v66);
  }

  v97 = v66[2];
  v96 = v66[3];
  if (v97 >= v96 >> 1)
  {
    v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1, v66);
  }

  v66[2] = v97 + 1;
  (*(v134 + 32))(v66 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v97, v29, v133);
  return Prompt.init(components:)();
}

uint64_t ChatMessagesPrompt.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Prompt.Turn(0);
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v32 = type metadata accessor for ChatMessagePrompt();
  v10 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  v16 = a1[2];
  v15 = a1[3];
  v33 = v13;
  v34 = v14;
  v35 = v16;
  v36 = v15;
  v17 = Prompt.turns()();

  v18 = v17[2];
  if (v18)
  {
    v30 = a2;
    v33 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v19 = v33;
    v20 = *(v31 + 80);
    v29 = v17;
    v21 = v17 + ((v20 + 32) & ~v20);
    v31 = *(v31 + 72);
    do
    {
      _s15TokenGeneration6PromptV4TurnVWOcTm_0(v21, v9, type metadata accessor for Prompt.Turn);
      _s15TokenGeneration6PromptV4TurnVWOcTm_0(v9, v6, type metadata accessor for Prompt.Turn);
      ChatMessagePrompt.init(_:)(v6, v12);
      outlined destroy of Prompt.Turn(v9, type metadata accessor for Prompt.Turn);
      v33 = v19;
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v19 = v33;
      }

      *(v19 + 16) = v23 + 1;
      (*(v10 + 32))(v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v23, v12, v32);
      v21 += v31;
      --v18;
    }

    while (v18);

    v24 = v30;
    ChatMessagesPrompt.init(_:)();
    v25 = type metadata accessor for ChatMessagesPrompt();
    return (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  }

  else
  {

    v27 = type metadata accessor for ChatMessagesPrompt();
    v28 = *(*(v27 - 8) + 56);

    return v28(a2, 1, 1, v27);
  }
}

uint64_t ChatMessagePrompt.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v123 = v100 - v4;
  v121 = type metadata accessor for ChatMessageRole();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v122 = v100 - v7;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  MEMORY[0x1EEE9AC00](v105);
  v104 = v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v128 = v100 - v10;
  v114 = type metadata accessor for Prompt.ResponseFormat(0);
  v127 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v115 = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for RunnableConfigurationStorage();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v116 = v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v130 = v100 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V10ToolResultVSgMd, &_s9PromptKit0A0V10ToolResultVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v107 = v100 - v16;
  v109 = type metadata accessor for Prompt.ToolResult();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v103 = v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for Prompt.ToolCall.Content();
  v18 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v137 = v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for Prompt.ToolCall();
  v140 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  *&v143 = v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v112 = v100 - v22;
  v111 = type metadata accessor for Prompt.Component.Value();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v102 = (v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v106 = (v100 - v25);
  v26 = type metadata accessor for Prompt.Component();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for Prompt();
  v126 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v125 = v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v129 = v100 - v32;
  v131 = type metadata accessor for Prompt.Turn(0);
  v33 = *&a1[v131[8]];
  v34 = *(v33 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  v139 = v27;
  if (v34)
  {
    v151 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
    v36 = v151;
    v37 = (v33 + 80);
    do
    {
      v38 = *(v37 - 5);
      v39 = *(v37 - 4);
      v40 = *(v37 - 3);
      v41 = *(v37 - 2);
      v42 = *(v37 - 1);
      v43 = *v37;
      v144 = *(v37 - 6);
      v145 = v38;
      v146 = v39;
      v147 = v40;
      v148 = v41;
      v149 = v42;
      v150 = v43;
      outlined copy of Prompt.Turn.Segment(v144, v38, v39, v40, v41, v42, v43);
      Prompt.Component.init(_:)(&v144, v29);
      v151 = v36;
      v45 = *(v36 + 16);
      v44 = *(v36 + 24);
      if (v45 >= v44 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
        v36 = v151;
      }

      *(v36 + 16) = v45 + 1;
      v27 = v139;
      (*(v139 + 32))(v36 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v139 + 72) * v45, v29, v26);
      v37 += 56;
      --v34;
    }

    while (v34);
    v35 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
  }

  v151 = v36;
  v46 = v131;
  v47 = *&a1[v131[10]];
  v48 = *(v47 + 16);
  v113 = a1;
  if (v48)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
    v100[1] = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_1A8FC9400;
    v144 = v35;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48, 0);
    v49 = v144;
    v135 = *MEMORY[0x1E69C62B8];
    v133 = v140 + 32;
    v134 = (v18 + 104);
    v50 = v47 + 48;
    v51 = v143;
    do
    {
      v142 = v49;
      *&v143 = v48;
      v141 = *(v50 - 16);
      v52 = *(v50 + 32);
      v53 = *(v50 + 40);

      outlined copy of Data?(v52, v53);

      v54 = v137;
      Prompt.ToolCall.Function.init(name:arguments:)();
      (*v134)(v54, v135, v138);
      Prompt.ToolCall.init(id:content:)();

      v55 = v53;
      v49 = v142;
      outlined consume of Data?(v52, v55);
      v144 = v49;
      v57 = v49[2];
      v56 = v49[3];
      if (v57 >= v56 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1);
        v49 = v144;
      }

      v49[2] = v57 + 1;
      (*(v140 + 32))(v49 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v57, v51, v136);
      v50 += 64;
      v48 = v143 - 1;
    }

    while (v143 != 1);
    v58 = v106;
    *v106 = v49;
    (*(v110 + 104))(v58, *MEMORY[0x1E69C6340], v111);
    v59 = type metadata accessor for Prompt.Component.Privacy();
    (*(*(v59 - 8) + 56))(v112, 1, 1, v59);
    v60 = v101;
    Prompt.Component.init(value:priority:privacy:)();
    specialized Array.append<A>(contentsOf:)(v60);
    a1 = v113;
    v46 = v131;
  }

  v61 = &a1[v46[11]];
  v62 = *(v61 + 1);
  v63 = v115;
  v64 = v127;
  v65 = v128;
  v66 = v132;
  if (v62)
  {
    v68 = *(v61 + 3);
    v67 = *(v61 + 4);
    v69 = *(v61 + 2);
    v144 = *v61;
    v145 = v62;
    v146 = v69;
    v147 = v68;
    v148 = v67;

    v70 = v107;
    Prompt.ToolResult.init(_:)(&v144, v107);
    v71 = v108;
    v72 = v109;
    if ((*(v108 + 48))(v70, 1, v109) == 1)
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v70, &_s9PromptKit0A0V10ToolResultVSgMd, &_s9PromptKit0A0V10ToolResultVSgMR);
    }

    else
    {
      v73 = v103;
      (*(v71 + 32))(v103, v70, v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
      v74 = v71;
      v75 = swift_allocObject();
      v143 = xmmword_1A8FC9400;
      *(v75 + 16) = xmmword_1A8FC9400;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V10ToolResultVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V10ToolResultVGMR);
      v76 = v63;
      v77 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v78 = swift_allocObject();
      *(v78 + 16) = v143;
      (*(v74 + 16))(v78 + v77, v73, v72);
      v79 = v102;
      *v102 = v78;
      (*(v110 + 104))(v79, *MEMORY[0x1E69C62C8], v111);
      v80 = type metadata accessor for Prompt.Component.Privacy();
      (*(*(v80 - 8) + 56))(v112, 1, 1, v80);
      v64 = v127;
      v63 = v76;
      Prompt.Component.init(value:priority:privacy:)();
      specialized Array.append<A>(contentsOf:)(v75);
      a1 = v113;
      (*(v74 + 8))(v73, v72);
    }

    v66 = v132;
  }

  if (a1[v46[9]] == 1)
  {
    if (*(v151 + 16))
    {
      v81 = v63;
      v82 = v125;
      v83 = v151;
      Prompt.init(_:)();
      v84 = Prompt.components.getter();
      v85 = v82;
      v63 = v81;
      (*(v126 + 8))(v85, v66);
      v144 = v84;
      specialized Array.append<A>(contentsOf:)(v83);
      Prompt.init(components:)();
    }

    else
    {

      Prompt.init(_:)();
    }

    v65 = v128;
  }

  else
  {
    Prompt.init(components:)();
  }

  RunnableConfigurationStorage.init()();
  v86 = *&a1[v46[6]];
  if (v86[2])
  {
    if (one-time initialization token for toolsInjectDefinitionsKey != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for GenerativeConfigurationKey();
    __swift_project_value_buffer(v87, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
    v144 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGSgMd, _sSay29GenerativeFunctionsFoundation4ToolVGSgMR);
    RunnableConfigurationStorage.set<A>(_:value:)();
  }

  outlined init with copy of (String, Any)(&a1[v46[5]], v65, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v88 = v114;
  if ((*(v64 + 48))(v65, 1, v114) == 1)
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v65, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  }

  else
  {
    _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v65, v63, type metadata accessor for Prompt.ResponseFormat);
    v89 = v104;
    _s15TokenGeneration6PromptV4TurnVWOcTm_0(v63, v104, type metadata accessor for Prompt.ResponseFormat);
    (*(v64 + 56))(v89, 0, 1, v88);
    if (one-time initialization token for schemaInjectDefinitionKey != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for GenerativeConfigurationKey();
    __swift_project_value_buffer(v90, static GenerativeConfigurationKey.schemaInjectDefinitionKey);
    RunnableConfigurationStorage.set<A>(_:value:)();
    outlined destroy of [Regex2BNF.CharacterPredicate](v89, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
    outlined destroy of Prompt.Turn(v63, type metadata accessor for Prompt.ResponseFormat);
  }

  v91 = v120;
  v92 = v119;
  v93 = v121;
  (*(v120 + 104))(v119, **(&unk_1E785E560 + *a1), v121);
  (*(v91 + 32))(v122, v92, v93);
  v94 = v126;
  v95 = v129;
  (*(v126 + 16))(v125, v129, v66);
  outlined init with copy of (String, Any)(&a1[v131[7]], v123, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v96 = v117;
  v97 = v130;
  v98 = v118;
  (*(v117 + 16))(v116, v130, v118);
  ChatMessagePrompt.init(role:prompt:locale:configurationStorage:)();
  (*(v96 + 8))(v97, v98);
  (*(v94 + 8))(v95, v132);
  return outlined destroy of Prompt.Turn(a1, type metadata accessor for Prompt.Turn);
}

BOOL closure #1 in Prompt.init(_:)(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = type metadata accessor for Prompt.Delimiter(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Prompt.Attachment(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Prompt.PromptMarker(0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v44 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - v22;
  v47 = a1;
  _s15TokenGeneration6PromptV4TurnVWOcTm_0(a1, &v44 - v22, type metadata accessor for Prompt.PromptMarker);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v49 = v3;
  if (EnumCaseMultiPayload == 1)
  {
    _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v23, v5, type metadata accessor for Prompt.Delimiter);
    v25 = *&v5[*(v3 + 20)];
    v26 = type metadata accessor for Prompt.Delimiter;
    v27 = v5;
  }

  else
  {
    _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v23, v8, type metadata accessor for Prompt.Attachment);
    v25 = *&v8[*(v6 + 20)];
    v26 = type metadata accessor for Prompt.Attachment;
    v27 = v8;
  }

  outlined destroy of Prompt.Turn(v27, v26);
  v28 = v48;
  _s15TokenGeneration6PromptV4TurnVWOcTm_0(v48, v20, type metadata accessor for Prompt.PromptMarker);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v20, v5, type metadata accessor for Prompt.Delimiter);
    v29 = *&v5[*(v49 + 20)];
    v30 = type metadata accessor for Prompt.Delimiter;
    v31 = v5;
  }

  else
  {
    _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v20, v8, type metadata accessor for Prompt.Attachment);
    v29 = *&v8[*(v6 + 20)];
    v30 = type metadata accessor for Prompt.Attachment;
    v31 = v8;
  }

  outlined destroy of Prompt.Turn(v31, v30);
  if (v25 != v29)
  {
    _s15TokenGeneration6PromptV4TurnVWOcTm_0(v47, v17, type metadata accessor for Prompt.PromptMarker);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v17, v5, type metadata accessor for Prompt.Delimiter);
      v35 = v49;
      v34 = *&v5[*(v49 + 20)];
      outlined destroy of Prompt.Turn(v5, type metadata accessor for Prompt.Delimiter);
    }

    else
    {
      _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v17, v8, type metadata accessor for Prompt.Attachment);
      v34 = *&v8[*(v6 + 20)];
      outlined destroy of Prompt.Turn(v8, type metadata accessor for Prompt.Attachment);
      v35 = v49;
    }

    v38 = v45;
    _s15TokenGeneration6PromptV4TurnVWOcTm_0(v28, v45, type metadata accessor for Prompt.PromptMarker);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v38, v5, type metadata accessor for Prompt.Delimiter);
      v37 = *(v35 + 20);
      goto LABEL_18;
    }

    _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v38, v8, type metadata accessor for Prompt.Attachment);
    v42 = *(v6 + 20);
LABEL_21:
    v39 = *&v8[v42];
    v40 = type metadata accessor for Prompt.Attachment;
    v41 = v8;
    goto LABEL_22;
  }

  v32 = v44;
  _s15TokenGeneration6PromptV4TurnVWOcTm_0(v47, v44, type metadata accessor for Prompt.PromptMarker);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v32, v5, type metadata accessor for Prompt.Delimiter);
    v33 = v49;
    v34 = *&v5[*(v49 + 24)];
    outlined destroy of Prompt.Turn(v5, type metadata accessor for Prompt.Delimiter);
  }

  else
  {
    _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v32, v8, type metadata accessor for Prompt.Attachment);
    v34 = *&v8[*(v6 + 24)];
    outlined destroy of Prompt.Turn(v8, type metadata accessor for Prompt.Attachment);
    v33 = v49;
  }

  v36 = v46;
  _s15TokenGeneration6PromptV4TurnVWOcTm_0(v28, v46, type metadata accessor for Prompt.PromptMarker);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v36, v8, type metadata accessor for Prompt.Attachment);
    v42 = *(v6 + 24);
    goto LABEL_21;
  }

  _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v36, v5, type metadata accessor for Prompt.Delimiter);
  v37 = *(v33 + 24);
LABEL_18:
  v39 = *&v5[v37];
  v40 = type metadata accessor for Prompt.Delimiter;
  v41 = v5;
LABEL_22:
  outlined destroy of Prompt.Turn(v41, v40);
  return v34 < v39;
}

uint64_t Prompt.Component.Value.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v72 = type metadata accessor for Prompt.ToolCall.Content();
  v76 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Prompt.ToolCall();
  v73 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Prompt.ImageEmbeddingEncoding();
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v70 = v61 - v11;
  v12 = type metadata accessor for Prompt.ImageFormat();
  v69 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v61 - v16;
  v18 = type metadata accessor for Prompt.AttachmentContent(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV5ValueOSgMd, &_s9PromptKit0A0V9ComponentV5ValueOSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v64 = v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v66 = v61 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v63 = v61 - v26;
  v27 = a1;
  _s15TokenGeneration6PromptV4TurnVWOcTm_0(a1, v20, type metadata accessor for Prompt.AttachmentContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v37 = v76;
    v70 = v4;
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      outlined destroy of Prompt.Turn(a1, type metadata accessor for Prompt.AttachmentContent);
      outlined destroy of Prompt.Turn(v20, type metadata accessor for Prompt.AttachmentContent);
      v38 = type metadata accessor for Prompt.Component.Value();
      v35 = v66;
      (*(*(v38 - 8) + 56))(v66, 1, 1, v38);
      goto LABEL_19;
    }

    v39 = v6;
    v62 = a1;
    v35 = v66;
    if (EnumCaseMultiPayload != 3)
    {
      v50 = *v20;
      v51 = *(*v20 + 16);
      if (v51)
      {
        v77 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51, 0);
        v52 = v77;
        LODWORD(v69) = *MEMORY[0x1E69C62B8];
        v67 = v73 + 32;
        v68 = (v37 + 104);
        v61[1] = v50;
        v53 = v50 + 48;
        v54 = v39;
        v55 = v71;
        do
        {
          v75 = v52;
          v76 = v51;
          v74 = *(v53 - 16);
          v56 = *(v53 + 32);
          v57 = *(v53 + 40);

          outlined copy of Data?(v56, v57);

          Prompt.ToolCall.Function.init(name:arguments:)();
          (*v68)(v55, v69, v72);
          Prompt.ToolCall.init(id:content:)();

          v52 = v75;

          outlined consume of Data?(v56, v57);
          v77 = v52;
          v59 = *(v52 + 16);
          v58 = *(v52 + 24);
          if (v59 >= v58 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1);
            v52 = v77;
          }

          *(v52 + 16) = v59 + 1;
          (*(v73 + 32))(v52 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v59, v54, v70);
          v53 += 64;
          v51 = v76 - 1;
        }

        while (v76 != 1);
        outlined destroy of Prompt.Turn(v62, type metadata accessor for Prompt.AttachmentContent);

        v35 = v66;
      }

      else
      {

        outlined destroy of Prompt.Turn(v62, type metadata accessor for Prompt.AttachmentContent);
        v52 = MEMORY[0x1E69E7CC0];
      }

      *v35 = v52;
      v60 = *MEMORY[0x1E69C6340];
      v38 = type metadata accessor for Prompt.Component.Value();
      v43 = *(v38 - 8);
      (*(v43 + 104))(v35, v60, v38);
      goto LABEL_18;
    }

    Prompt.PreprocessedImageData.init(data:shape:)();

    outlined destroy of Prompt.Turn(v62, type metadata accessor for Prompt.AttachmentContent);
    v36 = MEMORY[0x1E69C62F0];
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *v20;
      v62 = a1;
      v30 = v20[1];
      v31 = v20[2];
      v32 = v74;
      v33 = v75;
      if (v29)
      {
        v34 = MEMORY[0x1E69C62B0];
      }

      else
      {
        v34 = MEMORY[0x1E69C62A8];
      }

      (*(v74 + 104))(v9, *v34, v75);
      (*(v32 + 32))(v70, v9, v33);
      outlined copy of Data._Representation(v30, v31);

      v35 = v66;
      Prompt.ImageEmbeddingData.init(encoding:data:tokenCount:signature:)();
      outlined consume of Data._Representation(v30, v31);

      outlined destroy of Prompt.Turn(v62, type metadata accessor for Prompt.AttachmentContent);
      v36 = MEMORY[0x1E69C62E8];
    }

    else
    {
      v35 = v66;
      Prompt.ImageSurface.init(surface:)();
      outlined destroy of Prompt.Turn(a1, type metadata accessor for Prompt.AttachmentContent);
      v36 = MEMORY[0x1E69C62D0];
    }
  }

  else
  {
    v40 = v69;
    if (*v20)
    {
      v41 = MEMORY[0x1E69C6220];
    }

    else
    {
      v41 = MEMORY[0x1E69C6228];
    }

    (*(v69 + 104))(v14, *v41, v12);
    (*(v40 + 32))(v17, v14, v12);
    v35 = v66;
    Prompt.ImageData.init(format:data:)();
    outlined destroy of Prompt.Turn(v27, type metadata accessor for Prompt.AttachmentContent);
    v36 = MEMORY[0x1E69C6338];
  }

  v42 = *v36;
  v38 = type metadata accessor for Prompt.Component.Value();
  v43 = *(v38 - 8);
  (*(v43 + 104))(v35, v42, v38);
LABEL_18:
  (*(v43 + 56))(v35, 0, 1, v38);
LABEL_19:
  v45 = v64;
  v44 = v65;
  v46 = v63;
  outlined init with take of Prompt.Component.Value?(v35, v63);
  outlined init with take of Prompt.Component.Value?(v46, v45);
  type metadata accessor for Prompt.Component.Value();
  v47 = *(v38 - 8);
  if ((*(v47 + 48))(v45, 1, v38) == 1)
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v45, &_s9PromptKit0A0V9ComponentV5ValueOSgMd, &_s9PromptKit0A0V9ComponentV5ValueOSgMR);
    v48 = 1;
  }

  else
  {
    (*(v47 + 32))(v44, v45, v38);
    v48 = 0;
  }

  return (*(v47 + 56))(v44, v48, 1, v38);
}

void Prompt.Component.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v78 = type metadata accessor for Prompt.ImageEmbeddingEncoding();
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v4 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v75 - v6;
  v8 = type metadata accessor for Prompt.ImageFormat();
  v80 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v81 = &v75 - v15;
  v16 = type metadata accessor for Prompt.Component.Value();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v75 - v21;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = (&v75 - v26);
  v28 = *a1;
  v29 = *(a1 + 8);
  v31 = *(a1 + 16);
  v30 = *(a1 + 24);
  v33 = *(a1 + 32);
  v32 = *(a1 + 40);
  v34 = *(a1 + 48);
  if (v34)
  {
    v35 = 4;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35 | (v31 >> 60) & 3;
  if (v36 <= 1)
  {
    v54 = v80;
    if (!v36)
    {
      *v27 = v28;
      v27[1] = v29;
      (*(v17 + 104))(v27, *MEMORY[0x1E69C6320], v25);
      v55 = type metadata accessor for Prompt.Component.Privacy();
      (*(*(v55 - 8) + 56))(v81, 1, 1, v55);
      Prompt.Component.init(value:priority:privacy:)();
      return;
    }

    v68 = *(v80 + 104);
    v69 = MEMORY[0x1E69C6220];
    if ((v28 & 1) == 0)
    {
      v69 = MEMORY[0x1E69C6228];
    }

    v70 = v29;
    v71 = *v69;
    v75 = v28;
    v72 = v31;
    v73 = v24;
    v78 = v32;
    v79 = v33;
    v77 = v30;
    v68(v10, v71, v8, v25);
    (*(v54 + 32))(v13, v10, v8);
    outlined copy of Data._Representation(v70, v72 & 0xCFFFFFFFFFFFFFFFLL);
    Prompt.ImageData.init(format:data:)();
    (*(v17 + 104))(v22, *MEMORY[0x1E69C6338], v73);
    v74 = type metadata accessor for Prompt.Component.Privacy();
    (*(*(v74 - 8) + 56))(v81, 1, 1, v74);
    Prompt.Component.init(value:priority:privacy:)();
    v49 = v75;
    v50 = v70;
    v51 = v72;
    v52 = v77;
    v65 = v78;
    v53 = v79;
  }

  else if (v36 == 2)
  {
    v56 = v32;
    v57 = v33;
    v58 = v30;
    v59 = v31;
    v60 = v29;
    v61 = v28;
    v62 = v24;
    v63 = v28;
    Prompt.ImageSurface.init(surface:)();
    (*(v17 + 104))(v27, *MEMORY[0x1E69C62D0], v62);
    v64 = type metadata accessor for Prompt.Component.Privacy();
    (*(*(v64 - 8) + 56))(v81, 1, 1, v64);
    Prompt.Component.init(value:priority:privacy:)();
    v49 = v61;
    v50 = v60;
    v51 = v59;
    v52 = v58;
    v53 = v57;
    v65 = v56;
  }

  else
  {
    v79 = v33;
    v80 = v24;
    v37 = v29;
    v38 = v31;
    v77 = v30;
    v39 = v32;
    if (v36 == 3)
    {
      v40 = v76;
      v41 = *(v76 + 104);
      v42 = MEMORY[0x1E69C62B0];
      if ((v28 & 1) == 0)
      {
        v42 = MEMORY[0x1E69C62A8];
      }

      v43 = *v42;
      v75 = v28;
      v44 = v78;
      v41(v4, v43, v78, v25);
      (*(v40 + 32))(v7, v4, v44);
      v45 = v37;
      outlined copy of Data._Representation(v37, v38 & 0xCFFFFFFFFFFFFFFFLL);

      v46 = v77;
      v47 = v79;
      Prompt.ImageEmbeddingData.init(encoding:data:tokenCount:signature:)();
      (*(v17 + 104))(v19, *MEMORY[0x1E69C62E8], v80);
      v48 = type metadata accessor for Prompt.Component.Privacy();
      (*(*(v48 - 8) + 56))(v81, 1, 1, v48);
      Prompt.Component.init(value:priority:privacy:)();
      v49 = v75;
      v50 = v45;
      v51 = v38;
      v52 = v46;
      v53 = v47;
    }

    else
    {
      v66 = v28;

      Prompt.PreprocessedImageData.init(data:shape:)();
      (*(v17 + 104))(v27, *MEMORY[0x1E69C62F0], v80);
      v67 = type metadata accessor for Prompt.Component.Privacy();
      (*(*(v67 - 8) + 56))(v81, 1, 1, v67);
      Prompt.Component.init(value:priority:privacy:)();
      v49 = v66;
      v50 = v37;
      v51 = v38;
      v52 = v77;
      v53 = v79;
    }

    v65 = v39;
  }

  outlined consume of Prompt.Turn.Segment(v49, v50, v51, v52, v53, v65, v34);
}

uint64_t Prompt.ToolResult.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[4];
  if (*(v2 + 16) != 1)
  {

    if (one-time initialization token for prompt != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.prompt);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1A8E85000, v22, v23, "Unexpected toolResult with either empty or more than one segment. Skipping result", v24, 2u);
      MEMORY[0x1AC57DBF0](v24, -1, -1);
    }

    goto LABEL_31;
  }

  v4 = *(v2 + 32);
  v3 = *(v2 + 40);
  v6 = *(v2 + 48);
  v5 = *(v2 + 56);
  v7 = *(v2 + 64);
  v8 = *(v2 + 80);
  if (v8)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 | (v6 >> 60) & 3;
  if (v10 > 1)
  {
    if (v10 == 2 || v10 != 3)
    {
      v12 = *(v2 + 72);
      outlined copy of Prompt.Turn.Segment(*(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), v12, *(v2 + 80));

      if (one-time initialization token for prompt != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Log.prompt);
      outlined copy of Prompt.Turn.Segment(v4, v3, v6, v5, v7, v12, v8);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      outlined consume of Prompt.Turn.Segment(v4, v3, v6, v5, v7, v12, v8);
      if (!os_log_type_enabled(v14, v15))
      {

        v37 = v4;
        v38 = v3;
        v39 = v6;
        v40 = v5;
        v41 = v7;
        v42 = v12;
        goto LABEL_30;
      }

      log = v14;
      v16 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v52 = v44;
      *v16 = 136315138;
      outlined copy of Prompt.Turn.Segment(v4, v3, v6, v5, v7, v12, v8);
      v17 = String.init<A>(describing:)();
      v49 = v12;
      v19 = v15;
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v52);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1A8E85000, log, v19, "Unsupported toolResult type: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x1AC57DBF0](v44, -1, -1);
      MEMORY[0x1AC57DBF0](v16, -1, -1);

      goto LABEL_27;
    }

LABEL_23:
    v28 = *(v2 + 72);
    outlined copy of Prompt.Turn.Segment(*(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), v28, *(v2 + 80));

    if (one-time initialization token for prompt != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Log.prompt);
    outlined copy of Prompt.Turn.Segment(v4, v3, v6, v5, v7, v28, v8);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    outlined consume of Prompt.Turn.Segment(v4, v3, v6, v5, v7, v28, v8);
    if (!os_log_type_enabled(v30, v31))
    {

      v37 = v4;
      v38 = v3;
      v39 = v6;
      v40 = v5;
      v41 = v7;
      v42 = v28;
      goto LABEL_30;
    }

    logb = v30;
    v45 = v31;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v52 = v33;
    *v32 = 136315138;
    outlined copy of Prompt.Turn.Segment(v4, v3, v6, v5, v7, v28, v8);
    v34 = String.init<A>(describing:)();
    v49 = v28;
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v52);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_1A8E85000, logb, v45, "Unsupported toolResult type: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x1AC57DBF0](v33, -1, -1);
    MEMORY[0x1AC57DBF0](v32, -1, -1);

LABEL_27:
    v37 = v4;
    v38 = v3;
    v39 = v6;
    v40 = v5;
    v41 = v7;
    v42 = v49;
LABEL_30:
    outlined consume of Prompt.Turn.Segment(v37, v38, v39, v40, v41, v42, v8);
LABEL_31:
    v43 = type metadata accessor for Prompt.ToolResult();
    return (*(*(v43 - 8) + 56))(a2, 1, 1, v43);
  }

  if (v10)
  {
    goto LABEL_23;
  }

  loga = *(v2 + 64);
  v50 = *(v2 + 72);

  static Prompt.ToolResult.text(id:value:)();
  outlined consume of Prompt.Turn.Segment(v4, v3, v6, v5, loga, v50, v8);

  v25 = type metadata accessor for Prompt.ToolResult();
  v26 = *(*(v25 - 8) + 56);

  return v26(a2, 0, 1, v25);
}

uint64_t _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15TokenGeneration6PromptV4TurnVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Prompt.Turn(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Prompt.Component.Value?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV5ValueOSgMd, &_s9PromptKit0A0V9ComponentV5ValueOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, type metadata accessor for Prompt.PromptMarker);
}

{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, type metadata accessor for Prompt.Attachment);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void Prompt.renderToTokenGenerationPrompt(bindingVariables:customDataTransformers:locale:fallbackBindingVariable:isTopLevelRendering:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v210 = a5;
  v212 = a4;
  v224 = a3;
  v229 = a1;
  v241 = a6;
  v188 = type metadata accessor for Prompt.PreprocessedImageData();
  v235 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v195 = &v168[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v191 = type metadata accessor for Prompt.ImageEmbeddingEncoding();
  v197 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v190 = &v168[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v192 = type metadata accessor for Prompt.ImageEmbeddingData();
  v221 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v189 = &v168[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v194 = type metadata accessor for Prompt.ImageSurface();
  v220 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v193 = &v168[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v200 = type metadata accessor for Prompt.ImageData();
  v205 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v199 = &v168[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v216 = &v168[-v13];
  v230 = type metadata accessor for BindableVariable();
  v198 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v225 = &v168[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v209 = type metadata accessor for Prompt.Delimiter(0);
  v223 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v243 = &v168[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v208 = &v168[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v219 = &v168[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v213 = &v168[-v21];
  v245 = type metadata accessor for Prompt.SpecialToken(0);
  MEMORY[0x1EEE9AC00](v245);
  v201 = &v168[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v207 = &v168[-v24];
  v218 = type metadata accessor for SpecialToken();
  v203 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v217 = &v168[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v240 = type metadata accessor for Prompt.Component.Value();
  v196 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v215 = &v168[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v244 = &v168[-v28];
  v227 = type metadata accessor for Prompt.Component();
  v242 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227);
  v30 = &v168[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = type metadata accessor for Prompt();
  v211 = *(v31 - 1);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v168[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v168[-v35];
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v168[-v38];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMR);
  v40 = swift_allocObject();
  v214 = xmmword_1A8FC9400;
  *(v40 + 16) = xmmword_1A8FC9400;
  *(v40 + 56) = &type metadata for Prompt.SelfAttentionTransformer;
  *(v40 + 64) = lazy protocol witness table accessor for type Prompt.SelfAttentionTransformer and conformance Prompt.SelfAttentionTransformer();
  v255 = a2;

  specialized Array.append<A>(contentsOf:)(v40);
  v41 = v264;
  Prompt.transform(includeAttachments:customDataTransformers:)();
  if (v41)
  {

    return;
  }

  v222 = v33;
  v226 = 0;
  v228 = v30;
  v206 = a2;

  v42 = v211;
  (*(v211 + 32))(v39, v36, v31);
  v261 = 0;
  *&v262 = 0xE000000000000000;
  *(&v262 + 1) = MEMORY[0x1E69E7CC0];
  v263 = MEMORY[0x1E69E7CC0];
  v260 = 0;
  v43 = Prompt.components.getter();
  v44 = *(v43 + 16);
  swift_beginAccess();
  v238 = v44;
  if (!v44)
  {
    v57 = v241;
LABEL_67:
    (*(v211 + 8))(v39, v31);

    swift_beginAccess();
    v146 = v263;
    *v57 = v261;
    *(v57 + 8) = v262;
    *(v57 + 24) = v146;
    return;
  }

  v45 = 0;
  v46 = v242;
  v237 = v242 + 16;
  v236 = (v196 + 88);
  v234 = (v196 + 96);
  v170 = (v235 + 8);
  v171 = (v235 + 32);
  v232 = (v242 + 8);
  v173 = (v197 + 88);
  v174 = (v221 + 32);
  v175 = (v221 + 8);
  LODWORD(v235) = *MEMORY[0x1E69C6320];
  v178 = (v220 + 8);
  v179 = (v220 + 32);
  v181 = (v205 + 4);
  LODWORD(v221) = *MEMORY[0x1E69C62E0];
  v182 = v205 + 1;
  v185 = v203 + 4;
  v204 = *MEMORY[0x1E69C62D8];
  v183 = (v203 + 1);
  v184 = *MEMORY[0x1E69C6338];
  v180 = *MEMORY[0x1E69C62D0];
  v47 = *MEMORY[0x1E69C62E8];
  v172 = *MEMORY[0x1E69C62F0];
  v176 = *MEMORY[0x1E69C62A8];
  v177 = v47;
  v169 = *MEMORY[0x1E69C62B0];
  v205 = (v42 + 8);
  v202 = (v198 + 8);
  v203 = (v198 + 32);
  LODWORD(v220) = 1;
  v48 = v227;
  v49 = v228;
  v233 = v31;
  v239 = v39;
  v231 = v43;
  while (1)
  {
    if (v45 >= *(v43 + 16))
    {
      goto LABEL_73;
    }

    v50 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v51 = *(v46 + 72);
    v264 = v45;
    v31 = *(v46 + 16);
    (v31)(v49, v43 + v50 + v51 * v45, v48);
    v52 = v244;
    v53 = v48;
    Prompt.Component.value.getter();
    v48 = v240;
    v54 = (*v236)(v52, v240);
    if (v54 == v235)
    {
      (*v234)(v52, v48);
      v56 = *v52;
      v55 = v52[1];
      swift_beginAccess();
      v255 = v56;
      *&v256 = v55;
      *(&v256 + 1) = MEMORY[0x1E69E7CC0];
      v257 = MEMORY[0x1E69E7CC0];

      specialized static Prompt.+= infix(_:_:)(&v261, &v255);

      v57 = v241;

      swift_endAccess();

      (*v232)(v49, v53);
      v31 = v233;
      v48 = v53;
      goto LABEL_55;
    }

    if (v54 == v221)
    {
      break;
    }

    v49 = v228;
    if (v54 == v204)
    {
      v66 = v244;
      (*v234)(v244, v48);
      (*v185)(v217, v66, v218);
      v67 = SpecialToken.identifier.getter();
      v69 = v68;
      v70 = SpecialToken.instance.getter();
      v72 = v71;
      v73 = v213;
      outlined init with copy of (String, Any)(v224, v213, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      v74 = v245;
      v75 = *(v245 + 20);
      v76 = type metadata accessor for Locale();
      v77 = v207;
      (*(*(v76 - 8) + 56))(v207 + v75, 1, 1, v76);
      v186 = v69;
      v187 = v67;
      *v77 = v67;
      v77[1] = v69;
      v78 = (v77 + *(v74 + 24));
      *v78 = v70;
      v78[1] = v72;
      outlined assign with take of Locale?(v73, v77 + v75);
      *(v77 + *(v74 + 28)) = 0;
      v80 = v208;
      v79 = v209;
      if (v210)
      {
        if (one-time initialization token for promptModule != -1)
        {
          swift_once();
        }

        v81 = __swift_project_value_buffer(v74, static Prompt.SpecialToken.promptModule);
        if (v187 == *v81 && v186 == v81[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          specialized addCacheablePrefixTerminatorIfNotPresent #1 () in Prompt.renderToTokenGenerationPrompt(bindingVariables:customDataTransformers:locale:fallbackBindingVariable:isTopLevelRendering:)(&v260, &v261);
        }
      }

      swift_beginAccess();
      v255 = 0;
      *&v256 = 0xE000000000000000;
      MEMORY[0x1AC57C060](0);
      v82 = MEMORY[0x1E69E7CC0];
      v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
      *(&v256 + 1) = v83;
      v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v82);
      v257 = v84;
      v85 = v219;
      outlined init with copy of Prompt.Delimiter(v77, v219, type metadata accessor for Prompt.SpecialToken);
      v86 = String.count.getter();
      v87 = v83[2];
      v88 = v84[2];
      v89 = __OFADD__(v87, v88);
      v90 = v87 + v88;
      if (v89)
      {
        __break(1u);
        return;
      }

      *&v85[*(v79 + 20)] = v86;
      *&v85[*(v79 + 24)] = v90;
      outlined init with copy of Prompt.Delimiter(v85, v80, type metadata accessor for Prompt.Delimiter);
      v92 = v83[2];
      v91 = v83[3];
      if (v92 >= v91 >> 1)
      {
        v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v83);
      }

      v31 = v233;
      v93 = v218;
      v49 = v228;
      outlined destroy of Prompt.Delimiter(v219, type metadata accessor for Prompt.Delimiter);
      v83[2] = v92 + 1;
      outlined init with take of Prompt.Delimiter(v80, v83 + ((*(v223 + 80) + 32) & ~*(v223 + 80)) + *(v223 + 72) * v92, type metadata accessor for Prompt.Delimiter);
      *(&v256 + 1) = v83;
      specialized static Prompt.+= infix(_:_:)(&v261, &v255);

      swift_endAccess();
      (*v183)(v217, v93);
      v48 = v227;
      (*v232)(v49, v227);
      outlined destroy of Prompt.Delimiter(v77, type metadata accessor for Prompt.SpecialToken);
LABEL_54:
      v57 = v241;
LABEL_55:
      v39 = v239;
      goto LABEL_56;
    }

    if (v54 == v184)
    {
      v94 = v244;
      (*v234)(v244, v48);
      v96 = v199;
      v95 = v200;
      (*v181)(v199, v94, v200);
      swift_beginAccess();
      v97 = v226;
      Prompt.appendRenderedImage(_:)(v96);
      v39 = v239;
      v226 = v97;
      if (v97)
      {
        swift_endAccess();

        (*v182)(v96, v95);
        (*v232)(v49, v227);
        (*v205)(v39, v233);
        goto LABEL_71;
      }

      swift_endAccess();
      (*v182)(v96, v95);
      v48 = v227;
      (*v232)(v49, v227);
      v31 = v233;
      v43 = v231;
      v57 = v241;
    }

    else
    {
      v39 = v239;
      if (v54 == v180)
      {
        v110 = v244;
        (*v234)(v244, v48);
        v112 = v193;
        v111 = v194;
        (*v179)(v193, v110, v194);
        v113 = Prompt.ImageSurface.surface.getter();
        swift_beginAccess();
        v255 = 0;
        *&v256 = 0xE000000000000000;
        MEMORY[0x1AC57C060](0);
        v114 = MEMORY[0x1E69E7CC0];
        *(&v256 + 1) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
        v257 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v114);
        *&v249 = v113;
        v115.surface.super.isa = &v249;
        Prompt.StringInterpolation.appendInterpolation(imageSurface:)(v115);
        specialized static Prompt.+= infix(_:_:)(&v261, &v255);

        swift_endAccess();

        v57 = v241;
        (*v178)(v112, v111);
        v48 = v227;
        (*v232)(v49, v227);
        v31 = v233;
LABEL_56:
        v43 = v231;
        goto LABEL_57;
      }

      v124 = v195;
      v39 = v244;
      v43 = v231;
      if (v54 == v177)
      {
        (*v234)(v244, v48);
        v125 = v189;
        v126 = v192;
        v127 = (*v174)(v189, v39, v192);
        v128 = v190;
        MEMORY[0x1AC57B9D0](v127);
        v129 = (*v173)(v128, v191);
        if (v129 != v176 && v129 != v169)
        {

          v163 = type metadata accessor for Prompt.RenderError();
          lazy protocol witness table accessor for type Prompt.RenderError and conformance Prompt.RenderError(&lazy protocol witness table cache variable for type Prompt.RenderError and conformance Prompt.RenderError, MEMORY[0x1E69C6248], MEMORY[0x1E69C6250]);
          swift_allocError();
          v165 = v164;
          v166 = v227;
          v167 = v228;
          (v31)(v164, v228, v227);
          (*(*(v163 - 8) + 104))(v165, *MEMORY[0x1E69C6230], v163);
          swift_willThrow();
          (*v175)(v125, v126);
          (*v232)(v167, v166);
          (*v205)(v239, v233);
          (*(v197 + 8))(v190, v191);

          return;
        }

        LODWORD(v187) = v129 != v176;
        v130 = v125;
        v131 = Prompt.ImageEmbeddingData.data.getter();
        v133 = v132;
        v134 = Prompt.ImageEmbeddingData.tokenCount.getter();
        v135 = Prompt.ImageEmbeddingData.signature.getter();
        v137 = v136;
        swift_beginAccess();
        v252 = 0;
        *&v253 = 0xE000000000000000;
        MEMORY[0x1AC57C060](0);
        v138 = MEMORY[0x1E69E7CC0];
        *(&v253 + 1) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
        v254 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v138);
        LOBYTE(v255) = v187;
        *&v256 = v131;
        *(&v256 + 1) = v133;
        v257 = v134;
        v258 = v135;
        v259 = v137;
        Prompt.StringInterpolation.appendInterpolation(imageEmbedding:)(&v255);
        v256 = v253;
        v255 = v252;
        v257 = v254;
        specialized static Prompt.+= infix(_:_:)(&v261, &v255);

        swift_endAccess();
        v139 = v131;
        v57 = v241;
        outlined consume of Data._Representation(v139, v133);

        (*v175)(v130, v192);
        v140 = *v232;
        v49 = v228;
      }

      else
      {
        if (v54 != v172)
        {
          goto LABEL_74;
        }

        (*v234)(v244, v48);
        v141 = v39;
        v142 = v188;
        (*v171)(v124, v141, v188);
        v143 = Prompt.PreprocessedImageData.data.getter();
        v144 = Prompt.PreprocessedImageData.shape.getter();
        swift_beginAccess();
        v255 = 0;
        *&v256 = 0xE000000000000000;
        MEMORY[0x1AC57C060](0);
        v145 = MEMORY[0x1E69E7CC0];
        *(&v256 + 1) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
        v257 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v145);
        *&v249 = v143;
        *(&v249 + 1) = v144;
        Prompt.StringInterpolation.appendInterpolation(preprocessedImage:)(&v249);
        specialized static Prompt.+= infix(_:_:)(&v261, &v255);

        swift_endAccess();

        v57 = v241;

        (*v170)(v124, v142);
        v140 = *v232;
      }

      v48 = v227;
      v140(v49, v227);
      v31 = v233;
      v39 = v239;
    }

LABEL_57:
    v45 = v264 + 1;
    v46 = v242;
    if (v264 + 1 == v238)
    {
      goto LABEL_67;
    }
  }

  v58 = v244;
  (*v234)(v244, v48);
  v59 = v225;
  (*v203)(v225, v58, v230);
  v60 = BindableVariable.name.getter();
  v62 = v223;
  if (*(v229 + 16))
  {
    v63 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v61);
    v65 = v64;

    if (v65)
    {
      outlined init with copy of GuidedGenerationTokenizer(*(v229 + 56) + 40 * v63, &v252);
      outlined init with take of PromptComponentValueConvertible(&v252, &v255);
      goto LABEL_29;
    }
  }

  else
  {
  }

  outlined init with copy of (String, Any)(v212, &v255, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
LABEL_29:
  outlined init with copy of (String, Any)(&v255, &v249, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
  if (!*(&v250 + 1))
  {

    outlined destroy of [Regex2BNF.CharacterPredicate](&v249, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
    v147 = type metadata accessor for Prompt.RenderError();
    lazy protocol witness table accessor for type Prompt.RenderError and conformance Prompt.RenderError(&lazy protocol witness table cache variable for type Prompt.RenderError and conformance Prompt.RenderError, MEMORY[0x1E69C6248], MEMORY[0x1E69C6250]);
    swift_allocError();
    v149 = v148;
    v150 = v198 + 16;
    v151 = v148;
    v152 = v59;
    v153 = v59;
    v154 = v230;
    (*(v198 + 16))(v151, v152, v230);
    (*(*(v147 - 8) + 104))(v149, *MEMORY[0x1E69C6240], v147);
    swift_willThrow();
    outlined destroy of [Regex2BNF.CharacterPredicate](&v255, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
    (*(v150 - 8))(v153, v154);
    (*v232)(v228, v227);
    (*v205)(v239, v233);

    return;
  }

  outlined init with take of PromptComponentValueConvertible(&v249, &v252);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
  *(swift_allocObject() + 16) = v214;
  __swift_project_boxed_opaque_existential_1(&v252, v254);
  dispatch thunk of PromptComponentValueConvertible.toValue()();
  v98 = type metadata accessor for Prompt.Component.Privacy();
  (*(*(v98 - 8) + 56))(v216, 1, 1, v98);
  Prompt.Component.init(value:priority:privacy:)();
  v31 = v222;
  Prompt.init(components:)();
  v251 = 0;
  v249 = 0u;
  v250 = 0u;
  v99 = v226;
  Prompt.renderToTokenGenerationPrompt(bindingVariables:customDataTransformers:locale:fallbackBindingVariable:isTopLevelRendering:)(v229, v206, v224, &v249, 0, &v247);
  v226 = v99;
  if (v99)
  {

    outlined destroy of [Regex2BNF.CharacterPredicate](&v249, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
    v155 = *v205;
    v156 = v233;
    (*v205)(v31, v233);
    outlined destroy of [Regex2BNF.CharacterPredicate](&v255, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
    (*v202)(v59, v230);
    (*v232)(v228, v227);
    v155(v239, v156);
    __swift_destroy_boxed_opaque_existential_0(&v252);
LABEL_71:

    return;
  }

  outlined destroy of [Regex2BNF.CharacterPredicate](&v249, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
  v100 = v230;
  v101 = v243;
  if ((v260 & 1) == 0)
  {
    *&v249 = 0;
    *(&v249 + 1) = 0xE000000000000000;
    MEMORY[0x1AC57C060](0);
    v102 = MEMORY[0x1E69E7CC0];
    *&v250 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
    *(&v250 + 1) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v102);
    if (one-time initialization token for cacheablePrefixTerminator != -1)
    {
      swift_once();
    }

    v103 = __swift_project_value_buffer(v245, static Prompt.SpecialToken.cacheablePrefixTerminator);
    Prompt.StringInterpolation.appendInterpolation(token:)(v103);
    swift_beginAccess();
    specialized static Prompt.+= infix(_:_:)(&v261, &v249);
    swift_endAccess();

    v260 = 1;
  }

  v48 = v248;
  if ((v220 & 1) == 0)
  {
LABEL_53:
    v49 = v228;
    v249 = v247;
    *&v250 = v48;
    *(&v250 + 1) = *(&v248 + 1);
    swift_beginAccess();

    specialized static Prompt.+= infix(_:_:)(&v261, &v249);
    swift_endAccess();

    v31 = v233;
    (*v205)(v222, v233);
    outlined destroy of [Regex2BNF.CharacterPredicate](&v255, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
    (*v202)(v225, v100);
    v123 = v227;
    (*v232)(v49, v227);

    v48 = v123;

    __swift_destroy_boxed_opaque_existential_0(&v252);
    LODWORD(v220) = 0;
    goto LABEL_54;
  }

  v39 = 0;
  v49 = *(v248 + 16);
  while (1)
  {
    if (v49 == v39)
    {
      v48 = v248;
      goto LABEL_52;
    }

    if (v39 >= *(v48 + 16))
    {
      break;
    }

    outlined init with copy of Prompt.Delimiter(v48 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v39, v101, type metadata accessor for Prompt.Delimiter);
    v104 = *v101;
    v105 = v101[1];
    if (one-time initialization token for promptModule != -1)
    {
      swift_once();
    }

    v106 = __swift_project_value_buffer(v245, static Prompt.SpecialToken.promptModule);
    v31 = *v106;
    v107 = *(v106 + 8);
    if (v104 == *v106 && v105 == v107)
    {
      outlined destroy of Prompt.Delimiter(v243, type metadata accessor for Prompt.Delimiter);
      v31 = v104;
LABEL_51:
      *&v249 = 0;
      *(&v249 + 1) = 0xE000000000000000;
      MEMORY[0x1AC57C060](0);
      v116 = MEMORY[0x1E69E7CC0];
      *&v250 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
      *(&v250 + 1) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v116);
      v117 = v213;
      outlined init with copy of (String, Any)(v224, v213, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      v118 = v245;
      v119 = *(v245 + 20);
      v120 = type metadata accessor for Locale();
      v121 = v201;
      (*(*(v120 - 8) + 56))(&v201[v119], 1, 1, v120);
      *v121 = v31;
      v121[1] = v107;
      v122 = (v121 + *(v118 + 24));
      *v122 = 0;
      v122[1] = 0;

      outlined assign with take of Locale?(v117, v121 + v119);
      *(v121 + *(v118 + 28)) = 0;
      Prompt.StringInterpolation.appendInterpolation(token:)(v121);
      outlined destroy of Prompt.Delimiter(v121, type metadata accessor for Prompt.SpecialToken);
      v246[0] = v247;
      v246[1] = v248;

      specialized static Prompt.+= infix(_:_:)(&v249, v246);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v247 = v249;
      v248 = v250;
      v48 = v250;
LABEL_52:
      v100 = v230;
      goto LABEL_53;
    }

    v109 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v101 = v243;
    outlined destroy of Prompt.Delimiter(v243, type metadata accessor for Prompt.Delimiter);
    ++v39;
    if (v109)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:

  v157 = v48;
  v158 = type metadata accessor for Prompt.RenderError();
  lazy protocol witness table accessor for type Prompt.RenderError and conformance Prompt.RenderError(&lazy protocol witness table cache variable for type Prompt.RenderError and conformance Prompt.RenderError, MEMORY[0x1E69C6248], MEMORY[0x1E69C6250]);
  swift_allocError();
  v159 = v39;
  v161 = v160;
  v162 = v227;
  (v31)(v160, v49, v227);
  (*(*(v158 - 8) + 104))(v161, *MEMORY[0x1E69C6230], v158);
  swift_willThrow();
  (*v232)(v49, v162);
  (*v205)(v239, v233);
  (*(v196 + 8))(v159, v157);
}

uint64_t PromptTemplateInfo.templateID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PromptTemplateInfo.RichVariableBinding.Component.Content.Text.string.getter()
{
  v1 = *v0;

  return v1;
}

TokenGenerationCore::PromptTemplateInfo::RichVariableBinding::Component::Content::Text __swiftcall PromptTemplateInfo.RichVariableBinding.Component.Content.Text.init(string:)(TokenGenerationCore::PromptTemplateInfo::RichVariableBinding::Component::Content::Text string)
{
  *v1 = string.string;
  *(v1 + 16) = 0;
  return string;
}

TokenGenerationCore::PromptTemplateInfo::RichVariableBinding::Component::Content::Text __swiftcall PromptTemplateInfo.RichVariableBinding.Component.Content.Text.init(string:isSelfAttention:)(TokenGenerationCore::PromptTemplateInfo::RichVariableBinding::Component::Content::Text string, Swift::Bool isSelfAttention)
{
  *v2 = string.string;
  *(v2 + 16) = isSelfAttention;
  string.isSelfAttention = isSelfAttention;
  return string;
}

uint64_t static PromptTemplateInfo.RichVariableBinding.Component.Content.Text.selfAttention(string:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
}

uint64_t static PromptTemplateInfo.RichVariableBinding.Component.Content.Text.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PromptTemplateInfo.RichVariableBinding.Component.Content.Text(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

void *PromptTemplateInfo.init(templateID:variableBindings:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  v11 = type metadata accessor for Locale();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  return PromptTemplateInfo.init(templateID:variableBindings:locale:)(a1, a2, a3, v10, a4);
}

void *PromptTemplateInfo.init(templateID:variableBindings:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v42 = a2;
  v43 = a4;
  v40 = a5;
  v41 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v39 = &v38 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVGMd, &_ss18_DictionaryStorageCySS19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v9 = result;
  v10 = 0;
  v47 = a3;
  v13 = *(a3 + 64);
  v12 = a3 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v45 = result + 8;
  v44 = xmmword_1A8FC9400;
  v46 = result;
  if (v16)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_10:
      v21 = v18 | (v10 << 6);
      v22 = *(v47 + 56);
      v23 = (*(v47 + 48) + 16 * v21);
      v24 = v23[1];
      v49 = *v23;
      v25 = (v22 + 16 * v21);
      v26 = *v25;
      v27 = v25[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVGMR);
      v28 = *(type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component(0) - 8);
      v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = v44;
      v31 = v30 + v29;
      *v31 = v26;
      *(v31 + 8) = v27;
      *(v31 + 16) = 0;
      type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content(0);
      result = swift_storeEnumTagMultiPayload();
      v9 = v46;
      *(v45 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v32 = (v9[6] + 16 * v21);
      *v32 = v49;
      v32[1] = v24;
      *(v9[7] + 8 * v21) = v30;
      v33 = v9[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      v9[2] = v35;

      v16 = v48;
      if (!v48)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {

        v36 = v43;
        v37 = v39;
        outlined init with copy of (String, Any)(v43, v39, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        PromptTemplateInfo.init(templateID:richVariableBindings:locale:)(v41, v42, v9, v37, v40);
        return outlined destroy of [Regex2BNF.CharacterPredicate](v36, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      }

      v20 = *(v12 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v48 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PromptTemplateInfo.init(templateID:richVariableBindings:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component(0);
  v51 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  v16 = *(type metadata accessor for PromptTemplateInfo(0) + 28);
  v46 = a4;
  v47 = a5;
  outlined init with copy of (String, Any)(a4, a5 + v16, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v17 = static _DictionaryStorage.copy(original:)();
  v18 = v17;
  v19 = *(a3 + 64);
  v48 = a3 + 64;
  v20 = 1 << *(a3 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v53 = v17 + 64;

  v25 = 0;
  v52 = a3;
  v49 = v23;
  v50 = v18;
  if (v22)
  {
    while (1)
    {
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_10:
      v29 = v26 | (v25 << 6);
      v30 = *(a3 + 56);
      v31 = (*(a3 + 48) + 16 * v29);
      v32 = v31[1];
      v57 = *v31;
      v58 = 0;
      v33 = *(v30 + 8 * v29);
      v59 = 0xE000000000000000;
      v34 = *(v33 + 16);
      if (v34)
      {
        v56 = v22;
        v35 = v51;
        v36 = v33 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
        v37 = v32;
        v54 = v33;
        swift_bridgeObjectRetain_n();
        v55 = v37;

        v38 = *(v35 + 72);
        do
        {
          outlined init with copy of Prompt.Delimiter(v36, v15, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component);
          outlined init with copy of Prompt.Delimiter(v15, v12, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
          if (swift_getEnumCaseMultiPayload())
          {
            outlined destroy of Prompt.Delimiter(v12, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
          }

          else
          {
            MEMORY[0x1AC57C120](*v12, v12[1]);
          }

          outlined destroy of Prompt.Delimiter(v15, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component);
          v36 += v38;
          --v34;
        }

        while (v34);
        swift_bridgeObjectRelease_n();
        v39 = v58;
        v40 = v59;
        a3 = v52;
        v23 = v49;
        v18 = v50;
        result = v55;
        v22 = v56;
      }

      else
      {

        v39 = 0;
        v40 = 0xE000000000000000;
      }

      *(v53 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v41 = (v18[6] + 16 * v29);
      *v41 = v57;
      v41[1] = result;
      v42 = (v18[7] + 16 * v29);
      *v42 = v39;
      v42[1] = v40;
      v43 = v18[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        break;
      }

      v18[2] = v45;
      if (!v22)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v27 = v25;
    while (1)
    {
      v25 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        result = outlined destroy of [Regex2BNF.CharacterPredicate](v46, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        v47[3] = v18;
        return result;
      }

      v28 = *(v48 + 8 * v25);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v22 = (v28 - 1) & v28;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PromptTemplateInfo.richInstructionsTemplateVariableBindings.getter()
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 16);
  if (!*(v9 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000029, 0x80000001A8FDA600);
  if ((v11 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  if (!*(v12 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = *(type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component(0) - 8);
  outlined init with copy of Prompt.Delimiter(v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v8, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of Prompt.Delimiter(v8, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
    return MEMORY[0x1E69E7CC0];
  }

  static String.Encoding.utf8.getter();
  v14 = String.data(using:allowLossyConversion:)();
  v16 = v15;

  (*(v3 + 8))(v5, v2);
  if (v16 >> 60 == 15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation23TemplateVariableBindingVGMd, &_sSay29GenerativeFunctionsFoundation23TemplateVariableBindingVGMR);
  lazy protocol witness table accessor for type [TemplateVariableBinding] and conformance <A> [A]();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  outlined consume of Data?(v14, v16);

  if (!v1)
  {
    return v18[1];
  }

  return result;
}

uint64_t static PromptTemplateHelper.fill(modelbundleIdentifier:promptTemplate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static PromptTemplateHelper.fill(modelbundleIdentifier:promptTemplate:), 0, 0);
}

{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static PromptTemplateHelper.fill(modelbundleIdentifier:promptTemplate:), 0, 0);
}

uint64_t static PromptTemplateHelper.fill(modelbundleIdentifier:promptTemplate:)()
{
  v1 = v0[8];
  (*(v0[7] + 16))(v1, v0[4], v0[6]);
  type metadata accessor for CatalogClient();
  swift_allocObject();
  v2 = CatalogClient.init()();
  type metadata accessor for _LoadedModelConfiguration();
  v3 = static _LoadedModelConfiguration.create(modelBundleIdentifier:catalogClient:)(v1, v2);
  v0[9] = v3;
  v4 = v3;
  (*(v0[7] + 8))(v0[8], v0[6]);

  v0[2] = v4;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = static PromptTemplateHelper.fill(modelbundleIdentifier:promptTemplate:);
  v6 = v0[5];
  v7 = v0[3];

  return ModelConfiguration.render(promptTemplate:)(v7, v6);
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = static PromptTemplateHelper.fill(modelbundleIdentifier:promptTemplate:);
  }

  else
  {
    v2 = static PromptTemplateHelper.fill(modelbundleIdentifier:promptTemplate:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[8];
  (*(v0[7] + 16))(v1, v0[4], v0[6]);
  type metadata accessor for CatalogClient();
  swift_allocObject();
  v2 = CatalogClient.init()();
  type metadata accessor for _LoadedModelConfiguration();
  v3 = static _LoadedModelConfiguration.create(modelBundleIdentifier:catalogClient:)(v1, v2);
  v0[9] = v3;
  v4 = v3;
  (*(v0[7] + 8))(v0[8], v0[6]);

  v0[2] = v4;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = static PromptTemplateHelper.fill(modelbundleIdentifier:promptTemplate:);
  v6 = v0[5];
  v7 = v0[3];

  return ModelConfiguration.render(promptTemplate:)(v7, v6);
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = static PromptTemplateHelper.fill(modelbundleIdentifier:promptTemplate:);
  }

  else
  {
    v2 = static PromptTemplateHelper.fill(modelbundleIdentifier:promptTemplate:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ModelConfiguration.render(promptTemplate:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = type metadata accessor for Prompt();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *v2;
  v3[6] = v5;
  v3[7] = v6;

  return MEMORY[0x1EEE6DFA0](ModelConfiguration.render(promptTemplate:), 0, 0);
}

uint64_t ModelConfiguration.render(promptTemplate:)()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      if (*(v2 + 16))
      {
        v3 = v0[3];
        v4 = *v3;
        v5 = v3[1];

        v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
        if (v7)
        {
          v8 = v0[3];
          v0[8] = *(*(v2 + 56) + 16 * v6 + 8);

          v9 = *(v8 + 16);
          v10 = *(type metadata accessor for PromptTemplateInfo(0) + 28);

          Prompt.init(template:)();
          v13 = v0[3];
          v14 = swift_task_alloc();
          v0[9] = v14;
          *v14 = v0;
          v14[1] = ModelConfiguration.render(promptTemplate:);
          v15 = v0[2];

          return Prompt.render(richVariableBindings:locale:)(v15, v9, v13 + v10);
        }
      }
    }
  }

  lazy protocol witness table accessor for type ModelConfiguration.PrompteTemplateError and conformance ModelConfiguration.PrompteTemplateError();
  swift_allocError();
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = ModelConfiguration.render(promptTemplate:);
  }

  else
  {
    v2 = ModelConfiguration.render(promptTemplate:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t ModelConfiguration.PrompteTemplateError.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ModelConfiguration.PrompteTemplateError.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ModelConfiguration.PrompteTemplateError()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ModelConfiguration.PrompteTemplateError(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ModelConfiguration.PrompteTemplateError@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance ModelConfiguration.PrompteTemplateError, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t Prompt.render(richVariableBindings:locale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = type metadata accessor for SelfAttention();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v6 = type metadata accessor for Prompt.PreprocessedImageData();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v7 = type metadata accessor for Prompt.ImageEmbeddingData();
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR);
  v4[25] = swift_task_alloc();
  v8 = type metadata accessor for Prompt.Component.Value();
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v9 = type metadata accessor for Prompt.ImageData();
  v4[29] = v9;
  v4[30] = *(v9 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content(0);
  v4[33] = swift_task_alloc();
  v4[34] = *(type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component(0) - 8);
  v4[35] = swift_task_alloc();
  v10 = type metadata accessor for Prompt.Component();
  v4[36] = v10;
  v4[37] = *(v10 - 8);
  v4[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Prompt.render(richVariableBindings:locale:), 0, 0);
}

void *Prompt.render(richVariableBindings:locale:)()
{
  v1 = *(v0 + 296);
  v97 = *(v0 + 272);
  v92 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v78 = *(v0 + 224);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 136);
  v7 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9PromptKit0C25ComponentValueConvertible_pGMd, &_ss18_DictionaryStorageCySS9PromptKit0C25ComponentValueConvertible_pGMR);
  result = static _DictionaryStorage.copy(original:)();
  v9 = result;
  v10 = 0;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v7 + 64);
  v14 = (v11 + 63) >> 6;
  v90 = (v5 + 16);
  v91 = (v5 + 32);
  v89 = *MEMORY[0x1E69C62F0];
  v94 = (v3 + 104);
  v87 = (v4 + 32);
  v88 = (v5 + 8);
  v86 = (v4 + 16);
  v85 = *MEMORY[0x1E69C62E8];
  v84 = (v4 + 8);
  v83 = *MEMORY[0x1E69C62D0];
  v81 = (v2 + 16);
  v82 = (v2 + 32);
  v80 = *MEMORY[0x1E69C6338];
  v79 = (v2 + 8);
  v77 = *MEMORY[0x1E69C6320];
  v76 = (v6 + 8);
  v69 = v14;
  v70 = result + 8;
  v68 = result;
  if (v13)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v16 = (v13 - 1) & v13;
LABEL_10:
      v19 = v15 | (v10 << 6);
      v73 = v16;
      v20 = (*(v7 + 48) + 16 * v19);
      v74 = *v20;
      v75 = v19;
      v21 = *(*(v7 + 56) + 8 * v19);
      v22 = *(v21 + 16);
      if (v22)
      {
        break;
      }

      v60 = v20[1];

LABEL_31:
      *(v0 + 40) = type metadata accessor for Prompt();
      *(v0 + 48) = MEMORY[0x1E69C6398];
      __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      Prompt.init(components:)();

      *(v70 + ((v75 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v75;
      v61 = (v9[6] + 16 * v75);
      *v61 = v74;
      v61[1] = v60;
      result = outlined init with take of PromptComponentValueConvertible((v0 + 16), v9[7] + 40 * v75);
      v62 = v9[2];
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      if (v63)
      {
        goto LABEL_39;
      }

      v9[2] = v64;
      v14 = v69;
      v13 = v73;
      if (!v73)
      {
        goto LABEL_5;
      }
    }

    v72 = v10;
    v98 = MEMORY[0x1E69E7CC0];
    v71 = v20[1];

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v23 = 0;
    v96 = v21 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
    v93 = v21;
    v95 = v22;
    while (v23 < *(v21 + 16))
    {
      v24 = *(v0 + 280);
      v25 = *(v0 + 264);
      outlined init with copy of Prompt.Delimiter(v96 + *(v97 + 72) * v23, v24, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component);
      outlined init with copy of Prompt.Delimiter(v24, v25, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v46 = *(v0 + 248);
          v48 = *(v0 + 224);
          v47 = *(v0 + 232);
          v50 = *(v0 + 200);
          v49 = *(v0 + 208);
          (*v82)(v46, *(v0 + 264), v47);
          (*v81)(v48, v46, v47);
          v51 = v49;
          v22 = v95;
          (*v94)(v48, v80, v51);
          v52 = type metadata accessor for Prompt.Component.Privacy();
          (*(*(v52 - 8) + 56))(v50, 1, 1, v52);
          v21 = v93;
          Prompt.Component.init(value:priority:privacy:)();
          (*v79)(v46, v47);
        }

        else
        {
          v34 = *(v92 + 8);
          v35 = *(v0 + 224);
          if (*(v92 + 16))
          {
            v36 = *(v0 + 200);
            v37 = *(v0 + 144);
            v38 = *(v0 + 128);
            SelfAttention.init(_:)();
            lazy protocol witness table accessor for type Prompt.RenderError and conformance Prompt.RenderError(&lazy protocol witness table cache variable for type SelfAttention and conformance SelfAttention, MEMORY[0x1E69A14A0], MEMORY[0x1E69A1498]);
            PromptComponentValueCustomDataConvertible.toValue()();
            (*v76)(v37, v38);
            v39 = type metadata accessor for Prompt.Component.Privacy();
            (*(*(v39 - 8) + 56))(v36, 1, 1, v39);
            v22 = v95;
          }

          else
          {
            v54 = *(v0 + 200);
            v53 = *(v0 + 208);
            *v35 = **(v0 + 264);
            *(v78 + 8) = v34;
            (*v94)(v35, v77, v53);
            v55 = type metadata accessor for Prompt.Component.Privacy();
            (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
          }

          Prompt.Component.init(value:priority:privacy:)();
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v40 = *(v0 + 224);
        v42 = *(v0 + 200);
        v41 = *(v0 + 208);
        v43 = **(v0 + 264);
        Prompt.ImageSurface.init(surface:)();
        (*v94)(v40, v83, v41);
        v44 = type metadata accessor for Prompt.Component.Privacy();
        (*(*(v44 - 8) + 56))(v42, 1, 1, v44);
        Prompt.Component.init(value:priority:privacy:)();

        v22 = v95;
      }

      else
      {
        v27 = *(v0 + 224);
        v29 = *(v0 + 200);
        v28 = *(v0 + 208);
        if (EnumCaseMultiPayload == 3)
        {
          v30 = *(v0 + 192);
          v31 = *(v0 + 176);
          (*v87)(v30, *(v0 + 264), v31);
          (*v86)(v27, v30, v31);
          (*v94)(v27, v85, v28);
          v32 = type metadata accessor for Prompt.Component.Privacy();
          (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
          Prompt.Component.init(value:priority:privacy:)();
          v33 = v84;
        }

        else
        {
          v30 = *(v0 + 168);
          v31 = *(v0 + 152);
          (*v91)(v30, *(v0 + 264), v31);
          (*v90)(v27, v30, v31);
          (*v94)(v27, v89, v28);
          v45 = type metadata accessor for Prompt.Component.Privacy();
          (*(*(v45 - 8) + 56))(v29, 1, 1, v45);
          Prompt.Component.init(value:priority:privacy:)();
          v33 = v88;
        }

        (*v33)(v30, v31);
        v21 = v93;
        v22 = v95;
      }

      outlined destroy of Prompt.Delimiter(*(v0 + 280), type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component);
      v57 = *(v98 + 16);
      v56 = *(v98 + 24);
      if (v57 >= v56 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1);
      }

      v58 = *(v0 + 304);
      v59 = *(v0 + 288);
      ++v23;
      *(v98 + 16) = v57 + 1;
      result = (*(v1 + 32))(v98 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v57, v58, v59);
      if (v22 == v23)
      {
        v9 = v68;
        v60 = v71;
        v10 = v72;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        v65 = *(v0 + 112);
        v66 = *(v0 + 96);
        *(v0 + 56) = 0u;
        *(v0 + 72) = 0u;
        *(v0 + 88) = 0;
        Prompt.renderToTokenGenerationPrompt(bindingVariables:customDataTransformers:locale:fallbackBindingVariable:isTopLevelRendering:)(v9, MEMORY[0x1E69E7CC0], v65, v0 + 56, 1, v66);
        outlined destroy of [Regex2BNF.CharacterPredicate](v0 + 56, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);

        v67 = *(v0 + 8);

        return v67();
      }

      v18 = *(v7 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v16 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void Prompt.appendRenderedImage(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v32 - v3;
  v33 = type metadata accessor for Prompt.Component.Value();
  v4 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Prompt.Component();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Prompt.ImageFormat();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1AC57BC10](v12);
  v15 = *(v11 + 88);
  v36 = v10;
  v16 = v15(v14, v10);
  v17 = *MEMORY[0x1E69C6228];
  if (v16 == *MEMORY[0x1E69C6228] || v16 == *MEMORY[0x1E69C6220])
  {
    v19 = v16;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IOSurface, 0x1E696CDE8);
    v20 = Prompt.ImageData.data.getter();
    IOSurface.init(imageData:)(v20, v21);
    if (v22)
    {
      v39 = v22;
      specialized static Prompt.+= infix(_:_:)(v35, &v39);
    }

    else
    {
      v30 = Prompt.ImageData.data.getter();
      LOBYTE(v39) = v19 != v17;
      v40 = v30;
      v41 = v31;
      specialized static Prompt.+= infix(_:_:)(v35, &v39);
      outlined consume of Data._Representation(v40, v41);
    }
  }

  else
  {
    v23 = type metadata accessor for Prompt.ImageData();
    (*(*(v23 - 8) + 16))(v6, a1, v23);
    (*(v4 + 104))(v6, *MEMORY[0x1E69C6338], v33);
    v24 = type metadata accessor for Prompt.Component.Privacy();
    (*(*(v24 - 8) + 56))(v34, 1, 1, v24);
    Prompt.Component.init(value:priority:privacy:)();
    v25 = type metadata accessor for Prompt.RenderError();
    lazy protocol witness table accessor for type Prompt.RenderError and conformance Prompt.RenderError(&lazy protocol witness table cache variable for type Prompt.RenderError and conformance Prompt.RenderError, MEMORY[0x1E69C6248], MEMORY[0x1E69C6250]);
    swift_allocError();
    v27 = v26;
    v29 = v37;
    v28 = v38;
    (*(v37 + 16))(v26, v9, v38);
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69C6230], v25);
    swift_willThrow();
    (*(v29 + 8))(v9, v28);
    (*(v11 + 8))(v14, v36);
  }
}

uint64_t closure #1 in Prompt.SelfAttentionTransformer.render(value:)@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for SpecialToken();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v29 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for Prompt.StringInterpolation();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = type metadata accessor for Prompt();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v28 = &v27 - v11;
  Prompt.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  Prompt.StringInterpolation.appendLiteral(_:)(v12);
  SelfAttention.text.getter();
  v13 = type metadata accessor for Prompt.Component.Privacy();
  v14 = *(*(v13 - 8) + 56);
  v14(v5, 1, 1, v13);
  Prompt.StringInterpolation.appendInterpolation(_:priority:privacy:)();

  outlined destroy of [Regex2BNF.CharacterPredicate](v5, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  Prompt.StringInterpolation.appendLiteral(_:)(v15);
  if (one-time initialization token for promptModule != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Prompt.SpecialToken(0);
  __swift_project_value_buffer(v16, static Prompt.SpecialToken.promptModule);

  v17 = v29;
  SpecialToken.init(identifier:)();
  v14(v5, 1, 1, v13);
  v18 = v31;
  Prompt.StringInterpolation.appendInterpolation<A>(_:priority:privacy:)();
  outlined destroy of [Regex2BNF.CharacterPredicate](v5, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR);
  (*(v30 + 8))(v17, v18);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  Prompt.StringInterpolation.appendLiteral(_:)(v19);
  v20 = v27;
  Prompt.init(stringInterpolation:)();
  v21 = MEMORY[0x1E69C6388];
  v22 = v28;
  static CustomPromptBuilder.buildExpression(_:)();
  v23 = *(v8 + 8);
  v23(v20, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v24 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1A8FC9400;
  (*(v8 + 16))(v25 + v24, v22, v7);
  MEMORY[0x1AC57B890](v25, v7, v21);

  return (v23)(v22, v7);
}

uint64_t Prompt.transformToPrepareForTokenGenerationPrompt(customDataTransformers:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A8FC9400;
  *(inited + 56) = &type metadata for Prompt.SelfAttentionTransformer;
  *(inited + 64) = lazy protocol witness table accessor for type Prompt.SelfAttentionTransformer and conformance Prompt.SelfAttentionTransformer();

  specialized Array.append<A>(contentsOf:)(inited);
  Prompt.transform(includeAttachments:customDataTransformers:)();
}

unint64_t lazy protocol witness table accessor for type Prompt.SelfAttentionTransformer and conformance Prompt.SelfAttentionTransformer()
{
  result = lazy protocol witness table cache variable for type Prompt.SelfAttentionTransformer and conformance Prompt.SelfAttentionTransformer;
  if (!lazy protocol witness table cache variable for type Prompt.SelfAttentionTransformer and conformance Prompt.SelfAttentionTransformer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.SelfAttentionTransformer and conformance Prompt.SelfAttentionTransformer);
  }

  return result;
}

void specialized addCacheablePrefixTerminatorIfNotPresent #1 () in Prompt.renderToTokenGenerationPrompt(bindingVariables:customDataTransformers:locale:fallbackBindingVariable:isTopLevelRendering:)(_BYTE *a1, void *a2)
{
  swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    MEMORY[0x1AC57C060](0);
    v4 = MEMORY[0x1E69E7CC0];
    v7[2] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
    v7[3] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v4);
    if (one-time initialization token for cacheablePrefixTerminator != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Prompt.SpecialToken(0);
    v6 = __swift_project_value_buffer(v5, static Prompt.SpecialToken.cacheablePrefixTerminator);
    Prompt.StringInterpolation.appendInterpolation(token:)(v6);
    swift_beginAccess();
    specialized static Prompt.+= infix(_:_:)(a2, v7);
    swift_endAccess();

    swift_beginAccess();
    *a1 = 1;
  }
}

uint64_t specialized static PromptTemplateInfo.RichVariableBinding.Component.Content.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v61 = a2;
  v2 = type metadata accessor for Prompt.PreprocessedImageData();
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Prompt.ImageEmbeddingData();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Prompt.ImageData();
  v59 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content(0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v52 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v52 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentV7ContentO_AItMd, &_s19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentV7ContentO_AItMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v52 - v24;
  v27 = &v52 + *(v26 + 56) - v24;
  outlined init with copy of Prompt.Delimiter(v60, &v52 - v24, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
  outlined init with copy of Prompt.Delimiter(v61, v27, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v36 = v8;
    v37 = v59;
    if (EnumCaseMultiPayload)
    {
      outlined init with copy of Prompt.Delimiter(v25, v19, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v37 + 32))(v36, v27, v6);
        v32 = static Prompt.ImageData.== infix(_:_:)();
        v47 = *(v37 + 8);
        v47(v36, v6);
        v47(v19, v6);
        goto LABEL_16;
      }

      (*(v37 + 8))(v19, v6);
      goto LABEL_22;
    }

    outlined init with copy of Prompt.Delimiter(v25, v22, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
    v39 = *v22;
    v38 = *(v22 + 1);
    v40 = v22[16];
    if (swift_getEnumCaseMultiPayload())
    {

LABEL_22:
      outlined destroy of [Regex2BNF.CharacterPredicate](v25, &_s19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentV7ContentO_AItMd, &_s19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentV7ContentO_AItMR);
LABEL_23:
      v32 = 0;
      return v32 & 1;
    }

    v49 = v27[16];
    if (v39 == *v27 && v38 == *(v27 + 1))
    {

      if (v40 == v49)
      {
LABEL_31:
        outlined destroy of Prompt.Delimiter(v25, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
        v32 = 1;
        return v32 & 1;
      }
    }

    else
    {
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v51 & 1) != 0 && ((v40 ^ v49) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    outlined destroy of Prompt.Delimiter(v25, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      outlined init with copy of Prompt.Delimiter(v25, v13, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v30 = v55;
        v29 = v56;
        v31 = v52;
        (*(v55 + 32))(v52, v27, v56);
        v32 = static Prompt.ImageEmbeddingData.== infix(_:_:)();
        v33 = *(v30 + 8);
        v33(v31, v29);
        v34 = v13;
        v35 = v29;
LABEL_13:
        v33(v34, v35);
        goto LABEL_16;
      }

      (*(v55 + 8))(v13, v56);
    }

    else
    {
      v43 = v54;
      outlined init with copy of Prompt.Delimiter(v25, v54, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v45 = v57;
        v44 = v58;
        v46 = v53;
        (*(v57 + 32))(v53, v27, v58);
        v32 = static Prompt.PreprocessedImageData.== infix(_:_:)();
        v33 = *(v45 + 8);
        v33(v46, v44);
        v34 = v43;
        v35 = v44;
        goto LABEL_13;
      }

      (*(v57 + 8))(v43, v58);
    }

    goto LABEL_22;
  }

  outlined init with copy of Prompt.Delimiter(v25, v16, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
  v41 = *v16;
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    goto LABEL_22;
  }

  v42 = *v27;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v32 = static NSObject.== infix(_:_:)();

LABEL_16:
  outlined destroy of Prompt.Delimiter(v25, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
  return v32 & 1;
}

uint64_t outlined destroy of Prompt.Delimiter(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of Prompt.Delimiter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Prompt.Delimiter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [TemplateVariableBinding] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [TemplateVariableBinding] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [TemplateVariableBinding] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay29GenerativeFunctionsFoundation23TemplateVariableBindingVGMd, &_sSay29GenerativeFunctionsFoundation23TemplateVariableBindingVGMR);
    lazy protocol witness table accessor for type Prompt.RenderError and conformance Prompt.RenderError(&lazy protocol witness table cache variable for type TemplateVariableBinding and conformance TemplateVariableBinding, MEMORY[0x1E69A0CE8], MEMORY[0x1E69A0CF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [TemplateVariableBinding] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModelConfiguration.PrompteTemplateError and conformance ModelConfiguration.PrompteTemplateError()
{
  result = lazy protocol witness table cache variable for type ModelConfiguration.PrompteTemplateError and conformance ModelConfiguration.PrompteTemplateError;
  if (!lazy protocol witness table cache variable for type ModelConfiguration.PrompteTemplateError and conformance ModelConfiguration.PrompteTemplateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelConfiguration.PrompteTemplateError and conformance ModelConfiguration.PrompteTemplateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelConfiguration.PrompteTemplateError and conformance ModelConfiguration.PrompteTemplateError;
  if (!lazy protocol witness table cache variable for type ModelConfiguration.PrompteTemplateError and conformance ModelConfiguration.PrompteTemplateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelConfiguration.PrompteTemplateError and conformance ModelConfiguration.PrompteTemplateError);
  }

  return result;
}

void type metadata completion function for PromptTemplateInfo(uint64_t a1)
{
  type metadata accessor for [String : PromptTemplateInfo.RichVariableBinding](319, &lazy cache variable for type metadata for [String : PromptTemplateInfo.RichVariableBinding], &type metadata for PromptTemplateInfo.RichVariableBinding);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String : PromptTemplateInfo.RichVariableBinding](319, &lazy cache variable for type metadata for [String : String], MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Locale?(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata completion function for PromptTemplateInfo.RichVariableBinding.Component(uint64_t a1)
{
  result = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for PromptTemplateInfo.RichVariableBinding.Component.Content(uint64_t a1)
{
  result = type metadata accessor for Prompt.ImageData();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Prompt.ImageEmbeddingData();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Prompt.PreprocessedImageData();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}