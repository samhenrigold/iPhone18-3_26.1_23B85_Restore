BOOL static RecognizerElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *a1 == *a2;
  if ((v2 & 1) == 0)
  {
    v3 = 0;
  }

  if (*(a1 + 4) == 1)
  {
    return v3;
  }

  else
  {
    return (*a1 == *a2) & ~v2;
  }
}

void RecognizerElement.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 4) == 1)
  {
    MEMORY[0x1AC57CB80](1);
    Hasher._combine(_:)(v1);
  }

  else
  {
    MEMORY[0x1AC57CB80](0);
    Hasher._combine(_:)(v1);
  }
}

Swift::Int RecognizerElement.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    MEMORY[0x1AC57CB80](1);
    Hasher._combine(_:)(v1);
  }

  else
  {
    MEMORY[0x1AC57CB80](0);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RecognizerElement()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    MEMORY[0x1AC57CB80](1);
    Hasher._combine(_:)(v1);
  }

  else
  {
    MEMORY[0x1AC57CB80](0);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance RecognizerElement()
{
  v1 = *v0;
  if (*(v0 + 4) == 1)
  {
    MEMORY[0x1AC57CB80](1);
    Hasher._combine(_:)(v1);
  }

  else
  {
    MEMORY[0x1AC57CB80](0);
    Hasher._combine(_:)(v1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RecognizerElement(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  Hasher.init(_seed:)();
  if (v3 == 1)
  {
    MEMORY[0x1AC57CB80](1);
    Hasher._combine(_:)(v2);
  }

  else
  {
    MEMORY[0x1AC57CB80](0);
    Hasher._combine(_:)(v2);
  }

  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance RecognizerElement(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *a1 == *a2;
  if ((v2 & 1) == 0)
  {
    v3 = 0;
  }

  if (*(a1 + 4) == 1)
  {
    return v3;
  }

  else
  {
    return (*a1 == *a2) & ~v2;
  }
}

Swift::Int GuidedGenerationError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  return Hasher._finalize()();
}

uint64_t TokenIDMask.mask.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
}

void TokenIDMask.BOOLeanMask.getter()
{
  v1 = v0[1];
  v5 = *v0;
  v6[0] = v1;
  *(v6 + 9) = *(v0 + 25);
  if ((BYTE8(v1) & 1) == 0)
  {
    v2 = *(v5 + 16);
    if (v2 >> 57)
    {
      __break(1u);
    }

    else
    {
      v3 = v2 << 6;
      outlined init with copy of ContiguousBitSet(&v5, v4);
      _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSb_Tt1g5090_s19TokenGenerationCore16ContiguousBitSetV15makeBooleanMask5counts0D5ArrayVySbGSiSg_tFySryS12Gz_SiztXEfU_0gH4Core0jkL0VTf1nc_nTf4ng_n(v3, &v5);
      outlined destroy of ContiguousBitSet(&v5);
    }
  }
}

uint64_t TokenIDMask.BOOLeanMask(ofSize:)(int64_t a1)
{
  v3 = *v1;
  v4 = v1[6];
  if (v4 <= a1)
  {

    v3 = ContiguousBitSet.makeBooleanMask(count:)(a1, 0);
  }

  else
  {
    if (one-time initialization token for guided != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.guided);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134218240;
      *(v8 + 4) = a1;
      *(v8 + 12) = 2048;
      *(v8 + 14) = v4;

      _os_log_impl(&dword_1A8E85000, v6, v7, "Mask size passed to BOOLeanMask (%ld) is smaller than the vocabulary size (%ld)", v8, 0x16u);
      MEMORY[0x1AC57DBF0](v8, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type GuidedGenerationError and conformance GuidedGenerationError();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
  }

  return v3;
}

uint64_t TokenIDMask.allowedTokenIDs()()
{
  v1 = v0[1];
  v3 = *v0;
  v4[0] = v1;
  *(v4 + 9) = *(v0 + 25);
  return _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF19TokenGenerationCore16ContiguousBitSetV_Sis5NeverOTB504_s19de6Core16ghI25V7indicesSaySiGyFS2iXEfU_Tf1cn_n(&v3);
}

uint64_t GuidedGenerationVocabularyManager.init(tokenizer:stopTokenIDs:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of GuidedGenerationTokenizer(a1, v30);
  if (one-time initialization token for characterSetLookup != -1)
  {
    swift_once();
  }

  v9 = static Grammar.characterSetLookup;
  v10 = *(static Grammar.characterSetLookup + 16);
  if (!v10)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  v26 = a2;
  v27 = a3;
  v28 = a1;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation12CharacterSetV_Tt1g5(v10, 0);
  v12 = *(type metadata accessor for CharacterSet() - 8);
  specialized Sequence._copySequenceContents(initializing:)(&v29, &v11[(*(v12 + 80) + 32) & ~*(v12 + 80)], v10, v9);
  v14 = v13;
  v15 = v29;

  result = outlined consume of Set<NonTerminalSymbol>.Iterator._Variant(v15);
  if (v14 == v10)
  {
    a3 = v27;
    a1 = v28;
    a2 = v26;
LABEL_7:
    v17 = v31;
    v18 = v32;
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    v20 = MEMORY[0x1EEE9AC00](v19);
    v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v22, v20);
    v24 = _s19TokenGenerationCore17VocabularyManagerC9tokenizer26characterSetsUsedInGrammar14vocabConverter04stopA3IDsAcA06GuidedB9Tokenizer_p_Say10Foundation12CharacterSetVGAA0D14TextConverting_pSaySiGtcfCTf4nnenn_nAA013SentencePieceduM0V_Tt3g5Tf4ennn_n(v22, v11, 8492770, 0xA300000000000000, 8492770, 0xA300000000000000, a2, v17, v18);
    __swift_destroy_boxed_opaque_existential_0(v30);
    *a3 = v24;

    VocabularyManager.prefixLookUp.getter(v8);

    __swift_destroy_boxed_opaque_existential_0(a1);
    return outlined destroy of VocabularyManager.PrefixLookup(v8, type metadata accessor for VocabularyManager.PrefixLookup);
  }

  __break(1u);
  return result;
}

uint64_t GuidedGenerationVocabularyManager.init(tokenizer:stopTokenIDs:characterSetsUsedInGrammar:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  outlined init with copy of GuidedGenerationTokenizer(a1, v18);
  v8 = v19;
  v9 = v20;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = _s19TokenGenerationCore17VocabularyManagerC9tokenizer26characterSetsUsedInGrammar14vocabConverter04stopA3IDsAcA06GuidedB9Tokenizer_p_Say10Foundation12CharacterSetVGAA0D14TextConverting_pSaySiGtcfCTf4nnenn_nAA013SentencePieceduM0V_Tt3g5Tf4ennn_n(v13, a3, 8492770, 0xA300000000000000, 8492770, 0xA300000000000000, a2, v8, v9);
  __swift_destroy_boxed_opaque_existential_0(v18);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a4 = v15;
  return result;
}

Swift::Void __swiftcall GuidedGenerationVocabularyManager.initVocabManager()()
{
  v0 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v3 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  VocabularyManager.prefixLookUp.getter(v2);
  outlined destroy of VocabularyManager.PrefixLookup(v2, type metadata accessor for VocabularyManager.PrefixLookup);
}

TokenGenerationCore::MatchResult_optional __swiftcall MatchResult.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MatchResult.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t MatchResult.rawValue.getter()
{
  v1 = 0x4D6C616974726170;
  if (*v0 != 1)
  {
    v1 = 0x686374616D73696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6374614D6C6C7566;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MatchResult(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4D6C616974726170;
  v4 = 0xEC00000068637461;
  if (v2 != 1)
  {
    v3 = 0x686374616D73696DLL;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6374614D6C6C7566;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000068;
  }

  v7 = 0x4D6C616974726170;
  v8 = 0xEC00000068637461;
  if (*a2 != 1)
  {
    v7 = 0x686374616D73696DLL;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6374614D6C6C7566;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000068;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MatchResult()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MatchResult(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MatchResult(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MatchResult(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000068;
  v4 = 0xEC00000068637461;
  v5 = 0x4D6C616974726170;
  if (v2 != 1)
  {
    v5 = 0x686374616D73696DLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6374614D6C6C7566;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(uint64_t result, uint64_t a2)
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
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSi_Tt1g5(uint64_t result, uint64_t a2)
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
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = MEMORY[0x1AC57CB60](*(a2 + 40), v13);
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
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

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SuppressionConstraints.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001A8FD9220 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SuppressionConstraints.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SuppressionConstraints.CodingKeys and conformance SuppressionConstraints.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SuppressionConstraints.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SuppressionConstraints.CodingKeys and conformance SuppressionConstraints.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SuppressionConstraints.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore22SuppressionConstraintsV10CodingKeys33_7FFCFA087463DE6B377386B96D43C0D8LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore22SuppressionConstraintsV10CodingKeys33_7FFCFA087463DE6B377386B96D43C0D8LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SuppressionConstraints.CodingKeys and conformance SuppressionConstraints.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
  lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v6, v3);
}

uint64_t SuppressionConstraints.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore22SuppressionConstraintsV10CodingKeys33_7FFCFA087463DE6B377386B96D43C0D8LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore22SuppressionConstraintsV10CodingKeys33_7FFCFA087463DE6B377386B96D43C0D8LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SuppressionConstraints.CodingKeys and conformance SuppressionConstraints.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t GuidedGenerationConstraints.init(grammar:vocabularyManager:enableDeterministicTokenRuns:numberOfParallelTasks:suppressionConstraints:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v11 = a1[4];
  v10 = a1[5];
  v12 = *a2;
  v36 = *a5;
  v66[0] = *a1;
  v66[1] = v7;
  v66[2] = v8;
  v67 = v9;
  v68 = v11;
  v69 = v10;
  type metadata accessor for EarleyRecognizer.RecognizerGrammar();
  swift_allocObject();

  v13 = EarleyRecognizer.RecognizerGrammar.init(grammar:vocabularyManager:)(v66, 0);
  v14 = specialized static EarleyRecognizer.createRootItems(recognizerGrammar:)(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMd, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1A8FC9400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A8FC9400;
  *(v16 + 32) = v14;
  *(v15 + 32) = v16;
  type metadata accessor for EarleyRecognizer();
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  *(v17 + 28) = -1;
  *(v17 + 24) = 0;
  *(v17 + 32) = v13;
  *(v17 + 40) = v15;
  *(v17 + 48) = MEMORY[0x1E69E7CC0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMd, &_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMR);
  swift_allocObject();

  v19 = specialized TokenGrammarRecognizer.init(inputRecognizer:vocabManager:lastConsumedTokenID:)(v18, v12, 0, 1);

  GuidedGenerationOverrides.init()(v66);
  v35 = _s19TokenGenerationCore27SpaceLookaheadMaskGeneratorVACyxGycfCAA16EarleyRecognizerC_Ttg5(v20);
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  if (!isInternalInstall)
  {
    GuidedGenerationOverrides.init()(&v40);
    v63 = v50;
    v64 = v51;
    v65 = v52;
    v59 = v46;
    v60 = v47;
    v61 = v48;
    v62 = v49;
    v55 = v42;
    v56 = v43;
    v57 = v44;
    v58 = v45;
    v53 = v40;
    v54 = v41;
    outlined destroy of GuidedGenerationOverrides(&v53);
    v23 = 2000;
LABEL_10:
    v21 = a3;
    goto LABEL_11;
  }

  v67(&v53, v66[0]);
  v21 = v53;
  v22 = v53;
  GuidedGenerationOverrides.init()(&v40);
  v63 = v50;
  v64 = v51;
  v65 = v52;
  v59 = v46;
  v60 = v47;
  v61 = v48;
  v62 = v49;
  v55 = v42;
  v56 = v43;
  v57 = v44;
  v58 = v45;
  v53 = v40;
  v54 = v41;
  (*(&v51 + 1))(&v38, v50);
  outlined destroy of GuidedGenerationOverrides(&v53);
  if (v39)
  {
    v23 = 2000;
  }

  else
  {
    v23 = v38;
  }

  if (v22 == 2)
  {
    goto LABEL_10;
  }

LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC27SpaceLookaheadMaskGeneratorVyAKG__GGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC27SpaceLookaheadMaskGeneratorVyAKG__GGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1A8FC9400;
  v25 = MEMORY[0x1E69E7CC0];
  v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v24 + 32) = v19;
  *(v24 + 40) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerCyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAGG_GMd, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerCyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAGG_GMR);
  v27 = swift_allocObject();
  type metadata accessor for Lock();
  v28 = swift_allocObject();
  swift_retain_n();
  v29 = swift_slowAlloc();
  *(v28 + 16) = v29;
  pthread_mutex_init(v29, 0);

  *(v27 + 16) = v28;
  *(v27 + 24) = v24;
  type metadata accessor for MaskCache();
  v30 = swift_allocObject();
  *(v30 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictTt0g5Tf4g_n(v25);
  v31 = swift_allocObject();
  v32 = swift_slowAlloc();
  *(v31 + 16) = v32;
  pthread_mutex_init(v32, 0);
  outlined destroy of GuidedGenerationOverrides(v66);

  *(v30 + 24) = v31;
  *a6 = v19;
  *(a6 + 8) = v36;
  *(a6 + 16) = v27;
  *(a6 + 24) = v30;
  *(a6 + 32) = v19;
  *(a6 + 40) = v35 & 1;
  *(a6 + 41) = v21 & 1;
  *(a6 + 48) = a4;
  *(a6 + 56) = 0;
  *(a6 + 64) = v23;
  return result;
}

uint64_t GuidedGenerationConstraints.init(grammar:vocabularyManager:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = *a2;
  v35[0] = *a1;
  v35[1] = v4;
  v35[2] = v5;
  v36 = v6;
  v37 = v7;
  v38 = v8;
  type metadata accessor for EarleyRecognizer.RecognizerGrammar();
  swift_allocObject();
  swift_retain_n();

  v10 = EarleyRecognizer.RecognizerGrammar.init(grammar:vocabularyManager:)(v35, v9);
  v11 = specialized static EarleyRecognizer.createRootItems(recognizerGrammar:)(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMd, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A8FC9400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1A8FC9400;
  *(v13 + 32) = v11;
  *(v12 + 32) = v13;
  type metadata accessor for EarleyRecognizer();
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  *(v14 + 28) = -1;
  *(v14 + 24) = 0;
  *(v14 + 32) = v10;
  *(v14 + 40) = v12;
  *(v14 + 48) = MEMORY[0x1E69E7CC0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMd, &_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMR);
  swift_allocObject();

  v16 = specialized TokenGrammarRecognizer.init(inputRecognizer:vocabManager:lastConsumedTokenID:)(v15, v9, 0, 1);

  GuidedGenerationOverrides.init()(v35);
  if (one-time initialization token for isInternalInstall != -1)
  {
    v17 = swift_once();
  }

  v18 = isInternalInstall;
  if (isInternalInstall)
  {
    v17 = v36(v34, v35[0]);
    v31 = v34[0] & 1;
  }

  else
  {
    v31 = 0;
  }

  v19 = _s19TokenGenerationCore27SpaceLookaheadMaskGeneratorVACyxGycfCAA16EarleyRecognizerC_Ttg5(v17);
  GuidedGenerationOverrides.init()(v34);
  if (v18)
  {
    (v34[23])(&v32, v34[20]);
    outlined destroy of GuidedGenerationOverrides(v34);
    if (v33)
    {
      v20 = 2000;
    }

    else
    {
      v20 = v32;
    }
  }

  else
  {
    outlined destroy of GuidedGenerationOverrides(v34);
    v20 = 2000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC27SpaceLookaheadMaskGeneratorVyAKG__GGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC27SpaceLookaheadMaskGeneratorVyAKG__GGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1A8FC9400;
  v22 = MEMORY[0x1E69E7CC0];
  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v21 + 32) = v16;
  *(v21 + 40) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerCyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAGG_GMd, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerCyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAGG_GMR);
  v24 = swift_allocObject();
  type metadata accessor for Lock();
  v25 = swift_allocObject();
  swift_retain_n();
  v26 = swift_slowAlloc();
  *(v25 + 16) = v26;
  pthread_mutex_init(v26, 0);

  *(v24 + 16) = v25;
  *(v24 + 24) = v21;
  type metadata accessor for MaskCache();
  v27 = swift_allocObject();
  *(v27 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictTt0g5Tf4g_n(v22);
  v28 = swift_allocObject();
  v29 = swift_slowAlloc();
  *(v28 + 16) = v29;
  pthread_mutex_init(v29, 0);
  outlined destroy of GuidedGenerationOverrides(v35);

  *(v27 + 24) = v28;
  *a3 = v16;
  *(a3 + 8) = 0;
  *(a3 + 16) = v24;
  *(a3 + 24) = v27;
  *(a3 + 32) = v16;
  *(a3 + 40) = v19 & 1;
  *(a3 + 41) = v31;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  *(a3 + 64) = v20;
  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GuidedGenerationConstraints.possiblyDeterministicTokens(follow:)(Swift::OpaquePointer follow)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 32);
  v18[0] = *(v1 + 16);
  v18[1] = v10;
  v18[2] = *(v1 + 48);
  v19 = *(v1 + 64);
  if (one-time initialization token for guided != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, static Log.guided);
  (*(v4 + 16))(v6, v11, v3);
  Signpost.init(_:_:)(v6, "GuidedGenerationConstraints.nextMaskPossiblyDeterministic", 57, 2, v9);
  v12 = specialized RecognizerGuidedGenerationConstraints.possiblyDeterministicTokens(follow:)(follow._rawValue);
  Signpost.end()();
  v13 = *(v7 + 20);
  v14 = type metadata accessor for OSSignposter();
  (*(*(v14 - 8) + 8))(&v9[v13], v14);
  v15 = *(v7 + 24);
  v16 = type metadata accessor for OSSignpostID();
  (*(*(v16 - 8) + 8))(&v9[v15], v16);

  return v12 & 1;
}

uint64_t GuidedGenerationConstraints.generateNextTokenIDMask(from:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  v4 = type metadata accessor for Logger();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = type metadata accessor for Signpost(0);
  *(v3 + 120) = swift_task_alloc();
  v5 = *(v2 + 32);
  *(v3 + 16) = *(v2 + 16);
  *(v3 + 32) = v5;
  *(v3 + 48) = *(v2 + 48);
  *(v3 + 64) = *(v2 + 64);

  return MEMORY[0x1EEE6DFA0](GuidedGenerationConstraints.generateNextTokenIDMask(from:), 0, 0);
}

uint64_t GuidedGenerationConstraints.generateNextTokenIDMask(from:)()
{
  if (one-time initialization token for guided != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = __swift_project_value_buffer(v5, static Log.guided);
  (*(v4 + 16))(v3, v8, v5);
  Signpost.init(_:_:)(v3, "GuidedGenerationConstraints.generateNextTokenIDMask", 51, 2, v1);
  specialized RecognizerGuidedGenerationConstraints.generateNextTokenIDMask(from:)(v6, v7);
  Signpost.end()();
  v9 = *(v2 + 20);
  v10 = type metadata accessor for OSSignposter();
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  v11 = *(v2 + 24);
  v12 = type metadata accessor for OSSignpostID();
  (*(*(v12 - 8) + 8))(v1 + v11, v12);

  v13 = v0[1];

  return v13();
}

uint64_t GuidedGenerationConstraints.generateNextTokenIDMask(from:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 32);
  v19[0] = *(v2 + 16);
  v19[1] = v12;
  v19[2] = *(v2 + 48);
  v20 = *(v2 + 64);
  if (one-time initialization token for guided != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, static Log.guided);
  (*(v6 + 16))(v8, v13, v5);
  Signpost.init(_:_:)(v8, "GuidedGenerationConstraints.generateNextTokenIDMask", 51, 2, v11);
  specialized RecognizerGuidedGenerationConstraints.generateNextTokenIDMask(from:)(a1, a2);
  Signpost.end()();
  v14 = *(v9 + 20);
  v15 = type metadata accessor for OSSignposter();
  (*(*(v15 - 8) + 8))(&v11[v14], v15);
  v16 = *(v9 + 24);
  v17 = type metadata accessor for OSSignpostID();
  (*(*(v17 - 8) + 8))(&v11[v16], v17);
}

uint64_t GuidedGenerationConstraints.nextTokenIDMaskComputation(following:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  v4 = type metadata accessor for Logger();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = type metadata accessor for Signpost(0);
  *(v3 + 120) = swift_task_alloc();
  v5 = *(v2 + 32);
  *(v3 + 16) = *(v2 + 16);
  *(v3 + 32) = v5;
  *(v3 + 48) = *(v2 + 48);
  *(v3 + 64) = *(v2 + 64);

  return MEMORY[0x1EEE6DFA0](GuidedGenerationConstraints.nextTokenIDMaskComputation(following:), 0, 0);
}

uint64_t GuidedGenerationConstraints.nextTokenIDMaskComputation(following:)()
{
  if (one-time initialization token for guided != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = __swift_project_value_buffer(v5, static Log.guided);
  (*(v4 + 16))(v3, v8, v5);
  Signpost.init(_:_:)(v3, "GuidedGenerationConstraints.nextTokenIDMaskComputation", 54, 2, v1);
  specialized RecognizerGuidedGenerationConstraints.nextTokenIDMaskComputation(follow:)(v6, v7);
  Signpost.end()();
  v9 = *(v2 + 20);
  v10 = type metadata accessor for OSSignposter();
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  v11 = *(v2 + 24);
  v12 = type metadata accessor for OSSignpostID();
  (*(*(v12 - 8) + 8))(v1 + v11, v12);

  v13 = v0[1];

  return v13();
}

uint64_t GuidedGenerationConstraints.validateTokens(from:candidateTokenIDs:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  v4 = type metadata accessor for Logger();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = type metadata accessor for Signpost(0);
  *(v3 + 120) = swift_task_alloc();
  v5 = *(v2 + 32);
  *(v3 + 16) = *(v2 + 16);
  *(v3 + 32) = v5;
  *(v3 + 48) = *(v2 + 48);
  *(v3 + 64) = *(v2 + 64);

  return MEMORY[0x1EEE6DFA0](GuidedGenerationConstraints.validateTokens(from:candidateTokenIDs:), 0, 0);
}

uint64_t GuidedGenerationConstraints.validateTokens(from:candidateTokenIDs:)()
{
  if (one-time initialization token for guided != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v7 = __swift_project_value_buffer(v4, static Log.guided);
  (*(v3 + 16))(v2, v7, v4);
  Signpost.init(_:_:)(v2, "GuidedGenerationConstraints.validateTokens", 42, 2, v1);
  v8 = specialized RecognizerGuidedGenerationConstraints.validateTokens(from:candidateTokenIDs:)(v6, v5);
  v10 = v0[14];
  v9 = v0[15];
  v12 = v11;
  v13 = v8;
  Signpost.end()();
  v14 = *(v10 + 20);
  v15 = type metadata accessor for OSSignposter();
  (*(*(v15 - 8) + 8))(v9 + v14, v15);
  v16 = *(v10 + 24);
  v17 = type metadata accessor for OSSignpostID();
  (*(*(v17 - 8) + 8))(v9 + v16, v17);

  v18 = v0[1];

  return v18(v13, v12 & 1);
}

uint64_t GuidedGenerationConstraints.generateNextTokenIDMaskExhaustively(from:)(uint64_t a1, uint64_t a2)
{
  v3[41] = a1;
  v3[42] = a2;
  v3[43] = *v2;
  return MEMORY[0x1EEE6DFA0](GuidedGenerationConstraints.generateNextTokenIDMaskExhaustively(from:), 0, 0);
}

void GuidedGenerationConstraints.generateNextTokenIDMaskExhaustively(from:)()
{
  v17 = v0;
  v1 = *(v0 + 344);
  if (v1)
  {

    GuidedGenerationOverrides.init()((v0 + 16));
    if (one-time initialization token for isInternalInstall != -1)
    {
      swift_once();
    }

    if (isInternalInstall)
    {
      (*(v0 + 200))(&v15, *(v0 + 176));
      outlined destroy of GuidedGenerationOverrides(v0 + 16);
      if (v16)
      {
        v2 = 2000;
      }

      else
      {
        v2 = v15;
      }
    }

    else
    {
      outlined destroy of GuidedGenerationOverrides(v0 + 16);
      v2 = 2000;
    }

    v4 = *(v0 + 328);
    v3 = *(v0 + 336);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC28ExhaustiveLogitMaskGeneratorVyAKG__GGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC28ExhaustiveLogitMaskGeneratorVyAKG__GGMR);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1A8FC9400;
    v6 = MEMORY[0x1E69E7CC0];
    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v5 + 32) = v1;
    *(v5 + 40) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerCyAA06EarleyD0CAA28ExhaustiveLogitMaskGeneratorVyAGG_GMd, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerCyAA06EarleyD0CAA28ExhaustiveLogitMaskGeneratorVyAGG_GMR);
    v8 = swift_allocObject();
    type metadata accessor for Lock();
    v9 = swift_allocObject();
    swift_retain_n();
    v10 = swift_slowAlloc();
    *(v9 + 16) = v10;
    pthread_mutex_init(v10, 0);

    *(v8 + 16) = v9;
    *(v8 + 24) = v5;
    type metadata accessor for MaskCache();
    v11 = swift_allocObject();
    *(v11 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictTt0g5Tf4g_n(v6);
    v12 = swift_allocObject();
    v13 = swift_slowAlloc();
    *(v12 + 16) = v13;
    pthread_mutex_init(v13, 0);
    *(v11 + 24) = v12;
    LOBYTE(v15) = 1;
    *(v0 + 216) = v8;
    *(v0 + 224) = v11;
    *(v0 + 232) = v1;
    *(v0 + 240) = 0;
    *(v0 + 248) = 0;
    *(v0 + 256) = 1;
    *(v0 + 264) = v2;
    outlined init with copy of (String, Any)(v0 + 216, v0 + 272, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsVyAA06EarleyD0CAA28ExhaustiveLogitMaskGeneratorVyAEGGMd, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsVyAA06EarleyD0CAA28ExhaustiveLogitMaskGeneratorVyAEGGMR);
    specialized RecognizerGuidedGenerationConstraints.generateNextTokenIDMask(from:)(v3, v4);
    outlined destroy of [Regex2BNF.CharacterPredicate](v0 + 216, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsVyAA06EarleyD0CAA28ExhaustiveLogitMaskGeneratorVyAEGGMd, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsVyAA06EarleyD0CAA28ExhaustiveLogitMaskGeneratorVyAEGGMR);
    outlined destroy of [Regex2BNF.CharacterPredicate](v0 + 216, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsVyAA06EarleyD0CAA28ExhaustiveLogitMaskGeneratorVyAEGGMd, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsVyAA06EarleyD0CAA28ExhaustiveLogitMaskGeneratorVyAEGGMR);
    v14 = *(v0 + 8);

    v14();
  }

  else
  {
    __break(1u);
  }
}

uint64_t GuidedGenerationConstraints.vocabularyCount.getter()
{
  if (!*v0)
  {
    return 0;
  }

  outlined init with copy of GuidedGenerationTokenizer(*(*v0 + 32) + 64, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 56))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

uint64_t static GuidedGenerationConstraints.validate(inputString:against:disablePrependedSpaceDetection:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v7 = a3[1];
  v9 = a3[2];
  v8 = a3[3];
  v10 = a3[4];
  v11 = a3[5];
  v74[0] = *a3;
  v74[1] = v7;
  v74[2] = v9;
  v74[3] = v8;
  v74[4] = v10;
  v74[5] = v11;
  type metadata accessor for EarleyRecognizer.RecognizerGrammar();
  swift_initStackObject();

  v12 = EarleyRecognizer.RecognizerGrammar.init(grammar:vocabularyManager:)(v74, 0);
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
  inited = swift_initStackObject();
  *(inited + 16) = v11;
  *(inited + 28) = -1;
  *(inited + 24) = 0;
  *(inited + 32) = v12;
  *(inited + 40) = v14;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  if (a4 & 1) == 0 && (v7 == 0x45444E4550455250 && v9 == 0xEF45434150535F44 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v72 = 32;
    v73 = 0xE100000000000000;

    MEMORY[0x1AC57C120](a1, a2);
    v17 = 0xE100000000000000;
    a1 = 32;
    v60 = 1;
  }

  else
  {

    v17 = a2;
    v60 = 0;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v18 = a1 & 0xFFFFFFFFFFFFLL;
      goto LABEL_9;
    }
  }

  v18 = HIBYTE(v17) & 0xF;
LABEL_9:
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v20 = 0;
    v62 = (v17 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v63 = v17 & 0xFFFFFFFFFFFFFFLL;
    v21 = MEMORY[0x1E69E7CC0];
    v65 = v17;
    v64 = v18;
    while (1)
    {
      if ((v17 & 0x1000000000000000) != 0)
      {
        v24 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v68 = v25;
        goto LABEL_21;
      }

      if ((v17 & 0x2000000000000000) != 0)
      {
        v72 = a1;
        v73 = v63;
        v23 = &v72 + v20;
      }

      else
      {
        v22 = v62;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v22 = _StringObject.sharedUTF8.getter();
        }

        v23 = (v22 + v20);
      }

      v24 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      v41 = (__clz(v24 ^ 0xFF) - 24);
      if (v41 > 2)
      {
        if (v41 == 3)
        {
          v24 = ((v24 & 0xF) << 12) | ((v23[1] & 0x3F) << 6) | v23[2] & 0x3F;
          v26 = 3;
        }

        else
        {
          v24 = ((v24 & 0xF) << 18) | ((v23[1] & 0x3F) << 12) | ((v23[2] & 0x3F) << 6) | v23[3] & 0x3F;
          v26 = 4;
        }

        goto LABEL_20;
      }

      if (v41 == 1)
      {
LABEL_19:
        v26 = 1;
      }

      else
      {
        v24 = v23[1] & 0x3F | ((v24 & 0x1F) << 6);
        v26 = 2;
      }

LABEL_20:
      v68 = v26;
LABEL_21:
      v27 = *(inited + 40);
      v28 = *(inited + 48);
      v29 = *(inited + 32);
      v72 = v27;
      v73 = v28;
      v71 = v19;
      v69 = v24;
      v70 = 0;

      specialized static EarleyRecognizer.parse(recognizerGrammar:element:with:items:)(v29, &v69, &v72, &v71);
      v30 = *(v71 + 2);

      if (!v30)
      {

        if (one-time initialization token for guided != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        __swift_project_value_buffer(v42, static Log.guided);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v72 = v46;
          *v45 = 136315138;

          v48 = MEMORY[0x1AC57C2C0](v47, MEMORY[0x1E69E7B10]);
          v50 = v49;

          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v72);

          *(v45 + 4) = v51;
          _os_log_impl(&dword_1A8E85000, v43, v44, "Accepted input: %s", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v46);
          MEMORY[0x1AC57DBF0](v46, -1, -1);
          MEMORY[0x1AC57DBF0](v45, -1, -1);
        }

        if (v60)
        {
          Array<A>.dropFirstSpace()(v21);
          v53 = v52;

          v21 = v53;
        }

        else
        {
        }

        v55 = a5;
        v56 = 2;
        goto LABEL_42;
      }

      v67 = v20;
      v31 = *(inited + 16);
      v32 = v73;

      v33 = v19;
      v34 = EarleyRecognizer.Chart.appending(states:)(v32, v27, v19);
      v35 = v21;
      v36 = v34;
      v38 = v37;

      swift_bridgeObjectRelease_n();

      inited = swift_allocObject();
      *(inited + 16) = v31;
      *(inited + 28) = 0;
      *(inited + 24) = v24;
      *(inited + 32) = v29;
      *(inited + 40) = v36;
      v21 = v35;
      *(inited + 48) = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
      }

      v40 = *(v21 + 2);
      v39 = *(v21 + 3);
      v19 = v33;
      if (v40 >= v39 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v21);
      }

      v20 = v68 + v67;
      *(v21 + 2) = v40 + 1;
      *&v21[4 * v40 + 32] = v24;
      v17 = v65;
      if (v68 + v67 >= v64)
      {
        goto LABEL_44;
      }
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_44:

  if (v60)
  {
    Array<A>.dropFirstSpace()(v21);
    v58 = v57;

    v21 = v58;
  }

  v59 = EarleyRecognizer.fullMatch.getter();

  v56 = (v59 & 1) == 0;
  v55 = a5;
LABEL_42:
  *v55 = v56;
  *(v55 + 8) = v21;
  return result;
}

void Array<A>.dropFirstSpace()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (*(a1 + 32) == 32)
    {

      specialized _copyCollectionToContiguousArray<A>(_:)(a1, a1 + 32, 1, (2 * v2) | 1);
    }

    else
    {
    }
  }
}

void *specialized Sequence.dropLast(_:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  v3 = a3;
  v4 = a2;
  v5 = a1;
  if (!a1)
  {
    v27 = specialized Collection.count.getter(a2, a3);
    if (!v27)
    {
      goto LABEL_44;
    }

    v28 = v27;
    v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs7UnicodeO6ScalarV_Tt1gq5(v27, 0);
    v29 = specialized Sequence._copySequenceContents(initializing:)(v35, (v9 + 4), v28, v4, v3);

    if (v29 == v28)
    {

      return v9;
    }

    __break(1u);
    return result;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v6;
  if (!v6)
  {
LABEL_46:
    v9 = MEMORY[0x1E69E7CC0];
LABEL_47:

    return v9;
  }

  v7 = 0;
  v8 = 0;
  v31 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v32 = a3 & 0xFFFFFFFFFFFFFFLL;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if ((v3 & 0x1000000000000000) != 0)
    {
      v16 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      goto LABEL_20;
    }

    if ((v3 & 0x2000000000000000) != 0)
    {
      v35[0] = v4;
      v35[1] = v32;
      v14 = v35 + v8;
    }

    else
    {
      v13 = v31;
      if ((v4 & 0x1000000000000000) == 0)
      {
        v13 = _StringObject.sharedUTF8.getter();
      }

      v14 = (v13 + v8);
    }

    v16 = *v14;
    if ((*v14 & 0x80000000) == 0)
    {
LABEL_19:
      v15 = 1;
      goto LABEL_20;
    }

    v26 = (__clz(v16 ^ 0xFF) - 24);
    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v16 = ((v16 & 0xF) << 12) | ((v14[1] & 0x3F) << 6) | v14[2] & 0x3F;
        v15 = 3;
      }

      else
      {
        v16 = ((v16 & 0xF) << 18) | ((v14[1] & 0x3F) << 12) | ((v14[2] & 0x3F) << 6) | v14[3] & 0x3F;
        v15 = 4;
      }
    }

    else
    {
      if (v26 == 1)
      {
        goto LABEL_19;
      }

      v16 = v14[1] & 0x3F | ((v16 & 0x1F) << 6);
      v15 = 2;
    }

LABEL_20:
    v8 += v15;
    v17 = *(v10 + 2);
    if (v17 < v5)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17 + 1, 1);
        v10 = v36;
      }

      v12 = *(v10 + 2);
      v11 = *(v10 + 3);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v10 = v36;
      }

      *(v10 + 2) = v12 + 1;
      *&v10[4 * v12 + 32] = v16;
      v5 = a1;
      goto LABEL_10;
    }

    if (v7 >= v17)
    {
      break;
    }

    v19 = v3;
    v20 = v4;
    v21 = *&v10[4 * v7 + 32];
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v9;
    if ((v22 & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1);
      v9 = v37;
    }

    v24 = v9[2];
    v23 = v9[3];
    v25 = v9;
    if (v24 >= v23 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
      v25 = v37;
    }

    v25[2] = v24 + 1;
    *(v25 + v24 + 8) = v21;
    v9 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v10);
    }

    v4 = v20;
    if (v7 >= *(v10 + 2))
    {
      goto LABEL_43;
    }

    v3 = v19;
    *&v10[4 * v7++ + 32] = v16;
    v5 = a1;
    if (v7 >= a1)
    {
      v7 = 0;
    }

