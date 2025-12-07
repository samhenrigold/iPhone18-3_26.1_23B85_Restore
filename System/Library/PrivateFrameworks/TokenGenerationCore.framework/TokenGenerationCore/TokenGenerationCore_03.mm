char *specialized static EarleyRecognizer.createRootItems(recognizerGrammar:)(char *result)
{
  v1 = *(result + 6);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = result;
  v3 = *(result + 9);
  if (v1 >= *(v3 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v4 = *(v3 + 8 * v1 + 32);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v16 = result;
    v17 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v7 = 0;
    v8 = v17;
    v9 = *(v17 + 2);
    v10 = 40 * v9;
    do
    {
      v11 = *(v4 + 32 + 8 * v7);
      v17 = v8;
      v12 = *(v8 + 3);
      v13 = v9 + v7 + 1;
      if (v9 + v7 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v9 + v7 + 1, 1);
        v8 = v17;
      }

      ++v7;
      *(v8 + 2) = v13;
      v14 = &v8[v10];
      *(v14 + 4) = v11;
      *(v14 + 5) = 0;
      *(v14 + 6) = 0;
      *(v14 + 7) = 0;
      v10 += 40;
      v14[64] = 1;
    }

    while (v5 != v7);

    v2 = v16;
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v17 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMd, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A8FC9400;
  *(inited + 32) = v6;
  specialized static EarleyRecognizer.predictAndComplete(recognizerGrammar:chart:items:)(v2, inited, v6, &v17);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_sSay19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
  swift_arrayDestroy();
  return v17;
}

uint64_t specialized static EarleyRecognizer.createRootRecognizer(for:vocabularyManager:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v14[0] = *a1;
  v14[1] = v3;
  v14[2] = v4;
  v14[3] = v5;
  v14[4] = v7;
  v14[5] = v6;
  type metadata accessor for EarleyRecognizer.RecognizerGrammar();
  v8 = swift_allocObject();

  EarleyRecognizer.RecognizerGrammar.init(grammar:vocabularyManager:)(v14, a2);
  v9 = specialized static EarleyRecognizer.createRootItems(recognizerGrammar:)(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMd, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A8FC9400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A8FC9400;
  *(v11 + 32) = v9;
  *(v10 + 32) = v11;
  type metadata accessor for EarleyRecognizer();
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 28) = -1;
  *(v12 + 24) = 0;
  *(v12 + 32) = v8;
  *(v12 + 40) = v10;
  *(v12 + 48) = MEMORY[0x1E69E7CC0];

  return v12;
}

uint64_t specialized static EarleyRecognizer.parse(recognizerGrammar:element:with:items:)(void *a1, unsigned int *a2, uint64_t *a3, char **a4)
{
  v57 = *a2;
  v6 = *(a2 + 4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a4;
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v8 + 2));
  }

  else
  {
    v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19TokenGenerationCore16EarleyRecognizerC4ItemV_Tt1g5(0, *(v8 + 3) >> 1);

    *a4 = v9;
  }

  v48 = *a3;
  v49 = a3;
  v50 = a3[1];
  result = EarleyRecognizer.Chart.lastState.getter(*a3, v50, &v63);
  v11 = v63;
  if (!v63)
  {
    __break(1u);
    return result;
  }

  v12 = *(v63 + 16);
  if (!v12)
  {
LABEL_29:

    if (*(*a4 + 2))
    {
      v11 = v50;
      specialized static EarleyRecognizer.predictAndComplete(recognizerGrammar:chart:items:)(a1, v48, v50, a4);
      v35 = *a4;
      v36 = *(*a4 + 2);
      v12 = MEMORY[0x1E69E7CC0];
      if (v36)
      {
        v63 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
        v37 = 0;
        v12 = v63;
        v38 = *(v63 + 16);
        v39 = 40 * v38;
        do
        {
          v40 = *&v35[v37 + 32];
          v41 = *&v35[v37 + 48];
          v42 = v35[v37 + 64];
          v63 = v12;
          v43 = *(v12 + 24);
          v44 = v38 + 1;
          if (v38 >= v43 >> 1)
          {
            v59 = v41;
            v62 = v40;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v38 + 1, 1);
            v41 = v59;
            v40 = v62;
            v12 = v63;
          }

          *(v12 + 16) = v44;
          v45 = v12 + v39 + v37;
          *(v45 + 32) = v40;
          *(v45 + 48) = v41;
          *(v45 + 64) = v42;
          v37 += 40;
          v38 = v44;
          --v36;
        }

        while (v36);
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
      v11 = v50;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  v13 = a1[4];
  v14 = a1[7];
  v15 = v13 + 32;
  v16 = (v63 + 64);
  v51 = v63;
  v52 = a4;
  v55 = v13 + 32;
  v56 = v13;
  v54 = v6;
  while (1)
  {
    v18 = *(v16 - 4);
    if ((v18 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v18 >= *(v14 + 16))
    {
      goto LABEL_42;
    }

    v19 = *(v16 - 3);
    v20 = *(v14 + 40 + 24 * v18);
    if (v19 < *(v20 + 16))
    {
      v21 = v20 + 16 * v19;
      if (!*(v21 + 40))
      {
        v22 = *(v21 + 32);
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v22 >= *(v13 + 16))
        {
          goto LABEL_44;
        }

        v23 = *(v16 - 1);
        v24 = *v16;
        v25 = v15 + 16 * v22;
        v26 = *v25;
        v27 = *(v25 + 8);
        if (v6)
        {
          if (v27 && (v27 == 1 || v57 == v26))
          {
            goto LABEL_25;
          }
        }

        else if (v27)
        {
          if (v27 == 1)
          {
            v60 = *(v16 - 1);
            v28 = *v16;
            v29 = [v26 longCharacterIsMember_];
            v24 = v28;
            v6 = v54;
            v23 = v60;
            v15 = v55;
            v13 = v56;
            if (v29)
            {
LABEL_25:
              v58 = v24;
              v61 = v23;
              v30 = *a4;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
              }

              v32 = *(v30 + 2);
              v31 = *(v30 + 3);
              v15 = v55;
              v13 = v56;
              v33 = v61;
              if (v32 >= v31 >> 1)
              {
                v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v30);
                v33 = v61;
                v15 = v55;
                v13 = v56;
                v30 = v34;
              }

              *(v30 + 2) = v32 + 1;
              v17 = &v30[40 * v32];
              *(v17 + 4) = v18;
              *(v17 + 5) = v19 + 1;
              *(v17 + 3) = v33;
              v17[64] = v58;
              v11 = v51;
              a4 = v52;
              *v52 = v30;
              v6 = v54;
            }
          }
        }

        else if (v57 == v26)
        {
          goto LABEL_25;
        }
      }
    }

    v16 += 40;
    if (!--v12)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMR, &type metadata for EarleyRecognizer.State);
  v11 = result;
LABEL_38:
  v47 = *(v11 + 16);
  v46 = *(v11 + 24);
  if (v47 >= v46 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v11, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMR, &type metadata for EarleyRecognizer.State);
    v11 = result;
  }

  *(v11 + 16) = v47 + 1;
  *(v11 + 8 * v47 + 32) = v12;
  v49[1] = v11;
  return result;
}

