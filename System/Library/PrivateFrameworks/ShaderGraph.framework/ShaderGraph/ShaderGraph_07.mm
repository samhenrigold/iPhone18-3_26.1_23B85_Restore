uint64_t specialized Sequence.forEach(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 72);
    do
    {
      v3 = *(v2 + 8);
      v4 = v2[56];
      v6 = *(v2 + 5);
      v5 = *(v2 + 6);
      v8 = *(v2 + 3);
      v7 = *(v2 + 4);
      v10 = *(v2 + 1);
      v9 = *(v2 + 2);
      v11 = *v2;
      v13 = *(v2 - 2);
      v12 = *(v2 - 1);
      v15 = *(v2 - 4);
      v14 = *(v2 - 3);
      v16[0] = *(v2 - 5);
      v16[1] = v15;
      v16[2] = v14;
      v16[3] = v13;
      v16[4] = v12;
      v17 = v11;
      v18 = v10;
      v19[0] = v9;
      v19[1] = v8;
      v19[2] = v7;
      v19[3] = v6;
      v19[4] = v5;
      v20 = v4;
      v21 = v3;

      UserGraph.connect(_:to:)(v16, v19);

      v2 += 112;
      --v1;
    }

    while (v1);
  }

  return result;
}

{
  v2 = *(result + 16);
  if (v2)
  {
    for (i = (result + 40); ; i += 6)
    {
      v5 = *(i - 1);
      v4 = *i;
      v6 = i[1];
      v7 = *(i + 32);
      v8[0] = v5;
      v8[1] = v4;
      v8[2] = v6;
      v9 = *(i + 1);
      v10 = v7;
      outlined copy of NodePersonality(v5);

      closure #1 in UserGraph.transformRealityKitImageNodes<A>(_:paramType:textureAssignments:customUniformsType:)(v8);
      if (v1)
      {
        break;
      }

      outlined consume of NodePersonality(v5);

      if (!--v2)
      {
        return result;
      }
    }

    outlined consume of NodePersonality(v5);
  }

  return result;
}

{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 40;
    do
    {
      v3 = *(v2 + 32);
      v5 = *v2;
      v4 = *(v2 + 8);
      v6 = *(v2 - 8);
      v7[0] = v6;
      v7[1] = v5;
      v7[2] = v4;
      v8 = *(v2 + 16);
      v9 = v3;
      outlined copy of NodePersonality(v6);

      UserGraph.hoist(_:)(v7);
      outlined consume of NodePersonality(v6);

      v2 += 48;
      --v1;
    }

    while (v1);
  }

  return result;
}

{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    do
    {
      v3 = v2[5];
      v7[4] = v2[4];
      v7[5] = v3;
      v7[6] = v2[6];
      v4 = v2[1];
      v7[0] = *v2;
      v7[1] = v4;
      v5 = v2[3];
      v7[2] = v2[2];
      v7[3] = v5;
      outlined init with copy of Edge(v7, &v6);
      UserGraph.remove(_:)(v7);
      result = outlined destroy of Edge(v7);
      v2 += 7;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 56); ; i += 3)
  {
    v5 = *(i - 8);
    v24 = *(i - 24);
    v25 = v5;
    v6 = *(i + 2);
    v26 = *(i + 1);
    v27 = *i;
    v28 = v5;
    outlined init with copy of SGDataTypeGraph.PersonalityKind(&v28, v23);
    outlined init with copy of String(&v27, v23);
    outlined init with copy of SGDataTypeGraph.PersonalityKind(&v28, v23);
    outlined init with copy of String(&v27, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23[0] = *a2;
    v8 = v23[0];
    *a2 = 0x8000000000000000;
    specialized __RawDictionaryStorage.find<A>(_:)(&v24);
    v11 = *(v8 + 16);
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      break;
    }

    v15 = v10;
    if (*(v8 + 24) < v14)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, isUniquelyReferenced_nonNull_native);
      specialized __RawDictionaryStorage.find<A>(_:)(&v24);
      if ((v15 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v17 = v23[0];
      if (v15)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v22 = v9;
    specialized _NativeDictionary.copy()();
    v9 = v22;
    v17 = v23[0];
    if (v15)
    {
LABEL_3:
      *(v17[7] + 8 * v9) = v6;
      outlined destroy of SGDataTypeGraph.PersonalityKind(&v28);
      outlined destroy of String(&v27);
      goto LABEL_4;
    }

LABEL_11:
    v17[(v9 >> 6) + 8] |= 1 << v9;
    v18 = v17[6] + 40 * v9;
    v19 = v25;
    *v18 = v24;
    *(v18 + 16) = v19;
    *(v18 + 32) = v26;
    *(v17[7] + 8 * v9) = v6;
    v20 = v17[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v13)
    {
      goto LABEL_17;
    }

    v17[2] = v21;
LABEL_4:
    *a2 = v17;

    outlined destroy of SGDataTypeGraph.PersonalityKind(&v28);
    result = outlined destroy of String(&v27);
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GMR);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 40); ; i += 2)
  {
    v5 = *i;
    v6 = swift_unknownObjectRetain();
    createNodeDef(for:)(v6, v5, v34);
    v42 = v34[6];
    v43 = v34[7];
    v44 = v34[8];
    v45 = v35;
    v38 = v34[2];
    v39 = v34[3];
    v40 = v34[4];
    v41 = v34[5];
    v36 = v34[0];
    v37 = v34[1];
    if (getEnumTag for IOAttachment(&v36) == 1)
    {
      goto LABEL_4;
    }

    v52 = v42;
    v53 = v43;
    v54 = v44;
    v55 = v45;
    v48 = v38;
    v49 = v39;
    v50 = v40;
    v51 = v41;
    v46 = v36;
    v47 = v37;
    v7 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
    if (!v8)
    {
      outlined destroy of [Input](v34, &_s11ShaderGraph7NodeDefVSgMd, &_s11ShaderGraph7NodeDefVSgMR);
      goto LABEL_4;
    }

    v9 = v7;
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *a2;
    v12 = v56;
    *a2 = 0x8000000000000000;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
    v15 = v12[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v12[3] >= v18)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = v13;
        specialized _NativeDictionary.copy()();
        v13 = v22;
        v21 = v56;
        if (v19)
        {
LABEL_13:
          outlined assign with take of NodeDef(&v46, v21[7] + 152 * v13);

          *a2 = v21;
          goto LABEL_4;
        }

        goto LABEL_15;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_20;
      }
    }

    v21 = v56;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_15:
    v21[(v13 >> 6) + 8] |= 1 << v13;
    v23 = (v21[6] + 16 * v13);
    *v23 = v9;
    v23[1] = v10;
    v24 = v21[7] + 152 * v13;
    v25 = v47;
    *v24 = v46;
    *(v24 + 16) = v25;
    v26 = v48;
    v27 = v49;
    v28 = v51;
    *(v24 + 64) = v50;
    *(v24 + 80) = v28;
    *(v24 + 32) = v26;
    *(v24 + 48) = v27;
    v29 = v52;
    v30 = v53;
    v31 = v54;
    *(v24 + 144) = v55;
    *(v24 + 112) = v30;
    *(v24 + 128) = v31;
    *(v24 + 96) = v29;
    v32 = v21[2];
    v17 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v17)
    {
      goto LABEL_19;
    }

    v21[2] = v33;
    *a2 = v21;
LABEL_4:
    result = swift_unknownObjectRelease();
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v20 = *(result + 16);
  if (v20)
  {
    v2 = a2;
    v3 = 0;
    v21 = result + 32;
    while (1)
    {
      v4 = *(v21 + 16 * v3 + 8);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 8);
      swift_unknownObjectRetain();
      v7 = XMLNode.elements(forXPath:)(0x656465646F6E2F2ELL, 0xE900000000000066, ObjectType, v6);
      if (v23)
      {
        return swift_unknownObjectRelease();
      }

      specialized Sequence.forEach(_:)(v7, v2);
      v23 = 0;

      result = (*(v6 + 24))(ObjectType, v6);
      if (result)
      {
        break;
      }

      result = swift_unknownObjectRelease();
LABEL_4:
      if (++v3 == v20)
      {
        return result;
      }
    }

    v8 = result;
    v9 = 0;
    v10 = *(result + 16);
    v11 = MEMORY[0x277D84F90];
LABEL_8:
    v12 = 16 * v9 + 32;
    while (1)
    {
      if (v10 == v9)
      {

        v2 = a2;
        specialized Sequence.forEach(_:)(v11, a2);
        swift_unknownObjectRelease();

        goto LABEL_4;
      }

      if (v9 >= *(v8 + 16))
      {
        break;
      }

      ++v9;
      v13 = v12 + 16;
      v14 = *(v8 + v12);
      swift_getObjectType();
      result = swift_conformsToProtocol2();
      v12 = v13;
      if (result)
      {
        v12 = v13;
        if (v14)
        {
          v22 = result;
          swift_unknownObjectRetain();
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
            v11 = result;
          }

          v16 = v11[2];
          v15 = v11[3];
          v17 = v22;
          if (v16 >= v15 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v11);
            v11 = result;
            v17 = v22;
          }

          v11[2] = v16 + 1;
          v18 = &v11[2 * v16];
          v18[4] = v14;
          v18[5] = v17;
          goto LABEL_8;
        }
      }
    }

    __break(1u);
  }

  return result;
}

{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 40); ; i += 2)
  {
    v4 = *i;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v6 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
    if (v7)
    {
      break;
    }

    result = swift_unknownObjectRelease();
LABEL_4:
    if (!--v2)
    {
      return result;
    }
  }

  v8 = v7;
  v37 = v6;
  swift_unknownObjectRetain();
  v9._countAndFlagsBits = 1701869940;
  v9._object = 0xE400000000000000;
  v10 = XMLElement.getRequiredAttribute(_:)(v9);
  if (v11)
  {

    return swift_unknownObjectRelease_n();
  }

  if ((*(v4 + 16))(1836412517, 0xE400000000000000, ObjectType, v4) && (v13 = v12, v14 = swift_getObjectType(), (*(v13 + 32))(v14, v13), v16 = v15, swift_unknownObjectRelease(), v16))
  {
    lazy protocol witness table accessor for type String and conformance String();
    v17 = StringProtocol.components<A>(separatedBy:)();

    type metadata accessor for MaterialXDataType();
    v18 = swift_allocObject();
  }

  else
  {
    type metadata accessor for MaterialXDataType();
    v18 = swift_allocObject();
    v17 = 0;
  }

  v18[1]._object = v17;
  v18[2] = v10;
  swift_unknownObjectRelease();
  v18[1]._countAndFlagsBits = MEMORY[0x277D84F90];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *a2;
  *a2 = 0x8000000000000000;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v8);
  v23 = v20[2];
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (!v25)
  {
    v27 = v22;
    if (v20[3] >= v26)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v21;
        specialized _NativeDictionary.copy()();
        v21 = v31;
        v29 = v20;
        if (v27)
        {
          goto LABEL_17;
        }

        goto LABEL_19;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v8);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_26;
      }
    }

    v29 = v20;
    if (v27)
    {
LABEL_17:
      v30 = (v29[7] + 24 * v21);
      *v30 = v37;
      v30[1] = v8;
      v30[2] = v18;

LABEL_21:
      *a2 = v29;
      result = swift_unknownObjectRelease();
      goto LABEL_4;
    }

LABEL_19:
    v29[(v21 >> 6) + 8] |= 1 << v21;
    v32 = (v29[6] + 16 * v21);
    *v32 = v37;
    v32[1] = v8;
    v33 = (v29[7] + 24 * v21);
    *v33 = v37;
    v33[1] = v8;
    v33[2] = v18;
    v34 = v29[2];
    v25 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v25)
    {
      goto LABEL_25;
    }

    v29[2] = v35;
    goto LABEL_21;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 40); ; i += 2)
  {
    v4 = *i;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v6 = XMLNode.subscript.getter(0x6361667265746E69, 0xED0000656D616E65);
    if (v7)
    {
      break;
    }

    result = swift_unknownObjectRelease();
LABEL_4:
    if (!--v2)
    {
      return result;
    }
  }

  v8 = v7;
  v38 = v6;
  swift_unknownObjectRetain();
  v9._countAndFlagsBits = 1701869940;
  v9._object = 0xE400000000000000;
  v10 = XMLElement.getRequiredAttribute(_:)(v9);
  if (v11)
  {

    return swift_unknownObjectRelease_n();
  }

  if ((*(v4 + 16))(1836412517, 0xE400000000000000, ObjectType, v4) && (v13 = v12, v14 = swift_getObjectType(), (*(v13 + 32))(v14, v13), v16 = v15, swift_unknownObjectRelease(), v16))
  {
    lazy protocol witness table accessor for type String and conformance String();
    v17 = StringProtocol.components<A>(separatedBy:)();

    type metadata accessor for MaterialXDataType();
    v18 = swift_allocObject();
  }

  else
  {
    type metadata accessor for MaterialXDataType();
    v18 = swift_allocObject();
    v17 = 0;
  }

  v18[1]._object = v17;
  v18[2] = v10;
  swift_unknownObjectRelease();
  v18[1]._countAndFlagsBits = MEMORY[0x277D84F90];
  if (*(*a2 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v38, v8);
    if (v19)
    {

      swift_unknownObjectRelease();

      goto LABEL_4;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *a2;
  *a2 = 0x8000000000000000;
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v8);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (!v26)
  {
    v28 = v23;
    if (v21[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v32 = v22;
      specialized _NativeDictionary.copy()();
      v22 = v32;
      v30 = v21;
      if ((v28 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_20:
      v31 = (v30[7] + 24 * v22);
      *v31 = v38;
      v31[1] = v8;
      v31[2] = v18;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v8);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_29;
      }

LABEL_19:
      v30 = v21;
      if (v28)
      {
        goto LABEL_20;
      }

LABEL_22:
      v30[(v22 >> 6) + 8] |= 1 << v22;
      v33 = (v30[6] + 16 * v22);
      *v33 = v38;
      v33[1] = v8;
      v34 = (v30[7] + 24 * v22);
      *v34 = v38;
      v34[1] = v8;
      v34[2] = v18;
      v35 = v30[2];
      v26 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v26)
      {
        goto LABEL_28;
      }

      v30[2] = v36;
    }

    *a2 = v30;
    result = swift_unknownObjectRelease();
    goto LABEL_4;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v3 = v2;
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 40); ; i += 2)
    {
      v7 = *i;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v9 = XMLNode.elements(forXPath:)(0x7475706E692F2ELL, 0xE700000000000000, ObjectType, v7);
      if (v3)
      {
        break;
      }

      specialized Sequence.forEach(_:)(v9, a2);
      v3 = 0;
      swift_unknownObjectRelease();

      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v3 = a2;
  v4 = (result + 40);
  while (1)
  {
    v26 = v2;
    v7 = *(v4 - 1);
    v6 = *v4;
    v8 = v4[1];

    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v27 = *v3;
    *v3 = 0x8000000000000000;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    v13 = v10[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v10[3] < v16)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v19 = v27;
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v24 = v11;
    specialized _NativeDictionary.copy()();
    v11 = v24;
    v19 = v27;
    if (v17)
    {
LABEL_3:
      v5 = (v19[7] + 24 * v11);
      *v5 = v7;
      v5[1] = v6;
      v5[2] = v8;

      goto LABEL_4;
    }

LABEL_11:
    v19[(v11 >> 6) + 8] |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v7;
    v20[1] = v6;
    v21 = (v19[7] + 24 * v11);
    *v21 = v7;
    v21[1] = v6;
    v21[2] = v8;
    v22 = v19[2];
    v15 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v15)
    {
      goto LABEL_17;
    }

    v19[2] = v23;
LABEL_4:
    v4 += 8;
    v3 = a2;
    *a2 = v19;

    v2 = v26 - 1;
    if (v26 == 1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v3 = v2;
  v4 = *(result + 16);
  if (v4)
  {
    v6 = (result + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = swift_unknownObjectRetain();
      v10 = v3;
      collectNodeDefs(_:into:)(v9, v8, a2);
      if (v3)
      {

        v10 = 0;
      }

      collectGeomPropDefs(_:into:)(v7, v8, a2);
      v3 = v10;
      if (v10)
      {

        v3 = 0;
      }

      result = swift_unknownObjectRelease();
      v6 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

__n128 mapInternalGraphToUserGraph(_:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[3];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  v46 = a1;
  if (v3)
  {
    *&v34[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = *&v34[0];
    v5 = (v2 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;

      v9 = specialized SGDataType.materialXDataType.getter(v8);
      *&v34[0] = v4;
      v10 = *(v4 + 16);
      v11 = *(v4 + 24);

      if (v10 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v10 + 1, 1);
        v4 = *&v34[0];
      }

      v5 += 4;
      *(v4 + 16) = v10 + 1;
      v12 = (v4 + 24 * v10);
      v12[4] = v6;
      v12[5] = v7;
      v12[6] = v9;
      --v3;
    }

    while (v3);
    v13 = v46;
  }

  else
  {
    v13 = a1;
  }

  v14 = v13[4];
  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    *&v34[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v16 = *&v34[0];
    v17 = (v14 + 48);
    do
    {
      v18 = *(v17 - 2);
      v19 = *(v17 - 1);
      v20 = *v17;

      v21 = specialized SGDataType.materialXDataType.getter(v20);
      *&v34[0] = v16;
      v22 = *(v16 + 16);
      v23 = *(v16 + 24);

      if (v22 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v22 + 1, 1);
        v16 = *&v34[0];
      }

      v17 += 3;
      *(v16 + 16) = v22 + 1;
      v24 = (v16 + 24 * v22);
      v24[4] = v18;
      v24[5] = v19;
      v24[6] = v21;
      --v15;
    }

    while (v15);
    v13 = v46;
  }

  v25 = v13[1];
  v26 = v13[2];

  specialized UserGraph.init(id:label:inputs:outputs:)(0, v25, v26, v4, v16, &v36);
  mapGraph(_:into:)(v13, &v36);
  if (v33)
  {
    v34[8] = v44;
    v35[0] = v45[0];
    *(v35 + 9) = *(v45 + 9);
    v34[4] = v40;
    v34[5] = v41;
    v34[6] = v42;
    v34[7] = v43;
    v34[0] = v36;
    v34[1] = v37;
    v34[2] = v38;
    v34[3] = v39;
    outlined destroy of UserGraph(v34);
  }

  else
  {
    v28 = v45[0];
    *(a2 + 128) = v44;
    *(a2 + 144) = v28;
    *(a2 + 153) = *(v45 + 9);
    v29 = v41;
    *(a2 + 64) = v40;
    *(a2 + 80) = v29;
    v30 = v43;
    *(a2 + 96) = v42;
    *(a2 + 112) = v30;
    v31 = v37;
    *a2 = v36;
    *(a2 + 16) = v31;
    result = v39;
    *(a2 + 32) = v38;
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t SGDataType.materialXDataType.getter(uint64_t a1)
{
  specialized SGDataType.materialXDataType.getter(a1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SGGraph.replaceDeprecatedAndRedundantNodes()()
{
  v1 = specialized SGGraph.deprecationMap()();
  if (!v0)
  {
    v2 = v1;
    SGGraph.topologicalSort()(v18);
    v4 = v18[0];
    v3 = v18[1];
    v20 = v18[0];
    v5 = v18[3];

    v19 = v5;
    outlined destroy of [Input](&v19, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);
    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = (v4 + 64);
      while (v7 < *(v4 + 16))
      {
        v10 = *(v8 - 3);
        v11 = *v8;
        v15[0] = *(v8 - 4);
        v9 = v15[0];
        v15[1] = v10;
        v16 = *(v8 - 1);
        v17 = v11;
        v12 = v16;
        v13 = v9;
        v14 = v10;
        closure #1 in SGGraph.replaceDeprecatedAndRedundantNodes()(v15, v2);

        ++v7;
        v8 += 40;
        if (v6 == v7)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
      outlined destroy of [Input](&v20, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);
    }
  }
}

double SGGraph.internalGraph(_:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v3;
  v12 = 0;
  v7 = v2;

  specialized SGDataTypeGraph.init(_:idSequence:constants:)(v7, &v12, a1, v10);
  if (!v4)
  {
    v9 = v10[1];
    *a2 = v10[0];
    a2[1] = v9;
    result = *&v11;
    a2[2] = v11;
  }

  return result;
}

uint64_t SGInput.legacyInput()(void *a1, uint64_t *a2)
{
  v3 = *(v2 + *a1);
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);

  specialized SGDataType.materialXDataType.getter(v5);

  return v3;
}

uint64_t specialized toString<A>(_:)(double a1)
{
  v1 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v2 = v23;
  v4 = *(v23 + 16);
  v3 = *(v23 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1);
    v2 = v23;
    v3 = *(v23 + 24);
    v5 = v3 >> 1;
  }

  *(v2 + 16) = v6;
  v7 = HIDWORD(a1);
  *(v2 + 4 * v4 + 32) = LODWORD(a1);
  v8 = v4 + 2;
  if (v5 < v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v8, 1);
    v7 = HIDWORD(a1);
    v2 = v23;
  }

  *(v2 + 16) = v8;
  *(v2 + 4 * v6 + 32) = v7;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  v9 = 32;
  v10 = v1;
  do
  {
    v11 = String.init<A>(describing:)();
    v24 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      v16 = v11;
      v17 = v12;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v12 = v17;
      v11 = v16;
      v10 = v24;
    }

    *(v10 + 16) = v14 + 1;
    v15 = v10 + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
    v9 += 4;
    --v8;
  }

  while (v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  MEMORY[0x266771550](v18, v20);

  MEMORY[0x266771550](125, 0xE100000000000000);

  return 123;
}

{
  v1 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v2 = v23;
  v4 = *(v23 + 16);
  v3 = *(v23 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1);
    v2 = v23;
    v3 = *(v23 + 24);
    v5 = v3 >> 1;
  }

  *(v2 + 16) = v6;
  v7 = HIDWORD(a1);
  *(v2 + 4 * v4 + 32) = LODWORD(a1);
  v8 = v4 + 2;
  if (v5 < v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v8, 1);
    v7 = HIDWORD(a1);
    v2 = v23;
  }

  *(v2 + 16) = v8;
  *(v2 + 4 * v6 + 32) = v7;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  v9 = 32;
  v10 = v1;
  do
  {
    v11 = String.init<A>(describing:)();
    v24 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      v16 = v11;
      v17 = v12;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v12 = v17;
      v11 = v16;
      v10 = v24;
    }

    *(v10 + 16) = v14 + 1;
    v15 = v10 + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
    v9 += 4;
    --v8;
  }

  while (v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  MEMORY[0x266771550](v18, v20);

  MEMORY[0x266771550](125, 0xE100000000000000);

  return 123;
}

{
  v1 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v2 = v26;
  v4 = *(v26 + 16);
  v3 = *(v26 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1);
    v2 = v26;
    v3 = *(v26 + 24);
    v5 = v3 >> 1;
  }

  *(v2 + 16) = v6;
  v7 = a1;
  *(v2 + 2 * v4 + 32) = LOWORD(a1);
  v8 = v4 + 2;
  if (v5 < v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v8, 1);
    v7 = a1;
    v2 = v26;
  }

  *(v2 + 16) = v8;
  *(v2 + 2 * v6 + 32) = WORD1(v7);
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
    WORD2(v7) = WORD2(a1);
  }

  *(v26 + 16) = v11;
  *(v26 + 2 * v10 + 32) = WORD2(v7);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 + 1, 0);
  v12 = v1;
  v13 = 32;
  do
  {
    v14 = String.init<A>(describing:)();
    v27 = v12;
    v17 = *(v12 + 16);
    v16 = *(v12 + 24);
    if (v17 >= v16 >> 1)
    {
      v19 = v14;
      v20 = v15;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      v15 = v20;
      v14 = v19;
      v12 = v27;
    }

    *(v12 + 16) = v17 + 1;
    v18 = v12 + 16 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;
    v13 += 2;
    --v11;
  }

  while (v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v21 = BidirectionalCollection<>.joined(separator:)();
  v23 = v22;

  MEMORY[0x266771550](v21, v23);

  MEMORY[0x266771550](125, 0xE100000000000000);

  return 123;
}

