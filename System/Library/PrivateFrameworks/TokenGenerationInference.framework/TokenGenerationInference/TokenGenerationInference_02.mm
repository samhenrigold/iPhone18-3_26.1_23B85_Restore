uint64_t specialized static LogitIndexSet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContiguousBitSet();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for LogitIndexSet(0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = (&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v32 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = (&v32 - v23);
  outlined init with copy of LogitIndexSet(a1, &v32 - v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v24;
    v25 = v24[1];
    outlined init with copy of LogitIndexSet(a2, v17);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = v26 == *v17 && v25 == v17[1];
    }

    else
    {
      (*(v5 + 32))(v9, v17, v4);
      v28 = ContiguousBitSet.isEquivalent(to:)();
      (*(v5 + 8))(v9, v4);
    }
  }

  else
  {
    v29 = *(v5 + 32);
    v29(v12, v24, v4);
    outlined init with copy of LogitIndexSet(a2, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = ContiguousBitSet.isEquivalent(to:)();
      (*(v5 + 8))(v12, v4);
    }

    else
    {
      v29(v9, v21, v4);
      v28 = MEMORY[0x223D8D5F0](v12, v9);
      v30 = *(v5 + 8);
      v30(v9, v4);
      v30(v12, v4);
    }
  }

  return v28 & 1;
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of RandomNumberGenerator(&v12, v10 + 40 * a1 + 32);
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed String) -> (@out DeterministicLanguageModelProtocol, @error @owned Error))?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined destroy of LogitPresampler?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15LogitPresampler_pSgMd, &_s24TokenGenerationInference15LogitPresampler_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TwoStageSpeculativeDecoder.fillBufferedTokensIfEmpty()(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    outlined destroy of LogitPresampler?(v4 + 56);

    v5 = TwoStageSpeculativeDecoder.fillBufferedTokensIfEmpty();
  }

  else
  {
    *(v4 + 144) = a1;
    outlined destroy of LogitPresampler?(v4 + 56);
    v5 = TwoStageSpeculativeDecoder.fillBufferedTokensIfEmpty();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t TwoStageSpeculativeDecoder.fillBufferedTokensIfEmpty()()
{
  v1 = v0[18];
  v2 = v0[15];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSi_24TokenGenerationInference15LogitCollection_ps12Zip2SequenceVySaySiGSayAeF_pGGTt0g5Tf4g_n(v2, v1);
  v0[19] = v3;

  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = TwoStageSpeculativeDecoder.fillBufferedTokensIfEmpty();
  v5 = v0[14];

  return TwoStageSpeculativeDecoder.fillBufferedTokens(_:_:)(v5, v3);
}

{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = TwoStageSpeculativeDecoder.fillBufferedTokensIfEmpty();
  }

  else
  {
    v2 = TwoStageSpeculativeDecoder.fillBufferedTokensIfEmpty();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  *(v1 + 96) = v0;
  return MEMORY[0x2822009F8](TwoStageSpeculativeDecoder.fillBufferedTokensIfEmpty(), 0, 0);
}

{
  if (*(*(v0[12] + 320) + 16))
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = TwoStageSpeculativeDecoder.fillBufferedTokensIfEmpty();

    return TwoStageSpeculativeDecoder.generateDraftTokens()();
  }
}

{
  v1 = v0[12];
  outlined init with copy of DeterministicLanguageModelProtocol(v1 + 64, (v0 + 2));
  v3 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  outlined init with copy of DeterministicLanguageModelProtocol(v1 + 232, (v0 + 7));
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = TwoStageSpeculativeDecoder.fillBufferedTokensIfEmpty();
  v5 = v0[15];

  return DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:)(v5, (v0 + 7), v3, v2);
}

{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSi_24TokenGenerationInference15LogitCollection_ps12Zip2SequenceVySaySiGSayAeF_pGGTt0g5Tf4g_n(void *a1, uint64_t a2)
{
  if (*(a2 + 16) >= a1[2])
  {
    v4 = a1[2];
  }

  else
  {
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi24TokenGenerationInference15LogitCollection_pGMd, &_ss18_DictionaryStorageCySi24TokenGenerationInference15LogitCollection_pGMR);
    v5 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v7 = v5;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, a2, 1, &v7);
  return v7;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, uint64_t a2, char a3, void *a4)
{
  LOBYTE(v5) = a3;
  v8 = a1[2];

  if (!v8 || !*(a2 + 16))
  {
    goto LABEL_24;
  }

  v9 = a1[4];
  outlined init with copy of DeterministicLanguageModelProtocol(a2 + 32, v39);
  v40 = v9;
  outlined init with take of RandomNumberGenerator(v39, v38);
  v10 = *a4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v12;
  if (v10[3] < v16)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, v5 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v17)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v21 = v11;
  specialized _NativeDictionary.copy()();
  v11 = v21;
  if (v17)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(v38);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      return;
    }

    goto LABEL_30;
  }

LABEL_12:
  v22 = *a4;
  *(*a4 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v22[6] + 8 * v11) = v9;
  outlined init with take of RandomNumberGenerator(v38, v22[7] + 40 * v11);
  v23 = v22[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    _StringGuts.grow(_:)(30);
    MEMORY[0x223D8E780](0xD00000000000001BLL, 0x8000000220AFB7D0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x223D8E780](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v8 != 1)
  {
    v25 = a1 + 5;
    v9 = a2 + 72;
    v26 = 1;
    while (v26 < a1[2])
    {
      v27 = *(a2 + 16);
      if (v26 == v27)
      {
        goto LABEL_24;
      }

      if (v26 >= v27)
      {
        goto LABEL_29;
      }

      v5 = *v25;
      outlined init with copy of DeterministicLanguageModelProtocol(v9, v39);
      v40 = v5;
      outlined init with take of RandomNumberGenerator(v39, v38);
      v28 = *a4;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_26;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, 1);
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v17)
      {
        goto LABEL_9;
      }

      v35 = *a4;
      *(*a4 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      *(v35[6] + 8 * v29) = v5;
      outlined init with take of RandomNumberGenerator(v38, v35[7] + 40 * v29);
      v36 = v35[2];
      v15 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v15)
      {
        goto LABEL_27;
      }

      ++v26;
      v35[2] = v37;
      ++v25;
      v9 += 40;
      if (v8 == v26)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_28;
  }

LABEL_24:

  swift_bridgeObjectRelease_n();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x223D8F400](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  type metadata accessor for UUID();
  v2 = MEMORY[0x277CC95F0];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x277CC95F0], &lazy protocol witness table cache variable for type UUID and conformance UUID, v2, MEMORY[0x277CC9610]);
}

{
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for Prompt.SpecialToken();
  v2 = MEMORY[0x277D71DB0];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Prompt.SpecialToken and conformance Prompt.SpecialToken, MEMORY[0x277D71DB0], MEMORY[0x277D71DB8]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x277D71DB0], &lazy protocol witness table cache variable for type Prompt.SpecialToken and conformance Prompt.SpecialToken, v2, MEMORY[0x277D71DC0]);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

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

uint64_t TwoStageSpeculativeDecoder.fillBufferedTokens(_:_:)(uint64_t a1, uint64_t a2)
{
  v3[39] = a2;
  v3[40] = v2;
  v3[38] = a1;
  return MEMORY[0x2822009F8](TwoStageSpeculativeDecoder.fillBufferedTokens(_:_:), 0, 0);
}

uint64_t TwoStageSpeculativeDecoder.fillBufferedTokens(_:_:)()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v1 + 104);
  v5 = *(v1 + 56);

  if (!*(v2 + 16))
  {
    v7 = 0;
LABEL_54:

    goto LABEL_66;
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    *(v0 + 352) = v6;
    *(v0 + 360) = v7;
    *(v0 + 336) = v4;
    *(v0 + 344) = v5;
    *(v0 + 328) = v3;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    if ((v12 & 1) == 0)
    {
      goto LABEL_54;
    }

    outlined init with copy of DeterministicLanguageModelProtocol(*(*(v0 + 312) + 56) + 40 * v11, v0 + 56);
    outlined init with take of RandomNumberGenerator((v0 + 56), v0 + 16);
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
    if (LogitCollection.isEmpty.getter(v13, v14))
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      goto LABEL_66;
    }

    if (v3 >> 62)
    {
      v15 = __CocoaSet.count.getter();
      if (!v15)
      {
LABEL_22:
        v16 = MEMORY[0x277D84F90];
        goto LABEL_23;
      }
    }

    else
    {
      v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v15)
      {
        goto LABEL_22;
      }
    }

    *(v0 + 296) = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      goto LABEL_96;
    }

    v16 = *(v0 + 296);
    if ((v3 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v15; ++i)
      {
        v18 = *(MEMORY[0x223D8EEA0](i, v3) + 16);
        swift_unknownObjectRelease();
        *(v0 + 296) = v16;
        v20 = *(v16 + 16);
        v19 = *(v16 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v16 = *(v0 + 296);
        }

        *(v16 + 16) = v20 + 1;
        *(v16 + 8 * v20 + 32) = v18;
      }
    }

    else
    {
      v21 = v3 + 32;
      v22 = *(v16 + 16);
      do
      {
        v23 = *(*v21 + 16);
        *(v0 + 296) = v16;
        v24 = *(v16 + 24);
        if (v22 >= v24 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v22 + 1, 1);
          v16 = *(v0 + 296);
        }

        *(v16 + 16) = v22 + 1;
        *(v16 + 8 * v22 + 32) = v23;
        v21 += 8;
        ++v22;
        --v15;
      }

      while (v15);
    }

LABEL_23:
    v25 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(v16);
    *(v0 + 368) = v25;

    v26 = *(v0 + 320);
    if (!*(v25 + 16))
    {
      goto LABEL_26;
    }

    if (*(v26 + 152) == 1)
    {
      if (*(v26 + 153) == 1)
      {
        outlined init with copy of DeterministicLanguageModelProtocol(v26 + 16, v0 + 216);
        v104 = *(v0 + 240);
        v105 = *(v0 + 248);
        __swift_project_boxed_opaque_existential_1((v0 + 216), v104);
        *(v0 + 256) = 0u;
        *(v0 + 272) = 0u;
        *(v0 + 288) = 0;
        v106 = swift_task_alloc();
        *(v0 + 376) = v106;
        *v106 = v0;
        v106[1] = TwoStageSpeculativeDecoder.fillBufferedTokens(_:_:);

        return DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:)(v0 + 176, v5, v0 + 256, 0, v104, v105);
      }

LABEL_26:

      v27 = *(v26 + 216);
      v28 = *(v26 + 224);
      __swift_project_boxed_opaque_existential_1((v26 + 192), v27);
      v29 = (*(v28 + 8))(v0 + 16, v27, v28);
      if (v30)
      {
        goto LABEL_56;
      }

      v31 = v29;
      goto LABEL_29;
    }

    v32 = *(v26 + 148);
    v33 = *(v26 + 216);
    v34 = *(v26 + 224);
    __swift_project_boxed_opaque_existential_1((v26 + 192), v33);
    v31 = (*(v34 + 16))(v0 + 16, v25, v33, v34, v32);
    v36 = v35;

    if (v36)
    {
LABEL_56:

      if (one-time initialization token for speculativeDecode == -1)
      {
        goto LABEL_57;
      }

      goto LABEL_102;
    }

LABEL_29:
    v38 = *(v0 + 336);
    v37 = *(v0 + 344);
    v39 = *(v0 + 320);
    v40 = *(v0 + 328);
    outlined init with copy of DeterministicLanguageModelProtocol(v39 + 64, v0 + 96);
    v41 = *(v0 + 120);
    v42 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v41);
    v4 = (*(v42 + 16))(v38, v31, 0, v41, v42);
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    outlined init with copy of DeterministicLanguageModelProtocol(v39 + 16, v0 + 136);
    v43 = *(v0 + 160);
    v44 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v43);
    v45 = (*(v44 + 16))(v37, v31, 0, v43, v44);
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    if (!(v40 >> 62))
    {
      v46 = *((*(v0 + 328) & 0xFFFFFFFFFFFFFF8) + 0x10);
      v47 = *(v0 + 328);
      if (!v46)
      {
        break;
      }

      goto LABEL_33;
    }

    v46 = __CocoaSet.count.getter();
    v47 = *(v0 + 328);
    if (!v46)
    {
      break;
    }

LABEL_33:
    v108 = v45;
    v48 = 0;
    v49 = v47 & 0xC000000000000001;
    v7 = v47 & 0xFFFFFFFFFFFFFF8;
    v50 = v47 + 32;
    while (1)
    {
      if (v49)
      {
        v51 = MEMORY[0x223D8EEA0](v48, *(v0 + 328));
        v52 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_94;
        }
      }

      else
      {
        if (v48 >= *(v7 + 16))
        {
          goto LABEL_95;
        }

        v51 = *(v50 + 8 * v48);

        v52 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }
      }

      if (*(v51 + 16) == v31)
      {
        break;
      }

      ++v48;
      if (v52 == v46)
      {
        v59 = *(v0 + 320);

        v60 = *(v59 + 320);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v59 + 320) = v60;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v67 = *(v0 + 320);
          v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v60 + 2) + 1, 1, v60);
          *(v67 + 320) = v60;
        }

        v5 = v108;
        v63 = *(v60 + 2);
        v62 = *(v60 + 3);
        if (v63 >= v62 >> 1)
        {
          v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v60);
        }

        v64 = *(v0 + 320);
        *(v60 + 2) = v63 + 1;
        v65 = &v60[32 * v63];
        *(v65 + 4) = v4;
        *(v65 + 5) = v108;
        *(v65 + 6) = v31;
        v65[56] = 1;
        *(v64 + 320) = v60;
        v6 = *(v0 + 352);
        v7 = *(v0 + 360);
        v3 = MEMORY[0x277D84F90];
        goto LABEL_4;
      }
    }

    v53 = *(v0 + 352);

    v7 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      goto LABEL_97;
    }

    v54 = *(v0 + 320);
    v3 = *(v51 + 24);
    v55 = *(v54 + 320);

    v56 = swift_isUniquelyReferenced_nonNull_native();
    *(v54 + 320) = v55;
    if ((v56 & 1) == 0)
    {
      v66 = *(v0 + 320);
      v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v55 + 2) + 1, 1, v55);
      *(v66 + 320) = v55;
    }

    v58 = *(v55 + 2);
    v57 = *(v55 + 3);
    if (v58 >= v57 >> 1)
    {
      v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v55);
    }

    v8 = *(v0 + 320);
    *(v55 + 2) = v58 + 1;
    v9 = &v55[32 * v58];
    v5 = v108;
    *(v9 + 4) = v4;
    *(v9 + 5) = v108;
    *(v9 + 6) = v31;
    v9[56] = 0;
    *(v8 + 320) = v55;

    v6 = v7;
LABEL_4:
    v10 = *(v0 + 312);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (!*(v10 + 16))
    {
      goto LABEL_54;
    }
  }

  v72 = *(v0 + 320);

  v73 = *(v72 + 320);
  v74 = swift_isUniquelyReferenced_nonNull_native();
  *(v72 + 320) = v73;
  if ((v74 & 1) == 0)
  {
    v107 = *(v0 + 320);
    v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 2) + 1, 1, v73);
    *(v107 + 320) = v73;
  }

  v76 = *(v73 + 2);
  v75 = *(v73 + 3);
  if (v76 >= v75 >> 1)
  {
    v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v73);
  }

  v77 = *(v0 + 320);
  *(v73 + 2) = v76 + 1;
  v78 = &v73[32 * v76];
  *(v78 + 4) = v4;
  *(v78 + 5) = v45;
  *(v78 + 6) = v31;
  v78[56] = 1;
  *(v77 + 320) = v73;
  while (2)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v7 = *(v0 + 360);
LABEL_66:
    v79 = *(v0 + 320);
    v80 = *(v79 + 328);
    v81 = __OFADD__(v80, v7);
    v82 = v80 + v7;
    if (v81)
    {
LABEL_98:
      __break(1u);
    }

    else
    {
      *(v79 + 328) = v82;
      if (one-time initialization token for device == -1)
      {
        goto LABEL_68;
      }
    }

    swift_once();
LABEL_68:
    v83 = type metadata accessor for Logger();
    __swift_project_value_buffer(v83, static Log.device);

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();
    v86 = os_log_type_enabled(v84, v85);
    v87 = *(v0 + 320);
    if (v86)
    {
      v88 = swift_slowAlloc();
      *v88 = 134218240;
      *(v88 + 4) = *(*(v87 + 320) + 16);

      *(v88 + 12) = 2048;
      *(v88 + 14) = v7;
      _os_log_impl(&dword_220940000, v84, v85, "Produced token count = %ld. Accepting draft count = %ld", v88, 0x16u);
      MEMORY[0x223D90A10](v88, -1, -1);
    }

    else
    {
    }

    if (v7 >= 1)
    {
      v89 = *(v0 + 320);
      v90 = *(v89 + 368);
      v81 = __OFADD__(v90, 1);
      v91 = v90 + 1;
      if (!v81)
      {
        *(v89 + 368) = v91;
        break;
      }

LABEL_101:
      __break(1u);
LABEL_102:
      swift_once();
LABEL_57:
      v68 = type metadata accessor for Logger();
      __swift_project_value_buffer(v68, static Log.speculativeDecode);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_220940000, v69, v70, "Reached termination of draft language model", v71, 2u);
        MEMORY[0x223D90A10](v71, -1, -1);
      }

      continue;
    }

    break;
  }

  v92 = *(v0 + 320);
  v93 = *(v92 + 376);
  v81 = __OFADD__(v93, 1);
  v94 = v93 + 1;
  if (v81)
  {
    __break(1u);
    goto LABEL_101;
  }

  *(v92 + 376) = v94;
  if (*(v92 + 120) == 1)
  {
    v95 = *(v0 + 320);
    v96 = *(v95 + 312);
    v97 = *(*(v95 + 320) + 16);
    if (v96 >= v97)
    {
      if (v96 == v97 || v96 < 2)
      {

        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v98, v99))
        {
          goto LABEL_86;
        }

        v100 = swift_slowAlloc();
        *v100 = 134217984;
        *(v100 + 4) = *(v95 + 312);

        v101 = "Keeping draftCount at %ld";
      }

      else
      {
        *(v95 + 312) = v96 - 1;

        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v98, v99))
        {
          goto LABEL_86;
        }

        v100 = swift_slowAlloc();
        *v100 = 134217984;
        *(v100 + 4) = *(v95 + 312);

        v101 = "Adjusting draftCount down to %ld";
      }

LABEL_85:
      _os_log_impl(&dword_220940000, v98, v99, v101, v100, 0xCu);
      MEMORY[0x223D90A10](v100, -1, -1);
    }

    else
    {
      *(v95 + 312) = v96 + 1;

      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 134217984;
        *(v100 + 4) = *(v95 + 312);

        v101 = "Adjusting draftCount up to %ld";
        goto LABEL_85;
      }

LABEL_86:
    }
  }

  v102 = *(v0 + 8);

  return v102();
}