unint64_t lazy protocol witness table accessor for type EarleyRecognizer.State and conformance EarleyRecognizer.State()
{
  result = lazy protocol witness table cache variable for type EarleyRecognizer.State and conformance EarleyRecognizer.State;
  if (!lazy protocol witness table cache variable for type EarleyRecognizer.State and conformance EarleyRecognizer.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EarleyRecognizer.State and conformance EarleyRecognizer.State);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EarleyRecognizer.State(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for EarleyRecognizer.State(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EarleyRecognizer.RecognizerValidatorCache(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for EarleyRecognizer.RecognizerValidatorCache(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for EarleyRecognizer.Item(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EarleyRecognizer.Item(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 33) = v3;
  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for EarleyRecognizer.RecognizerRule(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for EarleyRecognizer.RecognizerRule(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type EarleyRecognizer.Chart and conformance EarleyRecognizer.Chart()
{
  result = lazy protocol witness table cache variable for type EarleyRecognizer.Chart and conformance EarleyRecognizer.Chart;
  if (!lazy protocol witness table cache variable for type EarleyRecognizer.Chart and conformance EarleyRecognizer.Chart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EarleyRecognizer.Chart and conformance EarleyRecognizer.Chart);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EarleyRecognizer.RecognizerRule and conformance EarleyRecognizer.RecognizerRule()
{
  result = lazy protocol witness table cache variable for type EarleyRecognizer.RecognizerRule and conformance EarleyRecognizer.RecognizerRule;
  if (!lazy protocol witness table cache variable for type EarleyRecognizer.RecognizerRule and conformance EarleyRecognizer.RecognizerRule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EarleyRecognizer.RecognizerRule and conformance EarleyRecognizer.RecognizerRule);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EarleyRecognizer.Item and conformance EarleyRecognizer.Item()
{
  result = lazy protocol witness table cache variable for type EarleyRecognizer.Item and conformance EarleyRecognizer.Item;
  if (!lazy protocol witness table cache variable for type EarleyRecognizer.Item and conformance EarleyRecognizer.Item)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EarleyRecognizer.Item and conformance EarleyRecognizer.Item);
  }

  return result;
}

id outlined copy of Prompt.Turn.Segment(id result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7)
{
  if (a7)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | (a3 >> 60) & 3;
  if (v8 <= 1)
  {
    if (!v8)
    {
LABEL_18:
    }

    if (v8 == 1)
    {

      return outlined copy of Data._Representation(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    if (v8 != 2)
    {
      if (v8 == 3)
      {
        outlined copy of Data._Representation(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
      }

      else
      {
        if (v8 != 4)
        {
          return result;
        }
      }

      goto LABEL_18;
    }

    return result;
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void outlined consume of Prompt.Turn.Segment(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7)
{
  if (a7)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | (a3 >> 60) & 3;
  if (v8 <= 1)
  {
    if (!v8)
    {
LABEL_18:

      return;
    }

    if (v8 == 1)
    {

      outlined consume of Data._Representation(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    if (v8 != 2)
    {
      if (v8 == 3)
      {
        outlined consume of Data._Representation(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
      }

      else
      {
        if (v8 != 4)
        {
          return;
        }
      }

      goto LABEL_18;
    }
  }
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined init with copy of Locale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of JSON(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 4 || a3 == 3)
  {
  }

  return v3;
}

uint64_t outlined copy of JSON(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 4 || a3 == 3)
  {
  }

  return v3;
}

uint64_t outlined init with take of TerminalSymbol(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of TerminalSymbol(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of (key: TerminalSymbol, value: Int)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14TerminalSymbolO3key_Si5valuetSgMd, &_s19TokenGenerationCore14TerminalSymbolO3key_Si5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of TerminalSymbol(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TerminalSymbol(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type EarleyRecognizer and conformance EarleyRecognizer(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t getEnumTagSinglePayload for EarleyRecognizer.RecognizerTerminalSymbol(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for EarleyRecognizer.RecognizerTerminalSymbol(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t getEnumTag for EarleyRecognizer.RecognizerSymbol(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for EarleyRecognizer.RecognizerSymbol(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type EarleyRecognizer.RecognizerSymbol and conformance EarleyRecognizer.RecognizerSymbol()
{
  result = lazy protocol witness table cache variable for type EarleyRecognizer.RecognizerSymbol and conformance EarleyRecognizer.RecognizerSymbol;
  if (!lazy protocol witness table cache variable for type EarleyRecognizer.RecognizerSymbol and conformance EarleyRecognizer.RecognizerSymbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EarleyRecognizer.RecognizerSymbol and conformance EarleyRecognizer.RecognizerSymbol);
  }

  return result;
}

unint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for TerminalSymbol(0);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a2;
  v8 = specialized Collection.count.getter(a1, a2);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v10 = v8;
  v49 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v36[1] = v2;
    v12 = 0;
    v13 = v46;
    v9 = v49;
    v14 = (a1 >> 59) & 1;
    if ((v46 & 0x1000000000000000) == 0)
    {
      LOBYTE(v14) = 1;
    }

    v15 = 4 << v14;
    v16 = HIBYTE(v46) & 0xF;
    if ((v46 & 0x2000000000000000) == 0)
    {
      v16 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v44 = v15;
    v45 = v16;
    v38 = v46 & 0xFFFFFFFFFFFFFFLL;
    v39 = v7;
    v37 = (v46 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v17 = 15;
    v40 = v10;
    v41 = a1;
    while (1)
    {
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v19 = v17 & 0xC;
      v20 = (v17 & 1) == 0 || v19 == v15;
      v21 = v20;
      if (v20)
      {
        result = v17;
        if (v19 == v15)
        {
          result = _StringGuts._slowEnsureMatchingEncoding(_:)(v17, a1, v46);
          v13 = v46;
        }

        v22 = result >> 16;
        if (result >> 16 >= v45)
        {
          goto LABEL_59;
        }

        if ((result & 1) == 0)
        {
          v23 = _StringGuts.scalarAlignSlow(_:)(result, a1, v46);
          v13 = v46;
          v22 = v23 >> 16;
        }
      }

      else
      {
        v22 = v17 >> 16;
        result = v17;
        if (v17 >> 16 >= v45)
        {
          goto LABEL_60;
        }
      }

      if ((v13 & 0x1000000000000000) != 0)
      {
        v26 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((v13 & 0x2000000000000000) != 0)
        {
          v47 = a1;
          v48 = v38;
          v25 = &v47 + v22;
        }

        else
        {
          v24 = v37;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v24 = _StringObject.sharedUTF8.getter();
          }

          v25 = (v24 + v22);
        }

        v26 = *v25;
        if (*v25 < 0)
        {
          v35 = (__clz(v26 ^ 0xFF) - 24);
          if (v35 > 2)
          {
            if (v35 == 3)
            {
              v26 = ((v26 & 0xF) << 12) | ((v25[1] & 0x3F) << 6) | v25[2] & 0x3F;
            }

            else
            {
              v26 = ((v26 & 0xF) << 18) | ((v25[1] & 0x3F) << 12) | ((v25[2] & 0x3F) << 6) | v25[3] & 0x3F;
            }
          }

          else if (v35 != 1)
          {
            v26 = v25[1] & 0x3F | ((v26 & 0x1F) << 6);
          }
        }
      }

      v27 = v39;
      *v39 = v26;
      swift_storeEnumTagMultiPayload();
      v49 = v9;
      v29 = *(v9 + 16);
      v28 = *(v9 + 24);
      if (v29 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
        v9 = v49;
      }

      *(v9 + 16) = v29 + 1;
      result = _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v27, v9 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v29, type metadata accessor for TerminalSymbol);
      if (v21)
      {
        v15 = v44;
        v30 = v40;
        a1 = v41;
        v13 = v46;
        if (v19 == v44)
        {
          result = _StringGuts._slowEnsureMatchingEncoding(_:)(v17, v41, v46);
          v13 = v46;
          v17 = result;
        }

        if (v45 <= v17 >> 16)
        {
          goto LABEL_61;
        }

        if ((v17 & 1) == 0)
        {
          result = _StringGuts.scalarAlignSlow(_:)(v17, a1, v46);
          v13 = v46;
          v17 = v17 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else
      {
        v15 = v44;
        v30 = v40;
        a1 = v41;
        v13 = v46;
        if (v45 <= v17 >> 16)
        {
          goto LABEL_62;
        }
      }

      if ((v13 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
        v13 = v46;
        v17 = result;
      }

      else
      {
        v31 = v17 >> 16;
        if ((v13 & 0x2000000000000000) != 0)
        {
          v47 = a1;
          v48 = v38;
          v32 = *(&v47 + v31);
        }

        else
        {
          result = v37;
          if ((a1 & 0x1000000000000000) == 0)
          {
            result = _StringObject.sharedUTF8.getter();
            v13 = v46;
          }

          v32 = *(result + v31);
        }

        v33 = v32;
        v34 = __clz(v32 ^ 0xFF) - 24;
        if (v33 >= 0)
        {
          LOBYTE(v34) = 1;
        }

        v17 = ((v31 + v34) << 16) | 5;
        v15 = v44;
      }

      ++v12;
      if (v18 == v30)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *specialized Array.append<A>(contentsOf:)(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS6symbol_Si8positionSi8prioritytMd, &_sSS6symbol_Si8positionSi8prioritytMR);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A35ComponentValueCustomDataTransformer_pMd, &_s9PromptKit0A35ComponentValueCustomDataTransformer_pMR);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v7;
  if (__OFADD__(v8, v7))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v12 = *(v5 + 24) >> 1, v12 < v9))
  {
    if (v8 <= v9)
    {
      v13 = v8 + v7;
    }

    else
    {
      v13 = v8;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v13, 1, v5);
    v5 = result;
    v12 = *(result + 24) >> 1;
  }

  v14 = v12 - *(v5 + 16);
  if (v6 == a3)
  {
    if (v7 <= 0)
    {
      v7 = 0;
      goto LABEL_16;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v14 < v7)
  {
    __break(1u);
  }

  else
  {
    result = swift_arrayInitWithCopy();
    if (v7 <= 0)
    {
      goto LABEL_16;
    }

    v15 = *(v5 + 16);
    v16 = __OFADD__(v15, v7);
    v17 = v15 + v7;
    if (!v16)
    {
      *(v5 + 16) = v17;
LABEL_16:
      if (v7 != v14)
      {
LABEL_17:
        result = swift_unknownObjectRelease();
        *v4 = v5;
        return result;
      }

LABEL_21:

      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for Symbol);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x1E69A0AD0]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for Prompt.Delimiter);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x1E69C6360]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for Prompt.Attachment);
}

char *specialized Array.append<A>(contentsOf:)(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void specialized Array.append<A>(contentsOf:)(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 8 * v15 + 32), (a2 + 8 * a3), 8 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = a1;
  v5 = specialized Collection.count.getter(a1, a2);
  v6 = *v2;
  v7 = *(*v2 + 2);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v11 = *(v6 + 3) >> 1, v11 < v8))
  {
    if (v7 <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v7;
    }

    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v6);
    v11 = *(v6 + 3) >> 1;
  }

  v13 = *(v6 + 2);
  v14 = v11 - v13;
  v15 = specialized Sequence._copySequenceContents(initializing:)(&v44, &v6[4 * v13 + 32], v11 - v13, v4, v3);
  if (v15 < v9)
  {
    goto LABEL_15;
  }

  if (v15 >= 1)
  {
    v16 = *(v6 + 2);
    v17 = __OFADD__(v16, v15);
    v18 = v16 + v15;
    if (v17)
    {
      __break(1u);
LABEL_24:
      v42 = v3;
      v43 = v4 & 0xFFFFFFFFFFFFFFLL;
      v26 = &v42 + v8;
      v23 = *(&v42 + v8);
      if ((*(&v42 + v8) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      v39 = (__clz(v23 ^ 0xFF) - 24);
      if (v39 > 2)
      {
        if (v39 == 3)
        {
          v23 = ((v23 & 0xF) << 12) | ((v26[1] & 0x3F) << 6) | v26[2] & 0x3F;
          v25 = 3;
        }

        else
        {
          v23 = ((v23 & 0xF) << 18) | ((v26[1] & 0x3F) << 12) | ((v26[2] & 0x3F) << 6) | v26[3] & 0x3F;
          v25 = 4;
        }

        goto LABEL_26;
      }

      if (v39 == 1)
      {
LABEL_25:
        v25 = 1;
      }

      else
      {
        v25 = 2;
        v23 = v26[1] & 0x3F | ((v23 & 0x1F) << 6);
      }

LABEL_26:
      v24 = 0;
      goto LABEL_27;
    }

    *(v6 + 2) = v18;
  }

  if (v15 == v14)
  {
LABEL_16:
    v8 = v46;
    v9 = v47;
    if (v46 >= v47)
    {
      goto LABEL_13;
    }

    v18 = *(v6 + 2);
    v3 = v44;
    v4 = v45;
    if ((v45 & 0x1000000000000000) != 0)
    {
      v40 = *(v6 + 2);
      v23 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v18 = v40;
      v24 = (v4 & 0x2000000000000000) == 0;
      goto LABEL_27;
    }

    if ((v45 & 0x2000000000000000) == 0)
    {
      if ((v44 & 0x1000000000000000) != 0)
      {
        v20 = (v45 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v41 = *(v6 + 2);
        v20 = _StringObject.sharedUTF8.getter();
        v18 = v41;
      }

      v21 = (v20 + v8);
      v22 = *(v20 + v8);
      v23 = *(v20 + v8);
      if ((v22 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      v38 = (__clz(v23 ^ 0xFF) - 24);
      if (v38 > 2)
      {
        if (v38 == 3)
        {
          v23 = ((v23 & 0xF) << 12) | ((v21[1] & 0x3F) << 6) | v21[2] & 0x3F;
          v24 = 1;
          v25 = 3;
        }

        else
        {
          v23 = ((v23 & 0xF) << 18) | ((v21[1] & 0x3F) << 12) | ((v21[2] & 0x3F) << 6) | v21[3] & 0x3F;
          v24 = 1;
          v25 = 4;
        }
      }

      else
      {
        if (v38 == 1)
        {
LABEL_22:
          v24 = 1;
          v25 = 1;
          goto LABEL_27;
        }

        v24 = 1;
        v25 = 2;
        v23 = v21[1] & 0x3F | ((v23 & 0x1F) << 6);
      }

LABEL_27:
      v27 = v25 + v8;
      while (1)
      {
        v28 = *(v6 + 3);
        v29 = v28 >> 1;
        if ((v28 >> 1) < v18 + 1)
        {
          break;
        }

        if (v18 < v29)
        {
          goto LABEL_32;
        }

LABEL_29:
        *(v6 + 2) = v18;
      }

      v35 = v18;
      v36 = v23;
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v18 + 1, 1, v6);
      v18 = v35;
      v6 = v37;
      v23 = v36;
      v29 = *(v6 + 3) >> 1;
      if (v35 >= v29)
      {
        goto LABEL_29;
      }

LABEL_32:
      v30 = v18 + 8;
      while (1)
      {
        *&v6[4 * v30] = v23;
        if (v27 >= v9)
        {
          *(v6 + 2) = v30 - 7;
          goto LABEL_13;
        }

        if ((v4 & 0x1000000000000000) != 0)
        {
          v23 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        }

        else
        {
          if (v24)
          {
            v32 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
            if ((v3 & 0x1000000000000000) == 0)
            {
              v32 = _StringObject.sharedUTF8.getter();
            }

            v33 = (v32 + v27);
          }

          else
          {
            v42 = v3;
            v43 = v4 & 0xFFFFFFFFFFFFFFLL;
            v33 = &v42 + v27;
          }

          v23 = *v33;
          if ((*v33 & 0x80000000) == 0)
          {
            goto LABEL_43;
          }

          v34 = (__clz(v23 ^ 0xFF) - 24);
          if (v34 > 2)
          {
            if (v34 == 3)
            {
              v23 = ((v23 & 0xF) << 12) | ((v33[1] & 0x3F) << 6) | v33[2] & 0x3F;
              v31 = 3;
            }

            else
            {
              v23 = ((v23 & 0xF) << 18) | ((v33[1] & 0x3F) << 12) | ((v33[2] & 0x3F) << 6) | v33[3] & 0x3F;
              v31 = 4;
            }

            goto LABEL_34;
          }

          if (v34 == 1)
          {
LABEL_43:
            v31 = 1;
          }

          else
          {
            v23 = v33[1] & 0x3F | ((v23 & 0x1F) << 6);
            v31 = 2;
          }
        }

LABEL_34:
        v27 += v31;
        if (++v30 - v29 == 8)
        {
          v18 = v29;
          goto LABEL_29;
        }
      }
    }

    goto LABEL_24;
  }

LABEL_13:

  *v2 = v6;
  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = v6;
      v9 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v9;

      v10 = a1(v12);

      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 2;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t static Symbol.nonterminal(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for Symbol(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t static Symbol.terminal(_:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  *a3 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(a1, a2);
  type metadata accessor for Symbol(0);

  return swift_storeEnumTagMultiPayload();
}

TokenGenerationCore::Rule __swiftcall Rule.init(symbol:_:)(Swift::String symbol, Swift::OpaquePointer _)
{
  *v2 = symbol;
  *(v2 + 16) = _;
  result.symbol.identifier = symbol;
  result.expression.choices = _;
  return result;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v36 = a2;
  v37 = a1;
  v34 = a4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation12CharacterSetV5valuetMd, &_sSS3key_10Foundation12CharacterSetV5valuetMR);
  v33 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v32 - v10;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v39 = a3;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v8;
      v40 = v5;
      v19 = v17;
LABEL_9:
      v20 = __clz(__rbit64(v14)) | (v19 << 6);
      v21 = *(v39 + 56);
      v22 = (*(v39 + 48) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = type metadata accessor for CharacterSet();
      v26 = *(v25 - 8);
      v27 = v21 + *(v26 + 72) * v20;
      v28 = v35;
      (*(v26 + 16))(&v35[*(v38 + 48)], v27, v25);
      *v28 = v23;
      v28[1] = v24;
      v8 = v18;
      outlined init with take of (key: String, value: CharacterSet)(v28, v18);

      v29 = v40;
      v30 = v37(v18);
      v5 = v29;
      if (v29)
      {
        outlined destroy of [Regex2BNF.CharacterPredicate](v18, &_sSS3key_10Foundation12CharacterSetV5valuetMd, &_sSS3key_10Foundation12CharacterSetV5valuetMR);
      }

      if (v30)
      {
        break;
      }

      v14 &= v14 - 1;
      result = outlined destroy of [Regex2BNF.CharacterPredicate](v18, &_sSS3key_10Foundation12CharacterSetV5valuetMd, &_sSS3key_10Foundation12CharacterSetV5valuetMR);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v31 = v34;
    outlined init with take of (key: String, value: CharacterSet)(v8, v34);
    return (*(v33 + 56))(v31, 0, 1, v38);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        return (*(v33 + 56))(v34, 1, 1, v38);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v18 = v8;
        v40 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t NonTerminalSymbol.description.getter()
{
  MEMORY[0x1AC57C120](*v0, v0[1]);
  MEMORY[0x1AC57C120](62, 0xE100000000000000);
  return 60;
}

uint64_t TerminalSymbol.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TerminalSymbol(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v1, v8, type metadata accessor for TerminalSymbol);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v10 = *v8;
      v26 = 34;
      v27 = 0xE100000000000000;
      if (v10 > 0x7F)
      {
        v20 = (v10 & 0x3F) << 8;
        if (v10 >= 0x800)
        {
          v21 = v10 >> 12;
          v22 = (v20 | (v10 >> 6) & 0x3F) << 8;
          v23 = HIWORD(v10);
          v11 = (((v22 | (v10 >> 12) & 0x3F) << 8) | (v10 >> 18)) - 2122219023;
          v24 = v21 + v22 + 8487393;
          if (!v23)
          {
            v11 = v24;
          }
        }

        else
        {
          v11 = (v10 >> 6) + v20 + 33217;
        }
      }

      else
      {
        v11 = v10 + 1;
      }

      v25[1] = (v11 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v11) >> 3))));
      v12 = static String._uncheckedFromUTF8(_:)();
      MEMORY[0x1AC57C120](v12);

      MEMORY[0x1AC57C120](34, 0xE100000000000000);
      return v26;
    }

LABEL_7:
    (*(v3 + 32))(v5, v8, v2);
    v13 = CharacterSet.description.getter();
    (*(v3 + 8))(v5, v2);
    return v13;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_7;
  }

  v15 = *v8;
  v26 = 30757;
  v27 = 0xE200000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E7508];
  *(v16 + 16) = xmmword_1A8FC9400;
  v18 = MEMORY[0x1E69E7558];
  *(v16 + 56) = v17;
  *(v16 + 64) = v18;
  *(v16 + 32) = v15;
  v19 = String.init(format:_:)();
  MEMORY[0x1AC57C120](v19);

  return v26;
}

uint64_t type metadata accessor for Symbol(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Bool __swiftcall Rule.isRecursiveRule()()
{
  v1 = type metadata accessor for Symbol(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0[2];
  v7 = *(v6 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = *v0;
  v13 = v0[1];
  while (v8 < *(v6 + 16))
  {
    v10 = *(v6 + 32 + 8 * v8);
    if (*(v10 + 16))
    {
      _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v5, type metadata accessor for Symbol);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        if (v9 == *v5 && v13 == v5[1])
        {

          return 1;
        }

        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v11)
        {
          return 1;
        }
      }

      else
      {
        result = outlined destroy of Symbol(v5, type metadata accessor for Symbol);
      }
    }

    if (v7 == ++v8)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for characterSetLookup()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10Foundation12CharacterSetVtGMd, &_ss23_ContiguousArrayStorageCySS_10Foundation12CharacterSetVtGMR);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation12CharacterSetVtMd, &_sSS_10Foundation12CharacterSetVtMR);
  v5 = *(*(v4 - 8) + 72);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A8FCA180;
  v8 = (v7 + v6);
  *v8 = 0x48435F4C4147454CLL;
  v8[1] = 0xEF52455443415241;
  static CharacterSet.illegalCharacters.getter();
  CharacterSet.inverted.getter();
  (*(v1 + 8))(v3, v0);
  v9 = (v8 + v5);
  *v9 = 0xD000000000000010;
  v9[1] = 0x80000001A8FD8B20;
  CharacterSet.init(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  v10 = (v8 + 2 * v5);
  *v10 = 0xD000000000000029;
  v10[1] = 0x80000001A8FD8B40;
  CharacterSet.init(charactersIn:)();
  v11._countAndFlagsBits = 0xC08090D0A5C22;
  v11._object = 0xE700000000000000;
  CharacterSet.remove(charactersIn:)(v11);
  v12 = (v8 + 3 * v5);
  *v12 = 0xD000000000000015;
  v12[1] = 0x80000001A8FD8B70;
  static CharacterSet.swiftIdentifierHead.getter();
  v13 = (v8 + 4 * v5);
  *v13 = 0xD00000000000001ALL;
  v13[1] = 0x80000001A8FD8B90;
  static CharacterSet.swiftIdentifierHead.getter();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  v14 = (v8 + 5 * v5);
  *v14 = 0xD000000000000012;
  v14[1] = 0x80000001A8FD8BB0;
  static CharacterSet.controlCharacters.getter();
  v15 = (v8 + 6 * v5);
  *v15 = 0x4150534554494857;
  v15[1] = 0xEB00000000534543;
  static CharacterSet.whitespaces.getter();
  v16 = (v8 + 7 * v5);
  *v16 = 0xD000000000000018;
  v16[1] = 0x80000001A8FD8BD0;
  static CharacterSet.whitespacesAndNewlines.getter();
  strcpy(&v8[v5], "DECIMAL_DIGITS");
  HIBYTE(v8[v5 + 1]) = -18;
  static CharacterSet.decimalDigits.getter();
  v17 = (v8 + 9 * v5);
  *v17 = 0x5352455454454CLL;
  v17[1] = 0xE700000000000000;
  static CharacterSet.letters.getter();
  v18 = (v8 + 10 * v5);
  *v18 = 0xD000000000000011;
  v18[1] = 0x80000001A8FD8BF0;
  static CharacterSet.lowercaseLetters.getter();
  v19 = (v8 + 11 * v5);
  *v19 = 0xD000000000000011;
  v19[1] = 0x80000001A8FD8C10;
  static CharacterSet.uppercaseLetters.getter();
  v20 = (v8 + 12 * v5);
  *v20 = 0xD000000000000013;
  v20[1] = 0x80000001A8FD8C30;
  static CharacterSet.nonBaseCharacters.getter();
  v21 = v8 + 13 * v5;
  strcpy(v21, "ALPHANUMERICS");
  *(v21 + 7) = -4864;
  static CharacterSet.alphanumerics.getter();
  v22 = v8 + 14 * v5;
  strcpy(v22, "DECOMPOSABLES");
  *(v22 + 7) = -4864;
  static CharacterSet.decomposables.getter();
  v23 = (v8 + 15 * v5);
  *v23 = 0xD000000000000012;
  v23[1] = 0x80000001A8FD8C50;
  static CharacterSet.illegalCharacters.getter();
  v24 = &v8[2 * v5];
  *v24 = 0xD000000000000016;
  v24[1] = 0x80000001A8FD8C70;
  static CharacterSet.punctuationCharacters.getter();
  v25 = (v8 + 17 * v5);
  *v25 = 0xD000000000000013;
  v25[1] = 0x80000001A8FD8C90;
  static CharacterSet.capitalizedLetters.getter();
  v26 = (v8 + 18 * v5);
  *v26 = 0x534C4F424D5953;
  v26[1] = 0xE700000000000000;
  static CharacterSet.symbols.getter();
  v27 = (v8 + 19 * v5);
  *v27 = 0x53454E494C57454ELL;
  v27[1] = 0xE800000000000000;
  static CharacterSet.newlines.getter();
  v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation12CharacterSetVTt0g5Tf4g_n(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static Grammar.characterSetLookup = v28;
  return result;
}

uint64_t Grammar.root.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
}

__n128 Grammar.init(backusNaurForm:prependSpaceToRootRule:)@<Q0>(char *a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = static BackusNaurParser.parsedRules(_:)(a1, a2);

  if (!v4)
  {
    Grammar.init(rules:prependSpaceToRootRule:cacheableResursiveNonTerminals:)(v7, a3 & 1, MEMORY[0x1E69E7CC0], v11);
    v9 = v11[1];
    result = v12;
    v10 = v13;
    *a4 = v11[0];
    *(a4 + 8) = v9;
    *(a4 + 16) = result;
    *(a4 + 32) = v10;
  }

  return result;
}

__n128 Grammar.init(rules:prependSpaceToRootRule:)@<Q0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Grammar.init(rules:prependSpaceToRootRule:cacheableResursiveNonTerminals:)(a1, a2, MEMORY[0x1E69E7CC0], v8);
  if (!v3)
  {
    v6 = v8[1];
    result = v9;
    v7 = v10;
    *a3 = v8[0];
    *(a3 + 8) = v6;
    *(a3 + 16) = result;
    *(a3 + 32) = v7;
  }

  return result;
}

void *Grammar.init(backusNaurForm:prependSpaceToRootRule:cacheableResursiveNonTerminals:)@<X0>(char *a1@<X0>, char *a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = static BackusNaurParser.parsedRules(_:)(a1, a2);

  if (v5)
  {
  }

  result = Grammar.init(rules:prependSpaceToRootRule:cacheableResursiveNonTerminals:)(v9, a3 & 1, a4, v14);
  v11 = v14[1];
  v12 = v15;
  v13 = v16;
  *a5 = v14[0];
  *(a5 + 8) = v11;
  *(a5 + 16) = v12;
  *(a5 + 32) = v13;
  return result;
}

uint64_t Grammar.init(rules:prependSpaceToRootRule:cacheableResursiveNonTerminals:)@<X0>(char *a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v95 = a3;
  v112 = a2;
  v94[0] = a4;
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v101 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v100 = v94 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v110 = v94 - v12;

  v14 = Array<A>.nonTerminals()(v13);

  v15 = *(v14 + 2);
  if (v15)
  {
    v104 = a1;
    v16 = 0;
    v94[1] = v14;
    v17 = v14 + 32;
    *&v107 = v7 + 16;
    v105 = v7 + 32;
    v109 = MEMORY[0x1E69E7CC0];
    v96 = (v7 + 8);
    v99 = xmmword_1A8FC9400;
    v98 = v15;
    v97 = v14 + 32;
    do
    {
      v18 = &v17[16 * v16];
      v19 = *v18;
      v4 = v18[1];
      v20 = one-time initialization token for characterSetLookup;

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = static Grammar.characterSetLookup;
      if (*(static Grammar.characterSetLookup + 16) && (, *&v108 = v19, v22 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v4), v24 = v23, , (v24 & 1) != 0))
      {
        v25 = *(v7 + 72);
        v26 = *(v21 + 56) + v25 * v22;
        v27 = v100;
        v106 = *(v7 + 16);
        v106(v100, v26, v6);
        v102 = *(v7 + 32);
        v102(v110, v27, v6);
        v28 = v109;
        v29 = v109[2] + 1;
        while (--v29)
        {
          lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680B8], MEMORY[0x1E69680C8]);
          v28 = (v28 + v25);
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            (*v96)(v110, v6);

            v15 = v98;
            v17 = v97;
            goto LABEL_4;
          }
        }

        v106(v101, v110, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v109[2] + 1, 1, v109);
        }

        v17 = v97;
        v31 = v109[2];
        v30 = v109[3];
        if (v31 >= v30 >> 1)
        {
          v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v109);
        }

        v32 = v109;
        v109[2] = v31 + 1;
        v102(&v32[((*(v7 + 80) + 32) & ~*(v7 + 80)) + v31 * v25], v101, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
        v33 = swift_allocObject();
        *(v33 + 16) = v99;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
        v34 = *(type metadata accessor for Symbol(0) - 8);
        v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v36 = swift_allocObject();
        *(v36 + 16) = v99;
        v106((v36 + v35), v110, v6);
        type metadata accessor for TerminalSymbol(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        *(v33 + 32) = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v104 + 2) + 1, 1, v104);
        }

        v15 = v98;
        v38 = *(v104 + 2);
        v37 = *(v104 + 3);
        if (v38 >= v37 >> 1)
        {
          v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v104);
        }

        (*v96)(v110, v6);
        v39 = v104;
        *(v104 + 2) = v38 + 1;
        v40 = &v39[24 * v38];
        *(v40 + 4) = v108;
        *(v40 + 5) = v4;
        *(v40 + 6) = v33;
      }

      else
      {
      }

LABEL_4:
      ++v16;
    }

    while (v16 != v15);

    a1 = v104;
  }

  else
  {

    v109 = MEMORY[0x1E69E7CC0];
  }

  v41 = MEMORY[0x1E69E7CC0];
  v42 = *(a1 + 2);
  v104 = a1;
  if (v42)
  {
    v111[0] = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 0);
    v43 = v111[0];
    v44 = a1 + 40;
    v45 = v42;
    do
    {
      v47 = *(v44 - 1);
      v46 = *v44;
      v111[0] = v43;
      v49 = *(v43 + 16);
      v48 = *(v43 + 24);

      if (v49 >= v48 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
        v43 = v111[0];
      }

      *(v43 + 16) = v49 + 1;
      v50 = v43 + 16 * v49;
      *(v50 + 32) = v47;
      *(v50 + 40) = v46;
      v44 += 24;
      --v45;
    }

    while (v45);
    v51 = v43;
    v111[0] = v41;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 0);
    v52 = v111[0];
    v53 = v104 + 48;
    do
    {
      v4 = *v53;
      v111[0] = v52;
      v55 = *(v52 + 16);
      v54 = *(v52 + 24);
      v56 = v55 + 1;

      if (v55 >= v54 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
        v52 = v111[0];
      }

      *(v52 + 16) = v56;
      *(v52 + 8 * v55 + 32) = v4;
      v53 += 24;
      --v42;
    }

    while (v42);
    v111[0] = v41;
LABEL_35:
    v57 = 0;
    *&v108 = v52 + 32;
    *&v107 = v51;
    v106 = v52;
    v105 = v56;
    while (v57 < *(v52 + 16))
    {
      v110 = v57;
      v58 = *(v108 + 8 * v57);
      v59 = *(v58 + 16);

      if (v59)
      {
        v57 = 0;
        v42 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v57 >= *(v58 + 16))
          {
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          v60 = *(v58 + 32 + 8 * v57);
          v4 = *(v60 + 16);
          v51 = *(v42 + 16);
          v61 = v4 + v51;
          if (__OFADD__(v51, v4))
          {
            goto LABEL_71;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v61 <= *(v42 + 24) >> 1)
          {
            if (!*(v60 + 16))
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v51 <= v61)
            {
              v63 = v4 + v51;
            }

            else
            {
              v63 = v51;
            }

            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v63, 1, v42);
            if (!*(v60 + 16))
            {
LABEL_41:

              if (v4)
              {
                goto LABEL_72;
              }

              goto LABEL_42;
            }
          }

          v51 = *(v42 + 16);
          v64 = (*(v42 + 24) >> 1) - v51;
          type metadata accessor for Symbol(0);
          if (v64 < v4)
          {
            goto LABEL_73;
          }

          swift_arrayInitWithCopy();

          if (v4)
          {
            v65 = *(v42 + 16);
            v66 = __OFADD__(v65, v4);
            v67 = v4 + v65;
            if (v66)
            {
              __break(1u);
LABEL_87:
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
              v110 = swift_allocObject();
              v107 = xmmword_1A8FC9410;
              *(v110 + 1) = xmmword_1A8FC9410;
              *&v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
              v83 = *(type metadata accessor for Symbol(0) - 8);
              v84 = *(v83 + 72);
              v85 = (*(v83 + 80) + 32) & ~*(v83 + 80);
              v86 = swift_allocObject();
              *(v86 + 16) = v107;

              v87 = v103;
              v88 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x20uLL, 0xE100000000000000);
              v103 = v87;
              *(v86 + v85) = v88;
              swift_storeEnumTagMultiPayload();
              v89 = (v86 + v85 + v84);
              *v89 = v42;
              v89[1] = v57;
              swift_storeEnumTagMultiPayload();
              v90 = v110;
              *(v110 + 4) = v86;
              v91 = swift_allocObject();
              v108 = xmmword_1A8FC9400;
              *(v91 + 16) = xmmword_1A8FC9400;
              v92 = (v91 + v85);
              *v92 = v42;
              v92[1] = v57;
              swift_storeEnumTagMultiPayload();
              *(v90 + 5) = v91;

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
              v93 = swift_allocObject();
              *(v93 + 16) = v108;
              v42 = 0x45444E4550455250;
              v57 = 0xEF45434150535F44;
              *(v93 + 32) = 0x45444E4550455250;
              *(v93 + 40) = 0xEF45434150535F44;
              v51 = v90;
              *(v93 + 48) = v90;
              v111[0] = v93;

              specialized Array.append<A>(contentsOf:)(v104);
              v4 = v111[0];
              goto LABEL_76;
            }

            *(v42 + 16) = v67;
          }

LABEL_42:
          if (v59 == ++v57)
          {
            goto LABEL_37;
          }
        }
      }

      v42 = MEMORY[0x1E69E7CC0];
LABEL_37:
      v57 = (v110 + 1);

      specialized Array.append<A>(contentsOf:)(v42, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for Symbol);
      v51 = v107;
      v52 = v106;
      if (v57 == v105)
      {
        goto LABEL_57;
      }
    }

    __break(1u);
    goto LABEL_89;
  }

  v56 = *(v41 + 16);
  v111[0] = v41;
  v51 = v41;
  v52 = v41;
  if (v56)
  {
    goto LABEL_35;
  }

LABEL_57:
  v68 = v51;

  v69 = v111[0];
  v51 = Array<A>.nonTerminals()(v111[0]);
  Array<A>.terminals()(v69);

  v57 = *(v51 + 2);
  if (v57)
  {
    v71 = 0;
    v42 = (v51 + 40);
    v4 = v111;
    while (v71 < *(v51 + 2))
    {
      v73 = *(v42 - 8);
      v72 = *v42;
      v111[0] = v73;
      v111[1] = v72;
      MEMORY[0x1EEE9AC00](v70);
      v94[-2] = v111;

      v74 = v103;
      v75 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), &v94[-4], v68);
      v103 = v74;
      if ((v75 & 1) == 0)
      {

        lazy protocol witness table accessor for type InvalidGrammar and conformance InvalidGrammar();
        swift_allocError();
        *v76 = v73;
        *(v76 + 8) = v72;
        *(v76 + 16) = 0;
        goto LABEL_69;
      }

      ++v71;
      v42 += 16;
      if (v57 == v71)
      {
        goto LABEL_62;
      }
    }

LABEL_89:
    __break(1u);
LABEL_90:
    swift_once();
    goto LABEL_77;
  }

LABEL_62:

  v4 = v104;
  if (!*(v104 + 2))
  {

    lazy protocol witness table accessor for type InvalidGrammar and conformance InvalidGrammar();
    swift_allocError();
    *v77 = 0;
    *(v77 + 8) = 0;
    *(v77 + 16) = 3;
LABEL_69:
    swift_willThrow();
  }

  v42 = *(v104 + 4);
  v57 = *(v104 + 5);
  v51 = *(v104 + 6);
  if (v112)
  {
    if (v42 == 0x45444E4550455250 && v57 == 0xEF45434150535F44)
    {

      v42 = 0x45444E4550455250;
      v57 = 0xEF45434150535F44;
      goto LABEL_76;
    }

LABEL_74:
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_87;
    }
  }

LABEL_76:
  GuidedGenerationOverrides.init()(v111);
  if (one-time initialization token for isInternalInstall != -1)
  {
    goto LABEL_90;
  }

LABEL_77:
  v78 = v103;
  if (!isInternalInstall || ((v111[8])(&v113, v111[5]), v113 == 2) || (v113 & 1) == 0)
  {

    specialized static Grammar.validateNoRightRecursiveRules(rules:)(v80);
    if (!v78)
    {
      outlined destroy of GuidedGenerationOverrides(v111);

      goto LABEL_85;
    }

    swift_bridgeObjectRelease_n();
    outlined destroy of GuidedGenerationOverrides(v111);
  }

  result = outlined destroy of GuidedGenerationOverrides(v111);
LABEL_85:
  v81 = v94[0];
  *v94[0] = v95;
  v81[1] = v42;
  v81[2] = v57;
  v81[3] = v51;
  v82 = v109;
  v81[4] = v4;
  v81[5] = v82;
  return result;
}

