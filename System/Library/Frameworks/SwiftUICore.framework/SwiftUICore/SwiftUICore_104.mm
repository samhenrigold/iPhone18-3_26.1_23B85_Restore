uint64_t getEnumTagSinglePayload for AccessibilityCustomContentEntry.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AccessibilityCustomContentEntry.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for AccessibilityCustomContentEntry.Value(uint64_t a1)
{
  result = *(a1 + 48);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for AccessibilityCustomContentEntry.Value(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

void lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodingKeys, &unk_1F0069F48, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodingKeys, &unk_1F0069F48, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodingKeys, &unk_1F0069F48, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodingKeys, &unk_1F0069F48, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys);
  }
}

void lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry and conformance CodableAccessibilityCustomContentList.CodableEntry()
{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry and conformance CodableAccessibilityCustomContentList.CodableEntry)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry, &type metadata for CodableAccessibilityCustomContentList.CodableEntry, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry and conformance CodableAccessibilityCustomContentList.CodableEntry);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry and conformance CodableAccessibilityCustomContentList.CodableEntry)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry, &type metadata for CodableAccessibilityCustomContentList.CodableEntry, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry and conformance CodableAccessibilityCustomContentList.CodableEntry);
  }
}

void lazy protocol witness table accessor for type [CodableAccessibilityCustomContentList.CodableEntry] and conformance <A> [A](unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  if (!*a1)
  {
    type metadata accessor for [CodableAccessibilityCustomContentList.CodableEntry](255, &lazy cache variable for type metadata for [CodableAccessibilityCustomContentList.CodableEntry], &type metadata for CodableAccessibilityCustomContentList.CodableEntry, MEMORY[0x1E69E62F8]);
    v7 = v6;
    v9 = a2();
    swift_getWitnessTable(a3, v7, &v9);
    atomic_store(v8, a1);
  }
}

void type metadata accessor for (AccessibilityCustomContentEntry.Value, AccessibilityCustomContentEntry.Value)()
{
  if (!lazy cache variable for type metadata for (AccessibilityCustomContentEntry.Value, AccessibilityCustomContentEntry.Value))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AccessibilityCustomContentEntry.Value, AccessibilityCustomContentEntry.Value));
    }
  }
}

uint64_t outlined destroy of AccessibilityCustomContentEntry.Value?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for [CodableAccessibilityCustomContentList.CodableEntry](0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t specialized CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7261656C63 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6174726F706D69 && a2 == 0xEA00000000006563)
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

uint64_t specialized CodableAccessibilityCustomContentList.init(_:in:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a1 + 16);
  if (v5)
  {
    v36 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = a1 + 32;
    v7 = v36;
    for (i = v5 - 1; ; --i)
    {
      outlined init with copy of AccessibilityCustomContentEntry(v6, v30);
      outlined init with copy of AccessibilityCustomContentEntry(v30, &v25);
      v35[0] = v25;
      v35[1] = v26;
      v35[2] = v27;
      v35[3] = v28;
      v24[0] = v25;
      v24[1] = v26;
      v24[2] = v27;
      v24[3] = v28;
      v23[0] = v3;
      v23[1] = v4;
      swift_retain_n();
      swift_retain_n();
      outlined init with copy of AccessibilityCustomContentKey(v35, &v19);
      CodableAccessibilityCustomContentList.CodableEntry.CodableKey.init(_:in:)(v24, v23, &v19);
      v31 = v19;
      *v32 = v20;
      *&v32[8] = v21;
      *&v32[24] = v22;
      outlined init with copy of AccessibilityCustomContentEntry.Value(v29, v24);
      *&v19 = v3;
      *(&v19 + 1) = v4;
      CodableAccessibilityCustomContentList.CodableEntry.CodableValue.init(_:in:)(v24, &v19, v33);
      outlined destroy of AccessibilityCustomContentEntry(&v25);
      outlined destroy of AccessibilityCustomContentEntry(v30);
      v36 = v7;
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v7 = v36;
      }

      *(v7 + 16) = v10 + 1;
      v11 = v7 + 120 * v10;
      v12 = v31;
      v13 = *v32;
      v14 = v33[0];
      *(v11 + 64) = *&v32[16];
      *(v11 + 80) = v14;
      *(v11 + 32) = v12;
      *(v11 + 48) = v13;
      v15 = v33[1];
      v16 = v33[2];
      v17 = v33[3];
      *(v11 + 144) = v34;
      *(v11 + 112) = v16;
      *(v11 + 128) = v17;
      *(v11 + 96) = v15;
      if (!i)
      {
        break;
      }

      v6 += 120;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

uint64_t outlined init with copy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [CodableAccessibilityCustomContentList.CodableEntry](0, &lazy cache variable for type metadata for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content?, &unk_1F0069EB8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double outlined copy of AccessibilityText?(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of AccessibilityText.Storage(a1, a2, a3 & 1);
  }

  return result;
}

void type metadata accessor for [CodableAccessibilityCustomContentList.CodableEntry](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double destroy for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (v1 != 1)
  {
    return outlined consume of AccessibilityText.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return result;
}

uint64_t initializeWithCopy for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    v4 = *(a2 + 3);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    v5 = 1;
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = *(a2 + 16);
    outlined copy of AccessibilityText.Storage(*a2, v7, v8);
    v5 = 0;
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 17) = *(a2 + 17);
  }

  *(a1 + 40) = v5;
  return a1;
}

uint64_t assignWithCopy for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    else
    {
      v5.n128_f64[0] = outlined consume of AccessibilityText.Storage(*a1, *(a1 + 8), *(a1 + 16));
    }

    v6 = *(a2 + 40);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      v7 = a2[3];
      *(a1 + 24) = v7;
      *(a1 + 32) = a2[4];
      (**(v7 - 8))(a1, a2, v5);
      v8 = 1;
    }

    else
    {
      v9 = *a2;
      v10 = a2[1];
      v11 = *(a2 + 16);
      outlined copy of AccessibilityText.Storage(*a2, v10, v11);
      v8 = 0;
      *a1 = v9;
      *(a1 + 8) = v10;
      *(a1 + 16) = v11;
      *(a1 + 17) = *(a2 + 17);
    }

    *(a1 + 40) = v8;
  }

  return a1;
}

uint64_t assignWithTake for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(result + 40);
    if (v3 >= 2)
    {
      v3 = *result + 2;
    }

    v4 = result;
    if (v3 == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(result);
    }

    else
    {
      outlined consume of AccessibilityText.Storage(*result, *(result + 8), *(result + 16));
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    result = v4;
    if (v5 == 1)
    {
      v6 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v6;
      *(v4 + 32) = *(a2 + 32);
      v7 = 1;
    }

    else
    {
      v7 = 0;
      *v4 = *a2;
      *(v4 + 16) = *(a2 + 16);
    }

    *(v4 + 40) = v7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

double destroy for CodableAccessibilityCustomContentList.CodableEntry(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != 255)
  {
    result = outlined consume of AccessibilityText.Storage(*a1, *(a1 + 8), v2 & 1);
  }

  v4 = *(a1 + 40);
  if (v4 != 255)
  {
    result = outlined consume of AccessibilityText.Storage(*(a1 + 24), *(a1 + 32), v4 & 1);
  }

  v5 = *(a1 + 96);
  if (v5 != 255)
  {
    if (v5)
    {

      __swift_destroy_boxed_opaque_existential_1((a1 + 56));
    }

    else
    {
      v6 = *(a1 + 56);
      v7 = *(a1 + 64);
      v8 = *(a1 + 72);

      return outlined consume of AccessibilityText.Storage(v6, v7, v8);
    }
  }

  return result;
}

uint64_t initializeWithCopy for CodableAccessibilityCustomContentList.CodableEntry(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 8);
  if (*(a2 + 16) == 0xFF)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 8);
  }

  else
  {
    v5 = v4 >> 8;
    v6 = *a2;
    v7 = a2[1];
    v8 = v4 & 1;
    outlined copy of AccessibilityText.Storage(*a2, v7, v4 & 1);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 17) = v5;
  }

  v9 = *(a2 + 20);
  if (*(a2 + 40) == 0xFF)
  {
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 40) = *(a2 + 20);
  }

  else
  {
    v10 = v9 >> 8;
    v11 = a2[3];
    v12 = a2[4];
    v13 = v9 & 1;
    outlined copy of AccessibilityText.Storage(v11, v12, v9 & 1);
    *(a1 + 24) = v11;
    *(a1 + 32) = v12;
    *(a1 + 40) = v13;
    *(a1 + 41) = v10;
  }

  *(a1 + 48) = *(a2 + 48);
  v14 = *(a2 + 96);
  if (v14 == 255)
  {
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 81) = *(a2 + 81);
  }

  else if (v14)
  {
    v15 = *(a2 + 5);
    *(a1 + 80) = v15;
    (**(v15 - 8))(a1 + 56, a2 + 7);
    *(a1 + 96) = 1;
  }

  else
  {
    v16 = a2[7];
    v17 = a2[8];
    v18 = *(a2 + 72);
    outlined copy of AccessibilityText.Storage(v16, v17, v18);
    *(a1 + 56) = v16;
    *(a1 + 64) = v17;
    *(a1 + 72) = v18;
    *(a1 + 73) = *(a2 + 73);
    *(a1 + 96) = 0;
  }

  *(a1 + 104) = a2[13];
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t assignWithCopy for CodableAccessibilityCustomContentList.CodableEntry(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 16);
  if (*(a1 + 16) != 0xFF)
  {
    if (v4 == 255)
    {
      outlined destroy of AccessibilityText(a1);
      v6 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 16) = v6;
      goto LABEL_9;
    }

    v10 = *a2;
    v11 = a2[1];
    v12 = v4 & 1;
    outlined copy of AccessibilityText.Storage(*a2, v11, v4 & 1);
    v13 = *a1;
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 16) = v12;
    outlined consume of AccessibilityText.Storage(v13, v14, v15);
  }

  else
  {
    if (v4 == 255)
    {
      v5 = *a2;
      *(a1 + 16) = *(a2 + 8);
      *a1 = v5;
      goto LABEL_9;
    }

    v7 = *a2;
    v8 = a2[1];
    v9 = v4 & 1;
    outlined copy of AccessibilityText.Storage(*a2, v8, v4 & 1);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
  }

  *(a1 + 17) = *(a2 + 17);
LABEL_9:
  v16 = *(a2 + 40);
  if (*(a1 + 40) != 0xFF)
  {
    if (v16 == 255)
    {
      outlined destroy of AccessibilityText(a1 + 24);
      v18 = *(a2 + 20);
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 40) = v18;
      goto LABEL_17;
    }

    v22 = a2[3];
    v23 = a2[4];
    v24 = v16 & 1;
    outlined copy of AccessibilityText.Storage(v22, v23, v16 & 1);
    v25 = *(a1 + 24);
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    *(a1 + 24) = v22;
    *(a1 + 32) = v23;
    *(a1 + 40) = v24;
    outlined consume of AccessibilityText.Storage(v25, v26, v27);
  }

  else
  {
    if (v16 == 255)
    {
      v17 = *(a2 + 3);
      *(a1 + 40) = *(a2 + 20);
      *(a1 + 24) = v17;
      goto LABEL_17;
    }

    v19 = a2[3];
    v20 = a2[4];
    v21 = v16 & 1;
    outlined copy of AccessibilityText.Storage(v19, v20, v16 & 1);
    *(a1 + 24) = v19;
    *(a1 + 32) = v20;
    *(a1 + 40) = v21;
  }

  *(a1 + 41) = *(a2 + 41);
LABEL_17:
  *(a1 + 48) = *(a2 + 48);
  v28 = *(a2 + 96);
  if (*(a1 + 96) == 255)
  {
    if (v28 == 255)
    {
      v35 = *(a2 + 7);
      v36 = *(a2 + 9);
      *(a1 + 81) = *(a2 + 81);
      *(a1 + 72) = v36;
      *(a1 + 56) = v35;
      goto LABEL_27;
    }

    if (v28)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (v28 == 255)
  {
    outlined destroy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(a1 + 56);
    v33 = *(a2 + 81);
    v34 = *(a2 + 9);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 72) = v34;
    *(a1 + 81) = v33;
    goto LABEL_27;
  }

  if (a1 != a2)
  {
    outlined destroy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(a1 + 56);
    if (a2[12])
    {
LABEL_21:
      v29 = a2[10];
      *(a1 + 80) = v29;
      *(a1 + 88) = a2[11];
      (**(v29 - 8))(a1 + 56, a2 + 7);
      *(a1 + 96) = 1;
      goto LABEL_27;
    }

LABEL_24:
    v30 = a2[7];
    v31 = a2[8];
    v32 = *(a2 + 72);
    outlined copy of AccessibilityText.Storage(v30, v31, v32);
    *(a1 + 56) = v30;
    *(a1 + 64) = v31;
    *(a1 + 72) = v32;
    *(a1 + 73) = *(a2 + 73);
    *(a1 + 96) = 0;
  }

LABEL_27:
  v37 = a2[13];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = v37;
  return a1;
}

uint64_t assignWithTake for CodableAccessibilityCustomContentList.CodableEntry(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 == 255)
  {
    goto LABEL_4;
  }

  v5 = *(a2 + 16);
  if (*(a2 + 16) == 0xFF)
  {
    outlined destroy of AccessibilityText(a1);
LABEL_4:
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_6;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 16) = v5 & 1;
  outlined consume of AccessibilityText.Storage(v6, v7, v4 & 1);
  *(a1 + 17) = HIBYTE(v5) & 1;
LABEL_6:
  v8 = *(a1 + 40);
  if (v8 == 255)
  {
LABEL_9:
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    goto LABEL_11;
  }

  v9 = *(a2 + 40);
  if (*(a2 + 40) == 0xFF)
  {
    outlined destroy of AccessibilityText(a1 + 24);
    goto LABEL_9;
  }

  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v9 & 1;
  outlined consume of AccessibilityText.Storage(v10, v11, v8 & 1);
  *(a1 + 41) = HIBYTE(v9) & 1;
LABEL_11:
  *(a1 + 48) = *(a2 + 48);
  if (*(a1 + 96) == 255)
  {
LABEL_15:
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 81) = *(a2 + 81);
    goto LABEL_16;
  }

  if (*(a2 + 96) == 255 || a1 != a2)
  {
    outlined destroy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(a1 + 56);
    goto LABEL_15;
  }

LABEL_16:
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for CodableAccessibilityCustomContentList.CodableEntry(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 113))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CodableAccessibilityCustomContentList.CodableEntry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

void lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodingKeys, &unk_1F006A208, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodingKeys, &unk_1F006A208, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodingKeys, &unk_1F006A208, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodingKeys, &unk_1F006A208, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys);
  }
}

void lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey()
{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableKey, &unk_1F006A280, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableKey, &unk_1F006A280, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey);
  }
}

void lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue()
{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableValue, &unk_1F006A300, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableValue, &unk_1F006A300, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue);
  }
}

void lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys()
{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys, &unk_1F006A178, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys, &unk_1F006A178, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys, &unk_1F006A178, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys, &unk_1F006A178, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys);
  }
}

void lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys()
{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys, &unk_1F006A0E8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys, &unk_1F006A0E8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys, &unk_1F006A0E8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys, &unk_1F006A0E8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys);
  }
}

void lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys, &unk_1F006A058, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys, &unk_1F006A058, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys, &unk_1F006A058, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys, &unk_1F006A058, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys);
  }
}

double destroy for CodableAccessibilityCustomContentList.CodableEntry.CodableKey(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != 255)
  {
    result = outlined consume of AccessibilityText.Storage(*a1, *(a1 + 8), v2 & 1);
  }

  v4 = *(a1 + 40);
  if (v4 != 255)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);

    return outlined consume of AccessibilityText.Storage(v5, v6, v4 & 1);
  }

  return result;
}

uint64_t initializeWithCopy for CodableAccessibilityCustomContentList.CodableEntry.CodableKey(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 8);
  if (*(a2 + 16) == 0xFF)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 8);
  }

  else
  {
    v5 = v4 >> 8;
    v6 = *a2;
    v7 = a2[1];
    v8 = v4 & 1;
    outlined copy of AccessibilityText.Storage(*a2, v7, v4 & 1);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 17) = v5;
  }

  v9 = *(a2 + 20);
  if (*(a2 + 40) == 0xFF)
  {
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 40) = *(a2 + 20);
  }

  else
  {
    v10 = v9 >> 8;
    v12 = a2[3];
    v11 = a2[4];
    v13 = v9 & 1;
    outlined copy of AccessibilityText.Storage(v12, v11, v9 & 1);
    *(a1 + 24) = v12;
    *(a1 + 32) = v11;
    *(a1 + 40) = v13;
    *(a1 + 41) = v10;
  }

  return a1;
}

uint64_t assignWithCopy for CodableAccessibilityCustomContentList.CodableEntry.CodableKey(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 16);
  if (*(a1 + 16) != 0xFF)
  {
    if (v4 == 255)
    {
      outlined destroy of AccessibilityText(a1);
      v6 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 16) = v6;
      goto LABEL_9;
    }

    v10 = *a2;
    v11 = a2[1];
    v12 = v4 & 1;
    outlined copy of AccessibilityText.Storage(*a2, v11, v4 & 1);
    v13 = *a1;
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 16) = v12;
    outlined consume of AccessibilityText.Storage(v13, v14, v15);
  }

  else
  {
    if (v4 == 255)
    {
      v5 = *a2;
      *(a1 + 16) = *(a2 + 8);
      *a1 = v5;
      goto LABEL_9;
    }

    v7 = *a2;
    v8 = a2[1];
    v9 = v4 & 1;
    outlined copy of AccessibilityText.Storage(*a2, v8, v4 & 1);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
  }

  *(a1 + 17) = *(a2 + 17);
LABEL_9:
  v16 = *(a2 + 40);
  if (*(a1 + 40) != 0xFF)
  {
    if (v16 != 255)
    {
      v22 = a2[3];
      v23 = a2[4];
      v24 = v16 & 1;
      outlined copy of AccessibilityText.Storage(v22, v23, v16 & 1);
      v25 = *(a1 + 24);
      v26 = *(a1 + 32);
      v27 = *(a1 + 40);
      *(a1 + 24) = v22;
      *(a1 + 32) = v23;
      *(a1 + 40) = v24;
      outlined consume of AccessibilityText.Storage(v25, v26, v27);
      goto LABEL_16;
    }

    outlined destroy of AccessibilityText(a1 + 24);
    v18 = *(a2 + 20);
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 40) = v18;
  }

  else
  {
    if (v16 != 255)
    {
      v19 = a2[3];
      v20 = a2[4];
      v21 = v16 & 1;
      outlined copy of AccessibilityText.Storage(v19, v20, v16 & 1);
      *(a1 + 24) = v19;
      *(a1 + 32) = v20;
      *(a1 + 40) = v21;
LABEL_16:
      *(a1 + 41) = *(a2 + 41);
      return a1;
    }

    v17 = *(a2 + 3);
    *(a1 + 40) = *(a2 + 20);
    *(a1 + 24) = v17;
  }

  return a1;
}

uint64_t assignWithTake for CodableAccessibilityCustomContentList.CodableEntry.CodableKey(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 == 255)
  {
    goto LABEL_4;
  }

  v5 = *(a2 + 16);
  if (*(a2 + 16) == 0xFF)
  {
    outlined destroy of AccessibilityText(a1);
LABEL_4:
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_6;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 16) = v5 & 1;
  outlined consume of AccessibilityText.Storage(v6, v7, v4 & 1);
  *(a1 + 17) = HIBYTE(v5) & 1;
LABEL_6:
  v8 = *(a1 + 40);
  if (v8 != 255)
  {
    v9 = *(a2 + 40);
    if (*(a2 + 40) != 0xFF)
    {
      v10 = *(a1 + 24);
      v11 = *(a1 + 32);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v9 & 1;
      outlined consume of AccessibilityText.Storage(v10, v11, v8 & 1);
      *(a1 + 41) = HIBYTE(v9) & 1;
      return a1;
    }

    outlined destroy of AccessibilityText(a1 + 24);
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for CodableAccessibilityCustomContentList.CodableEntry.CodableKey(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CodableAccessibilityCustomContentList.CodableEntry.CodableKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~a2;
    }
  }

  return result;
}

double destroy for CodableAccessibilityCustomContentList.CodableEntry.CodableValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 != 255)
  {
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 8));
    }

    else
    {
      return outlined consume of AccessibilityText.Storage(*(a1 + 8), *(a1 + 16), *(a1 + 24));
    }
  }

  return result;
}

uint64_t initializeWithCopy for CodableAccessibilityCustomContentList.CodableEntry.CodableValue(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v3 = *(a2 + 48);
  if (v3 == 255)
  {
    v6 = *(a2 + 24);
    *(result + 8) = *(a2 + 8);
    *(result + 24) = v6;
    *(result + 33) = *(a2 + 33);
  }

  else if (v3)
  {
    v4 = *(a2 + 32);
    *(result + 32) = v4;
    v5 = result;
    (**(v4 - 8))(result + 8, a2 + 8);
    result = v5;
    *(v5 + 48) = 1;
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = result;
    outlined copy of AccessibilityText.Storage(v7, v8, v9);
    result = v10;
    *(v10 + 8) = v7;
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    *(v10 + 25) = *(a2 + 25);
    *(v10 + 48) = 0;
  }

  *(result + 56) = *(a2 + 56);
  *(result + 64) = *(a2 + 64);
  return result;
}

uint64_t assignWithCopy for CodableAccessibilityCustomContentList.CodableEntry.CodableValue(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 48);
  if (*(a1 + 48) == 255)
  {
    if (v4 == 255)
    {
      v11 = *(a2 + 8);
      v12 = *(a2 + 24);
      *(a1 + 33) = *(a2 + 33);
      *(a1 + 24) = v12;
      *(a1 + 8) = v11;
      goto LABEL_11;
    }

    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (v4 == 255)
  {
    outlined destroy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(a1 + 8);
    v9 = *(a2 + 33);
    v10 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v10;
    *(a1 + 33) = v9;
    goto LABEL_11;
  }

  if (a1 != a2)
  {
    outlined destroy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(a1 + 8);
    if (*(a2 + 48))
    {
LABEL_5:
      v5 = *(a2 + 32);
      *(a1 + 32) = v5;
      *(a1 + 40) = *(a2 + 40);
      (**(v5 - 8))(a1 + 8, a2 + 8);
      *(a1 + 48) = 1;
      goto LABEL_11;
    }

LABEL_8:
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v8 = *(a2 + 24);
    outlined copy of AccessibilityText.Storage(v6, v7, v8);
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    *(a1 + 25) = *(a2 + 25);
    *(a1 + 48) = 0;
  }

LABEL_11:
  v13 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v13;
  return a1;
}

