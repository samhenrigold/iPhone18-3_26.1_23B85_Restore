uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSaySo15DDScannerResultCG_Tt1g5(uint64_t a1, uint64_t a2)
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

        v8 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo15DDScannerResultC_Tt1g5(v5, v7);

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

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo15DDScannerResultC_Tt1g5(unint64_t a1, unint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x25F8A01B0](v22))
  {
    if (a2 >> 62)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        v23 = a2;
      }

      else
      {
        v23 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      result = MEMORY[0x25F8A01B0](v23);
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v8 = a1 & 0xFFFFFFFFFFFFFF8;
    v9 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v8 = a1;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v5 = type metadata accessor for DDScannerResult();
    v4 = a1 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x25F89FFD0](v13 - 4, a1);
      }

      else
      {
        v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15 >= v4)
        {
          goto LABEL_34;
        }

        v17 = *(a1 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = MEMORY[0x25F89FFD0](v13 - 4, a2);
      }

      else
      {
        v4 = *(v24 + 16);
        if (v15 >= v4)
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = static NSObject.== infix(_:_:)();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != i)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    if ((a1 & 0x8000000000000000) != 0)
    {
      v22 = a1;
    }

    else
    {
      v22 = v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t AnswerSynthesisResult.AnswerCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726577736E61 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int AnswerSynthesisResult.AnswerCodingKeys.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](0);
  return Hasher._finalize()();
}

uint64_t AnswerSynthesisResult.DisambiguateCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73726577736E61 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025DBF0670 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int AnswerSynthesisResult.DisambiguateCodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1 & 1);
  return Hasher._finalize()();
}

uint64_t AnswerSynthesisResult.DisambiguateCodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x73726577736E61;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnswerSynthesisResult.AnswerCodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnswerSynthesisResult.AnswerCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AnswerSynthesisResult.AnswerCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AnswerSynthesisResult.AnswerCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_56();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResult.AnswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResult.AnswerCodingKeys and conformance AnswerSynthesisResult.AnswerCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResult.AnswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResult.AnswerCodingKeys and conformance AnswerSynthesisResult.AnswerCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnswerSynthesisResult.DisambiguateCodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  AnswerSynthesisResult.DisambiguateCodingKeys.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnswerSynthesisResult.DisambiguateCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AnswerSynthesisResult.DisambiguateCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AnswerSynthesisResult.DisambiguateCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AnswerSynthesisResult.DisambiguateCodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResult.DisambiguateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResult.DisambiguateCodingKeys and conformance AnswerSynthesisResult.DisambiguateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResult.DisambiguateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResult.DisambiguateCodingKeys and conformance AnswerSynthesisResult.DisambiguateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResult.NoAnswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResult.NoAnswerCodingKeys and conformance AnswerSynthesisResult.NoAnswerCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResult.NoAnswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResult.NoAnswerCodingKeys and conformance AnswerSynthesisResult.NoAnswerCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResult.NoEligibleResultsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResult.NoEligibleResultsCodingKeys and conformance AnswerSynthesisResult.NoEligibleResultsCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResult.NoEligibleResultsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResult.NoEligibleResultsCodingKeys and conformance AnswerSynthesisResult.NoEligibleResultsCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void AnswerSynthesisResult.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch21AnswerSynthesisResultO02NoF10CodingKeys33_20C464D5414377117A6D9988CE04326CLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch21AnswerSynthesisResultO02NoF10CodingKeys33_20C464D5414377117A6D9988CE04326CLLOGMR);
  OUTLINED_FUNCTION_14();
  v102 = v4;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_49_3();
  v107 = v6;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch21AnswerSynthesisResultO27NoEligibleResultsCodingKeys33_20C464D5414377117A6D9988CE04326CLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch21AnswerSynthesisResultO27NoEligibleResultsCodingKeys33_20C464D5414377117A6D9988CE04326CLLOGMR);
  OUTLINED_FUNCTION_14();
  v101 = v7;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_49_3();
  v106 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch21AnswerSynthesisResultO22DisambiguateCodingKeys33_20C464D5414377117A6D9988CE04326CLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch21AnswerSynthesisResultO22DisambiguateCodingKeys33_20C464D5414377117A6D9988CE04326CLLOGMR);
  OUTLINED_FUNCTION_14();
  v103 = v11;
  v104 = v10;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_49_3();
  v112 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch21AnswerSynthesisResultO0F10CodingKeys33_20C464D5414377117A6D9988CE04326CLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch21AnswerSynthesisResultO0F10CodingKeys33_20C464D5414377117A6D9988CE04326CLLOGMR);
  OUTLINED_FUNCTION_14();
  v99 = v15;
  v100 = v14;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_49_3();
  v105 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch21AnswerSynthesisResultO10CodingKeys33_20C464D5414377117A6D9988CE04326CLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch21AnswerSynthesisResultO10CodingKeys33_20C464D5414377117A6D9988CE04326CLLOGMR);
  OUTLINED_FUNCTION_14();
  v111 = v19;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v93 - v21;
  v23 = type metadata accessor for AnswerSynthesisResult(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_22_7();
  MEMORY[0x28223BE20](v25);
  v27 = &v93 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v93 - v29;
  v31 = a1[3];
  v113 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  lazy protocol witness table accessor for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys();
  v32 = v114;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v32)
  {
    goto LABEL_8;
  }

  v95 = v27;
  v94 = v2;
  v33 = v112;
  v98 = v30;
  v114 = v23;
  v34 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC10OmniSearch0K22ToolSnippetPluginModelO10CodingKeys33_764E27219276D372D031B6F44FD14947LLO_Tt1g5(v34, 0);
  if (v37 == v38 >> 1)
  {
LABEL_7:
    v53 = type metadata accessor for DecodingError();
    swift_allocError();
    v55 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v55 = v114;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D84160], v53);
    swift_willThrow();
    swift_unknownObjectRelease();
    v56 = OUTLINED_FUNCTION_70_2();
    v57(v56);
LABEL_8:
    v58 = v113;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    return;
  }

  v96 = v22;
  v97 = v18;
  v93 = 0;
  if (v37 < (v38 >> 1))
  {
    v39 = *(v36 + v37);
    specialized ArraySlice.subscript.getter(v37 + 1, v38 >> 1, v35, v36, v37, v38);
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    v44 = v109;
    if (v41 == v43 >> 1)
    {
      v45 = v93;
      v46 = v108;
      switch(v39)
      {
        case 1:
          v116[3] = 1;
          lazy protocol witness table accessor for type AnswerSynthesisResult.DisambiguateCodingKeys and conformance AnswerSynthesisResult.DisambiguateCodingKeys();
          v66 = v96;
          v60 = v97;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (v45)
          {
            OUTLINED_FUNCTION_19_6();
            v61 = v66;
            goto LABEL_15;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
          v116[2] = 0;
          lazy protocol witness table accessor for type [SearchResult] and conformance <A> [A](&lazy protocol witness table cache variable for type [SearchResult] and conformance <A> [A], &lazy protocol witness table cache variable for type SearchResult and conformance SearchResult, &protocol conformance descriptor for SearchResult, MEMORY[0x277D83978]);
          v75 = v104;
          v76 = v33;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v82 = v115;
          v116[1] = 1;
          v83 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v84 = (v103 + 8);
          v85 = v75;
          v86 = (v111 + 8);
          v93 = 0;
          v87 = v83;
          v89 = v88;
          swift_unknownObjectRelease();
          (*v84)(v76, v85);
          (*v86)(v96, v97);
          v90 = v94;
          *v94 = v82;
          v90[1] = v87;
          v90[2] = v89;
          OUTLINED_FUNCTION_70_2();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_3_8();
          v91 = v90;
          v80 = v98;
          _s10OmniSearch0B6ResultVWObTm_2(v91, v98, v92);
          v73 = v113;
          v46 = v108;
          goto LABEL_19;
        case 2:
          v116[4] = 2;
          lazy protocol witness table accessor for type AnswerSynthesisResult.NoEligibleResultsCodingKeys and conformance AnswerSynthesisResult.NoEligibleResultsCodingKeys();
          v59 = v106;
          v60 = v97;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (v45)
          {
            v61 = OUTLINED_FUNCTION_14_6();
LABEL_15:
            v62(v61, v60);
            swift_unknownObjectRelease();
            goto LABEL_8;
          }

          swift_unknownObjectRelease();
          (*(v101 + 8))(v59, v44);
          v67 = OUTLINED_FUNCTION_14_6();
          v68(v67, v60);
          v80 = v98;
          OUTLINED_FUNCTION_70_2();
LABEL_17:
          swift_storeEnumTagMultiPayload();
LABEL_18:
          v73 = v113;
LABEL_19:
          OUTLINED_FUNCTION_3_8();
          _s10OmniSearch0B6ResultVWObTm_2(v80, v46, v74);
          v58 = v73;
          break;
        case 3:
          v117 = 3;
          v63 = lazy protocol witness table accessor for type AnswerSynthesisResult.NoAnswerCodingKeys and conformance AnswerSynthesisResult.NoAnswerCodingKeys();
          OUTLINED_FUNCTION_25_8(&unk_286F79F20, &v117, v64, v65, v63);
          swift_unknownObjectRelease();
          v69 = OUTLINED_FUNCTION_23_6();
          v70(v69);
          v71 = OUTLINED_FUNCTION_14_6();
          v72(v71, v44);
          v80 = v98;
          OUTLINED_FUNCTION_70_2();
          goto LABEL_17;
        default:
          v116[0] = 0;
          v47 = lazy protocol witness table accessor for type AnswerSynthesisResult.AnswerCodingKeys and conformance AnswerSynthesisResult.AnswerCodingKeys();
          OUTLINED_FUNCTION_25_8(&unk_286F79E50, v116, v48, v49, v47);
          type metadata accessor for SearchResult(0);
          OUTLINED_FUNCTION_1_10();
          lazy protocol witness table accessor for type SearchResult and conformance SearchResult(v50, v51, &protocol conformance descriptor for SearchResult);
          v52 = v95;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v77 = OUTLINED_FUNCTION_23_6();
          v78(v77);
          OUTLINED_FUNCTION_19_6();
          v79(v96, v97);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_3_8();
          v80 = v98;
          _s10OmniSearch0B6ResultVWObTm_2(v52, v98, v81);
          goto LABEL_18;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfCSi6offset_10OmniSearch0L6ResultV7elementt_Tt1g5(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR) - 8;
  v4 = *(v3 + 16);
  v5 = __OFADD__(a2, v4);
  v6 = a2 + v4;
  if (v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v6 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    return v3;
  }

LABEL_9:
  __break(1u);
  return result;
}

void _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC10OmniSearch0K22ToolSnippetPluginModelO10CodingKeys33_764E27219276D372D031B6F44FD14947LLO_Tt1g5(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_7();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisResult.NoAnswerCodingKeys and conformance AnswerSynthesisResult.NoAnswerCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResult.NoAnswerCodingKeys and conformance AnswerSynthesisResult.NoAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResult.NoAnswerCodingKeys and conformance AnswerSynthesisResult.NoAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResult.NoAnswerCodingKeys and conformance AnswerSynthesisResult.NoAnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResult.NoAnswerCodingKeys and conformance AnswerSynthesisResult.NoAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResult.NoAnswerCodingKeys and conformance AnswerSynthesisResult.NoAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResult.NoAnswerCodingKeys and conformance AnswerSynthesisResult.NoAnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResult.NoAnswerCodingKeys and conformance AnswerSynthesisResult.NoAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResult.NoAnswerCodingKeys and conformance AnswerSynthesisResult.NoAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResult.NoAnswerCodingKeys and conformance AnswerSynthesisResult.NoAnswerCodingKeys);
  }

  return result;
}

uint64_t _s10OmniSearch0B6ResultVWObTm_2(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisResult.NoEligibleResultsCodingKeys and conformance AnswerSynthesisResult.NoEligibleResultsCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResult.NoEligibleResultsCodingKeys and conformance AnswerSynthesisResult.NoEligibleResultsCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResult.NoEligibleResultsCodingKeys and conformance AnswerSynthesisResult.NoEligibleResultsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResult.NoEligibleResultsCodingKeys and conformance AnswerSynthesisResult.NoEligibleResultsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResult.NoEligibleResultsCodingKeys and conformance AnswerSynthesisResult.NoEligibleResultsCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResult.NoEligibleResultsCodingKeys and conformance AnswerSynthesisResult.NoEligibleResultsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResult.NoEligibleResultsCodingKeys and conformance AnswerSynthesisResult.NoEligibleResultsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResult.NoEligibleResultsCodingKeys and conformance AnswerSynthesisResult.NoEligibleResultsCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResult.NoEligibleResultsCodingKeys and conformance AnswerSynthesisResult.NoEligibleResultsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResult.NoEligibleResultsCodingKeys and conformance AnswerSynthesisResult.NoEligibleResultsCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisResult.DisambiguateCodingKeys and conformance AnswerSynthesisResult.DisambiguateCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResult.DisambiguateCodingKeys and conformance AnswerSynthesisResult.DisambiguateCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResult.DisambiguateCodingKeys and conformance AnswerSynthesisResult.DisambiguateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResult.DisambiguateCodingKeys and conformance AnswerSynthesisResult.DisambiguateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResult.DisambiguateCodingKeys and conformance AnswerSynthesisResult.DisambiguateCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResult.DisambiguateCodingKeys and conformance AnswerSynthesisResult.DisambiguateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResult.DisambiguateCodingKeys and conformance AnswerSynthesisResult.DisambiguateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResult.DisambiguateCodingKeys and conformance AnswerSynthesisResult.DisambiguateCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResult.DisambiguateCodingKeys and conformance AnswerSynthesisResult.DisambiguateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResult.DisambiguateCodingKeys and conformance AnswerSynthesisResult.DisambiguateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResult.DisambiguateCodingKeys and conformance AnswerSynthesisResult.DisambiguateCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResult.DisambiguateCodingKeys and conformance AnswerSynthesisResult.DisambiguateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResult.DisambiguateCodingKeys and conformance AnswerSynthesisResult.DisambiguateCodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [SearchResult] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
    OUTLINED_FUNCTION_1_10();
    lazy protocol witness table accessor for type SearchResult and conformance SearchResult(a2, v8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisResult.AnswerCodingKeys and conformance AnswerSynthesisResult.AnswerCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResult.AnswerCodingKeys and conformance AnswerSynthesisResult.AnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResult.AnswerCodingKeys and conformance AnswerSynthesisResult.AnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResult.AnswerCodingKeys and conformance AnswerSynthesisResult.AnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResult.AnswerCodingKeys and conformance AnswerSynthesisResult.AnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResult.AnswerCodingKeys and conformance AnswerSynthesisResult.AnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResult.AnswerCodingKeys and conformance AnswerSynthesisResult.AnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResult.AnswerCodingKeys and conformance AnswerSynthesisResult.AnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResult.AnswerCodingKeys and conformance AnswerSynthesisResult.AnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResult.AnswerCodingKeys and conformance AnswerSynthesisResult.AnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisResult.AnswerCodingKeys and conformance AnswerSynthesisResult.AnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisResult.AnswerCodingKeys and conformance AnswerSynthesisResult.AnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisResult.AnswerCodingKeys and conformance AnswerSynthesisResult.AnswerCodingKeys);
  }

  return result;
}

void type metadata completion function for AnswerSynthesisResult(uint64_t a1)
{
  type metadata accessor for (answer: SearchResult)();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (answers: [SearchResult], disambiguationDialog: String?)(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (answer: SearchResult)()
{
  if (!lazy cache variable for type metadata for (answer: SearchResult))
  {
    v0 = type metadata accessor for SearchResult(0);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (answer: SearchResult));
    }
  }
}

void type metadata accessor for (answers: [SearchResult], disambiguationDialog: String?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (answers: [SearchResult], disambiguationDialog: String?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (answers: [SearchResult], disambiguationDialog: String?));
    }
  }
}

uint64_t getEnumTagSinglePayload for AnswerSynthesisResult.AnswerCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for AnswerSynthesisResult.AnswerCodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnswerSynthesisResult.DisambiguateCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AnswerSynthesisResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t specialized ArraySlice.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t type metadata accessor for DDScannerResult()
{
  result = lazy cache variable for type metadata for DDScannerResult;
  if (!lazy cache variable for type metadata for DDScannerResult)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DDScannerResult);
  }

  return result;
}

uint64_t outlined copy of SearchGlobalEntity.CustomAttribute(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  switch(a4 >> 62)
  {
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SearchResult and conformance SearchResult(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of AnswerSynthesisResult(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s10OmniSearch0B6ResultVWOhTm_1(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_8()
{

  return _s10OmniSearch0B6ResultVWOhTm_1(v0, type metadata accessor for AnswerSynthesisResult);
}

uint64_t OUTLINED_FUNCTION_8_9()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_25_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_33_5()
{
}

void *OUTLINED_FUNCTION_34_8()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 120), v0);
}

uint64_t AnswerSynthesisServiceImp.__allocating_init(answerSynthesisController:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AnswerSynthesisServiceImp.init(answerSynthesisController:)(a1);
  return v2;
}

uint64_t AnswerSynthesisServiceImp.init(answerSynthesisController:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  if (one-time initialization token for server != -1)
  {
    OUTLINED_FUNCTION_0_7(&one-time initialization token for server);
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logging.server);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_172();
    *v7 = 0;
    _os_log_impl(&dword_25D85C000, v5, v6, "init()", v7, 2u);
    MEMORY[0x25F8A1050](v7, -1, -1);
  }

  *(v2 + 24) = a1;
  return v2;
}

uint64_t AnswerSynthesisServiceImp.__allocating_init()()
{
  type metadata accessor for AnswerSynthesisController();
  type metadata accessor for FeatureFlagService();
  swift_allocObject();
  v0 = AnswerSynthesisController.__allocating_init(featureFlagService:isXPC:)();
  v1 = swift_allocObject();
  AnswerSynthesisServiceImp.init(answerSynthesisController:)(v0);
  return v1;
}

uint64_t AnswerSynthesisServiceImp.activate()()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    result = (*(**(v0 + 24) + 504))();
    *(v0 + 16) = 1;
  }

  return result;
}

uint64_t AnswerSynthesisServiceImp.deactivate()()
{
  if (*(v0 + 16) == 1)
  {
    result = (*(**(v0 + 24) + 512))();
    *(v0 + 16) = 0;
  }

  return result;
}

uint64_t AnswerSynthesisServiceImp.extractAnswer(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](AnswerSynthesisServiceImp.extractAnswer(_:));
}

{
  v4 = *v2;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t AnswerSynthesisServiceImp.extractAnswer(_:)()
{
  if (one-time initialization token for server != -1)
  {
    OUTLINED_FUNCTION_0_7(&one-time initialization token for server);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logging.server);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_5_9();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_81_4(v4);
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_2_8();
  }

  v10 = v0[3];

  v14 = (*(**(v10 + 24) + 520) + **(**(v10 + 24) + 520));
  v11 = swift_task_alloc();
  v0[4] = v11;
  *v11 = v0;
  v11[1] = AnswerSynthesisServiceImp.extractAnswer(_:);
  v12 = v0[2];

  return v14(v12);
}

uint64_t AnswerSynthesisServiceImp.deinit()
{
  AnswerSynthesisServiceImp.deactivate()();

  return v0;
}

uint64_t AnswerSynthesisServiceImp.__deallocating_deinit()
{
  AnswerSynthesisServiceImp.deactivate()();

  return swift_deallocClassInstance();
}

uint64_t AnswerSynthesisServiceImp.handle(_:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = type metadata accessor for AnswerSynthesisQuery(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v4 = type metadata accessor for PrewarmUrgency();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  type metadata accessor for AnswerSynthesisXPCRequest(0);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](AnswerSynthesisServiceImp.handle(_:progressReporter:));
}