uint64_t static NonTerminalSymbol.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t Rule.description.getter()
{
  v1 = type metadata accessor for Symbol(0);
  v37 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v5 = v0[1];
  v6 = v0[2];
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v33 = v0[1];
    v34 = v4;
    v42 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v10 = 0;
    v11 = v42;
    v38 = v6 + 32;
    v35 = v7;
    v36 = v6;
    while (v10 < *(v6 + 16))
    {
      v41 = v10;
      v12 = *(v38 + 8 * v10);
      v13 = *(v12 + 16);
      if (v13)
      {
        v40 = v11;
        v44 = v8;

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
        v14 = v44;
        v15 = *(v37 + 80);
        v39 = v12;
        v16 = v12 + ((v15 + 32) & ~v15);
        v17 = *(v37 + 72);
        do
        {
          _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v16, v3, type metadata accessor for Symbol);
          v18 = Symbol.description.getter();
          v20 = v19;
          outlined destroy of Symbol(v3, type metadata accessor for Symbol);
          v44 = v14;
          v22 = *(v14 + 16);
          v21 = *(v14 + 24);
          if (v22 >= v21 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
            v14 = v44;
          }

          *(v14 + 16) = v22 + 1;
          v23 = v14 + 16 * v22;
          *(v23 + 32) = v18;
          *(v23 + 40) = v20;
          v16 += v17;
          --v13;
        }

        while (v13);
        v11 = v40;
        v8 = MEMORY[0x1E69E7CC0];
        v7 = v35;
        v6 = v36;
      }

      else
      {

        v14 = v8;
      }

      v44 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v24 = BidirectionalCollection<>.joined(separator:)();
      v26 = v25;

      v42 = v11;
      v28 = *(v11 + 16);
      v27 = *(v11 + 24);
      if (v28 >= v27 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v11 = v42;
      }

      v10 = v41 + 1;
      *(v11 + 16) = v28 + 1;
      v29 = v11 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      if (v10 == v7)
      {
        v5 = v33;
        v4 = v34;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v42 = 60;
    v43 = 0xE100000000000000;
    MEMORY[0x1AC57C120](v4, v5);
    MEMORY[0x1AC57C120](0x203D3A3A203ELL, 0xE600000000000000);
    v44 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v30 = BidirectionalCollection<>.joined(separator:)();
    v32 = v31;

    MEMORY[0x1AC57C120](v30, v32);

    return v42;
  }

  return result;
}

uint64_t Symbol.description.getter()
{
  v49 = type metadata accessor for TerminalSymbol(0);
  v1 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v3 = (v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v6 = v47 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v47 - v8;
  v10 = type metadata accessor for Symbol(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v0, v12, type metadata accessor for Symbol);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *v12;
      v15 = *(*v12 + 16);
      if (v15)
      {
        v56 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
        v16 = v56;
        v17 = v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
        v18 = *(v1 + 72);
        v47[1] = v14;
        v48 = v18;
        do
        {
          _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v17, v6, type metadata accessor for TerminalSymbol);
          _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v6, v3, type metadata accessor for TerminalSymbol);
          v19 = swift_getEnumCaseMultiPayload();
          if ((v19 - 1) >= 2)
          {
            if (v19)
            {
              v24 = TerminalSymbol.description.getter();
            }

            else
            {
              v22 = *v3;
              if (*v3 > 0x7F)
              {
                v29 = (*v3 & 0x3F) << 8;
                if (v22 >= 0x800)
                {
                  v30 = v22 >> 12;
                  v31 = (v29 | (v22 >> 6) & 0x3F) << 8;
                  v32 = HIWORD(v22);
                  v23 = (((v31 | (v22 >> 12) & 0x3F) << 8) | (v22 >> 18)) - 2122219023;
                  v33 = v30 + v31 + 8487393;
                  if (!v32)
                  {
                    v23 = v33;
                  }
                }

                else
                {
                  v23 = (v22 >> 6) + v29 + 33217;
                }
              }

              else
              {
                v23 = v22 + 1;
              }

              v54 = (v23 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v23) >> 3))));
              v24 = static String._uncheckedFromUTF8(_:)();
            }

            v20 = v24;
            v21 = v25;
            outlined destroy of Symbol(v6, type metadata accessor for TerminalSymbol);
          }

          else
          {
            outlined destroy of Symbol(v3, type metadata accessor for TerminalSymbol);
            outlined destroy of Symbol(v6, type metadata accessor for TerminalSymbol);
            v20 = 0;
            v21 = 0xE000000000000000;
          }

          v56 = v16;
          v27 = *(v16 + 16);
          v26 = *(v16 + 24);
          if (v27 >= v26 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
            v16 = v56;
          }

          *(v16 + 16) = v27 + 1;
          v28 = v16 + 16 * v27;
          *(v28 + 32) = v20;
          *(v28 + 40) = v21;
          v17 += v48;
          --v15;
        }

        while (v15);
      }

      else
      {

        v16 = MEMORY[0x1E69E7CC0];
      }

      v56 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v38 = BidirectionalCollection<>.joined(separator:)();
      v40 = v39;

      v56 = 34;
      v57 = 0xE100000000000000;
      v54 = v38;
      v55 = v40;
      v52 = 92;
      v53 = 0xE100000000000000;
      v50 = 23644;
      v51 = 0xE200000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v43 = v42;

      v54 = v41;
      v55 = v43;
      v52 = 34;
      v53 = 0xE100000000000000;
      v50 = 8796;
      v51 = 0xE200000000000000;
      v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v46 = v45;

      MEMORY[0x1AC57C120](v44, v46);

      MEMORY[0x1AC57C120](34, 0xE100000000000000);
    }

    else
    {
      v36 = *v12;
      v37 = v12[1];
      v56 = 60;
      v57 = 0xE100000000000000;
      MEMORY[0x1AC57C120](v36, v37);
      MEMORY[0x1AC57C120](62, 0xE100000000000000);
    }

    return v56;
  }

  else
  {
    _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v12, v9, type metadata accessor for TerminalSymbol);
    v34 = TerminalSymbol.description.getter();
    outlined destroy of Symbol(v9, type metadata accessor for TerminalSymbol);
    return v34;
  }
}