{
  v2 = *v1;
  *(*v1 + 384) = v0;

  outlined destroy of LogitPresampler?(v2 + 256);
  if (v0)
  {

    v3 = TwoStageSpeculativeDecoder.fillBufferedTokens(_:_:);
  }

  else
  {
    v3 = TwoStageSpeculativeDecoder.fillBufferedTokens(_:_:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 368);
  v2 = *(v0 + 320);
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  v3 = v2[27];
  v4 = v2[28];
  __swift_project_boxed_opaque_existential_1(v2 + 24, v3);
  v5 = (*(v4 + 24))(v0 + 16, v0 + 176, v1, v3, v4);
  LOBYTE(v2) = v6;

  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  if ((v2 & 1) == 0)
  {
    while (1)
    {
      v16 = *(v0 + 336);
      v15 = *(v0 + 344);
      v17 = *(v0 + 320);
      v18 = *(v0 + 328);
      outlined init with copy of DeterministicLanguageModelProtocol(v17 + 64, v0 + 96);
      v19 = *(v0 + 120);
      v20 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v19);
      v21 = (*(v20 + 16))(v16, v5, 0, v19, v20);
      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
      outlined init with copy of DeterministicLanguageModelProtocol(v17 + 16, v0 + 136);
      v22 = *(v0 + 160);
      v23 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v22);
      v108 = (*(v23 + 16))(v15, v5, 0, v22, v23);
      __swift_destroy_boxed_opaque_existential_1((v0 + 136));
      if (v18 >> 62)
      {
        v24 = __CocoaSet.count.getter();
        v25 = *(v0 + 328);
        if (!v24)
        {
LABEL_58:
          v72 = *(v0 + 320);

          v73 = *(v72 + 320);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v72 + 320) = v73;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v107 = *(v0 + 320);
            v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 2) + 1, 1, v73);
            *(v107 + 320) = v73;
          }

          v76 = *(v73 + 2);
          v75 = *(v73 + 3);
          if (v76 >= v75 >> 1)
          {
            v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v73);
          }

          v77 = *(v0 + 320);
          *(v73 + 2) = v76 + 1;
          v78 = &v73[32 * v76];
          *(v78 + 4) = v21;
          *(v78 + 5) = v108;
          *(v78 + 6) = v5;
          v78[56] = 1;
          *(v77 + 320) = v73;
          goto LABEL_6;
        }
      }

      else
      {
        v24 = *((*(v0 + 328) & 0xFFFFFFFFFFFFFF8) + 0x10);
        v25 = *(v0 + 328);
        if (!v24)
        {
          goto LABEL_58;
        }
      }

      v26 = 0;
      v27 = v25 & 0xC000000000000001;
      v11 = v25 & 0xFFFFFFFFFFFFFF8;
      v28 = v25 + 32;
      while (1)
      {
        if (v27)
        {
          v29 = MEMORY[0x223D8EEA0](v26, *(v0 + 328));
          v30 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_92;
          }
        }

        else
        {
          if (v26 >= *(v11 + 16))
          {
            goto LABEL_93;
          }

          v29 = *(v28 + 8 * v26);

          v30 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            goto LABEL_96;
          }
        }

        if (*(v29 + 16) == v5)
        {
          break;
        }

        ++v26;
        if (v30 == v24)
        {
          v41 = *(v0 + 320);

          v42 = *(v41 + 320);
          v43 = swift_isUniquelyReferenced_nonNull_native();
          *(v41 + 320) = v42;
          if ((v43 & 1) == 0)
          {
            v71 = *(v0 + 320);
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
            *(v71 + 320) = v42;
          }

          v45 = *(v42 + 2);
          v44 = *(v42 + 3);
          if (v45 >= v44 >> 1)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v42);
          }

          v46 = *(v0 + 320);
          *(v42 + 2) = v45 + 1;
          v47 = &v42[32 * v45];
          *(v47 + 4) = v21;
          *(v47 + 5) = v108;
          *(v47 + 6) = v5;
          v47[56] = 1;
          *(v46 + 320) = v42;
          v40 = *(v0 + 352);
          v11 = *(v0 + 360);
          v33 = MEMORY[0x277D84F90];
          goto LABEL_34;
        }
      }

      v31 = *(v0 + 352);

      v11 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_95;
      }

      v32 = *(v0 + 320);
      v33 = *(v29 + 24);
      v34 = *(v32 + 320);

      v35 = swift_isUniquelyReferenced_nonNull_native();
      *(v32 + 320) = v34;
      if ((v35 & 1) == 0)
      {
        v70 = *(v0 + 320);
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
        *(v70 + 320) = v34;
      }

      v37 = *(v34 + 2);
      v36 = *(v34 + 3);
      if (v37 >= v36 >> 1)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v34);
      }

      v38 = *(v0 + 320);
      *(v34 + 2) = v37 + 1;
      v39 = &v34[32 * v37];
      *(v39 + 4) = v21;
      *(v39 + 5) = v108;
      *(v39 + 6) = v5;
      v39[56] = 0;
      *(v38 + 320) = v34;

      v40 = v11;
LABEL_34:
      v48 = *(v0 + 312);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      if (!*(v48 + 16) || (*(v0 + 352) = v40, *(v0 + 360) = v11, *(v0 + 336) = v21, *(v0 + 344) = v108, *(v0 + 328) = v33, v49 = specialized __RawDictionaryStorage.find<A>(_:)(v21), (v50 & 1) == 0))
      {

        goto LABEL_64;
      }

      outlined init with copy of DeterministicLanguageModelProtocol(*(*(v0 + 312) + 56) + 40 * v49, v0 + 56);
      outlined init with take of RandomNumberGenerator((v0 + 56), v0 + 16);
      v51 = *(v0 + 40);
      v52 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v51);
      if (LogitCollection.isEmpty.getter(v51, v52))
      {

        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
        goto LABEL_64;
      }

      if (v33 >> 62)
      {
        v53 = __CocoaSet.count.getter();
        if (v53)
        {
LABEL_39:
          *(v0 + 296) = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53 & ~(v53 >> 63), 0);
          if (v53 < 0)
          {
            goto LABEL_94;
          }

          v54 = *(v0 + 296);
          if ((v33 & 0xC000000000000001) != 0)
          {
            for (i = 0; i != v53; ++i)
            {
              v56 = *(MEMORY[0x223D8EEA0](i, v33) + 16);
              swift_unknownObjectRelease();
              *(v0 + 296) = v54;
              v58 = *(v54 + 16);
              v57 = *(v54 + 24);
              if (v58 >= v57 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1);
                v54 = *(v0 + 296);
              }

              *(v54 + 16) = v58 + 1;
              *(v54 + 8 * v58 + 32) = v56;
            }
          }

          else
          {
            v59 = v33 + 32;
            v60 = *(v54 + 16);
            do
            {
              v61 = *(*v59 + 16);
              *(v0 + 296) = v54;
              v62 = *(v54 + 24);
              if (v60 >= v62 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v60 + 1, 1);
                v54 = *(v0 + 296);
              }

              *(v54 + 16) = v60 + 1;
              *(v54 + 8 * v60 + 32) = v61;
              v59 += 8;
              ++v60;
              --v53;
            }

            while (v53);
          }

          goto LABEL_53;
        }
      }

      else
      {
        v53 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v53)
        {
          goto LABEL_39;
        }
      }

      v54 = MEMORY[0x277D84F90];
LABEL_53:
      v63 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(v54);
      *(v0 + 368) = v63;

      v64 = *(v0 + 320);
      if (*(v63 + 16))
      {
        if (*(v64 + 152) == 1)
        {
          if (*(v64 + 153) == 1)
          {
            outlined init with copy of DeterministicLanguageModelProtocol(v64 + 16, v0 + 216);
            v104 = *(v0 + 240);
            v105 = *(v0 + 248);
            __swift_project_boxed_opaque_existential_1((v0 + 216), v104);
            *(v0 + 256) = 0u;
            *(v0 + 272) = 0u;
            *(v0 + 288) = 0;
            v106 = swift_task_alloc();
            *(v0 + 376) = v106;
            *v106 = v0;
            v106[1] = TwoStageSpeculativeDecoder.fillBufferedTokens(_:_:);

            return DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:)(v0 + 176, v108, v0 + 256, 0, v104, v105);
          }

          goto LABEL_8;
        }

        v65 = *(v64 + 148);
        v66 = *(v64 + 216);
        v67 = *(v64 + 224);
        __swift_project_boxed_opaque_existential_1((v64 + 192), v66);
        v5 = (*(v67 + 16))(v0 + 16, v63, v66, v67, v65);
        v69 = v68;

        if (v69)
        {
          break;
        }
      }

      else
      {
LABEL_8:

        v12 = *(v64 + 216);
        v13 = *(v64 + 224);
        __swift_project_boxed_opaque_existential_1((v64 + 192), v12);
        v5 = (*(v13 + 8))(v0 + 16, v12, v13);
        if (v14)
        {
          break;
        }
      }
    }
  }

  if (one-time initialization token for speculativeDecode != -1)
  {
    goto LABEL_100;
  }

  while (1)
  {
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.speculativeDecode);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_220940000, v8, v9, "Reached termination of draft language model", v10, 2u);
      MEMORY[0x223D90A10](v10, -1, -1);
    }

LABEL_6:
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v11 = *(v0 + 360);
LABEL_64:
    v79 = *(v0 + 320);
    v80 = *(v79 + 328);
    v81 = __OFADD__(v80, v11);
    v82 = v80 + v11;
    if (v81)
    {
LABEL_96:
      __break(1u);
    }

    else
    {
      *(v79 + 328) = v82;
      if (one-time initialization token for device == -1)
      {
        goto LABEL_66;
      }
    }

    swift_once();
LABEL_66:
    v83 = type metadata accessor for Logger();
    __swift_project_value_buffer(v83, static Log.device);

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();
    v86 = os_log_type_enabled(v84, v85);
    v87 = *(v0 + 320);
    if (v86)
    {
      v88 = swift_slowAlloc();
      *v88 = 134218240;
      *(v88 + 4) = *(*(v87 + 320) + 16);

      *(v88 + 12) = 2048;
      *(v88 + 14) = v11;
      _os_log_impl(&dword_220940000, v84, v85, "Produced token count = %ld. Accepting draft count = %ld", v88, 0x16u);
      MEMORY[0x223D90A10](v88, -1, -1);
    }

    else
    {
    }

    if (v11 < 1)
    {
      goto LABEL_72;
    }

    v89 = *(v0 + 320);
    v90 = *(v89 + 368);
    v81 = __OFADD__(v90, 1);
    v91 = v90 + 1;
    if (!v81)
    {
      break;
    }

LABEL_99:
    __break(1u);
LABEL_100:
    swift_once();
  }

  *(v89 + 368) = v91;
LABEL_72:
  v92 = *(v0 + 320);
  v93 = *(v92 + 376);
  v81 = __OFADD__(v93, 1);
  v94 = v93 + 1;
  if (v81)
  {
    __break(1u);
    goto LABEL_99;
  }

  *(v92 + 376) = v94;
  if (*(v92 + 120) == 1)
  {
    v95 = *(v0 + 320);
    v96 = *(v95 + 312);
    v97 = *(*(v95 + 320) + 16);
    if (v96 >= v97)
    {
      if (v96 == v97 || v96 < 2)
      {

        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v98, v99))
        {
          goto LABEL_84;
        }

        v100 = swift_slowAlloc();
        *v100 = 134217984;
        *(v100 + 4) = *(v95 + 312);

        v101 = "Keeping draftCount at %ld";
      }

      else
      {
        *(v95 + 312) = v96 - 1;

        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v98, v99))
        {
          goto LABEL_84;
        }

        v100 = swift_slowAlloc();
        *v100 = 134217984;
        *(v100 + 4) = *(v95 + 312);

        v101 = "Adjusting draftCount down to %ld";
      }

LABEL_83:
      _os_log_impl(&dword_220940000, v98, v99, v101, v100, 0xCu);
      MEMORY[0x223D90A10](v100, -1, -1);
    }

    else
    {
      *(v95 + 312) = v96 + 1;

      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 134217984;
        *(v100 + 4) = *(v95 + 312);

        v101 = "Adjusting draftCount up to %ld";
        goto LABEL_83;
      }

LABEL_84:
    }
  }

  v102 = *(v0 + 8);

  return v102();
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];

  return v1();
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference26TwoStageSpeculativeDecoderC0D9WithNodes33_997C69FF02F080FB13F8B8AFFD1FC4ECLLVGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference26TwoStageSpeculativeDecoderC0D9WithNodes33_997C69FF02F080FB13F8B8AFFD1FC4ECLLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7Float16VGMd, &_ss23_ContiguousArrayStorageCys7Float16VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference03OneD34HealingPrefixMatchingLanguageModelC9NodeState33_290950C585633F03B8505F4D810570AFLLVGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference03OneD34HealingPrefixMatchingLanguageModelC9NodeState33_290950C585633F03B8505F4D810570AFLLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference17BeamSearchDecoderC0G4Node33_A7FE2FA43B970D1C0025663E659989E9LLVGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference17BeamSearchDecoderC0G4Node33_A7FE2FA43B970D1C0025663E659989E9LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference13_EncodedImage33_EDB8B1D8F9C2943CA163A428958D5177LLVGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference13_EncodedImage33_EDB8B1D8F9C2943CA163A428958D5177LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference21ClassifierOutputClassVGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference21ClassifierOutputClassVGMR);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference0D4MaskVGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference0D4MaskVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference0D6RecordVGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference0D6RecordVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference14IndexValuePair33_7215BA6A07D3315066E5059E17F899B1LLVGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference14IndexValuePair33_7215BA6A07D3315066E5059E17F899B1LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223D8EB00](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      specialized Set._Variant.insert(_:)(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x223D8F400](*(*v2 + 40));
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
  result = MEMORY[0x223D8F400](*(*v3 + 40), v4);
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

void *specialized _NativeSet.filter(_:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  v8 = 8 * v7;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v25[0] = v7;
    v25[1] = v25;
    MEMORY[0x28223BE20](a1, v8);
    v10 = v25 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    v26 = 0;
    v11 = 0;
    v12 = 1 << *(a3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a3 + 56);
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v7 = v16 | (v11 << 6);
      v28[0] = *(*(a3 + 48) + 8 * v7);
      v19 = v27(v28);
      if (v4)
      {

        return swift_willThrow();
      }

      if (v19)
      {
        *&v10[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
        if (__OFADD__(v26++, 1))
        {
          __break(1u);
          return specialized _NativeSet.extractSubset(using:count:)(v10, v25[0], v26, a3);
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        return specialized _NativeSet.extractSubset(using:count:)(v10, v25[0], v26, a3);
      }

      v18 = *(a3 + 56 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:
    v22 = v8;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v8 = v22;
  }

  v23 = swift_slowAlloc();
  v24 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySiG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_aB13VKXEfU_Si_TG5AHxSbs5Error_pRi_zRi0_zlySiIsgndzo_Tf1nc_n(v23, v7, a3, v27);

  result = MEMORY[0x223D90A10](v23, -1, -1);
  if (!v4)
  {
    return v24;
  }

  return result;
}

void sub_2209624A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = MEMORY[0x223D8F400](*(v9 + 40), v16);
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v9);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v10 = specialized closure #1 in _NativeSet.intersection(_:)(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v12, v6, a2, a1);

    MEMORY[0x223D90A10](v12, -1, -1);
  }

  return v10;
}

void sub_220962860(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t specialized closure #1 in _NativeSet.intersection(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v22 = 0;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = a4 + 56;
    v38 = 0;
LABEL_24:
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_31:
      v31 = v28 | (v22 << 6);
      v32 = *(*(a3 + 48) + 8 * v31);
      result = MEMORY[0x223D8F400](*(a4 + 40), v32);
      v33 = -1 << *(a4 + 32);
      v34 = result & ~v33;
      if ((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (*(*(a4 + 48) + 8 * v34) != v32)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v37 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_41;
        }

        ++v38;
      }
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
LABEL_38:

        return specialized _NativeSet.extractSubset(using:count:)(v37, a2, v38, a3);
      }

      v30 = *(a3 + 56 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v38 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 8 * (v12 | (v6 << 6)));
      result = MEMORY[0x223D8F400](*(a3 + 40), v15);
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 8 * v17) == v15)
        {
LABEL_18:
          v37[v18] |= v19;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_42;
          }

          ++v38;
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 8 * v17) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(a4 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySiG_Sfs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v16 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = v16;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v14 = v9;
    a1(&v15, &v14);
    if (v3)
    {
      break;
    }

    v10 = v15;
    v16 = v5;
    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    if (v12 >= v11 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      v5 = v16;
    }

    *(v5 + 16) = v12 + 1;
    *(v5 + 4 * v12 + 32) = v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

void _s10Accelerate6vForceO3exp_6resultyx_q_ztAA0A6BufferRzAA0a7MutableE0R_Sf7ElementRtzSfAHRt_r0_lFZSaySfG_AKTt1g5(uint64_t a1, char **a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v5 = *a2;
  if (v4 != *(*a2 + 2))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 >> 31)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = a2;
  v3 = a1;
  v6 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_7:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  }

  vvexpf(v5 + 8, (v3 + 32), &v6);
  *v2 = v5;
}

void sub_220962F58(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Float and conformance Float()
{
  result = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Float and conformance Float);
  }

  return result;
}

id protocol witness for RandomNumberGenerator.next() in conformance SeedableRandomNumberGenerator()
{
  if (*v0)
  {
    return [*v0 next];
  }

  v2 = 0;
  MEMORY[0x223D90A30](&v2, 8);
  return v2;
}

Swift::Int __swiftcall MaskedLanguageModel.node(forPreviousNode:token:isPrompt:)(Swift::Int forPreviousNode, Swift::Int token, Swift::Bool isPrompt)
{
  v6 = v3;
  v7 = isPrompt;
  swift_beginAccess();
  if (forPreviousNode < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = *(v3 + 16);
  v11 = *(v10 + 16);
  if (v11 <= forPreviousNode)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
    *(v6 + 16) = result;
    goto LABEL_7;
  }

  v12 = (v10 + 24 * forPreviousNode);
  v13 = v12[4];
  v14 = v12[5];
  v15 = v12[6];
  if (*(v15 + 16))
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(token);
    if (v17)
    {
      return *(*(v15 + 56) + 8 * v16);
    }
  }

  v36 = forPreviousNode;
  v33 = v11;
  outlined init with copy of DeterministicLanguageModelProtocol(v3 + 24, v38);
  v20 = v39;
  v19 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v21 = v7;
  v22 = token;
  v35 = v14;
  v23 = *(v19 + 16);

  v4 = v23(v13, token, v21 & 1, v20, v19);
  __swift_destroy_boxed_opaque_existential_1(v38);
  outlined init with copy of DeterministicLanguageModelProtocol(v3 + 64, v38);
  v24 = v39;
  v25 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v26 = v35;
  v34 = v22;
  v3 = (*(v25 + 16))(v26, v22, v21 & 1, v24, v25);

  __swift_destroy_boxed_opaque_existential_1(v38);
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v7 = *(v6 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 16) = v7;
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v29 = *(v7 + 16);
  v28 = *(v7 + 24);
  if (v29 >= v28 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v29 + 1;
  v30 = (v7 + 32 + 24 * v29);
  *v30 = v4;
  v30[1] = v3;
  v30[2] = v5;
  *(v6 + 16) = v7;
  if (*(v7 + 16) > v36)
  {
    v31 = v7 + 32 + 24 * v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v31 + 16);
    *(v31 + 16) = 0x8000000000000000;
    v18 = v33;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v34, isUniquelyReferenced_nonNull_native);
    *(v31 + 16) = v37;

    *(v6 + 16) = v7;
    swift_endAccess();
    return v18;
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall ToolCallLanguageModel.node(forPreviousNode:token:isPrompt:)(Swift::Int forPreviousNode, Swift::Int token, Swift::Bool isPrompt)
{
  v8 = v3;
  v9 = isPrompt;
  swift_beginAccess();
  if (forPreviousNode < 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v12 = *(v3 + 40);
  if (*(v12 + 16) <= forPreviousNode)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 + 1, 1, v5);
    v5 = result;
    *(v8 + 40) = result;
    goto LABEL_21;
  }

  v13 = v12 + 40 * forPreviousNode;
  v14 = *(v13 + 64);
  if (*(v14 + 16))
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(token);
    if (v16)
    {
      forPreviousNode = *(*(v14 + 56) + 8 * v15);
      swift_endAccess();
      return forPreviousNode;
    }
  }

  swift_endAccess();
  if (v9)
  {
    return forPreviousNode;
  }

  v17 = *(v13 + 57);
  if (v17 == 2)
  {
    LOBYTE(v17) = *(v8 + 24) == token;
  }

  if (*(v13 + 56) & 1 | ((v17 & 1) == 0))
  {
    if (*(v13 + 40))
    {
      v29 = 0;
      v9 = 0;
      v30 = 1;
      v31 = 1;
    }

    else
    {
      v21 = *(v13 + 32);
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v8 + 48, v32, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
      v9 = v33;
      v30 = v33 == 0;
      if (v33)
      {
        v22 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v9 = (*(v22 + 16))(v21, token, 0, v9, v22);
        __swift_destroy_boxed_opaque_existential_1(v32);
      }

      else
      {
        outlined destroy of [Int](v32, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
      }

      v29 = 0;
      v31 = 1;
    }
  }

  else
  {
    v18 = *(v13 + 48);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v8 + 88, v32, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    v19 = v33;
    v31 = v33 == 0;
    if (v33)
    {
      v20 = v34;
      __swift_project_boxed_opaque_existential_1(v32, v33);
      v29 = (*(v20 + 16))(v18, token, 0, v19, v20);
      __swift_destroy_boxed_opaque_existential_1(v32);
    }

    else
    {
      outlined destroy of [Int](v32, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
      v29 = 0;
    }

    v9 = 0;
    v30 = 1;
  }

  v7 = v17 & 1;
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v5 = *(v8 + 40);
  v4 = *(v5 + 16);
  swift_beginAccess();
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + 40) = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  v25 = *(v5 + 16);
  v24 = *(v5 + 24);
  if (v25 >= v24 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v25 + 1;
  v26 = v5 + 32 + 40 * v25;
  *v26 = v9;
  *(v26 + 8) = v30;
  *(v26 + 16) = v29;
  *(v26 + 24) = v31;
  *(v26 + 25) = v7;
  *(v26 + 32) = v6;
  *(v8 + 40) = v5;
  if (*(v5 + 16) > forPreviousNode)
  {
    v27 = v5 + 32 + 40 * forPreviousNode;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v27 + 32);
    *(v27 + 32) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v4, token, isUniquelyReferenced_nonNull_native);
    *(v27 + 32) = v35;

    *(v8 + 40) = v5;
    swift_endAccess();
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
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
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for DataStreamState(0);
      return outlined assign with take of AppAssetGarbageCollector.Manifest.Entry(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for DataStreamState);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v19 & 1) != (v26 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v25;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
}