uint64_t assignWithTake for CodableAccessibilityCustomContentList.CodableEntry.CodableValue(uint64_t result, uint64_t a2)
{
  *result = *a2;
  if (*(result + 48) == 255)
  {
    goto LABEL_7;
  }

  if (*(a2 + 48) == 255 || result != a2)
  {
    v3 = result;
    v4 = a2;
    outlined destroy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(result + 8);
    a2 = v4;
    result = v3;
LABEL_7:
    *(result + 8) = *(a2 + 8);
    *(result + 24) = *(a2 + 24);
    *(result + 33) = *(a2 + 33);
  }

  *(result + 56) = *(a2 + 56);
  *(result + 64) = *(a2 + 64);
  return result;
}

uint64_t getEnumTagSinglePayload for CodableAccessibilityCustomContentList.CodableEntry.CodableValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[65])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CodableAccessibilityCustomContentList.CodableEntry.CodableValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys, &unk_1F006A430, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys, &unk_1F006A430, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys, &unk_1F006A430, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys, &unk_1F006A430, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys);
  }
}

void lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys, &unk_1F006A3A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys, &unk_1F006A3A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys, &unk_1F006A3A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys, &unk_1F006A3A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys);
  }
}

void lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content()
{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content, &unk_1F0069EB8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content, &unk_1F0069EB8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content);
  }
}

uint64_t outlined assign with take of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [CodableAccessibilityCustomContentList.CodableEntry](0, &lazy cache variable for type metadata for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content?, &unk_1F0069EB8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ProxyCodable<AXCustomContentImportance?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ProxyCodable<AXCustomContentImportance?>)
  {
    type metadata accessor for AXCustomContentImportance?(255);
    v3 = v2;
    lazy protocol witness table accessor for type AXCustomContentImportance? and conformance <A> A?();
    v6 = type metadata accessor for ProxyCodable(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ProxyCodable<AXCustomContentImportance?>);
    }
  }
}

void type metadata accessor for AXCustomContentImportance?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AXCustomContentImportance?)
  {
    type metadata accessor for AXCustomContentImportance(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AXCustomContentImportance?);
    }
  }
}

void lazy protocol witness table accessor for type AXCustomContentImportance? and conformance <A> A?()
{
  if (!lazy protocol witness table cache variable for type AXCustomContentImportance? and conformance <A> A?)
  {
    v4[1] = v0;
    v4[2] = v1;
    type metadata accessor for AXCustomContentImportance?(255);
    v4[0] = &protocol witness table for AXCustomContentImportance;
    swift_getWitnessTable(protocol conformance descriptor for <A> A?, v2, v4);
    atomic_store(v3, &lazy protocol witness table cache variable for type AXCustomContentImportance? and conformance <A> A?);
  }
}

void type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void lazy protocol witness table accessor for type ProxyCodable<AXCustomContentImportance?> and conformance ProxyCodable<A>(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    type metadata accessor for ProxyCodable<AXCustomContentImportance?>(255);
    swift_getWitnessTable(a2, v4);
    atomic_store(v5, a1);
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TextShape.Exclusion(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    return a1[1] == a2[1];
  }

  return 0;
}

void static TextShape.bounds.getter(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 2;
}

uint64_t static TextShape.excludeTop(_:size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result & 1;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  return result;
}

void TextShape.Resolved.init()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 4;
}

__n128 TextShape.Resolved.init(boundsSize:kind:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = a1[1].n128_u64[0];
  a2->n128_f64[0] = a3;
  a2->n128_f64[1] = a4;
  result = *a1;
  a2[1] = *a1;
  a2[2].n128_u64[0] = v4;
  return result;
}

BOOL static TextShape.Resolved.Kind.== infix(_:_:)(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v3 == 4 || v2 != v3)
  {
    return 0;
  }

  return a1[2] == a2[2] && a1[1] == a2[1];
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TextShape.Resolved.Kind(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v3 == 4 || v2 != v3)
  {
    return 0;
  }

  return a1[2] == a2[2] && a1[1] == a2[1];
}

uint64_t TextShape.Resolved.exclusionPaths.getter()
{
  v1 = *(v0 + 16);
  if (v1 == 4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = 0.0;
  if (v1 == 3)
  {
    v6 = *v0 - v3;
  }

  else
  {
    v6 = 0.0;
  }

  _ss23_ContiguousArrayStorageCy7SwiftUI4PathVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Path>, &type metadata for Path, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18DDA6EB0;
  v9.origin.y = 0.0;
  v9.origin.x = v6;
  v9.size.width = v3;
  v9.size.height = v4;
  if (CGRectIsNull(v9))
  {
    v8 = 6;
    v3 = 0.0;
    v4 = 0.0;
  }

  else
  {
    v8 = 0;
    v5 = v6;
  }

  result = v7;
  *(v7 + 32) = v5;
  *(v7 + 40) = 0;
  *(v7 + 48) = v3;
  *(v7 + 56) = v4;
  *(v7 + 64) = v8;
  return result;
}

double *TextShape.Resolved.adjustLayout(width:height:targetWidth:)(double *result, double *a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  if (v5 == 4)
  {
    return result;
  }

  v6 = *(v4 + 32);
  if (v5 != 3)
  {
    if (v5 != 1)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    if (a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ((a4 & 1) == 0)
  {
LABEL_7:
    *result = a3;
    goto LABEL_8;
  }

  *result = *(v4 + 24) + *result;
LABEL_8:
  if (*a2 > v6)
  {
    v6 = *a2;
  }

  *a2 = v6;
  return result;
}

void protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.__Key_textShape(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 2;
}

void EnvironmentValues.textShape.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt1g5(v3, a1);
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt0g5(*v1);
    if (v4)
    {
      v5 = v4[11];
      *a1 = *(v4 + 9);
      *(a1 + 16) = v5;
    }

    else
    {
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 2;
    }
  }
}

double View.textWrappingTop(horizontalAlignment:size:isEnabled:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (a2)
  {
    v8 = a1 & 1;
  }

  else
  {
    v8 = 2;
  }

  if ((a2 & 1) == 0)
  {
    a5 = 0.0;
  }

  if ((a2 & 1) == 0)
  {
    a6 = 0.0;
  }

  KeyPath = swift_getKeyPath();
  v13[0] = v8;
  *&v13[1] = a5;
  *&v13[2] = a6;
  View.environment<A>(_:_:)(KeyPath, v13, a3, a4);

  return result;
}

void key path getter for EnvironmentValues.textShape : EnvironmentValues(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = v9;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt1g5(v3, v9);

    v5 = &v10;
  }

  else
  {
    v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt0g5(*a1);
    if (!v6)
    {
      v8 = 0;
      v7 = xmmword_18DDBA140;
      goto LABEL_6;
    }

    v4 = (v6 + 9);
    v5 = v6 + 11;
  }

  v7 = *v4;
  v8 = *v5;
LABEL_6:
  *a2 = v7;
  *(a2 + 16) = v8;
}

double key path setter for EnvironmentValues.textShape : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt2B5(a2, v3, v4, v5);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Ttg5(v6, *a2);
  }

  return result;
}

BOOL specialized static TextShape.Resolved.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  if (v3 != 4)
  {
    return v4 != 4 && v3 == v4 && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  }

  return v4 == 4;
}

uint64_t specialized static TextShape.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a1 == 2)
  {
    if (v2 == 2)
    {
      return 1;
    }
  }

  else if (v2 != 2 && ((*a2 ^ *a1) & 1) == 0 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for TextShape(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[24])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for TextShape(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextShape.Resolved(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 40))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = v4 - 5;
  if (v3 < 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for TextShape.Resolved(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextShape.Resolved.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[24])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TextShape.Resolved.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTag for TextShape.Resolved.Kind(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

void *destructiveInjectEnumTag for TextShape.Resolved.Kind(void *result, unsigned int a2)
{
  if (a2 > 0xFC)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 253;
  }

  else if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

void _ss23_ContiguousArrayStorageCy7SwiftUI4PathVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for TextShape.Exclusion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TextShape.Exclusion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t GlassContainerCache.init(observer:inputs:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized GlassContainerCache.init(observer:inputs:)(a1, a2);

  return v2;
}

double GlassContainerCache.invalidateResolved(transaction:)(uint64_t a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (AGSubgraphIsValid())
    {
      updated = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(*(v1 + 16));
      v13[0] = 17;
      v7 = *(v1 + 112);
      AGGraphClearUpdate();
      v8 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      v9 = AGCreateWeakAttribute();
      v10 = v9;
      v11 = HIDWORD(v9);
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      v12 = swift_allocObject();
      *(v12 + 16) = v5;
      *(v12 + 24) = a1;
      *(v12 + 32) = v10;
      *(v12 + 36) = v11;
      *(v12 + 40) = updated & 1;

      static Update.enqueueAction(reason:_:)(v13, closure #1 in GlassContainerCache.invalidateResolved(transaction:)partial apply, v12);
    }

    else
    {
    }
  }

  return result;
}

uint64_t closure #1 in GlassContainerCache.invalidateResolved(transaction:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v8 = _threadTransactionID();
  result = specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(a2, v8, a3, 1, 0);
  if ((a4 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v10 = *(a1 + 208);
      ObjectType = swift_getObjectType();
      (*(v10 + 24))(ObjectType, v10, 0.0);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *GlassContainerCache.entryState(id:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 168);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 640 * v7);
    memcpy(__dst, v9, 0x27CuLL);
    memcpy(v21, v9, 0x278uLL);
    v10 = *(v3 + 176);
    memmove(__src, v9, 0x278uLL);
    DWORD2(__src[39]) = v10;
    outlined init with copy of SeedValue<GlassContainer.EntryState>(__dst, v25, v11, v12);
    outlined init with copy of SeedValue<GlassContainer.EntryState>(__src, v25, v13, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = *(v3 + 168);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__src, a1, isUniquelyReferenced_nonNull_native);
    *(v3 + 168) = v25[0];
    swift_endAccess();
    v16 = v21;
  }

  else
  {
    swift_endAccess();
    *&__src[0] = 0;
    BYTE8(__src[0]) = 1;
    v17 = MEMORY[0x1E69E7CC0];
    *&__src[1] = MEMORY[0x1E69E7CC0];
    *(&__src[1] + 1) = MEMORY[0x1E69E7CC0];
    GlassContainer.Appearance.init()(&__src[2]);
    __src[7] = 0uLL;
    *(&__src[6] + 1) = 0;
    GlassContainer.ScalePulse.init()(&__src[8]);
    *&__src[20] = 0;
    *(&__src[20] + 1) = v17;
    *&__src[21] = 0;
    static GlassContainer.TranslationKickSettings.default.getter(&__src[21] + 8);
    LOBYTE(__src[26]) = 1;
    *(&__src[26] + 1) = 0;
    _s7SwiftUI14GlassContainerO15DisplayMaterialVSgWOi0_(v22);
    __src[35] = v22[8];
    __src[36] = v22[9];
    __src[37] = v22[10];
    LOBYTE(__src[38]) = v23;
    __src[31] = v22[4];
    __src[32] = v22[5];
    __src[33] = v22[6];
    __src[34] = v22[7];
    __src[27] = v22[0];
    __src[28] = v22[1];
    __src[29] = v22[2];
    __src[30] = v22[3];
    *(&__src[38] + 1) = 0;
    *&__src[39] = v17;
    memcpy(v24, __src, sizeof(v24));
    swift_beginAccess();
    LODWORD(v17) = *(v3 + 176);
    memcpy(v21, v24, 0x278uLL);
    v21[158] = v17;
    _ViewInputs.base.modify();
    memcpy(v25, v21, 0x27CuLL);
    memcpy(__dst, v21, 0x27CuLL);
    if (_s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOg(__dst) == 1)
    {
      outlined init with copy of GlassContainer.EntryState(v24, __src);
      specialized Dictionary._Variant.removeValue(forKey:)(a1, __src);
      outlined destroy of CoreInteractionRepresentable?(__src, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>?, type metadata accessor for SeedValue<GlassContainer.EntryState>);
    }

    else
    {
      memcpy(__src, v25, 0x27CuLL);
      outlined init with copy of GlassContainer.EntryState(v24, v20);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v20[0] = *(v3 + 168);
      *(v3 + 168) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__src, a1, v18);
      *(v3 + 168) = v20[0];
    }

    swift_endAccess();
    v16 = v24;
  }

  return memcpy(a2, v16, 0x278uLL);
}

unint64_t GlassContainerCache.interactionStateAttr(id:)(uint64_t a1)
{
  v2 = v1;
  IsValid = AGSubgraphIsValid();
  v5 = IsValid;
  if (IsValid)
  {
    swift_beginAccess();
    v6 = *(v1 + 152);
    if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v8 & 1) != 0))
    {
      LODWORD(v9) = *(*(v6 + 56) + 4 * v7);
    }

    else
    {
      v10 = *(v2 + 112);
      AGGraphClearUpdate();
      v11 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      __asm { FMOV            V0.2D, #1.0 }

      v9 = Attribute.init<A>(body:value:flags:update:)();
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *(v2 + 152);
      *(v2 + 152) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, isUniquelyReferenced_nonNull_native);
      *(v2 + 152) = v19;
      swift_endAccess();
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  return v9 | ((v5 ^ 1u) << 32);
}

Swift::Void __swiftcall GlassContainerCache.resetInteractionState(id:)(SwiftUI::GlassContainer::Entry::StableID id)
{
  if ((GlassContainerCache.interactionStateAttr(id:)(id.id) & 0x100000000) == 0 && (GlassContainerCache.hiddenAttr(id:)(id.id) & 0x100000000) == 0)
  {
    v3 = *(v1 + 112);
    if (AGSubgraphIsValid())
    {
      v4 = v3;
      AGGraphClearUpdate();
      v5 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      swift_weakLoadStrong();
      v6 = AGCreateWeakAttribute();
      v7 = v6;
      v8 = HIDWORD(v6);
      v9 = AGCreateWeakAttribute();
      v10 = v9;
      v11 = HIDWORD(v9);
      swift_weakInit();

      v19 = v7;
      v20 = v8;
      v21 = v10;
      v22 = v11;
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      __asm { FMOV            V0.2D, #1.0 }

      v17.scale = _Q0;
      memset(&v17.translation, 0, 17);
      PlatformGlassInteractionProxy.updateState(_:)(&v17);
      outlined destroy of PlatformGlassInteractionProxy(v18);
    }
  }
}

unint64_t GlassContainerCache.hiddenAttr(id:)(uint64_t a1)
{
  v2 = v1;
  IsValid = AGSubgraphIsValid();
  v5 = IsValid;
  if (IsValid)
  {
    swift_beginAccess();
    v6 = *(v1 + 160);
    if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v8 & 1) != 0))
    {
      LODWORD(v9) = *(*(v6 + 56) + 4 * v7);
    }

    else
    {
      v10 = *(v2 + 112);
      AGGraphClearUpdate();
      v11 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      v9 = Attribute.init<A>(body:value:flags:update:)();
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v2 + 160);
      *(v2 + 160) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, isUniquelyReferenced_nonNull_native);
      *(v2 + 160) = v14;
      swift_endAccess();
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  return v9 | ((v5 ^ 1u) << 32);
}

uint64_t GlassContainerCache.interaction<A>(for:entry:material:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a5@<X8>)
{
  v7 = *(v5 + 136);
  if (!v7 || (v38 = *(a1 + 48), v39 = *(a1 + 40), v30 = *(a1 + 56), v40 = *(a1 + 64), v29 = *(a1 + 72), v28 = *(a1 + 80), v31 = *(a1 + 104), v32 = *(a1 + 88), v8 = *(a1 + 328), v9 = *(a2 + 80), v10 = *(a2 + 88), v43 = *(a2 + 104), v44 = *(a2 + 96), v42 = *(a2 + 112), v41 = *(a2 + 120), v11 = *(a2 + 128), v27 = *(a2 + 136), v36 = *(a2 + 152), v37 = *(a2 + 144), v35 = *(a2 + 160), v34 = *(a2 + 168), (GlassContainerCache.interactionStateAttr(id:)(v8) & 0x100000000) != 0) || (GlassContainerCache.hiddenAttr(id:)(v8) & 0x100000000) != 0)
  {
    v24 = *(*(a3 - 8) + 56);

    return v24(a5, 1, 1, a3);
  }

  else
  {
    v12 = *(v5 + 112);
    AGGraphClearUpdate();
    v13 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    swift_weakLoadStrong();
    v14 = AGCreateWeakAttribute();
    v15 = v14;
    v26 = v9;
    v16 = HIDWORD(v14);
    v17 = AGCreateWeakAttribute();
    v18 = v17;
    v25 = v10;
    v19 = HIDWORD(v17);
    swift_weakInit();

    v71 = v15;
    v72 = v16;
    v73 = v18;
    v74 = v19;
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    outlined init with copy of PlatformGlassInteractionProxy(v70, &v69);
    v50[0] = v39;
    v50[1] = v38;
    v51 = v30;
    v52 = v40;
    v53 = v29;
    v54 = v28;
    v55 = v11;
    v56 = v27;
    v57 = v37;
    v58 = v36;
    v59 = v35;
    v60 = v34;
    v61 = v26;
    v62 = v25;
    v63 = v44;
    v64 = v43;
    v65 = v42;
    v66 = v41;
    v68 = v31;
    v67 = v32;
    v33 = *(v7 + 96);
    outlined copy of _Glass.Variant.Role(v39, v38);

    outlined copy of _Glass?(v11, v27, v37, v36);
    v20 = outlined copy of _Glass?(v26, v25, v44, v43);
    v33(&v46, v50, v20);
    outlined destroy of PlatformGlassInteractionContext(v50);
    outlined destroy of PlatformGlassInteractionProxy(v70);
    if (v47)
    {
      outlined init with take of AnyTrackedValue(&v46, v48);
      v21 = v49;
      v22 = __swift_project_boxed_opaque_existential_1(v48, v49);
      project #1 <A><A1>(_:) in GlassContainerCache.interaction<A>(for:entry:material:)(v22, a3, v21, a5);
      return __swift_destroy_boxed_opaque_existential_1(v48);
    }

    else
    {
      outlined destroy of CoreInteractionRepresentable?(&v46, &lazy cache variable for type metadata for CoreInteractionRepresentable?, type metadata accessor for CoreInteractionRepresentable);
      return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
    }
  }
}

uint64_t project #1 <A><A1>(_:) in GlassContainerCache.interaction<A>(for:entry:material:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 == a3)
  {
    result = *(a2 - 8);
    if (*(*(a3 - 8) + 64) != *(result + 64))
    {
      __break(1u);
      return result;
    }

    v11 = *(a2 - 8);
    (*(result + 16))(a4, a1, a2);
    v5 = *(v11 + 56);
    v6 = a4;
    v7 = 0;
  }

  else
  {
    v5 = *(*(a2 - 8) + 56);
    v6 = a4;
    v7 = 1;
  }

  return v5(v6, v7, 1, a2);
}

double GlassContainerCache.__ivar_destroyer()
{
  v1 = *(v0 + 64);
  v4[2] = *(v0 + 48);
  v4[3] = v1;
  v4[4] = *(v0 + 80);
  v5 = *(v0 + 96);
  v2 = *(v0 + 32);
  v4[0] = *(v0 + 16);
  v4[1] = v2;
  outlined destroy of _ViewInputs(v4);
  swift_weakDestroy();

  return result;
}

uint64_t GlassContainerCache.deinit()
{
  v1 = *(v0 + 64);
  v4[2] = *(v0 + 48);
  v4[3] = v1;
  v4[4] = *(v0 + 80);
  v5 = *(v0 + 96);
  v2 = *(v0 + 32);
  v4[0] = *(v0 + 16);
  v4[1] = v2;
  outlined destroy of _ViewInputs(v4);
  swift_weakDestroy();

  return v0;
}

uint64_t GlassContainerCache.__deallocating_deinit()
{
  GlassContainerCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.GlassContainerCacheKey()
{
  swift_weakInit();

  return swift_weakAssign();
}

uint64_t specialized GlassContainerCache.init(observer:inputs:)(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v5;
  v17[4] = *(a2 + 64);
  v18 = *(a2 + 80);
  v6 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v6;
  swift_weakInit();
  *(v2 + 148) = 0x8000;
  v7 = MEMORY[0x1E69E7CC0];
  *(v2 + 152) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14GlassContainerO5EntryV8StableIDV_14AttributeGraph0J0VyAC08PlatformE16InteractionStateVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v2 + 160) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14GlassContainerO5EntryV8StableIDV_14AttributeGraph0J0VySbGTt0g5Tf4g_n(v7);
  *(v2 + 168) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14GlassContainerO5EntryV8StableIDV_AC9SeedValueVyAE0G5StateVGTt0g5Tf4g_n(v7);
  *(v2 + 176) = -1;
  *(v2 + 184) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14GlassContainerO5EntryV7ModelIDO_AC9SeedValueVyAC0e6EffectF17TintConfigurationV7ElementVGTt0g5Tf4g_n(v7);
  *(v2 + 192) = -1;
  *(v2 + 200) = 0;
  *(v2 + 120) = a1;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = *(a2 + 80);
  v9 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v9;
  v10 = AGSubgraphGetCurrent();
  if (!v10)
  {
    __break(1u);
  }

  *(v2 + 112) = v10;

  outlined init with copy of _ViewInputs(v17, v16);
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  swift_weakAssign();

  *(v2 + 144) = Attribute.init<A>(body:value:flags:update:)();
  v11 = *&v17[0];
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.PlatformSystemKey);
  v12 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014PlatformSystemV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(v11, v16[0]);
  if (!v12)
  {
    outlined destroy of _ViewInputs(v17);
    goto LABEL_6;
  }

  v13 = *(v12 + 72);
  outlined destroy of _ViewInputs(v17);
  if (v13 != 1)
  {
LABEL_6:
    swift_beginAccess();
    *(v2 + 128) = static PlatformGlassDefinition.uiKit;
    v14 = &static PlatformGlassInteractionDefinition.uiKit;
    goto LABEL_7;
  }

  swift_beginAccess();
  *(v2 + 128) = static PlatformGlassDefinition.appKit;
  v14 = &static PlatformGlassInteractionDefinition.appKit;
LABEL_7:
  swift_beginAccess();
  *(v2 + 136) = *v14;
  return v2;
}

unint64_t type metadata accessor for CoreInteractionRepresentable()
{
  result = lazy cache variable for type metadata for CoreInteractionRepresentable;
  if (!lazy cache variable for type metadata for CoreInteractionRepresentable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CoreInteractionRepresentable);
  }

  return result;
}

