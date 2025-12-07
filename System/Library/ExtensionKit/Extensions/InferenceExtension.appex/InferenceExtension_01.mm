Swift::String_optional __swiftcall UserEngagementFeature.engagement(for:)(InferenceExtension::TrajectoryType a1)
{
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 24;
    v7 = *v4;
    v4 += 24;
    if (v7 == v2)
    {
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);

      goto LABEL_6;
    }
  }

  v8 = 0;
  v9 = 0;
LABEL_6:
  v10 = v8;
  v11 = v9;
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

uint64_t UserEngagementFeature.engagements(for:)(unsigned __int8 a1)
{
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = *(v3 + 16);

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
LABEL_2:
  v8 = 24 * v6;
  while (1)
  {
    if (v4 == v6)
    {

      return v7;
    }

    if (v6 >= *(v3 + 16))
    {
      break;
    }

    ++v6;
    v9 = v8 + 24;
    v10 = *(v3 + v8 + 32);
    v8 += 24;
    if (v10 == v2)
    {
      v12 = *(v3 + v9 + 16);
      v11 = *(v3 + v9 + 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v14 = *(v7 + 2);
      v13 = *(v7 + 3);
      if (v14 >= v13 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v14 + 1;
      v15 = &v7[16 * v14];
      *(v15 + 4) = v12;
      *(v15 + 5) = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall UserEngagementFeature.addEngagements(_:)(Swift::OpaquePointer a1)
{
  v3 = a1._rawValue + 64;
  v4 = 1 << *(a1._rawValue + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1._rawValue + 8);
  swift_beginAccess();
  v7 = (v4 + 63) >> 6;
  rawValue = a1._rawValue;

  v8 = 0;
  v20 = v1;
  if (v6)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      swift_endAccess();

      return;
    }

    v6 = *&v3[8 * v9];
    ++v8;
    if (v6)
    {
      v8 = v9;
      do
      {
LABEL_8:
        v10 = __clz(__rbit64(v6)) | (v8 << 6);
        v11 = *(rawValue[6] + v10);
        v12 = (rawValue[7] + 16 * v10);
        v13 = *v12;
        v14 = v12[1];
        v15 = *(v1 + 112);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 112) = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
          *(v1 + 112) = v15;
        }

        v18 = v15[2];
        v17 = v15[3];
        if (v18 >= v17 >> 1)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
        }

        v15[2] = v18 + 1;
        v19 = &v15[3 * v18];
        *(v19 + 32) = v11;
        v6 &= v6 - 1;
        v19[5] = v13;
        v19[6] = v14;
        v1 = v20;
        *(v20 + 112) = v15;
      }

      while (v6);
    }
  }

  __break(1u);
}

Swift::Void __swiftcall UserEngagementFeature.clearAll()()
{
  swift_beginAccess();
  *(v0 + 112) = _swiftEmptyArrayStorage;
}

void __swiftcall UserEngagementFeature.getMetaData()(InferenceExtension::PSEMetaData *__return_ptr retstr)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 168);
  retstr->intent = *(v1 + 120);
  retstr->linkID.value._countAndFlagsBits = v2;
  v4 = *(v1 + 152);
  *&retstr->linkID.value._object = *(v1 + 136);
  *&retstr->taskID.value._object = v4;
  retstr->eventTime.is_nil = v3;
}

uint64_t UserEngagementFeature.formatEngagements()()
{
  *(v1 + 40) = v0;
  return _swift_task_switch(UserEngagementFeature.formatEngagements(), v0, 0);
}

{
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(*(v1 + 112) + 16);
  if (v2)
  {
    v3 = ( + 48);
    do
    {
      v14 = *(v3 - 16);
      v15 = *(v3 - 1);
      v16 = *v3;
      if ((v14 & 0xFE) == 4)
      {
        if (v14 == 5)
        {
          v17 = 0xD000000000000012;
        }

        else
        {
          v17 = 0xD000000000000014;
        }

        if (v14 == 5)
        {
          v18 = "Entity Identifier";
        }

        else
        {
          v18 = "Siri Action Result";
        }

        v19._object = (v18 | 0x8000000000000000);
        v19._countAndFlagsBits = v17;
        String.append(_:)(v19);

        v20._countAndFlagsBits = 2592;
        v20._object = 0xE200000000000000;
        String.append(_:)(v20);
        v21._countAndFlagsBits = 0x202323230ALL;
        v21._object = 0xE500000000000000;
        String.append(_:)(v21);

        v22 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v22 = v15 & 0xFFFFFFFFFFFFLL;
        }

        if (!v22)
        {
          v23._countAndFlagsBits = 0xA0A656E6F6ELL;
          v23._object = 0xE600000000000000;
          String.append(_:)(v23);
        }
      }

      else
      {
        v4 = 0xD000000000000020;
        if (v14 != 2)
        {
          v4 = 0xD000000000000022;
        }

        v5 = 0x8000000100031340;
        if (v14 == 2)
        {
          v5 = 0x8000000100031370;
        }

        v6 = 1919251285;
        if (*(v3 - 16))
        {
          v6 = 1769105747;
        }

        if (*(v3 - 16) <= 1u)
        {
          v7 = v6;
        }

        else
        {
          v7 = v4;
        }

        if (*(v3 - 16) <= 1u)
        {
          v8 = 0xE400000000000000;
        }

        else
        {
          v8 = v5;
        }

        v9._countAndFlagsBits = v7;
        v9._object = v8;
        String.append(_:)(v9);

        v10._countAndFlagsBits = 8250;
        v10._object = 0xE200000000000000;
        String.append(_:)(v10);
        v11._countAndFlagsBits = 0;
        v11._object = 0xE000000000000000;
        String.append(_:)(v11);
      }

      v12._countAndFlagsBits = 10;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = v15;
      v13._object = v16;
      String.append(_:)(v13);

      v3 += 3;
      --v2;
    }

    while (v2);

    v24 = 0xD00000000000003CLL;
    v25 = 0x80000001000313A0;
  }

  else
  {
    v25 = 0x80000001000313E0;
    v24 = 0xD000000000000018;
  }

  v26 = *(v0 + 8);

  return v26(v24, v25);
}

Swift::String __swiftcall UserEngagementFeature.prettyPrintSimple()()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (v2)
  {

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = (v1 + 48);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v17[8] = 0;
      *v17 = *(v3 - 16);

      _print_unlocked<A, B>(_:_:)();
      v6._countAndFlagsBits = 8250;
      v6._object = 0xE200000000000000;
      String.append(_:)(v6);
      v7._countAndFlagsBits = v4;
      v7._object = v5;
      String.append(_:)(v7);

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v9];
      v10[4] = *&v17[1];
      v10[5] = 0xE000000000000000;
      v3 += 3;
      --v2;
    }

    while (v2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v11 = BidirectionalCollection<>.joined(separator:)();
    v13 = v12;
  }

  else
  {
    v13 = 0xEE0073746E656D65;
    v11 = 0x6761676E65206F4ELL;
  }

  v14 = v11;
  v15 = v13;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

void *UserEngagementFeature.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t UserEngagementFeature.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
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

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_16FoundationModels29ConvertibleToGeneratedContent_ptGMd, &_ss23_ContiguousArrayStorageCySS_16FoundationModels29ConvertibleToGeneratedContent_ptGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_16FoundationModels29ConvertibleToGeneratedContent_ptMd, &_sSS_16FoundationModels29ConvertibleToGeneratedContent_ptMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_yp5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_yp5valuetGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_18InferenceExtension10PSEFeatureVtGMd, "J9");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_18InferenceExtension10PSEFeatureVtMd, &_sSi_18InferenceExtension10PSEFeatureVtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
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
    v10 = _swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18InferenceExtension10PSEFeatureVGMd, &_ss23_ContiguousArrayStorageCy18InferenceExtension10PSEFeatureVGMR);
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
    v10 = _swiftEmptyArrayStorage;
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

unint64_t specialized PseIntentType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PseIntentType.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined init with copy of String?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TrajectoryType and conformance TrajectoryType()
{
  result = lazy protocol witness table cache variable for type TrajectoryType and conformance TrajectoryType;
  if (!lazy protocol witness table cache variable for type TrajectoryType and conformance TrajectoryType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrajectoryType and conformance TrajectoryType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PseIntentType and conformance PseIntentType()
{
  result = lazy protocol witness table cache variable for type PseIntentType and conformance PseIntentType;
  if (!lazy protocol witness table cache variable for type PseIntentType and conformance PseIntentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PseIntentType and conformance PseIntentType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrajectoryType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrajectoryType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PseIntentType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PseIntentType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PSEMetaData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for PSEMetaData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of UserEngagementFeature.__allocating_init(engagements:metaData:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  v4 = *(a2 + 48);
  v5 = *(v2 + 152);
  v8[0] = *a2;
  v6 = *(a2 + 24);
  v9 = *(a2 + 8);
  v10 = v6;
  v11 = v3;
  v12 = v4;
  return v5(a1, v8);
}

uint64_t dispatch thunk of UserEngagementFeature.setMetaData(_:)(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(*v1 + 168);
  v7[0] = *a1;
  v5 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9 = v5;
  v10 = v2;
  v11 = v3;
  return v4(v7);
}

uint64_t dispatch thunk of UserEngagementFeature.formatEngagements()()
{
  v4 = (*(*v0 + 232) + **(*v0 + 232));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of UserEngagementFeature.formatEngagements();

  return v4();
}

uint64_t dispatch thunk of UserEngagementFeature.formatEngagements()(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t ConversationLoader.retrieveConversationFor(ids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *(v7 + 1664) = a5;
  *(v7 + 1656) = a4;
  *(v7 + 1648) = a7;
  *(v7 + 1640) = a6;
  *(v7 + 1632) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11BiomePubSub21BookmarkablePublisherVy26AIMLInstrumentationStreams8SiriTurnCGMd, &_s11BiomePubSub21BookmarkablePublisherVy26AIMLInstrumentationStreams8SiriTurnCGMR);
  *(v7 + 1672) = v9;
  *(v7 + 1680) = *(v9 - 8);
  *(v7 + 1688) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v7 + 1704) = v12;
  *(v7 + 1696) = v10;

  return _swift_task_switch(ConversationLoader.retrieveConversationFor(ids:), v10, v12);
}

uint64_t ConversationLoader.retrieveConversationFor(ids:)()
{
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[214] = __swift_project_value_buffer(v1, static Logger.inference);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching AIMLIS turns for interaction IDs.", v4, 2u);
  }

  v5 = v0[206];
  v6 = v0[205];

  type metadata accessor for EventFilter();
  type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for ORCHSchemaORCHClientEvent, ORCHSchemaORCHClientEvent_ptr);
  v0[215] = static EventFilter.all(of:)();
  type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for ASRSchemaASRClientEvent, ASRSchemaASRClientEvent_ptr);
  _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo30SISchemaInstrumentationMessageCm_Ttg5();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10002E0F0;
  *(v7 + 32) = type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for ASRSchemaASRIntermediateUtteranceInfoTier1, ASRSchemaASRIntermediateUtteranceInfoTier1_ptr);
  v0[216] = static EventFilter.some(of:types:)();

  type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for TTSSchemaTTSClientEvent, TTSSchemaTTSClientEvent_ptr);
  _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo30SISchemaInstrumentationMessageCm_Ttg5();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10002E0F0;
  *(v8 + 32) = type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for TTSSchemaTTSRequestReceivedTier1, TTSSchemaTTSRequestReceivedTier1_ptr);
  v0[217] = static EventFilter.some(of:types:)();

  type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for RFSchemaRFClientEvent, RFSchemaRFClientEvent_ptr);
  _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo30SISchemaInstrumentationMessageCm_Ttg5();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10002E0F0;
  *(v9 + 32) = type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for RFSchemaRFGradingDialogReportedTier1, RFSchemaRFGradingDialogReportedTier1_ptr);
  v0[218] = static EventFilter.some(of:types:)();

  type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for SISchemaClientEvent, SISchemaClientEvent_ptr);
  _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo30SISchemaInstrumentationMessageCm_Ttg5();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10002D9B0;
  *(v10 + 32) = type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for SISchemaUUFRShownTier1, SISchemaUUFRShownTier1_ptr);
  *(v10 + 40) = type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for SISchemaUUFRShown, SISchemaUUFRShown_ptr);
  *(v10 + 48) = type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for SISchemaUUFRSaid, SISchemaUUFRSaid_ptr);
  v0[219] = static EventFilter.some(of:types:)();

  v11 = dispatch thunk of EventFilter.combine(_:)();
  v12 = dispatch thunk of EventFilter.combine(_:)();

  v13 = dispatch thunk of EventFilter.combine(_:)();
  v14 = dispatch thunk of EventFilter.combine(_:)();
  v0[220] = v14;

  type metadata accessor for UserEngagementFeature();
  v15 = swift_allocObject();
  v0[221] = v15;
  swift_defaultActor_initialize();
  *(v15 + 112) = _swiftEmptyArrayStorage;
  *(v15 + 120) = 4;
  *(v15 + 128) = 0u;
  *(v15 + 144) = 0u;
  *(v15 + 153) = 0u;
  type metadata accessor for InstrumentationStreamsFactory();
  v16 = swift_task_alloc();
  v0[222] = v16;
  *v16 = v0;
  v16[1] = ConversationLoader.retrieveConversationFor(ids:);

  return static InstrumentationStreamsFactory.constructSelfProcessedProvider(filter:startTime:endTime:maxEvents:lastN:trackingTag:)(v0 + 167, v14, v6, 0, v5, 0, 0, 1);
}

{
  v2 = *v1;
  *(*v1 + 1784) = v0;

  v3 = *(v2 + 1704);
  v4 = *(v2 + 1696);
  if (v0)
  {
    v5 = ConversationLoader.retrieveConversationFor(ids:);
  }

  else
  {
    v5 = ConversationLoader.retrieveConversationFor(ids:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  __swift_project_boxed_opaque_existential_1(v0 + 167, v0[170]);
  dispatch thunk of InstrumentationStreamsProviderProtocol.siriTurns()();
  v1 = swift_task_alloc();
  v0[224] = v1;
  v2 = lazy protocol witness table accessor for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>(&lazy protocol witness table cache variable for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>, &_s11BiomePubSub21BookmarkablePublisherVy26AIMLInstrumentationStreams8SiriTurnCGMd, &_s11BiomePubSub21BookmarkablePublisherVy26AIMLInstrumentationStreams8SiriTurnCGMR, &protocol conformance descriptor for BookmarkablePublisher<A>);
  *v1 = v0;
  v1[1] = ConversationLoader.retrieveConversationFor(ids:);
  v3 = v0[209];

  return PublisherProtocol.toSequence()(v3, v2);
}

{
  v46 = v0;
  v1 = v0[226];

  v45[0] = specialized Array._copyToContiguousArray()(v2);
  specialized MutableCollection<>.sort(by:)(v45);
  if (v1)
  {
  }

  v4 = v45[0];

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[206];
    v8 = v0[205];
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Loaded turn stream from startTime: %f, endTime: %f", v9, 0x16u);
  }

  v10 = v0[204];

  v0[227] = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSSSg_Say26AIMLInstrumentationStreams8SiriTurnCGTt1g50108_s18InferenceExtension18ConversationLoaderV08retrieveC3For3idsAA21UserEngagementFeatureCSgSaySSG_tYaKFSSSg26d8Streams8fG7CXEfU0_Tf1nc_nTf4g_n(v4);

  v11 = *(v10 + 16);
  v0[228] = v11;
  if (!v11)
  {
LABEL_28:

    v44 = v0[221];

    return _swift_task_switch(ConversationLoader.retrieveConversationFor(ids:), v44, 0);
  }

  v12 = 0;
  while (1)
  {
    v0[229] = v12;
    v16 = v0[204] + 16 * v12;
    v17 = *(v16 + 32);
    v0[230] = v17;
    v18 = *(v16 + 40);
    v0[231] = v18;
    swift_bridgeObjectRetain_n();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v45[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v45);
      _os_log_impl(&_mh_execute_header, v19, v20, "Looking for turn with root request ID: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    if (!*(v0[227] + 16))
    {
      goto LABEL_17;
    }

    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      goto LABEL_17;
    }

    v29 = *(*(v0[227] + 56) + 8 * v23);
    if (v29 >> 62)
    {
      break;
    }

    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_20;
    }

LABEL_17:

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v45[0] = v14;
      *v13 = 136315138;
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v45);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v31, v32, "No turn found for RequestID: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
    }

    else
    {
    }

    v12 = v0[229] + 1;
    if (v12 == v0[228])
    {
      goto LABEL_28;
    }
  }

  v30 = _CocoaArrayWrapper.endIndex.getter();
  if (!v30)
  {
    goto LABEL_17;
  }