{
  v4 = v3;
  v8 = type metadata accessor for Prompt.SpecialToken();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
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
      result = MEMORY[0x223D8F400](*(v7 + 40), v20);
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
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi24TokenGenerationInference15LogitCollection_pGMd, &_ss18_DictionaryStorageCySi24TokenGenerationInference15LogitCollection_pGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        outlined init with take of RandomNumberGenerator(v21, v31);
      }

      else
      {
        outlined init with copy of DeterministicLanguageModelProtocol(v21, v31);
      }

      result = MEMORY[0x223D8F400](*(v7 + 40), v20);
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = outlined init with take of RandomNumberGenerator(v31, *(v7 + 56) + 40 * v15);
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

    v3 = v30;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi24TokenGenerationInference25PrefixGuidedLanguageModelV4NodeCGMd, &_ss18_DictionaryStorageCySi24TokenGenerationInference25PrefixGuidedLanguageModelV4NodeCGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      if ((v4 & 1) == 0)
      {
      }

      result = MEMORY[0x223D8F400](*(v7 + 40), v20);
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

LABEL_35:
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
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
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

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x277D0DF40], &_ss18_DictionaryStorageCy10Foundation4UUIDV34GenerativeFunctionsInstrumentation31FirstTokenInferenceInstrumenterVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV34GenerativeFunctionsInstrumentation31FirstTokenInferenceInstrumenterVGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x277D0DF20], &_ss18_DictionaryStorageCy10Foundation4UUIDV34GenerativeFunctionsInstrumentation27ExtendInferenceInstrumenterVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV34GenerativeFunctionsInstrumentation27ExtendInferenceInstrumenterVGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x277D0DF48], &_ss18_DictionaryStorageCy10Foundation4UUIDV34GenerativeFunctionsInstrumentation33CompletePromptRequestInstrumenterVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV34GenerativeFunctionsInstrumentation33CompletePromptRequestInstrumenterVGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for DataStreamState(0);
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v48 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV24TokenGenerationInference15DataStreamStateVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV24TokenGenerationInference15DataStreamStateVGMR);
  v45 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v12 + 16))
  {
    v40 = v2;
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
    v41 = (v9 + 16);
    v42 = v9;
    v46 = (v9 + 32);
    v21 = result + 64;
    v43 = v12;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v12 + 48);
      v47 = *(v9 + 72);
      v28 = v27 + v47 * v26;
      if (v45)
      {
        (*v46)(v48, v28, v8);
        v29 = *(v12 + 56);
        v30 = *(v44 + 72);
        outlined init with take of AppAssetGarbageCollector.Manifest.Entry(v29 + v30 * v26, v49, type metadata accessor for DataStreamState);
      }

      else
      {
        (*v41)(v48, v28, v8);
        v31 = *(v12 + 56);
        v30 = *(v44 + 72);
        outlined init with copy of AppAssetGarbageCollector.Manifest.Entry(v31 + v30 * v26, v49, type metadata accessor for DataStreamState);
      }

      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v46)((*(v14 + 48) + v47 * v22), v48, v8);
      result = outlined init with take of AppAssetGarbageCollector.Manifest.Entry(v49, *(v14 + 56) + v30 * v22, type metadata accessor for DataStreamState);
      ++*(v14 + 16);
      v9 = v42;
      v12 = v43;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v12 + 32);
    v3 = v40;
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

LABEL_34:
  *v3 = v14;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x277D0DF30], &_ss18_DictionaryStorageCy10Foundation4UUIDV34GenerativeFunctionsInstrumentation28PromptProcessingInstrumenterVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV34GenerativeFunctionsInstrumentation28PromptProcessingInstrumenterVGMR);
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
  v5 = type metadata accessor for Prompt.SpecialToken();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VypGMd, &_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VypGMR);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v43 = v9;
    v44 = v5;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    v39 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v42 = *(v6 + 72);
      v26 = v25 + v42 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v44);
        outlined init with take of Any((*(v10 + 56) + 32 * v24), v45);
      }

      else
      {
        (*v37)(v43, v26, v44);
        outlined init with copy of Any(*(v10 + 56) + 32 * v24, v45);
      }

      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Prompt.SpecialToken and conformance Prompt.SpecialToken, MEMORY[0x277D71DB0], MEMORY[0x277D71DB8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v38;
        v10 = v39;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v6 = v38;
      v10 = v39;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v41)((*(v12 + 48) + v42 * v20), v43, v44);
      result = outlined init with take of Any(v45, (*(v12 + 56) + 32 * v20));
      ++*(v12 + 16);
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

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
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
  v5 = type metadata accessor for Prompt.SpecialToken();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSDyS2SGGMd, &_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSDyS2SGGMR);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v9;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v10;
    v39 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v39 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        (*v41)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v37)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Prompt.SpecialToken and conformance Prompt.SpecialToken, MEMORY[0x277D71DB0], MEMORY[0x277D71DB8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v41)(*(v12 + 48) + v43 * v20, v44, v5);
      *(*(v12 + 56) + 8 * v20) = v42;
      ++*(v12 + 16);
      v10 = v38;
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

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySis5Int32VGMd, &_ss18_DictionaryStorageCySis5Int32VGMR);
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
      v21 = *(*(v5 + 56) + 4 * v19);
      result = MEMORY[0x223D8F400](*(v7 + 40), v20);
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
      *(*(v7 + 56) + 4 * v15) = v21;
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

uint64_t specialized E5TransformerLanguageModel.node(forPreviousNode:token:isPrompt:)(unint64_t a1, uint64_t a2)
{
  v7 = v2;
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(v2 + 56);
  if (*(v10 + 16) <= a1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = 48 * a1;
  v11 = v10 + 48 * a1;
  v12 = *(v11 + 32);
  v2 = *(v11 + 56);
  if (*(v2 + 16))
  {
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v14)
    {
      return *(*(v2 + 56) + 8 * v13);
    }
  }

  v5 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    swift_beginAccess();
    v3 = *(v7 + 56);
    v27 = *(v3 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 56) = v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27 + 1, 1, v3);
  *(v7 + 56) = v3;
LABEL_8:
  v17 = *(v3 + 2);
  v16 = *(v3 + 3);
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v3);
  }

  *(v3 + 2) = v18;
  v19 = &v3[48 * v17 + 32];
  *v19 = v5;
  *(v19 + 8) = a1;
  *(v19 + 16) = 0;
  *(v19 + 24) = v2;
  *(v19 + 32) = a2;
  *(v19 + 40) = 0;
  *(v7 + 56) = v3;
  if (v17 < a1)
  {
    __break(1u);
  }

  else
  {
    v20 = &v3[v4 + 32];
    v18 = *v20;
    v5 = *(v20 + 1);
    v6 = v20[16];
    v21 = a2;
    v22 = *(v20 + 3);
    a2 = *(v20 + 4);
    v26 = v20[40];

    v23 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v21, v23);
    v17 = v22;
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 56) = v3;
    if (result)
    {
      goto LABEL_12;
    }
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  v3 = result;
  *(v7 + 56) = result;
LABEL_12:
  if (*(v3 + 2) > a1)
  {
    v25 = &v3[v4];
    *(v25 + 4) = v18;
    *(v25 + 5) = v5;
    v25[48] = v6;
    *(v25 + 7) = v17;
    *(v25 + 8) = a2;
    v25[72] = v26;
    *(v7 + 56) = v3;
    swift_endAccess();

    return v27;
  }

  __break(1u);
  return result;
}

uint64_t TokenTreeNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TwoStageSpeculativeDecoder.decodeNextChunk()()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](TwoStageSpeculativeDecoder.decodeNextChunk(), 0, 0);
  }
}

{
  v1 = *(v0 + 456);
  v2 = *(v1 + 320);
  if (!*(v2 + 16))
  {
    v15 = 0;
    goto LABEL_8;
  }

  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  result = specialized Array.replaceSubrange<A>(_:with:)(0, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  v8 = *(v1 + 344);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v1 + 344) = v10;
  if (v6)
  {
    v11 = *(v0 + 456);
    v12 = *(v11 + 352);
    v9 = __OFADD__(v12, 1);
    v13 = v12 + 1;
    if (!v9)
    {
      *(v11 + 352) = v13;
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    return result;
  }

LABEL_6:
  v14 = *(v0 + 456);
  *(v14 + 104) = v3;
  *(v14 + 56) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_220AE8A30;
  *(v15 + 32) = v5;
LABEL_8:
  v16 = *(v0 + 8);

  return v16(v15);
}

{
  *(v1 + 456) = v0;
  return MEMORY[0x2822009F8](TwoStageSpeculativeDecoder.decodeNextChunk(), 0, 0);
}

{
  v1 = *(v0 + 456);
  if (*(v1 + 392) == 1)
  {
    if (*(v1 + 154) == 1)
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v1 + 16, v0 + 376);
      v3 = *(v0 + 400);
      v2 = *(v0 + 408);
      __swift_project_boxed_opaque_existential_1((v0 + 376), v3);
      v4 = *(v1 + 56);
      *(v0 + 416) = 0u;
      *(v0 + 432) = 0u;
      *(v0 + 448) = 0;
      v5 = swift_task_alloc();
      *(v0 + 464) = v5;
      *v5 = v0;
      v5[1] = TwoStageSpeculativeDecoder.decodeNextChunk();
      v6 = v0 + 336;
      v7 = v0 + 416;
    }

    else
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v1 + 64, v0 + 56);
      v3 = *(v0 + 80);
      v2 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v3);
      v4 = *(v1 + 104);
      outlined init with copy of DeterministicLanguageModelProtocol(v1 + 232, v0 + 96);
      v10 = swift_task_alloc();
      *(v0 + 480) = v10;
      *v10 = v0;
      v10[1] = TwoStageSpeculativeDecoder.decodeNextChunk();
      v6 = v0 + 16;
      v7 = v0 + 96;
    }

    return DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:)(v6, v4, v7, 0, v3, v2);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 520) = v8;
    *v8 = v0;
    v8[1] = TwoStageSpeculativeDecoder.decodeNextChunk();

    return TwoStageSpeculativeDecoder.fillBufferedTokensIfEmpty()();
  }
}

{
  v2 = *v1;
  *(v2 + 472) = v0;

  outlined destroy of LogitPresampler?(v2 + 416);
  if (v0)
  {
    v3 = TwoStageSpeculativeDecoder.decodeNextChunk();
  }

  else
  {
    v3 = TwoStageSpeculativeDecoder.decodeNextChunk();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v52 = v0;
  v2 = v0[57];
  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  v3 = TwoStageSpeculativeDecoder.makeDraftTokens(logits:draftNode:targetNode:)(v0 + 42, v2[7], v2[13]);
  v4 = v2[48];
  if (v4)
  {
    if (*(v3 + 16))
    {
      v5 = *(v3 + 48);

      if (v5 == v4)
      {
        v6 = v0[57];
        *(v6 + 360) = 1;
        p_base_meths = &DataStreamStateManager.base_meths;
        if (*(v6 + 160))
        {
          goto LABEL_21;
        }

        _S11 = *(v0[57] + 156);
        v9 = v0[45];
        v10 = v0[46];
        __swift_project_boxed_opaque_existential_1(v0 + 42, v9);
        v11 = (*(v10 + 56))(v9, v10);
        if ((v4 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v4 < *(v11 + 16))
        {
          v1 = *(v11 + 32 + 2 * v4);
          if (one-time initialization token for device == -1)
          {
            goto LABEL_8;
          }

          goto LABEL_36;
        }

        __break(1u);
LABEL_36:
        swift_once();
LABEL_8:
        __asm { FCVT            H10, S11 }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, static Log.device);

        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v51 = v21;
          *v20 = 67109634;
          *(v20 + 4) = v1 >= _H10;
          *(v20 + 8) = 2080;

          v22 = Float16.description.getter();
          v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v51);

          *(v20 + 10) = v24;
          *(v20 + 18) = 2048;
          *(v20 + 20) = _S11;
          _os_log_impl(&dword_220940000, v18, v19, "shouldDoEarlyReturn: %{BOOL}d, Stop token probability: %s, Early return probability threshold: %f", v20, 0x1Cu);
          __swift_destroy_boxed_opaque_existential_1(v21);
          v25 = v21;
          p_base_meths = (&DataStreamStateManager + 32);
          MEMORY[0x223D90A10](v25, -1, -1);
          MEMORY[0x223D90A10](v20, -1, -1);

          if (v1 >= _H10)
          {
LABEL_21:
            v36 = v0[57];
            *(v36 + 361) = 1;
            v37 = *(v36 + 344);
            v38 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              __break(1u);
            }

            else
            {
              v39 = v0[57];
              *(v36 + 344) = v38;
              v40 = *(v39 + 328);
              v41 = v40 + 1;
              if (!__OFADD__(v40, 1))
              {
                v42 = v0[57];
                *(v39 + 328) = v41;
                v43 = *(v42 + 336);
                _VF = __OFADD__(v43, 1);
                v44 = v43 + 1;
                if (!_VF)
                {
                  *(v42 + 336) = v44;
                  if (p_base_meths[239] == -1)
                  {
LABEL_25:
                    v45 = type metadata accessor for Logger();
                    __swift_project_value_buffer(v45, static Log.device);
                    v46 = Logger.logObject.getter();
                    v47 = static os_log_type_t.info.getter();
                    if (os_log_type_enabled(v46, v47))
                    {
                      v48 = swift_slowAlloc();
                      *v48 = 0;
                      _os_log_impl(&dword_220940000, v46, v47, "Early return from draft model is triggered", v48, 2u);
                      MEMORY[0x223D90A10](v48, -1, -1);
                    }

                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
                    v49 = swift_allocObject();
                    *(v49 + 16) = xmmword_220AE8A30;
                    *(v49 + 32) = v4;
                    __swift_destroy_boxed_opaque_existential_1(v0 + 42);
                    v50 = v0[1];

                    return v50(v49);
                  }

LABEL_33:
                  swift_once();
                  goto LABEL_25;
                }

LABEL_32:
                __break(1u);
                goto LABEL_33;
              }
            }

            __break(1u);
            goto LABEL_32;
          }
        }

        else
        {

          if (v1 >= _H10)
          {
            goto LABEL_21;
          }
        }
      }
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v0 + 42);
    v31 = v0[57];
    outlined init with copy of DeterministicLanguageModelProtocol(v31 + 64, (v0 + 7));
    v33 = v0[10];
    v32 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v33);
    v34 = *(v31 + 104);
    outlined init with copy of DeterministicLanguageModelProtocol(v31 + 232, (v0 + 12));
    v35 = swift_task_alloc();
    v0[60] = v35;
    *v35 = v0;
    v35[1] = TwoStageSpeculativeDecoder.decodeNextChunk();

    return DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:)((v0 + 2), v34, (v0 + 12), 0, v33, v32);
  }

  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Log.device);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_220940000, v27, v28, "Stop token id cannot be 0 when earlyReturn in drafting behavior is set to true", v29, 2u);
    MEMORY[0x223D90A10](v29, -1, -1);
  }

  return _assertionFailure(_:_:file:line:flags:)();
}

{
  v2 = *v1;
  *(v2 + 488) = v0;

  outlined destroy of LogitPresampler?(v2 + 96);
  if (v0)
  {
    v3 = TwoStageSpeculativeDecoder.decodeNextChunk();
  }

  else
  {
    v3 = TwoStageSpeculativeDecoder.decodeNextChunk();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 456);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v2 = v1[27];
  v3 = v1[28];
  __swift_project_boxed_opaque_existential_1(v1 + 24, v2);
  result = (*(v3 + 8))(v0 + 16, v2, v3);
  *(v0 + 496) = result;
  if (v5)
  {
    if (one-time initialization token for speculativeDecode != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.speculativeDecode);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_220940000, v7, v8, "Reached termination of target model immediately after prompt", v9, 2u);
      MEMORY[0x223D90A10](v9, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v10 = *(v0 + 8);

    return v10(0);
  }

  v11 = *(v0 + 456);
  v12 = *(v11 + 344);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v11 + 344) = v14;
  v15 = *(v11 + 352);
  v13 = __OFADD__(v15, 1);
  v16 = v15 + 1;
  if (v13)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v17 = result;
  v18 = *(v0 + 456);
  *(v11 + 352) = v16;
  outlined init with copy of DeterministicLanguageModelProtocol(v18 + 64, v0 + 136);
  v19 = *(v0 + 160);
  v20 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v19);
  *(v18 + 104) = (*(v20 + 16))(*(v18 + 104), v17, 0, v19, v20);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  outlined init with copy of DeterministicLanguageModelProtocol(v18 + 16, v0 + 176);
  v21 = *(v0 + 200);
  v22 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v21);
  *(v18 + 56) = (*(v22 + 16))(*(v18 + 56), v17, 0, v21, v22);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  outlined init with copy of DeterministicLanguageModelProtocol(v18 + 16, v0 + 216);
  v23 = *(v0 + 240);
  v24 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1((v0 + 216), v23);
  v25 = *(v18 + 56);
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 0;
  v26 = swift_task_alloc();
  *(v0 + 504) = v26;
  *v26 = v0;
  v26[1] = TwoStageSpeculativeDecoder.decodeNextChunk();

  return DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:)(v0 + 256, v25, v0 + 296, 0, v23, v24);
}

{
  v2 = *v1;
  *(v2 + 512) = v0;

  outlined destroy of LogitPresampler?(v2 + 296);
  if (v0)
  {
    v3 = TwoStageSpeculativeDecoder.decodeNextChunk();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 256));
    v3 = TwoStageSpeculativeDecoder.decodeNextChunk();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[62];
  v2 = v0[57];
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  *(v2 + 392) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_220AE8A30;
  *(v3 + 32) = v1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[1];

  return v4(v3);
}

{
  __swift_destroy_boxed_opaque_existential_1((v0 + 376));
  v1 = *(v0 + 8);

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  v1 = v0[1];

  return v1();
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 32 * result + 32 * a3;
  v10 = (v6 + 32 + 32 * a2);
  v11 = 32 * v9;
  if (result != v10 || result >= v10 + v11)
  {
    v13 = a3;
    result = memmove(result, v10, v11);
    a3 = v13;
  }

  v14 = *(v6 + 16);
  v8 = __OFADD__(v14, v5);
  v15 = v14 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v15;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 32 * result + 32 * a3;
  v10 = (v6 + 32 + 32 * a2);
  if (result != v10 || result >= v10 + 32 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 32 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:)()
{
  v221 = v0;
  v3 = *(v0 + 1928);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (!v3)
  {
LABEL_17:
    v27 = *(v0 + 1320);
    v28 = *(v0 + 1312);
    v29 = *(v0 + 1304);
    v30 = *(v0 + 1096);
    v31 = *(v0 + 1088);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
    v32 = swift_allocError();
    v34 = v33;
    (*(v28 + 16))(v33, v27, v29);
    (*(v30 + 104))(v34, *MEMORY[0x277D71AA0], v31);
    swift_willThrow();
    (*(v28 + 8))(v27, v29);
    *(v0 + 2080) = v32;
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 1552);
    v36 = *(v0 + 1536);
    v37 = *(v0 + 1528);
    v38 = *(v0 + 800);
    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Log.device);
    (*(v36 + 16))(v35, v38, v37);
    v40 = v32;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 1552);
    v45 = *(v0 + 1536);
    v46 = *(v0 + 1528);
    if (v43)
    {
      v47 = swift_slowAlloc();
      v216 = swift_slowAlloc();
      v218 = swift_slowAlloc();
      v220[0] = v218;
      *v47 = 136446466;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v48 = v32;
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v45 + 8))(v44, v46);
      v52 = v49;
      v32 = v48;
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v51, v220);

      *(v47 + 4) = v53;
      *(v47 + 12) = 2114;
      v54 = v48;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 14) = v55;
      *v216 = v55;
      _os_log_impl(&dword_220940000, v41, v42, "Failed to handle request %{public}s, error decoding next token. error: %{public}@.", v47, 0x16u);
      outlined destroy of [Int](v216, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D90A10](v216, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v218);
      MEMORY[0x223D90A10](v218, -1, -1);
      MEMORY[0x223D90A10](v47, -1, -1);
    }

    else
    {

      (*(v45 + 8))(v44, v46);
    }

    v56 = *(v0 + 1432);
    v57 = *(v0 + 1416);
    v58 = _convertErrorToNSError(_:)();
    *(v0 + 2088) = v58;
    v59 = *(v57 + 52);
    outlined destroy of [Int](v56 + v59, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMR);
    v60 = *MEMORY[0x277D20BC0];
    v61 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType();
    v62 = *(v61 - 8);
    (*(v62 + 104))(v56 + v59, v60, v61);
    (*(v62 + 56))(v56 + v59, 0, 1, v61);
    v1 = &selRef__encodedImageByteCount;
    if ([v58 code] == 2)
    {
      v63 = [v58 domain];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      if (v64 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v66 == v67)
      {

LABEL_27:
        v69 = [v58 localizedDescription];
        v8 = *(v0 + 1896);
        v70 = *(v0 + 1432);
        v7 = *(v0 + 1320);
        v71 = v69;
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        TokenGenerationError.Context.init(debugDescription:underlyingError:)();
        v72 = *(v70 + 16);
        v2 = v72 + v8;
        if (__OFADD__(v72, v8))
        {
          goto LABEL_73;
        }

        v73 = *(v0 + 1320);
        v74 = *(v0 + 1312);
        v75 = *(v0 + 1304);
        v76 = *(v0 + 1104);
        v77 = *(v0 + 1096);
        v78 = *(v0 + 1088);
        v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi5count_Si7maximum15TokenGeneration0cD5ErrorO7ContextVtMd, &_sSi5count_Si7maximum15TokenGeneration0cD5ErrorO7ContextVtMR) + 64);
        *v76 = v2;
        v76[1] = OnDeviceInferenceContext.maximumContextLength.getter();
        (*(v74 + 16))(v76 + v79, v73, v75);
        (*(v77 + 104))(v76, *MEMORY[0x277D71AC8], v78);
        TokenGenerationError.toInferenceError()();
        (*(v77 + 8))(v76, v78);
        (*(v74 + 8))(v73, v75);