char *Array<A>.nonTerminals()(char *result)
{
  v1 = *(result + 2);
  if (v1)
  {
    v2 = result;
    v3 = MEMORY[0x1E69E7CC0];
    v30 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v4 = v30;
    v5 = (v2 + 48);
    do
    {
      v6 = *v5;
      v8 = *(v30 + 16);
      v7 = *(v30 + 24);
      v9 = v8 + 1;

      if (v8 >= v7 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      *(v30 + 16) = v9;
      *(v30 + 8 * v8 + 32) = v6;
      v5 += 3;
      --v1;
    }

    while (v1);
    v31 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    v9 = *(MEMORY[0x1E69E7CC0] + 16);
    v31 = MEMORY[0x1E69E7CC0];
    v10 = MEMORY[0x1E69E7CC0];
    if (!v9)
    {
LABEL_31:

      v26 = Array<A>.nonTerminals()(v10);

      return v26;
    }
  }

  v11 = 0;
  v28 = v4;
  v29 = v4 + 32;
  v27 = v9;
  while (1)
  {
    if (v11 >= *(v4 + 16))
    {
      goto LABEL_37;
    }

    v13 = *(v29 + 8 * v11);
    v14 = *(v13 + 16);

    if (v14)
    {
      break;
    }

    v12 = MEMORY[0x1E69E7CC0];
LABEL_10:
    ++v11;

    result = specialized Array.append<A>(contentsOf:)(v12, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for Symbol);
    v4 = v28;
    if (v11 == v27)
    {
      v10 = v31;
      goto LABEL_31;
    }
  }

  v15 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (v15 < *(v13 + 16))
  {
    v16 = *(v13 + 32 + 8 * v15);
    v17 = *(v16 + 16);
    v18 = v12[2];
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      goto LABEL_33;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v19 <= v12[3] >> 1)
    {
      if (*(v16 + 16))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v21 = v18 + v17;
      }

      else
      {
        v21 = v18;
      }

      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v21, 1, v12);
      if (*(v16 + 16))
      {
LABEL_26:
        v22 = (v12[3] >> 1) - v12[2];
        result = type metadata accessor for Symbol(0);
        if (v22 < v17)
        {
          goto LABEL_35;
        }

        swift_arrayInitWithCopy();

        if (v17)
        {
          v23 = v12[2];
          v24 = __OFADD__(v23, v17);
          v25 = v23 + v17;
          if (v24)
          {
            goto LABEL_36;
          }

          v12[2] = v25;
        }

        goto LABEL_15;
      }
    }

    if (v17)
    {
      goto LABEL_34;
    }

LABEL_15:
    if (v14 == ++v15)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

TokenGenerationCore::Rule __swiftcall Rule.init(nonterminal:_:)(TokenGenerationCore::NonTerminalSymbol nonterminal, Swift::OpaquePointer _)
{
  v3 = *(nonterminal.identifier._countAndFlagsBits + 8);
  *v2 = *nonterminal.identifier._countAndFlagsBits;
  v2[1] = v3;
  v2[2] = nonterminal.identifier._object;
  result.symbol = nonterminal;
  result.expression.choices = _;
  return result;
}

char *Array<A>.nonTerminals()(uint64_t a1)
{
  v2 = type metadata accessor for Symbol(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v6 + 72);
  v12 = MEMORY[0x1E69E7CC0];
  v19[1] = v2;
  do
  {
    _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v10, v8, type metadata accessor for Symbol);
    _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v8, v4, type metadata accessor for Symbol);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v13 = *v4;
      v14 = v4[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      }

      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      v17 = &v12[16 * v16];
      *(v17 + 4) = v13;
      *(v17 + 5) = v14;
    }

    else
    {
      outlined destroy of Symbol(v4, type metadata accessor for Symbol);
    }

    v10 += v11;
    --v9;
  }

  while (v9);
  return v12;
}

void *Array<A>.terminals()(uint64_t a1)
{
  v27 = type metadata accessor for TerminalSymbol(0);
  v2 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Symbol(0);
  MEMORY[0x1EEE9AC00](v29);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12 = MEMORY[0x1E69E7CC0];
  v28 = *(v7 + 72);
  v25 = xmmword_1A8FC9400;
  while (1)
  {
    _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v11, v9, type metadata accessor for Symbol);
    _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v9, v5, type metadata accessor for Symbol);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        result = outlined destroy of Symbol(v9, type metadata accessor for Symbol);
        v15 = *v5;
      }

      else
      {
        outlined destroy of Symbol(v5, type metadata accessor for Symbol);
        result = outlined destroy of Symbol(v9, type metadata accessor for Symbol);
        v15 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v16 = v26;
      _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v5, v26, type metadata accessor for TerminalSymbol);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore14TerminalSymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore14TerminalSymbolOGMR);
      v17 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = v25;
      _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v16, v15 + v17, type metadata accessor for TerminalSymbol);
      result = outlined destroy of Symbol(v9, type metadata accessor for Symbol);
    }

    v18 = *(v15 + 16);
    v19 = v12[2];
    v20 = v19 + v18;
    if (__OFADD__(v19, v18))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v20 <= v12[3] >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v19 <= v20)
      {
        v21 = v19 + v18;
      }

      else
      {
        v21 = v19;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v21, 1, v12);
      v12 = result;
      if (*(v15 + 16))
      {
LABEL_19:
        if ((v12[3] >> 1) - v12[2] < v18)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        if (v18)
        {
          v22 = v12[2];
          v23 = __OFADD__(v22, v18);
          v24 = v22 + v18;
          if (v23)
          {
            goto LABEL_28;
          }

          v12[2] = v24;
        }

        goto LABEL_4;
      }
    }

    if (v18)
    {
      goto LABEL_26;
    }

LABEL_4:
    v11 += v28;
    if (!--v10)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void Grammar.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12CharacterSetVSgMd, &_s10Foundation12CharacterSetVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v38 - v2;
  v4 = *(v0 + 32);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = 0;
    v8 = v4 + 48;
    v41 = *(v4 + 16);
    v38 = v5 - 1;
    v39 = v4 + 48;
    do
    {
      v40 = v6;
      v9 = (v8 + 24 * v7);
      v10 = v7;
      while (1)
      {
        if (v10 >= *(v4 + 16))
        {
          __break(1u);
          return;
        }

        v12 = *(v9 - 2);
        v11 = *(v9 - 1);
        v13 = *v9;
        v14 = one-time initialization token for characterSetLookup;
        swift_bridgeObjectRetain_n();

        if (v14 != -1)
        {
          swift_once();
        }

        v15 = static Grammar.characterSetLookup;
        if (!*(static Grammar.characterSetLookup + 16))
        {
          break;
        }

        v16 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
        v18 = v17;

        if ((v18 & 1) == 0)
        {
          goto LABEL_12;
        }

        ++v10;
        v19 = *(v15 + 56);
        v20 = type metadata accessor for CharacterSet();
        v21 = *(v20 - 8);
        (*(v21 + 16))(v3, v19 + *(v21 + 72) * v16, v20);
        (*(v21 + 56))(v3, 0, 1, v20);

        outlined destroy of [Regex2BNF.CharacterPredicate](v3, &_s10Foundation12CharacterSetVSgMd, &_s10Foundation12CharacterSetVSgMR);
        v9 += 3;
        if (v41 == v10)
        {
          v6 = v40;
          goto LABEL_17;
        }
      }

LABEL_12:
      v22 = type metadata accessor for CharacterSet();
      (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
      outlined destroy of [Regex2BNF.CharacterPredicate](v3, &_s10Foundation12CharacterSetVSgMd, &_s10Foundation12CharacterSetVSgMR);
      v6 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
        v6 = v42;
      }

      v25 = *(v6 + 16);
      v24 = *(v6 + 24);
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        v6 = v42;
      }

      v7 = v10 + 1;
      *(v6 + 16) = v25 + 1;
      v26 = (v6 + 24 * v25);
      v26[4] = v12;
      v26[5] = v11;
      v26[6] = v13;
      v8 = v39;
    }

    while (v38 != v10);
  }

LABEL_17:
  v27 = *(v6 + 16);
  if (v27)
  {
    v44 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
    v28 = v44;
    v29 = (v6 + 40);
    do
    {
      v30 = *v29;
      v42 = *(v29 - 1);
      v43 = v30;
      v31 = Rule.description.getter();
      v44 = v28;
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      if (v34 >= v33 >> 1)
      {
        v36 = v31;
        v37 = v32;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
        v32 = v37;
        v31 = v36;
        v28 = v44;
      }

      *(v28 + 16) = v34 + 1;
      v35 = v28 + 16 * v34;
      *(v35 + 32) = v31;
      *(v35 + 40) = v32;
      v29 = (v29 + 24);
      --v27;
    }

    while (v27);
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  v42 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  BidirectionalCollection<>.joined(separator:)();
}

uint64_t Grammar.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for CharacterSet();
  v24 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v22[1] = v1[1];
  v23 = v9;
  MEMORY[0x1AC57CB80](*(v7 + 16), v4);
  v11 = *(v7 + 16);
  if (v11)
  {
    v12 = v7 + 40;
    do
    {

      String.hash(into:)();

      v12 += 16;
      --v11;
    }

    while (v11);
  }

  String.hash(into:)();
  MEMORY[0x1AC57CB80](*(v8 + 16));
  v13 = *(v8 + 16);
  if (v13)
  {
    v14 = (v8 + 32);
    do
    {
      v15 = *v14++;

      specialized Array<A>.hash(into:)(a1, v15);

      --v13;
    }

    while (v13);
  }

  specialized Array<A>.hash(into:)(a1, v23);
  result = MEMORY[0x1AC57CB80](*(v10 + 16));
  v17 = *(v10 + 16);
  if (v17)
  {
    v18 = *(v24 + 16);
    v19 = v10 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v20 = *(v24 + 72);
    v21 = (v24 + 8);
    do
    {
      v18(v6, v19, v3);
      lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680B8], MEMORY[0x1E69680C0]);
      dispatch thunk of Hashable.hash(into:)();
      result = (*v21)(v6, v3);
      v19 += v20;
      --v17;
    }

    while (v17);
  }

  return result;
}

Swift::Int Grammar.hashValue.getter()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v2 = *(v0 + 2);
  v7 = *(v0 + 1);
  v8 = v2;
  Hasher.init(_seed:)();
  Grammar.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Grammar()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v2 = *(v0 + 2);
  v7 = *(v0 + 1);
  v8 = v2;
  Hasher.init(_seed:)();
  Grammar.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Grammar(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v3 = *(v1 + 2);
  v8 = *(v1 + 1);
  v9 = v3;
  Hasher.init(_seed:)();
  Grammar.hash(into:)(v5);
  return Hasher._finalize()();
}

uint64_t Rule.symbol.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Rule.symbol.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t Rule.expression.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t static Rule.serialize(_:)(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Array<A>.description.getter(a1);
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;

  result = (*(v3 + 8))(v5, v2);
  if (v8 >> 60 != 15)
  {
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = v14;
    v4 = a1 + 40;
    do
    {
      v5 = Rule.description.getter();
      v15 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v15;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v12 = BidirectionalCollection<>.joined(separator:)();

  return v12;
}

unint64_t static Rule.deserializeRules(fromSerializedData:)(uint64_t a1, unint64_t a2)
{
  v3 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v3 - 8);
  static String.Encoding.utf8.getter();
  v4 = String.init(data:encoding:)();
  if (v5)
  {
    a2 = static BackusNaurParser.parsedRules(_:)(v4, v5);
  }

  else
  {
    lazy protocol witness table accessor for type GuidedGenerationError and conformance GuidedGenerationError();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
  }

  return a2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Rule.CodingKeys()
{
  if (*v0)
  {
    return 0x6973736572707865;
  }

  else
  {
    return 0x6C6F626D7973;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Rule.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Rule.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Rule.CodingKeys and conformance Rule.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Rule.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Rule.CodingKeys and conformance Rule.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Rule.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore4RuleV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore4RuleV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v11[0] = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Rule.CodingKeys and conformance Rule.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v7;
  v13 = v8;
  v14 = 0;
  lazy protocol witness table accessor for type NonTerminalSymbol and conformance NonTerminalSymbol();
  v9 = v11[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v9)
  {
    v12 = v11[0];
    v14 = 1;
    lazy protocol witness table accessor for type Expression and conformance Expression();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Rule.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  String.hash(into:)();
  result = MEMORY[0x1AC57CB80](*(v3 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = (v3 + 32);
    do
    {
      v7 = *v6++;

      specialized Array<A>.hash(into:)(a1, v7);

      --v5;
    }

    while (v5);
  }

  return result;
}

Swift::Int Rule.hashValue.getter()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1AC57CB80](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;

      specialized Array<A>.hash(into:)(v6, v4);

      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

uint64_t Rule.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore4RuleV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore4RuleV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Rule.CodingKeys and conformance Rule.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v14 = 0;
  lazy protocol witness table accessor for type NonTerminalSymbol and conformance NonTerminalSymbol();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v13[0];
  v9 = v13[1];
  v14 = 1;
  lazy protocol witness table accessor for type Expression and conformance Expression();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v11 = v13[0];
  *a2 = v10;
  a2[1] = v9;
  a2[2] = v11;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Rule()
{
  v2[9] = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  Rule.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Rule(uint64_t a1)
{
  v3[9] = *v1;
  v4 = *(v1 + 8);
  Hasher.init(_seed:)();
  Rule.hash(into:)(v3);
  return Hasher._finalize()();
}

uint64_t Array<A>.updatingReferences(from:to:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v47 = type metadata accessor for Symbol(0);
  v6 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v32 - v10);
  v33 = *(a3 + 16);
  if (!v33)
  {

    return a3;
  }

  v12 = *a1;
  v45 = a1[1];
  v46 = v12;
  v13 = *a2;
  v43 = a2[1];
  v44 = v13;

  v15 = 0;
  while (1)
  {
    if (v15 >= *(a3 + 16))
    {
      goto LABEL_37;
    }

    v35 = v15;
    v16 = (a3 + 24 * v15);
    v17 = v16[5];
    v34 = v16[4];
    v18 = v16[6];
    v19 = *(v18 + 16);
    v37 = v17;
    v38 = a3;

    result = swift_bridgeObjectRetain_n();
    v36 = v18;
    v39 = v19;
    if (v19)
    {
      break;
    }

LABEL_25:
    swift_bridgeObjectRetain_n();

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      a3 = v38;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v38);
      a3 = result;
    }

    if (v35 >= *(a3 + 16))
    {
      goto LABEL_38;
    }

    v29 = (a3 + 24 * v35);
    v30 = v35 + 1;
    v31 = v37;
    v29[4] = v34;
    v29[5] = v31;
    v29[6] = v18;

    swift_bridgeObjectRelease_n();

    v15 = v30;
    if (v30 == v33)
    {
      return a3;
    }
  }

  v20 = 0;
  v18 = v36;
  while (1)
  {
    if (v20 >= *(v18 + 16))
    {
      goto LABEL_35;
    }

    v40 = v20;
    v41 = v18;
    v21 = *(v18 + 8 * v20 + 32);
    v22 = v21[2];
    result = swift_bridgeObjectRetain_n();
    v42 = v21;
    if (v22)
    {
      break;
    }

LABEL_21:
    swift_bridgeObjectRetain_n();

    v18 = v41;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      v18 = result;
    }

    if (v40 >= *(v18 + 16))
    {
      goto LABEL_36;
    }

    v28 = v40 + 1;
    *(v18 + 8 * v40 + 32) = v21;
    swift_bridgeObjectRelease_n();

    v20 = v28;
    if (v28 == v39)
    {
      goto LABEL_25;
    }
  }

  v23 = 0;
  v21 = v42;
  while (v23 < v21[2])
  {
    v24 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v25 = *(v6 + 72) * v23;
    _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v21 + v24 + v25, v11, type metadata accessor for Symbol);
    _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v11, v8, type metadata accessor for Symbol);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      outlined destroy of Symbol(v8, type metadata accessor for Symbol);
      goto LABEL_17;
    }

    if (*v8 == v46 && v8[1] == v45)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    outlined destroy of Symbol(v11, type metadata accessor for Symbol);
    v27 = v43;
    *v11 = v44;
    v11[1] = v27;
    swift_storeEnumTagMultiPayload();

LABEL_17:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
      v21 = result;
    }

    if (v23 >= v21[2])
    {
      goto LABEL_34;
    }

    ++v23;
    result = outlined assign with take of Symbol(v11, v21 + v24 + v25);
    if (v22 == v23)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance Symbol.CodingKeys()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x696D7265746E6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616E696D726574;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Symbol.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized Symbol.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Symbol.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Symbol.CodingKeys and conformance Symbol.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Symbol.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Symbol.CodingKeys and conformance Symbol.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Symbol.NonterminalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Symbol.NonterminalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Symbol.TerminalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Symbol.TerminalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Symbol.NonterminalCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Symbol.TerminalSequenceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Symbol.TerminalSequenceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Symbol.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore6SymbolO21NonterminalCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore6SymbolO21NonterminalCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v30 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore6SymbolO26TerminalSequenceCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore6SymbolO26TerminalSequenceCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore6SymbolO18TerminalCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore6SymbolO18TerminalCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v31 = type metadata accessor for TerminalSymbol(0);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Symbol(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore6SymbolO10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore6SymbolO10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v14 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v16 = &v30 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Symbol.CodingKeys and conformance Symbol.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v40, v13, type metadata accessor for Symbol);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *v13;
      LOBYTE(v42) = 1;
      lazy protocol witness table accessor for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys();
      v19 = v34;
      v20 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v42 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore14TerminalSymbolOGMd, &_sSay19TokenGenerationCore14TerminalSymbolOGMR);
      lazy protocol witness table accessor for type [TerminalSymbol] and conformance <A> [A](&lazy protocol witness table cache variable for type [TerminalSymbol] and conformance <A> [A], &lazy protocol witness table cache variable for type TerminalSymbol and conformance TerminalSymbol, &protocol conformance descriptor for TerminalSymbol, MEMORY[0x1E69E6300]);
      v21 = v37;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v36 + 8))(v19, v21);
      (*(v14 + 8))(v16, v20);
    }

    else
    {
      v26 = *v13;
      v25 = v13[1];
      LOBYTE(v42) = 2;
      lazy protocol witness table accessor for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys();
      v27 = v35;
      v28 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v42 = v26;
      v43 = v25;
      lazy protocol witness table accessor for type NonTerminalSymbol and conformance NonTerminalSymbol();
      v29 = v39;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v38 + 8))(v27, v29);
      (*(v14 + 8))(v16, v28);
    }
  }

  else
  {
    _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v13, v10, type metadata accessor for TerminalSymbol);
    LOBYTE(v42) = 0;
    lazy protocol witness table accessor for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys();
    v22 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type TerminalSymbol and conformance TerminalSymbol, type metadata accessor for TerminalSymbol, &protocol conformance descriptor for TerminalSymbol);
    v23 = v33;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v32 + 8))(v8, v23);
    outlined destroy of Symbol(v10, type metadata accessor for TerminalSymbol);
    return (*(v14 + 8))(v16, v22);
  }
}