LABEL_20:
  if ((v29 & 0xC000000000000001) != 0)
  {

    v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_23:
    v0[232] = v33;

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v45[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v45);
      _os_log_impl(&_mh_execute_header, v34, v35, "Found turn for RequestID: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
    }

    v38 = v0[208];
    v39 = v0[207];
    v40 = v0[206];
    v41 = v0[205];
    v42 = swift_task_alloc();
    v0[233] = v42;
    v42[2] = v41;
    v42[3] = v40;
    v42[4] = v39;
    v42[5] = v38;
    v42[6] = v33;
    swift_asyncLet_begin();
    v43 = swift_task_alloc();
    v0[234] = v43;
    v43[2] = v41;
    v43[3] = v40;
    v43[4] = v39;
    v43[5] = v38;
    v43[6] = v33;
    swift_asyncLet_begin();
    v27 = ConversationLoader.retrieveConversationFor(ids:);
    v30 = (v0 + 2);
    v26 = v0 + 199;
    v28 = v0 + 162;
  }

  else
  {
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v33 = *(v29 + 32);
      goto LABEL_23;
    }

    __break(1u);
  }

  return _swift_asyncLet_get(v30, v26, v27, v28);
}

{
  v0[235] = v0[199];
  v0[236] = v0[200];

  return _swift_asyncLet_get(v0 + 82, v0 + 201, ConversationLoader.retrieveConversationFor(ids:), v0 + 172);
}

{
  return _swift_task_switch(ConversationLoader.retrieveConversationFor(ids:), *(v0 + 1696), *(v0 + 1704));
}

{
  v39 = v0;
  v1 = v0[236];
  v2 = v0[235];
  v3 = v0[201];
  v0[237] = v3;
  v4 = v0[202];
  v0[238] = v4;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v6 = HIBYTE(v4) & 0xF;
  if (!v5)
  {
    goto LABEL_16;
  }

  v7 = v2 == v0[207] && v1 == v0[208];
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_16;
  }

  v8 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v4) & 0xF;
  }

  if (!v8 || v3 == v0[207] && v4 == v0[208] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
LABEL_16:

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[231];
      v12 = v0[230];
      v37 = v5;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v38 = v14;
      *v13 = 136315138;
      v15 = v12;
      v6 = HIBYTE(v4) & 0xF;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v11, &v38);
      _os_log_impl(&_mh_execute_header, v9, v10, "Invalid utterance or response for RequestID: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);

      v5 = v37;
    }

    if (!v5 || v0[235] == v0[207] && v0[236] == v0[208])
    {
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[231];
      v19 = v6;
      v20 = v0[230];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v38 = v22;
      *v21 = 136315138;
      v23 = v20;
      v6 = v19;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v18, &v38);
      _os_log_impl(&_mh_execute_header, v16, v17, " Utterance is empty for RequestID: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

LABEL_25:
    v24 = v3 & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v24 = v6;
    }

    if (!v24 || v3 == v0[207] && v4 == v0[208])
    {
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v34 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[231];
    if (v27)
    {
      v29 = v0[230];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136315138;
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v38);

      *(v30 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, " Response is empty for RequestID: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);

LABEL_38:

      return _swift_asyncLet_finish(v0 + 82, v0 + 201, ConversationLoader.retrieveConversationFor(ids:), v0 + 180);
    }

LABEL_37:

    goto LABEL_38;
  }

  v35 = v0[221];

  return _swift_task_switch(ConversationLoader.retrieveConversationFor(ids:), v35, 0);
}

{
  v1 = v0[221];
  swift_beginAccess();
  v2 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = v0[221];
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    *(v10 + 112) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = v0[236];
  v7 = v0[235];
  v8 = v0[221];
  v2[2] = v5 + 1;
  v9 = &v2[3 * v5];
  *(v9 + 32) = 0;
  v9[5] = v7;
  v9[6] = v6;
  *(v8 + 112) = v2;
  swift_endAccess();

  return _swift_task_switch(ConversationLoader.retrieveConversationFor(ids:), v8, 0);
}

{
  v1 = v0[221];
  swift_beginAccess();
  v2 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = v0[221];
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    *(v10 + 112) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = v0[238];
  v7 = v0[237];
  v8 = v0[221];
  v2[2] = v5 + 1;
  v9 = &v2[3 * v5];
  *(v9 + 32) = 1;
  v9[5] = v7;
  v9[6] = v6;
  *(v8 + 112) = v2;
  swift_endAccess();

  return _swift_asyncLet_finish(v0 + 82, v0 + 201, ConversationLoader.retrieveConversationFor(ids:), v0 + 180);
}

{
  return _swift_task_switch(ConversationLoader.retrieveConversationFor(ids:), *(v0 + 1696), *(v0 + 1704));
}

{

  return _swift_asyncLet_finish(v0 + 16, v0 + 1592, ConversationLoader.retrieveConversationFor(ids:), v0 + 1504);
}

{
  return _swift_task_switch(ConversationLoader.retrieveConversationFor(ids:), *(v0 + 1696), *(v0 + 1704));
}

{
  v36 = v0;

  v1 = *(v0 + 1832) + 1;
  if (v1 == *(v0 + 1824))
  {
LABEL_2:

    v2 = *(v0 + 1768);

    return _swift_task_switch(ConversationLoader.retrieveConversationFor(ids:), v2, 0);
  }

  while (1)
  {
    *(v0 + 1832) = v1;
    v6 = *(v0 + 1632) + 16 * v1;
    v7 = *(v6 + 32);
    *(v0 + 1840) = v7;
    v8 = *(v6 + 40);
    *(v0 + 1848) = v8;
    swift_bridgeObjectRetain_n();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35 = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v35);
      _os_log_impl(&_mh_execute_header, v9, v10, "Looking for turn with root request ID: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
    }

    if (!*(*(v0 + 1816) + 16))
    {
      goto LABEL_14;
    }

    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
    v15 = v14;

    if ((v15 & 1) == 0)
    {
      goto LABEL_14;
    }

    v19 = *(*(*(v0 + 1816) + 56) + 8 * v13);
    if (v19 >> 62)
    {
      break;
    }

    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_17;
    }

LABEL_14:

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v35 = v4;
      *v3 = 136315138;
      v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v35);

      *(v3 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v21, v22, "No turn found for RequestID: %s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v4);
    }

    else
    {
    }

    v1 = *(v0 + 1832) + 1;
    if (v1 == *(v0 + 1824))
    {
      goto LABEL_2;
    }
  }

  v20 = _CocoaArrayWrapper.endIndex.getter();
  if (!v20)
  {
    goto LABEL_14;
  }

LABEL_17:
  if ((v19 & 0xC000000000000001) != 0)
  {

    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_20:
    *(v0 + 1856) = v23;

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v26 = 136315138;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v35);
      _os_log_impl(&_mh_execute_header, v24, v25, "Found turn for RequestID: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
    }

    v28 = *(v0 + 1664);
    v29 = *(v0 + 1656);
    v30 = *(v0 + 1648);
    v31 = *(v0 + 1640);
    v32 = swift_task_alloc();
    *(v0 + 1864) = v32;
    v32[2] = v31;
    v32[3] = v30;
    v32[4] = v29;
    v32[5] = v28;
    v32[6] = v23;
    swift_asyncLet_begin();
    v33 = swift_task_alloc();
    *(v0 + 1872) = v33;
    v33[2] = v31;
    v33[3] = v30;
    v33[4] = v29;
    v33[5] = v28;
    v33[6] = v23;
    swift_asyncLet_begin();
    v17 = ConversationLoader.retrieveConversationFor(ids:);
    v20 = v0 + 16;
    v16 = v0 + 1592;
    v18 = v0 + 1296;
  }

  else
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v19 + 32);
      goto LABEL_20;
    }

    __break(1u);
  }

  return _swift_asyncLet_get(v20, v16, v17, v18);
}

{
  v1 = v0[221];
  swift_beginAccess();
  v0[239] = *(*(v1 + 112) + 16);
  v2 = v0[213];
  v3 = v0[212];

  return _swift_task_switch(ConversationLoader.retrieveConversationFor(ids:), v3, v2);
}

{
  v1 = *(v0 + 1912);
  v2 = *(v0 + 1752);
  v3 = *(v0 + 1744);
  v4 = *(v0 + 1736);
  v5 = *(v0 + 1728);
  v6 = *(v0 + 1720);

  v7 = *(v0 + 1768);
  if (!v1)
  {

    v7 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 1336));

  v8 = *(v0 + 8);

  return v8(v7);
}

{
  v23 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[220];
    v17 = v0[219];
    v18 = v0[218];
    v19 = v0[217];
    v20 = v0[216];
    v21 = v0[215];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v22);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to retrieve conversation for AIMLIS: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    v9 = v0[220];
    v10 = v0[219];
    v11 = v0[218];
    v12 = v0[217];
    v13 = v0[216];
    v14 = v0[215];
  }

  v15 = v0[1];

  return v15(0);
}

{
  v23 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 167);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[220];
    v17 = v0[219];
    v18 = v0[218];
    v19 = v0[217];
    v20 = v0[216];
    v21 = v0[215];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v22);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to retrieve conversation for AIMLIS: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    v9 = v0[220];
    v10 = v0[219];
    v11 = v0[218];
    v12 = v0[217];
    v13 = v0[216];
    v14 = v0[215];
  }

  v15 = v0[1];

  return v15(0);
}

uint64_t ConversationLoader.retrieveConversationFor(ids:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[225] = a1;
  v4[226] = v1;

  (*(v3[210] + 8))(v3[211], v3[209]);
  v5 = v3[213];
  v6 = v3[212];
  if (v1)
  {
    v7 = ConversationLoader.retrieveConversationFor(ids:);
  }

  else
  {
    v7 = ConversationLoader.retrieveConversationFor(ids:);
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t implicit closure #6 in ConversationLoader.retrieveConversationFor(ids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = implicit closure #6 in ConversationLoader.retrieveConversationFor(ids:);

  return specialized ConversationLoader.parseUtteranceFrom(turn:)(0, 0, a4);
}

uint64_t implicit closure #6 in ConversationLoader.retrieveConversationFor(ids:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return _swift_task_switch(implicit closure #6 in ConversationLoader.retrieveConversationFor(ids:), 0, 0);
}

uint64_t implicit closure #6 in ConversationLoader.retrieveConversationFor(ids:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 32);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t ConversationLoader.parseUtteranceFrom(turn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of UserEngagementFeature.formatEngagements();

  return specialized ConversationLoader.parseUtteranceFrom(turn:)(a1, a2, a3);
}

uint64_t implicit closure #7 in ConversationLoader.retrieveConversationFor(ids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = implicit closure #7 in ConversationLoader.retrieveConversationFor(ids:);

  return specialized ConversationLoader.parseSiriResponseFrom(turn:)(0, 0, a4);
}

uint64_t implicit closure #7 in ConversationLoader.retrieveConversationFor(ids:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return _swift_task_switch(implicit closure #7 in ConversationLoader.retrieveConversationFor(ids:), 0, 0);
}

uint64_t ConversationLoader.parseSiriResponseFrom(turn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = ConversationLoader.parseSiriResponseFrom(turn:);

  return specialized ConversationLoader.parseSiriResponseFrom(turn:)(a1, a2, a3);
}

void closure #2 in ConversationLoader.parseUtteranceFrom(turn:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 tokens];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for ASRSchemaASRTokenTier1, ASRSchemaASRTokenTier1_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void closure #1 in ConversationLoader.parseSiriResponseFrom(turn:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 requestReceivedTier1];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 textToSynthesize];

    if (v5)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

uint64_t ConversationLoader.removeControlSequences(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return _swift_task_switch(ConversationLoader.removeControlSequences(_:), v5, v7);
}

uint64_t ConversationLoader.removeControlSequences(_:)()
{
  v1 = v0[9];
  v0[2] = v0[8];
  v0[3] = v1;
  v0[4] = 0xD000000000000013;
  v0[5] = 0x8000000100031460;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v2 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v3 = v0[1];

  return v3(v2);
}

void closure #1 in ConversationLoader.parseUtteranceFrom(turn:)(void *a1@<X0>, SEL *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = [a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

InferenceExtension::ConversationLoader __swiftcall ConversationLoader.init(collectionWindow:)(InferenceExtension::CollectionWindow collectionWindow)
{
  v1 = 32;
  v2 = 0xE100000000000000;
  result.collectionWindow.endTime = collectionWindow.endTime;
  result.collectionWindow.startTime = collectionWindow.startTime;
  result.token_deliminter._object = v2;
  result.token_deliminter._countAndFlagsBits = v1;
  return result;
}