LABEL_30:
        v86 = swift_task_alloc();
        *(v0 + 2096) = v86;
        *v86 = v0;
        v87 = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
        goto LABEL_31;
      }

      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v68)
      {
        goto LABEL_27;
      }
    }

    v80 = [v58 localizedDescription];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v81 = [v58 domain];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    [v58 code];
    v82 = *(v0 + 1480);
    v83 = *(v0 + 1472);
    v84 = *(v0 + 1464);
    v85 = v32;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
    (*(v83 + 104))(v82, *MEMORY[0x277D29DA8], v84);
    goto LABEL_30;
  }

  v4 = *(v0 + 1928);
  if (!*(v4 + 16))
  {

    goto LABEL_17;
  }

  v5 = (v0 + 776);
  *(v0 + 776) = v4;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  *(v0 + 1944) = __swift_project_value_buffer(v6, static Log.device);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v220[0] = v10;
    *v9 = 136642819;

    v1 = MEMORY[0x223D8E8D0](v11, MEMORY[0x277D83B88]);
    v2 = v12;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v2, v220);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_220940000, v7, v8, "Decoded token: %{sensitive}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x223D90A10](v10, -1, -1);
    MEMORY[0x223D90A10](v9, -1, -1);
  }

  v14 = *(v0 + 1896);
  if (v14)
  {
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (!v15)
    {
      v17 = *(v0 + 1928);
      v18 = *(v0 + 1856);
      v19 = *(v0 + 1432);
      v20 = *(v0 + 888);
      v21 = *(v0 + 880);
      v19[1] = v16;
      specialized TG_OnDeviceInferenceProvider.updateMetrics(dataStreamState:inferenceContext:)(v19, v18);
      v22 = v19[1];
      v1 = *(v20 + 16);
      v7 = *(v21 + 16);
      v23 = specialized Sequence<>.contains(_:)(v7, v17);
      LOBYTE(v2) = v23;
      v218 = v22;
      if (v22 < v1)
      {
        if (*(v0 + 1888) != 0 && !v23)
        {
LABEL_12:
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v8 = *(v0 + 1928);
          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_13:
            v26 = *(v8 + 16);
            v25 = *(v8 + 24);
            if (v26 >= v25 >> 1)
            {
              v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v8);
            }

            v215 = v2;
            v213 = v1;
            *(v8 + 16) = v26 + 1;
            *(v8 + 8 * v26 + 32) = v7;
            *v5 = v8;
LABEL_37:
            *(v0 + 1968) = v8;
            v93 = *(v0 + 1936);
            v94 = *(v0 + 880);
            __swift_project_boxed_opaque_existential_1((*(v0 + 1856) + 256), *(*(v0 + 1856) + 280));
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
            v95 = swift_allocObject();
            *(v95 + 16) = xmmword_220AE8A30;
            *(v95 + 32) = *(v94 + 16);

            v96 = TokenIDToTextConverterProtocol.textsForTokenIDs(_:stopTokenIDs:)();
            *(v0 + 1976) = v93;
            v97 = *(v0 + 1528);
            v98 = *(v0 + 800);
            v99 = *(v0 + 1536) + 16;
            if (v93)
            {
              v100 = *(v0 + 1544);

              v219 = _convertErrorToNSError(_:)();
              *(v0 + 2104) = v219;
              (*v99)(v100, v98, v97);
              v101 = v93;
              v102 = Logger.logObject.getter();
              v103 = static os_log_type_t.error.getter();

              v104 = os_log_type_enabled(v102, v103);
              v105 = *(v0 + 1544);
              v106 = *(v0 + 1536);
              v107 = *(v0 + 1528);
              if (v104)
              {
                v108 = swift_slowAlloc();
                v214 = swift_slowAlloc();
                v217 = swift_slowAlloc();
                v220[0] = v217;
                *v108 = 136446466;
                _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                v109 = dispatch thunk of CustomStringConvertible.description.getter();
                v111 = v110;
                (*(v106 + 8))(v105, v107);
                v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v111, v220);

                *(v108 + 4) = v112;
                *(v108 + 12) = 2114;
                v113 = v93;
                v114 = _swift_stdlib_bridgeErrorToNSError();
                *(v108 + 14) = v114;
                *v214 = v114;
                _os_log_impl(&dword_220940000, v102, v103, "Failed to handle request %{public}s, detokenization failed: %{public}@", v108, 0x16u);
                outlined destroy of [Int](v214, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                MEMORY[0x223D90A10](v214, -1, -1);
                __swift_destroy_boxed_opaque_existential_1(v217);
                MEMORY[0x223D90A10](v217, -1, -1);
                MEMORY[0x223D90A10](v108, -1, -1);
              }

              else
              {

                (*(v106 + 8))(v105, v107);
              }

              v145 = *(v0 + 1432);
              v146 = *(*(v0 + 1416) + 52);
              outlined destroy of [Int](v145 + v146, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMR);
              v147 = *MEMORY[0x277D20BD0];
              v148 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType();
              v149 = *(v148 - 8);
              (*(v149 + 104))(v145 + v146, v147, v148);
              (*(v149 + 56))(v145 + v146, 0, 1, v148);
              v150 = [v219 localizedDescription];
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v151 = v93;
              v152 = [v219 domain];
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              [v219 code];
              v153 = *(v0 + 1488);
              v154 = *(v0 + 1472);
              v155 = *(v0 + 1464);
              v156 = *(v0 + 952);
              v157 = *(v0 + 944);
              v158 = *(v0 + 936);
              v159 = v151;
              _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
              InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
              (*(v157 + 16))(v153, v156, v158);
              (*(v154 + 104))(v153, *MEMORY[0x277D29DA8], v155);
              v86 = swift_task_alloc();
              *(v0 + 2112) = v86;
              *v86 = v0;
              v87 = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
              goto LABEL_31;
            }

            v115 = v96;
            v116 = *(v0 + 1608);

            v117 = *v99;
            *(v0 + 1984) = *v99;
            *(v0 + 1992) = v99 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
            v117(v116, v98, v97);
            v118 = Logger.logObject.getter();
            v119 = static os_log_type_t.debug.getter();
            v120 = os_log_type_enabled(v118, v119);
            v121 = *(v0 + 1608);
            v122 = *(v0 + 1536);
            v123 = *(v0 + 1528);
            v211 = v115;
            if (v120)
            {
              v207 = v119;
              v124 = swift_slowAlloc();
              v208 = swift_slowAlloc();
              v220[0] = v208;
              *v124 = 136446467;
              _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v209 = v117;
              v125 = dispatch thunk of CustomStringConvertible.description.getter();
              v127 = v126;
              log = v118;
              v128 = *(v122 + 8);
              v128(v121, v123);
              v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, v220);
              v115 = v211;

              *(v124 + 4) = v129;
              *(v124 + 12) = 2085;

              v131 = MEMORY[0x223D8E8D0](v130, MEMORY[0x277D83B88]);
              v133 = v132;

              v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v133, v220);
              v117 = v209;

              *(v124 + 14) = v134;
              _os_log_impl(&dword_220940000, log, v207, "Request %{public}s output tokens %{sensitive}s", v124, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D90A10](v208, -1, -1);
              MEMORY[0x223D90A10](v124, -1, -1);
            }

            else
            {

              v128 = *(v122 + 8);
              v128(v121, v123);
            }

            *(v0 + 2000) = v128;
            v117(*(v0 + 1600), *(v0 + 800), *(v0 + 1528));

            v160 = Logger.logObject.getter();
            v161 = static os_log_type_t.debug.getter();

            v162 = os_log_type_enabled(v160, v161);
            v163 = *(v0 + 1600);
            v164 = *(v0 + 1528);
            if (v162)
            {
              v165 = v128;
              v166 = swift_slowAlloc();
              v167 = swift_slowAlloc();
              v220[0] = v167;
              *v166 = 136446467;
              _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v168 = dispatch thunk of CustomStringConvertible.description.getter();
              v170 = v169;
              v165(v163, v164);
              v171 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v170, v220);
              v115 = v211;

              *(v166 + 4) = v171;
              *(v166 + 12) = 2085;
              v172 = MEMORY[0x223D8E8D0](v211, MEMORY[0x277D837D0]);
              v174 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v173, v220);

              *(v166 + 14) = v174;
              _os_log_impl(&dword_220940000, v160, v161, "Request %{public}s detokenized texts %{sensitive}s", v166, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D90A10](v167, -1, -1);
              MEMORY[0x223D90A10](v166, -1, -1);
            }

            else
            {

              v128(v163, v164);
            }

            v175 = *(v115 + 16);
            if (v175)
            {
              *(v0 + 768) = MEMORY[0x277D84F90];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v175, 0);
              v176._rawValue = *(v0 + 768);
              v177 = v115 + 40;
              do
              {

                Token.init(text:)();
                *(v0 + 768) = v176;
                v179 = *(v176._rawValue + 2);
                v178 = *(v176._rawValue + 3);
                if (v179 >= v178 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v178 > 1), v179 + 1, 1);
                  v176._rawValue = *(v0 + 768);
                }

                v180 = *(v0 + 1080);
                v181 = *(v0 + 1072);
                v182 = *(v0 + 1064);
                *(v176._rawValue + 2) = v179 + 1;
                (*(v181 + 32))(v176._rawValue + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v179, v180, v182);
                v177 += 16;
                --v175;
              }

              while (v175);
            }

            else
            {

              v176._rawValue = MEMORY[0x277D84F90];
            }

            v223 = StopSequenceMonitor.handleOutputTokens(_:)(v176);
            rawValue = v223.tokens._rawValue;
            countAndFlagsBits = v223.stopSequence.value._countAndFlagsBits;
            object = v223.stopSequence.value._object;

            v186 = *(v0 + 1888);
            if (object)
            {
              *(*(v0 + 1432) + 24) = 1;
              if (!(v215 & 1 | (v186 != 0)))
              {
                v187 = *(v0 + 2136);
                v188 = *(v0 + 976);
                v189 = *(v0 + 968);
                v190 = (*(v0 + 1432) + *(*(v0 + 1416) + 64));
                outlined destroy of [Int](v190, &_s15TokenGeneration12FinishReasonOSgMd, &_s15TokenGeneration12FinishReasonOSgMR);
                *v190 = countAndFlagsBits;
                v190[1] = object;
                (*(v188 + 104))(v190, v187, v189);
                (*(v188 + 56))(v190, 0, 1, v189);
                goto LABEL_61;
              }
            }

            else
            {
              v191 = v215 | (v186 != 0);
              *(*(v0 + 1432) + 24) = (v218 >= v213) | v191 & 1;
              if ((v191 & 1) == 0)
              {
                if (v218 >= v213)
                {
                  v201 = *(v0 + 2140);
                  v202 = *(v0 + 1432);
                  v203 = *(v0 + 976);
                  v204 = *(v0 + 968);
                  v205 = *(*(v0 + 1416) + 64);
                  outlined destroy of [Int](v202 + v205, &_s15TokenGeneration12FinishReasonOSgMd, &_s15TokenGeneration12FinishReasonOSgMR);
                  (*(v203 + 104))(v202 + v205, v201, v204);
                  (*(v203 + 56))(v202 + v205, 0, 1, v204);
                }

LABEL_61:
                v198 = specialized TG_OnDeviceInferenceProvider.parseToolCalls(_:state:)(rawValue, *(v0 + 1432));

                if (*(v198 + 2))
                {
                  v199 = v198;
                }

                else
                {

                  if (v218 < v213)
                  {
LABEL_66:
                    v91 = *(*(v0 + 1632) + 176);
                    *(v0 + 2008) = v91;
                    v92 = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
                    goto LABEL_67;
                  }

                  v199 = StopSequenceMonitor.currentBufferedTokens()();
                }

                specialized Array.append<A>(contentsOf:)(v199);
                goto LABEL_66;
              }
            }

            v192 = *(v0 + 2144);
            v193 = *(v0 + 1432);
            v194 = *(v0 + 1416);
            v195 = *(v0 + 976);
            v196 = *(v0 + 968);

            v197 = *(v194 + 64);
            outlined destroy of [Int](v193 + v197, &_s15TokenGeneration12FinishReasonOSgMd, &_s15TokenGeneration12FinishReasonOSgMR);
            (*(v195 + 104))(v193 + v197, v192, v196);
            (*(v195 + 56))(v193 + v197, 0, 1, v196);
            goto LABEL_61;
          }

LABEL_74:
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
          goto LABEL_13;
        }

LABEL_36:
        v215 = v23;
        v213 = v1;
        v8 = *(v0 + 1928);
        goto LABEL_37;
      }

      if (*(*(v0 + 896) + 16))
      {
        if (!v23)
        {
          goto LABEL_12;
        }

        goto LABEL_36;
      }

      v135 = *(v0 + 1432);
      v136 = *(v0 + 1320);
      v137 = *(v0 + 1312);
      v210 = *(v0 + 1304);
      v138 = *(v0 + 1104);
      v139 = *(v0 + 1096);
      v212 = *(v0 + 1088);
      v140 = *(*(v0 + 1416) + 52);
      outlined destroy of [Int](v135 + v140, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMR);
      v141 = *MEMORY[0x277D20BC0];
      v142 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType();
      v143 = *(v142 - 8);
      (*(v143 + 104))(v135 + v140, v141, v142);
      (*(v143 + 56))(v135 + v140, 0, 1, v142);
      TokenGenerationError.Context.init(debugDescription:underlyingError:)();
      v144 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi5count_Si7maximum15TokenGeneration0cD5ErrorO7ContextVtMd, &_sSi5count_Si7maximum15TokenGeneration0cD5ErrorO7ContextVtMR) + 64);
      *v138 = v218;
      *(v138 + 1) = OnDeviceInferenceContext.maximumContextLength.getter();
      (*(v137 + 16))(&v138[v144], v136, v210);
      (*(v139 + 104))(v138, *MEMORY[0x277D71AC8], v212);
      TokenGenerationError.toInferenceError()();
      v86 = swift_task_alloc();
      *(v0 + 1960) = v86;
      *v86 = v0;
      v87 = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
LABEL_31:
      v86[1] = v87;
      v88 = *(v0 + 1432);
      v89 = *(v0 + 840);

      return DataStreamStateManager.removeState(uuid:state:)(v89, v88);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v91 = *(*(v0 + 1632) + 176);
  *(v0 + 1952) = v91;
  v92 = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
LABEL_67:
  v200 = v92;

  return MEMORY[0x2822009F8](v200, v91, 0);
}

{
  DataStreamStateManager.updateState(uuid:state:)(v0[105], v0[179]);

  v1 = swift_task_alloc();
  v0[252] = v1;
  *v1 = v0;
  v1[1] = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
  v2 = v0[179];
  v3 = v0[126];
  v4 = v0[100];

  return TG_OnDeviceInferenceProvider.toolCallDeltaEventForDataStreamState(_:_:)(v3, v2, v4);
}

{

  return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), 0, 0);
}

{
  v66 = v0;
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    outlined destroy of [Int](v3, &_s15TokenGeneration43PromptCompletionEventCandidateToolCallDeltaVSgMd, &_s15TokenGeneration43PromptCompletionEventCandidateToolCallDeltaVSgMR);
    v4 = swift_task_alloc();
    v0[253] = v4;
    *v4 = v0;
    v4[1] = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
    v5 = v0[179];
    v6 = v0[143];
    v7 = v0[100];

    return TG_OnDeviceInferenceProvider.textDeltaEventForDataStreamState(_:_:)(v6, v5, v7);
  }

  else
  {
    v9 = v0[248];
    v10 = v0[199];
    v11 = v0[191];
    v12 = v0[132];
    v13 = v0[131];
    v59 = v0[130];
    v61 = v0[129];
    v14 = v0[100];
    v64 = *(v1 + 32);
    v64(v12, v3, v2);
    v9(v10, v14, v11);
    v15 = *(v1 + 16);
    v15(v13, v12, v2);
    v15(v59, v12, v2);
    v15(v61, v12, v2);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[250];
    v20 = v0[199];
    v21 = v0[191];
    v22 = v0[131];
    v62 = v0[130];
    v63 = v0[129];
    v23 = v0[128];
    v24 = v0[127];
    if (v18)
    {
      v58 = v17;
      v25 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v65[0] = v60;
      *v25 = 136446979;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v57 = v16;
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      v19(v20, v21);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v65);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      v30 = PromptCompletionEventCandidateToolCallDelta.toolCallIdentifier.getter();
      v32 = v31;
      v33 = *(v23 + 8);
      v33(v22, v24);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v65);

      *(v25 + 14) = v34;
      *(v25 + 22) = 2085;
      v35 = PromptCompletionEventCandidateToolCallDelta.functionName.getter();
      v37 = v36;
      v33(v62, v24);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v65);

      *(v25 + 24) = v38;
      *(v25 + 32) = 2085;
      v39 = PromptCompletionEventCandidateToolCallDelta.argumentsDelta.getter();
      v41 = v40;
      v33(v63, v24);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v65);

      *(v25 + 34) = v42;
      _os_log_impl(&dword_220940000, v57, v58, "Produced tool call delta for request %{public}s. \toolCallID:%{public}s, functionName:%{sensitive}s, argumentsDelta:%{sensitive}s", v25, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v60, -1, -1);
      MEMORY[0x223D90A10](v25, -1, -1);
    }

    else
    {

      v43 = *(v23 + 8);
      v43(v63, v24);
      v43(v62, v24);
      v43(v22, v24);
      v19(v20, v21);
    }

    v44 = v0[247];
    v45 = v0[205];
    v46 = v0[179];
    v47 = v0[145];
    v48 = v0[132];
    v49 = v0[127];
    v50 = v0[101];
    v51 = v0[98];
    v52 = MEMORY[0x277D71D78];
    v51[3] = v49;
    v51[4] = v52;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
    v64(boxed_opaque_existential_1, v48, v49);

    outlined destroy of [Int](v47, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMd, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMR);

    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v46, type metadata accessor for DataStreamState);
    v54 = swift_task_alloc();
    *(v54 + 16) = v50;
    *(v54 + 24) = 0;
    v55 = swift_task_alloc();
    *(v55 + 16) = closure #1 in DataStreamCancellationHandler.setIsInUse(isInUse:)partial apply;
    *(v55 + 24) = v54;
    os_unfair_lock_lock(v45 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v65);
    os_unfair_lock_unlock(v45 + 4);
    if (v44)
    {
    }

    else
    {

      v56 = v0[1];

      return v56();
    }
  }
}