uint64_t AnswerSynthesisServiceImp.handle(_:progressReporter:)()
{
  v1 = v0[17];
  v2 = v0[8];
  outlined init with copy of AnswerSynthesisXPCRequest(v0[6], v1, type metadata accessor for AnswerSynthesisXPCRequest);
  switch(__swift_getEnumTagSinglePayload(v1, 3, v2))
  {
    case 1u:
      if (one-time initialization token for server != -1)
      {
        OUTLINED_FUNCTION_0_7(&one-time initialization token for server);
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logging.server);
      v31 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_5_9();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_81_4(v33);
        OUTLINED_FUNCTION_25_6();
        _os_log_impl(v34, v35, v36, v37, v38, 2u);
        OUTLINED_FUNCTION_2_8();
      }

      v40 = v0[15];
      v39 = v0[16];
      v42 = v0[13];
      v41 = v0[14];
      v43 = v0[11];
      v44 = v0[12];
      v45 = v0[7];
      v23 = v0[5];

      IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.init()();
      v46 = *(v45 + 24);
      static PrewarmUrgency.imminent.getter();
      (*(*v46 + 376))(v42, v39);
      (*(v44 + 8))(v42, v43);
      (*(v40 + 8))(v39, v41);
      goto LABEL_21;
    case 2u:
      if (one-time initialization token for server != -1)
      {
        OUTLINED_FUNCTION_0_7(&one-time initialization token for server);
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logging.server);
      v18 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_5_9();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_81_4(v20);
        OUTLINED_FUNCTION_9_8(&dword_25D85C000, v21, v22, "activate()");
        OUTLINED_FUNCTION_2_8();
      }

      v23 = v0[5];

      AnswerSynthesisServiceImp.activate()();
      goto LABEL_21;
    case 3u:
      if (one-time initialization token for server != -1)
      {
        OUTLINED_FUNCTION_0_7(&one-time initialization token for server);
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logging.server);
      v25 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_5_9();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_81_4(v27);
        OUTLINED_FUNCTION_9_8(&dword_25D85C000, v28, v29, "deactivate()");
        OUTLINED_FUNCTION_2_8();
      }

      v23 = v0[5];

      AnswerSynthesisServiceImp.deactivate()();
LABEL_21:
      *v23 = 0;
      v23[1] = 0;
      v23[2] = 0;
      OUTLINED_FUNCTION_1_11();
      *(v47 + 24) = 1;

      OUTLINED_FUNCTION_127();

      result = v48();
      break;
    default:
      outlined init with take of AnswerSynthesisQuery(v0[17], v0[10]);
      if (one-time initialization token for server != -1)
      {
        OUTLINED_FUNCTION_0_7(&one-time initialization token for server);
      }

      v3 = v0[9];
      v4 = v0[10];
      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logging.server);
      outlined init with copy of AnswerSynthesisXPCRequest(v4, v3, type metadata accessor for AnswerSynthesisQuery);
      v6 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_5_9();
      v8 = os_log_type_enabled(v6, v7);
      v9 = v0[9];
      if (v8)
      {
        v10 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v10 = 136315138;

        outlined destroy of AnswerSynthesisQuery(v9);
        v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v10 + 4) = v11;
        OUTLINED_FUNCTION_25_6();
        _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        MEMORY[0x25F8A1050](v52, -1, -1);
        OUTLINED_FUNCTION_2_8();
      }

      else
      {

        outlined destroy of AnswerSynthesisQuery(v9);
      }

      AnswerSynthesisServiceImp.activate()();
      v50 = swift_task_alloc();
      v0[18] = v50;
      *v50 = v0;
      v50[1] = AnswerSynthesisServiceImp.handle(_:progressReporter:);
      v51 = v0[10];

      result = AnswerSynthesisServiceImp.extractAnswer(_:)(v51);
      break;
  }

  return result;
}

{
  v1 = v0[20];
  v2 = v0[5];
  outlined destroy of AnswerSynthesisQuery(v0[10]);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = v1;
  OUTLINED_FUNCTION_1_11();
  *(v3 + 24) = 1;

  OUTLINED_FUNCTION_127();

  return v4();
}

{
  v1 = v0[19];
  v2 = v0[10];
  v0[2] = 0;
  v3 = v0[5];
  v0[3] = 0xE000000000000000;
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();

  v4 = v0[2];
  v5 = v0[3];
  outlined destroy of AnswerSynthesisQuery(v2);
  *v3 = 1;
  v3[1] = v4;
  v3[2] = v5;
  OUTLINED_FUNCTION_1_11();
  *(v6 + 24) = 0;

  OUTLINED_FUNCTION_127();

  return v7();
}

uint64_t AnswerSynthesisServiceImp.handle(_:progressReporter:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v4 + 152) = v1;

  if (v1)
  {
    v7 = AnswerSynthesisServiceImp.handle(_:progressReporter:);
  }

  else
  {
    *(v4 + 160) = a1;
    v7 = AnswerSynthesisServiceImp.handle(_:progressReporter:);
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t protocol witness for ServiceProtocol.init() in conformance AnswerSynthesisServiceImp@<X0>(uint64_t *a1@<X8>)
{
  result = AnswerSynthesisServiceImp.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ServiceProtocol.handle(_:) in conformance AnswerSynthesisServiceImp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for ServiceProtocol.handle(_:) in conformance AnswerSynthesisServiceImp;

  return MEMORY[0x28219B198](a1, a2, a3, a4);
}

uint64_t protocol witness for ServiceProtocol.handle(_:progressReporter:) in conformance AnswerSynthesisServiceImp(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for ServiceProtocol.handle(_:progressReporter:) in conformance AnswerSynthesisServiceImp;

  return AnswerSynthesisServiceImp.handle(_:progressReporter:)(a1, a2);
}

uint64_t protocol witness for ServiceProtocol.handle(_:progressReporter:) in conformance AnswerSynthesisServiceImp()
{
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  OUTLINED_FUNCTION_127();

  return v3();
}

uint64_t outlined init with take of AnswerSynthesisQuery(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnswerSynthesisQuery(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of AnswerSynthesisXPCRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AnswerSynthesisQuery(uint64_t a1)
{
  v2 = type metadata accessor for AnswerSynthesisQuery(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type AnswerSynthesisXPCRequest and conformance AnswerSynthesisXPCRequest(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnswerSynthesisXPCRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisXPCResponse and conformance AnswerSynthesisXPCResponse()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse and conformance AnswerSynthesisXPCResponse;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse and conformance AnswerSynthesisXPCResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse and conformance AnswerSynthesisXPCResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse and conformance AnswerSynthesisXPCResponse;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse and conformance AnswerSynthesisXPCResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse and conformance AnswerSynthesisXPCResponse);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_7(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_8()
{

  JUMPOUT(0x25F8A1050);
}

void OUTLINED_FUNCTION_9_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t AnswerSynthesisOptions.__allocating_init(interactionMode:assistantLocale:clientId:)()
{
  OUTLINED_FUNCTION_23_7();
  OUTLINED_FUNCTION_16_10();
  v0 = swift_allocObject();
  AnswerSynthesisOptions.init(interactionMode:assistantLocale:clientId:)();
  return v0;
}

uint64_t AnswerSynthesisOptions.init(interactionMode:assistantLocale:clientId:)()
{
  OUTLINED_FUNCTION_23_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_114(v6);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  outlined init with copy of EagerResolutionService?();
  LOBYTE(v9) = InteractionMode.init(interactionMode:)(v9);
  outlined destroy of IntentApplication?(v5, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  *(v1 + 16) = v9;
  *(v1 + 24) = v4;
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return v1;
}

uint64_t AnswerSynthesisOptions.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463617265746E69 && a2 == 0xEF65646F4D6E6F69;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E61747369737361 && a2 == 0xEF656C61636F4C74;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6449746E65696C63 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t AnswerSynthesisOptions.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7463617265746E69;
  }

  if (a1 == 1)
  {
    return 0x6E61747369737361;
  }

  return 0x6449746E65696C63;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnswerSynthesisOptions.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AnswerSynthesisOptions.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AnswerSynthesisOptions.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AnswerSynthesisOptions.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisOptions.CodingKeys and conformance AnswerSynthesisOptions.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisOptions.CodingKeys and conformance AnswerSynthesisOptions.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AnswerSynthesisOptions.deinit()
{

  return v0;
}

uint64_t AnswerSynthesisOptions.__deallocating_deinit()
{
  AnswerSynthesisOptions.deinit();
  OUTLINED_FUNCTION_16_10();

  return swift_deallocClassInstance();
}

uint64_t AnswerSynthesisOptions.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch22AnswerSynthesisOptionsC10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch22AnswerSynthesisOptionsC10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMR);
  OUTLINED_FUNCTION_14();
  v4 = v3;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v13[-v6];
  v8 = OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_218(v8, v9);
  v10 = lazy protocol witness table accessor for type AnswerSynthesisOptions.CodingKeys and conformance AnswerSynthesisOptions.CodingKeys();
  OUTLINED_FUNCTION_35_8(&unk_286F7A490, v11, v10);
  v13[15] = *(v0 + 16);
  v13[14] = 0;
  lazy protocol witness table accessor for type InteractionMode and conformance InteractionMode();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_28_6();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13[12] = 2;
    OUTLINED_FUNCTION_28_6();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v2);
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisOptions.CodingKeys and conformance AnswerSynthesisOptions.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisOptions.CodingKeys and conformance AnswerSynthesisOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisOptions.CodingKeys and conformance AnswerSynthesisOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisOptions.CodingKeys and conformance AnswerSynthesisOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisOptions.CodingKeys and conformance AnswerSynthesisOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisOptions.CodingKeys and conformance AnswerSynthesisOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisOptions.CodingKeys and conformance AnswerSynthesisOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisOptions.CodingKeys and conformance AnswerSynthesisOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisOptions.CodingKeys and conformance AnswerSynthesisOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisOptions.CodingKeys and conformance AnswerSynthesisOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisOptions.CodingKeys and conformance AnswerSynthesisOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisOptions.CodingKeys and conformance AnswerSynthesisOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisOptions.CodingKeys and conformance AnswerSynthesisOptions.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InteractionMode and conformance InteractionMode()
{
  result = lazy protocol witness table cache variable for type InteractionMode and conformance InteractionMode;
  if (!lazy protocol witness table cache variable for type InteractionMode and conformance InteractionMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode and conformance InteractionMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode and conformance InteractionMode;
  if (!lazy protocol witness table cache variable for type InteractionMode and conformance InteractionMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode and conformance InteractionMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode and conformance InteractionMode;
  if (!lazy protocol witness table cache variable for type InteractionMode and conformance InteractionMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode and conformance InteractionMode);
  }

  return result;
}

void AnswerSynthesisOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60_1();
  v26 = v24;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch22AnswerSynthesisOptionsC10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch22AnswerSynthesisOptionsC10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_218(v28, v28[3]);
  lazy protocol witness table accessor for type AnswerSynthesisOptions.CodingKeys and conformance AnswerSynthesisOptions.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    type metadata accessor for AnswerSynthesisOptions();
    swift_deallocPartialClassInstance();
  }

  else
  {
    lazy protocol witness table accessor for type InteractionMode and conformance InteractionMode();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v24 + 16) = a14;
    OUTLINED_FUNCTION_29_6();
    *(v24 + 24) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v24 + 32) = v30;
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = v32;
    v34 = OUTLINED_FUNCTION_17_7();
    v35(v34);
    *(v26 + 40) = v31;
    *(v26 + 48) = v33;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  OUTLINED_FUNCTION_61_2();
}

uint64_t protocol witness for Decodable.init(from:) in conformance AnswerSynthesisOptions@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t AnswerSynthesisQuery.init(query:structuredQuery:extractionCandidates:resolutionType:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for AnswerSynthesisQuery(0);
  outlined init with take of (Int, SearchCATEntity)();
  *(a5 + *(v8 + 24)) = a3;
  result = outlined init with take of (Int, SearchCATEntity)();
  *(a5 + *(v8 + 32)) = a4;
  return result;
}

uint64_t AnswerSynthesisQuery.extractionCandidates.getter()
{
  type metadata accessor for AnswerSynthesisQuery(0);
}

uint64_t AnswerSynthesisQuery.options.getter()
{
  type metadata accessor for AnswerSynthesisQuery(0);
}

uint64_t AnswerSynthesisQuery.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7275746375727473 && a2 == 0xEF79726575516465;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x800000025DBF0750 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974756C6F736572 && a2 == 0xEE00657079546E6FLL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t AnswerSynthesisQuery.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7972657571;
  switch(a1)
  {
    case 1:
      result = 0x7275746375727473;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x6974756C6F736572;
      break;
    case 4:
      result = 0x736E6F6974706FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnswerSynthesisQuery.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AnswerSynthesisQuery.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AnswerSynthesisQuery.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AnswerSynthesisQuery.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisQuery.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisQuery.CodingKeys and conformance AnswerSynthesisQuery.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisQuery.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisQuery.CodingKeys and conformance AnswerSynthesisQuery.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AnswerSynthesisQuery.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch20AnswerSynthesisQueryV10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch20AnswerSynthesisQueryV10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMR);
  OUTLINED_FUNCTION_14();
  v4 = v3;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_218(v8, v9);
  v10 = lazy protocol witness table accessor for type AnswerSynthesisQuery.CodingKeys and conformance AnswerSynthesisQuery.CodingKeys();
  OUTLINED_FUNCTION_35_8(&unk_286F7A400, v11, v10);
  LOBYTE(v22) = 0;
  OUTLINED_FUNCTION_28_6();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v12 = type metadata accessor for AnswerSynthesisQuery(0);
    LOBYTE(v22) = 1;
    type metadata accessor for StructuredQueryEntity(0);
    OUTLINED_FUNCTION_8_10();
    lazy protocol witness table accessor for type StructuredQueryEntity and conformance StructuredQueryEntity(v13, 255, v14, &protocol conformance descriptor for StructuredQueryEntity);
    OUTLINED_FUNCTION_4_9();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = *(v0 + *(v12 + 24));
    HIBYTE(v21) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMd, &_sSay15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMR);
    lazy protocol witness table accessor for type [AnswerSynthesisExtractionCandidate] and conformance <A> [A](&lazy protocol witness table cache variable for type [AnswerSynthesisExtractionCandidate] and conformance <A> [A]);
    OUTLINED_FUNCTION_4_9();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v22) = 3;
    type metadata accessor for AnswerSynthesisResolutionType();
    OUTLINED_FUNCTION_7_8();
    lazy protocol witness table accessor for type StructuredQueryEntity and conformance StructuredQueryEntity(v15, 255, v16, MEMORY[0x277D374A0]);
    OUTLINED_FUNCTION_4_9();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = *(v0 + *(v12 + 32));
    HIBYTE(v21) = 4;
    type metadata accessor for AnswerSynthesisOptions();
    OUTLINED_FUNCTION_6_5();
    lazy protocol witness table accessor for type StructuredQueryEntity and conformance StructuredQueryEntity(v17, v18, v19, &protocol conformance descriptor for AnswerSynthesisOptions);
    OUTLINED_FUNCTION_4_9();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v2);
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisQuery.CodingKeys and conformance AnswerSynthesisQuery.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisQuery.CodingKeys and conformance AnswerSynthesisQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisQuery.CodingKeys and conformance AnswerSynthesisQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisQuery.CodingKeys and conformance AnswerSynthesisQuery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisQuery.CodingKeys and conformance AnswerSynthesisQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisQuery.CodingKeys and conformance AnswerSynthesisQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisQuery.CodingKeys and conformance AnswerSynthesisQuery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisQuery.CodingKeys and conformance AnswerSynthesisQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisQuery.CodingKeys and conformance AnswerSynthesisQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisQuery.CodingKeys and conformance AnswerSynthesisQuery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisQuery.CodingKeys and conformance AnswerSynthesisQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisQuery.CodingKeys and conformance AnswerSynthesisQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisQuery.CodingKeys and conformance AnswerSynthesisQuery.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StructuredQueryEntity and conformance StructuredQueryEntity(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void AnswerSynthesisQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_1();
  v52 = v20;
  v23 = v22;
  v49[2] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes29AnswerSynthesisResolutionTypeOSgMd, &_s15OmniSearchTypes29AnswerSynthesisResolutionTypeOSgMR);
  OUTLINED_FUNCTION_114(v25);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v26);
  v28 = v49 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v29);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch20AnswerSynthesisQueryV10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch20AnswerSynthesisQueryV10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMR);
  OUTLINED_FUNCTION_14();
  v49[3] = v31;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_19_7();
  v33 = type metadata accessor for AnswerSynthesisQuery(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_36();
  v37 = (v36 - v35);
  OUTLINED_FUNCTION_218(v23, v23[3]);
  lazy protocol witness table accessor for type AnswerSynthesisQuery.CodingKeys and conformance AnswerSynthesisQuery.CodingKeys();
  v50 = v21;
  v38 = v52;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v38)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    v52 = v28;
    *v37 = KeyedDecodingContainer.decode(_:forKey:)();
    v37[1] = v39;
    v49[1] = v39;
    type metadata accessor for StructuredQueryEntity(0);
    LOBYTE(a10) = 1;
    OUTLINED_FUNCTION_8_10();
    lazy protocol witness table accessor for type StructuredQueryEntity and conformance StructuredQueryEntity(v40, 255, v41, &protocol conformance descriptor for StructuredQueryEntity);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of (Int, SearchCATEntity)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMd, &_sSay15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMR);
    v53 = 2;
    lazy protocol witness table accessor for type [AnswerSynthesisExtractionCandidate] and conformance <A> [A](&lazy protocol witness table cache variable for type [AnswerSynthesisExtractionCandidate] and conformance <A> [A]);
    v49[0] = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v37 + *(v33 + 24)) = a10;
    type metadata accessor for AnswerSynthesisResolutionType();
    LOBYTE(a10) = 3;
    OUTLINED_FUNCTION_7_8();
    lazy protocol witness table accessor for type StructuredQueryEntity and conformance StructuredQueryEntity(v42, 255, v43, MEMORY[0x277D374A8]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of (Int, SearchCATEntity)();
    type metadata accessor for AnswerSynthesisOptions();
    v53 = 4;
    OUTLINED_FUNCTION_6_5();
    lazy protocol witness table accessor for type StructuredQueryEntity and conformance StructuredQueryEntity(v44, v45, v46, &protocol conformance descriptor for AnswerSynthesisOptions);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v47 = OUTLINED_FUNCTION_27_6();
    v48(v47);
    *(v37 + *(v33 + 32)) = a10;
    outlined init with copy of AnswerSynthesisQuery();
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    outlined destroy of AnswerSynthesisQuery(v37);
  }

  OUTLINED_FUNCTION_61_2();
}

uint64_t lazy protocol witness table accessor for type [AnswerSynthesisExtractionCandidate] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMd, &_sSay15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMR);
    OUTLINED_FUNCTION_32_8();
    result = OUTLINED_FUNCTION_34_9();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AnswerSynthesisXPCRequest.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616568657270 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574617669746361 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6176697463616564 && a2 == 0xEA00000000006574;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4174636172747865 && a2 == 0xED0000726577736ELL)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

Swift::Int AnswerSynthesisOptions.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1);
  return Hasher._finalize()();
}