LABEL_10:
    if (v8 >= v34)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:

  return MEMORY[0x1E69E7CC0];
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

void *specialized Sequence._copySequenceContents(initializing:)(void *result, unint64_t *a2, uint64_t a3)
{
  v4 = *v3;
  if (a2)
  {
    if (a3)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        v5 = 0;
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 1;
        while (v9)
        {
LABEL_20:
          v14 = __clz(__rbit64(v9));
          v15 = __OFADD__(v6, v14);
          v16 = v6 + v14;
          if (v15)
          {
            goto LABEL_31;
          }

          v9 &= v9 - 1;
          *a2 = v16;
          if (v10 == a3)
          {
            goto LABEL_28;
          }

          ++a2;
          v7 = v10;
          v15 = __OFADD__(v10++, 1);
          if (v15)
          {
            __break(1u);
            goto LABEL_25;
          }
        }

        v11 = *(v4 + 16);
        if (v8 <= 0x200000000000000)
        {
          v12 = 0x200000000000000;
        }

        else
        {
          v12 = v8;
        }

        if (v8 <= v11)
        {
          v13 = *(v4 + 16);
        }

        else
        {
          v13 = v8;
        }

        if (v8 >= v11)
        {
LABEL_26:
          *result = v4;
          result[1] = v5;
          result[2] = 0;
          result[3] = v6;
          return v7;
        }

        v6 = v8 << 6;
        v5 = v8;
        while ((v8 & 0x8000000000000000) == 0)
        {
          if (v12 == v5)
          {
            goto LABEL_30;
          }

          v9 = *(v4 + 32 + 8 * v5++);
          if (v9)
          {
            v8 = v5;
            goto LABEL_20;
          }

          v6 += 64;
          if (v13 == v5)
          {
            v6 -= 64;
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      v9 = 0;
      v5 = 0;
      v6 = 0;
LABEL_28:
      *result = v4;
      result[1] = v5;
      result[2] = v9;
      result[3] = v6;
      return a3;
    }
  }

  else
  {
LABEL_25:
    *result = v4;
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    return 0;
  }

  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for CharacterSet();
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

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

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
      if (*(*v6 + 16) < *(*v4 + 16))
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
      if (*(v21 + 16) < *(*v17 + 16))
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

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
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

      if (*(v6 + 3) < *(v4 + 3))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 32;
    do
    {
      v18 = v5 + 32;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v21 = v6 - 32;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 32, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 32;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 32;
      v14 -= 32;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v23 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t specialized static TokenIDMaskResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  result = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = a2[6];
  v39 = v11;
  v40 = v6;
  v38 = *a2;
  if (v6 < 0)
  {
    if (v13 < 0)
    {
      v45[0] = v3;
      v45[1] = v2;
      v45[2] = v4;
      v31 = v5;
      v46 = v5 & 1;
      v33 = v2;
      v47 = v7;
      v48 = v6 & 1;
      v21 = result;
      v41[0] = result;
      v41[1] = v10;
      v41[2] = v12;
      v42 = v11 & 1;
      v43 = v14;
      v22 = v13;
      v36 = v13;
      v44 = v13 & 1;
      v29 = v8;
      v23 = v11;
      v24 = v10;
      v25 = v4;
      v30 = v4;
      v34 = specialized static ContiguousBitSet.== infix(_:_:)(v45, v41);
      outlined copy of TokenIDMaskResponse(v21, v24, v12, v23, v14, v22);
      outlined copy of TokenIDMaskResponse(v3, v33, v25, v31, v7, v40);
      outlined copy of TokenIDMaskResponse(v38, v24, v12, v39, v14, v36);
      outlined copy of TokenIDMaskResponse(v3, v33, v30, v31, v7, v40);
      outlined copy of TokenIDMaskResponse(v38, v24, v12, v39, v14, v36);
      outlined copy of TokenIDMaskResponse(v3, v33, v30, v31, v7, v40);

      outlined consume of TokenIDMaskResponse(v3, v33, v30, v31, v7, v40);
      outlined consume of TokenIDMaskResponse(v38, v24, v12, v39, v14, v36);
      outlined consume of TokenIDMaskResponse(v38, v24, v12, v39, v14, v36);
      outlined consume of TokenIDMaskResponse(v3, v33, v30, v31, v7, v40);
      return v34 & (v29 == v15);
    }

    goto LABEL_17;
  }

  if (v13 < 0 || (v16 = *(v3 + 16), v16 != *(result + 16)))
  {
LABEL_17:
    v28 = v4;
    v35 = a2[1];
    v37 = a2[5];
    outlined copy of TokenIDMaskResponse(result, v10, v12, v11, v14, v13);
    outlined copy of TokenIDMaskResponse(v3, v2, v28, v5, v7, v40);
    outlined consume of TokenIDMaskResponse(v3, v2, v28, v5, v7, v40);
    outlined consume of TokenIDMaskResponse(v38, v35, v12, v11, v14, v37);
    return 0;
  }

  if (v16)
  {
    v17 = v3 == result;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
LABEL_9:
    v32 = a2[2];
    v18 = v4;
    v19 = a2[5];
    v20 = a2[1];
    outlined copy of TokenIDMaskResponse(result, v10, v32, a2[3], v14, v13);
    outlined copy of TokenIDMaskResponse(v3, v2, v18, v5, v7, v40);
    outlined consume of TokenIDMaskResponse(v3, v2, v18, v5, v7, v40);
    outlined consume of TokenIDMaskResponse(v38, v20, v32, v39, v14, v19);
    return 1;
  }

  else
  {
    v26 = (v3 + 32);
    v27 = (result + 32);
    while (v16)
    {
      if (*v26 != *v27)
      {
        goto LABEL_17;
      }

      ++v26;
      ++v27;
      if (!--v16)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized static TokenIDMask.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = a1[4];
  v4 = *(a1 + 40);
  v5 = a1[6];
  v6 = *a2;
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v18 = *a1;
  v19 = *(a1 + 1);
  v20 = v2;
  v21 = v3;
  v22 = v4;
  v13 = v6;
  v14 = *(a2 + 8);
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = specialized static ContiguousBitSet.== infix(_:_:)(&v18, &v13);

  return v11 & (v5 == v10);
}

uint64_t specialized static LogitMaskResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for IndexSet();
  v4 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LogitMaskResponse(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v24 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore17LogitMaskResponseO_ACtMd, _s19TokenGenerationCore17LogitMaskResponseO_ACtMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - v14;
  v17 = *(v16 + 56);
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_1(a1, &v24 - v14, type metadata accessor for LogitMaskResponse);
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_1(a2, &v15[v17], type metadata accessor for LogitMaskResponse);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s19TokenGenerationCore14TerminalSymbolOWOcTm_1(v15, v9, type metadata accessor for LogitMaskResponse);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = &v15[v17];
      v19 = v25;
      (*(v4 + 32))(v6, v18, v25);
      v20 = MEMORY[0x1AC57ACA0](v9, v6);
      v21 = *(v4 + 8);
      v21(v6, v19);
      v21(v9, v19);
LABEL_9:
      outlined destroy of VocabularyManager.PrefixLookup(v15, type metadata accessor for LogitMaskResponse);
      return v20 & 1;
    }

    (*(v4 + 8))(v9, v25);
  }

  else
  {
    _s19TokenGenerationCore14TerminalSymbolOWOcTm_1(v15, v12, type metadata accessor for LogitMaskResponse);
    v22 = *v12;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v20 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v22, *&v15[v17]);

      goto LABEL_9;
    }
  }

  outlined destroy of [Regex2BNF.CharacterPredicate](v15, &_s19TokenGenerationCore17LogitMaskResponseO_ACtMd, _s19TokenGenerationCore17LogitMaskResponseO_ACtMR);
  v20 = 0;
  return v20 & 1;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF19TokenGenerationCore16ContiguousBitSetV_Si7tokenID_SS0J4Textts5NeverOTB504_s19de94Core016RecognizerGuidedB11ConstraintsV013selectLongestA6Prefix07allowedA3IDs12vocabManagerAA16ghi32VAH_AA010VocabularyM0CtFSi7tokenK18_SS0R4TexttSiXEfU_AF010VocabularyZ0CTf1cn_nTf4ng_n(uint64_t *a1, void *a2)
{
  v24 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  v3 = v24;
  v4 = *a1;
  result = outlined init with copy of ContiguousBitSet(a1, v23);
  v6 = 0;
LABEL_2:
  v7 = *(v4 + 16);
  if (v6 > v7)
  {
    v7 = v6;
  }

  v8 = 0x200000000000000;
  if (v6 > 0x200000000000000)
  {
    v8 = v6;
  }

  v9 = (v6 << 6) - 64;
  v10 = v6;
  do
  {
    if (v7 == v10)
    {

      return v3;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v8 == v10)
    {
      goto LABEL_19;
    }

    v11 = *(v4 + 8 * v10++ + 32);
    v9 += 64;
  }

  while (!v11);
  v6 = v10;
  while (1)
  {
    v12 = __clz(__rbit64(v11));
    v13 = v9 + v12;
    if (__OFADD__(v9, v12))
    {
      break;
    }

    v14 = a2[11];
    v15 = a2[12];
    __swift_project_boxed_opaque_existential_1(a2 + 8, v14);
    result = (*(v15 + 16))(v13, v14, v15);
    v24 = v3;
    v18 = *(v3 + 16);
    v17 = *(v3 + 24);
    if (v18 >= v17 >> 1)
    {
      v21 = result;
      v20 = v16;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      v16 = v20;
      result = v21;
      v3 = v24;
    }

    v11 &= v11 - 1;
    *(v3 + 16) = v18 + 1;
    v19 = (v3 + 24 * v18);
    v19[4] = v13;
    v19[5] = result;
    v19[6] = v16;
    if (!v11)
    {
      goto LABEL_2;
    }
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of GuidedGenerationTokenizer(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SuppressionConstraints.CodingKeys and conformance SuppressionConstraints.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SuppressionConstraints.CodingKeys and conformance SuppressionConstraints.CodingKeys;
  if (!lazy protocol witness table cache variable for type SuppressionConstraints.CodingKeys and conformance SuppressionConstraints.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuppressionConstraints.CodingKeys and conformance SuppressionConstraints.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuppressionConstraints.CodingKeys and conformance SuppressionConstraints.CodingKeys;
  if (!lazy protocol witness table cache variable for type SuppressionConstraints.CodingKeys and conformance SuppressionConstraints.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuppressionConstraints.CodingKeys and conformance SuppressionConstraints.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuppressionConstraints.CodingKeys and conformance SuppressionConstraints.CodingKeys;
  if (!lazy protocol witness table cache variable for type SuppressionConstraints.CodingKeys and conformance SuppressionConstraints.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuppressionConstraints.CodingKeys and conformance SuppressionConstraints.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuppressionConstraints.CodingKeys and conformance SuppressionConstraints.CodingKeys;
  if (!lazy protocol witness table cache variable for type SuppressionConstraints.CodingKeys and conformance SuppressionConstraints.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuppressionConstraints.CodingKeys and conformance SuppressionConstraints.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSGMd, &_sShySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RecognizerElement and conformance RecognizerElement()
{
  result = lazy protocol witness table cache variable for type RecognizerElement and conformance RecognizerElement;
  if (!lazy protocol witness table cache variable for type RecognizerElement and conformance RecognizerElement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecognizerElement and conformance RecognizerElement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MatchResult and conformance MatchResult()
{
  result = lazy protocol witness table cache variable for type MatchResult and conformance MatchResult;
  if (!lazy protocol witness table cache variable for type MatchResult and conformance MatchResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchResult and conformance MatchResult);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RecognizerElement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
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

uint64_t storeEnumTagSinglePayload for RecognizerElement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

uint64_t type metadata completion function for LogitMaskComputation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
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

void type metadata accessor for [Int]()
{
  if (!lazy cache variable for type metadata for [Int])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Int]);
    }
  }
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

uint64_t getEnumTagSinglePayload for TokenIDMask(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for TokenIDMask(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t destructiveInjectEnumTag for TokenIDMaskComputation(uint64_t result, char a2)
{
  v2 = *(result + 40) & 0x8000000000000001 | ((a2 & 1) << 62);
  *(result + 24) &= 1uLL;
  *(result + 40) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TokenIDMaskComputation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for TokenIDMaskComputation(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * -a2;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 32) = 0;
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

uint64_t destructiveInjectEnumTag for TokenIDMaskResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40) & 1 | (a2 << 63);
  *(result + 24) &= 1uLL;
  *(result + 40) = v2;
  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GuidedGenerationConstraints(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GuidedGenerationConstraints(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [Int] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Int] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Int] and conformance [A]);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> (@out TokenIDMaskResponse, @error @owned Error)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> (@out TokenIDMaskResponse, @error @owned Error);

  return thunk for @escaping @callee_guaranteed @Sendable () -> (@out TokenIDMaskResponse, @error @owned Error)(a1, v4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> (@out TokenIDMaskResponse, @error @owned Error)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined destroy of VocabularyManager.PrefixLookup(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined copy of TokenIDMaskResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 < 0)
  {
  }

  else
  {
  }
}

uint64_t outlined consume of TokenIDMaskResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 < 0)
  {
  }

  else
  {
  }
}

uint64_t _s19TokenGenerationCore14TerminalSymbolOWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySiG_ShySiGs5NeverOTg50105_s19TokenGenerationCore06GuidedB11ConstraintsV19updateRollbackState_3forAA0G6StatusOAA0gH0Vz_SaySiGtKFShyW8GSiXEfU_0fG4Core0mN0VTf1cn_n(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v15;
  v7 = (a1 + 32);
  v8 = MEMORY[0x1E69E7CD0];
  while (1)
  {
    v10 = *v7++;
    v9 = v10;
    v11 = *(a2 + 8);
    v12 = v8;
    if (v10 < *(v11 + 16))
    {
      break;
    }

LABEL_6:
    v14 = *(v15 + 16);
    v13 = *(v15 + 24);
    if (v14 >= v13 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
    }

    *(v15 + 16) = v14 + 1;
    *(v15 + 8 * v14 + 32) = v12;
    if (!--v2)
    {
      return v3;
    }
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v12 = *(v11 + 8 * v9 + 32);

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized Set.contains(_:)(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v3);
  MEMORY[0x1AC57CB80](v4);
  MEMORY[0x1AC57CB80](v5);
  if (v7 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1AC57CB80](v6);
  }

  v9 = Hasher._finalize()();
  v10 = -1 << *(a2 + 32);
  v11 = v9 & ~v10;
  if ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    do
    {
      v14 = *(a2 + 48) + 40 * v11;
      if (*v14 == v3 && *(v14 + 8) == v4 && *(v14 + 16) == v5)
      {
        if (*(v14 + 32))
        {
          if (v7)
          {
            return 1;
          }
        }

        else
        {
          if (*(v14 + 24) == v6)
          {
            v13 = v7;
          }

          else
          {
            v13 = 1;
          }

          if ((v13 & 1) == 0)
          {
            return 1;
          }
        }
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return 0;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x1AC57CB60](*(a2 + 40), a1);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t *specialized Sequence._copyContents(initializing:)(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

TokenGenerationCore::RollbackState __swiftcall RollbackState.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *v0 = 0;
  v0[1] = v1;
  return result;
}

uint64_t static RollbackState.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && (v2 = a1[1], v3 = a2[1], v4 = *(v2 + 16), v4 == *(v3 + 16)))
  {
    if (!v4 || v2 == v3)
    {
      v10 = 1;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (v3 + 32);
      do
      {
        v8 = *v5++;
        v7 = v8;
        v9 = *v6++;
        v10 = _sSh2eeoiySbShyxG_ABtFZSi_Tt1g5(v7, v9);
        if ((v10 & 1) == 0)
        {
          break;
        }

        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance RollbackState.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RollbackState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001A8FD9240 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8FD9260 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RollbackState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RollbackState.CodingKeys and conformance RollbackState.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RollbackState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RollbackState.CodingKeys and conformance RollbackState.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RollbackState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore13RollbackStateV10CodingKeys33_BCFFBE9594FF5E853E9DC79B528E9605LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore13RollbackStateV10CodingKeys33_BCFFBE9594FF5E853E9DC79B528E9605LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[0] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RollbackState.CodingKeys and conformance RollbackState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9[1] = v9[0];
    v10 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayShySiGGMd, &_sSayShySiGGMR);
    lazy protocol witness table accessor for type [Set<Int>] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type RollbackState.CodingKeys and conformance RollbackState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RollbackState.CodingKeys and conformance RollbackState.CodingKeys;
  if (!lazy protocol witness table cache variable for type RollbackState.CodingKeys and conformance RollbackState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RollbackState.CodingKeys and conformance RollbackState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RollbackState.CodingKeys and conformance RollbackState.CodingKeys;
  if (!lazy protocol witness table cache variable for type RollbackState.CodingKeys and conformance RollbackState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RollbackState.CodingKeys and conformance RollbackState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RollbackState.CodingKeys and conformance RollbackState.CodingKeys;
  if (!lazy protocol witness table cache variable for type RollbackState.CodingKeys and conformance RollbackState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RollbackState.CodingKeys and conformance RollbackState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RollbackState.CodingKeys and conformance RollbackState.CodingKeys;
  if (!lazy protocol witness table cache variable for type RollbackState.CodingKeys and conformance RollbackState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RollbackState.CodingKeys and conformance RollbackState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Set<Int>] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [Set<Int>] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Set<Int>] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSayShySiGGMd, &_sSayShySiGGMR);
    lazy protocol witness table accessor for type Set<Int> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<Int> and conformance <> Set<A>, MEMORY[0x1E69E6538], MEMORY[0x1E69E64F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Set<Int>] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [Set<Int>] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Set<Int>] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSayShySiGGMd, &_sSayShySiGGMR);
    lazy protocol witness table accessor for type Set<Int> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<Int> and conformance <> Set<A>, MEMORY[0x1E69E6560], MEMORY[0x1E69E6510]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Set<Int>] and conformance <A> [A]);
  }

  return result;
}

uint64_t RollbackState.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore13RollbackStateV10CodingKeys33_BCFFBE9594FF5E853E9DC79B528E9605LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore13RollbackStateV10CodingKeys33_BCFFBE9594FF5E853E9DC79B528E9605LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RollbackState.CodingKeys and conformance RollbackState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v14 = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayShySiGGMd, &_sSayShySiGGMR);
    v13 = 1;
    lazy protocol witness table accessor for type [Set<Int>] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v11 = v12[1];
    *a2 = v9;
    a2[1] = v11;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t lazy protocol witness table accessor for type Set<Int> and conformance <> Set<A>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySiGMd, &_sShySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RollbackState(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZShySiG_Tt1g5(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

BOOL static RollbackStatus.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return *a1 == v2;
  }

  if (*(a1 + 8) == 1)
  {
    if (v3 != 1)
    {
      return 0;
    }

    return *a1 == v2;
  }

  return v3 == 2 && v2 == 0;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance RollbackStatus.CodingKeys()
{
  v1 = 0x6B6361426C6C6F72;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RollbackStatus.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized RollbackStatus.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RollbackStatus.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RollbackStatus.CodingKeys and conformance RollbackStatus.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RollbackStatus.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RollbackStatus.CodingKeys and conformance RollbackStatus.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RollbackStatus.NoRollbackNeededCodingKeys@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RollbackStatus.NoRollbackNeededCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RollbackStatus.NoRollbackNeededCodingKeys and conformance RollbackStatus.NoRollbackNeededCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RollbackStatus.NoRollbackNeededCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RollbackStatus.NoRollbackNeededCodingKeys and conformance RollbackStatus.NoRollbackNeededCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RollbackStatus.PrepareToRollBackTokensCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RollbackStatus.PrepareToRollBackTokensCodingKeys and conformance RollbackStatus.PrepareToRollBackTokensCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RollbackStatus.PrepareToRollBackTokensCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RollbackStatus.PrepareToRollBackTokensCodingKeys and conformance RollbackStatus.PrepareToRollBackTokensCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RollbackStatus.PrepareToRollBackTokensCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RollbackStatus.RollBackTokensCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RollbackStatus.RollBackTokensCodingKeys and conformance RollbackStatus.RollBackTokensCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RollbackStatus.RollBackTokensCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RollbackStatus.RollBackTokensCodingKeys and conformance RollbackStatus.RollBackTokensCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RollbackStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14RollbackStatusO24RollBackTokensCodingKeys33_BCFFBE9594FF5E853E9DC79B528E9605LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14RollbackStatusO24RollBackTokensCodingKeys33_BCFFBE9594FF5E853E9DC79B528E9605LLOGMR);
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v21 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14RollbackStatusO33PrepareToRollBackTokensCodingKeys33_BCFFBE9594FF5E853E9DC79B528E9605LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14RollbackStatusO33PrepareToRollBackTokensCodingKeys33_BCFFBE9594FF5E853E9DC79B528E9605LLOGMR);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14RollbackStatusO02NoG16NeededCodingKeys33_BCFFBE9594FF5E853E9DC79B528E9605LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14RollbackStatusO02NoG16NeededCodingKeys33_BCFFBE9594FF5E853E9DC79B528E9605LLOGMR);
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14RollbackStatusO10CodingKeys33_BCFFBE9594FF5E853E9DC79B528E9605LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14RollbackStatusO10CodingKeys33_BCFFBE9594FF5E853E9DC79B528E9605LLOGMR);
  v11 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v13 = &v21 - v12;
  v28 = *v1;
  v14 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RollbackStatus.CodingKeys and conformance RollbackStatus.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v14)
  {
    v31 = 1;
    lazy protocol witness table accessor for type RollbackStatus.PrepareToRollBackTokensCodingKeys and conformance RollbackStatus.PrepareToRollBackTokensCodingKeys();
    v16 = v29;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v18 = v24;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v23 + 8))(v7, v18);
    return (*(v11 + 8))(v13, v16);
  }

  if (v14 == 1)
  {
    v32 = 2;
    lazy protocol witness table accessor for type RollbackStatus.RollBackTokensCodingKeys and conformance RollbackStatus.RollBackTokensCodingKeys();
    v15 = v25;
    v16 = v29;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v27;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v26 + 8))(v15, v17);
    return (*(v11 + 8))(v13, v16);
  }

  v30 = 0;
  lazy protocol witness table accessor for type RollbackStatus.NoRollbackNeededCodingKeys and conformance RollbackStatus.NoRollbackNeededCodingKeys();
  v20 = v29;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v21 + 8))(v10, v22);
  return (*(v11 + 8))(v13, v20);
}