uint64_t _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo30SISchemaInstrumentationMessageCm_Ttg5()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30SISchemaInstrumentationMessageCmMd, &_sSo30SISchemaInstrumentationMessageCmMR);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &_ss23_ContiguousArrayStorageCySo30SISchemaInstrumentationMessageCmGMd;
    v3 = &_ss23_ContiguousArrayStorageCySo30SISchemaInstrumentationMessageCmGMR;
  }

  else
  {
    v2 = &_ss23_ContiguousArrayStorageCyyXlGMd;
    v3 = &_ss23_ContiguousArrayStorageCyyXlGMR;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_yp5valuet_Tt1g5(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_yp5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_yp5valuetGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC26AIMLInstrumentationStreams8SiriTurnC_Tt1g5(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
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
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for SiriTurn();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      EventGraph.timestamp.getter();
      v15 = v14;
      EventGraph.timestamp.getter();
      v17 = v16;

      if (v15 >= v17)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_87:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_119:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v98 = *(v8 + 2);
    if (v98 >= 2)
    {
      while (*a3)
      {
        v99 = *&v8[16 * v98];
        v100 = *&v8[16 * v98 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v99), (*a3 + 8 * *&v8[16 * v98 + 16]), (*a3 + 8 * v100), v6);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v100 < v99)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v98 - 2 >= *(v8 + 2))
        {
          goto LABEL_113;
        }

        v101 = &v8[16 * v98];
        *v101 = v99;
        *(v101 + 1) = v100;
        specialized Array.remove(at:)(v98 - 1);
        v98 = *(v8 + 2);
        if (v98 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_123;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    v106 = v7;
    if (v7 + 1 < v6)
    {
      v103 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = (*a3 + 8 * v7);
      v14 = *v12;
      v13 = v12 + 2;
      v15 = v11;
      v16 = v14;
      EventGraph.timestamp.getter();
      v18 = v17;
      EventGraph.timestamp.getter();
      v20 = v19;

      v21 = v7 + 2;
      while (v6 != v21)
      {
        v22 = *(v13 - 1);
        v23 = *v13;
        v24 = v22;
        EventGraph.timestamp.getter();
        v26 = v25;
        EventGraph.timestamp.getter();
        v28 = v27;

        ++v21;
        ++v13;
        if (v18 < v20 == v26 >= v28)
        {
          v6 = v21 - 1;
          break;
        }
      }

      v9 = v7;
      if (v18 < v20)
      {
        if (v6 < v7)
        {
          goto LABEL_116;
        }

        if (v7 < v6)
        {
          v29 = 8 * v6 - 8;
          v30 = v6;
          v31 = v7;
          do
          {
            if (v31 != --v30)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_122;
              }

              v32 = *(v33 + v5);
              *(v33 + v5) = *(v33 + v29);
              *(v33 + v29) = v32;
            }

            ++v31;
            v29 -= 8;
            v5 += 8;
          }

          while (v31 < v30);
        }
      }

      v10 = v6;
      v5 = v103;
    }

    v6 = a3;
    v34 = a3[1];
    if (v10 < v34)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_115;
      }

      if (v10 - v9 < a4)
      {
        v35 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_117;
        }

        if (v35 >= v34)
        {
          v35 = a3[1];
        }

        if (v35 < v9)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (v10 != v35)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v10 < v9)
    {
      goto LABEL_114;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v52 = *(v8 + 2);
    v51 = *(v8 + 3);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v8);
    }

    *(v8 + 2) = v53;
    v54 = &v8[16 * v52];
    *(v54 + 4) = v106;
    *(v54 + 5) = v10;
    v55 = *a1;
    if (!*a1)
    {
      goto LABEL_124;
    }

    v7 = v10;
    if (v52)
    {
      while (1)
      {
        v56 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v57 = *(v8 + 4);
          v58 = *(v8 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_56:
          if (v60)
          {
            goto LABEL_103;
          }

          v73 = &v8[16 * v53];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_106;
          }

          v79 = &v8[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_110;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v53 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v83 = &v8[16 * v53];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_70:
        if (v78)
        {
          goto LABEL_105;
        }

        v86 = &v8[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_108;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_77:
        v94 = v56 - 1;
        if (v56 - 1 >= v53)
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
          goto LABEL_118;
        }

        if (!*v6)
        {
          goto LABEL_121;
        }

        v95 = *&v8[16 * v94 + 32];
        v96 = *&v8[16 * v56 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v95), (*v6 + 8 * *&v8[16 * v56 + 32]), (*v6 + 8 * v96), v55);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v96 < v95)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v94 >= *(v8 + 2))
        {
          goto LABEL_100;
        }

        v97 = &v8[16 * v94];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        specialized Array.remove(at:)(v56);
        v53 = *(v8 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v8[16 * v53 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_101;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_102;
      }

      v68 = &v8[16 * v53];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_104;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_107;
      }

      if (v72 >= v64)
      {
        v90 = &v8[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_111;
        }

        if (v59 < v93)
        {
          v56 = v53 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v6 = *(v6 + 8);
    if (v7 >= v6)
    {
      goto LABEL_87;
    }
  }

  v104 = v5;
  v36 = *a3;
  v37 = *a3 + 8 * v10 - 8;
  v38 = v9 - v10;
  v107 = v35;
LABEL_29:
  v109 = v10;
  v39 = *(v36 + 8 * v10);
  v40 = v38;
  v41 = v37;
  while (1)
  {
    v42 = *v41;
    v43 = v39;
    v44 = v42;
    EventGraph.timestamp.getter();
    v46 = v45;
    EventGraph.timestamp.getter();
    v48 = v47;

    if (v46 >= v48)
    {
LABEL_28:
      v10 = v109 + 1;
      v37 += 8;
      --v38;
      if (v109 + 1 != v107)
      {
        goto LABEL_29;
      }

      v10 = v107;
      v5 = v104;
      v6 = a3;
      v9 = v106;
      goto LABEL_36;
    }

    if (!v36)
    {
      break;
    }

    v49 = *v41;
    v39 = *(v41 + 8);
    *v41 = v39;
    *(v41 + 8) = v49;
    v41 -= 8;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 < 8)
    {
LABEL_10:
      v15 = v6;
      goto LABEL_36;
    }

    while (1)
    {
      if (v13 >= v5)
      {
        goto LABEL_10;
      }

      v18 = *v4;
      v19 = *v13;
      v20 = v18;
      EventGraph.timestamp.getter();
      v22 = v21;
      EventGraph.timestamp.getter();
      v24 = v23;

      if (v22 < v24)
      {
        break;
      }

      v16 = v4;
      v17 = v6 == v4++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v6;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v13;
    v17 = v6 == v13++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v16;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[v12] <= a4)
  {
    v25 = a2;
    memmove(a4, a2, 8 * v12);
    a2 = v25;
  }

  v15 = a2;
  v14 = &v4[v12];
  if (v10 >= 8 && a2 > v6)
  {
    v41 = v4;
LABEL_25:
    v40 = v15;
    v26 = v15 - 1;
    --v5;
    v27 = v14;
    do
    {
      v28 = v5 + 1;
      v29 = *--v27;
      v30 = v26;
      v31 = *v26;
      v32 = v29;
      v33 = v31;
      EventGraph.timestamp.getter();
      v35 = v34;
      EventGraph.timestamp.getter();
      v37 = v36;

      if (v35 < v37)
      {
        v38 = v30;
        if (v28 != v40)
        {
          *v5 = *v30;
        }

        v4 = v41;
        if (v14 <= v41 || (v15 = v38, v38 <= v6))
        {
          v15 = v38;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (v28 != v14)
      {
        *v5 = *v27;
      }

      --v5;
      v14 = v27;
      v26 = v30;
    }

    while (v27 > v41);
    v14 = v27;
    v15 = v40;
    v4 = v41;
  }

LABEL_36:
  if (v15 != v4 || v15 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v15, v4, 8 * (v14 - v4));
  }

  return 1;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
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

{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
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

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
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

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSgSay26AIMLInstrumentationStreams8SiriTurnCGGMd, &_ss18_DictionaryStorageCySSSgSay26AIMLInstrumentationStreams8SiriTurnCGGMR);
  v30 = v4;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v31 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      if (v21)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v31;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_36:
  *v3 = v7;
  return result;
}

void *specialized Array._copyToContiguousArray()(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC26AIMLInstrumentationStreams8SiriTurnC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>(&lazy protocol witness table cache variable for type [SiriTurn] and conformance [A], &_sSay26AIMLInstrumentationStreams8SiriTurnCGMd, &_sSay26AIMLInstrumentationStreams8SiriTurnCGMR, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AIMLInstrumentationStreams8SiriTurnCGMd, &_sSay26AIMLInstrumentationStreams8SiriTurnCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SiriTurn();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *_sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSSSg_Say26AIMLInstrumentationStreams8SiriTurnCGTt1g50108_s18InferenceExtension18ConversationLoaderV08retrieveC3For3idsAA21UserEngagementFeatureCSgSaySSG_tYaKFSSSg26d8Streams8fG7CXEfU0_Tf1nc_nTf4g_n(unint64_t a1)
{
  v31 = type metadata accessor for UUID();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = &_swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_27:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v34 = a1 & 0xFFFFFFFFFFFFFF8;
      v35 = a1 & 0xC000000000000001;
      v30 = (v2 + 8);
      v7 = &_swiftEmptyDictionarySingleton;
      v29 = xmmword_10002E4A0;
      v32 = v5;
      v33 = a1;
      while (1)
      {
        if (v35)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *(v34 + 16))
          {
            goto LABEL_24;
          }

          v9 = *(a1 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        if (EventGraph.orch.getter())
        {
          v12 = dispatch thunk of ComponentGroup.componentIdentifier.getter();

          dispatch thunk of ComponentIdentifier.uuid.getter();

          v13 = UUID.uuidString.getter();
          v2 = v14;
          (*v30)(v4, v31);
        }

        else
        {
          v13 = 0;
          v2 = 0;
        }

        a1 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v2);
        v16 = v7[2];
        v17 = (v15 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_25;
        }

        v19 = v15;
        if (v7[3] < v18)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, 1);
          v7 = v36;
          v20 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v2);
          if ((v19 & 1) != (v21 & 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          a1 = v20;
        }

        if (v19)
        {

          v8 = (v7[7] + 8 * a1);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v2 = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v22 = swift_allocObject();
          *(v22 + 16) = v29;
          *(v22 + 32) = v10;
          v7[(a1 >> 6) + 8] |= 1 << a1;
          v23 = (v7[6] + 16 * a1);
          *v23 = v13;
          v23[1] = v2;
          *(v7[7] + 8 * a1) = v22;
          v24 = v7[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_26;
          }

          v7[2] = v26;
        }

        a1 = v33;
        ++v6;
        if (v11 == v32)
        {
          return v7;
        }
      }
    }
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t partial apply for implicit closure #6 in ConversationLoader.retrieveConversationFor(ids:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of SELFReporter.report(event:);

  return implicit closure #6 in ConversationLoader.retrieveConversationFor(ids:)(a1, v4, v5, v6);
}

uint64_t partial apply for implicit closure #7 in ConversationLoader.retrieveConversationFor(ids:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:);

  return implicit closure #7 in ConversationLoader.retrieveConversationFor(ids:)(a1, v4, v5, v6);
}

uint64_t specialized ConversationLoader.parseUtteranceFrom(turn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a3;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return _swift_task_switch(specialized ConversationLoader.parseUtteranceFrom(turn:), v4, v6);
}

uint64_t specialized ConversationLoader.parseUtteranceFrom(turn:)()
{
  v36 = v0;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v2 = __swift_project_value_buffer(v1, static Logger.inference);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetch User utterance from ASRSchemaASRIntermediateUtteranceInfoTier1", v5, 2u);
  }

  v6 = EventGraph.asr.getter();
  if (v6)
  {
    *(v0 + 16) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AIMLInstrumentationStreams14ComponentGroupCySo23ASRSchemaASRClientEventCGMd, &_s26AIMLInstrumentationStreams14ComponentGroupCySo23ASRSchemaASRClientEventCGMR);
    type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for ASRSchemaASRIntermediateUtteranceInfoTier1, ASRSchemaASRIntermediateUtteranceInfoTier1_ptr);
    lazy protocol witness table accessor for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>(&lazy protocol witness table cache variable for type ComponentGroup<ASRSchemaASRClientEvent> and conformance ComponentGroup<A>, &_s26AIMLInstrumentationStreams14ComponentGroupCySo23ASRSchemaASRClientEventCGMd, &_s26AIMLInstrumentationStreams14ComponentGroupCySo23ASRSchemaASRClientEventCGMR, &protocol conformance descriptor for ComponentGroup<A>);
    v7 = Sequence<>.compactMapInner<A, B>(_:)();

    v8 = v7[2];
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
    v8 = _swiftEmptyArrayStorage[2];
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  v9 = (v7 + 5);
  do
  {
    v10 = *v9;
    v34 = *(v9 - 1);
    v35 = v10;
    swift_bridgeObjectRetain_n();
    v11._countAndFlagsBits = 32;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);

    v12._countAndFlagsBits = v34;
    v12._object = v10;
    String.append(_:)(v12);

    v9 += 2;
    --v8;
  }

  while (v8);
LABEL_11:

  result = EventGraph.asr.getter();
  if (result)
  {
    *(v0 + 16) = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AIMLInstrumentationStreams14ComponentGroupCySo23ASRSchemaASRClientEventCGMd, &_s26AIMLInstrumentationStreams14ComponentGroupCySo23ASRSchemaASRClientEventCGMR);
    type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for ASRSchemaASRRecognitionResultTier1, ASRSchemaASRRecognitionResultTier1_ptr);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo22ASRSchemaASRTokenTier1CGMd, &_sSaySo22ASRSchemaASRTokenTier1CGMR);
    lazy protocol witness table accessor for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>(&lazy protocol witness table cache variable for type ComponentGroup<ASRSchemaASRClientEvent> and conformance ComponentGroup<A>, &_s26AIMLInstrumentationStreams14ComponentGroupCySo23ASRSchemaASRClientEventCGMd, &_s26AIMLInstrumentationStreams14ComponentGroupCySo23ASRSchemaASRClientEventCGMR, &protocol conformance descriptor for ComponentGroup<A>);
    v14 = Sequence<>.compactMapInner<A, B>(_:)();

    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = *(v14 + 8 * v15 + 24);
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v16 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v17 = result;
    if (!result)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_28;
    }
  }

  v33 = v2;
  if (v17 < 1)
  {
    __break(1u);
    return result;
  }

  v18 = 0;
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v23 = *(v16 + 8 * v18 + 32);
    }

    v24 = v23;
    v25 = [v23 text];
    if (v25)
    {
      v26 = v25;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v27;
    }

    else
    {
      v19 = 0;
      v20 = 0xE000000000000000;
    }

    ++v18;
    v34 = v19;
    v35 = v20;

    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);

    v22._countAndFlagsBits = v19;
    v22._object = v20;
    String.append(_:)(v22);
  }

  while (v17 != v18);
LABEL_28:

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v30 = 136315138;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v34);
    _os_log_impl(&_mh_execute_header, v28, v29, "User Utterance: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  v32 = *(v0 + 8);

  return v32(0, 0xE000000000000000);
}

uint64_t specialized ConversationLoader.parseSiriResponseFrom(turn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a3;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return _swift_task_switch(specialized ConversationLoader.parseSiriResponseFrom(turn:), v4, v6);
}

uint64_t specialized ConversationLoader.parseSiriResponseFrom(turn:)()
{
  v78 = v0;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.inference);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetch SpokenPhrase from TTSSchemaTTSClientEvent", v4, 2u);
  }

  v5 = SiriTurn.tts.getter();
  if (v5)
  {
    v0[2].count = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AIMLInstrumentationStreams14ComponentGroupCySo23TTSSchemaTTSClientEventCGMd, &_s26AIMLInstrumentationStreams14ComponentGroupCySo23TTSSchemaTTSClientEventCGMR);
    type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for TTSSchemaTTSClientEvent, TTSSchemaTTSClientEvent_ptr);
    lazy protocol witness table accessor for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>(&lazy protocol witness table cache variable for type ComponentGroup<TTSSchemaTTSClientEvent> and conformance ComponentGroup<A>, &_s26AIMLInstrumentationStreams14ComponentGroupCySo23TTSSchemaTTSClientEventCGMd, &_s26AIMLInstrumentationStreams14ComponentGroupCySo23TTSSchemaTTSClientEventCGMR, &protocol conformance descriptor for ComponentGroup<A>);
    v6 = Sequence<>.compactMapInner<A, B>(_:)();

    v7 = v6[2];
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_11:
    v13 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_12;
  }

  v6 = _swiftEmptyArrayStorage;
  v7 = _swiftEmptyArrayStorage[2];
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_7:
  v8 = (v6 + 5);
  do
  {
    v9 = *v8;
    v77._countAndFlagsBits = *(v8 - 1);
    v77._object = v9;
    swift_bridgeObjectRetain_n();
    v10._countAndFlagsBits = 32;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);

    v11._countAndFlagsBits = v77._countAndFlagsBits;
    v11._object = v9;
    String.append(_:)(v11);

    v8 += 2;
    --v7;
  }

  while (v7);
  v13 = 0;
  v12 = 0xE000000000000000;
