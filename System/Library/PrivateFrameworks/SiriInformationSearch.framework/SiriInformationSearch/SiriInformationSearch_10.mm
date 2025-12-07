uint64_t closure #1 in closure #1 in AudioUsoIntent.sort.getter(uint64_t a1)
{
  result = dispatch thunk of CodeGenGlobalArgs.usoSearchQualifier.getter();
  if (!result)
  {
    return result;
  }

  v2 = dispatch thunk of UsoEntity_common_SearchQualifier.sortDirections.getter();

  if (!v2)
  {
    return 0;
  }

  if (v2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_11:

    return 0;
  }

LABEL_5:
  if ((v2 & 0xC000000000000001) != 0)
  {
    MEMORY[0x223DDFF80](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  dispatch thunk of CodeGenListEntry.entry.getter();

  result = v3;
  if (v3)
  {

    return 1;
  }

  return result;
}

uint64_t AudioUsoIntent.modifiers.getter()
{
  if (*(v0 + 392))
  {
    v1 = *(v0 + 392);
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
    v2 = AudioUsoIntent.rootItems.getter();
    v3 = specialized Sequence.flatMap<A>(_:)(v2, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.modifiers.getter, 0);

    specialized Sequence.forEach(_:)(v3, &v5);

    v1 = v5;
    *(v0 + 392) = v5;
  }

  return v1;
}

uint64_t closure #2 in closure #1 in AudioUsoIntent.modifiers.getter(uint64_t a1, uint64_t *a2)
{
  if (!UsoEntity_common_MediaItem.isMoreOf()())
  {
    result = UsoEntity_common_MediaItem.isDifferentThan()();
    if ((result & 1) == 0)
    {
      return result;
    }

    v13 = *a2;
    Hasher.init(_seed:)();
    String.hash(into:)();
    v14 = Hasher._finalize()();
    v15 = -1 << *(v13 + 32);
    v16 = v14 & ~v15;
    if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
    {
      v17 = ~v15;
      while (*(*(v13 + 48) + v16) != 1)
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
          return result;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *a2;
    v11 = 1;
    v12 = v16;
LABEL_15:
    result = specialized _NativeSet.insertNew(_:at:isUnique:)(v11, v12, isUniquelyReferenced_nonNull_native);
    *a2 = v19;
    return result;
  }

  v3 = *a2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *a2;
    v11 = 0;
    v12 = v6;
    goto LABEL_15;
  }

  v7 = ~v5;
  while ((*(*(v3 + 48) + v6) & 1) != 0)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      return result;
    }

    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      goto LABEL_7;
    }
  }
}

uint64_t AudioUsoIntent.reference.getter()
{
  result = *(v0 + 400);
  if (result == 3)
  {
    result = closure #1 in AudioUsoIntent.reference.getter();
    *(v0 + 400) = result;
  }

  return result;
}

uint64_t closure #1 in AudioUsoIntent.reference.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v21 - v4;
  v6 = AudioUsoIntent.rootItems.getter();
  v7 = v6;
  v8 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