uint64_t AnswerSynthesisXPCRequest.CodingKeys.stringValue.getter(char a1)
{
  result = 0x74616568657270;
  switch(a1)
  {
    case 1:
      result = 0x6574617669746361;
      break;
    case 2:
      result = 0x6176697463616564;
      break;
    case 3:
      result = 0x4174636172747865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisXPCRequest.ActivateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.ActivateCodingKeys and conformance AnswerSynthesisXPCRequest.ActivateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisXPCRequest.ActivateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.ActivateCodingKeys and conformance AnswerSynthesisXPCRequest.ActivateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnswerSynthesisOptions.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnswerSynthesisXPCRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AnswerSynthesisXPCRequest.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisXPCRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.CodingKeys and conformance AnswerSynthesisXPCRequest.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisXPCRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.CodingKeys and conformance AnswerSynthesisXPCRequest.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisXPCRequest.DeactivateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.DeactivateCodingKeys and conformance AnswerSynthesisXPCRequest.DeactivateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisXPCRequest.DeactivateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.DeactivateCodingKeys and conformance AnswerSynthesisXPCRequest.DeactivateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys(uint64_t a1)
{
  AnswerCodingKeys = lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys and conformance AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys();

  return MEMORY[0x2821FE718](a1, AnswerCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys(uint64_t a1)
{
  AnswerCodingKeys = lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys and conformance AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys();

  return MEMORY[0x2821FE720](a1, AnswerCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisXPCRequest.PreheatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.PreheatCodingKeys and conformance AnswerSynthesisXPCRequest.PreheatCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisXPCRequest.PreheatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.PreheatCodingKeys and conformance AnswerSynthesisXPCRequest.PreheatCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void AnswerSynthesisXPCRequest.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60_1();
  a23 = v26;
  a24 = v27;
  v90 = v24;
  v91 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch25AnswerSynthesisXPCRequestO07ExtractF10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch25AnswerSynthesisXPCRequestO07ExtractF10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMR);
  OUTLINED_FUNCTION_14();
  v88 = v29;
  v89 = v28;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_49_3();
  v87 = v31;
  v32 = type metadata accessor for AnswerSynthesisQuery(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_36();
  v86 = v35 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch25AnswerSynthesisXPCRequestO20DeactivateCodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch25AnswerSynthesisXPCRequestO20DeactivateCodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMR);
  OUTLINED_FUNCTION_14();
  v84 = v37;
  v85 = v36;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_49_3();
  v83 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch25AnswerSynthesisXPCRequestO18ActivateCodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch25AnswerSynthesisXPCRequestO18ActivateCodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMR);
  OUTLINED_FUNCTION_14();
  v81 = v41;
  v82 = v40;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_49_3();
  v80 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch25AnswerSynthesisXPCRequestO17PreheatCodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch25AnswerSynthesisXPCRequestO17PreheatCodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMR);
  OUTLINED_FUNCTION_14();
  v78 = v45;
  v79 = v44;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v46);
  v48 = &v78 - v47;
  v49 = type metadata accessor for AnswerSynthesisXPCRequest(0);
  v50 = OUTLINED_FUNCTION_114(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_36();
  v53 = v52 - v51;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch25AnswerSynthesisXPCRequestO10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch25AnswerSynthesisXPCRequestO10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMR);
  OUTLINED_FUNCTION_14();
  v56 = v55;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v57);
  v59 = &v78 - v58;
  v60 = OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_218(v60, v61);
  lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.CodingKeys and conformance AnswerSynthesisXPCRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_1_12();
  outlined init with copy of AnswerSynthesisQuery();
  switch(__swift_getEnumTagSinglePayload(v53, 3, v32))
  {
    case 1u:
      a11 = 0;
      v75 = lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.PreheatCodingKeys and conformance AnswerSynthesisXPCRequest.PreheatCodingKeys();
      OUTLINED_FUNCTION_15_8(&unk_286F7A2A0, &a11, v76, v77, v75);
      v71 = v78;
      v70 = v79;
      goto LABEL_6;
    case 2u:
      OUTLINED_FUNCTION_29_6();
      v67 = lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.ActivateCodingKeys and conformance AnswerSynthesisXPCRequest.ActivateCodingKeys();
      v48 = v80;
      OUTLINED_FUNCTION_15_8(&unk_286F7A2C0, &a12, v68, v69, v67);
      v71 = v81;
      v70 = v82;
      goto LABEL_6;
    case 3u:
      a13 = 2;
      v72 = lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.DeactivateCodingKeys and conformance AnswerSynthesisXPCRequest.DeactivateCodingKeys();
      v48 = v83;
      OUTLINED_FUNCTION_15_8(&unk_286F7A2E0, &a13, v73, v74, v72);
      v71 = v84;
      v70 = v85;
LABEL_6:
      (*(v71 + 8))(v48, v70);
      (*(v56 + 8))(v59, v54);
      break;
    default:
      v62 = v86;
      outlined init with take of AnswerSynthesisQuery();
      a14 = 3;
      lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys and conformance AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys();
      v63 = v87;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_9_9();
      lazy protocol witness table accessor for type StructuredQueryEntity and conformance StructuredQueryEntity(v64, 255, v65, &protocol conformance descriptor for AnswerSynthesisQuery);
      v66 = v89;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v88 + 8))(v63, v66);
      outlined destroy of AnswerSynthesisQuery(v62);
      (*(v56 + 8))(v59, v54);
      break;
  }

  OUTLINED_FUNCTION_61_2();
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.CodingKeys and conformance AnswerSynthesisXPCRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.CodingKeys and conformance AnswerSynthesisXPCRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.CodingKeys and conformance AnswerSynthesisXPCRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.CodingKeys and conformance AnswerSynthesisXPCRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.CodingKeys and conformance AnswerSynthesisXPCRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.CodingKeys and conformance AnswerSynthesisXPCRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.CodingKeys and conformance AnswerSynthesisXPCRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.CodingKeys and conformance AnswerSynthesisXPCRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.CodingKeys and conformance AnswerSynthesisXPCRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.CodingKeys and conformance AnswerSynthesisXPCRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.CodingKeys and conformance AnswerSynthesisXPCRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.CodingKeys and conformance AnswerSynthesisXPCRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.CodingKeys and conformance AnswerSynthesisXPCRequest.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of AnswerSynthesisQuery()
{
  OUTLINED_FUNCTION_134();
  v1(0);
  OUTLINED_FUNCTION_17();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys and conformance AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys and conformance AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys and conformance AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys and conformance AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys and conformance AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys and conformance AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys and conformance AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys and conformance AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys and conformance AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys and conformance AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys and conformance AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys and conformance AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys and conformance AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.DeactivateCodingKeys and conformance AnswerSynthesisXPCRequest.DeactivateCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.DeactivateCodingKeys and conformance AnswerSynthesisXPCRequest.DeactivateCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.DeactivateCodingKeys and conformance AnswerSynthesisXPCRequest.DeactivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.DeactivateCodingKeys and conformance AnswerSynthesisXPCRequest.DeactivateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.DeactivateCodingKeys and conformance AnswerSynthesisXPCRequest.DeactivateCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.DeactivateCodingKeys and conformance AnswerSynthesisXPCRequest.DeactivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.DeactivateCodingKeys and conformance AnswerSynthesisXPCRequest.DeactivateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.DeactivateCodingKeys and conformance AnswerSynthesisXPCRequest.DeactivateCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.DeactivateCodingKeys and conformance AnswerSynthesisXPCRequest.DeactivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.DeactivateCodingKeys and conformance AnswerSynthesisXPCRequest.DeactivateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.ActivateCodingKeys and conformance AnswerSynthesisXPCRequest.ActivateCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.ActivateCodingKeys and conformance AnswerSynthesisXPCRequest.ActivateCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.ActivateCodingKeys and conformance AnswerSynthesisXPCRequest.ActivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.ActivateCodingKeys and conformance AnswerSynthesisXPCRequest.ActivateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.ActivateCodingKeys and conformance AnswerSynthesisXPCRequest.ActivateCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.ActivateCodingKeys and conformance AnswerSynthesisXPCRequest.ActivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.ActivateCodingKeys and conformance AnswerSynthesisXPCRequest.ActivateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.ActivateCodingKeys and conformance AnswerSynthesisXPCRequest.ActivateCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.ActivateCodingKeys and conformance AnswerSynthesisXPCRequest.ActivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.ActivateCodingKeys and conformance AnswerSynthesisXPCRequest.ActivateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.PreheatCodingKeys and conformance AnswerSynthesisXPCRequest.PreheatCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.PreheatCodingKeys and conformance AnswerSynthesisXPCRequest.PreheatCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.PreheatCodingKeys and conformance AnswerSynthesisXPCRequest.PreheatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.PreheatCodingKeys and conformance AnswerSynthesisXPCRequest.PreheatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.PreheatCodingKeys and conformance AnswerSynthesisXPCRequest.PreheatCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.PreheatCodingKeys and conformance AnswerSynthesisXPCRequest.PreheatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.PreheatCodingKeys and conformance AnswerSynthesisXPCRequest.PreheatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.PreheatCodingKeys and conformance AnswerSynthesisXPCRequest.PreheatCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.PreheatCodingKeys and conformance AnswerSynthesisXPCRequest.PreheatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCRequest.PreheatCodingKeys and conformance AnswerSynthesisXPCRequest.PreheatCodingKeys);
  }

  return result;
}

void AnswerSynthesisXPCRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60_1();
  a23 = v25;
  a24 = v26;
  v128 = v24;
  v28 = v27;
  v122 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch25AnswerSynthesisXPCRequestO07ExtractF10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch25AnswerSynthesisXPCRequestO07ExtractF10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMR);
  OUTLINED_FUNCTION_14();
  v124 = v31;
  v125 = v30;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_49_3();
  v123 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch25AnswerSynthesisXPCRequestO20DeactivateCodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch25AnswerSynthesisXPCRequestO20DeactivateCodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMR);
  OUTLINED_FUNCTION_14();
  v118 = v35;
  v119 = v34;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_49_3();
  v127 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch25AnswerSynthesisXPCRequestO18ActivateCodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch25AnswerSynthesisXPCRequestO18ActivateCodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMR);
  OUTLINED_FUNCTION_14();
  v116 = v39;
  v117 = v38;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_49_3();
  v121 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch25AnswerSynthesisXPCRequestO17PreheatCodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch25AnswerSynthesisXPCRequestO17PreheatCodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMR);
  OUTLINED_FUNCTION_14();
  v114 = v43;
  v115 = v42;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_49_3();
  v120 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch25AnswerSynthesisXPCRequestO10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch25AnswerSynthesisXPCRequestO10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMR);
  OUTLINED_FUNCTION_14();
  v126 = v47;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v48);
  v50 = v110 - v49;
  v51 = type metadata accessor for AnswerSynthesisXPCRequest(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v52);
  v54 = v110 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v57 = v110 - v56;
  OUTLINED_FUNCTION_218(v28, v28[3]);
  lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.CodingKeys and conformance AnswerSynthesisXPCRequest.CodingKeys();
  v58 = v128;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v58)
  {
    goto LABEL_9;
  }

  v59 = v51;
  v112 = v54;
  v113 = v57;
  v60 = v127;
  v128 = v28;
  KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC10OmniSearch25AnswerSynthesisXPCRequestO10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLO_Tt1g5();
  v64 = v46;
  if (v62 == v63 >> 1)
  {
    v65 = v51;
LABEL_8:
    v84 = type metadata accessor for DecodingError();
    swift_allocError();
    v86 = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v86 = v65;
    v87 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_33_6(v87);
    (*(*(v84 - 8) + 104))(v86, *MEMORY[0x277D84160], v84);
    swift_willThrow();
    swift_unknownObjectRelease();
    v88 = OUTLINED_FUNCTION_70_2();
    v89(v88);
    v28 = v128;
LABEL_9:
    v90 = v28;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
    OUTLINED_FUNCTION_61_2();
    return;
  }

  if (v62 < (v63 >> 1))
  {
    v66 = v50;
    v65 = v59;
    v111 = *(v61 + v62);
    v67 = specialized ArraySlice.subscript.getter();
    v69 = v68;
    v71 = v70;
    swift_unknownObjectRelease();
    if (v69 == v71 >> 1)
    {
      v110[1] = v67;
      v73 = v124;
      v72 = v125;
      v74 = v123;
      switch(v111)
      {
        case 1:
          OUTLINED_FUNCTION_29_6();
          v104 = lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.ActivateCodingKeys and conformance AnswerSynthesisXPCRequest.ActivateCodingKeys();
          v105 = v121;
          OUTLINED_FUNCTION_10_8(&unk_286F7A2C0, &a12, v106, v107, v104);
          swift_unknownObjectRelease();
          (*(v116 + 8))(v105, v117);
          v108 = OUTLINED_FUNCTION_3_9();
          v109(v108);
          type metadata accessor for AnswerSynthesisQuery(0);
          v81 = OUTLINED_FUNCTION_21_8();
          v83 = 2;
          goto LABEL_14;
        case 2:
          a13 = 2;
          v91 = lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.DeactivateCodingKeys and conformance AnswerSynthesisXPCRequest.DeactivateCodingKeys();
          OUTLINED_FUNCTION_10_8(&unk_286F7A2E0, &a13, v92, v93, v91);
          swift_unknownObjectRelease();
          (*(v118 + 8))(v60, v119);
          v94 = OUTLINED_FUNCTION_3_9();
          v95(v94);
          type metadata accessor for AnswerSynthesisQuery(0);
          v81 = OUTLINED_FUNCTION_21_8();
          v83 = 3;
          goto LABEL_14;
        case 3:
          a14 = 3;
          AnswerCodingKeys = lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys and conformance AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys();
          OUTLINED_FUNCTION_10_8(&unk_286F7A370, &a14, v97, v98, AnswerCodingKeys);
          v99 = type metadata accessor for AnswerSynthesisQuery(0);
          OUTLINED_FUNCTION_9_9();
          lazy protocol witness table accessor for type StructuredQueryEntity and conformance StructuredQueryEntity(v100, 255, v101, &protocol conformance descriptor for AnswerSynthesisQuery);
          v102 = v112;
          OUTLINED_FUNCTION_28_6();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v103 = v126;
          swift_unknownObjectRelease();
          (*(v73 + 8))(v74, v72);
          (*(v103 + 8))(v66, v64);
          __swift_storeEnumTagSinglePayload(v102, 0, 3, v99);
          OUTLINED_FUNCTION_1_12();
          outlined init with take of AnswerSynthesisQuery();
          goto LABEL_15;
        default:
          a11 = 0;
          v75 = lazy protocol witness table accessor for type AnswerSynthesisXPCRequest.PreheatCodingKeys and conformance AnswerSynthesisXPCRequest.PreheatCodingKeys();
          v76 = v120;
          OUTLINED_FUNCTION_10_8(&unk_286F7A2A0, &a11, v77, v78, v75);
          swift_unknownObjectRelease();
          (*(v114 + 8))(v76, v115);
          v79 = OUTLINED_FUNCTION_3_9();
          v80(v79);
          type metadata accessor for AnswerSynthesisQuery(0);
          v81 = OUTLINED_FUNCTION_21_8();
          v83 = 1;
LABEL_14:
          __swift_storeEnumTagSinglePayload(v81, v83, 3, v82);
LABEL_15:
          OUTLINED_FUNCTION_1_12();
          outlined init with take of AnswerSynthesisQuery();
          v90 = v128;
          break;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t AnswerSynthesisXPCResponse.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572756C696166 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t AnswerSynthesisXPCResponse.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x73736563637573;
  }

  else
  {
    return 0x6572756C696166;
  }
}

uint64_t AnswerSynthesisXPCRequest.ExtractAnswerCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnswerSynthesisXPCResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AnswerSynthesisXPCResponse.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisXPCResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisXPCResponse.CodingKeys and conformance AnswerSynthesisXPCResponse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisXPCResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisXPCResponse.CodingKeys and conformance AnswerSynthesisXPCResponse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisXPCResponse.FailureCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisXPCResponse.FailureCodingKeys and conformance AnswerSynthesisXPCResponse.FailureCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisXPCResponse.FailureCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisXPCResponse.FailureCodingKeys and conformance AnswerSynthesisXPCResponse.FailureCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisXPCResponse.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisXPCResponse.SuccessCodingKeys and conformance AnswerSynthesisXPCResponse.SuccessCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisXPCResponse.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisXPCResponse.SuccessCodingKeys and conformance AnswerSynthesisXPCResponse.SuccessCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void AnswerSynthesisXPCResponse.encode(to:)()
{
  OUTLINED_FUNCTION_60_1();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch26AnswerSynthesisXPCResponseO17SuccessCodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch26AnswerSynthesisXPCResponseO17SuccessCodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMR);
  OUTLINED_FUNCTION_14();
  v24 = v6;
  v25 = v5;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_9();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch26AnswerSynthesisXPCResponseO17FailureCodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch26AnswerSynthesisXPCResponseO17FailureCodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMR);
  OUTLINED_FUNCTION_14();
  v23 = v9;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch26AnswerSynthesisXPCResponseO10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch26AnswerSynthesisXPCResponseO10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMR);
  OUTLINED_FUNCTION_14();
  v27 = v14;
  v28 = v13;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19_7();
  v16 = v0[1];
  v26 = *v0;
  v21 = v0[2];
  v22 = v16;
  v17 = *(v0 + 24);
  OUTLINED_FUNCTION_218(v4, v4[3]);
  lazy protocol witness table accessor for type AnswerSynthesisXPCResponse.CodingKeys and conformance AnswerSynthesisXPCResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v17)
  {
    LOBYTE(v29) = 1;
    lazy protocol witness table accessor for type AnswerSynthesisXPCResponse.SuccessCodingKeys and conformance AnswerSynthesisXPCResponse.SuccessCodingKeys();
    v18 = v28;
    OUTLINED_FUNCTION_12_7();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15OmniSearchTypes21AnswerSynthesisResultCGMd, &_sSay15OmniSearchTypes21AnswerSynthesisResultCGMR);
    lazy protocol witness table accessor for type [AnswerSynthesisResult] and conformance <A> [A](&lazy protocol witness table cache variable for type [AnswerSynthesisResult] and conformance <A> [A]);
    v19 = v25;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    (*(v24 + 8))(v2, v19);
  }

  else
  {
    LOBYTE(v29) = 0;
    lazy protocol witness table accessor for type AnswerSynthesisXPCResponse.FailureCodingKeys and conformance AnswerSynthesisXPCResponse.FailureCodingKeys();
    v18 = v28;
    OUTLINED_FUNCTION_12_7();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v29) = v26 & 1;
    v30 = v22;
    v31 = v21;
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v23 + 8))(v12, v8);
  }

  (*(v27 + 8))(v1, v18);
  OUTLINED_FUNCTION_61_2();
}

void AnswerSynthesisXPCResponse.init(from:)()
{
  OUTLINED_FUNCTION_60_1();
  v4 = v3;
  v53 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch26AnswerSynthesisXPCResponseO17SuccessCodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch26AnswerSynthesisXPCResponseO17SuccessCodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMR);
  OUTLINED_FUNCTION_14();
  v50 = v7;
  v51 = v6;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch26AnswerSynthesisXPCResponseO17FailureCodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch26AnswerSynthesisXPCResponseO17FailureCodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMR);
  OUTLINED_FUNCTION_14();
  v49 = v12;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_9();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch26AnswerSynthesisXPCResponseO10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch26AnswerSynthesisXPCResponseO10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLOGMR);
  OUTLINED_FUNCTION_14();
  v52 = v15;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_218(v4, v4[3]);
  lazy protocol witness table accessor for type AnswerSynthesisXPCResponse.CodingKeys and conformance AnswerSynthesisXPCResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_12;
  }

  v47 = v11;
  v48 = v2;
  v56 = v4;
  v17 = v53;
  KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC10OmniSearch25AnswerSynthesisXPCRequestO10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLO_Tt1g5();
  if (v19 == v20 >> 1)
  {
    goto LABEL_8;
  }

  v46 = 0;
  if (v19 < (v20 >> 1))
  {
    v21 = *(v18 + v19);
    specialized ArraySlice.subscript.getter();
    v23 = v22;
    v25 = v24;
    swift_unknownObjectRelease();
    if (v23 == v25 >> 1)
    {
      v26 = v21;
      if (v21)
      {
        LODWORD(v49) = v21;
        LOBYTE(v54) = 1;
        lazy protocol witness table accessor for type AnswerSynthesisXPCResponse.SuccessCodingKeys and conformance AnswerSynthesisXPCResponse.SuccessCodingKeys();
        OUTLINED_FUNCTION_12_7();
        v27 = v46;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v27)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15OmniSearchTypes21AnswerSynthesisResultCGMd, &_sSay15OmniSearchTypes21AnswerSynthesisResultCGMR);
          lazy protocol witness table accessor for type [AnswerSynthesisResult] and conformance <A> [A](&lazy protocol witness table cache variable for type [AnswerSynthesisResult] and conformance <A> [A]);
          v28 = v51;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          swift_unknownObjectRelease();
          (*(v50 + 8))(v10, v28);
          v39 = OUTLINED_FUNCTION_11_8();
          v40(v39);
          v41 = v54;
          v42 = 0uLL;
          v26 = v49;
LABEL_14:
          *v17 = v41;
          *(v17 + 8) = v42;
          *(v17 + 24) = v26;
          __swift_destroy_boxed_opaque_existential_1Tm(v56);
          goto LABEL_13;
        }
      }

      else
      {
        LOBYTE(v54) = 0;
        lazy protocol witness table accessor for type AnswerSynthesisXPCResponse.FailureCodingKeys and conformance AnswerSynthesisXPCResponse.FailureCodingKeys();
        v33 = v48;
        OUTLINED_FUNCTION_12_7();
        v34 = v46;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v34)
        {
          lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError();
          v37 = v33;
          v38 = v47;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          (*(v49 + 8))(v37, v38);
          v43 = OUTLINED_FUNCTION_11_8();
          v44(v43);
          v41 = v54;
          v42 = v55;
          goto LABEL_14;
        }
      }

      v35 = OUTLINED_FUNCTION_11_8();
      v36(v35);
      swift_unknownObjectRelease();
      v4 = v56;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