unint64_t lazy protocol witness table accessor for type RollbackStatus.CodingKeys and conformance RollbackStatus.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RollbackStatus.CodingKeys and conformance RollbackStatus.CodingKeys;
  if (!lazy protocol witness table cache variable for type RollbackStatus.CodingKeys and conformance RollbackStatus.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RollbackStatus.CodingKeys and conformance RollbackStatus.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RollbackStatus.CodingKeys and conformance RollbackStatus.CodingKeys;
  if (!lazy protocol witness table cache variable for type RollbackStatus.CodingKeys and conformance RollbackStatus.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RollbackStatus.CodingKeys and conformance RollbackStatus.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RollbackStatus.CodingKeys and conformance RollbackStatus.CodingKeys;
  if (!lazy protocol witness table cache variable for type RollbackStatus.CodingKeys and conformance RollbackStatus.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RollbackStatus.CodingKeys and conformance RollbackStatus.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RollbackStatus.CodingKeys and conformance RollbackStatus.CodingKeys;
  if (!lazy protocol witness table cache variable for type RollbackStatus.CodingKeys and conformance RollbackStatus.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RollbackStatus.CodingKeys and conformance RollbackStatus.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RollbackStatus.RollBackTokensCodingKeys and conformance RollbackStatus.RollBackTokensCodingKeys()
{
  result = lazy protocol witness table cache variable for type RollbackStatus.RollBackTokensCodingKeys and conformance RollbackStatus.RollBackTokensCodingKeys;
  if (!lazy protocol witness table cache variable for type RollbackStatus.RollBackTokensCodingKeys and conformance RollbackStatus.RollBackTokensCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RollbackStatus.RollBackTokensCodingKeys and conformance RollbackStatus.RollBackTokensCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RollbackStatus.RollBackTokensCodingKeys and conformance RollbackStatus.RollBackTokensCodingKeys;
  if (!lazy protocol witness table cache variable for type RollbackStatus.RollBackTokensCodingKeys and conformance RollbackStatus.RollBackTokensCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RollbackStatus.RollBackTokensCodingKeys and conformance RollbackStatus.RollBackTokensCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RollbackStatus.RollBackTokensCodingKeys and conformance RollbackStatus.RollBackTokensCodingKeys;
  if (!lazy protocol witness table cache variable for type RollbackStatus.RollBackTokensCodingKeys and conformance RollbackStatus.RollBackTokensCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RollbackStatus.RollBackTokensCodingKeys and conformance RollbackStatus.RollBackTokensCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RollbackStatus.RollBackTokensCodingKeys and conformance RollbackStatus.RollBackTokensCodingKeys;
  if (!lazy protocol witness table cache variable for type RollbackStatus.RollBackTokensCodingKeys and conformance RollbackStatus.RollBackTokensCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RollbackStatus.RollBackTokensCodingKeys and conformance RollbackStatus.RollBackTokensCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RollbackStatus.PrepareToRollBackTokensCodingKeys and conformance RollbackStatus.PrepareToRollBackTokensCodingKeys()
{
  result = lazy protocol witness table cache variable for type RollbackStatus.PrepareToRollBackTokensCodingKeys and conformance RollbackStatus.PrepareToRollBackTokensCodingKeys;
  if (!lazy protocol witness table cache variable for type RollbackStatus.PrepareToRollBackTokensCodingKeys and conformance RollbackStatus.PrepareToRollBackTokensCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RollbackStatus.PrepareToRollBackTokensCodingKeys and conformance RollbackStatus.PrepareToRollBackTokensCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RollbackStatus.PrepareToRollBackTokensCodingKeys and conformance RollbackStatus.PrepareToRollBackTokensCodingKeys;
  if (!lazy protocol witness table cache variable for type RollbackStatus.PrepareToRollBackTokensCodingKeys and conformance RollbackStatus.PrepareToRollBackTokensCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RollbackStatus.PrepareToRollBackTokensCodingKeys and conformance RollbackStatus.PrepareToRollBackTokensCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RollbackStatus.PrepareToRollBackTokensCodingKeys and conformance RollbackStatus.PrepareToRollBackTokensCodingKeys;
  if (!lazy protocol witness table cache variable for type RollbackStatus.PrepareToRollBackTokensCodingKeys and conformance RollbackStatus.PrepareToRollBackTokensCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RollbackStatus.PrepareToRollBackTokensCodingKeys and conformance RollbackStatus.PrepareToRollBackTokensCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RollbackStatus.PrepareToRollBackTokensCodingKeys and conformance RollbackStatus.PrepareToRollBackTokensCodingKeys;
  if (!lazy protocol witness table cache variable for type RollbackStatus.PrepareToRollBackTokensCodingKeys and conformance RollbackStatus.PrepareToRollBackTokensCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RollbackStatus.PrepareToRollBackTokensCodingKeys and conformance RollbackStatus.PrepareToRollBackTokensCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RollbackStatus.NoRollbackNeededCodingKeys and conformance RollbackStatus.NoRollbackNeededCodingKeys()
{
  result = lazy protocol witness table cache variable for type RollbackStatus.NoRollbackNeededCodingKeys and conformance RollbackStatus.NoRollbackNeededCodingKeys;
  if (!lazy protocol witness table cache variable for type RollbackStatus.NoRollbackNeededCodingKeys and conformance RollbackStatus.NoRollbackNeededCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RollbackStatus.NoRollbackNeededCodingKeys and conformance RollbackStatus.NoRollbackNeededCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RollbackStatus.NoRollbackNeededCodingKeys and conformance RollbackStatus.NoRollbackNeededCodingKeys;
  if (!lazy protocol witness table cache variable for type RollbackStatus.NoRollbackNeededCodingKeys and conformance RollbackStatus.NoRollbackNeededCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RollbackStatus.NoRollbackNeededCodingKeys and conformance RollbackStatus.NoRollbackNeededCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RollbackStatus.NoRollbackNeededCodingKeys and conformance RollbackStatus.NoRollbackNeededCodingKeys;
  if (!lazy protocol witness table cache variable for type RollbackStatus.NoRollbackNeededCodingKeys and conformance RollbackStatus.NoRollbackNeededCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RollbackStatus.NoRollbackNeededCodingKeys and conformance RollbackStatus.NoRollbackNeededCodingKeys);
  }

  return result;
}

uint64_t RollbackStatus.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14RollbackStatusO24RollBackTokensCodingKeys33_BCFFBE9594FF5E853E9DC79B528E9605LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14RollbackStatusO24RollBackTokensCodingKeys33_BCFFBE9594FF5E853E9DC79B528E9605LLOGMR);
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v34 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14RollbackStatusO33PrepareToRollBackTokensCodingKeys33_BCFFBE9594FF5E853E9DC79B528E9605LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14RollbackStatusO33PrepareToRollBackTokensCodingKeys33_BCFFBE9594FF5E853E9DC79B528E9605LLOGMR);
  v39 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14RollbackStatusO02NoG16NeededCodingKeys33_BCFFBE9594FF5E853E9DC79B528E9605LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14RollbackStatusO02NoG16NeededCodingKeys33_BCFFBE9594FF5E853E9DC79B528E9605LLOGMR);
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14RollbackStatusO10CodingKeys33_BCFFBE9594FF5E853E9DC79B528E9605LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14RollbackStatusO10CodingKeys33_BCFFBE9594FF5E853E9DC79B528E9605LLOGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v13 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type RollbackStatus.CodingKeys and conformance RollbackStatus.CodingKeys();
  v14 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v14)
  {
    v35 = v6;
    v36 = 0;
    v16 = v41;
    v15 = v42;
    v44 = v10;
    v17 = v43;
    v18 = KeyedDecodingContainer.allKeys.getter();
    v19 = (2 * *(v18 + 16)) | 1;
    v46 = v18;
    v47 = v18 + 32;
    v48 = 0;
    v49 = v19;
    v20 = specialized Collection<>.popFirst()();
    if (v20 == 3 || v48 != v49 >> 1)
    {
      v22 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v24 = &type metadata for RollbackStatus;
      v25 = v12;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
    }

    else
    {
      if (v20)
      {
        if (v20 == 1)
        {
          v50 = 1;
          lazy protocol witness table accessor for type RollbackStatus.PrepareToRollBackTokensCodingKeys and conformance RollbackStatus.PrepareToRollBackTokensCodingKeys();
          v21 = v36;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (v21)
          {
            (*(v44 + 8))(v12, v9);
LABEL_10:
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_0(v45);
          }

          v31 = v37;
          v28 = KeyedDecodingContainer.decode(_:forKey:)();
          (*(v39 + 8))(v5, v31);
          (*(v44 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v29 = 0;
        }

        else
        {
          v50 = 2;
          lazy protocol witness table accessor for type RollbackStatus.RollBackTokensCodingKeys and conformance RollbackStatus.RollBackTokensCodingKeys();
          v30 = v36;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (v30)
          {
            (*(v44 + 8))(v12, v9);
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_0(v45);
          }

          v32 = KeyedDecodingContainer.decode(_:forKey:)();
          v33 = v44;
          v28 = v32;
          (*(v40 + 8))(v16, v15);
          (*(v33 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v29 = 1;
        }

LABEL_19:
        *v17 = v28;
        *(v17 + 8) = v29;
        return __swift_destroy_boxed_opaque_existential_0(v45);
      }

      v50 = 0;
      lazy protocol witness table accessor for type RollbackStatus.NoRollbackNeededCodingKeys and conformance RollbackStatus.NoRollbackNeededCodingKeys();
      v25 = v12;
      v27 = v36;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v27)
      {
        (*(v38 + 8))(v8, v35);
        (*(v44 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v28 = 0;
        v29 = 2;
        goto LABEL_19;
      }
    }

    (*(v44 + 8))(v25, v9);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v45);
}

uint64_t GuidedGenerationConstraints.generateNextTokenIDMask(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v89 = a1;
  v62 = a3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 8);
  v61 = *v3;
  v13 = *(v3 + 32);
  v85 = *(v3 + 16);
  v86 = v13;
  v87 = *(v3 + 48);
  v88 = *(v3 + 64);
  if (one-time initialization token for guided != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, static Log.guided);
  (*(v6 + 16))(v8, v14, v5);
  Signpost.init(_:_:)(v8, "GuidedGenerationConstraints.generateNextTokenIDMask", 51, 2, v11);
  v15 = v89;
  v16 = v63;
  specialized RecognizerGuidedGenerationConstraints.generateNextTokenIDMask(from:)(v89, &v79);
  if (v16)
  {
    Signpost.end()();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for OSSignposter();
    (*(*(v18 - 8) + 8))(&v11[v17], v18);
    v19 = *(v9 + 24);
    v20 = type metadata accessor for OSSignpostID();
    (*(*(v20 - 8) + 8))(&v11[v19], v20);
  }

  *&v60 = v14;
  Signpost.end()();
  v22 = *(v9 + 20);
  v23 = type metadata accessor for OSSignposter();
  (*(*(v23 - 8) + 8))(&v11[v22], v23);
  v24 = *(v9 + 24);
  v25 = type metadata accessor for OSSignpostID();
  (*(*(v25 - 8) + 8))(&v11[v24], v25);

  v63 = v80;
  v26 = v79;
  v28 = v81;
  v27 = v82;
  v30 = v83;
  v29 = v84;
  v31 = *(v15 + 16);
  if (v31 >= *(v12 + 16))
  {
    v32 = MEMORY[0x1E69E7CD0];
    if (!*(MEMORY[0x1E69E7CD0] + 16))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v32 = *(v12 + 8 * v31 + 32);

    if (!*(v32 + 16))
    {
      goto LABEL_18;
    }
  }

  v89 = v26;
  v59 = v27;

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v58 = v30;
    v36 = v35;
    v37 = swift_slowAlloc();
    v57 = v28;
    v38 = v37;
    v79 = v37;
    *v36 = 136642819;
    v39 = Set.description.getter();
    v56 = 0;
    v41 = v29;
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v79);

    *(v36 + 4) = v42;
    v29 = v41;
    _os_log_impl(&dword_1A8E85000, v33, v34, "Suppressing the following token IDs due to rollback: %{sensitive}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    v43 = v38;
    v28 = v57;
    MEMORY[0x1AC57DBF0](v43, -1, -1);
    v44 = v36;
    v30 = v58;
    MEMORY[0x1AC57DBF0](v44, -1, -1);
  }

  v27 = v59;
  v26 = v89;
  if ((v30 & 0x8000000000000000) != 0)
  {
    v74 = v89;
    v75 = v63;
    LOBYTE(v76) = v28 & 1;
    v77 = v59;
    v78 = v30 & 1;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySiGMd, &_sShySiGMR);
    v82 = lazy protocol witness table accessor for type Set<Int> and conformance Set<A>();
    v79 = v32;

    ContiguousBitSet.init(_:)(&v79, &v69);
    v64 = v69;
    v65 = v70;
    v66 = v71;
    v67 = v72;
    v68 = v73;
    ContiguousBitSet.subtracting(_:)(&v64, &v79);
    outlined consume of TokenIDMaskResponse(v26, v63, *(&v63 + 1), v28, v27, v30);

    v26 = v79;
    v54 = v80;
    v28 = v81;
    v27 = v82;
    v30 = v83 | 0x8000000000000000;
    goto LABEL_23;
  }

  if (*(v89 + 16))
  {
    v45 = specialized Set.contains(_:)(*(v89 + 32), v32);

    if (v45)
    {
      v57 = v28;
      v58 = v30;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_1A8E85000, v46, v47, "Next token is deterministic but also suppressed, returning an empty mask", v48, 2u);
        MEMORY[0x1AC57DBF0](v48, -1, -1);
      }

      LOBYTE(v81) = 1;
      v82 = 0;
      LOBYTE(v83) = 1;
      v79 = MEMORY[0x1E69E7CC0];
      v80 = 0uLL;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
      v26 = v79;
      v60 = v80;
      v49 = v81;
      v50 = v82;
      v51 = v83;
      if (v61)
      {
        outlined init with copy of GuidedGenerationTokenizer(*(v61 + 32) + 64, &v74);
        v61 = v50;
        v52 = v76;
        v53 = v77;
        __swift_project_boxed_opaque_existential_1(&v74, v76);
        v29 = (*(v53 + 56))(v52, v53);
        v50 = v61;
        outlined consume of TokenIDMaskResponse(v89, v63, *(&v63 + 1), v57, v59, v58);
        result = __swift_destroy_boxed_opaque_existential_0(&v74);
      }

      else
      {
        result = outlined consume of TokenIDMaskResponse(v89, v63, *(&v63 + 1), v57, v59, v58);
        v29 = 0;
      }

      v30 = v51 | 0x8000000000000000;
      v28 = v49;
      v27 = v50;
      v54 = v60;
    }

    else
    {
      v54 = v63;
      v26 = v89;
    }

    goto LABEL_23;
  }

LABEL_18:

  v54 = v63;
LABEL_23:
  v55 = v62;
  *v62 = v26;
  *(v55 + 1) = v54;
  v55[3] = v28;
  v55[4] = v27;
  v55[5] = v30;
  v55[6] = v29;
  return result;
}

uint64_t GuidedGenerationConstraints.updateRollbackState(_:for:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v6 = a3;
  v7 = *(v3 + 8);
  if (!v7 || !*(v7 + 16))
  {
    *a3 = 0;
    *(a3 + 8) = 2;
    return result;
  }

  v9 = result;
  outlined init with copy of GuidedGenerationTokenizer(*(*(v3 + 32) + 32) + 64, v67);
  v10 = *v9;
  v11 = *(a2 + 16);
  v57 = v6;
  v58 = v9;
  if (*v9 >= v11)
  {
LABEL_41:
    *v58 = v11;
    *v57 = 0;
    *(v57 + 8) = 2;
    return __swift_destroy_boxed_opaque_existential_0(v67);
  }

  v63 = v11 - v10;
  if (__OFSUB__(v11, v10))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    goto LABEL_49;
  }

  v12 = 0;
  v56 = a2 + 24;
  v13 = v7 + 56;
  v6 = *v9;
  v60 = a2;
  v70 = v7;
  v61 = v11;
  v62 = v10;
LABEL_6:
  if (__OFSUB__(v63, v12))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v64 = v12;
  v59 = v63 - v12;
  v14 = specialized BidirectionalCollection.suffix(_:)(v63 - v12, a2);
  v7 = v15;
  v17 = v16;
  v19 = v18;
  if ((v18 & 1) == 0)
  {

LABEL_9:
    specialized _copyCollectionToContiguousArray<A>(_:)(v14, v7, v17, v19);
    v21 = v20;
    v7 = v70;
    goto LABEL_16;
  }

  v65 = v5;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();

  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    v22 = MEMORY[0x1E69E7CC0];
  }

  v5 = *(v22 + 16);

  if (__OFSUB__(v19 >> 1, v17))
  {
    goto LABEL_58;
  }

  if (v5 != ((v19 >> 1) - v17))
  {
    swift_unknownObjectRelease();
    v5 = v65;
    goto LABEL_9;
  }

  v21 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v5 = v65;
  v7 = v70;
  if (v21)
  {
    goto LABEL_17;
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_16:
  swift_unknownObjectRelease();
LABEL_17:
  if (!*(v21 + 16))
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v6 < 1)
  {
    v6 = v68;
    v44 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v41 = (*(v44 + 32))(v21, v6, v44);
    v43 = v45;

    if (!v5)
    {
      goto LABEL_23;
    }

    return __swift_destroy_boxed_opaque_existential_0(v67);
  }

  v6 = *(v56 + 8 * v6);
  v23 = v69;
  __swift_project_boxed_opaque_existential_1(v67, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1A8FC9400;
  *(v24 + 32) = v6;
  v7 = (*(v23 + 32))();
  v26 = v25;

  if (v5)
  {

    return __swift_destroy_boxed_opaque_existential_0(v67);
  }

  a2 = v68;
  v27 = v69;
  __swift_project_boxed_opaque_existential_1(v67, v68);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1A8FC9400;
  *(v28 + 32) = v6;
  v66[0] = v28;
  specialized Array.append<A>(contentsOf:)(v21);
  v29 = (*(v27 + 32))(v66[0], a2, v27);
  v5 = 0;
  v30 = v29;
  v32 = v31;

  v33._countAndFlagsBits = v7;
  v33._object = v26;
  if (!String.hasPrefix(_:)(v33))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v34 = String.count.getter();

  v6 = specialized Collection.dropFirst(_:)(v34, v30, v32);
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = MEMORY[0x1AC57C040](v6, v36, v38, v40);
  v43 = v42;

  v7 = v70;
LABEL_23:
  v46 = 1 << *(v7 + 32);
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  else
  {
    v47 = -1;
  }

  v48 = v47 & *(v7 + 56);
  v5 = ((v46 + 63) >> 6);

  a2 = 0;
  while (1)
  {
    if (!v48)
    {
      while (1)
      {
        v49 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          __break(1u);
          goto LABEL_53;
        }

        if (v49 >= v5)
        {
          break;
        }

        v48 = *(v13 + 8 * v49);
        ++a2;
        if (v48)
        {
          a2 = v49;
          goto LABEL_32;
        }
      }

      v12 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_55;
      }

      v6 = v62 + v12;
      if (!__OFADD__(v62, v12))
      {
        a2 = v60;
        v11 = v61;
        v5 = 0;
        if (v6 < v61)
        {
          goto LABEL_6;
        }

        goto LABEL_41;
      }

      goto LABEL_56;
    }

LABEL_32:
    v50 = (*(v7 + 48) + ((a2 << 10) | (16 * __clz(__rbit64(v48)))));
    v7 = *v50;
    v51 = v50[1];

    v52._countAndFlagsBits = v7;
    v52._object = v51;
    if (String.hasPrefix(_:)(v52))
    {
      break;
    }

    v48 &= v48 - 1;
    v53._countAndFlagsBits = v41;
    v53._object = v43;
    v6 = String.hasPrefix(_:)(v53);

    v7 = v70;
    if (v6)
    {

      *v57 = v63;
      *(v57 + 8) = 0;
      return __swift_destroy_boxed_opaque_existential_0(v67);
    }
  }

  a2 = v62;
  v6 = v62 + v64;
  if (__OFADD__(v62, v64))
  {
    goto LABEL_60;
  }

  if (v6 >= v61)
  {
    goto LABEL_61;
  }

  v54 = (v6 + 1);
  if (__OFADD__(v6, 1))
  {
    goto LABEL_62;
  }

  if ((v54 & 0x8000000000000000) != 0)
  {
    goto LABEL_63;
  }

  v7 = *(v60 + 8 * v6 + 32);
  v55 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(v6 + 1, 0);
  if (specialized Sequence._copyContents(initializing:)(v66, (v55 + 4), v6 + 1, 0, v6 + 1) != v54)
  {
    goto LABEL_64;
  }

  v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySiG_ShySiGs5NeverOTg50105_s19TokenGenerationCore06GuidedB11ConstraintsV19updateRollbackState_3forAA0G6StatusOAA0gH0Vz_SaySiGtKFShyW8GSiXEfU_0fG4Core0mN0VTf1cn_n(v55, v58);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_49:
  if (v6 >= v5[2])
  {
    __break(1u);
  }

  else
  {
    specialized Set._Variant.insert(_:)(v66, v7);

    *v58 = a2;
    v58[1] = v5;
    *v57 = v59;
    *(v57 + 8) = 1;
    return __swift_destroy_boxed_opaque_existential_0(v67);
  }

  return result;
}

uint64_t GuidedGenerationConstraints.startDecodingLoop()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v11 = *(v1 + 32);
  v2 = v11;
  v12 = v3;
  v13 = *(v1 + 64);
  v4 = v13;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v6 = v10[0];
  v10[1] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  *(a1 + 80) = 0;
  *(a1 + 88) = v7;
  *(a1 + 64) = v4;
  *(a1 + 72) = v7;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *a1 = v6;
  *(a1 + 16) = v5;
  return outlined init with copy of GuidedGenerationConstraints(v10, v9);
}

uint64_t DecodingLoop.consume(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 9);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  *&v6[8 * v8 + 32] = a1;
  v9 = v2[1];
  v29[0] = *v2;
  v29[1] = v9;
  v10 = v2[3];
  v12 = *v2;
  v11 = v2[1];
  v29[2] = v2[2];
  v29[3] = v10;
  v13 = v2[3];
  v24 = v2[2];
  v25 = v13;
  *(v2 + 9) = v6;
  v30 = *(v2 + 8);
  v26 = *(v2 + 8);
  v22 = v12;
  v23 = v11;
  outlined init with copy of GuidedGenerationConstraints(v29, &v17);
  GuidedGenerationConstraints.updateRollbackState(_:for:)((v2 + 5), v6, &v27);
  if (v3)
  {
    v19 = v24;
    v20 = v25;
    v21 = v26;
    v17 = v22;
    v18 = v23;
    return outlined destroy of GuidedGenerationConstraints(&v17);
  }

  else
  {
    v19 = v24;
    v20 = v25;
    v21 = v26;
    v17 = v22;
    v18 = v23;
    result = outlined destroy of GuidedGenerationConstraints(&v17);
    v15 = v27;
    v16 = v28;
    if (v28 == 1)
    {
      result = specialized RangeReplaceableCollection<>.removeLast(_:)(v27);
    }

    *a2 = v15;
    *(a2 + 8) = v16;
  }

  return result;
}

uint64_t DecodingLoop.generateNextTokenIDMask()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v13[2] = *(v1 + 32);
  v13[3] = v3;
  v4 = *(v1 + 72);
  v14 = *(v1 + 64);
  v5 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v5;
  v6 = *(v1 + 88);
  v12[0] = *(v1 + 80);
  v12[1] = v6;
  outlined init with copy of GuidedGenerationConstraints(v13, v10);

  GuidedGenerationConstraints.generateNextTokenIDMask(from:with:)(v4, v12, a1);

  v7 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v7;
  v11 = *(v1 + 64);
  v8 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v8;
  return outlined destroy of GuidedGenerationConstraints(v10);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DecodingLoop.nextTokensPossiblyDeterministic()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = v0[3];
  v26 = v0[2];
  v27 = v8;
  v10 = *v0;
  v9 = v0[1];
  v11 = *(v0 + 9);
  v28 = *(v0 + 8);
  v25[0] = v10;
  v25[1] = v9;
  v21 = v9;
  v22 = v26;
  v23 = v8;
  v24 = v28;
  outlined init with copy of GuidedGenerationConstraints(v25, v20);
  if (one-time initialization token for guided != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, static Log.guided);
  (*(v2 + 16))(v4, v12, v1);
  Signpost.init(_:_:)(v4, "GuidedGenerationConstraints.nextMaskPossiblyDeterministic", 57, 2, v7);
  v13 = specialized RecognizerGuidedGenerationConstraints.possiblyDeterministicTokens(follow:)(v11);
  Signpost.end()();
  v14 = *(v5 + 20);
  v15 = type metadata accessor for OSSignposter();
  (*(*(v15 - 8) + 8))(&v7[v14], v15);
  v16 = *(v5 + 24);
  v17 = type metadata accessor for OSSignpostID();
  (*(*(v17 - 8) + 8))(&v7[v16], v17);

  outlined destroy of GuidedGenerationConstraints(v25);
  return v13 & 1;
}

uint64_t DecodingLoop.nextTokenIDMaskComputation()(uint64_t a1)
{
  *(v2 + 216) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 224) = v3;
  *(v2 + 232) = *(v3 - 8);
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = type metadata accessor for Signpost(0);
  v4 = swift_task_alloc();
  v5 = v1[2];
  v6 = v1[3];
  *(v2 + 48) = v5;
  *(v2 + 64) = v6;
  v8 = *v1;
  v7 = v1[1];
  v9 = *(v1 + 8);
  v10 = *(v1 + 9);
  *(v2 + 80) = v9;
  *(v2 + 16) = v8;
  *(v2 + 32) = v7;
  *(v2 + 256) = v4;
  *(v2 + 264) = v10;
  *(v2 + 160) = v7;
  *(v2 + 176) = v5;
  *(v2 + 192) = v6;
  *(v2 + 208) = v9;
  outlined init with copy of GuidedGenerationConstraints(v2 + 16, v2 + 88);

  return MEMORY[0x1EEE6DFA0](DecodingLoop.nextTokenIDMaskComputation(), 0, 0);
}

uint64_t DecodingLoop.nextTokenIDMaskComputation()()
{
  if (one-time initialization token for guided != -1)
  {
    swift_once();
  }

  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v7 = __swift_project_value_buffer(v5, static Log.guided);
  (*(v4 + 16))(v3, v7, v5);
  Signpost.init(_:_:)(v3, "GuidedGenerationConstraints.nextTokenIDMaskComputation", 54, 2, v2);
  specialized RecognizerGuidedGenerationConstraints.nextTokenIDMaskComputation(follow:)(v1, v6);
  v9 = v0[31];
  v8 = v0[32];
  Signpost.end()();
  v10 = *(v9 + 20);
  v11 = type metadata accessor for OSSignposter();
  (*(*(v11 - 8) + 8))(v8 + v10, v11);
  v12 = *(v9 + 24);
  v13 = type metadata accessor for OSSignpostID();
  (*(*(v13 - 8) + 8))(v8 + v12, v13);

  outlined destroy of GuidedGenerationConstraints((v0 + 2));

  v14 = v0[1];

  return v14();
}

uint64_t DecodingLoop.validate(candidateTokenIDs:)(uint64_t a1)
{
  *(v2 + 216) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 224) = v3;
  *(v2 + 232) = *(v3 - 8);
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = type metadata accessor for Signpost(0);
  v4 = swift_task_alloc();
  v5 = v1[2];
  v6 = v1[3];
  *(v2 + 48) = v5;
  *(v2 + 64) = v6;
  v8 = *v1;
  v7 = v1[1];
  v9 = *(v1 + 8);
  v10 = *(v1 + 9);
  *(v2 + 80) = v9;
  *(v2 + 16) = v8;
  *(v2 + 32) = v7;
  *(v2 + 256) = v4;
  *(v2 + 264) = v10;
  *(v2 + 160) = v7;
  *(v2 + 176) = v5;
  *(v2 + 192) = v6;
  *(v2 + 208) = v9;
  outlined init with copy of GuidedGenerationConstraints(v2 + 16, v2 + 88);

  return MEMORY[0x1EEE6DFA0](DecodingLoop.validate(candidateTokenIDs:), 0, 0);
}

uint64_t DecodingLoop.validate(candidateTokenIDs:)()
{
  if (one-time initialization token for guided != -1)
  {
    swift_once();
  }

  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v7 = __swift_project_value_buffer(v5, static Log.guided);
  (*(v4 + 16))(v3, v7, v5);
  Signpost.init(_:_:)(v3, "GuidedGenerationConstraints.validateTokens", 42, 2, v2);
  v8 = specialized RecognizerGuidedGenerationConstraints.validateTokens(from:candidateTokenIDs:)(v1, v6);
  v10 = v0[31];
  v9 = v0[32];
  v12 = v11;
  v13 = v8;
  Signpost.end()();
  v14 = *(v10 + 20);
  v15 = type metadata accessor for OSSignposter();
  (*(*(v15 - 8) + 8))(v9 + v14, v15);
  v16 = *(v10 + 24);
  v17 = type metadata accessor for OSSignpostID();
  (*(*(v17 - 8) + 8))(v9 + v16, v17);

  outlined destroy of GuidedGenerationConstraints((v0 + 2));

  v18 = v0[1];

  return v18(v13, v12 & 1);
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGMR, MEMORY[0x1E69A0AD0]);
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMR);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR, MEMORY[0x1E69C6360]);
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
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