LABEL_26:
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  do
  {
    if (v9 == v10)
    {
      goto LABEL_13;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x223DDFF80](v10, v7);
      if (__OFADD__(v10, 1))
      {
LABEL_12:
        __break(1u);
LABEL_13:

LABEL_19:
        v19 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
        (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
        goto LABEL_20;
      }
    }

    else
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      v12 = *(v7 + 8 * v10 + 32);

      if (__OFADD__(v10, 1))
      {
        goto LABEL_12;
      }
    }

    v13 = specialized UsoEntity_common_MediaItem.findFirst(options:with:)(v11, v12);

    ++v10;
  }

  while (!v13);

  v14 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter();

  if (!v14)
  {

    goto LABEL_19;
  }

  dispatch thunk of UsoEntity_common_ReferenceType.definedValue.getter();

  v15 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v5, 1, v15) == 1)
  {
LABEL_20:
    v18 = 2;
    goto LABEL_21;
  }

  outlined init with copy of MediaUserStateCenter?(v5, v3, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v17 = (*(v16 + 88))(v3, v15);
  if (v17 == *MEMORY[0x277D5EE48])
  {
    v18 = 1;
    goto LABEL_21;
  }

  if (v17 != *MEMORY[0x277D5EE50])
  {
    (*(v16 + 8))(v3, v15);
    goto LABEL_20;
  }

  v18 = 0;
LABEL_21:
  outlined destroy of MediaUserStateCenter?(v5, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  return v18;
}

uint64_t AudioUsoIntent.genres.getter()
{
  if (*(v0 + 408))
  {
    v1 = *(v0 + 408);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.genres.getter();
    *(v0 + 408) = v1;
  }

  return v1;
}

uint64_t closure #1 in AudioUsoIntent.genres.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v30 = &v28 - v5;
  v6 = AudioUsoIntent.rootItems.getter();
  v7 = MEMORY[0x277D84F90];
  v8 = specialized Sequence.flatMap<A>(_:)(v6, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.decade.getter, 0);

  v9 = Array<A>.identifiers(forNamespace:)(2uLL, v8);

  v34 = *(v9 + 16);
  if (!v34)
  {
    v13 = v7;
    goto LABEL_23;
  }

  v11 = 0;
  v33 = v9 + 32;
  v36 = v1 + 16;
  v12 = (v1 + 8);
  v29 = (v1 + 32);
  v13 = MEMORY[0x277D84F90];
  v31 = v9;
LABEL_3:
  v32 = v13;
  while (v11 < *(v9 + 16))
  {
    v14 = *(v33 + 8 * v11++);
    v15 = *(v14 + 16);
    if (v15)
    {
      v35 = v11;
      v16 = v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

      v17 = 0;
      while (1)
      {
        if (v17 >= *(v14 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        (*(v1 + 16))(v4, v16 + *(v1 + 72) * v17, v0);
        v19 = UsoIdentifier.namespace.getter();
        if (v20)
        {
          if (v19 == 0x6E6547636973756DLL && v20 == 0xEA00000000006572)
          {

LABEL_16:
            v21 = v30;
            (*v29)(v30, v4, v0);
            v22 = UsoIdentifier.value.getter();
            v24 = v23;

            (*v12)(v21, v0);
            v13 = v32;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
              v13 = result;
            }

            v26 = *(v13 + 16);
            v25 = *(v13 + 24);
            if (v26 >= v25 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v13);
              v13 = result;
            }

            *(v13 + 16) = v26 + 1;
            v27 = v13 + 16 * v26;
            *(v27 + 32) = v22;
            *(v27 + 40) = v24;
            v11 = v35;
            v9 = v31;
            if (v35 == v34)
            {
LABEL_23:

              return v13;
            }

            goto LABEL_3;
          }

          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            goto LABEL_16;
          }
        }

        ++v17;
        result = (*v12)(v4, v0);
        if (v15 == v17)
        {

          v9 = v31;
          v13 = v32;
          v11 = v35;
          break;
        }
      }
    }

    if (v11 == v34)
    {
      goto LABEL_23;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

char *AudioUsoIntent.moods.getter()
{
  if (*(v0 + 416))
  {
    v1 = *(v0 + 416);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.moods.getter();
    *(v0 + 416) = v1;
  }

  return v1;
}

char *closure #1 in AudioUsoIntent.moods.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v30 = &v28 - v5;
  v6 = AudioUsoIntent.rootItems.getter();
  v7 = MEMORY[0x277D84F90];
  v8 = specialized Sequence.flatMap<A>(_:)(v6, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.decade.getter, 0);

  v9 = Array<A>.identifiers(forNamespace:)(3uLL, v8);

  result = v9;
  v34 = *(v9 + 16);
  if (!v34)
  {
    goto LABEL_21;
  }

  v11 = 0;
  v33 = v9 + 32;
  v36 = v1 + 16;
  v12 = (v1 + 8);
  v29 = (v1 + 32);
  v31 = v9;
LABEL_3:
  v32 = v7;
  while (v11 < *(result + 2))
  {
    v13 = *(v33 + 8 * v11++);
    v14 = *(v13 + 16);
    if (v14)
    {
      v35 = v11;
      v15 = v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

      v16 = 0;
      while (1)
      {
        if (v16 >= *(v13 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        (*(v1 + 16))(v4, v15 + *(v1 + 72) * v16, v0);
        v18 = UsoIdentifier.namespace.getter();
        if (v19)
        {
          if (v18 == 0x616C50616964656DLL && v19 == 0xEF646F6F4D726579)
          {

LABEL_16:
            v20 = v30;
            (*v29)(v30, v4, v0);
            v21 = UsoIdentifier.value.getter();
            v23 = v22;

            (*v12)(v20, v0);
            v7 = v32;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
            }

            result = v31;
            v11 = v35;
            v25 = *(v7 + 2);
            v24 = *(v7 + 3);
            if (v25 >= v24 >> 1)
            {
              v27 = v31;
              v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v7);
              result = v27;
              v11 = v35;
            }

            *(v7 + 2) = v25 + 1;
            v26 = &v7[16 * v25];
            *(v26 + 4) = v21;
            *(v26 + 5) = v23;
            if (v11 == v34)
            {
LABEL_21:

              return v7;
            }

            goto LABEL_3;
          }

          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {
            goto LABEL_16;
          }
        }

        ++v16;
        result = (*v12)(v4, v0);
        if (v14 == v16)
        {

          result = v31;
          v7 = v32;
          v11 = v35;
          break;
        }
      }
    }

    if (v11 == v34)
    {
      goto LABEL_21;
    }
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t AudioUsoIntent.activities.getter()
{
  if (*(v0 + 424))
  {
    v1 = *(v0 + 424);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.activities.getter();
    *(v0 + 424) = v1;
  }

  return v1;
}

uint64_t closure #1 in AudioUsoIntent.activities.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v29 = &v28 - v5;
  v6 = AudioUsoIntent.rootItems.getter();
  v7 = MEMORY[0x277D84F90];
  v8 = specialized Sequence.flatMap<A>(_:)(v6, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.decade.getter, 0);

  v9 = Array<A>.identifiers(forNamespace:)(4uLL, v8);

  v33 = *(v9 + 16);
  if (!v33)
  {
    v13 = v7;
    goto LABEL_23;
  }

  v11 = 0;
  v32 = v9 + 32;
  v35 = 0x80000002234D9D40;
  v36 = v1 + 16;
  v12 = (v1 + 8);
  v28 = (v1 + 32);
  v13 = MEMORY[0x277D84F90];
  v30 = v9;
LABEL_3:
  v31 = v13;
  while (v11 < *(v9 + 16))
  {
    v14 = *(v32 + 8 * v11++);
    v15 = *(v14 + 16);
    if (v15)
    {
      v34 = v11;
      v16 = v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

      v17 = 0;
      while (1)
      {
        if (v17 >= *(v14 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        (*(v1 + 16))(v4, v16 + *(v1 + 72) * v17, v0);
        v19 = UsoIdentifier.namespace.getter();
        if (v20)
        {
          if (v19 == 0xD000000000000013 && v20 == v35)
          {

LABEL_16:
            v21 = v29;
            (*v28)(v29, v4, v0);
            v22 = UsoIdentifier.value.getter();
            v24 = v23;

            (*v12)(v21, v0);
            v13 = v31;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
              v13 = result;
            }

            v26 = *(v13 + 16);
            v25 = *(v13 + 24);
            if (v26 >= v25 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v13);
              v13 = result;
            }

            *(v13 + 16) = v26 + 1;
            v27 = v13 + 16 * v26;
            *(v27 + 32) = v22;
            *(v27 + 40) = v24;
            v11 = v34;
            v9 = v30;
            if (v34 == v33)
            {
LABEL_23:

              return v13;
            }

            goto LABEL_3;
          }

          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            goto LABEL_16;
          }
        }

        ++v17;
        result = (*v12)(v4, v0);
        if (v15 == v17)
        {

          v9 = v30;
          v13 = v31;
          v11 = v34;
          break;
        }
      }
    }

    if (v11 == v33)
    {
      goto LABEL_23;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t AudioUsoIntent.radioType.getter()
{
  result = *(v0 + 432);
  if (result == 3)
  {
    result = closure #1 in AudioUsoIntent.radioType.getter();
    *(v0 + 432) = result;
  }

  return result;
}

uint64_t closure #1 in AudioUsoIntent.radioType.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v10 = AudioUsoIntent.rootItems.getter();
  v11 = MEMORY[0x277D84F90];
  v12 = specialized Sequence.flatMap<A>(_:)(v10, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.decade.getter, 0);

  v13 = Array<A>.identifiers(forNamespace:)(5uLL, v12);

  v46 = *(v13 + 16);
  if (v46)
  {
    v15 = 0;
    v45 = v13 + 32;
    v48 = 0x80000002234D9D60;
    v49 = v1 + 16;
    v16 = (v1 + 8);
    v39 = (v1 + 32);
    v42 = (v1 + 48);
    v43 = (v1 + 56);
    v38 = MEMORY[0x277D84F90];
    v40 = v7;
    v41 = v9;
    v44 = v13;
    while (1)
    {
      if (v15 >= *(v13 + 16))
      {
LABEL_37:
        __break(1u);
        return result;
      }

      v47 = v15;
      v17 = *(v45 + 8 * v15);
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = v17 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

        v20 = 0;
        while (v20 < *(v17 + 16))
        {
          (*(v1 + 16))(v3, v19 + *(v1 + 72) * v20, v0);
          v22 = UsoIdentifier.namespace.getter();
          if (v23)
          {
            if (v22 == 0xD000000000000014 && v23 == v48)
            {

LABEL_13:
              v9 = v41;
              (*v39)(v41, v3, v0);
              v24 = 0;
              v7 = v40;
              goto LABEL_16;
            }

            v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v21)
            {
              goto LABEL_13;
            }
          }

          ++v20;
          result = (*v16)(v3, v0);
          if (v18 == v20)
          {
            v24 = 1;
            v7 = v40;
            v9 = v41;
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_37;
      }

      v24 = 1;
LABEL_16:
      (*v43)(v9, v24, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v9, v7, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v25 = (*v42)(v7, 1, v0);
      v13 = v44;
      if (v25 == 1)
      {
        outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v26 = 0;
        v27 = 0xE000000000000000;
      }

      else
      {
        v26 = UsoIdentifier.value.getter();
        v27 = v28;
        (*v16)(v7, v0);
      }

      ++v47;
      v29._countAndFlagsBits = v26;
      v29._object = v27;
      v30 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of closure #1 in AudioUsoIntent.radioType.getter, v29);

      if (!v30)
      {
        break;
      }

      if (v30 == 1)
      {
        v31 = 1;
LABEL_25:
        outlined destroy of MediaUserStateCenter?(v9, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v32 = v38;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
          v32 = result;
        }

        v34 = *(v32 + 2);
        v33 = *(v32 + 3);
        v38 = v32;
        if (v34 >= v33 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v38);
          v38 = result;
        }

        v35 = v38;
        *(v38 + 2) = v34 + 1;
        v35[v34 + 32] = v31;
        v15 = v47;
        v9 = v41;
        if (v47 == v46)
        {
          goto LABEL_32;
        }
      }

      else
      {
        result = outlined destroy of MediaUserStateCenter?(v9, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v15 = v47;
        if (v47 == v46)
        {
          goto LABEL_32;
        }
      }
    }

    v31 = 0;
    goto LABEL_25;
  }

  v38 = v11;
LABEL_32:

  if (*(v38 + 2))
  {
    v36 = v38[32];
  }

  else
  {

    return 2;
  }

  return v36;
}

uint64_t AudioUsoIntent.frequency.getter()
{
  if ((*(v0 + 449) & 1) == 0)
  {
    return *(v0 + 440);
  }

  result = closure #1 in AudioUsoIntent.frequency.getter();
  *(v0 + 440) = result;
  *(v0 + 448) = v2 & 1;
  *(v0 + 449) = 0;
  return result;
}

uint64_t closure #1 in AudioUsoIntent.frequency.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - v8;
  v10 = AudioUsoIntent.rootItems.getter();
  v11 = MEMORY[0x277D84F90];
  v12 = specialized Sequence.flatMap<A>(_:)(v10, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.decade.getter, 0);

  v13 = Array<A>.identifiers(forNamespace:)(8uLL, v12);

  v58 = *(v13 + 16);
  if (v58)
  {
    v48 = 0;
    v15 = 0;
    v57 = v13 + 32;
    v61 = 0x80000002234D9DC0;
    v62 = v1 + 16;
    v16 = v1;
    v17 = (v1 + 8);
    v50 = (v16 + 32);
    v52 = v16;
    v54 = (v16 + 48);
    v55 = (v16 + 56);
    v49 = MEMORY[0x277D84F90];
    v63 = v0;
    v51 = v7;
    v56 = v13;
    v53 = v9;
    while (1)
    {
      if (v15 >= *(v13 + 16))
      {
LABEL_53:
        __break(1u);
        return result;
      }

      v18 = v9;
      v60 = v15;
      v19 = *(v57 + 8 * v15);
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v52;
        v22 = v19 + ((*(v52 + 80) + 32) & ~*(v52 + 80));

        v23 = 0;
        while (v23 < *(v19 + 16))
        {
          (*(v21 + 16))(v3, v22 + *(v21 + 72) * v23, v0);
          v25 = UsoIdentifier.namespace.getter();
          if (v26)
          {
            if (v25 == 0xD000000000000015 && v26 == v61)
            {

LABEL_13:
              v0 = v63;
              (*v50)(v18, v3, v63);
              v27 = 0;
LABEL_16:
              v7 = v51;
              goto LABEL_17;
            }

            v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v24)
            {
              goto LABEL_13;
            }
          }

          ++v23;
          v0 = v63;
          result = (*v17)(v3, v63);
          if (v20 == v23)
          {
            v27 = 1;
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_53;
      }

      v27 = 1;
LABEL_17:
      (*v55)(v18, v27, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v18, v7, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v28 = (*v54)(v7, 1, v0);
      v29 = v56;
      if (v28 == 1)
      {
        v30 = outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v31 = 0;
        v32 = 0xE000000000000000;
      }

      else
      {
        v31 = UsoIdentifier.value.getter();
        v32 = v33;
        v30 = (*v17)(v7, v0);
      }

      v67 = 0;
      MEMORY[0x28223BE20](v30);
      *(&v48 - 2) = &v67;
      v59 = v34;
      if ((v32 & 0x1000000000000000) == 0)
      {
        if ((v32 & 0x2000000000000000) != 0)
        {
          v64 = v31;
          v65 = v32 & 0xFFFFFFFFFFFFFFLL;
          v38 = (v31 >= 0x21u || ((0x100003E01uLL >> v31) & 1) == 0) && (v37 = _swift_stdlib_strtod_clocale()) != 0 && *v37 == 0;
          v0 = v63;
          v13 = v29;
          v66 = v38;

          goto LABEL_34;
        }

        if ((v31 & 0x1000000000000000) != 0)
        {
          v35 = *((v32 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          if (v35 < 0x21 && ((0x100003E01uLL >> v35) & 1) != 0)
          {
            v36 = 0;
            v0 = v63;
            v13 = v29;
          }

          else
          {
            v39 = _swift_stdlib_strtod_clocale();
            v0 = v63;
            v13 = v29;
            if (v39)
            {
              v36 = *v39 == 0;
            }

            else
            {
              v36 = 0;
            }
          }

          v9 = v53;
          v66 = v36;

          goto LABEL_37;
        }
      }

      v46 = v48;
      _StringGuts._slowWithCString<A>(_:)();
      v48 = v46;
      v13 = v56;

      v0 = v63;
LABEL_34:
      v9 = v53;
LABEL_37:
      v15 = v60 + 1;
      v40 = v66;
      result = outlined destroy of MediaUserStateCenter?(v9, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      if (v40)
      {
        v41 = v67;
        result = swift_isUniquelyReferenced_nonNull_native();
        v42 = v7;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
          v49 = result;
        }

        v44 = *(v49 + 2);
        v43 = *(v49 + 3);
        if (v44 >= v43 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v49);
          v49 = result;
        }

        v45 = v49;
        *(v49 + 2) = v44 + 1;
        *&v45[8 * v44 + 32] = v41;
        v7 = v42;
        if (v15 == v58)
        {
          goto LABEL_48;
        }
      }

      else if (v15 == v58)
      {
        goto LABEL_48;
      }
    }
  }

  v49 = v11;
LABEL_48:

  if (*(v49 + 2))
  {
    v47 = *(v49 + 4);
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

uint64_t closure #2 in closure #1 in AudioUsoIntent.noun.getter()
{
  v0 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = v1;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
  {

    return 0;
  }

  return 1;
}

uint64_t AudioUsoIntent.mediaIdentifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 456);

  return v1;
}

uint64_t AudioUsoIntent.mediaIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 456) = a1;
  *(v2 + 464) = a2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AudioUsoIntent.UsoNamespace(char *a1, char *a2)
{
  v2 = *a2;
  v3 = AudioUsoIntent.UsoNamespace.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == AudioUsoIntent.UsoNamespace.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AudioUsoIntent.UsoNamespace()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AudioUsoIntent.UsoNamespace.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AudioUsoIntent.UsoNamespace(uint64_t a1)
{
  AudioUsoIntent.UsoNamespace.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioUsoIntent.UsoNamespace(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  AudioUsoIntent.UsoNamespace.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AudioUsoIntent.UsoNamespace@<X0>(Swift::String *a1@<X0>, SiriInformationSearch::AudioUsoIntent::UsoNamespace_optional *a2@<X8>)
{
  result = specialized AudioUsoIntent.UsoNamespace.init(rawValue:)(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AudioUsoIntent.UsoNamespace@<X0>(unint64_t *a1@<X8>)
{
  result = AudioUsoIntent.UsoNamespace.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int AudioUsoIntent.IterationOptions.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](0);
  return Hasher._finalize()();
}

uint64_t *AudioUsoIntent.deinit()
{

  _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(v0[19]);
  outlined consume of [CodeGenListEntry<UsoEntity_common_UserEntity>]??(v0[20]);
  _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(v0[21]);

  _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(v0[25]);

  _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(v0[36]);

  outlined consume of String??(v0[42], v0[43]);

  return v0;
}

uint64_t AudioUsoIntent.__deallocating_deinit()
{
  AudioUsoIntent.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized closure #1 in closure #1 in AudioUsoIntent.playlistMediaItems.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoIdentifier();
  v3 = *(v2 - 8);
  v99 = v2;
  v100 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v101 = v82 - v7;
  v97 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v8 = *(v97 - 1);
  MEMORY[0x28223BE20](v97);
  v83 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v10 = MEMORY[0x28223BE20](v95);
  v91 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v82 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v90 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v88 = v82 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v89 = v82 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v82 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v82 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v82 - v27;
  v96 = a1;
  v29 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  if (v30)
  {
    v31 = v29;
    v32 = v30;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v31 & 0xFFFFFFFFFFFFLL;
    }

    v92 = v33 != 0;
  }

  else
  {
    v92 = 0;
  }

  v34 = dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter();
  v98 = v6;
  v93 = v23;
  if (v34)
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v8 + 56))(v28, 1, 1, v97);
  }

  v35 = *MEMORY[0x277D5EE18];
  v36 = v97;
  v85 = *(v8 + 104);
  v86 = v8 + 104;
  v85(v26, v35, v97);
  v84 = *(v8 + 56);
  v84(v26, 0, 1, v36);
  v37 = *(v95 + 48);
  outlined init with copy of MediaUserStateCenter?(v28, v13, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v26, &v13[v37], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v94 = v8;
  v38 = *(v8 + 48);
  v39 = v38(v13, 1, v36);
  v87 = v38;
  if (v39 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v26, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v28, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v38(&v13[v37], 1, v97) == 1)
    {
      v40 = v13;
LABEL_23:
      outlined destroy of MediaUserStateCenter?(v40, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
LABEL_24:
      LODWORD(v95) = 1;
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  v41 = v93;
  outlined init with copy of MediaUserStateCenter?(v13, v93, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v38(&v13[v37], 1, v97) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v26, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v28, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v94 + 8))(v41, v97);
LABEL_14:
    outlined destroy of MediaUserStateCenter?(v13, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    goto LABEL_15;
  }

  v82[1] = v8 + 56;
  v46 = v94;
  v47 = v83;
  v48 = v97;
  (*(v94 + 32))(v83, &v13[v37], v97);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v50 = *(v46 + 8);
  v50(v47, v48);
  outlined destroy of MediaUserStateCenter?(v26, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v28, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v50(v93, v48);
  outlined destroy of MediaUserStateCenter?(v13, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v49)
  {
    goto LABEL_24;
  }

LABEL_15:
  if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
  {
    v42 = v89;
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();

    v43 = v91;
    v44 = v88;
    v45 = v84;
  }

  else
  {
    v42 = v89;
    v45 = v84;
    v84(v89, 1, 1, v97);
    v43 = v91;
    v44 = v88;
  }

  v51 = v97;
  v85(v44, *MEMORY[0x277D5ED50], v97);
  v45(v44, 0, 1, v51);
  v52 = *(v95 + 48);
  outlined init with copy of MediaUserStateCenter?(v42, v43, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v44, v43 + v52, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v53 = v87;
  if (v87(v43, 1, v51) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v42, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v53(v43 + v52, 1, v97) == 1)
    {
      v40 = v43;
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  outlined init with copy of MediaUserStateCenter?(v43, v90, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v53(v43 + v52, 1, v97) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v42, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v94 + 8))(v90, v97);
LABEL_27:
    outlined destroy of MediaUserStateCenter?(v43, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    LODWORD(v95) = 0;
    goto LABEL_29;
  }

  v54 = v94;
  v55 = v90;
  v56 = v83;
  v57 = v97;
  (*(v94 + 32))(v83, v43 + v52, v97);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
  LODWORD(v95) = dispatch thunk of static Equatable.== infix(_:_:)();
  v58 = *(v54 + 8);
  v58(v56, v57);
  outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v42, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v58(v55, v57);
  outlined destroy of MediaUserStateCenter?(v43, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
LABEL_29:
  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v60 = result;
  v61 = *(result + 16);
  if (v61)
  {
    v62 = 0;
    v63 = v99;
    v64 = result + ((*(v100 + 80) + 32) & ~*(v100 + 80));
    v97 = "nAppVocPreflightClient";
    v65 = (v100 + 8);
    while (1)
    {
      if (v62 >= *(v60 + 16))
      {
        __break(1u);
        goto LABEL_61;
      }

      (*(v100 + 16))(v101, v64 + *(v100 + 72) * v62, v63);
      v66 = UsoIdentifier.namespace.getter();
      if (!v67)
      {
        break;
      }

      if (v66 == 0x7473696C79616C70 && v67 == 0xED0000656C746954)
      {
      }

      else
      {
        v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v68 & 1) == 0)
        {
          break;
        }
      }

      UsoIdentifier.appBundleId.getter();
      v69 = String.lowercased()();

      v70 = String.lowercased()();
      if (v69._countAndFlagsBits == v70._countAndFlagsBits && v69._object == v70._object)
      {

        (*v65)(v101, v99);
LABEL_45:
        LODWORD(v101) = 0;
        goto LABEL_46;
      }

      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v63 = v99;
      result = (*v65)(v101, v99);
      if (v71)
      {
        goto LABEL_45;
      }

LABEL_32:
      if (v61 == ++v62)
      {
        goto LABEL_43;
      }
    }

    v63 = v99;
    result = (*v65)(v101, v99);
    goto LABEL_32;
  }

LABEL_43:
  LODWORD(v101) = 1;
LABEL_46:

  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v72 = result;
  v73 = *(result + 16);
  v74 = v99;
  if (v73)
  {
    v75 = 0;
    v76 = result + ((*(v100 + 80) + 32) & ~*(v100 + 80));
    v77 = (v100 + 8);
    while (v75 < *(v72 + 16))
    {
      v78 = v98;
      (*(v100 + 16))(v98, v76 + *(v100 + 72) * v75, v74);
      v79 = UsoIdentifier.namespace.getter();
      if (v80)
      {
        if (v79 == 0xD000000000000010 && v80 == 0x80000002234D9610)
        {

          (*v77)(v98, v99);
LABEL_58:

          return 0;
        }

        v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v74 = v99;
        result = (*v77)(v98, v99);
        if (v81)
        {
          goto LABEL_58;
        }
      }

      else
      {
        result = (*v77)(v78, v74);
      }

      if (v73 == ++v75)
      {
        goto LABEL_56;
      }
    }

LABEL_61:
    __break(1u);
  }

  else
  {
LABEL_56:

    return v92 & v95 & v101;
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in AudioUsoIntent.applePlaylistTitles.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoIdentifier();
  v3 = *(v2 - 8);
  v104 = v2;
  v105 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v85[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v85[-v7];
  v102 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v9 = *(v102 - 1);
  MEMORY[0x28223BE20](v102);
  v88 = &v85[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v11 = MEMORY[0x28223BE20](v100);
  v95 = &v85[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v85[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v94 = &v85[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v97 = &v85[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v93 = &v85[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v85[-v23];
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v85[-v26];
  MEMORY[0x28223BE20](v25);
  v29 = &v85[-v28];
  v101 = a1;
  v30 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  if (v31)
  {
    v32 = v30;
    v33 = v31;

    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v32 & 0xFFFFFFFFFFFFLL;
    }

    v35 = v34 == 0;
  }

  else
  {
    v35 = 1;
  }

  v99 = v35;
  v36 = dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter();
  v103 = v6;
  v96 = v24;
  if (v36)
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v9 + 56))(v29, 1, 1, v102);
  }

  v37 = *MEMORY[0x277D5EE18];
  v38 = v102;
  v90 = *(v9 + 104);
  v91 = v9 + 104;
  v90(v27, v37, v102);
  v89 = *(v9 + 56);
  v89(v27, 0, 1, v38);
  v39 = *(v100 + 48);
  outlined init with copy of MediaUserStateCenter?(v29, v14, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v27, &v14[v39], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v98 = v9;
  v40 = *(v9 + 48);
  v41 = v40(v14, 1, v38);
  v92 = v40;
  if (v41 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v27, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v29, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v40(&v14[v39], 1, v102) == 1)
    {
      v42 = v14;
LABEL_23:
      outlined destroy of MediaUserStateCenter?(v42, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
LABEL_24:
      LODWORD(v100) = 0;
      goto LABEL_30;
    }

    goto LABEL_14;
  }

  v43 = v96;
  outlined init with copy of MediaUserStateCenter?(v14, v96, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v40(&v14[v39], 1, v102) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v27, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v29, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v98 + 8))(v43, v102);
LABEL_14:
    outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    goto LABEL_15;
  }

  v87 = v9 + 56;
  v48 = v98;
  v49 = v88;
  v50 = v102;
  (*(v98 + 32))(v88, &v14[v39], v102);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
  v86 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v48 + 8);
  v51(v49, v50);
  outlined destroy of MediaUserStateCenter?(v27, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v29, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v51(v96, v50);
  outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v86)
  {
    goto LABEL_24;
  }

LABEL_15:
  if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
  {
    v44 = v93;
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();

    v45 = v95;
    v46 = v97;
    v47 = v89;
  }

  else
  {
    v44 = v93;
    v47 = v89;
    v89(v93, 1, 1, v102);
    v45 = v95;
    v46 = v97;
  }

  v52 = v102;
  v90(v46, *MEMORY[0x277D5ED50], v102);
  v47(v46, 0, 1, v52);
  v53 = *(v100 + 48);
  outlined init with copy of MediaUserStateCenter?(v44, v45, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v46, v45 + v53, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v54 = v92;
  if (v92(v45, 1, v52) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v46, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v54(v45 + v53, 1, v102) == 1)
    {
      v42 = v45;
      goto LABEL_23;
    }
  }

  else
  {
    outlined init with copy of MediaUserStateCenter?(v45, v94, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v54(v45 + v53, 1, v102) != 1)
    {
      v56 = v98;
      v57 = v94;
      v58 = v88;
      v59 = v102;
      (*(v98 + 32))(v88, v45 + v53, v102);
      _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
      v60 = dispatch thunk of static Equatable.== infix(_:_:)();
      v61 = *(v56 + 8);
      v61(v58, v59);
      outlined destroy of MediaUserStateCenter?(v97, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v61(v57, v59);
      outlined destroy of MediaUserStateCenter?(v45, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v55 = v60 ^ 1;
      goto LABEL_29;
    }

    outlined destroy of MediaUserStateCenter?(v46, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v98 + 8))(v94, v102);
  }

  outlined destroy of MediaUserStateCenter?(v45, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v55 = 1;
LABEL_29:
  LODWORD(v100) = v55;
LABEL_30:
  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v63 = result;
  v64 = *(result + 16);
  if (v64)
  {
    v65 = 0;
    v66 = v104;
    v67 = result + ((*(v105 + 80) + 32) & ~*(v105 + 80));
    v102 = "nAppVocPreflightClient";
    v68 = (v105 + 8);
    while (1)
    {
      if (v65 >= *(v63 + 16))
      {
        __break(1u);
        goto LABEL_64;
      }

      (*(v105 + 16))(v8, v67 + *(v105 + 72) * v65, v66);
      v69 = UsoIdentifier.namespace.getter();
      if (!v70)
      {
        break;
      }

      if (v69 == 0x7473696C79616C70 && v70 == 0xED0000656C746954)
      {
      }

      else
      {
        v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v71 & 1) == 0)
        {
          break;
        }
      }

      UsoIdentifier.appBundleId.getter();
      v72 = String.lowercased()();

      v73 = String.lowercased()();
      if (v72._countAndFlagsBits == v73._countAndFlagsBits && v72._object == v73._object)
      {

        (*v68)(v8, v104);
LABEL_46:
        LODWORD(v102) = 0;
        goto LABEL_47;
      }

      v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v66 = v104;
      result = (*v68)(v8, v104);
      if (v74)
      {
        goto LABEL_46;
      }

LABEL_33:
      if (v64 == ++v65)
      {
        goto LABEL_44;
      }
    }

    v66 = v104;
    result = (*v68)(v8, v104);
    goto LABEL_33;
  }

LABEL_44:
  LODWORD(v102) = 1;
LABEL_47:

  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v75 = result;
  v76 = *(result + 16);
  v77 = v104;
  if (v76)
  {
    v78 = 0;
    v79 = result + ((*(v105 + 80) + 32) & ~*(v105 + 80));
    v80 = (v105 + 8);
    while (v78 < *(v75 + 16))
    {
      v81 = v103;
      (*(v105 + 16))(v103, v79 + *(v105 + 72) * v78, v77);
      v82 = UsoIdentifier.namespace.getter();
      if (v83)
      {
        if (v82 == 0xD000000000000010 && v83 == 0x80000002234D9610)
        {

          (*v80)(v103, v104);
LABEL_60:

          return 0;
        }

        v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v77 = v104;
        result = (*v80)(v103, v104);
        if (v84)
        {
          goto LABEL_60;
        }
      }

      else
      {
        result = (*v80)(v81, v77);
      }

      if (v76 == ++v78)
      {
        goto LABEL_57;
      }
    }

LABEL_64:
    __break(1u);
  }

  else
  {
LABEL_57:

    return ((v99 | v100 | v102) & 1) == 0;
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in AudioUsoIntent.podcastTitles.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v52);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v55 = &v45 - v11;
  MEMORY[0x28223BE20](v10);
  v54 = &v45 - v12;
  v13 = type metadata accessor for UsoIdentifier();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  if (v18)
  {
    v19 = v17;
    v20 = v18;

    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v19 & 0xFFFFFFFFFFFFLL;
    }

    v22 = v21 == 0;
  }

  else
  {
    v22 = 1;
  }

  v53 = a1;
  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v24 = result;
  v58 = *(result + 16);
  if (!v58)
  {

LABEL_22:
    v34 = v54;
    v33 = v55;
    if (!v22)
    {
      LODWORD(result) = 1;
      goto LABEL_26;
    }

    return 0;
  }

  v47 = v22;
  v48 = v3;
  v49 = v6;
  v50 = v2;
  v25 = 0;
  v57 = result + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v56 = "nAppVocPreflightClient";
  v26 = (v14 + 8);
  while (1)
  {
    if (v25 >= *(v24 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v14 + 16))(v16, v57 + *(v14 + 72) * v25, v13);
    v27 = UsoIdentifier.namespace.getter();
    if (!v28)
    {
LABEL_8:
      result = (*v26)(v16, v13);
      goto LABEL_9;
    }

    if (v27 == 0x5474736163646F70 && v28 == 0xEC000000656C7469)
    {
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    UsoIdentifier.appBundleId.getter();
    v30 = String.lowercased()();

    v31 = String.lowercased()();
    if (v30._countAndFlagsBits == v31._countAndFlagsBits && v30._object == v31._object)
    {
      break;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v26)(v16, v13);
    if (v32)
    {
      goto LABEL_25;
    }

LABEL_9:
    if (v58 == ++v25)
    {

      v6 = v49;
      v2 = v50;
      v3 = v48;
      LOBYTE(v22) = v47;
      goto LABEL_22;
    }
  }

  (*v26)(v16, v13);
LABEL_25:

  result = 0;
  v6 = v49;
  v2 = v50;
  v3 = v48;
  v34 = v54;
  v33 = v55;
  if (v47)
  {
    return result;
  }

LABEL_26:
  LODWORD(v58) = result;
  if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v3 + 56))(v34, 1, 1, v2);
  }

  (*(v3 + 104))(v33, *MEMORY[0x277D5EE08], v2);
  (*(v3 + 56))(v33, 0, 1, v2);
  v35 = *(v52 + 48);
  outlined init with copy of MediaUserStateCenter?(v34, v6, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v33, &v6[v35], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v36 = v3;
  v37 = *(v3 + 48);
  if (v37(v6, 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v33, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v34, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v37(&v6[v35], 1, v2) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v6, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      return v58;
    }

LABEL_34:
    outlined destroy of MediaUserStateCenter?(v6, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    return 0;
  }

  v38 = v51;
  outlined init with copy of MediaUserStateCenter?(v6, v51, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v37(&v6[v35], 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v55, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v34, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v36 + 8))(v38, v2);
    goto LABEL_34;
  }

  v39 = v36;
  v40 = &v6[v35];
  v41 = v46;
  (*(v36 + 32))(v46, v40, v2);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
  v42 = v38;
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v39 + 8);
  v44(v41, v2);
  outlined destroy of MediaUserStateCenter?(v55, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v34, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v44(v42, v2);
  outlined destroy of MediaUserStateCenter?(v6, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v43)
  {
    return v58;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized closure #1 in closure #1 in AudioUsoIntent.applePodcastTitles.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v54);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v47 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - v13;
  v15 = type metadata accessor for UsoIdentifier();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  v19 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  v55 = v12;
  v56 = v14;
  if (v20)
  {
    v21 = v19;
    v22 = v20;

    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v21 & 0xFFFFFFFFFFFFLL;
    }

    v24 = v23 == 0;
  }

  else
  {
    v24 = 1;
  }

  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v26 = result;
  v60 = *(result + 16);
  if (!v60)
  {

    v35 = v56;
    if (!v24)
    {
LABEL_23:
      v36 = 0;
      goto LABEL_27;
    }

    return 0;
  }

  v49 = v24;
  v50 = v3;
  v51 = v6;
  v52 = v2;
  v27 = 0;
  v59 = result + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v58 = "nAppVocPreflightClient";
  v28 = (v16 + 8);
  while (1)
  {
    if (v27 >= *(v26 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v16 + 16))(v18, v59 + *(v16 + 72) * v27, v15);
    v29 = UsoIdentifier.namespace.getter();
    if (!v30)
    {
LABEL_8:
      result = (*v28)(v18, v15);
      goto LABEL_9;
    }

    if (v29 == 0x5474736163646F70 && v30 == 0xEC000000656C7469)
    {
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v31 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    UsoIdentifier.appBundleId.getter();
    v32 = String.lowercased()();

    v33 = String.lowercased()();
    if (v32._countAndFlagsBits == v33._countAndFlagsBits && v32._object == v33._object)
    {
      break;
    }

    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v28)(v18, v15);
    if (v34)
    {
      goto LABEL_25;
    }

LABEL_9:
    if (v60 == ++v27)
    {

      v6 = v51;
      v2 = v52;
      v3 = v50;
      v35 = v56;
      if (v49)
      {
        return 0;
      }

      goto LABEL_23;
    }
  }

  (*v28)(v18, v15);
LABEL_25:

  v6 = v51;
  v2 = v52;
  v3 = v50;
  v35 = v56;
  if (v49)
  {
    return 0;
  }

  v36 = 1;
LABEL_27:
  v37 = dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter();
  LODWORD(v60) = v36;
  if (v37)
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v3 + 56))(v35, 1, 1, v2);
  }

  v38 = v55;
  (*(v3 + 104))(v55, *MEMORY[0x277D5EE08], v2);
  (*(v3 + 56))(v38, 0, 1, v2);
  v39 = *(v54 + 48);
  outlined init with copy of MediaUserStateCenter?(v35, v6, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v38, &v6[v39], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v40 = *(v3 + 48);
  if (v40(v6, 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v38, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v35, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v40(&v6[v39], 1, v2) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v6, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      return v60;
    }

LABEL_35:
    outlined destroy of MediaUserStateCenter?(v6, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    return 0;
  }

  v41 = v53;
  outlined init with copy of MediaUserStateCenter?(v6, v53, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v40(&v6[v39], 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v55, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v35, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v3 + 8))(v41, v2);
    goto LABEL_35;
  }

  v42 = &v6[v39];
  v43 = v48;
  (*(v3 + 32))(v48, v42, v2);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
  v44 = v41;
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  v46 = *(v3 + 8);
  v46(v43, v2);
  outlined destroy of MediaUserStateCenter?(v55, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v35, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v46(v44, v2);
  outlined destroy of MediaUserStateCenter?(v6, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  result = v60;
  if ((v45 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t outlined consume of [CodeGenListEntry<UsoEntity_common_UserEntity>]??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t outlined copy of [CodeGenListEntry<UsoEntity_common_UserEntity>]??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t outlined consume of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t outlined copy of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

char *closure #1 in AudioUsoIntent.entities.getter(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = AudioUsoIntent.rootItems.getter();
  v4 = specialized Sequence.flatMap<A>(_:)(v3, MEMORY[0x277D84F90], a2, 0);

  if (v4 >> 62)
  {
LABEL_20:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223DDFF80](v6, v4);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    v9 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
    v11 = v10;

    ++v6;
    if (v11)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
      }

      *(v7 + 2) = v13 + 1;
      v14 = &v7[16 * v13];
      *(v14 + 4) = v9;
      *(v14 + 5) = v11;
      v6 = v8;
    }
  }

  return v7;
}

unint64_t specialized AudioUsoIntent.UsoNamespace.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v2;
  }
}

unint64_t lazy protocol witness table accessor for type AudioUsoIntent.UsoNamespace and conformance AudioUsoIntent.UsoNamespace()
{
  result = lazy protocol witness table cache variable for type AudioUsoIntent.UsoNamespace and conformance AudioUsoIntent.UsoNamespace;
  if (!lazy protocol witness table cache variable for type AudioUsoIntent.UsoNamespace and conformance AudioUsoIntent.UsoNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioUsoIntent.UsoNamespace and conformance AudioUsoIntent.UsoNamespace);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioUsoIntent.IterationOptions and conformance AudioUsoIntent.IterationOptions()
{
  result = lazy protocol witness table cache variable for type AudioUsoIntent.IterationOptions and conformance AudioUsoIntent.IterationOptions;
  if (!lazy protocol witness table cache variable for type AudioUsoIntent.IterationOptions and conformance AudioUsoIntent.IterationOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioUsoIntent.IterationOptions and conformance AudioUsoIntent.IterationOptions);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioUsoIntent.UsoNamespace(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioUsoIntent.UsoNamespace(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

_BYTE *partial apply for closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 2;
  }

  else
  {
    return specialized Set.subscript.getter(v2, *(a1 + 36), 0, a1) & 1;
  }
}

void *specialized Collection.first.getter(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return specialized Dictionary.subscript.getter(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy21SiriInformationSearch11CommonAudioV9AttributeOG_10PegasusAPI013Apple_Parsec_d9_V2alpha_hI0Os5NeverOTg504_s10j5API44l1_m1_d1_n1_h18UnderstandingV0E17ef45E4fromACSgAD0G9UsoIntentC_tcfcAA0c1_d1_e1_f1_xi5OAD06g2G0S8N0OXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioAttribute();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v32 = v1;
  v53 = MEMORY[0x277D84F90];
  v45 = v5;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  v9 = v53;
  v10 = v45 + 56;
  result = _HashTable.startBucket.getter();
  v12 = result;
  v13 = v45;
  v14 = 0;
  v37 = *MEMORY[0x277D395B8];
  v49 = (v4 + 104);
  v41 = *MEMORY[0x277D39590];
  v43 = *MEMORY[0x277D39588];
  v36 = *MEMORY[0x277D395C0];
  v40 = *MEMORY[0x277D39580];
  v35 = *MEMORY[0x277D395A0];
  v39 = *MEMORY[0x277D395B0];
  v42 = *MEMORY[0x277D395C8];
  v34 = *MEMORY[0x277D395A8];
  v50 = v4;
  v48 = v4 + 32;
  v38 = *MEMORY[0x277D39578];
  v44 = v45 + 64;
  v33 = *MEMORY[0x277D39598];
  v46 = v8;
  v47 = v10;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v13 + 32))
  {
    v52 = v14;
    v17 = v12 >> 6;
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_38;
    }

    v18 = *(*(v13 + 48) + v12);
    if (v18 > 6)
    {
      if (*(*(v13 + 48) + v12) <= 8u)
      {
        v19 = v40;
        if (v18 == 7)
        {
          goto LABEL_24;
        }

        v19 = v36;
        if (v18 == 8)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v19 = v43;
        if (v18 == 9)
        {
          goto LABEL_24;
        }

        v19 = v41;
        if (v18 == 10)
        {
          goto LABEL_24;
        }

        v19 = v37;
        if (v18 == 12)
        {
          goto LABEL_24;
        }
      }

LABEL_23:
      v19 = v33;
      goto LABEL_24;
    }

    if (*(*(v13 + 48) + v12) > 1u)
    {
      v19 = v42;
      if (v18 == 2)
      {
        goto LABEL_24;
      }

      v19 = v39;
      if (v18 == 3)
      {
        goto LABEL_24;
      }

      v19 = v35;
      if (v18 == 6)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v19 = v38;
    if (*(*(v13 + 48) + v12))
    {
      v19 = v34;
    }

LABEL_24:
    v51 = *(v13 + 36);
    v20 = v13;
    (*v49)(v7, v19, v3);
    v53 = v9;
    v21 = v3;
    v23 = *(v9 + 16);
    v22 = *(v9 + 24);
    if (v23 >= v22 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
      v9 = v53;
    }

    *(v9 + 16) = v23 + 1;
    v24 = v7;
    result = (*(v50 + 32))(v9 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v23, v7, v21);
    v15 = 1 << *(v20 + 32);
    if (v12 >= v15)
    {
      goto LABEL_39;
    }

    v13 = v20;
    v10 = v47;
    v25 = *(v47 + 8 * v17);
    if ((v25 & (1 << v12)) == 0)
    {
      goto LABEL_40;
    }

    if (v51 != *(v13 + 36))
    {
      goto LABEL_41;
    }

    v3 = v21;
    v26 = v25 & (-2 << (v12 & 0x3F));
    if (v26)
    {
      v15 = __clz(__rbit64(v26)) | v12 & 0x7FFFFFFFFFFFFFC0;
      v16 = v52;
    }

    else
    {
      v27 = v17 << 6;
      v28 = v17 + 1;
      v29 = (v44 + 8 * v17);
      v16 = v52;
      while (v28 < (v15 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = outlined consume of Set<CommonAudio.Attribute>.Index._Variant(v12, v51, 0);
          v13 = v45;
          v15 = __clz(__rbit64(v30)) + v27;
          goto LABEL_35;
        }
      }

      result = outlined consume of Set<CommonAudio.Attribute>.Index._Variant(v12, v51, 0);
      v13 = v45;
LABEL_35:
      v3 = v21;
    }

    v14 = v16 + 1;
    v12 = v15;
    v7 = v24;
    if (v14 == v46)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioModifier();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v57 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDecade();
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioRadioType();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v60 = *(v11 - 8);
  v61 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.init()();
  if (*((*(*a1 + 1160))(v14) + 16))
  {
  }

  v15 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.entity.setter();
  v66 = (*(*a1 + 1256))(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v17 = lazy protocol witness table accessor for type [String] and conformance [A]();
  BidirectionalCollection<>.joined(separator:)();

  v18 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.artist.setter();
  v66 = (*(*a1 + 1280))(v18);
  BidirectionalCollection<>.joined(separator:)();

  v19 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.album.setter();
  v66 = (*(*a1 + 1520))(v19);
  BidirectionalCollection<>.joined(separator:)();

  v20 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.playlistTitle.setter();
  (*(*a1 + 1592))(v20);
  v21 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.appName.setter();
  v22 = (*(*a1 + 1472))(v21);
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy21SiriInformationSearch11CommonAudioV9AttributeOG_10PegasusAPI013Apple_Parsec_d9_V2alpha_hI0Os5NeverOTg504_s10j5API44l1_m1_d1_n1_h18UnderstandingV0E17ef45E4fromACSgAD0G9UsoIntentC_tcfcAA0c1_d1_e1_f1_xi5OAD06g2G0S8N0OXEfU_Tf1cn_n(v22);

  v23 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.attributes.setter();
  v24 = (*(*a1 + 1880))(v23);
  if (v24 != 2)
  {
    v25 = MEMORY[0x277D395D8];
    if ((v24 & 1) == 0)
    {
      v25 = MEMORY[0x277D395E0];
    }

    (*(v8 + 104))(v10, *v25, v7);
    v24 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audioRadioType.setter();
  }

  v26 = (*(*a1 + 1400))(v24);
  v27 = *(v26 + 16);
  v28 = MEMORY[0x277D84F90];
  v64 = v16;
  v65 = v13;
  v63 = v17;
  if (v27)
  {
    v66 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
    v29 = v66;
    v30 = (v26 + 40);
    do
    {
      v31 = *(v30 - 1);
      v32 = *v30;
      v66 = v29;
      v34 = *(v29 + 16);
      v33 = *(v29 + 24);

      if (v34 >= v33 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
        v29 = v66;
      }

      *(v29 + 16) = v34 + 1;
      v35 = v29 + 16 * v34;
      *(v35 + 32) = v31;
      *(v35 + 40) = v32;
      v30 += 4;
      --v27;
    }

    while (v27);

    v13 = v65;
    v28 = MEMORY[0x277D84F90];
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  v66 = v29;
  BidirectionalCollection<>.joined(separator:)();

  v36 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audiobookAuthor.setter();
  v37 = (*(*a1 + 1352))(v36);
  v38 = *(v37 + 16);
  if (v38)
  {
    v66 = v28;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
    v39 = v66;
    v40 = (v37 + 40);
    do
    {
      v41 = *(v40 - 1);
      v42 = *v40;
      v66 = v39;
      v44 = *(v39 + 16);
      v43 = *(v39 + 24);

      if (v44 >= v43 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
        v39 = v66;
      }

      *(v39 + 16) = v44 + 1;
      v45 = v39 + 16 * v44;
      *(v45 + 32) = v41;
      *(v45 + 40) = v42;
      v40 += 4;
      --v38;
    }

    while (v38);

    v13 = v65;
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

  v66 = v39;
  BidirectionalCollection<>.joined(separator:)();

  v46 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audiobookTitle.setter();
  v47 = (*(*a1 + 1712))(v46);
  if (v47 != 11)
  {
    CommonAudio.Decade.parsecDecade.getter(v47, v56);
    v47 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.decade.setter();
  }

  (*(*a1 + 1808))(v47);
  v48 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.genre.setter();
  v49 = (*(*a1 + 1760))(v48);
  v50 = specialized Collection.first.getter(v49);

  if (v50 != 2)
  {
    v51 = MEMORY[0x277D39558];
    if ((v50 & 1) == 0)
    {
      v51 = MEMORY[0x277D39550];
    }

    (*(v58 + 104))(v57, *v51, v59);
    Apple_Parsec_Siri_V2alpha_AudioUnderstanding.modifier.setter();
  }

  v53 = v60;
  v52 = v61;
  v54 = v62;
  (*(v60 + 32))(v62, v13, v61);
  return (*(v53 + 56))(v54, 0, 1, v52);
}

uint64_t CommonAudio.Attribute.parsecAudioAttribute.getter@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = a1;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioAttribute();
  v6 = *(*(v5 - 8) + 104);
  if (v4 > 0xC)
  {
    v7 = MEMORY[0x277D39598];
  }

  else
  {
    v7 = qword_2784DA8B8[a1];
  }

  v8 = *v7;

  return v6(a2, v8, v5);
}

uint64_t CommonAudio.Decade.parsecDecade.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDecade();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_2784DA920 + a1);

  return v5(a2, v6, v4);
}

uint64_t CommonAudio.RadioType.parsecRadioType.getter@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, unsigned int *a3@<X2>, unsigned int *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a2(0);
  v10 = *(*(v9 - 8) + 104);
  if (a1)
  {
    v11 = a3;
  }

  else
  {
    v11 = a4;
  }

  v12 = *v11;

  return v10(a5, v12, v9);
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t specialized Set.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t outlined consume of Set<CommonAudio.Attribute>.Index._Variant(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t PommesRequestInstrumentationUtil.__allocating_init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

id PommesRequestInstrumentationUtil.mockStream.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for MockEmittableSiriAnalyticsMessageStream()) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void (*PommesRequestInstrumentationUtil.mockStream.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = PommesRequestInstrumentationUtil.mockStream.getter();
  return KnowledgeFallbackInstrumentationUtil.mockStream.modify;
}

uint64_t PommesRequestInstrumentationUtil.init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

void PommesRequestInstrumentationUtil.logStartOfPommesRequest(requestId:pommesCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x277D5A088]) init];
    if (v7)
    {
      v17 = v7;
      v8 = [objc_allocWithZone(MEMORY[0x277D5A0A8]) init];
      if (v8)
      {
        v9 = v8;
        [v8 setExists_];
        [v17 setStartedOrChanged:v9];
        [v6 setPommesRequestContext:v17];
        v10 = [objc_opt_self() processInfo];
        v11 = NSProcessInfo.isRunningUnitTests.getter();

        if (v11)
        {
          v12 = (*(*v4 + 96))();
        }

        else
        {
          v12 = [objc_opt_self() sharedStream];
        }

        [v12 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v13 = v17;
    }

    else
    {
      v13 = v6;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.pommes);
  v17 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2232BB000, v17, v15, "Unable to log start of POMMES request", v16, 2u);
    MEMORY[0x223DE0F80](v16, -1, -1);
  }

LABEL_15:
}

void PommesRequestInstrumentationUtil.logEndOfPommesRequest(requestId:pommesCandidateId:result:pommesSearchReason:isHandledByPreflight:preflightClientHandlerIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    v31 = a4;
    v15 = v8;
    v16 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
    if (v16)
    {
      v17 = v16;
      v18 = [objc_allocWithZone(MEMORY[0x277D5A088]) init];
      if (v18)
      {
        v19 = v18;
        v20 = [objc_allocWithZone(MEMORY[0x277D5A090]) init];
        if (v20)
        {
          v21 = v20;
          [v20 setIsHandledByPreflight_];
          if (a6)
          {
            if (a8)
            {
              v22 = MEMORY[0x223DDF550](a7, a8);
            }

            else
            {
              v22 = 0;
            }

            [v21 setPreflightClientHandlerIdentifier_];
          }

          [v21 setResult_];
          [v21 setPommesSearchReason_];
          [v19 setEnded:v21];
          [v17 setPommesRequestContext:v19];
          v28 = [objc_opt_self() processInfo];
          v29 = NSProcessInfo.isRunningUnitTests.getter();

          if (v29)
          {
            v30 = (*(*v15 + 96))();
          }

          else
          {
            v30 = [objc_opt_self() sharedStream];
          }

          [v30 emitMessage_];
          swift_unknownObjectRelease();

          goto LABEL_23;
        }

        v24 = v17;
      }

      else
      {
        v19 = v17;
        v24 = v31;
      }

      v23 = v19;
    }

    else
    {
      v23 = v31;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.pommes);
  v31 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2232BB000, v31, v26, "Unable to log end of POMMES request", v27, 2u);
    MEMORY[0x223DE0F80](v27, -1, -1);
  }

LABEL_23:
}

void PommesRequestInstrumentationUtil.logFailedPommesRequest(requestId:pommesCandidateId:failedReason:pommesSearchReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D5A088]) init];
    if (v9)
    {
      v19 = v9;
      v10 = [objc_allocWithZone(MEMORY[0x277D5A098]) init];
      if (v10)
      {
        v11 = v10;
        [v10 setReason_];
        [v11 setPommesSearchReason_];
        [v19 setFailed:v11];
        [v8 setPommesRequestContext:v19];
        v12 = [objc_opt_self() processInfo];
        v13 = NSProcessInfo.isRunningUnitTests.getter();

        if (v13)
        {
          v14 = (*(*v5 + 96))();
        }

        else
        {
          v14 = [objc_opt_self() sharedStream];
        }

        [v14 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v15 = v19;
    }

    else
    {
      v15 = v8;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.pommes);
  v19 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2232BB000, v19, v17, "Unable to log failed POMMES request", v18, 2u);
    MEMORY[0x223DE0F80](v18, -1, -1);
  }