uint64_t Symbol.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TerminalSymbol(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Symbol(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v2, v9, type metadata accessor for Symbol);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = *v9;
      MEMORY[0x1AC57CB80](1);
      specialized Array<A>.hash(into:)(a1, v11);
    }

    else
    {
      MEMORY[0x1AC57CB80](2);
      String.hash(into:)();
    }
  }

  else
  {
    _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v9, v6, type metadata accessor for TerminalSymbol);
    MEMORY[0x1AC57CB80](0);
    TerminalSymbol.hash(into:)(a1);
    return outlined destroy of Symbol(v6, type metadata accessor for TerminalSymbol);
  }
}

uint64_t Symbol.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore6SymbolO21NonterminalCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore6SymbolO21NonterminalCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v60 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v66 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore6SymbolO26TerminalSequenceCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore6SymbolO26TerminalSequenceCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore6SymbolO18TerminalCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore6SymbolO18TerminalCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v52 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore6SymbolO10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore6SymbolO10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v68 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v9 = &v52 - v8;
  v10 = type metadata accessor for Symbol(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - v20;
  v22 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  lazy protocol witness table accessor for type Symbol.CodingKeys and conformance Symbol.CodingKeys();
  v23 = v69;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v23)
  {
    v54 = v15;
    v55 = v18;
    v53 = v12;
    v25 = v63;
    v24 = v64;
    v27 = v65;
    v26 = v66;
    v69 = v21;
    v56 = v10;
    v28 = v67;
    v29 = KeyedDecodingContainer.allKeys.getter();
    v30 = *(v29 + 16);
    if (!v30 || ((v31 = *(v29 + 32), v30 == 1) ? (v32 = v31 == 3) : (v32 = 1), v32))
    {
      v33 = v9;
      v34 = type metadata accessor for DecodingError();
      swift_allocError();
      v35 = v24;
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v37 = v56;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v68 + 8))(v33, v35);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v29 + 32))
      {
        if (v31 == 1)
        {
          LOBYTE(v70) = 1;
          lazy protocol witness table accessor for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v38 = v28;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore14TerminalSymbolOGMd, &_sSay19TokenGenerationCore14TerminalSymbolOGMR);
          lazy protocol witness table accessor for type [TerminalSymbol] and conformance <A> [A](&lazy protocol witness table cache variable for type [TerminalSymbol] and conformance <A> [A], &lazy protocol witness table cache variable for type TerminalSymbol and conformance TerminalSymbol, &protocol conformance descriptor for TerminalSymbol, MEMORY[0x1E69E6330]);
          v39 = v62;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v61 + 8))(v27, v39);
          (*(v68 + 8))(v9, v24);
          swift_unknownObjectRelease();
          v49 = v54;
          *v54 = v70;
        }

        else
        {
          LOBYTE(v70) = 2;
          lazy protocol witness table accessor for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys();
          v44 = v26;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v38 = v28;
          lazy protocol witness table accessor for type NonTerminalSymbol and conformance NonTerminalSymbol();
          v46 = v44;
          v47 = v57;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v48 = v68;
          (*(v60 + 8))(v46, v47);
          (*(v48 + 8))(v9, v24);
          swift_unknownObjectRelease();
          v50 = v71;
          v49 = v53;
          *v53 = v70;
          v49[1] = v50;
        }

        swift_storeEnumTagMultiPayload();
        v51 = v49;
        v43 = v69;
        _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v51, v69, type metadata accessor for Symbol);
      }

      else
      {
        LOBYTE(v70) = 0;
        lazy protocol witness table accessor for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for TerminalSymbol(0);
        lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type TerminalSymbol and conformance TerminalSymbol, type metadata accessor for TerminalSymbol, &protocol conformance descriptor for TerminalSymbol);
        v40 = v55;
        v41 = v24;
        v42 = v59;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v58 + 8))(v25, v42);
        (*(v68 + 8))(v9, v41);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v43 = v69;
        _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v40, v69, type metadata accessor for Symbol);
        v38 = v28;
      }

      _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v43, v38, type metadata accessor for Symbol);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v72);
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TerminalSymbol.contains(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = type metadata accessor for TerminalSymbol(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CharacterSet();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v2, v6, type metadata accessor for TerminalSymbol);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v12 = 0;
    }

    else
    {
      v12 = *v6 == v3;
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = CharacterSet.contains(_:)();
    (*(v8 + 8))(v10, v7);
  }

  return v12 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TerminalSymbol.Kind()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TerminalSymbol.Kind(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TerminalSymbol.Kind(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TerminalSymbol.Kind@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TerminalSymbol.Kind.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TerminalSymbol.Kind(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000072;
  v3 = 0x80000001A8FD8270;
  v4 = 0xD00000000000001BLL;
  if (*v1 != 2)
  {
    v4 = 0x65646F4338667475;
    v3 = 0xEC00000074696E55;
  }

  if (*v1)
  {
    v2 = 0xEC00000074655372;
  }

  if (*v1 <= 1u)
  {
    v5 = 0x6574636172616863;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v3;
  }

  *a1 = v5;
  a1[1] = v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TerminalSymbol.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TerminalSymbol.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TerminalSymbol.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TerminalSymbol.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TerminalSymbol.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TerminalSymbol.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684957547;
  v5 = 0xEC00000074655372;
  v6 = 0x6574636172616863;
  v7 = 0x80000001A8FD8270;
  v8 = 0xD00000000000001BLL;
  if (v2 != 3)
  {
    v8 = 0x65646F4338667475;
    v7 = 0xEC00000074696E55;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6574636172616863;
    v3 = 0xE900000000000072;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TerminalSymbol.CodingKeys()
{
  v1 = *v0;
  v2 = 1684957547;
  v3 = 0x6574636172616863;
  v4 = 0xD00000000000001BLL;
  if (v1 != 3)
  {
    v4 = 0x65646F4338667475;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574636172616863;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance TerminalSymbol.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized TerminalSymbol.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TerminalSymbol.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TerminalSymbol.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TerminalSymbol.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation12CharacterSetV5valuetSgMd, &_sSS3key_10Foundation12CharacterSetV5valuetSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v40 - v7;
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  v44 = v8;
  v45 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v40 - v12;
  v13 = type metadata accessor for TerminalSymbol(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14TerminalSymbolO10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14TerminalSymbolO10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v47 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v2, v18, type metadata accessor for TerminalSymbol);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined destroy of Symbol(v18, type metadata accessor for TerminalSymbol);
      v23 = 2;
    }

    else
    {
      v23 = 3;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    outlined destroy of Symbol(v18, type metadata accessor for TerminalSymbol);
    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  v53 = v23;
  v52 = 0;
  lazy protocol witness table accessor for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind();
  v24 = v46;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v24)
  {
    return (*(v47 + 8))(v21, v19);
  }

  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v2, v15, type metadata accessor for TerminalSymbol);
  v25 = swift_getEnumCaseMultiPayload();
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      v51 = 4;
      KeyedEncodingContainer.encode(_:forKey:)();
      return (*(v47 + 8))(v21, v19);
    }

    v26 = v43;
    v27 = (*(v45 + 32))(v43, v15, v44);
    if (one-time initialization token for characterSetLookup != -1)
    {
      v27 = swift_once();
    }

    MEMORY[0x1EEE9AC00](v27);
    *(&v40 - 2) = v26;
    v28 = v41;
    specialized Sequence.first(where:)(partial apply for closure #2 in TerminalSymbol.encode(to:), (&v40 - 4), v29, v41);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation12CharacterSetV5valuetMd, &_sSS3key_10Foundation12CharacterSetV5valuetMR);
    result = (*(*(v30 - 8) + 48))(v28, 1, v30);
    if (result != 1)
    {
      v32 = v44;
      v33 = *(v45 + 8);
      v33(v28 + *(v30 + 48), v44);
      v50 = 3;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v47 + 8))(v21, v19);

      v34 = v43;
      return (v33)(v34, v32);
    }

    __break(1u);
  }

  else
  {
    if (!v25)
    {
      v48 = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
      return (*(v47 + 8))(v21, v19);
    }

    v35 = v42;
    v36 = (*(v45 + 32))(v42, v15, v44);
    if (one-time initialization token for characterSetLookup != -1)
    {
      v36 = swift_once();
    }

    MEMORY[0x1EEE9AC00](v36);
    *(&v40 - 2) = v35;
    v37 = v40;
    specialized Sequence.first(where:)(partial apply for closure #1 in TerminalSymbol.encode(to:), (&v40 - 4), v38, v40);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation12CharacterSetV5valuetMd, &_sSS3key_10Foundation12CharacterSetV5valuetMR);
    result = (*(*(v39 - 8) + 48))(v37, 1, v39);
    if (result != 1)
    {
      v32 = v44;
      v33 = *(v45 + 8);
      v33(v37 + *(v39 + 48), v44);
      v49 = 2;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v47 + 8))(v21, v19);

      v34 = v42;
      return (v33)(v34, v32);
    }
  }

  __break(1u);
  return result;
}

uint64_t TerminalSymbol.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14TerminalSymbolO10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14TerminalSymbolO10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - v6;
  v8 = type metadata accessor for TerminalSymbol(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  lazy protocol witness table accessor for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v12 = v49;
    return __swift_destroy_boxed_opaque_existential_0(v12);
  }

  v47 = v10;
  v13 = v48;
  v14 = v5;
  LOBYTE(v52) = 0;
  lazy protocol witness table accessor for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v46 = v7;
  v15 = v4;
  v16 = v14;
  if (v50 > 1u)
  {
    if (v50 != 2)
    {
      LOBYTE(v50) = 2;
      v28 = v46;
      v29 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v14 + 8))(v28, v4);
      v17 = v49;
      v30 = v47;
      *v47 = v29;
      v39 = v30;
      goto LABEL_24;
    }

    LOBYTE(v50) = 3;
    result = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v49;
    if (one-time initialization token for characterSetLookup != -1)
    {
      v40 = result;
      v41 = v27;
      swift_once();
      result = v40;
      v27 = v41;
      v16 = v14;
    }

    v31 = static Grammar.characterSetLookup;
    if (*(static Grammar.characterSetLookup + 16))
    {
      v45 = v27;
      result = specialized __RawDictionaryStorage.find<A>(_:)(result, v27);
      if (v32)
      {
        goto LABEL_23;
      }

      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_28;
  }

  v17 = v49;
  if (!v50)
  {
    LOBYTE(v50) = 1;
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v18;
    if (HIWORD(v18) > 0x10u || (v18 & 0xFFFFF800) == 55296)
    {
      v21 = v16;
      v22 = type metadata accessor for DecodingError();
      swift_allocError();
      v48 = v23;
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      dispatch thunk of Decoder.codingPath.getter();
      v50 = 0;
      v51 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v50 = 0xD00000000000001ALL;
      v51 = 0x80000001A8FD8A20;
      v52 = v19;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1AC57C120](v24);

      v25 = v48;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v22 - 8) + 104))(v25, *MEMORY[0x1E69E6B00], v22);
      swift_willThrow();
      (*(v21 + 8))(v46, v15);
LABEL_25:
      v12 = v17;
      return __swift_destroy_boxed_opaque_existential_0(v12);
    }

    (*(v16 + 8))(v46, v4);
    v39 = v47;
    *v47 = v19;
LABEL_24:
    swift_storeEnumTagMultiPayload();
    _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v39, v13, type metadata accessor for TerminalSymbol);
    goto LABEL_25;
  }

  LOBYTE(v50) = 2;
  result = KeyedDecodingContainer.decode(_:forKey:)();
  if (one-time initialization token for characterSetLookup != -1)
  {
LABEL_28:
    v42 = result;
    v43 = v27;
    swift_once();
    result = v42;
    v27 = v43;
    v16 = v14;
  }

  v31 = static Grammar.characterSetLookup;
  if (!*(static Grammar.characterSetLookup + 16))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v45 = v27;
  result = specialized __RawDictionaryStorage.find<A>(_:)(result, v27);
  if (v33)
  {
LABEL_23:
    v34 = result;
    v35 = *(v31 + 56);
    v36 = type metadata accessor for CharacterSet();
    v37 = *(v36 - 8);
    v38 = v35 + *(v37 + 72) * v34;
    v39 = v47;
    (*(v37 + 16))(v47, v38, v36);
    (*(v16 + 8))(v46, v4);

    goto LABEL_24;
  }

LABEL_31:
  __break(1u);
  return result;
}

void TerminalSymbol.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TerminalSymbol(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v1, v8, type metadata accessor for TerminalSymbol);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v10 = *v8;
      MEMORY[0x1AC57CB80](0);
      Hasher._combine(_:)(v10);
      return;
    }

    (*(v3 + 32))(v5, v8, v2);
    v11 = 1;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v3 + 32))(v5, v8, v2);
    v11 = 2;
LABEL_7:
    MEMORY[0x1AC57CB80](v11);
    lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680B8], MEMORY[0x1E69680C0]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
    return;
  }

  v12 = *v8;
  MEMORY[0x1AC57CB80](3);
  Hasher._combine(_:)(v12);
}