uint64_t outlined destroy of CoreInteractionRepresentable?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for CoreInteractionRepresentable?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for CoreInteractionRepresentable?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for SeedValue<GlassContainer.EntryState>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>)
  {
    v4 = type metadata accessor for SeedValue(0, &type metadata for GlassContainer.EntryState, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>);
    }
  }
}

uint64_t outlined init with copy of SeedValue<GlassContainer.EntryState>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SeedValue<GlassContainer.EntryState>(0, a2, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AccessibilityHeadingLevel@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI25AccessibilityHeadingLevelO8rawValueACSgSu_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance AccessibilityHeadingLevel@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized static AccessibilityHeadingLevel.unwrap(codingProxy:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for ProtobufEnum.init(protobufValue:) in conformance AccessibilityHeadingLevel@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI25AccessibilityHeadingLevelO8rawValueACSgSu_tcfC_0(a1);
  *a2 = result;
  return result;
}

unint64_t specialized static AccessibilityHeadingLevel.unwrap(codingProxy:)(unint64_t result)
{
  if (result >= 7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

void lazy protocol witness table accessor for type AccessibilityHeadingLevel and conformance AccessibilityHeadingLevel()
{
  if (!lazy protocol witness table cache variable for type AccessibilityHeadingLevel and conformance AccessibilityHeadingLevel)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityHeadingLevel, &type metadata for AccessibilityHeadingLevel, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityHeadingLevel and conformance AccessibilityHeadingLevel);
  }
}

uint64_t _TrimmedShape.init(shape:startFraction:endFraction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  (*(*(a2 - 8) + 32))(a4, a1, a2);
  result = type metadata accessor for _TrimmedShape(0, a2, a3, v11);
  *(a4 + *(result + 36)) = a5;
  *(a4 + *(result + 40)) = a6;
  return result;
}

uint64_t _TrimmedShape.animatableData.setter(uint64_t a1, uint64_t a2)
{
  specialized _TrimmedShape.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>(255);
  v5 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  v10[0] = AssociatedTypeWitness;
  v10[1] = v5;
  v10[2] = AssociatedConformanceWitness;
  v10[3] = v7;
  v8 = type metadata accessor for AnimatablePair(0, v10);
  return (*(*(v8 - 8) + 8))(a1, v8);
}

void (*_TrimmedShape.animatableData.modify(uint64_t **a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[4] = a2;
  v6[5] = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>(255);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  *v7 = AssociatedTypeWitness;
  v7[1] = v10;
  v7[2] = AssociatedConformanceWitness;
  v7[3] = v12;
  v13 = type metadata accessor for AnimatablePair(0, v7);
  v7[6] = v13;
  v14 = *(v13 - 8);
  v7[7] = v14;
  v15 = *(v14 + 64);
  if (v5)
  {
    v7[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v7[8] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v7[9] = v16;
  _TrimmedShape.animatableData.getter(a2, v16);
  return _TrimmedShape.animatableData.modify;
}

void _TrimmedShape.animatableData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 32);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 64), v4, v5);
    v8 = specialized _TrimmedShape.animatableData.setter(v3, v7);
    v9 = *(v6 + 8);
    v9(v3, v5, v8);
    (v9)(v4, v5);
  }

  else
  {
    v10 = specialized _TrimmedShape.animatableData.setter(*(*a1 + 72), v7);
    (*(v6 + 8))(v4, v5, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance _TrimmedShape<A>(uint64_t a1, uint64_t a2)
{
  specialized _TrimmedShape.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>(255);
  v5 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  v10[0] = AssociatedTypeWitness;
  v10[1] = v5;
  v10[2] = AssociatedConformanceWitness;
  v10[3] = v7;
  v8 = type metadata accessor for AnimatablePair(0, v10);
  return (*(*(v8 - 8) + 8))(a1, v8);
}

void (*protocol witness for Animatable.animatableData.modify in conformance _TrimmedShape<A>(uint64_t **a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[4] = v2;
  v6[5] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>(255);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  *v7 = AssociatedTypeWitness;
  v7[1] = v10;
  v7[2] = AssociatedConformanceWitness;
  v7[3] = v12;
  v13 = type metadata accessor for AnimatablePair(0, v7);
  v7[6] = v13;
  v14 = *(v13 - 8);
  v7[7] = v14;
  v15 = *(v14 + 64);
  if (v5)
  {
    v7[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v7[8] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v7[9] = v16;
  _TrimmedShape.animatableData.getter(a2, v16);
  return protocol witness for Animatable.animatableData.modify in conformance _TrimmedShape<A>;
}

void protocol witness for Animatable.animatableData.modify in conformance _TrimmedShape<A>(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 40);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 64), v4, v5);
    v8 = specialized _TrimmedShape.animatableData.setter(v3, v7);
    v9 = *(v6 + 8);
    v9(v3, v5, v8);
    (v9)(v4, v5);
  }

  else
  {
    v10 = specialized _TrimmedShape.animatableData.setter(*(*a1 + 72), v7);
    (*(v6 + 8))(v4, v5, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Shape.trim(from:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v11 = *(a1 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v5, a1, v12);
  (*(v11 + 32))(a3, v14, a1);
  result = type metadata accessor for _TrimmedShape(0, a1, a2, v15);
  *(a3 + *(result + 36)) = a4;
  *(a3 + *(result + 40)) = a5;
  return result;
}

double specialized _TrimmedShape.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 8);
  *&v7 = COERCE_DOUBLE(swift_getAssociatedTypeWitness());
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>(255);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  v19 = *&v7;
  v20 = v12;
  v21 = AssociatedConformanceWitness;
  v22 = v14;
  v15 = type metadata accessor for AnimatablePair(0, &v19);
  AnimatablePair.subscript.getter(v10, &v19, v15);
  (*(v6 + 32))(v10, v5, v6);
  AnimatablePair.subscript.getter(v10, &v19, v15);
  (*(v8 + 8))(v10, v7);
  v16 = v20;
  v17 = *(a2 + 40);
  *(v3 + *(a2 + 36)) = v19 * 0.0078125;
  result = v16 * 0.0078125;
  *(v3 + v17) = v16 * 0.0078125;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _TrimmedShape(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    *((v10 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for _TrimmedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for _TrimmedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for _TrimmedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for _TrimmedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for _TrimmedShape(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for _TrimmedShape(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

BOOL specialized Collection.isEmpty.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  if (*(v1 + 64) > 1u)
  {
    if (*(v1 + 64) == 2)
    {
      v13 = v2;
      v14 = v3;
      v15 = v4;
      v16 = v5;
      v17 = v6;
      v18 = v7;
      v19 = v8;
      v20 = v9;
      v21 = 2;
      v11 = *(v2 + 16);
      outlined init with copy of ArrayWith2Inline<(String, String)>(v1, v12);
      outlined destroy of ArrayWith2Inline<(String, String)>(&v13, &lazy cache variable for type metadata for ArrayWith2Inline<(String, String)>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
      return v11 == 0;
    }

    else
    {
      outlined init with copy of ArrayWith2Inline<(String, String)>(v1, &v13);
      return 1;
    }
  }

  else
  {
    if (*(v1 + 64))
    {
      outlined init with copy of ArrayWith2Inline<(String, String)>(v1, &v13);
    }

    else
    {
      v13 = v2;
      v14 = v3;
      v15 = v4;
      v16 = v5;
      v17 = v6;
      v18 = v7;
      v19 = v8;
      v20 = v9;
      v21 = 0;
      outlined init with copy of ArrayWith2Inline<(String, String)>(v1, v12);
      outlined destroy of ArrayWith2Inline<(String, String)>(&v13, &lazy cache variable for type metadata for ArrayWith2Inline<(String, String)>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
    }

    return 0;
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI16ArrayWith2InlineVySS_SStG_SSs5NeverOTB503_s7D124UI12GestureDebugO4DataV12printSubtree33_40D5679141F478561068F8E300838A67LL6parent6indentyAESg_AE6IndentAGLLVtFS2S_SSt_tXEfU_Tf1cn_n(uint64_t *a1)
{
  v1 = *a1;
  v23 = a1[2];
  v25 = a1[3];
  v26 = a1[1];
  v18 = a1[6];
  v19 = a1[4];
  v20 = a1[7];
  v21 = a1[5];
  v2 = *(a1 + 64);
  if (v2 <= 1)
  {
    if (*(a1 + 64))
    {
      outlined init with copy of ArrayWith2Inline<(String, String)>(a1, &v29);

      v3 = 2;
    }

    else
    {
      v29 = *a1;
      v30 = v26;
      v31 = v23;
      v32 = v25;
      v33 = v19;
      v34 = v21;
      v35 = v18;
      v36 = v20;
      v37 = 0;
      outlined init with copy of ArrayWith2Inline<(String, String)>(a1, v28);
      outlined destroy of ArrayWith2Inline<(String, String)>(&v29, &lazy cache variable for type metadata for ArrayWith2Inline<(String, String)>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
      v3 = 1;
    }

    goto LABEL_8;
  }

  if (v2 != 2)
  {
    outlined init with copy of ArrayWith2Inline<(String, String)>(a1, &v29);
    return MEMORY[0x1E69E7CC0];
  }

  v29 = *a1;
  v30 = v26;
  v31 = v23;
  v32 = v25;
  v33 = v19;
  v34 = v21;
  v35 = v18;
  v36 = v20;
  v37 = 2;
  v4 = *(v1 + 16);
  outlined init with copy of ArrayWith2Inline<(String, String)>(a1, v28);
  outlined destroy of ArrayWith2Inline<(String, String)>(&v29, &lazy cache variable for type metadata for ArrayWith2Inline<(String, String)>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
  v3 = v4;
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_8:
  v24 = v3;
  v38 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v5 = 0;
  v6 = v38;
  v22 = v1;
  for (i = (v1 + 56); ; i += 4)
  {
    if (!v2)
    {
      if (v5)
      {
        goto LABEL_28;
      }

      outlined init with copy of ArrayWith2Inline<(String, String)>(a1, &v29);
      goto LABEL_15;
    }

    if (v2 != 1)
    {
      break;
    }

    if (!v5)
    {
      outlined init with copy of ArrayWith2Inline<(String, String)>(a1, &v29);

LABEL_15:
      v8 = v22;
      v9 = v23;
      v11 = v25;
      v10 = v26;
      goto LABEL_20;
    }

    if (v5 != 1)
    {
      goto LABEL_28;
    }

    outlined init with copy of ArrayWith2Inline<(String, String)>(a1, &v29);

    v9 = v18;
    v8 = v19;
    v11 = v20;
    v10 = v21;
LABEL_20:
    v29 = v8;
    v30 = v10;

    MEMORY[0x193ABEDD0](8250, 0xE200000000000000);
    MEMORY[0x193ABEDD0](v9, v11);

    v12 = v29;
    v13 = v30;
    v38 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v6 = v38;
    }

    ++v5;
    *(v6 + 16) = v15 + 1;
    v16 = v6 + 16 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = v13;
    if (v24 == v5)
    {
      return v6;
    }
  }

  v29 = v22;
  v30 = v26;
  v31 = v23;
  v32 = v25;
  v33 = v19;
  v34 = v21;
  v35 = v18;
  v36 = v20;
  v37 = 2;
  if (v5 < *(v22 + 16))
  {
    v8 = *(i - 3);
    v10 = *(i - 2);
    v9 = *(i - 1);
    v11 = *i;
    outlined init with copy of ArrayWith2Inline<(String, String)>(a1, v28);

    outlined destroy of ArrayWith2Inline<(String, String)>(&v29, &lazy cache variable for type metadata for ArrayWith2Inline<(String, String)>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
    goto LABEL_20;
  }

  __break(1u);
LABEL_28:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double static Gesture.makeDebuggableGesture(gesture:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a2 + 30);
  v33 = *a1;
  v9 = a2[5];
  v28 = a2[4];
  v29 = v9;
  v30 = a2[6];
  v31 = *(a2 + 14);
  v10 = a2[1];
  v24 = *a2;
  v25 = v10;
  v11 = a2[3];
  v26 = a2[2];
  v27 = v11;
  v32 = v8;
  (*(a4 + 32))(v34, &v33, &v24);
  if ((v8 & 8) != 0 && (!swift_conformsToProtocol2() || !v5))
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    LOBYTE(v33) = v12;
    v13 = a2[5];
    v28 = a2[4];
    v29 = v13;
    v30 = a2[6];
    v31 = *(a2 + 14);
    v14 = a2[1];
    v24 = *a2;
    v25 = v14;
    v15 = a2[3];
    v26 = a2[2];
    v27 = v15;
    v32 = v8;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v19 = type metadata accessor for _GestureOutputs(0, AssociatedTypeWitness, v17, v18);
    v20 = _GestureOutputs.debugData.getter();
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v5, &v33, 0x100000000, &v24, v20 | ((HIDWORD(v20) & 1) << 32), 0x100000000, v19);
  }

  v21 = v34[1];
  v22 = v35;
  result = *v34;
  *a5 = v34[0];
  *(a5 + 8) = v21;
  *(a5 + 16) = v22;
  return result;
}

void _GestureOutputs.wrapDebugOutputs<A, B, C>(_:kind:properties:inputs:combiningOutputs:)(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *(a4 + 120);
  if ((v10 & 8) != 0)
  {
    v25[0] = *a2;
    v12 = *(a4 + 64);
    v13 = *(a4 + 96);
    v22[5] = *(a4 + 80);
    v22[6] = v13;
    v23 = *(a4 + 112);
    v14 = *(a4 + 16);
    v22[0] = *a4;
    v22[1] = v14;
    v15 = *(a4 + 48);
    v22[2] = *(a4 + 32);
    v22[3] = v15;
    v22[4] = v12;
    v24 = v10;
    type metadata accessor for _GestureOutputs(0, a9, a3, a4);
    v18 = _GestureOutputs.debugData.getter();
    type metadata accessor for _GestureOutputs(0, a10, v19, v20);
    v21 = _GestureOutputs.debugData.getter();
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(a1, v25, a3 | ((HIDWORD(a3) & 1) << 32), v22, v18 | ((HIDWORD(v18) & 1) << 32), v21 | ((HIDWORD(v21) & 1) << 32), a7);
  }
}

double static GestureModifier.makeDebuggableGesture(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *(a2 + 30);
  v33 = *a1;
  v9 = a2[5];
  v28 = a2[4];
  v29 = v9;
  v30 = a2[6];
  v31 = *(a2 + 14);
  v10 = a2[1];
  v24 = *a2;
  v25 = v10;
  v11 = a2[3];
  v26 = a2[2];
  v27 = v11;
  v32 = v8;
  (*(a4 + 24))(v34, &v33, &v24);
  if ((v8 & 8) != 0 && (!swift_conformsToProtocol2() || !v5))
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    LOBYTE(v33) = v12;
    v13 = a2[5];
    v28 = a2[4];
    v29 = v13;
    v30 = a2[6];
    v31 = *(a2 + 14);
    v14 = a2[1];
    v24 = *a2;
    v25 = v14;
    v15 = a2[3];
    v26 = a2[2];
    v27 = v15;
    v32 = v8;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v19 = type metadata accessor for _GestureOutputs(0, AssociatedTypeWitness, v17, v18);
    v20 = _GestureOutputs.debugData.getter();
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v5, &v33, 0x100000000, &v24, v20 | ((HIDWORD(v20) & 1) << 32), 0x100000000, v19);
  }

  v21 = v34[1];
  v22 = v35;
  result = *v34;
  *a5 = v34[0];
  *(a5 + 8) = v21;
  *(a5 + 16) = v22;
  return result;
}

Swift::Int GestureDebug.Kind.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void GestureDebug.Data.frame.setter(double a1, double a2, double a3, double a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

uint64_t GestureDebug.Data.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v9 = *(v1 + 96);
  v10 = v2;
  v11 = *(v1 + 128);
  v3 = v11;
  v4 = *(v1 + 80);
  v8[0] = *(v1 + 64);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return outlined init with copy of ArrayWith2Inline<(String, String)>(v8, v7);
}

__n128 GestureDebug.Data.properties.setter(uint64_t a1)
{
  v3 = *(v1 + 112);
  v7[2] = *(v1 + 96);
  v7[3] = v3;
  v8 = *(v1 + 128);
  v4 = *(v1 + 80);
  v7[0] = *(v1 + 64);
  v7[1] = v4;
  outlined destroy of ArrayWith2Inline<(String, String)>(v7, &lazy cache variable for type metadata for ArrayWith2Inline<(String, String)>, type metadata accessor for ArrayWith2Inline);
  v5 = *(a1 + 48);
  *(v1 + 96) = *(a1 + 32);
  *(v1 + 112) = v5;
  *(v1 + 128) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = result;
  return result;
}

uint64_t GestureDebug.Data.children.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 136);
  memcpy(__dst, (v3 + 16), 0x121uLL);
  memcpy(a1, (v3 + 16), 0x121uLL);
  return outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(__dst, &v5, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>, type metadata accessor for ArrayWith2Inline);
}

void *key path setter for GestureDebug.Data.children : GestureDebug.Data(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x121uLL);
  outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(__dst, &v5, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>, type metadata accessor for ArrayWith2Inline);

  v3 = swift_allocObject();
  result = memcpy((v3 + 16), __dst, 0x121uLL);
  *(a2 + 136) = v3;
  return result;
}

void *GestureDebug.Data.children.setter(const void *a1)
{

  v3 = swift_allocObject();
  result = memcpy((v3 + 16), a1, 0x121uLL);
  *(v1 + 136) = v3;
  return result;
}

uint64_t (*GestureDebug.Data.children.modify(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x5D8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[185] = v1;
  v5 = *(v1 + 136);
  v3[186] = v5;
  memcpy(v3, (v5 + 16), 0x121uLL);
  memmove((v4 + 296), (v5 + 16), 0x121uLL);
  outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(v4, v4 + 592, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>, type metadata accessor for ArrayWith2Inline);
  return GestureDebug.Data.children.modify;
}

void GestureDebug.Data.children.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[185];
    memcpy(v2 + 111, v2 + 37, 0x121uLL);
    outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage((v2 + 111), (v2 + 148), &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>, type metadata accessor for ArrayWith2Inline);

    v4 = swift_allocObject();
    memcpy((v4 + 16), v2 + 111, 0x121uLL);
    *(v3 + 136) = v4;
    memcpy(v2 + 74, v2 + 37, 0x121uLL);
    outlined destroy of GestureDebug.Data?((v2 + 74), &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>, type metadata accessor for ArrayWith2Inline);
  }

  else
  {
    v5 = v2[185];
    memcpy(__dst, v2 + 37, sizeof(__dst));

    v6 = swift_allocObject();
    memcpy((v6 + 16), __dst, 0x121uLL);
    *(v5 + 136) = v6;
  }

  free(v2);
}

double GestureDebug.Data.init()@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for ArrayWith2Inline<GestureDebug.Data>(0, &lazy cache variable for type metadata for EmptyGesture<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for EmptyGesture);
  v3 = v2;
  _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOi2_(__src);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0x121uLL);
  v5 = *MEMORY[0x1E698D3F8];
  *a1 = 0;
  *(a1 + 8) = v3;
  *(a1 + 16) = 768;
  *(a1 + 20) = v5;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 3;
  *(a1 + 136) = v4;
  return result;
}

__n128 GestureDebug.Data.init(kind:type:children:phase:attribute:resetSeed:frame:properties:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, __int16 *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>)
{
  v21 = *a4;
  *a8 = *a1;
  *(a8 + 8) = a2;
  v22 = swift_allocObject();
  memcpy((v22 + 16), a3, 0x121uLL);
  *(a8 + 136) = v22;
  *(a8 + 16) = v21;
  v23 = *MEMORY[0x1E698D3F8];
  if ((a5 & 0x100000000) == 0)
  {
    v23 = a5;
  }

  *(a8 + 20) = v23;
  *(a8 + 24) = a6;
  *(a8 + 32) = a9;
  *(a8 + 40) = a10;
  *(a8 + 48) = a11;
  *(a8 + 56) = a12;
  v24 = *(a7 + 48);
  *(a8 + 96) = *(a7 + 32);
  *(a8 + 112) = v24;
  *(a8 + 128) = *(a7 + 64);
  result = *(a7 + 16);
  *(a8 + 64) = *a7;
  *(a8 + 80) = result;
  return result;
}

uint64_t static GestureDebug.Data.defaultValue.getter@<X0>(__int128 *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1EAB1D498;
  v11[6] = xmmword_1EAB1D4A8;
  v11[7] = xmmword_1EAB1D4B8;
  v2 = xmmword_1EAB1D4B8;
  v11[8] = xmmword_1EAB1D4C8;
  v3 = xmmword_1EAB1D458;
  v4 = xmmword_1EAB1D468;
  v11[2] = xmmword_1EAB1D468;
  v11[3] = xmmword_1EAB1D478;
  v5 = xmmword_1EAB1D478;
  v6 = xmmword_1EAB1D488;
  v11[4] = xmmword_1EAB1D488;
  v11[5] = xmmword_1EAB1D498;
  v7 = static GestureDebug.Data.defaultValue;
  v11[0] = static GestureDebug.Data.defaultValue;
  v11[1] = xmmword_1EAB1D458;
  a1[6] = xmmword_1EAB1D4A8;
  a1[7] = v2;
  a1[8] = xmmword_1EAB1D4C8;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v1;
  *a1 = v7;
  a1[1] = v3;
  return outlined init with copy of GestureDebug.Data(v11, &v10);
}

uint64_t protocol witness for static Defaultable.defaultValue.getter in conformance GestureDebug.Data@<X0>(__int128 *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1EAB1D498;
  v11[6] = xmmword_1EAB1D4A8;
  v11[7] = xmmword_1EAB1D4B8;
  v2 = xmmword_1EAB1D4B8;
  v11[8] = xmmword_1EAB1D4C8;
  v3 = xmmword_1EAB1D458;
  v4 = xmmword_1EAB1D468;
  v11[2] = xmmword_1EAB1D468;
  v11[3] = xmmword_1EAB1D478;
  v5 = xmmword_1EAB1D478;
  v6 = xmmword_1EAB1D488;
  v11[4] = xmmword_1EAB1D488;
  v11[5] = xmmword_1EAB1D498;
  v7 = static GestureDebug.Data.defaultValue;
  v11[0] = static GestureDebug.Data.defaultValue;
  v11[1] = xmmword_1EAB1D458;
  a1[6] = xmmword_1EAB1D4A8;
  a1[7] = v2;
  a1[8] = xmmword_1EAB1D4C8;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v1;
  *a1 = v7;
  a1[1] = v3;
  return outlined init with copy of GestureDebug.Data(v11, &v10);
}

uint64_t Attribute<A>.phase()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (*(*(type metadata accessor for GesturePhase(0, AssociatedTypeWitness, v6, v7) - 8) + 64))
  {
    closure #1 in Attribute<A>.phase()(1, a2, a3);
  }

  return AGGraphCreateOffsetAttribute2();
}

uint64_t closure #1 in Attribute<A>.phase()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 32))(v17);
  v6 = v5;
  v14[2] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for GesturePhase(0, AssociatedTypeWitness, v8, v9);
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v6, partial apply for closure #1 in static PointerOffset.of(_:), v14, v15, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  v12 = v16;
  v4(v17, 0);
  return v12;
}

double _GestureOutputs.wrapDebugOutputs<A>(_:properties:inputs:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 120);
  if ((v5 & 8) != 0)
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v19 = v10;
    v11 = *(a3 + 80);
    v16[4] = *(a3 + 64);
    v16[5] = v11;
    v16[6] = *(a3 + 96);
    v17 = *(a3 + 112);
    v12 = *(a3 + 16);
    v16[0] = *a3;
    v16[1] = v12;
    v13 = *(a3 + 48);
    v16[2] = *(a3 + 32);
    v16[3] = v13;
    v18 = v5;
    v14 = _GestureOutputs.debugData.getter();
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(a1, &v19, a2 | ((HIDWORD(a2) & 1) << 32), v16, v14 | ((HIDWORD(v14) & 1) << 32), 0x100000000, a4);
  }

  return result;
}