LABEL_15:
}

void PommesRequestInstrumentationUtil.logUnableToHandlePommesRequest(requestId:pommesCandidateId:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D5A088]) init];
    if (v9)
    {
      v19 = v9;
      v10 = [objc_allocWithZone(MEMORY[0x277D5A0B0]) init];
      if (v10)
      {
        v11 = v10;
        [v10 setReason_];
        [v19 setCancelled:v11];
        [v8 setPommesRequestContext:v19];
        v12 = [objc_opt_self() processInfo];
        v13 = NSProcessInfo.isRunningUnitTests.getter();

        if (v13)
        {
          v14 = (*(*v5 + 96))();
        }

        else
        {
          v14 = [objc_opt_self() sharedStream];
        }

        [v14 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v15 = v19;
    }

    else
    {
      v15 = v8;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.pommes);
  v19 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2232BB000, v19, v17, "Unable to log cancelled POMMES request", v18, 2u);
    MEMORY[0x223DE0F80](v18, -1, -1);
  }

LABEL_15:
}

void PommesRequestInstrumentationUtil.logPSCScoreReported(requestId:pommesCandidateId:score:parserId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v11 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x277D5A0E0]) init];
    if (v13)
    {
      v20 = v13;
      [v13 setScore:a6];
      [v20 setClassifierLabel:specialized PommesRequestInstrumentationUtil.classifierLabel(for:)(a4, a5)];
      [v12 setPommesServiceClassifierScoreReported_];
      v14 = [objc_opt_self() processInfo];
      v15 = NSProcessInfo.isRunningUnitTests.getter();

      if (v15)
      {
        v16 = (*(*v7 + 96))();
      }

      else
      {
        v16 = [objc_opt_self() sharedStream];
      }

      [v16 emitMessage_];
      swift_unknownObjectRelease();

      goto LABEL_12;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.pommes);
  v20 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2232BB000, v20, v18, "Unable to log cancelled PSC score reported", v19, 2u);
    MEMORY[0x223DE0F80](v19, -1, -1);
  }

LABEL_12:
}

uint64_t PommesRequestInstrumentationUtil.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized PommesRequestInstrumentationUtil.classifierLabel(for:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0xD000000000000010 && 0x80000002234D9360 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0xD000000000000024 && 0x80000002234D9380 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0xD000000000000018 && 0x80000002234D93B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0xD000000000000014 && 0x80000002234D93D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

void *SearchToolGlobalRequestXPC.location.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_location);
  v2 = v1;
  return v1;
}

uint64_t SearchToolGlobalRequestXPC.searchToolClientId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_searchToolClientId);

  return v1;
}

id SearchToolGlobalRequestXPC.__allocating_init(pommesSearchRequest:location:clientEntities:searchToolClientId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_pommesSearchRequest] = a1;
  *&v11[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_location] = a2;
  *&v11[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_clientEntities] = a3;
  v12 = &v11[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_searchToolClientId];
  *v12 = a4;
  *(v12 + 1) = a5;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, sel_init);
}

id SearchToolGlobalRequestXPC.init(pommesSearchRequest:location:clientEntities:searchToolClientId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_pommesSearchRequest] = a1;
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_location] = a2;
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_clientEntities] = a3;
  v12 = &v5[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_searchToolClientId];
  *v12 = a4;
  *(v12 + 1) = a5;
  v14.receiver = v5;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

Swift::Void __swiftcall SearchToolGlobalRequestXPC.encode(with:)(NSCoder with)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_pommesSearchRequest);
  v8 = MEMORY[0x223DDF550](0xD000000000000013, 0x80000002234DBEB0);
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_location);
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0x223DDF550](0x6E6F697461636F6CLL, 0xE800000000000000);
    [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];
  }

  v30 = v1;
  isa = with.super.isa;
  v12 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_clientEntities);
  v13 = *(v12 + 16);
  if (v13)
  {
    v15 = v4 + 16;
    v14 = *(v4 + 16);
    v16 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v34 = *(v15 + 56);
    v35 = v14;
    v17 = (v15 - 8);
    v36 = MEMORY[0x277D84F90];
    v32 = v15;
    v33 = v3;
    v14(v6, v16, v3);
    while (1)
    {
      lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity();
      v18 = Message.serializedData(partial:)();
      v20 = v19;
      (*v17)(v6, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
      }

      v22 = *(v36 + 2);
      v21 = *(v36 + 3);
      if (v22 >= v21 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v36);
      }

      v23 = v36;
      *(v36 + 2) = v22 + 1;
      v24 = &v23[16 * v22];
      *(v24 + 4) = v18;
      *(v24 + 5) = v20;
      v3 = v33;
      v16 += v34;
      if (!--v13)
      {
        break;
      }

      v35(v6, v16, v33);
    }
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  v25 = Array._bridgeToObjectiveC()().super.isa;

  v26 = MEMORY[0x223DDF550](0x6E45746E65696C63, 0xEE00736569746974);
  v27 = isa;
  [(objc_class *)isa encodeObject:v25 forKey:v26];

  if (*(v30 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_searchToolClientId + 8))
  {
    v28 = MEMORY[0x223DDF550](*(v30 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_searchToolClientId));
    v29 = MEMORY[0x223DDF550](0xD000000000000012, 0x80000002234DD5D0);
    [(objc_class *)v27 encodeObject:v28 forKey:v29];
  }
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity)
  {
    type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity);
  }

  return result;
}

id SearchToolGlobalRequestXPC.init(coder:)(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v44 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PommesSearchRequestXPC(0);
  v12 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v12)
  {
    if (one-time initialization token for sage != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.sage);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2232BB000, v17, v18, "Unable to decode search request for SearchToolRequestXPC", v19, 2u);
      MEMORY[0x223DE0F80](v19, -1, -1);
    }

    swift_deallocPartialClassInstance();
    return 0;
  }

  *&v1[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_pommesSearchRequest] = v12;
  v13 = v12;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
  v40 = v13;
  *&v2[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_location] = NSCoder.decodeObject<A>(of:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2234CF940;
  *(v14 + 32) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSArray, 0x277CBEA60);
  *(v14 + 40) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  NSCoder.decodeObject(of:forKey:)();

  v52 = v10;
  if (!*(&v56 + 1))
  {
    outlined destroy of MediaUserStateCenter?(&v55, &_sypSgMd, &_sypSgMR);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6NSDataCGMd, _sSaySo6NSDataCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v15 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v15 = v53;
LABEL_12:
  if (v15 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v41 = ObjectType;
    v42 = v2;
    v43 = a1;
    if (!i)
    {
      break;
    }

    a1 = 0;
    v48 = v15 & 0xFFFFFFFFFFFFFF8;
    v49 = v15 & 0xC000000000000001;
    v47 = (v44 + 56);
    v51 = MEMORY[0x277D84F90];
    v45 = (v44 + 32);
    while (1)
    {
      if (v49)
      {
        v22 = MEMORY[0x223DDFF80](a1, v15);
      }

      else
      {
        if (a1 >= *(v48 + 16))
        {
          goto LABEL_36;
        }

        v22 = *(v15 + 8 * a1 + 32);
      }

      v23 = v22;
      ObjectType = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v2 = v15;
      static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity();
      v24 = v52;
      Message.init(serializedData:extensions:partial:options:)();

      (*v47)(v9, 0, 1, v24);
      v25 = *v45;
      (*v45)(v46, v9, v24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 2) + 1, 1, v51);
      }

      v27 = *(v51 + 2);
      v26 = *(v51 + 3);
      if (v27 >= v26 >> 1)
      {
        v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v51);
      }

      v29 = v51;
      v28 = v52;
      *(v51 + 2) = v27 + 1;
      v25(&v29[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v27], v46, v28);
      ++a1;
      if (ObjectType == i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

  v51 = MEMORY[0x277D84F90];
LABEL_28:

  v30 = v42;
  *&v42[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_clientEntities] = v51;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v31 = v43;
  v32 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v32)
  {
    v55 = 0uLL;
    v33 = v32;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v34 = *(&v55 + 1);
    v35 = v55;
    if (!*(&v55 + 1))
    {
      v35 = 0;
    }
  }

  else
  {

    v35 = 0;
    v34 = 0;
  }

  v36 = v41;
  v37 = &v30[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_searchToolClientId];
  *v37 = v35;
  *(v37 + 1) = v34;
  v54.receiver = v30;
  v54.super_class = v36;
  v20 = objc_msgSendSuper2(&v54, sel_init);

  return v20;
}

id SearchToolGlobalRequestXPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchToolGlobalRequestXPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void key path setter for SearchToolGlobalRequestXPCBuilder.pommesSearchRequest : SearchToolGlobalRequestXPCBuilder(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

id SearchToolGlobalRequestXPCBuilder.pommesSearchRequest.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void key path setter for SearchToolGlobalRequestXPCBuilder.location : SearchToolGlobalRequestXPCBuilder(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
  v5 = v2;
}

void *SearchToolGlobalRequestXPCBuilder.location.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t key path setter for SearchToolGlobalRequestXPCBuilder.clientEntities : SearchToolGlobalRequestXPCBuilder(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
}

uint64_t key path setter for SearchToolGlobalRequestXPCBuilder.searchToolClientId : SearchToolGlobalRequestXPCBuilder(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
}

uint64_t SearchToolGlobalRequestXPCBuilder.searchToolClientId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void *SearchToolGlobalRequestXPCBuilder.__allocating_init(pommesSearchRequest:)(uint64_t a1)
{
  result = swift_allocObject();
  result[6] = 0;
  result[2] = a1;
  result[3] = 0;
  result[4] = MEMORY[0x277D84F90];
  result[5] = 0;
  return result;
}

void *SearchToolGlobalRequestXPCBuilder.init(pommesSearchRequest:)(uint64_t a1)
{
  v1[6] = 0;
  v1[2] = a1;
  v1[3] = 0;
  v1[4] = MEMORY[0x277D84F90];
  v1[5] = 0;
  return v1;
}

uint64_t SearchToolGlobalRequestXPCBuilder.withLocation(_:)(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
  v4 = a1;
}

uint64_t SearchToolGlobalRequestXPCBuilder.withClientEntities(_:)(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t SearchToolGlobalRequestXPCBuilder.withSearchToolClientId(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

id SearchToolGlobalRequestXPCBuilder.build()()
{
  v1 = (*(*v0 + 112))();
  v2 = (*(*v0 + 136))();
  v3 = (*(*v0 + 160))();
  v4 = (*(*v0 + 184))();
  v6 = v5;
  v7 = type metadata accessor for SearchToolGlobalRequestXPC();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_pommesSearchRequest] = v1;
  *&v8[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_location] = v2;
  *&v8[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_clientEntities] = v3;
  v9 = &v8[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_searchToolClientId];
  *v9 = v4;
  v9[1] = v6;
  v11.receiver = v8;
  v11.super_class = v7;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t SearchToolGlobalRequestXPCBuilder.deinit()
{

  return v0;
}

uint64_t SearchToolGlobalRequestXPCBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t UsoTask.isAppLaunchTask.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of Any?(v7, v5);
  if (!v6)
  {
    outlined destroy of Any?(v7);
    goto LABEL_5;
  }

  outlined init with copy of Any?(v5, v4);
  type metadata accessor for UsoTask_open_common_App();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_start_uso_NoEntity();
    if (swift_dynamicCast() || (type metadata accessor for UsoTask_play_uso_NoEntity(), swift_dynamicCast()))
    {

      dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();

      if (v3)
      {
        v1 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

        outlined destroy of Any?(v7);
        if (v1)
        {

          v0 = 1;
LABEL_13:
          __swift_destroy_boxed_opaque_existential_1(v4);
          goto LABEL_14;
        }
      }

      else
      {
        outlined destroy of Any?(v7);
      }

      v0 = 0;
      goto LABEL_13;
    }

    outlined destroy of Any?(v7);
    __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_5:
    v0 = 0;
    goto LABEL_14;
  }

  outlined destroy of Any?(v7);

  __swift_destroy_boxed_opaque_existential_1(v4);
  v0 = 1;
LABEL_14:
  outlined destroy of Any?(v5);
  return v0;
}

uint64_t Siri_Nlu_External_UserParse.firstAppLaunchTask()(uint64_t a1)
{
  v2 = Siri_Nlu_External_Span.matcherNames.getter();
  v3 = specialized Sequence.flatMap<A>(_:)(v2);

  if (!v1)
  {
    if (v3 >> 62)
    {
      goto LABEL_16;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      while (1)
      {
        v5 = 0;
        while ((v3 & 0xC000000000000001) != 0)
        {
          v2 = MEMORY[0x223DDFF80](v5, v3);
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v2;
          }

LABEL_8:
          if (UsoTask.isAppLaunchTask.getter())
          {
            goto LABEL_14;
          }

          ++v5;
          if (v6 == v4)
          {
            goto LABEL_17;
          }
        }

        if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v4 = __CocoaSet.count.getter();
        if (!v4)
        {
          goto LABEL_17;
        }
      }

      v2 = *(v3 + 8 * v5 + 32);

      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:

    return 0;
  }

  return v2;
}

uint64_t ParkingLocationProfileSliceResolver.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_semaphore) = dispatch_semaphore_create(0);
  v6(v2, 1, 1, v5);
  v7 = OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue;
  swift_beginAccess();
  outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSliceValue?(v2, v3 + v7);
  swift_endAccess();
  *(v3 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_resolutionSucceeded) = 0;
  return v3;
}

uint64_t ParkingLocationProfileSliceResolver.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v6 = *(*(v5 - 8) + 56);
  v6(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_semaphore) = dispatch_semaphore_create(0);
  v6(v3, 1, 1, v5);
  v7 = OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue;
  swift_beginAccess();
  outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSliceValue?(v3, v0 + v7);
  swift_endAccess();
  *(v0 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_resolutionSucceeded) = 0;
  return v0;
}