Swift::Int Symbol.hashValue.getter(void (*a1)(void *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Symbol(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Symbol(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t NonTerminalSymbol.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NonTerminalSymbol.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NonTerminalSymbol.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NonTerminalSymbol.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NonTerminalSymbol.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore17NonTerminalSymbolV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore17NonTerminalSymbolV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int NonTerminalSymbol.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t NonTerminalSymbol.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore17NonTerminalSymbolV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore17NonTerminalSymbolV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance NonTerminalSymbol(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore17NonTerminalSymbolV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore17NonTerminalSymbolV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Expression.choices.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Expression.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736563696F6863 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Expression.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Expression.CodingKeys and conformance Expression.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Expression.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Expression.CodingKeys and conformance Expression.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Expression.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore10ExpressionV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore10ExpressionV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Expression.CodingKeys and conformance Expression.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore6ChoiceVGMd, &_sSay19TokenGenerationCore6ChoiceVGMR);
  lazy protocol witness table accessor for type [Choice] and conformance <A> [A](&lazy protocol witness table cache variable for type [Choice] and conformance <A> [A], lazy protocol witness table accessor for type Choice and conformance Choice, MEMORY[0x1E69E6300]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v6, v3);
}

uint64_t Expression.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  result = MEMORY[0x1AC57CB80](*(*v1 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = (v3 + 32);
    do
    {
      v7 = *v6++;

      specialized Array<A>.hash(into:)(a1, v7);

      --v5;
    }

    while (v5);
  }

  return result;
}

Swift::Int Expression.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;

      specialized Array<A>.hash(into:)(v6, v4);

      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

uint64_t Expression.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore10ExpressionV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore10ExpressionV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Expression.CodingKeys and conformance Expression.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore6ChoiceVGMd, &_sSay19TokenGenerationCore6ChoiceVGMR);
    lazy protocol witness table accessor for type [Choice] and conformance <A> [A](&lazy protocol witness table cache variable for type [Choice] and conformance <A> [A], lazy protocol witness table accessor for type Choice and conformance Choice, MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Expression()
{
  v2[9] = *v0;
  Hasher.init(_seed:)();
  Expression.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Expression(uint64_t a1)
{
  v3[9] = *v1;
  Hasher.init(_seed:)();
  Expression.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Symbol.NonterminalCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Symbol.NonterminalCodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Choice.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65636E6575716573 && a2 == 0xE800000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Choice.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Choice.CodingKeys and conformance Choice.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Choice.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Choice.CodingKeys and conformance Choice.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Choice.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore6ChoiceV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore6ChoiceV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Choice.CodingKeys and conformance Choice.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore6SymbolOGMd, &_sSay19TokenGenerationCore6SymbolOGMR);
  lazy protocol witness table accessor for type [Symbol] and conformance <A> [A](&lazy protocol witness table cache variable for type [Symbol] and conformance <A> [A], &lazy protocol witness table cache variable for type Symbol and conformance Symbol, &protocol conformance descriptor for Symbol, MEMORY[0x1E69E6300]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v6, v3);
}

Swift::Int Choice.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t Choice.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore6ChoiceV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore6ChoiceV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Choice.CodingKeys and conformance Choice.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore6SymbolOGMd, &_sSay19TokenGenerationCore6SymbolOGMR);
    lazy protocol witness table accessor for type [Symbol] and conformance <A> [A](&lazy protocol witness table cache variable for type [Symbol] and conformance <A> [A], &lazy protocol witness table cache variable for type Symbol and conformance Symbol, &protocol conformance descriptor for Symbol, MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Choice()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Choice(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

unint64_t InvalidGrammar.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16) <= 1u)
  {
    if (*(v0 + 16))
    {
      _StringGuts.grow(_:)(41);

      v3 = 0xD000000000000027;
    }

    else
    {
      _StringGuts.grow(_:)(33);

      v3 = 0xD00000000000001FLL;
    }

    goto LABEL_7;
  }

  if (*(v0 + 16) == 2)
  {
    _StringGuts.grow(_:)(27);

    v3 = 0xD000000000000019;
LABEL_7:
    v5 = v3;
    MEMORY[0x1AC57C120](v2, v1);
    return v5;
  }

  return 0xD000000000000028;
}

uint64_t InvalidGrammar.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) != 2)
    {
      return MEMORY[0x1AC57CB80](0);
    }

    v2 = 3;
  }

  else if (*(v1 + 16))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1AC57CB80](v2);

  return String.hash(into:)();
}

Swift::Int InvalidGrammar.hashValue.getter()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      MEMORY[0x1AC57CB80](0);
      return Hasher._finalize()();
    }

    v2 = 3;
  }

  else if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1AC57CB80](v2);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InvalidGrammar()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      MEMORY[0x1AC57CB80](0);
      return Hasher._finalize()();
    }

    v2 = 3;
  }

  else if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1AC57CB80](v2);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance InvalidGrammar(uint64_t a1)
{
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) != 2)
    {
      return MEMORY[0x1AC57CB80](0);
    }

    v2 = 3;
  }

  else if (*(v1 + 16))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1AC57CB80](v2);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InvalidGrammar(uint64_t a1)
{
  v2 = *(v1 + 16);
  Hasher.init(_seed:)();
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      MEMORY[0x1AC57CB80](0);
      return Hasher._finalize()();
    }

    v3 = 3;
  }

  else if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x1AC57CB80](v3);
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x1E69E5ED0]);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t))
{
  Hasher.init(_seed:)();
  a3(v8, a1, a2);
  v6 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  type metadata accessor for CharacterSet();
  v2 = MEMORY[0x1E69680B8];
  lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680B8], MEMORY[0x1E69680C0]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x1E69680B8], &lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, v2, MEMORY[0x1E69680C8]);
}

{
  v3 = MEMORY[0x1AC57CB60](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v2 = a1;
  v3 = MEMORY[0x1AC57CB50](*(v1 + 40), a1, 1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3);
}

{
  type metadata accessor for JSONSchema();
  v2 = MEMORY[0x1E69A0AF8];
  lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type JSONSchema and conformance JSONSchema, MEMORY[0x1E69A0AF8], MEMORY[0x1E69A0B08]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x1E69A0AF8], &lazy protocol witness table cache variable for type JSONSchema and conformance JSONSchema, v2, MEMORY[0x1E69A0B10]);
}

{
  type metadata accessor for JSONSchema.Property();
  v2 = MEMORY[0x1E69A0AD0];
  lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type JSONSchema.Property and conformance JSONSchema.Property, MEMORY[0x1E69A0AD0], MEMORY[0x1E69A0AD8]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x1E69A0AD0], &lazy protocol witness table cache variable for type JSONSchema.Property and conformance JSONSchema.Property, v2, MEMORY[0x1E69A0AE0]);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  type metadata accessor for SpecialToken();
  v2 = MEMORY[0x1E69C63C0];
  lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type SpecialToken and conformance SpecialToken, MEMORY[0x1E69C63C0], MEMORY[0x1E69C63C8]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x1E69C63C0], &lazy protocol witness table cache variable for type SpecialToken and conformance SpecialToken, v2, MEMORY[0x1E69C63D0]);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, TerminalSymbol.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, Prompt.SpecialToken.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, void (*a2)(void *), uint64_t (*a3)(uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a2(v8);
  v5 = Hasher._finalize()();

  return a3(a1, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
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
  v5 = type metadata accessor for TerminalSymbol(0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(*(v2 + 48) + v12 * v10, v8, type metadata accessor for TerminalSymbol);
      v13 = specialized static TerminalSymbol.== infix(_:_:)(v8, a1);
      outlined destroy of Symbol(v8, type metadata accessor for TerminalSymbol);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1AC57C5A0](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v43 = &v39 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v44);
  v12 = &v39 - v11;
  v50 = type metadata accessor for Prompt.SpecialToken(0);
  MEMORY[0x1EEE9AC00](v50);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = v3 + 64;
  v48 = v3;
  v16 = -1 << *(v3 + 32);
  v17 = a2 & ~v16;
  if ((*(v3 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v45 = ~v16;
    v18 = *a1;
    v19 = a1[1];
    v20 = (v7 + 48);
    v39 = (v7 + 32);
    v42 = (v7 + 8);
    v46 = *(v13 + 72);
    v49 = a1;
    v21 = v43;
    do
    {
      _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(*(v48 + 48) + v46 * v17, v15, type metadata accessor for Prompt.SpecialToken);
      v22 = *v15 == v18 && v15[1] == v19;
      if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_5;
      }

      v23 = v19;
      v24 = v18;
      v25 = v50[5];
      v26 = *(v44 + 48);
      outlined init with copy of Locale?(v15 + v25, v12);
      outlined init with copy of Locale?(v49 + v25, &v12[v26]);
      v27 = *v20;
      if ((*v20)(v12, 1, v6) == 1)
      {
        v28 = v27(&v12[v26], 1, v6);
        v18 = v24;
        if (v28 != 1)
        {
          goto LABEL_4;
        }

        outlined destroy of [Regex2BNF.CharacterPredicate](v12, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        v19 = v23;
      }

      else
      {
        outlined init with copy of Locale?(v12, v21);
        if (v27(&v12[v26], 1, v6) == 1)
        {
          (*v42)(v21, v6);
          v18 = v24;
LABEL_4:
          outlined destroy of [Regex2BNF.CharacterPredicate](v12, &_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
          v19 = v23;
          goto LABEL_5;
        }

        v29 = v40;
        (*v39)(v40, &v12[v26], v6);
        lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        v30 = *v42;
        v31 = v29;
        v21 = v43;
        (*v42)(v31, v6);
        v30(v21, v6);
        outlined destroy of [Regex2BNF.CharacterPredicate](v12, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        v18 = v24;
        v19 = v23;
        if ((v41 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v32 = v50[6];
      v33 = (v15 + v32);
      v34 = *(v15 + v32 + 8);
      v35 = (v49 + v32);
      v36 = v35[1];
      if (v34)
      {
        if (!v36)
        {
          goto LABEL_5;
        }

        v37 = *v33 == *v35 && v34 == v36;
        if (!v37 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else if (v36)
      {
        goto LABEL_5;
      }

      if (*(v15 + v50[7]) == *(v49 + v50[7]))
      {
        outlined destroy of Symbol(v15, type metadata accessor for Prompt.SpecialToken);
        return v17;
      }

LABEL_5:
      outlined destroy of Symbol(v15, type metadata accessor for Prompt.SpecialToken);
      v17 = (v17 + 1) & v45;
    }

    while (((*(v47 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
  }

  return v17;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(v24, v25, v26);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t lazy protocol witness table accessor for type InvalidGrammar and conformance InvalidGrammar()
{
  result = lazy protocol witness table cache variable for type InvalidGrammar and conformance InvalidGrammar;
  if (!lazy protocol witness table cache variable for type InvalidGrammar and conformance InvalidGrammar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvalidGrammar and conformance InvalidGrammar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvalidGrammar and conformance InvalidGrammar;
  if (!lazy protocol witness table cache variable for type InvalidGrammar and conformance InvalidGrammar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvalidGrammar and conformance InvalidGrammar);
  }

  return result;
}

uint64_t specialized static InvalidGrammar.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v7 == 2)
      {
        v14 = *a1;
        if (v3 != v6 || v2 != v5)
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of InvalidGrammar(v6, v5, 2u);
          outlined copy of InvalidGrammar(v3, v2, 2u);
          outlined consume of InvalidGrammar(v3, v2, 2u);
          v11 = v6;
          v12 = v5;
          v13 = 2;
          goto LABEL_22;
        }

        outlined copy of InvalidGrammar(v14, v2, 2u);
        outlined copy of InvalidGrammar(v3, v2, 2u);
        outlined consume of InvalidGrammar(v3, v2, 2u);
        v20 = v3;
        v21 = v2;
        v22 = 2;
        goto LABEL_32;
      }

      goto LABEL_27;
    }

    if (v7 != 3 || (v5 | v6) != 0)
    {
      goto LABEL_27;
    }

    outlined consume of InvalidGrammar(*a1, v2, 3u);
    v20 = 0;
    v21 = 0;
    v22 = 3;
  }

  else
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        v8 = *a1;
        if (v3 != v6 || v2 != v5)
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of InvalidGrammar(v6, v5, 0);
          outlined copy of InvalidGrammar(v3, v2, 0);
          outlined consume of InvalidGrammar(v3, v2, 0);
          v11 = v6;
          v12 = v5;
          v13 = 0;
LABEL_22:
          outlined consume of InvalidGrammar(v11, v12, v13);
          return v10 & 1;
        }

        outlined copy of InvalidGrammar(v8, v2, 0);
        outlined copy of InvalidGrammar(v3, v2, 0);
        outlined consume of InvalidGrammar(v3, v2, 0);
        v20 = v3;
        v21 = v2;
        v22 = 0;
        goto LABEL_32;
      }

LABEL_27:
      outlined copy of InvalidGrammar(*a2, a2[1], v7);
      outlined copy of InvalidGrammar(v3, v2, v4);
      outlined consume of InvalidGrammar(v3, v2, v4);
      outlined consume of InvalidGrammar(v6, v5, v7);
      return 0;
    }

    if (v7 != 1)
    {
      goto LABEL_27;
    }

    v16 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of InvalidGrammar(v6, v5, 1u);
      outlined copy of InvalidGrammar(v3, v2, 1u);
      outlined consume of InvalidGrammar(v3, v2, 1u);
      v11 = v6;
      v12 = v5;
      v13 = 1;
      goto LABEL_22;
    }

    outlined copy of InvalidGrammar(v16, v2, 1u);
    outlined copy of InvalidGrammar(v3, v2, 1u);
    outlined consume of InvalidGrammar(v3, v2, 1u);
    v20 = v3;
    v21 = v2;
    v22 = 1;
  }

LABEL_32:
  outlined consume of InvalidGrammar(v20, v21, v22);
  return 1;
}

uint64_t specialized static TerminalSymbol.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = type metadata accessor for CharacterSet();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - v6;
  v8 = type metadata accessor for TerminalSymbol(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v38 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14TerminalSymbolO_ACtMd, &_s19TokenGenerationCore14TerminalSymbolO_ACtMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v38 - v21;
  v24 = *(v23 + 56);
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(a1, &v38 - v21, type metadata accessor for TerminalSymbol);
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v41, &v22[v24], type metadata accessor for TerminalSymbol);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v22, v19, type metadata accessor for TerminalSymbol);
      if (!swift_getEnumCaseMultiPayload())
      {
        v26 = *v19;
        v27 = *&v22[v24];
LABEL_12:
        v32 = v26 == v27;
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v22, v16, type metadata accessor for TerminalSymbol);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = v39;
      v34 = v40;
      (*(v39 + 32))(v7, &v22[v24], v40);
      v32 = static CharacterSet.== infix(_:_:)();
      v36 = *(v35 + 8);
      v36(v7, v34);
      v36(v16, v34);
      goto LABEL_13;
    }

    v13 = v16;
LABEL_15:
    (*(v39 + 8))(v13, v40);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 2)
  {
    _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v22, v10, type metadata accessor for TerminalSymbol);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v26 = *v10;
      v27 = v22[v24];
      goto LABEL_12;
    }

LABEL_16:
    outlined destroy of [Regex2BNF.CharacterPredicate](v22, &_s19TokenGenerationCore14TerminalSymbolO_ACtMd, &_s19TokenGenerationCore14TerminalSymbolO_ACtMR);
    v32 = 0;
    return v32 & 1;
  }

  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v22, v13, type metadata accessor for TerminalSymbol);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_15;
  }

  v29 = v39;
  v28 = v40;
  v30 = &v22[v24];
  v31 = v38;
  (*(v39 + 32))(v38, v30, v40);
  v32 = static CharacterSet.== infix(_:_:)();
  v33 = *(v29 + 8);
  v33(v31, v28);
  v33(v13, v28);
LABEL_13:
  outlined destroy of Symbol(v22, type metadata accessor for TerminalSymbol);
  return v32 & 1;
}

uint64_t specialized static Rule.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore6ChoiceV_Tt1g5(v2, v3);
  v6 = v5;

  return v6 & 1;
}

uint64_t specialized static Symbol.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TerminalSymbol(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Symbol(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v29 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore6SymbolO_ACtMd, &_s19TokenGenerationCore6SymbolO_ACtMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v29 - v17;
  v20 = (&v29 + *(v19 + 56) - v17);
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(a1, &v29 - v17, type metadata accessor for Symbol);
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(a2, v20, type metadata accessor for Symbol);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v18, v15, type metadata accessor for Symbol);
    if (!swift_getEnumCaseMultiPayload())
    {
      _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v20, v6, type metadata accessor for TerminalSymbol);
      v23 = specialized static TerminalSymbol.== infix(_:_:)(v15, v6);
      outlined destroy of Symbol(v6, type metadata accessor for TerminalSymbol);
      outlined destroy of Symbol(v15, type metadata accessor for TerminalSymbol);
      goto LABEL_18;
    }

    outlined destroy of Symbol(v15, type metadata accessor for TerminalSymbol);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v18, v12, type metadata accessor for Symbol);
    v22 = *v12;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore14TerminalSymbolO_Tt1g5(v22, *v20);

LABEL_18:
      outlined destroy of Symbol(v18, type metadata accessor for Symbol);
      return v23 & 1;
    }

    goto LABEL_14;
  }

  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v18, v9, type metadata accessor for Symbol);
  v25 = *v9;
  v24 = v9[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_14:

LABEL_15:
    outlined destroy of [Regex2BNF.CharacterPredicate](v18, &_s19TokenGenerationCore6SymbolO_ACtMd, &_s19TokenGenerationCore6SymbolO_ACtMR);
    goto LABEL_16;
  }

  if (v25 == *v20 && v24 == v20[1])
  {

    goto LABEL_20;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
LABEL_20:
    outlined destroy of Symbol(v18, type metadata accessor for Symbol);
    v23 = 1;
    return v23 & 1;
  }

  outlined destroy of Symbol(v18, type metadata accessor for Symbol);
LABEL_16:
  v23 = 0;
  return v23 & 1;
}