LABEL_13:
      OUTLINED_FUNCTION_61_2();
      return;
    }

LABEL_8:
    v29 = type metadata accessor for DecodingError();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v31 = &type metadata for AnswerSynthesisXPCResponse;
    v32 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_33_6(v32);
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v52 + 8))(v1, v14);
    v4 = v56;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t outlined init with take of AnswerSynthesisQuery()
{
  OUTLINED_FUNCTION_134();
  v1(0);
  OUTLINED_FUNCTION_17();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisXPCResponse.CodingKeys and conformance AnswerSynthesisXPCResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.CodingKeys and conformance AnswerSynthesisXPCResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.CodingKeys and conformance AnswerSynthesisXPCResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.CodingKeys and conformance AnswerSynthesisXPCResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.CodingKeys and conformance AnswerSynthesisXPCResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.CodingKeys and conformance AnswerSynthesisXPCResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.CodingKeys and conformance AnswerSynthesisXPCResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.CodingKeys and conformance AnswerSynthesisXPCResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.CodingKeys and conformance AnswerSynthesisXPCResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.CodingKeys and conformance AnswerSynthesisXPCResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.CodingKeys and conformance AnswerSynthesisXPCResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.CodingKeys and conformance AnswerSynthesisXPCResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.CodingKeys and conformance AnswerSynthesisXPCResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisXPCResponse.SuccessCodingKeys and conformance AnswerSynthesisXPCResponse.SuccessCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.SuccessCodingKeys and conformance AnswerSynthesisXPCResponse.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.SuccessCodingKeys and conformance AnswerSynthesisXPCResponse.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.SuccessCodingKeys and conformance AnswerSynthesisXPCResponse.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.SuccessCodingKeys and conformance AnswerSynthesisXPCResponse.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.SuccessCodingKeys and conformance AnswerSynthesisXPCResponse.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.SuccessCodingKeys and conformance AnswerSynthesisXPCResponse.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.SuccessCodingKeys and conformance AnswerSynthesisXPCResponse.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.SuccessCodingKeys and conformance AnswerSynthesisXPCResponse.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.SuccessCodingKeys and conformance AnswerSynthesisXPCResponse.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.SuccessCodingKeys and conformance AnswerSynthesisXPCResponse.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.SuccessCodingKeys and conformance AnswerSynthesisXPCResponse.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.SuccessCodingKeys and conformance AnswerSynthesisXPCResponse.SuccessCodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [AnswerSynthesisResult] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15OmniSearchTypes21AnswerSynthesisResultCGMd, &_sSay15OmniSearchTypes21AnswerSynthesisResultCGMR);
    OUTLINED_FUNCTION_32_8();
    result = OUTLINED_FUNCTION_34_9();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisXPCResponse.FailureCodingKeys and conformance AnswerSynthesisXPCResponse.FailureCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.FailureCodingKeys and conformance AnswerSynthesisXPCResponse.FailureCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.FailureCodingKeys and conformance AnswerSynthesisXPCResponse.FailureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.FailureCodingKeys and conformance AnswerSynthesisXPCResponse.FailureCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.FailureCodingKeys and conformance AnswerSynthesisXPCResponse.FailureCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.FailureCodingKeys and conformance AnswerSynthesisXPCResponse.FailureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.FailureCodingKeys and conformance AnswerSynthesisXPCResponse.FailureCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.FailureCodingKeys and conformance AnswerSynthesisXPCResponse.FailureCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.FailureCodingKeys and conformance AnswerSynthesisXPCResponse.FailureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.FailureCodingKeys and conformance AnswerSynthesisXPCResponse.FailureCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.FailureCodingKeys and conformance AnswerSynthesisXPCResponse.FailureCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.FailureCodingKeys and conformance AnswerSynthesisXPCResponse.FailureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisXPCResponse.FailureCodingKeys and conformance AnswerSynthesisXPCResponse.FailureCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError()
{
  result = lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError;
  if (!lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError;
  if (!lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError);
  }

  return result;
}

void type metadata completion function for AnswerSynthesisQuery(uint64_t a1)
{
  type metadata accessor for StructuredQueryEntity?(319, &lazy cache variable for type metadata for StructuredQueryEntity?, type metadata accessor for StructuredQueryEntity, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for StructuredQueryEntity?(319, &lazy cache variable for type metadata for [AnswerSynthesisExtractionCandidate], MEMORY[0x277D374E8], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for StructuredQueryEntity?(319, &lazy cache variable for type metadata for AnswerSynthesisResolutionType?, MEMORY[0x277D37498], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AnswerSynthesisOptions();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for StructuredQueryEntity?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for AnswerSynthesisXPCRequest(uint64_t a1)
{
  v1 = type metadata accessor for AnswerSynthesisQuery(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for AnswerSynthesisXPCResponse(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
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

uint64_t storeEnumTagSinglePayload for AnswerSynthesisXPCResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnswerSynthesisXPCResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AnswerSynthesisXPCRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AnswerSynthesisXPCResponse.FailureCodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnswerSynthesisQuery.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AnswerSynthesisQuery.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnswerSynthesisOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_10_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_15_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_32_8()
{

  return lazy protocol witness table accessor for type StructuredQueryEntity and conformance StructuredQueryEntity(v2, 255, v0, v1);
}

uint64_t OUTLINED_FUNCTION_33_6(uint64_t a1)
{

  return DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
}

uint64_t OUTLINED_FUNCTION_34_9()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_35_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

void Array<A>.chunked(into:)(uint64_t result, void *a2)
{
  if (result)
  {
    v4 = a2[2];
    v5 = specialized StrideTo.underestimatedCount.getter(0, v4, result);
    v33 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      goto LABEL_68;
    }

    if (!v5)
    {
      v9 = 0;
LABEL_32:
      v17 = MEMORY[0x277D84F90];
      while (1)
      {
        v18 = v4 >= v9;
        if (result > 0)
        {
          v18 = v9 >= v4;
        }

        if (v18)
        {
          return;
        }

        v19 = v9 + result;
        if (__OFADD__(v9, result))
        {
          v20 = ((v9 + result) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v20 = v9 + result;
        }

        if (__OFADD__(v9, result))
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v4 < v19)
        {
          v19 = v4;
        }

        v21 = v19 - v9;
        if (v19 < v9)
        {
          goto LABEL_61;
        }

        if (v9 < 0)
        {
          goto LABEL_62;
        }

        if (v4 == v21)
        {

          v22 = a2;
        }

        else
        {
          v22 = v17;
          if (v19 != v9)
          {
            if (v21 < 1)
            {
              v22 = v17;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMR);
              v25 = type metadata accessor for SearchResult(0);
              OUTLINED_FUNCTION_21(v25);
              v32 = *(v26 + 72);
              v22 = swift_allocObject();
              _swift_stdlib_malloc_size(v22);
              if (!v32)
              {
                goto LABEL_69;
              }

              OUTLINED_FUNCTION_2_9();
              if (v16 && v28 == -1)
              {
                goto LABEL_71;
              }

              v22[2] = v21;
              v22[3] = 2 * (v27 / v28);
            }

            type metadata accessor for SearchResult(0);
            swift_arrayInitWithCopy();
          }
        }

        v24 = *(v33 + 16);
        v23 = *(v33 + 24);
        if (v24 >= v23 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        }

        *(v33 + 16) = v24 + 1;
        *(v33 + 8 * v24 + 32) = v22;
        v9 = v20;
      }
    }

    v6 = 0;
    v31 = *(type metadata accessor for SearchResult(0) - 8);
    while (1)
    {
      v7 = v4 >= v6;
      if (result > 0)
      {
        v7 = v6 >= v4;
      }

      if (v7)
      {
        break;
      }

      v8 = v6 + result;
      if (__OFADD__(v6, result))
      {
        v9 = ((v6 + result) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v9 = v6 + result;
      }

      if (__OFADD__(v6, result))
      {
        goto LABEL_64;
      }

      if (v4 < v8)
      {
        v8 = v4;
      }

      v10 = v8 - v6;
      if (v8 < v6)
      {
        goto LABEL_65;
      }

      if (v6 < 0)
      {
        goto LABEL_66;
      }

      if (v4 == v10)
      {

        v11 = a2;
      }

      else
      {
        v11 = MEMORY[0x277D84F90];
        if (v8 != v6)
        {
          if (v10 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMR);
            v30 = *(v31 + 72);
            v11 = swift_allocObject();
            _swift_stdlib_malloc_size(v11);
            if (!v30)
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_2_9();
            v16 = v16 && v15 == -1;
            if (v16)
            {
              goto LABEL_72;
            }

            v11[2] = v10;
            v11[3] = 2 * (v14 / v15);
          }

          swift_arrayInitWithCopy();
        }
      }

      v13 = *(v33 + 16);
      v12 = *(v33 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      *(v33 + 16) = v13 + 1;
      *(v33 + 8 * v13 + 32) = v11;
      v6 = v9;
      if (!--v5)
      {
        goto LABEL_32;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

uint64_t Array<A>.dictionaryByKey()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10OmniSearch0B6ResultVtSgMd, &_sSS_10OmniSearch0B6ResultVtSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v32 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10OmniSearch0B6ResultVtMd, &_sSS_10OmniSearch0B6ResultVtMR);
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v33 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  MEMORY[0x28223BE20](v9);
  v11 = (&v32 - v10);
  v12 = 0;
  v13 = *(a1 + 16);
  v36 = MEMORY[0x277D84F90];
  while (v13 != v12)
  {
    v14 = type metadata accessor for SearchResult(0);
    OUTLINED_FUNCTION_21(v14);
    v17 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v16 + 72) * v12;
    v18 = *(v9 + 48);
    *v11 = v12;
    outlined init with copy of SearchResult(v17, v11 + v18);
    v19 = keyForSearchResult(_:idx:)(v11 + v18, v12);
    if (v20)
    {
      v21 = *(v5 + 48);
      *v4 = v19;
      v4[1] = v20;
      outlined init with copy of SearchResult(v11 + v18, v4 + v21);
      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    __swift_storeEnumTagSinglePayload(v4, v22, 1, v5);
    outlined destroy of (offset: Int, element: SearchResult)(v11, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      outlined destroy of (offset: Int, element: SearchResult)(v4, &_sSS_10OmniSearch0B6ResultVtSgMd, &_sSS_10OmniSearch0B6ResultVtSgMR);
      ++v12;
    }

    else
    {
      v23 = v33;
      outlined init with take of (String, SearchResult)(v4, v33);
      outlined init with take of (String, SearchResult)(v23, v35);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0);
        v36 = v29;
      }

      v25 = *(v36 + 16);
      v24 = *(v36 + 24);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v32 = v25 + 1;
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1);
        v26 = v32;
        v36 = v30;
      }

      ++v12;
      v27 = v35;
      v28 = v36;
      *(v36 + 16) = v26;
      outlined init with take of (String, SearchResult)(v27, v28 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v25);
    }
  }

  return _sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufCSS_10OmniSearch0F6ResultVSaySS_AGtGTt1g506_sSa10ef5AA0B6G46VRszlE15dictionaryByKeySDySSACGyFA2C_ACtXEfU0_Tf1nc_n(v36);
}

uint64_t _sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufCSS_10OmniSearch0F6ResultVSaySS_AGtGTt1g506_sSa10ef5AA0B6G46VRszlE15dictionaryByKeySDySSACGyFA2C_ACtXEfU0_Tf1nc_n(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10OmniSearch0D6ResultVGMd, &_ss18_DictionaryStorageCySS10OmniSearch0D6ResultVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

const void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_1_13(v4 - 32);
  return v3;
}

const void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_1_13(v4 - 32);
  return v3;
}

const void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_SS5valuet_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_SS5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_SS5valuetGMR);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_1_13(v4 - 32);
  return v3;
}

void _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_10OmniSearch0I6ResultVt_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    OUTLINED_FUNCTION_21(v10);
    v12 = *(v11 + 72);
    v13 = swift_allocObject();
    _swift_stdlib_malloc_size(v13);
    if (v12)
    {
      OUTLINED_FUNCTION_2_9();
      v15 = v15 && v12 == -1;
      if (!v15)
      {
        v13[2] = a1;
        v13[3] = 2 * (v14 / v12);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10OmniSearch13ExtractedInfoV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = a5(0);
    OUTLINED_FUNCTION_21(v8);
    v10 = *(v9 + 72);
    v11 = swift_allocObject();
    _swift_stdlib_malloc_size(v11);
    if (v10)
    {
      OUTLINED_FUNCTION_2_9();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        v11[2] = a1;
        v11[3] = 2 * (v12 / v10);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v46 = a3;
  v5 = type metadata accessor for SearchResult(0);
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10OmniSearch0B6ResultVtMd, &_sSS_10OmniSearch0B6ResultVtMR);
  MEMORY[0x28223BE20](v10);
  v45 = (&v38 - v13);
  v43 = *(a1 + 16);
  if (!v43)
  {
  }

  v14 = 0;
  v15 = *(v11 + 48);
  v41 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v42 = v15;
  v40 = v12;
  while (v14 < *(a1 + 16))
  {
    v16 = v45;
    outlined init with copy of (String, SearchResult)(v41 + *(v12 + 72) * v14, v45);
    v17 = *v16;
    v18 = v16[1];
    v19 = v9;
    outlined init with take of SearchResult(v16 + v42, v9);
    v20 = *v46;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_18;
    }

    v26 = v21;
    if (v20[3] >= v25)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10OmniSearch0D6ResultVGMd, &_ss17_NativeDictionaryVySS10OmniSearch0D6ResultVGMR);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, a2 & 1);
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_20;
      }

      v22 = v27;
    }

    v29 = *v46;
    if (v26)
    {
      v30 = *(v44 + 72) * v22;
      v31 = v39;
      outlined init with copy of SearchResult(v29[7] + v30, v39);
      v9 = v19;
      outlined destroy of SearchResult(v19);

      outlined assign with take of SearchResult(v31, v29[7] + v30);
    }

    else
    {
      v29[(v22 >> 6) + 8] |= 1 << v22;
      v32 = (v29[6] + 16 * v22);
      *v32 = v17;
      v32[1] = v18;
      v33 = v29[7] + *(v44 + 72) * v22;
      v9 = v19;
      outlined init with take of SearchResult(v19, v33);
      v34 = v29[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_19;
      }

      v29[2] = v36;
    }

    ++v14;
    a2 = 1;
    v12 = v40;
    if (v43 == v14)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v24 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_17;
    }

    v14 = v10;
    if (v9[3] >= v12 + v13)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSaySSGGMd, &_ss17_NativeDictionaryVySSSaySSGGMR);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)();
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v11 = v15;
    }

    v17 = *a3;
    if (v14)
    {
      v18 = *(v17[7] + 8 * v11);

      *(v17[7] + 8 * v11) = v18;
    }

    else
    {
      v17[(v11 >> 6) + 8] |= 1 << v11;
      v19 = (v17[6] + 16 * v11);
      *v19 = v7;
      v19[1] = v6;
      *(v17[7] + 8 * v11) = v8;
      v20 = v17[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_18;
      }

      v17[2] = v22;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized StrideTo.underestimatedCount.getter(int64_t a1, int64_t a2, uint64_t a3)
{
  result = 0;
  while (1)
  {
    v5 = a1 <= a2;
    if (a3 > 0)
    {
      v5 = a1 >= a2;
    }

    if (v5)
    {
      break;
    }

    v6 = __OFADD__(a1, a3);
    a1 += a3;
    if (v6)
    {
      a1 = (a1 >> 63) ^ 0x8000000000000000;
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t outlined destroy of (offset: Int, element: SearchResult)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of (String, SearchResult)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10OmniSearch0B6ResultVtMd, &_sSS_10OmniSearch0B6ResultVtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of (String, SearchResult)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10OmniSearch0B6ResultVtMd, &_sSS_10OmniSearch0B6ResultVtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchResult(uint64_t a1)
{
  v2 = type metadata accessor for SearchResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int static DataFilter.filterAndReturnTopK<A>(_:where:topK:)(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v33 = a2;
  v34 = a3;
  v7 = *(a5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v15 = Array.init()();
  v38 = v15;
  OUTLINED_FUNCTION_180();
  v16 = Array.startIndex.getter();
  after = v16;
  v17 = OUTLINED_FUNCTION_180();
  if (v16 == MEMORY[0x25F89F930](v17))
  {
LABEL_14:
    after = v15;
    type metadata accessor for Array();
    swift_getWitnessTable();
    if (Collection.isEmpty.getter())
    {

      return 0;
    }

    return v15;
  }

  v29 = v8;
  v18 = 0;
  v35 = (v7 + 16);
  v32 = v7 + 8;
  while (1)
  {
    OUTLINED_FUNCTION_180();
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v20 = *(v7 + 16);
      v20(v14, (a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16), a5);
    }

    else
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v29 != 8)
      {
        goto LABEL_19;
      }

      v36 = result;
      v20 = *v35;
      (*v35)(v14, &v36, a5);
      swift_unknownObjectRelease();
    }

    Array.formIndex(after:)(&after);
    (*(v7 + 32))(v11, v14, a5);
    if ((v33(v11) & 1) == 0)
    {
      v25 = OUTLINED_FUNCTION_0_8();
      v26(v25);
      goto LABEL_10;
    }

    v20(v31, v11, a5);
    type metadata accessor for Array();
    Array.append(_:)();
    v21 = OUTLINED_FUNCTION_0_8();
    result = v22(v21);
    if (__OFADD__(v18++, 1))
    {
      break;
    }

    if (v18 == v30)
    {
      return v38;
    }

LABEL_10:
    v27 = OUTLINED_FUNCTION_180();
    v28 = MEMORY[0x25F89F930](v27);
    v16 = after;
    if (after == v28)
    {
      v15 = v38;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t static DataFilter.FilterResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return MEMORY[0x2821FC390]();
    }

    return 0;
  }

  return !a2;
}

uint64_t type metadata instantiation function for DataFilter.FilterResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for DataFilter.FilterResult(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DataFilter.FilterResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for DataFilter.FilterResult(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t EmailContentPreprocessing.preprocess(data:query:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for SearchResultItem(0);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for EmailDocument();
  v3[7] = v4;
  OUTLINED_FUNCTION_21(v4);
  v3[8] = v5;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v6 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_21(v6);
  v3[11] = v7;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v8 = type metadata accessor for OSSignpostID();
  v3[14] = v8;
  OUTLINED_FUNCTION_21(v8);
  v3[15] = v9;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](EmailContentPreprocessing.preprocess(data:query:));
}

uint64_t EmailContentPreprocessing.preprocess(data:query:)()
{
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v1 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v2, v3, v5, "EmailContentPreprocessing.preprocess", "", v4, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[15];

  (*(v9 + 16))(v6, v7, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v10 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v9 + 8))(v7, v8);
  v11 = type metadata accessor for NSUserDefaults();
  v46 = v10;
  if (static NSUserDefaults.emailContentPreprocessing.getter(v11))
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logging.answerSynthesis);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v13, v14, "EmailContentPreprocessing started for query:%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    v16 = v0[2];
    v17 = *(v16 + 16);
    v18 = MEMORY[0x277D84F90];
    if (v17)
    {
      v19 = v0[11];
      v20 = v0[8];
      v55 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
      v18 = v55;
      v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v22 = v16 + v21;
      v23 = *(v19 + 72);
      v24 = (v20 + 32);
      v47 = v21;
      v48 = (v20 + 8);
      v53 = (v20 + 32);
      v49 = v23;
      do
      {
        v25 = v0[12];
        v26 = v0[6];
        _s10OmniSearch0B6ResultVWOcTm_3(v22, v25, type metadata accessor for SearchResult);
        _s10OmniSearch0B6ResultVWOcTm_3(v25, v26, type metadata accessor for SearchResultItem);
        if (swift_getEnumCaseMultiPayload())
        {
          outlined destroy of SearchResultItem(v0[6]);
        }

        else
        {
          v27 = *v24;
          (*v24)(v0[10], v0[6], v0[7]);
          v28 = NoteDocument.folderName.getter();
          if (v29)
          {
            v52 = v27;
            v30 = v0[13];
            v32 = v0[9];
            v31 = v0[10];
            v50 = v0[7];
            v51 = v0[12];
            v33 = EmailContentPreprocessing.processEmailBody(_:)(v28, v29);
            v35 = v34;

            EmailContentPreprocessing.createEmailDocument(from:withBody:)(v33, v35, v32);

            v36 = v31;
            v21 = v47;
            (*v48)(v36, v50);
            outlined init with take of SearchResult(v51, v30);
            outlined destroy of SearchResultItem(v30);
            v52(v30, v32, v50);
            swift_storeEnumTagMultiPayload();
            v23 = v49;
            goto LABEL_17;
          }

          (*v48)(v0[10], v0[7]);
          v23 = v49;
        }

        outlined init with take of SearchResult(v0[12], v0[13]);
LABEL_17:
        v38 = *(v55 + 16);
        v37 = *(v55 + 24);
        if (v38 >= v37 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, v38 + 1, 1);
        }

        v39 = v0[13];
        *(v55 + 16) = v38 + 1;
        outlined init with take of SearchResult(v39, v55 + v21 + v38 * v23);
        v22 += v23;
        --v17;
        v24 = v53;
      }

      while (v17);
    }
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logging.answerSynthesis);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_25D85C000, v41, v42, "Skip email content preprocessing logging for eval", v43, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v18 = v0[2];
  }

  $defer #1 () in EmailContentPreprocessing.preprocess(data:query:)(v46, "EmailContentPreprocessing.preprocess");

  v44 = v0[1];

  return v44(v18);
}