uint64_t ParkingLocationProfileSliceResolver.resolveParkingLocationSlice(serviceHelper:dispatchQueue:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v72 = &v66 - v7;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x28223BE20](v8);
  v70 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PerformanceUtil.Ticket(0);
  v71 = *(v10 - 1);
  v11 = *(v71 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = &v66 - v14;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = a1;
    if (a2)
    {
      v68 = a3;
      v20 = objc_allocWithZone(MEMORY[0x277D474F8]);
      v69 = v19;
      swift_unknownObjectRetain();
      v67 = a2;
      v21 = [v20 init];
      UUID.init()();
      v22 = UUID.uuidString.getter();
      v24 = v23;
      (*(v16 + 8))(v18, v15);
      v25 = MEMORY[0x223DDF550](v22, v24);

      [v21 setAceId_];

      v26 = v21;
      [v26 setRefId_];
      v27 = v76;
      Date.init()();
      v28 = v27 + v10[5];
      *v28 = "SiriInformationSearch/ParkingLocationProfileSliceResolver.swift";
      *(v28 + 8) = 63;
      *(v28 + 16) = 2;
      *(v27 + v10[6]) = 45;
      v29 = v27 + v10[7];
      *v29 = "resolveParkingLocationSlice(serviceHelper:dispatchQueue:)";
      *(v29 + 8) = 57;
      *(v29 + 16) = 2;
      v30 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000002BLL, 0x80000002234DAD50);
      v31 = (v27 + v10[8]);
      *v31 = v30;
      v31[1] = v32;
      outlined init with copy of PerformanceUtil.Ticket(v27, v13);
      v33 = (*(v71 + 80) + 16) & ~*(v71 + 80);
      v34 = (v11 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      outlined init with take of PerformanceUtil.Ticket(v13, v35 + v33);
      v36 = v67;
      *(v35 + v34) = v67;
      v37 = v75;
      *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = v75;
      aBlock[4] = partial apply for closure #1 in ParkingLocationProfileSliceResolver.resolveParkingLocationSlice(serviceHelper:dispatchQueue:);
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_10;
      v38 = _Block_copy(aBlock);
      v39 = v36;

      [v69 handleCommand:v26 completion:v38];
      _Block_release(v38);

      OS_dispatch_semaphore.wait()();
      v40 = OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue;
      swift_beginAccess();
      v41 = v37 + v40;
      v42 = v72;
      outlined init with copy of MediaUserStateCenter?(v41, v72, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
      v44 = v73;
      v43 = v74;
      if ((*(v73 + 48))(v42, 1, v74) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v42, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
        v45 = v68;
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v46 = v39;
        v47 = type metadata accessor for Logger();
        __swift_project_value_buffer(v47, static Logger.pommes);
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_2232BB000, v48, v49, "There was a problem resolving parking location profile slice value", v50, 2u);
          MEMORY[0x223DE0F80](v50, -1, -1);
        }

        v51 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
        _s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x277D39460], MEMORY[0x277D39458]);
        static Message.with(_:)();

        swift_unknownObjectRelease();
        outlined destroy of PerformanceUtil.Ticket(v27);
        return (*(*(v51 - 8) + 56))(v45, 0, 1, v51);
      }

      else
      {
        v63 = v70;
        (*(v44 + 32))(v70, v42, v43);
        v64 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
        MEMORY[0x28223BE20](v64);
        *(&v66 - 2) = v63;
        _s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x277D39460], MEMORY[0x277D39458]);
        v65 = v68;
        static Message.with(_:)();

        swift_unknownObjectRelease();
        outlined destroy of PerformanceUtil.Ticket(v27);
        (*(*(v64 - 8) + 56))(v65, 0, 1, v64);
        return (*(v44 + 8))(v63, v43);
      }
    }

    v57 = one-time initialization token for pommes;
    swift_unknownObjectRetain();
    if (v57 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Logger.pommes);
    v54 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_2232BB000, v54, v59, "Cannot create parking location slice because there is no dispatch queue", v60, 2u);
      MEMORY[0x223DE0F80](v60, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Logger.pommes);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2232BB000, v54, v55, "Cannot create parking location slice because there is no service helper", v56, 2u);
      MEMORY[0x223DE0F80](v56, -1, -1);
    }
  }

  v61 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v62 = *(*(v61 - 8) + 56);

  return v62(a3, 1, 1, v61);
}

uint64_t closure #1 in ParkingLocationProfileSliceResolver.resolveParkingLocationSlice(serviceHelper:dispatchQueue:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(a3, 0);
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a2;
  v16[4] = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in ParkingLocationProfileSliceResolver.resolveParkingLocationSlice(serviceHelper:dispatchQueue:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_13_0;
  v17 = _Block_copy(aBlock);

  v18 = a2;
  v19 = a1;
  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x277D84F90];
  _s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DDFBF0](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v22);
}

Swift::Int closure #1 in closure #1 in ParkingLocationProfileSliceResolver.resolveParkingLocationSlice(serviceHelper:dispatchQueue:)(int a1, id a2, void *a3)
{
  if (a2)
  {
    v4 = a2;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.pommes);
    v6 = a2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v7, v8))
    {

      return OS_dispatch_semaphore.signal()();
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    v11 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v20);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2232BB000, v7, v8, "Service helper returned an error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x223DE0F80](v10, -1, -1);
    MEMORY[0x223DE0F80](v9, -1, -1);
  }

  else
  {
    if (a3)
    {
      v15 = a3;
      ParkingLocationProfileSliceResolver.handleAceVehicleEvent(_:)(v15);

      return OS_dispatch_semaphore.signal()();
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.pommes);
    v7 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2232BB000, v7, v18, "Received nil response from service helper", v19, 2u);
      MEMORY[0x223DE0F80](v19, -1, -1);
    }
  }

  return OS_dispatch_semaphore.signal()();
}

uint64_t closure #2 in ParkingLocationProfileSliceResolver.resolveParkingLocationSlice(serviceHelper:dispatchQueue:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D396F8]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  *(swift_allocObject() + 16) = xmmword_2234CF920;
  ParkingLocationProfileSliceResolver.buildResolutionStateFailedSliceValue()();
  return Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
}

uint64_t closure #3 in ParkingLocationProfileSliceResolver.resolveParkingLocationSlice(serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 104))(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D396F8]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2234CF920;
  (*(v7 + 16))(v9 + v8, a2, v6);
  return Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
}

void ParkingLocationProfileSliceResolver.handleAceVehicleEvent(_:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ParkingLocationVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ParkingLocationVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v48 = a1;
  v9 = [v8 aceObjectWithGenericCommand_];
  if (!v9)
  {

LABEL_9:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.pommes);
    v18 = a1;
    v48 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v48, v19))
    {
      goto LABEL_34;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v49 = v21;
    *v20 = 136315138;
    v22 = v18;
    v23 = [v22 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v49);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_2232BB000, v48, v19, "Received invalid service helper response %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x223DE0F80](v21, -1, -1);
    MEMORY[0x223DE0F80](v20, -1, -1);
    goto LABEL_13;
  }

  v10 = v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (v28)
    {
      v29 = [v28 events];
      if (v29)
      {
        v30 = v29;
        type metadata accessor for SALocalSearchVehicleEvent();
        v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v31 >> 62)
        {
          if (__CocoaSet.count.getter())
          {
LABEL_18:
            if ((v31 & 0xC000000000000001) != 0)
            {
              v32 = MEMORY[0x223DDFF80](0, v31);
            }

            else
            {
              if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return;
              }

              v32 = *(v31 + 32);
            }

            v33 = v32;

            ParkingLocationProfileSliceResolver.buildParkingLocation(_:)(v33, v5);
            ParkingLocationProfileSliceResolver.buildParkingLocationProfileSlice(_:)(v5);

            outlined destroy of MediaUserStateCenter?(v5, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ParkingLocationVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ParkingLocationVSgMR);
            return;
          }
        }

        else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }
      }

      *(v1 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_resolutionSucceeded) = 1;
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.pommes);
      v36 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_2232BB000, v36, v44, "No vehicle event found", v45, 2u);
        MEMORY[0x223DE0F80](v45, -1, -1);
      }

LABEL_33:

      goto LABEL_34;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.pommes);
    v48 = v48;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_33;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v49 = v39;
    *v38 = 136315138;
    swift_getObjectType();
    v40 = _typeName(_:qualified:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v49);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_2232BB000, v36, v37, "Service helper response was of type %s, not SALocalSearchVehicleEventSearchCompleted", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x223DE0F80](v39, -1, -1);
    MEMORY[0x223DE0F80](v38, -1, -1);

LABEL_13:
    return;
  }

  v12 = v11;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.pommes);
  v47 = v10;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = [v12 errorCode];

    _os_log_impl(&dword_2232BB000, v14, v15, "Command failed with error code = %ld", v16, 0xCu);
    MEMORY[0x223DE0F80](v16, -1, -1);

LABEL_34:
    v34 = v48;
    goto LABEL_35;
  }

  v34 = v47;
LABEL_35:
}

uint64_t ParkingLocationProfileSliceResolver.buildResolutionStateFailedSliceValue()()
{
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_resolutionSucceeded) == 1)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.pommes);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2232BB000, v2, v3, "Resolution succeeded but no vehicle event found", v4, 2u);
      MEMORY[0x223DE0F80](v4, -1, -1);
    }
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  _s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768], MEMORY[0x277D39760]);
  return static Message.with(_:)();
}

uint64_t closure #1 in ParkingLocationProfileSliceResolver.buildResolutionStateFailedSliceValue()()
{
  v0 = type metadata accessor for Google_Protobuf_Any();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  MEMORY[0x28223BE20](v5);
  (*(v7 + 104))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39AD0]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  (*(v2 + 104))(v4, *MEMORY[0x277D39D58], v1);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
  Google_Protobuf_Any.init()();
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
  return Apple_Parsec_Siri_V2alpha_ProfileSliceValue.isPostResolution.setter();
}

uint64_t closure #2 in ParkingLocationProfileSliceResolver.buildResolutionStateFailedSliceValue()()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39AD0]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  (*(v1 + 104))(v3, *MEMORY[0x277D39D50], v0);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
  return Apple_Parsec_Siri_V2alpha_ProfileSliceValue.isPostResolution.setter();
}

uint64_t ParkingLocationProfileSliceResolver.buildParkingLocationProfileSlice(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ParkingLocationVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ParkingLocationVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of MediaUserStateCenter?(a1, v9, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ParkingLocationVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ParkingLocationVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v9, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ParkingLocationVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ParkingLocationVSgMR);
    ParkingLocationProfileSliceResolver.buildResolutionStateFailedSliceValue()();
    v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
    (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    v15 = OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue;
    swift_beginAccess();
    outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSliceValue?(v6, v2 + v15);
    return swift_endAccess();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
    MEMORY[0x28223BE20](v17);
    *(&v19 - 2) = v13;
    _s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768], MEMORY[0x277D39760]);
    static Message.with(_:)();
    (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
    v18 = OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue;
    swift_beginAccess();
    outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSliceValue?(v6, v2 + v18);
    swift_endAccess();
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t closure #1 in ParkingLocationProfileSliceResolver.buildParkingLocationProfileSlice(_:)(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v4 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for Google_Protobuf_Any();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation();
  v23[3] = v14;
  v23[4] = _s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ParkingLocation and conformance Apple_Parsec_Siri_V2alpha_ParkingLocation, MEMORY[0x277D39680], MEMORY[0x277D39678]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v19, v14);
  defaultAnyTypeURLPrefix.getter();
  v16 = v20;
  Google_Protobuf_Any.init(message:partial:typePrefix:)();
  if (v16)
  {

    (*(v11 + 56))(v9, 1, 1, v10);
    Google_Protobuf_Any.init()();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      outlined destroy of MediaUserStateCenter?(v9, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
    }
  }

  else
  {
    (*(v11 + 56))(v9, 0, 1, v10);
    (*(v11 + 32))(v13, v9, v10);
  }

  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
  (*(v4 + 104))(v6, *MEMORY[0x277D39AD0], v21);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  (*(v22 + 104))(v3, *MEMORY[0x277D39D58], v24);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
  return Apple_Parsec_Siri_V2alpha_ProfileSliceValue.isPostResolution.setter();
}

uint64_t ParkingLocationProfileSliceResolver.buildParkingLocation(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 location];
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [v3 latitude];
  if (!v5 || (v6 = v5, [v5 floatValue], v8 = v7, v6, (v9 = objc_msgSend(v4, sel_longitude)) == 0))
  {

LABEL_13:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.pommes);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2232BB000, v30, v31, "Missing location in the local search vehicle event", v32, 2u);
      MEMORY[0x223DE0F80](v32, -1, -1);
    }

    goto LABEL_18;
  }

  v10 = v9;
  [v9 floatValue];
  v12 = v11;

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.pommes);
  v14 = v4;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412546;
    v19 = [v14 latitude];
    *(v17 + 4) = v19;
    *v18 = v19;
    *(v17 + 12) = 2112;
    v20 = [v14 longitude];
    *(v17 + 14) = v20;
    v18[1] = v20;
    _os_log_impl(&dword_2232BB000, v15, v16, "Fetched parking location with latlong (%@, %@)", v17, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v18, -1, -1);
    MEMORY[0x223DE0F80](v17, -1, -1);
  }

  if (v8 != 0.0 || v12 != 0.0)
  {
    if (fabsf(v8) <= 90.0 && fabsf(v12) <= 180.0)
    {
      v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation();
      MEMORY[0x28223BE20](v36);
      _s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ParkingLocation and conformance Apple_Parsec_Siri_V2alpha_ParkingLocation, MEMORY[0x277D39680], MEMORY[0x277D39678]);
      static Message.with(_:)();

      return (*(*(v36 - 8) + 56))(a2, 0, 1, v36);
    }

    v21 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v21, v37))
    {
      goto LABEL_27;
    }

    v23 = swift_slowAlloc();
    *v23 = 134218240;
    *(v23 + 4) = v8;
    *(v23 + 12) = 2048;
    *(v23 + 14) = v12;
    v24 = "Received latlong out of valid range: (%f, %f)";
    v25 = v37;
    v26 = v21;
    v27 = v23;
    v28 = 22;
    goto LABEL_26;
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Received zero for both latlong, treating as error";
    v25 = v22;
    v26 = v21;
    v27 = v23;
    v28 = 2;
LABEL_26:
    _os_log_impl(&dword_2232BB000, v26, v25, v24, v27, v28);
    MEMORY[0x223DE0F80](v23, -1, -1);
  }

LABEL_27:

LABEL_18:
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation();
  v34 = *(*(v33 - 8) + 56);

  return v34(a2, 1, 1, v33);
}

uint64_t closure #1 in ParkingLocationProfileSliceResolver.buildParkingLocation(_:)(float a1, float a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams();
  MEMORY[0x28223BE20](v7);
  v8 = [a4 notes];
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = Apple_Parsec_Siri_V2alpha_ParkingLocation.notes.setter();
  }

  MEMORY[0x28223BE20](v8);
  *(&v11 - 4) = a1;
  *(&v11 - 3) = a2;
  _s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_LocationBuilderParams and conformance Apple_Parsec_Siri_V2alpha_LocationBuilderParams, MEMORY[0x277D39A80], MEMORY[0x277D39A78]);
  static Message.with(_:)();
  return Apple_Parsec_Siri_V2alpha_ParkingLocation.location.setter();
}

uint64_t ParkingLocationProfileSliceResolver.deinit()
{
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);

  return v0;
}

uint64_t ParkingLocationProfileSliceResolver.__deallocating_deinit()
{
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in ParkingLocationProfileSliceResolver.resolveParkingLocationSlice(serviceHelper:dispatchQueue:)(void *a1, void *a2)
{
  v5 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in ParkingLocationProfileSliceResolver.resolveParkingLocationSlice(serviceHelper:dispatchQueue:)(a1, a2, v2 + v6, v8, v9);
}

uint64_t type metadata accessor for ParkingLocationProfileSliceResolver(uint64_t a1)
{
  result = type metadata singleton initialization cache for ParkingLocationProfileSliceResolver;
  if (!type metadata singleton initialization cache for ParkingLocationProfileSliceResolver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ParkingLocationProfileSliceResolver(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t type metadata accessor for SALocalSearchVehicleEvent()
{
  result = lazy cache variable for type metadata for SALocalSearchVehicleEvent;
  if (!lazy cache variable for type metadata for SALocalSearchVehicleEvent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SALocalSearchVehicleEvent);
  }

  return result;
}

uint64_t _s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVAC21InternalSwiftProtobuf7MessageAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DataProviderManager.__allocating_init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v36 = a7;
  v37 = a8;
  v34 = a4;
  v35 = a5;
  v40 = a6;
  v41 = a11;
  v28 = a12;
  v39 = a13;
  v32 = a14;
  v33 = a3;
  v29 = a15;
  v30 = a10;
  v18 = swift_allocObject();
  v38 = a16;
  v20 = a16[3];
  v19 = a16[4];
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v38, v38[3]);
  MEMORY[0x28223BE20](v21);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23);
  v25 = v28;
  v31 = specialized DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)(a1, a2, v33, v34, v35, v40, v36, v37, a9, v30, v41, v28, v39, a14, a15, v23, v18, v20, v19);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v38);
  return v31;
}

uint64_t specialized AnyDataProvider.waitForPrepare(timeout:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for ContinuousClock();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = 1;
  ContinuousClock.init()();
  v19 = &v23;
  v20 = v3;
  v21 = a1;
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  Clock.measure(_:)();
  (*(v6 + 8))(v8, v5);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.pommes);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315394;
    v14 = Duration.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v22);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v3 + 96), *(v3 + 104), &v22);
    _os_log_impl(&dword_2232BB000, v10, v11, "Waited %s for %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v13, -1, -1);
    MEMORY[0x223DE0F80](v12, -1, -1);
  }

  return v23;
}

uint64_t key path setter for DataProviderManager.appChecking : DataProviderManager(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of MediaUserStateCenter?(a1, v5, &_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
  v3 = *a2;
  swift_beginAccess();
  outlined assign with take of PommesAppChecking?(v5, v3 + 144);
  return swift_endAccess();
}

uint64_t DataProviderManager.setServiceHelper(_:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.pommes);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo32AFRequestDispatcherServiceHelper_pMd, &_sSo32AFRequestDispatcherServiceHelper_pMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2232BB000, v5, v6, "Creating POMMES service helper (underlying: %s)", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x223DE0F80](v8, -1, -1);
    MEMORY[0x223DE0F80](v7, -1, -1);
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  type metadata accessor for AssistantDataCache();
  v13 = swift_allocObject();
  v14 = closure #1 in variable initialization expression of AssistantDataCache.contactsQueue();
  *(v13 + 144) = 0;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 0u;
  *(v13 + 96) = 0u;
  *(v13 + 112) = 0u;
  *(v13 + 122) = 0u;
  *(v13 + 16) = v14;
  *(v13 + 24) = a1;
  *(v13 + 32) = v12;
  *(v13 + 40) = &protocol witness table for CNContactStore;
  swift_beginAccess();
  *(v13 + 144) = 0;
  *(v2 + 128) = v13;
  swift_unknownObjectRetain();

  *(v2 + 136) = a1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t DataProviderManager.getServiceHelper()()
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.pommes);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo32AFRequestDispatcherServiceHelper_pSgMd, &_sSo32AFRequestDispatcherServiceHelper_pSgMR);
    v5 = String.init<A>(describing:)();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_2232BB000, v1, v2, "Retrieving POMMES service helper (underlying: %s)", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x223DE0F80](v4, -1, -1);
    MEMORY[0x223DE0F80](v3, -1, -1);
  }

  return swift_unknownObjectRetain();
}

uint64_t DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v34 = a7;
  v35 = a8;
  v29 = a10;
  v30 = a2;
  v38 = a6;
  v39 = a11;
  v28 = a12;
  v33 = a14;
  v31 = a15;
  v36 = a16;
  v37 = a13;
  v20 = a16[3];
  v21 = a16[4];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a16, v20);
  MEMORY[0x28223BE20](v22);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  v26 = v28;
  v32 = specialized DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)(a1, v30, a3, a4, a5, v38, v34, v35, a9, v29, v39, v28, v37, a14, a15, v24, v32, v20, v21);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v36);
  return v32;
}

Swift::Void __swiftcall DataProviderManager.prepareForSearchAtPommesRequestStart()()
{
  v1 = v0;
  v2 = type metadata accessor for PerformanceUtil.Ticket(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.pommes);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v21 = *(v1 + 128);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch18AssistantDataCacheCSgMd, &_s21SiriInformationSearch18AssistantDataCacheCSgMR);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2232BB000, v6, v7, "DataProviderManager scheduling work to prepare for search at POMMES request start (helper: %s)...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x223DE0F80](v9, -1, -1);
    MEMORY[0x223DE0F80](v8, -1, -1);
  }

  Date.init()();
  v13 = &v4[v2[5]];
  *v13 = "SiriInformationSearch/DataProviderManager.swift";
  *(v13 + 1) = 47;
  v13[16] = 2;
  *&v4[v2[6]] = 128;
  v14 = &v4[v2[7]];
  *v14 = "prepareForSearchAtPommesRequestStart()";
  *(v14 + 1) = 38;
  v14[16] = 2;
  v15 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000032, 0x80000002234DD880);
  v16 = &v4[v2[8]];
  *v16 = v15;
  v16[1] = v17;
  v18 = *(v1 + 128);
  if (v18)
  {
    v19 = *(v1 + 16);
    v20 = *(*v18 + 176);

    v20(v19, 1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v4, 0);
  outlined destroy of PerformanceUtil.Ticket(v4);
}