uint64_t specialized static Grammar.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*a1, *a2) & 1) == 0 || (v2 != v7 || v4 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  swift_bridgeObjectRetain_n();

  swift_bridgeObjectRetain_n();
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore6ChoiceV_Tt1g5(v3, v8);
  v13 = v12;

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  if ((v13 & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore4RuleV_Tt1g5(v6, v11) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation12CharacterSetV_Tt1g5(v5, v10);
}

void specialized static Grammar.validateNoRightRecursiveRules(rules:)(uint64_t a1)
{
  v2 = type metadata accessor for Symbol(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v39 - v6);
  v8 = *(a1 + 16);
  if (!v8)
  {
    return;
  }

  v9 = 0;
  v10 = a1 + 32;
  v39 = a1 + 32;
  v40 = v8;
  while (1)
  {
    v11 = (v10 + 24 * v9);
    v12 = v11[2];
    v13 = *(v12 + 16);
    if (v13)
    {
      break;
    }

LABEL_4:
    if (++v9 == v8)
    {
      return;
    }
  }

  v41 = v9;
  v14 = v11[1];
  v47 = *v11;
  v45 = v14;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v15 = 0;
  while (1)
  {
    if (v15 >= *(v12 + 16))
    {
      __break(1u);
      return;
    }

    v16 = *(v12 + 8 * v15 + 32);
    v17 = *(v16 + 16);
    if (v17)
    {
      break;
    }

LABEL_8:
    if (v13 == ++v15)
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v8 = v40;
      v9 = v41;
      v10 = v39;
      goto LABEL_4;
    }
  }

  v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v51 = *(v3 + 72);
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v16 + v18 + v51 * (v17 - 1), v7, type metadata accessor for Symbol);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of Symbol(v7, type metadata accessor for Symbol);
    goto LABEL_8;
  }

  if (v47 == *v7 && v45 == v7[1])
  {

    goto LABEL_18;
  }

  v43 = v18;
  LODWORD(v46) = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v46 & 1) == 0)
  {

    goto LABEL_8;
  }

  v18 = v43;
LABEL_18:
  v48 = v47;
  v49 = v45;
  v50 = v12;
  v19 = Rule.description.getter();
  v21 = v20;

  v22 = *(v16 + 16);
  if (v22)
  {
    v46 = v19;
    v47 = v21;
    v48 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v23 = v48;
    v24 = v16 + v18;
    do
    {
      v25 = v44;
      _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v24, v44, type metadata accessor for Symbol);
      v26 = Symbol.description.getter();
      v28 = v27;
      outlined destroy of Symbol(v25, type metadata accessor for Symbol);
      v48 = v23;
      v30 = *(v23 + 16);
      v29 = *(v23 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        v23 = v48;
      }

      *(v23 + 16) = v30 + 1;
      v31 = v23 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      v24 += v51;
      --v22;
    }

    while (v22);

    v19 = v46;
    v21 = v47;
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  v48 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v32 = BidirectionalCollection<>.joined(separator:)();
  v34 = v33;

  v48 = 0;
  v49 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v48 = 0x203A656C7552;
  v49 = 0xE600000000000000;
  MEMORY[0x1AC57C120](v19, v21);

  MEMORY[0x1AC57C120](0xD00000000000001ELL, 0x80000001A8FD8B00);
  MEMORY[0x1AC57C120](v32, v34);

  v35 = v48;
  v36 = v49;
  lazy protocol witness table accessor for type InvalidGrammar and conformance InvalidGrammar();
  v37 = swift_allocError();
  *v38 = v35;
  *(v38 + 8) = v36;
  *(v38 + 16) = 1;
  v42 = v37;
  swift_willThrow();
}