LABEL_12:

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Fetch Siri Dialog Output from SISchemaUUFRShown", v16, 2u);
  }

  v17 = EventGraph.uei.getter();
  v75 = v0;
  if (v17)
  {
    v0[2].count = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AIMLInstrumentationStreams14ComponentGroupCySo19SISchemaClientEventCGMd, "25");
    type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for SISchemaUUFRShown, SISchemaUUFRShown_ptr);
    lazy protocol witness table accessor for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>(&lazy protocol witness table cache variable for type ComponentGroup<SISchemaClientEvent> and conformance ComponentGroup<A>, &_s26AIMLInstrumentationStreams14ComponentGroupCySo19SISchemaClientEventCGMd, "25", &protocol conformance descriptor for ComponentGroup<A>);
    v18 = Sequence<>.compactMapInner<A, B>(_:)();
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v19 = v18[2];
  if (v19)
  {
    v20 = (v18 + 5);
    do
    {
      v21 = *v20;
      v77._countAndFlagsBits = *(v20 - 1);
      v77._object = v21;
      swift_bridgeObjectRetain_n();
      v22._countAndFlagsBits = 32;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);

      v23._countAndFlagsBits = v77._countAndFlagsBits;
      v23._object = v21;
      String.append(_:)(v23);

      v20 += 2;
      --v19;
    }

    while (v19);
    v13 = 0;
    v12 = 0xE000000000000000;
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Fetch SpokenPhrase from SISchemaUUFRSaid", v26, 2u);
  }

  v27 = EventGraph.uei.getter();
  if (v27)
  {
    v0[2].count = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AIMLInstrumentationStreams14ComponentGroupCySo19SISchemaClientEventCGMd, "25");
    type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for SISchemaUUFRSaid, SISchemaUUFRSaid_ptr);
    lazy protocol witness table accessor for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>(&lazy protocol witness table cache variable for type ComponentGroup<SISchemaClientEvent> and conformance ComponentGroup<A>, &_s26AIMLInstrumentationStreams14ComponentGroupCySo19SISchemaClientEventCGMd, "25", &protocol conformance descriptor for ComponentGroup<A>);
    v28 = Sequence<>.compactMapInner<A, B>(_:)();
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v29 = v28[2];
  if (v29)
  {
    v30 = (v28 + 5);
    do
    {
      v33 = *(v30 - 1);
      v32 = *v30;
      swift_bridgeObjectRetain_n();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v77._countAndFlagsBits = v37;
        *v36 = 136315138;
        *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, &v77._countAndFlagsBits);
        _os_log_impl(&_mh_execute_header, v34, v35, "Siri Response: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
      }

      v77._countAndFlagsBits = v33;
      v77._object = v32;

      v31._countAndFlagsBits = 32;
      v31._object = 0xE100000000000000;
      String.append(_:)(v31);

      String.append(_:)(v77);

      v30 += 2;
      --v29;
    }

    while (v29);
    v13 = 0;
    v12 = 0xE000000000000000;
  }

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Fetch Siri Dialog Output from SISchemaUUFRShownTier1", v42, 2u);
  }

  v43 = EventGraph.uei.getter();
  if (v43)
  {
    v0[2].count = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AIMLInstrumentationStreams14ComponentGroupCySo19SISchemaClientEventCGMd, "25");
    type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for SISchemaUUFRShownTier1, SISchemaUUFRShownTier1_ptr);
    lazy protocol witness table accessor for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>(&lazy protocol witness table cache variable for type ComponentGroup<SISchemaClientEvent> and conformance ComponentGroup<A>, &_s26AIMLInstrumentationStreams14ComponentGroupCySo19SISchemaClientEventCGMd, "25", &protocol conformance descriptor for ComponentGroup<A>);
    v44 = Sequence<>.compactMapInner<A, B>(_:)();

    v45 = v44[2];
    if (!v45)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v44 = _swiftEmptyArrayStorage;
    v45 = _swiftEmptyArrayStorage[2];
    if (!v45)
    {
      goto LABEL_47;
    }
  }

  v46 = (v44 + 5);
  do
  {
    v47 = *v46;
    v77._countAndFlagsBits = *(v46 - 1);
    v77._object = v47;
    swift_bridgeObjectRetain_n();
    v48._countAndFlagsBits = 32;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);

    String.append(_:)(v77);

    v46 += 2;
    --v45;
  }

  while (v45);
  v13 = 0;
  v12 = 0xE000000000000000;
LABEL_47:

  v0[2].count = dispatch thunk of EventGraph.events()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriInstrumentation12OrderedEventCGMd, "05");
  type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for RFSchemaRFGradingDialogReportedTier1, RFSchemaRFGradingDialogReportedTier1_ptr);
  lazy protocol witness table accessor for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>(&lazy protocol witness table cache variable for type [OrderedEvent] and conformance [A], &_sSay19SiriInstrumentation12OrderedEventCGMd, "05", &protocol conformance descriptor for [A]);
  v49 = Sequence<>.compactMapInner<A, B>(_:)();

  if (v49 >> 62)
  {
    goto LABEL_78;
  }

  for (i = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    v73 = v49;
    v74 = v49 & 0xC000000000000001;
    v70 = v49 + 32;
    v71 = v49 & 0xFFFFFFFFFFFFFF8;
    v72 = i;
    while (1)
    {
      if (v74)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v71 + 16))
        {
          goto LABEL_77;
        }

        v52 = *(v70 + 8 * v12);
      }

      v51 = v52;
      if (__OFADD__(v12++, 1))
      {
        break;
      }

      v54 = [v52 dialogLines];
      if (!v54)
      {
        goto LABEL_51;
      }

      v55 = v54;
      type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for RFSchemaRFGradingDialogLineTier1, RFSchemaRFGradingDialogLineTier1_ptr);
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v76 = v51;
      if (v13 >> 62)
      {
        v56 = _CocoaArrayWrapper.endIndex.getter();
        v0 = &BMBookmark__prots;
        if (v56)
        {
LABEL_60:
          if (v56 < 1)
          {
            goto LABEL_76;
          }

          for (j = 0; j != v56; ++j)
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v63 = *(v13 + 8 * j + 32);
            }

            v64 = v63;
            v65 = [v63 v0[265].count];
            if (v65 || (v65 = [v64 spokenDialog]) != 0)
            {
              v58 = v65;
              v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v61 = v60;

              v77._countAndFlagsBits = v59;
              v77._object = v61;

              v62._countAndFlagsBits = 32;
              v62._object = 0xE100000000000000;
              String.append(_:)(v62);

              String.append(_:)(v77);
            }
          }
        }
      }

      else
      {
        v56 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v0 = &BMBookmark__prots;
        if (v56)
        {
          goto LABEL_60;
        }
      }

      v0 = v75;
      v51 = v76;
      i = v72;
      v49 = v73;
LABEL_51:

      if (v12 == i)
      {
        v13 = 0;
        v12 = 0xE000000000000000;
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    ;
  }

LABEL_73:

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v77._countAndFlagsBits = v69;
    *v68 = 136315138;
    *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v77._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v66, v67, "Siri Response: %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
  }

  count = v0[1].count;

  return count(v13, v12);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CollectionWindow(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CollectionWindow(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ConversationLoader(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ConversationLoader(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for ORCHSchemaORCHClientEvent(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type BookmarkablePublisher<SiriTurn> and conformance BookmarkablePublisher<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t BiomeStreaming.__allocating_init(userDefaults:streamId:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t BiomeStreaming.init(userDefaults:streamId:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t BiomeStreaming.loadBiomeEventsFromBMLibrary<A>(eventType:maxRecords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[14] = a4;
  if (a1)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return _swift_task_switch(BiomeStreaming.loadBiomeEventsFromBMLibrary<A>(eventType:maxRecords:), v7, v9);
}

uint64_t BiomeStreaming.loadBiomeEventsFromBMLibrary<A>(eventType:maxRecords:)()
{
  v74 = v0;
  aBlock = v0 + 2;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.inference);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v73[0] = v5;
    *v4 = 136315138;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v73);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start load Biome events from %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v9 = *(v0[16] + 24);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = BiomeStreaming.bookmark(for:)(v10, v11);

  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = (v13 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = static Array._allocateUninitialized(_:)();
  v16 = BiomeLibrary();
  v0[2] = 0;
  v17 = [v16 streamWithIdentifier:v9 error:aBlock];
  swift_unknownObjectRelease();
  v18 = v0[2];
  if (!v17)
  {
    v39 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v73[0] = v43;
      *v42 = 136315138;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v73);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "Unable to create stream from BMLibrary identifier:  %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
    }

    swift_unknownObjectRelease();

    goto LABEL_21;
  }

  v19 = objc_allocWithZone(BMPublisherOptions);
  v20 = v17;
  v21 = v18;
  v22 = [v19 initWithStartDate:0 endDate:0 maxEvents:100 lastN:100 reversed:0];
  v71 = v20;
  v23 = [v20 publisherWithOptions:v22];

  v24 = v0[16];
  if (!v23)
  {

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v73[0] = v50;
      *v49 = 136315138;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v73);

      *(v49 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v47, v48, "Unable to create publisher from BMLibrary identifier:  %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
    }

    swift_unknownObjectRelease();
LABEL_21:
    v64 = 0;
    goto LABEL_22;
  }

  v70 = v15;
  v25 = v0[15];
  v68 = v0[14];
  v26 = swift_allocObject();
  *(v26 + 16) = v13;
  *(v26 + 24) = v24;
  v0[6] = partial apply for closure #1 in BiomeStreaming.loadBiomeEventsFromBMLibrary<A>(eventType:maxRecords:);
  v0[7] = v26;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark) -> ();
  v0[5] = &block_descriptor;
  v67 = _Block_copy(aBlock);

  v27 = v23;

  v28 = swift_allocObject();
  v28[2] = v25;
  v28[3] = v24;
  v28[4] = v70;
  v28[5] = v68;
  v0[6] = partial apply for closure #2 in BiomeStreaming.loadBiomeEventsFromBMLibrary<A>(eventType:maxRecords:);
  v0[7] = v28;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool);
  v0[5] = &block_descriptor_12;
  v29 = _Block_copy(aBlock);

  v69 = v27;
  v30 = [v27 drivableSinkWithBookmark:v12 completion:v67 shouldContinue:v29];
  _Block_release(v29);
  _Block_release(v67);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v73[0] = v34;
    *v33 = 134218242;
    swift_beginAccess();

    v35 = Array.count.getter();

    *(v33 + 4) = v35;

    *(v33 + 12) = 2080;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v73);

    *(v33 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "Loaded %ld events from %s Biome stream.", v33, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {
  }

  swift_beginAccess();
  v54 = *v14;
  if (*v14)
  {
    swift_unknownObjectRetain_n();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v73[0] = v58;
      *v57 = 136315138;
      v0[8] = v54;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10BMBookmark_pMd, &_sSo10BMBookmark_pMR);
      v59 = String.init<A>(describing:)();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v73);

      *(v57 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v55, v56, "End Bookmark: %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
    }

    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    BiomeStreaming.saveBookmark(_:forKey:)(v54, v62, v63);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  swift_beginAccess();
  v64 = *(v70 + 16);

LABEL_22:
  v65 = v0[1];

  return v65(v64);
}

uint64_t BiomeStreaming.bookmark(for:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 valueForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33[0] = v31;
  v33[1] = v32;
  if (!*(&v32 + 1))
  {
    outlined destroy of NSObject?(v33, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v8 = objc_opt_self();
  v9 = [objc_opt_self() bm_allowedClassesForSecureCodingBMBookmark];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Set._bridgeToObjectiveC()().super.isa;

  v11 = Data._bridgeToObjectiveC()().super.isa;
  *&v33[0] = 0;
  v12 = [v8 unarchivedObjectOfClasses:isa fromData:v11 error:v33];

  if (!v12)
  {
    v21 = *&v33[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.inference);

    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v33[0] = v27;
      *v25 = 136315394;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v33);
      *(v25 + 12) = 2112;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v28;
      *v26 = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "Error decoding bookmark for %s : %@", v25, 0x16u);
      outlined destroy of NSObject?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0(v27);

      outlined consume of Data._Representation(v29, v30);
    }

    else
    {
      outlined consume of Data._Representation(v29, v30);
    }

    return 0;
  }

  v13 = *&v33[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10BMBookmark_pMd, &_sSo10BMBookmark_pMR);
  if (swift_dynamicCast())
  {
    v14 = v31;
  }

  else
  {
    v14 = 0;
  }

  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.inference);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v33[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v33);
    _os_log_impl(&_mh_execute_header, v16, v17, "Bookmark for %s found", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  outlined consume of Data._Representation(v29, v30);

  return v14;
}

void closure #1 in BiomeStreaming.loadBiomeEventsFromBMLibrary<A>(eventType:maxRecords:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 state];
  if (v7)
  {
    if (v7 == 1)
    {
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.inference);
      v9 = a1;
      oslog = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v37[0] = v12;
        *v11 = 136315138;
        v13 = [v9 error];
        if (v13)
        {
          v14 = v13;
          swift_getErrorValue();
          v15 = Error.localizedDescription.getter();
          v17 = v16;
        }

        else
        {
          v17 = 0xE300000000000000;
          v15 = 7104878;
        }

        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v37);

        *(v11 + 4) = v34;
        v32 = "Error on stream with %s";
        v33 = v10;
        goto LABEL_22;
      }
    }

    else
    {
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.inference);

      oslog = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v28))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v37[0] = v12;
        *v11 = 136315138;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v37);

        *(v11 + 4) = v31;
        v32 = "Unexpected completion state on stream %s";
        v33 = v28;
LABEL_22:
        _os_log_impl(&_mh_execute_header, oslog, v33, v32, v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);

        return;
      }
    }
  }

  else
  {
    swift_beginAccess();
    *(a3 + 16) = a2;
    swift_unknownObjectRelease();
    v18 = one-time initialization token for inference;
    swift_unknownObjectRetain();
    if (v18 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.inference);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 136315138;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v36);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Read stream %s completed", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

uint64_t closure #2 in BiomeStreaming.loadBiomeEventsFromBMLibrary<A>(eventType:maxRecords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 eventBody];
    if (v7)
    {
      v8 = v7;
      v9 = specialized BiomeStreaming.applyFilter(eventBody:)(v8);

      if (v9)
      {
        swift_beginAccess();

        v10 = Array.count.getter();

        if (v10 <= a4)
        {
          swift_beginAccess();
          type metadata accessor for Array();
          v19 = v8;
          Array.append(_:)();
          swift_endAccess();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.inference);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Event missing body data", v18, 2u);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.inference);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Can't get BMStoreEvent out of the stream", v14, 2u);
    }
  }

  return 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