double closure #1 in DataProviderManager.assistantDataSnapshot.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 128);
  if (v3)
  {
    v4 = *(*v3 + 120);

    v4(v9, v5);

    v6 = v9[3];
    a2[2] = v9[2];
    a2[3] = v6;
    a2[4] = v10[0];
    *(a2 + 74) = *(v10 + 10);
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    a2[1] = v8;
  }

  else
  {
    result = 0.0;
    *(a2 + 74) = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t DataProviderManager.resolveProfileSlice(to:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v60 = a3;
  v5 = type metadata accessor for DispatchTimeInterval();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DispatchTime();
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v53 - v12;
  v14 = type metadata accessor for PerformanceUtil.Ticket(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v55 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v53 - v21;
  v54 = *(v18 + 16);
  v53 = v18 + 16;
  v54(&v53 - v21, a1, v17);
  v23 = type metadata accessor for PommesSearchRequest(0);
  if (!*(*(a2 + *(v23 + 92)) + 16))
  {
    return (*(v18 + 32))(v60, v22, v17);
  }

  v24 = v23;
  v58 = v18;
  v57 = v22;
  v59 = v17;
  Date.init()();
  v25 = &v16[v14[5]];
  *v25 = "SiriInformationSearch/DataProviderManager.swift";
  *(v25 + 1) = 47;
  v25[16] = 2;
  *&v16[v14[6]] = 161;
  v26 = &v16[v14[7]];
  *v26 = "resolveProfileSlice(to:with:)";
  *(v26 + 1) = 29;
  v26[16] = 2;
  v27 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000002BLL, 0x80000002234DD8F0);
  v28 = v14[8];
  v56 = v16;
  v29 = &v16[v28];
  *v29 = v27;
  v29[1] = v30;
  v31 = v63;
  v32 = *(v63 + 64);
  outlined init with copy of PommesSearchRequest(a2, v13);
  (*(*(v24 - 8) + 56))(v13, 0, 1, v24);
  v33 = *(v31 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v34 = v69;
  OS_dispatch_queue.sync<A>(execute:)();
  v69 = v34;
  v35 = *(v31 + 136);
  swift_unknownObjectRetain();
  v36 = v62;
  static DispatchTime.now()();
  v37 = v61;
  *v61 = 1;
  v39 = v65;
  v38 = v66;
  (*(v65 + 104))(v37, *MEMORY[0x277D85178], v66);
  v40 = v64;
  MEMORY[0x223DDF450](v36, v37);
  (*(v39 + 8))(v37, v38);
  v41 = v68;
  v42 = *(v67 + 8);
  v42(v36, v68);
  (*(*v32 + 240))(&v71, v13, v70, v35, v33, v40);
  swift_unknownObjectRelease();
  outlined destroy of MediaUserStateCenter?(v70, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v42(v40, v41);
  outlined destroy of MediaUserStateCenter?(v13, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  if (v71)
  {
    v43 = v59;
    v44 = v57;
    if (*(v71 + 16))
    {
      v45 = v55;
      DataProviderManager.appendProfileSlices(_:to:)(v71, v57, v55);

      v46 = v58;
      v47 = *(v58 + 8);
      v47(v44, v43);
      (*(v46 + 32))(v44, v45, v43);
      v54(v60, v44, v43);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v48 = v56;
      (*(*static PerformanceUtil.shared + 184))(v56, 0);
      outlined destroy of PerformanceUtil.Ticket(v48);
      return (v47)(v44, v43);
    }
  }

  else
  {
    v43 = v59;
    v44 = v57;
  }

  lazy protocol witness table accessor for type PegasusError and conformance PegasusError();
  swift_allocError();
  *v50 = 6;
  swift_willThrow();
  v51 = v58;
  v52 = v56;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v52, 0);
  outlined destroy of PerformanceUtil.Ticket(v52);
  return (*(v51 + 8))(v44, v43);
}

uint64_t DataProviderManager.addAmpStorefront(to:for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v63 = type metadata accessor for DispatchTimeInterval();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v59 = (&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = type metadata accessor for DispatchTime();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v57 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v58 = &v57 - v11;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v17 = *(*(Context - 8) + 16);
  v64 = a3;
  v18 = v17(a3, a1, Context);
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v19 = static PerformanceUtil.shared;
    MEMORY[0x28223BE20](v18);
    v55 = v4;
    v56 = a2;
    v65 = a2;
    Date.init()();
    v20 = *(*v19 + 200);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch14MediaUserState_pGSgMd, &_sSay21SiriInformationSearch14MediaUserState_pGSgMR);
    v55 = &v54;
    v56 = v21;
    LOBYTE(v54) = 2;
    v20(v72, 0xD00000000000003FLL, 0x80000002234DD940, 0, v15, "SiriInformationSearch/DataProviderManager.swift", 47, 2, 183, "addAmpStorefront(to:for:)", 25, v54, partial apply for closure #1 in DataProviderManager.addAmpStorefront(to:for:));
    v22 = *(v13 + 8);
    v13 += 8;
    v22(v15, v12);
    v23 = v72[0];
    v24 = *(v4 + 104);
    if (v24)
    {
      v25 = v57;
      static DispatchTime.now()();
      v26 = v59;
      *v59 = 1;
      v27 = v62;
      v28 = v63;
      (*(v62 + 104))(v26, *MEMORY[0x277D85178], v63);
      v29 = v58;
      MEMORY[0x223DDF450](v25, v26);
      (*(v27 + 8))(v26, v28);
      v30 = v60;
      v31 = v61;
      (*(v60 + 8))(v25, v61);
      v32 = *(v30 + 56);
      v15 = (v30 + 56);
      v32(v29, 0, 1, v31);
      v33 = (*(*v24 + 176))(v29);
      outlined destroy of MediaUserStateCenter?(v29, &_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
    }

    else
    {
      v33 = 0;
    }

    v34 = type metadata accessor for PommesSearchRequest(0);
    if (*(v65 + *(v34 + 60)) == 1)
    {
      if (!v33)
      {
        goto LABEL_22;
      }

      v35 = (v65 + *(v34 + 84));
      v36 = v35[1];
      if (v36)
      {
        break;
      }
    }

LABEL_22:
    if (!v23)
    {
      return Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
    }

    v48 = *(v23 + 16);
    if (!v48)
    {
LABEL_28:

      return Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
    }

    a2 = 0;
    v12 = v23 + 32;
    while (a2 < *(v23 + 16))
    {
      outlined init with copy of AppDataProviding(v12, &v66);
      v15 = v67;
      v49 = v68;
      __swift_project_boxed_opaque_existential_1(&v66, v67);
      if ((*(v49 + 32))(v15, v49))
      {

        outlined init with take of PommesAppChecking(&v66, &v69);
        v50 = *(&v70 + 1);
        v51 = v71;
        __swift_project_boxed_opaque_existential_1(&v69, *(&v70 + 1));
        (*(v51 + 16))(v50, v51);
        __swift_destroy_boxed_opaque_existential_1(&v69);
        return Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
      }

      ++a2;
      __swift_destroy_boxed_opaque_existential_1(&v66);
      v12 += 40;
      if (v48 == a2)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_40:
    v18 = swift_once();
  }

  v15 = *v35;
  swift_getKeyPath();
  MUXContext.userInfo(where:is:)(v15, v36, v33, v72);

  if (!v72[1])
  {
    goto LABEL_22;
  }

  v74 = v73;
  outlined init with copy of String(&v74, &v69);
  result = outlined destroy of MediaUserStateCenter?(v72, &_s21SiriInformationSearch11MUXUserInfoVSgMd, &_s21SiriInformationSearch11MUXUserInfoVSgMR);
  if (!v23)
  {
    goto LABEL_32;
  }

  v38 = *(v23 + 16);
  if (!v38)
  {
LABEL_31:

LABEL_32:
    outlined destroy of String(&v74);
    v69 = 0u;
    v70 = 0u;
    v71 = 0;
LABEL_35:
    outlined init with copy of MediaUserStateCenter?(&v69, &v66, &_s21SiriInformationSearch14MediaUserState_pSgMd, &_s21SiriInformationSearch14MediaUserState_pSgMR);
    v52 = v67;
    if (v67)
    {
      v53 = v68;
      __swift_project_boxed_opaque_existential_1(&v66, v67);
      (*(v53 + 16))(v52, v53);
      __swift_destroy_boxed_opaque_existential_1(&v66);
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v66, &_s21SiriInformationSearch14MediaUserState_pSgMd, &_s21SiriInformationSearch14MediaUserState_pSgMR);
    }

    Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
    return outlined destroy of MediaUserStateCenter?(&v69, &_s21SiriInformationSearch14MediaUserState_pSgMd, &_s21SiriInformationSearch14MediaUserState_pSgMR);
  }

  v39 = 0;
  v40 = v74;
  v41 = v23 + 32;
  while (v39 < *(v23 + 16))
  {
    outlined init with copy of AppDataProviding(v41, &v66);
    v42 = v67;
    v43 = v68;
    __swift_project_boxed_opaque_existential_1(&v66, v67);
    v44 = (*(v43 + 48))(v42, v43);
    if (v45)
    {
      if (v44 == v40 && v45 == *(&v40 + 1))
      {

LABEL_34:

        outlined destroy of String(&v74);
        outlined init with take of PommesAppChecking(&v66, &v69);
        goto LABEL_35;
      }

      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v47)
      {
        goto LABEL_34;
      }
    }

    ++v39;
    result = __swift_destroy_boxed_opaque_existential_1(&v66);
    v41 += 40;
    if (v38 == v39)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in DataProviderManager.addAmpStorefront(to:for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchTime();
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  v18 = a1[3];
  outlined init with copy of PommesSearchRequest(a2, &v27 - v16);
  v19 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  v20 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v21 = v28;
  OS_dispatch_queue.sync<A>(execute:)();
  v28 = v21;
  v22 = a1[17];
  swift_unknownObjectRetain();
  static DispatchTime.now()();
  *v8 = 1;
  (*(v6 + 104))(v8, *MEMORY[0x277D85178], v5);
  MEMORY[0x223DDF450](v12, v8);
  (*(v6 + 8))(v8, v5);
  v23 = *(v29 + 8);
  v24 = v12;
  v25 = v30;
  v23(v24, v30);
  (*(*v18 + 240))(v17, v31, v22, v20, v14);
  swift_unknownObjectRelease();
  outlined destroy of MediaUserStateCenter?(v31, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v23(v14, v25);
  return outlined destroy of MediaUserStateCenter?(v17, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
}

uint64_t DataProviderManager.addAppInfoSlice(to:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v23 = type metadata accessor for Date();
  v6 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 16);
  v24 = v14;
  v15 = v13(v12, a1);
  if (one-time initialization token for shared != -1)
  {
    v15 = swift_once();
  }

  v22 = &v22;
  v16 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v15);
  v20 = v3;
  v21 = a2;
  Date.init()();
  v17 = *(*v16 + 200);
  v20 = &v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGSgMd, &_sSay10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGSgMR);
  LOBYTE(v19) = 2;
  v17(&v26, 0xD000000000000043, 0x80000002234DD9A0, 0, v8, "SiriInformationSearch/DataProviderManager.swift", 47, 2, 215, "addAppInfoSlice(to:for:)", 24, v19, partial apply for closure #1 in DataProviderManager.addAppInfoSlice(to:for:));
  (*(v6 + 8))(v8, v23);
  if (!v26)
  {
    return (*(v10 + 32))(v25, v12, v24);
  }

  DataProviderManager.appendProfileSlices(_:to:)(v26, v12, v25);

  return (*(v10 + 8))(v12, v24);
}

uint64_t closure #1 in DataProviderManager.addAppInfoSlice(to:for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchTime();
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  v18 = a1[5];
  outlined init with copy of PommesSearchRequest(a2, &v27 - v16);
  v19 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  v20 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v21 = v28;
  OS_dispatch_queue.sync<A>(execute:)();
  v28 = v21;
  v22 = a1[17];
  swift_unknownObjectRetain();
  static DispatchTime.now()();
  *v8 = 1;
  (*(v6 + 104))(v8, *MEMORY[0x277D85178], v5);
  MEMORY[0x223DDF450](v12, v8);
  (*(v6 + 8))(v8, v5);
  v23 = *(v29 + 8);
  v24 = v12;
  v25 = v30;
  v23(v24, v30);
  (*(*v18 + 240))(v17, v31, v22, v20, v14);
  swift_unknownObjectRelease();
  outlined destroy of MediaUserStateCenter?(v31, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v23(v14, v25);
  return outlined destroy of MediaUserStateCenter?(v17, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
}

uint64_t DataProviderManager.addNavigationAppInfoSlice(to:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v23 = type metadata accessor for Date();
  v6 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 16);
  v24 = v14;
  v15 = v13(v12, a1);
  if (one-time initialization token for shared != -1)
  {
    v15 = swift_once();
  }

  v22 = &v22;
  v16 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v15);
  v20 = v3;
  v21 = a2;
  Date.init()();
  v17 = *(*v16 + 200);
  v20 = &v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGSgMd, &_sSay10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGSgMR);
  LOBYTE(v19) = 2;
  v17(&v26, 0xD000000000000052, 0x80000002234DDA10, 0, v8, "SiriInformationSearch/DataProviderManager.swift", 47, 2, 241, "addNavigationAppInfoSlice(to:for:)", 34, v19, partial apply for closure #1 in DataProviderManager.addNavigationAppInfoSlice(to:for:));
  (*(v6 + 8))(v8, v23);
  if (!v26)
  {
    return (*(v10 + 32))(v25, v12, v24);
  }

  DataProviderManager.appendProfileSlices(_:to:)(v26, v12, v25);

  return (*(v10 + 8))(v12, v24);
}

uint64_t closure #1 in DataProviderManager.addNavigationAppInfoSlice(to:for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  v16 = a1[6];
  outlined init with copy of PommesSearchRequest(a2, &v24 - v14);
  v17 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  v18 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v25 = v3;
  v19 = a1[17];
  swift_unknownObjectRetain();
  static DispatchTime.now()();
  if (one-time initialization token for timeout != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for DispatchTimeInterval();
  v21 = __swift_project_value_buffer(v20, static PreferredNavigationAppDataProvider.timeout);
  MEMORY[0x223DDF450](v10, v21);
  v22 = *(v7 + 8);
  v22(v10, v6);
  (*(*v16 + 240))(v15, v26, v19, v18, v12);
  swift_unknownObjectRelease();
  outlined destroy of MediaUserStateCenter?(v26, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v22(v12, v6);
  return outlined destroy of MediaUserStateCenter?(v15, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
}

uint64_t DataProviderManager.addSiriKitAppInfoSlice(to:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v19 = a1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    v7 = swift_once();
  }

  v17[1] = v17;
  v10 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v7);
  v15 = v3;
  v16 = a2;
  Date.init()();
  v11 = *(*v10 + 200);
  v15 = &v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGSgMd, &_sSay10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGSgMR);
  LOBYTE(v14) = 2;
  v11(&v20, 0xD00000000000004ALL, 0x80000002234DDAA0, 0, v9, "SiriInformationSearch/DataProviderManager.swift", 47, 2, 269, "addSiriKitAppInfoSlice(to:for:)", 31, v14, partial apply for closure #1 in DataProviderManager.addSiriKitAppInfoSlice(to:for:));
  (*(v6 + 8))(v9, v5);
  if (v20)
  {
    DataProviderManager.appendProfileSlices(_:to:)(v20, v19, v18);
  }

  else
  {
    v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
    return (*(*(v13 - 8) + 16))(v18, v19, v13);
  }
}

uint64_t closure #1 in DataProviderManager.addSiriKitAppInfoSlice(to:for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchTime();
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  v18 = a1[7];
  outlined init with copy of PommesSearchRequest(a2, &v27 - v16);
  v19 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  v20 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v21 = v28;
  OS_dispatch_queue.sync<A>(execute:)();
  v28 = v21;
  v22 = a1[17];
  swift_unknownObjectRetain();
  static DispatchTime.now()();
  *v8 = 1;
  (*(v6 + 104))(v8, *MEMORY[0x277D85178], v5);
  MEMORY[0x223DDF450](v12, v8);
  (*(v6 + 8))(v8, v5);
  v23 = *(v29 + 8);
  v24 = v12;
  v25 = v30;
  v23(v24, v30);
  (*(*v18 + 240))(v17, v31, v22, v20, v14);
  swift_unknownObjectRelease();
  outlined destroy of MediaUserStateCenter?(v31, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v23(v14, v25);
  return outlined destroy of MediaUserStateCenter?(v17, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
}

uint64_t DataProviderManager.addMarketplaceInfo(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchTime();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMd, &_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v40 - v19;
  v44 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  v43 = *(v44 - 8);
  v21 = MEMORY[0x28223BE20](v44);
  v40 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v41 = &v40 - v23;
  v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v25 = *(*(v24 - 8) + 16);
  v42 = a2;
  v25(a2, a1, v24);
  v26 = v3[9];
  v27 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  v28 = v3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v29 = v3[17];
  swift_unknownObjectRetain();
  static DispatchTime.now()();
  *v8 = 1;
  v30 = v47;
  (*(v6 + 104))(v8, *MEMORY[0x277D85178], v47);
  MEMORY[0x223DDF450](v12, v8);
  (*(v6 + 8))(v8, v30);
  v31 = v46;
  v32 = *(v45 + 8);
  v32(v12, v46);
  (*(*v26 + 240))(v17, v49, v29, v28, v14);
  swift_unknownObjectRelease();
  outlined destroy of MediaUserStateCenter?(v49, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v33 = v31;
  v34 = v43;
  v32(v14, v33);
  v35 = v17;
  v36 = v44;
  outlined destroy of MediaUserStateCenter?(v35, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  if ((*(v34 + 48))(v20, 1, v36) == 1)
  {
    return outlined destroy of MediaUserStateCenter?(v20, &_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMd, &_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMR);
  }

  v38 = v41;
  (*(v34 + 32))(v41, v20, v36);
  (*(v34 + 16))(v40, v38, v36);
  v39 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.modify();
  Apple_Parsec_Search_PegasusQueryContext.marketplaceInfo.setter();
  v39(v48, 0);
  return (*(v34 + 8))(v38, v36);
}

uint64_t DataProviderManager.addUIScale(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 128);
  if (v5 && (v6 = *(*v5 + 120), v7 = , v6(v21, v7), , v21[3]) && (v8 = v21[7], v9 = v22, outlined destroy of MediaUserStateCenter?(v21, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR), (v9 & 1) == 0))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.pommes);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = v8;
      _os_log_impl(&dword_2232BB000, v17, v18, "Adding UI scale %f to Pegasus query context", v19, 0xCu);
      MEMORY[0x223DE0F80](v19, -1, -1);
    }

    Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
    (*(*(Context - 8) + 16))(a2, a1, Context);
    return Apple_Parsec_Search_PegasusQueryContext.uiScale.setter();
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pommes);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2232BB000, v11, v12, "No UI scale available from assistant data cache.", v13, 2u);
      MEMORY[0x223DE0F80](v13, -1, -1);
    }

    v14 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
    return (*(*(v14 - 8) + 16))(a2, a1, v14);
  }
}

void DataProviderManager.addTemperatureUnit(to:)()
{
  v1 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 128);
  if (v5)
  {
    v6 = *(*v5 + 120);

    v6(v26, v7);

    if (v26[3])
    {
      v9 = v26[9];
      v8 = v26[10];

      outlined destroy of MediaUserStateCenter?(v26, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
      if (v8)
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        __swift_project_value_buffer(v10, static Logger.pommes);

        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v25 = v14;
          *v13 = 136315138;
          *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v25);
          _os_log_impl(&dword_2232BB000, v11, v12, "Adding temperatureUnit %s to Pegasus query context", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v14);
          MEMORY[0x223DE0F80](v14, -1, -1);
          MEMORY[0x223DE0F80](v13, -1, -1);
        }

        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v9 && v8 == v15)
        {
        }

        else
        {
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v20 & 1) == 0)
          {
            if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v9 && v8 == v22)
            {

              v21 = MEMORY[0x277D38C10];
            }

            else
            {
              v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v21 = MEMORY[0x277D38C20];
              if (v23)
              {
                v21 = MEMORY[0x277D38C10];
              }
            }

            goto LABEL_18;
          }
        }

        v21 = MEMORY[0x277D38C18];
LABEL_18:
        (*(v2 + 104))(v4, *v21, v1);
        Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.setter();
        return;
      }
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.pommes);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2232BB000, v17, v18, "No temperatureUnit available from assistant data cache.", v19, 2u);
    MEMORY[0x223DE0F80](v19, -1, -1);
  }
}

void DataProviderManager.addMuxSettings(to:for:)(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v4 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.HourFormat();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v51 - v18;
  v20 = *(v2 + 104);
  if (v20)
  {
    static DispatchTime.now()();
    *v12 = 1;
    (*(v10 + 104))(v12, *MEMORY[0x277D85178], v9);
    MEMORY[0x223DDF450](v16, v12);
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    (*(v14 + 56))(v19, 0, 1, v13);
    v20 = (*(*v20 + 176))(v19);
    outlined destroy of MediaUserStateCenter?(v19, &_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  }

  v21 = type metadata accessor for PommesSearchRequest(0);
  if (*(a2 + *(v21 + 60)) == 1)
  {
    if (v20)
    {
      v22 = v21;
      swift_getKeyPath();
      MUXContext.userInfo(where:is:)(*(a2 + *(v22 + 84)), *(a2 + *(v22 + 84) + 8), v20, v58);

      if (v59)
      {
        v23 = v60;
        outlined destroy of MediaUserStateCenter?(v58, &_s21SiriInformationSearch11MUXUserInfoVSgMd, &_s21SiriInformationSearch11MUXUserInfoVSgMR);
        v24 = [v23 temperatureUnit];
        if (!v24)
        {
          goto LABEL_22;
        }

        v25 = v24;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        __swift_project_value_buffer(v29, static Logger.pommes);

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v57 = v33;
          *v32 = 136315138;
          *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v57);
          _os_log_impl(&dword_2232BB000, v30, v31, "Adding temperatureUnit %s to Pegasus query context from mux context", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v33);
          MEMORY[0x223DE0F80](v33, -1, -1);
          MEMORY[0x223DE0F80](v32, -1, -1);
        }

        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v26 && v34 == v28)
        {
        }

        else
        {
          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v39 & 1) == 0)
          {
            if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v26 && v49 == v28)
            {

              v40 = MEMORY[0x277D38C10];
            }

            else
            {
              v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v40 = MEMORY[0x277D38C20];
              if (v50)
              {
                v40 = MEMORY[0x277D38C10];
              }
            }

            goto LABEL_21;
          }
        }

        v40 = MEMORY[0x277D38C18];
LABEL_21:
        (*(v51 + 104))(v8, *v40, v52);
        Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.setter();
LABEL_22:
        v41 = [v23 twentyFourHourTimeDisplay];
        if (v41)
        {
          v42 = v41;
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v43 = type metadata accessor for Logger();
          __swift_project_value_buffer(v43, static Logger.pommes);
          v36 = v42;
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 67109120;
            *(v46 + 4) = [v36 BOOLValue];

            _os_log_impl(&dword_2232BB000, v44, v45, "Adding twentyFourHourMode %{BOOL}d to Pegasus query context from mux context", v46, 8u);
            MEMORY[0x223DE0F80](v46, -1, -1);
          }

          else
          {

            v44 = v36;
          }

          v47 = [v36 BOOLValue];
          v48 = MEMORY[0x277D38C00];
          if (!v47)
          {
            v48 = MEMORY[0x277D38C08];
          }

          (*(v54 + 104))(v53, *v48, v55);
          Apple_Parsec_Search_PegasusQueryContext.hourFormat.setter();
        }

        else
        {
          v36 = v23;
        }

        goto LABEL_32;
      }
    }
  }

  else
  {
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logger.pommes);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_2232BB000, v36, v37, "Unable to get mux settings for user", v38, 2u);
    MEMORY[0x223DE0F80](v38, -1, -1);
  }

LABEL_32:
}

Swift::Bool __swiftcall DataProviderManager.userContentAllowed()()
{
  v1 = *(v0 + 128);
  if (v1 && (v2 = *(*v1 + 120), v3 = , v2(v10, v3), , v10[3]))
  {
    v4 = v11;
    outlined destroy of MediaUserStateCenter?(v10, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.pommes);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2232BB000, v6, v7, "No allowUserGeneratedContent BOOLean available from assistant data cache.", v8, 2u);
      MEMORY[0x223DE0F80](v8, -1, -1);
    }

    v4 = 1;
  }

  return v4 & 1;
}

uint64_t DataProviderManager.getQueueState()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v22 - v15;
  v17 = *(v1 + 32);
  v18 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  memset(v23, 0, 90);
  v19 = *(v2 + 16);
  static DispatchTime.now()();
  *v6 = 1;
  (*(v4 + 104))(v6, *MEMORY[0x277D85178], v3);
  MEMORY[0x223DDF450](v11, v6);
  (*(v4 + 8))(v6, v3);
  v20 = *(v8 + 8);
  v20(v11, v7);
  (*(*v17 + 240))(v16, v23, 0, v19, v13);
  v20(v13, v7);
  return outlined destroy of MediaUserStateCenter?(v16, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
}

uint64_t DataProviderManager.addProviderData(to:searchRequest:queryContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v37 = a3;
  v38 = a4;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v31 - v13;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v16 = *(v15 - 8);
  v33 = v15;
  v34 = v16;
  v17 = MEMORY[0x28223BE20](v15);
  v36 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v31 - v19;
  (*(v21 + 16))(v31 - v19, a1);
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.getter();
  v32 = a2;
  DataProviderManager.addDeviceState(to:searchRequest:)(v14, a2, v12);
  v35 = v9;
  v39 = *(v9 + 8);
  v39(v14, v8);
  v22 = *(v9 + 32);
  v22(v14, v12, v8);
  v23 = a2;
  v24 = v5;
  DataProviderManager.addRestrictions(to:searchRequest:queryContext:)(v14, v23, v37, v12);
  v25 = v39;
  v39(v14, v8);
  v22(v14, v12, v8);
  v31[1] = v24;
  DataProviderManager.addPerson(to:)(v14, v12);
  v25(v14, v8);
  v22(v14, v12, v8);
  v26 = v36;
  DataProviderManager.addAmpState(to:searchRequest:)(v20, v32, v36);
  v28 = v33;
  v27 = v34;
  v29 = *(v34 + 8);
  v29(v20, v33);
  (*(v27 + 32))(v20, v26, v28);
  DataProviderManager.addQueueState(to:)(v20, v38);
  v29(v20, v28);
  (*(v35 + 16))(v12, v14, v8);
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.setter();
  return (v39)(v14, v8);
}