{
  v43 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 1632) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 808);
    v4 = *(v3 + 24);
    *(v0 + 1640) = v4;
    v5 = swift_task_alloc();
    *(v5 + 16) = v3;
    *(v5 + 24) = 1;
    v6 = swift_task_alloc();
    *(v6 + 16) = partial apply for closure #1 in DataStreamCancellationHandler.setIsInUse(isInUse:);
    *(v6 + 24) = v5;
    os_unfair_lock_lock(v4 + 4);
    partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v42);
    os_unfair_lock_unlock(v4 + 4);
    v24 = v42[0];
    *(v0 + 2149) = v42[0];

    if ((v24 & 1) != 0 || (v25 = *(v0 + 816), swift_beginAccess(), *(v25 + 16) != 1))
    {
      *(v0 + 1840) = 0;
      v41 = *(*(v0 + 1632) + 176);
      *(v0 + 1848) = v41;

      return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), v41, 0);
    }

    else
    {
      v26 = *(v0 + 816);
      swift_beginAccess();
      *(v26 + 16) = 0;
      __swift_project_boxed_opaque_existential_1((v2 + 136), *(v2 + 160));
      v27 = InferenceProviderRequestConfiguration.assetBundleIdentifier.getter();
      v29 = v28;
      *(v0 + 1648) = v28;
      v30 = swift_task_alloc();
      *(v0 + 1656) = v30;
      *v30 = v0;
      v30[1] = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
      v31 = *(v0 + 1520);
      v32 = *(v0 + 1504);

      return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC035fetchPromptTemplateConfigurationForF6Bundle10identifierAA0ijK0VSgSS_tYa20ModelManagerServices0C5ErrorOYKF(v31, v27, v29, v32);
    }
  }

  else
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 1624);
    v8 = *(v0 + 1536);
    v9 = *(v0 + 1528);
    v10 = *(v0 + 800);
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.device);
    (*(v8 + 16))(v7, v10, v9);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 1624);
    v16 = *(v0 + 1536);
    v17 = *(v0 + 1528);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v42[0] = v19;
      *v18 = 136446210;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v16 + 8))(v15, v17);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v42);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_220940000, v12, v13, "Failed to handle request %{public}s, inference provider was destroyed", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x223D90A10](v19, -1, -1);
      MEMORY[0x223D90A10](v18, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
    }

    v34 = *(v0 + 1320);
    v35 = *(v0 + 1312);
    v36 = *(v0 + 1304);
    v37 = *(v0 + 1104);
    v38 = *(v0 + 1096);
    v39 = *(v0 + 1088);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    (*(v35 + 16))(v37, v34, v36);
    (*(v38 + 104))(v37, *MEMORY[0x277D71AA0], v39);
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_allocError();
    TokenGenerationError.toInferenceError()();
    swift_willThrow();
    (*(v38 + 8))(v37, v39);
    (*(v35 + 8))(v34, v36);

    v40 = *(v0 + 8);

    return v40();
  }
}

{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = v2[189];
    v5 = v2[188];
    v6 = v2[184];
    v7 = v2[183];

    v8 = *(v6 + 32);
    v2[209] = v8;
    v2[210] = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v8(v4, v5, v7);

    return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), 0, 0);
  }

  else
  {

    v9 = swift_task_alloc();
    v2[208] = v9;
    *v9 = v3;
    v9[1] = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
    v10 = v2[190];
    v11 = v2[187];
    v12 = v2[182];
    v13 = v2[104];

    return _s24TokenGenerationInference011TG_OnDeviceC8ProviderC16inferenceRequest10clientData27promptTemplateConfigurationAA0cI0V20ModelManagerServices06ClientK0V_AA06PromptmN0VSgtYaAI0C5ErrorOYKF(v12, v13, v10, v11);
  }
}

{

  if (v0)
  {
    v1 = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
  }

  else
  {
    v1 = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

{
  v12 = v0;
  v1 = v0[209];
  v2 = v0[205];
  v3 = v0[189];
  v4 = v0[183];
  v5 = v0[101];
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  swift_allocError();
  v1(v6, v3, v4);
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  *(v7 + 24) = 0;
  v8 = swift_task_alloc();
  *(v8 + 16) = closure #1 in DataStreamCancellationHandler.setIsInUse(isInUse:)partial apply;
  *(v8 + 24) = v7;
  os_unfair_lock_lock(v2 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v11);
  os_unfair_lock_unlock((v0[205] + 16));

  v9 = v0[1];

  return v9();
}

{
  v1 = *(*(v0 + 1632) + 176);
  *(v0 + 1688) = v1;

  return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), v1, 0);
}

{
  v1 = *(v0 + 864);
  type metadata accessor for EventReporter();
  if ((v1 & 0x100000000) != 0)
  {
    swift_allocObject();
    v2 = EventReporter.init()();
  }

  else
  {
    v2 = EventReporter.__allocating_init(onBehalfOfUserIdentifier:)();
  }

  v3 = v2;
  v4 = *(v0 + 1536);
  v35 = *(v0 + 1616);
  v36 = *(v0 + 1528);
  v5 = *(v0 + 1440);
  v37 = *(v0 + 1424);
  v6 = *(v0 + 1416);
  v7 = *(v0 + 1408);
  v8 = *(v0 + 1392);
  v28 = *(v0 + 1400);
  v29 = *(v0 + 1384);
  v34 = *(v0 + 1376);
  v9 = *(v0 + 1336);
  v10 = *(v0 + 976);
  v26 = *(v0 + 968);
  v27 = *(v0 + 1328);
  v38 = *(v0 + 864);
  v31 = *(v0 + 848);
  v32 = *(v0 + 856);
  v30 = *(v0 + 2148);
  v33 = *(v0 + 840);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v3;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v7, &closure #2 in DataStreamStateManager.createState(uuid:isOneShot:loggingIdentifier:onBehalfOfUserIdentifier:)specialized partial apply, v12);

  v13 = v6[13];
  *(v0 + 2120) = v13;
  v14 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType();
  *(v0 + 1696) = v14;
  v15 = *(v14 - 8);
  *(v0 + 1704) = v15;
  v16 = *(v15 + 56);
  *(v0 + 1712) = v16;
  *(v0 + 1720) = (v15 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v16(v5 + v13, 1, 1, v14);
  (*(v10 + 56))(v5 + v6[16], 1, 1, v26);
  v17 = v6[20];
  *(v0 + 2124) = v17;
  v18 = *(v9 + 56);
  *(v0 + 1728) = v18;
  *(v0 + 1736) = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v18(v5 + v17, 1, 1, v27);
  *(v0 + 2128) = v6[10];
  StopSequenceMonitor.init(stopSequences:)();
  (*(v8 + 104))(v28, *MEMORY[0x277D71ED0], v29);
  ToolCallParser.init(version:)();
  v19 = MEMORY[0x277D84F90];
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = v19;
  *(v5 + 24) = 0;
  *(v5 + 32) = v19;
  *(v5 + 40) = v19;
  *(v5 + v6[12]) = v30;
  v20 = (v5 + v6[14]);
  *v20 = v31;
  v20[1] = v32;
  v21 = v5 + v6[15];
  *(v21 + 96) = 0;
  *(v21 + 64) = 0u;
  *(v21 + 80) = 0u;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0u;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 104) = 2;
  v22 = v5 + v6[17];
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = v5 + v6[18];
  *v23 = 0;
  *(v23 + 8) = 1;
  *(v5 + v6[19]) = v3;
  v24 = *(v4 + 16);
  *(v0 + 1744) = v24;
  *(v0 + 1752) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24(v35, v33, v36);
  outlined init with copy of OnDeviceInferenceAssetObjectImageTokenizer(v5, v34, type metadata accessor for DataStreamState);
  (*(v37 + 56))(v34, 0, 1, v6);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v34, v35);
  swift_endAccess();
  DataStreamStateManager.startCompletePromptInstrumenter(uuid:onBehalfOfUserIdentifier:)(v33, v38 | ((HIDWORD(v38) & 1) << 32));

  return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), 0, 0);
}

{
  __swift_project_boxed_opaque_existential_1((*(v0 + 1632) + 56), *(*(v0 + 1632) + 80));
  v1 = swift_task_alloc();
  *(v0 + 1760) = v1;
  *v1 = v0;
  v1[1] = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
  v2 = *(v0 + 1456);
  v3 = *(v0 + 2148);
  v4 = *(v0 + 824);

  return OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(v2, v4, v3);
}

{
  v1 = v0[221];
  v2 = v0[204];
  v3 = v0[180];
  v4 = v0[109];
  swift_beginAccess();
  *(v4 + 16) = v1;

  *v3 = *(v1 + 296);
  v5 = *(v2 + 176);
  v0[223] = v5;

  return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), v5, 0);
}

{
  v1 = v0[182];
  v2 = v0[181];
  DataStreamStateManager.startPromptProcessingInstrumenter(uuid:onBehalfOfUserIdentifier:)(v0[105], v0[108] | ((HIDWORD(v0[108]) & 1) << 32));

  v3 = *(v2 + 32);
  v4 = swift_task_alloc();
  v0[224] = v4;
  *v4 = v0;
  v4[1] = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
  v5 = v0[221];
  v6 = v0[182];
  v7 = v0[170];

  return TG_OnDeviceInferenceProvider.process(prompt:context:requestMetadata:)((v0 + 75), v7, v6, v5, v1 + v3);
}

{
  *(*v1 + 1800) = v0;

  if (v0)
  {
    v2 = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
  }

  else
  {
    v2 = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v10 = v0;
  v1 = v0[205];
  v2 = v0[190];
  v3 = v0[180];
  v4 = v0[101];
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v0[182], type metadata accessor for InferenceRequest);
  outlined destroy of [Int](v2, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v3, type metadata accessor for DataStreamState);
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = 0;
  v6 = swift_task_alloc();
  *(v6 + 16) = closure #1 in DataStreamCancellationHandler.setIsInUse(isInUse:)partial apply;
  *(v6 + 24) = v5;
  os_unfair_lock_lock(v1 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v9);
  os_unfair_lock_unlock((v0[205] + 16));

  v7 = v0[1];

  return v7();
}

{
  v92 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 608);
  if (*(v1 + 16))
  {
    v81 = *(v0 + 616);
    v3 = *(v0 + 1728);
    v4 = *(v0 + 2124);
    v5 = *(v0 + 1440);
    v6 = *(v0 + 1360);
    v7 = *(v0 + 1336);
    v8 = *(v0 + 1328);
    outlined destroy of [Int](v5 + v4, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    (*(v7 + 16))(v5 + v4, v6, v8);
    v3(v5 + v4, 0, 1, v8);
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    *(v0 + 1808) = __swift_project_value_buffer(v9, static Log.device);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v88 = v84;
      *v12 = 136642819;
      v89 = v1;
      v90 = v2;
      v91 = v81;

      v79 = v11;
      v13 = SamplingDecoderPrompt.description.getter();
      v15 = v14;

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v88);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_220940000, v10, v79, "Tokenized prompt is %{sensitive}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v84);
      MEMORY[0x223D90A10](v84, -1, -1);
      MEMORY[0x223D90A10](v12, -1, -1);
    }

    v85 = *(v0 + 1360);
    v77 = *(v0 + 1336);
    v78 = *(v0 + 1328);
    v80 = *(v0 + 1632);
    v17 = *(v0 + 1296);
    v18 = *(v0 + 1288);
    v75 = *(v0 + 1440);
    v76 = *(v0 + 1280);
    outlined init with copy of DeterministicLanguageModelProtocol(*(v0 + 1768) + 16, v0 + 56);
    v20 = *(v0 + 80);
    v19 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v20);
    v89 = v1;
    v90 = v2;
    v91 = v81;
    (*(v19 + 8))(&v89, v20, v19);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    v89 = v1;
    v90 = v2;
    v91 = v81;
    SamplingDecoderPrompt.flattened.getter();
    v22 = v21;

    v23 = *(v22 + 16);
    *(v0 + 1816) = v23;

    *(v75 + 16) = v23;
    type metadata accessor for TransparencyReport();
    swift_allocObject();
    TransparencyReport.init()();
    Prompt.Rendering.renderedString.getter();
    InferenceProviderRequestConfiguration.assetBundleIdentifier.getter();
    (*(v18 + 104))(v17, *MEMORY[0x277D20988], v76);
    TransparencyReport.logEvent(configuration:prompt:response:model:modelVersion:executionEnvironment:)();

    (*(v18 + 8))(v17, v76);
    (*(v77 + 8))(v85, v78);
    v24 = *(v80 + 176);
    *(v0 + 1824) = v24;

    return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), v24, 0);
  }

  else
  {

    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    __swift_project_value_buffer(v86, static Log.device);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_220940000, v25, v26, "Empty Prompt Provided for inference", v27, 2u);
      MEMORY[0x223D90A10](v27, -1, -1);
    }

    v82 = *(v0 + 1360);
    v28 = *(v0 + 1336);
    v29 = *(v0 + 1328);
    v30 = *(v0 + 1320);
    v31 = *(v0 + 1312);
    v32 = *(v0 + 1304);
    v33 = *(v0 + 1096);
    v34 = *(v0 + 1088);

    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
    v35 = swift_allocError();
    v37 = v36;
    (*(v31 + 16))(v36, v30, v32);
    (*(v33 + 104))(v37, *MEMORY[0x277D71AE0], v34);
    swift_willThrow();
    (*(v31 + 8))(v30, v32);
    (*(v28 + 8))(v82, v29);
    *(v0 + 2056) = v35;
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 1744);
    v39 = *(v0 + 1560);
    v40 = *(v0 + 1528);
    v41 = *(v0 + 800);
    __swift_project_value_buffer(v86, static Log.device);
    v38(v39, v41, v40);
    v42 = v35;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 1560);
    v47 = *(v0 + 1536);
    v48 = *(v0 + 1528);
    if (v45)
    {
      v49 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v89 = v87;
      *v49 = 136446466;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      (*(v47 + 8))(v46, v48);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v89);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2114;
      v54 = v35;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 14) = v55;
      *v83 = v55;
      _os_log_impl(&dword_220940000, v43, v44, "Failed to handle request %{public}s, error tokenizing prompt: %{public}@", v49, 0x16u);
      outlined destroy of [Int](v83, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D90A10](v83, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v87);
      MEMORY[0x223D90A10](v87, -1, -1);
      MEMORY[0x223D90A10](v49, -1, -1);
    }

    else
    {

      (*(v47 + 8))(v46, v48);
    }

    v56 = *(v0 + 1712);
    v57 = *(v0 + 1704);
    v58 = *(v0 + 1696);
    v59 = *(v0 + 2120);
    v60 = *(v0 + 1440);
    outlined destroy of [Int](v60 + v59, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMR);
    (*(v57 + 104))(v60 + v59, *MEMORY[0x277D20BC8], v58);
    v56(v60 + v59, 0, 1, v58);
    v61 = _convertErrorToNSError(_:)();
    *(v0 + 2064) = v61;
    v62 = v35;
    v63 = [v61 domain];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    [v61 code];
    v64 = *(v0 + 1488);
    v65 = *(v0 + 1472);
    v66 = *(v0 + 1464);
    v67 = *(v0 + 952);
    v68 = *(v0 + 944);
    v69 = *(v0 + 936);
    v70 = v62;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
    (*(v68 + 16))(v64, v67, v69);
    (*(v65 + 104))(v64, *MEMORY[0x277D29DA8], v66);
    v71 = swift_task_alloc();
    *(v0 + 2072) = v71;
    *v71 = v0;
    v71[1] = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
    v72 = *(v0 + 1440);
    v73 = *(v0 + 840);

    return DataStreamStateManager.removeState(uuid:state:)(v73, v72);
  }
}

{
  DataStreamStateManager.endPromptProcessingInstrumenter(uuid:state:)(*(v0 + 840), *(v0 + 1440));

  return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), 0, 0);
}

{
  v1 = *(v0 + 1768);
  v14 = *(v0 + 1448);
  v19 = *(v0 + 1440);
  v20 = *(v0 + 2128);
  v15 = *(v0 + 1272);
  v16 = *(v0 + 1264);
  v17 = *(v0 + 1632);
  v18 = *(v0 + 1256);
  v13 = *(v0 + 880);
  v2 = __swift_project_boxed_opaque_existential_1(v17 + 7, v17[10]);
  v3 = v1[44];
  v4 = v1[45];
  v5 = v1[46];
  v6 = v1[47];
  __swift_project_boxed_opaque_existential_1((*v2 + 56), *(*v2 + 80));
  v7 = off_2834512B0;

  outlined copy of StopToken?(v3, v4, v5, v6);
  type metadata accessor for OnDeviceInferenceOverrides(0);
  v8 = v7();
  v10 = specialized static OnDeviceInferenceContextFactory.stopTokenIntValue(stopTokenOverride:stopToken:tokenizer:)(v8, v9, v3, v4, v5, v6);

  outlined consume of StopToken?(v3, v4, v5, v6);
  swift_beginAccess();
  *(v13 + 16) = v10;
  *(v0 + 2132) = *(v14 + 20);
  SamplingParameters.stopSequences.getter();
  StopSequenceMonitor.init(stopSequences:)();
  (*(v16 + 40))(v19 + v20, v15, v18);
  v11 = v17[22];
  *(v0 + 1832) = v11;

  return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), v11, 0);
}

{
  DataStreamStateManager.updateState(uuid:state:)(*(v0 + 840), *(v0 + 1440));

  return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), 0, 0);
}

{
  v1 = v0[227];
  v2 = OnDeviceInferenceContext.maximumContextLength.getter();
  v5 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
  }

  else
  {
    v6 = v0[111];
    swift_beginAccess();
    *(v6 + 16) = v5;
    v7 = SamplingParameters.maximumTokens.getter();
    if ((v8 & 1) == 0)
    {
      v9 = v7;
      v10 = v0[112];
      v11 = v0[111];
      swift_beginAccess();
      *(v10 + 16) = 1;
      swift_beginAccess();
      if (*(v11 + 16) < v9)
      {
        v9 = *(v11 + 16);
      }

      swift_beginAccess();
      *(v11 + 16) = v9;
    }

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[112];
    v16 = v0[111];
    if (v14)
    {
      v17 = swift_slowAlloc();
      *v17 = 134349312;
      swift_beginAccess();
      *(v17 + 4) = *(v16 + 16);

      *(v17 + 12) = 1026;
      swift_beginAccess();
      *(v17 + 14) = *(v15 + 16);

      _os_log_impl(&dword_220940000, v12, v13, "Max output tokens count set to: %{public}ld, clientSetMaximumTokens: %{BOOL,public}d", v17, 0x12u);
      MEMORY[0x223D90A10](v17, -1, -1);
    }

    else
    {
    }

    v18 = v0[190];
    v19 = v0[182];
    v20 = v0[180];

    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v19, type metadata accessor for InferenceRequest);
    outlined destroy of [Int](v18, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v20, type metadata accessor for DataStreamState);
    v0[230] = v0[225];
    v3 = *(v0[204] + 176);
    v0[231] = v3;
    v2 = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

{
  v1 = v0[231];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = v0[105];

    v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
    if (v5)
    {
      outlined init with copy of OnDeviceInferenceAssetObjectImageTokenizer(*(v2 + 56) + *(v0[178] + 72) * v4, v0[171], type metadata accessor for DataStreamState);
      v6 = 0;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 1;
  }

  (*(v0[178] + 56))(v0[171], v6, 1, v0[177]);

  return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), 0, 0);
}