{
  v1 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v2 = v29;
  v4 = *(v29 + 16);
  v3 = *(v29 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1);
    v2 = v29;
    v3 = *(v29 + 24);
    v5 = v3 >> 1;
  }

  *(v2 + 16) = v6;
  v7 = a1;
  *(v2 + 2 * v4 + 32) = LOWORD(a1);
  v8 = v4 + 2;
  if (v5 < v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v8, 1);
    v7 = a1;
    v2 = v29;
  }

  *(v2 + 16) = v8;
  *(v2 + 2 * v6 + 32) = WORD1(v7);
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
    HIDWORD(v7) = HIDWORD(a1);
  }

  v12 = v29;
  *(v29 + 16) = v11;
  *(v29 + 2 * v10 + 32) = WORD2(v7);
  v13 = *(v29 + 24);
  v14 = v10 + 2;
  if (v14 > (v13 >> 1))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14, 1);
    HIWORD(v7) = HIWORD(a1);
    v12 = v29;
  }

  *(v12 + 16) = v14;
  *(v12 + 2 * v11 + 32) = HIWORD(v7);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  v15 = 32;
  v16 = v1;
  do
  {
    v17 = String.init<A>(describing:)();
    v30 = v16;
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    if (v20 >= v19 >> 1)
    {
      v22 = v17;
      v23 = v18;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
      v18 = v23;
      v17 = v22;
      v16 = v30;
    }

    *(v16 + 16) = v20 + 1;
    v21 = v16 + 16 * v20;
    *(v21 + 32) = v17;
    *(v21 + 40) = v18;
    v15 += 2;
    --v14;
  }

  while (v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v24 = BidirectionalCollection<>.joined(separator:)();
  v26 = v25;

  MEMORY[0x266771550](v24, v26);

  MEMORY[0x266771550](125, 0xE100000000000000);

  return 123;
}

uint64_t specialized toString<A>(_:)(__n128 a1)
{
  v1 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v2 = v26;
  v4 = *(v26 + 16);
  v3 = *(v26 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1);
    v2 = v26;
    v3 = *(v26 + 24);
    v5 = v3 >> 1;
  }

  *(v2 + 16) = v6;
  v7 = a1;
  *(v2 + 4 * v4 + 32) = a1.n128_u32[0];
  v8 = v4 + 2;
  if (v5 < v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v8, 1);
    v7 = a1;
    v2 = v26;
  }

  *(v2 + 16) = v8;
  *(v2 + 4 * v6 + 32) = v7.n128_u32[1];
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
    v7.n128_u32[2] = a1.n128_u32[2];
  }

  *(v26 + 16) = v11;
  *(v26 + 4 * v10 + 32) = v7.n128_u32[2];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 + 1, 0);
  v12 = v1;
  v13 = 32;
  do
  {
    v14 = String.init<A>(describing:)();
    v27 = v12;
    v17 = *(v12 + 16);
    v16 = *(v12 + 24);
    if (v17 >= v16 >> 1)
    {
      v19 = v14;
      v20 = v15;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      v15 = v20;
      v14 = v19;
      v12 = v27;
    }

    *(v12 + 16) = v17 + 1;
    v18 = v12 + 16 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;
    v13 += 4;
    --v11;
  }

  while (v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v21 = BidirectionalCollection<>.joined(separator:)();
  v23 = v22;

  MEMORY[0x266771550](v21, v23);

  MEMORY[0x266771550](125, 0xE100000000000000);

  return 123;
}

{
  v1 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v2 = v29;
  v4 = *(v29 + 16);
  v3 = *(v29 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1);
    v2 = v29;
    v3 = *(v29 + 24);
    v5 = v3 >> 1;
  }

  *(v2 + 16) = v6;
  v7 = a1;
  *(v2 + 4 * v4 + 32) = a1.n128_u32[0];
  v8 = v4 + 2;
  if (v5 < v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v8, 1);
    v7 = a1;
    v2 = v29;
  }

  *(v2 + 16) = v8;
  *(v2 + 4 * v6 + 32) = v7.n128_u32[1];
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
    v7.n128_u64[1] = a1.n128_u64[1];
  }

  v12 = v29;
  *(v29 + 16) = v11;
  *(v29 + 4 * v10 + 32) = v7.n128_u32[2];
  v13 = *(v29 + 24);
  v14 = v10 + 2;
  if (v14 > (v13 >> 1))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14, 1);
    v7.n128_u32[3] = a1.n128_u32[3];
    v12 = v29;
  }

  *(v12 + 16) = v14;
  *(v12 + 4 * v11 + 32) = v7.n128_u32[3];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  v15 = 32;
  v16 = v1;
  do
  {
    v17 = String.init<A>(describing:)();
    v30 = v16;
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    if (v20 >= v19 >> 1)
    {
      v22 = v17;
      v23 = v18;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
      v18 = v23;
      v17 = v22;
      v16 = v30;
    }

    *(v16 + 16) = v20 + 1;
    v21 = v16 + 16 * v20;
    *(v21 + 32) = v17;
    *(v21 + 40) = v18;
    v15 += 4;
    --v14;
  }

  while (v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v24 = BidirectionalCollection<>.joined(separator:)();
  v26 = v25;

  MEMORY[0x266771550](v24, v26);

  MEMORY[0x266771550](125, 0xE100000000000000);

  return 123;
}

{
  v1 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v2 = v26;
  v4 = *(v26 + 16);
  v3 = *(v26 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1);
    v2 = v26;
    v3 = *(v26 + 24);
    v5 = v3 >> 1;
  }

  *(v2 + 16) = v6;
  v7 = a1;
  *(v2 + 4 * v4 + 32) = a1.n128_u32[0];
  v8 = v4 + 2;
  if (v5 < v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v8, 1);
    v7 = a1;
    v2 = v26;
  }

  *(v2 + 16) = v8;
  *(v2 + 4 * v6 + 32) = v7.n128_u32[1];
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
    v7.n128_u32[2] = a1.n128_u32[2];
  }

  *(v26 + 16) = v11;
  *(v26 + 4 * v10 + 32) = v7.n128_u32[2];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 + 1, 0);
  v12 = v1;
  v13 = 32;
  do
  {
    v14 = String.init<A>(describing:)();
    v27 = v12;
    v17 = *(v12 + 16);
    v16 = *(v12 + 24);
    if (v17 >= v16 >> 1)
    {
      v19 = v14;
      v20 = v15;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      v15 = v20;
      v14 = v19;
      v12 = v27;
    }

    *(v12 + 16) = v17 + 1;
    v18 = v12 + 16 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;
    v13 += 4;
    --v11;
  }

  while (v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v21 = BidirectionalCollection<>.joined(separator:)();
  v23 = v22;

  MEMORY[0x266771550](v21, v23);

  MEMORY[0x266771550](125, 0xE100000000000000);

  return 123;
}

{
  v1 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v2 = v29;
  v4 = *(v29 + 16);
  v3 = *(v29 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1);
    v2 = v29;
    v3 = *(v29 + 24);
    v5 = v3 >> 1;
  }

  *(v2 + 16) = v6;
  v7 = a1;
  *(v2 + 4 * v4 + 32) = a1.n128_u32[0];
  v8 = v4 + 2;
  if (v5 < v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v8, 1);
    v7 = a1;
    v2 = v29;
  }

  *(v2 + 16) = v8;
  *(v2 + 4 * v6 + 32) = v7.n128_u32[1];
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
    v7.n128_u64[1] = a1.n128_u64[1];
  }

  v12 = v29;
  *(v29 + 16) = v11;
  *(v29 + 4 * v10 + 32) = v7.n128_u32[2];
  v13 = *(v29 + 24);
  v14 = v10 + 2;
  if (v14 > (v13 >> 1))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14, 1);
    v7.n128_u32[3] = a1.n128_u32[3];
    v12 = v29;
  }

  *(v12 + 16) = v14;
  *(v12 + 4 * v11 + 32) = v7.n128_u32[3];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  v15 = 32;
  v16 = v1;
  do
  {
    v17 = String.init<A>(describing:)();
    v30 = v16;
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    if (v20 >= v19 >> 1)
    {
      v22 = v17;
      v23 = v18;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
      v18 = v23;
      v17 = v22;
      v16 = v30;
    }

    *(v16 + 16) = v20 + 1;
    v21 = v16 + 16 * v20;
    *(v21 + 32) = v17;
    *(v21 + 40) = v18;
    v15 += 4;
    --v14;
  }

  while (v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v24 = BidirectionalCollection<>.joined(separator:)();
  v26 = v25;

  MEMORY[0x266771550](v24, v26);

  MEMORY[0x266771550](125, 0xE100000000000000);

  return 123;
}

uint64_t specialized toString<A>(_:)(int a1)
{
  v2 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v3 = v22;
  v5 = *(v22 + 16);
  v4 = *(v22 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
    v3 = v22;
    v4 = *(v22 + 24);
    v6 = v4 >> 1;
  }

  *(v3 + 16) = v7;
  *(v3 + 2 * v5 + 32) = a1;
  v8 = v5 + 2;
  if (v6 < v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v8, 1);
    v3 = v22;
  }

  *(v3 + 16) = v8;
  *(v3 + 2 * v7 + 32) = HIWORD(a1);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  v9 = 32;
  v10 = v2;
  do
  {
    v11 = String.init<A>(describing:)();
    v23 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      v16 = v11;
      v17 = v12;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v12 = v17;
      v11 = v16;
      v10 = v23;
    }

    *(v10 + 16) = v14 + 1;
    v15 = v10 + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
    v9 += 2;
    --v8;
  }

  while (v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  MEMORY[0x266771550](v18, v20);

  MEMORY[0x266771550](125, 0xE100000000000000);

  return 123;
}

uint64_t SGDataTypeStorage.metalLiteralValue(type:)(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 64))
  {
    case 1:
      LOBYTE(v153.value._countAndFlagsBits) = *v1;
      return dispatch thunk of CustomStringConvertible.description.getter();
    case 2:
    case 3:
      LODWORD(v153.value._countAndFlagsBits) = vmovn_s16(vzip1q_s8(v2, v2)).u32[0];
      return dispatch thunk of CustomStringConvertible.description.getter();
    case 4:
      return Float16.description.getter();
    case 5:
      return Float.description.getter();
    case 6:
      v69 = *v1;
      type metadata accessor for MetalDataType.Enum();
      v71 = a1;
      v72 = swift_dynamicCastClass();
      if (v72)
      {
        v73 = v72;

        outlined init with copy of SGDataTypeStorage(v1, &v153);

        v74 = MetalDataType.convertEnumConstant(_:)(v69);
        if (v74.value._object)
        {
          outlined destroy of SGDataTypeStorage(v1);
          v153 = v74;
          lazy protocol witness table accessor for type String and conformance String();
          if (StringProtocol.contains<A>(_:)())
          {

            return v74.value._countAndFlagsBits;
          }

          else
          {
            v137 = *(v73 + 24);
            v138 = *(v73 + 32);

            v153.value._countAndFlagsBits = v137;
            v153.value._object = v138;

            MEMORY[0x266771550](14906, 0xE200000000000000);

            MEMORY[0x266771550](v74.value._countAndFlagsBits, v74.value._object);

LABEL_59:

            return v153.value._countAndFlagsBits;
          }
        }

        else
        {

          v153.value._countAndFlagsBits = 0;
          v153.value._object = 0xE000000000000000;
          _StringGuts.grow(_:)(59);
          MEMORY[0x266771550](0xD000000000000018, 0x8000000265F300B0);
          MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F300D0);
          MEMORY[0x266771550](v69._countAndFlagsBits, v69._object);
          outlined destroy of SGDataTypeStorage(v1);
          v132 = MEMORY[0x266771550](0x797420726F662027, 0xEC00000027206570);
          v133 = (*(*v71 + 136))(v132);
          MEMORY[0x266771550](v133);

          MEMORY[0x266771550](0x707974206F742027, 0xEB00000000272065);
          MEMORY[0x266771550](*(v73 + 24), *(v73 + 32));
          MEMORY[0x266771550](41, 0xE100000000000000);
          MEMORY[0x266771550](0x283A6C6174656DLL, 0xE700000000000000);

          MEMORY[0x266771550](39, 0xE100000000000000);
          countAndFlagsBits = v153.value._countAndFlagsBits;
          object = v153.value._object;
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          swift_allocError();
          *v136 = 25;
          *(v136 + 8) = countAndFlagsBits;
          *(v136 + 16) = object;
          swift_willThrow();
        }
      }

      else
      {

        return v69._countAndFlagsBits;
      }

    case 7:
      return specialized toString<A>(_:)(v2.n128_f64[0]);
    case 8:
      return specialized toString<A>(_:)(v2);
    case 9:
      return specialized toString<A>(_:)(v2);
    case 0xA:
      v152 = *v1;
      v84 = MEMORY[0x277D84F90];
      v153.value._countAndFlagsBits = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
      v85 = v153.value._countAndFlagsBits;
      v87 = *(v153.value._countAndFlagsBits + 16);
      v86 = *(v153.value._countAndFlagsBits + 24);
      v88 = v86 >> 1;
      v89 = v87 + 1;
      if (v86 >> 1 <= v87)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1);
        v85 = v153.value._countAndFlagsBits;
        v86 = *(v153.value._countAndFlagsBits + 24);
        v88 = v86 >> 1;
      }

      v90 = v152.n128_u16[1];
      *(v85 + 16) = v89;
      *(v85 + 2 * v87 + 32) = v152.n128_u16[0];
      v91 = v87 + 2;
      if (v88 < v91)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v91, 1);
        v90 = v152.n128_u16[1];
        v85 = v153.value._countAndFlagsBits;
      }

      *(v85 + 16) = v91;
      *(v85 + 2 * v89 + 32) = v90;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v91, 0);
      v92 = 32;
      v93 = v84;
      do
      {
        v94 = Float16.description.getter();
        v153.value._countAndFlagsBits = v93;
        v97 = *(v93 + 16);
        v96 = *(v93 + 24);
        if (v97 >= v96 >> 1)
        {
          v99 = v94;
          v100 = v95;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1);
          v95 = v100;
          v94 = v99;
          v93 = v153.value._countAndFlagsBits;
        }

        *(v93 + 16) = v97 + 1;
        v98 = v93 + 16 * v97;
        *(v98 + 32) = v94;
        *(v98 + 40) = v95;
        v92 += 2;
        --v91;
      }

      while (v91);
      goto LABEL_57;
    case 0xB:
      v146 = *v1;
      v7 = MEMORY[0x277D84F90];
      v153.value._countAndFlagsBits = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
      v8 = v153.value._countAndFlagsBits;
      v10 = *(v153.value._countAndFlagsBits + 16);
      v9 = *(v153.value._countAndFlagsBits + 24);
      v11 = v9 >> 1;
      v12 = v10 + 1;
      if (v9 >> 1 <= v10)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v8 = v153.value._countAndFlagsBits;
        v9 = *(v153.value._countAndFlagsBits + 24);
        v11 = v9 >> 1;
      }

      v13 = v146.n128_u64[0];
      *(v8 + 16) = v12;
      *(v8 + 2 * v10 + 32) = v146.n128_u16[0];
      v14 = v10 + 2;
      if (v11 < v14)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v14, 1);
        v13 = v146.n128_u64[0];
        v8 = v153.value._countAndFlagsBits;
      }

      *(v8 + 16) = v14;
      *(v8 + 2 * v12 + 32) = WORD1(v13);
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        WORD2(v13) = v146.n128_u16[2];
      }

      v18 = v153.value._countAndFlagsBits;
      *(v153.value._countAndFlagsBits + 16) = v17;
      *(v18 + 2 * v16 + 32) = WORD2(v13);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 + 1, 0);
      v19 = v7;
      v20 = 32;
      do
      {
        v21 = Float16.description.getter();
        v153.value._countAndFlagsBits = v19;
        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        if (v24 >= v23 >> 1)
        {
          v26 = v21;
          v27 = v22;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
          v22 = v27;
          v21 = v26;
          v19 = v153.value._countAndFlagsBits;
        }

        *(v19 + 16) = v24 + 1;
        v25 = v19 + 16 * v24;
        *(v25 + 32) = v21;
        *(v25 + 40) = v22;
        v20 += 2;
        --v17;
      }

      while (v17);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v28 = BidirectionalCollection<>.joined(separator:)();
      v30 = v29;

      v153.value._countAndFlagsBits = 123;
      v153.value._object = 0xE100000000000000;
      MEMORY[0x266771550](v28, v30);
      goto LABEL_58;
    case 0xC:
      v147 = *v1;
      v31 = MEMORY[0x277D84F90];
      v153.value._countAndFlagsBits = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
      v32 = v153.value._countAndFlagsBits;
      v34 = *(v153.value._countAndFlagsBits + 16);
      v33 = *(v153.value._countAndFlagsBits + 24);
      v35 = v33 >> 1;
      v36 = v34 + 1;
      if (v33 >> 1 <= v34)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
        v32 = v153.value._countAndFlagsBits;
        v33 = *(v153.value._countAndFlagsBits + 24);
        v35 = v33 >> 1;
      }

      v37 = v147.n128_u64[0];
      *(v32 + 16) = v36;
      *(v32 + 2 * v34 + 32) = v147.n128_u16[0];
      v38 = v34 + 2;
      if (v35 < v38)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v38, 1);
        v37 = v147.n128_u64[0];
        v32 = v153.value._countAndFlagsBits;
      }

      *(v32 + 16) = v38;
      *(v32 + 2 * v36 + 32) = WORD1(v37);
      v40 = *(v32 + 16);
      v39 = *(v32 + 24);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
        HIDWORD(v37) = v147.n128_u32[1];
      }

      v42 = v153.value._countAndFlagsBits;
      *(v153.value._countAndFlagsBits + 16) = v41;
      *(v42 + 2 * v40 + 32) = WORD2(v37);
      v43 = *(v42 + 24);
      v44 = v40 + 2;
      if (v44 > (v43 >> 1))
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44, 1);
        HIWORD(v37) = v147.n128_u16[3];
        v42 = v153.value._countAndFlagsBits;
      }

      *(v42 + 16) = v44;
      *(v42 + 2 * v41 + 32) = HIWORD(v37);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44, 0);
      v45 = 32;
      v46 = v31;
      do
      {
        v47 = Float16.description.getter();
        v153.value._countAndFlagsBits = v46;
        v50 = *(v46 + 16);
        v49 = *(v46 + 24);
        if (v50 >= v49 >> 1)
        {
          v52 = v47;
          v53 = v48;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
          v48 = v53;
          v47 = v52;
          v46 = v153.value._countAndFlagsBits;
        }

        *(v46 + 16) = v50 + 1;
        v51 = v46 + 16 * v50;
        *(v51 + 32) = v47;
        *(v51 + 40) = v48;
        v45 += 2;
        --v44;
      }

      while (v44);
LABEL_57:

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v101 = BidirectionalCollection<>.joined(separator:)();
      v103 = v102;

      v153.value._countAndFlagsBits = 123;
      v153.value._object = 0xE100000000000000;
      MEMORY[0x266771550](v101, v103);
      goto LABEL_58;
    case 0xD:
      return specialized toString<A>(_:)(v2.n128_f64[0]);
    case 0xE:
      return specialized toString<A>(_:)(v2);
    case 0xF:
      return specialized toString<A>(_:)(v2);
    case 0x10:
      *&v145 = vextq_s8(v2, v2, 8uLL).u64[0];
      v4 = specialized toString<A>(_:)(v2.n128_f64[0]);
      MEMORY[0x266771550](v4);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v5 = specialized toString<A>(_:)(v145);
      goto LABEL_48;
    case 0x11:
      v141 = *(v1 + 32);
      v148 = *(v1 + 16);
      v54 = specialized toString<A>(_:)(v2);
      MEMORY[0x266771550](v54);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v55 = specialized toString<A>(_:)(v148);
      v57 = v56;

      MEMORY[0x266771550](v55, v57);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v5 = specialized toString<A>(_:)(v141);
      goto LABEL_48;
    case 0x12:
      v140 = *(v1 + 48);
      v144 = *(v1 + 32);
      v151 = *(v1 + 16);
      v75 = specialized toString<A>(_:)(v2);
      MEMORY[0x266771550](v75);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v76 = specialized toString<A>(_:)(v151);
      v78 = v77;

      MEMORY[0x266771550](v76, v78);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v79 = specialized toString<A>(_:)(v144);
      v81 = v80;

      MEMORY[0x266771550](v79, v81);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v5 = specialized toString<A>(_:)(v140);
      goto LABEL_48;
    case 0x13:
      v115 = HIDWORD(*v1);
      v116 = specialized toString<A>(_:)(v2.n128_i32[0]);
      MEMORY[0x266771550](v116);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v117 = specialized toString<A>(_:)(v115);
      v119 = v118;
      v153.value._countAndFlagsBits = 123;
      v153.value._object = 0xE100000000000000;

      MEMORY[0x266771550](v117, v119);

      goto LABEL_58;
    case 0x14:
      *&v142 = vextq_s8(v2, v2, 8uLL).u64[0];
      v149 = *(v1 + 16);
      v58 = specialized toString<A>(_:)(v2.n128_f64[0]);
      MEMORY[0x266771550](v58);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v59 = specialized toString<A>(_:)(v142);
      v61 = v60;

      MEMORY[0x266771550](v59, v61);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v5 = specialized toString<A>(_:)(v149);
      goto LABEL_48;
    case 0x15:
      *&v139 = vextq_s8(v2, v2, 8uLL).u64[0];
      *&v143 = vextq_s8(*(v1 + 16), *(v1 + 16), 8uLL).u64[0];
      v150 = *(v1 + 16);
      v62 = specialized toString<A>(_:)(v2.n128_f64[0]);
      MEMORY[0x266771550](v62);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v63 = specialized toString<A>(_:)(v139);
      v65 = v64;

      MEMORY[0x266771550](v63, v65);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v66 = specialized toString<A>(_:)(v150);
      v68 = v67;

      MEMORY[0x266771550](v66, v68);

      MEMORY[0x266771550](8236, 0xE200000000000000);

      v5 = specialized toString<A>(_:)(v143);
LABEL_48:
      v82 = v5;
      v83 = v6;
      v153.value._countAndFlagsBits = 123;
      v153.value._object = 0xE100000000000000;

      MEMORY[0x266771550](v82, v83);

LABEL_58:

      MEMORY[0x266771550](125, 0xE100000000000000);
      goto LABEL_59;
    case 0x16:
      v104 = CGColorRef.components.getter();
      if (!v104)
      {
        goto LABEL_77;
      }

      v105 = *(v104 + 16);
      if (!v105)
      {
        goto LABEL_78;
      }

      v153.value._countAndFlagsBits = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v105, 0);
      v106 = 32;
      v107 = v153.value._countAndFlagsBits;
      do
      {
        v108 = Double.description.getter();
        v153.value._countAndFlagsBits = v107;
        v111 = *(v107 + 16);
        v110 = *(v107 + 24);
        if (v111 >= v110 >> 1)
        {
          v113 = v108;
          v114 = v109;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1);
          v109 = v114;
          v108 = v113;
          v107 = v153.value._countAndFlagsBits;
        }

        *(v107 + 16) = v111 + 1;
        v112 = v107 + 16 * v111;
        *(v112 + 32) = v108;
        *(v112 + 40) = v109;
        v106 += 8;
        --v105;
      }

      while (v105);
      goto LABEL_76;
    case 0x17:
      v120 = CGColorRef.components.getter();
      if (v120)
      {
        v121 = *(v120 + 16);
        if (v121)
        {
          v153.value._countAndFlagsBits = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v121, 0);
          v122 = 32;
          v107 = v153.value._countAndFlagsBits;
          do
          {
            v123 = Double.description.getter();
            v153.value._countAndFlagsBits = v107;
            v126 = *(v107 + 16);
            v125 = *(v107 + 24);
            if (v126 >= v125 >> 1)
            {
              v128 = v123;
              v129 = v124;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v125 > 1), v126 + 1, 1);
              v124 = v129;
              v123 = v128;
              v107 = v153.value._countAndFlagsBits;
            }

            *(v107 + 16) = v126 + 1;
            v127 = v107 + 16 * v126;
            *(v127 + 32) = v123;
            *(v127 + 40) = v124;
            v122 += 8;
            --v121;
          }

          while (v121);