uint64_t DataProviderManager.addRestrictions(to:searchRequest:queryContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v203 = a3;
  v216 = a2;
  *&v220 = a1;
  v217 = type metadata accessor for DeviceRestrictions();
  v215 = *(v217 - 8);
  v6 = MEMORY[0x28223BE20](v217);
  v218 = v201 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v222 = v201 - v8;
  v202 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions();
  MEMORY[0x28223BE20](v202);
  v201[1] = v201 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState();
  v209 = *(v10 - 8);
  v210 = v10;
  MEMORY[0x28223BE20](v10);
  v208 = v201 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Restriction();
  v221 = *(v223 - 8);
  v12 = MEMORY[0x28223BE20](v223);
  v214 = v201 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v213 = v201 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v205 = v201 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v204 = v201 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v211 = v201 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v207 = v201 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v206 = v201 - v25;
  MEMORY[0x28223BE20](v24);
  v201[0] = v201 - v26;
  v27 = type metadata accessor for DispatchTimeInterval();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = (v201 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for DispatchTime();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = v201 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = v201 - v36;
  v38 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext();
  v39 = *(*(v38 - 8) + 16);
  v219 = a4;
  v39(a4, v220, v38);
  *&v220 = v4;
  v40 = *(v4 + 104);
  if (v40)
  {
    static DispatchTime.now()();
    *v30 = 1;
    (*(v28 + 104))(v30, *MEMORY[0x277D85178], v27);
    MEMORY[0x223DDF450](v34, v30);
    (*(v28 + 8))(v30, v27);
    (*(v32 + 8))(v34, v31);
    (*(v32 + 56))(v37, 0, 1, v31);
    v40 = (*(*v40 + 176))(v37);
    outlined destroy of MediaUserStateCenter?(v37, &_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  }

  v41 = type metadata accessor for PommesSearchRequest(0);
  v42 = v216;
  v43 = v217;
  v44 = *(v216 + *(v41 + 60));
  p_superclass = &OBJC_METACLASS____TtC21SiriInformationSearch26PegasusInstrumentationUtil.superclass;
  v46 = v220;
  v212 = v41;
  if (v44 == 1)
  {
    if (v40)
    {
      v47 = v41;
      swift_getKeyPath();
      MUXContext.userInfo(where:is:)(*(v42 + *(v47 + 84)), *(v42 + *(v47 + 84) + 8), v40, v225);

      if (v225[1])
      {
        v48 = v225[6];
        outlined destroy of MediaUserStateCenter?(v225, &_s21SiriInformationSearch11MUXUserInfoVSgMd, &_s21SiriInformationSearch11MUXUserInfoVSgMR);
        if ([v48 mediaPlayerExplicitContentDisallowed])
        {
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v49 = type metadata accessor for Logger();
          __swift_project_value_buffer(v49, static Logger.pommes);
          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&dword_2232BB000, v50, v51, "Restrictions: explicit content disallowed via HomeSettings. Adding .audioExplicitContentDisabled", v52, 2u);
            MEMORY[0x223DE0F80](v52, -1, -1);
          }

          lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Restriction and conformance Apple_Parsec_Siri_V2alpha_Restriction, MEMORY[0x277D39360], MEMORY[0x277D39358]);
          static Message.with(_:)();
          v53 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.modify();
          v55 = v54;
          v56 = *v54;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v55 = v56;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
            *v55 = v56;
          }

          v59 = v56[2];
          v58 = v56[3];
          if (v59 >= v58 >> 1)
          {
            v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v56);
            *v55 = v56;
          }

          v42 = v216;
          v56[2] = v59 + 1;
          (*(v221 + 32))(v56 + ((*(v221 + 80) + 32) & ~*(v221 + 80)) + *(v221 + 72) * v59, v201[0], v223);
          v53(v230, 0);

          v43 = v217;
          p_superclass = (&OBJC_METACLASS____TtC21SiriInformationSearch26PegasusInstrumentationUtil + 8);
          goto LABEL_37;
        }
      }
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    __swift_project_value_buffer(v76, static Logger.pommes);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v61, v62))
    {
LABEL_36:

      goto LABEL_37;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = "Restrictions: skipping .audioExplicitContentDisabled for MUX device";
LABEL_35:
    _os_log_impl(&dword_2232BB000, v61, v62, v64, v63, 2u);
    MEMORY[0x223DE0F80](v63, -1, -1);
    goto LABEL_36;
  }

  if ([*(v46 + 120) allowExplicitContent])
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logger.pommes);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v61, v62))
    {
      goto LABEL_36;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = "Restrictions: skipping .audioExplicitContentDisabled";
    goto LABEL_35;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  __swift_project_value_buffer(v65, static Logger.pommes);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_2232BB000, v66, v67, "Restrictions: explicit content disallowed. Adding .audioExplicitContentDisabled", v68, 2u);
    MEMORY[0x223DE0F80](v68, -1, -1);
  }

  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Restriction and conformance Apple_Parsec_Siri_V2alpha_Restriction, MEMORY[0x277D39360], MEMORY[0x277D39358]);
  static Message.with(_:)();
  v69 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.modify();
  v71 = v70;
  v72 = *v70;
  v73 = swift_isUniquelyReferenced_nonNull_native();
  *v71 = v72;
  if ((v73 & 1) == 0)
  {
    v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72[2] + 1, 1, v72);
    *v71 = v72;
  }

  v75 = v72[2];
  v74 = v72[3];
  if (v75 >= v74 >> 1)
  {
    v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v72);
    *v71 = v72;
  }

  p_superclass = (&OBJC_METACLASS____TtC21SiriInformationSearch26PegasusInstrumentationUtil + 8);
  v72[2] = v75 + 1;
  (*(v221 + 32))(v72 + ((*(v221 + 80) + 32) & ~*(v221 + 80)) + *(v221 + 72) * v75, v206, v223);
  v69(v230, 0);
  v42 = v216;
  v46 = v220;
LABEL_37:
  v77 = [*(v46 + 120) isInRestrictedSharingMode];
  v78 = p_superclass[476];
  if (v77)
  {
    if (v78 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    __swift_project_value_buffer(v79, static Logger.pommes);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_2232BB000, v80, v81, "Restrictions: in restricted sharing mode. Adding .personalInformationDisabled", v82, 2u);
      MEMORY[0x223DE0F80](v82, -1, -1);
    }

    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Restriction and conformance Apple_Parsec_Siri_V2alpha_Restriction, MEMORY[0x277D39360], MEMORY[0x277D39358]);
    static Message.with(_:)();
    v83 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.modify();
    v85 = v84;
    v86 = *v84;
    v87 = swift_isUniquelyReferenced_nonNull_native();
    *v85 = v86;
    if ((v87 & 1) == 0)
    {
      v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v86[2] + 1, 1, v86);
      *v85 = v86;
    }

    v89 = v86[2];
    v88 = v86[3];
    if (v89 >= v88 >> 1)
    {
      v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1, v86);
      *v85 = v86;
    }

    v86[2] = v89 + 1;
    (*(v221 + 32))(v86 + ((*(v221 + 80) + 32) & ~*(v221 + 80)) + *(v221 + 72) * v89, v207, v223);
    v83(v230, 0);
    p_superclass = (&OBJC_METACLASS____TtC21SiriInformationSearch26PegasusInstrumentationUtil + 8);
    v46 = v220;
  }

  else
  {
    if (v78 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    __swift_project_value_buffer(v90, static Logger.pommes);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_2232BB000, v91, v92, "Restrictions: skipping .personalInformationDisabled", v93, 2u);
      MEMORY[0x223DE0F80](v93, -1, -1);
    }
  }

  v94 = v208;
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.deviceState.getter();
  v95 = Apple_Parsec_Siri_V2alpha_DeviceState.isLockedWithPasscode.getter();
  (*(v209 + 8))(v94, v210);
  v96 = p_superclass[476];
  if (v95)
  {
    if (v96 != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    __swift_project_value_buffer(v97, static Logger.pommes);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_2232BB000, v98, v99, "Restrictions: device is locked. Adding .personalInformationDisabled", v100, 2u);
      MEMORY[0x223DE0F80](v100, -1, -1);
    }

    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Restriction and conformance Apple_Parsec_Siri_V2alpha_Restriction, MEMORY[0x277D39360], MEMORY[0x277D39358]);
    static Message.with(_:)();
    v101 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.modify();
    v103 = v102;
    v104 = *v102;
    v105 = swift_isUniquelyReferenced_nonNull_native();
    *v103 = v104;
    if ((v105 & 1) == 0)
    {
      v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v104[2] + 1, 1, v104);
      *v103 = v104;
    }

    v107 = v104[2];
    v106 = v104[3];
    if (v107 >= v106 >> 1)
    {
      v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v106 > 1), v107 + 1, 1, v104);
      *v103 = v104;
    }

    v104[2] = v107 + 1;
    (*(v221 + 32))(v104 + ((*(v221 + 80) + 32) & ~*(v221 + 80)) + *(v221 + 72) * v107, v211, v223);
    v101(v230, 0);
    p_superclass = (&OBJC_METACLASS____TtC21SiriInformationSearch26PegasusInstrumentationUtil + 8);
    v46 = v220;
    v108 = *(v220 + 128);
    if (!v108)
    {
      goto LABEL_70;
    }
  }

  else
  {
    if (v96 != -1)
    {
      swift_once();
    }

    v109 = type metadata accessor for Logger();
    __swift_project_value_buffer(v109, static Logger.pommes);
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_2232BB000, v110, v111, "Restrictions: skipping .personalInformationDisabled because device is unlocked.", v112, 2u);
      MEMORY[0x223DE0F80](v112, -1, -1);
    }

    v108 = *(v46 + 128);
    if (!v108)
    {
LABEL_70:
      if (p_superclass[476] != -1)
      {
        swift_once();
      }

      v116 = type metadata accessor for Logger();
      __swift_project_value_buffer(v116, static Logger.pommes);
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        *v119 = 0;
        _os_log_impl(&dword_2232BB000, v117, v118, "Restrictions: skipping .siriWebSearchContentDisabled", v119, 2u);
        MEMORY[0x223DE0F80](v119, -1, -1);
      }

      v120 = *(v46 + 128);
      if (v120)
      {
        goto LABEL_75;
      }

LABEL_96:
      if (p_superclass[476] != -1)
      {
        swift_once();
      }

      v147 = type metadata accessor for Logger();
      __swift_project_value_buffer(v147, static Logger.pommes);
      v148 = Logger.logObject.getter();
      v149 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        *v150 = 0;
        _os_log_impl(&dword_2232BB000, v148, v149, "Restrictions: skipping .siriExplicitLanguageDisallowed", v150, 2u);
        MEMORY[0x223DE0F80](v150, -1, -1);
      }

      v135 = *(v46 + 128);
      if (!v135)
      {
        goto LABEL_103;
      }

      goto LABEL_101;
    }
  }

  v113 = *(*v108 + 120);

  v113(v226, v114);

  if (!v226[3])
  {
    goto LABEL_70;
  }

  v115 = v227;
  outlined destroy of MediaUserStateCenter?(v226, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  if (v115)
  {
    goto LABEL_70;
  }

  if (p_superclass[476] != -1)
  {
    swift_once();
  }

  v136 = type metadata accessor for Logger();
  __swift_project_value_buffer(v136, static Logger.pommes);
  v137 = Logger.logObject.getter();
  v138 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v137, v138))
  {
    v139 = swift_slowAlloc();
    *v139 = 0;
    _os_log_impl(&dword_2232BB000, v137, v138, "Restrictions: web search content disallowed. Adding .siriWebSearchContentDisabled", v139, 2u);
    MEMORY[0x223DE0F80](v139, -1, -1);
  }

  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Restriction and conformance Apple_Parsec_Siri_V2alpha_Restriction, MEMORY[0x277D39360], MEMORY[0x277D39358]);
  static Message.with(_:)();
  v140 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.modify();
  v142 = v141;
  v143 = *v141;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  *v142 = v143;
  if ((v144 & 1) == 0)
  {
    v143 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v143[2] + 1, 1, v143);
    *v142 = v143;
  }

  v146 = v143[2];
  v145 = v143[3];
  if (v146 >= v145 >> 1)
  {
    v143 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v145 > 1), v146 + 1, 1, v143);
    *v142 = v143;
  }

  v143[2] = v146 + 1;
  (*(v221 + 32))(v143 + ((*(v221 + 80) + 32) & ~*(v221 + 80)) + *(v221 + 72) * v146, v204, v223);
  v140(v230, 0);
  p_superclass = &OBJC_METACLASS____TtC21SiriInformationSearch26PegasusInstrumentationUtil.superclass;
  v46 = v220;
  v120 = *(v220 + 128);
  if (!v120)
  {
    goto LABEL_96;
  }

LABEL_75:
  v121 = *(*v120 + 120);

  v121(v228, v122);

  if (!v228[3])
  {
    goto LABEL_96;
  }

  v123 = v229;
  outlined destroy of MediaUserStateCenter?(v228, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  if ((v123 & 1) == 0)
  {
    goto LABEL_96;
  }

  if (p_superclass[476] != -1)
  {
    swift_once();
  }

  v124 = type metadata accessor for Logger();
  __swift_project_value_buffer(v124, static Logger.pommes);
  v125 = Logger.logObject.getter();
  v126 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    *v127 = 0;
    _os_log_impl(&dword_2232BB000, v125, v126, "Restrictions: explicit language disallowed. Adding .siriExplicitLanguageDisallowed", v127, 2u);
    MEMORY[0x223DE0F80](v127, -1, -1);
  }

  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Restriction and conformance Apple_Parsec_Siri_V2alpha_Restriction, MEMORY[0x277D39360], MEMORY[0x277D39358]);
  static Message.with(_:)();
  v128 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.modify();
  v130 = v129;
  v131 = *v129;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  *v130 = v131;
  if ((v132 & 1) == 0)
  {
    v131 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v131[2] + 1, 1, v131);
    *v130 = v131;
  }

  v134 = v131[2];
  v133 = v131[3];
  if (v134 >= v133 >> 1)
  {
    v131 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v133 > 1), v134 + 1, 1, v131);
    *v130 = v131;
  }

  v131[2] = v134 + 1;
  (*(v221 + 32))(v131 + ((*(v221 + 80) + 32) & ~*(v221 + 80)) + *(v221 + 72) * v134, v205, v223);
  v128(v230, 0);
  p_superclass = (&OBJC_METACLASS____TtC21SiriInformationSearch26PegasusInstrumentationUtil + 8);
  v135 = *(v220 + 128);
  if (!v135)
  {
    goto LABEL_103;
  }

LABEL_101:
  v151 = *(*v135 + 120);

  v151(v230, v152);

  if (!v230[3] || (v220 = v231, v153 = v232, outlined destroy of MediaUserStateCenter?(v230, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR), (v153 & 1) != 0))
  {
LABEL_103:
    if (p_superclass[476] != -1)
    {
      swift_once();
    }

    v154 = type metadata accessor for Logger();
    __swift_project_value_buffer(v154, static Logger.pommes);
    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      *v157 = 0;
      _os_log_impl(&dword_2232BB000, v155, v156, "Restrictions: skipping media content rating restrictions", v157, 2u);
      MEMORY[0x223DE0F80](v157, -1, -1);
    }

    goto LABEL_108;
  }

  if (p_superclass[476] != -1)
  {
    swift_once();
  }

  v196 = type metadata accessor for Logger();
  __swift_project_value_buffer(v196, static Logger.pommes);
  v197 = Logger.logObject.getter();
  v198 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v197, v198))
  {
    v199 = swift_slowAlloc();
    *v199 = 0;
    _os_log_impl(&dword_2232BB000, v197, v198, "Restrictions: adding media content rating restrictions", v199, 2u);
    MEMORY[0x223DE0F80](v199, -1, -1);
  }

  MEMORY[0x28223BE20](v200);
  v201[-4] = v203;
  *&v201[-3] = v220;
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions and conformance Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions, MEMORY[0x277D39D48], MEMORY[0x277D39D40]);
  static Message.with(_:)();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.contentRatingRestrictions.setter();
LABEL_108:
  if (*(v42 + *(v212 + 52)))
  {
  }

  DeviceRestrictions.init(aceValue:)();
  v158 = v218;
  static DeviceRestrictions.starkMode.getter();
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions, MEMORY[0x277D61DC0], MEMORY[0x277D61DC8]);
  v159 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v160 = *(v215 + 8);
  v160(v158, v43);
  v161 = p_superclass[476];
  if (v159)
  {
    if (v161 != -1)
    {
      swift_once();
    }

    v162 = type metadata accessor for Logger();
    __swift_project_value_buffer(v162, static Logger.pommes);
    v163 = Logger.logObject.getter();
    v164 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      *v165 = 0;
      _os_log_impl(&dword_2232BB000, v163, v164, "Restrictions: Stark mode. Adding .restrictionPrimaryDisplayDisabled (.advancedCar)", v165, 2u);
      MEMORY[0x223DE0F80](v165, -1, -1);
    }

    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Restriction and conformance Apple_Parsec_Siri_V2alpha_Restriction, MEMORY[0x277D39360], MEMORY[0x277D39358]);
    static Message.with(_:)();
    v166 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.modify();
    v168 = v167;
    v169 = *v167;
    v170 = swift_isUniquelyReferenced_nonNull_native();
    *v168 = v169;
    if ((v170 & 1) == 0)
    {
      v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v169[2] + 1, 1, v169);
      *v168 = v169;
    }

    v172 = v169[2];
    v171 = v169[3];
    if (v172 >= v171 >> 1)
    {
      v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v171 > 1), v172 + 1, 1, v169);
      *v168 = v169;
    }

    v169[2] = v172 + 1;
    (*(v221 + 32))(v169 + ((*(v221 + 80) + 32) & ~*(v221 + 80)) + *(v221 + 72) * v172, v213, v223);
    v166(v224, 0);
    v43 = v217;
    p_superclass = (&OBJC_METACLASS____TtC21SiriInformationSearch26PegasusInstrumentationUtil + 8);
  }

  else
  {
    if (v161 != -1)
    {
      swift_once();
    }

    v173 = type metadata accessor for Logger();
    __swift_project_value_buffer(v173, static Logger.pommes);
    v174 = Logger.logObject.getter();
    v175 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v174, v175))
    {
      v176 = swift_slowAlloc();
      *v176 = 0;
      _os_log_impl(&dword_2232BB000, v174, v175, "Restrictions: skipping .restrictionPrimaryDisplayDisabled (.advancedCar)", v176, 2u);
      MEMORY[0x223DE0F80](v176, -1, -1);
    }
  }

  v177 = v218;
  static DeviceRestrictions.carDNDMode.getter();
  v178 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v160(v177, v43);
  v179 = p_superclass[476];
  if (v178)
  {
    if (v179 != -1)
    {
      swift_once();
    }

    v180 = type metadata accessor for Logger();
    __swift_project_value_buffer(v180, static Logger.pommes);
    v181 = Logger.logObject.getter();
    v182 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      *v183 = 0;
      _os_log_impl(&dword_2232BB000, v181, v182, "Restrictions: car DND mode. Adding .restrictionPrimaryDisplayDisabled (.carDnd)", v183, 2u);
      MEMORY[0x223DE0F80](v183, -1, -1);
    }

    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Restriction and conformance Apple_Parsec_Siri_V2alpha_Restriction, MEMORY[0x277D39360], MEMORY[0x277D39358]);
    static Message.with(_:)();
    v184 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.modify();
    v186 = v185;
    v187 = *v185;
    v188 = swift_isUniquelyReferenced_nonNull_native();
    *v186 = v187;
    if ((v188 & 1) == 0)
    {
      v187 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v187[2] + 1, 1, v187);
      *v186 = v187;
    }

    v190 = v187[2];
    v189 = v187[3];
    if (v190 >= v189 >> 1)
    {
      v187 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v189 > 1), v190 + 1, 1, v187);
      *v186 = v187;
    }

    v187[2] = v190 + 1;
    (*(v221 + 32))(v187 + ((*(v221 + 80) + 32) & ~*(v221 + 80)) + *(v221 + 72) * v190, v214, v223);
    v184(v224, 0);
  }

  else
  {
    if (v179 != -1)
    {
      swift_once();
    }

    v191 = type metadata accessor for Logger();
    __swift_project_value_buffer(v191, static Logger.pommes);
    v192 = Logger.logObject.getter();
    v193 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v192, v193))
    {
      v194 = swift_slowAlloc();
      *v194 = 0;
      _os_log_impl(&dword_2232BB000, v192, v193, "Restrictions: skipping .restrictionPrimaryDisplayDisabled (.carDnd)", v194, 2u);
      MEMORY[0x223DE0F80](v194, -1, -1);
    }
  }

  return (v160)(v222, v43);
}

uint64_t closure #6 in DataProviderManager.addRestrictions(to:searchRequest:queryContext:)(uint64_t a1, unsigned int *a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RestrictionCategory();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v5, *a2);
  return MEMORY[0x223DDA780](v5);
}

uint64_t closure #9 in DataProviderManager.addRestrictions(to:searchRequest:queryContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = Apple_Parsec_Search_PegasusQueryContext.countryCode.getter();
  result = MEMORY[0x223DDBC10](v6);
  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = MEMORY[0x223DDBC50](a3);
  if (a4 < 0xFFFFFFFF80000000)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a4 <= 0x7FFFFFFF)
  {
    return Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions.tvRestriction.setter();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t closure #1 in DataProviderManager.addRestrictions(to:searchRequest:queryContext:)(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RestrictionReason();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RestrictionCategory();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v11, *a2);
  MEMORY[0x223DDA780](v11);
  (*(v6 + 104))(v8, *a3, v5);
  return Apple_Parsec_Siri_V2alpha_Restriction.reason.setter();
}

uint64_t DataProviderManager.addPerson(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Person();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v19 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext();
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  result = OS_dispatch_queue.sync<A>(execute:)();
  v14 = v24;
  if (v24)
  {

    outlined destroy of MediaUserStateCenter?(v23, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
    if (*(v14 + 16))
    {
      v15 = *(v14 + 96);
      v21[3] = *(v14 + 80);
      v21[4] = v15;
      v21[5] = *(v14 + 112);
      v22 = *(v14 + 128);
      v16 = *(v14 + 48);
      v21[0] = *(v14 + 32);
      v21[1] = v16;
      v21[2] = *(v14 + 64);
      outlined init with copy of AssistantDataSnapshot.MeCard(v21, &v20);

      v19[1] = a2;
      MEMORY[0x28223BE20](v17);
      v19[-2] = v21;
      lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Person and conformance Apple_Parsec_Siri_V2alpha_Person, MEMORY[0x277D38FC0], MEMORY[0x277D38FB8]);
      static Message.with(_:)();
      outlined destroy of AssistantDataSnapshot.MeCard(v21);
      v18 = (*(v5 + 32))(v11, v9, v4);
      MEMORY[0x28223BE20](v18);
      v19[-2] = v11;
      static Message.with(_:)();
      Apple_Parsec_Siri_V2alpha_SiriPegasusContext.person.setter();
      return (*(v5 + 8))(v11, v4);
    }

    else
    {
    }
  }

  return result;
}

uint64_t closure #1 in DataProviderManager.addPerson(to:)()
{
  Apple_Parsec_Siri_V2alpha_Person.givenName.getter();
  Apple_Parsec_Siri_V2alpha_Person.givenName.setter();
  Apple_Parsec_Siri_V2alpha_Person.nickname.getter();
  return Apple_Parsec_Siri_V2alpha_Person.nickname.setter();
}