uint64_t EmailContentPreprocessing.processEmailBody(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v32[-v9];
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v11, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v12 = OSSignposter.logHandle.getter();
  v13 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v12, v13, v15, "EmailContentPreprocessing.processEmailBody", "", v14, 2u);
    MEMORY[0x25F8A1050](v14, -1, -1);
  }

  (*(v5 + 16))(v7, v10, v4);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v16 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v5 + 8))(v10, v4);
  v17 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v18 = @nonobjc NSRegularExpression.init(pattern:options:)(0xD000000000000026, 0x800000025DBF07A0, 0);
  v19 = String.text.getter();
  v20 = MEMORY[0x25F89F730](v19);

  v21 = MEMORY[0x25F89F4C0](a1, a2);
  v22 = [v18 firstMatchInString:v21 options:0 range:{0, v20}];

  if (v22)
  {

    if (one-time initialization token for answerSynthesis != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logging.answerSynthesis);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_25D85C000, v24, v25, "EmailContentPreprocessing: email body contains html tag", v26, 2u);
      MEMORY[0x25F8A1050](v26, -1, -1);
    }

    v27 = objc_opt_self();
    v28 = MEMORY[0x25F89F4C0](a1, a2);
    v29 = [v27 snippetFromHTMLBody:v28 options:32 maxLength:0x7FFFFFFFFFFFFFFFLL preservingQuotedForwardedContent:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  countAndFlagsBits = String.oms_collapseConsecutiveWordBreaks()()._countAndFlagsBits;

  $defer #1 () in EmailContentPreprocessing.preprocess(data:query:)(v16, "EmailContentPreprocessing.processEmailBody");

  return countAndFlagsBits;
}

uint64_t EmailContentPreprocessing.createEmailDocument(from:withBody:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v64 = a2;
  v62 = a1;
  v67 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v65 = v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v63 = v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v61 = v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v45 - v27;
  v29 = WalletPass.id.getter();
  v59 = v30;
  v60 = v29;
  v31 = WalletPass.title.getter();
  v57 = v32;
  v58 = v31;
  v33 = WalletPass.description.getter();
  v55 = v34;
  v56 = v33;
  v54 = EmailDocument.authorNames.getter();
  v53 = EmailDocument.from.getter();
  v52 = EmailDocument.to.getter();
  v51 = EmailDocument.cc.getter();
  EmailDocument.date.getter();
  v50 = EmailDocument.attachmentNames.getter();
  v49 = EmailDocument.attachmentTypes.getter();
  v48 = EmailDocument.attachmentPaths.getter();
  v47 = EmailDocument.unread.getter();
  v46 = EmailDocument.hydratable.getter();
  v35 = type metadata accessor for DataDetectorResults();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v35);
  v45[1] = EmailDocument.extractedEventsLLMConsumableDescription.getter();
  v45[0] = v36;
  EmailDocument.partialExtractedAttributes.getter();
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSJ_Tt0g5();
  String.oms_trimCharacters(_:)(v37, v62, v64);
  v64 = v38;
  v62 = v39;

  outlined init with copy of Date?(v28, v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of Date?(v22, v19, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  outlined init with copy of Date?(v16, v13, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v40 = type metadata accessor for PreExtractedCard();
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v40);
  v41 = type metadata accessor for PreExtractedContact();
  __swift_storeEnumTagSinglePayload(v63, 1, 1, v41);
  v42 = type metadata accessor for PreExtractedSharedLink();
  __swift_storeEnumTagSinglePayload(v65, 1, 1, v42);
  v43 = type metadata accessor for PreExtractedBreadcrumb();
  __swift_storeEnumTagSinglePayload(v66, 1, 1, v43);
  EmailDocument.init(id:mailMessageId:subject:body:authorNames:from:to:cc:date:attachmentNames:attachmentTypes:attachmentPaths:unread:hydratable:instantAnswerDescription:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();
  outlined destroy of IntentApplication?(v16, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  outlined destroy of IntentApplication?(v22, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  return outlined destroy of IntentApplication?(v28, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t $defer #1 () in EmailContentPreprocessing.preprocess(data:query:)(uint64_t a1, const char *a2)
{
  v22 = a2;
  v2 = type metadata accessor for OSSignpostError();
  OUTLINED_FUNCTION_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v14 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v14, static Logging.searchSignposter);
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v16 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v4 + 88))(v7, v2) == *MEMORY[0x277D85B00])
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v7, v2);
      v17 = "";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v15, v16, v19, v22, v17, v18, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  return (*(v10 + 8))(v13, v8);
}

uint64_t protocol witness for SearchEntityPreprocess.preprocess(data:query:) in conformance EmailContentPreprocessing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for SearchEntityPreprocess.preprocess(data:query:) in conformance EmailContentPreprocessing;

  return EmailContentPreprocessing.preprocess(data:query:)(a1, a2, a3);
}

uint64_t protocol witness for SearchEntityPreprocess.preprocess(data:query:) in conformance EmailContentPreprocessing(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t _s10OmniSearch0B6ResultVWOcTm_3(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of SearchResultItem(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_17();
  (*(v6 + 16))(a2, a1);
  return a2;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PQAVerificationRequest.userPrompt()()
{
  v1 = *v0;
  v2 = v0[1];
  v13 = *(v0 + 2);
  v4 = v0[6];
  v3 = v0[7];
  v16 = *(v0 + 64);
  if (v3)
  {
    _StringGuts.grow(_:)(16);

    MEMORY[0x25F89F6C0](v4, v3);
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x25F89F6C0](0x747865746E6F6322, 0xEB00000000223A22);
  }

  _StringGuts.grow(_:)(28);

  countAndFlagsBits = PQAVerificationRequest.personalDataSourcesJson()()._countAndFlagsBits;
  if (v6)
  {
  }

  else
  {
    MEMORY[0x25F89F6C0](countAndFlagsBits);

    MEMORY[0x25F89F6C0](8236, 0xE200000000000000);
    MEMORY[0x25F89F6C0](0xD000000000000018, 0x800000025DBF0800);

    MEMORY[0x25F89F6C0](v1, v2);
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x25F89F6C0](0x3A22797265757122, 0xE900000000000022);

    if (v16 == 1)
    {
      v14 = 0x73726577736E6122;
      v15 = 0xEA00000000003A22;
      v9 = Array<A>.jsonString.getter(v13);
      MEMORY[0x25F89F6C0](v9);
    }

    else
    {
      v14 = 0x22726577736E6122;
      v15 = 0xEA0000000000223ALL;
      if (*(v13 + 16))
      {
        v10 = *(v13 + 32);
        v11 = *(v13 + 40);
      }

      else
      {
        v10 = 0;
        v11 = 0xE000000000000000;
      }

      MEMORY[0x25F89F6C0](v10, v11);

      MEMORY[0x25F89F6C0](34, 0xE100000000000000);
    }

    MEMORY[0x25F89F6C0](v14, v15);

    MEMORY[0x25F89F6C0](125, 0xE100000000000000);
    v7 = 123;
    v8 = 0xE100000000000000;
  }

  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

void __swiftcall PQAVerificationRequest.init(query:answer:personalDataSources:context:)(OmniSearch::PQAVerificationRequest *__return_ptr retstr, Swift::String query, Swift::String answer, Swift::OpaquePointer personalDataSources, Swift::String_optional context)
{
  object = context.value._object;
  countAndFlagsBits = context.value._countAndFlagsBits;
  v8 = answer._object;
  v9 = answer._countAndFlagsBits;
  retstr->answer._countAndFlagsBits = 0;
  retstr->answer._object = 0xE000000000000000;
  retstr->associatedSearchResults._rawValue = MEMORY[0x277D84F90];
  retstr->query = query;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25DBC8180;
  *(v11 + 32) = v9;
  *(v11 + 40) = v8;
  retstr->answers._rawValue = v11;
  retstr->personalDataSources = personalDataSources;
  retstr->context.value._countAndFlagsBits = countAndFlagsBits;
  retstr->context.value._object = object;
  retstr->multiAnswersSuppported = 0;
}

void __swiftcall PQAVerificationRequest.init(query:answers:personalDataSources:context:multipleAnswersSuppported:)(OmniSearch::PQAVerificationRequest *__return_ptr retstr, Swift::String query, Swift::OpaquePointer answers, Swift::OpaquePointer personalDataSources, Swift::String_optional context, Swift::Bool multipleAnswersSuppported)
{
  retstr->answer._countAndFlagsBits = 0;
  retstr->answer._object = 0xE000000000000000;
  retstr->associatedSearchResults._rawValue = MEMORY[0x277D84F90];
  retstr->query = query;
  retstr->answers = answers;
  retstr->personalDataSources = personalDataSources;
  retstr->context = context;
  retstr->multiAnswersSuppported = multipleAnswersSuppported;
}

uint64_t PQAVerificationRequest.query.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PQAVerificationRequest.query.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PQAVerificationRequest.answer.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PQAVerificationRequest.answer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PQAVerificationRequest.answers.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t PQAVerificationRequest.personalDataSources.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t PQAVerificationRequest.context.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PQAVerificationRequest.context.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t PQAVerificationRequest.associatedSearchResults.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PQAVerificationRequest.personalDataSourcesJson()()
{
  v2 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v0[1];
  v9 = v0[4];
  v34 = v0[3];
  v35 = v8;
  v10 = v0[5];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v11 = JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v36 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
  lazy protocol witness table accessor for type [[String : String]] and conformance <A> [A]();
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
  }

  else
  {
    v14 = v12;
    v15 = v13;
    v32 = v9;
    v33 = v11;
    v16 = v35;

    static String.Encoding.utf8.getter();
    v17 = String.init(data:encoding:)();
    v19 = v15;
    if (v18)
    {
      v4 = v17;
      v7 = v18;
      outlined consume of Data._Representation(v14, v19);
    }

    else
    {
      v31 = v15;
      if (one-time initialization token for answerSynthesis != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logging.answerSynthesis);

      v7 = v16;

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v36 = v7;
        *v25 = 136642819;
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
        MEMORY[0x25F89F8A0](v10, v26);
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v25 + 4) = v27;
        _os_log_impl(&dword_25D85C000, v23, v24, "JSON encoding failed, %{sensitive}s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        MEMORY[0x25F8A1050](v7, -1, -1);
        MEMORY[0x25F8A1050](v25, -1, -1);
      }

      v4 = v31;
      lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
      swift_allocError();
      *v28 = 9;
      swift_willThrow();
      outlined consume of Data._Representation(v14, v4);
    }
  }

  v20 = v4;
  v21 = v7;
  result._object = v21;
  result._countAndFlagsBits = v20;
  return result;
}

char *Array<A>.jsonString.getter(void *a1)
{
  v3 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  _sSaySSGSayxGSEsSERzlWlTm_0(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v8 = v6;
    v9 = v7;
    static String.Encoding.utf8.getter();
    v10 = String.init(data:encoding:)();
    if (v11)
    {
      v5 = v10;
      outlined consume of Data._Representation(v8, v9);

      return v5;
    }

    if (one-time initialization token for answerSynthesis != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logging.answerSynthesis);

    v14 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v5))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136642819;
      MEMORY[0x25F89F8A0](a1, MEMORY[0x277D837D0]);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v15 + 4) = v17;
      _os_log_impl(&dword_25D85C000, v14, v5, "JSON encoding failed, %{sensitive}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x25F8A1050](v16, -1, -1);
      MEMORY[0x25F8A1050](v15, -1, -1);
    }

    lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
    swift_allocError();
    *v18 = 9;
    swift_willThrow();
    outlined consume of Data._Representation(v8, v9);
  }

  return v5;
}

uint64_t PQAVerificationRequest.getLocale()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t PQAVerificationRequest.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726577736E61 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73726577736E61 && a2 == 0xE700000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x800000025DBF0820 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x800000025DBF0840 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000017 && 0x800000025DBF0860 == a2)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t PQAVerificationRequest.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7972657571;
  switch(a1)
  {
    case 1:
      result = 0x726577736E61;
      break;
    case 2:
      result = 0x73726577736E61;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x747865746E6F63;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PQAVerificationRequest.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  StackedGridsLayout.CodingKeys.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PQAVerificationRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PQAVerificationRequest.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PQAVerificationRequest.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = PQAVerificationRequest.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PQAVerificationRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PQAVerificationRequest.CodingKeys and conformance PQAVerificationRequest.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PQAVerificationRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PQAVerificationRequest.CodingKeys and conformance PQAVerificationRequest.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PQAVerificationRequest.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch22PQAVerificationRequestV10CodingKeys33_375C110CC7263E2AFF29E0BDFED0AFCELLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch22PQAVerificationRequestV10CodingKeys33_375C110CC7263E2AFF29E0BDFED0AFCELLOGMR);
  OUTLINED_FUNCTION_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v20 - v6;
  v8 = *(v1 + 16);
  v25 = *(v1 + 24);
  v26 = v8;
  v9 = *(v1 + 32);
  v23 = *(v1 + 40);
  v24 = v9;
  v10 = *(v1 + 56);
  v21 = *(v1 + 48);
  v22 = v10;
  v20[3] = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  lazy protocol witness table accessor for type PQAVerificationRequest.CodingKeys and conformance PQAVerificationRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v29) = 0;
  v16 = v27;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v16)
  {
    v18 = v23;
    v17 = v24;
    LOBYTE(v29) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v29 = v17;
    v28 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    _sSaySSGSayxGSEsSERzlWlTm_0(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_2_10();
    v29 = v18;
    v28 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
    lazy protocol witness table accessor for type [[String : String]] and conformance <A> [A]();
    OUTLINED_FUNCTION_2_10();
    LOBYTE(v29) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v29) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v29 = v11;
    v28 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
    lazy protocol witness table accessor for type [SearchResult] and conformance <A> [A](&lazy protocol witness table cache variable for type [SearchResult] and conformance <A> [A]);
    OUTLINED_FUNCTION_2_10();
  }

  return (*(v4 + 8))(v7, v15);
}

uint64_t PQAVerificationRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch22PQAVerificationRequestV10CodingKeys33_375C110CC7263E2AFF29E0BDFED0AFCELLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch22PQAVerificationRequestV10CodingKeys33_375C110CC7263E2AFF29E0BDFED0AFCELLOGMR);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PQAVerificationRequest.CodingKeys and conformance PQAVerificationRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  OUTLINED_FUNCTION_1_14();
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v8 = v7;
  LOBYTE(v24[0]) = 1;
  OUTLINED_FUNCTION_1_14();
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  _sSaySSGSayxGSEsSERzlWlTm_0(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  OUTLINED_FUNCTION_3_10();
  v20 = v24[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
  lazy protocol witness table accessor for type [[String : String]] and conformance <A> [A]();
  OUTLINED_FUNCTION_3_10();
  v19 = v24[0];
  OUTLINED_FUNCTION_1_14();
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = v10;
  LOBYTE(v24[0]) = 5;
  OUTLINED_FUNCTION_1_14();
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
  v27 = 6;
  lazy protocol witness table accessor for type [SearchResult] and conformance <A> [A](&lazy protocol witness table cache variable for type [SearchResult] and conformance <A> [A]);
  OUTLINED_FUNCTION_3_10();
  v11 = v15 & 1;
  v12 = OUTLINED_FUNCTION_0_9();
  v13(v12);
  v16 = v28;
  __src[0] = v6;
  __src[1] = v8;
  __src[2] = v21;
  __src[3] = v22;
  __src[4] = v20;
  __src[5] = v19;
  __src[6] = v17;
  __src[7] = v18;
  LOBYTE(__src[8]) = v11;
  __src[9] = v28;
  memcpy(a2, __src, 0x50uLL);
  outlined init with copy of PQAVerificationRequest(__src, v24);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v24[0] = v6;
  v24[1] = v8;
  v24[2] = v21;
  v24[3] = v22;
  v24[4] = v20;
  v24[5] = v19;
  v24[6] = v17;
  v24[7] = v18;
  v25 = v11;
  v26 = v16;
  return outlined destroy of PQAVerificationRequest(v24);
}

unint64_t lazy protocol witness table accessor for type PQAVerificationRequest.CodingKeys and conformance PQAVerificationRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PQAVerificationRequest.CodingKeys and conformance PQAVerificationRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type PQAVerificationRequest.CodingKeys and conformance PQAVerificationRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PQAVerificationRequest.CodingKeys and conformance PQAVerificationRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PQAVerificationRequest.CodingKeys and conformance PQAVerificationRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type PQAVerificationRequest.CodingKeys and conformance PQAVerificationRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PQAVerificationRequest.CodingKeys and conformance PQAVerificationRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PQAVerificationRequest.CodingKeys and conformance PQAVerificationRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type PQAVerificationRequest.CodingKeys and conformance PQAVerificationRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PQAVerificationRequest.CodingKeys and conformance PQAVerificationRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PQAVerificationRequest.CodingKeys and conformance PQAVerificationRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type PQAVerificationRequest.CodingKeys and conformance PQAVerificationRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PQAVerificationRequest.CodingKeys and conformance PQAVerificationRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SearchResult] and conformance <A> [A](uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
    _s10OmniSearch0B6ResultVACSEAAWlTm_0(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t _sSaySSGSayxGSEsSERzlWlTm_0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t _s10OmniSearch0B6ResultVACSEAAWlTm_0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    type metadata accessor for SearchResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PQAVerificationRequest(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type PQAVerificationRequest and conformance PQAVerificationRequest();
  result = lazy protocol witness table accessor for type PQAVerificationRequest and conformance PQAVerificationRequest();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PQAVerificationRequest(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for PQAVerificationRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PQAVerificationRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PQAVerificationRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_10()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

void OUTLINED_FUNCTION_7_9()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t ResultsDialog.init(synthesisResult:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SearchResult(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnswerSynthesisResult(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v8);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ResultsDialog(0);
  OUTLINED_FUNCTION_2_11();
  v12 = v11;
  _s10OmniSearch21AnswerSynthesisResultOWOcTm_0(a1, a2 + v13, v11);
  _s10OmniSearch21AnswerSynthesisResultOWOcTm_0(a1, v10, v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v43 = *v10;
      v21 = v10[1];
      v22 = v10[2];
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Logging.answerSynthesis);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_4_11(v46))
      {
        *OUTLINED_FUNCTION_172() = 0;
        OUTLINED_FUNCTION_8_11(&dword_25D85C000, v47, v48, "Answer synthesis: multiple answers to disambiguate.");
        OUTLINED_FUNCTION_42_0();
      }

      result = OUTLINED_FUNCTION_0_10();
      *a2 = v43;
      break;
    case 2u:
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logging.answerSynthesis);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_4_11(v25))
      {
        *OUTLINED_FUNCTION_172() = 0;
        OUTLINED_FUNCTION_8_11(&dword_25D85C000, v26, v27, "Answer synthesis: falling back to PCS, no eligible results.");
        OUTLINED_FUNCTION_42_0();
      }

      result = OUTLINED_FUNCTION_0_10();
      v21 = 0;
      *a2 = MEMORY[0x277D84F90];
      v22 = 2;
      break;
    case 3u:
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
      }

      v28 = type metadata accessor for Logger();
      v29 = __swift_project_value_buffer(v28, static Logging.answerSynthesis);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_172();
        *v32 = 0;
        _os_log_impl(&dword_25D85C000, v30, v31, "Answer synthesis: no answer found in personal results. Returning no answers.", v32, 2u);
        OUTLINED_FUNCTION_42_0();
      }

      *a2 = MEMORY[0x277D84F90];
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 67109120;
        v36 = type metadata accessor for NSUserDefaults();
        *(v35 + 4) = static NSUserDefaults.allowNoAnswerFallbackToPCS.getter(v36) & 1;
        OUTLINED_FUNCTION_42_0();
      }

      v37 = type metadata accessor for NSUserDefaults();
      v38 = static NSUserDefaults.allowNoAnswerFallbackToPCS.getter(v37);
      if (v38)
      {
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_4_11(v40))
        {
          v41 = OUTLINED_FUNCTION_172();
          *v41 = 0;
          _os_log_impl(&dword_25D85C000, v39, v29, "Answer synthesis: falling back to PCS, no answer found in personal results.", v41, 2u);
          OUTLINED_FUNCTION_42_0();
        }
      }

      v42 = static NSUserDefaults.allowNoAnswerFallbackToPCS.getter(v38);
      result = OUTLINED_FUNCTION_0_10();
      v21 = 0;
      if (v42)
      {
        v22 = 2;
      }

      else
      {
        v22 = 3;
      }

      break;
    default:
      _s10OmniSearch0B6ResultVWObTm_3(v10, v7, type metadata accessor for SearchResult);
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logging.answerSynthesis);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = OUTLINED_FUNCTION_172();
        *v17 = 0;
        _os_log_impl(&dword_25D85C000, v15, v16, "Answer synthesis: single answer synthesized.", v17, 2u);
        OUTLINED_FUNCTION_42_0();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E6ResultVGMR);
      v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_25DBC8180;
      _s10OmniSearch21AnswerSynthesisResultOWOcTm_0(v7, v19 + v18, type metadata accessor for SearchResult);
      OUTLINED_FUNCTION_0_10();
      result = outlined destroy of AnswerSynthesisResult(v7, type metadata accessor for SearchResult);
      v21 = 0;
      *a2 = v19;
      v22 = 1;
      break;
  }

  a2[1] = v21;
  a2[2] = v22;
  return result;
}