uint64_t _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(uint64_t a1, char *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = *MEMORY[0x1E69E9840];
  v36 = *a2;
  v11 = a4[1];
  v54 = *a4;
  v55 = v11;
  v12 = a4[3];
  v56 = a4[2];
  v57 = v12;
  v13 = *(a4 + 18);
  v60 = *(a4 + 76);
  v61 = *(a4 + 21);
  v14 = *(a4 + 11);
  v63 = a4[6];
  v15 = *(a4 + 28);
  v33 = *(a4 + 116);
  v16 = *MEMORY[0x1E698D3F8];
  if ((a3 & 0x100000000) != 0)
  {
    v17 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v17 = a3;
  }

  v34 = *v7;
  v35 = v17;
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  v39 = *(a4 + 8);
  specialized GraphHost.intern<A>(_:for:id:)(v18, 0, 0.0, 0.0);

  AGGraphClearUpdate();
  v19 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0, 0.0, 0.0, 0.0, 0.0);

  AGGraphClearUpdate();
  v21 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v22 = AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v58 = v39;
  v59 = v13;
  v62 = v14;
  v64 = v15;
  v65 = v33;
  v23 = _GestureInputs.transform.getter();
  v41[0] = v36;
  v42 = a1;
  if ((a5 & 0x100000000) != 0)
  {
    v26 = v16;
  }

  else
  {
    v26 = a5;
  }

  v27 = *(a7 + 16);
  if ((a6 & 0x100000000) != 0)
  {
    v28 = v16;
  }

  else
  {
    v28 = a6;
  }

  v43 = v35;
  v44 = v34;
  v45 = v15;
  v46 = IndirectAttribute2;
  v47 = v22;
  v48 = v23;
  v49 = v26;
  v50 = v28;
  v52 = type metadata accessor for GestureDebug.Value(0, v27, v24, v25);
  swift_getWitnessTable(protocol conformance descriptor for GestureDebug.Value<A>, v52);
  v53 = v29;
  type metadata accessor for ArrayWith2Inline<GestureDebug.Data>(0, &lazy cache variable for type metadata for Attribute<GestureDebug.Data>, &type metadata for GestureDebug.Data, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v41, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_8, v51, v52, MEMORY[0x1E69E73E0], v30, MEMORY[0x1E69E7410], v31);
  v41[0] = 0;
  return _GestureOutputs.debugData.setter(v40);
}

void GestureDebug.Value.properties.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 16) == *MEMORY[0x1E698D3F8])
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = -1;
  }

  else
  {
    type metadata accessor for ArrayWith2Inline<(String, String)>(0, &lazy cache variable for type metadata for ArrayWith2Inline<(String, String)>, type metadata accessor for ArrayWith2Inline);
    Value = AGGraphGetValue();
    v10[0] = *Value;
    v5 = *(Value + 32);
    v4 = *(Value + 48);
    v6 = *(Value + 16);
    v11 = *(Value + 64);
    v10[2] = v5;
    v10[3] = v4;
    v10[1] = v6;
    v7 = *(Value + 48);
    *(a1 + 32) = *(Value + 32);
    *(a1 + 48) = v7;
    *(a1 + 64) = *(Value + 64);
    v8 = *(Value + 16);
    *a1 = *Value;
    *(a1 + 16) = v8;
    outlined init with copy of ArrayWith2Inline<(String, String)>(v10, v9);
  }
}

uint64_t GestureDebug.Value.phase.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for GesturePhase(0, *(a1 + 16), a3, a4);
  Value = AGGraphGetValue();
  v7 = *(*(v5 - 8) + 16);

  return v7(a2, Value, v5);
}

double GestureDebug.Value.transform.getter@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v4 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;

  return result;
}

void GestureDebug.Value.debugData1.getter(_OWORD *a1@<X8>)
{
  if (*(v1 + 40) == *MEMORY[0x1E698D3F8])
  {
    _s7SwiftUI12GestureDebugO4DataVSgWOi0_(&v15);
    v3 = v22;
    a1[6] = v21;
    a1[7] = v3;
    a1[8] = v23;
    v4 = v18;
    a1[2] = v17;
    a1[3] = v4;
    v5 = v20;
    a1[4] = v19;
    a1[5] = v5;
    v6 = v16;
    *a1 = v15;
    a1[1] = v6;
  }

  else
  {
    Value = AGGraphGetValue();
    v15 = *Value;
    v8 = Value[4];
    v10 = Value[1];
    v9 = Value[2];
    v18 = Value[3];
    v19 = v8;
    v16 = v10;
    v17 = v9;
    v11 = Value[8];
    v13 = Value[5];
    v12 = Value[6];
    v22 = Value[7];
    v23 = v11;
    v20 = v13;
    v21 = v12;
    memmove(a1, Value, 0x90uLL);
    _ViewInputs.base.modify();
    outlined init with copy of GestureDebug.Data(&v15, &v14);
  }
}

void GestureDebug.Value.debugData2.getter(_OWORD *a1@<X8>)
{
  if (*(v1 + 44) == *MEMORY[0x1E698D3F8])
  {
    _s7SwiftUI12GestureDebugO4DataVSgWOi0_(&v15);
    v3 = v22;
    a1[6] = v21;
    a1[7] = v3;
    a1[8] = v23;
    v4 = v18;
    a1[2] = v17;
    a1[3] = v4;
    v5 = v20;
    a1[4] = v19;
    a1[5] = v5;
    v6 = v16;
    *a1 = v15;
    a1[1] = v6;
  }

  else
  {
    Value = AGGraphGetValue();
    v15 = *Value;
    v8 = Value[4];
    v10 = Value[1];
    v9 = Value[2];
    v18 = Value[3];
    v19 = v8;
    v16 = v10;
    v17 = v9;
    v11 = Value[8];
    v13 = Value[5];
    v12 = Value[6];
    v22 = Value[7];
    v23 = v11;
    v20 = v13;
    v21 = v12;
    memmove(a1, Value, 0x90uLL);
    _ViewInputs.base.modify();
    outlined init with copy of GestureDebug.Data(&v15, &v14);
  }
}

double GestureDebug.Value.value.getter@<D0>(uint64_t a1@<X0>, int8x16_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v50.i64[0] = a1;
  v45 = a2;
  v5 = type metadata accessor for GesturePhase(0, *(a1 + 16), a3, a4);
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  MEMORY[0x1EEE9AC00](v5);
  *&v46 = &v40 - v7;
  v8 = *v4;
  v81[0] = *(v4 + 1);
  *(v81 + 3) = *(v4 + 1);
  v9 = *(v4 + 1);
  v11 = *(v4 + 4);
  v10 = *(v4 + 5);
  v13 = *(v4 + 6);
  v12 = *(v4 + 7);
  v41.i32[0] = *(v4 + 8);
  v14 = v41.i32[0];
  v79 = *(v4 + 36);
  v80 = *(v4 + 11);
  type metadata accessor for CGPoint(0);
  v15 = v12;
  v42.i32[0] = v12;
  v16 = *AGGraphGetValue();
  v47.i64[0] = &v77 + 8;
  v77 = v16;
  v53.i64[0] = 0;
  v51 = 0u;
  v52 = 0u;
  v53.i8[8] = 2;
  LOBYTE(v82[0]) = v8;
  *(v82 + 1) = v81[0];
  DWORD1(v82[0]) = *(v81 + 3);
  *(&v82[0] + 1) = v9;
  *&v82[1] = __PAIR64__(v10, v11);
  v17 = v11;
  *(&v82[1] + 1) = __PAIR64__(v15, v13);
  *(&v82[2] + 4) = v79;
  LODWORD(v82[2]) = v14;
  HIDWORD(v82[2]) = v80;
  GestureDebug.Value.transform.getter(v78);
  specialized ApplyViewTransform.convert(to:transform:)(&v51, v78);
  outlined destroy of ViewTransform(v78);
  outlined destroy of CoordinateSpace(&v51);
  v67 = v8;
  v43 = v8;
  *v68 = v81[0];
  *&v68[3] = *(v81 + 3);
  v44 = v9;
  v69 = v9;
  v70 = v11;
  v71 = v10;
  v72 = v13;
  v18 = v13;
  v19 = v42.i32[0];
  v73 = v42.i32[0];
  v75 = v79;
  v20 = v41.i32[0];
  v74 = v41.i32[0];
  v76 = v80;
  GestureDebug.Value.childData.getter(v82);
  v51.i8[0] = v8;
  *(v51.i32 + 1) = v81[0];
  v51.i32[1] = *(v81 + 3);
  v51.i64[1] = v9;
  v52.i64[0] = __PAIR64__(v10, v17);
  v52.i64[1] = __PAIR64__(v19, v18);
  v53.i32[0] = v20;
  *(v53.i64 + 4) = v79;
  v53.i32[3] = v80;
  v21 = v46;
  GestureDebug.Value.phase.getter(v50.i64[0], v46, v22, v23);
  v24 = v48;
  GesturePhase.withValue<A>(_:)(v48, MEMORY[0x1E69E7CA8] + 8, &v66);
  (*(v49 + 8))(v21, v24);
  LODWORD(v49) = v66;
  LODWORD(v48) = *AGGraphGetValue();
  v25.i64[0] = v77;
  v25.i64[1] = *v47.i64[0];
  v47 = v25;
  v46 = *AGGraphGetValue();
  v26 = v43;
  v56 = v43;
  *v57 = v81[0];
  *&v57[3] = *(v81 + 3);
  v27 = v44;
  v58 = v44;
  v59 = v17;
  v60 = v10;
  v28 = v10;
  v61 = v18;
  v62 = v19;
  v63 = v20;
  v64 = v79;
  v65 = v80;
  GestureDebug.Value.properties.getter(&v51);
  v30.i32[0] = 255;
  if (v55 == 255)
  {
    v31 = 3;
  }

  else
  {
    v31 = v55;
  }

  v29.i32[0] = v55;
  v32 = vdupq_lane_s32(*&vceqq_s32(v29, v30), 0);
  v50 = vbicq_s8(v53, v32);
  v41 = vbicq_s8(v51, v32);
  v42 = vbicq_s8(v54, v32);
  v40 = vbicq_s8(v52, v32);
  v33 = v45;
  v45->i8[0] = v26;
  v33->i64[1] = v27;
  v34 = swift_allocObject();
  memcpy((v34 + 16), v82, 0x121uLL);
  v33[8].i64[1] = v34;
  v33[1].i16[0] = v49;
  v35 = v48;
  v33[1].i32[1] = v28;
  v33[1].i32[2] = v35;
  v36 = v46;
  v33[2] = v47;
  v33[3] = v36;
  v37 = v40;
  v33[4] = v41;
  v33[5] = v37;
  v38 = v42;
  result = *v50.i64;
  v33[6] = v50;
  v33[7] = v38;
  v33[8].i8[0] = v31;
  return result;
}

void *GestureDebug.Value.childData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v31 = *v1;
  v32 = v3;
  v5 = *v1;
  v4 = v1[1];
  v33 = v1[2];
  v34 = v5;
  v6 = v1[2];
  v35 = v4;
  v36 = v6;
  GestureDebug.Value.debugData1.getter(v37);
  GestureDebug.Value.debugData2.getter(&v38);
  v53 = v37[6];
  v54 = v37[7];
  v55 = v37[8];
  v49 = v37[2];
  v50 = v37[3];
  v51 = v37[4];
  v52 = v37[5];
  v47 = v37[0];
  v48 = v37[1];
  if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(&v47) == 1)
  {
    v28 = v44;
    v29 = v45;
    v30 = v46;
    v24 = v40;
    v25 = v41;
    v26 = v42;
    v27 = v43;
    v22 = v38;
    v23 = v39;
    if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(&v22) == 1)
    {
      _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOi2_(v21);
      return memcpy(a1, v21, 0x121uLL);
    }

    v21[6] = v28;
    v21[7] = v29;
    v21[8] = v30;
    v21[2] = v24;
    v21[3] = v25;
    v21[4] = v26;
    v21[5] = v27;
    v8 = v22;
    v7 = v23;
LABEL_7:
    v21[0] = v8;
    v21[1] = v7;
    _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOi_(v21);
    return memcpy(a1, v21, 0x121uLL);
  }

  v28 = v44;
  v29 = v45;
  v30 = v46;
  v24 = v40;
  v25 = v41;
  v26 = v42;
  v27 = v43;
  v22 = v38;
  v23 = v39;
  if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(&v22) == 1)
  {
    v21[6] = v53;
    v21[7] = v54;
    v21[8] = v55;
    v21[2] = v49;
    v21[3] = v50;
    v21[4] = v51;
    v21[5] = v52;
    v8 = v47;
    v7 = v48;
    goto LABEL_7;
  }

  v10 = v54;
  a1[6] = v53;
  a1[7] = v10;
  v11 = v50;
  a1[2] = v49;
  a1[3] = v11;
  v12 = v52;
  a1[4] = v51;
  a1[5] = v12;
  v13 = v48;
  *a1 = v47;
  a1[1] = v13;
  v14 = v28;
  v15 = v29;
  v16 = v26;
  a1[14] = v27;
  a1[15] = v14;
  v17 = v30;
  a1[16] = v15;
  a1[17] = v17;
  v18 = v24;
  v19 = v25;
  v20 = v22;
  a1[10] = v23;
  a1[11] = v18;
  a1[12] = v19;
  a1[13] = v16;
  a1[8] = v55;
  a1[9] = v20;
  return _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOi0_(a1);
}

__n128 protocol witness for static Rule.initialValue.getter in conformance GestureDebug.Value<A>@<Q0>(uint64_t a1@<X8>)
{
  _s7SwiftUI12GestureDebugO4DataVSgWOi0_(v6);
  v2 = v6[7];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v6[8];
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t GesturePhase.descriptionWithoutValue.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v2 + 8))(v5, a1);
      return 0x6465646E65;
    }

    else
    {
      return 0x64656C696166;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v2 + 8))(v5, a1);
    return 0x657669746361;
  }

  else if ((*(*(*(a1 + 16) - 8) + 48))(v5, 1, *(a1 + 16)) == 1)
  {
    return 0;
  }

  else
  {
    v8 = type metadata accessor for Optional();
    (*(*(v8 - 8) + 8))(v5, v8);
    return 0x656C626973736F70;
  }
}

Swift::Void __swiftcall GestureDebug.Data.printTree()()
{
  v4 = *v0;
  v10 = *(v0 + 81);
  v11 = *(v0 + 97);
  *v12 = *(v0 + 113);
  *&v12[15] = *(v0 + 8);
  v6 = *(v0 + 17);
  v7 = *(v0 + 33);
  v8 = *(v0 + 49);
  v9 = *(v0 + 65);
  v5 = *(v0 + 1);
  _s7SwiftUI12GestureDebugO4DataVSgWOi0_(v13);
  v3[7] = v13[7];
  v3[8] = v13[8];
  v3[2] = v13[2];
  v3[3] = v13[3];
  v3[5] = v13[5];
  v3[6] = v13[6];
  v3[4] = v13[4];
  v3[0] = v13[0];
  v3[1] = v13[1];
  *&v1 = 0;
  *(&v1 + 1) = 0xE000000000000000;
  v2 = v4;
  GestureDebug.Data.printSubtree(parent:indent:)(v3, &v1);
}

uint64_t GestureDebug.Data.printSubtree(parent:indent:)(__int128 *a1, __int128 *a2)
{
  v3 = a1[7];
  v145 = a1[6];
  v146 = v3;
  v147 = a1[8];
  v4 = a1[3];
  v141 = a1[2];
  v142 = v4;
  v5 = a1[4];
  v144 = a1[5];
  v143 = v5;
  v6 = *a1;
  v140 = a1[1];
  v139 = v6;
  v90 = *a2;
  v7 = *(a2 + 16);
  v8 = v2[7];
  v154 = v2[6];
  v155 = v8;
  v156 = v2[8];
  v9 = v2[3];
  v150 = v2[2];
  v151 = v9;
  v10 = v2[5];
  v152 = v2[4];
  v153 = v10;
  v11 = v2[1];
  v148 = *v2;
  v149 = v11;
  if (v7 == 4)
  {
    *v91 = v90;

    v12 = 8235;
    goto LABEL_5;
  }

  if (v7 == 3)
  {
    *v91 = v90;

    v12 = 8234;
LABEL_5:
    MEMORY[0x193ABEDD0](v12, 0xE200000000000000);
    v14 = *&v91[8];
    v13 = *v91;
    goto LABEL_7;
  }

  v13 = v90;
  v14 = v15;
LABEL_7:
  v135 = v13;
  v136 = v14;
  LOBYTE(v16) = v148;
  v17 = AGTypeID.description.getter();
  v19 = v18;
  if (v148 <= 2u)
  {
    if (v148)
    {
      if (v148 != 1)
      {
        *v91 = 10286;
        *&v91[8] = 0xE200000000000000;
        MEMORY[0x193ABEDD0](v17, v18);

        MEMORY[0x193ABEDD0](41, 0xE100000000000000);
        v19 = 0xE200000000000000;
        v17 = 10286;
      }
    }

    else
    {

      v19 = 0xE700000000000000;
      v17 = 0x297974706D6528;
    }
  }

  MEMORY[0x193ABEDD0](v17, v19);

  if (DWORD1(v149) != *MEMORY[0x1E698D3F8])
  {
    v20 = AGAttribute.description.getter();
    MEMORY[0x193ABEDD0](v20);

    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  }

  *v91 = 10272;
  *&v91[8] = 0xE200000000000000;
  if (BYTE1(v149) > 1u)
  {
    if (BYTE1(v149) == 2)
    {
      v21 = 0x6465646E65;
    }

    else
    {
      v21 = 0x64656C696166;
    }

    if (BYTE1(v149) == 2)
    {
      v22 = 0xE500000000000000;
    }

    else
    {
      v22 = 0xE600000000000000;
    }
  }

  else if (BYTE1(v149))
  {
    v22 = 0xE600000000000000;
    v21 = 0x657669746361;
  }

  else
  {
    if (v149)
    {
      v21 = 0;
    }

    else
    {
      v21 = 0x656C626973736F70;
    }

    if (v149)
    {
      v22 = 0xE000000000000000;
    }

    else
    {
      v22 = 0xEE0029656D6F7328;
    }
  }

  MEMORY[0x193ABEDD0](v21, v22);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  MEMORY[0x193ABEDD0](*v91, *&v91[8]);

  v23 = DWORD2(v149);
  if (DWORD2(v149))
  {
    *&v91[96] = v145;
    *&v91[112] = v146;
    *&v91[128] = v147;
    *&v91[32] = v141;
    *&v91[48] = v142;
    *&v91[64] = v143;
    *&v91[80] = v144;
    *v91 = v139;
    *&v91[16] = v140;
    if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(v91) == 1 || v23 != *&v91[24])
    {
      strcpy(v132, " reset:");
      *&v132[8] = 0xE700000000000000;
      __src[0] = v23;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v24);

      MEMORY[0x193ABEDD0](*v132, *&v132[8]);
    }
  }

  *&v91[96] = v154;
  *&v91[112] = v155;
  *&v91[128] = v156;
  *&v91[32] = v150;
  *&v91[48] = v151;
  *&v91[64] = v152;
  *&v91[80] = v153;
  *v91 = v148;
  *&v91[16] = v149;
  *&v132[96] = v145;
  *&v132[112] = v146;
  *&v132[128] = v147;
  *&v132[32] = v141;
  *&v132[48] = v142;
  *&v132[80] = v144;
  *&v132[64] = v143;
  *&v132[16] = v140;
  *v132 = v139;
  v25 = GestureDebug.Data.frameDescription(relativeTo:)(v132);
  MEMORY[0x193ABEDD0](v25);

  v137[2] = v154;
  v137[3] = v155;
  v138 = v156;
  v137[1] = v153;
  v137[0] = v152;
  if (!specialized Collection.isEmpty.getter())
  {
    *v91 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI16ArrayWith2InlineVySS_SStG_SSs5NeverOTB503_s7D124UI12GestureDebugO4DataV12printSubtree33_40D5679141F478561068F8E300838A676parent6indentyAESg_AE6IndentAGLLVtFS2S_SSt_tXEfU_Tf1cn_n(v137);
    type metadata accessor for ArrayWith2Inline<GestureDebug.Data>(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v26 = BidirectionalCollection<>.joined(separator:)();
    v28 = v27;

    *v91 = 23328;
    *&v91[8] = 0xE200000000000000;
    MEMORY[0x193ABEDD0](v26, v28);

    MEMORY[0x193ABEDD0](93, 0xE100000000000000);
    MEMORY[0x193ABEDD0](*v91, *&v91[8]);
  }

  v29 = v135;
  v30 = v136;
  if (one-time initialization token for events != -1)
  {
LABEL_72:
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Log.events);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v91 = v35;
    *v34 = 136315138;
    *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v91);
    _os_log_impl(&dword_18D018000, v32, v33, "%s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x193AC4820](v35, -1, -1);
    MEMORY[0x193AC4820](v34, -1, -1);
  }

  if (v7 == 4)
  {
    *v91 = v90;

    v36 = 8316;
  }

  else
  {
    if (v7 != 3)
    {

      goto LABEL_44;
    }

    *v91 = v90;

    v36 = 8234;
  }

  MEMORY[0x193ABEDD0](v36, 0xE200000000000000);
  v90 = *v91;