void BiomeStreaming.saveBookmark(_:forKey:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.inference);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v33);
    _os_log_impl(&_mh_execute_header, v9, v10, "Saving bookmark for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  v13 = objc_opt_self();
  v33 = 0;
  v14 = [v13 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v33];
  v15 = v33;
  if (v14)
  {
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v33);
      _os_log_impl(&_mh_execute_header, v19, v20, "Saved bookmark for %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    v23 = *(v4 + 16);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v25 = String._bridgeToObjectiveC()();
    [v23 setValue:isa forKey:v25];

    outlined consume of Data._Representation(v16, v18);
  }

  else
  {
    v26 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v29 = 136315394;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v33);
      *(v29 + 12) = 2112;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v32;
      *v30 = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "Error encoding bookmark for %s: %@", v29, 0x16u);
      outlined destroy of NSObject?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0(v31);
    }

    else
    {
    }
  }
}

uint64_t BiomeStreaming.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10001E430()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E468()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E4A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001E500()
{

  return _swift_deallocObject(v0, 48, 7);
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

id specialized BiomeStreaming.applyFilter(eventBody:)(id a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = one-time initialization token for inference;
    v37 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.inference);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "PSE specific - Apply intent use case filter", v8, 2u);
    }

    v9 = 4;
    v10 = &unk_100039270;
    do
    {

      v11 = [v3 taskType];
      if (v11)
      {
        v12 = v11;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v13 = String.lowercased()();

        v38 = v13;
        lazy protocol witness table accessor for type String and conformance String();
        LOBYTE(v12) = StringProtocol.contains<A>(_:)();

        if (v12)
        {
          a1 = v37;
          v14 = Logger.logObject.getter();
          v15 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            v17 = swift_slowAlloc();
            v38._countAndFlagsBits = v17;
            *v16 = 136315138;
            v18 = [v3 taskType];
            if (v18)
            {
              v19 = v18;
              v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v22 = v21;
            }

            else
            {
              v20 = 0x6E776F6E6B6E55;
              v22 = 0xE700000000000000;
            }

            v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v38._countAndFlagsBits);

            *(v16 + 4) = v34;
            _os_log_impl(&_mh_execute_header, v14, v15, "Found target intent: %s", v16, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v17);
          }

          else
          {
          }

          goto LABEL_24;
        }
      }

      else
      {
      }

      v10 += 16;
      --v9;
    }

    while (v9);
    v23 = v37;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38._countAndFlagsBits = v27;
      *v26 = 136315138;
      v28 = [v3 taskType];
      if (v28)
      {
        v29 = v28;
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;
      }

      else
      {
        v30 = 0x6E776F6E6B6E55;
        v32 = 0xE700000000000000;
      }

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v38._countAndFlagsBits);

      *(v26 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "Unsupported target intent: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
    }

    else
    {
    }

    return 0;
  }

  else
  {
LABEL_24:
    v35 = a1;
  }

  return a1;
}

uint64_t dispatch thunk of ConversationTrajectoryBuilder.build(event:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = UserAlignmentScoreReporter.reportWithMetaData(response:data:);

  return v15(a1, a2, a3, a4, a5, a6);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ObservabilityConfig(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for ObservabilityConfig(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t ObservabilityManager.__allocating_init(config:builder:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  ObservabilityManager.init(config:builder:)(a1, a2, a3, a4);
  return v8;
}

uint64_t ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[7] = v5;
  v4[8] = v7;

  return _swift_task_switch(ObservabilityManager.buildUserJourney(maxRecords:), v5, v7);
}

uint64_t ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1)
{
  v16 = v1;
  static Task<>.checkCancellation()();
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v1[9] = __swift_project_value_buffer(v2, static Logger.inference);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Build user engagement journey from %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v10 = swift_task_alloc();
  v1[10] = v10;
  *v10 = v1;
  v10[1] = ObservabilityManager.buildUserJourney(maxRecords:);
  v11 = v1[5];
  v13 = v1[3];
  v12 = v1[4];

  return specialized ObservabilityManager.loadPSEAsReferenceEvents(maxRecords:)(v13, v12, v11);
}

{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 88) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 56);
    v8 = *(v3 + 64);

    return _swift_task_switch(ObservabilityManager.buildUserJourney(maxRecords:), v7, v8);
  }
}

uint64_t ObservabilityManager.buildUserJourney(maxRecords:)()
{
  v25 = v0;
  v1 = v0[11];
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v24 = v6;
      *v5 = 134218242;
      if (v1 >> 62)
      {
        v7 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v5 + 4) = v7;

      *(v5 + 12) = 2080;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v24);

      *(v5 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "Loaded %ld reference events from %s", v5, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    else
    {
    }

    v16 = v0[11];
    v17 = v0[6];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18InferenceExtension21UserEngagementFeatureCSgMd, &_s18InferenceExtension21UserEngagementFeatureCSgMR);
    v19 = swift_task_alloc();
    v0[12] = v19;
    *(v19 + 16) = v16;
    *(v19 + 24) = v17;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18InferenceExtension21UserEngagementFeatureCGMd, &_sSay18InferenceExtension21UserEngagementFeatureCGMR);
    v21 = swift_task_alloc();
    v0[13] = v21;
    *v21 = v0;
    v21[1] = specialized ObservabilityManager.buildUserJourney(maxRecords:);
    v22 = v0[3];
    v23 = v0[4];
    v27 = v20;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v18, v20, v22, v23, &async function pointer to partial apply for closure #1 in ObservabilityManager.buildUserJourney(maxRecords:), v19, v18);
  }

  else
  {

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "No PSE events found from PSE Biome stream, existing inference task", v10, 2u);
    }

    v11 = v0[1];

    return v11(_swiftEmptyArrayStorage);
  }
}

uint64_t _s18InferenceExtension14BiomeStreamingC04loadC19EventsFromBMLibrary9eventType10maxRecordsSayxGSgxm_SitYaSo11BMEventBaseCRbzSo11BMStoreDataRzlFSo24BMSiriPostSiriEngagementC_Tt0g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 112) = a3;
  *(v4 + 120) = v3;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return _swift_task_switch(_s18InferenceExtension14BiomeStreamingC04loadC19EventsFromBMLibrary9eventType10maxRecordsSayxGSgxm_SitYaSo11BMEventBaseCRbzSo11BMStoreDataRzlFSo24BMSiriPostSiriEngagementC_Tt0g5TY0_, v5, v7);
}

uint64_t _s18InferenceExtension14BiomeStreamingC04loadC19EventsFromBMLibrary9eventType10maxRecordsSayxGSgxm_SitYaSo11BMEventBaseCRbzSo11BMStoreDataRzlFSo24BMSiriPostSiriEngagementC_Tt0g5TY0_()
{
  v73 = v0;
  aBlock = v0 + 2;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.inference);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v72[0] = v5;
    *v4 = 136315138;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v72);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start load Biome events from %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v9 = *(v0[15] + 24);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = BiomeStreaming.bookmark(for:)(v10, v11);

  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = _swiftEmptyArrayStorage;
  v15 = (v14 + 16);
  v16 = BiomeLibrary();
  v0[2] = 0;
  v17 = [v16 streamWithIdentifier:v9 error:aBlock];
  swift_unknownObjectRelease();
  v18 = v0[2];
  if (!v17)
  {
    v38 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v72[0] = v42;
      *v41 = 136315138;
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v72);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "Unable to create stream from BMLibrary identifier:  %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
    }

    swift_unknownObjectRelease();

    goto LABEL_23;
  }

  v69 = (v13 + 16);
  v19 = objc_allocWithZone(BMPublisherOptions);
  v20 = v17;
  v21 = v18;
  v22 = [v19 initWithStartDate:0 endDate:0 maxEvents:100 lastN:100 reversed:0];
  v70 = v20;
  v23 = [v20 publisherWithOptions:v22];

  v24 = v0[15];
  if (!v23)
  {

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v72[0] = v49;
      *v48 = 136315138;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v72);

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "Unable to create publisher from BMLibrary identifier:  %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
    }

    swift_unknownObjectRelease();
LABEL_23:
    v63 = 0;
    goto LABEL_24;
  }

  v67 = v0[14];
  v25 = swift_allocObject();
  *(v25 + 16) = v13;
  *(v25 + 24) = v24;
  v0[6] = partial apply for closure #1 in BiomeStreaming.loadBiomeEventsFromBMLibrary<A>(eventType:maxRecords:);
  v0[7] = v25;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed BPSCompletion, @guaranteed BMBookmark) -> ();
  v0[5] = &block_descriptor_0;
  v66 = _Block_copy(aBlock);

  v26 = v23;

  v27 = swift_allocObject();
  v27[2] = v24;
  v27[3] = v14;
  v27[4] = v67;
  v0[6] = partial apply for specialized closure #2 in BiomeStreaming.loadBiomeEventsFromBMLibrary<A>(eventType:maxRecords:);
  v0[7] = v27;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool);
  v0[5] = &block_descriptor_29;
  v28 = _Block_copy(aBlock);

  v68 = v26;
  v29 = [v26 drivableSinkWithBookmark:v12 completion:v66 shouldContinue:v28];
  _Block_release(v28);
  _Block_release(v66);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v72[0] = v33;
    *v32 = 134218242;
    swift_beginAccess();
    if (*v15 >> 62)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v32 + 4) = v34;

    *(v32 + 12) = 2080;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v72);

    *(v32 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v30, v31, "Loaded %ld events from %s Biome stream.", v32, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  else
  {
  }

  swift_beginAccess();
  v53 = *v69;
  if (*v69)
  {
    swift_unknownObjectRetain_n();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v72[0] = v57;
      *v56 = 136315138;
      v0[8] = v53;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10BMBookmark_pMd, &_sSo10BMBookmark_pMR);
      v58 = String.init<A>(describing:)();
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v72);

      *(v56 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v54, v55, "End Bookmark: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
    }

    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    BiomeStreaming.saveBookmark(_:forKey:)(v53, v61, v62);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  swift_beginAccess();
  v63 = *(v14 + 16);

LABEL_24:
  v64 = v0[1];

  return v64(v63);
}

uint64_t specialized closure #2 in BiomeStreaming.loadBiomeEventsFromBMLibrary<A>(eventType:maxRecords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 eventBody];
    if (v7)
    {
      v8 = v7;
      v9 = specialized BiomeStreaming.applyFilter(eventBody:)(v8);

      if (!v9)
      {
        swift_unknownObjectRelease();

        return 1;
      }

      swift_beginAccess();
      v10 = *(a3 + 16);
      if (v10 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() <= a4)
        {
          goto LABEL_6;
        }
      }

      else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a4)
      {
LABEL_6:
        swift_beginAccess();
        v8 = v8;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }

      swift_unknownObjectRelease();

      return 1;
    }

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.inference);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Event missing body data", v18, 2u);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.inference);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Can't get BMStoreEvent out of the stream", v14, 2u);
    }
  }

  return 1;
}

uint64_t ObservabilityManager.config.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  v4 = v2;
  v5 = v3;
  return v1;
}

char *ObservabilityManager.init(config:builder:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = *v4;
  *(v4 + 2) = a1;
  *(v4 + 3) = a2;
  *(v4 + 4) = a3;
  type metadata accessor for BiomeStreaming();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v4 + 5) = v9;
  (*(*(*(v8 + 80) - 8) + 32))(&v4[*(v8 + 112)], a4);
  v10 = a2;
  v11 = a3;
  return v4;
}

uint64_t closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVy18InferenceExtension21UserEngagementFeatureCSg_GMd, &_sScG8IteratorVy18InferenceExtension21UserEngagementFeatureCSg_GMR);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return _swift_task_switch(closure #1 in ObservabilityManager.buildUserJourney(maxRecords:), 0, 0);
}

{
  v5 = *(v4 + 104);
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_17:
    *(v4 + 72) = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18InferenceExtension21UserEngagementFeatureCSgMd, &_s18InferenceExtension21UserEngagementFeatureCSgMR);
    TaskGroup.makeAsyncIterator()();
    *(v4 + 160) = _swiftEmptyArrayStorage;
    v25 = swift_task_alloc();
    *(v4 + 168) = v25;
    *v25 = v4;
    v25[1] = closure #1 in ObservabilityManager.buildUserJourney(maxRecords:);
    a4 = *(v4 + 120);
    v6 = v4 + 80;
    a2 = 0;
    a3 = 0;

    return TaskGroup.Iterator.next(isolation:)(v6, a2, a3, a4);
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    v27 = *(v4 + 104) + 32;
    v28 = **(v4 + 96);
    v29 = v5 & 0xC000000000000001;
    v30 = v6;
    while (1)
    {
      if (v29)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v27 + 8 * v7);
      }

      v10 = v9;
      v12 = *(v4 + 144);
      v11 = *(v4 + 152);
      v13 = *(v4 + 112);
      v14 = type metadata accessor for TaskPriority();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v11, 1, 1, v14);
      v16 = swift_allocObject();
      v16[2] = 0;
      v17 = v16 + 2;
      v16[3] = 0;
      v16[4] = v13;
      v16[5] = v10;
      outlined init with copy of TaskPriority?(v11, v12);
      LODWORD(v11) = (*(v15 + 48))(v12, 1, v14);

      v18 = v10;

      v19 = *(v4 + 144);
      if (v11 == 1)
      {
        outlined destroy of TaskPriority?(*(v4 + 144));
        if (!*v17)
        {
          goto LABEL_13;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v15 + 8))(v19, v14);
        if (!*v17)
        {
LABEL_13:
          v20 = 0;
          v22 = 0;
          goto LABEL_14;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v20 = dispatch thunk of Actor.unownedExecutor.getter();
      v22 = v21;
      swift_unknownObjectRelease();
LABEL_14:
      v23 = swift_allocObject();
      *(v23 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:);
      *(v23 + 24) = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s18InferenceExtension21UserEngagementFeatureCSgMd, &_s18InferenceExtension21UserEngagementFeatureCSgMR);
      v24 = v22 | v20;
      if (v22 | v20)
      {
        v24 = v4 + 16;
        *(v4 + 16) = 0;
        *(v4 + 24) = 0;
        *(v4 + 32) = v20;
        *(v4 + 40) = v22;
      }

      ++v7;
      v8 = *(v4 + 152);
      *(v4 + 48) = 1;
      *(v4 + 56) = v24;
      *(v4 + 64) = v28;
      swift_task_create();

      outlined destroy of TaskPriority?(v8);
      if (v30 == v7)
      {
        goto LABEL_17;
      }
    }
  }

  __break(1u);
  return TaskGroup.Iterator.next(isolation:)(v6, a2, a3, a4);
}

uint64_t closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)()
{

  return _swift_task_switch(closure #1 in ObservabilityManager.buildUserJourney(maxRecords:), 0, 0);
}

{
  v1 = v0[10];
  if (v1 == 1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.inference);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[20];
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      if (v8 >> 62)
      {
        v15 = v9;
        v10 = _CocoaArrayWrapper.endIndex.getter();
        v9 = v15;
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v9 + 4) = v10;
      v11 = v9;

      _os_log_impl(&_mh_execute_header, v5, v6, "Produced User Engagement contexturization for %ld events", v11, 0xCu);
    }

    else
    {
    }

    v12 = v0[20];
    v13 = v0[11];

    *v13 = v12;

    v14 = v0[1];

    return v14();
  }

  else
  {
    if (v1)
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v0[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      outlined consume of UserEngagementFeature??(v1);
      v0[20] = v0[9];
    }

    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = closure #1 in ObservabilityManager.buildUserJourney(maxRecords:);
    v3 = v0[15];

    return TaskGroup.Iterator.next(isolation:)(v0 + 10, 0, 0, v3);
  }
}

uint64_t closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = *a4;
  return _swift_task_switch(closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:), 0, 0);
}