uint64_t ResultsDialog.renderOption.getter()
{
  v0 = OUTLINED_FUNCTION_94();
  outlined copy of ResultsDialog.RenderOption(v0, v1);
  return OUTLINED_FUNCTION_94();
}

uint64_t ResultsDialog.synthesisResult.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ResultsDialog(0);
  OUTLINED_FUNCTION_2_11();
  return _s10OmniSearch21AnswerSynthesisResultOWOcTm_0(v1 + v3, a1, v4);
}

uint64_t ResultsDialog.init(results:renderOption:synthesisResult:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  v7 = type metadata accessor for ResultsDialog(0);
  return _s10OmniSearch0B6ResultVWObTm_3(a4, a5 + *(v7 + 24), type metadata accessor for AnswerSynthesisResult);
}

uint64_t type metadata accessor for ResultsDialog(uint64_t a1)
{
  result = type metadata singleton initialization cache for ResultsDialog;
  if (!type metadata singleton initialization cache for ResultsDialog)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s10OmniSearch21AnswerSynthesisResultOWOcTm_0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

uint64_t outlined destroy of AnswerSynthesisResult(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s10OmniSearch0B6ResultVWObTm_3(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

void type metadata completion function for ResultsDialog(uint64_t a1)
{
  type metadata accessor for [SearchResult](319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AnswerSynthesisResult(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [SearchResult](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [SearchResult])
  {
    type metadata accessor for SearchResult(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [SearchResult]);
    }
  }
}

uint64_t getEnumTagSinglePayload for ResultsDialog.RenderOption(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ResultsDialog.RenderOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for ResultsDialog.RenderOption(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_10()
{

  return outlined destroy of AnswerSynthesisResult(v0, type metadata accessor for AnswerSynthesisResult);
}

BOOL OUTLINED_FUNCTION_4_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_8_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void *AnySearchEntityPreprocessing.init(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_mutable_project_boxed_opaque_existential_1(a1, v2);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  v9 = specialized AnySearchEntityPreprocessing.init(_:)(v7, v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t SearchEntityPreprocessor.preprocess(data:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_3_11();
}

uint64_t SearchEntityPreprocessor.preprocess(data:query:)()
{
  v1 = v0[5];
  v2 = *(v1 + 16);
  v0[6] = v2;
  if (v2)
  {
    v3 = v0[2];
    v0[7] = 0;
    v0[8] = v3;
    v0[9] = *(v1 + 40);

    OUTLINED_FUNCTION_1_15();
    v8 = v4;
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v6 = OUTLINED_FUNCTION_2_12(v5);
  }

  else
  {
    v8 = v0[1];
  }

  return v8(v6);
}

{
  OUTLINED_FUNCTION_48();
  *(*v0 + 88) = v1;

  return MEMORY[0x2822009F8](SearchEntityPreprocessor.preprocess(data:query:));
}

{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[11];
  if (v1 + 1 == v2)
  {
    v4 = OUTLINED_FUNCTION_28();

    return v5(v4);
  }

  else
  {
    v7 = v0[7] + 1;
    v0[7] = v7;
    v0[8] = v3;
    v0[9] = *(v0[5] + 16 * v7 + 40);

    OUTLINED_FUNCTION_1_15();
    v11 = v8;
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v10 = OUTLINED_FUNCTION_2_12(v9);

    return v11(v10);
  }
}

uint64_t SearchEntityPreprocessor.functions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AnySearchEntityPreprocessing.preprocess(data:query:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = protocol witness for AnswerResolvable.resolve(extractedResults:options:) in conformance AnswerResolver;
  v6 = OUTLINED_FUNCTION_9_10();

  return v8(v6);
}

uint64_t closure #1 in AnySearchEntityPreprocessing.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_3_11();
}

uint64_t closure #1 in AnySearchEntityPreprocessing.init(_:)()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v9 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = closure #1 in AnySearchEntityPreprocessing.init(_:);
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7, v5, v6, v2, v3);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_45();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_28();

  return v4(v3);
}

uint64_t *SearchEntityPreprocessorManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_11(&one-time initialization token for shared);
  }

  return &static SearchEntityPreprocessorManager.shared;
}

uint64_t static SearchEntityPreprocessorManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_11(&one-time initialization token for shared);
  }

  swift_beginAccess();
}

uint64_t (*static SearchEntityPreprocessorManager.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_11(&one-time initialization token for shared);
  }

  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path getter for static SearchEntityPreprocessorManager.shared : SearchEntityPreprocessorManager.Type@<X0>(void *a1@<X8>)
{
  SearchEntityPreprocessorManager.shared.unsafeMutableAddressor();
  swift_beginAccess();
  *a1 = static SearchEntityPreprocessorManager.shared;
}

uint64_t key path setter for static SearchEntityPreprocessorManager.shared : SearchEntityPreprocessorManager.Type(uint64_t *a1)
{
  v1 = *a1;

  SearchEntityPreprocessorManager.shared.unsafeMutableAddressor();
  swift_beginAccess();
  static SearchEntityPreprocessorManager.shared = v1;
}

uint64_t static SearchEntityPreprocessorManager.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_11(&one-time initialization token for shared);
  }

  swift_beginAccess();
  static SearchEntityPreprocessorManager.shared = a1;
}

void *specialized AnySearchEntityPreprocessing.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v10 = a3;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v8);
  (*(*(a2 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a2);
  v6 = swift_allocObject();
  outlined init with take of ResponseOverrideMatcherProtocol(&v8, v6 + 16);
  return &async function pointer to partial apply for closure #1 in AnySearchEntityPreprocessing.init(_:);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t dispatch thunk of SearchEntityPreprocess.preprocess(data:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of AnswerResolvable.resolve(extractedResults:options:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t getEnumTagSinglePayload for AnySearchEntityPreprocessing(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AnySearchEntityPreprocessing(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_0_11(uint64_t a1)
{

  return swift_once();
}

uint64_t SmartChunkingPreprocessing.init()()
{
  v1 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  if (static NSUserDefaults.smartChunkingPreprocessing.getter(v1))
  {
    v2 = [objc_opt_self() service];
    type metadata accessor for UniversalEmbeddingModelClient();
    swift_allocObject();
    UniversalEmbeddingModelClient.init(madService:)(v2);
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logging.answerSynthesis);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    v6 = OUTLINED_FUNCTION_32_9();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v8);
      _os_log_impl(&dword_25D85C000, v4, v5, "SmartChunkingPreprocessing disabled, so won't init UniversalEmbeddingModelClient", v0, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }
  }

  return 0;
}

uint64_t SmartChunkingInput.debugDescription.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    MEMORY[0x25F89F8A0](a1, v4);
  }

  else
  {
  }

  return OUTLINED_FUNCTION_94();
}

Swift::Int SmartChunkingPreprocessing.SmartChunkingError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SmartChunkingPreprocessing.SmartChunkingError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  SmartChunkingPreprocessing.SmartChunkingError.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t SmartChunkingPreprocessing.preprocess(data:query:)()
{
  OUTLINED_FUNCTION_48();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[2] = v5;
  v6 = type metadata accessor for OSSignpostID();
  v0[7] = v6;
  OUTLINED_FUNCTION_21(v6);
  v0[8] = v7;
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v8);
}

{
  v2 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  if (static NSUserDefaults.smartChunkingPreprocessing.getter(v2))
  {
    if (one-time initialization token for searchSignposter != -1)
    {
      OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
    }

    v3 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v3, static Logging.searchSignposter);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v4 = OSSignposter.logHandle.getter();
    v5 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v6 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v6);
      v7 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_25D85C000, v4, v5, v7, "SmartChunkingPreprocessing.preprocess", "", v0, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v8 = v1[9];
    v9 = v1[10];
    v10 = v1[7];
    v11 = v1[8];
    v13 = v1[5];
    v12 = v1[6];
    v15 = v1[3];
    v14 = v1[4];

    (*(v11 + 16))(v8, v9, v10);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v1[11] = OUTLINED_FUNCTION_38_6();
    (*(v11 + 8))(v9, v10);
    v16 = swift_allocObject();
    v1[12] = v16;
    v16[2] = v13;
    v16[3] = v12;
    v16[4] = v15;
    v16[5] = v14;

    v17 = swift_task_alloc();
    v1[13] = v17;
    *v17 = v1;
    v17[1] = SmartChunkingPreprocessing.preprocess(data:query:);

    return specialized Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:)();
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logging.answerSynthesis);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_11(v21))
    {
      v22 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v22);
      OUTLINED_FUNCTION_9_11(&dword_25D85C000, v23, v24, "SmartChunkingPreprocessing disabled.");
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v25 = OUTLINED_FUNCTION_28();

    return v26(v25);
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *(v6 + 112) = v5;

  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_48();
  $defer #1 () in SmartChunkingPreprocessing.preprocess(data:query:)(*(v0 + 88), "SmartChunkingPreprocessing.preprocess");

  v1 = OUTLINED_FUNCTION_28();

  return v2(v1);
}

uint64_t closure #1 in SmartChunkingPreprocessing.preprocess(data:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v7 = swift_task_alloc();
  v6[9] = v7;
  *v7 = v6;
  v7[1] = closure #1 in SmartChunkingPreprocessing.preprocess(data:query:);

  return SmartChunkingPreprocessing.smartChunk(_:query:)();
}

uint64_t closure #1 in SmartChunkingPreprocessing.preprocess(data:query:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v1[2] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = *v0;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v8 + 80) = v7;

  v9 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v9);
}

{
  OUTLINED_FUNCTION_48();
  if (*(v0 + 80))
  {
    SmartChunkingPreprocessing.buildSearchResult(with:searchResult:)(*(v0 + 24), *(v0 + 80), *(v0 + 48), *(v0 + 40));
  }

  else
  {
    _s10OmniSearch0B10ResultItemOWOcTm_1(*(v0 + 48), *(v0 + 40), type metadata accessor for SearchResult);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SmartChunkingPreprocessing.smartChunk(_:query:)()
{
  OUTLINED_FUNCTION_48();
  v0[34] = v1;
  v0[35] = v2;
  v0[32] = v3;
  v0[33] = v4;
  v0[31] = v5;
  v6 = type metadata accessor for EmailDocument();
  v0[36] = v6;
  OUTLINED_FUNCTION_21(v6);
  v0[37] = v7;
  v0[38] = swift_task_alloc();
  v0[39] = type metadata accessor for SearchResultItem(0);
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  v0[45] = swift_task_alloc();
  v0[46] = swift_task_alloc();
  v0[47] = swift_task_alloc();
  v8 = type metadata accessor for OSSignpostID();
  v0[48] = v8;
  OUTLINED_FUNCTION_21(v8);
  v0[49] = v9;
  v0[50] = swift_task_alloc();
  v0[51] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_47();
  *v5 = v4;
  v2[58] = v6;
  v2[59] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](SmartChunkingPreprocessing.smartChunk(_:query:));
  }

  else
  {
    v7 = v2[35];

    v11 = (*(*v7 + 104) + **(*v7 + 104));
    v8 = swift_task_alloc();
    v2[60] = v8;
    *v8 = v4;
    v8[1] = SmartChunkingPreprocessing.smartChunk(_:query:);
    v9 = v2[54];

    return v11(v9);
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 488) = v5;
  *(v3 + 496) = v0;

  if (v0)
  {

    v6 = SmartChunkingPreprocessing.smartChunk(_:query:);
  }

  else
  {
    v6 = SmartChunkingPreprocessing.smartChunk(_:query:);
  }

  return MEMORY[0x2822009F8](v6);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *(v6 + 512) = v5;

  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

void SmartChunkingPreprocessing.smartChunk(_:query:)()
{
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v1 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = OUTLINED_FUNCTION_172();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v2, v3, v5, "SmartChunkingPreprocessing.smartChunk", "", v4, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v6 = v0[50];
  v7 = v0[51];
  v8 = v0[48];
  v9 = v0[49];
  v10 = v0[47];
  v11 = v0[31];

  (*(v9 + 16))(v6, v7, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[52] = OUTLINED_FUNCTION_38_6();
  (*(v9 + 8))(v7, v8);
  OUTLINED_FUNCTION_2_13();
  _s10OmniSearch0B10ResultItemOWOcTm_1(v11, v10, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v0[47];
  switch(EnumCaseMultiPayload)
  {
    case 1:
      type metadata accessor for MobileSMSDocument();
      goto LABEL_40;
    case 2:
      type metadata accessor for CalendarEvent();
      goto LABEL_40;
    case 3:
      type metadata accessor for Photo();
      goto LABEL_40;
    case 4:
      type metadata accessor for NoteDocument();
      goto LABEL_40;
    case 5:
      type metadata accessor for Reminder();
      goto LABEL_40;
    case 6:
      type metadata accessor for PhoneHistory();
      goto LABEL_40;
    case 7:
      type metadata accessor for VoicemailTranscript();
      goto LABEL_40;
    case 8:
      type metadata accessor for JournalEntry();
      goto LABEL_40;
    case 9:
      type metadata accessor for VoiceMemo();
      goto LABEL_40;
    case 10:
      type metadata accessor for Safari();
      goto LABEL_40;
    case 11:
      type metadata accessor for FileDocument();
      goto LABEL_40;
    case 12:
      type metadata accessor for WalletTransaction();
      goto LABEL_40;
    case 13:
      type metadata accessor for WalletPass();
      goto LABEL_40;
    case 14:
      type metadata accessor for Contact();
      goto LABEL_40;
    case 15:
      type metadata accessor for Appointment();
      goto LABEL_40;
    case 16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR);

      type metadata accessor for FlightReservation();
      goto LABEL_40;
    case 17:
      type metadata accessor for HotelReservation();
      goto LABEL_40;
    case 18:
      type metadata accessor for Party();
      goto LABEL_40;
    case 19:
      type metadata accessor for RestaurantReservation();
      goto LABEL_40;
    case 20:
      type metadata accessor for RentalCarReservation();
      goto LABEL_40;
    case 21:
      type metadata accessor for ShippingOrder();
      goto LABEL_40;
    case 22:
      type metadata accessor for TicketedTransportation();
      goto LABEL_40;
    case 23:
      type metadata accessor for TicketedShow();
      goto LABEL_40;
    case 24:
      type metadata accessor for Trip();
      goto LABEL_40;
    case 25:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR);

      v15 = type metadata accessor for GlobalItem;
      goto LABEL_38;
    case 26:
    case 27:
      v15 = type metadata accessor for SearchResultItem;
      goto LABEL_38;
    case 28:
      v15 = type metadata accessor for Answer;
LABEL_38:
      _s10OmniSearch0B10ResultItemOWOhTm_2(v14, v15);
      goto LABEL_41;
    case 29:
      type metadata accessor for OnScreen();
      goto LABEL_40;
    case 30:
      type metadata accessor for GenericSpotlightItem();
LABEL_40:
      OUTLINED_FUNCTION_17();
      (*(v34 + 8))(v14);
LABEL_41:
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v35 = v0[44];
      v36 = v0[45];
      v37 = v0[31];
      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logging.answerSynthesis);
      _s10OmniSearch0B10ResultItemOWOcTm_1(v37, v36, type metadata accessor for SearchResultItem);
      _s10OmniSearch0B10ResultItemOWOcTm_1(v37, v35, type metadata accessor for SearchResultItem);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.info.getter();
      v41 = OUTLINED_FUNCTION_32_9();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v0[44];
      v45 = v0[45];
      if (!v43)
      {
        goto LABEL_59;
      }

      v46 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *v46 = 136315394;
      SearchResultItem.associatedValue.getter(v0 + 2);
      v47 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      v48 = OUTLINED_FUNCTION_25_9();
      v49(v48, v47);
      OUTLINED_FUNCTION_12_8();
      _s10OmniSearch0B10ResultItemOWOhTm_2(v45, v50);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      OUTLINED_FUNCTION_17_8();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      OUTLINED_FUNCTION_30_9(v51, v52, v53, v54, v55, v56, v57, v58, v104, v105, v106, v107, *v108, *&v108[4], v108[6], v109);
      v59 = &v109;
      SearchResultKey.rawValue.getter();
      OUTLINED_FUNCTION_34_10();
      _s10OmniSearch0B10ResultItemOWOhTm_2(v44, v47);
      OUTLINED_FUNCTION_17_8();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_28_7();

      *(v46 + 14) = &v109;
      v60 = "SmartChunkingPreprocessing.smartChunk this item:%s type is%s, doesn't need smartChunk.";
      goto LABEL_45;
    default:
      (*(v0[37] + 32))(v0[38], v0[47], v0[36]);
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v16 = v0[46];
      v17 = v0[31];
      v18 = type metadata accessor for Logger();
      v0[53] = __swift_project_value_buffer(v18, static Logging.answerSynthesis);
      OUTLINED_FUNCTION_2_13();
      _s10OmniSearch0B10ResultItemOWOcTm_1(v17, v16, v19);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      v22 = os_log_type_enabled(v20, v21);
      v23 = v0[46];
      if (v22)
      {
        v106 = v0[32];
        v107 = v0[33];
        v24 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        *v24 = 136315394;
        SearchResultItem.associatedValue.getter(v0 + 22);
        v25 = v0[26];
        __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
        v26 = OUTLINED_FUNCTION_28_7();
        v27(v26, v25);
        OUTLINED_FUNCTION_34_10();
        OUTLINED_FUNCTION_0_12();
        _s10OmniSearch0B10ResultItemOWOhTm_2(v23, v28);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
        OUTLINED_FUNCTION_17_8();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_28_7();

        *(v24 + 4) = v23;
        *(v24 + 12) = 2080;
        *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_22_8();
        _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {

        OUTLINED_FUNCTION_0_12();
        _s10OmniSearch0B10ResultItemOWOhTm_2(v23, v61);
      }

      v62 = NoteDocument.folderName.getter();
      if (v63)
      {
        v64 = SmartChunkingPreprocessing.splitIntoChunks(_:)(v62, v63, v0[34], v0[35]);
        v0[54] = v64;
        (*(v0[37] + 8))(v0[38], v0[36]);

        v72 = *(v64 + 16);
        v73 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
        v0[55] = v73;
        if (static NSUserDefaults.smartChunksPerDocument.getter(v73) >= v72)
        {
          v81 = v0[40];
          v80 = v0[41];
          v82 = v0[31];

          _s10OmniSearch0B10ResultItemOWOcTm_1(v82, v80, type metadata accessor for SearchResultItem);
          _s10OmniSearch0B10ResultItemOWOcTm_1(v82, v81, type metadata accessor for SearchResultItem);
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.info.getter();
          v83 = OUTLINED_FUNCTION_32_9();
          v85 = os_log_type_enabled(v83, v84);
          v44 = v0[40];
          v45 = v0[41];
          if (v85)
          {
            v46 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            *v46 = 136315394;
            SearchResultItem.associatedValue.getter(v0 + 7);
            v86 = v0[11];
            __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
            v87 = OUTLINED_FUNCTION_25_9();
            v88(v87, v86);
            OUTLINED_FUNCTION_12_8();
            _s10OmniSearch0B10ResultItemOWOhTm_2(v45, v89);
            __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
            OUTLINED_FUNCTION_17_8();
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            OUTLINED_FUNCTION_30_9(v90, v91, v92, v93, v94, v95, v96, v97, v104, v105, v106, v107, *v108, *&v108[4], v108[6], v109);
            v59 = &v109;
            SearchResultKey.rawValue.getter();
            OUTLINED_FUNCTION_34_10();
            _s10OmniSearch0B10ResultItemOWOhTm_2(v44, v86);
            OUTLINED_FUNCTION_17_8();
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            OUTLINED_FUNCTION_28_7();

            *(v46 + 14) = &v109;
            v60 = "SmartChunkingPreprocessing.smartChunk this item:%s type is%s will skip chunk.";
LABEL_45:
            _os_log_impl(&dword_25D85C000, v39, v40, v60, v46, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
          }

          else
          {
LABEL_59:

            v59 = type metadata accessor for SearchResultItem;
            _s10OmniSearch0B10ResultItemOWOhTm_2(v44, type metadata accessor for SearchResultItem);
            _s10OmniSearch0B10ResultItemOWOhTm_2(v45, type metadata accessor for SearchResultItem);
          }
        }

        else
        {
          if (v0[35])
          {
            v75 = v0[32];
            v74 = v0[33];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch18SmartChunkingInputOGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch18SmartChunkingInputOGMR);
            v76 = swift_allocObject();
            v0[56] = v76;
            *(v76 + 16) = xmmword_25DBC8180;
            *(v76 + 32) = v75;
            *(v76 + 40) = v74;
            *(v76 + 48) = 0;

            v77 = swift_task_alloc();
            v0[57] = v77;
            *v77 = v0;
            v77[1] = SmartChunkingPreprocessing.smartChunk(_:query:);
            OUTLINED_FUNCTION_15_6();

            __asm { BRAA            X1, X16 }
          }

          v59 = Logger.logObject.getter();
          v100 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_16_11(v100))
          {
            v101 = OUTLINED_FUNCTION_172();
            OUTLINED_FUNCTION_81_4(v101);
            OUTLINED_FUNCTION_9_11(&dword_25D85C000, v102, v103, "SmartChunkingPreprocessing.smartChunk failed. didn't get valid embeddings.");
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
          }
        }
      }

      else
      {
        v59 = Logger.logObject.getter();
        v65 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_16_11(v65))
        {
          v66 = OUTLINED_FUNCTION_172();
          OUTLINED_FUNCTION_81_4(v66);
          OUTLINED_FUNCTION_9_11(&dword_25D85C000, v67, v68, "SmartChunkingPreprocessing.smartChunk the body of emailDocument is empty.");
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        v70 = v0[37];
        v69 = v0[38];
        v71 = v0[36];

        (*(v70 + 8))(v69, v71);
      }

      OUTLINED_FUNCTION_3_12();
      $defer #1 () in SmartChunkingPreprocessing.preprocess(data:query:)(v59, "SmartChunkingPreprocessing.smartChunk");

      OUTLINED_FUNCTION_7_10();
      OUTLINED_FUNCTION_15_6();

      __asm { BRAA            X3, X16 }

      return;
  }
}