{
  v98 = v0;
  v1 = *(v0 + 1368);
  if ((*(*(v0 + 1424) + 48))(v1, 1, *(v0 + 1416)) == 1)
  {
    outlined destroy of [Int](v1, &_s24TokenGenerationInference15DataStreamStateVSgMd, &_s24TokenGenerationInference15DataStreamStateVSgMR);
LABEL_8:
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 1576);
    v20 = *(v0 + 1568);
    v21 = *(v0 + 1536);
    v22 = *(v0 + 1528);
    v23 = *(v0 + 840);
    v24 = *(v0 + 800);
    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Log.device);
    v26 = *(v21 + 16);
    v26(v19, v24, v22);
    v26(v20, v23, v22);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 1576);
    v31 = *(v0 + 1568);
    v32 = *(v0 + 1536);
    v33 = *(v0 + 1528);
    if (v29)
    {
      v90 = v28;
      v34 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v96 = v93;
      *v34 = 136446466;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v38 = *(v32 + 8);
      v38(v30, v33);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v96);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2082;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      v38(v31, v33);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v96);

      *(v34 + 14) = v43;
      _os_log_impl(&dword_220940000, v27, v90, "Failed to handle request %{public}s, data stream %{public}s does not exist", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v93, -1, -1);
      MEMORY[0x223D90A10](v34, -1, -1);
    }

    else
    {

      v44 = *(v32 + 8);
      v44(v31, v33);
      v44(v30, v33);
    }

    v45 = *(v0 + 1640);
    v46 = *(v0 + 1472);
    v47 = *(v0 + 1464);
    v48 = *(v0 + 952);
    v49 = *(v0 + 944);
    v50 = *(v0 + 936);
    v94 = *(v0 + 808);
    v96 = 0;
    v97 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v96 = 0xD000000000000023;
    v97 = 0x8000000220AFDBB0;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v51);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_allocError();
    v53 = v52;
    (*(v49 + 16))(v52, v48, v50);
    (*(v46 + 104))(v53, *MEMORY[0x277D29DA0], v47);
    swift_willThrow();
    (*(v49 + 8))(v48, v50);
    v54 = swift_task_alloc();
    *(v54 + 16) = v94;
    *(v54 + 24) = 0;
    v55 = swift_task_alloc();
    *(v55 + 16) = closure #1 in DataStreamCancellationHandler.setIsInUse(isInUse:)partial apply;
    *(v55 + 24) = v54;
    os_unfair_lock_lock(v45 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v96);
    os_unfair_lock_unlock(v45 + 4);

    v57 = *(v0 + 8);
    goto LABEL_17;
  }

  v2 = *(v0 + 2149);
  outlined init with take of OnDeviceInferenceAssetObjectTokenizer(v1, *(v0 + 1432), type metadata accessor for DataStreamState);
  if ((v2 & 1) != 0 || (v3 = *(v0 + 872), swift_beginAccess(), v4 = *(v3 + 16), (*(v0 + 1856) = v4) == 0))
  {
    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(*(v0 + 1432), type metadata accessor for DataStreamState);
    goto LABEL_8;
  }

  v5 = *(v0 + 904);
  swift_beginAccess();
  if ((*(v5 + 16) & 1) == 0)
  {
    v58 = *(v0 + 912);
    swift_beginAccess();
    if (*(v58 + 16) == 1)
    {
      v59 = *(v0 + 1336);
      v60 = *(v0 + 1328);
      v61 = *(v0 + 1192);
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 1432) + *(*(v0 + 1416) + 80), v61, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
      if ((*(v59 + 48))(v61, 1, v60) != 1)
      {
        v91 = *(v0 + 1640);
        v95 = *(v0 + 1840);
        v67 = *(v0 + 1352);
        v68 = *(v0 + 1344);
        v69 = *(v0 + 1336);
        v70 = *(v0 + 1328);
        v71 = *(v0 + 1176);
        v85 = *(v0 + 1168);
        v87 = *(v0 + 1432);
        v80 = *(v0 + 1184);
        v82 = *(v0 + 912);
        v89 = *(v0 + 808);
        v72 = *(v0 + 784);
        (*(v69 + 32))(v67, *(v0 + 1192), v70);

        UUID.uuidString.getter();
        (*(v69 + 16))(v68, v67, v70);
        PromptCompletionEventRenderedPrompt.init(responseIdentifier:renderedPrompt:)();
        swift_beginAccess();
        *(v82 + 16) = 0;
        v73 = MEMORY[0x277D719C8];
        v72[3] = v85;
        v72[4] = v73;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
        (*(v71 + 32))(boxed_opaque_existential_1, v80, v85);

        (*(v69 + 8))(v67, v70);
        outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v87, type metadata accessor for DataStreamState);
        v75 = swift_task_alloc();
        *(v75 + 16) = v89;
        *(v75 + 24) = 0;
        v76 = swift_task_alloc();
        *(v76 + 16) = closure #1 in DataStreamCancellationHandler.setIsInUse(isInUse:)partial apply;
        *(v76 + 24) = v75;
        v17 = v91;
        os_unfair_lock_lock(v91 + 4);
        v18 = v95;
        closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v96);
        goto LABEL_28;
      }

      v62 = *(v0 + 1192);

      outlined destroy of [Int](v62, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    }

    else
    {
    }

    v63 = swift_task_alloc();
    *(v0 + 1864) = v63;
    *v63 = v0;
    v63[1] = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
    v64 = *(v0 + 1432);
    v65 = *(v0 + 1160);
    v66 = *(v0 + 800);

    return TG_OnDeviceInferenceProvider.textDeltaEventForDataStreamState(_:_:)(v65, v64, v66);
  }

  OnDeviceInferenceContext.assets.getter();
  v6 = [objc_opt_self() processInfo];
  v7 = [v6 operatingSystemVersionString];
  v86 = *(v0 + 1640);
  v88 = *(v0 + 1840);
  v92 = *(v0 + 1248);
  v8 = *(v0 + 1240);
  v9 = *(v0 + 1232);
  v77 = *(v0 + 1224);
  v78 = *(v0 + 1216);
  v10 = *(v0 + 1208);
  v81 = *(v0 + 1200);
  v83 = *(v0 + 1432);
  v79 = *(v0 + 904);
  v84 = *(v0 + 808);
  v11 = *(v0 + 784);
  v12 = v7;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  ModelInformation.init(assets:systemVersion:)();
  UUID.uuidString.getter();
  (*(v9 + 16))(v8, v92, v77);
  PromptCompletionEventModelInformation.init(responseIdentifier:modelInformation:)();
  swift_beginAccess();
  *(v79 + 16) = 0;
  v13 = MEMORY[0x277D71D60];
  v11[3] = v81;
  v11[4] = v13;
  v14 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(v10 + 32))(v14, v78, v81);

  (*(v9 + 8))(v92, v77);
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v83, type metadata accessor for DataStreamState);
  v15 = swift_task_alloc();
  *(v15 + 16) = v84;
  *(v15 + 24) = 0;
  v16 = swift_task_alloc();
  *(v16 + 16) = closure #1 in DataStreamCancellationHandler.setIsInUse(isInUse:)partial apply;
  *(v16 + 24) = v15;
  v17 = v86;
  os_unfair_lock_lock(v86 + 4);
  v18 = v88;
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v96);
LABEL_28:
  os_unfair_lock_unlock(v17 + 4);
  if (!v18)
  {

    v57 = *(v0 + 8);
LABEL_17:

    return v57();
  }
}

{

  return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), 0, 0);
}

{
  v83 = v0;
  v1 = *(v0 + 1152);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1112);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 1160), v1, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMd, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMR);
  v4 = *(v2 + 48);
  *(v0 + 1872) = v4;
  *(v0 + 1880) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v3);
  v6 = *(v0 + 1856);
  if (v5 != 1)
  {
    v20 = *(v0 + 1640);
    v21 = *(v0 + 1432);
    v22 = *(v0 + 1160);
    v23 = *(v0 + 1136);
    v24 = *(v0 + 1112);
    v77 = *(v0 + 808);
    v80 = *(v0 + 1840);
    v25 = *(v0 + 784);
    v26 = *(*(v0 + 1120) + 32);
    v26(v23, *(v0 + 1152), v24);
    v27 = MEMORY[0x277D71D70];
    v25[3] = v24;
    v25[4] = v27;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
    v26(boxed_opaque_existential_1, v23, v24);

    outlined destroy of [Int](v22, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMd, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMR);
    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v21, type metadata accessor for DataStreamState);
    v29 = swift_task_alloc();
    *(v29 + 16) = v77;
    *(v29 + 24) = 0;
    v30 = swift_task_alloc();
    *(v30 + 16) = closure #1 in DataStreamCancellationHandler.setIsInUse(isInUse:)partial apply;
    *(v30 + 24) = v29;
    os_unfair_lock_lock(v20 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v82);
    os_unfair_lock_unlock(v20 + 4);
    if (!v80)
    {
      goto LABEL_32;
    }

    goto LABEL_7;
  }

  v7 = *(v0 + 1432);
  outlined destroy of [Int](*(v0 + 1152), &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMd, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMR);
  *(v0 + 1888) = *(v6 + 336);
  if (*(v7 + 24) == 1)
  {
    v8 = *(v0 + 1840);
    *(v0 + 2032) = v8;
    v9 = *(v0 + 920);
    swift_beginAccess();
    if (*(v9 + 16))
    {
      v10 = *(v0 + 1640);
      v11 = *(v0 + 1432);
      v79 = v8;
      v12 = *(v0 + 1160);
      v13 = *(v0 + 920);
      v14 = *(v0 + 808);
      v15 = *(v0 + 784);
      swift_beginAccess();
      *(v13 + 16) = 0;
      UUID.uuidString.getter();
      Usage.init(promptTokenCount:completionTokenCount:)();
      v16 = type metadata accessor for PromptCompletionEventUsage();
      v17 = MEMORY[0x277D71D30];
      v15[3] = v16;
      v15[4] = v17;
      __swift_allocate_boxed_opaque_existential_1(v15);
      PromptCompletionEventUsage.init(responseIdentifier:usage:)();

      outlined destroy of [Int](v12, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMd, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMR);
      outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v11, type metadata accessor for DataStreamState);
      v18 = swift_task_alloc();
      *(v18 + 16) = v14;
      *(v18 + 24) = 0;
      v19 = swift_task_alloc();
      *(v19 + 16) = closure #1 in DataStreamCancellationHandler.setIsInUse(isInUse:)partial apply;
      *(v19 + 24) = v18;
      os_unfair_lock_lock(v10 + 4);
      closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v82);
      os_unfair_lock_unlock(v10 + 4);
      if (!v79)
      {
        goto LABEL_32;
      }

      goto LABEL_7;
    }

    v35 = *(v0 + 928);
    swift_beginAccess();
    if (*(v35 + 16) != 1)
    {
      goto LABEL_16;
    }

    v36 = *(v0 + 976);
    v37 = *(v0 + 968);
    v38 = *(v0 + 960);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 1432) + *(*(v0 + 1416) + 64), v38, &_s15TokenGeneration12FinishReasonOSgMd, &_s15TokenGeneration12FinishReasonOSgMR);
    if ((*(v36 + 48))(v38, 1, v37) == 1)
    {
      outlined destroy of [Int](*(v0 + 960), &_s15TokenGeneration12FinishReasonOSgMd, &_s15TokenGeneration12FinishReasonOSgMR);
LABEL_16:
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v39 = *(v0 + 1584);
      v40 = *(v0 + 1536);
      v41 = *(v0 + 1528);
      v42 = *(v0 + 800);
      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Log.device);
      (*(v40 + 16))(v39, v42, v41);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();
      v46 = os_log_type_enabled(v44, v45);
      v47 = *(v0 + 1584);
      v48 = *(v0 + 1536);
      v49 = *(v0 + 1528);
      if (v46)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v82[0] = v51;
        *v50 = 136446210;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v52 = dispatch thunk of CustomStringConvertible.description.getter();
        v54 = v53;
        (*(v48 + 8))(v47, v49);
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v82);

        *(v50 + 4) = v55;
        _os_log_impl(&dword_220940000, v44, v45, "Successfully handled streaming request %{public}s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x223D90A10](v51, -1, -1);
        MEMORY[0x223D90A10](v50, -1, -1);
      }

      else
      {

        (*(v48 + 8))(v47, v49);
      }

      *(v0 + 2040) = *(*(v0 + 1632) + 176);

      v60 = swift_task_alloc();
      *(v0 + 2048) = v60;
      *v60 = v0;
      v60[1] = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
      v61 = *(v0 + 1432);
      v62 = *(v0 + 840);

      return DataStreamStateManager.removeState(uuid:state:)(v62, v61);
    }

    v75 = *(v0 + 1432);
    v74 = *(v0 + 1160);
    v63 = *(v0 + 992);
    v64 = *(v0 + 984);
    v65 = *(v0 + 976);
    v66 = *(v0 + 968);
    v67 = *(v0 + 928);
    v76 = *(v0 + 808);
    v78 = *(v0 + 1640);
    v68 = *(v0 + 784);
    (*(v65 + 32))(v63, *(v0 + 960), v66);
    swift_beginAccess();
    *(v67 + 16) = 0;
    UUID.uuidString.getter();
    UUID.uuidString.getter();
    (*(v65 + 16))(v64, v63, v66);
    v69 = type metadata accessor for PromptCompletionEventCandidateFinished();
    v70 = MEMORY[0x277D71D68];
    v68[3] = v69;
    v68[4] = v70;
    __swift_allocate_boxed_opaque_existential_1(v68);
    PromptCompletionEventCandidateFinished.init(responseIdentifier:candidateIdentifier:finishReason:)();

    (*(v65 + 8))(v63, v66);
    outlined destroy of [Int](v74, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMd, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMR);
    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v75, type metadata accessor for DataStreamState);
    v71 = swift_task_alloc();
    *(v71 + 16) = v76;
    *(v71 + 24) = 0;
    v72 = swift_task_alloc();
    *(v72 + 16) = closure #1 in DataStreamCancellationHandler.setIsInUse(isInUse:)partial apply;
    *(v72 + 24) = v71;
    os_unfair_lock_lock(v78 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v82);
    os_unfair_lock_unlock(v78 + 4);
    if (!v8)
    {
LABEL_32:

      v73 = *(v0 + 8);

      return v73();
    }

LABEL_7:
  }

  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  *(v0 + 2136) = *MEMORY[0x277D71B60];
  *(v0 + 2140) = *MEMORY[0x277D71B68];
  *(v0 + 2144) = *MEMORY[0x277D71B50];
  v32 = *(*(v0 + 1432) + 8);
  *(v0 + 1896) = v32;
  if (v32 == 1)
  {
    v33 = *(*(v0 + 1632) + 176);
    *(v0 + 1912) = v33;
    v34 = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
    goto LABEL_21;
  }

  if (!v32)
  {
    v33 = *(*(v0 + 1632) + 176);
    *(v0 + 1904) = v33;
    v34 = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
LABEL_21:
    v56 = v34;

    return MEMORY[0x2822009F8](v56, v33, 0);
  }

  outlined init with copy of DeterministicLanguageModelProtocol(*(v0 + 1856) + 16, v0 + 16);
  v57 = *(v0 + 40);
  v58 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v57);
  v81 = (*(v58 + 16) + **(v58 + 16));
  v59 = swift_task_alloc();
  *(v0 + 1920) = v59;
  *v59 = v0;
  v59[1] = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);

  return v81(v57, v58);
}

{
  DataStreamStateManager.startFirstTokenInferenceInstrumenter(uuid:onBehalfOfUserIdentifier:)(*(v0 + 840), *(v0 + 864) | ((HIDWORD(*(v0 + 864)) & 1) << 32));

  return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), 0, 0);
}

{
  outlined init with copy of DeterministicLanguageModelProtocol(v0[232] + 16, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[240] = v3;
  *v3 = v0;
  v3[1] = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);

  return v5(v1, v2);
}

{
  DataStreamStateManager.startExtendInferenceInstrumenter(uuid:onBehalfOfUserIdentifier:)(*(v0 + 840), *(v0 + 864) | ((HIDWORD(*(v0 + 864)) & 1) << 32));

  return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), 0, 0);
}

{
  DataStreamStateManager.endFirstTokenInferenceInstrumenter(uuid:)(*(v0 + 840));

  return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), 0, 0);
}

{
  v151 = v2;
  v6 = *(v2 + 1896);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_49;
  }

  v9 = *(v2 + 1928);
  v10 = *(v2 + 1856);
  v11 = *(v2 + 1432);
  v12 = *(v2 + 888);
  v13 = *(v2 + 880);
  v11[1] = v8;
  specialized TG_OnDeviceInferenceProvider.updateMetrics(dataStreamState:inferenceContext:)(v11, v10);
  v14 = v11[1];
  v4 = *(v12 + 16);
  v0 = *(v13 + 16);
  v15 = specialized Sequence<>.contains(_:)(v0, v9);
  v5 = v15;
  v148 = v14;
  if (v14 < v4)
  {
    if (*(v2 + 1888) != 0 && !v15)
    {
      goto LABEL_5;
    }

LABEL_10:
    v146 = v15;
    v144 = v4;
    v3 = *(v2 + 1928);
    goto LABEL_11;
  }

  if ((*(*(v2 + 896) + 16) & 1) == 0)
  {
    v61 = *(v2 + 1432);
    v62 = *(v2 + 1320);
    v63 = *(v2 + 1312);
    v141 = *(v2 + 1304);
    v64 = *(v2 + 1104);
    v65 = *(v2 + 1096);
    v143 = *(v2 + 1088);
    v66 = *(*(v2 + 1416) + 52);
    outlined destroy of [Int](v61 + v66, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMR);
    v67 = *MEMORY[0x277D20BC0];
    v68 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType();
    v69 = *(v68 - 8);
    (*(v69 + 104))(v61 + v66, v67, v68);
    (*(v69 + 56))(v61 + v66, 0, 1, v68);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi5count_Si7maximum15TokenGeneration0cD5ErrorO7ContextVtMd, &_sSi5count_Si7maximum15TokenGeneration0cD5ErrorO7ContextVtMR) + 64);
    *v64 = v148;
    *(v64 + 1) = OnDeviceInferenceContext.maximumContextLength.getter();
    (*(v63 + 16))(&v64[v70], v62, v141);
    (*(v65 + 104))(v64, *MEMORY[0x277D71AC8], v143);
    TokenGenerationError.toInferenceError()();
    v71 = swift_task_alloc();
    *(v2 + 1960) = v71;
    *v71 = v2;
    v72 = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
LABEL_19:
    v71[1] = v72;
    v88 = *(v2 + 1432);
    v89 = *(v2 + 840);

    return DataStreamStateManager.removeState(uuid:state:)(v89, v88);
  }

  if (v15)
  {
    goto LABEL_10;
  }

LABEL_5:
  v1 = (v2 + 776);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v2 + 1928);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_49:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v18 = *(v3 + 2);
  v17 = *(v3 + 3);
  if (v18 >= v17 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v3);
  }

  v146 = v5;
  v144 = v4;
  *(v3 + 2) = v18 + 1;
  *&v3[8 * v18 + 32] = v0;
  *v1 = v3;
LABEL_11:
  *(v2 + 1968) = v3;
  v19 = *(v2 + 1936);
  v20 = *(v2 + 880);
  __swift_project_boxed_opaque_existential_1((*(v2 + 1856) + 256), *(*(v2 + 1856) + 280));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_220AE8A30;
  *(v21 + 32) = *(v20 + 16);

  v22 = TokenIDToTextConverterProtocol.textsForTokenIDs(_:stopTokenIDs:)();
  *(v2 + 1976) = v19;
  v23 = *(v2 + 1528);
  v24 = *(v2 + 800);
  v25 = *(v2 + 1536) + 16;
  if (v19)
  {
    v26 = *(v2 + 1544);

    v149 = _convertErrorToNSError(_:)();
    *(v2 + 2104) = v149;
    (*v25)(v26, v24, v23);
    v27 = v19;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v2 + 1544);
    v32 = *(v2 + 1536);
    v33 = *(v2 + 1528);
    if (v30)
    {
      v34 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v150[0] = v147;
      *v34 = 136446466;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v32 + 8))(v31, v33);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v150);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2114;
      v39 = v19;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v40;
      *v145 = v40;
      _os_log_impl(&dword_220940000, v28, v29, "Failed to handle request %{public}s, detokenization failed: %{public}@", v34, 0x16u);
      outlined destroy of [Int](v145, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D90A10](v145, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v147);
      MEMORY[0x223D90A10](v147, -1, -1);
      MEMORY[0x223D90A10](v34, -1, -1);
    }

    else
    {

      (*(v32 + 8))(v31, v33);
    }

    v73 = *(v2 + 1432);
    v74 = *(*(v2 + 1416) + 52);
    outlined destroy of [Int](v73 + v74, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMR);
    v75 = *MEMORY[0x277D20BD0];
    v76 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType();
    v77 = *(v76 - 8);
    (*(v77 + 104))(v73 + v74, v75, v76);
    (*(v77 + 56))(v73 + v74, 0, 1, v76);
    v78 = [v149 localizedDescription];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v79 = v19;
    v80 = [v149 domain];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    [v149 code];
    v81 = *(v2 + 1488);
    v82 = *(v2 + 1472);
    v83 = *(v2 + 1464);
    v84 = *(v2 + 952);
    v85 = *(v2 + 944);
    v86 = *(v2 + 936);
    v87 = v79;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
    (*(v85 + 16))(v81, v84, v86);
    (*(v82 + 104))(v81, *MEMORY[0x277D29DA8], v83);
    v71 = swift_task_alloc();
    *(v2 + 2112) = v71;
    *v71 = v2;
    v72 = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
    goto LABEL_19;
  }

  v41 = v22;
  v42 = *(v2 + 1608);

  v43 = *v25;
  *(v2 + 1984) = *v25;
  *(v2 + 1992) = v25 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v43(v42, v24, v23);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  v46 = os_log_type_enabled(v44, v45);
  v47 = *(v2 + 1608);
  v48 = *(v2 + 1536);
  v49 = *(v2 + 1528);
  v142 = v41;
  if (v46)
  {
    v138 = v45;
    v50 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v150[0] = v139;
    *v50 = 136446467;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v140 = v43;
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v52;
    log = v44;
    v54 = *(v48 + 8);
    v54(v47, v49);
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v150);
    v41 = v142;

    *(v50 + 4) = v55;
    *(v50 + 12) = 2085;

    v57 = MEMORY[0x223D8E8D0](v56, MEMORY[0x277D83B88]);
    v59 = v58;

    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v150);
    v43 = v140;

    *(v50 + 14) = v60;
    _os_log_impl(&dword_220940000, log, v138, "Request %{public}s output tokens %{sensitive}s", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v139, -1, -1);
    MEMORY[0x223D90A10](v50, -1, -1);
  }

  else
  {

    v54 = *(v48 + 8);
    v54(v47, v49);
  }

  *(v2 + 2000) = v54;
  v43(*(v2 + 1600), *(v2 + 800), *(v2 + 1528));

  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.debug.getter();

  v93 = os_log_type_enabled(v91, v92);
  v94 = *(v2 + 1600);
  v95 = *(v2 + 1528);
  if (v93)
  {
    v96 = v54;
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v150[0] = v98;
    *v97 = 136446467;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v99 = dispatch thunk of CustomStringConvertible.description.getter();
    v101 = v100;
    v96(v94, v95);
    v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, v150);
    v41 = v142;

    *(v97 + 4) = v102;
    *(v97 + 12) = 2085;
    v103 = MEMORY[0x223D8E8D0](v142, MEMORY[0x277D837D0]);
    v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v104, v150);

    *(v97 + 14) = v105;
    _os_log_impl(&dword_220940000, v91, v92, "Request %{public}s detokenized texts %{sensitive}s", v97, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v98, -1, -1);
    MEMORY[0x223D90A10](v97, -1, -1);
  }

  else
  {

    v54(v94, v95);
  }

  v106 = *(v41 + 16);
  if (v106)
  {
    *(v2 + 768) = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v106, 0);
    v107._rawValue = *(v2 + 768);
    v108 = v41 + 40;
    do
    {

      Token.init(text:)();
      *(v2 + 768) = v107;
      v110 = *(v107._rawValue + 2);
      v109 = *(v107._rawValue + 3);
      if (v110 >= v109 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v109 > 1), v110 + 1, 1);
        v107._rawValue = *(v2 + 768);
      }

      v111 = *(v2 + 1080);
      v112 = *(v2 + 1072);
      v113 = *(v2 + 1064);
      *(v107._rawValue + 2) = v110 + 1;
      (*(v112 + 32))(v107._rawValue + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v110, v111, v113);
      v108 += 16;
      --v106;
    }

    while (v106);
  }

  else
  {

    v107._rawValue = MEMORY[0x277D84F90];
  }

  v153 = StopSequenceMonitor.handleOutputTokens(_:)(v107);
  rawValue = v153.tokens._rawValue;
  countAndFlagsBits = v153.stopSequence.value._countAndFlagsBits;
  object = v153.stopSequence.value._object;

  v117 = *(v2 + 1888);
  if (object)
  {
    *(*(v2 + 1432) + 24) = 1;
    if (!v146 && v117 == 0)
    {
      v118 = *(v2 + 2136);
      v119 = *(v2 + 976);
      v120 = *(v2 + 968);
      v121 = (*(v2 + 1432) + *(*(v2 + 1416) + 64));
      outlined destroy of [Int](v121, &_s15TokenGeneration12FinishReasonOSgMd, &_s15TokenGeneration12FinishReasonOSgMR);
      *v121 = countAndFlagsBits;
      v121[1] = object;
      (*(v119 + 104))(v121, v118, v120);
      (*(v119 + 56))(v121, 0, 1, v120);
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v122 = v146 || v117 != 0;
  *(*(v2 + 1432) + 24) = v148 >= v144 || v122;
  if (v122)
  {
LABEL_37:
    v123 = *(v2 + 2144);
    v124 = *(v2 + 1432);
    v125 = *(v2 + 1416);
    v126 = *(v2 + 976);
    v127 = *(v2 + 968);

    v128 = *(v125 + 64);
    outlined destroy of [Int](v124 + v128, &_s15TokenGeneration12FinishReasonOSgMd, &_s15TokenGeneration12FinishReasonOSgMR);
    (*(v126 + 104))(v124 + v128, v123, v127);
    (*(v126 + 56))(v124 + v128, 0, 1, v127);
    goto LABEL_38;
  }

  if (v148 >= v144)
  {
    v132 = *(v2 + 2140);
    v133 = *(v2 + 1432);
    v134 = *(v2 + 976);
    v135 = *(v2 + 968);
    v136 = *(*(v2 + 1416) + 64);
    outlined destroy of [Int](v133 + v136, &_s15TokenGeneration12FinishReasonOSgMd, &_s15TokenGeneration12FinishReasonOSgMR);
    (*(v134 + 104))(v133 + v136, v132, v135);
    (*(v134 + 56))(v133 + v136, 0, 1, v135);
  }

LABEL_38:
  v129 = specialized TG_OnDeviceInferenceProvider.parseToolCalls(_:state:)(rawValue, *(v2 + 1432));

  if (*(v129 + 2))
  {
    v130 = v129;
LABEL_42:
    specialized Array.append<A>(contentsOf:)(v130);
    goto LABEL_43;
  }

  if (v148 >= v144)
  {
    v130 = StopSequenceMonitor.currentBufferedTokens()();
    goto LABEL_42;
  }

LABEL_43:
  v131 = *(*(v2 + 1632) + 176);
  *(v2 + 2008) = v131;

  return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), v131, 0);
}