LABEL_76:
        }

        else
        {
LABEL_78:

          v107 = MEMORY[0x277D84F90];
        }

        v153.value._countAndFlagsBits = v107;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v131 = BidirectionalCollection<>.joined(separator:)();

        return v131;
      }

      else
      {
LABEL_77:
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v130 = 48;
        *(v130 + 8) = 0xD00000000000003ALL;
        *(v130 + 16) = 0x8000000265F30070;
        return swift_willThrow();
      }

    default:
      v154 = *v1;
      if (v2.n128_u8[0])
      {
        return 1702195828;
      }

      else
      {
        return 0x65736C6166;
      }
  }
}

uint64_t mapGraph(_:into:)(uint64_t a1, unint64_t a2)
{
  v59[0] = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
  v4 = v59[0];
  v6 = *(v59[0] + 16);
  v5 = *(v59[0] + 24);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
LABEL_38:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v8, 1);
    v4 = v59[0];
    v5 = *(v59[0] + 24);
    v7 = v5 >> 1;
  }

  *(v4 + 16) = v8;
  v9 = v4 + 16 * v6;
  *(v9 + 32) = 0x656D756772615F5FLL;
  *(v9 + 40) = 0xEB0000000073746ELL;
  v6 += 2;
  if (v7 <= v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6, 1);
    v4 = v59[0];
  }

  v53 = a2;
  *(v4 + 16) = v6;
  v10 = v4 + 16 * v8;
  *(v10 + 32) = 0x746C757365725F5FLL;
  *(v10 + 40) = 0xE900000000000073;
  v11 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();

  v50 = a1;

  v12 = specialized Graph.nodes.getter(v52);
  a1 = v12;
  v56 = *(v12 + 16);
  if (v56)
  {
    a2 = 0;
    v55 = v12 + 32;
    v13 = v11 + 56;
    v14 = MEMORY[0x277D84F90];
    v54 = v12;
    do
    {
      v78 = v14;
      while (1)
      {
        v5 = *(a1 + 16);
        if (a2 >= v5)
        {
          __break(1u);
          goto LABEL_38;
        }

        v15 = v55 + 40 * a2;
        v16 = *(v15 + 16);
        v57 = v16;
        v58 = *v15;
        v17 = *(v15 + 32);
        ++a2;
        v6 = *(v15 + 16);
        if (v16 >> 62 || !*(v11 + 16))
        {
          break;
        }

        v8 = *(v16 + 16);
        v18 = *(v16 + 24);
        Hasher.init(_seed:)();
        swift_retain_n();
        v19 = v17;

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = -1 << *(v11 + 32);
        v22 = v20 & ~v21;
        if (((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
LABEL_19:

          a1 = v54;
          v14 = v78;
          v17 = v19;
          goto LABEL_20;
        }

        v23 = ~v21;
        while (1)
        {
          v24 = (*(v11 + 48) + 16 * v22);
          v25 = *v24 == v8 && v24[1] == v18;
          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        a1 = v54;
        v14 = v78;
        if (a2 == v56)
        {
          goto LABEL_28;
        }
      }

LABEL_20:
      v60 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1);
        v14 = v60;
      }

      v6 = *(v14 + 16);
      v26 = *(v14 + 24);
      v8 = v6 + 1;
      if (v6 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v6 + 1, 1);
        v14 = v60;
      }

      *(v14 + 16) = v8;
      v27 = v14 + 40 * v6;
      *(v27 + 32) = v58;
      *(v27 + 48) = v57;
      *(v27 + 64) = v17;
    }

    while (a2 != v56);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

LABEL_28:

  v28 = specialized Sequence.compactMap<A>(_:)(v14, v53);
  if (!v51)
  {
    v29 = v28;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_G_AC0cdE0V2IDVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v60 = v30;
    specialized Sequence.forEach(_:)(v29, &v60);

    v31 = v53[10];
    v32 = v53[13];
    v34 = v53[16];
    v33 = v53[17];
    v35 = v53[19];

    outlined copy of NodePersonality(v31);
    outlined copy of NodePersonality(v34);
    specialized SGDataTypeGraph.argumentsNode.getter(v61, v52);
    if (v62)
    {
      v78 = v33;
      v67 = v61[0];
      *v68 = v61[1];
      *&v68[16] = v62;
      specialized SGDataTypeGraph.resultNode.getter(v63, v52);
      if (v64)
      {
        v65 = v63[0];
        *v66 = v63[1];
        *&v66[16] = v64;
        v71 = *&v68[8];
        v72 = *v68;
        outlined init with copy of SGDataTypeGraph.PersonalityKind(&v72, v59);
        outlined init with copy of String(&v71, v59);
        v36 = v60;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59[0] = v36;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, &v67, isUniquelyReferenced_nonNull_native);
        outlined destroy of SGDataTypeGraph.PersonalityKind(&v72);
        outlined destroy of String(&v71);
        v38 = v59[0];
        v73 = *&v66[8];
        v74 = *v66;
        outlined init with copy of SGDataTypeGraph.PersonalityKind(&v74, v59);
        outlined init with copy of String(&v73, v59);
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v59[0] = v38;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, &v65, v39);
        outlined destroy of SGDataTypeGraph.PersonalityKind(&v74);
        outlined destroy of String(&v73);
        v60 = v59[0];
        v40 = specialized Graph.sinkNodes()(v52);
        EdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n = _s11ShaderGraph0B0V22DepthFirstEdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n(v52, v40);
        v43 = v42;
        v45 = v44;

        v77[0] = *(v50 + 8);
        v46 = *(v50 + 24);
        v75 = *(v50 + 32);
        v76 = v46;

        outlined init with copy of String(v77, v59);
        outlined init with copy of [Input](&v76, v59, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
        outlined init with copy of [Input](&v75, v59, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
        v47 = specialized Sequence.compactMap<A>(_:)(EdgeIteratorV_7initialAEyx_GACyxG_SayAC4NodeVyx_GGtcfCAA010SGDataTypeB0V11PersonalityV_Tt1g5Tf4ng_n, v43, v45, v50, &v60, v53);
        outlined destroy of String(v77);
        outlined destroy of [Input](&v76, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
        outlined destroy of [Input](&v75, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);

        specialized Sequence.forEach(_:)(v47);
        outlined destroy of SGDataTypeGraph.PersonalityKind(&v72);
        outlined destroy of String(&v71);
        outlined destroy of SGDataTypeGraph.PersonalityKind(&v74);
        outlined destroy of String(&v73);
        outlined consume of NodePersonality(v34);

        outlined consume of NodePersonality(v31);
      }

      v70 = *v68;
      outlined destroy of SGDataTypeGraph.PersonalityKind(&v70);
      v69 = *&v68[8];
      outlined destroy of String(&v69);
    }

    else
    {
    }

    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v48 = 0xD00000000000001DLL;
    *(v48 + 8) = 0x8000000265F30180;
    *(v48 + 16) = 21;
    swift_willThrow();
    outlined consume of NodePersonality(v34);

    outlined consume of NodePersonality(v31);
  }
}

uint64_t userGraphNode(in:from:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2;
  v5 = *(a2 + 2);
  v6 = a2[1];
  v107 = *a2;
  v108 = v6;
  *&v109 = *(a2 + 4);
  v7 = v5 >> 62;
  v89 = a3;
  v91 = a1;
  MEMORY[0x28223BE20](a1);
  v86 = &v107;
  v9 = specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in Graph.Node.inputs.getter, v85, 0, v8);
  v10 = *(v9 + 16);
  v92 = v5 >> 62;
  v93 = v5;
  if (v10)
  {
    v94 = v3;
    v131 = v4;
    *&v107 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v107;
    v90 = v9;
    v12 = (v9 + 64);
    do
    {
      v13 = *(v12 - 2);
      v14 = *(v12 - 1);
      v15 = *v12;

      v16 = specialized SGDataType.materialXDataType.getter(v15);
      *&v107 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);

      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v11 = v107;
      }

      v12 += 6;
      *(v11 + 16) = v18 + 1;
      v19 = (v11 + 24 * v18);
      v19[4] = v13;
      v19[5] = v14;
      v19[6] = v16;
      --v10;
    }

    while (v10);

    LODWORD(v7) = v92;
    v5 = v93;
    v4 = v131;
    v3 = v94;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v94 = v11;
  v21 = v4[1];
  v107 = *v4;
  v108 = v21;
  *&v109 = *(v4 + 4);
  MEMORY[0x28223BE20](v20);
  v86 = &v107;
  v23 = specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in Graph.Node.outputs.getter, v85, 0, v22);
  v24 = *(v23 + 16);
  v90 = v3;
  if (v24)
  {
    *&v107 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
    v25 = v107;
    v88 = v23;
    v26 = (v23 + 64);
    v27 = v94;
    do
    {
      v28 = *(v26 - 1);
      v131 = *(v26 - 2);
      v29 = *v26;

      v30 = specialized SGDataType.materialXDataType.getter(v29);
      *&v107 = v25;
      v32 = *(v25 + 16);
      v31 = *(v25 + 24);

      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
        v27 = v94;
        v25 = v107;
      }

      v26 += 5;
      *(v25 + 16) = v32 + 1;
      v33 = (v25 + 24 * v32);
      v33[4] = v131;
      v33[5] = v28;
      v33[6] = v30;
      --v24;
    }

    while (v24);

    v34 = v90;
    LODWORD(v7) = v92;
    v5 = v93;
    v35 = &v107;
    if (v92)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v34 = v3;

    v25 = MEMORY[0x277D84F90];
    v27 = v94;
    v35 = &v107;
    if (v7)
    {
LABEL_14:
      if (v7 != 1)
      {
        v57 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v59 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        v58 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
        LOBYTE(v111) = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
        v60 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
        v109 = v58;
        v110 = v60;
        v107 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v108 = v59;
        v61 = specialized SGDataType.materialXDataType.getter(v57);
        v62 = swift_allocObject();
        v63 = v110;
        *(v62 + 48) = v109;
        *(v62 + 64) = v63;
        *(v62 + 80) = v111;
        v64 = v108;
        *(v62 + 16) = v107;
        *(v62 + 32) = v64;
        *(v62 + 88) = v61;
        swift_retain_n();
        outlined init with copy of SGDataTypeStorage(&v107, &v97);
        UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v27, v25, v62, &v123);

        v53 = v126;
        v54 = v125;
        v55 = v124;
        v56 = v123;
        goto LABEL_37;
      }

      v36 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v127[0] = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v127[1] = v36;
      v128 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v37 = v36;
      v92 = *(&v127[0] + 1);
      v38 = *(&v36 + 1);
      v129 = v36 >> 64;
      v93 = v36;
      v130[0] = v128;
      v39 = *(*(&v36 + 1) + 16);
      v88 = v25;
      if (v39)
      {

        outlined init with copy of [Input](&v129, &v107, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
        outlined init with copy of [Input](v130, &v107, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
        outlined init with copy of [Input](v130 + 8, &v107, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
        *&v107 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39, 0);
        v40 = v107;
        v34 = (v38 + 48);
        do
        {
          v42 = *(v34 - 2);
          v41 = *(v34 - 1);
          v43 = *v34;

          v44 = specialized SGDataType.materialXDataType.getter(v43);
          *&v107 = v40;
          v46 = *(v40 + 16);
          v45 = *(v40 + 24);

          if (v46 >= v45 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
            v40 = v107;
          }

          v34 += 4;
          *(v40 + 16) = v46 + 1;
          v47 = (v40 + 24 * v46);
          v47[4] = v42;
          v47[5] = v41;
          v47[6] = v44;
          --v39;
        }

        while (v39);
        v25 = v88;
        v37 = v93;
      }

      else
      {

        outlined init with copy of [Input](&v129, &v107, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
        outlined init with copy of [Input](v130, &v107, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
        outlined init with copy of [Input](v130 + 8, &v107, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
        v40 = MEMORY[0x277D84F90];
      }

      v87 = v40;
      v50 = *&v130[0];
      v35 = *(*&v130[0] + 16);
      v65 = MEMORY[0x277D84F90];
      if (v35)
      {
        *&v107 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
        v65 = v107;
        v34 = (v50 + 48);
        do
        {
          v50 = *(v34 - 1);
          v131 = *(v34 - 2);
          v66 = *v34;

          v67 = specialized SGDataType.materialXDataType.getter(v66);
          *&v107 = v65;
          v69 = *(v65 + 16);
          v68 = *(v65 + 24);

          if (v69 >= v68 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1);
            v65 = v107;
          }

          v34 += 3;
          *(v65 + 16) = v69 + 1;
          v70 = (v65 + 24 * v69);
          v70[4] = v131;
          v70[5] = v50;
          v70[6] = v67;
          v35 = (v35 - 1);
        }

        while (v35);
        v25 = v88;
        v37 = v93;
      }

      v49 = v91;
      v71 = *(v91 + 72);
      v72 = v71 + 1;
      if (!__OFADD__(v71, 1))
      {
        *(v91 + 72) = v72;

        specialized UserGraph.init(id:label:inputs:outputs:)(v72, v92, v37, v87, v65, &v107);
        v73 = v90;
        mapGraph(_:into:)(v127, &v107);
        if (v73)
        {
          v105 = v115;
          v106[0] = v116[0];
          *(v106 + 9) = *(v116 + 9);
          v101 = v111;
          v102 = v112;
          v103 = v113;
          v104 = v114;
          v97 = v107;
          v98 = v108;
          v99 = v109;
          v100 = v110;
          outlined destroy of UserGraph(&v97);

          outlined destroy of [Input](&v129, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
          outlined destroy of [Input](v130, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
          return outlined destroy of [Input](v130 + 8, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
        }

        outlined destroy of [Input](&v129, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
        outlined destroy of [Input](v130, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
        outlined destroy of [Input](v130 + 8, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
        v74 = swift_allocObject();
        v75 = v116[0];
        v95[8] = v115;
        v96[0] = v116[0];
        *(v96 + 9) = *(v116 + 9);
        v76 = v111;
        v77 = v112;
        v95[4] = v111;
        v95[5] = v112;
        v79 = v113;
        v78 = v114;
        v95[6] = v113;
        v95[7] = v114;
        v80 = v107;
        v81 = v108;
        v95[0] = v107;
        v95[1] = v108;
        v83 = v109;
        v82 = v110;
        v95[2] = v109;
        v95[3] = v110;
        *(v74 + 144) = v115;
        *(v74 + 160) = v75;
        *(v74 + 169) = *(v116 + 9);
        *(v74 + 80) = v76;
        *(v74 + 96) = v77;
        *(v74 + 112) = v79;
        *(v74 + 128) = v78;
        *(v74 + 16) = v80;
        *(v74 + 32) = v81;
        *(v74 + 48) = v83;
        *(v74 + 64) = v82;
        outlined init with copy of UserGraph(v95, &v97);
        UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v94, v25, v74 | 0xC000000000000000, &v119);

        v105 = v115;
        v106[0] = v116[0];
        *(v106 + 9) = *(v116 + 9);
        v101 = v111;
        v102 = v112;
        v103 = v113;
        v104 = v114;
        v97 = v107;
        v98 = v108;
        v99 = v109;
        v100 = v110;
        result = outlined destroy of UserGraph(&v97);
        v53 = v122;
        v54 = v121;
        v55 = v120;
        v56 = v119;
        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_40;
    }
  }

  v48 = v5 & 0x3FFFFFFFFFFFFFFFLL;
  v50 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v49 = *(v48 + 24);
  v51 = one-time initialization token for shared;

  if (v51 != -1)
  {
LABEL_40:
    swift_once();
  }

  specialized NodeDefStore.createNode(in:nodeDefName:)(v50, v49, static NodeDefStore.shared, v117);

  if (v34)
  {
    return result;
  }

  v53 = v118;
  v54 = *(v35 + 200);
  v55 = *(v35 + 184);
  v56 = v117[0];
LABEL_37:
  v84 = v89;
  *v89 = v56;
  *(v84 + 1) = v55;
  *(v84 + 3) = v54;
  *(v84 + 40) = v53;
  return result;
}

void closure #4 in mapGraph(_:into:)(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v6 = *(a2 + 40);
  v7 = *(v6 + 16);
  if (v5 >= v7)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v8 = v6 + 32;
  v9 = (v6 + 32 + 88 * v5);
  v10 = v9[4];
  if (!v10)
  {
LABEL_10:
    *(a5 + 80) = 0u;
    *(a5 + 96) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
    return;
  }

  v12 = result[2];
  v13 = result[3];
  v14 = result[5];
  v15 = result[7];
  v16 = result[8];
  v17 = *v9;
  v18 = v9[1];
  v20 = v9[2];
  v19 = v9[3];
  v70[0] = *v9;
  v70[1] = v18;
  v70[2] = v20;
  v70[3] = v19;
  v70[4] = v10;
  if (v14 >= v7)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v21 = (v8 + 88 * v14);
  v22 = v21[4];
  if (!v22)
  {
    goto LABEL_10;
  }

  v50 = v13;
  v51 = v12;
  v55 = a4;
  v48 = v16;
  v49 = v15;
  v23 = v21[2];
  v24 = v21[3];
  v25 = v21[1];
  v69[0] = *v21;
  v69[1] = v25;
  v69[2] = v23;
  v69[3] = v24;
  v69[4] = v22;
  v26 = *a3;
  v27 = *(*a3 + 16);
  outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v17, v18, v20, v19, v10);
  outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v69[0], v25, v23, v24, v22);
  if (!v27)
  {

    goto LABEL_12;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v70);
  if ((v29 & 1) == 0 || (v30 = *(*(v26 + 56) + 8 * v28), v30 == -7))
  {

LABEL_12:

LABEL_13:
    *(a5 + 80) = 0u;
    *(a5 + 96) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
    return;
  }

  if ((v30 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

  v31 = *(v55 + 64);
  if (v30 >= *(v31 + 16))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v32 = v31 + 48 * v30;
  v33 = *(v32 + 32);
  v34 = *(v32 + 48);
  v35 = *a3;
  v36 = *(*a3 + 16);
  outlined copy of NodePersonality(v33);
  if (!v36)
  {

LABEL_25:

    outlined consume of NodePersonality(v33);

    goto LABEL_13;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v69);
  if ((v38 & 1) == 0)
  {
    goto LABEL_25;
  }

  v39 = *(*(v35 + 56) + 8 * v37);
  if (v39 == -7)
  {
    goto LABEL_25;
  }

  if ((v39 & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v54 = v33;
  v40 = *(v55 + 64);
  if (v39 >= *(v40 + 16))
  {
LABEL_34:
    __break(1u);
    return;
  }

  v41 = v40 + 48 * v39;
  v43 = *(v41 + 32);
  v42 = *(v41 + 40);
  specialized ShaderGraphNode.output(labeled:)(&v58, v51, v50, v34);
  if (!v59)
  {

    outlined copy of NodePersonality(v43);

    outlined consume of NodePersonality(v54);

    outlined consume of NodePersonality(v43);

    goto LABEL_13;
  }

  v56 = v59;
  v52 = v58;
  specialized ShaderGraphNode.output(labeled:)(&v63, v49, v48, v42);

  outlined copy of NodePersonality(v43);
  outlined consume of NodePersonality(v54);

  outlined consume of NodePersonality(v43);

  v44 = v64;
  if (!v64)
  {

    v68 = v60;
    outlined destroy of String(&v68);
    goto LABEL_13;
  }

  v45 = v61;
  *(a5 + 16) = v60;
  *(a5 + 32) = v45;
  v46 = v66;
  *(a5 + 72) = v65;
  v47 = v63;
  *a5 = v52;
  *(a5 + 8) = v56;
  *(a5 + 48) = v62;
  *(a5 + 56) = v47;
  *(a5 + 64) = v44;
  *(a5 + 88) = v46;
  *(a5 + 104) = v67;
}

uint64_t SGDataType.metalDataType.getter(uint64_t a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      if (one-time initialization token for BOOL != -1)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    case 2:
      if (one-time initialization token for uint8 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    case 3:
      if (one-time initialization token for int32 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    case 6:
      if (one-time initialization token for uint32 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    case 7:
      if (one-time initialization token for half == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    case 9:
      if (one-time initialization token for float == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    case 13:
      if (one-time initialization token for texture2d_half == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    case 14:
      if (one-time initialization token for float2x2 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    case 15:
      if (one-time initialization token for float3x3 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    case 17:
      if (one-time initialization token for float4x4 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    case 18:
    case 29:
    case 44:
      if (one-time initialization token for float4 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    case 20:
    case 30:
    case 45:
      if (one-time initialization token for half4 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    case 21:
    case 49:
      if (one-time initialization token for float2 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    case 22:
    case 47:
      if (one-time initialization token for half2 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    case 24:
      if (one-time initialization token for int2 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    case 25:
    case 32:
    case 35:
    case 38:
    case 41:
    case 52:
      if (one-time initialization token for float3 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    case 26:
    case 33:
    case 36:
    case 39:
    case 42:
    case 50:
      if (one-time initialization token for half3 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    case 28:
      if (one-time initialization token for int3 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    case 31:
      if (one-time initialization token for int4 == -1)
      {
        goto LABEL_39;
      }

LABEL_40:
      swift_once();
LABEL_39:

      break;
    default:
      return result;
  }

  return result;
}

void closure #1 in SGGraph.replaceDeprecatedAndRedundantNodes()(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 + OBJC_IVAR___SGNode_data;
  v5 = *(v4 + 80);
  if (v5 > 0x3F)
  {
    return;
  }

  v78 = v2;
  v67 = a1[1];
  v8 = *(v4 + 32);
  v7 = *(v4 + 40);
  inited = *(v4 + 24);
  v10 = *v4;
  v11 = *(v4 + 8);
  v12 = *(a2 + 16);
  outlined copy of NodeData(*v4, v11, *(v4 + 16), inited, v8, v7, *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), v5);
  if (!v12)
  {

    outlined consume of MaterialXAvailability(v8, v7);

    return;
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
  v15 = v14;

  if ((v15 & 1) == 0)
  {

    outlined consume of MaterialXAvailability(v8, v7);
    return;
  }

  v16 = *(a2 + 56) + 24 * v13;
  v18 = *v16;
  v17 = *(v16 + 8);
  v19 = *(v16 + 16);

  outlined consume of MaterialXAvailability(v8, v7);
  v20 = OBJC_IVAR___SGNode_outputs;
  v21 = *(v3 + OBJC_IVAR___SGNode_outputs);
  if (v21 >> 62)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      goto LABEL_25;
    }
  }

  else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_25;
  }

  v22 = *(v3 + v20);
  if (!(v22 >> 62))
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_25:

    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v31 = 0xD000000000000034;
    *(v31 + 8) = 0x8000000265F300F0;
    *(v31 + 16) = 5;
    swift_willThrow();
    return;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_25;
  }

LABEL_8:
  v65 = v18;
  v66 = v19;
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x266772030](0, v22);
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_57;
    }

    v23 = *(v22 + 32);
  }

  v18 = v23;
  v24 = SGOutput.edges.getter();
  v8 = v24;
  if (v24 >> 62)
  {
    v25 = __CocoaSet.count.getter();
    if (v25)
    {
LABEL_13:
      *&v69 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v25 & 0x8000000000000000) == 0)
      {
        v26 = 0;
        do
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x266772030](v26, v8);
          }

          else
          {
            v27 = *(v8 + 8 * v26 + 32);
          }

          v28 = v27;
          ++v26;
          v29 = OBJC_IVAR___SGEdge_to;
          swift_beginAccess();
          v30 = *&v28[v29];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v25 != v26);

        v8 = v69;
        goto LABEL_29;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_13;
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_29:
  v2 = v78;
  SGGraph.remove(node:)(v3);
  if (v78)
  {
  }

  else
  {
    v22 = *(v3 + OBJC_IVAR___SGNode_name);
    inited = *(v3 + OBJC_IVAR___SGNode_name + 8);
    v32 = one-time initialization token for shared;

    if (v32 != -1)
    {
      goto LABEL_59;
    }

    while (1)
    {
      v33 = specialized static SGNode.create(nodeDefName:name:store:)(v65, v17, v22, inited, static BuiltInDefinitionStore.shared);
      v22 = v2;
      if (v2)
      {
        break;
      }

      v34 = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_265F20CD0;
      *(inited + 32) = v34;
      v35 = v34;
      v79.value._rawValue = inited;
      SGGraph.insert(_:)(v79);
      v36 = v2;
      if (v2)
      {

        swift_setDeallocating();
        swift_arrayDestroy();
        return;
      }

      v63 = v8;
      v64 = v18;
      swift_setDeallocating();
      swift_arrayDestroy();
      v37 = *(v66 + 16);
      v78 = v35;
      v65 = v37;
      if (!v37)
      {
LABEL_42:

        v50 = *&v35[OBJC_IVAR___SGNode_outputs];
        if (v50 >> 62)
        {
          goto LABEL_62;
        }

        v51 = v63;
        v52 = v64;
        if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_63:

          lazy protocol witness table accessor for type APIError and conformance APIError();
          swift_allocError();
          *v61 = 0xD000000000000040;
          *(v61 + 8) = 0x8000000265F30130;
          *(v61 + 16) = 5;
          swift_willThrow();

          return;
        }

        while (2)
        {
          if ((v50 & 0xC000000000000001) != 0)
          {

            v53 = MEMORY[0x266772030](0, v50);

            if (!(v51 >> 62))
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v53 = *(v50 + 32);
            if (!(v51 >> 62))
            {
LABEL_47:
              v54 = v36;
              v55 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v55)
              {
                goto LABEL_66;
              }

LABEL_48:
              v50 = 0;
              v56 = v51 & 0xC000000000000001;
              v57 = v51 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                v36 = v54;
                if (v56)
                {
                  v58 = MEMORY[0x266772030](v50, v63);
                }

                else
                {
                  if (v50 >= *(v57 + 16))
                  {
                    goto LABEL_61;
                  }

                  v58 = *(v63 + 8 * v50 + 32);
                }

                v59 = v58;
                v60 = v50 + 1;
                if (__OFADD__(v50, 1))
                {
                  break;
                }

                SGGraph.connect(_:to:)(v53, v58);

                v54 = v36;
                ++v50;
                if (v60 == v55)
                {
                  goto LABEL_66;
                }
              }

              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              v51 = v63;
              v52 = v64;
              if (!__CocoaSet.count.getter())
              {
                goto LABEL_63;
              }

              continue;
            }
          }

          break;
        }

        v62 = __CocoaSet.count.getter();
        v54 = v36;
        v55 = v62;
        if (!v62)
        {
LABEL_66:

          return;
        }

        goto LABEL_48;
      }

      v8 = 0;
      v38 = v66 + 64;
      v18 = &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA17SGDataTypeStorageOtMd;
      v17 = &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA17SGDataTypeStorageOtMR;
      while (v8 < *(v66 + 16))
      {
        v39 = *(v38 - 32);
        v40 = *v38;
        v70 = *(v38 - 16);
        v71 = v40;
        v69 = v39;
        v41 = *(v38 + 16);
        v42 = *(v38 + 32);
        v43 = *(v38 + 48);
        v75 = *(v38 + 64);
        v73 = v42;
        v74 = v43;
        v72 = v41;
        v44 = *v38;
        v45 = *(v38 + 16);
        v46 = *(v38 + 32);
        v47 = *(v38 + 48);
        v77 = *(v38 + 64);
        v76[2] = v46;
        v76[3] = v47;
        v76[0] = v44;
        v76[1] = v45;
        inited = *(&v69 + 1);
        v22 = v70;
        v48 = v69;
        outlined init with copy of [Input](&v69, v68, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA17SGDataTypeStorageOtMd, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA17SGDataTypeStorageOtMR);
        v49 = v48;
        v35 = v78;
        v2 = 0;
        specialized closure #1 in closure #1 in SGGraph.replaceDeprecatedAndRedundantNodes()(v49, inited, v22, v76, v3, v67, v78);
        ++v8;
        outlined destroy of [Input](&v69, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA17SGDataTypeStorageOtMd, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA17SGDataTypeStorageOtMR);
        v38 += 112;
        if (v65 == v8)
        {
          goto LABEL_42;
        }
      }

LABEL_58:
      __break(1u);
LABEL_59:
      swift_once();
    }
  }
}

uint64_t specialized SGDataType.materialXDataType.getter(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      if (one-time initialization token for BOOLean != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.BOOLean;
      break;
    case 3:
      if (one-time initialization token for integer != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.integer;
      break;
    case 7:
      if (one-time initialization token for half != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.half;
      break;
    case 9:
      if (one-time initialization token for float != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.float;
      break;
    case 11:
    case 12:
      if (one-time initialization token for string != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.string;
      break;
    case 13:
      if (one-time initialization token for filename != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.filename;
      break;
    case 14:
      if (one-time initialization token for matrix22 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.matrix22;
      break;
    case 15:
      if (one-time initialization token for matrix33 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.matrix33;
      break;
    case 17:
      if (one-time initialization token for matrix44 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.matrix44;
      break;
    case 18:
    case 29:
      if (one-time initialization token for float4 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.float4;
      break;
    case 20:
    case 30:
    case 56:
      if (one-time initialization token for half4 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.half4;
      break;
    case 21:
    case 49:
      if (one-time initialization token for float2 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.float2;
      break;
    case 22:
    case 47:
      if (one-time initialization token for half2 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.half2;
      break;
    case 24:
      if (one-time initialization token for integer2 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.integer2;
      break;
    case 25:
    case 32:
    case 35:
    case 38:
    case 52:
      if (one-time initialization token for float3 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.float3;
      break;
    case 26:
    case 33:
    case 36:
    case 39:
    case 50:
    case 55:
      if (one-time initialization token for half3 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.half3;
      break;
    case 28:
      if (one-time initialization token for integer3 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.integer3;
      break;
    case 31:
      if (one-time initialization token for integer4 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.integer4;
      break;
    case 41:
    case 42:
      if (one-time initialization token for color3 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.color3;
      break;
    case 44:
    case 45:
      if (one-time initialization token for color4 != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.color4;
      break;
    case 53:
      if (one-time initialization token for surfaceshader != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.surfaceshader;
      break;
    case 54:
      if (one-time initialization token for geometrymodifier != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.geometrymodifier;
      break;
    default:
      if (one-time initialization token for unsupported != -1)
      {
        swift_once();
      }

      v1 = &static MaterialXDataType.unsupported;
      break;
  }

  return *v1;
}

char *specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v50 = a1;
  v51 = a2;
  v52 = a3;

  specialized Graph.DepthFirstEdgeIterator.next()(&v44);
  if (*(&v45 + 1))
  {
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v40 = v46;
      v41 = v47;
      v42 = v48;
      v43 = v49;
      v38 = v44;
      v39 = v45;
      closure #4 in mapGraph(_:into:)(&v38, a4, a5, a6, &v31);
      if (v6)
      {
        break;
      }

      v29[2] = v40;
      v29[3] = v41;
      v29[4] = v42;
      v30 = v43;
      v29[0] = v38;
      v29[1] = v39;
      outlined destroy of [Input](v29, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
      if (*(&v31 + 1))
      {
        v26 = v35;
        v27 = v36;
        v28 = v37;
        v22 = v31;
        v23 = v32;
        v24 = v33;
        v25 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
        }

        v12 = *(v10 + 2);
        v11 = *(v10 + 3);
        if (v12 >= v11 >> 1)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
        }

        v19 = v26;
        v20 = v27;
        v21 = v28;
        v17 = v24;
        v18 = v25;
        v13 = v22;
        v16 = v23;
        *(v10 + 2) = v12 + 1;
        v14 = &v10[112 * v12];
        *(v14 + 3) = v16;
        *(v14 + 4) = v17;
        *(v14 + 7) = v20;
        *(v14 + 8) = v21;
        *(v14 + 5) = v18;
        *(v14 + 6) = v19;
        *(v14 + 2) = v13;
      }

      else
      {
        v26 = v35;
        v27 = v36;
        v28 = v37;
        v22 = v31;
        v23 = v32;
        v24 = v33;
        v25 = v34;
        outlined destroy of [Input](&v22, &_s11ShaderGraph4EdgeVSgMd, &_s11ShaderGraph4EdgeVSgMR);
      }

      specialized Graph.DepthFirstEdgeIterator.next()(&v44);
      if (!*(&v45 + 1))
      {
        goto LABEL_13;
      }
    }

    v24 = v40;
    v25 = v41;
    v26 = v42;
    LOBYTE(v27) = v43;
    v22 = v38;
    v23 = v39;
    outlined destroy of [Input](&v22, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
LABEL_13:
  }

  return v10;
}

uint64_t specialized SGDataType.init(_:)(uint64_t a1)
{
  if (one-time initialization token for BOOLean != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(a1))
  {

    return 1;
  }

  v3 = one-time initialization token for integer;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = MaterialXDataType.isEqual(to:)(a1);

  if (v4)
  {

    return 3;
  }

  v5 = one-time initialization token for integer2;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = MaterialXDataType.isEqual(to:)(a1);

  if (v6)
  {

    return 24;
  }

  v7 = one-time initialization token for integer3;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = MaterialXDataType.isEqual(to:)(a1);

  if (v8)
  {

    return 28;
  }

  v9 = one-time initialization token for integer4;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = MaterialXDataType.isEqual(to:)(a1);

  if (v10)
  {

    return 31;
  }

  v11 = one-time initialization token for float;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = MaterialXDataType.isEqual(to:)(a1);

  if (v12)
  {

    return 9;
  }

  v13 = one-time initialization token for float2;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = MaterialXDataType.isEqual(to:)(a1);

  if (v14)
  {
    goto LABEL_28;
  }

  v15 = one-time initialization token for float3;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = MaterialXDataType.isEqual(to:)(a1);

  if (v16)
  {
LABEL_32:

    return 25;
  }

  v17 = one-time initialization token for float4;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = MaterialXDataType.isEqual(to:)(a1);

  if (v18)
  {
    goto LABEL_36;
  }

  v19 = one-time initialization token for color3;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = MaterialXDataType.isEqual(to:)(a1);

  if (v20)
  {

    return 42;
  }

  v21 = one-time initialization token for color4;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = MaterialXDataType.isEqual(to:)(a1);

  if (v22)
  {

    return 45;
  }

  v23 = one-time initialization token for vector2;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = MaterialXDataType.isEqual(to:)(a1);

  if (v24)
  {
LABEL_28:

    return 21;
  }

  v25 = one-time initialization token for vector3;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = MaterialXDataType.isEqual(to:)(a1);

  if (v26)
  {
    goto LABEL_32;
  }

  v27 = one-time initialization token for vector4;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = MaterialXDataType.isEqual(to:)(a1);

  if (v28)
  {
LABEL_36:

    return 29;
  }

  v29 = one-time initialization token for half;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = MaterialXDataType.isEqual(to:)(a1);

  if (v30)
  {

    return 7;
  }

  v31 = one-time initialization token for half2;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = MaterialXDataType.isEqual(to:)(a1);

  if (v32)
  {

    return 22;
  }

  v33 = one-time initialization token for half3;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = MaterialXDataType.isEqual(to:)(a1);

  if (v34)
  {

    return 26;
  }

  v35 = one-time initialization token for half4;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = MaterialXDataType.isEqual(to:)(a1);

  if (v36)
  {

    return 30;
  }

  v37 = one-time initialization token for matrix22;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = MaterialXDataType.isEqual(to:)(a1);

  if (v38)
  {

    return 14;
  }

  v39 = one-time initialization token for matrix33;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = MaterialXDataType.isEqual(to:)(a1);

  if (v40)
  {

    return 15;
  }

  v41 = one-time initialization token for matrix44;

  if (v41 != -1)
  {
    swift_once();
  }

  v42 = MaterialXDataType.isEqual(to:)(a1);

  if (v42)
  {

    return 17;
  }

  v43 = one-time initialization token for surfaceshader;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = MaterialXDataType.isEqual(to:)(a1);

  if (v44)
  {

    return 53;
  }

  v45 = one-time initialization token for vertexshader;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = MaterialXDataType.isEqual(to:)(a1);

  if (v46)
  {
    goto LABEL_92;
  }

  v47 = one-time initialization token for geometrymodifier;

  if (v47 != -1)
  {
    swift_once();
  }

  v48 = MaterialXDataType.isEqual(to:)(a1);

  if (v48)
  {
LABEL_92:

    return 54;
  }

  v49 = one-time initialization token for string;

  if (v49 != -1)
  {
    swift_once();
  }

  v50 = MaterialXDataType.isEqual(to:)(a1);

  if (v50)
  {
    goto LABEL_178;
  }

  v51 = one-time initialization token for filename;

  if (v51 != -1)
  {
    swift_once();
  }

  v52 = MaterialXDataType.isEqual(to:)(a1);

  if (v52)
  {

    return 13;
  }

  v53 = one-time initialization token for space;

  if (v53 != -1)
  {
    swift_once();
  }

  v54 = MaterialXDataType.isEqual(to:)(a1);

  if (v54)
  {
    goto LABEL_178;
  }

  v55 = one-time initialization token for uAddressMode;

  if (v55 != -1)
  {
    swift_once();
  }

  v56 = MaterialXDataType.isEqual(to:)(a1);

  if (v56)
  {
    goto LABEL_178;
  }

  v57 = one-time initialization token for vAddressMode;

  if (v57 != -1)
  {
    swift_once();
  }

  v58 = MaterialXDataType.isEqual(to:)(a1);

  if (v58)
  {
    goto LABEL_178;
  }

  v59 = one-time initialization token for wrapS;

  if (v59 != -1)
  {
    swift_once();
  }

  v60 = MaterialXDataType.isEqual(to:)(a1);

  if (v60)
  {
    goto LABEL_178;
  }

  v61 = one-time initialization token for wrapT;

  if (v61 != -1)
  {
    swift_once();
  }

  v62 = MaterialXDataType.isEqual(to:)(a1);

  if (v62)
  {
    goto LABEL_178;
  }

  v63 = one-time initialization token for filterType;

  if (v63 != -1)
  {
    swift_once();
  }

  v64 = MaterialXDataType.isEqual(to:)(a1);

  if (v64)
  {
    goto LABEL_178;
  }

  v65 = one-time initialization token for blurFilterType;

  if (v65 != -1)
  {
    swift_once();
  }

  v66 = MaterialXDataType.isEqual(to:)(a1);

  if (v66)
  {
    goto LABEL_178;
  }

  v67 = one-time initialization token for normalMapSpace;

  if (v67 != -1)
  {
    swift_once();
  }

  v68 = MaterialXDataType.isEqual(to:)(a1);

  if (v68)
  {
    goto LABEL_178;
  }

  v69 = one-time initialization token for lumacoeffs;

  if (v69 != -1)
  {
    swift_once();
  }

  v70 = MaterialXDataType.isEqual(to:)(a1);

  if (v70)
  {
    goto LABEL_178;
  }

  v71 = one-time initialization token for cubeimageFilterType;

  if (v71 != -1)
  {
    swift_once();
  }

  v72 = MaterialXDataType.isEqual(to:)(a1);

  if (v72)
  {
    goto LABEL_178;
  }

  v73 = one-time initialization token for filter;

  if (v73 != -1)
  {
    swift_once();
  }

  v74 = MaterialXDataType.isEqual(to:)(a1);

  if (v74)
  {
    goto LABEL_178;
  }

  v75 = one-time initialization token for coord;

  if (v75 != -1)
  {
    swift_once();
  }

  v76 = MaterialXDataType.isEqual(to:)(a1);

  if (v76)
  {
    goto LABEL_178;
  }

  v77 = one-time initialization token for addressMode;

  if (v77 != -1)
  {
    swift_once();
  }

  v78 = MaterialXDataType.isEqual(to:)(a1);

  if (v78)
  {
    goto LABEL_178;
  }

  v79 = one-time initialization token for rAddressMode;

  if (v79 != -1)
  {
    swift_once();
  }

  v80 = MaterialXDataType.isEqual(to:)(a1);

  if (v80)
  {
    goto LABEL_178;
  }

  v81 = one-time initialization token for sAddressMode;

  if (v81 != -1)
  {
    swift_once();
  }

  v82 = MaterialXDataType.isEqual(to:)(a1);

  if (v82)
  {
    goto LABEL_178;
  }

  v83 = one-time initialization token for tAddressMode;

  if (v83 != -1)
  {
    swift_once();
  }

  v84 = MaterialXDataType.isEqual(to:)(a1);

  if (v84)
  {
    goto LABEL_178;
  }

  v85 = one-time initialization token for u_wrap_mode;

  if (v85 != -1)
  {
    swift_once();
  }

  v86 = MaterialXDataType.isEqual(to:)(a1);

  if (v86)
  {
    goto LABEL_178;
  }

  v87 = one-time initialization token for v_wrap_mode;

  if (v87 != -1)
  {
    swift_once();
  }

  v88 = MaterialXDataType.isEqual(to:)(a1);

  if (v88)
  {
    goto LABEL_178;
  }

  v89 = one-time initialization token for w_wrap_mode;

  if (v89 != -1)
  {
    swift_once();
  }

  v90 = MaterialXDataType.isEqual(to:)(a1);

  if (v90)
  {
    goto LABEL_178;
  }

  v91 = one-time initialization token for u_pixel_wrap_mode;

  if (v91 != -1)
  {
    swift_once();
  }

  v92 = MaterialXDataType.isEqual(to:)(a1);

  if (v92)
  {
    goto LABEL_178;
  }

  v93 = one-time initialization token for v_pixel_wrap_mode;

  if (v93 != -1)
  {
    swift_once();
  }

  v94 = MaterialXDataType.isEqual(to:)(a1);

  if (v94)
  {
    goto LABEL_178;
  }

  v95 = one-time initialization token for w_pixel_wrap_mode;

  if (v95 != -1)
  {
    swift_once();
  }

  v96 = MaterialXDataType.isEqual(to:)(a1);

  if (v96)
  {
    goto LABEL_178;
  }

  v97 = one-time initialization token for magFilter;

  if (v97 != -1)
  {
    swift_once();
  }

  v98 = MaterialXDataType.isEqual(to:)(a1);

  if (v98)
  {
    goto LABEL_178;
  }

  v99 = one-time initialization token for minFilter;

  if (v99 != -1)
  {
    swift_once();
  }

  v100 = MaterialXDataType.isEqual(to:)(a1);

  if (v100)
  {
    goto LABEL_178;
  }

  v101 = one-time initialization token for mipFilter;

  if (v101 != -1)
  {
    swift_once();
  }

  v102 = MaterialXDataType.isEqual(to:)(a1);

  if (v102)
  {
    goto LABEL_178;
  }

  v103 = one-time initialization token for borderColor;

  if (v103 != -1)
  {
    swift_once();
  }

  v104 = MaterialXDataType.isEqual(to:)(a1);

  if (v104)
  {
LABEL_178:

    return 11;
  }

  else
  {
    v105 = MaterialXDataType.isEqual(to:)(a1);

    if (v105)
    {
      return 11;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t specialized SGGraph.deprecationMap()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_11ShaderGraph7SGGraphC15ReplacementNodeVtGMd, &_ss23_ContiguousArrayStorageCySS_11ShaderGraph7SGGraphC15ReplacementNodeVtGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_265F22FE0;
  *(v1 + 32) = 0xD000000000000024;
  *(v1 + 40) = 0x8000000265F2C1D0;
  strcpy((v1 + 48), "ND_time_float");
  v2 = MEMORY[0x277D84F90];
  *(v1 + 62) = -4864;
  *(v1 + 64) = v2;
  *(v1 + 72) = 0xD000000000000028;
  *(v1 + 80) = 0x8000000265F2C160;
  *(v1 + 88) = 0xD000000000000013;
  *(v1 + 96) = 0x8000000265F2BDB0;
  *(v1 + 104) = v2;
  *(v1 + 112) = 0xD000000000000025;
  *(v1 + 120) = 0x8000000265F2BE30;
  *(v1 + 128) = 0xD000000000000013;
  v51 = 0x8000000265F2BD30;
  *(v1 + 136) = 0x8000000265F2BD30;
  *(v1 + 144) = v2;
  *(v1 + 152) = 0xD000000000000026;
  *(v1 + 160) = 0x8000000265F2C100;
  *(v1 + 168) = 0xD000000000000011;
  *(v1 + 176) = 0x8000000265F2BD70;
  *(v1 + 184) = v2;
  *(v1 + 192) = 0xD000000000000029;
  *(v1 + 200) = 0x8000000265F2BE00;
  *(v1 + 208) = 0xD000000000000014;
  *(v1 + 216) = 0x8000000265F2BCF0;
  *(v1 + 224) = v2;
  *(v1 + 232) = 0xD000000000000023;
  *(v1 + 240) = 0x8000000265F2C200;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph17BuiltInDefinitionV9InputSpecV_AC010SGDataTypeC0OtGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17BuiltInDefinitionV9InputSpecV_AC010SGDataTypeC0OtGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_265F1F670;
  if (one-time initialization token for string != -1)
  {
    swift_once();
  }

  v4 = static MaterialXDataType.string;

  specialized SGDataTypeStorage.init(materialXValue:type:)(0x305655uLL, 0xE300000000000000, v4, v33);
  if (v0)
  {
    *(v3 + 16) = 0;

    *(v1 + 16) = 0;
  }

  else
  {
    *(v3 + 32) = 0x706F72706D6F6567;
    *(v3 + 40) = 0xE800000000000000;
    *(v3 + 48) = 11;
    *(v3 + 56) = 1;
    v5 = v33[3];
    *(v3 + 96) = v33[2];
    *(v3 + 112) = v5;
    *(v3 + 128) = v34;
    v6 = v33[1];
    *(v3 + 64) = v33[0];
    *(v3 + 80) = v6;
    *(v1 + 248) = 0xD000000000000018;
    *(v1 + 256) = 0x8000000265F2CA90;
    *(v1 + 264) = v3;
    *(v1 + 272) = 0xD000000000000023;
    *(v1 + 280) = 0x8000000265F2C290;
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_265F1F670;

    specialized SGDataTypeStorage.init(materialXValue:type:)(0x315655uLL, 0xE300000000000000, v4, v35);
    *(v7 + 32) = 0x706F72706D6F6567;
    *(v7 + 40) = 0xE800000000000000;
    *(v7 + 48) = 11;
    *(v7 + 56) = 1;
    v8 = v35[3];
    *(v7 + 96) = v35[2];
    *(v7 + 112) = v8;
    *(v7 + 128) = v36;
    v9 = v35[1];
    *(v7 + 64) = v35[0];
    *(v7 + 80) = v9;
    *(v1 + 288) = 0xD000000000000018;
    *(v1 + 296) = 0x8000000265F2CA90;
    *(v1 + 304) = v7;
    *(v1 + 312) = 0xD00000000000001ALL;
    *(v1 + 320) = 0x8000000265F2CFA0;
    strcpy((v1 + 328), "ND_time_float");
    *(v1 + 342) = -4864;
    *(v1 + 344) = v2;
    *(v1 + 352) = 0xD000000000000024;
    *(v1 + 360) = 0x8000000265F2CE20;
    *(v1 + 368) = 0xD000000000000013;
    *(v1 + 376) = 0x8000000265F2BDB0;
    *(v1 + 384) = v2;
    *(v1 + 392) = 0xD000000000000024;
    *(v1 + 400) = 0x8000000265F2D060;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_265F1F670;

    specialized SGDataTypeStorage.init(materialXValue:type:)(0x646C726F77uLL, 0xE500000000000000, v4, v37);
    *(v10 + 32) = 0x6563617073;
    *(v10 + 40) = 0xE500000000000000;
    *(v10 + 48) = 11;
    *(v10 + 56) = 1;
    v12 = v37[3];
    *(v10 + 96) = v37[2];
    *(v10 + 112) = v12;
    *(v10 + 128) = v38;
    v13 = v37[1];
    *(v10 + 64) = v37[0];
    *(v10 + 80) = v13;
    *(v1 + 408) = 0xD000000000000013;
    *(v1 + 416) = 0x8000000265F2BDB0;
    *(v1 + 424) = v10;
    *(v1 + 432) = 0xD00000000000001BLL;
    *(v1 + 440) = 0x8000000265F2CBA0;
    *(v1 + 448) = 0xD000000000000013;
    *(v1 + 456) = v51;
    *(v1 + 464) = v2;
    *(v1 + 472) = 0xD000000000000025;
    *(v1 + 480) = 0x8000000265F2CDA0;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_265F1F670;

    specialized SGDataTypeStorage.init(materialXValue:type:)(0x646C726F77uLL, 0xE500000000000000, v4, v39);
    *(v14 + 32) = 0x6563617073;
    *(v14 + 40) = 0xE500000000000000;
    *(v14 + 48) = 11;
    *(v14 + 56) = 1;
    v15 = v39[3];
    *(v14 + 96) = v39[2];
    *(v14 + 112) = v15;
    *(v14 + 128) = v40;
    v16 = v39[1];
    *(v14 + 64) = v39[0];
    *(v14 + 80) = v16;
    *(v1 + 488) = 0xD000000000000011;
    *(v1 + 496) = 0x8000000265F2BD70;
    *(v1 + 504) = v14;
    *(v1 + 512) = 0xD000000000000026;
    *(v1 + 520) = 0x8000000265F2CDD0;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_265F1F670;

    specialized SGDataTypeStorage.init(materialXValue:type:)(0x646C726F77uLL, 0xE500000000000000, v4, v41);
    *(v17 + 32) = 0x6563617073;
    *(v17 + 40) = 0xE500000000000000;
    *(v17 + 48) = 11;
    *(v17 + 56) = 1;
    v18 = v41[3];
    *(v17 + 96) = v41[2];
    *(v17 + 112) = v18;
    *(v17 + 128) = v42;
    v19 = v41[1];
    *(v17 + 64) = v41[0];
    *(v17 + 80) = v19;
    *(v1 + 528) = 0xD000000000000012;
    *(v1 + 536) = 0x8000000265F2D0C0;
    *(v1 + 544) = v17;
    *(v1 + 552) = 0xD000000000000028;
    *(v1 + 560) = 0x8000000265F2CD70;
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_265F1F670;

    specialized SGDataTypeStorage.init(materialXValue:type:)(0x646C726F77uLL, 0xE500000000000000, v4, v43);
    *(v20 + 32) = 0x6563617073;
    *(v20 + 40) = 0xE500000000000000;
    *(v20 + 48) = 11;
    *(v20 + 56) = 1;
    v21 = v43[3];
    *(v20 + 96) = v43[2];
    *(v20 + 112) = v21;
    *(v20 + 128) = v44;
    v22 = v43[1];
    *(v20 + 64) = v43[0];
    *(v20 + 80) = v22;
    *(v1 + 568) = 0xD000000000000014;
    *(v1 + 576) = 0x8000000265F2BCF0;
    *(v1 + 584) = v20;
    *(v1 + 592) = 0xD000000000000019;
    *(v1 + 600) = 0x8000000265F2CFC0;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_265F1F670;

    specialized SGDataTypeStorage.init(materialXValue:type:)(0x305655uLL, 0xE300000000000000, v4, v45);
    *(v23 + 32) = 0x706F72706D6F6567;
    *(v23 + 40) = 0xE800000000000000;
    *(v23 + 48) = 11;
    *(v23 + 56) = 1;
    v24 = v45[3];
    *(v23 + 96) = v45[2];
    *(v23 + 112) = v24;
    *(v23 + 128) = v46;
    v25 = v45[1];
    *(v23 + 64) = v45[0];
    *(v23 + 80) = v25;
    *(v1 + 608) = 0xD000000000000018;
    *(v1 + 616) = 0x8000000265F2CA90;
    *(v1 + 624) = v23;
    *(v1 + 632) = 0xD000000000000019;
    *(v1 + 640) = 0x8000000265F2CFE0;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_265F1F670;

    specialized SGDataTypeStorage.init(materialXValue:type:)(0x315655uLL, 0xE300000000000000, v4, v47);
    *(v26 + 32) = 0x706F72706D6F6567;
    *(v26 + 40) = 0xE800000000000000;
    *(v26 + 48) = 11;
    *(v26 + 56) = 1;
    v27 = v47[3];
    *(v26 + 96) = v47[2];
    *(v26 + 112) = v27;
    *(v26 + 128) = v48;
    v28 = v47[1];
    *(v26 + 64) = v47[0];
    *(v26 + 80) = v28;
    *(v1 + 648) = 0xD000000000000018;
    *(v1 + 656) = 0x8000000265F2CA90;
    *(v1 + 664) = v26;
    *(v1 + 672) = 0xD00000000000002ALL;
    *(v1 + 680) = 0x8000000265F2CF70;
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_265F1F670;

    specialized SGDataTypeStorage.init(materialXValue:type:)(0x746E65676E6174uLL, 0xE700000000000000, v4, v49);
    *(v29 + 32) = 0x6563617073;
    *(v29 + 40) = 0xE500000000000000;
    *(v29 + 48) = 11;
    *(v29 + 56) = 1;
    v30 = v49[3];
    *(v29 + 96) = v49[2];
    *(v29 + 112) = v30;
    *(v29 + 128) = v50;
    v31 = v49[1];
    *(v29 + 64) = v49[0];
    *(v29 + 80) = v31;
    *(v1 + 688) = 0xD000000000000011;
    *(v1 + 696) = 0x8000000265F2BD70;
    *(v1 + 704) = v29;
    v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph7SGGraphC15ReplacementNodeVTt0g5Tf4g_n(v1);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11ShaderGraph7SGGraphC15ReplacementNodeVtMd, &_sSS_11ShaderGraph7SGGraphC15ReplacementNodeVtMR);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v32;
  }
}

void specialized closure #1 in closure #1 in SGGraph.replaceDeprecatedAndRedundantNodes()(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v60 = a6;
  ObjectType = swift_getObjectType();
  v13 = *(a4 + 64);
  v14 = *(a5 + OBJC_IVAR___SGNode_name + 8);
  v52 = *(a5 + OBJC_IVAR___SGNode_name);
  v53 = v14;

  v47 = a4[2];
  v49 = *a4;
  v45 = a4[3];
  v46 = a4[1];
  MEMORY[0x266771550](95, 0xE100000000000000);

  v43 = a1;
  MEMORY[0x266771550](a1, a2);

  v15 = v52;
  v16 = v53;
  *&v54 = a3;
  v55 = v49;
  v56 = v46;
  v57 = v47;
  v58 = v45;
  v59 = v13 & 0x1F | 0x80;
  v17 = objc_allocWithZone(ObjectType);
  swift_unknownObjectWeakInit();
  v18 = &v17[OBJC_IVAR___SGNode_name];
  *v18 = v52;
  v18[1] = v16;
  *&v17[OBJC_IVAR___SGNode_inputs] = MEMORY[0x277D84F90];
  outlined init with copy of SGDataTypeStorage(a4, &v52);

  v19 = recreateOutputs(from:nodeName:)(&v54, v15, v16);

  *&v17[OBJC_IVAR___SGNode_outputs] = v19;
  v20 = &v17[OBJC_IVAR___SGNode_data];
  v21 = v57;
  *(v20 + 2) = v56;
  *(v20 + 3) = v21;
  *(v20 + 4) = v58;
  v20[80] = v59;
  v22 = v55;
  *v20 = v54;
  *(v20 + 1) = v22;
  v50 = a4;
  outlined init with copy of SGDataTypeStorage(a4, &v52);
  v51.receiver = v17;
  v51.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v51, sel_init);
  v24 = *&v23[OBJC_IVAR___SGNode_inputs];
  if (v24 >> 62)
  {
    goto LABEL_35;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v26 = v23;

    if (v25)
    {
      v27 = 0;
      while (1)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x266772030](v27, v24);
        }

        else
        {
          if (v27 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v23 = *(v24 + 8 * v27 + 32);
        }

        v28 = v23;
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        swift_beginAccess();
        swift_unknownObjectWeakAssign();

        ++v27;
        if (v29 == v25)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_12:

    v24 = *&v26[OBJC_IVAR___SGNode_outputs];
    v48 = OBJC_IVAR___SGNode_outputs;
    v30 = v24 >> 62 ? __CocoaSet.count.getter() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v30)
    {
      break;
    }

    v31 = 0;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x266772030](v31, v24);
      }

      else
      {
        if (v31 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v23 = *(v24 + 8 * v31 + 32);
      }

      v32 = v23;
      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      swift_beginAccess();
      swift_unknownObjectWeakAssign();

      ++v31;
      if (v33 == v30)
      {
        goto LABEL_23;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v40 = v23;
    v25 = __CocoaSet.count.getter();
    v23 = v40;
  }

LABEL_23:

  outlined destroy of SGDataTypeStorage(v50);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F20CD0;
  *(inited + 32) = v26;
  v35 = v26;
  v61.value._rawValue = inited;
  SGGraph.insert(_:)(v61);
  if (v36)
  {

    swift_setDeallocating();
    swift_arrayDestroy();
    return;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  v37 = *&v26[v48];
  if (v37 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_38;
    }

LABEL_27:
    if ((v37 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x266772030](0, v37);
    }

    else
    {
      if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v38 = *(v37 + 32);
    }

    v39 = v38;
    goto LABEL_39;
  }

  if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

LABEL_38:
  v39 = 0;
LABEL_39:
  v41 = MEMORY[0x266771450](v43, a2);
  v42 = [a7 inputNamed_];

  SGGraph.connect(_:to:)(v39, v42);
}

uint64_t sub_265DFCC3C()
{
  outlined consume of SGDataTypeStorage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 96, 15);
}

uint64_t sub_265DFCC98()
{

  outlined consume of NodePersonality(*(v0 + 96));

  outlined consume of NodePersonality(*(v0 + 144));

  return MEMORY[0x2821FE8E8](v0, 185, 7);
}

uint64_t _HashTable.UnsafeHandle.idealBucket<A>(for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = 1 << *a2;
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (!v8)
  {
    return v9 & result;
  }

  __break(1u);
  return result;
}

unint64_t _HashTable.UnsafeHandle.bucketIterator(startingAt:)@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = _HashTable.UnsafeHandle._startIterator(bucket:)(a1, a2, a3);
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = a1;
  *(a4 + 24) = result;
  *(a4 + 32) = v9;
  *(a4 + 40) = v10;
  *(a4 + 48) = 0;
  return result;
}

Swift::Void __swiftcall _HashTable.BucketIterator.advance(until:)(Swift::Int until)
{
  for (i = v1[3]; i; i = v1[3])
  {
    v4 = -1 << **v1;
    v5 = (v4 ^ ~i) + (*(*v1 + 8) >> 6);
    if (v5 >= ~v4)
    {
      v6 = ~v4;
    }

    else
    {
      v6 = 0;
    }

    if (v5 - v6 == until)
    {
      break;
    }

    _HashTable.BucketIterator.advance()();
  }
}

uint64_t _HashTable.BucketIterator.currentValue.setter(uint64_t result, char a2)
{
  v3 = *v2;
  v4 = **v2 & 0x3FLL;
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = (-1 << v4) ^ ~((((result - (v3[1] >> 6)) >> 63) & ~(-1 << v4)) + result - (v3[1] >> 6));
  }

  v6 = *(v2 + 24) ^ v5;
  v7 = *(v2 + 8);
  v8 = v4 * *(v2 + 16);
  v9 = v8 >> 6;
  *(v7 + 8 * (v8 >> 6)) ^= v6 << v8;
  v10 = 64 - (v8 & 0x3F);
  v11 = *v3 & 0x3FLL;
  if (v10 >= v11)
  {
LABEL_12:
    *(v2 + 24) = v5;
    return result;
  }

  v12 = v11 << v11;
  v13 = __OFADD__(v12, 64);
  v14 = v12 + 64;
  if (!v13)
  {
    v16 = v14 - 1;
    v15 = v14 < 1;
    v17 = v14 + 62;
    if (!v15)
    {
      v17 = v16;
    }

    if (v9 + 1 == v17 >> 6)
    {
      v18 = 0;
    }

    else
    {
      v18 = v9 + 1;
    }

    *(v7 + 8 * v18) ^= v6 >> v10;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t _HashTable.BucketIterator.init(hashTable:startingAt:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = _HashTable.UnsafeHandle._startIterator(bucket:)(a3, a1, a2);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = result;
  *(a4 + 32) = v9;
  *(a4 + 40) = v10;
  *(a4 + 48) = 0;
  return result;
}

unint64_t _HashTable.UnsafeHandle._startIterator(bucket:)(unint64_t result, void *a2, uint64_t a3)
{
  v3 = *a2 & 0x3FLL;
  v4 = (v3 * result) >> 6;
  v5 = (v3 * result) & 0x3F;
  if ((v5 + v3) <= 0x40)
  {
    return (*(a3 + 8 * v4) >> v5) & ~(-1 << v3);
  }

  if (__OFADD__(v3 << v3, 64))
  {
    __break(1u);
  }

  else
  {
    v6 = *(a3 + 8 * v4);
    v7 = (v3 << v3) + 126;
    if ((v3 << v3) + 64 >= 1)
    {
      v7 = (v3 << v3) + 63;
    }

    if (v4 + 1 == v7 >> 6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v4 + 1;
    }

    return ((*(a3 + 8 * v8) << (64 - v5)) | (v6 >> v5)) & ~(-1 << v3);
  }

  return result;
}

uint64_t _HashTable.UnsafeHandle.idealBucket(forHashValue:)(uint64_t result, void *a2)
{
  v2 = 1 << *a2;
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (!v3)
  {
    return v4 & result;
  }

  __break(1u);
  return result;
}

uint64_t _HashTable.UnsafeHandle.bucketIterator<A>(for:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a5@<X8>)
{
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = 1 << *a1;
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = v11 & result;
    result = _HashTable.UnsafeHandle._startIterator(bucket:)(v11 & result, a1, a2);
    *a5 = a1;
    *(a5 + 8) = a2;
    *(a5 + 16) = v12;
    *(a5 + 24) = result;
    *(a5 + 32) = v13;
    *(a5 + 40) = v14;
    *(a5 + 48) = 0;
  }

  return result;
}

unint64_t _HashTable.UnsafeHandle.startFind(_:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = _HashTable.UnsafeHandle._startIterator(bucket:)(a2, a3, a4);
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a2;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0;
  if (!v8)
  {
    return 0;
  }

  v11 = -1 << *a3;
  v12 = (v11 ^ ~v8) + (a3[1] >> 6);
  if (v12 >= ~v11)
  {
    v13 = ~v11;
  }

  else
  {
    v13 = 0;
  }

  return v12 - v13;
}

unint64_t _HashTable.BucketIterator.currentValue.getter()
{
  v1 = v0[3];
  if (!v1)
  {
    return 0;
  }

  v2 = -1 << **v0;
  v3 = (v2 ^ ~v1) + (*(*v0 + 8) >> 6);
  if (v3 >= ~v2)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = 0;
  }

  return v3 - v4;
}

uint64_t (*_HashTable.BucketIterator.currentValue.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = v1[3];
  if (v2)
  {
    v3 = -1 << **v1;
    v4 = (v3 ^ ~v2) + (*(*v1 + 8) >> 6);
    if (v4 >= ~v3)
    {
      v5 = ~v3;
    }

    else
    {
      v5 = 0;
    }

    v6 = v4 - v5;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v2 == 0;
  return _HashTable.BucketIterator.currentValue.modify;
}

Swift::Void __swiftcall _HashTable.BucketIterator.advance()()
{
  v1 = *(v0 + 16) + 1;
  *(v0 + 16) = v1;
  v2 = **v0 & 0x3FLL;
  v3 = 1 << **v0;
  if (v1 != v3)
  {
LABEL_4:
    v4 = *(v0 + 40);
    if (v4 >= v2)
    {
      goto LABEL_21;
    }

    v5 = (v1 * v2) >> 6;
    if (v4)
    {
      if (__OFADD__(v2 << v2, 64))
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v6 = (v2 << v2) + 126;
      if ((v2 << v2) + 64 >= 1)
      {
        v6 = (v2 << v2) + 63;
      }

      if (v5 + 1 == v6 >> 6)
      {
        v5 = 0;
      }

      else
      {
        ++v5;
      }
    }

    v7 = *(*(v0 + 8) + 8 * v5);
    *(v0 + 24) = (*(v0 + 32) | (v7 << v4)) & (v3 - 1);
    v3 = v2 - v4;
    if (!__OFSUB__(v2, v4))
    {
      v8 = v5 == 2 && v2 == 5;
      v9 = 64;
      if (v8)
      {
        v9 = 32;
      }

      v4 = v7 >> v3;
      *(v0 + 32) = v7 >> v3;
      v10 = __OFSUB__(v9, v3);
      v2 = v9 - v3;
      if (!v10)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_21:
      v11 = *(v0 + 32);
      *(v0 + 24) = v11 & (v3 - 1);
      *(v0 + 32) = v11 >> v2;
      v2 = v4 - v2;
LABEL_22:
      *(v0 + 40) = v2;
      return;
    }

    __break(1u);
    goto LABEL_24;
  }

  if ((*(v0 + 48) & 1) == 0)
  {
    v1 = 0;
    *(v0 + 48) = 1;
    *(v0 + 16) = 0;
    goto LABEL_4;
  }

LABEL_25:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Int_optional __swiftcall _HashTable.BucketIterator.findNext()()
{
  _HashTable.BucketIterator.advance()();
  v1 = v0[3];
  if (v1)
  {
    v2 = -1 << **v0;
    v3 = (v2 ^ ~v1) + (*(*v0 + 8) >> 6);
    if (v3 >= ~v2)
    {
      v4 = ~v2;
    }

    else
    {
      v4 = 0;
    }

    v5 = v3 - v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v1 == 0;
  result.value = v5;
  result.is_nil = v6;
  return result;
}

Swift::Void __swiftcall _HashTable.BucketIterator.advanceToNextUnoccupiedBucket()()
{
  while (*(v0 + 24))
  {
    _HashTable.BucketIterator.advance()();
  }
}

void *sub_265DFD510@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[3];
  if (v2)
  {
    v3 = -1 << **result;
    v4 = (v3 ^ ~v2) + (*(*result + 8) >> 6);
    if (v4 >= ~v3)
    {
      v5 = ~v3;
    }

    else
    {
      v5 = 0;
    }

    v6 = v4 - v5;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v2 == 0;
  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for _HashTable.BucketIterator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for _HashTable.BucketIterator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

void *_HashTable.UnsafeHandle.wordCount.getter(void *result)
{
  v1 = (*result & 0x3FLL) << *result;
  v2 = __OFADD__(v1, 64);
  v3 = v1 + 64;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v5 = v3 - 1;
    v4 = v3 < 1;
    v6 = v3 + 62;
    if (!v4)
    {
      v6 = v5;
    }

    return (v6 >> 6);
  }

  return result;
}

Swift::Int __swiftcall _HashTable.UnsafeHandle.word(after:)(Swift::Int after)
{
  if (__OFADD__(after, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = (*v1 & 0x3FLL) << *v1;
  v3 = __OFADD__(v2, 64);
  v4 = v2 + 64;
  if (v3)
  {
LABEL_9:
    __break(1u);
    return after;
  }

  v6 = v4 - 1;
  v5 = v4 < 1;
  v7 = v4 + 62;
  if (!v5)
  {
    v7 = v6;
  }

  if (after + 1 == v7 >> 6)
  {
    return 0;
  }

  return ++after;
}

Swift::Int_optional __swiftcall _HashTable.UnsafeHandle._value(forBucketContents:)(Swift::UInt64 forBucketContents)
{
  if (forBucketContents)
  {
    v2 = -1 << *v1;
    v3 = (v2 ^ ~forBucketContents) + (v1[1] >> 6);
    if (v3 >= ~v2)
    {
      v4 = ~v2;
    }

    else
    {
      v4 = 0;
    }

    v5 = v3 - v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = forBucketContents == 0;
  v7 = v5;
  result.value = v7;
  result.is_nil = v6;
  return result;
}

Swift::UInt64 __swiftcall _HashTable.UnsafeHandle._bucketContents(for:)(Swift::Int_optional a1)
{
  if (a1.is_nil)
  {
    return 0;
  }

  else
  {
    return (-1 << *v1) ^ ~((((a1.value - (v1[1] >> 6)) >> 63) & ~(-1 << *v1)) + a1.value - (v1[1] >> 6));
  }
}

uint64_t _HashTable.UnsafeHandle.bias.setter(uint64_t result, void *a2)
{
  v2 = 1 << *a2;
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = (v4 & (result >> 63)) + result;
    if (v5 < v4)
    {
      v4 = 0;
    }

    a2[1] = a2[1] & 0x3FLL | ((v5 - v4) << 6);
  }

  return result;
}

uint64_t (*_HashTable.UnsafeHandle.bias.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1)
{
  *a1 = *(a2 + 8) >> 6;
  a1[1] = a2;
  return _HashTable.UnsafeHandle.bias.modify;
}

uint64_t _HashTable.UnsafeHandle.capacity.getter(uint64_t result)
{
  v1 = *result & 0x3FLL;
  if (v1 < 5)
  {
    return 15;
  }

  v2 = (1 << v1) * 0.75;
  if (COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 < 9.22337204e18)
  {
    return v2;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t _HashTable.UnsafeHandle.bucket(after:)(uint64_t result, void *a2)
{
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else if (result + 1 == 1 << *a2)
  {
    return 0;
  }

  else
  {
    ++result;
  }

  return result;
}

uint64_t _HashTable.UnsafeHandle.bucket(before:)(uint64_t a1, void *a2)
{
  if (!a1)
  {
    a1 = 1 << *a2;
  }

  v2 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall _HashTable.UnsafeHandle.word(before:)(Swift::Int before)
{
  if (before)
  {
    v2 = __OFSUB__(before--, 1);
    if (!v2)
    {
      return before;
    }

    __break(1u);
LABEL_9:
    __break(1u);
    return before;
  }

  v3 = (*v1 & 0x3FLL) << *v1;
  v2 = __OFADD__(v3, 64);
  v4 = v3 + 64;
  if (v2)
  {
    goto LABEL_9;
  }

  v6 = v4 - 1;
  v5 = v4 < 1;
  v7 = v4 + 62;
  if (!v5)
  {
    v7 = v6;
  }

  return (v7 >> 6) - 1;
}

uint64_t (*_HashTable.UnsafeHandle.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  a1[1] = a2;
  a1[2] = a4;
  *a1 = *(a4 + 8 * a2);
  return _HashTable.UnsafeHandle.subscript.modify;
}

uint64_t _HashTable.UnsafeHandle.subscript.getter(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *a2 & 0x3FLL;
  v4 = (v3 * result) >> 6;
  v5 = *(a3 + 8 * v4) >> (v3 * result);
  v6 = 64 - ((v3 * result) & 0x3F);
  if (v6 >= v3)
  {
    return v5 & ~(-1 << v3);
  }

  if (!__OFADD__(v3 << v3, 64))
  {
    v7 = (v3 << v3) + 126;
    if (((v3 << v3) + 64) >= 1)
    {
      v7 = (v3 << v3) + 63;
    }

    if (v4 + 1 == v7 >> 6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v4 + 1;
    }

    v5 = (*(a3 + 8 * v8) << v6) | v5 & ~(-1 << v6);
    return v5 & ~(-1 << v3);
  }

  __break(1u);
  return result;
}

unint64_t _HashTable.UnsafeHandle.subscript.setter(unint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = (*a3 & 0x3FLL) * a2;
  v5 = v4 >> 6;
  *(a4 + 8 * (v4 >> 6)) = ((((-1 << *a3) + 1) << v4) - 1) & *(a4 + 8 * (v4 >> 6)) | (result << v4);
  v6 = 64 - (v4 & 0x3F);
  v7 = *a3 & 0x3FLL;
  if (v6 < v7)
  {
    v8 = v7 << v7;
    v9 = __OFADD__(v8, 64);
    v10 = v8 + 64;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      v12 = v10 - 1;
      v11 = v10 < 1;
      v13 = v10 + 62;
      if (!v11)
      {
        v13 = v12;
      }

      if (v5 + 1 == v13 >> 6)
      {
        v14 = 0;
      }

      else
      {
        v14 = v5 + 1;
      }

      *(a4 + 8 * v14) = *(a4 + 8 * v14) & (-1 << (*a3 - v6)) | (result >> v6);
    }
  }

  return result;
}

unint64_t (*_HashTable.UnsafeHandle.subscript.modify(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4))(uint64_t a1)
{
  a1[2] = a3;
  a1[3] = a4;
  a1[1] = a2;
  *a1 = _HashTable.UnsafeHandle.subscript.getter(a2, a3, a4);
  return _HashTable.UnsafeHandle.subscript.modify;
}

unint64_t _HashTable.UnsafeHandle.subscript.getter(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = _HashTable.UnsafeHandle.subscript.getter(a1, a2, a3);
  if (!v4)
  {
    return 0;
  }

  v5 = -1 << *a2;
  v6 = (v5 ^ ~v4) + (a2[1] >> 6);
  if (v6 >= ~v5)
  {
    v7 = ~v5;
  }

  else
  {
    v7 = 0;
  }

  return v6 - v7;
}

unint64_t _HashTable.UnsafeHandle.subscript.setter(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = (-1 << *a4) ^ ~((((a1 - (a4[1] >> 6)) >> 63) & ~(-1 << *a4)) + a1 - (a4[1] >> 6));
  }

  return _HashTable.UnsafeHandle.subscript.setter(v5, a3, a4, a5);
}

void (*_HashTable.UnsafeHandle.subscript.modify(unint64_t **a1, uint64_t a2, void *a3, uint64_t a4))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  v10 = _HashTable.UnsafeHandle.subscript.getter(a2, a3, a4);
  if (v10)
  {
    v11 = -1 << *a3;
    v12 = (v11 ^ ~v10) + (a3[1] >> 6);
    if (v12 >= ~v11)
    {
      v13 = ~v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = v12 - v13;
  }

  else
  {
    v14 = 0;
  }

  *v9 = v14;
  *(v9 + 8) = v10 == 0;
  return _HashTable.UnsafeHandle.subscript.modify;
}

void _HashTable.UnsafeHandle.subscript.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  if (*(*a1 + 8))
  {
    v3 = 0;
  }

  else
  {
    v4 = *v1 - (v2[1] >> 6);
    v3 = (-1 << *v2) ^ ~(((v4 >> 63) & ~(-1 << *v2)) + v4);
  }

  _HashTable.UnsafeHandle.subscript.setter(v3, v1[2], v2, v1[4]);

  free(v1);
}

unint64_t _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a2;
  v46 = a6;
  v12 = *(*(a6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v40 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v42 = v12;
  v45 = a5;
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - v20;
  v43 = a1;
  v47 = a7;
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v23 = 1 << *a3;
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    v26 = _HashTable.UnsafeHandle.startFind(_:)(&v49, v25 & result, a3, a4);
    if ((v27 & 1) == 0)
    {
      v28 = (v13 + 8);
      v39 = (v19 + 16);
      v38 = (v19 + 8);
      while (1)
      {
        v29 = v40;
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
        v30 = *v28;
        v31 = v29;
        v32 = AssociatedTypeWitness;
        (*v28)(v31, AssociatedTypeWitness);
        v33 = dispatch thunk of Collection.subscript.read();
        (*v39)(v21);
        v33(v48, 0);
        v30(v17, v32);
        LOBYTE(v30) = dispatch thunk of static Equatable.== infix(_:_:)();
        (*v38)(v21, v18);
        if (v30)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        if (!v50)
        {
          return 0;
        }

        v34 = -1 << *v49;
        v35 = (v34 ^ ~v50) + (v49[1] >> 6);
        if (v35 >= ~v34)
        {
          v36 = ~v34;
        }

        else
        {
          v36 = 0;
        }

        v26 = v35 - v36;
      }
    }

    return v26;
  }

  return result;
}

uint64_t _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a2 & 0x3F;
  v5 = 1 << *a2;
  v6 = *a2;
  v7 = *a2;
  do
  {
    if (result)
    {
      v8 = result;
    }

    else
    {
      v8 = v5;
    }

    if (!result)
    {
      LOBYTE(v7) = v3;
    }

    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v9)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    if (!result)
    {
      LOBYTE(v6) = v3;
    }

    result = (v10 * v4) >> 6;
    v11 = *(a3 + 8 * result) >> (v10 * v4);
    v12 = 64 - ((v10 * v4) & 0x3F);
    if (v12 < v4)
    {
      v13 = (v7 & 0x3F) << v7;
      v9 = __OFADD__(v13, 64);
      v14 = v13 + 64;
      if (v9)
      {
        goto LABEL_24;
      }

      v16 = v14 - 1;
      v15 = v14 < 1;
      v17 = v14 + 62;
      if (!v15)
      {
        v17 = v16;
      }

      if (result + 1 == v17 >> 6)
      {
        v6 = 0;
      }

      else
      {
        v6 = result + 1;
      }

      v11 = (*(a3 + 8 * v6) << v12) | v11 & ~(-1 << v12);
      LOBYTE(v6) = v7;
    }

    result = v10;
  }

  while ((v11 & (v5 - 1)) != 0);
  if (__OFADD__(v10, 1))
  {
    goto LABEL_25;
  }

  if (v10 + 1 == 1 << v6)
  {
    return 0;
  }

  else
  {
    return v10 + 1;
  }
}

void specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2;
  v6 = a1;
  v37 = a2;
  v38 = a3;
  v39 = a1;
  v40 = _HashTable.UnsafeHandle._startIterator(bucket:)(a1, a2, a3);
  v41 = v7;
  v42 = v8;
  v43 = 0;
  _HashTable.BucketIterator.advance()();
  v9 = v40;
  if (!v40)
  {
LABEL_23:

    _HashTable.UnsafeHandle.subscript.setter(0, v6, v5, v4);
    return;
  }

  v32 = v4;
  v33 = v5;
  v31 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)(v6, v5, v4);
  while (1)
  {
    v14 = v37;
    v15 = -1 << *v37;
    v16 = (v15 ^ ~v9) + (v37[1] >> 6);
    v17 = v16 >= ~v15 ? ~v15 : 0;
    v18 = v16 - v17;
    if (v18 < 0)
    {
      break;
    }

    v19 = *(a4 + 8);
    if (v18 >= *(v19 + 16))
    {
      goto LABEL_27;
    }

    v20 = v19 + 56 * v18;
    v21 = *(v20 + 32);
    v22 = *(v20 + 40);
    v35 = *(v20 + 64);
    v23 = *(v20 + 72);
    v24 = *(v20 + 80);
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v21);
    v25 = *(*v22 + 120);

    v25(v36);
    String.hash(into:)();
    if (v23 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x266772770](v35);
    }

    MEMORY[0x266772770](v24);
    v26 = Hasher._finalize()();

    v5 = v33;
    v27 = 1 << *v33;
    v28 = __OFSUB__(v27, 1);
    v29 = v27 - 1;
    if (v28)
    {
      goto LABEL_28;
    }

    v30 = v29 & v26;
    if (v6 >= v31)
    {
      v4 = v32;
      if (v30 < v31)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v4 = v32;
      if (v30 >= v31)
      {
        goto LABEL_3;
      }
    }

    if (v6 >= v30)
    {
LABEL_3:
      v10 = -1 << *v14;
      v11 = (v10 ^ ~v9) + (v14[1] >> 6);
      if (v11 >= ~v10)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = 0;
      }

      v13 = v11 - (v33[1] >> 6) + v12;
      _HashTable.UnsafeHandle.subscript.setter(((v29 & (v13 >> 63)) + v13) ^ v29, v6, v33, v4);
      v6 = v39;
    }

LABEL_7:
    _HashTable.BucketIterator.advance()();
    v9 = v40;
    if (!v40)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

void specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a1;
  v34 = _HashTable.UnsafeHandle._startIterator(bucket:)(a1, a2, a3);
  v35 = v8;
  v36 = v9;
  v37 = 0;
  _HashTable.BucketIterator.advance()();
  v10 = v34;
  if (!v34)
  {

    _HashTable.UnsafeHandle.subscript.setter(0, v7, a2, a3);
    return;
  }

  v11 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)(v7, a2, a3);
  while (1)
  {
    v16 = v31;
    v17 = -1 << *v31;
    v18 = (v17 ^ ~v10) + (v31[1] >> 6);
    v19 = v18 >= ~v17 ? ~v17 : 0;
    v20 = v18 - v19;
    if (v20 < 0)
    {
      break;
    }

    v21 = *(a4 + 8);
    if (v20 >= *(v21 + 16))
    {
      goto LABEL_28;
    }

    outlined init with copy of WeakBox<SGEdge>(v21 + 8 * v20 + 32, v30);
    Hasher.init(_seed:)();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      Hasher._combine(_:)(1u);
      v24 = v23;
      NSObject.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v25 = Hasher._finalize()();
    outlined destroy of WeakBox<SGEdge>(v30);
    v26 = 1 << *a2;
    v27 = __OFSUB__(v26, 1);
    v28 = v26 - 1;
    if (v27)
    {
      goto LABEL_29;
    }

    v29 = v28 & v25;
    if (v7 >= v11)
    {
      if (v29 < v11)
      {
        goto LABEL_7;
      }
    }

    else if (v29 >= v11)
    {
      goto LABEL_3;
    }

    if (v7 >= v29)
    {
LABEL_3:
      v12 = -1 << *v16;
      v13 = (v12 ^ ~v10) + (v16[1] >> 6);
      if (v13 >= ~v12)
      {
        v14 = v12 + 1;
      }

      else
      {
        v14 = 0;
      }

      v15 = v13 - (a2[1] >> 6) + v14;
      _HashTable.UnsafeHandle.subscript.setter(((v28 & (v15 >> 63)) + v15) ^ v28, v7, a2, a3);
      v7 = v33;
    }

LABEL_7:
    _HashTable.BucketIterator.advance()();
    v10 = v34;
    if (!v34)
    {
      _HashTable.UnsafeHandle.subscript.setter(0, v7, a2, a3);
      return;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

{
  v7 = a1;
  v25 = _HashTable.UnsafeHandle._startIterator(bucket:)(a1, a2, a3);
  _HashTable.BucketIterator.advance()();
  v8 = v25;
  if (!v25)
  {

    _HashTable.UnsafeHandle.subscript.setter(0, v7, a2, a3);
    return;
  }

  v9 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)(v7, a2, a3);
  while (1)
  {
    v14 = -1 << *a2;
    v15 = (v14 ^ ~v8) + (a2[1] >> 6);
    v16 = v15 >= ~v14 ? ~v14 : 0;
    v17 = v15 - v16;
    if (v17 < 0)
    {
      break;
    }

    if (v17 >= *(*(a4 + 8) + 16))
    {
      goto LABEL_24;
    }

    Hasher.init(_seed:)();

    String.hash(into:)();
    v18 = Hasher._finalize()();

    v19 = 1 << *a2;
    v20 = __OFSUB__(v19, 1);
    v21 = v19 - 1;
    if (v20)
    {
      goto LABEL_25;
    }

    v22 = v21 & v18;
    if (v7 >= v9)
    {
      if (v22 < v9)
      {
        goto LABEL_7;
      }

LABEL_18:
      if (v7 < v22)
      {
        goto LABEL_7;
      }

      goto LABEL_3;
    }

    if (v22 < v9)
    {
      goto LABEL_18;
    }

LABEL_3:
    v10 = -1 << *a2;
    v11 = (v10 ^ ~v8) + (a2[1] >> 6);
    if (v11 >= ~v10)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = 0;
    }

    v13 = v11 - (a2[1] >> 6) + v12;
    _HashTable.UnsafeHandle.subscript.setter(((v21 & (v13 >> 63)) + v13) ^ v21, v7, a2, a3);
    v7 = a1;
LABEL_7:
    _HashTable.BucketIterator.advance()();
    v8 = v25;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

{
  v7 = a1;
  v23 = _HashTable.UnsafeHandle._startIterator(bucket:)(a1, a2, a3);
  _HashTable.BucketIterator.advance()();
  v8 = v23;
  if (!v23)
  {

    _HashTable.UnsafeHandle.subscript.setter(0, v7, a2, a3);
    return;
  }

  v9 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)(v7, a2, a3);
  while (1)
  {
    v10 = -1 << *a2;
    v11 = (v10 ^ ~v8) + (a2[1] >> 6);
    v12 = v11 >= ~v10 ? ~v10 : 0;
    v13 = v11 - v12;
    if ((v11 - v12) < 0)
    {
      break;
    }

    v14 = *(a4 + 8);
    if (v13 >= *(v14 + 16))
    {
      goto LABEL_28;
    }

    v15 = *a2;
    v16 = MEMORY[0x266772750](*a2, *(v14 + 8 * v13 + 32));
    v17 = (1 << v15) - 1;
    if (__OFSUB__(1 << v15, 1))
    {
      goto LABEL_29;
    }

    v18 = v16 & v17;
    if (v7 >= v9)
    {
      if (v18 >= v9 && v7 >= v18)
      {
LABEL_3:
        _HashTable.UnsafeHandle.subscript.setter(((v17 & ((v13 - (a2[1] >> 6)) >> 63)) + v13 - (a2[1] >> 6)) ^ v17, v7, a2, a3);
        v7 = a1;
      }
    }

    else if (v18 >= v9 || v7 >= v18)
    {
      goto LABEL_3;
    }

    _HashTable.BucketIterator.advance()();
    v8 = v23;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

{
  v7 = a1;
  v27 = _HashTable.UnsafeHandle._startIterator(bucket:)(a1, a2, a3);
  _HashTable.BucketIterator.advance()();
  v8 = v27;
  if (!v27)
  {

    _HashTable.UnsafeHandle.subscript.setter(0, v7, a2, a3);
    return;
  }

  v9 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)(v7, a2, a3);
  while (1)
  {
    v14 = -1 << *a2;
    v15 = (v14 ^ ~v8) + (a2[1] >> 6);
    v16 = v15 >= ~v14 ? ~v14 : 0;
    v17 = v15 - v16;
    if (v17 < 0)
    {
      break;
    }

    v18 = *(a4 + 8);
    if (v17 >= *(v18 + 16))
    {
      goto LABEL_24;
    }

    v19 = *(v18 + 8 * v17 + 32);
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v19);
    v20 = Hasher._finalize()();
    v21 = 1 << *a2;
    v22 = __OFSUB__(v21, 1);
    v23 = v21 - 1;
    if (v22)
    {
      goto LABEL_25;
    }

    v24 = v23 & v20;
    if (v7 >= v9)
    {
      if (v24 < v9)
      {
        goto LABEL_7;
      }

LABEL_18:
      if (v7 < v24)
      {
        goto LABEL_7;
      }

      goto LABEL_3;
    }

    if (v24 < v9)
    {
      goto LABEL_18;
    }

LABEL_3:
    v10 = -1 << *a2;
    v11 = (v10 ^ ~v8) + (a2[1] >> 6);
    if (v11 >= ~v10)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = 0;
    }

    v13 = v11 - (a2[1] >> 6) + v12;
    _HashTable.UnsafeHandle.subscript.setter(((v23 & (v13 >> 63)) + v13) ^ v23, v7, a2, a3);
    v7 = a1;
LABEL_7:
    _HashTable.BucketIterator.advance()();
    v8 = v27;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

{
  v7 = a1;
  v28 = _HashTable.UnsafeHandle._startIterator(bucket:)(a1, a2, a3);
  _HashTable.BucketIterator.advance()();
  v8 = v28;
  if (!v28)
  {

    _HashTable.UnsafeHandle.subscript.setter(0, v7, a2, a3);
    return;
  }

  v25 = a3;
  v9 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)(v7, a2, a3);
  while (1)
  {
    v14 = -1 << *a2;
    v15 = (v14 ^ ~v8) + (a2[1] >> 6);
    v16 = v15 >= ~v14 ? ~v14 : 0;
    v17 = v15 - v16;
    if (v17 < 0)
    {
      break;
    }

    v18 = *(a4 + 8);
    if (v17 >= *(v18 + 16))
    {
      goto LABEL_24;
    }

    v19 = *(v18 + 24 * v17 + 32);
    Hasher.init(_seed:)();
    MEMORY[0x2667727B0](v19);

    String.hash(into:)();
    v20 = Hasher._finalize()();

    v21 = 1 << *a2;
    v22 = __OFSUB__(v21, 1);
    v23 = v21 - 1;
    if (v22)
    {
      goto LABEL_25;
    }

    v24 = v23 & v20;
    if (v7 >= v9)
    {
      if (v24 < v9)
      {
        goto LABEL_7;
      }

LABEL_18:
      if (v7 < v24)
      {
        goto LABEL_7;
      }

      goto LABEL_3;
    }

    if (v24 < v9)
    {
      goto LABEL_18;
    }

LABEL_3:
    v10 = -1 << *a2;
    v11 = (v10 ^ ~v8) + (a2[1] >> 6);
    if (v11 >= ~v10)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = 0;
    }

    v13 = v11 - (a2[1] >> 6) + v12;
    _HashTable.UnsafeHandle.subscript.setter(((v23 & (v13 >> 63)) + v13) ^ v23, v7, a2, v25);
    v7 = a1;
LABEL_7:
    _HashTable.BucketIterator.advance()();
    v8 = v28;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(unint64_t a1, uint64_t (*a2)(unint64_t, uint64_t), uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = a1;
  v27 = _HashTable.UnsafeHandle._startIterator(bucket:)(a1, a4, a5);
  _HashTable.BucketIterator.advance()();
  v9 = v27;
  if (v27)
  {
    v10 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)(v8, a4, a5);
    while (1)
    {
      v15 = -1 << *a4;
      v16 = (v15 ^ ~v9) + (a4[1] >> 6);
      if (v16 >= ~v15)
      {
        v17 = ~v15;
      }

      else
      {
        v17 = 0;
      }

      result = a2(v16 - v17, *a4);
      v19 = 1 << *a4;
      v20 = __OFSUB__(v19, 1);
      v21 = v19 - 1;
      if (v20)
      {
        __break(1u);
        return result;
      }

      v22 = v21 & result;
      if (v8 >= v10)
      {
        if (v22 >= v10 && v8 >= v22)
        {
LABEL_3:
          v11 = -1 << *a4;
          v12 = (v11 ^ ~v9) + (a4[1] >> 6);
          if (v12 >= ~v11)
          {
            v13 = v11 + 1;
          }

          else
          {
            v13 = 0;
          }

          v14 = v12 - (a4[1] >> 6) + v13;
          _HashTable.UnsafeHandle.subscript.setter(((v21 & (v14 >> 63)) + v14) ^ v21, v8, a4, a5);
          v8 = a1;
        }
      }

      else if (v22 >= v10 || v8 >= v22)
      {
        goto LABEL_3;
      }

      _HashTable.BucketIterator.advance()();
      v9 = v27;
    }
  }

  return _HashTable.UnsafeHandle.subscript.setter(0, v8, a4, a5);
}

uint64_t _HashTable.UnsafeHandle.adjustContents<A>(preparingForInsertionOfElementAtOffset:in:)(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t), uint64_t a7)
{
  v193 = a7;
  v184 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v173 = type metadata accessor for PartialRangeFrom();
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v171 = &v170 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v195 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v191 = &v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v192 = &v170 - v17;
  v178 = v18;
  v19 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v19 - 8);
  v187 = (&v170 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v188 = &v170 - v22;
  v23 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v23);
  v181 = &v170 - v24;
  v186 = AssociatedTypeWitness;
  v183 = AssociatedConformanceWitness;
  v176 = type metadata accessor for PartialRangeUpTo();
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v174 = &v170 - v25;
  v180 = *(swift_getAssociatedConformanceWitness() + 8);
  v182 = v23;
  v194 = swift_getAssociatedTypeWitness();
  v177 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v189 = &v170 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v190 = &v170 - v28;
  v29 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v30);
  v32 = &v170 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v170 - v34;
  dispatch thunk of Collection.startIndex.getter();
  v185 = v35;
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v179 = v29;
  v36 = v32;
  v37 = v186;
  v184 = *(v29 + 8);
  v184(v36, v186);
  if (a1 < dispatch thunk of Collection.count.getter() / 2)
  {
    _HashTable.Header.bias.setter((a3[1] >> 6) + 1);
    if (specialized static _HashTable.maximumCapacity(forScale:)(*a3 & 0x3FLL) / 3 < a1)
    {
      v38 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, a3, a4);
      v39 = 0;
      v196 = a3;
      v197 = a4;
      v198 = 0;
      v199 = v38;
      v200 = v40;
      v201 = v41;
      v202 = 0;
      while (1)
      {
        if (v199)
        {
          v42 = v196;
          v43 = ~(-1 << *v196);
          v44 = v196[1] >> 6;
          v45 = v44 + (v199 ^ v43);
          v46 = v45 >= v43 ? ~(-1 << *v196) : 0;
          v47 = v45 - v46;
          if (v47 <= a1)
          {
            v48 = __OFSUB__(v47, 1);
            v49 = v47 - 1;
            if (v48)
            {
              goto LABEL_155;
            }

            v50 = *v196 & 0x3FLL;
            v51 = ((v43 & ((v49 - v44) >> 63)) + v49 - v44) ^ v43;
            v52 = v51 ^ v199;
            v53 = v50 * v39;
            v54 = (v50 * v39) >> 6;
            v55 = (v50 * v39) & 0x3F;
            v56 = v197;
            *(v197 + 8 * v54) ^= (v51 ^ v199) << v53;
            v57 = *v42 & 0x3FLL;
            if (64 - v55 < v57)
            {
              v58 = v57 << v57;
              v48 = __OFADD__(v58, 64);
              v59 = v58 + 64;
              if (v48)
              {
                goto LABEL_157;
              }

              v61 = v59 - 1;
              v60 = v59 < 1;
              v62 = v59 + 62;
              if (!v60)
              {
                v62 = v61;
              }

              if (v54 + 1 == v62 >> 6)
              {
                v63 = 0;
              }

              else
              {
                v63 = v54 + 1;
              }

              *(v56 + 8 * v63) ^= v52 >> (64 - v55);
            }

            v199 = v51;
          }
        }

        _HashTable.BucketIterator.advance()();
        v39 = v198;
        if (!v198)
        {
          return (v184)(v185, v37);
        }
      }
    }

    v91 = v185;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v183 = v29 + 8;
      v92 = v174;
      (*(v179 + 16))(v174, v91, v37);
      v93 = v176;
      swift_getWitnessTable();
      Collection.subscript.getter();
      (*(v175 + 8))(v92, v93);
      dispatch thunk of Sequence.makeIterator()();
      v94 = swift_getAssociatedConformanceWitness();
      v95 = v188;
      v191 = v94;
      dispatch thunk of IteratorProtocol.next()();
      v96 = v95;
      v97 = v178;
      v189 = *(v195 + 48);
      if ((v189)(v95, 1, v178) == 1)
      {
LABEL_91:
        (*(v177 + 8))(v190, v194);
        return (v184)(v185, v186);
      }

      v187 = *(v195 + 32);
      v195 += 32;
      v98 = (v195 - 24);
      v99 = 1;
      while (1)
      {
        v187(v192, v96, v97);
        v100 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v101 = 1 << *a3;
        v48 = __OFSUB__(v101, 1);
        v102 = v101 - 1;
        if (v48)
        {
          goto LABEL_149;
        }

        v103 = v102 & v100;
        v104 = _HashTable.UnsafeHandle._startIterator(bucket:)(v102 & v100, a3, a4);
        v196 = a3;
        v197 = a4;
        if (!v104)
        {
          goto LABEL_162;
        }

        v107 = *a3 & 0x3FLL;
        v108 = 1 << *a3;
        v109 = v108 - 1;
        v110 = a3[1] >> 6;
        v111 = v110 + (v104 ^ (v108 - 1));
        if (v111 >= v108 - 1)
        {
          v112 = v108 - 1;
        }

        else
        {
          v112 = 0;
        }

        if (v111 - v112 != v99)
        {
          v113 = 0;
          v114 = __OFADD__(v107 << v107, 64);
          v115 = (v107 << v107) + 126;
          if ((v107 << v107) + 64 >= 1)
          {
            v115 = (v107 << v107) + 63;
          }

          v116 = v115 >> 6;
          while (1)
          {
            if (++v103 == v108)
            {
              if (v113)
              {
                goto LABEL_164;
              }

              v103 = 0;
              v113 = 1;
            }

            if (v106 >= v107)
            {
              v48 = __OFSUB__(v106, v107);
              v106 -= v107;
              if (v48)
              {
                __break(1u);
LABEL_142:
                __break(1u);
LABEL_143:
                __break(1u);
LABEL_144:
                __break(1u);
LABEL_145:
                __break(1u);
                goto LABEL_146;
              }

              v123 = v105 >> v107;
            }

            else
            {
              v117 = (v103 * v107) >> 6;
              if (v106)
              {
                if (v114)
                {
                  goto LABEL_147;
                }

                if (v117 + 1 == v116)
                {
                  v117 = 0;
                }

                else
                {
                  ++v117;
                }
              }

              v118 = v107 - v106;
              if (__OFSUB__(v107, v106))
              {
                goto LABEL_142;
              }

              if (v117 == 2 && v107 == 5)
              {
                v120 = 32;
              }

              else
              {
                v120 = 64;
              }

              v48 = __OFSUB__(v120, v118);
              v121 = v120 - v118;
              if (v48)
              {
                goto LABEL_143;
              }

              v122 = *(a4 + 8 * v117);
              v105 |= v122 << v106;
              v123 = v122 >> v118;
              v106 = v121;
            }

            v104 = v105 & v109;
            if ((v105 & v109) == 0)
            {
              goto LABEL_162;
            }

            v124 = v110 + (v104 ^ v109);
            if (v124 >= v109)
            {
              v125 = v108 - 1;
            }

            else
            {
              v125 = 0;
            }

            v105 = v123;
            if (v124 - v125 == v99)
            {
              v105 = v123;
              goto LABEL_85;
            }
          }
        }

        v113 = 0;
LABEL_85:
        v202 = v113;
        v198 = v103;
        v199 = v104;
        v200 = v105;
        v201 = v106;
        v126 = -1 << v107;
        v127 = (v126 ^ ~v104) + v110;
        if (v127 >= ~v126)
        {
          v128 = ~v126;
        }

        else
        {
          v128 = 0;
        }

        v129 = v127 - v128;
        if (__OFSUB__(v129, 1))
        {
          goto LABEL_151;
        }

        _HashTable.BucketIterator.currentValue.setter(v129 - 1, 0);
        (*v98)(v192, v97);
        v48 = __OFADD__(v99++, 1);
        if (v48)
        {
          goto LABEL_152;
        }

        v130 = v188;
        dispatch thunk of IteratorProtocol.next()();
        v96 = v130;
        if ((v189)(v130, 1, v97) == 1)
        {
          goto LABEL_91;
        }
      }
    }

    goto LABEL_160;
  }

  v64 = dispatch thunk of Collection.count.getter();
  v65 = v64 - a1;
  if (__OFSUB__(v64, a1))
  {
    goto LABEL_158;
  }

  v192 = a2;
  if (__OFSUB__(v65, 1))
  {
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  if (specialized static _HashTable.maximumCapacity(forScale:)(*a3 & 0x3FLL) / 3 >= v65 - 1)
  {
    v131 = v185;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v183 = v29 + 8;
      v132 = v171;
      (*(v179 + 16))(v171, v131, v37);
      v133 = v173;
      swift_getWitnessTable();
      Collection.subscript.getter();
      (*(v172 + 8))(v132, v133);
      dispatch thunk of Sequence.makeIterator()();
      v134 = swift_getAssociatedConformanceWitness();
      v135 = v187;
      v192 = v134;
      dispatch thunk of IteratorProtocol.next()();
      v136 = v135;
      v137 = v178;
      v190 = *(v195 + 48);
      if ((v190)(v135, 1, v178) == 1)
      {
LABEL_140:
        (*(v177 + 8))(v189, v194);
        return (v184)(v185, v186);
      }

      v188 = *(v195 + 32);
      v195 += 32;
      v138 = (v195 - 24);
LABEL_95:
      (v188)(v191, v136, v137);
      v139 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v140 = 1 << *a3;
      v48 = __OFSUB__(v140, 1);
      v141 = v140 - 1;
      if (v48)
      {
        goto LABEL_150;
      }

      v142 = v141 & v139;
      v143 = _HashTable.UnsafeHandle._startIterator(bucket:)(v141 & v139, a3, a4);
      v196 = a3;
      v197 = a4;
      if (v143)
      {
        v146 = *a3 & 0x3FLL;
        v147 = 1 << *a3;
        v148 = v147 - 1;
        v149 = a3[1] >> 6;
        v150 = v149 + (v143 ^ (v147 - 1));
        if (v150 >= v147 - 1)
        {
          v151 = v147 - 1;
        }

        else
        {
          v151 = 0;
        }

        if (v150 - v151 == a1)
        {
          v152 = 0;
          goto LABEL_134;
        }

        v152 = 0;
        v153 = __OFADD__(v146 << v146, 64);
        v154 = (v146 << v146) + 126;
        if ((v146 << v146) + 64 >= 1)
        {
          v154 = (v146 << v146) + 63;
        }

        v155 = v154 >> 6;
        while (1)
        {
          if (++v142 == v147)
          {
            if (v152)
            {
              goto LABEL_164;
            }

            v142 = 0;
            v152 = 1;
          }

          if (v145 >= v146)
          {
            v48 = __OFSUB__(v145, v146);
            v145 -= v146;
            if (v48)
            {
              goto LABEL_144;
            }

            v162 = v144 >> v146;
          }

          else
          {
            v156 = (v142 * v146) >> 6;
            if (v145)
            {
              if (v153)
              {
                goto LABEL_148;
              }

              if (v156 + 1 == v155)
              {
                v156 = 0;
              }

              else
              {
                ++v156;
              }
            }

            v157 = v146 - v145;
            if (__OFSUB__(v146, v145))
            {
              goto LABEL_145;
            }

            if (v156 == 2 && v146 == 5)
            {
              v159 = 32;
            }

            else
            {
              v159 = 64;
            }

            v48 = __OFSUB__(v159, v157);
            v160 = v159 - v157;
            if (v48)
            {
LABEL_146:
              __break(1u);
LABEL_147:
              __break(1u);
LABEL_148:
              __break(1u);
LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
              goto LABEL_153;
            }

            v161 = *(a4 + 8 * v156);
            v144 |= v161 << v145;
            v162 = v161 >> v157;
            v145 = v160;
          }

          v143 = v144 & v148;
          if ((v144 & v148) == 0)
          {
            break;
          }

          v163 = v149 + (v143 ^ v148);
          if (v163 >= v148)
          {
            v164 = v147 - 1;
          }

          else
          {
            v164 = 0;
          }

          v144 = v162;
          if (v163 - v164 == a1)
          {
            v144 = v162;
LABEL_134:
            v202 = v152;
            v198 = v142;
            v199 = v143;
            v200 = v144;
            v201 = v145;
            v165 = -1 << v146;
            v166 = (v165 ^ ~v143) + v149;
            if (v166 >= ~v165)
            {
              v167 = ~v165;
            }

            else
            {
              v167 = 0;
            }

            v168 = v166 - v167;
            if (!__OFADD__(v168, 1))
            {
              _HashTable.BucketIterator.currentValue.setter(v168 + 1, 0);
              (*v138)(v191, v137);
              v48 = __OFADD__(a1++, 1);
              if (!v48)
              {
                v169 = v187;
                dispatch thunk of IteratorProtocol.next()();
                v136 = v169;
                if ((v190)(v169, 1, v137) == 1)
                {
                  goto LABEL_140;
                }

                goto LABEL_95;
              }

LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
              goto LABEL_159;
            }

LABEL_153:
            __break(1u);
            goto LABEL_154;
          }
        }
      }

LABEL_163:
      __break(1u);
LABEL_164:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  v66 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, a3, a4);
  v67 = 0;
  v196 = a3;
  v197 = a4;
  v198 = 0;
  v199 = v66;
  v200 = v68;
  v201 = v69;
  v202 = 0;
  while (1)
  {
    if (!v199)
    {
      goto LABEL_31;
    }

    v73 = v196;
    v74 = ~(-1 << *v196);
    v75 = v196[1] >> 6;
    v76 = v75 + (v199 ^ v74);
    v77 = v76 >= v74 ? ~(-1 << *v196) : 0;
    v78 = v76 - v77;
    if (v78 < a1)
    {
      goto LABEL_31;
    }

    v48 = __OFADD__(v78, 1);
    v79 = v78 + 1;
    if (v48)
    {
      goto LABEL_156;
    }

    v80 = *v196 & 0x3FLL;
    v81 = ((v74 & ((v79 - v75) >> 63)) + v79 - v75) ^ v74;
    v82 = v81 ^ v199;
    v83 = v80 * v67;
    v84 = (v80 * v67) >> 6;
    v85 = (v80 * v67) & 0x3F;
    v86 = v197;
    *(v197 + 8 * v84) ^= (v81 ^ v199) << v83;
    v87 = *v73 & 0x3FLL;
    if (64 - v85 < v87)
    {
      break;
    }

LABEL_30:
    v199 = v81;
LABEL_31:
    _HashTable.BucketIterator.advance()();
    v67 = v198;
    if (!v198)
    {
      return (v184)(v185, v37);
    }
  }

  v88 = v87 << v87;
  v48 = __OFADD__(v88, 64);
  v89 = v88 + 64;
  if (!v48)
  {
    v70 = v89 - 1;
    v60 = v89 < 1;
    v71 = v89 + 62;
    if (!v60)
    {
      v71 = v70;
    }

    if (v84 + 1 == v71 >> 6)
    {
      v72 = 0;
    }

    else
    {
      v72 = v84 + 1;
    }

    *(v86 + 8 * v72) ^= v82 >> (64 - v85);
    goto LABEL_30;
  }

  __break(1u);
  return (v184)(v185, v37);
}

uint64_t _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a7;
  v44 = a6;
  v40 = a3;
  v41 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v34 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  swift_getAssociatedConformanceWitness();
  v38 = type metadata accessor for Range();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v16 = &v31 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  v39 = a2;
  v42 = a5;
  dispatch thunk of Collection.index(after:)();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v22 = v17;
    v23 = *(v17 + 16);
    v23(v14, a1, AssociatedTypeWitness);
    v24 = TupleTypeMetadata2;
    v25 = &v14[*(TupleTypeMetadata2 + 48)];
    v33 = v20;
    v23(v25, v20, AssociatedTypeWitness);
    v26 = v37;
    v27 = v34;
    (*(v37 + 16))(v34, v14, v24);
    v28 = *(v24 + 48);
    v32 = *(v22 + 32);
    v32(v16, v27, AssociatedTypeWitness);
    v29 = *(v22 + 8);
    v29(&v27[v28], AssociatedTypeWitness);
    (*(v26 + 32))(v27, v14, v24);
    v30 = v38;
    v32(&v16[*(v38 + 36)], &v27[*(v24 + 48)], AssociatedTypeWitness);
    v29(v27, AssociatedTypeWitness);
    _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(v16, v39, v40, v41, v42, v44, v43);
    (*(v36 + 8))(v16, v30);
    return (v29)(v33, AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v199 = a7;
  v189 = a4;
  v190 = a3;
  v8 = *(*(a6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v180 = type metadata accessor for PartialRangeUpTo();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v178 = &v173 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v201 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v198 = &v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v197 = &v173 - v15;
  v202 = v16;
  v17 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v17 - 8);
  v194 = &v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v193 = (&v173 - v20);
  v21 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v21);
  v185 = &v173 - v22;
  v176 = type metadata accessor for PartialRangeFrom();
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v174 = &v173 - v23;
  v184 = *(swift_getAssociatedConformanceWitness() + 8);
  v186 = v21;
  v200 = swift_getAssociatedTypeWitness();
  v182 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v196 = &v173 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v195 = &v173 - v26;
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v173 - v29;
  dispatch thunk of Collection.startIndex.getter();
  v192 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  v183 = v27;
  v31 = *(v27 + 8);
  v31(v30, AssociatedTypeWitness);
  v187 = AssociatedConformanceWitness;
  v32 = *(type metadata accessor for Range() + 36);
  v191 = v8;
  dispatch thunk of Collection.startIndex.getter();
  v188 = a1;
  v177 = v32;
  v33 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  v34 = v192;
  v31(v30, AssociatedTypeWitness);
  v35 = v33 - v34;
  if (__OFSUB__(v33, v34))
  {
    goto LABEL_157;
  }

  if (v35 < 1)
  {
    return;
  }

  v36 = dispatch thunk of Collection.count.getter();
  v181 = v33 - v34;
  if (__OFSUB__(v36, v35))
  {
    goto LABEL_159;
  }

  if (v34 < (v36 - v35) / 2)
  {
    v37 = v190;
    if (v34 >= specialized static _HashTable.maximumCapacity(forScale:)(*v190 & 0x3FLL) / 3)
    {
      v121 = v189;
      v122 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, v37, v189);
      v123 = 0;
      v203 = v37;
      v204 = v121;
      v205 = 0;
      v206 = v122;
      v207 = v124;
      v208 = v125;
      v33 = 64;
      v209 = 0;
      v48 = v181;
      while (1)
      {
        if (v206)
        {
          v130 = v203;
          v131 = ~(-1 << *v203);
          v132 = v203[1] >> 6;
          v133 = v132 + (v206 ^ v131);
          v134 = v133 >= v131 ? ~(-1 << *v203) : 0;
          v135 = v133 - v134;
          if (v135 < v34)
          {
            v53 = __OFADD__(v135, v48);
            v136 = v135 + v48;
            if (v53)
            {
              goto LABEL_155;
            }

            v137 = *v203 & 0x3FLL;
            v138 = ((v131 & ((v136 - v132) >> 63)) + v136 - v132) ^ v131;
            v139 = v138 ^ v206;
            v140 = v137 * v123;
            v141 = (v137 * v123) >> 6;
            v142 = (v137 * v123) & 0x3F;
            v143 = v204;
            *(v204 + 8 * v141) ^= (v138 ^ v206) << v140;
            v144 = *v130 & 0x3FLL;
            if (64 - v142 < v144)
            {
              v145 = v144 << v144;
              v53 = __OFADD__(v145, 64);
              v146 = v145 + 64;
              if (v53)
              {
                __break(1u);
                goto LABEL_124;
              }

              v127 = v146 - 1;
              v126 = v146 < 1;
              v128 = v146 + 62;
              if (!v126)
              {
                v128 = v127;
              }

              if (v141 + 1 == v128 >> 6)
              {
                v129 = 0;
              }

              else
              {
                v129 = v141 + 1;
              }

              *(v143 + 8 * v129) ^= v139 >> (64 - v142);
            }

            v206 = v138;
          }
        }

        _HashTable.BucketIterator.advance()();
        v123 = v205;
        if (!v205)
        {
          goto LABEL_53;
        }
      }
    }

    v38 = v188;
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    v40 = v189;
    if ((v39 & 1) == 0)
    {
      goto LABEL_162;
    }

    v41 = v178;
    (*(v183 + 16))(v178, v38, AssociatedTypeWitness);
    v42 = v180;
    swift_getWitnessTable();
    Collection.subscript.getter();
    (*(v179 + 8))(v41, v42);
    dispatch thunk of Sequence.makeIterator()();
    v43 = swift_getAssociatedConformanceWitness();
    v44 = v194;
    v197 = v43;
    dispatch thunk of IteratorProtocol.next()();
    v45 = v202;
    v46 = *(v201 + 48);
    v195 = (v201 + 48);
    v193 = v46;
    v47 = v46(v44, 1, v202);
    v48 = v181;
    if (v47 != 1)
    {
      v49 = 0;
      v192 = *(v201 + 32);
      v201 += 32;
      v50 = (v201 - 24);
      do
      {
        v192(v198, v44, v45);
        v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v52 = 1 << *v37;
        v53 = __OFSUB__(v52, 1);
        v54 = v52 - 1;
        if (v53)
        {
          goto LABEL_149;
        }

        v55 = v54 & v51;
        v56 = _HashTable.UnsafeHandle._startIterator(bucket:)(v54 & v51, v37, v40);
        v203 = v37;
        v204 = v40;
        v205 = v55;
        v206 = v56;
        v207 = v57;
        v208 = v58;
        v209 = 0;
        v44 = v194;
        if (v56)
        {
          v59 = 1 << *v37;
          v60 = v59 - 1;
          v61 = v37[1] >> 6;
          v62 = v61 + (v56 ^ (v59 - 1));
          if (v62 >= v59 - 1)
          {
            v63 = v59 - 1;
          }

          else
          {
            v63 = 0;
          }

          if (v62 - v63 != v49)
          {
            v64 = 0;
            v65 = *v37 & 0x3FLL;
            v66 = __OFADD__(v65 << v65, 64);
            v67 = (v65 << v65) + 126;
            if ((v65 << v65) + 64 >= 1)
            {
              v67 = (v65 << v65) + 63;
            }

            v68 = v67 >> 6;
            while (1)
            {
              if (++v55 == v59)
              {
                if (v64)
                {
                  goto LABEL_164;
                }

                v55 = 0;
                v64 = 1;
              }

              if (v58 >= v65)
              {
                v53 = __OFSUB__(v58, v65);
                v58 -= v65;
                if (v53)
                {
                  __break(1u);
LABEL_142:
                  __break(1u);
LABEL_143:
                  __break(1u);
LABEL_144:
                  __break(1u);
LABEL_145:
                  __break(1u);
                  goto LABEL_146;
                }

                v78 = v57 >> v65;
                v56 = v57 & v60;
                if ((v57 & v60) == 0)
                {
                  goto LABEL_47;
                }
              }

              else
              {
                v71 = (v55 * v65) >> 6;
                if (v58)
                {
                  if (v66)
                  {
                    goto LABEL_147;
                  }

                  if (v71 + 1 == v68)
                  {
                    v71 = 0;
                  }

                  else
                  {
                    ++v71;
                  }
                }

                v72 = v65 - v58;
                if (__OFSUB__(v65, v58))
                {
                  goto LABEL_142;
                }

                if (v71 == 2 && v65 == 5)
                {
                  v74 = 32;
                }

                else
                {
                  v74 = 64;
                }

                v53 = __OFSUB__(v74, v72);
                v75 = v74 - v72;
                if (v53)
                {
                  goto LABEL_144;
                }

                v76 = *(v40 + 8 * v71);
                v77 = (v76 << v58) | v57;
                v78 = v76 >> v72;
                v58 = v75;
                v56 = v77 & v60;
                if ((v77 & v60) == 0)
                {
LABEL_47:
                  v57 = v78;
                  goto LABEL_48;
                }
              }

              v69 = v61 + (v56 ^ v60);
              if (v69 >= v60)
              {
                v70 = v59 - 1;
              }

              else
              {
                v70 = 0;
              }

              v57 = v78;
              if (v69 - v70 == v49)
              {
                goto LABEL_47;
              }
            }
          }

          v64 = 0;
LABEL_48:
          v209 = v64;
          v205 = v55;
          v206 = v56;
          v207 = v57;
          v208 = v58;
        }

        if (__OFADD__(v49, v48))
        {
          goto LABEL_151;
        }

        _HashTable.BucketIterator.currentValue.setter(v49 + v48, 0);
        (*v50)(v198, v202);
        v53 = __OFADD__(v49++, 1);
        if (v53)
        {
          goto LABEL_152;
        }

        dispatch thunk of IteratorProtocol.next()();
        v45 = v202;
      }

      while (v193(v44, 1, v202) != 1);
    }

    (*(v182 + 8))(v196, v200);
LABEL_53:
    v79 = v37[1] >> 6;
    if (__OFSUB__(v79, v48))
    {
      goto LABEL_161;
    }

    _HashTable.Header.bias.setter(v79 - v48);
    return;
  }

  v80 = dispatch thunk of Collection.count.getter();
  v37 = v190;
  if (__OFSUB__(v80, v33))
  {
    goto LABEL_160;
  }

  if (v80 - v33 >= specialized static _HashTable.maximumCapacity(forScale:)(*v190 & 0x3FLL) / 3)
  {
LABEL_124:
    v147 = v189;
    v148 = _HashTable.UnsafeHandle._startIterator(bucket:)(0, v37, v189);
    v149 = 0;
    v203 = v37;
    v204 = v147;
    v205 = 0;
    v206 = v148;
    v207 = v150;
    v208 = v151;
    v209 = 0;
    v152 = v181;
    while (1)
    {
      if (v206)
      {
        v153 = v203;
        v154 = ~(-1 << *v203);
        v155 = v203[1] >> 6;
        v156 = v155 + (v206 ^ v154);
        v157 = v156 >= v154 ? ~(-1 << *v203) : 0;
        v158 = v156 - v157;
        if (v158 >= v33)
        {
          v53 = __OFSUB__(v158, v152);
          v159 = v158 - v152;
          if (v53)
          {
            goto LABEL_156;
          }

          v160 = *v203 & 0x3FLL;
          v161 = ((v154 & ((v159 - v155) >> 63)) + v159 - v155) ^ v154;
          v162 = v161 ^ v206;
          v163 = v160 * v149;
          v164 = (v160 * v149) >> 6;
          v165 = (v160 * v149) & 0x3F;
          v166 = v204;
          *(v204 + 8 * v164) ^= (v161 ^ v206) << v163;
          v167 = *v153 & 0x3FLL;
          if (64 - v165 < v167)
          {
            v168 = v167 << v167;
            v53 = __OFADD__(v168, 64);
            v169 = v168 + 64;
            if (v53)
            {
              goto LABEL_158;
            }

            v170 = v169 - 1;
            v126 = v169 < 1;
            v171 = v169 + 62;
            if (!v126)
            {
              v171 = v170;
            }

            if (v164 + 1 == v171 >> 6)
            {
              v172 = 0;
            }

            else
            {
              v172 = v164 + 1;
            }

            *(v166 + 8 * v172) ^= v162 >> (64 - v165);
          }

          v206 = v161;
        }
      }

      _HashTable.BucketIterator.advance()();
      v149 = v205;
      if (!v205)
      {
        return;
      }
    }
  }

  v81 = v188;
  v82 = v177;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_163;
  }

  v83 = v81 + v82;
  v84 = v174;
  (*(v183 + 16))(v174, v83, AssociatedTypeWitness);
  v85 = v176;
  swift_getWitnessTable();
  Collection.subscript.getter();
  (*(v175 + 8))(v84, v85);
  dispatch thunk of Sequence.makeIterator()();
  v86 = swift_getAssociatedConformanceWitness();
  v87 = v193;
  v198 = v86;
  dispatch thunk of IteratorProtocol.next()();
  v88 = v202;
  v89 = *(v201 + 48);
  v196 = (v201 + 48);
  v194 = v89;
  v90 = (v89)(v87, 1, v202);
  v91 = v189;
  v92 = v181;
  if (v90 == 1)
  {
LABEL_103:
    (*(v182 + 8))(v195, v200);
    return;
  }

  v192 = *(v201 + 32);
  v201 += 32;
  v93 = (v201 - 24);
  while (1)
  {
    v192(v197, v87, v88);
    v94 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v95 = 1 << *v37;
    v53 = __OFSUB__(v95, 1);
    v96 = v95 - 1;
    if (v53)
    {
      goto LABEL_150;
    }

    v97 = v96 & v94;
    v98 = _HashTable.UnsafeHandle._startIterator(bucket:)(v96 & v94, v37, v91);
    v203 = v37;
    v204 = v91;
    v205 = v97;
    v206 = v98;
    v207 = v99;
    v208 = v100;
    v209 = 0;
    v87 = v193;
    if (!v98)
    {
      goto LABEL_100;
    }

    v101 = 1 << *v37;
    v102 = v101 - 1;
    v103 = v37[1] >> 6;
    v104 = v103 + (v98 ^ (v101 - 1));
    v105 = v104 >= v101 - 1 ? v101 - 1 : 0;
    if (v104 - v105 != v33)
    {
      break;
    }

    v106 = 0;
LABEL_99:
    v209 = v106;
    v205 = v97;
    v206 = v98;
    v207 = v99;
    v208 = v100;
LABEL_100:
    if (__OFSUB__(v33, v92))
    {
      goto LABEL_153;
    }

    _HashTable.BucketIterator.currentValue.setter(v33 - v92, 0);
    (*v93)(v197, v202);
    v53 = __OFADD__(v33++, 1);
    if (v53)
    {
      goto LABEL_154;
    }

    dispatch thunk of IteratorProtocol.next()();
    v88 = v202;
    if ((v194)(v87, 1, v202) == 1)
    {
      goto LABEL_103;
    }
  }

  v106 = 0;
  v107 = *v37 & 0x3FLL;
  v108 = __OFADD__(v107 << v107, 64);
  v109 = (v107 << v107) + 126;
  if ((v107 << v107) + 64 >= 1)
  {
    v109 = (v107 << v107) + 63;
  }

  v110 = v109 >> 6;
  while (1)
  {
    if (++v97 == v101)
    {
      if (v106)
      {
        goto LABEL_164;
      }

      v97 = 0;
      v106 = 1;
    }

    if (v100 < v107)
    {
      break;
    }

    v53 = __OFSUB__(v100, v107);
    v100 -= v107;
    if (v53)
    {
      goto LABEL_143;
    }

    v120 = v99 >> v107;
    v98 = v99 & v102;
    if ((v99 & v102) == 0)
    {
LABEL_98:
      v99 = v120;
      goto LABEL_99;
    }

LABEL_73:
    v111 = v103 + (v98 ^ v102);
    if (v111 >= v102)
    {
      v112 = v101 - 1;
    }

    else
    {
      v112 = 0;
    }

    v99 = v120;
    if (v111 - v112 == v33)
    {
      goto LABEL_98;
    }
  }

  v113 = (v97 * v107) >> 6;
  if (v100)
  {
    if (v108)
    {
      goto LABEL_148;
    }

    if (v113 + 1 == v110)
    {
      v113 = 0;
    }

    else
    {
      ++v113;
    }
  }

  v114 = v107 - v100;
  if (__OFSUB__(v107, v100))
  {
    goto LABEL_145;
  }

  if (v113 == 2 && v107 == 5)
  {
    v116 = 32;
  }

  else
  {
    v116 = 64;
  }

  v53 = __OFSUB__(v116, v114);
  v117 = v116 - v114;
  if (!v53)
  {
    v118 = *(v91 + 8 * v113);
    v119 = (v118 << v100) | v99;
    v120 = v118 >> v114;
    v100 = v117;
    v98 = v119 & v102;
    if ((v119 & v102) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_73;
  }

LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall _HashTable.UnsafeHandle.clear()()
{
  v2 = (*v0 & 0x3FLL) << *v0;
  v3 = __OFADD__(v2, 64);
  v4 = v2 + 64;
  if (v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  v5 = v4 - 1;
  if (v4 < 1)
  {
    v5 = v4 + 62;
  }

  if (v4 < -62)
  {
    goto LABEL_8;
  }

  if ((v4 + 62) >= 0x7F)
  {
    bzero(v1, 8 * (v5 >> 6));
  }
}

uint64_t _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v79 = a2;
  v77 = a1;
  v8 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v70 = &v58 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v78 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v69 = &v58 - v11;
  v12 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v12 - 8);
  v60 = &v58 - v13;
  v14 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v14);
  swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedTypeWitness();
  v59 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  v72 = v8;
  v73 = a4;
  dispatch thunk of Collection.indices.getter();
  dispatch thunk of Sequence.makeIterator()();
  v18 = v60;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v75 = v17;
  v76 = v15;
  v68 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v20 = v78;
  v66 = *(v78 + 48);
  v67 = v78 + 48;
  if (v66(v18, 1, v10) == 1)
  {
    return (*(v59 + 8))(v75, v76);
  }

  v21 = 0;
  v65 = *(v20 + 32);
  v64 = (v62 + 2);
  v78 = v20 + 32;
  v63 = (v20 + 8);
  ++v62;
  v61 = v10;
  while (1)
  {
    v22 = v69;
    v23 = v18;
    v65(v69, v18, v10);
    v24 = dispatch thunk of Collection.subscript.read();
    v26 = v70;
    v25 = AssociatedTypeWitness;
    (*v64)(v70);
    v24(v80, 0);
    (*v63)(v22, v10);
    v27 = v79;
    v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v29 = 1 << *v27;
    v30 = __OFSUB__(v29, 1);
    v31 = v29 - 1;
    if (v30)
    {
      goto LABEL_40;
    }

    v32 = v31 & v28;
    v33 = _HashTable.UnsafeHandle._startIterator(bucket:)(v31 & v28, v27, a3);
    v34 = v25;
    v36 = v35;
    v37 = v26;
    v39 = v38;
    v80[0] = v27;
    v80[1] = a3;
    v81 = v32;
    v82 = v33;
    v83 = v35;
    v84 = v38;
    v85 = 0;
    (*v62)(v37, v34);
    if (v33)
    {
      break;
    }

LABEL_33:
    _HashTable.BucketIterator.currentValue.setter(v21, 0);
    v30 = __OFADD__(v21++, 1);
    if (v30)
    {
      goto LABEL_41;
    }

    v18 = v23;
    dispatch thunk of IteratorProtocol.next()();
    v10 = v61;
    if (v66(v23, 1, v61) == 1)
    {
      return (*(v59 + 8))(v75, v76);
    }
  }

  v40 = 0;
  v41 = *v79 & 0x3FLL;
  v42 = v85;
  v43 = v41 << *v79;
  v44 = v43 + 64;
  v45 = __OFADD__(v43, 64);
  v47 = v44 - 1;
  v46 = v44 < 1;
  v48 = v44 + 62;
  if (!v46)
  {
    v48 = v47;
  }

  v49 = v48 >> 6;
  while (1)
  {
    if (++v32 == 1 << *v79)
    {
      if (v40)
      {
        goto LABEL_42;
      }

      v32 = 0;
      v42 = 1;
      v40 = 1;
    }

    if (v39 >= v41)
    {
      break;
    }

    v50 = (v32 * v41) >> 6;
    if (v39)
    {
      if (v45)
      {
        goto LABEL_39;
      }

      if (v50 + 1 == v49)
      {
        v50 = 0;
      }

      else
      {
        ++v50;
      }
    }

    v51 = v41 - v39;
    if (__OFSUB__(v41, v39))
    {
      goto LABEL_37;
    }

    if (v50 == 2 && v41 == 5)
    {
      v53 = 32;
    }

    else
    {
      v53 = 64;
    }

    v30 = __OFSUB__(v53, v51);
    v54 = v53 - v51;
    if (v30)
    {
      goto LABEL_38;
    }

    v55 = *(a3 + 8 * v50);
    v56 = (v55 << v39) | v36;
    v36 = v55 >> v51;
    v39 = v54;
LABEL_11:
    if ((v56 & ((1 << *v79) - 1)) == 0)
    {
      v85 = v42;
      v83 = v36;
      v84 = v39;
      v81 = v32;
      v82 = 0;
      goto LABEL_33;
    }
  }

  v30 = __OFSUB__(v39, v41);
  v39 -= v41;
  if (!v30)
  {
    v56 = v36;
    v36 >>= v41;
    goto LABEL_11;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v79 = a7;
  v64 = a4;
  v68 = a3;
  v83 = a2;
  v59 = a1;
  v73 = a6;
  v8 = *(*(a6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v72 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  v81 = swift_getAssociatedTypeWitness();
  v69 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v71 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v70 = &v56 - v16;
  MEMORY[0x28223BE20](v17);
  v82 = &v56 - v18;
  v19 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v56 - v20;
  v85 = v8;
  v22 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v22);
  swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedTypeWitness();
  v58 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v56 - v24;
  v80 = a5;
  v26 = v68;
  dispatch thunk of Collection.indices.getter();
  v27 = v69;
  dispatch thunk of Sequence.makeIterator()();
  v28 = v81;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v66 = v25;
  v67 = v23;
  v62 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v30 = *(v27 + 48);
  v61 = v27 + 48;
  v60 = v30;
  if (v30(v21, 1, v28) == 1)
  {
LABEL_2:
    (*(v58 + 8))(v66, v67);
    dispatch thunk of Collection.endIndex.getter();
    return 1;
  }

  else
  {
    v32 = 0;
    v34 = *(v27 + 32);
    v33 = v27 + 32;
    v63 = v34;
    v35 = v77++;
    v78 = (v35 + 2);
    v76 = (v33 - 24);
    v69 = v33;
    v57 = v21;
    v84 = v13;
    while (1)
    {
      v63(v82, v21, v28);
      v36 = dispatch thunk of Collection.subscript.read();
      v75 = *v78;
      v75(v13);
      v36(v86, 0);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = 1 << *v26;
      v38 = __OFSUB__(v37, 1);
      v39 = v37 - 1;
      if (v38)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        return result;
      }

      v65 = v32;
      v40 = v39 & result;
      v41 = v64;
      v42 = _HashTable.UnsafeHandle._startIterator(bucket:)(v39 & result, v26, v64);
      v87 = v26;
      v88 = v41;
      v89 = v40;
      v90 = v42;
      v91 = v43;
      v92 = v44;
      v93 = 0;
      v74 = *v77;
      v74(v13, AssociatedTypeWitness);
      if (v90)
      {
        break;
      }

LABEL_8:
      v54 = v65;
      _HashTable.BucketIterator.currentValue.setter(v65, 0);
      v28 = v81;
      result = (*v76)(v82, v81);
      v38 = __OFADD__(v54, 1);
      v32 = v54 + 1;
      if (v38)
      {
        goto LABEL_13;
      }

      v21 = v57;
      dispatch thunk of IteratorProtocol.next()();
      v55 = v60(v21, 1, v28);
      v26 = v68;
      if (v55 == 1)
      {
        goto LABEL_2;
      }
    }

    while (1)
    {
      v45 = v71;
      dispatch thunk of Collection.startIndex.getter();
      v46 = v70;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v47 = *v76;
      v48 = v81;
      (*v76)(v45, v81);
      v49 = dispatch thunk of Collection.subscript.read();
      v50 = v75;
      v75(v84);
      v49(v86, 0);
      v47(v46, v48);
      v13 = v84;
      v51 = dispatch thunk of Collection.subscript.read();
      v52 = v72;
      v50(v72);
      (v51)(v86, 0);
      LOBYTE(v51) = dispatch thunk of static Equatable.== infix(_:_:)();
      v53 = v74;
      v74(v52, AssociatedTypeWitness);
      v53(v13, AssociatedTypeWitness);
      if (v51)
      {
        break;
      }

      _HashTable.BucketIterator.advance()();
      if (!v90)
      {
        goto LABEL_8;
      }
    }

    (*(v58 + 8))(v66, v67);
    v63(v59, v82, v81);
    return 0;
  }
}

uint64_t sub_265E0235C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = _HashTable.UnsafeHandle.subscript.getter(*a2, *a1, *(a1 + 8));
  *a3 = result;
  return result;
}

Swift::Int sub_265E023B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = _HashTable.UnsafeHandle.subscript.getter(*a2, *a1, *(a1 + 8));
  v6 = _HashTable.UnsafeHandle._value(forBucketContents:)(v4);
  *a3 = v6.value;
  *(a3 + 8) = v6.is_nil;
  return v6.value;
}

uint64_t getEnumTagSinglePayload for _HashTable.UnsafeHandle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for _HashTable.UnsafeHandle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t outlined init with copy of WeakBox<SGEdge>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WeakBox<SGEdge>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _HashTable.Header._description.getter()
{
  _StringGuts.grow(_:)(50);

  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v0);

  MEMORY[0x266771550](0xD000000000000011, 0x8000000265F301A0);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  MEMORY[0x266771550](0x203A73616962202CLL, 0xE800000000000000);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v2);

  MEMORY[0x266771550](0x203A64656573202CLL, 0xE800000000000000);
  lazy protocol witness table accessor for type Int and conformance Int();
  v3 = String.init<A>(_:radix:uppercase:)();
  MEMORY[0x266771550](v3);

  MEMORY[0x266771550](41, 0xE100000000000000);
  return 0x203A656C61637328;
}

unint64_t _HashTable.Header.description.getter()
{
  _StringGuts.grow(_:)(19);

  v0 = _HashTable.Header._description.getter();
  MEMORY[0x266771550](v0);

  return 0xD000000000000011;
}

Swift::String __swiftcall _HashTable.UnsafeHandle._description(type:)(Swift::String type)
{
  v3 = v2;
  v4 = v1;
  object = type._object;
  countAndFlagsBits = type._countAndFlagsBits;
  _StringGuts.grow(_:)(22);
  MEMORY[0x266771550](countAndFlagsBits, object);
  v7 = _HashTable.Header._description.getter();
  MEMORY[0x266771550](v7);

  MEMORY[0x266771550](0xD000000000000010, 0x8000000265F301E0);
  _HashTable.UnsafeHandle.debugLoadFactor()();
  Double.write<A>(to:)();
  v9 = 0xE000000000000000;
  v8 = 0;
  if (1 << *v4 <= 127)
  {
    MEMORY[0x266771550](2105354, 0xE300000000000000);
    _HashTable.UnsafeHandle.debugContents()(v4, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySaySiSgGSSGMd, &_ss15LazyMapSequenceVySaySiSgGSSGMR);
    lazy protocol witness table accessor for type LazyMapSequence<[Int?], String> and conformance <> LazyMapSequence<A, B>();
    v10 = BidirectionalCollection<>.joined(separator:)();
    v12 = v11;

    MEMORY[0x266771550](v10, v12);

    v9 = 0xE000000000000000;
    v8 = 0;
  }

  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t closure #1 in _HashTable.UnsafeHandle._description(type:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 8))
  {
    v3 = 0xE100000000000000;
    result = 95;
  }

  else
  {
    result = dispatch thunk of CustomStringConvertible.description.getter();
  }

  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t _HashTable.UnsafeHandle.description.getter()
{
  v0._object = 0x8000000265F30200;
  v0._countAndFlagsBits = 0xD000000000000017;
  return _HashTable.UnsafeHandle._description(type:)(v0)._countAndFlagsBits;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _HashTable.UnsafeHandle()
{
  v0._object = 0x8000000265F30200;
  v0._countAndFlagsBits = 0xD000000000000017;
  return _HashTable.UnsafeHandle._description(type:)(v0)._countAndFlagsBits;
}

uint64_t _HashTable.description.getter()
{
  v0._countAndFlagsBits = 0x626154687361485FLL;
  v0._object = 0xEA0000000000656CLL;
  return _HashTable.UnsafeHandle._description(type:)(v0)._countAndFlagsBits;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _HashTable()
{
  v0._countAndFlagsBits = 0x626154687361485FLL;
  v0._object = 0xEA0000000000656CLL;
  return _HashTable.UnsafeHandle._description(type:)(v0)._countAndFlagsBits;
}

uint64_t _HashTable.Storage.description.getter()
{
  v0._object = 0x8000000265F30220;
  v0._countAndFlagsBits = 0xD000000000000012;
  return _HashTable.UnsafeHandle._description(type:)(v0)._countAndFlagsBits;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _HashTable.Storage()
{
  v0._object = 0x8000000265F30220;
  v0._countAndFlagsBits = 0xD000000000000012;
  return _HashTable.UnsafeHandle._description(type:)(v0)._countAndFlagsBits;
}

unint64_t lazy protocol witness table accessor for type LazyMapSequence<[Int?], String> and conformance <> LazyMapSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type LazyMapSequence<[Int?], String> and conformance <> LazyMapSequence<A, B>;
  if (!lazy protocol witness table cache variable for type LazyMapSequence<[Int?], String> and conformance <> LazyMapSequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss15LazyMapSequenceVySaySiSgGSSGMd, &_ss15LazyMapSequenceVySaySiSgGSSGMR);
    lazy protocol witness table accessor for type [Int?] and conformance [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyMapSequence<[Int?], String> and conformance <> LazyMapSequence<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Int?] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Int?] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int?] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiSgGMd, &_sSaySiSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Int?] and conformance [A]);
  }

  return result;
}

uint64_t truncatedDigestSummary(_:)(uint64_t a1)
{
  v1 = SHA512Digest.description.getter();
  v3 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v1, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = MEMORY[0x2667714E0](v3, v5, v7, v9);

  return v10;
}

uint64_t edgeListDigest(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[2] = a2;
  v3 = type metadata accessor for SHA512();
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  BidirectionalCollection<>.joined(separator:)();
  static String.Encoding.utf8.getter();
  v10 = String.data(using:allowLossyConversion:)();
  v12 = v11;

  (*(v7 + 8))(v9, v6);
  if (v12 >> 60 == 15)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v13 = xmmword_265F23200;
    *(v13 + 16) = 24;
    return swift_willThrow();
  }

  else
  {
    lazy protocol witness table accessor for type SHA512 and conformance SHA512();
    dispatch thunk of HashFunction.init()();
    outlined copy of Data._Representation(v10, v12);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v10, v12, v5);
    outlined consume of Data?(v10, v12);
    dispatch thunk of HashFunction.finalize()();
    outlined consume of Data?(v10, v12);
    return (*(v16 + 8))(v5, v3);
  }
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA512();
      lazy protocol witness table accessor for type SHA512 and conformance SHA512();
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  type metadata accessor for SHA512();
  lazy protocol witness table accessor for type SHA512 and conformance SHA512();
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x266770EC0]();
      type metadata accessor for SHA512();
      lazy protocol witness table accessor for type SHA512 and conformance SHA512();
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t specialized BidirectionalCollection.suffix(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
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

  result = String.index(_:offsetBy:limitedBy:)();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return String.subscript.getter();
}

unint64_t lazy protocol witness table accessor for type SHA512 and conformance SHA512()
{
  result = lazy protocol witness table cache variable for type SHA512 and conformance SHA512;
  if (!lazy protocol witness table cache variable for type SHA512 and conformance SHA512)
  {
    type metadata accessor for SHA512();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SHA512 and conformance SHA512);
  }

  return result;
}

uint64_t OrderedSet.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return a3;
}

{
  return ContiguousArray.subscript.getter();
}

uint64_t OrderedSet._copyToContiguousArray()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized OrderedSet._copyToContiguousArray()(a1, a2, a3);

  return v3;
}

uint64_t OrderedSet._copyContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[7] = a4;
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  v12 = Collection.isEmpty.getter();
  if ((v12 & 1) == 0)
  {
    MEMORY[0x28223BE20](v12);
    v15[2] = a5;
    v15[3] = a6;
    v15[4] = a1;
    v15[5] = a2;
    _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in OrderedSet._copyContents(initializing:), v15, a4, a5, MEMORY[0x277D83B88], MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v13);
  }

  return a3;
}

uint64_t OrderedSet.isEmpty.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  return Collection.isEmpty.getter() & 1;
}

uint64_t closure #1 in OrderedSet._copyContents(initializing:)@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, void *a6@<X8>)
{
  result = UnsafeMutableBufferPointer.baseAddress.getter();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = UnsafeBufferPointer.baseAddress.getter();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  if (a4 >= a2)
  {
    a4 = a2;
  }

  result = UnsafeMutablePointer.initialize(from:count:)();
  *a6 = a4;
  return result;
}

void protocol witness for Sequence.makeIterator() in conformance OrderedSet<A>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance OrderedSet<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance OrderedSet<A>(uint64_t a1)
{
  v2 = specialized OrderedSet._copyToContiguousArray()(*v1, v1[1], *(a1 + 16));

  return v2;
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance OrderedSet<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = OrderedSet._copyContents(initializing:)(a2, a3, *v4, v4[1], *(a4 + 16), *(a4 + 24));
  a1[1] = v6;
  a1[2] = v7;
  return v8;
}

uint64_t OrderedSet.indices.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  return v4;
}

Swift::Int __swiftcall OrderedSet.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall OrderedSet.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall OrderedSet.formIndex(after:)(Swift::Int *after)
{
  if (__OFADD__(*after, 1))
  {
    __break(1u);
  }

  else
  {
    ++*after;
  }
}

Swift::Void __swiftcall OrderedSet.formIndex(before:)(Swift::Int *before)
{
  if (__OFSUB__(*before, 1))
  {
    __break(1u);
  }

  else
  {
    --*before;
  }
}

Swift::Int __swiftcall OrderedSet.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall OrderedSet.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = limitedBy - _;
  if (__OFSUB__(limitedBy, _))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (offsetBy < 1)
  {
    if (v3 > 0 || v3 <= offsetBy)
    {
LABEL_9:
      v4 = __OFADD__(_, offsetBy);
      _ += offsetBy;
      if (!v4)
      {
        LOBYTE(offsetBy) = 0;
        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }

  else if (v3 < 0 || v3 >= offsetBy)
  {
    goto LABEL_9;
  }

  _ = 0;
  LOBYTE(offsetBy) = 1;
LABEL_13:
  result.is_nil = offsetBy;
  result.value = _;
  return result;
}