unint64_t lazy protocol witness table accessor for type Set<Int> and conformance Set<A>()
{
  result = lazy protocol witness table cache variable for type Set<Int> and conformance Set<A>;
  if (!lazy protocol witness table cache variable for type Set<Int> and conformance Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySiGMd, &_sShySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<Int> and conformance Set<A>);
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  return specialized Set._Variant.insert(_:)(a1, a2, a3, &_ss11_SetStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVGMd, &_ss11_SetStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVGMR, &type metadata for Regex2BNF.NonTerminalSymbol);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, a3, &_ss11_SetStorageCy19TokenGenerationCore17NonTerminalSymbolVGMd, &_ss11_SetStorageCy19TokenGenerationCore17NonTerminalSymbolVGMR, &type metadata for NonTerminalSymbol);
}

{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1AC57CB60](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v12 = *v6;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v13 = Hasher._finalize()();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    while (1)
    {
      v17 = (*(v12 + 48) + 16 * v15);
      v18 = *v17 == a2 && v17[1] == a3;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v21 = (*(v12 + 48) + 16 * v15);
    v22 = v21[1];
    *a1 = *v21;
    a1[1] = v22;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v6;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v15, isUniquelyReferenced_nonNull_native, a4, a5, a6);
    *v6 = v24;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = *(a2 + 32);
  v9 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v4);
  MEMORY[0x1AC57CB80](v5);
  MEMORY[0x1AC57CB80](v6);
  if (v8 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1AC57CB80](v7);
  }

  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_23:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v24;
    v22 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v22;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }

  v13 = ~v11;
  while (1)
  {
    v15 = *(v9 + 48) + 40 * v12;
    if (*v15 != v4 || *(v15 + 8) != v5 || *(v15 + 16) != v6)
    {
      goto LABEL_10;
    }

    v18 = *(v15 + 24);
    v19 = *(v15 + 32);
    if (v19)
    {
      break;
    }

    if (v18 == v7)
    {
      v14 = v8;
    }

    else
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_10:
    v12 = (v12 + 1) & v13;
    if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = v18;
LABEL_22:
  result = 0;
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v19;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3, uint64_t a4)
{
  v8 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1AC57CB80](*(a4 + 16));
  v9 = *(a4 + 16);
  if (v9)
  {
    v10 = (a4 + 32);
    do
    {
      v11 = *v10++;

      specialized Array<A>.hash(into:)(v28, v11);

      --v9;
    }

    while (v9);
  }

  v12 = Hasher._finalize()();
  v13 = -1 << *(v8 + 32);
  v14 = v12 & ~v13;
  if ((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v18 = (*(v8 + 48) + 24 * v14);
      v19 = v18[2];
      v20 = *v18 == a2 && v18[1] == a3;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        swift_bridgeObjectRetain_n();

        _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore6ChoiceV_Tt1g5(v19, a4);
        v17 = v16;

        swift_bridgeObjectRelease_n();

        if (v17)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v23 = (*(v8 + 48) + 24 * v14);
    v24 = v23[1];
    v25 = v23[2];
    *a1 = *v23;
    a1[1] = v24;
    a1[2] = v25;

    return 0;
  }

  else
  {
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28[0] = *v26;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, a4, v14, isUniquelyReferenced_nonNull_native);
    *v26 = v28[0];
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680C0]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680C8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = MEMORY[0x1AC57CB60](*(v5 + 40), v17);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v36 = type metadata accessor for CharacterSet();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation09CharacterA0VGMd, &_ss11_SetStorageCy10Foundation09CharacterA0VGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680C0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19TokenGenerationCore16EarleyRecognizerC4ItemVGMd, &_ss11_SetStorageCy19TokenGenerationCore16EarleyRecognizerC4ItemVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v34 = result;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v35 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      Hasher.init(_seed:)();
      MEMORY[0x1AC57CB80](v20);
      MEMORY[0x1AC57CB80](v19);
      MEMORY[0x1AC57CB80](v21);
      if (v23 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1AC57CB80](v22);
      }

      result = Hasher._finalize()();
      v5 = v34;
      v24 = -1 << *(v34 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v34 + 48) + 40 * v13;
      v10 = v35;
      *v14 = v20;
      *(v14 + 8) = v19;
      *(v14 + 16) = v21;
      *(v14 + 24) = v22;
      *(v14 + 32) = v23;
      ++*(v34 + 16);
      v3 = v33;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19TokenGenerationCore4RuleVGMd, &_ss11_SetStorageCy19TokenGenerationCore4RuleVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v33 = v1;
    v34 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 24 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      Hasher.init(_seed:)();
      v35 = v20;
      String.hash(into:)();
      MEMORY[0x1AC57CB80](*(v21 + 16));
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = (v21 + 32);
        do
        {
          v24 = *v23++;

          specialized Array<A>.hash(into:)(v36, v24);

          --v22;
        }

        while (v22);
      }

      result = Hasher._finalize()();
      v25 = -1 << *(v5 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 24 * v13);
      *v14 = v19;
      v14[1] = v35;
      v14[2] = v21;
      ++*(v5 + 16);
      v3 = v34;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v7, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, uint64_t, uint64_t))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = (*(v6 + 48) + 16 * (v18 | (v9 << 6)));
      v22 = *v21;
      v23 = v21[1];
      Hasher.init(_seed:)();
      a4(v33, v22, v23);
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v22;
      v17[1] = v23;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v6 + 32);
    if (v31 >= 64)
    {
      bzero((v6 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    v5 = v4;
    *(v6 + 16) = 0;
  }

  *v5 = v8;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x1AC57CB60](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v10 = result;
  v11 = *(*v7 + 16);
  v12 = *(*v7 + 24);
  if (v12 > v11 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1, a5, a6, MEMORY[0x1E69E60C8]);
  }

  else
  {
    if (v12 > v11)
    {
      result = specialized _NativeSet.copy()(a5, a6);
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1, a5, a6);
  }

  v13 = *v7;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v14 = -1 << *(v13 + 32);
  a3 = result & ~v14;
  if ((*(v13 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    do
    {
      v16 = (*(v13 + 48) + 16 * a3);
      if (*v16 == v10 && v16[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v18 = *v7;
  *(*v7 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = (*(v18 + 48) + 16 * a3);
  *v19 = v10;
  v19[1] = a2;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_29;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_29;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v4;
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);
  v13 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v8);
  MEMORY[0x1AC57CB80](v9);
  MEMORY[0x1AC57CB80](v10);
  if (v12 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1AC57CB80](v11);
  }

  result = Hasher._finalize()();
  v14 = -1 << *(v13 + 32);
  a2 = result & ~v14;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    do
    {
      v16 = *(v13 + 48) + 40 * a2;
      if (*v16 == v8 && *(v16 + 8) == v9 && *(v16 + 16) == v10)
      {
        if (*(v16 + 32))
        {
          if (v12)
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (*(v16 + 24) == v11)
          {
            v19 = v12;
          }

          else
          {
            v19 = 1;
          }

          if ((v19 & 1) == 0)
          {
LABEL_28:
            result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_29:
  v20 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v21 = *(v20 + 48) + 40 * a2;
  v22 = *(v4 + 16);
  *v21 = *v4;
  *(v21 + 16) = v22;
  *(v21 + 32) = *(v4 + 32);
  v23 = *(v20 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v25;
  }

  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a5)
  {
    specialized _NativeSet.resize(capacity:)(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_21;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v5;
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1AC57CB80](*(a3 + 16));
  v13 = *(a3 + 16);
  if (v13)
  {
    v14 = (a3 + 32);
    do
    {
      v15 = *v14++;

      specialized Array<A>.hash(into:)(v29, v15);

      --v13;
    }

    while (v13);
  }

  result = Hasher._finalize()();
  v16 = -1 << *(v12 + 32);
  a4 = result & ~v16;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    do
    {
      v20 = (*(v12 + 48) + 24 * a4);
      v21 = v20[2];
      v22 = *v20 == v9 && v20[1] == a2;
      if (v22 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {

        swift_bridgeObjectRetain_n();

        _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore6ChoiceV_Tt1g5(v21, a3);
        v19 = v18;

        swift_bridgeObjectRelease_n();

        if (v19)
        {
          goto LABEL_24;
        }
      }

      a4 = (a4 + 1) & v17;
    }

    while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_21:
  v23 = *v28;
  *(*v28 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v24 = (*(v23 + 48) + 24 * a4);
  *v24 = v9;
  v24[1] = a2;
  v24[2] = a3;
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_24:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680C0]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680C8]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1, &_ss11_SetStorageCySJGMd, &_ss11_SetStorageCySJGMR, MEMORY[0x1E69E5ED0]);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()(&_ss11_SetStorageCySJGMd, &_ss11_SetStorageCySJGMR);
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19TokenGenerationCore16EarleyRecognizerC4ItemVGMd, &_ss11_SetStorageCy19TokenGenerationCore16EarleyRecognizerC4ItemVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 32) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 40 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 32);
      v20 = *(v4 + 48) + v17;
      v21 = *(v18 + 16);
      *v20 = *v18;
      *(v20 + 16) = v21;
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

      v16 = *(v2 + 56 + 8 * v8);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19TokenGenerationCore4RuleVGMd, &_ss11_SetStorageCy19TokenGenerationCore4RuleVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;
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

      v16 = *(v2 + 56 + 8 * v8);
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
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation09CharacterA0VGMd, &_ss11_SetStorageCy10Foundation09CharacterA0VGMR);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v21 = v20[1];
        v22 = (*(v6 + 48) + v19);
        *v22 = *v20;
        v22[1] = v21;
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

      v18 = *(v4 + 56 + 8 * v10);
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = MEMORY[0x1AC57CB60](*(v5 + 40), v16);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v33 = type metadata accessor for CharacterSet();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation09CharacterA0VGMd, &_ss11_SetStorageCy10Foundation09CharacterA0VGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680C0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v19 = (*(v5 + 48) + 16 * (v16 | (v8 << 6)));
      v20 = *v19;
      v21 = v19[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v7 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v18 = *(v5 + 56 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19TokenGenerationCore16EarleyRecognizerC4ItemVGMd, &_ss11_SetStorageCy19TokenGenerationCore16EarleyRecognizerC4ItemVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v33 = result;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      v23 = *(v18 + 32);
      Hasher.init(_seed:)();
      MEMORY[0x1AC57CB80](v19);
      MEMORY[0x1AC57CB80](v20);
      MEMORY[0x1AC57CB80](v22);
      if (v23 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1AC57CB80](v21);
      }

      result = Hasher._finalize()();
      v5 = v33;
      v24 = -1 << *(v33 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v33 + 48) + 40 * v13;
      v10 = v34;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v22;
      *(v14 + 24) = v21;
      *(v14 + 32) = v23;
      ++*(v33 + 16);
      v3 = v32;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v31;
        goto LABEL_29;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19TokenGenerationCore4RuleVGMd, &_ss11_SetStorageCy19TokenGenerationCore4RuleVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v1;
    v33 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 24 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      Hasher.init(_seed:)();

      String.hash(into:)();
      MEMORY[0x1AC57CB80](*(v21 + 16));
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = (v21 + 32);
        do
        {
          v24 = *v23++;

          specialized Array<A>.hash(into:)(v35, v24);

          --v22;
        }

        while (v22);
      }

      result = Hasher._finalize()();
      v25 = -1 << *(v5 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 24 * v13);
      v3 = v33;
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      ++*(v5 + 16);
      v10 = v34;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v32;
        goto LABEL_29;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySJGMd, &_ss11_SetStorageCySJGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for DecodingLoop(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DecodingLoop(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized RollbackStatus.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001A8FD9280 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A8FD92A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B6361426C6C6F72 && a2 == 0xEE00736E656B6F54)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CharacterSet();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for TokenGrammarRecognizer(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t TokenGrammarRecognizer.childRecognizer(consumingTokenID:)(unint64_t a1)
{
  v2 = v1;
  v56 = *v1;
  v4 = v56;
  v5 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v53 - v9);
  v58 = *(v4 + 80);
  v11 = type metadata accessor for Optional();
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v53 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v60 = &v53 - v24;
  v25 = v1[4];
  VocabularyManager.prefixLookUp.getter(v10);
  v26 = *(v10 + *(v5 + 52));

  outlined destroy of VocabularyManager.PrefixLookup(v10);
  v27 = a1;
  LOBYTE(a1) = specialized Set.contains(_:)(a1, v26);

  v59 = v25;
  v57 = v27;
  if (a1)
  {
    VocabularyManager.prefixLookUp.getter(v7);
    v28 = *(v7 + *(v5 + 48));

    outlined destroy of VocabularyManager.PrefixLookup(v7);
    if (*(v28 + 16))
    {
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
      if (v30)
      {
        LODWORD(v55) = *(*(v28 + 56) + v29);

        v31 = v62;
        v32 = *(v62 + 16);
        v33 = v2 + *(*v2 + 128);
        v34 = v63;
        v32(v19, v33, v63);
        v35 = v58;
        v36 = *(v58 - 8);
        if ((*(v36 + 48))(v19, 1, v58) == 1)
        {
          (*(v31 + 8))(v19, v34);
          (*(v36 + 56))(v22, 1, 1, v35);
        }

        else
        {
          v64 = v55;
          v65 = 1;
          (*(*(v56 + 88) + 40))(&v64, v35);
          (*(v36 + 8))(v19, v35);
        }

LABEL_12:
        v48 = v60;
        (*(v31 + 32))(v60, v22, v34);
        v49 = v61;
        v32(v61, v48, v34);
        v50 = swift_allocObject();
        v51 = v59;

        TokenGrammarRecognizer.init(inputRecognizer:vocabManager:lastConsumedTokenID:)(v49, v51, v57, 0);
        (*(v31 + 8))(v48, v34);
        return v50;
      }
    }
  }

  else
  {
    VocabularyManager.prefixLookUp.getter(v10);
    v37 = v10[10];

    outlined destroy of VocabularyManager.PrefixLookup(v10);
    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v37 + 16) > v27)
    {
      v38 = v37 + 16 * v27;
      v40 = *(v38 + 32);
      v39 = *(v38 + 40);

      v31 = v62;
      v32 = *(v62 + 16);
      v41 = v2 + *(*v2 + 128);
      v42 = v55;
      v34 = v63;
      v32(v55, v41, v63);
      v43 = v58;
      v44 = *(v58 - 8);
      if ((*(v44 + 48))(v42, 1, v58) == 1)
      {

        (*(v31 + 8))(v42, v34);
        v45 = v54;
        (*(v44 + 56))(v54, 1, 1, v43);
        v22 = v45;
      }

      else
      {
        v46 = *(*(v56 + 88) + 48);
        v53 = v32;
        v47 = v54;
        v46(v40, v39, v43);

        (*(v44 + 8))(v42, v43);
        v22 = v47;
        v32 = v53;
      }

      goto LABEL_12;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL TokenGrammarRecognizer.partialMatch.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  (*(v4 + 16))(&v10 - v6, v0 + *(v1 + 128), v3, v5);
  v8 = (*(*(v2 - 8) + 48))(v7, 1, v2) != 1;
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t TokenGrammarRecognizer.fullMatch.getter()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, v0 + *(v1 + 128), v4, v6);
  v9 = *(v3 - 8);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(*(v2 + 88) + 16))(v3);
    v5 = v9;
    v4 = v3;
  }

  (*(v5 + 8))(v8, v4);
  return v10 & 1;
}

uint64_t TokenGrammarRecognizer.__allocating_init(inputRecognizer:vocabManager:lastConsumedTokenID:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  TokenGrammarRecognizer.init(inputRecognizer:vocabManager:lastConsumedTokenID:)(a1, a2, a3, a4 & 1);
  return v8;
}

uint64_t *TokenGrammarRecognizer.init(inputRecognizer:vocabManager:lastConsumedTokenID:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
    v27 = swift_slowAlloc();
    v30 = v27;
    *v15 = 136315138;
    v29 = a4;

    v17 = a3;
    v18 = MEMORY[0x1AC57C2C0](v16, MEMORY[0x1E69E6530]);
    v28 = a2;
    v19 = a1;
    v21 = v20;

    v22 = v18;
    a3 = v17;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v30);
    a1 = v19;
    a2 = v28;

    *(v15 + 4) = v23;
    a4 = v29;
    _os_log_impl(&dword_1A8E85000, v13, v14, "Building token grammar recognizer with stop tokens: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1AC57DBF0](v27, -1, -1);
    MEMORY[0x1AC57DBF0](v15, -1, -1);
  }

  *(v5 + 32) = a2;
  v24 = *(*v5 + 128);
  v25 = type metadata accessor for Optional();
  (*(*(v25 - 8) + 32))(v5 + v24, a1, v25);
  *(v5 + 40) = a3;
  *(v5 + 48) = a4 & 1;
  return v5;
}

char *TokenGrammarRecognizer.deinit()
{

  v1 = *(*v0 + 128);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TokenGrammarRecognizer.__deallocating_deinit()
{
  TokenGrammarRecognizer.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for TokenizerAwareGrammarRecognizer.childRecognizer(consumingTokenID:) in conformance TokenGrammarRecognizer<A>@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = TokenGrammarRecognizer.childRecognizer(consumingTokenID:)(a1);
  *a2 = result;
  return result;
}

uint64_t outlined destroy of VocabularyManager.PrefixLookup(uint64_t a1)
{
  v2 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        specialized _NativeDictionary.copy()();
        v14 = v16;
      }

      result = specialized _NativeDictionary._delete(at:)(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((a1 & 0x100) != 0)
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      result = specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }
  }

  else
  {
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, v6);
    *v2 = v12;
  }

  return result;
}