uint64_t DataProviderManager.addDeviceState(to:searchRequest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v132 = a2;
  v123 = a1;
  v124 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v108 = &v98 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v122 = &v98 - v6;
  v131 = type metadata accessor for SiriVoiceGender();
  v134 = *(v131 - 8);
  v7 = MEMORY[0x28223BE20](v131);
  v118 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v98 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v116 = &v98 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v129 = &v98 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v128 = &v98 - v17;
  MEMORY[0x28223BE20](v16);
  v127 = &v98 - v18;
  v115 = type metadata accessor for DispatchTimeInterval();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v111 = (&v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = type metadata accessor for DispatchTime();
  v112 = *(v113 - 8);
  v20 = MEMORY[0x28223BE20](v113);
  v103 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v110 = &v98 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  MEMORY[0x28223BE20](v23 - 8);
  v107 = &v98 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_CarPlaySessionDataVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_CarPlaySessionDataVSgMR);
  MEMORY[0x28223BE20](v25 - 8);
  v105 = &v98 - v26;
  v106 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData();
  v104 = *(v106 - 8);
  v27 = MEMORY[0x28223BE20](v106);
  v101 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v102 = &v98 - v29;
  v109 = type metadata accessor for DeviceRestrictions();
  v125 = *(v109 - 8);
  v30 = MEMORY[0x28223BE20](v109);
  v32 = &v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v133 = &v98 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v98 - v35;
  v37 = type metadata accessor for InputOrigin();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v98 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState();
  v120 = *(v121 - 8);
  v41 = MEMORY[0x28223BE20](v121);
  v119 = &v98 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v98 - v43;
  Apple_Parsec_Siri_V2alpha_DeviceState.init()();
  v45 = type metadata accessor for PommesSearchRequest(0);
  outlined init with copy of MediaUserStateCenter?(v132 + *(v45 + 56), v36, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v36, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  }

  else
  {
    (*(v38 + 32))(v40, v36, v37);
    InputOrigin.rawValue.getter();
    Apple_Parsec_Siri_V2alpha_DeviceState.inputOrigin.setter();
    (*(v38 + 8))(v40, v37);
  }

  v46 = *(v132 + *(v45 + 52));
  v117 = v11;
  v47 = v133;
  v126 = v45;
  if (v46)
  {

    Apple_Parsec_Siri_V2alpha_DeviceState.isEyesFree.setter();
    Apple_Parsec_Siri_V2alpha_DeviceState.isTextToSpeechEnabled.setter();
    Apple_Parsec_Siri_V2alpha_DeviceState.isVoiceTriggerEnabled.setter();

    DeviceRestrictions.init(aceValue:)();
    static DeviceRestrictions.carDNDMode.getter();
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions, MEMORY[0x277D61DC0], MEMORY[0x277D61DC8]);
    v48 = v109;
    dispatch thunk of SetAlgebra.isSuperset(of:)();
    v49 = v125 + 8;
    v50 = *(v125 + 8);
    v50(v32, v48);
    Apple_Parsec_Siri_V2alpha_DeviceState.isCarDnd.setter();
    static DeviceRestrictions.starkMode.getter();
    dispatch thunk of SetAlgebra.isSuperset(of:)();
    v50(v32, v48);
    Apple_Parsec_Siri_V2alpha_DeviceState.isCarplay.setter();
    if (Apple_Parsec_Siri_V2alpha_DeviceState.isCarplay.getter())
    {
      v100 = v50;
      v125 = v49;
      v51 = v130;
      v99 = *(v130 + 96);
      v52 = v107;
      outlined init with copy of PommesSearchRequest(v132, v107);
      (*(*(v45 - 8) + 56))(v52, 0, 1, v45);
      v98 = *(v51 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
      OS_dispatch_queue.sync<A>(execute:)();
      v53 = *(v51 + 136);
      swift_unknownObjectRetain();
      v54 = v103;
      static DispatchTime.now()();
      v55 = v111;
      *v111 = 1;
      v56 = v114;
      v57 = v115;
      (*(v114 + 104))(v55, *MEMORY[0x277D85178], v115);
      v58 = v110;
      MEMORY[0x223DDF450](v54, v55);
      (*(v56 + 8))(v55, v57);
      v59 = *(v112 + 8);
      v60 = v113;
      v59(v54, v113);
      v61 = v105;
      v62 = v107;
      (*(*v99 + 240))(v107, v139, v53, v98, v58);
      swift_unknownObjectRelease();
      outlined destroy of MediaUserStateCenter?(v139, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
      v59(v58, v60);
      outlined destroy of MediaUserStateCenter?(v62, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
      v63 = v104;
      v64 = v106;
      if ((*(v104 + 48))(v61, 1, v106) == 1)
      {
        v100(v133, v109);

        outlined destroy of MediaUserStateCenter?(v61, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_CarPlaySessionDataVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_CarPlaySessionDataVSgMR);
      }

      else
      {
        v65 = v102;
        (*(v63 + 32))(v102, v61, v64);
        (*(v63 + 16))(v101, v65, v64);
        Apple_Parsec_Siri_V2alpha_DeviceState.carplaySessionData.setter();

        (*(v63 + 8))(v65, v64);
        v100(v133, v109);
      }
    }

    else
    {
      v50(v47, v48);
    }
  }

  Apple_Parsec_Siri_V2alpha_DeviceState.isMultiUser.setter();
  v133 = SiriEnvironment.currentDevice.getter();
  if ((Apple_Parsec_Siri_V2alpha_DeviceState.isCarplay.getter() & 1) == 0)
  {
    MKBGetDeviceLockState();
  }

  Apple_Parsec_Siri_V2alpha_DeviceState.isLockedWithPasscode.setter();
  dispatch thunk of CurrentDevice.siriVoiceGender.getter();
  v66 = *(v134 + 104);
  v66(v128, *MEMORY[0x277D61B68], v131);
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type SiriVoiceGender and conformance SiriVoiceGender, MEMORY[0x277D61B78], MEMORY[0x277D61B80]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v137 == v135 && v138 == v136)
  {
    v67 = v44;
  }

  else
  {
    v67 = v44;
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v68 = v134 + 8;
  v69 = *(v134 + 8);
  v70 = v131;
  v69(v128, v131);
  v134 = v68;
  v69(v127, v70);

  Apple_Parsec_Siri_V2alpha_DeviceState.isVoiceGenderFemale.setter();
  dispatch thunk of CurrentDevice.siriVoiceGender.getter();
  v71 = v116;
  v66(v116, *MEMORY[0x277D61B60], v70);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v137 != v135 || v138 != v136)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v72 = v131;
  v69(v71, v131);
  v69(v129, v72);

  Apple_Parsec_Siri_V2alpha_DeviceState.isVoiceGenderMale.setter();
  v73 = v117;
  dispatch thunk of CurrentDevice.siriVoiceGender.getter();
  v74 = v118;
  v66(v118, *MEMORY[0x277D61B70], v72);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v137 != v135 || v138 != v136)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v75 = v122;
  v76 = v74;
  v77 = v131;
  v69(v76, v131);
  v69(v73, v77);

  Apple_Parsec_Siri_V2alpha_DeviceState.isVoiceGenderUnknown.setter();
  dispatch thunk of CurrentDevice.deviceClass.getter();
  v78 = type metadata accessor for DeviceClass();
  v79 = *(v78 - 8);
  if ((*(v79 + 48))(v75, 1, v78) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v75, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    v80 = v126;
  }

  else
  {
    object = DeviceClass.stringValue()().value._object;
    (*(v79 + 8))(v75, v78);
    v80 = v126;
    if (object)
    {
      Apple_Parsec_Siri_V2alpha_DeviceState.deviceName.setter();
    }
  }

  v82 = *(v130 + 104);
  if (!v82)
  {
    if (*(v132 + *(v80 + 84) + 8))
    {
      goto LABEL_33;
    }

LABEL_32:

    goto LABEL_33;
  }

  v83 = v110;
  static DispatchTime.now()();
  v84 = v111;
  *v111 = 1;
  v85 = v114;
  v86 = v115;
  (*(v114 + 104))(v84, *MEMORY[0x277D85178], v115);
  v87 = v108;
  MEMORY[0x223DDF450](v83, v84);
  (*(v85 + 8))(v84, v86);
  v88 = v112;
  v89 = v113;
  (*(v112 + 8))(v83, v113);
  (*(v88 + 56))(v87, 0, 1, v89);
  v90 = (*(*v82 + 176))(v87);
  outlined destroy of MediaUserStateCenter?(v87, &_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  v91 = (v132 + *(v80 + 84));
  v92 = v91[1];
  if (!v92)
  {
    goto LABEL_32;
  }

  if (v90)
  {
    v93 = *v91;
    swift_getKeyPath();
    MUXContext.userInfo(where:is:)(v93, v92, v90, &v137);

    if (v138)
    {

      outlined destroy of MediaUserStateCenter?(&v137, &_s21SiriInformationSearch11MUXUserInfoVSgMd, &_s21SiriInformationSearch11MUXUserInfoVSgMR);
      Apple_Parsec_Siri_V2alpha_DeviceState.companionName.setter();
    }
  }

LABEL_33:
  v94 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext();
  (*(*(v94 - 8) + 16))(v124, v123, v94);
  v95 = v120;
  v96 = v121;
  (*(v120 + 16))(v119, v67, v121);
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.deviceState.setter();

  return (*(v95 + 8))(v67, v96);
}

Swift::String_optional __swiftcall DeviceClass.stringValue()()
{
  v1 = v0;
  v2 = type metadata accessor for DeviceClass();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D61BA8])
  {
    v7 = 0xE600000000000000;
    v8 = 0x656E6F685069;
  }

  else if (v6 == *MEMORY[0x277D61B98])
  {
    v7 = 0xE400000000000000;
    v8 = 1684099177;
  }

  else if (v6 == *MEMORY[0x277D61BB8])
  {
    v7 = 0xE700000000000000;
    v8 = 0x646F50656D6F48;
  }

  else if (v6 == *MEMORY[0x277D61BB0])
  {
    v7 = 0xE800000000000000;
    v8 = 0x565420656C707041;
  }

  else if (v6 == *MEMORY[0x277D61B90])
  {
    v7 = 0xE300000000000000;
    v8 = 6512973;
  }

  else if (v6 == *MEMORY[0x277D61BA0])
  {
    v7 = 0xEB00000000686374;
    v8 = 0x615720656C707041;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    v8 = 0;
    v7 = 0;
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v8;
  return result;
}

void DataProviderManager.addAmpState(to:searchRequest:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v88 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v114 = &v87 - v12;
  v113 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v115 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v100 = &v87 - v16;
  v102 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v87 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for DispatchTimeInterval();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = (&v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = type metadata accessor for DispatchTime();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v93 = &v87 - v21;
  v106 = type metadata accessor for Date();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v122 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v121 = &v87 - v27;
  v120 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  v28 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v30 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v9;
  v31 = *(v9 + 16);
  v91 = a3;
  v90 = v8;
  v31(a3, a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v107 = v4;
  OS_dispatch_queue.sync<A>(execute:)();
  v103 = 0;
  v32 = type metadata accessor for PommesSearchRequest(0);
  v33 = 0;
  v99 = v32;
  v34 = *(v32 + 92);
  v108 = a2;
  v123 = *(a2 + v34);
  v124 = *(v123 + 16);
  v119 = v28 + 16;
  v118 = *MEMORY[0x277D396E8];
  v117 = (v24 + 104);
  v35 = (v24 + 8);
  v116 = v28 + 8;
  v36 = v121;
  while (v124 != v33)
  {
    if (v33 >= *(v123 + 16))
    {
      __break(1u);
      goto LABEL_33;
    }

    v37 = v120;
    v38 = (*(v28 + 16))(v30, v123 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v33++, v120);
    MEMORY[0x223DDBB90](v38);
    v39 = v122;
    (*v117)(v122, v118, v23);
    a2 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740], MEMORY[0x277D39758]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v40 = *v35;
    (*v35)(v39, v23);
    v40(v36, v23);
    v32 = (*(v28 + 8))(v30, v37);
    if (v125[0] == v125[5])
    {
      outlined destroy of MediaUserStateCenter?(v126, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
      return;
    }
  }

  a2 = v107;
  if (one-time initialization token for shared == -1)
  {
    goto LABEL_7;
  }

LABEL_33:
  v32 = swift_once();
LABEL_7:
  v41 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v32);
  v42 = v108;
  v83 = a2;
  v84 = v108;
  v85 = v126;
  v43 = v104;
  Date.init()();
  v44 = *(*v41 + 200);
  v85 = &v82;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch14MediaUserState_pGSgMd, &_sSay21SiriInformationSearch14MediaUserState_pGSgMR);
  LOBYTE(v83) = 2;
  v44(v125, 0xD00000000000003FLL, 0x80000002234DD940, 0, v43, "SiriInformationSearch/DataProviderManager.swift", 47, 2, 617, "addAmpState(to:searchRequest:)", 30, v83, partial apply for closure #2 in DataProviderManager.addAmpState(to:searchRequest:));
  outlined destroy of MediaUserStateCenter?(v126, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  (*(v105 + 8))(v43, v106);
  v124 = v125[0];
  if (v125[0])
  {
    v45 = *(a2 + 104);
    if (v45)
    {
      v46 = v92;
      static DispatchTime.now()();
      v47 = v94;
      *v94 = 1;
      v48 = v97;
      v49 = v98;
      (*(v97 + 104))(v47, *MEMORY[0x277D85178], v98);
      v50 = v93;
      MEMORY[0x223DDF450](v46, v47);
      (*(v48 + 8))(v47, v49);
      v51 = v95;
      v52 = v96;
      (*(v95 + 8))(v46, v96);
      (*(v51 + 56))(v50, 0, 1, v52);
      v53 = (*(*v45 + 176))(v50);
      outlined destroy of MediaUserStateCenter?(v50, &_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
      LODWORD(v123) = *(v42 + *(v99 + 60));
      v54 = v114;
      v55 = v113;
      if (v53)
      {
LABEL_18:
        (*(v110 + 104))(v109, *MEMORY[0x277D39D58], v111);
        v60 = *(v124 + 16);
        if (v60)
        {
          v61 = v124 + 32;
          v62 = (v112 + 48);
          v63 = (v112 + 32);
          v64 = MEMORY[0x277D84F90];
          do
          {
            outlined init with copy of AppDataProviding(v61, v125);
            createAMPUserState(mediaUserState:muxUserInfo:)(v125, v53, v54);
            __swift_destroy_boxed_opaque_existential_1(v125);
            if ((*v62)(v54, 1, v55) == 1)
            {
              outlined destroy of MediaUserStateCenter?(v54, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMR);
            }

            else
            {
              v65 = v55;
              v66 = *v63;
              (*v63)(v115, v54, v65);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64[2] + 1, 1, v64);
              }

              v68 = v64[2];
              v67 = v64[3];
              if (v68 >= v67 >> 1)
              {
                v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v64);
              }

              v64[2] = v68 + 1;
              v69 = v64 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v68;
              v70 = v113;
              v66(v69, v115, v113);
              v55 = v70;
              v54 = v114;
            }

            v61 += 40;
            --v60;
          }

          while (v60);
        }

        else
        {
          v64 = MEMORY[0x277D84F90];
        }

        v71 = v100;
        v72 = v109;
        createAmpUsersStateSlice(ampUserStates:resolution:isPostResolution:isMultiUserRequest:)(v64, v109, 0, v123, v100);

        (*(v110 + 8))(v72, v111);
        v73 = v101;
        v74 = v102;
        if ((*(v101 + 48))(v71, 1, v102) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v71, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
        }

        else
        {
          v75 = v87;
          (*(v73 + 32))(v87, v71, v74);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMR);
          v76 = (*(v73 + 80) + 32) & ~*(v73 + 80);
          v77 = swift_allocObject();
          *(v77 + 16) = xmmword_2234CF920;
          (*(v73 + 16))(v77 + v76, v75, v74);
          v78 = v88;
          v79 = v91;
          DataProviderManager.appendProfileSlices(_:to:)(v77, v91, v88);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          (*(v73 + 8))(v75, v74);
          v80 = v89;
          v81 = v90;
          (*(v89 + 8))(v79, v90);
          (*(v80 + 32))(v79, v78, v81);
        }

        return;
      }
    }

    else
    {
      LODWORD(v123) = *(v42 + *(v99 + 60));
      v54 = v114;
      v55 = v113;
    }

    v53 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  __swift_project_value_buffer(v56, static Logger.pommes);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_2232BB000, v57, v58, "DataProviderManager media user state is nil", v59, 2u);
    MEMORY[0x223DE0F80](v59, -1, -1);
  }
}

uint64_t closure #2 in DataProviderManager.addAmpState(to:searchRequest:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v31 = a3;
  v29 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for DispatchTime();
  v9 = *(v28 - 8);
  v10 = MEMORY[0x28223BE20](v28);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - v16;
  v18 = a1[3];
  outlined init with copy of PommesSearchRequest(a2, &v26 - v16);
  v19 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  v20 = a1[17];
  v27 = a1[2];
  swift_unknownObjectRetain();
  static DispatchTime.now()();
  *v8 = 1;
  v21 = v29;
  (*(v6 + 104))(v8, *MEMORY[0x277D85178], v29);
  MEMORY[0x223DDF450](v12, v8);
  (*(v6 + 8))(v8, v21);
  v22 = *(v9 + 8);
  v23 = v12;
  v24 = v28;
  v22(v23, v28);
  (*(*v18 + 240))(v17, v31, v20, v27, v14);
  swift_unknownObjectRelease();
  v22(v14, v24);
  return outlined destroy of MediaUserStateCenter?(v17, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
}

void DataProviderManager.addQueueState(to:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v50 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v56 = &v48 - v10;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v57 = *(v11 - 8);
  v58 = v11;
  MEMORY[0x28223BE20](v11);
  v49 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v60 = *(v13 - 8);
  v61 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
  v17 = MEMORY[0x28223BE20](v16);
  v54 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - v19;
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo();
  v59 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v55 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v7;
  v23 = *(v7 + 16);
  v53 = a2;
  v52 = v6;
  v23(a2, a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v24 = OS_dispatch_queue.sync<A>(execute:)();
  if (one-time initialization token for shared != -1)
  {
    v24 = swift_once();
  }

  v25 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v24);
  v46 = v3;
  v47 = v62;
  Date.init()();
  v26 = *(*v25 + 200);
  v46 = &v45;
  v47 = v16;
  LOBYTE(v45) = 2;
  v26(0xD000000000000046, 0x80000002234DDD80, 0, v15, "SiriInformationSearch/DataProviderManager.swift", 47, 2, 658, "addQueueState(to:)", 18, v45, partial apply for closure #1 in DataProviderManager.addQueueState(to:));
  outlined destroy of MediaUserStateCenter?(v62, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  (*(v60 + 8))(v15, v61);
  v27 = v59;
  if ((*(v59 + 48))(v20, 1, v21) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v20, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.pommes);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2232BB000, v29, v30, "DataProviderManager queue state is nil", v31, 2u);
      MEMORY[0x223DE0F80](v31, -1, -1);
    }
  }

  else
  {
    v32 = v21;
    v33 = v55;
    (*(v27 + 32))(v55, v20, v21);
    v34 = v54;
    (*(v27 + 16))(v54, v33, v32);
    (*(v27 + 56))(v34, 0, 1, v32);
    v35 = v56;
    createQueueStateProfileSlice(for:)(v34, v56);
    outlined destroy of MediaUserStateCenter?(v34, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
    v37 = v57;
    v36 = v58;
    if ((*(v57 + 48))(v35, 1, v58) == 1)
    {
      (*(v27 + 8))(v33, v32);
      outlined destroy of MediaUserStateCenter?(v35, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
    }

    else
    {
      v38 = v49;
      (*(v37 + 32))(v49, v35, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMR);
      v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_2234CF920;
      (*(v37 + 16))(v40 + v39, v38, v36);
      v41 = v50;
      v42 = v53;
      DataProviderManager.appendProfileSlices(_:to:)(v40, v53, v50);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v37 + 8))(v38, v36);
      (*(v27 + 8))(v33, v32);
      v43 = v51;
      v44 = v52;
      (*(v51 + 8))(v42, v52);
      (*(v43 + 32))(v42, v41, v44);
    }
  }
}

uint64_t closure #1 in DataProviderManager.addQueueState(to:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v29 = a2;
  v27 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for DispatchTime();
  v7 = *(v26 - 8);
  v8 = MEMORY[0x28223BE20](v26);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  v16 = a1[4];
  v17 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = a1[17];
  v25 = a1[2];
  swift_unknownObjectRetain();
  static DispatchTime.now()();
  *v6 = 1;
  v19 = v27;
  (*(v4 + 104))(v6, *MEMORY[0x277D85178], v27);
  MEMORY[0x223DDF450](v10, v6);
  (*(v4 + 8))(v6, v19);
  v20 = *(v7 + 8);
  v21 = v10;
  v22 = v26;
  v20(v21, v26);
  (*(*v16 + 240))(v15, v29, v18, v25, v12);
  swift_unknownObjectRelease();
  v20(v12, v22);
  return outlined destroy of MediaUserStateCenter?(v15, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
}

uint64_t DataProviderManager.addClientExperienceSignals(to:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v101 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v97 = &v86 - v8;
  v96 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v92 = &v86 - v11;
  v12 = type metadata accessor for DispatchTimeInterval();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for DispatchTime();
  v100 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v86 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v86 - v23;
  v25 = type metadata accessor for ClientExperienceSignals();
  v26 = *(*(v25 - 8) + 16);
  v102 = a3;
  v26(a3, v101, v25);
  v27 = *(v4 + 24);
  v99 = a2;
  outlined init with copy of PommesSearchRequest(a2, v24);
  v28 = type metadata accessor for PommesSearchRequest(0);
  v29 = *(*(v28 - 8) + 56);
  v98 = v28;
  v29(v24, 0, 1);
  memset(v110, 0, 90);
  v93 = v4;
  v30 = *(v4 + 16);
  static DispatchTime.now()();
  *v15 = 1;
  v31 = *(v13 + 104);
  v88 = *MEMORY[0x277D85178];
  v87 = v31;
  v31(v15);
  MEMORY[0x223DDF450](v19, v15);
  v32 = *(v13 + 8);
  v91 = v12;
  v89 = v13 + 8;
  v86 = v32;
  v32(v15, v12);
  v33 = *(v100 + 8);
  v33(v19, v16);
  (*(*v27 + 240))(v107, v24, v110, 0, v30, v21);
  v90 = v16;
  v33(v21, v16);
  result = outlined destroy of MediaUserStateCenter?(v24, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v35 = v107[0];
  if (v107[0])
  {
    v36 = *(v93 + 104);
    if (v36)
    {
      static DispatchTime.now()();
      *v15 = 1;
      v37 = v91;
      v87(v15, v88, v91);
      v38 = v92;
      MEMORY[0x223DDF450](v21, v15);
      v86(v15, v37);
      v39 = v90;
      v33(v21, v90);
      (*(v100 + 56))(v38, 0, 1, v39);
      v40 = (*(*v36 + 176))(v38);
      outlined destroy of MediaUserStateCenter?(v38, &_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
    }

    else
    {
      v40 = 0;
    }

    v41 = v98;
    type metadata accessor for PegasusProxy(0);
    v42 = v94;
    v43 = v99;
    static PegasusProxy.multiUserContext(for:)(v99);
    v44 = v95;
    v45 = v97;
    v46 = v42;
    v47 = v96;
    (*(v95 + 16))(v97, v46, v96);
    (*(v44 + 56))(v45, 0, 1, v47);
    result = ClientExperienceSignals.multiUserContext.setter();
    if (*(v43 + *(v41 + 60)) == 1)
    {
      v48 = *(v35 + 16);
      if (v48)
      {
        v49 = 0;
        v50 = v35 + 32;
        v97 = (v40 + 96);
        v101 = v35;
        v98 = v40;
        v100 = v48;
        v99 = v35 + 32;
        while (v49 < *(v35 + 16))
        {
          outlined init with copy of AppDataProviding(v50 + 40 * v49, v107);
          v51 = v108;
          v52 = v109;
          __swift_project_boxed_opaque_existential_1(v107, v108);
          v53 = (*(v52 + 48))(v51, v52);
          if (v54)
          {
            v55 = v54;
            if (v40)
            {
              v56 = v53;
              v57 = *(v40 + 16) + 1;
              v58 = v97;
              do
              {
                if (!--v57)
                {

                  v35 = v101;
                  v40 = v98;
                  v48 = v100;
                  v50 = v99;
                  goto LABEL_9;
                }

                v60 = *(v58 - 8);
                v59 = *(v58 - 7);
                v61 = *(v58 - 2);
                if (*(v58 - 1) == v56 && v55 == *v58)
                {
                  break;
                }

                v58 += 72;
              }

              while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);

              v63 = v108;
              v64 = v109;
              __swift_project_boxed_opaque_existential_1(v107, v108);
              (*(v64 + 8))(v104, v63, v64);
              v65 = v105;
              if (v105)
              {
                v66 = v106;
                __swift_project_boxed_opaque_existential_1(v104, v105);
                LOBYTE(v65) = (*(v66 + 88))(v65, v66);
                __swift_destroy_boxed_opaque_existential_1(v104);
              }

              else
              {
                outlined destroy of MediaUserStateCenter?(v104, &_s21SiriInformationSearch14MusicUserState_pSgMd, &_s21SiriInformationSearch14MusicUserState_pSgMR);
              }

              v35 = v101;
              v48 = v100;
              v50 = v99;
              v67 = ClientExperienceSignals.glideEligibilityPerSharedId.modify();
              v69 = v68;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v103 = *v69;
              *v69 = 0x8000000000000000;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v65 & 1, v60, v59, isUniquelyReferenced_nonNull_native);

              *v69 = v103;

              v67(v104, 0);
              v40 = v98;
            }

            else
            {
            }
          }

LABEL_9:
          ++v49;
          result = __swift_destroy_boxed_opaque_existential_1(v107);
          if (v49 == v48)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
        goto LABEL_44;
      }

LABEL_28:

      return (*(v95 + 8))(v94, v96);
    }

    v71 = *(v35 + 16);
    if (v71)
    {
      outlined init with copy of AppDataProviding(v35 + 32, v104);
      v72 = v105;
      v73 = v106;
      __swift_project_boxed_opaque_existential_1(v104, v105);
      (*(v73 + 8))(v107, v72, v73);
      v74 = v108;
      if (v108)
      {
        v75 = v109;
        __swift_project_boxed_opaque_existential_1(v107, v108);
        (*(v75 + 88))(v74, v75);
        __swift_destroy_boxed_opaque_existential_1(v107);
        __swift_destroy_boxed_opaque_existential_1(v104);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v104);
        outlined destroy of MediaUserStateCenter?(v107, &_s21SiriInformationSearch14MusicUserState_pSgMd, &_s21SiriInformationSearch14MusicUserState_pSgMR);
      }
    }

    result = ClientExperienceSignals.isGlideEligible.setter();
    v76 = (v43 + *(v41 + 84));
    if (v76[1])
    {
      v77 = *v76;
      v78 = v76[1];
      if (v71)
      {
LABEL_34:
        if (!*(v35 + 16))
        {
LABEL_44:
          __break(1u);
          return result;
        }

        outlined init with copy of AppDataProviding(v35 + 32, v104);

        v79 = v105;
        v80 = v106;
        __swift_project_boxed_opaque_existential_1(v104, v105);
        (*(v80 + 8))(v107, v79, v80);
        v71 = v108;
        if (v108)
        {
          v81 = v109;
          __swift_project_boxed_opaque_existential_1(v107, v108);
          LOBYTE(v71) = (*(v81 + 88))(v71, v81);
          __swift_destroy_boxed_opaque_existential_1(v107);
          __swift_destroy_boxed_opaque_existential_1(v104);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v104);
          outlined destroy of MediaUserStateCenter?(v107, &_s21SiriInformationSearch14MusicUserState_pSgMd, &_s21SiriInformationSearch14MusicUserState_pSgMR);
        }

        goto LABEL_40;
      }
    }

    else
    {
      v78 = 0x80000002234DAAF0;
      v77 = 0xD000000000000024;
      if (v71)
      {
        goto LABEL_34;
      }
    }

LABEL_40:
    v82 = ClientExperienceSignals.glideEligibilityPerSharedId.modify();
    v84 = v83;
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v104[0] = *v84;
    *v84 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71 & 1, v77, v78, v85);

    *v84 = v104[0];

    v82(v107, 0);
    return (*(v95 + 8))(v94, v96);
  }

  return result;
}