LABEL_44:
  memcpy(__dst, (*(&v156 + 1) + 16), 0x121uLL);
  memcpy(v132, (*(&v156 + 1) + 16), 0x121uLL);
  memmove(__src, (*(&v156 + 1) + 16), 0x121uLL);
  outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(__dst, v91, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>, type metadata accessor for ArrayWith2Inline);
  v37 = 0;
  v29 = 32;
  v30 = &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage;
  v89 = v16;
  while (1)
  {
    memcpy(v91, __src, 0x121uLL);
    memcpy(v131, __src, 0x121uLL);
    v41 = _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOg(v131);
    if (v41 > 1)
    {
      if (v41 == 2)
      {
        _ViewInputs.base.modify();
        memcpy(v129, v91, 0x121uLL);
        memcpy(v130, v91, 0x121uLL);
        _ViewInputs.base.modify();
        v43 = *(*v42 + 16);
        outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(__src, v128, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
        outlined destroy of GestureDebug.Data?(v129, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
        if (v37 == v43)
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (!v37)
        {
          outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(__src, v91, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
LABEL_70:

          memcpy(v91, v132, sizeof(v91));
          v92 = v37;
          return outlined destroy of IndexingIterator<ArrayWith2Inline<GestureDebug.Data>>(v91);
        }

        outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(__src, v91, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
      }
    }

    else if (v41)
    {
      _ViewInputs.base.modify();
      _ViewInputs.base.modify();
      v45 = v44;
      v46 = v44[16];
      v128[6] = v44[15];
      v128[7] = v46;
      v128[8] = v44[17];
      v47 = v44[12];
      v128[2] = v44[11];
      v128[3] = v47;
      v48 = v44[13];
      v128[5] = v44[14];
      v128[4] = v48;
      v49 = v44[9];
      v128[1] = v44[10];
      v128[0] = v49;
      outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(__src, v130, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
      outlined destroy of GestureDebug.Data(v128);
      v129[0] = *v45;
      v50 = v45[3];
      v52 = v45[1];
      v51 = v45[2];
      v129[4] = v45[4];
      v129[3] = v50;
      v129[1] = v52;
      v129[2] = v51;
      v53 = v45[7];
      v55 = v45[5];
      v54 = v45[6];
      v129[8] = v45[8];
      v129[7] = v53;
      v129[5] = v55;
      v129[6] = v54;
      outlined destroy of GestureDebug.Data(v129);
      if (v37 == 2)
      {
        goto LABEL_70;
      }
    }

    else
    {
      _ViewInputs.base.modify();
      memcpy(v130, v91, 0x121uLL);
      outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(__src, v129, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
      outlined destroy of GestureDebug.Data?(v130, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
      if (v37 == 1)
      {
        goto LABEL_70;
      }
    }

    memcpy(v130, v132, 0x121uLL);
    memcpy(v129, v132, 0x121uLL);
    memcpy(v91, v132, 0x121uLL);
    v56 = _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOg(v91);
    if (v56 > 1)
    {
      if (v56 != 2)
      {
        goto LABEL_73;
      }

      _ViewInputs.base.modify();
      memcpy(v113, v129, 0x121uLL);
      memcpy(v128, v129, 0x121uLL);
      _ViewInputs.base.modify();
      if (v37 >= *(*v66 + 16))
      {
        __break(1u);
        goto LABEL_72;
      }

      v67 = (*v66 + v29);
      v114 = *v67;
      v68 = v67[1];
      v69 = v67[2];
      v70 = v67[3];
      v118 = v67[4];
      v117 = v70;
      v116 = v69;
      v115 = v68;
      v71 = v67[5];
      v72 = v67[6];
      v73 = v67[7];
      v122 = v67[8];
      v121 = v73;
      v120 = v72;
      v119 = v71;
      outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(v130, &v104, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
      outlined init with copy of GestureDebug.Data(&v114, &v104);
      outlined destroy of GestureDebug.Data?(v113, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
      v16 = *(&v122 + 1);
      v63 = v117;
      v64 = v116;
      v59 = *(&v115 + 4);
      v60 = v115;
      v7 = BYTE1(v115);
      v61 = *(&v114 + 1);
      v62 = v114;
      v74 = &v114;
      goto LABEL_45;
    }

    if (v56)
    {
      break;
    }

    _ViewInputs.base.modify();
    memcpy(v128, v129, 0x121uLL);
    _ViewInputs.base.modify();
    if (v37)
    {
      goto LABEL_73;
    }

    v58 = v57;
    v16 = *(v57 + 17);
    v87 = *(v57 + 2);
    v88 = *(v57 + 3);
    v59 = *(v57 + 20);
    v60 = v57[16];
    v7 = v57[17];
    v61 = *(v57 + 1);
    v62 = *v57;
    outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(v130, v113, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
    v64 = v87;
    v63 = v88;
    v65 = *(v58 + 7);
    v125 = *(v58 + 6);
    v126 = v65;
    v127 = v58[128];
    v40 = *(v58 + 4);
    v39 = *(v58 + 5);
LABEL_46:
    v124 = v39;
    v123 = v40;
    LOBYTE(v104) = v62;
    *(&v104 + 1) = v61;
    LOBYTE(v105) = v60;
    BYTE1(v105) = v7;
    *(&v105 + 4) = v59;
    v106 = v64;
    v107 = v63;
    v110 = v125;
    v111 = v126;
    v108 = v40;
    v109 = v39;
    LOBYTE(v112) = v127;
    *(&v112 + 1) = v16;
    ++v37;
    v120 = v125;
    v121 = v126;
    v122 = v112;
    v116 = v64;
    v117 = v63;
    v119 = v39;
    v118 = v40;
    v115 = v105;
    v114 = v104;
    v113[6] = v154;
    v113[7] = v155;
    v113[8] = v156;
    v113[2] = v150;
    v113[3] = v151;
    v113[4] = v152;
    v113[5] = v153;
    v113[0] = v148;
    v113[1] = v149;
    _ViewInputs.base.modify();
    v101 = v113[6];
    v102 = v113[7];
    v103 = v113[8];
    v97 = v113[2];
    v98 = v113[3];
    v99 = v113[4];
    v100 = v113[5];
    v95 = v113[0];
    v96 = v113[1];
    v93 = v90;
    v94 = v89;
    outlined init with copy of GestureDebug.Data(&v148, v128);
    GestureDebug.Data.printSubtree(parent:indent:)(&v95, &v93);
    v128[6] = v101;
    v128[7] = v102;
    v128[8] = v103;
    v128[2] = v97;
    v128[3] = v98;
    v128[5] = v100;
    v128[4] = v99;
    v128[1] = v96;
    v128[0] = v95;
    outlined destroy of GestureDebug.Data?(v128, &lazy cache variable for type metadata for GestureDebug.Data?, MEMORY[0x1E69E6720]);
    outlined destroy of GestureDebug.Data(&v104);
    v29 += 144;
  }

  _ViewInputs.base.modify();
  _ViewInputs.base.modify();
  v104 = *v75;
  v76 = v75[1];
  v77 = v75[2];
  v78 = v75[4];
  v107 = v75[3];
  v108 = v78;
  v105 = v76;
  v106 = v77;
  v79 = v75[5];
  v80 = v75[6];
  v81 = v75[8];
  v111 = v75[7];
  v112 = v81;
  v109 = v79;
  v110 = v80;
  v82 = v75[17];
  v113[7] = v75[16];
  v113[8] = v82;
  v83 = v75[15];
  v113[5] = v75[14];
  v113[6] = v83;
  v84 = v75[13];
  v113[3] = v75[12];
  v113[4] = v84;
  v85 = v75[11];
  v113[1] = v75[10];
  v113[2] = v85;
  v113[0] = v75[9];
  if (!v37)
  {
    outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(v130, v128, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
    outlined destroy of GestureDebug.Data(v113);
    v16 = *(&v112 + 1);
    v64 = v106;
    v63 = v107;
    v59 = *(&v105 + 4);
    v60 = v105;
    v7 = BYTE1(v105);
    v61 = *(&v104 + 1);
    v62 = v104;
    v125 = v110;
    v126 = v111;
    v127 = v112;
    v40 = v108;
    v39 = v109;
    goto LABEL_46;
  }

  outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(v130, v128, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
  outlined destroy of GestureDebug.Data(&v104);
  if (v37 == 1)
  {
    v16 = *(&v113[8] + 1);
    v64 = v113[2];
    v63 = v113[3];
    v59 = *(&v113[1] + 4);
    v60 = v113[1];
    v7 = BYTE1(v113[1]);
    v61 = *(&v113[0] + 1);
    v62 = v113[0];
    v74 = v113;
LABEL_45:
    v38 = v74[7];
    v125 = v74[6];
    v126 = v38;
    v127 = *(v74 + 128);
    v40 = v74[4];
    v39 = v74[5];
    goto LABEL_46;
  }

LABEL_73:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t GestureDebug.Data.frameDescription(relativeTo:)(double *a1)
{
  v2 = *(a1 + 1);
  v45 = *a1;
  v46 = v2;
  v4 = a1[4];
  v3 = a1[5];
  v5 = *(a1 + 4);
  v6 = *(a1 + 6);
  v41 = *(a1 + 5);
  v42 = v6;
  v7 = *(a1 + 8);
  v8 = *(a1 + 6);
  v43 = *(a1 + 7);
  v44 = v7;
  v9 = *(a1 + 4);
  v39 = *(a1 + 3);
  v40 = v9;
  v10 = *(a1 + 1);
  v47[0] = v45;
  v47[1] = v10;
  v11 = v1[4];
  v12 = v1[5];
  v50 = v39;
  v51 = v5;
  v13 = *(a1 + 8);
  v54 = v43;
  v55 = v13;
  v14 = v1[6];
  v15 = v1[7];
  v48 = v4;
  v49 = v3;
  v52 = v41;
  v53 = v8;
  if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(v47) != 1)
  {
    v16.n128_u64[0] = v50;
    if (*&v50 == v14)
    {
      v16.n128_u64[0] = *(&v50 + 1);
      if (*(&v50 + 1) == v15)
      {
        v17 = MEMORY[0x1E69E7CC0];
        if (v4 != v11)
        {
          goto LABEL_15;
        }

LABEL_14:
        if (v3 == v12)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }
    }
  }

  if (v14 == 0.0 && v15 == 0.0)
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    *&v28[0] = 0;
    *(&v28[0] + 1) = 0xE000000000000000;
    MEMORY[0x193ABEDD0](123, 0xE100000000000000, v16);
    v37 = v14;
    v38 = v15;
    type metadata accessor for (String, String)(0, &lazy cache variable for type metadata for (CGFloat, CGFloat), MEMORY[0x1E69E7DE0]);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](125, 0xE100000000000000);
    v18 = v28[0];
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
    }

    *(v17 + 2) = v20 + 1;
    *&v17[16 * v20 + 32] = v18;
  }

  v28[0] = v45;
  v28[1] = v46;
  v29 = v4;
  v30 = v3;
  v33 = v41;
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v31 = v39;
  v32 = v40;
  if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(v28) != 1)
  {
    v3 = v30;
    if (v29 == v11)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  if (v11 != 0.0 || v12 != 0.0)
  {
    *&v28[0] = 0;
    *(&v28[0] + 1) = 0xE000000000000000;
    MEMORY[0x193ABEDD0](64, 0xE100000000000000, v16);
    v37 = v11;
    v38 = v12;
    type metadata accessor for (String, String)(0, &lazy cache variable for type metadata for (CGFloat, CGFloat), MEMORY[0x1E69E7DE0]);
    _print_unlocked<A, B>(_:_:)();
    v25 = v28[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    }

    v27 = *(v17 + 2);
    v26 = *(v17 + 3);
    if (v27 >= v26 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v17);
    }

    *(v17 + 2) = v27 + 1;
    *&v17[16 * v27 + 32] = v25;
    if (*(v17 + 2))
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

LABEL_17:
  if (*(v17 + 2))
  {
LABEL_18:
    *&v28[0] = v17;
    type metadata accessor for ArrayWith2Inline<GestureDebug.Data>(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v21 = BidirectionalCollection<>.joined(separator:)();
    v23 = v22;

    *&v28[0] = 32;
    *(&v28[0] + 1) = 0xE100000000000000;
    MEMORY[0x193ABEDD0](v21, v23);

    return *&v28[0];
  }

LABEL_24:

  return 0;
}

uint64_t outlined init with copy of ArrayWith2Inline<(String, String)>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ArrayWith2Inline<(String, String)>(0, &lazy cache variable for type metadata for ArrayWith2Inline<(String, String)>, type metadata accessor for ArrayWith2Inline);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for ArrayWith2Inline<GestureDebug.Data>(0, a3, &type metadata for GestureDebug.Data, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double outlined consume of ArrayWith2Inline<GestureDebug.Data>.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, char a37)
{
  if (a37 != 2)
  {
    if (a37 == 1)
    {
      outlined consume of ArrayWith2Inline<(String, String)>.Storage(a9, a10, a11, a12, a13, a14, a15, a16, a17);

      outlined consume of ArrayWith2Inline<(String, String)>.Storage(a27, a28, a29, a30, a31, a32, a33, a34, a35);
    }

    else
    {
      if (a37)
      {
        return result;
      }

      outlined consume of ArrayWith2Inline<(String, String)>.Storage(a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  return result;
}

double outlined consume of ArrayWith2Inline<(String, String)>.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9 == 2)
  {
  }

  else
  {
    if (a9 == 1)
    {
    }

    else
    {
      if (a9)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t outlined destroy of GestureDebug.Data?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  type metadata accessor for ArrayWith2Inline<GestureDebug.Data>(0, a2, &type metadata for GestureDebug.Data, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOi2_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 288) = 3;
  return result;
}

double _s7SwiftUI12GestureDebugO4DataVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void lazy protocol witness table accessor for type GestureDebug.Kind and conformance GestureDebug.Kind()
{
  if (!lazy protocol witness table cache variable for type GestureDebug.Kind and conformance GestureDebug.Kind)
  {
    swift_getWitnessTable(protocol conformance descriptor for GestureDebug.Kind, &type metadata for GestureDebug.Kind, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GestureDebug.Kind and conformance GestureDebug.Kind);
  }
}

double outlined copy of ArrayWith2Inline<(String, String)>.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9 == 2)
  {
  }

  else
  {
    if (a9 == 1)
    {
    }

    else
    {
      if (a9)
      {
        return result;
      }
    }
  }

  return result;
}

double destroy for GestureDebug.Data(uint64_t a1)
{
  outlined consume of ArrayWith2Inline<(String, String)>.Storage(*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128));

  return result;
}

uint64_t initializeWithCopy for GestureDebug.Data(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  v5 = *(a2 + 64);
  v6 = *(a2 + 72);
  v7 = *(a2 + 80);
  v8 = *(a2 + 88);
  v9 = *(a2 + 96);
  v10 = *(a2 + 104);
  v11 = *(a2 + 112);
  v12 = *(a2 + 120);
  v14 = *(a2 + 128);
  outlined copy of ArrayWith2Inline<(String, String)>.Storage(v5, v6, v7, v8, v9, v10, v11, v12, v14);
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  *(a1 + 80) = v7;
  *(a1 + 88) = v8;
  *(a1 + 96) = v9;
  *(a1 + 104) = v10;
  *(a1 + 112) = v11;
  *(a1 + 120) = v12;
  *(a1 + 128) = v14;
  *(a1 + 136) = *(a2 + 136);

  return a1;
}

uint64_t assignWithCopy for GestureDebug.Data(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 64);
  v5 = *(a2 + 72);
  v6 = *(a2 + 80);
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  v9 = *(a2 + 104);
  v10 = *(a2 + 112);
  v11 = *(a2 + 120);
  v22 = *(a2 + 128);
  outlined copy of ArrayWith2Inline<(String, String)>.Storage(v4, v5, v6, v7, v8, v9, v10, v11, v22);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  v17 = *(a1 + 104);
  v18 = *(a1 + 112);
  v19 = *(a1 + 120);
  v20 = *(a1 + 128);
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  *(a1 + 80) = v6;
  *(a1 + 88) = v7;
  *(a1 + 96) = v8;
  *(a1 + 104) = v9;
  *(a1 + 112) = v10;
  *(a1 + 120) = v11;
  *(a1 + 128) = v22;
  outlined consume of ArrayWith2Inline<(String, String)>.Storage(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  *(a1 + 136) = *(a2 + 136);

  return a1;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t assignWithTake for GestureDebug.Data(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  v5 = *(a2 + 128);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 104);
  v12 = *(a1 + 112);
  v13 = *(a1 + 120);
  v14 = *(a1 + 128);
  v15 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v15;
  v16 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v16;
  *(a1 + 128) = v5;
  outlined consume of ArrayWith2Inline<(String, String)>.Storage(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  *(a1 + 136) = *(a2 + 136);

  return a1;
}

uint64_t getEnumTagSinglePayload for GestureDebug.Data(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t storeEnumTagSinglePayload for GestureDebug.Data(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOg(uint64_t a1)
{
  if (*(a1 + 288) <= 2u)
  {
    return *(a1 + 288);
  }

  else
  {
    return (*a1 + 3);
  }
}

void type metadata accessor for ArrayWith2Inline<GestureDebug.Data>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined destroy of IndexingIterator<ArrayWith2Inline<GestureDebug.Data>>(uint64_t a1)
{
  type metadata accessor for IndexingIterator<ArrayWith2Inline<GestureDebug.Data>>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for IndexingIterator<ArrayWith2Inline<GestureDebug.Data>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<ArrayWith2Inline<GestureDebug.Data>>)
  {
    type metadata accessor for ArrayWith2Inline<GestureDebug.Data>(255, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>, &type metadata for GestureDebug.Data, type metadata accessor for ArrayWith2Inline);
    lazy protocol witness table accessor for type ArrayWith2Inline<GestureDebug.Data> and conformance ArrayWith2Inline<A>();
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<ArrayWith2Inline<GestureDebug.Data>>);
    }
  }
}

void lazy protocol witness table accessor for type ArrayWith2Inline<GestureDebug.Data> and conformance ArrayWith2Inline<A>()
{
  if (!lazy protocol witness table cache variable for type ArrayWith2Inline<GestureDebug.Data> and conformance ArrayWith2Inline<A>)
  {
    type metadata accessor for ArrayWith2Inline<GestureDebug.Data>(255, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>, &type metadata for GestureDebug.Data, type metadata accessor for ArrayWith2Inline);
    swift_getWitnessTable(protocol conformance descriptor for ArrayWith2Inline<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ArrayWith2Inline<GestureDebug.Data> and conformance ArrayWith2Inline<A>);
  }
}

uint64_t outlined destroy of ArrayWith2Inline<(String, String)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  type metadata accessor for ArrayWith2Inline<(String, String)>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for ArrayWith2Inline<(String, String)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for (String, String)(255, &lazy cache variable for type metadata for (String, String), MEMORY[0x1E69E6158]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

BOOL _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI7EventIDV_s5NeverOytTB503_s7c4UI18E82ListenerPhase33_D4E5D14C6252B45A30FB249B3DBDFD35LLV11descriptionSSvgyAA0C2IDVXEfU_SSTf1cn_n(uint64_t a1)
{
  if (a1)
  {
    v5 = _typeName(_:qualified:)();
    v6 = v2;
    MEMORY[0x193ABEDD0](35, 0xE100000000000000);
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v3);

    MEMORY[0x193ABEDD0](v5, v6);

    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  }

  return a1 == 0;
}

double specialized ArrayWith2Inline.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[1];
  v44 = *v4;
  v45 = v9;
  v10 = v4[3];
  v46 = v4[2];
  v47 = v10;
  v48 = *(v4 + 64);
  v11 = v44;
  if (v48 > 1u)
  {
    if (v48 != 2)
    {
      v31 = v4[3];
      v41 = v4[2];
      v42 = v31;
      v43 = *(v4 + 64);
      v32 = v4[1];
      v39 = *v4;
      v40 = v32;
      outlined init with copy of EventType?(&v44, v36, type metadata accessor for ArrayWith2Inline<(String, String)>.Storage);
      outlined destroy of EventType?(&v39, type metadata accessor for ArrayWith2Inline<(String, String)>.Storage);
      *v4 = a1;
      *(v4 + 1) = a2;
      *(v4 + 2) = a3;
      *(v4 + 3) = a4;
      *(v4 + 64) = 0;
      goto LABEL_13;
    }

    v16 = v4[3];
    v41 = v4[2];
    v42 = v16;
    v43 = *(v4 + 64);
    v17 = v4[1];
    v39 = *v4;
    v40 = v17;
    outlined init with copy of EventType?(&v44, v36, type metadata accessor for ArrayWith2Inline<(String, String)>.Storage);
    outlined destroy of EventType?(&v39, type metadata accessor for ArrayWith2Inline<(String, String)>.Storage);
    *v4 = 0u;
    v4[1] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    *(v4 + 64) = 3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1);
      v11 = v38;
    }

    v20 = *(v11 + 16);
    v19 = *(v11 + 24);
    v21 = v20 + 1;
    if (v20 >= v19 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
      v21 = v20 + 1;
      v11 = v38;
    }

    *(v11 + 16) = v21;
    v22 = (v11 + 32 * v20);
    v22[4] = a1;
    v22[5] = a2;
    v22[6] = a3;
    v22[7] = a4;
    v23 = v4[1];
    v36[0] = *v4;
    v36[1] = v23;
    v24 = v4[3];
    v36[2] = v4[2];
    v36[3] = v24;
    v37 = *(v4 + 64);
    outlined destroy of EventType?(v36, type metadata accessor for ArrayWith2Inline<(String, String)>.Storage);
    *v4 = v11;
LABEL_11:
    *(v4 + 64) = 2;
    return result;
  }

  v12 = *(&v44 + 1);
  v13 = v45;
  if (v48)
  {
    v34 = *(&v47 + 1);
    v27 = v47;
    v33 = v46;
    _s7SwiftUI16ArrayWith2InlineVySS_SStGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, String)>, type metadata accessor for (String, String), MEMORY[0x1E69E6F90]);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_18DDAF080;
    *(v28 + 32) = v11;
    *(v28 + 40) = v12;
    *(v28 + 48) = v13;
    *(v28 + 64) = v33;
    *(v28 + 80) = v27;
    *(v28 + 88) = v34;
    *(v28 + 96) = a1;
    *(v28 + 104) = a2;
    *(v28 + 112) = a3;
    *(v28 + 120) = a4;
    v29 = v4[3];
    v41 = v4[2];
    v42 = v29;
    v43 = *(v4 + 64);
    v30 = v4[1];
    v39 = *v4;
    v40 = v30;
    outlined init with copy of EventType?(&v44, v36, type metadata accessor for ArrayWith2Inline<(String, String)>.Storage);

    outlined destroy of EventType?(&v39, type metadata accessor for ArrayWith2Inline<(String, String)>);
    *v4 = v28;
    goto LABEL_11;
  }

  v14 = v4[3];
  v41 = v4[2];
  v42 = v14;
  v43 = *(v4 + 64);
  v15 = v4[1];
  v39 = *v4;
  v40 = v15;
  outlined init with copy of EventType?(&v44, v36, type metadata accessor for ArrayWith2Inline<(String, String)>.Storage);
  outlined destroy of EventType?(&v39, type metadata accessor for ArrayWith2Inline<(String, String)>.Storage);
  *v4 = v11;
  *(v4 + 1) = v12;
  v4[1] = v13;
  *(v4 + 4) = a1;
  *(v4 + 5) = a2;
  *(v4 + 6) = a3;
  *(v4 + 7) = a4;
  *(v4 + 64) = 1;
LABEL_13:

  return result;
}

uint64_t static EventListener._makeGesture(gesture:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = *a2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 40);
  v74 = *(a2 + 24);
  v75 = v9;
  v10 = *(a2 + 72);
  v76 = *(a2 + 56);
  v77 = v10;
  v78 = v7;
  v11 = *(a2 + 88);
  v51 = *(a2 + 96);
  v12 = *(a2 + 108);
  v52 = *(a2 + 104);
  v45 = *(a2 + 112);
  v46 = v6;
  v49 = *(a2 + 116);
  v13 = *(a2 + 120);
  AGGraphClearUpdate();
  v14 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v62 = *a2;
  v63 = v8;
  v64 = *(a2 + 24);
  v65 = *(a2 + 40);
  v66[0] = *(a2 + 56);
  *(v66 + 12) = *(a2 + 68);
  swift_beginAccess();
  v15 = CachedEnvironment.animatedPosition(for:)(&v62);
  swift_endAccess();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v62 = *a2;
  v64 = *(a2 + 24);
  v65 = *(a2 + 40);
  v66[0] = *(a2 + 56);
  v66[1] = *(a2 + 72);
  v43 = v8;
  v44 = v11;
  v63 = v8;
  v16 = *(a2 + 96);
  v67 = v11;
  v68 = v16;
  v69 = *(a2 + 104);
  v70 = v12;
  v71 = v45;
  v72 = __PAIR64__(v13, v49);
  v17 = _GestureInputs.transform.getter();
  *&v62 = __PAIR64__(v12, v46);
  *(&v62 + 1) = __PAIR64__(v17, v15);
  LODWORD(v63) = v45;
  BYTE4(v63) = v13 & 1;
  BYTE5(v63) = (v13 & 2) != 0;
  v64 = 0uLL;
  LODWORD(v65) = 0;
  v19 = type metadata accessor for EventListenerPhase.Value(0, a3, a4, v18);
  v59 = v19;
  v60 = type metadata accessor for EventListenerPhase(0, a3, a4, v20);
  swift_getWitnessTable(protocol conformance descriptor for EventListenerPhase<A>, v60);
  v61 = v21;
  v22 = type metadata accessor for Attribute();
  v23 = MEMORY[0x1E69E73E0];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v62, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v58, v60, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v24);
  v25 = *v73;
  swift_getWitnessTable(protocol conformance descriptor for EventListenerPhase<A>.Value, v19);
  v27 = Attribute<A>.phase()(v25, v19, v26);
  _GestureOutputs.init(phase:)(v27, a5);
  v56 = a3;
  v57 = a4;
  KeyPath = swift_getKeyPath();
  LODWORD(v62) = v25;
  *(&v62 + 1) = partial apply for closure #1 in Attribute.subscript.getter;
  v63 = KeyPath;
  type metadata accessor for ArrayWith2Inline<(String, String)>(255);
  v54 = type metadata accessor for Map();
  swift_getWitnessTable(MEMORY[0x1E698D3A8], v54);
  v55 = v29;
  _s7SwiftUI16ArrayWith2InlineVySS_SStGMaTm_0(0, &lazy cache variable for type metadata for Attribute<ArrayWith2Inline<(String, String)>>, type metadata accessor for ArrayWith2Inline<(String, String)>, MEMORY[0x1E698D388]);
  v31 = v30;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v62, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_9, v53, v54, v23, v31, MEMORY[0x1E69E7410], v32);

  if ((v13 & 8) != 0)
  {
    v35 = *v73;
    v36 = type metadata accessor for EventListener(0, a3, a4, v34);
    _gestureModifierProtocolDescriptor();
    v37 = swift_conformsToProtocol();
    v62 = v78;
    v64 = v74;
    v65 = v75;
    v66[0] = v76;
    if (v37)
    {
      v40 = 2;
    }

    else
    {
      v40 = 1;
    }

    v73[0] = v40;
    v66[1] = v77;
    v63 = v43;
    v67 = v44;
    v68 = v51;
    v69 = v52;
    v70 = v12;
    v71 = v45;
    v72 = __PAIR64__(v13, v49);
    v41 = type metadata accessor for _GestureOutputs(0, a3, v38, v39);
    v42 = _GestureOutputs.debugData.getter();
    return _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v36, v73, v35, &v62, v42 | ((HIDWORD(v42) & 1) << 32), 0x100000000, v41);
  }

  return result;
}