unint64_t specialized Collection.count.getter(unint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1;
  }

  v3 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v3 = 11;
  }

  return String.UnicodeScalarView.distance(from:to:)(0xFuLL, v3 | (v2 << 16), a1, a2);
}

{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = _StringGuts.validateInclusiveScalarIndex(_:)(0xFuLL, a1, a2);
  v8 = _StringGuts.validateInclusiveScalarIndex(_:)(v6, a1, a2);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        v14 = result >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v15 = _StringObject.sharedUTF8.getter();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(before:)();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = _StringObject.sharedUTF8.getter();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_40;
  }

  return 0;
}

uint64_t specialized Sequence.allSatisfy(_:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_28:
    v18 = 1;
    return v18 & 1;
  }

  v9 = 0;
  v10 = a4 & 0xFFFFFFFFFFFFFFLL;
  v11 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v21[0] = a3;
      v21[1] = v10;
      v13 = v21 + v9;
    }

    else
    {
      v12 = v11;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v12 = _StringObject.sharedUTF8.getter();
      }

      v13 = (v12 + v9);
    }

    v14 = *v13;
    if ((*v13 & 0x80000000) == 0)
    {
LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v19 = (__clz(v14 ^ 0xFF) - 24);
    if (v19 > 2)
    {
      if (v19 == 3)
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
      if (v19 == 1)
      {
        goto LABEL_14;
      }

      v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
      v16 = 2;
    }

LABEL_15:
    LODWORD(v21[0]) = v14;
    v17 = a1(v21);
    if (v4)
    {
      return v18 & 1;
    }

    if ((v17 & 1) == 0)
    {
      break;
    }

    v9 += v16;
    if (v9 >= v5)
    {
      goto LABEL_28;
    }
  }

  v18 = 0;
  return v18 & 1;
}