uint64_t DataProviderManager.addPairedDevices(to:)(uint64_t a1)
{
  v2 = v1;
  v35[1] = a1;
  v37 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v5 = (v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for DispatchTime();
  v6 = *(v36 - 8);
  v7 = MEMORY[0x28223BE20](v36);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v35 - v13;
  v15 = *(v1 + 80);
  v16 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = *(v2 + 136);
  swift_unknownObjectRetain();
  static DispatchTime.now()();
  *v5 = 1;
  v19 = v37;
  (*(v3 + 104))(v5, *MEMORY[0x277D85178], v37);
  MEMORY[0x223DDF450](v9, v5);
  (*(v3 + 8))(v5, v19);
  v20 = *(v6 + 8);
  v21 = v9;
  v22 = v36;
  v20(v21, v36);
  (*(*v15 + 240))(v38, v14, v39, v18, v17, v11);
  swift_unknownObjectRelease();
  outlined destroy of MediaUserStateCenter?(v39, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v20(v11, v22);
  result = outlined destroy of MediaUserStateCenter?(v14, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v24 = v38[0];
  if (v38[0])
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.pommes);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38[0] = v29;
      *v28 = 136315138;
      v30 = type metadata accessor for Useragentpb_CompanionDevice();
      v31 = MEMORY[0x223DDF850](v24, v30);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v38);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_2232BB000, v26, v27, "Adding paired device info: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x223DE0F80](v29, -1, -1);
      MEMORY[0x223DE0F80](v28, -1, -1);
    }

    v34 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.modify();
    Apple_Parsec_Search_PegasusQueryContext.companionDevice.setter();
    return v34(v38, 0);
  }

  return result;
}

void DataProviderManager.addGMAvailability(to:)(uint64_t a1)
{
  v2 = v1;
  v37 = a1;
  v40 = type metadata accessor for Apple_Parsec_Search_DevicePolicyType();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = type metadata accessor for DispatchTime();
  v7 = *(v41 - 8);
  v8 = MEMORY[0x28223BE20](v41);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = *(v1 + 88);
  v17 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v19 = *(v2 + 136);
  swift_unknownObjectRetain();
  static DispatchTime.now()();
  *v6 = 1;
  v20 = v42;
  (*(v4 + 104))(v6, *MEMORY[0x277D85178], v42);
  MEMORY[0x223DDF450](v10, v6);
  (*(v4 + 8))(v6, v20);
  v21 = *(v7 + 8);
  v22 = v41;
  v21(v10, v41);
  (*(*v16 + 240))(v45, v15, v46, v19, v18, v12);
  swift_unknownObjectRelease();
  outlined destroy of MediaUserStateCenter?(v46, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v21(v12, v22);
  outlined destroy of MediaUserStateCenter?(v15, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v23 = v45[0];
  if (LOBYTE(v45[0]) != 2)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.pommes);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 67109120;
      *(v27 + 4) = v23 & 1;
      _os_log_impl(&dword_2232BB000, v25, v26, "Adding GenerativeModelsAvailability device policy: %{BOOL}d.", v27, 8u);
      MEMORY[0x223DE0F80](v27, -1, -1);
    }

    if (v23)
    {
      (*(v39 + 104))(v38, *MEMORY[0x277D39230], v40);
      v28 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.modify();
      v29 = Apple_Parsec_Search_PegasusQueryContext.appleIntelligenceStatus.modify();
      v30 = Apple_Parsec_Search_AppleIntelligenceStatus.devicePolicies.modify();
      v32 = v31;
      v33 = *v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v32 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
        *v32 = v33;
      }

      v36 = v33[2];
      v35 = v33[3];
      if (v36 >= v35 >> 1)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v33);
        *v32 = v33;
      }

      v33[2] = v36 + 1;
      (*(v39 + 32))(v33 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v36, v38, v40);
      v30(v43, 0);
      v29(v44, 0);
      v28(v45, 0);
    }
  }
}

uint64_t DataProviderManager.appendProfileSlices(_:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery();
  v7 = *(v6 - 8);
  v79 = v6;
  v80 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v78 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v63 - v10;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v13 = *(v12 - 8);
  v75 = v12;
  v76 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, a2, v16);
  v20 = *(a1 + 16);
  if (!v20)
  {
    return (*(v17 + 32))(a3, v19, v16);
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.pommes);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v68 = v23;
  v24 = os_log_type_enabled(v22, v23);
  v25 = MEMORY[0x277D84F90];
  v77 = a1;
  v70 = v16;
  v71 = a3;
  v69 = v17;
  v72 = v19;
  if (v24)
  {
    v66 = v22;
    v67 = v11;
    v26 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v81[0] = v64;
    v65 = v26;
    *v26 = 136315138;
    v82 = v25;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    v27 = v82;
    v28 = *(v76 + 16);
    v29 = a1 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
    v73 = *(v76 + 72);
    v74 = v28;
    v76 += 16;
    v30 = (v76 - 8);
    do
    {
      v31 = v75;
      v74(v15, v29, v75);
      v32 = Apple_Parsec_Siri_V2alpha_ProfileSlice.summarizedDescription.getter();
      v34 = v33;
      (*v30)(v15, v31);
      v82 = v27;
      v36 = *(v27 + 16);
      v35 = *(v27 + 24);
      if (v36 >= v35 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
        v27 = v82;
      }

      *(v27 + 16) = v36 + 1;
      v37 = v27 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      v29 += v73;
      --v20;
    }

    while (v20);
    v82 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v39 = BidirectionalCollection<>.joined(separator:)();
    v41 = v40;

    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v81);

    v43 = v65;
    *(v65 + 1) = v42;
    v44 = v66;
    _os_log_impl(&dword_2232BB000, v66, v68, "DataProviderManager Adding profile slices to request: %s", v43, 0xCu);
    v45 = v64;
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x223DE0F80](v45, -1, -1);
    MEMORY[0x223DE0F80](v43, -1, -1);

    v11 = v67;
    v19 = v72;
  }

  else
  {
  }

  v46 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.getter();
  v47 = *(v46 + 16);
  if (v47)
  {
    v82 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47, 0);
    v48 = v82;
    v49 = v79;
    v50 = *(v80 + 16);
    v75 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v76 = v50;
    v51 = v46 + v75;
    v52 = *(v80 + 72);
    v73 = v46;
    v74 = v52;
    v53 = (v80 + 8);
    v80 += 16;
    v54 = (v80 + 16);
    do
    {
      v55 = v78;
      v56 = v76;
      (v76)(v78, v51, v49);
      v56(v11, v55, v49);
      v57 = v11;
      v58 = v77;

      v59 = Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.profileSlices.modify();
      specialized Array.append<A>(contentsOf:)(v58);
      v49 = v79;
      v59(v81, 0);
      (*v53)(v55, v49);
      v82 = v48;
      v61 = *(v48 + 16);
      v60 = *(v48 + 24);
      if (v61 >= v60 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
        v49 = v79;
        v48 = v82;
      }

      *(v48 + 16) = v61 + 1;
      v62 = v74;
      (*v54)(v48 + v75 + v61 * v74, v57, v49);
      v51 += v62;
      --v47;
      v11 = v57;
    }

    while (v47);

    v19 = v72;
  }

  else
  {
  }

  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.setter();
  return (*(v69 + 32))(v71, v19, v70);
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSlice.summarizedDescription.getter()
{
  v31 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v0 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);
  MEMORY[0x223DDF6D0](0x616C202020200A7BLL, 0xED0000203A6C6562);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x223DDF6D0](0x6C6176202020200ALL, 0xEE000A5B20736575);
  v6 = Apple_Parsec_Siri_V2alpha_ProfileSlice.values.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    v32 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v32;
    v10 = *(v0 + 16);
    v9 = v0 + 16;
    v11 = *(v9 + 64);
    v27 = v6;
    v12 = v6 + ((v11 + 32) & ~v11);
    v28 = *(v9 + 56);
    v29 = v10;
    v13 = (v9 - 8);
    do
    {
      v15 = v30;
      v14 = v31;
      v16 = v9;
      v29(v30, v12, v31);
      v17 = Apple_Parsec_Siri_V2alpha_ProfileSliceValue.summarizedDescription.getter();
      v19 = v18;
      (*v13)(v15, v14);
      v32 = v8;
      v21 = *(v8 + 16);
      v20 = *(v8 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v8 = v32;
      }

      *(v8 + 16) = v21 + 1;
      v22 = v8 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v12 += v28;
      --v7;
      v9 = v16;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v32 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v23 = BidirectionalCollection<>.joined(separator:)();
  v25 = v24;

  MEMORY[0x223DDF6D0](v23, v25);

  MEMORY[0x223DDF6D0](0x7D0A5D090ALL, 0xE500000000000000);
  return v33;
}

uint64_t DataProviderManager.deinit()
{

  swift_unknownObjectRelease();
  outlined destroy of MediaUserStateCenter?(v0 + 144, &_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
  return v0;
}

uint64_t DataProviderManager.__deallocating_deinit()
{
  DataProviderManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t DataProviderManager.waitForPrepare(timeout:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContinuousClock();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() processInfo];
  v9 = NSProcessInfo.isRunningUnitTests.getter();

  if (v9)
  {
    v49 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8Dispatch0C13TimeoutResultOTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    if (one-time initialization token for pommes != -1)
    {
LABEL_22:
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    v11 = __swift_project_value_buffer(v10, static Logger.pommes);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2232BB000, v12, v13, "Starting to wait for data providers to finish preparing", v14, 2u);
      MEMORY[0x223DE0F80](v14, -1, -1);
    }

    v15 = ContinuousClock.init()();
    MEMORY[0x28223BE20](v15);
    *(&v42 - 4) = &v49;
    *(&v42 - 3) = v2;
    v41 = a1;
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    Clock.measure(_:)();
    v16 = *(v5 + 8);
    v5 += 8;
    v16(v7, v4);
    v7 = v48;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v4 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v48 = v19;
      *v4 = 136315138;
      v20 = Duration.description.getter();
      v7 = v21;
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v48);

      *(v4 + 4) = v22;
      _os_log_impl(&dword_2232BB000, v17, v18, "It took %s for data providers to finish preparing", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x223DE0F80](v19, -1, -1);
      MEMORY[0x223DE0F80](v4, -1, -1);
    }

    v23 = v49;
    a1 = v49 + 64;
    v24 = 1 << *(v49 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v49 + 64);
    v27 = (v24 + 63) >> 6;

    v28 = 0;
    v2 = 0;
    *&v29 = 136315394;
    v42 = v29;
    v43 = v23;
    v44 = v11;
    while (v26)
    {
      v45 = v28;
LABEL_18:
      v31 = __clz(__rbit64(v26)) | (v2 << 6);
      v32 = *(v23 + 48) + 16 * v31;
      v7 = *v32;
      v4 = *(v32 + 8);
      v46 = *(*(v23 + 56) + v31);

      v33 = Logger.logObject.getter();
      v5 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v33, v5))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v48 = v35;
        *v34 = v42;
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v4, &v48);

        *(v34 + 4) = v36;
        *(v34 + 12) = 2080;
        v47[0] = v46;
        v37 = String.init<A>(describing:)();
        v4 = v38;
        v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v48);

        *(v34 + 14) = v7;
        _os_log_impl(&dword_2232BB000, v33, v5, "Data provider %s wait status: %s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v35, -1, -1);
        v39 = v34;
        v23 = v43;
        MEMORY[0x223DE0F80](v39, -1, -1);
      }

      else
      {
      }

      v26 &= v26 - 1;
      v28 = static DispatchTimeoutResult.== infix(_:_:)() | v45;
    }

    while (1)
    {
      v30 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v30 >= v27)
      {
        break;
      }

      v26 = *(a1 + 8 * v30);
      ++v2;
      if (v26)
      {
        v45 = v28;
        v2 = v30;
        goto LABEL_18;
      }
    }

    return v28 & 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in DataProviderManager.waitForPrepare(timeout:)(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[4];
  v7 = *(v6 + 96);
  v8 = *(v6 + 104);

  LOBYTE(v6) = specialized AnyDataProvider.waitForPrepare(timeout:)(a3, partial apply for specialized closure #1 in AnyDataProvider.waitForPrepare(timeout:));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *a1;
  *a1 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6 & 1, v7, v8, isUniquelyReferenced_nonNull_native);

  *a1 = v31;

  v10 = a2[5];
  v11 = *(v10 + 96);
  v12 = *(v10 + 104);

  LOBYTE(v10) = specialized AnyDataProvider.waitForPrepare(timeout:)(a3, partial apply for specialized closure #1 in AnyDataProvider.waitForPrepare(timeout:));
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *a1;
  *a1 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10 & 1, v11, v12, v13);

  *a1 = v32;

  v14 = a2[6];
  v15 = *(v14 + 96);
  v16 = *(v14 + 104);

  LOBYTE(v14) = specialized AnyDataProvider.waitForPrepare(timeout:)(a3, partial apply for specialized closure #1 in AnyDataProvider.waitForPrepare(timeout:));
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *a1;
  *a1 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14 & 1, v15, v16, v17);

  *a1 = v33;

  v18 = a2[7];
  v19 = *(v18 + 96);
  v20 = *(v18 + 104);

  LOBYTE(v18) = specialized AnyDataProvider.waitForPrepare(timeout:)(a3, partial apply for specialized closure #1 in AnyDataProvider.waitForPrepare(timeout:));
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *a1;
  *a1 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18 & 1, v19, v20, v21);

  *a1 = v34;

  v22 = a2[3];
  v23 = *(v22 + 96);
  v24 = *(v22 + 104);

  LOBYTE(v22) = specialized AnyDataProvider.waitForPrepare(timeout:)(a3, partial apply for specialized closure #1 in AnyDataProvider.waitForPrepare(timeout:));
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *a1;
  *a1 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22 & 1, v23, v24, v25);

  *a1 = v35;

  v26 = a2[8];
  v27 = *(v26 + 96);
  v28 = *(v26 + 104);

  LOBYTE(v26) = specialized AnyDataProvider.waitForPrepare(timeout:)(a3, partial apply for specialized closure #1 in AnyDataProvider.waitForPrepare(timeout:));
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *a1;
  *a1 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26 & 1, v27, v28, v29);

  *a1 = v36;
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceValue.summarizedDescription.getter()
{
  v0 = type metadata accessor for Google_Protobuf_Any();
  v15 = *(v0 - 8);
  v16 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(84);
  MEMORY[0x223DDF6D0](0xD00000000000001DLL, 0x80000002234DDE10);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v8 + 8))(v10, v7);
  MEMORY[0x223DDF6D0](0xD000000000000014, 0x80000002234DDE30);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v4 + 8))(v6, v3);
  MEMORY[0x223DDF6D0](0xD000000000000013, 0x80000002234DDE50);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.getter();
  v11 = Google_Protobuf_Any.typeURL.getter();
  v13 = v12;
  (*(v15 + 8))(v2, v16);
  MEMORY[0x223DDF6D0](v11, v13);

  MEMORY[0x223DDF6D0](0x202020202020200ALL, 0xEA00000000007D20);
  return v17;
}

uint64_t specialized DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v60 = a8;
  v58 = a7;
  v54 = a6;
  v49 = a5;
  v53 = a4;
  v51 = a3;
  v52 = a2;
  v50 = a1;
  v56 = a14;
  v59 = a13;
  v61 = a12;
  v55 = a11;
  v57 = a10;
  v62 = a15;
  v63 = a9;
  v48 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS.QoSClass();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v25 - 8);
  v26 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v26 - 8);
  v66[3] = a18;
  v66[4] = a19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
  (*(*(a18 - 8) + 32))(boxed_opaque_existential_1, a16, a18);
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v22 + 104))(v24, *MEMORY[0x277D851C8], v21);
  static OS_dispatch_queue.global(qos:)();
  (*(v22 + 8))(v24, v21);
  v28 = v49;
  (*(v47 + 104))(v20, *MEMORY[0x277D85260], v48);
  v29 = v50;
  v30 = v51;
  v31 = v53;
  v32 = v54;
  v33 = v52;
  v34 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a17 + 128) = 0u;
  *(a17 + 144) = 0u;
  *(a17 + 160) = 0u;
  *(a17 + 176) = 0;
  *(a17 + 16) = v34;
  *(a17 + 24) = v29;
  *(a17 + 32) = v33;
  *(a17 + 40) = v30;
  *(a17 + 48) = v31;
  *(a17 + 56) = v28;
  if (v32)
  {

    v35 = v32;
    v36 = v55;
  }

  else
  {
    type metadata accessor for AnalyticsComponentIdGenerator();
    memset(v64, 0, sizeof(v64));
    v65 = 0;
    v37 = swift_allocObject();
    type metadata accessor for ProfileSliceResolutionRequestInstrumentationUtil();
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = v37;

    v36 = v55;
    v35 = specialized static ProfileSliceResolvingDataProvider.make(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(v64, v38, v55);

    outlined destroy of MediaUserStateCenter?(v64, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  }

  v40 = v57;
  v39 = v58;
  *(a17 + 64) = v35;
  *(a17 + 72) = v39;
  v41 = v59;
  *(a17 + 80) = v60;
  *(a17 + 96) = v40;
  *(a17 + 104) = v36;
  v42 = v61;
  *(a17 + 112) = v41;
  *(a17 + 120) = v42;
  *(a17 + 128) = v56;

  v43 = v42;

  *(a17 + 136) = v62;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  outlined init with copy of AppDataProviding(v66, v64);
  swift_beginAccess();
  outlined assign with take of PommesAppChecking?(v64, a17 + 144);
  swift_endAccess();
  *(a17 + 88) = v63;
  v44 = *(**(a17 + 40) + 160);

  v44(1);

  v45 = *(**(a17 + 48) + 160);

  v45(1);

  (*(**(a17 + 56) + 160))(1);
  __swift_destroy_boxed_opaque_existential_1(v66);
  return a17;
}

unint64_t lazy protocol witness table accessor for type PegasusError and conformance PegasusError()
{
  result = lazy protocol witness table cache variable for type PegasusError and conformance PegasusError;
  if (!lazy protocol witness table cache variable for type PegasusError and conformance PegasusError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PegasusError and conformance PegasusError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PegasusError and conformance PegasusError;
  if (!lazy protocol witness table cache variable for type PegasusError and conformance PegasusError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PegasusError and conformance PegasusError);
  }

  return result;
}

uint64_t outlined assign with take of PommesAppChecking?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized closure #1 in AnyDataProvider.waitForPrepare(timeout:)()
{
  return partial apply for closure #1 in AnyDataProvider.waitForPrepare(timeout:)();
}

{
  return partial apply for specialized closure #1 in AnyDataProvider.waitForPrepare(timeout:)();
}

uint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PommesCandidateId.description.getter()
{
  v1 = type metadata accessor for PommesCandidateId();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x277D56618])
  {
    (*(v2 + 96))(v4, v1);
    v6 = *v4;
    v7 = v4[1];
    v8 = 0x203A64496372;
    v9 = 0xE600000000000000;
LABEL_3:
    v19 = v8;
    v20 = v9;
    MEMORY[0x223DDF6D0](v6, v7);
LABEL_6:

    return v19;
  }

  if (v5 == *MEMORY[0x277D56620])
  {
    (*(v2 + 96))(v4, v1);
    v10 = *v4;
    v11 = v4[1];
    v13 = v4[2];
    v12 = v4[3];
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v19 = 0x203A6449707274;
    v20 = 0xE700000000000000;
    MEMORY[0x223DDF6D0](v10, v11);

    MEMORY[0x223DDF6D0](0x203A644975637420, 0xE800000000000000);
    MEMORY[0x223DDF6D0](v13, v12);
    goto LABEL_6;
  }

  if (v5 == *MEMORY[0x277D56610])
  {
    (*(v2 + 96))(v4, v1);
    v6 = *v4;
    v7 = v4[1];
    v8 = 0x203A6449666572;
    v9 = 0xE700000000000000;
    goto LABEL_3;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.pommes);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2232BB000, v16, v17, "Unexpected pommesCandidateId. Returning empty string for description.", v18, 2u);
    MEMORY[0x223DE0F80](v18, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return 0;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for PommesBridgeResultCandidateState(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    outlined destroy of MediaUserStateCenter?(a1, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);
    v12 = type metadata accessor for PommesCandidateId();
    (*(*(v12 - 8) + 8))(a2, v12);
    return outlined destroy of MediaUserStateCenter?(v7, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  }

  else
  {
    outlined init with take of NLXResultCandidate(a1, v10, type metadata accessor for PommesBridgeResultCandidateState);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for PommesCandidateId();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t PommesBridgeRequestProcessor.__allocating_init(assistantId:sessionId:requestId:rootRequestId:name:messagePublisher:serviceHelper:pommesSearch:sessionState:instrumentationUtil:isMultiUser:isCandidateRequest:isOnlyUserInHome:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17)
{
  v56 = a5;
  v57 = a8;
  v50 = a7;
  v51 = a1;
  v52 = a2;
  v53 = a6;
  v54 = a9;
  v55 = a4;
  v47 = a3;
  v48 = a10;
  v45 = a16;
  v46 = a17;
  v44 = a15;
  v41 = a13;
  v42 = a14;
  v49 = a11;
  v43 = type metadata accessor for UUID();
  v17 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchTimeInterval();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = swift_allocObject();
  *(v23 + direct field offset for PommesBridgeRequestProcessor.isRequestFinished) = 0;
  *(v23 + direct field offset for PommesBridgeRequestProcessor.$__lazy_storage_$_pommesStateHolder) = 0;
  v24 = v23 + direct field offset for PommesBridgeRequestProcessor.sessionState;
  *(v24 + 32) = 0;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  v25 = (v23 + direct field offset for PommesBridgeRequestProcessor.aceInputOrigin);
  *v25 = 0;
  v25[1] = 0;
  *(v23 + direct field offset for PommesBridgeRequestProcessor.pommesRequestContext) = 0;
  *(v23 + direct field offset for PommesBridgeRequestProcessor.pommesSearch) = a12;
  v26 = *(*a12 + 160);

  v26(v58, v27);
  v28 = v59;
  v29 = v60;
  __swift_project_boxed_opaque_existential_1(v58, v59);
  v30 = (*(v29 + 8))(0, v28, v29);
  static PommesBridgeRequestProcessor.configuredTimeout(isServerFallbackDisabled:)(v30 & 1, v22);
  __swift_destroy_boxed_opaque_existential_1(v58);
  (*(v20 + 32))(v23 + direct field offset for PommesBridgeRequestProcessor.timeout, v22, v19);
  specialized static PommesBridgeRequestProcessor.configuredScoreThreshold()();
  *(v23 + direct field offset for PommesBridgeRequestProcessor.pommesDUDAThreshold) = v31;
  swift_beginAccess();
  v32 = v41;
  outlined assign with copy of ConversationSessionState?(v41, v24, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  swift_endAccess();
  *(v23 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil) = v42;
  v33 = v45;
  *(v23 + direct field offset for PommesBridgeRequestProcessor.isMultiUser) = v44;
  *(v23 + direct field offset for PommesBridgeRequestProcessor.isCandidateRequest) = v33;
  *(v23 + direct field offset for PommesBridgeRequestProcessor.isOnlyUserInHome) = v46;
  v34 = v47;
  v35 = v43;
  (*(v17 + 16))(v40, v47, v43);
  v36 = v48;
  outlined init with copy of AppDataProviding(v48, v58);
  v37 = RequestProcessorBase.init(assistantId:sessionId:requestId:name:messagePublisher:serviceHelper:rootLevelRequestId:)();

  outlined destroy of MediaUserStateCenter?(v32, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  __swift_destroy_boxed_opaque_existential_1(v36);
  (*(v17 + 8))(v34, v35);
  return v37;
}