{
  v1 = v0[64];
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);

    v4 = static NSUserDefaults.smartChunksPerDocument.getter(v3);
    v5 = specialized Array<A>.argminN(_:)(v4, v2);

    if (v5)
    {
      v6 = v0[62];
      v8 = v0[34];
      v7 = v0[35];
      specialized Array.elements(at:)(v5, v0[54]);
      v10 = v9;

      SmartChunkingPreprocessing.buildOutput(_:)(v10, v8, v7);
      if (v6)
      {

        v11 = v6;
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v12, v13))
        {
          OUTLINED_FUNCTION_28_3();
          v14 = swift_slowAlloc();
          OUTLINED_FUNCTION_9_4();
          v40 = swift_slowAlloc();
          OUTLINED_FUNCTION_15_9(4.8149e-34);
          swift_getErrorValue();
          OUTLINED_FUNCTION_39_6();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          OUTLINED_FUNCTION_40_8();
          *(v14 + 4) = v10;
          OUTLINED_FUNCTION_37_6(&dword_25D85C000, v15, v16, "SmartChunkingPreprocessing.smartChunk failed. %s");
          __swift_destroy_boxed_opaque_existential_1Tm(v40);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        else
        {
        }
      }

      else
      {
        v22 = v0[42];
        v23 = v0[31];

        OUTLINED_FUNCTION_2_13();
        _s10OmniSearch0B10ResultItemOWOcTm_1(v23, v22, v24);

        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.info.getter();

        v27 = os_log_type_enabled(v25, v26);
        v28 = v0[42];
        if (v27)
        {
          OUTLINED_FUNCTION_9_4();
          v29 = swift_slowAlloc();
          swift_slowAlloc();
          *v29 = 136315651;
          v39 = v26;
          SearchResultItem.associatedValue.getter(v0 + 12);
          v30 = v0[16];
          __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
          v31 = OUTLINED_FUNCTION_25_9();
          v32(v31, v30);
          OUTLINED_FUNCTION_0_12();
          _s10OmniSearch0B10ResultItemOWOhTm_2(v28, v33);
          __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
          OUTLINED_FUNCTION_17_8();
          v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v29 + 4) = v34;
          *(v29 + 12) = 2080;
          MEMORY[0x25F89F8A0](v5, MEMORY[0x277D83B88]);

          OUTLINED_FUNCTION_17_8();
          v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v29 + 14) = v35;
          *(v29 + 22) = 2085;
          *(v29 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          _os_log_impl(&dword_25D85C000, v25, v39, "SmartChunkingPreprocessing.smartChunk finished. ItemId is:%s ChunkIndex is:%s, SmartChunkText is:%{sensitive}s", v29, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        else
        {

          OUTLINED_FUNCTION_0_12();
          _s10OmniSearch0B10ResultItemOWOhTm_2(v28, v36);
        }
      }
    }

    else
    {

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_16_11(v18))
      {
        v19 = OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_81_4(v19);
        OUTLINED_FUNCTION_9_11(&dword_25D85C000, v20, v21, "SmartChunkingPreprocessing.smartChunk didn't find valid chunk.");
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }
    }

    $defer #1 () in SmartChunkingPreprocessing.preprocess(data:query:)(v0[52], "SmartChunkingPreprocessing.smartChunk");

    OUTLINED_FUNCTION_15_6();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
}

uint64_t SmartChunkingPreprocessing.smartChunk(_:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_146();
  v17 = v16[58];
  v18 = v16[61];
  if (v17 && v18)
  {
    OUTLINED_FUNCTION_2_13();
    _s10OmniSearch0B10ResultItemOWOcTm_1(v19, v20, v21);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v16[43];
    if (v24)
    {
      OUTLINED_FUNCTION_9_4();
      v26 = swift_slowAlloc();
      swift_slowAlloc();
      *v26 = 136315650;
      SearchResultItem.associatedValue.getter(v16 + 17);
      v28 = v16[20];
      v27 = v16[21];
      v29 = __swift_project_boxed_opaque_existential_1(v16 + 17, v28);
      (*(v27 + 32))(v28, v27);
      OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_0_12();
      _s10OmniSearch0B10ResultItemOWOhTm_2(v25, v30);
      __swift_destroy_boxed_opaque_existential_1Tm(v16 + 17);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_28_7();

      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;
      *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v26 + 22) = 2080;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
      MEMORY[0x25F89F8A0](v17, v31);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_40_8();
      *(v26 + 24) = v27;
      _os_log_impl(&dword_25D85C000, v22, v23, "SmartChunkingPreprocessing.smartChunk item:%s, query is:%s, queryEmbeding is:%s", v26, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    else
    {

      OUTLINED_FUNCTION_0_12();
      _s10OmniSearch0B10ResultItemOWOhTm_2(v25, v46);
    }

    v47 = *(v16[54] + 16);
    v48 = 0;
    for (i = ( + 48); ; i += 24)
    {
      result = v16[54];
      if (v47 == v48)
      {
        break;
      }

      if (v48 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v50 = v16[31];
      v51 = *i;
      v53 = *(i - 2);
      v52 = *(i - 1);
      outlined copy of SmartChunkingInput(v53, v52, *i);
      closure #1 in SmartChunkingPreprocessing.smartChunk(_:query:)(v48, v53, v52, v51, v50, v18);
      outlined consume of SmartChunkingInput(v53, v52, v51);
      ++v48;
    }

    v54 = swift_task_alloc();
    v16[63] = v54;
    *v54 = v16;
    v54[1] = SmartChunkingPreprocessing.smartChunk(_:query:);
    OUTLINED_FUNCTION_115();

    return SmartChunkingPreprocessing.cosineDistance(vector1:vector2:)(v55, v56);
  }

  else
  {

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_11(v33))
    {
      v34 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v34);
      OUTLINED_FUNCTION_9_11(&dword_25D85C000, v35, v36, "SmartChunkingPreprocessing.smartChunk failed. didn't get valid embeddings.");
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    OUTLINED_FUNCTION_3_12();
    $defer #1 () in SmartChunkingPreprocessing.preprocess(data:query:)(v32, "SmartChunkingPreprocessing.smartChunk");

    OUTLINED_FUNCTION_7_10();
    OUTLINED_FUNCTION_115();

    return v40(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t SmartChunkingPreprocessing.smartChunk(_:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_146();
  v18 = *(v16 + 472);
  v19 = *(v16 + 424);
  v20 = v18;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_28_3();
    v23 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    a13 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_9(4.8149e-34);
    swift_getErrorValue();
    OUTLINED_FUNCTION_39_6();
    v19 = v24;
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_40_8();
    *(v23 + 4) = v17;
    OUTLINED_FUNCTION_22_8();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(a13);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_3_12();
  $defer #1 () in SmartChunkingPreprocessing.preprocess(data:query:)(v19, "SmartChunkingPreprocessing.smartChunk");

  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_115();

  return v33(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_146();
  v18 = *(v16 + 496);
  v19 = *(v16 + 424);
  v20 = v18;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_28_3();
    v23 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    a13 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_9(4.8149e-34);
    swift_getErrorValue();
    OUTLINED_FUNCTION_39_6();
    v19 = v24;
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_40_8();
    *(v23 + 4) = v17;
    OUTLINED_FUNCTION_22_8();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(a13);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_3_12();
  $defer #1 () in SmartChunkingPreprocessing.preprocess(data:query:)(v19, "SmartChunkingPreprocessing.smartChunk");

  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_115();

  return v33(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t SmartChunkingPreprocessing.buildSearchResult(with:searchResult:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v116 = a1;
  v117 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v118 = v89 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v124 = v89 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v123 = v89 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v122 = v89 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v121 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v126 = v89 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v125 = v89 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v89 - v27;
  v29 = type metadata accessor for EmailDocument();
  v120 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = v89 - v33;
  v35 = type metadata accessor for SearchResultItem(0);
  MEMORY[0x28223BE20](v35);
  v37 = v89 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = a4;
  _s10OmniSearch0B10ResultItemOWOcTm_1(a3, a4, type metadata accessor for SearchResult);
  _s10OmniSearch0B10ResultItemOWOcTm_1(a3, v37, type metadata accessor for SearchResultItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v39 = type metadata accessor for MobileSMSDocument();
      goto LABEL_36;
    case 2u:
      v39 = type metadata accessor for CalendarEvent();
      goto LABEL_36;
    case 3u:
      v39 = type metadata accessor for Photo();
      goto LABEL_36;
    case 4u:
      v39 = type metadata accessor for NoteDocument();
      goto LABEL_36;
    case 5u:
      v39 = type metadata accessor for Reminder();
      goto LABEL_36;
    case 6u:
      v39 = type metadata accessor for PhoneHistory();
      goto LABEL_36;
    case 7u:
      v39 = type metadata accessor for VoicemailTranscript();
      goto LABEL_36;
    case 8u:
      v39 = type metadata accessor for JournalEntry();
      goto LABEL_36;
    case 9u:
      v39 = type metadata accessor for VoiceMemo();
      goto LABEL_36;
    case 0xAu:
      v39 = type metadata accessor for Safari();
      goto LABEL_36;
    case 0xBu:
      v39 = type metadata accessor for FileDocument();
      goto LABEL_36;
    case 0xCu:
      v39 = type metadata accessor for WalletTransaction();
      goto LABEL_36;
    case 0xDu:
      v39 = type metadata accessor for WalletPass();
      goto LABEL_36;
    case 0xEu:
      v39 = type metadata accessor for Contact();
      goto LABEL_36;
    case 0xFu:
      v39 = type metadata accessor for Appointment();
      goto LABEL_36;
    case 0x10u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR);

      v39 = type metadata accessor for FlightReservation();
      goto LABEL_36;
    case 0x11u:
      v39 = type metadata accessor for HotelReservation();
      goto LABEL_36;
    case 0x12u:
      v39 = type metadata accessor for Party();
      goto LABEL_36;
    case 0x13u:
      v39 = type metadata accessor for RestaurantReservation();
      goto LABEL_36;
    case 0x14u:
      v39 = type metadata accessor for RentalCarReservation();
      goto LABEL_36;
    case 0x15u:
      v39 = type metadata accessor for ShippingOrder();
      goto LABEL_36;
    case 0x16u:
      v39 = type metadata accessor for TicketedTransportation();
      goto LABEL_36;
    case 0x17u:
      v39 = type metadata accessor for TicketedShow();
      goto LABEL_36;
    case 0x18u:
      v39 = type metadata accessor for Trip();
      goto LABEL_36;
    case 0x19u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR);

      v38 = type metadata accessor for GlobalItem;
      return _s10OmniSearch0B10ResultItemOWOhTm_2(v37, v38);
    case 0x1Au:
    case 0x1Bu:
      v38 = type metadata accessor for SearchResultItem;
      return _s10OmniSearch0B10ResultItemOWOhTm_2(v37, v38);
    case 0x1Cu:
      v38 = type metadata accessor for Answer;
      return _s10OmniSearch0B10ResultItemOWOhTm_2(v37, v38);
    case 0x1Du:
      v39 = type metadata accessor for OnScreen();
      goto LABEL_36;
    case 0x1Eu:
      v39 = type metadata accessor for GenericSpotlightItem();
LABEL_36:
      result = (*(*(v39 - 8) + 8))(v37, v39);
      break;
    default:
      v113 = *(v120 + 32);
      v114 = v120 + 32;
      v113(v34, v37, v29);
      v40 = WalletPass.id.getter();
      v111 = v41;
      v112 = v40;
      v42 = WalletPass.title.getter();
      v109 = v43;
      v110 = v42;
      v44 = WalletPass.description.getter();
      v107 = v45;
      v108 = v44;
      v106 = EmailDocument.authorNames.getter();
      v105 = EmailDocument.from.getter();
      v104 = EmailDocument.to.getter();
      v103 = EmailDocument.cc.getter();
      EmailDocument.date.getter();
      v102 = EmailDocument.attachmentNames.getter();
      v101 = EmailDocument.attachmentTypes.getter();
      v100 = EmailDocument.attachmentPaths.getter();
      v99 = EmailDocument.unread.getter();
      v98 = EmailDocument.hydratable.getter();
      v46 = type metadata accessor for DataDetectorResults();
      __swift_storeEnumTagSinglePayload(v125, 1, 1, v46);
      v97 = EmailDocument.extractedEventsLLMConsumableDescription.getter();
      v96 = v47;
      EmailDocument.partialExtractedAttributes.getter();
      type metadata accessor for SearchResult(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v48 = CodableNSSecureCoding.wrappedValue.getter();
      type metadata accessor for FeatureFlagService();
      v95 = swift_allocObject();
      v49 = one-time initialization token for search;
      v50 = v48;
      if (v49 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      v52 = __swift_project_value_buffer(v51, static Logging.search);
      v53 = v50;
      v115 = v52;
      v54 = v53;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.info.getter();

      LODWORD(v94) = v56;
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v91 = v57;
        v93 = swift_slowAlloc();
        v127 = v93;
        *v57 = 136315138;
        v58 = [v54 attributeSet];
        CSSearchableItemAttributeSet.keyStrings.getter();
        v90 = v55;
        v92 = v54;
        v60 = v59;

        v89[1] = MEMORY[0x25F89F8A0](v60, MEMORY[0x277D837D0]);

        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        v62 = v91;
        *(v91 + 4) = v61;
        v54 = v92;
        _os_log_impl(&dword_25D85C000, v55, v94, "EmailDocument: parsing attribute keys: %s", v62, 0xCu);
        v63 = v93;
        __swift_destroy_boxed_opaque_existential_1Tm(v93);
        MEMORY[0x25F8A1050](v63, -1, -1);
        MEMORY[0x25F8A1050](v62, -1, -1);
      }

      else
      {
      }

      v65 = v54;
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.info.getter();
      v115 = v65;

      LODWORD(v93) = v67;
      v94 = v66;
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v127 = v92;
        *v68 = 136642819;
        v69 = [v115 attributeSet];
        CSSearchableItemAttributeSet.kvStrings.getter();
        v71 = v70;

        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
        v91 = MEMORY[0x25F89F8A0](v71, v72);

        v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v68 + 4) = v73;
        v74 = v94;
        v75 = v68;
        _os_log_impl(&dword_25D85C000, v94, v93, "EmailDocument: parsing attributes: %{sensitive}s", v68, 0xCu);
        v76 = v92;
        __swift_destroy_boxed_opaque_existential_1Tm(v92);
        v77 = v76;
        v78 = v115;
        MEMORY[0x25F8A1050](v77, -1, -1);
        MEMORY[0x25F8A1050](v75, -1, -1);
      }

      else
      {
        v78 = v115;
      }

      v79 = v117;
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSJ_Tt0g5();
      String.oms_trimCharacters(_:)(v80, v116, v79);
      v116 = v82;
      v117 = v81;

      outlined init with copy of ResourceBundle?(v28, v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined init with copy of ResourceBundle?(v125, v20, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
      outlined init with copy of ResourceBundle?(v126, v121, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
      v83 = v78;
      v84 = v95;

      PreExtractedCard.init(item:featureFlagService:)(v83, v84, v122);
      v85 = v83;

      PreExtractedContact.init(item:featureFlagService:)(v85, v84, v123);
      v86 = v85;
      PreExtractedSharedLink.init(item:)(v86, v124);
      v87 = v86;

      PreExtractedBreadcrumb.init(item:featureFlagService:)(v87, v84);
      EmailDocument.init(id:mailMessageId:subject:body:authorNames:from:to:cc:date:attachmentNames:attachmentTypes:attachmentPaths:unread:hydratable:instantAnswerDescription:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();

      outlined destroy of IntentApplication?(v126, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
      outlined destroy of IntentApplication?(v125, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
      outlined destroy of IntentApplication?(v28, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      (*(v120 + 8))(v34, v29);
      v88 = v119;
      _s10OmniSearch0B10ResultItemOWOhTm_2(v119, type metadata accessor for SearchResultItem);
      v113(v88, v31, v29);
      result = swift_storeEnumTagMultiPayload();
      break;
  }

  return result;
}

uint64_t $defer #1 () in SmartChunkingPreprocessing.preprocess(data:query:)(uint64_t a1, const char *a2)
{
  v22 = a2;
  v2 = type metadata accessor for OSSignpostError();
  OUTLINED_FUNCTION_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v14 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v14, static Logging.searchSignposter);
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v16 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v4 + 88))(v7, v2) == *MEMORY[0x277D85B00])
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v7, v2);
      v17 = "";
    }

    v18 = OUTLINED_FUNCTION_172();
    *v18 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v15, v16, v19, v22, v17, v18, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  return (*(v10 + 8))(v13, v8);
}

uint64_t SmartChunkingPreprocessing.splitIntoChunks(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4 || (v6 = *(a4 + 24)) == 0)
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
LABEL_99:
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logging.answerSynthesis);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    v20 = OUTLINED_FUNCTION_32_9();
    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_28_3();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v87 = swift_slowAlloc();
      *v22 = 136315138;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v18, v19, "%s failed to split body because csuTokenizer is nil.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v87);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    lazy protocol witness table accessor for type SmartChunkingPreprocessing.SmartChunkingError and conformance SmartChunkingPreprocessing.SmartChunkingError();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
    return v5;
  }

  v5 = v4;
  v10 = one-time initialization token for answerSynthesis;
  v11 = v6;
  if (v10 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logging.answerSynthesis);
  v13 = v11;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_28_3();
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = [v13 revision];

    _os_log_impl(&dword_25D85C000, v14, v15, "csuTokenizer version is:%ld", v16, 0xCu);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    v14 = v13;
  }

  v24 = [v13 maxTokenLength];
  v25 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  v26 = static NSUserDefaults.smartChunkingOverlap.getter(v25);
  v83 = v24;
  if (v26 < v24)
  {
    a3 = static NSUserDefaults.smartChunkingOverlap.getter(v26);
  }

  v27 = MEMORY[0x25F89F4C0](a1, a2);
  v28 = [v13 getTokenIDsForText:v27];

  v29 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!specialized Array.count.getter())
  {
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v30 < 0 || (v30 & 0x4000000000000000) != 0)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
  }

  v31 = v24;
  v32 = v30 & 0xFFFFFFFFFFFFFF8;
  v33 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v33)
  {
    goto LABEL_101;
  }

  v34 = v33 - 1;
  v80 = v32 + 32;
  v35 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * v34);
  *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) = v34;

  v86 = v30 >> 62;
  v79 = v13;
  if (v83 >= specialized Array.count.getter())
  {
    v36 = 0;
    v38 = MEMORY[0x277D84F90];
LABEL_76:
    v5 = v38;
    if (v36 >= specialized Array.count.getter())
    {

      return v5;
    }

    v59 = specialized Array.count.getter();
    v13 = v79;
    if (!__OFSUB__(v59, v31))
    {
      v60 = v59;
      v61 = (v59 - v31) & ~((v59 - v31) >> 63);
      if (v59 >= v61)
      {
        v62 = OUTLINED_FUNCTION_94();
        specialized Array._checkIndex(_:)(v62, v63);
        specialized Array._checkIndex(_:)(v60, v30);
        if ((v30 & 0xC000000000000001) == 0 || v61 == v60)
        {
        }

        else
        {
          if (v61 >= v60)
          {
            __break(1u);
            goto LABEL_119;
          }

          v64 = v61;
          do
          {
            v65 = v64 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v64);
            v64 = v65;
          }

          while (v60 != v65);
        }

        if (!v86)
        {
          v60 = (2 * v60) | 1;
          if (v60)
          {
            goto LABEL_106;
          }

          goto LABEL_89;
        }

LABEL_105:

        v32 = _CocoaArrayWrapper.subscript.getter();
        v80 = v68;
        v61 = v69;
        v60 = v70;
        if (v70)
        {
LABEL_106:
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v71 = swift_dynamicCastClass();
          if (!v71)
          {
            swift_unknownObjectRelease();
            v71 = MEMORY[0x277D84F90];
          }

          v29 = v32;
          v72 = *(v71 + 16);

          if (!__OFSUB__(v60 >> 1, v61))
          {
            if (v72 == (v60 >> 1) - v61)
            {
              v67 = swift_dynamicCastClass();
              if (!v67)
              {
                swift_unknownObjectRelease();
                v67 = MEMORY[0x277D84F90];
              }

              goto LABEL_112;
            }

            goto LABEL_120;
          }

LABEL_119:
          __break(1u);
LABEL_120:
          v32 = v29;
          swift_unknownObjectRelease();
        }

LABEL_89:
        specialized _copyCollectionToContiguousArray<A>(_:)(v32, v80, v61, v60);
        v67 = v66;
LABEL_112:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v5 = v77;
        }

        v74 = *(v5 + 16);
        v73 = *(v5 + 24);
        if (v74 >= v73 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v73);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v5 = v78;
        }

        swift_unknownObjectRelease();

        *(v5 + 16) = v74 + 1;
        v75 = v5 + 24 * v74;
        *(v75 + 32) = v67;
        *(v75 + 40) = 0;
        *(v75 + 48) = 1;

        return v5;
      }

LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v82 = v83 - a3;
  if (__OFSUB__(v83, a3))
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v81 = specialized Array.count.getter();
  v36 = 0;
  if (v30 >= 0)
  {
    v37 = v30 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v37 = v30;
  }

  v84 = v37;
  v38 = MEMORY[0x277D84F90];
  v5 = v83;
  while (1)
  {
    if (v5 < v36)
    {
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
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    if (v86)
    {
      v39 = MEMORY[0x25F8A01B0](v84);
    }

    else
    {
      v39 = *(v32 + 16);
    }

    if (v39 < v36)
    {
      goto LABEL_91;
    }

    if (v36 < 0)
    {
      goto LABEL_92;
    }

    if (v86)
    {
      v40 = MEMORY[0x25F8A01B0](v84);
    }

    else
    {
      v40 = *(v32 + 16);
    }

    if (v40 < v5)
    {
      goto LABEL_93;
    }

    if ((v30 & 0xC000000000000001) == 0 || v36 == v5)
    {
    }

    else
    {
      if (v36 >= v5)
      {
        goto LABEL_97;
      }

      v41 = v31;
      v42 = v36;
      do
      {
        v43 = v42 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v42);
        v42 = v43;
        --v41;
      }

      while (v41);
    }

    v85 = v38;
    if (v86)
    {

      _CocoaArrayWrapper.subscript.getter();
      v44 = v46;
    }

    else
    {
      v44 = v36;
      v45 = (2 * v5) | 1;
    }

    v47 = v45 >> 1;
    if ((v45 & 1) == 0)
    {
      v48 = v47 - v44;
      v49 = __OFSUB__(v47, v44);
      swift_unknownObjectRetain();
      if (v49)
      {
        goto LABEL_96;
      }

      if (v48)
      {
        goto LABEL_52;
      }

LABEL_64:
      v5 = MEMORY[0x277D84F90];
LABEL_65:
      v32 = v30 & 0xFFFFFFFFFFFFFF8;
      v38 = v85;
      goto LABEL_66;
    }

    v5 = type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v51 = swift_dynamicCastClass();
    if (!v51)
    {
      swift_unknownObjectRelease();
      v51 = MEMORY[0x277D84F90];
    }

    v52 = *(v51 + 16);

    v48 = v47 - v44;
    if (__OFSUB__(v47, v44))
    {
      goto LABEL_98;
    }

    if (v52 != v48)
    {
      break;
    }

    v5 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v32 = v30 & 0xFFFFFFFFFFFFFF8;
    v38 = v85;
    if (v5)
    {
      goto LABEL_67;
    }

    v5 = MEMORY[0x277D84F90];
LABEL_66:
    swift_unknownObjectRelease();
LABEL_67:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v38 = v57;
    }

    v54 = *(v38 + 16);
    v53 = *(v38 + 24);
    if (v54 >= v53 >> 1)
    {
      OUTLINED_FUNCTION_26_3(v53);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v38 = v58;
    }

    swift_unknownObjectRelease();
    *(v38 + 16) = v54 + 1;
    v55 = v38 + 24 * v54;
    *(v55 + 32) = v5;
    *(v55 + 40) = 0;
    *(v55 + 48) = 1;
    v56 = __OFADD__(v36, v82);
    v36 += v82;
    if (v56)
    {
      goto LABEL_94;
    }

    v31 = v83;
    v5 = v36 + v83;
    if (__OFADD__(v36, v83))
    {
      goto LABEL_95;
    }

    if (v5 >= v81)
    {
      goto LABEL_76;
    }
  }

  swift_unknownObjectRelease();
  if (!v48)
  {
    goto LABEL_64;
  }

LABEL_52:
  if (v48 < 1)
  {
    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v5 = swift_allocObject();
    v50 = _swift_stdlib_malloc_size(v5);
    *(v5 + 16) = v48;
    *(v5 + 24) = (2 * ((v50 - 32) / 8)) | 1;
  }

  if (v44 != v47)
  {
    swift_arrayInitWithCopy();
    goto LABEL_65;
  }

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

void closure #1 in SmartChunkingPreprocessing.smartChunk(_:query:)(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for SearchResultItem(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for answerSynthesis != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logging.answerSynthesis);
  _s10OmniSearch0B10ResultItemOWOcTm_1(a5, v14, type metadata accessor for SearchResultItem);
  outlined copy of SmartChunkingInput(a2, a3, a4 & 1);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  outlined consume of SmartChunkingInput(a2, a3, a4 & 1);

  if (!os_log_type_enabled(v16, v17))
  {

    _s10OmniSearch0B10ResultItemOWOhTm_2(v14, type metadata accessor for SearchResultItem);
    return;
  }

  v31 = v17;
  v32 = v16;
  v18 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v36 = v30;
  *v18 = 136315906;
  SearchResultItem.associatedValue.getter(v33);
  v19 = a1;
  v21 = v34;
  v20 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  (*(v20 + 32))(v21, v20);
  _s10OmniSearch0B10ResultItemOWOhTm_2(v14, type metadata accessor for SearchResultItem);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

  *(v18 + 4) = v22;
  *(v18 + 12) = 2048;
  *(v18 + 14) = v19;
  *(v18 + 22) = 2080;
  if (a4)
  {
    v23 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    MEMORY[0x25F89F8A0](a2, v23);
  }

  else
  {
  }

  v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

  *(v18 + 24) = v24;
  *(v18 + 32) = 2080;
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a6 + 16) > v19)
  {

    MEMORY[0x25F89F8A0](v25, MEMORY[0x277D83A90]);

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v18 + 34) = v26;
    v27 = v32;
    _os_log_impl(&dword_25D85C000, v32, v31, "SmartChunkingPreprocessing.smartChunk item:%s, chunkIndex is:%ld, chunk is:%s, chunkEmbeding is:%s", v18, 0x2Au);
    v28 = v30;
    swift_arrayDestroy();
    MEMORY[0x25F8A1050](v28, -1, -1);
    MEMORY[0x25F8A1050](v18, -1, -1);

    return;
  }

  __break(1u);
}

uint64_t SmartChunkingPreprocessing.cosineDistance(vector1:vector2:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return MEMORY[0x2822009F8](SmartChunkingPreprocessing.cosineDistance(vector1:vector2:));
}

uint64_t SmartChunkingPreprocessing.cosineDistance(vector1:vector2:)()
{
  v1 = *(v0 + 16);
  v36 = *(v1 + 16);
  if (v36)
  {
    v2 = 0;
    v3 = (v0 + 32);
    v4 = (v0 + 36);
    v5 = (v0 + 40);
    v6 = *(v0 + 24);
    v7 = *(v6 + 16);
    v33 = (v6 + 32);
    v34 = v1 + 32;
    v8 = MEMORY[0x277D84F90];
    v35 = v7;
    do
    {
      if (v7)
      {
        v37 = v8;
        v38 = v2;
        v9 = *(v34 + 8 * v2);
        v10 = *(v9 + 16);

        v11 = v33;
        v12 = v7;
        v13 = MEMORY[0x277D84F90];
        do
        {
          v14 = *v11;
          *v3 = 0.0;

          vDSP_dotpr((v9 + 32), 1, (v14 + 32), 1, v3, v10);
          *v4 = 0.0;
          vDSP_svesq((v9 + 32), 1, v4, v10);
          *v5 = 0.0;
          vDSP_svesq((v14 + 32), 1, v5, *(v14 + 16));

          v15 = *v3;
          v16 = *v4;
          v17 = *v5;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20, v21, v22, v13);
            v13 = v23;
          }

          v19 = *(v13 + 16);
          v18 = *(v13 + 24);
          if (v19 >= v18 >> 1)
          {
            v24 = OUTLINED_FUNCTION_26_3(v18);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v24, v19 + 1, 1, v13);
            v13 = v25;
          }

          *(v13 + 16) = v19 + 1;
          *(v13 + 4 * v19 + 32) = 1.0 - (v15 / (sqrtf(v16) * sqrtf(v17)));
          ++v11;
          --v12;
        }

        while (v12);

        v8 = v37;
        v2 = v38;
      }

      else
      {
        v13 = MEMORY[0x277D84F90];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v28;
      }

      v27 = *(v8 + 16);
      v26 = *(v8 + 24);
      if (v27 >= v26 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v26);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v29;
      }

      ++v2;
      *(v8 + 16) = v27 + 1;
      *(v8 + 8 * v27 + 32) = v13;
      v7 = v35;
    }

    while (v2 != v36);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v30 = *(v32 + 8);

  return v30(v8);
}

void *specialized Array<A>.argminN(_:)(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D84F90];
  if (a1 < 1)
  {
    return v2;
  }

  if (a2[2] < a1)
  {
    v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(a1, 0);
    if (specialized Sequence._copySequenceContents(initializing:)(v18, (v2 + 4), a1, 0, a1) == a1)
    {
      return v2;
    }

    __break(1u);
  }

  v18[0] = specialized _copySequenceToContiguousArray<A>(_:)(a2);
  v4 = 0;
  specialized MutableCollection<>.sort(by:)(v18);
  v5 = specialized Collection.prefix(_:)(a1, v18[0]);
  v9 = v8 >> 1;
  v10 = (v8 >> 1) - v7;
  if (__OFSUB__(v8 >> 1, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v5;
  if (!v10)
  {
LABEL_13:
    swift_unknownObjectRelease();
    return v2;
  }

  v11 = v6;
  v12 = v7;
  v18[0] = v2;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v2 = v18[0];
    v13 = (v11 + 16 * v12);
    while (v12 < v9)
    {
      v14 = *v13;
      v18[0] = v2;
      v16 = v2[2];
      v15 = v2[3];
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1);
        v2 = v18[0];
      }

      v2[2] = v16 + 1;
      v2[v16 + 4] = v14;
      ++v12;
      v13 += 2;
      if (v9 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);

  __break(1u);
  return result;
}

void specialized Array.elements(at:)(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
  v6 = a2 + 32;
  v7 = MEMORY[0x277D84F90];
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_14;
    }

    v9 = *(v5 + 8 * v3++);
    if ((v9 & 0x8000000000000000) == 0 && v9 < *(a2 + 16))
    {
      v10 = (v6 + 16 * v9);
      v12 = *v10;
      v11 = v10[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v16);
        v7 = v17;
      }

      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        v18 = OUTLINED_FUNCTION_26_3(v13);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18);
        v7 = v19;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v3 = v8;
    }
  }
}

{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
  v6 = a2 + 32;
  v7 = MEMORY[0x277D84F90];
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_14;
    }

    v9 = *(v5 + 8 * v3++);
    if ((v9 & 0x8000000000000000) == 0 && v9 < *(a2 + 16))
    {
      v18 = v6;
      v10 = v6 + 24 * v9;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      outlined copy of SmartChunkingInput(*v10, v12, v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v7 = v16;
      }

      v14 = *(v7 + 16);
      if (v14 >= *(v7 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v7 = v17;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 24 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      *(v15 + 48) = v13;
      v3 = v8;
      v6 = v18;
    }
  }
}

uint64_t SmartChunkingPreprocessing.buildOutput(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v23 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v23;
    v8 = (a1 + 48);
    while (1)
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      v20[0] = v9;
      v20[1] = v10;
      v21 = v11;
      outlined copy of SmartChunkingInput(v9, v10, v11);
      closure #1 in SmartChunkingPreprocessing.buildOutput(_:)(v20, a3, &v19, v22);
      if (v4)
      {
        break;
      }

      v4 = 0;
      outlined consume of SmartChunkingInput(v9, v10, v11);
      v13 = v22[0];
      v12 = v22[1];
      v23 = v6;
      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v6 = v23;
      }

      *(v6 + 16) = v15 + 1;
      v16 = v6 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v8 += 24;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    outlined consume of SmartChunkingInput(v9, v10, v11);
  }

  else
  {
LABEL_7:
    v20[0] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v9 = BidirectionalCollection<>.joined(separator:)();
  }

  return v9;
}

void closure #1 in SmartChunkingPreprocessing.buildOutput(_:)(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X8>)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if ((*(a1 + 16) & 1) == 0)
  {
    v18 = *(a1 + 8);
    *a4 = v5;
    a4[1] = v18;

    return;
  }

  if (!a2 || (v7 = *(a2 + 24)) == 0)
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logging.answerSynthesis);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v20, v21, "%s csuTokenizer is nil.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x25F8A1050](v23, -1, -1);
      MEMORY[0x25F8A1050](v22, -1, -1);
    }

    lazy protocol witness table accessor for type SmartChunkingPreprocessing.SmartChunkingError and conformance SmartChunkingPreprocessing.SmartChunkingError();
    v16 = swift_allocError();
    *v24 = 0;
    swift_willThrow();
    goto LABEL_12;
  }

  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v8 = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v25[0] = 0;
  v10 = [v8 getTextFromTokenIds:isa error:v25];

  v11 = v25[0];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = v11;

  if (v15)
  {

    lazy protocol witness table accessor for type SmartChunkingPreprocessing.SmartChunkingError and conformance SmartChunkingPreprocessing.SmartChunkingError();
    v16 = swift_allocError();
    *v17 = 1;
    swift_willThrow();

LABEL_12:
    *a3 = v16;
    return;
  }

  *a4 = v12;
  a4[1] = v14;
}

uint64_t protocol witness for SearchEntityPreprocess.preprocess(data:query:) in conformance SmartChunkingPreprocessing()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for SearchEntityPreprocess.preprocess(data:query:) in conformance SmartChunkingPreprocessing;

  return SmartChunkingPreprocessing.preprocess(data:query:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_28();

  return v4(v3);
}

uint64_t partial apply for closure #1 in SmartChunkingPreprocessing.preprocess(data:query:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in SmartChunkingPreprocessing.preprocess(data:query:);

  return closure #1 in SmartChunkingPreprocessing.preprocess(data:query:)(a1, a2, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in SmartChunkingPreprocessing.preprocess(data:query:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t _s10OmniSearch0B10ResultItemOWOhTm_2(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
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
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_Sf7elementtMd, &_sSi6offset_Sf7elementtMR);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
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
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_Si5valuetMd, &_sSS3key_Si5valuetMR);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
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
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_SS5valuetMd, &_sSS3key_SS5valuetMR);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
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