{

  return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), 0, 0);
}

{
  v22 = v0;
  v19 = v0[205];
  v20 = v0[242];
  v1 = v0[186];
  v2 = v0[184];
  v3 = v0[183];
  v17 = v0[179];
  v4 = v0[164];
  v14 = v0[163];
  v15 = v0[165];
  v16 = v0[145];
  v5 = v0[138];
  v6 = v0[137];
  v7 = v0[136];
  v18 = v0[101];
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  swift_willThrowTypedImpl();
  swift_allocError();
  (*(v2 + 32))(v8, v1, v3);

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v15, v14);
  outlined destroy of [Int](v16, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMd, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMR);

  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v17, type metadata accessor for DataStreamState);
  v9 = swift_task_alloc();
  *(v9 + 16) = v18;
  *(v9 + 24) = 0;
  v10 = swift_task_alloc();
  *(v10 + 16) = closure #1 in DataStreamCancellationHandler.setIsInUse(isInUse:)partial apply;
  *(v10 + 24) = v9;
  os_unfair_lock_lock(v19 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v21);
  v11 = v0[205];
  if (v20)
  {
    os_unfair_lock_unlock(v11 + 4);
  }

  else
  {
    os_unfair_lock_unlock(v11 + 4);

    v13 = v0[1];

    return v13();
  }
}

{

  return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), 0, 0);
}

{
  v80 = v0;
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1112);
  if ((*(v0 + 1872))(v1, 1, v2) != 1)
  {
    v74 = *(v0 + 1640);
    v77 = *(v0 + 1976);
    v18 = *(v0 + 1160);
    v19 = *(v0 + 1128);
    v70 = *(v0 + 1432);
    v72 = *(v0 + 808);
    v20 = *(v0 + 784);
    v21 = *(*(v0 + 1120) + 32);
    v21(v19, v1, v2);
    v22 = MEMORY[0x277D71D70];
    v20[3] = v2;
    v20[4] = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
    v21(boxed_opaque_existential_1, v19, v2);

    outlined destroy of [Int](v18, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMd, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMR);

    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v70, type metadata accessor for DataStreamState);
    v24 = swift_task_alloc();
    *(v24 + 16) = v72;
    *(v24 + 24) = 0;
    v25 = swift_task_alloc();
    *(v25 + 16) = closure #1 in DataStreamCancellationHandler.setIsInUse(isInUse:)partial apply;
    *(v25 + 24) = v24;
    v26 = v74;
    os_unfair_lock_lock(v74 + 4);
    v27 = v77;
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v79);
    goto LABEL_9;
  }

  v3 = *(v0 + 1432);
  outlined destroy of [Int](v1, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMd, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMR);

  if (*(v3 + 24) == 1)
  {
    v4 = *(v0 + 1976);
    *(v0 + 2032) = v4;
    v5 = *(v0 + 920);
    swift_beginAccess();
    if (*(v5 + 16))
    {
      v6 = *(v0 + 1640);
      v7 = *(v0 + 1432);
      v76 = v4;
      v8 = *(v0 + 1160);
      v9 = *(v0 + 920);
      v10 = *(v0 + 808);
      v11 = *(v0 + 784);
      swift_beginAccess();
      *(v9 + 16) = 0;
      UUID.uuidString.getter();
      Usage.init(promptTokenCount:completionTokenCount:)();
      v12 = type metadata accessor for PromptCompletionEventUsage();
      v13 = MEMORY[0x277D71D30];
      v11[3] = v12;
      v11[4] = v13;
      __swift_allocate_boxed_opaque_existential_1(v11);
      PromptCompletionEventUsage.init(responseIdentifier:usage:)();

      outlined destroy of [Int](v8, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMd, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMR);
      outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v7, type metadata accessor for DataStreamState);
      v14 = swift_task_alloc();
      *(v14 + 16) = v10;
      *(v14 + 24) = 0;
      v15 = swift_task_alloc();
      *(v15 + 16) = closure #1 in DataStreamCancellationHandler.setIsInUse(isInUse:)partial apply;
      *(v15 + 24) = v14;
      os_unfair_lock_lock(v6 + 4);
      closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v79);
      os_unfair_lock_unlock(v6 + 4);
      if (!v76)
      {
LABEL_5:

        v16 = *(v0 + 8);

        return v16();
      }

      goto LABEL_10;
    }

    v31 = *(v0 + 928);
    swift_beginAccess();
    if (*(v31 + 16) != 1)
    {
      goto LABEL_19;
    }

    v32 = *(v0 + 976);
    v33 = *(v0 + 968);
    v34 = *(v0 + 960);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 1432) + *(*(v0 + 1416) + 64), v34, &_s15TokenGeneration12FinishReasonOSgMd, &_s15TokenGeneration12FinishReasonOSgMR);
    if ((*(v32 + 48))(v34, 1, v33) == 1)
    {
      outlined destroy of [Int](*(v0 + 960), &_s15TokenGeneration12FinishReasonOSgMd, &_s15TokenGeneration12FinishReasonOSgMR);
LABEL_19:
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v35 = *(v0 + 1584);
      v36 = *(v0 + 1536);
      v37 = *(v0 + 1528);
      v38 = *(v0 + 800);
      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Log.device);
      (*(v36 + 16))(v35, v38, v37);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.info.getter();
      v42 = os_log_type_enabled(v40, v41);
      v43 = *(v0 + 1584);
      v44 = *(v0 + 1536);
      v45 = *(v0 + 1528);
      if (v42)
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v79[0] = v47;
        *v46 = 136446210;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v50 = v49;
        (*(v44 + 8))(v43, v45);
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v79);

        *(v46 + 4) = v51;
        _os_log_impl(&dword_220940000, v40, v41, "Successfully handled streaming request %{public}s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x223D90A10](v47, -1, -1);
        MEMORY[0x223D90A10](v46, -1, -1);
      }

      else
      {

        (*(v44 + 8))(v43, v45);
      }

      *(v0 + 2040) = *(*(v0 + 1632) + 176);

      v56 = swift_task_alloc();
      *(v0 + 2048) = v56;
      *v56 = v0;
      v56[1] = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
      v57 = *(v0 + 1432);
      v58 = *(v0 + 840);

      return DataStreamStateManager.removeState(uuid:state:)(v58, v57);
    }

    v71 = *(v0 + 1432);
    v69 = *(v0 + 1160);
    v59 = *(v0 + 992);
    v60 = *(v0 + 984);
    v61 = *(v0 + 976);
    v62 = *(v0 + 968);
    v63 = *(v0 + 928);
    v73 = *(v0 + 808);
    v75 = *(v0 + 1640);
    v64 = *(v0 + 784);
    (*(v61 + 32))(v59, *(v0 + 960), v62);
    swift_beginAccess();
    *(v63 + 16) = 0;
    UUID.uuidString.getter();
    UUID.uuidString.getter();
    (*(v61 + 16))(v60, v59, v62);
    v65 = type metadata accessor for PromptCompletionEventCandidateFinished();
    v66 = MEMORY[0x277D71D68];
    v64[3] = v65;
    v64[4] = v66;
    __swift_allocate_boxed_opaque_existential_1(v64);
    PromptCompletionEventCandidateFinished.init(responseIdentifier:candidateIdentifier:finishReason:)();

    (*(v61 + 8))(v59, v62);
    outlined destroy of [Int](v69, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMd, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMR);
    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v71, type metadata accessor for DataStreamState);
    v67 = swift_task_alloc();
    *(v67 + 16) = v73;
    *(v67 + 24) = 0;
    v68 = swift_task_alloc();
    *(v68 + 16) = closure #1 in DataStreamCancellationHandler.setIsInUse(isInUse:)partial apply;
    *(v68 + 24) = v67;
    v26 = v75;
    os_unfair_lock_lock(v75 + 4);
    v27 = v4;
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v79);
LABEL_9:
    os_unfair_lock_unlock(v26 + 4);
    if (!v27)
    {
      goto LABEL_5;
    }

LABEL_10:
  }

  v28 = *(*(v0 + 1432) + 8);
  *(v0 + 1896) = v28;
  if (v28 == 1)
  {
    v29 = *(*(v0 + 1632) + 176);
    *(v0 + 1912) = v29;
    v30 = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
    goto LABEL_24;
  }

  if (!v28)
  {
    v29 = *(*(v0 + 1632) + 176);
    *(v0 + 1904) = v29;
    v30 = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
LABEL_24:
    v52 = v30;

    return MEMORY[0x2822009F8](v52, v29, 0);
  }

  outlined init with copy of DeterministicLanguageModelProtocol(*(v0 + 1856) + 16, v0 + 16);
  v53 = *(v0 + 40);
  v54 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v53);
  v78 = (*(v54 + 16) + **(v54 + 16));
  v55 = swift_task_alloc();
  *(v0 + 1920) = v55;
  *v55 = v0;
  v55[1] = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);

  return v78(v53, v54);
}

{

  return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), 0, 0);
}

{
  v16 = v0;
  v1 = v0[232];
  v13 = v0[205];
  v14 = v0[254];
  v2 = v0[161];
  v7 = v0[160];
  v8 = v0[162];
  v11 = v0[179];
  v12 = v0[101];
  v9 = v0[145];
  v10 = v0[98];
  type metadata accessor for TransparencyReport();
  swift_allocObject();
  TransparencyReport.init()();
  __swift_project_boxed_opaque_existential_1((v1 + 256), *(v1 + 280));
  dispatch thunk of TokenIDToTextConverterProtocol.text.getter();
  InferenceProviderRequestConfiguration.assetBundleIdentifier.getter();
  OnDeviceInferenceContext.modelVersion.getter();
  (*(v2 + 104))(v8, *MEMORY[0x277D20988], v7);
  TransparencyReport.logEvent(configuration:prompt:response:model:modelVersion:executionEnvironment:)();

  (*(v2 + 8))(v8, v7);
  outlined destroy of [Int](v9, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMd, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMR);
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v11, type metadata accessor for DataStreamState);
  v3 = swift_task_alloc();
  *(v3 + 16) = v12;
  *(v3 + 24) = 0;
  v4 = swift_task_alloc();
  *(v4 + 16) = closure #1 in DataStreamCancellationHandler.setIsInUse(isInUse:)partial apply;
  *(v4 + 24) = v3;
  os_unfair_lock_lock(v13 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v15);
  os_unfair_lock_unlock((v0[205] + 16));
  if (v14)
  {
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

{
  v13 = v0;
  v1 = v0[205];
  v2 = v0[190];
  v3 = v0[187];
  v4 = v0[184];
  v5 = v0[183];
  v6 = v0[101];
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  swift_allocError();
  (*(v4 + 32))(v7, v3, v5);
  outlined destroy of [Int](v2, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  v8 = swift_task_alloc();
  *(v8 + 16) = v6;
  *(v8 + 24) = 0;
  v9 = swift_task_alloc();
  *(v9 + 16) = closure #1 in DataStreamCancellationHandler.setIsInUse(isInUse:)partial apply;
  *(v9 + 24) = v8;
  os_unfair_lock_lock(v1 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v12);
  os_unfair_lock_unlock((v0[205] + 16));

  v10 = v0[1];

  return v10();
}

{

  return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), 0, 0);
}

{
  v20 = v0;
  v1 = v0[258];
  v2 = v0[257];
  v3 = v0[186];
  v4 = v0[184];
  v5 = v0[183];
  v14 = v0[182];
  v15 = v0[190];
  v16 = v0[180];
  v13 = v0[119];
  v6 = v0[118];
  v7 = v0[117];
  v17 = v0[101];
  v18 = v0[205];
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  swift_willThrowTypedImpl();
  swift_allocError();
  (*(v4 + 16))(v8, v3, v5);

  (*(v4 + 8))(v3, v5);
  (*(v6 + 8))(v13, v7);
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v14, type metadata accessor for InferenceRequest);
  outlined destroy of [Int](v15, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v16, type metadata accessor for DataStreamState);
  v9 = swift_task_alloc();
  *(v9 + 16) = v17;
  *(v9 + 24) = 0;
  v10 = swift_task_alloc();
  *(v10 + 16) = closure #1 in DataStreamCancellationHandler.setIsInUse(isInUse:)partial apply;
  *(v10 + 24) = v9;
  os_unfair_lock_lock(v18 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v19);
  os_unfair_lock_unlock((v0[205] + 16));

  v11 = v0[1];

  return v11();
}

{
  v43 = v0;
  v1 = *(v0 + 1800);
  *(v0 + 2056) = v1;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 1744);
  v3 = *(v0 + 1560);
  v4 = *(v0 + 1528);
  v5 = *(v0 + 800);
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.device);
  v2(v3, v5, v4);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1560);
  v12 = *(v0 + 1536);
  v13 = *(v0 + 1528);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v14 = 136446466;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v42);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2114;
    v19 = v1;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v20;
    *v40 = v20;
    _os_log_impl(&dword_220940000, v8, v9, "Failed to handle request %{public}s, error tokenizing prompt: %{public}@", v14, 0x16u);
    outlined destroy of [Int](v40, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D90A10](v40, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x223D90A10](v41, -1, -1);
    MEMORY[0x223D90A10](v14, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v21 = *(v0 + 1712);
  v22 = *(v0 + 1704);
  v23 = *(v0 + 1696);
  v24 = *(v0 + 2120);
  v25 = *(v0 + 1440);
  outlined destroy of [Int](v25 + v24, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMR);
  (*(v22 + 104))(v25 + v24, *MEMORY[0x277D20BC8], v23);
  v21(v25 + v24, 0, 1, v23);
  v26 = _convertErrorToNSError(_:)();
  *(v0 + 2064) = v26;
  v27 = v1;
  v28 = [v26 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [v26 code];
  v29 = *(v0 + 1488);
  v30 = *(v0 + 1472);
  v31 = *(v0 + 1464);
  v32 = *(v0 + 952);
  v33 = *(v0 + 944);
  v34 = *(v0 + 936);
  v35 = v27;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
  (*(v33 + 16))(v29, v32, v34);
  (*(v30 + 104))(v29, *MEMORY[0x277D29DA8], v31);
  v36 = swift_task_alloc();
  *(v0 + 2072) = v36;
  *v36 = v0;
  v36[1] = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
  v37 = *(v0 + 1440);
  v38 = *(v0 + 840);

  return DataStreamStateManager.removeState(uuid:state:)(v38, v37);
}

{

  return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), 0, 0);
}

{
  v16 = v0;
  v1 = v0[261];
  v2 = v0[260];
  v3 = v0[185];
  v4 = v0[184];
  v5 = v0[183];
  v6 = v0[179];
  v7 = v0[145];
  v13 = v0[101];
  v14 = v0[205];
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  swift_willThrowTypedImpl();
  swift_allocError();
  (*(v4 + 16))(v8, v3, v5);

  (*(v4 + 8))(v3, v5);
  outlined destroy of [Int](v7, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMd, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMR);
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v6, type metadata accessor for DataStreamState);
  v9 = swift_task_alloc();
  *(v9 + 16) = v13;
  *(v9 + 24) = 0;
  v10 = swift_task_alloc();
  *(v10 + 16) = closure #1 in DataStreamCancellationHandler.setIsInUse(isInUse:)partial apply;
  *(v10 + 24) = v9;
  os_unfair_lock_lock(v14 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v15);
  os_unfair_lock_unlock((v0[205] + 16));

  v11 = v0[1];

  return v11();
}

{
  v62 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[242];
  v0[260] = v1;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v2 = v0[194];
  v3 = v0[192];
  v4 = v0[191];
  v5 = v0[100];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.device);
  (*(v3 + 16))(v2, v5, v4);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[194];
  v12 = v0[192];
  v13 = v0[191];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = v60;
    *v14 = 136446466;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = v1;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = v16;
    v1 = v15;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v61);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2114;
    v21 = v15;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v22;
    *v59 = v22;
    _os_log_impl(&dword_220940000, v8, v9, "Failed to handle request %{public}s, error decoding next token. error: %{public}@.", v14, 0x16u);
    outlined destroy of [Int](v59, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D90A10](v59, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x223D90A10](v60, -1, -1);
    MEMORY[0x223D90A10](v14, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v23 = v0[179];
  v24 = v0[177];
  v25 = _convertErrorToNSError(_:)();
  v0[261] = v25;
  v26 = *(v24 + 52);
  outlined destroy of [Int](v23 + v26, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMR);
  v27 = *MEMORY[0x277D20BC0];
  v28 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v23 + v26, v27, v28);
  (*(v29 + 56))(v23 + v26, 0, 1, v28);
  if ([v25 code] != 2)
  {
    goto LABEL_13;
  }

  v30 = [v25 domain];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  if (v31 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v33 != v34)
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {
      goto LABEL_11;
    }

LABEL_13:
    v50 = [v25 localizedDescription];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = [v25 domain];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    [v25 code];
    v52 = v0[185];
    v53 = v0[184];
    v54 = v0[183];
    v55 = v1;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
    (*(v53 + 104))(v52, *MEMORY[0x277D29DA8], v54);
    goto LABEL_14;
  }