uint64_t closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)()
{
  v1 = v0[5];
  v2 = v0[3];
  v4 = *(v1 + 80);
  v3 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  v5 = swift_dynamicCastUnknownClassUnconditional();
  v6 = *(v2 + 16);
  v9 = (*(v3 + 16) + **(v3 + 16));
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:);

  return v9(0, 0, v5, v6, v4, v3);
}

{
  **(v0 + 16) = *(v0 + 56);
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return _swift_task_switch(closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:), 0, 0);
}

uint64_t *ObservabilityManager.deinit()
{
  v1 = *v0;
  v2 = v0[3];

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  return v0;
}

uint64_t ObservabilityManager.__deallocating_deinit()
{
  ObservabilityManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t partial apply for closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:);

  return closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(a1, a2, v7, v6);
}

uint64_t type metadata completion function for ObservabilityManager(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR18InferenceExtension21UserEngagementFeatureCSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR18InferenceExtension21UserEngagementFeatureCSg_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR18InferenceExtension21UserEngagementFeatureCSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100021324()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of SELFReporter.report(event:);

  return closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:)(a1, v4, v5, v7, v6);
}

uint64_t sub_10002142C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021464()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002149C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_22Tm(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t SupportedUseCases.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6D72616C41;
  v2 = 0x736C6C6143;
  v3 = 1936744781;
  if (a1 != 3)
  {
    v3 = 0x6F70707553746F4ELL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x636973754DLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SupportedUseCases(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6D72616C41;
  v3 = *a1;
  v4 = *a2;
  v5 = 0xE500000000000000;
  v6 = 0x736C6C6143;
  v7 = 0xE400000000000000;
  v8 = 1936744781;
  if (v3 != 3)
  {
    v8 = 0x6F70707553746F4ELL;
    v7 = 0xEC00000064657472;
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x636973754DLL;
  if (!*a1)
  {
    v9 = 0x6D72616C41;
  }

  if (*a1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v3 <= 1)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = v5;
  }

  v12 = 0xE500000000000000;
  v13 = 0x736C6C6143;
  v14 = 0xE400000000000000;
  v15 = 1936744781;
  if (v4 != 3)
  {
    v15 = 0x6F70707553746F4ELL;
    v14 = 0xEC00000064657472;
  }

  if (v4 != 2)
  {
    v13 = v15;
    v12 = v14;
  }

  if (*a2)
  {
    v2 = 0x636973754DLL;
  }

  if (*a2 <= 1u)
  {
    v16 = v2;
  }

  else
  {
    v16 = v13;
  }

  if (*a2 <= 1u)
  {
    v17 = 0xE500000000000000;
  }

  else
  {
    v17 = v12;
  }

  if (v10 == v16 && v11 == v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v18 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SupportedUseCases()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SupportedUseCases(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SupportedUseCases(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SupportedUseCases@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SupportedUseCases.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SupportedUseCases(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6D72616C41;
  v5 = 0xE500000000000000;
  v6 = 0x736C6C6143;
  v7 = 0xE400000000000000;
  v8 = 1936744781;
  if (v2 != 3)
  {
    v8 = 0x6F70707553746F4ELL;
    v7 = 0xEC00000064657472;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x636973754DLL;
    v3 = 0xE500000000000000;
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

uint64_t PSETrajectoryBuilder.build(event:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = UserAlignmentScoreReporter.reportWithMetaData(response:data:);

  return specialized PSETrajectoryBuilder.build(event:with:)(a1, a2, a3);
}

uint64_t PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[6] = v4;
  v3[7] = v6;

  return _swift_task_switch(PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:), v4, v6);
}

uint64_t PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)()
{
  v1 = v0[5];
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = v0[5];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_18InferenceExtension10PSEFeatureVtMd, &_sSi_18InferenceExtension10PSEFeatureVtMR);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18InferenceExtension10PSEFeatureVGMd, &_sSay18InferenceExtension10PSEFeatureVGMR);
    v5 = swift_task_alloc();
    v0[8] = v5;
    *(v5 + 16) = v2;
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:);
    v7 = v0[3];
    v8 = v0[4];

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v3, v4, v7, v8, &async function pointer to partial apply for closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:), v5, v3);
  }

  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.inference);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Empty BMSiriPostSiriEngagementSignal list, unable to create PSEFeature", v12, 2u);
  }

  v13 = v0[1];

  return v13(_swiftEmptyArrayStorage);
}

{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:), v3, v2);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 40;
    do
    {

      v6._countAndFlagsBits = specialized static FeatureUtil.prettyPrintEngagements(engagements:)(v3);
      v6._object = v4;
      v5._countAndFlagsBits = 10;
      v5._object = 0xE100000000000000;
      String.append(_:)(v5);
      String.append(_:)(v6);

      v2 += 16;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySi_18InferenceExtension10PSEFeatureVt_GMd, &_sScG8IteratorVySi_18InferenceExtension10PSEFeatureVt_GMR);
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();

  return _swift_task_switch(closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:), 0, 0);
}

uint64_t closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)()
{
  v1 = *(v0 + 112);
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v24 = *(v0 + 112) + 32;
    v25 = i;
    while (1)
    {
      if (v27)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v26 + 16))
        {
          goto LABEL_18;
        }

        v5 = *(v24 + 8 * v3);
      }

      v1 = v5;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = *(v0 + 120);
      v7 = *(v0 + 128);
      v9 = type metadata accessor for TaskPriority();
      v10 = *(v9 - 8);
      (*(v10 + 56))(v7, 1, 1, v9);
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = 0;
      v11[4] = v1;
      v11[5] = v3;
      outlined init with copy of TaskPriority?(v7, v8);
      LODWORD(v7) = (*(v10 + 48))(v8, 1, v9);
      v13 = v1;
      v14 = *(v0 + 120);
      if (v7 == 1)
      {
        outlined destroy of NSObject?(*(v0 + 120), &_sScPSgMd, &_sScPSgMR);
        if (!*v12)
        {
          goto LABEL_13;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v10 + 8))(v14, v9);
        if (!*v12)
        {
LABEL_13:
          v15 = 0;
          v17 = 0;
          goto LABEL_14;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      swift_unknownObjectRelease();
LABEL_14:
      v18 = **(v0 + 104);
      v19 = swift_allocObject();
      *(v19 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:);
      *(v19 + 24) = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_18InferenceExtension10PSEFeatureVtMd, &_sSi_18InferenceExtension10PSEFeatureVtMR);
      v20 = v17 | v15;
      if (v17 | v15)
      {
        v20 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v17;
      }

      v4 = *(v0 + 128);
      *(v0 + 48) = 1;
      *(v0 + 56) = v20;
      *(v0 + 64) = v18;
      v1 = swift_task_create();

      outlined destroy of NSObject?(v4, &_sScPSgMd, &_sScPSgMR);
      ++v3;
      if (v6 == v25)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_18InferenceExtension10PSEFeatureVtMd, &_sSi_18InferenceExtension10PSEFeatureVtMR);
  TaskGroup.makeAsyncIterator()();
  *(v0 + 160) = _swiftEmptyArrayStorage;
  v21 = swift_task_alloc();
  *(v0 + 168) = v21;
  *v21 = v0;
  v21[1] = closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:);
  v22 = *(v0 + 136);

  return TaskGroup.Iterator.next(isolation:)(v0 + 72, 0, 0, v22);
}

{

  return _swift_task_switch(closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:), 0, 0);
}

{
  v28 = v0;
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 160);
  if (v1)
  {
    v4 = *(v0 + 88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    }

    v8 = v6[2];
    v7 = v6[3];
    if (v8 >= v7 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
    }

    v6[2] = v8 + 1;
    v9 = &v6[3 * v8];
    v9[4] = v2;
    v9[5] = v1;
    *(v9 + 48) = v4 & 1;
    *(v0 + 160) = v6;
    v10 = swift_task_alloc();
    *(v0 + 168) = v10;
    *v10 = v0;
    v10[1] = closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:);
    v11 = *(v0 + 136);

    return TaskGroup.Iterator.next(isolation:)(v0 + 72, 0, 0, v11);
  }

  else
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    v27 = v3;

    specialized MutableCollection<>.sort(by:)(&v27);
    v12 = v27;
    v13 = v27[2];
    if (v13)
    {
      v26 = v0;
      v27 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
      v14 = 0;
      v15 = v27;
      v16 = v27[2];
      v17 = 2 * v16;
      do
      {
        v18 = v12;
        v19 = v12[v14 + 5];
        v20 = v12[v14 + 6];
        v27 = v15;
        v21 = v15[3];
        v22 = v16 + 1;

        if (v16 >= v21 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22, 1);
          v15 = v27;
        }

        v15[2] = v22;
        v23 = &v15[v17];
        v23[4] = v19;
        *(v23 + 40) = v20;
        v17 += 2;
        v14 += 3;
        ++v16;
        --v13;
        v12 = v18;
      }

      while (v13);
      v0 = v26;
    }

    else
    {

      v15 = _swiftEmptyArrayStorage;
    }

    **(v0 + 96) = v15;

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t closure #1 in closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(closure #1 in closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:), 0, 0);
}

uint64_t closure #1 in closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)()
{
  v1 = [*(v0 + 24) domain];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xE300000000000000;
    v3 = 4999502;
  }

  *(v0 + 40) = v5;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = closure #1 in closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:);
  v7 = *(v0 + 24);

  return specialized PSETrajectoryBuilder.extractFeatures(from:for:)(0, 0, v7, v3, v5);
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  *v3 = *(v0 + 32);
  *(v3 + 8) = v2;
  *(v3 + 16) = v1;
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;

  return _swift_task_switch(closure #1 in closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:), 0, 0);
}

Swift::String __swiftcall String.titleCase()()
{
  v2 = v1;
  v3 = v0;
  v22 = type metadata accessor for CharacterSet();
  v4 = *(v22 - 8);
  __chkstk_darwin(v22);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v31 = v3;
  v32 = v2;
  v29 = 0x295D5A2D415B28;
  v30 = 0xE700000000000000;
  v27 = 3220512;
  v28 = 0xE300000000000000;
  v25 = v3;
  v26 = v2;
  v23 = v3;
  v24 = v2;
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.range<A>(of:options:range:locale:)();
  outlined destroy of NSObject?(v9, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v32 = v11;
  static CharacterSet.whitespacesAndNewlines.getter();
  v12 = StringProtocol.trimmingCharacters(in:)();
  v14 = v13;
  (*(v4 + 8))(v6, v22);

  v31 = v12;
  v32 = v14;
  v15 = StringProtocol.capitalized.getter();
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t protocol witness for ConversationTrajectoryBuilder.build(event:with:) in conformance PSETrajectoryBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = protocol witness for ConversationTrajectoryBuilder.build(event:with:) in conformance PSETrajectoryBuilder;

  return specialized PSETrajectoryBuilder.build(event:with:)(a1, a2, a3);
}

uint64_t protocol witness for ConversationTrajectoryBuilder.build(event:with:) in conformance PSETrajectoryBuilder(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);

  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v3 + 40) = a1;

  return _swift_task_switch(protocol witness for ConversationTrajectoryBuilder.build(event:with:) in conformance PSETrajectoryBuilder, v5, v7);
}

void *specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
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
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignal, BMSiriPostSiriEngagementSignal_ptr);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_9;
  }

  v17 = 24 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v18 = v6 - 24;
    v5 -= 24;
    v19 = v13;
    do
    {
      v20 = (v5 + 24);
      v21 = *(v19 - 24);
      v19 -= 24;
      if (v21 < *v18)
      {
        if (v20 != v6)
        {
          v23 = *v18;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v23;
        }

        if (v13 <= v4 || (v6 -= 24, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v20 != v13)
      {
        v22 = *v19;
        *(v5 + 16) = *(v19 + 16);
        *v5 = v22;
      }

      v5 -= 24;
      v13 = v19;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_31:
  v24 = 24 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v24])
  {
    memmove(v6, v4, v24);
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

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_18InferenceExtension10PSEFeatureVt_TG5(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_18InferenceExtension10PSEFeatureVt_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_18InferenceExtension10PSEFeatureVt_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;

  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  v6 = *(v3 + 8);

  return v6();
}

BOOL specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t specialized PSETrajectoryBuilder.loadSiriConversation(collectionWindow:ids:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 80) = a3;
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  if (a1)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *(v5 + 88) = v6;
  *(v5 + 96) = v8;

  return _swift_task_switch(specialized PSETrajectoryBuilder.loadSiriConversation(collectionWindow:ids:), v6, v8);
}

uint64_t specialized PSETrajectoryBuilder.loadSiriConversation(collectionWindow:ids:)()
{
  v1 = swift_task_alloc();
  *(v0 + 13) = v1;
  *v1 = v0;
  v1[1] = specialized PSETrajectoryBuilder.loadSiriConversation(collectionWindow:ids:);
  v2 = *(v0 + 10);
  v3 = v0[8];
  v4 = v0[9];
  v6 = *(v0 + 6);
  v5 = *(v0 + 7);

  return ConversationLoader.retrieveConversationFor(ids:)(v6, v5, v2, 32, 0xE100000000000000, v3, v4);
}

{
  v12 = v0;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.inference);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to retrieve conversation for trajectory building: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9(0);
}

uint64_t specialized PSETrajectoryBuilder.loadSiriConversation(collectionWindow:ids:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v6 = *(v4 + 88);
    v7 = *(v4 + 96);

    return _swift_task_switch(specialized PSETrajectoryBuilder.loadSiriConversation(collectionWindow:ids:), v6, v7);
  }

  else
  {
    v8 = *(v5 + 8);

    return v8(a1);
  }
}

uint64_t specialized PSETrajectoryBuilder.getPSEMetaData(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a1;
  *(v4 + 56) = a4;
  if (a2)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return _swift_task_switch(specialized PSETrajectoryBuilder.getPSEMetaData(event:), v5, v7);
}

uint64_t specialized PSETrajectoryBuilder.getPSEMetaData(event:)()
{
  v1 = [v0[3]._object taskType];
  if (!v1)
  {
    v10 = [v0[3]._object lastRequestId];
    if (v10)
    {
      v11 = v10;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v12;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v22 = [v0[3]._object taskID];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v27 = [v0[3]._object pseEvents];
    type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignal, BMSiriPostSiriEngagementSignal_ptr);
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v28 >> 62)
    {
LABEL_77:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_78;
      }

LABEL_19:
      if ((v28 & 0xC000000000000001) == 0)
      {
        if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_84;
        }

        goto LABEL_21;
      }

LABEL_82:
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_22;
    }

    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    goto LABEL_78;
  }

  v2 = v1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = String.lowercased()();

  v0[1] = v3;
  v0[2]._countAndFlagsBits = 0x6C61657461657263;
  v0[2]._object = 0xEB000000006D7261;
  lazy protocol witness table accessor for type String and conformance String();
  if ((StringProtocol.contains<A>(_:)() & 1) == 0)
  {
    v0[1] = v3;
    v0[2]._countAndFlagsBits = 0x6964656D79616C70;
    v0[2]._object = 0xE900000000000061;
    if (StringProtocol.contains<A>(_:)())
    {
      object = v0[3]._object;

      v14 = [object lastRequestId];
      if (v14)
      {
        v15 = v14;
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v16;
      }

      else
      {
        v7 = 0;
        v9 = 0;
      }

      v47 = [v0[3]._object taskID];
      if (v47)
      {
        v48 = v47;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v49;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v50 = [v0[3]._object pseEvents];
      type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignal, BMSiriPostSiriEngagementSignal_ptr);
      v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v38 >> 62))
      {
        if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_87:

          v42 = 1;
          v32 = 0;
          v33 = 1;
          goto LABEL_97;
        }

        goto LABEL_42;
      }