__n128 EventListenerPhase.Value.properties.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  if (*(v3 + *(a1 + 40)) != 5)
  {
    type metadata accessor for EventListenerPhase.FailureReason(0, *(a1 + 16), *(a1 + 24), a3);
    v6 = String.init<A>(describing:)();
    specialized ArrayWith2Inline.append(_:)(0x6572756C696166, 0xE700000000000000, v6, v7);
  }

  if (*(v3 + *(a1 + 36)))
  {
    v11 = _typeName(_:qualified:)();
    v12 = v8;
    MEMORY[0x193ABEDD0](35, 0xE100000000000000);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v9);

    specialized ArrayWith2Inline.append(_:)(0x676E696B63617274, 0xEA00000000004449, v11, v12);
  }

  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 3;
  result = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

__n128 key path getter for EventListenerPhase.Value.properties : <A>EventListenerPhase<A>.Value@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for EventListenerPhase.Value(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a4);
  EventListenerPhase.Value.properties.getter(v5, v9, v6);
  v7 = v9[3];
  *(a3 + 32) = v9[2];
  *(a3 + 48) = v7;
  *(a3 + 64) = v10;
  result = v9[1];
  *a3 = v9[0];
  *(a3 + 16) = result;
  return result;
}

uint64_t EventListenerPhase.Value.init(phase:trackingID:failureReason:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a3;
  v11 = *a2;
  v12 = a2[1];
  v13 = type metadata accessor for GesturePhase(0, a4, a3, a4);
  (*(*(v13 - 8) + 32))(a6, a1, v13);
  result = type metadata accessor for EventListenerPhase.Value(0, a4, a5, v14);
  v16 = (a6 + *(result + 36));
  *v16 = v11;
  v16[1] = v12;
  *(a6 + *(result + 40)) = v8;
  return result;
}

Swift::Int EventListenerPhase.FailureReason.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for DebuggableGesturePhase.phase.getter in conformance EventListenerPhase<A>.Value@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for GesturePhase(0, *(a1 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4, v6);
}

uint64_t protocol witness for DebuggableGesturePhase.phase.setter in conformance EventListenerPhase<A>.Value(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for GesturePhase(0, *(a2 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 40);

  return v7(v4, a1, v6);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EventListenerPhase<A>.FailureReason(uint64_t a1)
{
  Hasher.init(_seed:)();
  EventListenerPhase.FailureReason.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t EventListenerPhase.resetPhase()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  v7 = type metadata accessor for GesturePhase(0, v6, a3, a4);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20[-v8];
  v10 = *(a1 + 24);
  v12 = type metadata accessor for EventListenerPhase.Value(0, v6, v10, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v20[-v15];
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  (*(*(v6 - 8) + 56))(v9, 1, 1, v6, v14);
  swift_storeEnumTagMultiPayload();
  v24[0] = 0;
  v24[1] = 0;
  EventListenerPhase.Value.init(phase:trackingID:failureReason:)(v9, v24, 5, v6, v10, v16);
  v22 = a1;
  swift_getWitnessTable(protocol conformance descriptor for EventListenerPhase<A>, a1);
  v23 = v17;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, closure #1 in StatefulRule.value.setterpartial apply, v21, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v18);
  return (*(v13 + 8))(v16, v12);
}

uint64_t EventListenerPhase.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v145 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for EventListenerPhase.Value(0, v6, v7, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v108 - v10;
  v14 = type metadata accessor for GesturePhase(0, v6, v12, v13);
  v127 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v121 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v108 - v17;
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v120 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for Optional();
  v126 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v125 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v130 = &v108 - v24;
  v131 = v6;
  v124 = type metadata accessor for Optional();
  v25 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v119 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  *&v123 = &v108 - v29;
  swift_getWitnessTable(protocol conformance descriptor for EventListenerPhase<A>, a1, v28);
  result = ResettableGestureRule.resetIfNeeded()();
  if (result)
  {
    v108 = v18;
    v109 = a1;
    v118 = v14;
    v117 = v11;
    v110 = v9;
    v112 = v8;
    v144 = 0;
    memset(v143, 0, sizeof(v143));
    LODWORD(v122.f64[0]) = *(v4 + 21);
    v132 = v4;
    v114 = *(v4 + 20);
    type metadata accessor for [EventID : EventType](0);
    Value = AGGraphGetValue();
    v32 = *Value;
    v33 = *Value + 64;
    v34 = 1 << *(*Value + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(*Value + 64);
    v37 = (v34 + 63) >> 6;
    v129 = v7;
    v115 = v7 + 56;
    v116 = (v19 + 48);
    v113 = (v25 + 8);

    v38 = 0;
    v111 = v19;
    if (!v36)
    {
      goto LABEL_8;
    }

    while (2)
    {
      v39 = v38;
LABEL_16:
      v43 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v44 = v43 | (v39 << 6);
      v45 = (*(v32 + 48) + 16 * v44);
      v46 = *v45;
      v47 = v45[1];
      outlined init with copy of AnyTrackedValue(*(v32 + 56) + 40 * v44, &v134);
      *&v137[0] = v46;
      *(&v137[0] + 1) = v47;
      outlined init with take of _ViewList_Elements(&v134, &v137[1]);
LABEL_17:
      v139 = v137[0];
      v140 = v137[1];
      v141 = v137[2];
      v142 = v138;
      v48 = *&v137[0];
      if (*&v137[0])
      {
        v49 = v139.f64[1];
        outlined init with take of _ViewList_Elements(&v140, v137);
        v50 = *(&v137[1] + 1);
        v51 = *&v137[2];
        __swift_project_boxed_opaque_existential_1(v137, *(&v137[1] + 1));
        (*(v51 + 24))(&v134, v50, v51);
        if (!v134)
        {
          v52 = *(v132 + 24);
          if (v52 && v48 == v52 && *(v132 + 32) == *&v49)
          {

            __swift_destroy_boxed_opaque_existential_1(v137);
            v62 = 0;
            v38 = v118;
            v63 = v127;
            v64 = v128;
            goto LABEL_50;
          }

          __swift_destroy_boxed_opaque_existential_1(v137);
          if (v36)
          {
            continue;
          }

LABEL_8:
          if (v37 <= v38 + 1)
          {
            v40 = v38 + 1;
          }

          else
          {
            v40 = v37;
          }

          v41 = v40 - 1;
          while (1)
          {
            v39 = v38 + 1;
            v42 = v38 == -1;
            if (__OFADD__(v38, 1))
            {
              break;
            }

            if (v39 >= v37)
            {
              v36 = 0;
              v138 = 0;
              v38 = v41;
              memset(v137, 0, sizeof(v137));
              goto LABEL_17;
            }

            v36 = *(v33 + 8 * v39);
            ++v38;
            if (v36)
            {
              v38 = v39;
              goto LABEL_16;
            }
          }

          __break(1u);
          goto LABEL_65;
        }

        if (LOBYTE(v122.f64[0]))
        {
          LODWORD(v122.f64[0]) = 1;
        }

        else
        {
          v53 = *(v132 + 24);
          if (v53 && v48 == v53 && *(v132 + 32) == *&v49 || (v54 = *(&v137[1] + 1), v55 = *&v137[2], __swift_project_boxed_opaque_existential_1(v137, *(&v137[1] + 1)), (*(v55 + 8))(&v134, v54, v55), !v134))
          {
            LODWORD(v122.f64[0]) = 0;
          }

          else
          {
            if (!*(v132 + 24) || (v114 = *(v132 + 20), LOBYTE(v134) = *(v132 + 21), type metadata accessor for EventListener(0, v131, v129, v56), *AGGraphGetValue() != 1))
            {

              __swift_destroy_boxed_opaque_existential_1(v137);
              v62 = 1;
              break;
            }

            LODWORD(v122.f64[0]) = v134;
          }
        }

        outlined init with copy of AnyTrackedValue(v137, &v134);
        v57 = v123;
        v58 = v131;
        (*(v129 + 56))(&v134, v131);
        LODWORD(v58) = (*v116)(v57, 1, v58);
        (*v113)(v57, v124);
        v60 = *(v132 + 24);
        if (v58 != 1)
        {
          if (v60)
          {
            if (*(v132 + 32) != *&v49 || v48 != v60)
            {
              v114 = *(v132 + 20);
              LOBYTE(v134) = *(v132 + 21);
              type metadata accessor for EventListener(0, v131, v129, v59);
              if (*AGGraphGetValue() != 1)
              {

                __swift_destroy_boxed_opaque_existential_1(v137);
                v62 = 2;
                break;
              }

              LODWORD(v122.f64[0]) = v134;
            }

            outlined destroy of EventType?(v143, type metadata accessor for EventType?);
          }

          else
          {
            v61 = v132;
            outlined destroy of EventType?(v143, type metadata accessor for EventType?);
            *(v61 + 24) = v48;
            *(v61 + 32) = v49;
          }

          outlined init with copy of AnyTrackedValue(v137, v143);
LABEL_46:
          __swift_destroy_boxed_opaque_existential_1(v137);
          if (v36)
          {
            continue;
          }

          goto LABEL_8;
        }

        if (v60)
        {
          v114 = *(v132 + 20);
          LOBYTE(v134) = *(v132 + 21);
          type metadata accessor for EventListener(0, v131, v129, v59);
          if (*AGGraphGetValue() == 1)
          {
            LODWORD(v122.f64[0]) = v134;
            goto LABEL_46;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v137);
        v62 = 3;
      }

      else
      {

        v62 = 5;
      }

      break;
    }

    v38 = v118;
    v63 = v127;
    v64 = v128;
LABEL_50:
    v32 = *(v63 + 56);
    v65 = v130;
    (v32)(v130, 1, 1, v38);
    if (v48)
    {
      v66 = v126;
      (*(v126 + 8))(v65, v64);
      swift_storeEnumTagMultiPayload();
      (v32)(v65, 0, 1, v38);
      v67 = v66;
      v68 = v117;
      v69 = v129;
      v70 = v65;
      v71 = v125;
      goto LABEL_71;
    }

    outlined init with copy of EventType?(v143, &v139, type metadata accessor for EventType?);
    if (!*(&v140 + 1))
    {
      outlined destroy of EventType?(&v139, type metadata accessor for EventType?);
      OutputValue = AGGraphGetOutputValue();
      v71 = v125;
      v89 = v111;
      if (!OutputValue)
      {
        v96 = v126;
        v97 = v130;
        (*(v126 + 8))(v130, v64);
        (*(v89 + 56))(v97, 1, 1, v131);
        swift_storeEnumTagMultiPayload();
        (v32)(v97, 0, 1, v38);
        v70 = v97;
        v67 = v96;
        v62 = 5;
        v68 = v117;
        v69 = v129;
        goto LABEL_71;
      }

      v62 = 5;
      v68 = v117;
LABEL_70:
      v67 = v126;
      v69 = v129;
      v70 = v130;
LABEL_71:
      (*(v67 + 16))(v71, v70, v64);
      if ((*(v63 + 48))(v71, 1, v38) == 1)
      {
        v99 = *(v67 + 8);
        v99(v70, v64);
        outlined destroy of EventType?(v143, type metadata accessor for EventType?);
        return (v99)(v71, v64);
      }

      else
      {
        v100 = v71;
        v101 = v108;
        (*(v63 + 32))(v108, v100, v38);
        v102 = v121;
        (*(v63 + 16))(v121, v101, v38);
        v137[0] = *(v132 + 24);
        v103 = EventListenerPhase.Value.init(phase:trackingID:failureReason:)(v102, v137, v62, v131, v69, v68);
        v104 = MEMORY[0x1EEE9AC00](v103);
        *(&v108 - 2) = v109;
        swift_getWitnessTable(protocol conformance descriptor for EventListenerPhase<A>, v104);
        *(&v108 - 1) = v105;
        v106 = v112;
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v68, partial apply for closure #1 in StatefulRule.value.setter, (&v108 - 4), v112, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v107);
        (*(v110 + 8))(v68, v106);
        (*(v63 + 8))(v101, v38);
        (*(v67 + 8))(v70, v64);
        return outlined destroy of EventType?(v143, type metadata accessor for EventType?);
      }
    }

    outlined init with take of _ViewList_Elements(&v139, &v134);
    v72 = v131;
    v73 = v111;
    v74 = v120;
    if ((v114 & 1) == 0)
    {
      AGGraphClearUpdate();
      v75 = v132;
      closure #1 in EventListenerPhase.updateValue()(v72, v129, &v139, v76);
      result = AGGraphSetUpdate();
      v77 = *(v75 + 24);
      if (!v77)
      {
        __break(1u);
        return result;
      }

      v123 = v140;
      v122 = v139;
      v78 = v141;
      v79 = *(v75 + 32);
      _s7SwiftUI16ArrayWith2InlineVySS_SStGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, EventType)>, type metadata accessor for (EventID, EventType), MEMORY[0x1E69E6F90]);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_18DDA6EB0;
      *(v80 + 32) = v77;
      v81 = v79;
      *(v80 + 40) = v79;
      outlined init with copy of AnyTrackedValue(&v134, v80 + 48);
      v82 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(v80);
      swift_setDeallocating();
      outlined destroy of EventType?(v80 + 32, type metadata accessor for (EventID, EventType));
      swift_deallocClassInstance();
      v133 = v82;
      *&v137[0] = 1;
      memset(v137 + 8, 0, 32);
      BYTE8(v137[2]) = 2;
      v140 = v123;
      v139 = v122;
      v141 = v78;

      specialized defaultConvertEventLocations<A>(_:coordinateSpace:transform:)(&v133, v137, &v139);

      outlined destroy of EventType?(v137, type metadata accessor for CoordinateSpace?);
      v83 = v133;
      if (*(v133 + 16))
      {
        v84 = specialized __RawDictionaryStorage.find<A>(_:)(v77, v81);
        v38 = v118;
        v73 = v111;
        if (v85)
        {
          outlined init with copy of AnyTrackedValue(*(v83 + 56) + 40 * v84, v137);

          __swift_destroy_boxed_opaque_existential_1(&v134);
          outlined init with take of _ViewList_Elements(v137, &v134);

          v64 = v128;
          v72 = v131;
          goto LABEL_58;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

LABEL_58:
    outlined init with copy of AnyTrackedValue(&v134, v137);
    v86 = v119;
    (*(v129 + 56))(v137, v72);
    v87 = v86;
    if ((*v116)(v86, 1, v72) == 1)
    {
      (*(v126 + 8))(v130, v64);
      outlined destroy of EventType?(v143, type metadata accessor for EventType?);
      (*v113)(v86, v124);
      return __swift_destroy_boxed_opaque_existential_1(&v134);
    }

    v90 = v73;
    v91 = v64;
    v36 = *(v90 + 32);
    (v36)(v74, v87, v72);
    v92 = v135;
    v93 = v136;
    __swift_project_boxed_opaque_existential_1(&v134, v135);
    (*(v93 + 8))(v137, v92, v93);
    v94 = v130;
    (*(v126 + 8))(v130, v91);
    v42 = LOBYTE(v137[0]) == 2;
    if (LOBYTE(v137[0]) < 2u)
    {
      (v36)(v94, v74, v131);
      swift_storeEnumTagMultiPayload();
      (v32)(v94, 0, 1, v38);
      v62 = 5;
      v63 = v127;
      v71 = v125;
LABEL_69:
      __swift_destroy_boxed_opaque_existential_1(&v134);
      v68 = v117;
      v64 = v128;
      goto LABEL_70;
    }

LABEL_65:
    v63 = v127;
    v71 = v125;
    if (v42)
    {
      v95 = v130;
      (v36)(v130, v120, v131);
      swift_storeEnumTagMultiPayload();
      (v32)(v95, 0, 1, v38);
      v62 = 5;
    }

    else
    {
      (*(v111 + 8))(v120, v131);
      v98 = v130;
      swift_storeEnumTagMultiPayload();
      (v32)(v98, 0, 1, v38);
      v62 = 4;
    }

    goto LABEL_69;
  }

  return result;
}

__n128 closure #1 in EventListenerPhase.updateValue()@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X2>, float64x2_t *a4@<X8>, uint64_t x3_0@<X3>)
{
  type metadata accessor for EventListenerPhase(0, a2, a3, x3_0);
  LazySubviewPrefetcher.transform.getter(a4);
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  result = *Value;
  v8 = vsubq_f64(a4[2], vsubq_f64(*Value, a4[1]));
  a4[1] = *Value;
  a4[2] = v8;
  return result;
}

uint64_t EventListenerPhase.description.getter(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v3);

  MEMORY[0x193ABEDD0](93, 0xE100000000000000);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI7EventIDV_s5NeverOytTB503_s7c4UI18E82ListenerPhase33_D4E5D14C6252B45A30FB249B3DBDFD35LLV11descriptionSSvgyAA0C2IDVXEfU_SSTf1cn_n(v2);
  return 0x72656E657473694CLL;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance EventListenerPhase<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = type metadata accessor for EventListenerPhase.Value(0, *(a1 + 16), *(a1 + 24), a3);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 1, 1, v4);
}

void type metadata accessor for (String, String)()
{
  if (!lazy cache variable for type metadata for (String, String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, String));
    }
  }
}

uint64_t getEnumTagSinglePayload for EventListenerPhase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 44))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for EventListenerPhase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for EventListenerPhase.Value(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for GesturePhase(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for EventListenerPhase.Value(void *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v4 = __dst;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v10 = *(v6 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v6 + 64);
  }

  if ((v8 & 0x1000F8) == 0 && (v11 & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFFFFFFFE7)
  {
    v14 = __src[v11];
    if (v14 >= 3)
    {
      v14 = *__src + 3;
    }

    if (v14 == 2)
    {
      (*(v6 + 16))(__dst, __src, v5);
      *(v4 + v11) = 2;
    }

    else if (v14 == 1)
    {
      (*(v6 + 16))(__dst, __src, v5);
      *(v4 + v11) = 1;
    }

    else if (v14)
    {
      memcpy(__dst, __src, v11 + 1);
    }

    else
    {
      if ((*(v6 + 48))(__src, 1, v5))
      {
        memcpy(v4, __src, v10);
      }

      else
      {
        (*(v7 + 16))(v4, __src, v5);
        (*(v7 + 56))(v4, 0, 1, v5);
      }

      *(v4 + v11) = 0;
    }

    v15 = (v4 + v11 + 8) & 0xFFFFFFFFFFFFFFF8;
    v16 = &__src[v11 + 8] & 0xFFFFFFFFFFFFFFF8;
    *v15 = *v16;
    *(v15 + 16) = *(v16 + 16);
  }

  else
  {
    v13 = *__src;
    *v4 = *__src;
    v4 = (v13 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  return v4;
}

unsigned __int8 *destroy for EventListenerPhase.Value(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 64);
  if (*(v2 + 84))
  {
    v4 = *(v2 + 64);
  }

  else
  {
    v4 = v3 + 1;
  }

  if (v3 > v4)
  {
    v4 = *(v2 + 64);
  }

  v5 = result[v4];
  v6 = v5 - 3;
  if (v5 >= 3)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_20;
      }

      v8 = *result;
    }

    else if (v7 == 2)
    {
      v8 = *result;
    }

    else if (v7 == 3)
    {
      v8 = *result | (result[2] << 16);
    }

    else
    {
      v8 = *result;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 3;
    v5 = v8 + 3;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_20:
  if (v5 - 1 < 2 || !v5 && (v11 = result, v14 = *(*(a2 + 16) - 8), v12 = (*(v2 + 48))(), v2 = v14, v13 = v12, result = v11, !v13))
  {
    v10 = *(v2 + 8);

    return v10();
  }

  return result;
}

_BYTE *initializeWithCopy for EventListenerPhase.Value(_BYTE *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v6 + 64);
  }

  v10 = __src[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_21;
      }

      v13 = *__src;
    }

    else if (v12 == 2)
    {
      v13 = *__src;
    }

    else if (v12 == 3)
    {
      v13 = *__src | (__src[2] << 16);
    }

    else
    {
      v13 = *__src;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_21:
  if (v10 == 2)
  {
    (*(v6 + 16))(__dst, __src, v5);
    __dst[v9] = 2;
  }

  else if (v10 == 1)
  {
    (*(v6 + 16))(__dst, __src, v5);
    __dst[v9] = 1;
  }

  else if (v10)
  {
    memcpy(__dst, __src, v9 + 1);
  }

  else
  {
    if ((*(v6 + 48))(__src, 1, v5))
    {
      memcpy(__dst, __src, v8);
    }

    else
    {
      (*(v6 + 16))(__dst, __src, v5);
      (*(v6 + 56))(__dst, 0, 1, v5);
    }

    __dst[v9] = 0;
  }

  v15 = &__dst[v9 + 8] & 0xFFFFFFFFFFFFFFF8;
  v16 = &__src[v9 + 8] & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;
  *(v15 + 16) = *(v16 + 16);
  return __dst;
}