uint64_t _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Symbol(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type GuidedGenerationError and conformance GuidedGenerationError()
{
  result = lazy protocol witness table cache variable for type GuidedGenerationError and conformance GuidedGenerationError;
  if (!lazy protocol witness table cache variable for type GuidedGenerationError and conformance GuidedGenerationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GuidedGenerationError and conformance GuidedGenerationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GuidedGenerationError and conformance GuidedGenerationError;
  if (!lazy protocol witness table cache variable for type GuidedGenerationError and conformance GuidedGenerationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GuidedGenerationError and conformance GuidedGenerationError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Rule.CodingKeys and conformance Rule.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NonTerminalSymbol and conformance NonTerminalSymbol()
{
  result = lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol;
  if (!lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol;
  if (!lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol;
  if (!lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol;
  if (!lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol;
  if (!lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Expression and conformance Expression()
{
  result = lazy protocol witness table cache variable for type Expression and conformance Expression;
  if (!lazy protocol witness table cache variable for type Expression and conformance Expression)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Expression and conformance Expression);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Expression and conformance Expression;
  if (!lazy protocol witness table cache variable for type Expression and conformance Expression)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Expression and conformance Expression);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Expression and conformance Expression;
  if (!lazy protocol witness table cache variable for type Expression and conformance Expression)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Expression and conformance Expression);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Symbol.CodingKeys and conformance Symbol.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys()
{
  result = lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys()
{
  result = lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys()
{
  result = lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys);
  }

  return result;
}

uint64_t _s19TokenGenerationCore14TerminalSymbolOWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type [TerminalSymbol] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14TerminalSymbolOGMd, &_sSay19TokenGenerationCore14TerminalSymbolOGMR);
    lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(a2, type metadata accessor for TerminalSymbol, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind()
{
  result = lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind;
  if (!lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind;
  if (!lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind;
  if (!lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind;
  if (!lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind);
  }

  return result;
}

uint64_t partial apply for closure #2 in TerminalSymbol.encode(to:)(uint64_t a1)
{
  return partial apply for closure #2 in TerminalSymbol.encode(to:)(a1) & 1;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation12CharacterSetV5valuetMd, &_sSS3key_10Foundation12CharacterSetV5valuetMR);
  return static CharacterSet.== infix(_:_:)() & 1;
}

unint64_t lazy protocol witness table accessor for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Expression.CodingKeys and conformance Expression.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys;
  if (!lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys;
  if (!lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys;
  if (!lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys;
  if (!lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Choice and conformance Choice()
{
  result = lazy protocol witness table cache variable for type Choice and conformance Choice;
  if (!lazy protocol witness table cache variable for type Choice and conformance Choice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Choice and conformance Choice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Choice and conformance Choice;
  if (!lazy protocol witness table cache variable for type Choice and conformance Choice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Choice and conformance Choice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Choice and conformance Choice;
  if (!lazy protocol witness table cache variable for type Choice and conformance Choice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Choice and conformance Choice);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Choice] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore6ChoiceVGMd, &_sSay19TokenGenerationCore6ChoiceVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Choice.CodingKeys and conformance Choice.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys;
  if (!lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys;
  if (!lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys;
  if (!lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys;
  if (!lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Symbol] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore6SymbolOGMd, &_sSay19TokenGenerationCore6SymbolOGMR);
    lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(a2, type metadata accessor for Symbol, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Grammar and conformance Grammar()
{
  result = lazy protocol witness table cache variable for type Grammar and conformance Grammar;
  if (!lazy protocol witness table cache variable for type Grammar and conformance Grammar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Grammar and conformance Grammar);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Rule and conformance Rule()
{
  result = lazy protocol witness table cache variable for type Rule and conformance Rule;
  if (!lazy protocol witness table cache variable for type Rule and conformance Rule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rule and conformance Rule);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rule and conformance Rule;
  if (!lazy protocol witness table cache variable for type Rule and conformance Rule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rule and conformance Rule);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for TerminalSymbol(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type TerminalSymbol and conformance TerminalSymbol, type metadata accessor for TerminalSymbol, &protocol conformance descriptor for TerminalSymbol);
  result = lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type TerminalSymbol and conformance TerminalSymbol, type metadata accessor for TerminalSymbol, &protocol conformance descriptor for TerminalSymbol);
  *(a1 + 16) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for NonTerminalSymbol(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type NonTerminalSymbol and conformance NonTerminalSymbol();
  result = lazy protocol witness table accessor for type NonTerminalSymbol and conformance NonTerminalSymbol();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Grammar(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for Grammar(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Rule(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for Rule(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for Symbol(uint64_t a1)
{
  type metadata accessor for TerminalSymbol(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [TerminalSymbol](319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for [TerminalSymbol](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [TerminalSymbol])
  {
    type metadata accessor for TerminalSymbol(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [TerminalSymbol]);
    }
  }
}

uint64_t type metadata completion function for TerminalSymbol(uint64_t a1)
{
  result = type metadata accessor for CharacterSet();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19TokenGenerationCore14InvalidGrammarO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for TerminalSymbol.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TerminalSymbol.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TerminalSymbol.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TerminalSymbol.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Symbol.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Symbol.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Choice.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Choice.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Rule.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Rule.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized Symbol.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E696D726574 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8FD8AE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696D7265746E6F6ELL && a2 == 0xEB000000006C616ELL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t specialized TerminalSymbol.Kind.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TerminalSymbol.Kind.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized TerminalSymbol.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TerminalSymbol.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined assign with take of Symbol(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Symbol(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of InvalidGrammar(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t outlined consume of InvalidGrammar(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t outlined init with take of (key: String, value: CharacterSet)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation12CharacterSetV5valuetMd, &_sSS3key_10Foundation12CharacterSetV5valuetMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _sSa9repeating5countSayxGx_SitcfC19TokenGenerationCore14TerminalSymbolO_Tt1g5Tm(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      v7 = a3(0);
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v8 + 16) = a2;
      v9 = *(v7 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      outlined init with copy of Symbol(v6, v8 + v10, a4);
      v11 = a2 - 1;
      if (a2 != 1)
      {
        v12 = *(v9 + 72);
        v13 = v8 + v12 + v10;
        do
        {
          outlined init with copy of Symbol(v6, v13, a4);
          v13 += v12;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    _s19TokenGenerationCore6SymbolOWOhTm_0(v6, a4);
    return v8;
  }

  return result;
}

void static Grammar.arrayRules(itemSymbol:minItems:maxItems:)(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v10 = type metadata accessor for Symbol(0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  v15 = a1[1];
  if ((a3 & 1) == 0 && a2 < 0 || (a5 & 1) == 0 && a4 < 0)
  {
    goto LABEL_5;
  }

  if ((a3 & 1) == 0)
  {
    if ((a5 & 1) == 0)
    {
      if (a4 < a2)
      {
LABEL_5:
        lazy protocol witness table accessor for type InvalidGrammar and conformance InvalidGrammar();
        swift_allocError();
        *v17 = v16;
        *(v17 + 8) = v15;
        *(v17 + 16) = 2;
        swift_willThrow();

        return;
      }

      if (!a2)
      {
        *v203 = *a1;
        *&v203[8] = v15;
        static Grammar.arrayRules(itemSymbol:minItems:maxItems:)(v203, 0, 1, a4, 0);
        return;
      }

      v100 = *a1;
      v101 = a1[1];
      v102 = v11;
      listOfNItemsRule #1 (_:) in static Grammar.arrayRules(itemSymbol:minItems:maxItems:)(a2, v100, v101, v203);
      *&v192 = *v203;
      v194 = *&v203[8];
      *v203 = 0;
      *&v203[8] = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      *v203 = 0xD000000000000014;
      *&v203[8] = 0x80000001A8FD8CD0;
      MEMORY[0x1AC57C120](v16, v15);
      *&v199 = *v203;
      v195 = *&v203[8];
      *&v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      *&v198 = swift_allocObject();
      v191 = xmmword_1A8FC9410;
      *(v198 + 16) = xmmword_1A8FC9410;
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v196 = a4;
      v197 = v16;
      v104 = *(v102 + 72);
      *&v201 = v15;
      v105 = *(v102 + 80);
      v106 = (v105 + 32) & ~v105;
      v107 = swift_allocObject();
      v200 = xmmword_1A8FC9400;
      *(v107 + 16) = xmmword_1A8FC9400;
      v108 = v202;
      v109 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0, 0xE000000000000000);
      v190 = v108;
      *(v107 + v106) = v109;
      swift_storeEnumTagMultiPayload();
      v110 = v198;
      *(v198 + 32) = v107;
      v189 = 2 * v104;
      v187 = v105;
      v202 = v103;
      v111 = swift_allocObject();
      *(v111 + 16) = v191;
      v186 = v106;
      v112 = v190;
      v113 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x202CuLL, 0xE200000000000000);
      v190 = v112;
      *(v111 + v106) = v113;
      swift_storeEnumTagMultiPayload();
      *&v191 = v104;
      v114 = (v111 + v106 + v104);
      v115 = v197;
      *v114 = v197;
      v116 = v201;
      v114[1] = v201;
      swift_storeEnumTagMultiPayload();
      *(v110 + 40) = v111;
      v117 = v195;
      *v14 = v199;
      v14[1] = v117;
      swift_storeEnumTagMultiPayload();
      v118 = v196 - a2;
      if (!__OFSUB__(v196, a2))
      {
        v119 = v196;

        v182 = _sSa9repeating5countSayxGx_SitcfC19TokenGenerationCore14TerminalSymbolO_Tt1g5Tm(v14, v118, type metadata accessor for Symbol, type metadata accessor for Symbol);
        *v203 = 0;
        *&v203[8] = 0xE000000000000000;
        _StringGuts.grow(_:)(16);

        strcpy(v203, "__ListOf");
        v203[9] = 0;
        *&v203[10] = 0;
        *&v203[12] = -402653184;
        v204 = a2;
        v120 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1AC57C120](v120);

        MEMORY[0x1AC57C120](28500, 0xE200000000000000);
        v204 = v119;
        v121 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1AC57C120](v121);

        MEMORY[0x1AC57C120](v115, v116);
        *&v184 = *v203;
        v183 = *&v203[8];
        v122 = swift_allocObject();
        *(v122 + 16) = v200;
        v185 = v122;
        v123 = v191;
        v124 = v186;
        v125 = swift_allocObject();
        *(v125 + 16) = v200;
        v126 = (v125 + v124);
        *v126 = v192;
        v126[1] = v194;
        swift_storeEnumTagMultiPayload();
        *v203 = v125;

        specialized Array.append<A>(contentsOf:)(v182);
        *(v122 + 32) = *v203;
        *v203 = 0;
        *&v203[8] = 0xE000000000000000;
        _StringGuts.grow(_:)(17);

        strcpy(v203, "__ArrayOf");
        *&v203[10] = 0;
        *&v203[12] = -385875968;
        v204 = a2;
        v127 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1AC57C120](v127);

        MEMORY[0x1AC57C120](28500, 0xE200000000000000);
        v204 = v196;
        v128 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1AC57C120](v128);

        MEMORY[0x1AC57C120](v197, v201);
        *&v201 = *v203;
        v197 = *&v203[8];
        v129 = swift_allocObject();
        *(v129 + 16) = v200;
        v130 = swift_allocObject();
        *(v130 + 16) = xmmword_1A8FCB600;
        v131 = (v130 + v124);
        *v131 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5BuLL, 0xE100000000000000);
        swift_storeEnumTagMultiPayload();
        v132 = (v130 + v124 + v123);
        v133 = v184;
        v134 = v183;
        *v132 = v184;
        v132[1] = v134;
        swift_storeEnumTagMultiPayload();

        v135 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5DuLL, 0xE100000000000000);
        *(v131 + v189) = v135;
        swift_storeEnumTagMultiPayload();
        *(v129 + 32) = v130;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
        v136 = swift_allocObject();
        *(v136 + 16) = xmmword_1A8FCB610;
        v137 = v197;
        *(v136 + 32) = v201;
        *(v136 + 40) = v137;
        *(v136 + 48) = v129;
        *(v136 + 56) = v133;
        v138 = v185;
        *(v136 + 64) = v134;
        *(v136 + 72) = v138;
        *(v136 + 80) = v192;
        *(v136 + 88) = v194;
        v139 = v195;
        *(v136 + 104) = v199;
        *(v136 + 112) = v139;
        *(v136 + 120) = v198;
        return;
      }

      goto LABEL_38;
    }

    if (a2 >= 1)
    {
      v31 = v11;
      listOfNItemsRule #1 (_:) in static Grammar.arrayRules(itemSymbol:minItems:maxItems:)(a2, *a1, a1[1], v203);
      v32 = *v203;
      *&v192 = 0x80000001A8FD8CB0;
      v200 = *&v203[8];
      listOfItemsRule #1 () in static Grammar.arrayRules(itemSymbol:minItems:maxItems:)(v16, v15, v203);
      *&v199 = *v203;
      v189 = v200;
      v198 = *&v203[8];
      *v203 = 0;
      *&v203[8] = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      *v203 = 0x664F7473694C5F5FLL;
      *&v203[8] = 0xEF747361654C7441;
      v204 = a2;
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1AC57C120](v33);

      MEMORY[0x1AC57C120](v16, v15);
      v195 = *v203;
      *&v194 = *&v203[8];
      v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1A8FC9410;
      v35 = v34;
      v196 = v34;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v197 = v16;
      v37 = *(v31 + 72);
      v38 = *(v31 + 80);
      *&v201 = v15;
      v39 = (v38 + 32) & ~v38;
      v186 = v36;
      v40 = swift_allocObject();
      v188 = xmmword_1A8FC9400;
      *(v40 + 16) = xmmword_1A8FC9400;
      v41 = (v40 + v39);
      *&v191 = v32;
      *v41 = v32;
      v41[1] = v200;
      swift_storeEnumTagMultiPayload();
      *(v35 + 32) = v40;
      v183 = v37;
      v185 = 3 * v37;
      v37 *= 2;
      v187 = v37;
      v42 = swift_allocObject();
      v184 = xmmword_1A8FCB600;
      *(v42 + 16) = xmmword_1A8FCB600;
      v43 = (v42 + v39);
      *v43 = v32;
      v43[1] = v200;
      swift_storeEnumTagMultiPayload();
      swift_bridgeObjectRetain_n();
      v44 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x202CuLL, 0xE200000000000000);
      v45 = v183;
      *(v43 + v183) = v44;
      swift_storeEnumTagMultiPayload();
      v46 = (v42 + v39 + v37);
      *v46 = v199;
      v46[1] = v198;
      swift_storeEnumTagMultiPayload();
      *(v196 + 40) = v42;
      *v203 = 0;
      *&v203[8] = 0xE000000000000000;

      _StringGuts.grow(_:)(20);

      *v203 = 0xD000000000000010;
      *&v203[8] = v192;
      v204 = a2;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1AC57C120](v47);

      MEMORY[0x1AC57C120](v197, v201);
      v202 = *v203;
      *&v201 = *&v203[8];
      v48 = swift_allocObject();
      *(v48 + 16) = v188;
      v49 = swift_allocObject();
      *(v49 + 16) = v184;
      v50 = (v49 + v39);
      *v50 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5BuLL, 0xE100000000000000);
      swift_storeEnumTagMultiPayload();
      v51 = (v50 + v45);
      v52 = v195;
      v53 = v194;
      *v51 = v195;
      v51[1] = v53;
      swift_storeEnumTagMultiPayload();

      v54 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5DuLL, 0xE100000000000000);
      *(v50 + v187) = v54;
      swift_storeEnumTagMultiPayload();
      *(v48 + 32) = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1A8FCB610;
      v56 = v201;
      *(v55 + 32) = v202;
      *(v55 + 40) = v56;
      *(v55 + 48) = v48;
      *(v55 + 56) = v52;
      v57 = v196;
      *(v55 + 64) = v53;
      *(v55 + 72) = v57;
      *(v55 + 80) = v191;
      *(v55 + 88) = v200;
      *(v55 + 104) = v199;
      *(v55 + 112) = v198;
      return;
    }

LABEL_20:
    v58 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
    v59 = swift_allocObject();
    v60 = v16;
    v197 = v16;
    v61 = v59;
    v192 = xmmword_1A8FC9410;
    *(v59 + 16) = xmmword_1A8FC9410;
    strcpy(v203, "__ArrayOf");
    *&v203[10] = 0;
    *&v203[12] = -385875968;
    MEMORY[0x1AC57C120](v60, v15);
    v190 = *v203;
    v189 = *&v203[8];
    *&v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
    *&v194 = swift_allocObject();
    v200 = xmmword_1A8FCB600;
    *(v194 + 16) = xmmword_1A8FCB600;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
    v63 = *(v58 + 72);
    v64 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    *&v198 = *(v58 + 80);
    *&v199 = v62;
    v65 = swift_allocObject();
    v188 = xmmword_1A8FC9400;
    *(v65 + 16) = xmmword_1A8FC9400;
    v66 = v202;
    v67 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5D5BuLL, 0xE200000000000000);
    v187 = v66;
    *(v65 + v64) = v67;
    swift_storeEnumTagMultiPayload();
    v68 = v194;
    *(v194 + 32) = v65;
    v195 = 2 * v63;
    v202 = 3 * v63;
    v69 = swift_allocObject();
    *(v69 + 16) = v200;
    v70 = (v69 + v64);
    v71 = v187;
    *v70 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5BuLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    v72 = (v69 + v64 + v63);
    *v72 = v197;
    v72[1] = v15;
    swift_storeEnumTagMultiPayload();

    v73 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5DuLL, 0xE100000000000000);
    v186 = v71;
    v74 = v195;
    *(v70 + v195) = v73;
    v75 = v74;
    swift_storeEnumTagMultiPayload();
    *(v68 + 40) = v69;
    v187 = 4 * v63;
    v76 = v63;
    v196 = v63;
    v77 = swift_allocObject();
    v78 = v15;
    v79 = v10;
    v185 = v77;
    *(v77 + 16) = xmmword_1A8FCB620;
    v80 = (v77 + v64);
    v81 = v186;
    *v80 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5BuLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    v82 = (v80 + v76);
    v83 = v197;
    *v82 = v197;
    v82[1] = v78;
    swift_storeEnumTagMultiPayload();

    *(v80 + v75) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x202CuLL, 0xE200000000000000);
    swift_storeEnumTagMultiPayload();
    v84 = (v80 + v202);
    strcpy(v203, "__ListOf");
    v203[9] = 0;
    *&v203[10] = 0;
    *&v203[12] = -402653184;
    MEMORY[0x1AC57C120](v83, v78);
    v85 = *&v203[8];
    *v84 = *v203;
    v84[1] = v85;
    v193 = v79;
    swift_storeEnumTagMultiPayload();
    v86 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5DuLL, 0xE100000000000000);
    v186 = v81;
    *(v80 + v187) = v86;
    swift_storeEnumTagMultiPayload();
    v87 = v194;
    *(v194 + 48) = v185;
    v88 = v189;
    v61[4] = v190;
    v61[5] = v88;
    v61[6] = v87;
    strcpy(v203, "__ListOf");
    v203[9] = 0;
    *&v203[10] = 0;
    *&v203[12] = -402653184;
    v89 = v83;
    *&v201 = v78;
    MEMORY[0x1AC57C120](v83, v78);
    *&v194 = *v203;
    v190 = *&v203[8];
    v90 = swift_allocObject();
    *(v90 + 16) = v192;
    v91 = swift_allocObject();
    *(v91 + 16) = v188;
    v92 = (v91 + v64);
    *v92 = v89;
    v92[1] = v78;
    swift_storeEnumTagMultiPayload();
    *(v90 + 32) = v91;
    v93 = swift_allocObject();
    *(v93 + 16) = v200;
    v94 = (v93 + v64);
    strcpy(v203, "__ListOf");
    v203[9] = 0;
    *&v203[10] = 0;
    *&v203[12] = -402653184;
    v95 = v201;

    MEMORY[0x1AC57C120](v89, v95);
    v96 = *&v203[8];
    *v94 = *v203;
    v94[1] = v96;
    swift_storeEnumTagMultiPayload();
    v97 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x202CuLL, 0xE200000000000000);
    *(v94 + v196) = v97;
    swift_storeEnumTagMultiPayload();
    v98 = (v94 + v195);
    *v98 = v197;
    v98[1] = v95;
    swift_storeEnumTagMultiPayload();
    *(v90 + 40) = v93;
    v99 = v190;
    v61[7] = v194;
    v61[8] = v99;
    v61[9] = v90;

    return;
  }

  if (a5)
  {
    goto LABEL_20;
  }

  if (!a4)
  {
    strcpy(v203, "__EmptyListOf");
    *&v203[14] = -4864;
    v140 = v11;
    MEMORY[0x1AC57C120](v16, v15, v12);
    v141 = *v203;
    v142 = *&v203[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
    v143 = swift_allocObject();
    v201 = xmmword_1A8FC9400;
    *(v143 + 16) = xmmword_1A8FC9400;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
    v144 = (*(v140 + 80) + 32) & ~*(v140 + 80);
    v145 = swift_allocObject();
    *(v145 + 16) = v201;
    *(v145 + v144) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5D5BuLL, 0xE200000000000000);
    swift_storeEnumTagMultiPayload();
    *(v143 + 32) = v145;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
    v146 = swift_allocObject();
    *(v146 + 16) = v201;
    *(v146 + 32) = v141;
    *(v146 + 40) = v142;
    *(v146 + 48) = v143;
    return;
  }

  *&v200 = v11;
  if (a4 < 2)
  {
    __break(1u);
    goto LABEL_37;
  }

  v18 = a4 - 1;
  v19 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(a4 - 1, 0);
  v20 = a4;
  v21 = v19;
  v196 = v20;
  if (specialized Sequence._copyContents(initializing:)(v203, (v19 + 4), v18, 2, v20) != v18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  v22 = v21[2];
  v23 = MEMORY[0x1E69E7CC0];
  *&v201 = v15;
  if (v22)
  {
    v193 = v10;
    v204 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v24 = 4;
    v25 = v204;
    do
    {
      listOfNItemsRule #1 (_:) in static Grammar.arrayRules(itemSymbol:minItems:maxItems:)(v21[v24], v16, v15, v203);
      v26 = *v203;
      v27 = *&v203[8];
      v204 = v25;
      v29 = *(v25 + 16);
      v28 = *(v25 + 24);
      if (v29 >= v28 >> 1)
      {
        v199 = *&v203[8];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
        v27 = v199;
        v25 = v204;
      }

      *(v25 + 16) = v29 + 1;
      v30 = v25 + 24 * v29;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      ++v24;
      --v22;
      v15 = v201;
    }

    while (v22);

    v23 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
  }

  v147 = *(v25 + 16);
  v197 = v16;
  if (v147)
  {
    *v203 = v23;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v147, 0);
    v148 = *v203;
    v149 = *(v200 + 80);
    v150 = (v149 + 32) & ~v149;
    v195 = *(v200 + 72);
    *&v199 = v150 + v195;
    *&v194 = v25;
    v151 = (v25 + 40);
    v198 = xmmword_1A8FC9400;
    *&v200 = v149 | 7;
    do
    {
      v153 = *(v151 - 1);
      v152 = *v151;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v154 = swift_allocObject();
      *(v154 + 16) = v198;
      v155 = (v154 + v150);
      *v155 = v153;
      v155[1] = v152;
      swift_storeEnumTagMultiPayload();
      *v203 = v148;
      v157 = *(v148 + 16);
      v156 = *(v148 + 24);

      if (v157 >= v156 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v156 > 1), v157 + 1, 1);
        v148 = *v203;
      }

      *(v148 + 16) = v157 + 1;
      *(v148 + 8 * v157 + 32) = v154;
      v151 += 3;
      --v147;
      v158 = v200;
    }

    while (v147);
    v16 = v197;
    v25 = v194;
  }

  else
  {
    v159 = *(v200 + 80);
    v150 = (v159 + 32) & ~v159;
    v195 = *(v200 + 72);
    v158 = v159 | 7;
    v148 = MEMORY[0x1E69E7CC0];
  }

  *&v200 = v158;
  *&v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
  v160 = swift_allocObject();
  v199 = xmmword_1A8FC9400;
  *&v191 = v160;
  *(v160 + 16) = xmmword_1A8FC9400;
  v161 = (v160 + v150);
  v162 = v201;
  *v161 = v16;
  v161[1] = v162;
  swift_storeEnumTagMultiPayload();
  v163 = swift_allocObject();
  *(v163 + 16) = v199;

  v164 = v202;
  v165 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0, 0xE000000000000000);
  *&v194 = v164;
  *(v163 + v150) = v165;
  swift_storeEnumTagMultiPayload();
  *v203 = 0;
  *&v203[8] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  strcpy(v203, "__ListOfAtMost");
  v203[15] = -18;
  v166 = v196;
  v204 = v196;
  v167 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v167);

  MEMORY[0x1AC57C120](v197, v162);
  v190 = *v203;
  v202 = *&v203[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
  v168 = v150;
  inited = swift_initStackObject();
  v192 = xmmword_1A8FC9410;
  *(inited + 16) = xmmword_1A8FC9410;
  *(inited + 32) = v191;
  *(inited + 40) = v163;
  *v203 = v148;
  specialized Array.append<A>(contentsOf:)(inited);
  *&v191 = *v203;
  *v203 = 0;
  *&v203[8] = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  *v203 = 0x4F79617272415F5FLL;
  *&v203[8] = 0xEF74736F4D744166;
  v204 = v166;
  v170 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v170);

  MEMORY[0x1AC57C120](v197, v201);
  *&v201 = *v203;
  v197 = *&v203[8];
  v171 = swift_allocObject();
  *(v171 + 16) = v199;
  v172 = v195;
  v173 = 2 * v195;
  v174 = swift_allocObject();
  *(v174 + 16) = xmmword_1A8FCB600;
  v175 = (v174 + v168);
  *v175 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5BuLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  v176 = (v174 + v168 + v172);
  v177 = v190;
  v178 = v202;
  *v176 = v190;
  v176[1] = v178;
  swift_storeEnumTagMultiPayload();

  *(v175 + v173) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5DuLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  *(v171 + 32) = v174;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
  v179 = swift_allocObject();
  *(v179 + 16) = v192;
  v180 = v197;
  *(v179 + 32) = v201;
  *(v179 + 40) = v180;
  *(v179 + 48) = v171;
  *(v179 + 56) = v177;
  v181 = v191;
  *(v179 + 64) = v202;
  *(v179 + 72) = v181;
  *v203 = v179;
  specialized Array.append<A>(contentsOf:)(v25);
}

double listOfNItemsRule #1 (_:) in static Grammar.arrayRules(itemSymbol:minItems:maxItems:)@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v35 = a2;
  v36 = a3;
  v8 = type metadata accessor for Symbol(0);
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v31 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v31 - v14);
  if (a1 < 1)
  {
    __break(1u);
LABEL_11:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a1 > 1), v15, 1, v5);
    goto LABEL_9;
  }

  v31 = v13;
  v33 = a4;
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1, 0, MEMORY[0x1E69E7CC0]);
  v32 = a1;
  v16 = a1 - 1;
  if (a1 != 1)
  {
    do
    {
      v17 = v36;
      *v15 = v35;
      v15[1] = v17;
      swift_storeEnumTagMultiPayload();
      v19 = v5[2];
      v18 = v5[3];

      if (v19 >= v18 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v5);
      }

      v5[2] = v19 + 1;
      v20 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v21 = *(v34 + 72);
      outlined init with take of Symbol(v15, v5 + v20 + v21 * v19);
      *v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x202CuLL, 0xE200000000000000);
      swift_storeEnumTagMultiPayload();
      v23 = v5[2];
      v22 = v5[3];
      if (v23 >= v22 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v5);
      }

      v5[2] = v23 + 1;
      outlined init with take of Symbol(v11, v5 + v20 + v23 * v21);
      --v16;
    }

    while (v16);
  }

  v24 = v36;
  v4 = v31;
  *v31 = v35;
  *(v4 + 8) = v24;
  swift_storeEnumTagMultiPayload();
  a4 = v5[2];
  a1 = v5[3];
  v15 = (a4 + 1);

  if (a4 >= a1 >> 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  v5[2] = v15;
  outlined init with take of Symbol(v4, v5 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * a4);
  v38 = 0x664F7473694C5F5FLL;
  v39 = 0xE800000000000000;
  v37 = v32;
  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v25);

  MEMORY[0x1AC57C120](v35, v36);
  v26 = v38;
  v27 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
  v28 = swift_allocObject();
  *&result = 1;
  *(v28 + 16) = xmmword_1A8FC9400;
  *(v28 + 32) = v5;
  v30 = v33;
  *v33 = v26;
  v30[1] = v27;
  v30[2] = v28;
  return result;
}

uint64_t listOfItemsRule #1 () in static Grammar.arrayRules(itemSymbol:minItems:maxItems:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  MEMORY[0x1AC57C120]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A8FC9410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
  v6 = *(type metadata accessor for Symbol(0) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A8FC9400;
  v10 = (v9 + v8);
  *v10 = a1;
  v10[1] = a2;
  swift_storeEnumTagMultiPayload();
  *(v5 + 32) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A8FCB600;
  v12 = (v11 + v8);

  MEMORY[0x1AC57C120](a1, a2);
  *v12 = 0x664F7473694C5F5FLL;
  v12[1] = 0xE800000000000000;
  swift_storeEnumTagMultiPayload();
  *(v12 + v7) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x202CuLL, 0xE200000000000000);
  swift_storeEnumTagMultiPayload();
  v13 = (v12 + 2 * v7);
  *v13 = a1;
  v13[1] = a2;
  swift_storeEnumTagMultiPayload();
  *(v5 + 40) = v11;
  *a3 = 0x664F7473694C5F5FLL;
  a3[1] = 0xE800000000000000;
  a3[2] = v5;
}

uint64_t _sSa9repeating5countSayxGx_SitcfC19TokenGenerationCore9Regex2BNFO6SymbolO_Tt1g5Tf4gn_n(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v6 = result;
    v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v9 = v8;
    *(v8 + 16) = a4;
    *(v8 + 32) = v6;
    *(v8 + 40) = a2;
    *(v8 + 48) = a3;
    v10 = a4 - 1;
    if (v10)
    {
      v11 = (v8 + 72);
      do
      {
        outlined copy of Regex2BNF.Symbol(v6, a2, a3);
        *(v11 - 2) = v6;
        *(v11 - 1) = a2;
        *v11 = a3;
        v11 += 24;
        --v10;
      }

      while (v10);
    }

    outlined copy of Regex2BNF.Symbol(v6, a2, a3);
    return v9;
  }

  return result;
}

void *_sSa9repeating5countSayxGx_SitcfCSS_Tt1g5Tf4gn_n(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = result;
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSaySiG_Tt1g5Tf4gn_n(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}