LABEL_86:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_87;
      }

LABEL_42:
      if ((v38 & 0xC000000000000001) != 0)
      {
        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_45;
      }

      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v51 = *(v38 + 32);
LABEL_45:
        v52 = v51;

        [v52 donatedTimestamp];
        v32 = v53;

        v33 = 0;
        v42 = 1;
        goto LABEL_97;
      }

      __break(1u);
      goto LABEL_90;
    }

    v0[1] = v3;
    v0[2]._countAndFlagsBits = 0x6C61637472617473;
    v0[2]._object = 0xE90000000000006CLL;
    v17 = StringProtocol.contains<A>(_:)();
    v18 = v0[3]._object;
    if (v17)
    {

      v19 = [v18 lastRequestId];
      if (v19)
      {
        v20 = v19;
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v21;
      }

      else
      {
        v7 = 0;
        v9 = 0;
      }

      v56 = [v0[3]._object taskID];
      if (v56)
      {
        v57 = v56;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v58;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v59 = [v0[3]._object pseEvents];
      type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignal, BMSiriPostSiriEngagementSignal_ptr);
      v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v38 >> 62))
      {
        if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_91:

          v42 = 0;
          v33 = 1;
          v32 = 0;
          goto LABEL_97;
        }

        goto LABEL_54;
      }

LABEL_90:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_91;
      }

LABEL_54:
      if ((v38 & 0xC000000000000001) != 0)
      {
        v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_57;
      }

      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v60 = *(v38 + 32);
LABEL_57:
        v61 = v60;

        [v61 donatedTimestamp];
        v32 = v62;

        v42 = 0;
        v33 = 0;
        goto LABEL_97;
      }

      __break(1u);
      goto LABEL_94;
    }

    v0[1] = v3;
    v0[2]._countAndFlagsBits = 1936744813;
    v0[2]._object = 0xE400000000000000;
    v43 = StringProtocol.contains<A>(_:)();

    v44 = [v18 lastRequestId];
    if (v43)
    {
      if (v44)
      {
        v45 = v44;
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v46;
      }

      else
      {
        v7 = 0;
        v9 = 0;
      }

      v63 = [v0[3]._object taskID];
      if (v63)
      {
        v64 = v63;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v65;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v69 = [v0[3]._object pseEvents];
      type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignal, BMSiriPostSiriEngagementSignal_ptr);
      v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v38 >> 62))
      {
        result = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
LABEL_95:

          v33 = 1;
          v32 = 0;
LABEL_96:
          v42 = 3;
          goto LABEL_97;
        }

LABEL_67:
        if ((v38 & 0xC000000000000001) != 0)
        {
          v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v71 = *(v38 + 32);
        }

        v72 = v71;

        [v72 donatedTimestamp];
        v32 = v73;

        v33 = 0;
        goto LABEL_96;
      }

LABEL_94:
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_95;
      }

      goto LABEL_67;
    }

    if (v44)
    {
      v54 = v44;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v55;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v66 = [v0[3]._object taskID];
    if (v66)
    {
      v67 = v66;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v68;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v74 = [v0[3]._object pseEvents];
    type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignal, BMSiriPostSiriEngagementSignal_ptr);
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v28 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_78;
      }

      goto LABEL_74;
    }

    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_74:
      if ((v28 & 0xC000000000000001) != 0)
      {
        goto LABEL_82;
      }

      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_21:
        v29 = *(v28 + 32);
LABEL_22:
        v30 = v29;

        [v30 donatedTimestamp];
        v32 = v31;

        v33 = 0;
LABEL_79:
        v42 = 4;
        goto LABEL_97;
      }

      __break(1u);
      goto LABEL_77;
    }

LABEL_78:

    v33 = 1;
    v32 = 0;
    goto LABEL_79;
  }

  v4 = v0[3]._object;

  v5 = [v4 lastRequestId];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v34 = [v0[3]._object taskID];
  if (v34)
  {
    v35 = v34;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v36;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v37 = [v0[3]._object pseEvents];
  type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignal, BMSiriPostSiriEngagementSignal_ptr);
  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v38 >> 62))
  {
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

LABEL_81:

    v33 = 1;
    v32 = 0;
    v42 = 2;
    goto LABEL_97;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_81;
  }

LABEL_29:
  if ((v38 & 0xC000000000000001) != 0)
  {
LABEL_84:
    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_32;
  }

  if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_86;
  }

  v39 = *(v38 + 32);
LABEL_32:
  v40 = v39;

  [v40 donatedTimestamp];
  v32 = v41;

  v33 = 0;
  v42 = 2;
LABEL_97:
  countAndFlagsBits = v0[3]._countAndFlagsBits;
  *countAndFlagsBits = v42;
  *(countAndFlagsBits + 8) = v7;
  *(countAndFlagsBits + 16) = v9;
  *(countAndFlagsBits + 24) = v24;
  *(countAndFlagsBits + 32) = v26;
  *(countAndFlagsBits + 40) = v32;
  *(countAndFlagsBits + 48) = v33;
  v76 = v0->_object;

  return v76();
}

uint64_t specialized PSETrajectoryBuilder.build(event:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[30] = v4;
  v3[31] = v6;

  return _swift_task_switch(specialized PSETrajectoryBuilder.build(event:with:), v4, v6);
}

uint64_t specialized PSETrajectoryBuilder.build(event:with:)()
{
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[32] = __swift_project_value_buffer(v1, static Logger.inference);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Building user engagement feature from conversation and engagement trajectory", v4, 2u);
  }

  v5 = v0[29];

  v6 = [v5 pseEvents];
  v0[33] = type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignal, BMSiriPostSiriEngagementSignal_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_14:

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No valid PSE content, skip building conversation trajectory", v23, 2u);
    }

    v24 = v0[1];

    return v24(0);
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v7 + 32);
  }

  v10 = v9;
  v0[34] = v9;
  v11 = v0[29];

  [v10 donatedTimestamp];
  v13 = v12 + -50.0;
  [v10 donatedTimestamp];
  v15 = v14 + 900.0;
  v16 = [v11 requestIds];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[35] = v17;

  v18 = swift_task_alloc();
  v0[36] = v18;
  *v18 = v0;
  v18[1] = specialized PSETrajectoryBuilder.build(event:with:);
  v20 = v0[27];
  v19 = v0[28];

  return specialized PSETrajectoryBuilder.loadSiriConversation(collectionWindow:ids:)(v20, v19, v17, v13, v15);
}

{
  v23 = v0;
  v1 = v0[29];
  swift_bridgeObjectRetain_n();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[40];
  if (v5)
  {
    v7 = v0[29];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315394;
    v10 = [v7 requestIds];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = Array.description.getter();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v22);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2048;
    v15 = *(v6 + 16);

    *(v8 + 14) = v15;

    _os_log_impl(&_mh_execute_header, v3, v4, "PSE Feature for RequestIDs: %s, count: %ld, features!: \n", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v16 = v0[40];
  v0[23] = 0;
  v0[24] = 0xE000000000000000;
  v0[25] = 0;
  v0[26] = 0xE000000000000000;
  specialized Sequence.forEach(_:)(v16);

  v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18InferenceExtension14TrajectoryTypeO_SStGMd, &_ss23_ContiguousArrayStorageCy18InferenceExtension14TrajectoryTypeO_SStGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 5;
  *(inited + 16) = xmmword_10002E0F0;
  v18 = v0[25];
  v19 = v0[26];
  v0[42] = v19;
  *(inited + 40) = v18;
  *(inited + 48) = v19;
  v0[43] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC18InferenceExtension14TrajectoryTypeO_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();

  outlined destroy of NSObject?(inited + 32, &_s18InferenceExtension14TrajectoryTypeO_SStMd, &_s18InferenceExtension14TrajectoryTypeO_SStMR);
  v20 = v0[37];

  return _swift_task_switch(specialized PSETrajectoryBuilder.build(event:with:), v20, 0);
}

{
  UserEngagementFeature.addEngagements(_:)(v0[43]);

  rawValue = v0[30]._rawValue;
  v2 = v0[31]._rawValue;

  return _swift_task_switch(specialized PSETrajectoryBuilder.build(event:with:), rawValue, v2);
}

{
  inited = swift_initStackObject();
  *(inited + 32) = 4;
  *(inited + 16) = xmmword_10002E0F0;
  v2 = v0[23];
  v3 = v0[24];
  v0[44] = v3;
  *(inited + 40) = v2;
  *(inited + 48) = v3;
  v0[45] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC18InferenceExtension14TrajectoryTypeO_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();

  outlined destroy of NSObject?(inited + 32, &_s18InferenceExtension14TrajectoryTypeO_SStMd, &_s18InferenceExtension14TrajectoryTypeO_SStMR);
  v4 = v0[37];

  return _swift_task_switch(specialized PSETrajectoryBuilder.build(event:with:), v4, 0);
}

{
  UserEngagementFeature.addEngagements(_:)(v0[45]);

  v1 = swift_task_alloc();
  v0[46]._rawValue = v1;
  *v1 = v0;
  v1[1] = specialized PSETrajectoryBuilder.build(event:with:);
  rawValue = v0[28]._rawValue;
  v3 = v0[29]._rawValue;
  v4 = v0[27]._rawValue;

  return specialized PSETrajectoryBuilder.getPSEMetaData(event:)(&v0[16], v4, rawValue, v3);
}

{
  v1 = *v0;

  v2 = *(v1 + 296);

  return _swift_task_switch(specialized PSETrajectoryBuilder.build(event:with:), v2, 0);
}

{
  v1 = *(v0 + 296);
  v3 = *(v0 + 144);
  v2 = *(v0 + 160);
  v4 = *(v0 + 176);
  *(v1 + 120) = *(v0 + 128);
  *(v1 + 168) = v4;
  *(v1 + 152) = v2;
  *(v1 + 136) = v3;

  v5 = *(v0 + 240);
  v6 = *(v0 + 248);

  return _swift_task_switch(specialized PSETrajectoryBuilder.build(event:with:), v5, v6);
}

{

  v1 = *(v0 + 296);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t specialized PSETrajectoryBuilder.build(event:with:)(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 296) = a1;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);

  return _swift_task_switch(specialized PSETrajectoryBuilder.build(event:with:), v4, v3);
}

{
  if (*(v1 + 296))
  {
    v2 = [*(v1 + 232) pseEvents];
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v41 = v1;
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v1 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v8 = [v6 pseDelta];
        if (v8 && (v9 = v8, [v8 sinceUIEnd], v11 = v10, v9, v11 > 30.0))
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v5;
        if (v1 == i)
        {
          v1 = v41;
          v12 = _swiftEmptyArrayStorage;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v12 = _swiftEmptyArrayStorage;
LABEL_25:

    v20 = _swiftEmptyArrayStorage < 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0;
    if (v20)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
      if (v36 > 0)
      {
        v37 = v36;
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result < 0)
        {
          __break(1u);
          return result;
        }

        if (v37 >= 5)
        {
          v22 = 5;
        }

        else
        {
          v22 = v37;
        }

        if (_CocoaArrayWrapper.endIndex.getter() >= v22)
        {
LABEL_34:

          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v23 = 0;
            do
            {
              v24 = v23 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v23);
              v23 = v24;
            }

            while (v22 != v24);
          }

          if (v20)
          {
            v25 = _CocoaArrayWrapper.subscript.getter();
            v27 = v26;
            v29 = v28;
            v31 = v30;

            v12 = v25;
            if ((v31 & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v29 = 0;
            v27 = &_swiftEmptyArrayStorage[4];
            v31 = (2 * v22) | 1;
            if ((v31 & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            swift_unknownObjectRelease();
            v34 = _swiftEmptyArrayStorage;
          }

          v35 = v34[2];

          if (__OFSUB__(v31 >> 1, v29))
          {
            __break(1u);
          }

          else if (v35 == (v31 >> 1) - v29)
          {
            v33 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            if (v33)
            {
LABEL_57:
              *(v1 + 304) = v33;
              v38 = swift_task_alloc();
              *(v1 + 312) = v38;
              *v38 = v1;
              v38[1] = specialized PSETrajectoryBuilder.build(event:with:);
              v40 = *(v1 + 216);
              v39 = *(v1 + 224);

              return PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)(v40, v39, v33);
            }

            v33 = _swiftEmptyArrayStorage;
LABEL_48:
            swift_unknownObjectRelease();
            goto LABEL_57;
          }

          swift_unknownObjectRelease_n();
LABEL_41:
          specialized _copyCollectionToContiguousArray<A>(_:)(v12, v27, v29, v31);
          v33 = v32;
          goto LABEL_48;
        }

        goto LABEL_55;
      }
    }

    else
    {
      v21 = _swiftEmptyArrayStorage[2];
      if (v21)
      {
        if (v21 >= 5)
        {
          v22 = 5;
        }

        else
        {
          v22 = _swiftEmptyArrayStorage[2];
        }

        if (v21 >= v22)
        {
          goto LABEL_34;
        }

LABEL_55:
        __break(1u);
      }
    }

    v33 = _swiftEmptyArrayStorage;
    goto LABEL_57;
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v1 + 272);
  if (v15)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to load conversation for trajectory building, skipping inference", v17, 2u);
  }

  v18 = *(v1 + 8);

  return v18(0);
}

{
  v2 = *v1;
  *(*v1 + 320) = a1;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);

  return _swift_task_switch(specialized PSETrajectoryBuilder.build(event:with:), v4, v3);
}

uint64_t specialized SupportedUseCases.init(from:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D72616C41 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636973754DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736C6C6143 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1936744781 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t specialized SupportedUseCases.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SupportedUseCases.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type SupportedUseCases and conformance SupportedUseCases()
{
  result = lazy protocol witness table cache variable for type SupportedUseCases and conformance SupportedUseCases;
  if (!lazy protocol witness table cache variable for type SupportedUseCases and conformance SupportedUseCases)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SupportedUseCases and conformance SupportedUseCases);
  }

  return result;
}

uint64_t partial apply for closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in closure #1 in ObservabilityManager.buildUserJourney(maxRecords:);

  return closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)(a1, a2, v6);
}

uint64_t sub_1000265FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of SELFReporter.report(event:);

  return closure #1 in closure #1 in PSETrajectoryBuilder.adaptedPSEFeatures(pseEvents:)(a1, v4, v5, v7, v6);
}

uint64_t sub_1000266FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_18InferenceExtension10PSEFeatureVt_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of SELFReporter.report(event:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_18InferenceExtension10PSEFeatureVt_TG5(a1, v4);
}