LABEL_11:
  v36 = [v25 localizedDescription];
  v37 = v0[237];
  v38 = v0[179];
  v39 = v36;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  result = TokenGenerationError.Context.init(debugDescription:underlyingError:)();
  v41 = *(v38 + 16);
  v42 = v41 + v37;
  if (__OFADD__(v41, v37))
  {
    __break(1u);
    return result;
  }

  v43 = v0[165];
  v44 = v0[164];
  v45 = v0[163];
  v46 = v0[138];
  v47 = v0[137];
  v48 = v0[136];
  v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi5count_Si7maximum15TokenGeneration0cD5ErrorO7ContextVtMd, &_sSi5count_Si7maximum15TokenGeneration0cD5ErrorO7ContextVtMR) + 64);
  *v46 = v42;
  *(v46 + 1) = OnDeviceInferenceContext.maximumContextLength.getter();
  (*(v44 + 16))(&v46[v49], v43, v45);
  (*(v47 + 104))(v46, *MEMORY[0x277D71AC8], v48);
  TokenGenerationError.toInferenceError()();
  (*(v47 + 8))(v46, v48);
  (*(v44 + 8))(v43, v45);
LABEL_14:
  v56 = swift_task_alloc();
  v0[262] = v56;
  *v56 = v0;
  v56[1] = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
  v57 = v0[179];
  v58 = v0[105];

  return DataStreamStateManager.removeState(uuid:state:)(v58, v57);
}

{

  return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), 0, 0);
}

{
  v19 = v0;
  v1 = v0[263];
  v2 = v0[186];
  v3 = v0[184];
  v4 = v0[183];
  v15 = v0[179];
  v13 = v0[247];
  v14 = v0[145];
  v5 = v0[119];
  v6 = v0[118];
  v7 = v0[117];
  v16 = v0[101];
  v17 = v0[205];
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  swift_willThrowTypedImpl();
  swift_allocError();
  (*(v3 + 32))(v8, v2, v4);

  (*(v6 + 8))(v5, v7);
  outlined destroy of [Int](v14, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMd, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMR);

  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v15, type metadata accessor for DataStreamState);
  v9 = swift_task_alloc();
  *(v9 + 16) = v16;
  *(v9 + 24) = 0;
  v10 = swift_task_alloc();
  *(v10 + 16) = closure #1 in DataStreamCancellationHandler.setIsInUse(isInUse:)partial apply;
  *(v10 + 24) = v9;
  os_unfair_lock_lock(v17 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v18);
  os_unfair_lock_unlock((v0[205] + 16));

  v11 = v0[1];

  return v11();
}

uint64_t closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1928) = a1;
  *(v3 + 1936) = v1;

  if (v1)
  {
    v4 = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
  }

  else
  {
    v4 = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v3 = *v2;
  *(v3 + 1768) = a1;
  *(v3 + 1776) = v1;

  if (v1)
  {
    v4 = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
  }

  else
  {
    v4 = closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t specialized TG_OnDeviceInferenceProvider.updateMetrics(dataStreamState:inferenceContext:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v157 = &v149 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v163 = &v149 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v162 = &v149 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v165 = &v149 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v149 - v24;
  v27 = MEMORY[0x28223BE20](v23, v26);
  v161 = &v149 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v164 = &v149 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
  v33 = MEMORY[0x28223BE20](v31 - 8, v32);
  v150 = &v149 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v154 = &v149 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v41 = &v149 - v40;
  v43 = MEMORY[0x28223BE20](v39, v42);
  v156 = &v149 - v44;
  v46 = MEMORY[0x28223BE20](v43, v45);
  v48 = &v149 - v47;
  MEMORY[0x28223BE20](v46, v49);
  v51 = &v149 - v50;
  v155 = a2;
  outlined init with copy of DeterministicLanguageModelProtocol(a2 + 16, v180);
  outlined init with copy of DeterministicLanguageModelProtocol(v180, v179);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15SamplingDecoder_pMd, &_s24TokenGenerationInference15SamplingDecoder_pMR);
  type metadata accessor for TokenHealingDecoder(0);
  v151 = v52;
  v53 = swift_dynamicCast();
  v149 = v9;
  if (v53)
  {
    v54 = *&v178[0];
    v55 = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_baseDecoder;
    swift_beginAccess();
    outlined init with copy of DeterministicLanguageModelProtocol(v54 + v55, v178);
  }

  else
  {
    outlined init with copy of DeterministicLanguageModelProtocol(v180, v178);
  }

  v158 = v51;
  outlined init with take of RandomNumberGenerator(v178, v179);
  v152 = a1;
  v56 = *a1;
  v57 = *(*a1 + 16);
  v166 = v5;
  v153 = v56;
  if (v57)
  {
    v58 = v56 + 32;
    v59 = v25 + 8;
    v60 = (v5 + 56);
    v61 = MEMORY[0x277D84F90];
    v159 = v4;
    v160 = v25;
    do
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v58, v178);
      outlined init with take of RandomNumberGenerator(v178, v177);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
      v62 = swift_dynamicCast();
      v63 = *v60;
      if (v62)
      {
        v63(v48, 0, 1, v4);
        outlined init with take of OnDeviceInferenceAssetObjectTokenizer(v48, v25, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
        if (v59[*(v4 + 36)] == 2)
        {
          v64 = v25;
          v65 = v161;
          outlined init with take of OnDeviceInferenceAssetObjectTokenizer(v64, v161, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
          outlined init with take of OnDeviceInferenceAssetObjectTokenizer(v65, v164, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1, v61);
          }

          v67 = v61[2];
          v66 = v61[3];
          if (v67 >= v66 >> 1)
          {
            v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v61);
          }

          v61[2] = v67 + 1;
          outlined init with take of OnDeviceInferenceAssetObjectTokenizer(v164, v61 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v67, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
          v4 = v159;
          v25 = v160;
        }

        else
        {
          outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v25, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
        }
      }

      else
      {
        v63(v48, 1, 1, v4);
        outlined destroy of [Int](v48, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
      }

      v58 += 40;
      --v57;
    }

    while (v57);
  }

  else
  {
    v61 = MEMORY[0x277D84F90];
  }

  if (v61[2])
  {
    v68 = v166;
    v69 = v158;
    outlined init with copy of OnDeviceInferenceAssetObjectImageTokenizer(v61 + ((*(v166 + 80) + 32) & ~*(v166 + 80)), v158, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    v70 = 0;
  }

  else
  {
    v70 = 1;
    v69 = v158;
    v68 = v166;
  }

  v71 = v163;

  v74 = *(v68 + 56);
  v72 = v68 + 56;
  v73 = v74;
  v74(v69, v70, 1, v4);
  v75 = *(v153 + 16);
  if (v75)
  {
    v76 = v153 + 32;
    v77 = v71 + 8;
    v78 = MEMORY[0x277D84F90];
    v164 = v72;
    do
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v76, v178);
      outlined init with take of RandomNumberGenerator(v178, v177);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
      if (swift_dynamicCast())
      {
        v73(v41, 0, 1, v4);
        outlined init with take of OnDeviceInferenceAssetObjectTokenizer(v41, v71, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
        if (*(v77 + *(v4 + 36)) == 2)
        {
          outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v71, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
        }

        else
        {
          v79 = v71;
          v80 = v162;
          outlined init with take of OnDeviceInferenceAssetObjectTokenizer(v79, v162, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
          outlined init with take of OnDeviceInferenceAssetObjectTokenizer(v80, v165, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78[2] + 1, 1, v78);
          }

          v82 = v78[2];
          v81 = v78[3];
          if (v82 >= v81 >> 1)
          {
            v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v78);
          }

          v78[2] = v82 + 1;
          outlined init with take of OnDeviceInferenceAssetObjectTokenizer(v165, v78 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v82, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
          v71 = v163;
        }
      }

      else
      {
        v73(v41, 1, 1, v4);
        outlined destroy of [Int](v41, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
      }

      v76 += 40;
      --v75;
    }

    while (v75);
  }

  else
  {
    v78 = MEMORY[0x277D84F90];
  }

  if (v78[2])
  {
    v83 = v166;
    v84 = v156;
    outlined init with copy of OnDeviceInferenceAssetObjectImageTokenizer(v78 + ((*(v166 + 80) + 32) & ~*(v166 + 80)), v156, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    v85 = 0;
  }

  else
  {
    v85 = 1;
    v84 = v156;
    v83 = v166;
  }

  v73(v84, v85, 1, v4);
  v86 = v154;
  v87 = *(v155 + 168);
  v88 = *(v155 + 176);
  v89 = v158;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v158, v154, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
  v90 = *(v83 + 48);
  if (v90(v86, 1, v4) == 1)
  {
    outlined destroy of [Int](v84, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
    outlined destroy of [Int](v89, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
    __swift_destroy_boxed_opaque_existential_1(v179);
    __swift_destroy_boxed_opaque_existential_1(v180);
    return outlined destroy of [Int](v86, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
  }

  outlined init with take of OnDeviceInferenceAssetObjectTokenizer(v86, v157, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  v92 = v150;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v84, v150, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
  if (v90(v92, 1, v4) == 1)
  {
    outlined destroy of [Int](v92, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
    goto LABEL_49;
  }

  v93 = v149;
  outlined init with take of OnDeviceInferenceAssetObjectTokenizer(v92, v149, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  outlined init with copy of DeterministicLanguageModelProtocol(v179, v177);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference44SpeculativeDecoderPerformanceLoggingProtocol_pMd, &_s24TokenGenerationInference44SpeculativeDecoderPerformanceLoggingProtocol_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v93, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    memset(v174, 0, sizeof(v174));
    v175 = 0;
    outlined destroy of [Int](v174, &_s24TokenGenerationInference44SpeculativeDecoderPerformanceLoggingProtocol_pSgMd, &_s24TokenGenerationInference44SpeculativeDecoderPerformanceLoggingProtocol_pSgMR);
LABEL_49:
    outlined init with copy of DeterministicLanguageModelProtocol(v179, v178);
    type metadata accessor for SpeculativeStreamingPerformanceLoggingDecoder();
    if (swift_dynamicCast())
    {
      v129 = v177[0];
      swift_beginAccess();
      v130 = *(v157 + *(v4 + 32));
      v131 = v129[20];
      v106 = 0.0;
      v101 = 0.0;
      if (v131)
      {
        v101 = (v129[21] * 100.0) / v131;
      }

      v166 = v129[18];
      v132 = *(v130 + 64);
      swift_beginAccess();
      v133 = v129[22];
      if (v133)
      {
        swift_beginAccess();
        v106 = (v129[23] * 100.0) / v133;
      }

      v112 = v129[25];
      v164 = v129[24];
      swift_beginAccess();

      v134 = Duration.components.getter();
      Duration.components.getter();
      v136 = v135;

      outlined destroy of [Int](v156, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
      outlined destroy of [Int](v89, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
      __swift_destroy_boxed_opaque_existential_1(v179);
      __swift_destroy_boxed_opaque_existential_1(v180);
      v165 = 0;
      LODWORD(v84) = 0;
      v128 = 0;
      v119 = v136 * 1.0e-18 + v134;
      v124 = 1;
      v170[0] = 1;
      v169[0] = 1;
      v176 = 1;
      v125 = 1;
      v126 = 1;
      v116 = 0.0;
      v163 = v132;
    }

    else
    {
      outlined destroy of [Int](v84, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
      outlined destroy of [Int](v89, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
      __swift_destroy_boxed_opaque_existential_1(v179);
      __swift_destroy_boxed_opaque_existential_1(v180);
      v165 = 0;
      v166 = 0;
      v163 = 0;
      v164 = 0;
      LODWORD(v84) = 0;
      v112 = 0;
      v126 = 0;
      v125 = 0;
      v124 = 0;
      v116 = 0.0;
      v101 = 0.0;
      v106 = 0.0;
      v119 = 0.0;
      v128 = 2;
    }

    goto LABEL_56;
  }

  outlined init with take of RandomNumberGenerator(v174, v178);
  if (v88 == 2)
  {
    v94 = 0;
  }

  else
  {
    v94 = v87;
  }

  v166 = v94;
  v95 = *(v4 + 32);
  v96 = *(v93 + v95);
  v97 = *(v157 + v95);
  outlined init with copy of DeterministicLanguageModelProtocol(v178, v171);
  v165 = *(v96 + 64);
  v163 = *(v97 + 64);
  v98 = v172;
  v99 = v173;
  __swift_project_boxed_opaque_existential_1(v171, v172);
  v100 = *(v99 + 8);

  v101 = v100(v98, v99);
  v102 = v172;
  v103 = v173;
  __swift_project_boxed_opaque_existential_1(v171, v172);
  v84 = (*(v103 + 16))(v102, v103);
  v104 = v172;
  v105 = v173;
  __swift_project_boxed_opaque_existential_1(v171, v172);
  v106 = (*(v105 + 24))(v104, v105);
  v107 = v172;
  v108 = v173;
  __swift_project_boxed_opaque_existential_1(v171, v172);
  v164 = (*(v108 + 32))(v107, v108);
  v109 = v172;
  v110 = v173;
  __swift_project_boxed_opaque_existential_1(v171, v172);
  (*(v110 + 32))(v109, v110);
  v112 = v111;
  swift_beginAccess();

  v113 = Duration.components.getter();
  Duration.components.getter();
  v115 = v114;

  v116 = v115 * 1.0e-18 + v113;
  swift_beginAccess();
  v117 = Duration.components.getter();
  Duration.components.getter();
  v119 = v118 * 1.0e-18 + v117;
  v120 = v172;
  v121 = v173;
  __swift_project_boxed_opaque_existential_1(v171, v172);
  LODWORD(v162) = (*(v121 + 40))(v120, v121);
  v122 = v172;
  v123 = v173;
  __swift_project_boxed_opaque_existential_1(v171, v172);
  LOBYTE(v115) = (*(v123 + 48))(v122, v123);

  __swift_destroy_boxed_opaque_existential_1(v178);
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v149, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  outlined destroy of [Int](v156, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
  outlined destroy of [Int](v158, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
  __swift_destroy_boxed_opaque_existential_1(v179);
  __swift_destroy_boxed_opaque_existential_1(v180);
  v124 = 1;
  v176 = 1;
  v168 = BYTE4(v84) & 1;
  v167 = 1;
  v125 = BYTE4(v84) & 1;
  v126 = 1;
  __swift_destroy_boxed_opaque_existential_1(v171);
  if (v115)
  {
    v127 = 256;
  }

  else
  {
    v127 = 0;
  }

  v128 = v127 & 0xFFFE | v162 & 1;
LABEL_56:
  v137 = type metadata accessor for DataStreamState(0);
  v138 = v152;
  v139 = v152 + v137[15];
  *v139 = 0;
  *(v139 + 1) = v124;
  v140 = v163;
  *(v139 + 2) = v165;
  *(v139 + 3) = v140;
  *(v139 + 4) = v166;
  *(v139 + 10) = v101;
  *(v139 + 11) = v84;
  *(v139 + 12) = v125;
  *(v139 + 13) = v106;
  *(v139 + 7) = v164;
  *(v139 + 8) = v112;
  *(v139 + 9) = 0;
  *(v139 + 10) = v126;
  *(v139 + 11) = v116;
  *(v139 + 12) = v119;
  *(v139 + 52) = v128;
  v141 = *(v157 + *(v4 + 32));
  v142 = *(v141 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_prefixKVCacheTokensMatchCount);
  v143 = *(v141 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_prefixKVCacheTokensMatchCount + 8);
  v144 = (v141 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_promptModulesKVCacheTokensMatchCount);
  v145 = *v144;
  v146 = *(v144 + 8);
  result = outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v157, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  v147 = v138 + v137[17];
  *v147 = v142;
  v147[8] = v143;
  v148 = v138 + v137[18];
  *v148 = v145;
  v148[8] = v146;
  return result;
}

uint64_t type metadata accessor for TokenHealingDecoder(uint64_t a1)
{
  result = type metadata singleton initialization cache for TokenHealingDecoder;
  if (!type metadata singleton initialization cache for TokenHealingDecoder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of OnDeviceInferenceAssetObjectTokenizer(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of OnDeviceInferenceAssetObjectImageTokenizer(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double protocol witness for SpeculativeDecoderPerformanceLoggingProtocol.draftTokenAcceptanceRateInPercent.getter in conformance TwoStageSpeculativeDecoder()
{
  v1 = *(*v0 + 336);
  if (v1 < 1)
  {
    return 0.0;
  }

  *&result = (*(*v0 + 328) * 100.0) / v1;
  return result;
}

double protocol witness for SpeculativeDecoderPerformanceLoggingProtocol.speculationSuccessRateInPercent.getter in conformance TwoStageSpeculativeDecoder()
{
  v1 = *(*v0 + 376);
  if (v1 < 1)
  {
    return 0.0;
  }

  *&result = (*(*v0 + 368) * 100.0) / v1;
  return result;
}

uint64_t protocol witness for SpeculativeDecoderPerformanceLoggingProtocol.numberOfDraftOutputTokensVsTotalNumberOutputTokens.getter in conformance TwoStageSpeculativeDecoder()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 352);
  result = v1 - v2;
  if (__OFSUB__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

char *specialized TG_OnDeviceInferenceProvider.parseToolCalls(_:state:)(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = type metadata accessor for Token();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v32 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v35 = &v26 - v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v30 = *(type metadata accessor for DataStreamState(0) + 44);
  v12 = *(v4 + 16);
  v11 = v4 + 16;
  v33 = v12;
  v27 = (*(v11 + 64) + 32) & ~*(v11 + 64);
  v13 = a1 + v27;
  v14 = *(v11 + 56);
  v28 = (v11 - 8);
  v26 = (v11 + 16);
  v34 = MEMORY[0x277D84F90];
  v29 = v14;
  do
  {
    v16 = v3;
    v17 = v11;
    v33(v35, v13, v3);
    v18 = ToolCallParser.isToolCallInProgress.getter();
    v19 = Token.text.getter();
    v20 = MEMORY[0x223D8D4D0](v19);

    v21 = ToolCallParser.isToolCallInProgress.getter();
    specialized Array.append<A>(contentsOf:)(v20);
    if (v18 & 1) != 0 || (v21)
    {
      v3 = v16;
      (*v28)(v35, v16);
      v11 = v17;
      v15 = v29;
    }

    else
    {
      v3 = v16;
      v11 = v17;
      v33(v32, v35, v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
      }

      v15 = v29;
      v23 = *(v34 + 2);
      v22 = *(v34 + 3);
      if (v23 >= v22 >> 1)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v34);
      }

      (*v28)(v35, v16);
      v24 = v34;
      *(v34 + 2) = v23 + 1;
      (*v26)(&v24[v27 + v23 * v15], v32, v16);
    }

    v13 += v15;
    --v10;
  }

  while (v10);
  return v34;
}

uint64_t DataStreamStateManager.updateState(uuid:state:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15DataStreamStateVSgMd, &_s24TokenGenerationInference15DataStreamStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v19[-v7];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v14 = *(v2 + 112);
  v20 = a1;

  specialized Sequence.contains(where:)(partial apply for closure #1 in DataStreamStateManager.updateState(uuid:state:), v19, v14);
  v16 = v15;

  if (v16)
  {
    (*(v10 + 16))(v13, a1, v9);
    outlined init with copy of DataStreamState(a2, v8);
    v18 = type metadata accessor for DataStreamState(0);
    (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v8, v13);
    return swift_endAccess();
  }

  return result;
}

void specialized Sequence.contains(where:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_24TokenGenerationInference15DataStreamStateV5valuetMd, &_s10Foundation4UUIDV3key_24TokenGenerationInference15DataStreamStateV5valuetMR);
  MEMORY[0x28223BE20](v25, v6);
  v8 = &v24 - v7;
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  v27 = a3;

  v14 = 0;
  while (v12)
  {
    v28 = v4;
LABEL_10:
    v16 = __clz(__rbit64(v12)) | (v14 << 6);
    v17 = v27;
    v18 = *(v27 + 48);
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 16))(v8, v18 + *(*(v19 - 8) + 72) * v16, v19);
    v20 = *(v17 + 56);
    v21 = type metadata accessor for DataStreamState(0);
    outlined init with copy of DataStreamState(v20 + *(*(v21 - 8) + 72) * v16, &v8[*(v25 + 48)]);
    v22 = v28;
    v23 = v26(v8);
    v4 = v22;
    outlined destroy of [Int](v8, &_s10Foundation4UUIDV3key_24TokenGenerationInference15DataStreamStateV5valuetMd, &_s10Foundation4UUIDV3key_24TokenGenerationInference15DataStreamStateV5valuetMR);
    if (!v22)
    {
      v12 &= v12 - 1;
      if ((v23 & 1) == 0)
      {
        continue;
      }
    }

LABEL_12:

    return;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {
      goto LABEL_12;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v28 = v4;
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t outlined init with copy of DataStreamState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataStreamState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_220967504(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for StopSequenceMonitor();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for ToolCallParser();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[13];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration12FinishReasonOSgMd, &_s15TokenGeneration12FinishReasonOSgMR);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[16];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = &v5[a4[20]];

  return v17(v18, a2, a2, v16);
}