unsigned __int8 *assignWithCopy for EventListenerPhase.Value(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 == a2)
  {
    goto LABEL_52;
  }

  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v6 + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_22:
  if (v10 - 1 < 2 || !v10 && !(*(v6 + 48))(a1, 1, v5))
  {
    (*(v6 + 8))(a1, v5);
  }

  v15 = a2[v9];
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v9 <= 3)
    {
      v17 = v9;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_40;
      }

      v18 = *a2;
      if (v9 < 4)
      {
LABEL_48:
        v19 = v18 | (v16 << (8 * v9));
        v15 = v19 + 3;
        if (v19 == -1)
        {
          goto LABEL_49;
        }

        goto LABEL_41;
      }
    }

    else if (v17 == 2)
    {
      v18 = *a2;
      if (v9 < 4)
      {
        goto LABEL_48;
      }
    }

    else if (v17 == 3)
    {
      v18 = *a2 | (a2[2] << 16);
      if (v9 < 4)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v18 = *a2;
      if (v9 < 4)
      {
        goto LABEL_48;
      }
    }

    v15 = v18 + 3;
  }

LABEL_40:
  if (v15 == 2)
  {
LABEL_49:
    (*(v6 + 16))(a1, a2, v5);
    a1[v9] = 2;
    goto LABEL_52;
  }

LABEL_41:
  if (v15 == 1)
  {
    (*(v6 + 16))(a1, a2, v5);
    a1[v9] = 1;
  }

  else if (v15)
  {
    memcpy(a1, a2, v9 + 1);
  }

  else
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    a1[v9] = 0;
  }

LABEL_52:
  v20 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v21 = *(v6 + 64);
  }

  else
  {
    v21 = v20 + 1;
  }

  if (v20 > v21)
  {
    v21 = *(v6 + 64);
  }

  v22 = v21 + 8;
  v23 = &a1[v22] & 0xFFFFFFFFFFFFFFF8;
  v24 = &a2[v22] & 0xFFFFFFFFFFFFFFF8;
  *v23 = *v24;
  *(v23 + 16) = *(v24 + 16);
  return a1;
}

_BYTE *initializeWithTake for EventListenerPhase.Value(_BYTE *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v6 + 64);
  }

  v10 = __src[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_21;
      }

      v13 = *__src;
    }

    else if (v12 == 2)
    {
      v13 = *__src;
    }

    else if (v12 == 3)
    {
      v13 = *__src | (__src[2] << 16);
    }

    else
    {
      v13 = *__src;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_21:
  if (v10 == 2)
  {
    (*(v6 + 32))(__dst, __src, v5);
    __dst[v9] = 2;
  }

  else if (v10 == 1)
  {
    (*(v6 + 32))(__dst, __src, v5);
    __dst[v9] = 1;
  }

  else if (v10)
  {
    memcpy(__dst, __src, v9 + 1);
  }

  else
  {
    if ((*(v6 + 48))(__src, 1, v5))
    {
      memcpy(__dst, __src, v8);
    }

    else
    {
      (*(v6 + 32))(__dst, __src, v5);
      (*(v6 + 56))(__dst, 0, 1, v5);
    }

    __dst[v9] = 0;
  }

  v15 = &__dst[v9 + 8] & 0xFFFFFFFFFFFFFFF8;
  v16 = &__src[v9 + 8] & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;
  *(v15 + 16) = *(v16 + 16);
  return __dst;
}

unsigned __int8 *assignWithTake for EventListenerPhase.Value(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 == a2)
  {
    goto LABEL_52;
  }

  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v6 + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_22:
  if (v10 - 1 < 2 || !v10 && !(*(v6 + 48))(a1, 1, v5))
  {
    (*(v6 + 8))(a1, v5);
  }

  v15 = a2[v9];
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v9 <= 3)
    {
      v17 = v9;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_40;
      }

      v18 = *a2;
      if (v9 < 4)
      {
LABEL_48:
        v19 = v18 | (v16 << (8 * v9));
        v15 = v19 + 3;
        if (v19 == -1)
        {
          goto LABEL_49;
        }

        goto LABEL_41;
      }
    }

    else if (v17 == 2)
    {
      v18 = *a2;
      if (v9 < 4)
      {
        goto LABEL_48;
      }
    }

    else if (v17 == 3)
    {
      v18 = *a2 | (a2[2] << 16);
      if (v9 < 4)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v18 = *a2;
      if (v9 < 4)
      {
        goto LABEL_48;
      }
    }

    v15 = v18 + 3;
  }

LABEL_40:
  if (v15 == 2)
  {
LABEL_49:
    (*(v6 + 32))(a1, a2, v5);
    a1[v9] = 2;
    goto LABEL_52;
  }

LABEL_41:
  if (v15 == 1)
  {
    (*(v6 + 32))(a1, a2, v5);
    a1[v9] = 1;
  }

  else if (v15)
  {
    memcpy(a1, a2, v9 + 1);
  }

  else
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v6 + 32))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    a1[v9] = 0;
  }

LABEL_52:
  v20 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v21 = *(v6 + 64);
  }

  else
  {
    v21 = v20 + 1;
  }

  if (v20 > v21)
  {
    v21 = *(v6 + 64);
  }

  v22 = v21 + 8;
  v23 = &a1[v22] & 0xFFFFFFFFFFFFFFF8;
  v24 = &a2[v22] & 0xFFFFFFFFFFFFFFF8;
  *v23 = *v24;
  *(v23 + 16) = *(v24 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for EventListenerPhase.Value(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v4 > v5)
  {
    v5 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_27;
  }

  v6 = (v5 & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v6 <= 3)
  {
    v7 = ((a2 - 2147483391) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (v9 == 4)
  {
    v10 = *&a1[v6];
    if (v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v9 == 2)
    {
      v10 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_27;
      }

LABEL_23:
      v12 = (v10 - 1) << (8 * v6);
      if (v6 <= 3)
      {
        v13 = *a1;
      }

      else
      {
        v12 = 0;
        v13 = *a1;
      }

      return (v13 | v12) + 0x7FFFFFFF;
    }

    v10 = a1[v6];
    if (a1[v6])
    {
      goto LABEL_23;
    }
  }

LABEL_27:
  v14 = *(&a1[v5 + 8] & 0xFFFFFFFFFFFFFFF8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  if ((v14 + 1) >= 2)
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for EventListenerPhase.Value(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v6 > v7)
  {
    v7 = *(v5 + 64);
  }

  v8 = (v7 & 0xFFFFFFFFFFFFFFF8) + 25;
  if (a3 < 0x7FFFFFFF)
  {
    v11 = 0;
  }

  else
  {
    if (v8 <= 3)
    {
      v9 = ((a3 - 2147483391) >> 8) + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }
  }

  if (a2 <= 0x7FFFFFFE)
  {
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v8] = 0;
    }

    else if (v11)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_32:
      *(&a1[v7 + 8] & 0xFFFFFFFFFFFFFFF8) = a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  v12 = a2 - 0x7FFFFFFF;
  v13 = (a2 - 0x7FFFFFFF) >> 8;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v12;
    if (v11 > 1)
    {
LABEL_27:
      if (v11 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v12;
    if (v11 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v11)
  {
    a1[v8] = v14;
  }
}

void type metadata accessor for CoordinateSpace?()
{
  if (!lazy cache variable for type metadata for CoordinateSpace?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CoordinateSpace?);
    }
  }
}

uint64_t outlined init with copy of EventType?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void _s7SwiftUI16ArrayWith2InlineVySS_SStGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of EventType?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t key path getter for PlatformViewResponderBase.PlatformHitTestResult.hitView : <A, B>PlatformViewResponderBase<A, B>.PlatformHitTestResult@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = type metadata accessor for PlatformViewResponderBase.PlatformHitTestResult(0, *(a2 + a3 - 24), *(a2 + a3 - 16), *(a2 + a3 - 8));
  v7 = *(v6 - 8);
  (*(v7 + 16))(v10, a1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v7 + 8))(v10, v6);
  *a4 = Strong;
  return result;
}

uint64_t PlatformViewResponderBase.PlatformHitTestResult.hitView.setter(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*PlatformViewResponderBase.PlatformHitTestResult.hitView.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return PlatformViewResponderBase.PlatformHitTestResult.hitView.modify;
}

uint64_t PlatformViewResponderBase.PlatformHitTestResult.hitView.modify(void *a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t PlatformViewResponderBase.hostView.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PlatformViewResponderBase.hostView.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return PlatformViewResponderBase.hostView.modify;
}

void PlatformViewResponderBase.hostView.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t PlatformViewResponderBase.representedView.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PlatformViewResponderBase.representedView.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return PlatformViewResponderBase.representedView.modify;
}

void PlatformViewResponderBase.representedView.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t PlatformViewResponderBase.helper.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 288);
  swift_beginAccess();
  v6 = type metadata accessor for ContentResponderHelper(0, *(v3 + 256), *(v3 + 264), v5);
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

double PlatformViewResponderBase.helper.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 288);
  swift_beginAccess();
  v6 = type metadata accessor for ContentResponderHelper(0, *(v3 + 256), *(v3 + 264), v5);
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  swift_endAccess();
  return result;
}

uint64_t PlatformViewResponderBase.lastResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = (*v1)[37];
  swift_beginAccess();
  type metadata accessor for PlatformViewResponderBase.PlatformHitTestResult(255, v3[31], v3[32], v3[33]);
  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

void (*PlatformViewResponderBase.preferredFocusableView.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = *(*v1 + 304);
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return PlatformViewResponderBase.preferredFocusableView.modify;
}

void PlatformViewResponderBase.preferredFocusableView.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t PlatformViewResponderBase.frame.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *&v18 = (*(*v1 + 352))();
    *(&v18 + 1) = v5;
    *&v19 = v6;
    *(&v19 + 1) = v7;
    if (one-time initialization token for hostingViewCoordinateSpace != -1)
    {
      swift_once();
    }

    v16[0] = hostingViewCoordinateSpace.value.value;
    v17 = 1;
    v8 = v1 + *(*v1 + 288);
    swift_beginAccess();
    v10 = (v8 + *(type metadata accessor for ContentResponderHelper(0, *(v3 + 256), *(v3 + 264), v9) + 40));
    v11 = v10->f64[1];
    v15[0].f64[0] = v10->f64[0];
    v15[0].f64[1] = v11;
    v12 = v10[2];
    v15[1] = v10[1];
    v15[2] = v12;

    CGRect.convert(to:transform:)(v16, v15);
    swift_unknownObjectRelease();

    result = outlined destroy of CoordinateSpace(v16);
    v13 = v18;
    v14 = v19;
  }

  else
  {
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = 0;
  return result;
}

BOOL PlatformViewResponderBase.platformViewIsEnabled.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

SwiftUI::ViewResponder::HitTestPolicy __swiftcall PlatformViewResponderBase.hitTestPolicy(options:)(SwiftUI::ViewResponder::ContainsPointsOptions options)
{
  v3 = v1;
  v4 = *options.rawValue;
  result = (*(*v2 + 360))();
  v6 = (result & 1) == 0 && (v4 & 1) == 0 || (*(*v2 + 168))() < 0.001;
  *v3 = v6;
  return result;
}

void PlatformViewResponderBase.containsGlobalPoints(_:cacheKey:options:)(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t **a3@<X2>, double *a4@<X8>)
{
  v8 = v4;
  v12 = *v4;
  v13 = *a3;
  if ((specialized static UnifiedHitTestingFeature.isEnabled.getter() & 1) == 0)
  {
    v17 = (*(*v4 + 208))();
    goto LABEL_7;
  }

  v39 = v13;
  v14 = (*(*v4 + 176))(v43, &v39);
  Strong = v43[0];
  v16 = *(*v4 + 208);
  v17 = v16(v14);
  if (Strong == 1)
  {
LABEL_7:
    *a4 = 0.0;
    a4[1] = 0.0;
    *(a4 + 2) = v17;
    return;
  }

  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_31;
  }

  v35 = v17;
  v36 = v13;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v18 = *(*v4 + 296);
  swift_beginAccess();
  v33 = *(v12 + 264);
  v34 = *(v12 + 256);
  v19 = type metadata accessor for PlatformViewResponderBase.PlatformHitTestResult(255, *(v12 + 248), v34, v33);
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v39, v8 + v18, v20);
  v37 = v21;
  v38 = HIDWORD(a2) & 1;
  v31 = v20;
  v32 = v18;
  if (v42 == 1)
  {
    (*(v21 + 8))(&v39, v20);
  }

  else
  {
    v22 = *(v19 - 8);
    (*(v22 + 32))(v43, &v39, v19);
    if ((a2 & 0x100000000) == 0 && *v43 == a2)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      (*(v22 + 8))(v43, v19);
      LOBYTE(v13) = v36;
      if (Strong)
      {
        goto LABEL_14;
      }

LABEL_11:
      v12 = 0;
      v7 = 0.0;
      a1 = v35;
      goto LABEL_23;
    }

    (*(v22 + 8))(v43, v19);
  }

  LOBYTE(v13) = v36;
  Strong = (*(*v8 + 368))(a2 | (v38 << 32), v5, v6);
  if (!Strong)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_unknownObjectRetain();
  v24 = v16(v23);
  swift_beginAccess();
  v26 = type metadata accessor for ContentResponderHelper(0, v34, v33, v25);
  ContentResponderHelper.containsGlobalPoints(_:cacheKey:options:children:)(a1, a2 | (v38 << 32), v24, v26, &v39);
  swift_endAccess();

  v12 = v39;
  v7 = v40;
  a1 = v41;

  if (a1 >> 62)
  {
LABEL_31:
    v27 = __CocoaSet.count.getter();
    goto LABEL_16;
  }

  v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:

  if (v27)
  {
    v29 = (*(*v8 + 320))(v28);
    if (v29)
    {
      if (((*(*v8 + 376))(Strong, v29) & 1) == 0)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        a1 = MEMORY[0x1E69E7CC0];
        v12 = -1;
        v30 = v37;
        if ((v13 & 2) != 0)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }

      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRelease();
  if (!v12)
  {
LABEL_23:
    v30 = v37;
    goto LABEL_24;
  }

  v30 = v37;
  if ((v13 & 2) == 0)
  {
LABEL_22:
    v7 = 16.0;
  }

LABEL_24:
  if ((a2 & 0x100000000) != 0)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    LODWORD(v39) = a2;
    v40 = v5;
    v41 = *&v6;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v42 = 0;
    swift_beginAccess();
    (*(v30 + 40))(v8 + v32, &v39, v31);
    swift_endAccess();
  }

  *a4 = v12;
  a4[1] = v7;
  *(a4 + 2) = a1;
}

double PlatformViewResponderBase.addContentPath(to:kind:in:observer:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v14 = *a2;
  swift_beginAccess();
  v12 = type metadata accessor for ContentResponderHelper(0, *(v10 + 256), *(v10 + 264), v11);
  ContentResponderHelper.addContentPath(to:kind:in:observer:)(a1, &v14, a3, a4, a5, v12);
  swift_endAccess();
  return result;
}

void PlatformViewResponderBase.descriptionName.getter()
{
  v1 = *v0;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    recursiveDescriptionName(_:)(v1);
    MEMORY[0x193ABEDD0](60, 0xE100000000000000);
    swift_getObjectType();
    v2 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v2);

    MEMORY[0x193ABEDD0](62, 0xE100000000000000);
    swift_unknownObjectRelease();
  }

  else
  {
    recursiveDescriptionName(_:)(v1);
  }
}

Swift::Void __swiftcall PlatformViewResponderBase.extendPrintTree(string:)(Swift::String *string)
{
  v3 = *v2;
  v4 = type metadata accessor for ContentResponderHelper(0, *(*v2 + 256), *(*v2 + 264), v1);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - v6;
  v8 = v2 + *(v3 + 288);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = ContentResponderHelper.globalPosition.getter(v4);
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v15 = 0;
  v16 = 0xE000000000000000;
  MEMORY[0x193ABEDD0](91, 0xE100000000000000);
  v12 = Double.description.getter();
  MEMORY[0x193ABEDD0](v12);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v13 = Double.description.getter();
  MEMORY[0x193ABEDD0](v13);

  MEMORY[0x193ABEDD0](4202589, 0xE300000000000000);
  *&v14[1] = v9;
  v14[2] = v11;
  type metadata accessor for (CGFloat, CGFloat)();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v15, v16);
}

uint64_t PlatformViewResponderBase.__allocating_init()()
{
  v0 = swift_allocObject();
  PlatformViewResponderBase.init()();
  return v0;
}

char *PlatformViewResponderBase.init()()
{
  v1 = *v0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  ContentResponderHelper.init()(*(v1 + 256), *(v1 + 264), v2, &v0[*(*v0 + 288)]);
  v3 = &v0[*(*v0 + 296)];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  swift_unknownObjectWeakInit();
  *(v0 + 3) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v4 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v5 = *(v4 + 208);

  swift_beginAccess();
  *(v0 + 3) = v5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v0;
}

char *PlatformViewResponderBase.__allocating_init(host:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = specialized PlatformViewResponderBase.init(host:)(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

char *PlatformViewResponderBase.init(host:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized PlatformViewResponderBase.init(host:)(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

void PlatformViewResponderBase.__ivar_destroyer()
{
  v1 = *v0;
  MEMORY[0x193AC4950](v0 + 5);
  MEMORY[0x193AC4950](v0 + 6);
  v2 = (*v0)[36];
  v3 = v1[32];
  v4 = v1[33];
  v6 = type metadata accessor for ContentResponderHelper(0, v3, v4, v5);
  (*(*(v6 - 8) + 8))(v0 + v2, v6);
  v7 = (*v0)[37];
  type metadata accessor for PlatformViewResponderBase.PlatformHitTestResult(255, v1[31], v3, v4);
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  JUMPOUT(0x193AC4950);
}

uint64_t **PlatformViewResponderBase.deinit(__n128 a1)
{
  v2 = *v1;
  outlined destroy of weak ViewGraphDelegate?((v1 + 2), a1);
  swift_weakDestroy();
  MEMORY[0x193AC4950](v1 + 5);
  MEMORY[0x193AC4950](v1 + 6);
  v3 = (*v1)[36];
  v4 = v2[32];
  v5 = v2[33];
  v7 = type metadata accessor for ContentResponderHelper(0, v4, v5, v6);
  (*(*(v7 - 8) + 8))(v1 + v3, v7);
  v8 = (*v1)[37];
  type metadata accessor for PlatformViewResponderBase.PlatformHitTestResult(255, v2[31], v4, v5);
  v9 = type metadata accessor for Optional();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  MEMORY[0x193AC4950](v1 + (*v1)[38]);
  return v1;
}

uint64_t PlatformViewResponderBase.__deallocating_deinit(__n128 a1)
{
  PlatformViewResponderBase.deinit(a1);

  return swift_deallocClassInstance();
}

char *specialized PlatformViewResponderBase.init(host:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  ContentResponderHelper.init()(*(v4 + 256), *(v4 + 264), v5, &v2[*(*v2 + 288)]);
  v6 = &v2[*(*v2 + 296)];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  swift_unknownObjectWeakInit();
  *(v2 + 3) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  swift_beginAccess();
  *(v2 + 3) = a2;
  swift_unknownObjectWeakAssign();
  return v2;
}

uint64_t initializeWithCopy for PlatformViewResponderBase.PlatformHitTestResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectWeakCopyInit();
  return a1;
}

uint64_t assignWithCopy for PlatformViewResponderBase.PlatformHitTestResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  swift_unknownObjectWeakCopyAssign();
  return a1;
}

uint64_t initializeWithTake for PlatformViewResponderBase.PlatformHitTestResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectWeakTakeInit();
  return a1;
}

uint64_t assignWithTake for PlatformViewResponderBase.PlatformHitTestResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectWeakTakeAssign();
  return a1;
}