uint64_t specialized PSETrajectoryBuilder.extractFeatures(from:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  v5[28] = a3;
  v7 = type metadata accessor for CharacterSet();
  v5[31] = v7;
  v5[32] = *(v7 - 8);
  v5[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v5[34] = swift_task_alloc();
  v5[35] = type metadata accessor for PSEFeatureTemplate(0);
  v5[36] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v5[37] = v8;
  v5[38] = *(v8 - 8);
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  return _swift_task_switch(specialized PSETrajectoryBuilder.extractFeatures(from:for:), v9, v11);
}

uint64_t specialized PSETrajectoryBuilder.extractFeatures(from:for:)()
{
  v202 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 224);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);

  [v5 donatedTimestamp];
  Date.init(timeIntervalSinceReferenceDate:)();
  v6 = [v5 pseContents];
  type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignalContent, BMSiriPostSiriEngagementSignalContent_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 16))(v2, v1, v4);
  v8 = [v5 domain];
  if (v8)
  {
    v9 = v8;
    v190 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v195 = v10;
  }

  else
  {
    v190 = 0;
    v195 = 0xE000000000000000;
  }

  v198 = v7;
  v11 = [*(v0 + 224) action];
  if (v11)
  {
    v12 = *(v0 + 264);
    v13 = *(v0 + 272);
    v14 = *(v0 + 256);
    v192 = *(v0 + 248);
    v15 = v11;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *(v0 + 32) = v16;
    *(v0 + 40) = v18;
    *(v0 + 48) = 0x746E65746E69;
    *(v0 + 56) = 0xE600000000000000;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    v19 = lazy protocol witness table accessor for type String and conformance String();
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v22 = v21;

    *(v0 + 80) = v20;
    *(v0 + 88) = v22;
    *(v0 + 96) = 0x295D5A2D415B28;
    *(v0 + 104) = 0xE700000000000000;
    *(v0 + 112) = 3220512;
    *(v0 + 120) = 0xE300000000000000;
    *(v0 + 128) = v20;
    *(v0 + 136) = v22;
    *(v0 + 144) = v20;
    *(v0 + 152) = v22;
    v23 = type metadata accessor for Locale();
    (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
    StringProtocol.range<A>(of:options:range:locale:)();
    outlined destroy of NSObject?(v13, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v174 = v19;
    v175 = v19;
    v172 = &type metadata for String;
    v173 = v19;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v26 = v25;

    *(v0 + 160) = v24;
    *(v0 + 168) = v26;
    static CharacterSet.whitespacesAndNewlines.getter();
    v27 = StringProtocol.trimmingCharacters(in:)();
    v29 = v28;
    (*(v14 + 8))(v12, v192);

    *(v0 + 176) = v27;
    *(v0 + 184) = v29;
    v189 = StringProtocol.capitalized.getter();
    v193 = v30;
  }

  else
  {
    v189 = 0;
    v193 = 0xE000000000000000;
  }

  v31 = *(v0 + 304);
  v32 = *(v0 + 288);
  v33 = *(v0 + 296);
  v34 = *(v0 + 280);
  v186 = *(v0 + 312);
  v187 = *(v0 + 224);
  v35 = *(v31 + 56);
  v35(v32, 1, 1, v33);
  v36 = v34[6];
  v37 = (v32 + v34[5]);
  v38 = (v32 + v34[8]);
  *v38 = 0;
  v38[1] = 0;
  v180 = v38;
  v39 = (v32 + v34[9]);
  *v39 = 0;
  v39[1] = 0;
  v40 = (v32 + v34[10]);
  *v40 = 0;
  v40[1] = 0;
  v178 = v40;
  v41 = (v32 + v34[11]);
  *v41 = 0;
  v41[1] = 0;
  v177 = v41;
  v42 = (v32 + v34[12]);
  *v42 = 0;
  v42[1] = 0;
  v176 = v42;
  v43 = (v32 + v34[13]);
  *v43 = 0;
  v43[1] = 0;
  v179 = v43;
  v44 = v32 + v34[14];
  *v44 = 0;
  *(v44 + 8) = 1;
  v45 = (v32 + v34[15]);
  *v45 = 0;
  v45[1] = 0;
  v185 = v45;
  v46 = (v32 + v34[16]);
  *v46 = 0;
  v46[1] = 0;
  v184 = v46;
  *(v32 + v34[17]) = 0;
  *(v32 + v34[18]) = 0;
  *(v32 + v34[19]) = 0;
  *(v32 + v34[20]) = 0;
  v47 = (v32 + v34[21]);
  *v47 = 0;
  v47[1] = 0;
  v48 = (v32 + v34[22]);
  *v48 = 0;
  v48[1] = 0;
  *(v32 + v34[23]) = 2;
  v49 = (v32 + v36);
  v50 = (v32 + v34[24]);
  *v50 = 0;
  v50[1] = 0;
  v51 = (v32 + v34[25]);
  *v51 = 0;
  v51[1] = 0;
  v52 = (v32 + v34[26]);
  *v52 = 0;
  v52[1] = 0;
  *(v32 + v34[27]) = 0;
  v53 = (v32 + v34[28]);
  *v53 = 0;
  v53[1] = 0;
  *(v32 + v34[29]) = 0;
  v54 = (v32 + v34[30]);
  *v54 = 0;
  v54[1] = 0;
  v183 = v54;
  v55 = (v32 + v34[31]);
  *v55 = 0;
  v55[1] = 0;
  v182 = v55;
  v56 = (v32 + v34[32]);
  *v56 = 0;
  v56[1] = 0;
  v181 = v56;
  v57 = v34[33];
  *(v32 + v57) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  outlined destroy of NSObject?(v32, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(v31 + 32))(v32, v186, v33);
  v35(v32, 0, 1, v33);
  *v37 = v190;
  v37[1] = v195;
  v191 = v37;
  *v49 = v189;
  v49[1] = v193;
  v58 = v34[7];
  *(v32 + v58) = 0;
  v59 = [v187 domain];
  if (!v59)
  {
LABEL_11:
    v64 = v198;
    goto LABEL_23;
  }

  v60 = v59;
  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;

  v64 = v198;
  if (v61 == 0x636E75614C707041 && v63 == 0xE900000000000068)
  {
  }

  else
  {
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v65 & 1) == 0)
    {
LABEL_23:
      v76 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v64, 0x42646574616E6F64, 0xED00006972695379);
      if (v77)
      {
        if (v76 == 1702195828 && v77 == 0xE400000000000000)
        {

LABEL_28:

          v79 = 1;
          *(v32 + v58) = 1;
          *v191 = xmmword_10002E7F0;
          goto LABEL_30;
        }

        v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v78)
        {
          goto LABEL_28;
        }
      }

      v79 = 0;
LABEL_30:
      v80 = *(v0 + 232);
      v81 = *(v0 + 240);

      v82 = specialized SupportedUseCases.init(from:)(v80, v81);
      v83 = v82;
      if (v82 == 5)
      {
LABEL_31:

        if (one-time initialization token for inference != -1)
        {
          swift_once();
        }

        v84 = type metadata accessor for Logger();
        __swift_project_value_buffer(v84, static Logger.inference);
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v201[0] = v88;
          *v87 = 136315138;
          if (v83 == 5)
          {
            v89 = 4999502;
          }

          else
          {
            v89 = 0x6F70707553746F4ELL;
          }

          if (v83 == 5)
          {
            v90 = 0xE300000000000000;
          }

          else
          {
            v90 = 0xEC00000064657472;
          }

          v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, v201);

          *(v87 + 4) = v91;
          _os_log_impl(&_mh_execute_header, v85, v86, "PSE %s Feature data not supported.", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v88);
        }

        v92 = *(v0 + 320);
        v93 = *(v0 + 296);
        v94 = *(v0 + 304);
        v95 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
        (*(v94 + 8))(v92, v93);
        v79 = 0;
        goto LABEL_58;
      }

      if (v82 <= 1u)
      {
        if (!v82)
        {
          v116 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v64, 0x6564496D72616C61, 0xEF7265696669746ELL);
          v118 = v117;

          if (v118)
          {
            *v180 = v116;
            v180[1] = v118;
          }

          goto LABEL_92;
        }

        v196 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v64, 0x656C746974, 0xE500000000000000);
        v199 = v135;
        v136 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v64, 0x747369747261, 0xE600000000000000);
        v138 = v137;
        v139 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v64, 0x6D75626C61, 0xE500000000000000);
        v140 = v64;
        v142 = v141;
        specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v140, 0x65726E6567, 0xE500000000000000);

        v143 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v140, 0x6172754479616C70, 0xEC0000006E6F6974);
        v145 = v144;

        if (!v145)
        {
          *v178 = v196;
          v178[1] = v199;
          *v177 = v136;
          v177[1] = v138;
          *v176 = v139;
          v176[1] = v142;
          *v179 = 0;
          v179[1] = 0;
          goto LABEL_92;
        }

        v194 = v138;
        if (v143 == Double.description.getter() && v145 == v146)
        {
        }

        else
        {
          v151 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v151 & 1) == 0)
          {
            *(v0 + 208) = 0;
            v153 = specialized String.withCString<A>(_:)(v143, v145, v0 + 208);

            if (v153)
            {
              v154 = ceil(*(v0 + 208));
              if ((*&v154 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_107:
                __break(1u);
                goto LABEL_108;
              }

              if (v154 <= -9.22337204e18)
              {
LABEL_108:
                __break(1u);
                goto LABEL_109;
              }

              v155 = v194;
              if (v154 >= 9.22337204e18)
              {
LABEL_109:
                __break(1u);
                return result;
              }

              *(v0 + 216) = v154;
              v156 = dispatch thunk of CustomStringConvertible.description.getter();
            }

            else
            {
              v156 = 0;
              v157 = 0;
              v155 = v194;
            }

            *v178 = v196;
            v178[1] = v199;
            *v177 = v136;
            v177[1] = v155;
            *v176 = v139;
            v176[1] = v142;
            *v179 = v156;
            v179[1] = v157;
            goto LABEL_92;
          }
        }

        if (one-time initialization token for inference != -1)
        {
          swift_once();
        }

        v152 = type metadata accessor for Logger();
        __swift_project_value_buffer(v152, static Logger.inference);
        v104 = Logger.logObject.getter();
        v105 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v104, v105))
        {
          goto LABEL_52;
        }

        v106 = swift_slowAlloc();
        *v106 = 0;
        v107 = "Skip Music PSE event with playDuration == -1";
        goto LABEL_51;
      }

      if (v82 != 2)
      {
        if (v82 != 3)
        {
          goto LABEL_31;
        }

        v96 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v64, 0x79546E6F69746361, 0xEA00000000006570);
        v98 = v97;
        v99 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v64, 0x746E656449696F70, 0xED00007265696669);
        v101 = v100;

        *v185 = v96;
        v185[1] = v98;
        *v184 = v99;
        v184[1] = v101;
LABEL_92:
        v95 = PSEFeatureTemplate.toDictionary()();
        if (one-time initialization token for inference != -1)
        {
          swift_once();
        }

        v158 = type metadata accessor for Logger();
        __swift_project_value_buffer(v158, static Logger.inference);

        v159 = Logger.logObject.getter();
        v160 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v159, v160))
        {
          v161 = swift_slowAlloc();
          v201[0] = swift_slowAlloc();
          *v161 = 136315394;
          if (v83 > 1u)
          {
            if (v83 == 2)
            {
              v162 = 0xE500000000000000;
              v163 = 0x736C6C6143;
            }

            else
            {
              v162 = 0xE400000000000000;
              v163 = 1936744781;
            }
          }

          else
          {
            v162 = 0xE500000000000000;
            if (v83)
            {
              v163 = 0x636973754DLL;
            }

            else
            {
              v163 = 0x6D72616C41;
            }
          }

          v167 = *(v0 + 304);
          v197 = *(v0 + 296);
          v200 = *(v0 + 320);
          v168 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v163, v162, v201);

          *(v161 + 4) = v168;
          *(v161 + 12) = 2080;
          v169 = Dictionary.description.getter();
          v171 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v170, v201);

          *(v161 + 14) = v171;
          _os_log_impl(&_mh_execute_header, v159, v160, "PSE %s Feature data: %s", v161, 0x16u);
          swift_arrayDestroy();

          (*(v167 + 8))(v200, v197);
        }

        else
        {
          v164 = *(v0 + 320);
          v165 = *(v0 + 296);
          v166 = *(v0 + 304);

          (*(v166 + 8))(v164, v165);
        }

        goto LABEL_58;
      }

      v122 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v64, 0x4E79616C70736964, 0xEB00000000656D61);
      v124 = v123;
      v125 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v64, 0x617275446C6C6163, 0xEC0000006E6F6974);
      v127 = v126;
      if (!v126 || (*(v0 + 192) = 0, , v128 = specialized String.withCString<A>(_:)(v125, v127, v0 + 192), result = , !v128))
      {
LABEL_72:
        v132 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v198, 0x6C6562616CLL, 0xE500000000000000);
        v134 = v133;

        *v181 = v125;
        v181[1] = v127;
        *v183 = v122;
        v183[1] = v124;
        *v182 = v132;
        v182[1] = v134;
        goto LABEL_92;
      }

      v129 = ceil(*(v0 + 192));
      if ((*&v129 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v129 > -9.22337204e18)
      {
        if (v129 < 9.22337204e18)
        {
          *(v0 + 200) = v129;
          v125 = dispatch thunk of CustomStringConvertible.description.getter();
          v131 = v130;

          v127 = v131;
          goto LABEL_72;
        }

        goto LABEL_106;
      }

      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }
  }

  v188 = v58;
  v66 = *(v0 + 224);
  v67 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v198, 0xD000000000000011, 0x8000000100031530);
  if (v68)
  {
    v69 = v67;
  }

  else
  {
    v69 = 0x6E776F6E6B6E55;
  }

  if (v68)
  {
    v70 = v68;
  }

  else
  {
    v70 = 0xE700000000000000;
  }

  v71 = [v66 action];
  if (!v71)
  {
LABEL_53:
    if (v69 == 0xD000000000000017 && 0x8000000100031550 == v70 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v111 = *(v0 + 320);
      v112 = *(v0 + 296);
      v113 = *(v0 + 304);

      v95 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
      (*(v113 + 8))(v111, v112);
      goto LABEL_57;
    }

    *(v0 + 16) = 46;
    *(v0 + 24) = 0xE100000000000000;
    v119 = swift_task_alloc();
    *(v119 + 16) = v0 + 16;
    v121 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v119, v69, v70, v120);

    if (v121[2])
    {
    }

    else
    {

      Substring.init(_:)();
    }

    v147 = static String._fromSubstring(_:)();
    v149 = v148;

    v201[0] = v147;
    v201[1] = v149;

    v150._countAndFlagsBits = 1886413088;
    v150._object = 0xE400000000000000;
    String.append(_:)(v150);

    *v191 = v147;
    v191[1] = v149;

    v58 = v188;
    *v49 = xmmword_10002E7E0;
    goto LABEL_11;
  }

  v72 = v71;
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;

  if (v73 != 1769105747 || v75 != 0xE400000000000000)
  {
    v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v102)
    {
      goto LABEL_47;
    }

    goto LABEL_53;
  }

LABEL_47:

  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v103 = type metadata accessor for Logger();
  __swift_project_value_buffer(v103, static Logger.inference);
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v104, v105))
  {
    goto LABEL_52;
  }

  v106 = swift_slowAlloc();
  *v106 = 0;
  v107 = "Skip Siri app launch PSE event";
LABEL_51:
  _os_log_impl(&_mh_execute_header, v104, v105, v107, v106, 2u);

LABEL_52:
  v108 = *(v0 + 320);
  v109 = *(v0 + 296);
  v110 = *(v0 + 304);

  v95 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  (*(v110 + 8))(v108, v109);
LABEL_57:
  v79 = 0;
LABEL_58:
  outlined destroy of PSEFeatureTemplate(*(v0 + 288));

  v114 = *(v0 + 8);

  return v114(v95, v79);
}