unint64_t specialized Sequence.allSatisfy(_:)(uint64_t (*a1)(unint64_t *), uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v7 = v6;
  v8 = a4 >> 14;
  v30 = a3 >> 14;
  if (a3 >> 14 == a4 >> 14)
  {
LABEL_53:
    v25 = 1;
    return v25 & 1;
  }

  v11 = a3;
  v12 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v12) = 1;
  }

  v13 = 4 << v12;
  v26 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v27 = a6 & 0xFFFFFFFFFFFFFFLL;
  v14 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a6) & 0xF;
  }

  v28 = v14;

  v33 = v13;
  while (1)
  {
    v16 = v11 & 0xC;
    v17 = (v11 & 1) == 0 || v16 == v13;
    v18 = v17;
    if (!v17)
    {
      break;
    }

    result = v11;
    if (v16 == v13)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a5, a6);
    }

    if (result >> 14 < v30 || result >> 14 >= v8)
    {
      goto LABEL_56;
    }

    if ((result & 1) == 0)
    {
      _StringGuts.scalarAlignSlow(_:)(result, a5, a6);
    }

LABEL_23:
    if ((a6 & 0x1000000000000000) != 0)
    {
      result = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v19 = result;
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if ((a6 & 0x2000000000000000) != 0)
      {
        v31 = a5;
        v32 = v27;
      }

      else if ((a5 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      result = _decodeScalar(_:startingAt:)();
      v19 = result;
      if (!v18)
      {
LABEL_28:
        if (v28 <= v11 >> 16)
        {
          goto LABEL_58;
        }

LABEL_36:
        if ((a6 & 0x1000000000000000) != 0)
        {
          goto LABEL_46;
        }

        goto LABEL_37;
      }
    }

    if (v16 == v33)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a5, a6);
      v11 = result;
    }

    if (v28 <= v11 >> 16)
    {
      goto LABEL_57;
    }

    if (v11)
    {
      goto LABEL_36;
    }

    v11 = v11 & 0xC | _StringGuts.scalarAlignSlow(_:)(v11, a5, a6) & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((a6 & 0x1000000000000000) != 0)
    {
LABEL_46:
      v11 = String.UnicodeScalarView._foreignIndex(after:)();
      goto LABEL_47;
    }

LABEL_37:
    v20 = v11 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v31 = a5;
      v32 = v27;
      v22 = *(&v31 + v20);
    }

    else
    {
      v21 = v26;
      if ((a5 & 0x1000000000000000) == 0)
      {
        v21 = _StringObject.sharedUTF8.getter();
      }

      v22 = *(v21 + v20);
    }

    v23 = v22;
    v24 = __clz(v22 ^ 0xFF) - 24;
    if (v23 >= 0)
    {
      LOBYTE(v24) = 1;
    }

    v11 = ((v20 + v24) << 16) | 5;
LABEL_47:
    LODWORD(v31) = v19;
    result = a1(&v31);
    if (v7)
    {

      return v25 & 1;
    }

    if ((result & 1) == 0)
    {

      v25 = 0;
      return v25 & 1;
    }

    v13 = v33;
    if (v8 == v11 >> 14)
    {

      goto LABEL_53;
    }
  }

  if (v11 >> 14 >= v30)
  {
    result = v11;
    if (v11 >> 14 < v8)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}