CorePlatformClockKitTextProvider *CLKTextProviderTextStorage.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  result = CoreMakeCorePlatformClockKitTextProvider(a1);
  if (result)
  {
    v4 = result;

    *(v2 + 16) = v4;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

CorePlatformClockKitTextProvider *CLKTextProviderTextStorage.init(_:)(void *a1)
{
  result = CoreMakeCorePlatformClockKitTextProvider(a1);
  if (result)
  {
    v4 = result;

    *(v1 + 16) = v4;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void CLKTextProviderTextStorage.resolve<A>(into:in:with:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = type metadata accessor for Text.Style(0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = *a3;
  (*(a5 + 8))(a4, a5, v12);
  v18 = *v14;
  outlined copy of Text.Style.TextStyleFont(*v14);
  _sypSgWOhTm_5(v14, type metadata accessor for Text.Style);
  v43[0] = v18;
  v44 = v15;
  v45 = v16;
  v19 = Text.Style.TextStyleFont.resolve(in:includeDefaultAttributes:)(&v44, 1);
  outlined consume of EffectAnimator<A>.State<A>(v43[0]);
  if (v19)
  {
    v23 = *(v6 + 16);
    if (v16)
    {
      v24 = v23;

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TextCaseI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v15, &v44);

      v25 = v44;
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<TextCaseKey>(0, v20, v21, v22);
      BloomFilter.init(hashValue:)(v26);
      v27 = v44;
      v28 = v23;
      v29 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08TextCaseV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(v15, v27);
      if (v29)
      {
        v25 = *(v29 + 72);
      }

      else
      {
        v25 = 2;
      }
    }

    v30 = Font.smallCaps()(v19);
    v43[1] = v16;
    v44 = v23;
    LOBYTE(v45) = v25;
    v46 = v19;
    v47 = 0;
    v48 = v30;
    v49 = 0;
    v42 = v17;
    v43[0] = v15;
    v38 = 0;
    v41 = 2;
    v40 = 0;
    v39 = 0;
    v31 = *(a5 + 96);
    lazy protocol witness table accessor for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider();
    v31(&v44, v43, &v42, &v38, &type metadata for ResolvableCLKTextProvider, v32, a4, a5);
    v33 = v46;
    v34 = v47;
    v35 = v48;
    v36 = v49;

    outlined consume of ResolvableCLKTextProvider.FontStorage(v33, v34);
    outlined consume of ResolvableCLKTextProvider.FontStorage(v35, v36);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t CLKTextProviderTextStorage.isEqual(to:)(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v4 = *(v1 + 16);
    v5 = *(v3 + 16);

    v6 = v4;
    v7 = v5;
    LOBYTE(v4) = static NSObject.== infix(_:_:)();

    return v4 & 1;
  }

  return result;
}

uint64_t CLKTextProviderTextStorage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ResolvableAttributeConfiguration.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v4 = 0x3FF0000000000000;
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_12;
      }

      v4 = 0x3FA1111111111111;
    }

    *a2 = v4;
    *(a2 + 8) = 0;
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      *a2 = 64;
      type metadata accessor for ResolvableAttributeConfiguration(0);
      goto LABEL_13;
    }
  }

  else
  {
    *a2 = 0x7FEFFFFFFFFFFFFFLL;
    *(a2 + 8) = 0;
  }

LABEL_12:
  type metadata accessor for ResolvableAttributeConfiguration(0);
LABEL_13:

  return swift_storeEnumTagMultiPayload();
}

id ResolvableCLKTextProvider.rawProvider.getter()
{
  v1 = [*v0 provider];

  return v1;
}

uint64_t one-time initialization function for attribute()
{
  result = MEMORY[0x193ABEC20](0xD000000000000021, 0x800000018DD7A460);
  static ResolvableCLKTextProvider.attribute = result;
  return result;
}

{
  result = MEMORY[0x193ABEC20](0xD00000000000001ELL, 0x800000018DD7C680);
  static ResolvableAbsoluteDate.attribute = result;
  return result;
}

{
  result = MEMORY[0x193ABEC20](0xD00000000000001FLL, 0x800000018DD7FCD0);
  static ResolvableTimer.attribute = result;
  return result;
}

{
  result = MEMORY[0x193ABEC20](0xD00000000000001ALL, 0x800000018DD80820);
  static ResolvableProgress.attribute = result;
  return result;
}

{
  result = MEMORY[0x193ABEC20](0xD00000000000001ELL, 0x800000018DD80840);
  static ResolvableDateInterval.attribute = result;
  return result;
}

{
  result = MEMORY[0x193ABEC20](0xD00000000000001DLL, 0x800000018DD80860);
  static ResolvableCurrentDate.attribute = result;
  return result;
}

id static ResolvableCLKTextProvider.attribute.getter()
{
  if (one-time initialization token for attribute != -1)
  {
    swift_once();
  }

  v1 = static ResolvableCLKTextProvider.attribute;

  return v1;
}

uint64_t ResolvableCLKTextProvider.resolve(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v33 = type metadata accessor for Date();
  v4 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = type metadata accessor for ResolvableStringResolutionContext(0);
  v13 = *(v12 + 24);
  v14 = a1 + *(v12 + 20);
  v16 = *v14;
  v15 = *(v14 + 8);
  if (*(a1 + v13 + 8))
  {
    v17 = 1.79769313e308;
  }

  else
  {
    v17 = *(a1 + v13);
  }

  if (v9)
  {
    v18 = v8;
    if ((v11 & 1) == 0)
    {
LABEL_6:
      v35 = v16;
      v36 = v15;
      v19 = Font.platformFont(in:)(&v35, v10);
      goto LABEL_9;
    }
  }

  else
  {
    v35 = *v14;
    v36 = v15;
    v18 = Font.platformFont(in:)(&v35, v8);
    if ((v11 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v19 = v10;
LABEL_9:
  v20 = v19;
  v22 = (v7 & 1) == 0 && v7 != 2;
  if (v15)
  {

    v23 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016ReducedLuminanceI033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt1g5(v16);
  }

  else
  {
    v24 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(v16);
    if (v24)
    {
      v23 = *(v24 + 72);
    }

    else
    {
      v23 = 0;
    }
  }

  ResolvableStringResolutionContext.date.getter(v6);
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v33);
  v26 = [v32 attributedTextAndSize:0 forMaxWidth:v18 font:v20 smallFont:v22 upperCase:v23 & 1 luminanceReduced:isa now:v17];

  if (v26)
  {
    v27 = v34;
    AttributedString.init(_:)();
    v28 = 0;
  }

  else
  {
    v28 = 1;
    v27 = v34;
  }

  v29 = type metadata accessor for AttributedString();
  return (*(*(v29 - 8) + 56))(v27, v28, 1, v29);
}

uint64_t ResolvableCLKTextProvider.invalidationConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 updateFrequency];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = 0x3FF0000000000000;
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_12;
      }

      v4 = 0x3FA1111111111111;
    }

    *a1 = v4;
    *(a1 + 8) = 0;
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      *a1 = 64;
      type metadata accessor for ResolvableAttributeConfiguration(0);
      goto LABEL_13;
    }
  }

  else
  {
    *a1 = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 8) = 0;
  }

LABEL_12:
  type metadata accessor for ResolvableAttributeConfiguration(0);
LABEL_13:

  return swift_storeEnumTagMultiPayload();
}

id protocol witness for static ResolvableStringAttributeFamily.attribute.getter in conformance ResolvableCLKTextProvider()
{
  if (one-time initialization token for attribute != -1)
  {
    swift_once();
  }

  v1 = static ResolvableCLKTextProvider.attribute;

  return v1;
}

void ResolvableCLKTextProvider.FontStorage.resolve(resolver:)()
{
  v1 = type metadata accessor for AttributeContainer();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 8) & 1) == 0)
  {
    v5 = v0;
    v6 = *v0;
    type metadata accessor for AnySequence<Date>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(NSAttributedStringKey, Any)>, type metadata accessor for (NSAttributedStringKey, Any), MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18DDA6EB0;
    v8 = outlined copy of ResolvableCLKTextProvider.FontStorage(v6, 0);
    *(inited + 32) = MEMORY[0x193ABEC20](0x2E49557466697753, 0xEC000000746E6F46, v8);
    *(inited + 64) = &type metadata for Font;
    *(inited + 40) = v6;
    outlined copy of ResolvableCLKTextProvider.FontStorage(v6, 0);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _sypSgWOhTm_5(inited + 32, type metadata accessor for (NSAttributedStringKey, Any));
    AttributeContainer.init(_:)();
    PlatformAttributeResolver.platformAttributes(for:includeDefaultValueAttributes:)(v4, 1);
    v10 = v9;
    (*(v2 + 8))(v4, v1);
    if (one-time initialization token for kitFont == -1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      swift_once();
      if (*(v10 + 16))
      {
LABEL_4:
        v11 = specialized __RawDictionaryStorage.find<A>(_:)(static NSAttributedStringKey.kitFont);
        if (v12)
        {
          outlined init with copy of Any(*(v10 + 56) + 32 * v11, v14);
          outlined consume of ResolvableCLKTextProvider.FontStorage(v6, 0);

          outlined consume of ResolvableCLKTextProvider.FontStorage(v6, 0);
          outlined init with take of Any(v14, v15);
          outlined init with take of Any(v15, v14);
          type metadata accessor for CTFontRef(0);
          swift_dynamicCast();
          *v5 = v13;
          *(v5 + 8) = 1;
          return;
        }
      }
    }

    outlined consume of ResolvableCLKTextProvider.FontStorage(v6, 0);
  }
}

uint64_t ResolvableCLKTextProvider.FontStorage.encode(to:)(void *a1, void *a2, char a3)
{
  if (a3)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    a2;
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
    lazy protocol witness table accessor for type CodablePlatformFont and conformance CodablePlatformFont();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    outlined consume of ResolvableCLKTextProvider.FontStorage(a2, 1);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v6 = type metadata accessor for EncodingError();
    swift_allocError();
    v8 = v7;
    type metadata accessor for (Any, EncodingError.Context)(0);
    *(v8 + 24) = &type metadata for ResolvableCLKTextProvider.FontStorage;
    *v8 = a2;
    *(v8 + 8) = 0;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);

    dispatch thunk of Encoder.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B30], v6);
    return swift_willThrow();
  }
}

void *protocol witness for Decodable.init(from:) in conformance ResolvableCLKTextProvider.FontStorage@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = specialized ResolvableCLKTextProvider.FontStorage.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ResolvableCLKTextProvider.FontStorage()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x193AC11A0](1);
    type metadata accessor for CTFontRef(0);
    lazy protocol witness table accessor for type ResolvableAttributeConfiguration.Schedule and conformance ResolvableAttributeConfiguration.Schedule(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef, protocol conformance descriptor for CTFontRef);
    _CFObject.hash(into:)();
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    (*(*v1 + 120))(v4);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ResolvableCLKTextProvider.FontStorage(uint64_t a1)
{
  v3 = *v1;
  if (v1[1])
  {
    MEMORY[0x193AC11A0](1);
    type metadata accessor for CTFontRef(0);
    lazy protocol witness table accessor for type ResolvableAttributeConfiguration.Schedule and conformance ResolvableAttributeConfiguration.Schedule(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef, protocol conformance descriptor for CTFontRef);
    return _CFObject.hash(into:)();
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    return (*(*v3 + 120))(a1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ResolvableCLKTextProvider.FontStorage(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v3)
  {
    MEMORY[0x193AC11A0](1);
    type metadata accessor for CTFontRef(0);
    lazy protocol witness table accessor for type ResolvableAttributeConfiguration.Schedule and conformance ResolvableAttributeConfiguration.Schedule(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef, protocol conformance descriptor for CTFontRef);
    _CFObject.hash(into:)();
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    (*(*v2 + 120))(v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ResolvableCLKTextProvider.FontStorage(uint64_t *a1, uint64_t *a2)
{
  if ((a1[1] & 1) == 0)
  {
    if ((a2[1] & 1) == 0)
    {
      v2 = (*(**a1 + 112))(*a2);
      return v2 & 1;
    }

    return 0;
  }

  if ((a2[1] & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CTFontRef(0);
  lazy protocol witness table accessor for type ResolvableAttributeConfiguration.Schedule and conformance ResolvableAttributeConfiguration.Schedule(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef, protocol conformance descriptor for CTFontRef);
  v2 = static _CFObject.== infix(_:_:)();
  return v2 & 1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ResolvableCLKTextProvider.CodingKeys()
{
  v1 = 0x72656469766F7270;
  v2 = 1953394534;
  if (*v0 != 2)
  {
    v2 = 0x6E6F466C6C616D73;
  }

  if (*v0)
  {
    v1 = 0x6573614374786574;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResolvableCLKTextProvider.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ResolvableCLKTextProvider.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResolvableCLKTextProvider.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResolvableCLKTextProvider.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResolvableCLKTextProvider.init(from:)(void *a1@<X0>, CorePlatformClockKitTextProvider **a2@<X8>)
{
  v37 = a1;
  v33 = a2;
  type metadata accessor for KeyedDecodingContainer<ResolvableCLKTextProvider.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ResolvableCLKTextProvider.CodingKeys>, MEMORY[0x1E69E6F48]);
  v34 = *(v3 - 1);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v32 - v4;
  v5 = [objc_opt_self() allowableEncodedClass];
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = 0;
  v8 = *(v6 + 16);
  v9 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v10 = (v6 + 40 + 16 * v7);
  while (v8 != v7)
  {
    if (v7 >= *(v6 + 16))
    {
      __break(1u);
LABEL_21:

LABEL_22:
      v21 = v34;
      lazy protocol witness table accessor for type ResolvableCLKTextProvider.Error and conformance ResolvableCLKTextProvider.Error();
      swift_allocError();
      swift_willThrow();
      outlined consume of Data._Representation(v2, v5);
      _sypSgWOhTm_5(v43, type metadata accessor for Any?);
      (*(v21 + 8))(v38, v8);
LABEL_14:
      __swift_destroy_boxed_opaque_existential_1(v7);
      return;
    }

    ++v7;
    v11 = v10 + 2;
    v12 = *(v10 - 1);
    v2 = *v10;

    v13 = MEMORY[0x193ABEC20](v12, v2);
    v5 = NSClassFromString(v13);

    v10 = v11;
    if (v5)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      v2 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v9);
      }

      ObjCClassMetadata = swift_getObjCClassMetadata();
      *(v9 + 2) = v2;
      *&v9[8 * v15 + 32] = ObjCClassMetadata;
      goto LABEL_2;
    }
  }

  v7 = v37;
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  lazy protocol witness table accessor for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys();
  v17 = v38;
  v18 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {

    goto LABEL_14;
  }

  LOBYTE(v40) = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  v8 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v2 = v43[0];
  v5 = v43[1];
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x1E696ACD0);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  outlined init with copy of Any?(v43, &v40);
  if (!v42)
  {
    _sypSgWOhTm_5(&v40, type metadata accessor for Any?);
    goto LABEL_22;
  }

  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v9 = v39;
  v19 = CoreMakeCorePlatformClockKitTextProvider(v39);
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = v19;
  LOBYTE(v39) = 1;
  lazy protocol witness table accessor for type CodableTextCase and conformance CodableTextCase();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = v17;
  if (v40 == 2)
  {
    v23 = 2;
  }

  else
  {
    v23 = v40 & 1;
  }

  LOBYTE(v39) = 2;
  lazy protocol witness table accessor for type ResolvableCLKTextProvider.FontStorage and conformance ResolvableCLKTextProvider.FontStorage();
  v36 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v45 = v23;
  v32 = v40;
  v44 = v41;
  LOBYTE(v39) = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();

  outlined consume of Data._Representation(v2, v5);
  _sypSgWOhTm_5(v43, type metadata accessor for Any?);
  (*(v34 + 8))(v22, v8);
  v25 = v40;
  v26 = v7;
  v27 = v41;
  v28 = v44;
  v30 = v32;
  v29 = v33;
  *v33 = v20;
  *(v29 + 8) = v45;
  v29[2] = v30;
  *(v29 + 24) = v28;
  v29[4] = v25;
  *(v29 + 40) = v27;
  v31 = v20;
  outlined copy of ResolvableCLKTextProvider.FontStorage(v30, v28);
  outlined copy of ResolvableCLKTextProvider.FontStorage(v25, v27);
  __swift_destroy_boxed_opaque_existential_1(v26);

  outlined consume of ResolvableCLKTextProvider.FontStorage(v30, v28);
  outlined consume of ResolvableCLKTextProvider.FontStorage(v25, v27);
}

void ResolvableCLKTextProvider.encode(to:)(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  type metadata accessor for KeyedDecodingContainer<ResolvableCLKTextProvider.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ResolvableCLKTextProvider.CodingKeys>, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v29 = *(v1 + 16);
  v30 = *(v1 + 24);
  v27 = *(v1 + 32);
  v28 = *(v1 + 40);
  v11 = objc_opt_self();
  v12 = [v9 provider];
  v33 = 0;
  v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v33];
  swift_unknownObjectRelease();
  v14 = v33;
  if (v13)
  {
    v31 = v6;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v33 = v15;
    v34 = v17;
    v32 = 0;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v2)
    {
      (*(v31 + 8))(v8, v5);
      outlined consume of Data._Representation(v15, v17);
    }

    else
    {
      v19 = v10 & 1;
      if (v10 == 2)
      {
        v19 = 2;
      }

      LOBYTE(v33) = v19;
      v32 = 1;
      lazy protocol witness table accessor for type CodableTextCase and conformance CodableTextCase();
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      v20 = v31;
      v26 = v15;
      v21 = v29;
      v33 = v29;
      v22 = v30;
      LOBYTE(v34) = v30;
      v32 = 2;
      outlined copy of ResolvableCLKTextProvider.FontStorage(v29, v30);
      lazy protocol witness table accessor for type ResolvableCLKTextProvider.FontStorage and conformance ResolvableCLKTextProvider.FontStorage();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      outlined consume of ResolvableCLKTextProvider.FontStorage(v21, v22);
      v23 = v27;
      v33 = v27;
      v24 = v28;
      LOBYTE(v34) = v28;
      v32 = 3;
      outlined copy of ResolvableCLKTextProvider.FontStorage(v27, v28);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      outlined consume of Data._Representation(v26, 0);
      v25 = outlined consume of ResolvableCLKTextProvider.FontStorage(v23, v24);
      (*(v20 + 8))(v8, v5, v25);
    }
  }

  else
  {
    v18 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t specialized static ResolvableCLKTextProvider.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = a1[2];
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a2 + 8);
  v7 = a2[2];
  v8 = *(a2 + 24);
  v11 = a2[4];
  v12 = a1[4];
  v9 = *(a2 + 40);
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 != 2)
  {
    if (v6 == 2 || ((v6 ^ v2) & 1) != 0)
    {
      return 0;
    }

LABEL_7:
    if (v4)
    {
      if ((v8 & 1) == 0)
      {
        return 0;
      }

      type metadata accessor for CTFontRef(0);
      lazy protocol witness table accessor for type ResolvableAttributeConfiguration.Schedule and conformance ResolvableAttributeConfiguration.Schedule(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef, protocol conformance descriptor for CTFontRef);
      if ((static _CFObject.== infix(_:_:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v8 & 1) != 0 || ((*(*v3 + 112))(v7) & 1) == 0)
    {
      return 0;
    }

    if (v5)
    {
      if ((v9 & 1) == 0)
      {
        return 0;
      }

      type metadata accessor for CTFontRef(0);
      lazy protocol witness table accessor for type ResolvableAttributeConfiguration.Schedule and conformance ResolvableAttributeConfiguration.Schedule(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef, protocol conformance descriptor for CTFontRef);
      if ((static _CFObject.== infix(_:_:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v9 & 1) != 0 || ((*(*v12 + 112))(v11) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  if (v6 == 2)
  {
    goto LABEL_7;
  }

  return 0;
}

void lazy protocol witness table accessor for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableCLKTextProvider.CodingKeys, &type metadata for ResolvableCLKTextProvider.CodingKeys, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableCLKTextProvider.CodingKeys, &type metadata for ResolvableCLKTextProvider.CodingKeys, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableCLKTextProvider.CodingKeys, &type metadata for ResolvableCLKTextProvider.CodingKeys, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableCLKTextProvider.CodingKeys, &type metadata for ResolvableCLKTextProvider.CodingKeys, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys);
  }
}

void lazy protocol witness table accessor for type ResolvableCLKTextProvider.Error and conformance ResolvableCLKTextProvider.Error()
{
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider.Error and conformance ResolvableCLKTextProvider.Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableCLKTextProvider.Error, &type metadata for ResolvableCLKTextProvider.Error, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider.Error and conformance ResolvableCLKTextProvider.Error);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider.Error and conformance ResolvableCLKTextProvider.Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableCLKTextProvider.Error, &type metadata for ResolvableCLKTextProvider.Error, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider.Error and conformance ResolvableCLKTextProvider.Error);
  }
}

void lazy protocol witness table accessor for type CodableTextCase and conformance CodableTextCase()
{
  if (!lazy protocol witness table cache variable for type CodableTextCase and conformance CodableTextCase)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableTextCase, &type metadata for CodableTextCase, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableTextCase and conformance CodableTextCase);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableTextCase and conformance CodableTextCase)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableTextCase, &type metadata for CodableTextCase, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableTextCase and conformance CodableTextCase);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableTextCase and conformance CodableTextCase)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableTextCase, &type metadata for CodableTextCase, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableTextCase and conformance CodableTextCase);
  }
}

double outlined consume of ResolvableCLKTextProvider.FontStorage(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

void lazy protocol witness table accessor for type ResolvableCLKTextProvider.FontStorage and conformance ResolvableCLKTextProvider.FontStorage()
{
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider.FontStorage and conformance ResolvableCLKTextProvider.FontStorage)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableCLKTextProvider.FontStorage, &type metadata for ResolvableCLKTextProvider.FontStorage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider.FontStorage and conformance ResolvableCLKTextProvider.FontStorage);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider.FontStorage and conformance ResolvableCLKTextProvider.FontStorage)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableCLKTextProvider.FontStorage, &type metadata for ResolvableCLKTextProvider.FontStorage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider.FontStorage and conformance ResolvableCLKTextProvider.FontStorage);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider.FontStorage and conformance ResolvableCLKTextProvider.FontStorage)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableCLKTextProvider.FontStorage, &type metadata for ResolvableCLKTextProvider.FontStorage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider.FontStorage and conformance ResolvableCLKTextProvider.FontStorage);
  }
}

double outlined copy of ResolvableCLKTextProvider.FontStorage(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

void type metadata accessor for KeyedDecodingContainer<ResolvableCLKTextProvider.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys();
    v7 = a3(a1, &type metadata for ResolvableCLKTextProvider.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}